# MiDuo 源码工程 · 二次开发说明

> 目标 APK：`MiDuo-1.0.415.apk`（包名 `dev.duo.hookprobe`，应用名 MiDuo，versionCode 415）
> 原始文件 SHA-256：`062DB1D5EAE31A253E28FC2ACA6D8183AD4B69DED7C81F3437AAF0F6C37D0659`
> 框架类型：**libxposed（现代 Xposed API）模块**，`minApiVersion=102`、`targetApiVersion=102`、`staticScope=false`
> 本目录是完整的可重建工程：`java/`（可读源码）+ `apktool/`（可编译的 smali/资源工程）+ `native/`（原始 so + 反汇编）+ `docs/`（分析文档）

---

## 1. 目录结构

```
miduo-src/
├─ MiDuo-1.0.415.apk        # 原始样本（一切产物的来源）
├─ build.ps1                # 一键构建 + 签名 + 可选安装
├─ apktool/                 # ★ 可编译工程（apktool 2.11.1 产物，已验证可 b 出包）
│  ├─ AndroidManifest.xml
│  ├─ apktool.yml
│  ├─ smali/                # 1437 个 .smali（152 个顶层类 + 内嵌类）
│  ├─ res/                  # 27 个资源文件（布局/图标/小组件 xml）
│  ├─ assets/               # 折叠动画 shader、赞助图、字体许可
│  ├─ lib/arm64-v8a/        # libduoworkspace.so（原样保留）
│  ├─ unknown/META-INF/xposed/  # ★ libxposed 模块元数据
│  └─ original/             # 原始 Manifest 与签名文件备份
├─ java/                    # ★ 166 个 .java（jadx 1.5.1 反编译，已修 11 处类型推断）
├─ native/
│  ├─ libduoworkspace.so
│  └─ disasm/               # 反汇编/符号/字符串/readelf 全量产物
├─ tools/
│  ├─ apktool.jar           # apktool 2.11.1
│  ├─ libxposed-api-102.aar # 编译期依赖（Maven Central io.github.libxposed:api:102.0.0）
│  └─ miduo-rebuild.jks     # 重建专用签名密钥（alias=miduo, pass=miduo123）
└─ docs/
   ├─ 00-class-name-map.md            # 类名对照表（必读，改 smali 时用原始名）
   ├─ 01-host-app-and-config.md       # 宿主 App + 配置体系
   ├─ 02-launcher-and-workspace-hooks.md  # 桌面/工作台/双屏/折叠动画
   ├─ 03-systemui-notification-and-misc.md # SystemUI/通知中心/音乐封面/搜索框
   ├─ 04-native-libduoworkspace.md   # native 层（init 流程 / 41 个导出函数 / debug.duo.* / 布局库劫持）
   ├─ 05-rebuild-verification.md      # 重建完整性校验（dex 逐项对比）
   ├─ 06-decompile-gaps.md            # 55 处反编译失败点索引
   ├─ 07-java-tree-compile-status.md  # java/ 编译状态与可编译化路径
   ├─ 08-rebuild-impact.md           # ★ 修改重编译的影响面分析
   └─ 09-feature-removal.md          # ★ 功能精简变更与回滚指引
```

**改代码有两条路，各自对应一套工程：**

| 目标 | 用哪套 | 说明 |
|---|---|---|
| 只改资源 / 字符串 / 开关默认值 / 少量逻辑 | `apktool/`（smali） | ★ 推荐。最稳，`build.ps1` 直接出可装包，dex 与原始逐项等价（见 `docs/05-rebuild-verification.md`） |
| 大改逻辑、加类、重构 | `java/` | 166 个文件，其中 100 个可独立编译；全树编译有 456 处错误（根因与对策见 `docs/07-java-tree-compile-status.md`） |

---

## 2. 快速开始

### 2.1 只重建（不改代码）

```powershell
cd miduo-src
.\build.ps1              # 产物：out\MiDuo-rebuild.apk
.\build.ps1 -Install     # 构建 + adb 安装
```

已验证：`apktool b` 可正常出包（3.6 MB），`apksigner` 签名通过（APK Signature Scheme **v3**；因 `minSdkVersion=35`，apksigner 只启用了 v3，不再需要 v1/v2）。

### 2.2 改一个开关默认值（最小改动示例）

1. 在 `java/dev/duo/hookprobe/C0071P.java` 里找到对应键常量（如 `_global/foldAnimation`）。
2. 在 `apktool/smali/dev/duo/hookprobe/P.smali`（原始类名见 `docs/00-class-name-map.md`）里改 `const-string` 或默认值。
3. `.\build.ps1 -Install`。
4. 重启作用域进程让 hook 生效：
   ```powershell
   adb shell su -c "killall com.miui.home com.android.systemui com.miui.personalassistant"
   ```

### 2.3 改 native 层

`apktool/lib/arm64-v8a/libduoworkspace.so` 会被原样打进包。若要改 native 逻辑：

```powershell
# 1. 反汇编参考
native\disasm\disasm-full.txt

# 2. 用 IDA / Ghidra 打开 native\libduoworkspace.so，改完后覆盖
#    apktool\lib\arm64-v8a\libduoworkspace.so

# 3. 重新打包（脚本会自动带上新 so）
.\build.ps1
```

> `libduoworkspace.so` 已 strip，但保留动态符号表（`native/disasm/symbols-dynamic.txt` 共 121 项），所有 `xxx_entry` 导出函数都能直接定位。

---

## 3. 模块架构速览

```
LSPosed 框架
   │
   ├─ dev.duo.hookprobe.MiDuo  (入口，extends XposedModule)
   │     ├─ 本进程            → dev.duo.icons.C0127c      (主题/图标)
   │     ├─ system_server     → C0050G + WorkspaceWm      (WM 协议桥)
   │     │                    → C0117s（折叠动画许可，仅开关打开时）
   │     ├─ com.android.systemui / com.miui.home / com.miui.personalassistant
   │     │                    → dev.duo.workspaceprobe.C0143b（19358 行，主 Hook）
   │     ├─ com.android.quicksearchbox → C0148g（搜索框）
   │     └─ 其它进程          → C0050G（SystemUI 状态栏高度、微信密度、抖音适配）
   │
   └─ native: libduoworkspace.so
         native_init @0x10e90 → 读 /proc/self/cmdline 校验包名 → 装 hook
         Java_dev_duo_workspaceprobe_WorkspaceHome_nativeWriteBuffer @0x30cc0
```

**核心事实（详见 docs）：**
- 桌面进程 `com.miui.home` 里 `onPackageLoaded` 直接 `return`，**几乎不装 Java Hook**；真正的 hook 全压在 `com.android.systemui` 进程。
- 配置唯一真源是 `RemotePreferences("duo_top")`，由 `C0113o`（读写门面）+ `ConfigProvider.call()`（`content://dev.duo.hookprobe.config`，exported）+ `C0056L`（notifyChange 路由）三层打通。
- 折叠开合动画不是 hook，是 root 进程 `dev.duo.fold.Engine`（`app_process` 拉起）+ EGL/GLES30 跑 `assets/fold/duo.frag`。
- 所有坐标硬编码为 2364×1672 / 1168×1712（双屏几何），换机型要同步改 Java 与 shader 两处。

---

## 4. 关键约束（改之前必读）

1. **签名变了就不再是同一个 App**。LSPosed 里登记的模块签名、`StageProvider` 的签名级权限（`dev.duo.hookprobe.permission.ICONS`）、`ConfigProvider` 的 UID 校验都会失配。重建包只能作为「同包名同版本的自用替换」，不能与官方包混装升级。若要保留原签名，需自备原始 keystore（本包未附带）。
2. **`java/` 不是 100% 可编译**。55 处 jadx 失败点保留原样（`Code decompiled incorrectly, please refer to instructions dump`），这些位置对应的真实逻辑以 `apktool/smali/` 为准。
3. **`META-INF/xposed/*` 是模块能被识别的关键**，`apktool.yml` 里已配置 `doNotCompress`（不可压缩存储），改包时不要动这 4 个文件的压缩方式。
4. **`compileSdkVersion=37` / `minSdkVersion=35`**：只能跑在 Android 15+ 的小米折叠屏（目标机型为小米 MIX Fold 系列 HyperOS）。
5. **`debug.duo.master` / `debug.duo.foldanim`** 两个系统属性是逃生阀，可 `setprop` 直接旁路整套功能，调试时优先用它们而不是重打包。
6. **`build.ps1` 是 UTF-8 with BOM**。Windows PowerShell 5.1 会按 ANSI 解析无 BOM 的 `.ps1`，中文注释和提示会变成乱码并触发 `Unexpected token` 解析错误 —— 编辑该脚本时请保留 BOM（用 `pwsh` 7+ 或 VS Code 另存为 UTF-8 with BOM）。

---

## 5. 构建链路依赖

| 依赖 | 本机路径 | 说明 |
|---|---|---|
| JDK 17 | `C:\Program Files\Microsoft\jdk-17.0.20.101-hotspot` | apktool / apksigner 都需要 |
| apktool 2.11.1 | `tools\apktool.jar` | 已随包附带 |
| apksigner | `C:\Android\sdk\build-tools\36.0.0\apksigner.bat` | 脚本自动探测 `ANDROID_HOME` |
| android.jar | `C:\Android\sdk\platforms\android-37\android.jar` | 仅 `java/` 编译链路需要 |
| libxposed api 102 | `tools\libxposed-api-102.aar`（内含 `classes.jar`） | 仅 `java/` 编译链路需要 |

`build.ps1` 支持用环境变量覆盖：`JAVA_HOME` / `APKTOOL_JAR` / `APKSIGNER` / `KEYSTORE` / `KEY_ALIAS` / `KEY_PASS`。

---

## 6. 完整性自检

```powershell
# 一键自检（文件计数 + 关键文件 + dex 等价性）
python tools\check.py

# 原始样本校验
(Get-FileHash MiDuo-1.0.415.apk -Algorithm SHA256).Hash
# 期望 062DB1D5EAE31A253E28FC2ACA6D8183AD4B69DED7C81F3437AAF0F6C37D0659

# 反编译产物完整性
(Get-ChildItem apktool\smali -Recurse -Filter *.smali).Count   # 1437
(Get-ChildItem java -Recurse -Filter *.java).Count             # 166

# 重建包结构比对（应只差签名文件与 drawable 目录名）
.\build.ps1
```

自检结果（本机实测）：

- `java` 166 / `smali` 1437 / `res` 27 / `assets` 10 / `docs` 7
- 4 个 `META-INF/xposed/*` 元数据齐全
- 重建包 dex：`type/proto/field/method/class` 与原始**逐项相等**（仅 `string_ids` 少 2 条，属字符串池重排）

---

## 7. 未覆盖 / 已知缺口

- `java/` 里 55 处 `Code decompiled incorrectly`（分布见 `docs/00-class-name-map.md` 同目录分析文档），最集中在 `C0143b.java`（12 处）。
- 未提供原始签名 keystore，重建包签名自签。
- native 层未做符号级还原（无 `.symtab`，仅 `.dynsym`），函数语义靠字符串与交叉引用推断。
- `libxposed-api` 的 `api-102.0.0.aar` 来自 Maven Central（`io.github.libxposed:api:102.0.0`），与 APK 内 `io.github.libxposed.service` 类不完全对应：APK 内嵌的是 **service 侧实现**（10 个类），API 侧（`XposedModule`/`XposedInterface`）由框架运行时提供，编译时用 aar 里的 stub 即可。
