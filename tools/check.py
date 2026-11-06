import os, glob, zipfile, struct, hashlib, re

base = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src"

print("=== 交付计数 ===")
print("java  :", len(glob.glob(os.path.join(base, "java", "**", "*.java"), recursive=True)))
print("smali :", len(glob.glob(os.path.join(base, "apktool", "smali", "**", "*.smali"), recursive=True)))
print("res   :", len([p for p in glob.glob(os.path.join(base, "apktool", "res", "**", "*"), recursive=True) if os.path.isfile(p)]))
print("docs  :", len(glob.glob(os.path.join(base, "docs", "*.md"))))
print("assets:", len([p for p in glob.glob(os.path.join(base, "apktool", "assets", "**", "*"), recursive=True) if os.path.isfile(p)]))

print()
print("=== 关键文件 ===")
for rel in ["MiDuo-1.0.415.apk", "build.ps1", "README.md",
            "apktool/AndroidManifest.xml", "apktool/apktool.yml",
            "apktool/lib/arm64-v8a/libduoworkspace.so",
            "native/libduoworkspace.so",
            "tools/apktool.jar", "tools/libxposed-api-102.aar", "tools/miduo-rebuild.jks",
            "out/MiDuo-rebuild.apk"]:
    p = os.path.join(base, rel.replace("/", os.sep))
    ok = os.path.isfile(p)
    print("%-46s %s %s" % (rel, "OK " if ok else "MISS", ("%d B" % os.path.getsize(p)) if ok else ""))

print()
print("=== libxposed 元数据 ===")
for n in ["META-INF/xposed/module.prop", "META-INF/xposed/scope.list",
          "META-INF/xposed/java_init.list", "META-INF/xposed/native_init.list"]:
    p = os.path.join(base, "apktool", "unknown", n.replace("/", os.sep))
    print("%-40s %s" % (n, "OK" if os.path.isfile(p) else "MISS"))

print()
print("=== 重建包 dex 与原始等价性 ===")
def dex(p):
    d = zipfile.ZipFile(p).read("classes.dex")
    u = lambda o: struct.unpack_from("<I", d, o)[0]
    return (u(56), u(64), u(72), u(80), u(88), u(96))
a = dex(os.path.join(base, "MiDuo-1.0.415.apk"))
b = dex(os.path.join(base, "out", "MiDuo-rebuild.apk"))
print("原始 (str,type,proto,field,method,class) =", a)
print("重建                                       =", b)
print("一致:", a == b)
