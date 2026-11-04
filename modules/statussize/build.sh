#!/bin/bash
# 状态栏尺寸调节 —— 构建脚本（在容器内用 sh 执行）
set -euo pipefail
SRC=/storage/emulated/0/Documents/DSH/projects/statussize
WORK=/tmp/dsh-work/statussize
OUT=$WORK/build
JAVA_HOME=${JAVA_HOME:-/opt/jdk-17.0.13+11}
export PATH="$JAVA_HOME/bin:$PATH"
SDK=/root/Freeform_tmp/tools/sdk
BT=$SDK/build-tools/34.0.0
ANDROID_JAR=$SDK/platforms/android-36/android.jar
LIBXP=/root/OS4Theme/app/libs/libxposed-api-102.jar
AAPT2=/root/Freeform_tmp/tools/android-tools/aapt2
ZIPALIGN=/root/Freeform_tmp/tools/android-tools/zipalign
ANDROID_RES_JAR=${ANDROID_RES_JAR:-/root/Freeform_tmp/tools/android-tools/root/usr/lib/android-sdk/platforms/android-23/android.jar}

VER=$(sed -n 's/^version=//p' "$SRC/res/META-INF/xposed/module.prop")
VCODE=$(sed -n 's/^versionCode=//p' "$SRC/res/META-INF/xposed/module.prop")

mkdir -p "$WORK"
rm -rf "$OUT"; mkdir -p "$OUT/classes" "$OUT/dex" "$WORK/dist"
rm -rf "$WORK/res" "$WORK/src"
cp -r "$SRC/res" "$WORK/res"
cp -r "$SRC/src" "$WORK/src"

echo "== 1/6 aapt2 compile =="
"$AAPT2" compile --dir "$WORK/res/res" -o "$OUT/res.zip"

echo "== 2/6 aapt2 link =="
"$AAPT2" link -o "$OUT/base.apk" -I "$ANDROID_RES_JAR" \
  --manifest "$WORK/res/AndroidManifest.xml" -R "$OUT/res.zip" \
  --min-sdk-version 33 --target-sdk-version 36 \
  --auto-add-overlay --version-code "$VCODE" --version-name "$VER"

echo "== 3/6 javac =="
find "$WORK/src" -name '*.java' > "$OUT/sources.txt"
javac -source 17 -target 17 -encoding UTF-8 -Xlint:-options \
  -classpath "$ANDROID_JAR:$LIBXP" -d "$OUT/classes" @"$OUT/sources.txt"

echo "== 4/6 d8 =="
"$BT/d8" --release --min-api 33 --lib "$ANDROID_JAR" --classpath "$LIBXP" \
  --output "$OUT/dex" $(find "$OUT/classes" -name '*.class')

echo "== 5/6 组包 =="
cp -f "$OUT/base.apk" "$OUT/app-unsigned.apk"
(cd "$OUT/dex" && zip -q -X "$OUT/app-unsigned.apk" classes.dex)
(cd "$WORK/res" && zip -q -X -r "$OUT/app-unsigned.apk" META-INF)
(cd "$WORK/res" && zip -q -X -r "$OUT/app-unsigned.apk" assets)
"$ZIPALIGN" -f -p 4 "$OUT/app-unsigned.apk" "$OUT/app-aligned.apk"

echo "== 6/6 签名 =="
KS=$WORK/keystore/statussize.jks
mkdir -p "$WORK/keystore"
if [ ! -f "$KS" ]; then
  keytool -genkeypair -keystore "$KS" -alias statussize -keyalg RSA -keysize 2048 \
    -validity 10000 -storepass android -keypass android \
    -dname "CN=StatusSize,O=AbelDuan,C=CN"
fi
APK="$WORK/dist/StatusSize-v$VER.apk"
"$BT/apksigner" sign --ks "$KS" --ks-pass pass:android --key-pass pass:android \
  --out "$APK" "$OUT/app-aligned.apk"
"$BT/apksigner" verify "$APK" >/dev/null && echo "签名校验通过"
mkdir -p /storage/emulated/0/Documents/DSH/builds/statussize
cp -f "$APK" /storage/emulated/0/Documents/DSH/builds/statussize/
echo "产物: $APK"
