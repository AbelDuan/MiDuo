# -*- coding: utf-8 -*-
"""Per-class quality audit of the final tree: which classes still contain stubs."""
import os, re, sys, io, json

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='ascii', errors='replace')

ROOT = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src\java-complete"
SM = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src\apktool\smali"

def read(p):
    return open(p, encoding='utf-8', errors='replace').read()

stubs = []
for dirpath, _d, fs in os.walk(ROOT):
    for fn in fs:
        if not fn.endswith('.java'):
            continue
        p = os.path.join(dirpath, fn)
        raw = read(p)
        n = raw.count("Couldn't be decompiled")
        if n:
            rel = os.path.relpath(p, ROOT).replace('\\', '/')
            stubs.append((n, rel, raw.count('\n') + 1))

print('files with stubbed methods:', len(stubs))
print('total stubbed methods     :', sum(s[0] for s in stubs))
print()
for n, rel, lines in sorted(stubs, key=lambda x: -x[0]):
    print('%3d stub  %5d lines  %s' % (n, lines, rel))
