# 09 · 功能精简变更记录（可回滚）

> 本次变更从 MiDuo 1.0.415 中移除了 4 块功能。基线提交：`ed62199`，精简提交：`c202f95`。
> 产物：`out/MiDuo-rebuild.apk`（3,431,594 B，dex 1,360,020 B）。

---

## 1. 回滚方式（三种任选）

### 方式 A：git（推荐，最快）

```powershell
cd miduo-src
git log --oneline -3          # 确认能看到 ed62199 / c202f95
git checkout ed62199 -- .     # 恢复全部文件到基线
git reset --hard ed62199      # 或者直接硬回滚（丢弃精简提交）
```

回滚后重新构建即可：

```powershell
.\build.ps1
```

### 方式 B：目录副本（保留物理快照）

```
miduo-re/backups/miduo-src-before-slim-20261106-114947/
```

这是执行删除前的**完整目录拷贝**（1700 文件，含 out/ 与 tools/）。恢复方式：

```powershell
# 先删掉当前目录，再从备份还原（注意核对路径）
Remove-Item miduo-re\miduo-src -Recurse -Force
Copy-Item miduo-re\backups\miduo-src-before-slim-20261106-114947 miduo-re\miduo-src -Recurse
```

### 方式 C：只回滚某个功能

```powershell
# 只恢复 iOS 通知中心（btm 包 + IosNcActivity + manifest 条目）
git checkout ed62199 -- apktool/smali/btm apktool/smali/dev/duo/hookprobe/IosNcActivity*.smali apktool/AndroidManifest.xml

# 只恢复旋转建议
git checkout ed62199 -- apktool/smali/dev/duo/workspaceprobe/f*.smali java/dev/duo/workspaceprobe/C0147f.java

# 只恢复授权/试用（注意：b.smali 里的调用点也需一并恢复）
git checkout ed62199 -- apktool/smali/dev/duo/hookprobe/B*.smali apktool/smali/dev/duo/hookprobe/i.1.smali apktool/smali/dev/duo/hookprobe/p*.smali apktool/smali/dev/duo/hookprobe/S.smali apktool/smali/dev/duo/hookprobe/y*.smali
```

> ⚠️ 方式 C 回滚单个功能时，被改动的调用方（如 `b.smali`、`MainActivity.smali`、`n.1.smali`）也需要从基线恢复对应片段，否则会出现类缺失或逻辑不一致。**不确定时请用方式 A 全量回滚。**

---

## 2. 四块功能的移除明细

### 2.1 iOS 风格通知中心

| 项目 | 处理 |
|---|---|
| `btm/m/os4/systemuihook/newnotificationcenter/*` | **删除全部**（15 个类 / 146 个 smali 文件） |
| `btm/m/os4/systemuihook/hypermusiccover/*` | **删除全部**（10 个类） |
| `IosNcActivity` + 8 个 lambda | **删除**（10 个 smali + 1 个 java） |
| `C0143b` 的安装调用 | `onPackageLoaded` 中整段 try 块替换为 `goto :goto_0` |
| `AndroidManifest.xml` | 移除 `<activity ...IosNcActivity/>` 条目 |

**影响**：下拉通知中心恢复为 MIUI 原版；壁纸背景层、毛玻璃、弹簧动画一并消失。

### 2.2 旋转建议按钮

| 项目 | 处理 |
|---|---|
| `dev/duo/workspaceprobe/C0147f`（旋转建议实现） | **删除全部**（14 个 smali + 1 个 java） |
| `C0143b` 的 2 处调用 | 删除调用行 |
| `C0113o` 的 `_global/rotationSuggest` | 保留键常量（无副作用），不再有消费方 |

**影响**：SystemUI 不再 hook `CommandQueue.onProposedRotationChanged`，不再显示旋转建议浮层。

### 2.3 轻折分屏（foldSplit）

| 项目 | 处理 |
|---|---|
| `C0143b` 的 `foldSplit` ContentObserver 注册 | 整段 try 块替换为 `goto :goto_5` |
| `C0143b.g0()`（读取 foldSplit 开关） | 方法体清空为 `return-void` |
| `C0143b.a(IZZ)V` 中的启用位 `r1` | **强制写入 false**（开关永远关） |

**影响**：轻折手势不再触发分屏；铰链传感器注册逻辑因 `r1=false` 而不会启用。

### 2.4 授权与试用

| 项目 | 处理 |
|---|---|
| `C0107i`（ECDSA 验签） | **删除**（1 个 smali + 1 个 java） |
| `C0043B`（服务端通信） | **删除**（2 个 smali + 1 个 java） |
| `C0114p`（试用计时） | **删除**（7 个 smali + 1 个 java） |
| `C0083S`（试用状态机） | **删除**（1 个 smali + 1 个 java） |
| `C0123y`（使用说明/条款页） | **删除**（5 个 smali + 1 个 java） |
| `MainActivity` 授权 UI 回调（4 个方法） | 方法体清空 |
| `C0112n` 的授权门控 | 恒为 true（不再阻止总开关） |
| `ConfigProvider` 的 `trialTick` / 颜色分享 | 上报 `nop`，分享返回 `null` |
| `C0049F` 的颜色分享 | `nop` |

**影响**：
- 首页不再显示"免费试用中/试用已结束/立即购买/输入授权码"
- 不再联网（服务端地址仍在字符串池，但无调用方）
- 总开关不再受授权状态限制

---

## 3. 关键改动点（供审查）

| 文件 | 改动 | 风险 |
|---|---|---|
| `apktool/smali/dev/duo/workspaceprobe/b.smali` | 3 处 try 块替换 + `r1` 强制 false + 补回 `:try_start_2` | **高**（C0143b 是主 Hook，65k 行） |
| `apktool/smali/dev/duo/hookprobe/MainActivity.smali` | 4 个方法清空 + 4 处 `y` 调用改常量 | 中 |
| `apktool/smali/dev/duo/hookprobe/n.1.smali` | 试用初始化 nop + 授权判定改 true | 中 |
| `apktool/smali/dev/duo/hookprobe/ConfigProvider.smali` | 锁对象改 Object + 上报 nop + 分享 null | 低 |
| `apktool/smali/dev/duo/hookprobe/F.smali` | 分享 `nop` | 低 |

---

## 4. 验证结果

| 项目 | 结果 |
|---|---|
| `apktool b` 编译 | ✅ 通过 |
| `zipalign -c -p 4` 对齐 | ✅ exit 0（`.so` 页对齐正确） |
| `apksigner verify` 签名 | ✅ exit 0（Scheme v3） |
| 悬空类引用 | ✅ **0 处**（全库扫描 `Ldev/duo/*` 与 `Lbtm/*` 描述符） |
| 悬空 try label | ✅ **0 处**（`onPackageLoaded` 内全量校验） |

### dex 变化

| 指标 | 原始 | 精简后 | 差异 |
|---|---|---|---|
| 类定义 | 1437 | 1251 | **-186** |
| 方法引用 | 9894 | 8586 | -1308 |
| 字段引用 | 5707 | 5010 | -697 |
| 原型 | 2715 | 2520 | -195 |
| 类型 | 2117 | 1887 | -230 |
| 字符串 | 11926 | 10664 | -1262 |
| dex 字节 | 1563688 | 1360020 | **-203668**（-13%） |
| APK 体积 | 3591341 | 3431594 | -159747 |

类定义减少 186 = btm 146 + IosNc 10 + C0147f 14 + 授权 16。

---

## 5. 未验证项（设备离线）

分析全程 `adb devices` 为空，以下**未做真机验证**：

- [推断] 通知中心恢复 MIUI 原版后，MIUI 自身是否有残留的 `ios_notification_*` 配置读取（应有，但无消费方）
- [推断] 轻折分屏 `r1` 强制 false 后，铰链传感器注册逻辑不会触发（代码路径已断，但未实测）
- [推断] 授权判定恒 true 后，`_global/master` 完全由用户开关控制（`C0112n` 逻辑已改，未实测）
- 未验证卸载重装后 `_global/trialUsedSec` 等残留键是否影响启动

---

## 6. 建议的真机验证顺序

```powershell
# 1. 卸载原版（签名不同）
adb uninstall dev.duo.hookprobe

# 2. 装精简版
adb install out\MiDuo-rebuild.apk

# 3. 重开 LSPosed 管理器，重新勾选作用域

# 4. 重启作用域进程
adb shell su -c "killall com.miui.home com.android.systemui com.miui.personalassistant"

# 5. 看关键日志
adb logcat -s DuoRail DuoFoldSplit DuoWorkbench DuoRotation MiDuoLicense DuoIcons
```

重点关注：
- `DuoFoldSplit` 应**不再出现** `Native split hook ready` / `Switch on`
- `DuoRotation` 应**完全不再出现**
- `MiDuoLicense` 应**不再出现** `ENTITLEMENT` / `INIT serial=`
- `DuoRail` 里的 `iOS notification center not installed` 应消失
