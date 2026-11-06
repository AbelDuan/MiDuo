import os
import subprocess
import zipfile
import struct
import zlib
import shutil

ROOT = r"C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src"
OUT = os.path.join(ROOT, "out")
UNS = os.path.join(OUT, "MiDuo-lsposed-unsigned.apk")
DEX39 = os.path.join(OUT, "MiDuo-lsposed-dex39.apk")
ALI = os.path.join(OUT, "MiDuo-lsposed-aligned.apk")
FIN = os.path.join(OUT, "MiDuo-lsposed.apk")

ZA = r"C:\Android\sdk\build-tools\36.0.0\zipalign.exe"
AS = r"C:\Android\sdk\build-tools\36.0.0\apksigner.bat"
KS = os.path.join(ROOT, "tools", "miduo-rebuild.jks")

# apktool 出包
J = r"C:\Program Files\Microsoft\jdk-17.0.20.101-hotspot\bin\java.exe"
r = subprocess.run([J, "-jar", os.path.join(ROOT, "tools", "apktool.jar"), "b", "-o", UNS, os.path.join(ROOT, "apktool")],
                   capture_output=True, text=True)
print("apktool rc=%d" % r.returncode)
if r.returncode != 0:
    print(r.stdout[-1500:])
    print(r.stderr[-1500:])
    raise SystemExit(1)

# dex magic 041 → 039（apktool 写错 magic 但 header 是 039 规格）
data = zipfile.ZipFile(UNS).read("classes.dex")
if data[:8] != b"dex\n039\x00":
    fixed = b"dex\n039\x00" + data[8:]
    sig = zlib.adler32(fixed[12:]) & 0xFFFFFFFF
    fixed = fixed[:8] + struct.pack("<I", sig) + fixed[12:]
    with zipfile.ZipFile(UNS) as zin, zipfile.ZipFile(DEX39, "w", zipfile.ZIP_DEFLATED) as zout:
        for item in zin.infolist():
            buf = zin.read(item.filename)
            if item.filename == "classes.dex":
                buf = fixed
            zi = zipfile.ZipInfo(item.filename, date_time=item.date_time)
            zi.compress_type = item.compress_type
            zi.external_attr = item.external_attr
            zout.writestr(zi, buf)
    print("dex 已修正为 039")
else:
    shutil.copy2(UNS, DEX39)
    print("dex 已是 039")

# zipalign
r = subprocess.run([ZA, "-f", "-p", "4", DEX39, ALI], capture_output=True, text=True)
print("zipalign rc=%d" % r.returncode)
r = subprocess.run([ZA, "-c", "-p", "4", ALI], capture_output=True, text=True)
print("对齐校验 rc=%d" % r.returncode)

# 签名
r = subprocess.run([AS, "sign", "--ks", KS, "--ks-key-alias", "miduo",
                    "--ks-pass", "pass:miduo123", "--key-pass", "pass:miduo123",
                    "--out", FIN, ALI], capture_output=True, text=True)
print("签名 rc=%d" % r.returncode)
r = subprocess.run([AS, "verify", FIN], capture_output=True, text=True)
print("验签 rc=%d" % r.returncode)

# 清理中间文件
for f in [UNS, DEX39, ALI]:
    if os.path.isfile(f):
        os.remove(f)

print("\n产物: %s  %d B" % (FIN, os.path.getsize(FIN)))
print("SHA256:", __import__("hashlib").sha256(open(FIN, "rb").read()).hexdigest())
