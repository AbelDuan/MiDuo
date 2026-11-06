# 02 · 桌面 Hook 与工作台/双屏 UI（MiDuo 1.0.415）

> 分析对象：`MiDuo-1.0.415.apk`（包名 `dev.duo.hookprobe`，libxposed 模块，入口 `dev.duo.hookprobe.MiDuo`）
> 证据来源：jadx 源码 `jadx-out/sources/`、apktool 产物 `apktool-out/`
> 标注约定：**事实**＝源码可直接读出；**[推断]**＝基于命名/数值/日志的合理推断，未经运行验证。

---

## 1. 概览

模块按**进程**分流，`MiDuo.onModuleLoaded` 依据 `moduleLoadedParam.getProcessName()` 决定装载哪套 Hook：

| 进程 | 装载对象 | 证据 |
|---|---|---|
| `com.miui.home` / `com.android.systemui` / `com.miui.personalassistant` | `dev.duo.workspaceprobe.C0143b`（主 Hook 类） | `dev/duo/hookprobe/MiDuo.java:103-113` |
| `com.android.thememanager`（主题壁纸） | `dev.duo.icons.C0127c` | `dev/duo/hookprobe/MiDuo.java:82-92` |
| `com.android.quicksearchbox` | `dev.duo.workspaceprobe.C0148g`（搜索抽屉滑杆） | `dev/duo/hookprobe/MiDuo.java:115-124` |
| system_server | `dev.duo.taskcore.WorkspaceWm`（另一分析者负责） | `dev/duo/hookprobe/MiDuo.java:154-157` |

`C0143b` 是 `XposedModule` 子类（`dev/duo/workspaceprobe/C0143b.java:199`），文件 19358 行、465 个顶层方法（含内嵌类后约 883 个方法声明）。它按三个包分别入口：

- `com.miui.home` 进程：**只**在 `onModuleLoaded` 里 `System.loadLibrary("duoworkspace")`（`C0143b.java:8647-8649`），`onPackageLoaded` 遇到 `com.miui.home` 首包直接 `return`（`C0143b.java:8665-8667`）。即桌面进程**几乎不装 Java Hook**，桌面侧的改造靠 `WorkspaceHome` 的 native/Binder 通道 + SystemUI 侧代理完成。
- `com.miui.personalassistant` 进程：转交 `C0146e.m2927a`（小组件选择器/详情页 Hook）（`C0143b.java:8668-8671`）。
- `com.android.systemui` 进程：安装全部 WMShell / SystemUI Hook（`C0143b.java:8672-8846`）。

顶层开关全部走 `content://dev.duo.hookprobe.config` 的 `ContentResolver.call`，并配 `ContentObserver` 热更新（`C0143b.java:6433-6473`）。两个 SystemProperties 逃生阀：`debug.duo.master`（总开关，`C0143b.java:8856`）、`debug.duo.foldanim`（`247` 表示开合动画许可，`C0143b.java:9481`）。

日志 tag 分布（`C0143b.java` 内 290 处 `Log.x("<tag>", …)`）：`DuoRail`(212)、`DuoFoldSplit`(18)、`DuoStandby`(12)、`DuoKeyguard`(10)、`DuoSidebar`(8)、`DuoPick`(7)、`DuoWorkbench`(5)、`DuoLegacyDock`(5)、`DuoWallpaper`(4)、`DuoSplitHome`(3)、`DuoSplitRatio`(2)、`DuoSearch`(2)、`DuoMinusHome`(1)、`DuoResolver`(1) —— 这个 tag 分布本身就是功能地图。

---

## 2. C0143b Hook 总表

50 个 `hook(...)` 调用点（`(?<![\w.])hook\(` 精确匹配，`C0143b.java`）。下表按功能簇归纳，一行可含多个相邻 hook。

| 目标类 | 方法 | 时机 | 作用 | 源码行 |
|---|---|---|---|---|
| `LetterboxSurfaceBuilder` | `createSurface` | after | 把 letterbox 背景层染成当前页面主色（`m2280a`） | `C0143b.java:8701` |
| `TaskInfoLetterboxLifecycleEventFactory` | `createLifecycleEvent` | before | 从 `TransitionInfo$Change` 取 `taskInfo` 供后续判断 | `C0143b.java:8717` |
| `SingleSurfaceLetterboxController` | `createLetterboxSurface` / `updateLetterboxSurfaceVisibility` / `updateLetterboxSurfaceBounds` | before+after | 记录 taskId→letterbox surface，改显隐/边界 | `C0143b.java:8724,8731,8738` |
| `LetterboxTaskListenerAdapter`、`MiuiShellLetterboxManagerImpl` | 首参为 `RunningTaskInfo` 的 `onTaskAppeared`/`onTaskInfoChanged` | before | 反射遍历方法名批量挂钩，补发 `onTaskInfoChanged` | `C0143b.java:8756-8794` |
| `com.android.systemui.statusbar.CommandQueue` | `onSystemBarAttributesChanged` | after | 抓取状态栏前景色/行为（`m2713p`） | `C0143b.java:9682` |
| 同上 | `setWindowState` | after | 抓 `appearance`，驱动侧栏深浅色 | `C0143b.java:9689` |
| `ConfigurationControllerImpl` | `onConfigurationChanged` | after | 深色模式联动（`uiMode&48==32`，`m2656k`） | `C0143b.java:9908` |
| `RootTaskDisplayAreaOrganizer` | `onDisplayAreaAppeared` / `onDisplayAreaVanished` | after | 缓存 display 0 的 RootTaskDisplayArea surface，作侧栏挂载父层 | `C0143b.java:10320,10327` |
| `Transitions` | `requestStartTransition` | before | 按 triggerTask/type 判断转场来源（`m2296a`） | `C0143b.java:10351` |
| `ShellTaskOrganizer` | `onTaskAppeared`(TaskInfo,SurfaceControl) / `onTaskAppeared`(TaskAppearedInfo) / `onTaskInfoChanged` / `onTaskVanished` | before+after | 缓存 `mRunningTaskInfo` 全量、维护 task 表（`f2109G0`/`f2123I0`） | `C0143b.java:10358,10368,10383,10390` |
| `LauncherProxyService` | 全部构造器 + `notifySystemUiStateFlags`/`notifySysUiStateFlagsForAllDisplays`/`addCallback`/`shouldShowSwipeUpUI` | before | 拿到 LauncherProxy 实例，作为下拉手势入口（`f2106F4`） | `C0143b.java:10423,10434` |
| `LetterboxLifecycleControllerImpl` | `onLetterboxLifecycleEvent` | before | 改写事件字段，注入 `MULTIPLE_SURFACES` 模式（`m2289a`） | `C0143b.java:11424` |
| `LetterboxControllerStrategy` | `configureLetterboxMode` | before | 强制多面 letterbox（`m2286a`） | `C0143b.java:11432` |
| `MultiSurfaceLetterboxController` | `createLetterboxSurface` / `updateLetterboxSurfaceBounds` / `updateLetterboxSurfaceVisibility` / `destroyLetterboxSurface` | before+after | 维护 4 张边条 surface（左/上/右/下） | `C0143b.java:11439,11446,11453,11460` |
| `sosc.common.split.DividerSnapAlgorithm` | `calculateTargets` | before | 内屏横屏分屏比例从 5 档改 7 档（`mSnapMode` 5→7，`m2285a`） | `C0143b.java:11597` |
| `NotificationShadeWindowControllerImpl` | `apply(NotificationShadeWindowState)` | after | 读 5 个 flag（keyguard/bouncer/dozing/shade/CC）作 `SystemGate` | `C0143b.java:11983` |
| `android.app.Dialog` | `show` / `hide` / `dismiss` | after | 统计 SystemUI 弹窗数量（`f2166O1`），决定侧栏让位 | `C0143b.java:11990,11997,12004` |
| `CommandQueue` | `setImeWindowStatus` | after | 取 IME 可见位，驱动侧栏上移 | `C0143b.java:12027` |
| `CommandQueue` | `showShutdownUi` | before | 关机/重启弹窗时收起工作台 | `C0143b.java:12038` |
| `Transitions` | `onTransitionReadyInner` / `onFinish` / `onTransitionAbort` | 前两者 before、`onFinish` after | 模式切换动画记账：遍历 `getChanges()` 统计 top 层级并算 target 屏（`m2298a`，`C0143b.java:18813-18926`），`onFinish` 里结算耗时并重排 | `C0143b.java:13276,13283,13290` |
| `MiuiNotificationListener` | `onListenerConnected` / `onNotificationPosted` / `onNotificationRemoved` | after | 通知图标变化驱动侧栏通知区（`m2300a`） | `C0143b.java:13339` |
| `RecentsTransitionHandler$1` | `onGestureStateUpdated` | before | 手势态 15=取消 / 13,1=起，驱动侧栏"最近任务" | `C0143b.java:13791` |
| `MiuiShortcutController` | `addShortcutViews` | after | 锁屏快捷方式布局改写（调私有 `onSystemUIAction$1`） | `C0143b.java:13937` |
| `KeyguardPanelViewController` | `startUnlockKeyguardDismissAnim` | after | 解锁动画与快捷图标联动 | `C0143b.java:13949` |
| `BaseShortcutAnimView` / `BaseShortcutAnimController` | `updateViews` / `updateShortcutView` | before | 锁屏图标圆心/缩放偏移修正 | `C0143b.java:14162,14169` |
| `MultiTaskingStateManager` | `onSoScStateChanged` / `onPreSoScStateChanged` | after | 捕获分屏矩形状态（左右/上下边界） | `C0143b.java:14188,14195` |
| `SoScSplitScreenController` | `onInit` | after | 抓 `getRemoteCallExecutor`/`SoScUtilsImpl`/`MultipleSplitUtils` 静态入口 | `C0143b.java:14223` |
| `DefaultTransitionImpl` | `updateTranslateAnimationIfNeeded` | before | 修 letterbox 内嵌 Activity 的位移动画（`m2295a`） | `C0143b.java:15705` |
| `MultipleSplitRootTaskOrganizer` | `getDockOffset` | before | Dock 变更动画期间把 offset 归零 | `C0143b.java:17773` |
| `MultipleSplitTransitionHandler` | `playDockChangeAnimation` | before | 首帧进入时（`mExtraTransitType==11286`、`mEnteringIndex==2`）捕获新层并手动做位移动画 | `C0143b.java:17780` |

**C0143b 之外的 Hook（同属本范围，供交叉参考）**

| 目标类 | 方法 | 作用 | 源码行 |
|---|---|---|---|
| `Application` | `attach` | 仅在 `com.android.thememanager` 进程注册图标桥 receiver | `dev/duo/icons/C0127c.java:33-45` |
| `CommandQueue` | `onProposedRotationChanged` / `disable` | 旋转建议按钮接管 | `dev/duo/workspaceprobe/C0147f.java:239-269` |
| `FloatingRotationButtonPositionCalculator` | `calculatePosition` | 旋转按钮位置改写 | `C0147f.java:252` |
| `Binder` | `attachInterface` | 识别 `com.miui.launcher.overlay.ILauncherOverlay`，再 hook 其 `onTransact` 抓搜索抽屉滑杆量 | `dev/duo/workspaceprobe/C0148g.java:74-107` |
| `PickerNavRepository` / `PickerDetailRepository` / `PickerDetailAdapter` 等（personalassistant） | `processData`、tail 服务、`getAddTargetItemInfo`、`getItemViewType` | 桌面小组件选择器改造（Gson 序列化注入 + span 改写） | `dev/duo/workspaceprobe/C0146e.java:42-136` |

---

## 3. 工作台双屏布局与手势模型

### 3.1 图层体系

所有悬浮 UI 都走同一套封装 `C0143b.R`：`SurfaceControlViewHost` + `setView` + `getSurfacePackage().getSurfaceControl()`，字段包含 `f2504b`（leash）、`f2507e`（X 锚点）、`f2508f/f2509g`（宽高）、`f2510h`（Y 锚点）（`C0143b.java:3075-3091`）。

实际图层尺寸常量（内屏展开态 `2364×1672`）：

| 常量 | 值 | 含义 | 证据 |
|---|---|---|---|
| `f2007O` / `f2008P` | 2364 / 1672 | 内屏展开真实分辨率 | `C0143b.java:250-253` |
| `f2056s0` | 963 | 侧栏起始 X（外屏宽 1168 的镜像分界） | `C0143b.java:391` |
| `f2013U` / `f2015W` | 314 / 1486 | Dock 与任务卡 Y | `C0143b.java:268-274` |
| 侧栏宽 | 205 | `Rect(0,0,205,1712)` | `C0143b.java:14411,14493` |
| 外屏 | 1168×1712 | 侧栏 / Dock 在此坐标系 | `C0143b.java:6142` |

侧栏（`DuoSidebar`）锚点计算：展开态 X 从 `963.0f` 起（`C0143b.java:14458,14493`），Y 用 `f2126I3[1] + 47`（`C0143b.java:14458`，47 即常量 `f2012T`，`C0143b.java:265`）；折叠态 X 变为 `1175 - f2367t4`（`C0143b.java:7642-7651`）。`f2126I3` 是 7 元 `int[]`，由配置 provider 下发（`C0143b.java:17070-17071`）。`R` 的三个实例对应三条侧栏层：`status`（963,47,205×`h0.f2666D`）、`decor_content`（963,0,205×1712）、`pick_point`（0,0,963×1712）（`C0143b.java:12324,14493,6103`）。

### 3.2 场景判定

`m2207P()`（`C0143b.java:7591`）是主刷新循环：取 display 0 真实尺寸 → 记录 `f2377v2/f2383w2` → `m2707o(z)` 判"是否内屏展开"（`C0143b.java:7639`）→ 计算 `f2252a4`（内屏左偏移，展开时 `1175 - t4`，否则 0）与 `f2259b4`（是否内屏横屏）（`C0143b.java:7640-7657`）。

三条核心判据（`m2256a(display)` 是屏别判定：`2364×1672` 或 `1672×2364` → `1`（内屏）；`1168×1712` 或 `1712×1168` → `0`（外屏）；其它 `-1`，`C0143b.java:17655-17672`）：

- `m2590f()`：当前前台是普通全屏应用、非桌面、非 SystemUI，且 task 处于 focused（`C0143b.java:14237-14258`）
- `m2168F()`：内屏 + 前台 task 为 `activityType==1 && windowingMode==1`（标准全屏）+ `SoSc` 未激活（`C0143b.java:8924-8944`）
- `m2560d2()`：内屏 + 折叠态成立 + 无键盘/无锁屏/无 SystemUI 遮挡的全屏应用（`C0143b.java:7064-7065`）

### 3.3 手势模型

`m2466b(MotionEvent)`（`C0143b.java:15222-15237`）是唯一输入分发点，串行喂三个识别器：

1. **下拉通知栏**：`m2517c` —— 起点 `rawY <= 120`（顶边）→ 纵向位移 > `touchSlop` 且 > `|dx|*1.2` → `m2787E0()` 反射 `InputMonitor.pilferPointers` 抢焦点后转发给 LauncherProxy（`C0143b.java:14624-14676`）。
2. **工作台角标**：`C0155n.m3099a` —— 起点 `rawX>=2224 && rawY>=1532`（右下角 140×140 区域）→ 300ms 长按进工作台，滑动 220px 触发弹出（`C0155n.java:1281-1354`）。
3. **Dock 上滑**：`m2544d` —— 起点 `rawX < 963` 且 `rawY < 1512`，松手 40px 内视为点击（`C0143b.java:14876-14908`）。

### 3.4 工作台（DuoWorkbench）

`C0155n` 实现 `WorkspaceShell.Events` + `WorkspaceHost.Actions`（`C0155n.java:69`），由 `C0143b` 构造时实例化（`C0143b.java:6017`），SystemUI 侧 `m3100a(classLoader)` 里 `new WorkspaceShell(...).install()`（`C0155n.java:1066-1079`）。

进入流程（`C0155n.m2998a`，`C0155n.java:1358-1421`）：
1. `WorkspaceShell.pickTasks(ctx, {"dev.duo.hookprobe"})` 取候选 task；
2. 建 `workbench_handle`（`C0152k` 圆形手柄，200×200）挂在 `2164,1472`，layer `16777217`；
3. 拖拽时手柄跟随 + `workbench_stage`（`C0154m`，2364×1672，layer `16777218`）alpha 从 0 渐显（`C0155n.java:1432-1436`）；
4. `Geometry` 计算主卡与 4 槽位矩形，动画 320ms（`f2892p`）。

---

## 4. 折叠动画引擎（Java + shader）

### 4.1 进程模型

开合引擎是**独立 root 进程**，不是 Hook：SystemUI 侧 `C0115q` 收到调用后用 shell 拉起
`app_process --nice-name=MiDuoFoldEngine dev.duo.fold.Engine`（`dev/duo/hookprobe/C0115q.java:129`），并写 `/sys/fs/cgroup/cgroup.procs` 抢调度。`Engine.main` 校验 `Process.myUid()==0` 与单参数（`dev/duo/fold/Engine.java:549-575`），入口是 `m536B()`（`Engine.java:472-527`）。

### 4.2 依赖面

- `device_state` / `display` / `window` / `activity_task` 四个系统服务 + `WorkspaceProtocol.INTERFACE`（自定义 Binder，`dev/duo/fold/Preflight.java:169-209`，`Preflight.main` 输出 `MiDuoFoldCheck:` JSON）。
- 面板租约：`m681a()` 校验模块版本 `{1,254,0}`，`m682a("local:4639175402683733248")` / `local:4639175068132267009` 两块面板必须存在（`Engine.java:476-486`，面板 ID 常量见 `dev/duo/fold/C0036e.java:19-21`）。
- 传感器：`Sensor 36`（铰链）、`33171101`（小米私有 fold_status）、`Sensor 8`（距离）（`Engine.java:493-499`）。

### 4.3 各 Java 类职责

| 类 | 行数 | 职责 |
|---|---|---|
| `Engine` | 1904 | 主状态机：Hall 分类 + 铰链角度 + 面板租约 + 分层渲染编排 |
| `C0033b` | 40 | 阈值对象，构造时校验范围（`open 2..8`、`close 130..177`、`reverse 3..20`、`release 0..100`）（`C0033b.java:21-29`） |
| `C0032a` | 119 | 单次动画会话（generation + 阶段时间戳），`m643a` 判断"角度朝哪边动"（`C0032a.java:109-113`），`m641b` 320ms ease |
| `C0034c` | 237 | 32 帧环形缓冲，`m656b()` 取平滑角度、`m660d()` 取角速度（`C0034c.java:48-119`） |
| `C0035d` | 33 | 侧栏三块矩形常量：外屏 `{972,394,180,1100}`、内屏 `{2168,350,180,1100}`（`C0035d.java:12-13`） |
| `C0036e` | 416 | display 服务私有 Binder：`transact(13693511, …)`，`interface dev.duo.foldanim1.CONTROL`，回调 `FRAME` 要求 `callingUid==1000`（`C0036e.java:17-20,52-71,97-117`） |
| `C0037f` | 111 | Hall 状态分类器：`|value|>=1450` → SHUT，`< 1350` → OPEN，样本间隔 >1000ms 则降级 FALLBACK（`C0037f.java:46-79`） |
| `C0038g` | 855 | EGL/GLES30 合成器：`assets/fold/duo.vert` + `duo.frag`（`C0038g.java:491`），另有外部纹理 passthrough shader（`:492`） |
| `C0039h` | 257 | 分层取层：向 display 服务要 home + 各 layer 的 `mirror` surface，重组为 source/glass 两层（`C0039h.java:59-130`） |
| `C0040i` | 209 | 静态壁纸原图解码：`/data/system/theme_magic/users/<u>/wallpaper/data/{home,small_home}.xml`（`C0040i.java:80-136`），内外屏原图不同则拒绝分层（`:89-95`） |
| `Surfaces` | 75 | `setLayerStack`/`show`/`hide`/`setMatrix`/`setContainerLayer`/`mirrorSurface` 反射缓存（`Surfaces.java:27-39`） |

分层不可用时 Engine **一律交还原生动画**，日志明确（`Engine.java:745,764,776,928,1385,1415,1444`）。

### 4.4 与 shader 的关系

`duo.vert`（145 字节）只做全屏 quad 与 `vUV` 传递。`duo.frag`（30 KB）定义三条渲染路径，由 `main()` 按 uniform 分派（`apktool-out/assets/fold/duo.frag`）：

1. `uOpticsPass==1`：**材质 pass** —— 对已合成的本帧做磨砂/明暗/圆角。
2. `uLayered==1`：**分层 pass** —— 透明前景 + 静态壁纸原图合成。
3. 否则：**镜像 pass** —— 从对侧屏内容取样（`innerMirror` / `coverMirror`）。

关键 uniform/常量：

- `uPanel`：0=内屏，1=外屏；`INNER_PX=(2364,1672)`、`COVER_PX=(1168,1712)`、`GRID_SHIFT=(1108,3)` —— 两屏 4×6 网格像素对齐。
- `sourceUV()`：把折角 `bend = PI - radians(angle)` 后的平面投影回 UV，左叶绕铰链转、右叶不动；横向拉伸封顶 `stretchWeight()`，纵向不拉伸。
- `uOpticsPass` 两段式：`uComposed` 是上一步的合成纹理；`frostGaussian` 用 40 点 Vogel 螺旋（黄金角 + 逐像素旋转）替代原 7×7 方格，避免摩尔纹（注释 406-13）。
- 苹果实测表 `CV_A/CV_S/CV_G/CV_B`、`IN_A/IN_S/IN_G/IN_B`：15 个角度节点 × 8 档距离，`coverTable`/`innerTable` 双线性取值（`CV_*` 为外屏、`IN_*` 为内屏）。注释写明由 `tools/optics/tables.py` 生成。
- `innerLight()` 是 7 段 C1 单调拟合（32 个实测点）。
- 圆角 `roundCover()`：内屏 142、外屏左 28/右 154（按 1168 缩放）。

### 4.5 `assets/fold/curve.properties` 参数语义

原文（含注释）：`# 先准备本轮实时画面，再并行切屏和上电；不预抓下一轮图。`

| 键 | 值 | 语义（事实） | 消费者 |
|---|---|---|---|
| `open_angle` | 3 | 判"打开"的角度下限：`angle >= 3` 才算 OPEN | `C0033b.m649a`（`C0033b.java:32-34`）；读取 `Engine.java:475` |
| `close_angle` | 175 | 判"合拢"的角度阈值；`angle < 175` 且正在回落才触发 | `Engine.java:636,641` |
| `reverse_degrees` | 8 | 反向滞回（度）。传入 `C0032a` 作 `f642h`，判定"角度回撤 ≥ 8°"或"到达 178°"才算真正换向 | 读取 `Engine.java:1779`；消费 `C0032a.java:109-113`；校验 `C0033b.java:22` |
| `release_confirm_ms` | 20 | 松手后确认延迟（毫秒），`m650a` 要求 `now - lastSample >= 20` | `C0033b.java:37-39` |
| `quiet_frames` | 6 | 静帧数：连续 6 帧无变化才认为画面稳定；用于帧缓冲窗口 | `dev/duo/hookprobe/C0118t.java:292-295`（`C0121w` 容量 6 与 `(6,192)`） |

参数由 `Engine.m536B` 用 `C0038g.m700a(apk, "curve.properties")`（`C0038g.java:279-296`，直接从 APK zip 的 `assets/fold/` 读 entry）解析（`Engine.java:474-475`）；`quiet_frames` 则由 SystemUI 侧 `C0118t` 读同一 zip entry（`C0118t.java:285-294`）。所以**改这几个值需要重新打包 APK**，不是运行时可调项。

---

## 5. 图标与 StageProvider

### 5.1 组件关系

```
dev.duo.hookprobe（本模块 App）
   └─ dev.duo.icons.MainActivity        ← 选 MTZ / 应用 / 恢复 的 UI
   └─ dev.duo.icons.StageProvider       ← authority: dev.duo.hookprobe.icons.files
        ▲ grantUriPermission(读)          │ 只暴露 selected.zip
        │                                 ▼
com.android.thememanager（主题壁纸，uid 6101）
   └─ C0126b BroadcastReceiver  ← 受 dev.duo.hookprobe.permission.ICONS 保护
   └─ C0128d/C0130f 备份/写入 /data/system/theme/icons
```

常量集中在 `dev/duo/icons/C0131g.java:8-26`：包名、`com.android.thememanager`、authority `dev.duo.hookprobe.icons.files`、action `dev.duo.hookprobe.icons.COMMAND`、权限 `dev.duo.hookprobe.permission.ICONS`、uid `6101`、服务 `ThemePCService`。

Manifest 事实：`<provider android:authorities="dev.duo.hookprobe.icons.files" android:exported="false" android:grantUriPermissions="true" android:name="dev.duo.icons.StageProvider"/>`；权限为 `signature` 级（`apktool-out/AndroidManifest.xml`）。

### 5.2 `StageProvider` 的四重闸门

`openFile`（`StageProvider.java:38-51`）同时校验：

1. 只允许 `"r"` 模式；
2. `Binder.getCallingUid()` 必须是 `6101`（主题壁纸）或自身 uid；
3. URI 必须是 `stage/<nonce>`，两段、无 query/fragment；
4. `nonce` 必须等于 `SharedPreferences("state").getString("nonce")` 且 120 秒内（`nonceAt`）。

返回固定文件 `files/selected.zip`。`getType` 固定 `application/zip`，其余 CRUD 全抛 `UnsupportedOperationException`。

### 5.3 调用链

1. `MainActivity` 导入 `.mtz`/`.zip`：`C0129e.m2112a(stream, file, 1GB)` → `C0129e.m2108a(file, prepared, title, cb)` → 原子移动到 `selected.zip`，把 `selectedTitle/Hash/Count` 写入 `state`（`MainActivity.java:332-343`）。
2. 应用时 `C0125a.m2087a` 生成 UUID 当 nonce 并写盘（`C0125a.java:135-137`），优先 `bindService(ThemePCService)`，失败则用"找一个 exported+enabled+无读写权限的 provider 去 `acquireUnstableContentProviderClient`"把主题进程**唤醒**（`C0125a.java:147-163,199-213`），再 `sendBroadcast(COMMAND, package=thememanager)` 并附带 `grantUriPermission`（`C0125a.java:180-188`）。
3. 主题进程侧：`C0127c` hook `Application.attach` 后 `C0126b.m2088a` 注册 receiver（`C0126b.java:44-54`），`onReceive` 校验 `getSentFromUid()` 与 `getSentFromPackage()`（`C0126b.java:60`），`op` 只能是 `STATUS/APPLY/RESTORE`，nonce 必须 32 位 hex，`hash` 必须 64 位 hex（`C0126b.java:63,105`）。
4. 落地：`C0129e` 解 zip（大小上限 128MB/512MB，`C0129e.java:37-46`），`C0128d` 做 baseline 备份与 hash 校验（`C0128d.java:88-107`），`C0130f` 做原生侧校验 —— uid==6101、`/data/system/theme` 非符号链接且可写、`MiuiConfiguration.THEME_FLAG_ICON==8`、SELinux 上下文必须 `u:r:theme:`、文件 owner 6101:6101、chmod 420（`C0130f.java:32-89`）。

---

## 6. taskcore 辅助类职责（WorkspaceWm / WorkspaceProtocol 除外）

| 类 | 规模 | 职责 |
|---|---|---|
| `WorkspaceSession` | 1843 行 / 83 方法 | 工作台**会话状态机**。`State` 9 态（IDLE→PREPARING→ATTACHING→ACTIVE→TRANSITIONING→RETURNING→CLOSED/RETURN_FAILED/PAUSED）（`WorkspaceSession.java:68-78`），持 4 个槽位 `slots[4]`（`:59`）与主任务；通过 `Platform` 接口（`:93-131`）把所有 SurfaceControl/task 操作反向下发给宿主。对外 API：`open/swap/add/reorder/remove/adopt/enterFrom/close/retryReturn`（`:182,362,401,439,475,659,1011`）。 |
| `WorkspaceShell` | 3954 行 / 62 方法 | Session 的**SystemUI 侧实现**（`implements WorkspaceSession.Platform`），TAG `TaskCoreShell`。反射接入 `TaskView`/`TaskViewTransitions`/`ShellTaskOrganizer`/`Transitions`/`RecentTasksController`/`LauncherProxyService`/`MultipleSplitRootTaskOrganizer` 等（`WorkspaceShell.java:379-542`）。静态工具 `pickTasks`（`:1769`）、`members`（`:1808`）、`systemGate`（`:3867`）。 |
| `WorkspaceHost` | 1543 行 | **工作台视图宿主**：自建 `SurfaceControl root`（`:75`），管理 `Panel`/`Item`/`OverlayView`，用 `Frames`+`Choreographer` 驱动逐帧（`:80-101`）。`Actions` 接口 `exit/menu/plus/reorder/swap/barDrag/barCancel`（`:105-121`）由 `C0155n` 实现。层级常量 `OVERLAY=1000`、`ROOT_LAYER=16777216`（`:54-55`）。 |
| `TaskBinding` | 124 行 | 单个 task 的**所有权凭据**：`Lease` 7 态（OBSERVED→OWNER_ACQUIRED→SURFACE_ATTACHED→RETURN_REQUESTED→OWNER_RETURNED→RELEASED→TASK_GONE）（`:22-30`）；`Origin` 记录 taskId/userId/displayId/tokenBinder/leash；`Snapshot` 是跨进程可序列化的窗口属性包（`:60-109`）。 |
| `VirtualFocus` | 44 行 | 纯内存的焦点/悬停状态机，`NONE=Integer.MIN_VALUE`，`focus()/hover()` 返回 `{旧,新}` 供上层差量更新（`:5-43`）。 |
| `Frames` | 68 行 | 单帧驱动器：同时只允许一个 `Driver` 在跑，新的会先 `finish()` 旧的（`:36-46`）；`acceptsGesture(z,z2,i)` 判断是否该接管手势（`:65-67`）。 |
| `C0132Tx` | 55 行 | `SurfaceControl.Transaction` 的反射薄封装：`setWindowCrop`（尺寸/Rect 两版）、`setCornerRadius`（`:17-54`）。 |
| `Geometry` | 51 行 | 布局数学：`EDGE=40`、`GAP=24`、`SLOTS=4`；构造时把屏幕切成右侧主卡 + 4 个等比槽位（`:15-33`），`mainFollowing(dx)` 让主卡跟随拖拽（`:35-40`），`matrixFor(rect)` 生成 SurfaceControl 矩阵（`:42-45`），`between()` 做插值。 |
| `SystemGate` | 75 行 | 从 SystemUI `NotificationShadeWindowState` 反射读 10 个布尔（keyguard/occluded/bouncer/dozing/shade/CC/panel/remoteInput/headsUp/switchingUsers）（`:7,40-58`），派生三档：`blocksActions()`、`requiresClose()`、`requiresPause()`（`:60-70`）。读失败返回 `UNKNOWN`（全阻塞），fail-safe。 |

---

## 7. workspaceprobe 其余类速查

| 类 | 职责 | 关键行 |
|---|---|---|
| `C0142a` | 应用"是否支持小窗/是否分身"的 TTL 缓存（`m2134a` 按档位给 1s/2s/4s/5s），`m2137a` 带时间戳防乱序回写 | `C0142a.java:44-155` |
| `C0144c` | 铰链角度"回弹检测器"：记录峰值角，`m2904a` 判 `angle >= peak-5` 且回落时间窗内 → 判定"合上确认"，带 800ms 冷却。三档灵敏度 `{15,25,35}° / {1500,1000,800}ms` | `C0144c.java:35-91` |
| `C0145d` | 桌面小组件数据源桥：`INFO_WIDGET_REQUEST/CHANGED` 广播，转发 `com.miui.securitycenter.widgetProvider` 与 `content://weather/...` 数据 | `C0145d.java:27-137` |
| `C0146e` | personalassistant（负一屏/小组件选择器）改造，见 §2 表 | `C0146e.java:42-136` |
| `C0147f` | 旋转建议按钮接管（`DuoRotation`），含自定义 oval 背景绘制与 `show_rotation_suggestions` 写回 | `C0147f.java:38-297` |
| `C0148g` | 搜索抽屉：hook `Binder.attachInterface` 抓 `ILauncherOverlay`，读 `onTransact` 事务号 3/8/7 = scroll/open/close，再转发 `dev.duo.workspaceprobe.SEARCH` 给 SystemUI | `C0148g.java:74-123` |
| `C0149h` | 七段数码管字形（`"0123456789:G"`）的 Path 生成与矩阵变换，用于锁屏/待机时钟 | `C0149h.java:9-135` |
| `C0150i` | 应用条目 DTO（包名/标签/组件/span/userId/是否分身） | `C0150i.java:5-33` |
| `C0151j` | 工作台"主卡+槽位"绘制 View（Drawable 数组 + RectF 数组） | `C0151j.java:14-105` |
| `C0152k` | 工作台入口手柄 View（圆形描边，`m2968a(z)` 切换激活态） | `C0152k.java:11-50` |
| `C0153l` | 侧栏应用列表（`BaseAdapter` + `GradientDrawable` 圆角项） | `C0153l.java:25-311` |
| `C0154m` | 工作台"舞台"遮罩 View，2364×1672，按 `Rect[]` 槽位绘制 | `C0154m.java:14-155` |
| `C0155n` | 工作台控制器（Events + Actions 实现），见 §3.4 | `C0155n.java:69-2586` |
| `C0156o` | 工作台音频焦点仲裁：识别 7 个视频类包名（抖音/快手/B站/爱奇艺/腾讯视频/优酷/小米视频），用 `VolumeShaper` 做淡入淡出 | `C0156o.java:46` |
| `C0157p` | 工作台对外 API：`LocalSocket` + 单行 JSON（`{"apiVersion":1,"state":...,"sessionId":...,"revision":...}`），socket 名 `dev.duo.hookprobe.workbench.v1` | `C0157p.java:23,109-111,143-230` |
| `WorkspaceHome` | 桌面侧 native 帧通道：`System.loadLibrary("duoworkspace")`，通过 `ILauncherProxy.transact(4457009)` 提交帧，回调 Binder `IWorkbenchFrameReceipt` 上报 code 0..5（waiting/registered/texture added/buffer acquired/released/error） | `WorkspaceHome.java:16-125` |
| `StandbyRouteLease` | 独立 root 子进程（`app_process … StandbyRouteLease`）：请求 `DeviceState 4`（外屏状态）并持租约，stdin 读 `G` 触发、再读一行退出；`onRequestActivated` 打印 `ACTIVE` | `StandbyRouteLease.java:29-98`；拉起点 `C0143b.java:14736` |
| `b$$ExternalSyntheticLambda*` / `n$$ExternalSyntheticLambda*` | D8 合成类，仅是对 `C0143b`/`C0155n` 具体方法的 `Runnable`/接口包装（如 `b$$…72 → m2207P()`、`n$$…9 → m3067c()`），无独立逻辑 | `dev/duo/workspaceprobe/b$$ExternalSyntheticLambda72.java`、`n$$ExternalSyntheticLambda9.java` |

---

## 8. 二次开发切入点

按"改动成本 / 风险"从低到高：

1. **配置层（零代码）**：新增 `content://dev.duo.hookprobe.config` 的 call 端点即可加开关；现有模式见 `C0143b.java:6433-6473`（observer）与 `ConfigProvider.java:255-274`（分支）。`debug.duo.master` / `debug.duo.foldanim` 两个 SystemProperties 可直接 `setprop` 旁路。
2. **阈值层**：`assets/fold/curve.properties` 五个键改完重打包即可调开合手感（§4.5）。注意 `open_angle/close_angle/reverse_degrees/release_confirm_ms` 由 root 进程 `Engine` 读，`quiet_frames` 由 SystemUI 进程 `C0118t` 读 —— **两个进程各读一次**，改值后必须重启这两个进程才生效。
3. **Hook 增删**：所有 WMShell Hook 集中在 `m2620h(classLoader)`（`C0143b.java:10313`）的 15 个安装器调用链（`10334-10346`）。新增一个 SystemUI Hook 只需在此链上加一个 `mXXXXx(classLoader)` 并在 `onPackageLoaded` 的 systemui 分支调用。注意：**hook 只在 `com.android.systemui` 进程生效**，`com.miui.home` 进程里 `onPackageLoaded` 直接 return（`C0143b.java:8665-8667`）。
4. **双屏几何**：所有坐标硬编码为 2364×1672 / 1168×1712。换机型需同步改 `C0143b.java:250-274,391` 与 `duo.frag` 里的 `INNER_PX/COVER_PX/GRID_SHIFT`、`roundCover` 的 142/28/154 —— **Java 与 shader 两处必须一致**。
5. **工作台 UI**：`C0155n` 已实现 `WorkspaceShell.Events` + `WorkspaceHost.Actions` 全部方法，替换 `C0151j/C0152k/C0154m` 三个 View 即可换皮而不动会话逻辑。入口手势的判定框在 `C0155n.java:1288,1297`（`rawX>=2224 && rawY>=1532`）。
6. **图标链路**：`StageProvider` 的 nonce 有效期 120s（`StageProvider.java:47`）与 `C0125a.java:170` 的 30s 超时是两个可调窗口；`C0130f` 的原生校验（uid 6101 / SELinux `u:r:theme:` / chmod 420）是硬约束，绕不过。

**风险提示（[推断] 基于代码结构）**：`C0143b` 有大量 `Class.forName` + `getDeclaredMethod` 无版本分支，任一 MIUI 版本改动 letterbox/SoSc 内部字段（如 `mExtraTransitType`、`letterboxMap`、`mSnapMode`）都会使对应 hook 静默降级（catch 后只打 `Log.w`），不会崩溃但也不会生效 —— 排查时应先看 tag `DuoRail`/`DuoFoldSplit` 的 "unavailable" 日志。

---

*文档生成：2026-11-06；覆盖范围仅限「桌面 Hook 与工作台/双屏 UI」，`WorkspaceWm` 与 `WorkspaceProtocol` 的 system_server 协议细节见另一份文档。*
