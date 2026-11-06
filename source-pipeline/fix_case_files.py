# -*- coding: utf-8 -*-
"""Rename source files so that no two files in a package differ only by case.

javac on Windows resolves source files through a case-insensitive path cache, so
`o.java` and `O.java` in the same package collide and only one is compiled.
Non-public classes are allowed to live in a differently-named file, so renaming
the *file* (not the class) resolves the collision.

The renamed files are recorded in `java-complete/_renames.json` so tooling can
map file -> class.
"""
import os, re, sys, io, json, collections

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='ascii', errors='replace')

ROOT = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src\java-complete"

def read(p):
    return open(p, encoding='utf-8', errors='surrogateescape').read()

# collect per-directory file lists
bydir = collections.defaultdict(list)
for dirpath, _d, fs in os.walk(ROOT):
    for fn in fs:
        if fn.endswith('.java'):
            bydir[dirpath].append(fn)

renames = {}
moved = 0
for dirpath, files in bydir.items():
    lower = collections.defaultdict(list)
    for fn in files:
        lower[fn.lower()].append(fn)
    for low, group in lower.items():
        if len(group) < 2:
            continue
        # keep the first alphabetically-stable name, rename the rest
        group.sort()
        for fn in group[1:]:
            base = fn[:-5]
            new_base = base + '_' + ('upper' if base.isupper() else 'lower') + '_'
            # ensure the new file does not clash either
            cand = new_base + '.java'
            n = 0
            while os.path.exists(os.path.join(dirpath, cand)):
                n += 1
                cand = new_base + str(n) + '.java'
            os.rename(os.path.join(dirpath, fn), os.path.join(dirpath, cand))
            renames[cand] = fn
            moved += 1

with open(os.path.join(ROOT, '_renames.json'), 'w', encoding='utf-8') as f:
    json.dump(renames, f, indent=1, ensure_ascii=False)

print('files renamed:', moved)
for k, v in renames.items():
    print('   %s  was %s' % (k, v))
