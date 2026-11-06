# -*- coding: utf-8 -*-
"""Compile packages in true dependency order, fixing nothing, just reporting.

Some packages depend on each other (taskcore <-> workspaceprobe), so we compile
them together in one group once their dependencies are satisfied.
"""
import os, re, subprocess, sys, io, shutil, collections

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='ascii', errors='replace')

ROOT = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re"
OUT = ROOT + r"\miduo-src\java-complete"
W = ROOT + r"\_work"
JAVAC = r"C:\Program Files\Microsoft\jdk-17.0.20.101-hotspot\bin\javac.exe"
CP = "C:/Android/sdk/platforms/android-37/android.jar;" + ROOT + "/miduo-src/tools/libxposed-api-102/classes.jar"

def files_in(pkgdir):
    out = []
    for dirpath, _d, fs in os.walk(pkgdir):
        for fn in fs:
            if fn.endswith('.java'):
                out.append(os.path.join(dirpath, fn).replace('\\', '/'))
    return out

def compile_group(name, dirs, cp_extra):
    fs = []
    for d in dirs:
        fs += files_in(d)
    argsf = W + r"\g-args.txt"
    with open(argsf, 'w', encoding='utf-8') as f:
        f.write('\n'.join(fs))
    outdir = W + r"\g-" + name
    shutil.rmtree(outdir, ignore_errors=True)
    os.makedirs(outdir, exist_ok=True)
    subprocess.run(['fsutil', 'file', 'setCaseSensitiveInfo', outdir, 'enable'], capture_output=True)
    cmd = [JAVAC, '-J-Duser.language=en', '-d', outdir, '-encoding', 'UTF-8',
           '-cp', CP + ';' + cp_extra, '-nowarn', '-proc:none', '-Xmaxerrs', '300', '@' + argsf]
    r = subprocess.run(cmd, capture_output=True, text=True, errors='replace')
    errs = [l for l in r.stderr.split('\n') if ': error:' in l]
    print('%-22s files=%3d  errors=%3d' % (name, len(fs), len(errs)))
    by_file = collections.Counter()
    for l in errs:
        m = re.match(r'^(.+\.java):(\d+): error:', l)
        if m:
            by_file[os.path.basename(m.group(1))] += 1
    for k, v in by_file.most_common(8):
        print('      %3d  %s' % (v, k))
    if errs:
        with open(W + r'\grp-' + name + '.log', 'w', encoding='utf-8') as f:
            f.write(r.stderr)
    return len(errs), outdir

# io has no internal deps -> already clean
io_err, io_dir = compile_group('io', [OUT + r"\io"], '')
# icons + fold depend on io only
f_err, f_dir = compile_group('fold+icons', [OUT + r"\dev\duo\fold", OUT + r"\dev\duo\icons"], io_dir)
# taskcore + workspaceprobe are mutually dependent
tw_err, tw_dir = compile_group('taskcore+wp', [OUT + r"\dev\duo\taskcore", OUT + r"\dev\duo\workspaceprobe"],
                               io_dir + ';' + f_dir)
# hookprobe depends on everything
h_err, h_dir = compile_group('hookprobe', [OUT + r"\dev\duo\hookprobe"], io_dir + ';' + f_dir + ';' + tw_dir)
