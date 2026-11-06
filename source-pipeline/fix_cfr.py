# -*- coding: utf-8 -*-
"""Repair CFR-specific syntax defects in the merged tree.

CFR emits a few constructs that are not legal Java:
  * `if (cond) ** GOTO lblN`      -> `if (cond) { /* goto lblN */ }`
  * `lambda$name$0$pkg-Cls(...)`  -> `lambda$name$0$pkg_Cls(...)`  (dash -> underscore)
  * `finally {` without `try`     -> `{` (plain block)
  * stray `** GOTO lblN` / `** GOTO`  -> comment
"""
import os, re, sys, json

OUT = sys.argv[1] if len(sys.argv) > 1 else r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\java-merged"

stats = {}

GOTO_IF = re.compile(r'(?m)^(\s*)if \((.+?)\) \*\* GOTO (lbl\d+)\s*$')
GOTO_ELSE = re.compile(r'(?m)^(\s*)\*\* GOTO (lbl\d+)\s*$')
FINALLY_ALONE = re.compile(r'(?m)^(\s*)finally\s*\{\s*$')
BAD_LAMBDA_NAME = re.compile(r'lambda\$[\w$]+\$[\w$]*\$([A-Za-z0-9_.]+)-([A-Za-z0-9_.-]+)\(')

def fix(path):
    raw = open(path, encoding='utf-8', errors='surrogateescape').read()
    orig = raw

    def g_if(m):
        indent, cond, lbl = m.group(1), m.group(2), m.group(3)
        stats['goto_if'] = stats.get('goto_if', 0) + 1
        return indent + 'if (' + cond + ') { /* goto ' + lbl + ' */ }'
    raw = GOTO_IF.sub(g_if, raw)

    def g_else(m):
        indent, lbl = m.group(1), m.group(2)
        stats['goto_bare'] = stats.get('goto_bare', 0) + 1
        return indent + '/* goto ' + lbl + ' */'
    raw = GOTO_ELSE.sub(g_else, raw)

    def fin(m):
        indent = m.group(1)
        stats['finally'] = stats.get('finally', 0) + 1
        return indent + '{'
    raw = FINALLY_ALONE.sub(fin, raw)

    # method names containing '-' are illegal
    def lam(m):
        whole = m.group(0)
        if '-' not in whole:
            return whole
        stats['lambda_name'] = stats.get('lambda_name', 0) + 1
        return re.sub(r'[^A-Za-z0-9_$(]', '_', whole)

    raw = re.sub(r'lambda\$[\w$]+\$[\w$]*\$[A-Za-z0-9_.-]+\$?[A-Za-z0-9_.-]*\(', lam, raw)
    # generic sweep: any identifier-ish token containing '-' inside a method name position
    raw = re.sub(r'\$[A-Za-z0-9_]*\$[A-Za-z0-9_.-]+-[A-Za-z0-9_.-]+\$', lambda m: m.group(0).replace('-', '_'), raw)

    if raw != orig:
        open(path, 'w', encoding='utf-8', errors='surrogateescape').write(raw)
        return True
    return False

n = 0
for dirpath, _d, fs in os.walk(OUT):
    for fn in fs:
        if fn.endswith('.java'):
            if fix(os.path.join(dirpath, fn)):
                n += 1

print(json.dumps(stats, indent=1))
print('files changed:', n)
