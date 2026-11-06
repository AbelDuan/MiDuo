# -*- coding: utf-8 -*-
"""Fix jadx assigning to a field name that was really a method-local.

When javac reports `cannot assign a value to final variable <v>` for a name that
is actually a field, the original bytecode had a *local* with that name. The
correct repair is to declare that local at the top of the enclosing method, so
every reference inside the method binds to the local instead of the field.

We locate the enclosing method by walking backwards to the nearest line that
starts a method body at a lower indentation, then insert the declaration as the
method's first statement.
"""
import os, re, sys, io, collections

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='ascii', errors='replace')

ROOT = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src\java-complete"
ERR = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\final-javac.err"

def read(p):
    return open(p, encoding='utf-8', errors='surrogateescape').read()

errs = collections.defaultdict(list)
for ln in read(ERR).replace('\ufeff', '').split('\n'):
    m = re.match(r'^(.+\.java):(\d+): error: cannot assign a value to final variable (\w+)$', ln.strip())
    if m:
        errs[m.group(1)].append((int(m.group(2)), m.group(3)))

# a method header: 4-space indent, ends with `{`, contains `(`
METHOD_HDR = re.compile(r'^\s{4}(?:public |private |protected |static |final |synchronized |native )*'
                        r'[\w$.\[\]<>?, ]+\s+[\w$]+\s*\([^;]*\)\s*(?:throws [\w$., ]+)?\s*\{')

def enclosing_method(lines, idx):
    for i in range(idx, -1, -1):
        if METHOD_HDR.match(lines[i]):
            return i
    return None

total = 0
for srcfile, items in errs.items():
    if not os.path.exists(srcfile):
        continue
    lines = read(srcfile).split('\n')
    # group by enclosing method so we insert once per method
    by_method = collections.defaultdict(set)
    for lineno, var in items:
        mi = enclosing_method(lines, lineno - 1)
        if mi is not None:
            by_method[(mi, var)].add(lineno)
    for (mi, var), lns in sorted(by_method.items(), reverse=True):
        # skip if the method already declares a local of that name
        body_end = None
        depth = 0
        for i in range(mi, len(lines)):
            depth += lines[i].count('{') - lines[i].count('}')
            if depth <= 0 and '{' in lines[i]:
                body_end = i
                break
        seg = '\n'.join(lines[mi:body_end or mi + 1])
        if re.search(r'(?m)^\s+(?:final )?(?:Throwable|Exception|RuntimeException|Error|String\[\])\s+' + re.escape(var) + r'\s*[;=]', seg):
            continue
        indent = re.match(r'\s*', lines[mi + 1]).group(0) if mi + 1 < len(lines) else '        '
        lines.insert(mi + 1, indent + 'Throwable ' + var + ' = null;')
        total += 1
    open(srcfile, 'w', encoding='utf-8', errors='surrogateescape').write('\n'.join(lines))
    print('fixed', os.path.basename(srcfile), len(by_method), 'methods')

print('declarations inserted:', total)
