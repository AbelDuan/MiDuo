# MiDuo 1.0.437 工作台更新分析

对比 **1.0.415（工程基线）** 与 **1.0.437（设备当前版本）**，定位工作台（Workbench）相关改动。

- 归档位置：`versions/1.0.437/`（smali + jadx Java + 映射表 + 原始 APK）
- 归档说明：`versions/1.0.437/README.md`
- **可读可编译工程**：`versions/1.0.437/rebuild/` —— taskcore 已还原真实类名，可直接改代码编译
- 还原说明：`versions/1.0.437/rebuild/README.md`

## 一、版本与混淆差异

| 项目 | 1.0.415 | 1.0.437 |
|---|---|---|
| versionCode | 415 | 437 |
| APK 大小 | 3,591,341 B | 3,054,784 B |
| `dev/duo/taskcore` | **真实类名**（`WorkspaceHost` 等） | **全混淆**（`g` / `j` / `i` / `k`） |
| `dev/duo/workspaceprobe` | 混淆短名（`b.smali` 等） | 与 415 同名，可直接对比 |
| `dev/duo/hookprobe` | 混淆短名 + 真实名混合 | 与 415 同名，可直接对比 |
| `dev/duo/fold` | 65 类 | 65 类（**无变化**） |
| `dev/duo/icons` | 38 类 | 38 类（**无变化**） |

**只有 taskcore 重新混淆**。这是本次对比的主要障碍，也是 437 功能增多的副作用（R8 重新分配短名）。

类数量变化：

| 包 | 415 | 437 | 增量 |
|---|---|---|---|
| hookprobe | 481 | 516 | +35 |
| taskcore | 178 | 192 | +14 |
| workspaceprobe | 453 | 507 | +54 |
| fold / icons | 65 / 38 | 65 / 38 | 0 |

## 二、taskcore（工作台核心）改动量化

用「框架 API 引用 + 字符串常量 + `.super` + 方法数」四维指纹完成 44 个类的映射，置信度 63–100（主要类 ≥93）。

| 415 类 | 437 类 | 方法数 | 代码行变化 | 新增常量 |
|---|---|---|---|---|
| `WorkspaceShell` | `j` | 152 → 241 | **-719** | **+33 / -54** |
| `WorkspaceSession` | `i` | 100 → 135 | -2339 | +2 / -20 |
| `WorkspaceHost` | `g` | 90 → 118 | -380 | +6 / -2 |
| `WorkspaceWm` | `k` | 40 → 58 | **+827** | +3 / -13 |
| `WorkspaceHost$OverlayView` | `g$h` | 26 → 31 | -264 | 0 / -6 |
| `Geometry` | `b` | 4 → 7 | +138 | 0 / 0 |
| `WorkspaceProtocol` | `h` | 8 → 7 | -43 | 0 / -1 |
| `Tx` | `e` | 4 → 3 | -89 | 0 / -1 |

方法总数变化：**415 共 424 个 → 437 共 608 个（+184）**。

`WorkspaceShell` 是改动重心：+89 个方法、+33 条新日志。代码行数反而下降，说明重构（压缩 + 抽取）。

## 三、工作台新增功能（按证据链）

### 1. Play 阶段成员收编（WorkspaceShell）

437 新增一组判定日志，构成新的任务捕获策略：

```
 (found at play): adopting into the main area
 (found at play): not adoptable, left to the system
 opened at play, not from a member: left to the system
 opened at play: source unreadable (
 opened by member 
 (same app, its own transition)
```

含义：任务在「play 阶段」（转场播放期）出现时，判断其归属——

- 能从成员（member）追溯到来源 → **收编进主区域**
- 无法收编 → 留给系统处理
- 同 App 自带转场 → 不干预

415 没有这套逻辑，只有简单的前台判定。

### 2. 浮窗降级策略（WorkspaceShell + WorkspaceSession）

```
 opened as a floating window: left over the workbench
 every member left as a floating window
floating windows 
```

437 明确把「以浮窗形式打开的任务」留在工作台上方，不强行收编。`WorkspaceSession` 新增「所有成员都退化为浮窗」的终态处理。

### 3. TaskView 转场重定向（WorkspaceShell，旋转修复）

崩溃/异常时的降级日志：

```
TaskView redirect not found: a rotation may put side members back to the old size
TaskView redirect retarget failed
relayout: pending TaskView redirect retargeted to 
TaskViewTransitions$PendingRedirectTransition
```

对应代码：`taskcore/j.smali` 约 L9400–9575，`WorkspaceShell` 内新增 `PendingRedirectTransition` 跟踪与 retarget。

**这解释了 415 上「旋转后侧边 member 尺寸回退」的问题**：437 用「待定重定向」机制在 relayout 时重新指向正确的 TaskView。

### 4. RecentTasksController 捕获（WorkspaceShell）

```smali
# j.smali L2900-2921
iget-object v1, p0, Ldev/duo/taskcore/j;->Y0:Ljava/lang/Object;
if-nez v1, :cond_0
    # chain.proceed() 拿到 RecentTasksController 实例，缓存到 Y0
    iput-object p1, p0, Ldev/duo/taskcore/j;->Y0:Ljava/lang/Object;
    const-string v1, "captured RecentTasksController"
```

新增字段 `Y0` 缓存 `RecentTasksController`，供后续直接调用（415 每次反射查找）。

### 5. DragAndDropController hook（全新）

```smali
# j.smali L9100-9156
const-string v0, "com.android.wm.shell.draganddrop.DragAndDropController"
Class.forName(v0, false, classLoader)
# hook onDrag(View, DragEvent)
# 失败日志：drag watch not hooked: no drag-hover swap
```

**437 全新功能：拖拽悬停交换**。Hook WMShell 的拖放控制器 `onDrag`，实现「拖拽图标到工作台时按悬停位置交换」。

415 完全没有这段代码。

### 6. 资源释放（WorkspaceHost）

WorkspaceHost 新增 6 条日志，全部是清理路径：

```
detach root
release root
release overlay
release backdrop
stop animation
root below floating window unavailable: kept on top
```

前五条是销毁流程的分步释放；最后一条是异常兜底（根层无法置于浮窗下方时保持顶层）。

### 7. 旋转处理（WorkspaceSession）

新增常量 `rotate`，配合前述 TaskView redirect，构成完整的旋转链路。

### 8. 来源校验（WorkspaceWm）

```
dev.duo.taskcore.source
source session/caller mismatch
source target/cookie mismatch
```

新增 IPC 来源校验：session/caller、target/cookie 不匹配时拒绝操作。属于安全性/稳定性加固。

## 四、workspaceprobe（rail / dock）

`b.smali`（65280 → 66557 行）过滤掉包名差异后，真实功能变化：

### 新增常量

```
Workbench rail layout            ← 工作台 rail 布局日志
workbenchLayout                  ← 新 Bundle 键
edge look page=                  ← 边缘外观分页
 (from outer)                    ← 外屏来源标记
soft=                            ← 柔和模式
strict                           ← 严格模式
edge=                            ← 边缘值
not one colour (share ...        ← 多色检测（rail 配色）
...): looking once more          ← 二次探测
```

### 新增配置键：`_global/workbenchRail`

```smali
# hookprobe/ConfigProvider.smali L2395
const-string v1, "workbenchLayout"
const-string v2, "_global/workbenchRail"
invoke-interface {v0, v2, v13}, Landroid/content/SharedPreferences;->getString(...)
invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(...)
```

**437 把「工作台 rail 布局」独立成新配置键 `_global/workbenchRail`**，与既有的 `_global/railCustom`（`Bundle` 键 `layout`）并列。

415 只有 `_global/railCustom`。

### 移除常量

```
iOS notification center not installed
```

**437 官方移除了 iOS 通知中心功能**（415 原始版仍有）。这与本项目「移除 iOS 通知中心」的改造方向一致，437 之后无需再自行删除。

## 五、对当前工程的影响

### 可以直接借用的

| 437 改动 | 对当前工程的用处 |
|---|---|
| 官方移除 iOS 通知中心 | 我们的删除补丁可弃用，减少维护面 |
| `_global/workbenchRail` 独立配置 | 工作台 rail 布局与普通 rail 解耦 |
| DragAndDropController hook | 拖拽交换，415 缺失 |
| TaskView redirect retarget | **修复「旋转后侧边 member 尺寸回退」** |
| RecentTasksController 缓存 | 减少反射开销 |
| Play 阶段收编判定 | 改善多任务归属正确性 |

### 不能直接套用的

- **taskcore 无法整包替换**：437 全混淆，415 工程基于真实类名，且现有补丁（`d(I)Z`、`j1()` scene 判定、`d(List)` 反射绕过等）都落在真实名文件上。
- **必须先做「逻辑移植」**：按 `taskcore-map.json` 定位 437 对应类，读逻辑，再改到 415 真实名文件。

### 移植优先级建议

1. **TaskView redirect retarget** — 有明确收益（旋转尺寸问题），代码集中在 `j.smali` L9400–9575
2. **`_global/workbenchRail`** — 配置层小改动，涉及 `ConfigProvider` 与 `b.smali`
3. **RecentTasksController 缓存** — 低风险
4. **DragAndDropController hook** — 新功能，需验证 WMShell 类名在目标 ROM 存在
5. **Play 阶段收编** — 逻辑最复杂，建议最后做

## 六、复现方法

```powershell
# 1. 反编译 437
java -jar tools\apktool.jar d -f -o _work\dec437 versions\1.0.437\MiDuo-1.0.437.apk
_work\jadx\bin\jadx.bat -d _work\jadx437 --no-res --no-imports versions\1.0.437\MiDuo-1.0.437.apk

# 2. 查映射
cat versions\1.0.437\taskcore-map-lexicographic.json   # 437 混淆名 -> 415 真实名
cat versions\1.0.437\workspaceprobe-map.json

# 3. 对比 rail/dock（同名，可直接 diff）
diff _work\orig_dec\smali\dev\duo\workspaceprobe\b.smali `
     versions\1.0.437\smali\dev\duo\workspaceprobe\b.smali

# 4. 直接改 437（用已还原类名的工程）
java -jar tools\apktool.jar b versions\1.0.437\rebuild -o out\MiDuo-437-deobf.apk
```

对比时注意：**415 工程内的 smali 已改包名为 `com.lsposed.miduo`**，与原始 `dev.duo.hookprobe` 不同。先过滤包名常量再比功能差异。

## 七、taskcore 类名还原（rebuild 工程）

`versions/1.0.437/rebuild/` 是可直接改代码编译的工程，`taskcore` 45 个类已还原真实名。

**还原原理**：415 与 437 的 taskcore 都是 45 个类，R8 按**字典序**分配短名，排序后序号 1:1 对齐。对齐后逐项验证父子关系（`.super` / 内部类归属），**45 个类全部一致**。

完整映射见 `versions/1.0.437/taskcore-map-lexicographic.json`：

```
a        → Frames              g        → WorkspaceHost
a$a      → Frames$Driver       g$h      → WorkspaceHost$OverlayView
a$b      → Frames$Scheduler    g$h$a    → WorkspaceHost$OverlayView$1
b        → Geometry            h        → WorkspaceProtocol
c        → SystemGate          i        → WorkspaceSession
d        → TaskBinding         j        → WorkspaceShell
e        → Tx                  k        → WorkspaceWm
f        → VirtualFocus
```

**方法名/字段名保持混淆**（已论证不可靠）：

- WorkspaceHost 90 个方法匹配测试，强匹配 0 个，最高分 68
- 437 多出 28 个方法，R8 内联/重排使方法体特征变形
- `access$XXX` 合成访问器 40+ 个，方法体几乎相同，无法区分
- 错配风险大于收益，故不做

实际影响有限：类名还原后看方法体逻辑即可判断用途。
