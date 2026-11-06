# -*- coding: utf-8 -*-
"""Hybrid experiment: for each problem class, pick the source that compiles best.

We compile the whole tree once per candidate swap for a small set of classes and
report the resulting error count. Only classes whose Vineflower version has no
stub are candidates, because a stub loses real code.
"""
import os, re, shutil, subprocess, sys, io, json

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='ascii', errors='replace')

ROOT = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re"
OUT = ROOT + r"\miduo-src\java-complete"
VF = ROOT + r"\_work\vf-case"
W = ROOT + r"\_work"
JAVAC = r"C:\Program Files\Microsoft\jdk-17.0.20.101-hotspot\bin\javac.exe"
CP = "C:/Android/sdk/platforms/android-37/android.jar;" + ROOT + "/miduo-src/tools/libxposed-api-102/classes.jar"

def read(p):
    return open(p, encoding='utf-8', errors='replace').read()

def has_stub(p):
    raw = read(p)
    return "Couldn't be decompiled" in raw or 'Exception decompiling' in raw

CANDIDATES = [
    'dev/duo/fold/Engine.java',
    'dev/duo/fold/f.java',
    'dev/duo/fold/g.java',
    'dev/duo/fold/Preflight.java',
    'dev/duo/fold/c.java',
    'dev/duo/fold/h.java',
    'dev/duo/fold/i.java',
    'dev/duo/fold/b.java',
    'dev/duo/hookprobe/A.java',
    'dev/duo/hookprobe/T.java',
    'dev/duo/hookprobe/c.java',
    'dev/duo/hookprobe/h.java',
    'dev/duo/hookprobe/r.java',
    'dev/duo/hookprobe/L.java',
    'dev/duo/hookprobe/q.java',
    'dev/duo/workspaceprobe/WorkspaceHome.java',
    'dev/duo/taskcore/WorkspaceHost.java',
]

def compile_all():
    files = []
    for dirpath, _d, fs in os.walk(OUT):
        for fn in fs:
            if fn.endswith('.java'):
                files.append(os.path.join(dirpath, fn).replace('\\', '/'))
    argsfile = W + r"\hy-args.txt"
    enc = __import__('codecs').open(argsfile, 'w', encoding='utf-8')
    enc.write('\n'.join(files))
    enc.close()
    outdir = W + r"\hy-classes"
    shutil.rmtree(outdir, ignore_errors=True)
    os.makedirs(outdir, exist_ok=True)
    subprocess.run(['fsutil', 'file', 'setCaseSensitiveInfo', outdir, 'enable'],
                   capture_output=True)
    cmd = [JAVAC, '-J-Duser.language=en', '-d', outdir, '-encoding', 'UTF-8',
           '-cp', CP, '-nowarn', '-proc:none', '-Xmaxerrs', '8000', '@' + argsfile]
    r = subprocess.run(cmd, capture_output=True, text=True, errors='replace')
    errs = sum(1 for l in r.stderr.split('\n') if ': error:' in l)
    return errs, r.stderr

baseline, _ = compile_all()
print('baseline errors:', baseline)

results = []
for rel in CANDIDATES:
    vfp = os.path.join(VF, rel.replace('/', os.sep))
    dst = os.path.join(OUT, rel.replace('/', os.sep))
    # map to the possibly-renamed file (e.g. o_lower_.java)
    base = os.path.basename(dst)[:-5]
    alt = os.path.join(os.path.dirname(dst), base + '_lower_.java')
    if os.path.exists(alt):
        dst = alt
    if not os.path.exists(vfp) or not os.path.exists(dst):
        print('skip', rel)
        continue
    if has_stub(vfp):
        print('skip (stub)', rel)
        continue
    backup = dst + '.jadx'
    shutil.copyfile(dst, backup)
    shutil.copyfile(vfp, dst)
    try:
        n, _ = compile_all()
    finally:
        shutil.copyfile(backup, dst)
        os.remove(backup)
    results.append((rel, n))
    print('%-42s -> %d errors (baseline %d)' % (rel, n, baseline))

print()
print('=== improvements ===')
for rel, n in sorted(results, key=lambda x: x[1]):
    if n < baseline:
        print('%4d (was %d)  %s' % (n, baseline, rel))
