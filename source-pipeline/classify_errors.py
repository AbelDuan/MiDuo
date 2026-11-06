# -*- coding: utf-8 -*-
"""Classify javac errors: real classes vs synthetic lambda noise."""
import re, sys, os, json
from collections import defaultdict

ERR = sys.argv[1]
VF = sys.argv[2]

txt = open(ERR, encoding='utf-8', errors='replace').read()
lines = txt.split('\n')

errs = []
for i, ln in enumerate(lines):
    m = re.match(r'^(.+\.java):(\d+): error: (.+)$', ln)
    if m:
        errs.append({'file': m.group(1), 'line': int(m.group(2)), 'msg': m.group(3)})

def cls_of(path):
    rel = os.path.relpath(path, VF)[:-5]
    return rel.replace('\\', '.')

real = defaultdict(int)
synth = defaultdict(int)
for e in errs:
    c = cls_of(e['file'])
    base = c.split('.')[-1]
    if 'ExternalSynthetic' in base or base.endswith('$$ExternalSyntheticRecord0') or base.endswith('$$ExternalSyntheticRecord1'):
        synth[e['msg'].split(':')[0]] += 1
    else:
        real[e['msg'].split(':')[0]] += 1

print('total errors      :', len(errs))
print('in real classes   :', sum(real.values()), ' (', len([e for e in errs if 'ExternalSynthetic' not in cls_of(e["file"]).split(".")[-1]]), 'errors )')
print('in synthetic class:', sum(synth.values()))
print()
print('=== real-class error kinds ===')
for k, v in sorted(real.items(), key=lambda x: -x[1])[:25]:
    print('%6d  %s' % (v, k))
print()
print('=== files with real errors ===')
cnt = defaultdict(int)
for e in errs:
    c = cls_of(e['file'])
    if 'ExternalSynthetic' not in c.split('.')[-1]:
        cnt[c] += 1
for k, v in sorted(cnt.items(), key=lambda x: -x[1])[:30]:
    print('%5d  %s' % (v, k))
