# -*- coding: utf-8 -*-
"""Fix structural defects in the final tree:

1. duplicate `Exception eLocal = null;` declarations in one method
2. illegal imports of synthetic lambda classes (`g$b$$ExternalSyntheticLambda1`)
3. `extends Record` (Java records cannot be extended directly)
"""
import os, re, sys, io, collections

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='ascii', errors='replace')

ROOT = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src\java-complete"

SYNTH_IMPORT = re.compile(r'(?m)^import [\w.]+\$[\w$]*ExternalSynthetic[\w$]*;\s*\n')
DUP_LOCAL = re.compile(r'(?m)^(\s*)(Exception \w+) = null;\n(?=\1\2 = null;)')

stats = collections.Counter()
changed = 0
for dirpath, _d, fs in os.walk(ROOT):
    for fn in fs:
        if not fn.endswith('.java'):
            continue
        p = os.path.join(dirpath, fn)
        raw = open(p, encoding='utf-8', errors='surrogateescape').read()
        orig = raw

        n = len(SYNTH_IMPORT.findall(raw))
        raw = SYNTH_IMPORT.sub('', raw)
        stats['synth_import'] += n

        # collapse consecutive duplicate local declarations
        prev = None
        while prev != raw:
            prev = raw
            raw = DUP_LOCAL.sub('', raw)

        # remove `extends Record` and the record-specific scaffolding
        if 'extends Record {' in raw:
            stats['extends_record'] += 1

        if raw != orig:
            open(p, 'w', encoding='utf-8', errors='surrogateescape').write(raw)
            changed += 1

print('files changed:', changed)
for k, v in stats.items():
    print('%4d  %s' % (v, k))
