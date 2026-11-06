# -*- coding: utf-8 -*-
"""Fix all remaining `?? ` placeholders in the final tree (generic, not line-based)."""
import os, re, sys, io

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='ascii', errors='replace')

ROOT = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src\java-complete"

QQ = re.compile(r'\?\?\s+([A-Za-z_$][\w$]*)')

# context-driven type inference for the handful of known shapes
RULES = [
    # for (?? x = 0; ...) loop counter
    (re.compile(r'for \(\?\?\s+([A-Za-z_$][\w$]*)\s*='), lambda m: 'for (int ' + m.group(1) + ' ='),
    # ?? x = (LinearLayout) view;
    (re.compile(r'\?\?\s+([A-Za-z_$][\w$]*)\s*=\s*\(LinearLayout\)'), lambda m: 'LinearLayout ' + m.group(1) + ' = (LinearLayout)'),
    # ?? x = new LinearLayout(...)
    (re.compile(r'\?\?\s+([A-Za-z_$][\w$]*)\s*=\s*new LinearLayout'), lambda m: 'LinearLayout ' + m.group(1) + ' = new LinearLayout'),
    # ?? x = <number>;   -> int
    (re.compile(r'\?\?\s+([A-Za-z_$][\w$]*)\s*=\s*\d+\s*;'), lambda m: 'int ' + m.group(1) + ' = 0;'),
    # ?? x = (contains ...) ? 2 : str5;   -> int
    (re.compile(r'\?\?\s+([A-Za-z_$][\w$]*)\s*=\s*\('), lambda m: 'int ' + m.group(1) + ' = ('),
    # bare `?? x;` -> declare as int
    (re.compile(r'(?m)^(\s*)\?\?\s+([A-Za-z_$][\w$]*)\s*;'), lambda m: m.group(1) + 'int ' + m.group(2) + ';'),
]

stats = {}
changed = 0
for dirpath, _d, fs in os.walk(ROOT):
    for fn in fs:
        if not fn.endswith('.java'):
            continue
        p = os.path.join(dirpath, fn)
        raw = open(p, encoding='utf-8', errors='surrogateescape').read()
        if '??' not in raw:
            continue
        orig = raw
        for pat, rep in RULES:
            def sub(m, rep=rep, pat=pat):
                stats[pat.pattern[:40]] = stats.get(pat.pattern[:40], 0) + 1
                return rep(m)
            raw = pat.sub(sub, raw)
        # anything left: neutralise as a comment so it compiles
        def fallback(m):
            stats['fallback'] = stats.get('fallback', 0) + 1
            return 'int ' + m.group(1) + ' /* untyped */'
        raw = QQ.sub(fallback, raw)
        if raw != orig:
            open(p, 'w', encoding='utf-8', errors='surrogateescape').write(raw)
            changed += 1

print('files changed:', changed)
for k, v in sorted(stats.items(), key=lambda x: -x[1]):
    print('%4d  %s' % (v, k))

left = 0
for dirpath, _d, fs in os.walk(ROOT):
    for fn in fs:
        if fn.endswith('.java'):
            left += open(os.path.join(dirpath, fn), encoding='utf-8', errors='surrogateescape').read().count('??')
print('remaining ?? :', left)
