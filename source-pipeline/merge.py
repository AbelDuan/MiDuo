# -*- coding: utf-8 -*-
"""Merge Vineflower and CFR trees into one best-effort Java source tree.

Rule: prefer Vineflower (better structure / nesting / generics), and fall back
to CFR only for classes where Vineflower emitted a stub instead of code.
"""
import os, re, sys, json, shutil, subprocess

VF = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\vf-case"
CFR = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\cfr-one"
OUT = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\java-merged"

def read(p):
    return open(p, encoding='utf-8', errors='surrogateescape').read()

def is_stub(raw):
    """Vineflower writes a comment-only file when the whole class fails."""
    body = [l for l in raw.split('\n')
            if l.strip() and not l.strip().startswith('//') and not l.strip().startswith('package')]
    return len(body) < 3

def is_cfr_stub(raw):
    return 'Exception decompiling' in raw and raw.count('\n') < 20

def index(root):
    idx = {}
    for dirpath, _d, fs in os.walk(root):
        for fn in fs:
            if not fn.endswith('.java'):
                continue
            p = os.path.join(dirpath, fn)
            rel = os.path.relpath(p, root).replace('\\', '/')[:-5]
            head, _, tail = rel.rpartition('/')
            tail = re.sub(r'(_0|\.1)$', '', tail)
            cls_rel = (head + '/' + tail) if head else tail
            idx.setdefault(cls_rel, []).append(p)
    return idx

vf_idx = index(VF)
cfr_idx = index(CFR)

if os.path.isdir(OUT):
    shutil.rmtree(OUT, ignore_errors=True)
os.makedirs(OUT, exist_ok=True)
subprocess.run(['fsutil', 'file', 'setCaseSensitiveInfo', OUT, 'enable'], capture_output=True, text=True)

stats = {'vf_ok': 0, 'vf_stub_cfr_ok': 0, 'both_stub': 0, 'cfr_only': 0}
report = []
chosen = {}
for cls_rel in sorted(set(vf_idx) | set(cfr_idx)):
    v = vf_idx.get(cls_rel, [])
    c = cfr_idx.get(cls_rel, [])
    pick = None
    if v:
        raw = read(v[0])
        if not is_stub(raw):
            pick, why = v[0], 'vf'
            stats['vf_ok'] += 1
        else:
            if c and not is_cfr_stub(read(c[0])):
                pick, why = c[0], 'cfr'
                stats['vf_stub_cfr_ok'] += 1
                report.append(('VF-STUB->CFR', cls_rel, len(raw.split('\n')), len(read(c[0]).split('\n'))))
            else:
                pick, why = v[0], 'vf'
                stats['both_stub'] += 1
                report.append(('BOTH-STUB', cls_rel, 0, 0))
    else:
        if c:
            pick, why = c[0], 'cfr'
            stats['cfr_only'] += 1
    if pick:
        chosen[cls_rel] = (pick, why)

for cls_rel, (src, which) in chosen.items():
    dst = os.path.join(OUT, cls_rel.replace('/', os.sep) + '.java')
    os.makedirs(os.path.dirname(dst), exist_ok=True)
    shutil.copyfile(src, dst)

print(json.dumps(stats, indent=1))
print('merged classes:', len(chosen))
print()
print('=== classes rescued from CFR (VF had stubs) ===')
for tag, cls, a, b in report:
    if tag == 'VF-STUB->CFR':
        print('  %s  vf=%d lines -> cfr=%d lines' % (cls, a, b))
print()
print('=== still stubs ===')
for tag, cls, a, b in report:
    if tag == 'BOTH-STUB':
        print('  ' + cls)
