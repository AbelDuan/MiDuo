# -*- coding: utf-8 -*-
"""Map jadx `C0xxx` invented names back to real smali names, then rewrite."""
import os, re, sys, io

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='ascii', errors='replace')

FINAL = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src\java-complete"
SM = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src\apktool\smali"
JADX = [r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\jadx-slim\sources",
        r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\jadx-full\sources"]

def read(p):
    return open(p, encoding='utf-8', errors='replace').read()

real = set()
for dirpath, _d, fs in os.walk(SM):
    for fn in fs:
        if fn.endswith('.smali'):
            m = re.search(r'(?m)^\.class\s+(?:[a-z ]+\s+)*L([^;]+);', read(os.path.join(dirpath, fn)))
            if m:
                real.add(m.group(1).replace('/', '.'))

# exact jadx block:  renamed-from comment, optional loaded-from comment, decl
BLOCK = re.compile(
    r'/\* renamed from: ([\w$.]+), reason: [^*]*\*/\s*\n'
    r'(?:/\* loaded from: [^*]*\*/\s*\n)?'
    r'(?:@[\w.]+(?:[^\n]*)?\n)*'
    r'((?:public |private |protected |static |final |abstract )*'
    r'(?:class|interface|enum|record) )([\w$]+)'
)

renames = {}
for root in JADX:
    if not os.path.isdir(root):
        continue
    for dirpath, _d, fs in os.walk(root):
        for fn in fs:
            if not fn.endswith('.java'):
                continue
            raw = read(os.path.join(dirpath, fn))
            pkg = ''
            mp = re.search(r'(?m)^package\s+([\w.]+);', raw)
            if mp:
                pkg = mp.group(1)
            for m in BLOCK.finditer(raw):
                old_full = m.group(1)
                if '.' not in old_full and pkg:
                    old_full = pkg + '.' + old_full
                new = m.group(3)
                if old_full in real and new not in real:
                    renames.setdefault(new, old_full.split('.')[-1])

print('rename pairs:', len(renames))
for k in sorted(renames)[:25]:
    print('   %-10s -> %s' % (k, renames[k]))

if not renames:
    raise SystemExit(0)

keys = sorted(renames, key=len, reverse=True)
pat = re.compile(r'(?<![\w$])(' + '|'.join(re.escape(k) for k in keys) + r')(?![\w$])')

changed = 0
for dirpath, _d, fs in os.walk(FINAL):
    for fn in fs:
        if not fn.endswith('.java'):
            continue
        p = os.path.join(dirpath, fn)
        raw = read(p)
        orig = raw
        raw = pat.sub(lambda m: renames[m.group(1)], raw)
        if raw != orig:
            open(p, 'w', encoding='utf-8', errors='replace').write(raw)
            changed += 1

print('files rewritten:', changed)
