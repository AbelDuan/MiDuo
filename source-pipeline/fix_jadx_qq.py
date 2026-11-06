# -*- coding: utf-8 -*-
"""Fix jadx `?? ` type-inference placeholders in the full jadx tree."""
import os, re, sys

SRC = sys.argv[1] if len(sys.argv) > 1 else r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\jadx-full\sources"

FIXES = [
    ('btm/p000m/os4/systemuihook/newnotificationcenter/C0014e.java', 1227, 'int', 'r0'),
    ('dev/duo/fold/C0038g.java', 217, 'int', 'r6'),
    ('dev/duo/fold/Preflight.java', 257, 'int', 'r3'),
    ('dev/duo/fold/Preflight.java', 260, 'int', 'r6'),
    ('dev/duo/hookprobe/C0112n.java', 417, 'int', 'r15'),
    ('dev/duo/hookprobe/C0116r.java', 198, 'int', 'r12'),
    ('dev/duo/hookprobe/InfoWidgetProvider.java', 201, 'int', 'r13'),
    ('dev/duo/workspaceprobe/C0143b.java', 6182, 'int', 'r2'),
    ('dev/duo/workspaceprobe/C0143b.java', 7127, 'boolean', 'r2'),
    ('dev/duo/workspaceprobe/C0153l.java', 91, 'LinearLayout', 'r2'),
    ('dev/duo/workspaceprobe/C0153l.java', 99, 'LinearLayout', 'linearLayout'),
]

QQ = re.compile(r'\?\?\s+([A-Za-z_$][\w$]*)')

report = []
for rel, lineno, typ, tok in FIXES:
    p = os.path.join(SRC, rel.replace('/', os.sep))
    if not os.path.exists(p):
        report.append(('MISSING', rel, lineno))
        continue
    text = open(p, encoding='utf-8', errors='surrogateescape').read()
    lines = text.split('\n')
    if lineno - 1 >= len(lines):
        report.append(('OOR', rel, lineno))
        continue
    line = lines[lineno - 1]
    m = QQ.search(line)
    if not m:
        report.append(('NO-PLACEHOLDER', rel, lineno, line.strip()[:70]))
        continue
    newline = line[:m.start()] + typ + ' ' + m.group(1) + line[m.end():]
    lines[lineno - 1] = newline
    open(p, 'w', encoding='utf-8', errors='surrogateescape').write('\n'.join(lines))
    report.append(('FIXED', rel, lineno, newline.strip()[:80]))

for r in report:
    print('  '.join(str(x) for x in r))

left = 0
for dirpath, _d, fs in os.walk(SRC):
    for fn in fs:
        if fn.endswith('.java'):
            raw = open(os.path.join(dirpath, fn), encoding='utf-8', errors='surrogateescape').read()
            left += raw.count('??')
print('remaining "??" tokens:', left)
