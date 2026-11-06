# 54 · 四类功能彻底移除 + 正式版打包

> 时间：2026-11-07
> 任务：保障源码准确性可用性，移除授权/iOS通知中心/轻折分屏/旋转按钮四类功能及界面，检查代码并打包正式版

## 交付物

| 文件 | 大小 | 说明 |
|---|---|---|
| `out/MiDuo-rebuild.apk` | **3,415,210 字节** | 正式版，已签名，可直接装机 |
| 签名 | `CN=MiDuo Rebuild` | SHA-256 `0d86b36d...` |
| 包名 | `com.lsposed.miduo` | 与原版 `dev.duo.hookprobe` 共存 |
| 版本 | `1.0.415` | 与原版一致 |
| `classes.dex` | 1,348,744 字节 | 1251 个类 |

## 移除验证（dex 字符串层面，全部确认）

| 功能 | 验证字符串 | 结果 |
|---|---|---|
| 授权页 | `授权码` | **已移除** |
| 免费试用 | `免费试用中` | **已移除** |
| 试用结束 | `试用已结束` | **已移除** |
| iOS 通知中心 | `iOS 风格` | **已移除** |
| 轻折分屏 | `轻折分屏` | **已移除** |
| 轻折灵敏度 | `轻折灵敏度` | **已移除** |
| 旋转建议按钮 | `旋转建议按钮` | **已移除** |
| 通知图标 | `通知图标` | **已移除** |
| fold 分屏日志 | `DuoFoldSplit` | **已移除** |

## 移除详情

### 1. Java 源码层（`java-complete/`：121 → 108 文件）

**删除的 13 个文件**：

```
dev/duo/fold/          整个包（12 个文件）
  a.java, b.java, c.java, d.java, e.java, Engine.java,
  f.java, g.java, h.java, i.java, Preflight.java, Surfaces.java
dev/duo/hookprobe/q_lower_.java   （fold 引擎启动器）
```

**修改的文件**：

| 文件 | 改动 |
|---|---|
| `ConfigProvider.java` | 移除 `iosNc`、`rotationSuggest`、`foldSplit` 三个分支 + 白名单键 |
| `MiDuo.java` | 注释掉 `q.a(...)`（fold 引擎注册） |
| `r.java` | 移除 `import dev.duo.fold.i`、Preflight 调用、壁纸比对改用占位 |
| `b.java` | 12 个 fold 方法改为空实现（`f2`/`F`/`c(ClassLoader)`/`a(ClassLoader)`/`p(int)`/`a(int,bool,bool)`/`a(Method×3,Chain)`/`a(RTI,Bundle)` 等） |
| `t_lower_.java` | 7 个 foldanim Binder 方法改为空实现 |

### 2. smali 层（`apktool/`：1251 个 smali）

**修改**：

| 文件 | 改动 |
|---|---|
| `MiDuo.smali` | 注释 `q;->a(...)` 注册（fold 引擎不再加载） |
| `ConfigProvider.smali` | `foldStart` 分支改为返回 `ok=false` 的 Bundle |
| `b.smali` | 8 个 fold 方法 stub 成空实现 |
| `MainActivity.smali` | 6 个 UI 方法 stub |

**UI 方法 stub 明细**：

| 方法 | 原行数 | 功能 | 处理 |
|---|---|---|---|
| `K()V` | 1,099 | 授权/购买页面（26 个 addView） | 清空容器 |
| `R()V` | 658 | 试用状态刷新（17 个调用点） | 空实现 |
| `C()` | 143 | 通知图标开关 | 返回空 View |
| `x()` | 157 | iOS 通知中心卡片 | 返回空 View |
| `q()` | 328 | 轻折分屏 + 灵敏度 | 返回空 View |
| `M()` | 143 | 旋转建议按钮 | 返回空 View |
| `a(MainActivity$h;)V` | 241 | tab 标签渲染（授权/试用文字） | 空实现 |

**合计移除 smali 行数**：约 **2,769 行**

## 技术要点

### 为什么用 stub 而不是删除

`K()`/`M()`/`q()` 等方法的返回值被赋给字段（如 `l0`、`m0`、`R0`），这些字段在滚动/布局逻辑中被多处读取。直接删除会导致 NPE。

**stub 策略**：保留方法签名，返回一个空的 `View` 占位对象，让 UI 不显示但字段非空。

### dex 校验

```
magic: dex\n041
file_size: 1348744 (与 actual 一致)
header_size: 112
adler32: 0x3af275be (stored == computed)  OK
class_defs_size: 1251
```

### zipalign 校验

```
Verification succesful   （4K 页对齐，extractNativeLibs=false 必需）
```

### 已知遗留

| 项 | 状态 | 说明 |
|---|---|---|
| `foldanim1` Binder 接口名 | 3 处字符串残留 | 仅接口标识符，无功能代码 |
| `dev/duo/fold/*` smali 类文件 | 保留 | 入口已切断，不会被加载 |
| `_global/rotationSuggest` 等配置键 | 保留 | ConfigProvider 分支已删，不会读写 |

## 源码准确性状态

### `java-complete/`（108 文件）

- **可编译文件**：约 103 / 108
- **剩余错误**：分布在 `b.java`（69）、`n.java`（16）、`s.java`（8）、`u_lower_.java`（6）、`g.java`（1）
- **性质**：均为 `cannot find symbol`（jadx 反编译失真，如变量名丢失、方法签名错位）

### `apktool/`（smali，1251 类）

- **100% 可构建**：`build.ps1` 五步流程稳定
- **产物**：`out/MiDuo-rebuild.apk` 已验证签名、zipalign、dex 完整性

## 构建方法

```powershell
cd miduo-src
powershell -NoProfile -ExecutionPolicy Bypass -File .\build.ps1
```

五步流程：
1. 清理旧产物
2. `apktool b` 打包 smali → dex
3. zipalign（4K 页对齐）
4. apksigner 签名
5. 输出到 `out/MiDuo-rebuild.apk`

## 装机方法

设备连接后：

```powershell
adb push out\MiDuo-rebuild.apk /data/local/tmp/
adb shell su -c "pm install -r -d /data/local/tmp/MiDuo-rebuild.apk"
```

**注意**：MIUI 会拦截 `adb install`（`INSTALL_FAILED_USER_RESTRICTED`），必须走 `su -c pm install`。

## 未完成

| 项 | 原因 |
|---|---|
| **装机验证** | `adb devices` 为空，设备未连接 |
| `java-complete` 剩余 100 个错误 | jadx 失真，需逐条对照 smali 重建 |
