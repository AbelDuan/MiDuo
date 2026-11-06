# -*- coding: utf-8 -*-
"""Undo over-aggressive package qualification.

The earlier `fix_ambiguity.py` rewrote `X.Y` to `pkg.X.Y` whenever `X` was a
class name in the package. That is wrong when `X` is actually a *local variable*
of primitive or object type. javac then reports `X cannot be dereferenced`.

We revert those rewrites where the receiver is clearly a variable: the
qualified form `pkg.X.Y` is replaced by `X.Y` when `X` is a known local
variable name in that method.
"""
import os, re, sys, io, collections

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='ascii', errors='replace')

ROOT = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src\java-complete"
ERR = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\final-javac.err"

def read(p):
    return open(p, encoding='utf-8', errors='surrogateescape').read()

txt = read(ERR).replace('\ufeff', '')
lines = txt.split('\n')

# collect `X cannot be dereferenced` sites: file, line, receiver simple name
sites = collections.defaultdict(list)
for i, ln in enumerate(lines):
    m = re.match(r'^(.+\.java):(\d+): error: (\w+) cannot be dereferenced$', ln.strip())
    if not m:
        continue
    src, lineno = m.group(1), int(m.group(2))
    src_line = lines[i + 1]
    caret = lines[i + 2] if i + 2 < len(lines) else ''
    col = caret.find('^') if '^' in caret else -1
    # find the qualified receiver ending right before the caret
    cands = [(mm.start(), mm.group(1), mm.group(2))
             for mm in re.finditer(r'([\w.]+)\.(\w+)', src_line)]
    pick = None
    if col > 0:
        for start, recv, member in cands:
            end = start + len(recv)
            if abs(end - col) <= 3:
                pick = (start, recv, member)
                break
    if pick:
        sites[src].append((lineno, pick[1], pick[2]))

total = 0
for src, items in sites.items():
    if not os.path.exists(src):
        continue
    ls = read(src).split('\n')
    for lineno, recv, member in sorted(items, reverse=True):
        if lineno - 1 >= len(ls):
            continue
        line = ls[lineno - 1]
        simple = recv.split('.')[-1]
        if recv == simple:
            continue
        old = recv + '.' + member
        new = simple + '.' + member
        if old in line:
            ls[lineno - 1] = line.replace(old, new, 1)
            total += 1
    open(src, 'w', encoding='utf-8', errors='surrogateescape').write('\n'.join(ls))
    print('reverted', os.path.basename(src), len(items), 'sites')

print('total reverts:', total)
