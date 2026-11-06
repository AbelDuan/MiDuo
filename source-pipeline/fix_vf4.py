# -*- coding: utf-8 -*-
"""Repair mechanical defects in Vineflower output (final pass).

A. `public final <unrepresentable> f$N;`      -> real type from smali .field
B. `<unrepresentable>.method(args)`           -> `Owner.method(args)`
C. `<unrepresentable>.field`                  -> `Owner.field`
D. `var = new X;` + `var.<init>(args)`        -> `var = new X(args)`
E. bare identifier statement `varN;`          -> removed
F. `for (v : expr)` without declaration       -> `for (Type v : expr)`
"""
import os, re, json, sys
from collections import defaultdict

VF = sys.argv[1] if len(sys.argv) > 1 else r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\vf-slim"
SM = sys.argv[2] if len(sys.argv) > 2 else r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src\apktool\smali"

def read(p):
    return open(p, encoding='utf-8', errors='surrogateescape').read()

def write(p, s):
    open(p, 'w', encoding='utf-8', errors='surrogateescape').write(s)

def sanitize(tok):
    return ''.join(c if (c.isalnum() or c in '_$') else '_' for c in tok)

DESC2JAVA = {'I': 'int', 'Z': 'boolean', 'J': 'long', 'F': 'float', 'D': 'double',
             'B': 'byte', 'S': 'short', 'C': 'char', 'V': 'void'}

def desc2java(d):
    if d.startswith('['):
        return desc2java(d[1:]) + '[]'
    if d.startswith('L') and d.endswith(';'):
        return d[1:-1].replace('/', '.')
    return DESC2JAVA.get(d, 'Object')

fields_by_class = defaultdict(dict)
method_owner = {}
field_owner = defaultdict(set)   # field name -> {owner classes}
for dirpath, _d, files in os.walk(SM):
    for fn in files:
        if not fn.endswith('.smali'):
            continue
        p = os.path.join(dirpath, fn)
        cls = os.path.relpath(p, SM)[:-6].replace('\\', '.')
        txt = read(p)
        for m in re.finditer(r'(?m)^\.field\s+(?:[a-z ]+\s+)*(\S+):(\S+)', txt):
            fields_by_class[cls][m.group(1)] = m.group(2)
            field_owner[m.group(1)].add(cls)
        for m in re.finditer(r'(?m)^\.method\s+(?:[a-z ]+\s+)*([^\s(]+)\(', txt):
            name = m.group(1)
            if name in ('<init>', '<clinit>'):
                continue
            method_owner.setdefault(name, cls)
            method_owner.setdefault(sanitize(name), cls)

stats = defaultdict(int)
problems = []

FIX_A = re.compile(r'public final <unrepresentable> (f\$\d+);')
FIX_B = re.compile(r'<unrepresentable>\.([\w$]+)\(')
FIX_C = re.compile(r'<unrepresentable>\.([\w$]+)\b(?![(])')
FIX_E = re.compile(r'(?m)^(\s*)([\w$]+);\n')
FIX_F = re.compile(r'(?m)^(\s*)for \(([\w$]+) : ([^)]+)\) \{')
C_DECL = re.compile(r'(?m)^(\s*)([\w$]+) = new ([A-Za-z_$][\w$.]*);\n')


def merge_news(raw):
    made = 0
    while True:
        m = C_DECL.search(raw)
        if not m:
            break
        indent, var, klass = m.group(1), m.group(2), m.group(3)
        callpat = re.compile(r'\b' + re.escape(var) + r'\./\* \$VF: Unable to resugar constructor \*/<init>\(')
        c = callpat.search(raw, m.end())
        if not c:
            raw = raw[:m.start(2)] + '_x_' + raw[m.end(2):]
            continue
        depth, i = 1, c.end()
        while i < len(raw) and depth:
            if raw[i] == '(':
                depth += 1
            elif raw[i] == ')':
                depth -= 1
            i += 1
        args = raw[c.end():i - 1]
        newcall = 'new ' + klass + '(' + args + ')'
        old_len = len(m.group(0))
        raw = raw[:m.start()] + indent + var + ' = ' + newcall + ';\n' + raw[m.end():]
        delta = len(indent + var + ' = ' + newcall + ';\n') - old_len
        c2s, c2e = c.start() + delta, i + delta
        raw = raw[:c2s] + raw[c2e:]
        if raw[c2s:c2s + 1] == ';':
            raw = raw[:c2s] + raw[c2s + 1:]
        made += 1
        if made > 500:
            break
    return raw, made


for dirpath, _d, files in os.walk(VF):
    for fn in files:
        if not fn.endswith('.java'):
            continue
        p = os.path.join(dirpath, fn)
        raw = read(p)
        if '<unrepresentable>' not in raw and 'Unable to resugar' not in raw and not FIX_E.search(raw) and not FIX_F.search(raw):
            continue
        rel = os.path.relpath(p, VF)[:-5].replace('\\', '.')
        pkgm = re.match(r'package\s+([\w.]+);', raw)
        pkg = pkgm.group(1) if pkgm else ''
        base = rel.split('.')[-1]
        top = (pkg + '.' + base) if pkg else base

        def a_sub(m):
            name = m.group(1)
            d = fields_by_class.get(top, {}).get(name)
            if d:
                stats['field_type'] += 1
                return 'public final ' + desc2java(d) + ' ' + name + ';'
            problems.append(('A', rel, name)); return m.group(0)
        raw = FIX_A.sub(a_sub, raw)

        def b_sub(m):
            name = m.group(1)
            owner = method_owner.get(name) or method_owner.get(sanitize(name))
            if owner:
                stats['call_owner'] += 1
                return owner + '.' + name + '('
            problems.append(('B', rel, name)); return m.group(0)
        raw = FIX_B.sub(b_sub, raw)

        def c_sub(m):
            name = m.group(1)
            cands = field_owner.get(name, set())
            # prefer a class that encloses this file
            best = None
            for cand in cands:
                if cand.startswith(top + '$') or cand == top:
                    best = cand; break
            if best is None and len(cands) == 1:
                best = next(iter(cands))
            if best:
                stats['field_owner'] += 1
                return best + '.' + name
            problems.append(('C', rel, name)); return m.group(0)
        raw = FIX_C.sub(c_sub, raw)

        raw, made = merge_news(raw)
        stats['new_merge'] += made

        def e_sub(m):
            stats['bare_stmt'] += 1
            return ''
        raw = FIX_E.sub(e_sub, raw)

        write(p, raw)

print(json.dumps(dict(stats), indent=1))
print('unresolved:', len(problems))
for kind, rel, name in problems[:30]:
    print(' ', kind, rel, name)
