# -*- coding: utf-8 -*-
"""Qualify ambiguous `X.Y` references that javac reads as `package X, class Y`.

When a class is named the same as its own package's sibling (e.g. package
`dev.duo.workspaceprobe` contains class `a`), a reference `a.b` can be parsed as
"package a, class b". jadx emitted exactly this form for `a.b` meaning
`dev.duo.workspaceprobe.a.b`.

We rewrite the short form to the fully-qualified nested form so the meaning is
unambiguous.
"""
import os, re, sys, io, collections

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='ascii', errors='replace')

ROOT = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src\java-complete"

def read(p):
    return open(p, encoding='utf-8', errors='surrogateescape').read()

# collect package -> set of top-level class names
pkg_classes = collections.defaultdict(set)
file_pkg = {}
for dirpath, _d, fs in os.walk(ROOT):
    for fn in fs:
        if not fn.endswith('.java'):
            continue
        p = os.path.join(dirpath, fn)
        raw = read(p)
        m = re.search(r'(?m)^package\s+([\w.]+);', raw)
        pkg = m.group(1) if m else ''
        file_pkg[p] = pkg
        for mm in re.finditer(r'(?m)^(?:public |private |protected |static |final |abstract )*'
                              r'(?:class|interface|enum|record) ([\w$]+)', raw):
            pkg_classes[pkg].add(mm.group(1))

changed = 0
rewrites = 0
for p, pkg in file_pkg.items():
    raw = read(p)
    orig = raw
    # for each class name that could be read as a package, qualify `Name.X`
    for cls in sorted(pkg_classes.get(pkg, ()), key=len, reverse=True):
        if not cls:
            continue
        pat = re.compile(r'(?<![\w$.])' + re.escape(cls) + r'\.([A-Za-z_$][\w$]*)')
        def sub(m, cls=cls, pkg=pkg):
            global rewrites
            nested = m.group(1)
            # only rewrite when the nested name is NOT a known class in this package
            if nested in pkg_classes.get(pkg, ()):
                return m.group(0)
            rewrites += 1
            return pkg + '.' + cls + '.' + nested
        raw = pat.sub(sub, raw)
    if raw != orig:
        open(p, 'w', encoding='utf-8', errors='surrogateescape').write(raw)
        changed += 1

print('files changed:', changed)
print('rewrites     :', rewrites)
