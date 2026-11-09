# DuoPort —— 全新移植模块

从 MiDuo 1.0.437 逆向出的**独立新模块**，只保留目标功能，UI 完全自建。

- 工程目录：`versions/1.0.437/duoport/`
- 包名：`com.lsposed.duoport`
- 应用名：DuoPort
- 构建脚本：`build-duoport.ps1`
- 产物：`versions/1.0.437/out/DuoPort.apk`

## 一、功能范围（只保留这些）

| # | 功能 | 状态 |
|---|---|---|
| 1 | 桌面 Duo 布局 | ✅ 生效 |
| 2 | 隐藏内外屏桌面状态栏 | ✅ 生效 |
| 3 | 右上角时间 / 三合一状态 / 通知图标 | ✅ 生效 |
| 4 | 侧边 dock（右侧） | ✅ 生效 |
| 5 | 桌面 4×6 网格 | ✅ 生效 |
| 6 | 锁屏 Duo 布局（大字时间 + 通知） | ✅ 生效 |
| 7 | 搜索按钮 | ⏳ 待接入开关 |
| 8 | 桌面左移（避开右侧 dock） | ⏳ 未实现 |
| 9 | 锁屏手电移到右侧相机上方 | ⏳ 未生效 |

## 二、工程结构

```
duoport/
├── AndroidManifest.xml          精简：1 个 Activity + 2 个 Provider
├── apktool.yml                  含 doNotCompress(so/arsc)
├── smali/
│   ├── dev/duo/port/
│   │   ├── SettingsActivity.smali      全新设置界面
│   │   └── SettingsActivity$a.smali    行点击处理
│   ├── dev/duo/workspaceprobe/         内核：rail / dock / 锁屏（470 类）
│   ├── dev/duo/hookprobe/              内核：SystemUI hooks / 配置（360 类）
│   ├── dev/duo/taskcore/               工作台（保留但无入口）
│   ├── dev/duo/icons/                  图标盒子（保留但无入口）
│   └── io/github/libxposed/            libxposed API
├── lib/arm64-v8a/libduoworkspace.so    native（Rust，硬编码 VA，无法重写）
├── unknown/META-INF/xposed/            libxposed 元数据
└── res/drawable/ic_launcher*.xml       全新图标（三段式：应用区 + 网格 + dock 胶囊）
```

## 三、关键实现

### 配置存取

内核通过 libxposed **remote preferences** 读写，prefs 名 `duo_top`：

```java
getRemotePreferences("duo_top")          // XposedModule 侧
```

App 侧获取：

```java
XposedService svc = L.a(1500L);          // 等待 service，超时 1.5s
o cfg = new o(svc);                      // 配置封装类
SharedPreferences prefs = cfg.a;         // 直接拿到 prefs
prefs.edit().putBoolean("_global/xxx", v).apply();
```

**关键**：`dev.duo.hookprobe.o` 类（47 个混淆 getter/setter）可以绕过——直接操作 `o.a` 这个 `SharedPreferences`，按已知的 `_global/*` 键读写。

### 功能开关对应的配置键

| 开关 | 配置键 | 默认 |
|---|---|---|
| Duo 布局总开关 | `_global/master` | true |
| 隐藏桌面状态栏 | `_global/outerHideTop` | true |
| 显示搜索按钮 | `_global/searchButton` | true |
| 显示通知图标 | `_global/notificationIcons` | true |
| 锁屏 Duo 时钟 | `_global/standbyClock` | true |

### 内核可调参数（native 读取，`debug.duo.*`）

行数/网格：`rows`、`row_px`、`cell_h_px`、`inner_row_px`、`inner_cell_px`、`icon_box_px`

左移：`inner_left_px`、`inner_shift_px`、`q18_side_px`、`q18_right_px`、`official_right`、`outer_official_right`

dock：`inner_dock_hide`、`dock_slot`、`dock_h_dp`、`hotseat_h_px`

内屏：`inner_top_px`、`inner_common_px`、`inner_step1`、`inner_dots_*`

## 四、构建

```powershell
cd miduo-src
.\build-duoport.ps1 -Install
```

脚本 6 步：

1. `apktool b` 编译
2. **dex 魔数修正**（`dex\n041` → `dex\n039`，header_size=112，重算 adler32）——不做会闪退
3. `zipalign -p 4`（`.so` 必须 4K 对齐，`extractNativeLibs=false`）
4. `apksigner` 签名（`tools/miduo-rebuild.jks` / alias `miduo` / pass `miduo123`）
5. `adb push` + `pm install -r -d`
6. `am start` 设置界面

## 五、LSPosed 启用

模块装好后需在 LSPosed 中启用并设置作用域（11 个）：

```
system, com.android.systemui, com.miui.home, com.miui.personalassistant,
com.android.quicksearchbox, com.android.thememanager, com.tencent.mm,
com.ss.android.ugc.aweme, com.android.settings, com.xiaomi.market,
com.miui.miwallpaper
```

也可直接写 DB（`/data/adb/lspd/config/modules_config.db`，表 `modules` / `modules_state` / `scope`，`user_version=101`），改完 `ksud soft-reboot`。

## 六、踩过的坑

| 问题 | 原因 | 解决 |
|---|---|---|
| 装不上 `Failed to extract native libraries res=-2` | `.so` 被压缩 | `apktool.yml` 加 `doNotCompress: - so` |
| 启动 `VerifyError: register v2 has type Float but expected Integer` | smali 把 float 传给 `setMinimumHeight(int)` | 方法签名改 `(I)` |
| 启动 `NoSuchMethodError: a(F)` | 改了方法签名没改调用点 | 同步替换调用指令 |
| 内屏不显示、只有外屏 | 调试时 `cmd device_state state 6` 留下 override | `cmd device_state state reset` + `base-state reset` |
| App 图标/名称还是旧样 | 只改了代码没改资源 | 替换 `res/drawable/ic_launcher*.xml` + manifest label |

## 七、后续工作

1. 设置界面截图确认（设备锁屏时无法截取）
2. **桌面左移**：候选参数 `inner_left_px` / `inner_shift_px` / `q18_side_px`（正值向右、负值异常，需再测）
3. **锁屏手电上移**：已在 `b.smali` 加 `moveTorchAboveCamera()` 方法并在 `addShortcutViews` hook 里调用，需验证时机（可能需改为 post 到 layout 之后）
4. 搜索按钮开关联调
5. 剥离无用代码（taskcore 工作台、icons 图标盒子）
