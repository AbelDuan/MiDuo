# -*- coding: utf-8 -*-
"""Fix `X cannot be dereferenced` errors: a primitive local shadows a class name.

javac reports e.g.
    dev/duo/fold/Engine.java:348: error: float cannot be dereferenced
            properties.load(new StringReader(g.a(this.l, "curve.properties")));

Here `g` is a local float but the code means the class `dev.duo.fold.g`. We
rewrite that exact occurrence to the fully-qualified class name, which javac
then resolves unambiguously.
"""
import os, re, sys, io, collections

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='ascii', errors='replace')

ROOT = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src\java-complete"
ERR = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\final-javac.err"

def read(p):
    return open(p, encoding='utf-8', errors='replace').read()

# class simple name -> fully qualified, per package
classes = collections.defaultdict(set)
for dirpath, _d, fs in os.walk(ROOT):
    for fn in fs:
        if not fn.endswith('.java'):
            continue
        p = os.path.join(dirpath, fn)
        raw = read(p)
        m = re.search(r'(?m)^package\s+([\w.]+);', raw)
        pkg = m.group(1) if m else ''
        classes[pkg].add(fn[:-5])

errs = []
txt = read(ERR).replace('\ufeff', '')
lines = txt.split('\n')
for i, ln in enumerate(lines):
    m = re.match(r'^(.+\.java):(\d+): error: (int|long|float|double|short|byte|char|boolean) cannot be dereferenced$', ln.strip())
    if not m:
        continue
    srcfile, lineno = m.group(1), int(m.group(2))
    # the offending line is usually right after, or the caret line gives the column
    src_line = lines[i + 1] if i + 1 < len(lines) else ''
    caret = lines[i + 2] if i + 2 < len(lines) else ''
    col = caret.find('^') if '^' in caret else -1
    errs.append((srcfile, lineno, m.group(3), src_line, col))

print('dereference errors:', len(errs))

fixed = 0
by_file = collections.defaultdict(list)
for srcfile, lineno, ptype, src_line, col in errs:
    by_file[srcfile].append((lineno, ptype, src_line, col))

for srcfile, items in by_file.items():
    if not os.path.exists(srcfile):
        continue
    raw = read(srcfile)
    pkgm = re.search(r'(?m)^package\s+([\w.]+);', raw)
    pkg = pkgm.group(1) if pkgm else ''
    known = classes.get(pkg, set())
    lines = raw.split('\n')
    for lineno, ptype, src_line, col in sorted(items, reverse=True):
        if lineno - 1 >= len(lines):
            continue
        line = lines[lineno - 1]
        # find `<ident>.` at or near the reported column
        cands = [(m.start(), m.group(1)) for m in re.finditer(r'([A-Za-z_$][\w$]*)\s*\.', line)]
        pick = None
        if col > 0:
            for pos, name in cands:
                if abs(pos - col) <= 3 and name in known:
                    pick = (pos, name)
                    break
        if pick is None:
            for pos, name in cands:
                if name in known and name == ptype:
                    pick = (pos, name)
                    break
        if pick is None:
            continue
        pos, name = pick
        fq = pkg + '.' + name if pkg else name
        lines[lineno - 1] = line[:pos] + fq + line[pos + len(name):]
        fixed += 1
    open(srcfile, 'w', encoding='utf-8', errors='replace').write('\n'.join(lines))

print('rewritten sites:', fixed)
