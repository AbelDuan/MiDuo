# -*- coding: utf-8 -*-
"""Sanitize Vineflower output: fix identifiers that contain illegal chars.

Vineflower keeps synthetic lambda method names like:
    $r8$lambda$mseN9edqEWdMcA7bY-t707DwSwk
The '-' makes them invalid Java identifiers. We rewrite every such token to a
stable, valid name so that declarations and call sites stay consistent.
"""
import os, re, sys, json

ROOT = sys.argv[1] if len(sys.argv) > 1 else r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\vf-out"

# A token that starts with $ and contains chars illegal in a Java identifier.
# Java identifiers allow letters, digits, _ and $. So the illegal part is anything else.
TOKEN = re.compile(r'\$[\w$\-+./]*')

def sanitize_token(tok):
    out = []
    for ch in tok:
        if ch.isalnum() or ch in '_$':
            out.append(ch)
        else:
            out.append('_')
    return ''.join(out)

mapping = {}

changed_files = 0
for dirpath, _dirnames, filenames in os.walk(ROOT):
    for fn in filenames:
        if not fn.endswith('.java'):
            continue
        p = os.path.join(dirpath, fn)
        with open(p, 'r', encoding='utf-8', errors='surrogateescape') as f:
            src = f.read()

        def repl(m):
            tok = m.group(0)
            if all(c.isalnum() or c in '_$' for c in tok):
                return tok
            new = sanitize_token(tok)
            mapping[tok] = new
            return new

        new_src = TOKEN.sub(repl, src)
        if new_src != src:
            with open(p, 'w', encoding='utf-8', errors='surrogateescape') as f:
                f.write(new_src)
            changed_files += 1

# Rename files whose own name contains illegal chars
renamed = 0
for dirpath, _dirnames, filenames in os.walk(ROOT):
    for fn in filenames:
        if not fn.endswith('.java'):
            continue
        if all(c.isalnum() or c in '_$' for c in fn[:-5]):
            continue
        new_fn = sanitize_token(fn[:-5]) + '.java'
        os.rename(os.path.join(dirpath, fn), os.path.join(dirpath, new_fn))
        renamed += 1

with open(os.path.join(ROOT, '..', 'vf-sanitize.json'), 'w', encoding='utf-8') as f:
    json.dump({'changed_files': changed_files, 'renamed': renamed, 'tokens': mapping}, f, indent=1)

print('changed files:', changed_files)
print('renamed files:', renamed)
print('distinct tokens:', len(mapping))
