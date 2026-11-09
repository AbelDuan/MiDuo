# MiDuo 1.0.437 反编译归档

本目录保存 **dev.duo.hookprobe 1.0.437** 的完整反编译产物与类映射表，供后续移植、对比、查阅使用。

## 版本信息

| 项目 | 1.0.415（工程基线） | 1.0.437（本归档） |
|---|---|---|
| versionCode | 415 | 437 |
| versionName | 1.0.415 | 1.0.437 |
| APK 大小 | 3,591,341 B | 3,054,784 B |
| MD5 | — | `091616e5a34eeeed4047c5dc5aed3938` |
| taskcore 混淆 | **保留真实类名** | **全混淆** |
| workspaceprobe 混淆 | 混淆短名（`b.smali` 等） | 同名（可直接对比） |
| hookprobe 混淆 | 混淆短名 + 真实名混合 | 同名（可直接对比） |

安装来源：`/data/app/~~HjhJJ9UJHczeOIzevbogpA==/dev.duo.hookprobe-3xug061FQ-Q7llQfeXF6rQ==/base.apk`（设备 2026-11-08 18:16 更新）

## 目录结构

```
1.0.437/
├── MiDuo-1.0.437.apk           原始 APK
├── smali/dev/duo/              完整 smali（1318 个文件，10.3 MB）
│   ├── fold/                   折叠检测（65 类，两版无变化）
│   ├── hookprobe/              UI + SystemUI hooks（516 类）
│   ├── icons/                  图标组件（38 类，两版无变化）
│   ├── taskcore/               工作台核心（192 类，全混淆）
│   └── workspaceprobe/         工作台/rail/dock 运行时（507 类）
├── java/dev/duo/               jadx Java 源码（133 个文件，3 MB）
├── taskcore-map.json           415 真实类名 → 437 混淆名（44 类）
├── workspaceprobe-map.json     415 类名 → 437 类名（103 个真实类）
└── workbench-diff.json         工作台方法级差异（行数/常量变化）
```

## 关键事实：taskcore 在 437 中被混淆

这是复用本归档时**最容易踩的坑**。

1.0.415 的 `dev/duo/taskcore` 反编译后是真实类名：

```
WorkspaceHost.smali        90 方法
WorkspaceShell.smali      152 方法
WorkspaceSession.smali    100 方法
WorkspaceWm.smali          40 方法
```

1.0.437 的同一批类变成：

```
g.smali  118 方法   ← WorkspaceHost
j.smali  241 方法   ← WorkspaceShell
i.smali  135 方法   ← WorkspaceSession
k.smali   58 方法   ← WorkspaceWm
```

**字段名也被混淆**。例如 `WorkspaceHost$Item` 的字段 `host/layer/motion/rest/shown` 在 437 中变成 `a/b/c/d/e`。

因此**不能按文件名或字段名直接对比 taskcore**，必须查 `taskcore-map.json` 映射表。

### 映射是如何建立的

由于类名、字段名、方法名均被混淆，映射使用**混淆不变的特征**：

1. **框架类型引用集合**：`android.*` / `java.*` / `javax.*` / `com.android.*` 的类名在 R8 混淆后保持不变，一个类引用的 API 集合基本唯一。
2. **字符串常量**：`const-string` 里的日志文本、配置键、URI 等全部保留。
3. **`.super` 父类**：框架父类（如 `Landroid/view/View;`）不变。
4. **方法数近似度**。

对 `taskcore` 的 44 个类，全部匹配置信度 63–100（多数 ≥93，框架类型交集 100%）。对 `workspaceprobe` 的 103 个真实类，全部 >45。

## 混淆映射速查（taskcore 主要类）

| 415 真实类名 | 437 混淆名 | 方法数变化 | 说明 |
|---|---|---|---|
| `WorkspaceHost` | `g` | 90 → 118 | 工作台宿主 |
| `WorkspaceHost$OverlayView` | `g$h` | 26 → 31 | 覆盖层 View |
| `WorkspaceHost$Item` | `g$g` | 1 → 1 | 成员项数据类 |
| `WorkspaceHost$Panel` | `g$i` | 2 → 2 | 面板 |
| `WorkspaceHost$Actions` | `g$f` | 7 → 9 | 动作回调 |
| `WorkspaceShell` | `j` | 152 → 241 | 工作台外壳（改动最大） |
| `WorkspaceSession` | `i` | 100 → 135 | 会话 |
| `WorkspaceWm` | `k` | 40 → 58 | 窗口管理 |
| `SystemGate` | `c` | 8 → 8 | 系统门控 |
| `WorkspaceProtocol` | `h` | 8 → 7 | IPC 协议 |
| `Geometry` | `b` | 4 → 7 | 几何计算 |
| `Tx` | `e` | 4 → 3 | 事务封装 |
| `Frames` | `a` | 6 → 6 | 帧驱动 |

完整表见 `taskcore-map.json`。

## 重新生成

APK 若需从设备重新提取：

```bash
adb shell su -c 'cp /data/app/~~*/dev.duo.hookprobe-*/base.apk /data/local/tmp/m437.apk'
adb pull /data/local/tmp/m437.apk MiDuo-1.0.437.apk
```

反编译：

```powershell
# smali
java -jar tools\apktool.jar d -f -o _work\dec437 versions\1.0.437\MiDuo-1.0.437.apk

# Java 源码
_work\jadx\bin\jadx.bat -d _work\jadx437 --no-res --no-imports versions\1.0.437\MiDuo-1.0.437.apk
```

## 使用建议

- **查 437 的工作台逻辑**：读 `java/dev/duo/taskcore/g.java`（WorkspaceHost）、`j.java`（WorkspaceShell）。Java 比 smali 可读。
- **移植某个功能到 415 工程**：先在 `taskcore-map.json` 找 415 对应类，再对比 `smali/dev/duo/taskcore/<混淆名>.smali` 与 415 同名真实类。
- **对比 rail/dock（`workspaceprobe/b.smali`）**：两版同名，可直接用 `git diff` 或文本对比。
- **注意包名差异**：415 工程已改为 `com.lsposed.miduo`，437 原始是 `dev.duo.hookprobe`。对比时先过滤包名常量。

## 相关文档

- `docs/63-version-1437-workbench-update.md` — 工作台更新详细分析
