# 55 · 四类功能移除完成 + 装机验证通过

> 时间：2026-11-07
> 任务：移除授权/iOS通知中心/轻折分屏/旋转按钮四类功能及界面，检查代码并打包正式版

## 最终结果

| 项 | 值 |
|---|---|
| **APK** | `out/MiDuo-rebuild.apk` — **3,431,594 字节** |
| 签名 | `CN=MiDuo Rebuild`，SHA-256 `0d86b36d...` |
| zipalign | **OK**（4K 页对齐） |
| dex | `dex\n039\x00`，header_size 112，adler32 **OK**，1251 个类 |
| 包名 | `com.lsposed.miduo` |
| **装机验证** | **通过 — 无闪退，4 个 tab 全部正常** |

## 装机验证结果

设备：`192.168.31.51:43095`（无线 ADB）

| 页面 | 状态 |
|---|---|
| 首页 | ✅ MiDuo 运行中、桌面 4×6、外屏比例 9:16、侧栏跟随、顶部避让 40px、外屏缩放 90%、侧栏颜色（跟随系统）、诊断信息「运行正常」 |
| App | ✅ 搜索框、全部 App 开启 Duo、新应用默认开 Duo、外屏非 Duo 顶栏、顶部留白 40px、内屏原生顶栏、App 列表（含图标与开关） |
| 小功能 | ✅ 小部件、外屏 App 内侧栏自定义、取色按钮、颜色配置、工作台、帐篷钟面、开合动画 |
| UI | ✅ 时钟线条、电量百分比位置、5G 新样式、搜索按钮、时钟模块位置 |

**底部导航栏**：从 5 个 tab（首页/App/授权/小功能/UI）减为 **4 个**（首页/App/小功能/UI）。

## 移除明细

### 1. 授权 tab 与按钮

| 改动 | 位置 |
|---|---|
| tab 数组从 5 元素减为 4 元素 | `T.smali` L173（`K:[I`）、L581（标签数组）、L592（图标索引数组） |
| `K:[I` 值重排为 `{0,1,2,3}` | `T.smali` L163-171 |
| 授权 tab 标签清空 | `T.smali` L579 `const-string v5, "授权"` → `""` |
| 创作者 tab 从 `r[]` 移除 | `MainActivity.smali` onCreate tab 分配 |
| `h()`/`g()` tab 索引 3→2、4→3 | `MainActivity.smali` |
| 授权 tab setId 块移除 | `MainActivity.smali` `.line 11` |
| 右上角「授权」按钮文字清空 | `MainActivity.smali` L8288 |
| 「试用已结束」清空 | `MainActivity.smali` L8281 |
| 「MiDuo 授权码」清空 | `MainActivity.smali` L8335 |
| 「输入授权码」清空 | `MainActivity.smali` L10879 |
| `f()` tab 内容折叠 | `MainActivity.smali` L14112 |
| `K()` 授权页改为安全空壳 | `MainActivity.smali` L2492（删 1099 行） |

### 2. 四类功能 UI 区块折叠

均采用「保留字段初始化 + `setVisibility(8)`」方式，避免 NPE：

| 方法 | 功能 | 原行数 |
|---|---|---|
| `q()` | 轻折分屏 + 轻折灵敏度 | 328 |
| `M()` | 旋转建议按钮 | 143 |
| `x()` | iOS 通知中心卡片 | 157 |
| `C()` | 通知图标开关 | 143 |

### 3. Java 源码层

| 文件 | 改动 |
|---|---|
| `dev/duo/fold/` | 整包删除（12 文件） |
| `dev/duo/hookprobe/q_lower_.java` | 删除（fold 引擎启动器） |
| `ConfigProvider.java` | 移除 `iosNc`/`rotationSuggest`/`foldSplit` 分支 |
| `MiDuo.java` | 注释 fold 引擎注册 |
| `r.java` | 移除 `fold.i` 依赖、Preflight 调用 |
| `b.java` | 12 个 fold 方法改空实现 |
| `t_lower_.java` | 7 个 foldanim Binder 方法改空实现 |

## 踩过的坑（关键教训）

### 坑 1：dex magic 未修正导致「装好就闪退」

**现象**：
```
java.lang.ClassNotFoundException: dev.duo.icons.StageProvider
Suppressed: Header size is 112 but 120 was expected
```

**根因**：apktool 2.11.1 输出 `dex\n041`（header_size=120），但 Android 运行时只认 `dex\n039`（header_size=112）。dex 整体加载失败 → 所有类 ClassNotFoundException → 启动即闪退。

**修复**：在 `build.ps1` 的 `[2/5] apktool b` 之后、`[3/5] zipalign` 之前增加 `[2.5/5]` 步骤：

```python
d[4:8] = b"039\x00"
struct.pack_into("<I", d, 36, 112)          # header_size
struct.pack_into("<I", d, 8, 0)             # clear checksum
struct.pack_into("<I", d, 8, zlib.adler32(bytes(d[12:])) & 0xffffffff)
```

**这个步骤之前一直缺失**——早期手工构建时做过，但 `build.ps1` 没包含。

### 坑 2：stub 整个 UI 方法导致字段未初始化 → NPE

**现象**：
```
NullPointerException: Attempt to invoke virtual method 'void android.widget.Switch.setChecked(boolean)' on a null object reference
  at MainActivity.T(SourceFile:23)
```

**根因**：`T()` 刷新 8 个 Switch 字段（`Q`/`V`/`R`/`W`/`X`/`N`/`Y`/`Z`），这些字段由 `C()`/`M()`/`q()`/`E()`/`G()`/`Q()`/`W()`/`w()` 创建。我把其中几个方法整个 stub 成空实现 → 字段为 null → `T()` NPE。

**字段与方法映射**（原版）：

| Switch 字段 | 创建方法 | 功能 |
|---|---|---|
| `W` | `C()` | 通知图标 |
| `R` | `E()` | — |
| `Y` | `G()` | — |
| `Q` | `M()` | **旋转建议** |
| `X` | `Q()` | — |
| `N` | `W()` | — |
| `Z` | `q()` | **轻折分屏** |
| `V` | `w()` | — |

**正确做法**：保留方法完整实现（字段正常初始化），只在 `return-object` 前插入 `setVisibility(8)` 折叠显示。

### 坑 3：`x()` 里的 `Q0` 字段丢失

**现象**：
```
NullPointerException: Attempt to invoke virtual method 'void android.view.ViewGroup.removeAllViews()' on a null object reference
  at MainActivity.K(SourceFile:1)
```

**根因**：`ebbacfb` 提交把 `x()` 改成「返回隐藏 LinearLayout」时，**删掉了 `iput-object v1, p0, ...->Q0`**。而 `K()` 依赖 `Q0` 容器。

**修复**：在 `x()` 中补回 `iput-object v0, p0, Ldev/duo/hookprobe/MainActivity;->Q0:Landroid/widget/LinearLayout;`。

### 坑 4：批量清空字符串会误伤主页数值

**现象**：清空所有含「授权/试用」的字符串后，主页的 `126px`、`90%`、`运行中对` 等数值全部消失。

**根因**：部分格式字符串（如 `%d`、`%s` 组合）同时用于多处，被误伤。

**修复**：回退到 `c8802d9` 基线，改用**精确白名单**——只清空明确的 UI 标签，不动格式字符串。

### 坑 5：tab 数组三处必须同步

底部 tab 栏由 `T.smali` 的三个平行数组驱动：

| 位置 | 数组 | 元素数 |
|---|---|---|
| L173 | `K:[I` tab 索引 | 5 → 4（值改为 `{0,1,2,3}`） |
| L581 | 标签字符串数组 | 5 → 4 |
| L592 | 图标索引数组 | 5 → 4 |

**只改其中一个会数组越界**：
```
ArrayIndexOutOfBoundsException: length=4; index=4
```

### 坑 6：`build.ps1` 需要 UTF-8 BOM

PowerShell 5.1 默认按 ANSI 读取无 BOM 的 UTF-8 文件，中文注释变乱码，脚本解析失败。加 BOM 解决。

### 坑 7：`_work/` 目录里的 Python 脚本会遮蔽标准库

`enum.py`、`struct.py` 覆盖标准库，导致 `import re` 等全部失败。删掉即可。

## 源码状态

| 树 | 状态 |
|---|---|
| `apktool/`（smali，1251 类） | **100% 可构建，装机验证通过** |
| `java-complete/`（108 文件） | 约 103/108 可编译；剩余错误集中在 `b.java`（69）、`n.java`（16）、`s.java`（8）、`u_lower_.java`（6）、`g.java`（1），均为 jadx 反编译失真 |

## 已知遗留（无功能影响）

| 项 | 说明 |
|---|---|
| dex 中仍有 `授权`×17、`轻折`×9 等字符串 | 来自其他类（日志、错误提示），UI 已不显示 |
| `dev/duo/fold/*` smali 类 | 入口已切断，不会被加载 |
| `_global/rotationSuggest` 等配置键 | ConfigProvider 分支已删，不会读写 |
| 右上角空圆角占位 | 授权按钮的文字已清空，容器仍在 |

## 构建方法

```powershell
cd miduo-src
powershell -NoProfile -ExecutionPolicy Bypass -File .\build.ps1
```

六步流程：
1. 清理旧产物
2. `apktool b` 打包
3. **dex magic 041 → 039 修正**（关键，缺了会闪退）
4. zipalign（4K 页对齐）
5. apksigner 签名
6. 输出 `out/MiDuo-rebuild.apk`

## 装机方法

```powershell
adb push out\MiDuo-rebuild.apk /data/local/tmp/
adb shell su -c "pm install -r -d /data/local/tmp/MiDuo-rebuild.apk"
```

MIUI 会拦截 `adb install`，必须走 `su -c pm install`。
