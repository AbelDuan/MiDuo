# MiDuo (dev.duo.hookprobe) 一键构建脚本
# 用法：
#   .\build.ps1              # 构建 + 签名，产物在 .\out\MiDuo-rebuild.apk
#   .\build.ps1 -Install     # 构建 + 签名 + adb 安装
#   .\build.ps1 -Decompile   # 从原始 APK 重新反编译（覆盖 apktool/ 与 java/）
#
# 依赖（脚本会自动探测，可用环境变量覆盖）：
#   JAVA_HOME   / java.exe          —— 需要 JDK 17+
#   APKTOOL_JAR                     —— apktool 2.11.1
#   APKSIGNER                       —— Android build-tools 的 apksigner.bat
#   KEYSTORE / KEY_ALIAS / KEY_PASS —— 签名用 keystore

$ErrorActionPreference = 'Stop'
$Root = Split-Path -Parent $MyInvocation.MyCommand.Path

function Find-Java {
    if ($env:JAVA_HOME -and (Test-Path "$env:JAVA_HOME\bin\java.exe")) { return "$env:JAVA_HOME\bin\java.exe" }
    $cmd = Get-Command java -ErrorAction SilentlyContinue
    if ($cmd) { return $cmd.Source }
    throw "未找到 java，请设置 JAVA_HOME 或把 JDK 17+ 加入 PATH"
}

function Find-ApkTool {
    if ($env:APKTOOL_JAR -and (Test-Path $env:APKTOOL_JAR)) { return $env:APKTOOL_JAR }
    foreach ($p in @("$Root\tools\apktool.jar", "$Root\..\.work\apktool.jar", "$env:USERPROFILE\.dsh\folk-import\projects\.work\apktool.jar")) {
        if (Test-Path $p) { return (Resolve-Path $p).Path }
    }
    throw "未找到 apktool.jar，请设置 APKTOOL_JAR"
}

function Find-ApkSigner {
    if ($env:APKSIGNER -and (Test-Path $env:APKSIGNER)) { return $env:APKSIGNER }
    $sdkRoots = @("$env:ANDROID_HOME", "$env:ANDROID_SDK_ROOT", "C:\Android\sdk", "$env:LOCALAPPDATA\Android\Sdk") | Where-Object { $_ }
    foreach ($s in $sdkRoots) {
        $bt = Join-Path $s "build-tools"
        if (Test-Path $bt) {
            $hit = Get-ChildItem $bt -Recurse -Filter "apksigner.bat" -ErrorAction SilentlyContinue | Sort-Object FullName -Descending | Select-Object -First 1
            if ($hit) { return $hit.FullName }
        }
    }
    throw "未找到 apksigner.bat，请设置 APKSIGNER 或 ANDROID_HOME"
}

function Find-ZipAlign {
    if ($env:ZIPALIGN -and (Test-Path $env:ZIPALIGN)) { return $env:ZIPALIGN }
    $sdkRoots = @("$env:ANDROID_HOME", "$env:ANDROID_SDK_ROOT", "C:\Android\sdk", "$env:LOCALAPPDATA\Android\Sdk") | Where-Object { $_ }
    foreach ($s in $sdkRoots) {
        $bt = Join-Path $s "build-tools"
        if (Test-Path $bt) {
            $hit = Get-ChildItem $bt -Recurse -Filter "zipalign.exe" -ErrorAction SilentlyContinue | Sort-Object FullName -Descending | Select-Object -First 1
            if ($hit) { return $hit.FullName }
        }
    }
    return $null
}

$Java     = Find-Java
$ApkTool  = Find-ApkTool
$ApkSigner= Find-ApkSigner
$ZipAlign = Find-ZipAlign

$SrcApk   = Join-Path $Root "MiDuo-1.0.415.apk"
$WorkDir  = Join-Path $Root "apktool"
$OutDir   = Join-Path $Root "out"
$Unsigned = Join-Path $OutDir "MiDuo-rebuild-unsigned.apk"
$Aligned  = Join-Path $OutDir "MiDuo-rebuild-aligned.apk"
$Final    = Join-Path $OutDir "MiDuo-rebuild.apk"

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null

if ($Decompile -or -not (Test-Path $WorkDir)) {
    if (-not (Test-Path $SrcApk)) { throw "缺少原始 APK：$SrcApk" }
    Write-Host "[1/4] apktool d 反编译 $SrcApk" -ForegroundColor Cyan
    & $Java -jar $ApkTool d -f -o $WorkDir $SrcApk
    if ($LASTEXITCODE -ne 0) { throw "apktool 反编译失败" }
    Write-Host "      完成：$WorkDir"
}

Write-Host "[2/5] apktool b 打包" -ForegroundColor Cyan
& $Java -jar $ApkTool b -o $Unsigned $WorkDir
if ($LASTEXITCODE -ne 0) { throw "apktool 打包失败" }

# ★ 必须做：apktool 2.11.x 输出 dex\n041（header_size=120），
#   但 Android 运行时只认 dex\n039（header_size=112）。
#   不改写会报 "Header size is 112 but 120 was expected"，
#   DexPathList 整个加载失败 → 所有类 ClassNotFoundException → 启动即闪退。
Write-Host "[2.5/5] 修正 dex 版本号 041 -> 039" -ForegroundColor Cyan
$DexFixPy = @'
import sys, zipfile, shutil, struct, zlib, os
apk = sys.argv[1]
tmp = apk + ".dextmp"
fixed = 0
with zipfile.ZipFile(apk, "r") as zin, zipfile.ZipFile(tmp, "w", zipfile.ZIP_DEFLATED) as zout:
    for item in zin.infolist():
        data = zin.read(item.filename)
        if item.filename.startswith("classes") and item.filename.endswith(".dex"):
            if data[:4] == b"dex\n" and data[4:8] == b"041\x00":
                d = bytearray(data)
                d[4:8] = b"039\x00"
                struct.pack_into("<I", d, 36, 112)          # header_size
                struct.pack_into("<I", d, 8, 0)             # clear checksum
                struct.pack_into("<I", d, 8, zlib.adler32(bytes(d[12:])) & 0xffffffff)
                data = bytes(d)
                fixed += 1
        zi = zipfile.ZipInfo(item.filename, date_time=item.date_time)
        zi.compress_type = item.compress_type
        zi.external_attr = item.external_attr
        zout.writestr(zi, data)
shutil.move(tmp, apk)
print("dex fixed: " + str(fixed))
'@
$DexFixPy | Out-File -FilePath "$env:TEMP\miduo_dexfix.py" -Encoding utf8
$py = Get-Command python -ErrorAction SilentlyContinue
if (-not $py) { throw "未找到 python，dex 修正必需（否则装机会闪退）" }
& $py.Source "$env:TEMP\miduo_dexfix.py" $Unsigned
if ($LASTEXITCODE -ne 0) { throw "dex 修正失败" }

# ★ 必须做：本 APK 的 AndroidManifest 是 extractNativeLibs="false"，
#   libduoworkspace.so 必须 4K/16K 页对齐，否则 System.loadLibrary 直接失败，
#   所有 native 功能（工作台、Dock、布局劫持、折叠动画采样）全部静默失效。
Write-Host "[3/5] zipalign（4K 页对齐 .so，extractNativeLibs=false 必需）" -ForegroundColor Cyan
if (-not $ZipAlign) { throw "未找到 zipalign.exe，请设置 ZIPALIGN 或 ANDROID_HOME（缺失会导致 native 库加载失败）" }
& $ZipAlign -f -p 4 $Unsigned $Aligned
if ($LASTEXITCODE -ne 0) { throw "zipalign 失败" }
& $ZipAlign -c -p 4 $Aligned | Out-Null
if ($LASTEXITCODE -ne 0) { throw "zipalign 校验失败（.so 未对齐，装机会加载不到 native 库）" }
Remove-Item $Unsigned -Force

Write-Host "[4/5] 签名" -ForegroundColor Cyan
$Ks = if ($env:KEYSTORE) { $env:KEYSTORE } elseif (Test-Path "$Root\tools\miduo-rebuild.jks") { "$Root\tools\miduo-rebuild.jks" } else { $null }
if ($Ks) {
    $alias = if ($env:KEY_ALIAS) { $env:KEY_ALIAS } else { "miduo" }
    $pass  = if ($env:KEY_PASS)  { $env:KEY_PASS }  else { "miduo123" }
    & $ApkSigner sign --ks $Ks --ks-key-alias $alias --ks-pass "pass:$pass" --key-pass "pass:$pass" --out $Final $Aligned
    if ($LASTEXITCODE -ne 0) { throw "签名失败（检查 keystore/别名/密码）" }
} else {
    Write-Host "      未找到 keystore，跳过签名，产物为未签名 APK" -ForegroundColor Yellow
    Copy-Item $Aligned $Final -Force
}

Get-Item $Final | Select-Object FullName, Length, LastWriteTime | Format-List
Write-Host "[5/5] 完成" -ForegroundColor Green

if ($Install) {
    adb install -r -d $Final
    if ($LASTEXITCODE -ne 0) { throw "adb install 失败" }
    Write-Host "已安装。激活模块后需重启作用域进程：adb shell su -c 'killall com.miui.home com.android.systemui'" -ForegroundColor Green
}
