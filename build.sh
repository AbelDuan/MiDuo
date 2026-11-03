#!/bin/bash
set -euo pipefail
SRC=/storage/emulated/0/Documents/DSH/projects/dockhook
WORK=/tmp/dsh-work/dockhook
OUT=$WORK/build
JAVA_HOME=${JAVA_HOME:-/opt/jdk-17.0.13+11}
export PATH="$JAVA_HOME/bin:$PATH"
SDK=/root/Freeform_tmp/tools/sdk
BT=$SDK/build-tools/36.0.0
ANDROID_JAR=$SDK/platforms/android-37/android.jar
LIBXP=/root/OS4Theme/app/libs/libxposed-api-102.jar
AAPT2=/root/Freeform_tmp/tools/android-tools/aapt2
ZIPALIGN=/root/Freeform_tmp/tools/android-tools/zipalign
ANDROID_RES_JAR=${ANDROID_RES_JAR:-/root/Freeform_tmp/tools/android-tools/root/usr/lib/android-sdk/platforms/android-23/android.jar}

VER=$(sed -n 's/^version=//p' "$SRC/res/META-INF/xposed/module.prop")
VCODE=$(sed -n 's/^versionCode=//p' "$SRC/res/META-INF/xposed/module.prop")

mkdir -p "$WORK"; rm -rf "$OUT"; mkdir -p "$OUT/classes" "$OUT/dex" "$WORK/dist"
rm -rf "$WORK/res" "$WORK/src"; cp -r "$SRC/res" "$WORK/res"; cp -r "$SRC/src" "$WORK/src"

echo "== 1/7 aapt2 compile =="
"$AAPT2" compile --dir "$WORK/res/res" -o "$OUT/res.zip"

echo "== 2/7 aapt2 link =="
"$AAPT2" link -o "$OUT/base.apk" -I "$ANDROID_RES_JAR" \
  --manifest "$WORK/res/AndroidManifest.xml" -R "$OUT/res.zip" \
  --min-sdk-version 33 --target-sdk-version 36 \
  --auto-add-overlay --version-code "$VCODE" --version-name "$VER"

echo "== 3/7 javac =="
find "$WORK/src" -name '*.java' > "$OUT/sources.txt"
javac -source 17 -target 17 -encoding UTF-8 -Xlint:-options \
  -classpath "$ANDROID_JAR:$LIBXP" -d "$OUT/classes" @"$OUT/sources.txt"

echo "== 4/7 d8 =="
"$BT/d8" --release --min-api 33 --lib "$ANDROID_JAR" --classpath "$LIBXP" \
  --output "$OUT/dex" $(find "$OUT/classes" -name '*.class')

echo "== 5/7 native 编译（设备侧）=="
NATSRC=$WORK/cpp
mkdir -p "$NATSRC"; cp -f "$SRC/cpp"/*.c "$NATSRC"/ 2>/dev/null || true
R=/data/data/top.funcun.dshfolk/files/rootfs
L=/data/local/tmp/tkroot/data/data/com.termux/files/usr/lib
B=/data/local/tmp/tkroot/data/data/com.termux/files/usr/bin
NDK=$R/tmp/dsh-work/ndk/android-ndk-r29/toolchains/llvm/prebuilt/linux-x86_64
mkdir -p "$WORK/jniLibs/arm64-v8a"
dsh-native shell --reason "编译dockhook原生库" -- \
  "export LD_LIBRARY_PATH=$L; $B/clang --target=aarch64-linux-android33 --sysroot=$NDK/sysroot -resource-dir=$NDK/lib/clang/21 -shared -fPIC -O2 -o $R/tmp/dsh-work/dockhook/jniLibs/arm64-v8a/libdockhook.so $R/tmp/dsh-work/dockhook/cpp/dock_hook.c -llog" 2>&1 | tail -3

echo "== 6/7 组包 =="
cp -f "$OUT/base.apk" "$OUT/app-unsigned.apk"
(cd "$OUT/dex" && zip -q -X "$OUT/app-unsigned.apk" classes.dex)
(cd "$WORK/res" && zip -q -X -r "$OUT/app-unsigned.apk" META-INF)
if [ -f "$WORK/jniLibs/arm64-v8a/libdockhook.so" ]; then
  mkdir -p "$OUT/lib/arm64-v8a"; cp -f "$WORK/jniLibs/arm64-v8a/libdockhook.so" "$OUT/lib/arm64-v8a/"
  (cd "$OUT" && zip -q -X -r app-unsigned.apk lib)
fi
"$ZIPALIGN" -f -p 4 "$OUT/app-unsigned.apk" "$OUT/app-aligned.apk"

echo "== 7/7 签名 =="
KS=$WORK/keystore/dockhook.jks; mkdir -p "$WORK/keystore"
if [ ! -f "$KS" ]; then
  keytool -genkeypair -keystore "$KS" -alias dockhook -keyalg RSA -keysize 2048 \
    -validity 10000 -storepass android -keypass android \
    -dname "CN=DockHook,O=AbelDuan,C=CN"
fi
APK="$WORK/dist/DockHook-v$VER.apk"
"$BT/apksigner" sign --ks "$KS" --ks-pass pass:android --key-pass pass:android \
  --out "$APK" "$OUT/app-aligned.apk"
"$BT/apksigner" verify "$APK" >/dev/null && echo "签名校验通过"
mkdir -p /storage/emulated/0/Documents/DSH/builds/dockhook
cp -f "$APK" /storage/emulated/0/Documents/DSH/builds/dockhook/
echo "产物: $APK"
