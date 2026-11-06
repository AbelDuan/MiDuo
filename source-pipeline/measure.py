# -*- coding: utf-8 -*-
"""Measure per-method failures and identify the snowball classes."""
import os, re, sys, json
from collections import defaultdict

VF = sys.argv[1]
SM = sys.argv[2]

fails = defaultdict(int)
lines_total = 0
files = 0
for dirpath, _d, fs in os.walk(VF):
    for fn in fs:
        if not fn.endswith('.java'):
            continue
        p = os.path.join(dirpath, fn)
        raw = open(p, encoding='utf-8', errors='replace').read()
        files += 1
        lines_total += raw.count('\n') + 1
        n = raw.count("Couldn't be decompiled")
        if n:
            rel = os.path.relpath(p, VF)[:-5].replace('\\', '.')
            fails[rel] = n

sm_bytes = {}
for dirpath, _d, fs in os.walk(SM):
    for fn in fs:
        if fn.endswith('.smali'):
            p = os.path.join(dirpath, fn)
            raw = open(p, encoding='utf-8', errors='replace').read()
            m = re.search(r'(?m)^\.class\s+(?:[a-z ]+\s+)*L([^;]+);', raw)
            if m:
                sm_bytes[m.group(1).replace('/', '.')] = os.path.getsize(p)

total_methods = 0
for dirpath, _d, fs in os.walk(SM):
    for fn in fs:
        if fn.endswith('.smali'):
            raw = open(os.path.join(dirpath, fn), encoding='utf-8', errors='replace').read()
            total_methods += len(re.findall(r'(?m)^\.method ', raw))

print('java files        :', files)
print('java lines        :', lines_total)
print('failed methods    :', sum(fails.values()), 'in', len(fails), 'classes')
print('smali methods     :', total_methods)
print('failure rate      : %.2f%%' % (100.0 * sum(fails.values()) / total_methods))
print()
print('=== failure by class (smali size desc) ===')
for cls, n in sorted(fails.items(), key=lambda x: -sm_bytes.get(x[0], 0)):
    print('%5d fails  %9d bytes  %s' % (n, sm_bytes.get(cls, 0), cls))
