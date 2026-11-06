# -*- coding: utf-8 -*-
"""Repair mechanical defects in Vineflower output, using smali as the authority."""
import os, re, json, sys
from collections import defaultdict

VF = sys.argv[1] if len(sys.argv) > 1 else r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\vf-out"
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
for dirpath, _d, files in os.walk(SM):
    for fn in files:
        if not fn.endswith('.smali'):
            continue
        p = os.path.join(dirpath, fn)
        cls = os.path.relpath(p, SM)[:-6].replace('\\', '.')
        txt = read(p)
        for m in re.finditer(r'(?m)^\.field\s+(?:[a-z ]+\s+)*(\S+):(\S+)', txt):
            fields_by_class[cls][m.group(1)] = m.group(2)
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

# C: `var = new Klass;` at a line start, and a later `var.<init>(` resugar marker
C_DECL = re.compile(r'(?m)^(\s*)([\w$]+) = new ([A-Za-z_$][\w$.]*);\n')
C_CALL = re.compile(r'([\w$]+)\./\* \$VF: Unable to resugar constructor \*/<init>\(')


def merge_news(raw):
    """Collapse `var = new X;` ... `var.<init>(a,b)` into `var = new X(a,b)`."""
    made = 0
    # iterate: find a decl, then the matching call that follows
    while True:
        m = C_DECL.search(raw)
        if not m:
            break
        indent, var, klass = m.group(1), m.group(2), m.group(3)
        callpat = re.compile(r'\b' + re.escape(var) + r'\./\* \$VF: Unable to resugar constructor \*/<init>\(')
        c = callpat.search(raw, m.end())
        if not c:
            # nothing to merge for this decl; mask it so we do not loop forever
            raw = raw[:m.start(2)] + '_x_' + raw[m.end(2):]
            continue
        # find the closing paren of the call
        depth = 1
        i = c.end()
        while i < len(raw) and depth:
            if raw[i] == '(':
                depth += 1
            elif raw[i] == ')':
                depth -= 1
            i += 1
        args = raw[c.end():i - 1]
        newcall = 'new ' + klass + '(' + args + ')'
        # replace decl line
        raw = raw[:m.start()] + indent + var + ' = ' + newcall + ';\n' + raw[m.end():]
        # remove the resugar call (now redundant) - it became part of the decl
        # recompute offsets since we edited before it
        delta = len(indent + var + ' = ' + newcall + ';\n') - len(m.group(0))
        c2start = c.start() + delta
        c2end = i + delta
        # drop the whole `var.<init>(...)` plus optional trailing ';'
        seg = raw[c2start:c2end]
        after = raw[c2end:c2end + 2]
        # also strip a surrounding `try {`/`}` pair is NOT done here (kept simple)
        raw = raw[:c2start] + raw[c2end:]
        if raw[c2start:c2start + 1] == ';':
            raw = raw[:c2start] + raw[c2start + 1:]
        made += 1
        if made > 200:
            break
    return raw, made


for dirpath, _d, files in os.walk(VF):
    for fn in files:
        if not fn.endswith('.java'):
            continue
        p = os.path.join(dirpath, fn)
        raw = read(p)
        if '<unrepresentable>' not in raw and 'Unable to resugar' not in raw:
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
            problems.append(('A', rel, name))
            return m.group(0)
        raw = FIX_A.sub(a_sub, raw)

        def b_sub(m):
            name = m.group(1)
            owner = method_owner.get(name) or method_owner.get(sanitize(name))
            if owner:
                stats['call_owner'] += 1
                return owner + '.'
            problems.append(('B', rel, name))
            return m.group(0)
        raw = FIX_B.sub(b_sub, raw)

        raw, made = merge_news(raw)
        stats['new_merge'] += made

        write(p, raw)

print(json.dumps(dict(stats), indent=1))
print('unresolved:', len(problems))
for kind, rel, name in problems[:25]:
    print(' ', kind, rel, name)
