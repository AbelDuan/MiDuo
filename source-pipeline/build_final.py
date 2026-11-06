# -*- coding: utf-8 -*-
"""Build the final Java source tree: one file per *top-level* class.

Priority: jadx-slim (current slimmed dex) > jadx-full > java/ > vineflower > cfr.
A source is skipped only when it produced a decompiler stub.

Key detail: jadx invents names like `C0021o` when its output directory cannot
hold `o.java` and `O.java` together, and records the truth in
`/* renamed from: dev.duo.hookprobe.o, reason: ... */`. We index a file under
BOTH the invented name and the real name, but only for *top-level* declarations
(indentation 0) so nested classes do not create bogus keys.
"""
import os, re, sys, json, shutil, subprocess, io

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='ascii', errors='replace')

ROOT = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re"
W = ROOT + r"\_work"
SM = ROOT + r"\miduo-src\apktool\smali"
OUT = ROOT + r"\miduo-src\java-complete"

SRC = {
    'jadx_slim': W + r"\jadx-slim\sources",
    'jadx_full': W + r"\jadx-full\sources",
    'java_old':  ROOT + r"\miduo-src\java",
    'vf':        W + r"\vf-case",
    'cfr':       W + r"\cfr-one",
}
PRIORITY = ['jadx_slim', 'jadx_full', 'java_old', 'vf', 'cfr']

def read(p):
    return open(p, encoding='utf-8', errors='replace').read()

# ------------------------------------------------------------------ smali truth
top_classes, nested = {}, set()
for dirpath, _d, fs in os.walk(SM):
    for fn in fs:
        if not fn.endswith('.smali'):
            continue
        p = os.path.join(dirpath, fn)
        m = re.search(r'(?m)^\.class\s+(?:[a-z ]+\s+)*L([^;]+);', read(p))
        if not m:
            continue
        cls = m.group(1).replace('/', '.')
        if '$' in cls:
            nested.add(cls)
        else:
            top_classes[cls] = os.path.getsize(p)

# ------------------------------------------------------------------ java index
# top-level declaration only: no leading whitespace before `class`
TOP_DECL = re.compile(r'(?m)^(?:public |private |protected |static |final |abstract )*'
                      r'(?:class|interface|enum|record) ([\w$]+)')
# jadx's rename comment sits directly above a top-level declaration
TOP_RENAME = re.compile(
    r'(?m)^/\* renamed from: ([\w$.]+), reason: [^*]*\*/\s*\n'
    r'(?:/\* loaded from: [^*]*\*/\s*\n)?'
    r'(?:@[\w.]+(?:[^\n]*)?\n)*'
    r'(?:public |private |protected |static |final |abstract )*'
    r'(?:class|interface|enum|record) ([\w$]+)'
)

index = {}
for tag, root in SRC.items():
    if not os.path.isdir(root):
        continue
    for dirpath, _d, fs in os.walk(root):
        for fn in fs:
            if not fn.endswith('.java'):
                continue
            p = os.path.join(dirpath, fn)
            raw = read(p)
            pkg = ''
            m = re.search(r'(?m)^package\s+([\w.]+);', raw)
            if m:
                pkg = m.group(1)
            base = re.sub(r'(_0|\.1)$', '', fn[:-5])
            keys = {(pkg + '.' + base) if pkg else base}
            # the real class name recorded by jadx, but only for top-level decls
            for mm in TOP_RENAME.finditer(raw):
                old_full = mm.group(1)
                if '.' not in old_full and pkg:
                    old_full = pkg + '.' + old_full
                keys.add(old_full)
            for k in keys:
                index.setdefault(k, {}).setdefault(tag, []).append(p)

def is_stub(path):
    raw = read(path)
    n = raw.count('\n') + 1
    if "Couldn't be decompiled" in raw and n < 40:
        return True
    if 'Exception decompiling' in raw and n < 40:
        return True
    body = [l for l in raw.split('\n')
            if l.strip() and not l.strip().startswith('//') and not l.strip().startswith('package')]
    return len(body) < 5

# ------------------------------------------------------------------ select
chosen, stats, missing = {}, {}, []
for cls in sorted(top_classes):
    cands = index.get(cls, {})
    pick = None
    for tag in PRIORITY:
        for p in cands.get(tag, []):
            if not is_stub(p):
                pick = (p, tag)
                break
        if pick:
            break
    if pick is None:
        allp = [(t, p) for t in PRIORITY for p in cands.get(t, [])]
        if allp:
            pick = max(allp, key=lambda tp: os.path.getsize(tp[1]))
            stats['forced_stub'] = stats.get('forced_stub', 0) + 1
        else:
            missing.append(cls)
            continue
    stats['from_' + pick[1]] = stats.get('from_' + pick[1], 0) + 1
    chosen[cls] = pick

# ------------------------------------------------------------------ write
if os.path.isdir(OUT):
    shutil.rmtree(OUT, ignore_errors=True)
os.makedirs(OUT, exist_ok=True)
subprocess.run(['fsutil', 'file', 'setCaseSensitiveInfo', OUT, 'enable'], capture_output=True, text=True)

for cls, (src, tag) in chosen.items():
    dst = os.path.join(OUT, cls.replace('.', os.sep) + '.java')
    os.makedirs(os.path.dirname(dst), exist_ok=True)
    shutil.copyfile(src, dst)

print('smali top-level classes :', len(top_classes))
print('smali nested classes    :', len(nested))
print('files written           :', len(chosen))
print('top-level with no java  :', len(missing))
print()
print('=== source distribution ===')
for k, v in sorted(stats.items(), key=lambda x: -x[1]):
    print('%6d  %s' % (v, k))
if missing:
    print()
    print('=== missing ===')
    for c in sorted(missing, key=lambda c: -top_classes[c]):
        print('  %8d  %s' % (top_classes[c], c))
