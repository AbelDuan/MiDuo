# -*- coding: utf-8 -*-
"""Repair jadx's use of a field name as a catch-block local, correctly.

For `catch (Exception e2) { e = e2; ... e.getCause() ... }` where `e` is a
field, we:
  * insert `Exception <var>Local;` immediately after the catch header,
  * rewrite every bare `var` inside the catch block to `<var>Local`.
The catch parameter keeps its original name, so no shadowing occurs.
"""
import os, re, sys, io, collections

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='ascii', errors='replace')

ROOT = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src\java-complete"
ERR = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\final-javac.err"

def read(p):
    return open(p, encoding='utf-8', errors='surrogateescape').read()

errs = collections.defaultdict(list)
for ln in read(ERR).replace('\ufeff', '').split('\n'):
    m = re.match(r'^(.+\.java):(\d+): error: cannot assign a value to final variable (\w+)$', ln.strip())
    if m:
        errs[m.group(1)].append((int(m.group(2)), m.group(3)))

def block_of(lines, idx):
    depth = 0
    start = None
    for i in range(idx, -1, -1):
        depth += lines[i].count('}') - lines[i].count('{')
        if depth <= 0 and '{' in lines[i]:
            start = i
            break
    if start is None:
        return None
    depth = 0
    for i in range(start, len(lines)):
        depth += lines[i].count('{') - lines[i].count('}')
        if depth <= 0:
            return start, i
    return None

total = 0
for srcfile, items in errs.items():
    if not os.path.exists(srcfile):
        continue
    lines = read(srcfile).split('\n')
    var = items[0][1]
    local = var + 'Local'
    for lineno, _v in sorted(items, reverse=True):
        idx = lineno - 1
        if idx >= len(lines):
            continue
        blk = block_of(lines, idx)
        if not blk:
            continue
        start, end = blk
        hdr = start - 1
        while hdr > 0 and 'catch' not in lines[hdr]:
            hdr -= 1
        if 'catch' not in lines[hdr]:
            continue
        # rewrite bare `var` inside the block, but never the catch parameter name
        for i in range(start, end + 1):
            lines[i] = re.sub(r'(?<![\w$.])' + re.escape(var) + r'(?![\w$])', local, lines[i])
        indent = re.match(r'\s*', lines[start]).group(0)
        lines.insert(start + 1, indent + '    Exception ' + local + ';')
        total += 1
    open(srcfile, 'w', encoding='utf-8', errors='surrogateescape').write('\n'.join(lines))
    print('fixed', os.path.basename(srcfile), len(items), '->', local)

print('total sites:', total)
