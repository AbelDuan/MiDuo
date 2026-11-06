# -*- coding: utf-8 -*-
"""Precise coverage: per-method failure counts for Vineflower output."""
import os, re, json

VF = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\vf-out"
SM = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src\apktool\smali"

vf_methods = 0
vf_failed = 0
vf_lines = 0
per_file = []

for dirpath, _d, files in os.walk(VF):
    for fn in files:
        if not fn.endswith('.java'):
            continue
        p = os.path.join(dirpath, fn)
        raw = open(p, encoding='utf-8', errors='replace').read()
        lines = raw.count('\n') + 1
        vf_lines += lines
        # method declarations: lines that look like "   <modifiers> <ret> name(args) {"
        decls = len(re.findall(r'(?m)^\s{0,6}(?:public |private |protected |static |final |abstract |synchronized |native )+[A-Za-z_$<>\[\].][^\n(]*\([^\n]*\)(?: throws [^\n]*)?\s*\{?\s*$', raw))
        fails = raw.count("Couldn't be decompiled")
        vf_methods += decls
        vf_failed += fails
        if fails:
            per_file.append((fails, decls, os.path.relpath(p, VF)))

sm_methods = 0
for dirpath, _d, files in os.walk(SM):
    for fn in files:
        if fn.endswith('.smali'):
            raw = open(os.path.join(dirpath, fn), encoding='utf-8', errors='replace').read()
            sm_methods += len(re.findall(r'(?m)^\.method ', raw))

print('vineflower java lines :', vf_lines)
print('vineflower methods    :', vf_methods)
print('vineflower failures   :', vf_failed, ' = %.2f%% of methods' % (100.0 * vf_failed / max(vf_methods, 1)))
print('smali methods (truth) :', sm_methods)
print()
print('=== files with failed methods (failures / decls) ===')
for f, d, n in sorted(per_file, key=lambda x: -x[0]):
    print('%4d / %4d   %s' % (f, d, n.replace('\\', '/')))
