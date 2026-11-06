# -*- coding: utf-8 -*-
"""Repair remaining defects: apktool `.1` disambiguator, enum $VALUES, for-loop vars."""
import os, re, json, sys

VF = sys.argv[1] if len(sys.argv) > 1 else r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\vf-slim"
SM = sys.argv[2] if len(sys.argv) > 2 else r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src\apktool\smali"

def read(p):
    return open(p, encoding='utf-8', errors='surrogateescape').read()

def write(p, s):
    open(p, 'w', encoding='utf-8', errors='surrogateescape').write(s)

stats = {}

# --- 1. strip apktool `.1` segment inside any qualified class reference
# e.g.  dev.duo.hookprobe.t$b.1.$r8$lambda$X  ->  dev.duo.hookprobe.t$b.$r8$lambda$X
PAT_ONE = re.compile(r'((?:[\w$]+\.)+[\w$]+)\.1\.')
def strip_one(m):
    return m.group(1) + '.'
total_one = 0
for dirpath, _d, files in os.walk(VF):
    for fn in files:
        if not fn.endswith('.java'):
            continue
        p = os.path.join(dirpath, fn)
        raw = read(p)
        new = PAT_ONE.sub(strip_one, raw)
        if new != raw:
            total_one += len(PAT_ONE.findall(raw))
            write(p, new)
stats['strip_dot1'] = total_one

# --- 2. remove synthetic enum machinery lines that landed inside enum bodies
ENUM_JUNK = re.compile(
    r'(?m)^\s*private static final [\w.$]+\[\]\s+(?:[\w$]+|\$VALUES)\s*=\s*(?:[\w$]+\(\)|\$values\(\));\n'
)
total_enum = 0
for dirpath, _d, files in os.walk(VF):
    for fn in files:
        if not fn.endswith('.java'):
            continue
        p = os.path.join(dirpath, fn)
        raw = read(p)
        new = ENUM_JUNK.sub('', raw)
        if new != raw:
            total_enum += len(ENUM_JUNK.findall(raw))
            write(p, new)
stats['enum_junk'] = total_enum

# --- 3. `for (v : expr)` without a declared variable -> declare it
FOR_LOOP = re.compile(r'(?m)^(\s*)for \(([\w$]+) : ([^)\n]+)\) \{')
def fix_loops(path):
    raw = read(path)
    def rep(m):
        indent, var, expr = m.group(1), m.group(2), m.group(3)
        # already declared above? look backwards for `Type var`
        head = raw[:m.start()]
        if re.search(r'(?m)^\s*(?:final\s+)?[A-Za-z_$][\w$<>\[\].]*\s+' + re.escape(var) + r'\s*[;=]', head):
            return m.group(0)
        # infer: if expr ends with .entrySet() -> Map.Entry; if expr is var9 (List) -> Object
        if '.entrySet()' in expr:
            t = 'java.util.Map.Entry'
        else:
            t = 'Object'
        stats['for_var'] = stats.get('for_var', 0) + 1
        return indent + 'for (' + t + ' ' + var + ' : ' + expr + ') {'
    new = FOR_LOOP.sub(rep, raw)
    if new != raw:
        write(path, new)

for dirpath, _d, files in os.walk(VF):
    for fn in files:
        if fn.endswith('.java'):
            fix_loops(os.path.join(dirpath, fn))

print(json.dumps(stats, indent=1))
