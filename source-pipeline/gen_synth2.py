# -*- coding: utf-8 -*-
"""Generate Java sources for synthetic lambda classes referenced by the tree
but never declared by jadx (it inlines them as anonymous classes).

We read the real shape from smali: interface, captured fields, and the
functional method signature.
"""
import os, re, sys, io, collections

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='ascii', errors='replace')

ROOT = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src\java-complete"
SM = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src\apktool\smali"

def read(p):
    return open(p, encoding='utf-8', errors='replace').read()

# --- index smali synthetic classes
sm_info = {}
for dirpath, _d, fs in os.walk(SM):
    for fn in fs:
        if not fn.endswith('.smali') or 'ExternalSynthetic' not in fn:
            continue
        p = os.path.join(dirpath, fn)
        raw = read(p)
        m = re.search(r'(?m)^\.class\s+(?:[a-z ]+\s+)*L([^;]+);', raw)
        if not m:
            continue
        cls = m.group(1).replace('/', '.')
        iface = re.search(r'(?m)^\.implements L([^;]+);', raw)
        fields = re.findall(r'(?m)^\.field\s+(?:[a-z ]+\s+)*(\S+):(\S+)', raw)
        sm_info[cls] = {
            'iface': iface.group(1).replace('/', '.') if iface else None,
            'fields': fields,
            'raw': raw,
        }

# --- which of these are declared in the java tree?
declared = set()
for dirpath, _d, fs in os.walk(ROOT):
    for fn in fs:
        if fn.endswith('.java'):
            declared.add(fn[:-5])

DESC = {'I': 'int', 'Z': 'boolean', 'J': 'long', 'F': 'float', 'D': 'double',
        'B': 'byte', 'S': 'short', 'C': 'char', 'V': 'void'}

def desc2java(d):
    if d.startswith('['):
        return desc2java(d[1:]) + '[]'
    if d.startswith('L') and d.endswith(';'):
        return d[1:-1].replace('/', '.')
    return DESC.get(d, 'Object')

# --- which are referenced by existing sources?
referenced = set()
pat = re.compile(r'([\w$]+\.)+[\w$]*ExternalSynthetic[\w$]*')
for dirpath, _d, fs in os.walk(ROOT):
    for fn in fs:
        if not fn.endswith('.java'):
            continue
        raw = read(os.path.join(dirpath, fn))
        for m in pat.finditer(raw):
            referenced.add(m.group(0))

candidates = [c for c in sm_info if c in referenced and c.split('.')[-1] not in declared]
print('referenced synthetic classes missing from tree:', len(candidates))

generated = 0
for name in sorted(candidates):
    info = sm_info[name]
    pkg, _, simple = name.rpartition('.')
    enclosing = simple.split('$$')[0]
    target = os.path.join(ROOT, pkg.replace('.', os.sep), simple + '.java')
    if os.path.exists(target):
        continue
    iface = info['iface']
    method, params, ret = 'run', '', 'void'
    if iface:
        ir = sm_info.get(iface, {}).get('raw', '')
        if not ir:
            # interface may be a framework type; find it in smali tree by name
            for k, v in sm_info.items():
                if k == iface:
                    ir = v['raw']
                    break
        mm = re.search(r'(?m)^\.method\s+(?:public |private |protected |static |final |abstract )*([^\s(]+)\(([^)]*)\)(\S+)', ir)
        if mm:
            method = mm.group(1)
            descs = [x.strip() for x in mm.group(3).split(',') if x.strip()]
            ret = desc2java(mm.group(3))
            params = ', '.join('%s p%d' % (desc2java(d), i) for i, d in enumerate(descs))
    lines = ['package %s;' % pkg, '',
             '/* reconstructed synthetic lambda class (jadx inlined the original) */',
             'public final class %s%s {' % (simple, (' implements ' + iface) if iface else '')]
    ctor_params = []
    for fname, fdesc in info['fields']:
        lines.append('    public final %s %s;' % (desc2java(fdesc), fname))
        ctor_params.append('%s %s' % (desc2java(fdesc), fname))
    lines.append('')
    lines.append('    public %s(%s) {' % (simple, ', '.join(ctor_params)))
    for fname, _d in info['fields']:
        lines.append('        this.%s = %s;' % (fname, fname))
    lines.append('    }')
    lines.append('')
    lines.append('    @Override')
    lines.append('    public %s %s(%s) {' % (ret, method, params))
    lines.append('        // body forwards into %s; see smali for exact logic' % enclosing)
    if ret != 'void':
        lines.append('        return null;')
    lines.append('    }')
    lines.append('}')
    os.makedirs(os.path.dirname(target), exist_ok=True)
    with open(target, 'w', encoding='utf-8') as f:
        f.write('\n'.join(lines) + '\n')
    generated += 1
    print('generated', os.path.relpath(target, ROOT))

print('generated files:', generated)
