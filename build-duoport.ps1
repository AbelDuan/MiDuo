# DuoPort 构建脚本：编译 -> dexfix -> zipalign -> 签名 -> 安装
# 用法: .\build-duoport.ps1 [-Install]
param(
    [switch]$Install
)

$ErrorActionPreference = "Stop"
$Root = "C:\Users\Abel\.dsh\folk-import\projects\miduo-re\miduo-src"
$DP   = Join-Path $Root "versions\1.0.437\duoport"
$OUT  = Join-Path $Root "versions\1.0.437\out"
$TMP  = "C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work"
$DEV  = "192.168.0.115:43513"

New-Item -ItemType Directory -Force -Path $OUT | Out-Null

$un  = Join-Path $OUT "duoport-unsigned.apk"
$al  = Join-Path $OUT "duoport-aligned.apk"
$fin = Join-Path $OUT "DuoPort.apk"

Write-Host "[1/6] apktool 编译" -ForegroundColor Cyan
if (Test-Path $un) { Remove-Item $un -Force }
& java -jar (Join-Path $Root "tools\apktool.jar") b $DP -o $un
if ($LASTEXITCODE -ne 0) { throw "apktool 编译失败" }

Write-Host "[2/6] dex 魔数修正 (041 -> 039)" -ForegroundColor Cyan
& python (Join-Path $TMP "dexfix.py") $un
if ($LASTEXITCODE -ne 0) { throw "dexfix 失败" }

Write-Host "[3/6] zipalign (4K .so 对齐)" -ForegroundColor Cyan
$za = Get-ChildItem "C:\Android\Sdk\build-tools" -Recurse -Filter "zipalign.exe" |
      Sort-Object FullName -Descending | Select-Object -First 1
& $za.FullName -f -p 4 $un $al
& $za.FullName -c -p 4 $al | Out-Null
if ($LASTEXITCODE -ne 0) { throw "zipalign 校验失败" }
Remove-Item $un -Force

Write-Host "[4/6] 签名" -ForegroundColor Cyan
$as = Get-ChildItem "C:\Android\Sdk\build-tools" -Recurse -Filter "apksigner.bat" |
      Sort-Object FullName -Descending | Select-Object -First 1
if (Test-Path $fin) { Remove-Item $fin -Force }
& $as.FullName sign --ks (Join-Path $Root "tools\miduo-rebuild.jks") `
    --ks-key-alias miduo --ks-pass "pass:miduo123" --key-pass "pass:miduo123" `
    --out $fin $al
if ($LASTEXITCODE -ne 0) { throw "签名失败" }
Write-Host "  APK: $((Get-Item $fin).Length) bytes" -ForegroundColor Green

if ($Install) {
    Write-Host "[5/6] 安装" -ForegroundColor Cyan
    & adb -s $DEV push $fin /data/local/tmp/duoport.apk | Out-Null
    & adb -s $DEV shell "su -c 'pm install -r -d /data/local/tmp/duoport.apk'"
    Write-Host "[6/6] 启动" -ForegroundColor Cyan
    & adb -s $DEV shell "su -c 'am start -n com.lsposed.duoport/dev.duo.port.SettingsActivity'" | Out-Null
}

Write-Host "完成: $fin" -ForegroundColor Green
