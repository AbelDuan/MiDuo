# -*- coding: utf-8 -*-
"""Fix jadx artefacts that make javac reject a whole class.

1. `for (final int i = 0; i < n; i++)`  -> drop the illegal `final`
2. `catch (... e) { ... e = ...; }` where the catch parameter is declared
   `final` (jadx does this) -> drop `final` from the catch parameter.
"""
import os, re, sys, io

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='ascii', errors='replace')

ROOT = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src\java-complete"

FOR_FINAL = re.compile(r'for \(final (int|long|float|double|short|byte|char|boolean) ')
CATCH_FINAL = re.compile(r'catch \(final ([\w$.<>\[\]]+) ')

stats = {}
changed = 0
for dirpath, _d, fs in os.walk(ROOT):
    for fn in fs:
        if not fn.endswith('.java'):
            continue
        p = os.path.join(dirpath, fn)
        raw = open(p, encoding='utf-8', errors='surrogateescape').read()
        orig = raw
        n1 = len(FOR_FINAL.findall(raw))
        raw = FOR_FINAL.sub(lambda m: 'for (' + m.group(1) + ' ', raw)
        n2 = len(CATCH_FINAL.findall(raw))
        raw = CATCH_FINAL.sub(lambda m: 'catch (' + m.group(1) + ' ', raw)
        if raw != orig:
            open(p, 'w', encoding='utf-8', errors='surrogateescape').write(raw)
            changed += 1
            stats['for_final'] = stats.get('for_final', 0) + n1
            stats['catch_final'] = stats.get('catch_final', 0) + n2

print('files changed:', changed)
for k, v in stats.items():
    print('%4d  %s' % (v, k))
