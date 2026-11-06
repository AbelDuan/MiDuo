# 08 · 修改重编译的影响面分析

> 结论先行：**走 `apktool/`（smali）路线，只要做对 zipalign，功能层面零损失**；
> 真正的风险不在"重编译会不会坏"，而在**签名变更**、**授权绑定**、**版本白名单**三件事。

---

## 1. 影响分级总览

| 级别 | 影响项 | 触发条件 | 后果 | 可否绕过 |
|---|---|---|---|---|
| **P0 致命** | native 库未页对齐 | 打包后不做 `zipalign -p 4` | `System.loadLibrary("duoworkspace")` 失败，**全部 native 功能静默失效** | 已修复进 `build.ps1` |
| **P0 致命** | 签名变更 | 用非原始 keystore 重签 | 覆盖安装失败；LSPosed 登记失配 | 先卸载原版 / 自备原签名 |
| **P1 高** | 授权与试用 | 改 `C0107i` 公钥 / 改包名 / 改设备指纹算法 | 已购授权失效、试用计时重置或异常 | 不改这三处即可 |
| **P2 中** | 版本白名单 | 换机型或改系统版本 | 折叠引擎拒绝启动、诊断页报红 | 改 `C0120v` 白名单 |
| **P3 低** | 协议 buildId | 只改一侧的 `C0110l.f1644b` | 工作台无法建立会话 | 两侧同步改 |
| **P4 无** | dex 字符串池重排 | 任何重编译 | 无（`-2` 条字符串，见 §6） | 无需处理 |

---

## 2. P0-1：native 库对齐（最容易踩、也最隐蔽）

### 现象
APK 的 `AndroidManifest.xml` 声明 `android:extractNativeLibs="false"`（`apktool-out/AndroidManifest.xml:10`）。
这意味着系统**直接从 APK 里 mmap 加载 `.so`**，不再解压到 `/data/app/lib/`。
此时 `.so` 在 zip 内必须按页对齐（4K 或 16K），否则 mmap 失败。

### 实测证据

```
zipalign -c -p -v 4 MiDuo-1.0.415.apk     → exit 0（原始包对齐正确）
zipalign -c -p -v 4 apktool 裸出包        → exit 1
    3341 classes.dex (BAD - 1)
 3358287 lib/arm64-v8a/libduoworkspace.so (BAD - 3663)   ← 偏移 3663，非 4096 倍数
```

修复后：

```
zipalign -f -p 4 → zipalign -c -p -v 4
    3344 classes.dex (OK)
 3358720 lib/arm64-v8a/libduoworkspace.so (OK)           ← 4096 的整数倍
```

### 为什么是"静默失效"
`C0143b.java:8647-8649` 里 `System.loadLibrary("duoworkspace")` 包在 try/catch 中，
失败只打日志。而 native 层承载的是：

- 桌面网格/图标/Dock/内屏几何（41 个 `*_entry` hook 点）
- `launcher4x5.db ↔ launcher4x6.db` 布局库劫持
- `WorkspaceHome.nativeWriteBuffer`（工作台帧上屏）
- `duo_screen_switch` 双屏切换保护

**全废，但 App 不会崩，只会"看着像没生效"。**

### 已做的修复
`build.ps1` 现在是 5 步，第 3 步强制 zipalign 并**校验**：

```powershell
& $ZipAlign -f -p 4 $Unsigned $Aligned
& $ZipAlign -c -p 4 $Aligned      # 校验失败直接 throw
```

`Find-ZipAlign` 会自动从 `ANDROID_HOME` / `C:\Android\sdk` 探测 `zipalign.exe`。

---

## 3. P0-2：签名变更的连锁反应

### 3.1 直接后果

| 场景 | 结果 |
|---|---|
| 手机上装着官方版，直接 `adb install -r` 重建包 | **失败**（`INSTALL_FAILED_UPDATE_INCOMPATIBLE`） |
| 先卸载官方版再装重建包 | 成功，但**所有配置与授权状态丢失** |
| 之前没装过 | 成功 |

### 3.2 会失配的四处签名依赖

| 位置 | 机制 | 重签后 |
|---|---|---|
| `dev.duo.hookprobe.permission.ICONS` | `protectionLevel="signature"`，自己定义自己用（`C0131g.java:20`、`C0126b.java:51`） | **仍然自洽**（同一包内全量重签，定义方与使用方都是新签名） |
| `StageProvider` | `exported=false` + `grantUriPermissions=true` + 运行时校验调用方 uid ∈ {6101, self}（`StageProvider.java:42`） | **不受影响**（校验 uid 而非签名） |
| `ConfigProvider` | 校验调用方 uid 是否为 SystemUI / uid 1000（`ConfigProvider.java:192`、`:555`、`:585`） | **不受影响** |
| LSPosed 模块登记 | `modules_config.db` 的 `apk_path` 字段记录安装路径（`C0116r.java:330`） | 路径变了 → 诊断页报「LSPosed 还没登记刚装的新版本」；重开 LSPosed 管理器即可 |

> 结论：**签名变更只影响"能不能覆盖装"和"LSPosed 要不要重新登记"，不影响模块内部逻辑。**

### 3.3 原始签名信息（供比对）
```
DN:            CN=Duo diagnostic probe
SHA-256:       ca98864da3fff0770a3bef683ff479d76ca0609ddf3f8f50ae665fe2d3c0d9be
SHA-1:         4f77c5cab0189b4e61631687effb4e86ef733a7a
```

---

## 4. P1：授权与试用体系（改这些必坏）

### 4.1 授权链

```
ro.serialno
   ↓ SHA-256("miduo-device-v1:" + serialno)          C0107i.java:52
debug.duo.device 属性（64 位 hex）
   ↓
_global/licenseToken = base64url(payload) + "." + base64url(ECDSA-SHA256 签名)
   ↓ 用内置 EC 公钥验签                              C0107i.java:69-73
payload 需含 "typ":"license" 且 "dev":"<设备ID>"      C0107i.java:78-80
```

**内置公钥**（`C0107i.java:41`，`MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE...`）是硬编码的。
只要不动它、不动设备 ID 算法，**重编译不影响已购授权**（因为公钥和算法都在 dex 里，自洽）。

### 4.2 试用

| 参数 | 值 | 位置 |
|---|---|---|
| 免费试用时长 | `1800000` ms = **30 分钟** | `C0114p.java:191` |
| 已用时长计数键 | `_global/trialUsedSec` | `C0107i.java:32` |
| 判定"还能用" | `min < 1800`（秒） | `MainActivity.java:3751` |
| 剩余分钟 | `(1859 - min) / 60` | `MainActivity.java:3752` |

试用状态机在 `C0083S.java`（`m1384a` 可否用 / `m1389b` 设置总开关 / `m1386a` 接受服务端下发的已用时长）。

### 4.3 服务端

| 项 | 值 |
|---|---|
| 地址 | `https://117.72.175.180:18790`（`C0107i.java:20`、`C0043B.java:245`） |
| 证书固定 | 内置 `miduo-billing` X.509 证书（`C0043B.java:115`） |
| 接口 | `/v1/device/hello`、`/v1/orders`、`/v1/orders/{id}`、`/v1/license/restore`、`/v1/trial/report`、`/v1/tones` |

**重编译不影响**（地址与证书都在 dex 里）。但如果你**改了包名**，服务端按 `device_id` 记账仍能识别；
如果你**改了设备指纹算法**，服务端认不出这台设备，授权会"看起来失效"。

### 4.4 会破坏授权的三种改动

1. 改 `C0107i.f1633h`（公钥）→ 所有已签发的 token 验签失败
2. 改 `C0107i.m1704a`（设备指纹算法）→ 服务端对不上设备
3. 改 `C0107i.f1634i`（payload 正则）→ 解析失败

---

## 5. P2：版本白名单（换机型/换系统才触发）

`C0120v.m2004a(Context)`（`C0120v.java:14-27`）是**唯一的机型门**：

```java
Build.VERSION.INCREMENTAL ∈ {OS4.0.22.0.XPNCNXM, OS4.0.21.0.XPNCNXM, OS4.0.26.0.XPNCNXM}
 且 getPackageInfo("com.miui.home",0).getLongVersionCode() == 801026325
```

调用点三处：

| 调用点 | 影响 |
|---|---|
| `MainActivity.java:1969` | 首页诊断栏显示红/绿 |
| `C0116r.java:101` | 诊断清单第 1 项 |
| `C0115q.java:119` | **折叠引擎启动前检查 —— 不通过就不拉起 `MiDuoFoldEngine`** |

> 也就是说：**换机型/换系统版本 → 开合动画直接不可用**，其余功能不受影响（主 hook 不检查这个门）。

另外 `C0118t.m1949b` 会从 APK 内读 `assets/fold/curve.properties`（`C0118t.java:285`），
`Engine.java:474` 也从同一路径读 —— 这两个进程各读一次，改参数要重启两个进程。

---

## 6. P3/P4：协议与产物差异（基本无感）

### 6.1 协议 buildId 双向匹配

`WorkspaceProtocol.buildId = "0.403-fix1-1-ef7dfe872f21"`（`C0110l.java:11`），
客户端（`C0143b`）与 system_server（`WorkspaceWm`）**必须相等**，否则：

```
"server build X != client Y（系统端尚未加载本版本，暂不能进入工作台）"   WorkspaceWm.java:964
```

**单次重打包是自洽的**（两侧读同一份常量）。只有"只改一侧"才会断。

同理 `WorkspaceProtocol.magic()` = `hash(modulePackage) ^ 1950482432`（`WorkspaceProtocol.java:59`），
**改包名会让 magic 变化** —— 但同样，单次重打包自洽。

### 6.2 实测产物差异（逐项核对过）

| 项目 | 原始 | 重建 | 结论 |
|---|---|---|---|
| dex `class_defs` | 1437 | 1437 | ✅ 一致 |
| dex `method_ids` | 9894 | 9894 | ✅ 一致 |
| dex `field_ids` | 5707 | 5707 | ✅ 一致 |
| dex `proto_ids` | 2715 | 2715 | ✅ 一致 |
| dex `type_ids` | 2117 | 2117 | ✅ 一致 |
| dex `string_ids` | 11926 | 11924 | ⚠️ -2（字符串池重排，无害） |
| 资源条目 | 38 | 38 | ✅ **ID 映射逐条一致** |
| AndroidManifest 语义 | — | — | ✅ 规范化后 **0 行差异** |
| `META-INF/xposed/*` 四件 | — | — | ✅ **字节级一致** |
| `assets/fold/*` 三件 | — | — | ✅ **字节级一致** |
| `libduoworkspace.so` | — | — | ✅ **字节级一致** |
| 关键字符串（28 项抽查） | — | — | ✅ 全部保留 |

> 关键字符串抽查包含：包名、权限名、provider authority、`duo_top`、`_global/*` 键、`debug.duo.*` 属性、
> `MiDuoFoldEngine`、服务端地址、`miduo-device-v1:`、`launcher4x5/6.db`、`assets/fold/curve.properties` 等。

---

## 7. 如果走 `java/` 路线会怎样

`java/` 全树编译有 **456 处错误 / 66 个文件**（详见 `07-java-tree-compile-status.md`）。
即使把这些错误全修好，还会遇到：

| 问题 | 说明 |
|---|---|
| `--no-inline-methods` 拆散了内部类 | `b$R` / `C0143b$R` 变成顶层文件，跨文件引用断链 |
| 55 处 `Code decompiled incorrectly` | 这些方法在 Java 树里**没有可用代码** |
| `extends Record` 语法 | `HotReloadResult` 这类 record 类 javac 不接受 |
| `$r8$lambda$...` 合成方法 | 反糖化产物在 javac 下非法 |

**结论：`java/` 只适合"读懂"，不适合"编译"。** 要改逻辑请改 `apktool/smali/`。

---

## 8. 各功能受影响矩阵

| 功能 | 重编译影响 | 说明 |
|---|---|---|
| 桌面布局（4×6 网格、图标、Dock） | ⚠️ **取决于 zipalign** | 对齐正确则无影响；否则全废 |
| 工作台（4 槽位 + 侧栏 205px） | ⚠️ 同上 + 协议 buildId | 同上 |
| 折叠开合动画 | ⚠️ 版本门 + 两个进程各读一次配置 | 换机型直接不可用 |
| iOS 通知中心 | ✅ 无影响 | 纯 Java 视图层（`btm/.../newnotificationcenter`） |
| 音乐封面/壁纸背景层 | ✅ 无影响 | 纯 Java（`btm/.../hypermusiccover`） |
| 搜索框改造 | ✅ 无影响 | `C0148g` |
| 小组件（电池/日历/天气/相册） | ✅ 无影响 | 纯 Java + 资源，资源 ID 一致 |
| 图标替换（主题管理器） | ✅ 无影响 | 校验 uid/SELinux 而非签名 |
| 配置读写（`ConfigProvider`） | ✅ 无影响 | 校验 uid 而非签名 |
| **授权/购买状态** | ⚠️ 不改公钥与设备指纹则保留 | 见 §4 |
| **试用剩余时间** | ⚠️ 卸载重装会清零 | `_global/trialUsedSec` 在 RemotePreferences 里 |
| 诊断页 | ⚠️ LSPosed 登记项会报红 | 重开 LSPosed 管理器后恢复 |
| Root 工具（`RootTaskRecompute` 等） | ✅ 无影响 | 以 `app_process` + CLASSPATH 启动，不依赖签名 |

---

## 9. 安全改动清单（按顺序）

```powershell
# 1. 备份手机上现有配置（重要！卸载重装会清空 duo_top）
adb shell su -c "cp -r /data/user_de/0/com.miui.home/files/miduo-layout /sdcard/miduo-layout.bak"

# 2. 构建（已内置 zipalign + 校验）
cd miduo-src
.\build.ps1

# 3. 确认对齐与签名
zipalign -c -p 4 out\MiDuo-rebuild.apk          # 必须 exit 0
apksigner verify --verbose out\MiDuo-rebuild.apk # 必须 Verifies

# 4. 卸载原版（签名不同，必须）
adb uninstall dev.duo.hookprobe

# 5. 安装
adb install out\MiDuo-rebuild.apk

# 6. 重开 LSPosed 管理器（让 apk_path 登记刷新）
# 7. 在 LSPosed 里重新勾选作用域
# 8. 重启作用域进程
adb shell su -c "killall com.miui.home com.android.systemui com.miui.personalassistant"
```

---

## 10. 未验证项（受限于设备离线）

分析期间 `adb devices` 为空，以下**未做真机验证**，仅基于静态证据推断：

- [推断] native 库对齐失败时的具体日志文案（应为 `UnsatisfiedLinkError`，但 `C0143b` 会 catch 后静默）
- [推断] 重装后 `_global/trialUsedSec` 是否真的归零（取决于 RemotePreferences 落在 LSPosed 的哪个目录）
- [推断] 换机型后主 hook 是否真的不受 `C0120v` 影响（三处调用点已确认，但未实测主 hook 路径）
- 未验证 16K 页设备（Android 15+ 部分机型）上是否需要 `zipalign -P 16`；当前脚本用 `-p 4`，
  4K 对齐在 16K 页设备上**通常也能加载**（内核按 4K 粒度映射），但不是官方保证
