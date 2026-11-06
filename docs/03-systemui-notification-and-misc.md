# 03 · SystemUI Hook 与通知中心 / 音乐封面 / 搜索框


> ⚠️ **本文档基于基线版本（git `ed62199`，MiDuo 1.0.415 完整版）撰写。**
> 本次精简（git `c202f95`）已移除 4 块功能，因此文中提及的下列类/文件在当前工作树中**已不存在**：
> `btm/m/os4/systemuihook/*`、`IosNcActivity`、`C0147f`、`C0043B`、`C0107i`、`C0114p`、`C0083S`、`C0123y`。
> 需要查看这些源码时，请先 `git checkout ed62199 -- <路径>` 从基线恢复。变更明细见 `09-feature-removal.md`。

分析对象：`dev.duo.hookprobe`（MiDuo 1.0.415，libxposed 模块，入口 `dev.duo.hookprobe.MiDuo`）。
来源根：jadx 输出 `jadx-out/sources`，apktool 输出 `apktool-out`。
约定：行号均指 jadx 产物；每条结论后用反引号标注来源；无法由代码直接证实者标 **[推断]**。

## 1. 概览

模块声明的作用域（`apktool-out/unknown/META-INF/xposed/scope.list`）与入口（`java_init.list` 只有 `dev.duo.hookprobe.MiDuo`）已确认，`minApiVersion=102`、`staticScope=false`、`autoHotReload=false`（`apktool-out/unknown/META-INF/xposed/module.prop`）。

`MiDuo` 自己不直接装 hook，而是按进程把生命周期转发给若干**子模块实例**，每个实例先 `attachFramework(this, noop)` 再转发回调：

| 进程 | 子模块 | 装载点 |
|---|---|---|
| 模块自身进程 | `dev.duo.icons.C0127c` | `dev/duo/hookprobe/MiDuo.java:82-92` |
| 任意进程（含 system_server） | `C0050G` | `dev/duo/hookprobe/MiDuo.java:96-102`、`:154-155` |
| `com.android.systemui` / `com.miui.home` / `com.miui.personalassistant` | `dev.duo.workspaceprobe.C0143b` | `dev/duo/hookprobe/MiDuo.java:20`、`:103-113` |
| `com.android.quicksearchbox` | `dev.duo.workspaceprobe.C0148g` | `dev/duo/hookprobe/MiDuo.java:115-125` |
| system_server（仅开合动画开关打开时） | `C0117s` | `dev/duo/hookprobe/MiDuo.java:161-178` |

**通知中心真正的安装入口**：`C0143b.onPackageLoaded` 在首个包为 `com.android.systemui` 时调用 `C0001b.m11a(this, classLoader, getRemotePreferences("duo_top"))`（`dev/duo/workspaceprobe/C0143b.java:8672-8676`）。`C0001b.m11a` 依次安装：iOS 外壳（`C0007h`）、`C0013d.m255a`（通知中心主体）、`C0010a.m226a`（时钟玻璃）、模糊层（`C0004e`/`C0003d`）（`btm/p000m/os4/systemuihook/hypermusiccover/C0001b.java:34-117`）。

结论：`btm.m.os4.systemuihook.*` 两个包是**同一套 iOS 风格通知中心的两个半边**——`hypermusiccover` 提供外壳/背景/模糊/弹簧动画，`newnotificationcenter` 提供面板骨架、列表与材质；两者大量交叉引用（`C0001b.java:6-7` 直接 import `C0010a`、`C0013d`）。

## 2. 通知中心 Hook 总表

| # | 目标类 | 方法 | 作用 | 源码行 |
|---|---|---|---|---|
| 1 | `com.android.systemui.shade.NotificationPanelExpandController` | `notifyExpandHeightChanged` | 每次高度变化把 (进度, 高度, tracking, 是否展开) 送进 `C0007h.m128a` 驱动自绘层 | `newnotificationcenter/C0013d.java:183`、`:283-293` |
| 2 | 同上 | `onExpandFinish` / `setVisible$2` | 展开收尾对齐；拦截可见性实现"延迟隐藏" | `C0013d.java:197`、`:204`、`:462-471` |
| 3 | `com.android.systemui.shade.NotificationPanelViewController$TouchHandler` | `onTouchEvent` | 采样触摸并记录 Y 速度，供松手回弹判定 | `C0013d.java:190`、`:503-527` |
| 4 | `com.android.systemui.shade.NotificationShadeWindowView` | `dispatchTouchEvent` | 横向左滑手势判定（切回控制中心） | `C0013d.java:131`、`:581-593` |
| 5 | `com.miui.systemui.shade.NotificationShadeWrapper` | `getAllowParentInterceptSwitchEvent` | 放行父级拦截，实现左右页切换 | `C0013d.java:138` |
| 6 | `com.miui.systemui.shade.header.ShadeHeaderContainer` | `dispatchTouchEvent` | 头部区域触摸路由 | `C0013d.java:149` |
| 7 | `com.android.systemui.qs.MiuiNotificationHeaderView` | `onFinishInflate` | 抓到头部 View 并登记进 `C0014e` | `C0013d.java:160`、`:265-269` |
| 8 | `com.android.systemui.controlcenter.shade.CombinedHeaderController` | `getHeaderView` | 抓合并头部容器 | `C0013d.java:171`、`:273-279` |
| 9 | `com.android.keyguard.shortcut.MiuiShortcutController` | `onShortcutPluginCallbackWrap` / `addShortcutViews` / `setMiuiShortcutPlugin` / `onSystemUIAction$1` | 锁屏快捷方式插件接管 | `C0013d.java:66-93` |
| 10 | `com.android.systemui.shade.NotificationDismissViewController` | `onInit` | 抓原生"清除"按钮，改由自绘按钮触发 | `C0013d.java:98`、`:3290-3301` |
| 11 | `com.android.systemui.statusbar.policy.KeyguardStateControllerImpl` | `notifyKeyguardState` | 锁屏状态同步 | `C0013d.java:109` |
| 12 | `com.android.keyguard.KeyguardUpdateMonitor` | `setKeyguardShowing` | 同上（另一路信号） | `C0013d.java:120` |
| 13 | `com.miui.systemui.shade.ShadeSwitchControllerImpl` | `performProgressChanged` / `setSwitching` | 通知中心↔控制中心切换进度 | `C0013d.java:226-227` |
| 14 | `com.android.systemui.shade.NotificationPanelViewControllerInjector` | `onControlCenterAppearChanged` / `onNotificationAppearChanged` | 两页归属切换 | `C0013d.java:234`、`:241` |
| 15 | `com.android.systemui.shade.MiuiNotificationPanelAnimControllerImpl` | `startPanelExpandAnimation$default` / `startPanelVisibleAnimation` | 把 OEM 展开/可见性动画参数改为 false | `C0011b.java:110`、`:117`、`:173-191` |
| 16 | `com.android.systemui.shade.MiuiPanelAnimValueObjectImpl` | `changeExpand` / `changeVisible` / `scheduleUpdate` | 改写动画值对象入参；更新后重放通知行属性 | `C0011b.java:130-150`、`:57-85` |
| 17 | `com.miui.systemui.notification.row.ExpandableViewBase` | `onPropertiesUpdate` | 通知行属性改写总入口 | `C0011b.java:156-163`、`:89-104` |
| 18 | `...notification.row.ExpandableViewInjector` | `applyViewStackingInfo` / `updateDimmingAndVisible` | 取消堆叠位移/缩放/变暗，通知行平铺 | `C0022m.java:808`、`:815`、`:109-155` |
| 19 | `...domain.interactor.NotificationStackingInteractor` | `calculateStackingInfo` / `updateParentStackingInfo` / `updateChildStackingInfo` | 焦点/媒体通知不参与堆叠 | `C0022m.java:830-832` |
| 20 | `...stack.NotificationStackScrollLayout` | `onMeasure` / `dispatchDraw` / `getScrollRange` / `setAlpha` / `updateVisibility$5` / `drawChild` | 重算滚动范围、遮罩与绘制裁剪 | `C0022m.java:839-867`、`:880-892` |
| 21 | `...stack.StackScrollAlgorithm` | `resetViewStates` / `updateViewWithShelf` | 位置算法接管 | `C0022m.java:904`、`:911` |
| 22 | `android.view.View` | `setMiBackgroundBlurMode` / `setMiBackgroundBlurType` / `setMiBackgroundBlurRadius` / `setPassWindowBlurEnabled` / `disableMiBackgroundContainBelow` / `setMiViewBlurMode` | 行与面板的 MIUI 玻璃材质改写 | `C0023n.java:33`、`:100`、`:122` |
| 23 | `android.view.View` | `setMiGlass` / `setMiGlassBlurRadius` / `setMiBackgroundBlurRadius` / `setMiBackgroundBlurScaleRatio` | 时钟玻璃参数（float[42]）覆写 | `C0010a.java:365-401`、`:479-504` |
| 24 | `android.view.View` | `setMiBackgroundBlendColors` / `addMiBackgroundBlendColor` / `clearMiBackgroundBlendColor` | 混色点列表改写（仅改 alpha 通道） | `C0010a.java:402-428`、`:232-240`、`:537-542` |
| 25 | `com.android.systemui.shade.NotificationShadeWindowView`（构造函数）、`NotificationPanelViewController`（构造函数）、`FloatFlowProperty#setValue`、`ShadeBlendBlurController$BlurProvider`（构造函数 + `setBlurRatio`） | — | iOS 外壳接管：挂背景层、接管面板对象、跟随展开进度改模糊比例 | `hypermusiccover/C0001b.java:48-116` |

已观察事实：`C0010a` 的玻璃参数表固定 14 项、写入 float 数组下标 4~35，且要求数组长度 ≥ 42 才生效（`C0010a.java:39`、`:645-657`）；`C0014e.m327b` 里下标 32（折射率）被整体偏移 +4（`C0014e.java:1276`）。这些常量只对特定 MIUI/HyperOS 版本的 `View` 玻璃实现成立。

## 3. 音乐封面渲染链路

**结论先行（已观察事实）：该包不含任何 `AHardwareBuffer`、`SurfaceControl`、`PixelCopy`、`ImageReader`、`TextureView` 调用**（对 `hypermusiccover/*.java` 全量检索仅命中 `RenderEffect`）。渲染是纯 Java 视图层：`FrameLayout` + `ImageView` + `Bitmap` + `RenderEffect.createBlurEffect`。项目内 `SurfaceControl` 只出现在开合动画引擎 `dev/duo/fold/*`（`dev/duo/fold/C0038g.java:576`、`C0039h.java:79`），且其着色器资源 `apktool-out/assets/fold/duo.vert`、`duo.frag` 也证明 GPU 合成只发生在该引擎，与本包无关。

链路（按执行顺序）：

1. **装 hook / 建层**：`NotificationShadeWindowView` 构造函数 hook 后回调 `C0007h.m145b(obj)`（`C0001b.java:176-180`）；`NotificationPanelViewController` 构造函数 hook 后回调 `C0007h.m137a(obj)`（`C0001b.java:157-161`、`:1499-1501`）。`C0007h.m144b(viewGroup)` 建 `FrameLayout` + `ImageView`（`CENTER_CROP`、`setClipToOutline`、圆角 outline provider），并调用 `C0014e.m316a(viewGroup)` 把面板根交给通知中心模块（`C0007h.java:1405-1449`）。
2. **层序定位**：`C0007h.m177s()` 找到 `com.android.systemui.shade.NotificationPanelView` 子节点，把背景层插到它**下面一层**；找不到则退化到 index 0 并打日志（`C0007h.java:857-884`）。
3. **图像来源**：`C0007h.m164j()` 返回 `f107Q`（`C0007h.java:1187-1195`）；`f107Q` 由 `C0002c.m34b(bitmap)` 写入（`C0002c.java:498-516`）。`C0002c` 通过 `WallpaperManager.getWallpaperFile(FLAG_LOCK/FLAG_SYSTEM)` 取文件流、`BitmapFactory.decodeStream`（ARGB_8888）解码（`C0002c.java:583-613`），并用 `Os.fstat` 的 mtime/size 做缓存命中判断（`C0002c.java:598-601`、`:635`）。**加载的是壁纸，不是专辑封面**。
4. **每帧合成**：`C0007h.m163i()` 用 `C0024o.f524e * f527h` 算归一化进度，做 smoothstep 后设 `setAlpha`，按横竖屏设 `scaleX/scaleY`（1.12/1.0），并 `setRenderEffect(RenderEffect.createBlurEffect(...))`（`C0007h.java:666-710`）。模糊半径与展开进度联动（`C0007h.java:1024-1054`）。
5. **进度源**：`C0024o.m528a(...)` 把"位移 + 速度"积分为 0..1 进度（`C0024o.java:51-75`）；松手判定 `C0024o.m527a(progress, velocity, travel)`（`C0024o.java:35-37`），由 `C0013d.m256a` 在 `onExpandFinish` 时调用（`C0013d.java:317-321`、`:530-566`）。
6. **弹簧动画**：`ChoreographerFrameCallbackC0008i` 用临界阻尼弹簧积分（`m189d`，子步长 0.004s、上限 0.064s），带死区（位移 0.002 / 速度 0.02）自动停帧（`hypermusiccover/ChoreographerFrameCallbackC0008i.java:98-129`、`:169-185`）。实例在 `C0007h.java:893`、`:898` 创建，回调分别驱动模糊比例与进度（`C0007h.java:328-356`）。
7. **配置来源**：`SharedPreferencesC0000a` 是一个"假 SharedPreferences"，底层读 `content://dev.duo.hookprobe.config/iosNc` 并注册 `ContentObserver` 热更新（`hypermusiccover/SharedPreferencesC0000a.java:22-35`、`:52-84`）。参数入口 `C0007h.m150c`（`C0007h.java:1270-1281`）。

**[推断]** 包名 `hypermusiccover` 与代码实际职责不符：全包日志前缀都是 `[MCShade]` / `[MCBlur]` / `[MCGate]` / `[MCHeader]` / `IosNc`，没有一处读取 `MediaSession`/`MediaMetadata`/`largeIcon`（全项目检索 `MediaSessionManager`、`getActiveSessions` 均为 0 命中）。最可能的解释是该包最初为"状态栏音乐封面"设计，最终被复用来做下拉面板的"封面式壁纸层"，类名未重命名。真正与媒体相关的只有两处：`C0023n` 对 `MiuiMediaHeaderView` 的材质处理（`C0023n.java:233-234`、`:173-189`），以及 `C0022m` 把媒体/焦点通知排除出堆叠（`C0022m.java:830-832`、`:235-255`）。

另一处已观察事实：`C0007h.f135j`（日志里被当作"cover"分支的位图）**只有声明和读取、没有赋值**（`C0007h.java:158`、`:809`），因此 `m173o()` 调试串里 `pic=cover` 分支永不出现——是遗留字段。

## 4. 搜索框（`com.android.quicksearchbox`）

职责：把桌面搜索框（`ILauncherOverlay`）的滚动/开合进度**旁路采样**出来，广播给 SystemUI 侧的桌面外壳，用于驱动搜索页动画。

1. `C0148g` 在 `onModuleLoaded` 里 hook `Binder.attachInterface`（`workspaceprobe/C0148g.java:74`），任何 Binder 以 token `com.miui.launcher.overlay.ILauncherOverlay` 注册接口时，记下其类并转去 hook 该类的 `onTransact`（`C0148g.java:25`、`:34-59`、`:63-69`）。
2. `onTransact` 里按 transaction code 解码：`3` = `scroll`（读一个 float，读前先 `setDataPosition` 备份、读完复位）、`8` = `open`（p=1.0）、`7` = `close`（p=0.0）（`C0148g.java:89-107`）。
3. 通过 `ActivityThread.currentApplication()` 发广播 `dev.duo.workspaceprobe.SEARCH` 到 `com.android.systemui`，带 `e`（事件名）与 `p`（进度），并用 `BroadcastOptions.setShareIdentityEnabled(true)` 保证接收方能验明发送方（`C0148g.java:22`、`:110-127`）。
4. 接收方在 `C0143b`：`registerReceiver(new C0178h(), IntentFilter("dev.duo.workspaceprobe.SEARCH"), ..., 2)`（`C0143b.java:12356`）；`C0178h` 只接受 `getSentFromPackage()=="com.android.quicksearchbox"`（`C0143b.java:4713`），随后 `m2390a(e, p)` 更新 `f2178P6` 搜索进度（`C0143b.java:19152-19204`），并参与整体进度乘积 `(1-panel)*(1-recents)*(1-search)`（`C0143b.java:8460`）。

已观察事实：`C0148g` 只在 `scroll` 时做去重（相同 float 直接 return），`open`/`close` 会清空上次值（`C0148g.java:111-117`）。

## 5. system_server 侧 Hook

### 5.1 `C0117s`：显示租约引擎（1056 行）

定位：在 `DisplayManagerService` 里"租"出一块物理显示资源，给外屏/侧栏内容临时点亮与投影，并保证到期归还。

- 反射解析 `DisplayManagerService` / `LogicalDisplay` / `DisplayDevice` / `LocalDisplayAdapter$LocalDisplayDevice` / `SurfaceControlProxy` / `BacklightAdapter` / `DisplayDeviceRepository` / `LogicalDisplayMapper` 等（`hookprobe/C0117s.java:344-398`）。
- 关键前提：先对 7 个方法 `deoptimize`（`setDisplayState`、`run`、`setDisplayBrightness`、`configureDisplayLocked`、`lambda$performTraversalLocked$22`、`performTraversalLocked`、`BinderService.onTransact`），任一失败即整轮回滚并 `NOT_READY`（`C0117s.java:398-451`）。
- 实际 hook 4 处：`SurfaceControlProxy#setDisplayPowerMode`（`:410`）、`BacklightAdapter#setBacklight`（两个重载，`:426-427`）、`LogicalDisplay#configureDisplayLocked`（`:428`）、`IDisplayManager$Stub#onTransact`（`:435`）。
- 对外协议：Binder transaction code `13693511`（`0xD0F0A07`），token `dev.duo.foldanim1.CONTROL`（`C0117s.java:35-38`）；命令码 `0` 状态、`1` 取租约、`2` 延长、`3` 归还、`4` 查询、`11` 背光、`14` 注册就绪回调、`18` 目标内容（`C0117s.java:633-717`、`:611-618`）。调用方 UID 必须是 SystemUI（或 code 9 时 personalassistant）的 uid（`C0117s.java:605-623`）。
- 租约状态机与 TTL 收敛在 `C0122x`（`C0122x.java:142-144` 把 TTL 夹到 200–3000ms）。
- 日志域 `MiDuoFoldLease`，关键事件 `LEASE` / `LEASE_POWER_ON` / `RELEASE_POWER` / `RELEASE_GUARD` / `RELEASED`（`C0117s.java:789`、`:839`、`:955`、`:962`、`:980`）。

### 5.2 `C0118t`：SystemUI 侧"就绪观察"客户端（751 行）

被 `MiDuo.onPackageLoaded` 直接调用两次：

- `C0118t.m1949b(getModuleApplicationInfo().sourceDir)`（`hookprobe/MiDuo.java:143`）——从 APK 的 `assets/fold/curve.properties` 读 `quiet_frames`，构造两个静帧计数器 `C0121w`（普通 / `192` 掩码版），并取 `display` 服务 binder（`C0118t.java:281-300`）。该资源实测存在：`apktool-out/assets/fold/curve.properties` 内含 `open_angle=3`、`close_angle=175`、`reverse_degrees=8`、`release_confirm_ms=20`、`quiet_frames=6`，同目录还有 GLES 着色器 `duo.vert` / `duo.frag`。
- `C0118t.m1962e(this.f1117b)`（`MiDuo.java:145`）——在 SystemUI 进程里注册 Binder 回调（transaction `14`，token 同上，`C0118t.java:247-278`），并给 `C0143b` 挂三个钩子字段：`C6`（重新采样）、`B6`（视图可见性变化）、`A6`（收到目标内容时的帧采样）。
- 采样方式：`registerFrameCommitCallback` + `view.invalidate()`，每次帧提交后用 `C0121w` 判定"画面是否静止"（`C0118t.java:578-595`、`:159-180`），静止达标后用 transaction `18` 把目标内容回传给 `C0117s`（`C0118t.java:399-411`、`:665`）。
- 屏身份变化（内屏/外屏切换）时清空计数器并重新上报（`C0118t.java:331-358`）。

**[推断]** 这两个类的实际用途不是"折叠动画"，而是"折叠屏双屏同亮/侧栏取层"：`C0117s` 的租约含 layerStack、投影、背光、power mode；`C0118t` 的职责是等 SystemUI 画面稳定后再让引擎取层，避免抓到中间帧。`debug.duo.foldanim` 系统属性被写成 `"247"` 或 `"0"`（`MiDuo.java:163`），数值语义未在代码中出现，**[推断]** 是原生动画许可位图。

## 6. 其余混淆类职责表

| 类 | 职责 | 关键证据 |
|---|---|---|
| `dev/duo/hookprobe/C0050G.java` | SystemUI 侧"状态栏高度归零"与电池模糊重放；`MiDuo` 用它做通用 attachFramework 载体 | `C0050G.java:34`、`:269-305`、`:533-548` |
| `dev/duo/hookprobe/C0110l.java` | 纯常量：模块版本 `1.0.415-1-05e92cb34b03`、WM 协议版本 `0.403-fix1-1-ef7dfe872f21` | `C0110l.java:8-11`；被 `MiDuo.java:80` 使用 |
| `dev/duo/hookprobe/C0115q.java` | 开合引擎启动器：hook `SystemUIApplicationImpl#onCreate`，等 `USER_UNLOCKED` 后用 root 起 `app_process --nice-name=MiDuoFoldEngine dev.duo.fold.Engine`；同时提供 ContentProvider `foldStart` 服务端（由 `ConfigProvider` 调用） | `C0115q.java:78`、`:93-105`、`:108-159`；`dev/duo/hookprobe/ConfigProvider.java:177` |
| `dev/duo/hookprobe/C0121w.java` | 静帧/绘制标志计数器（`quiet_frames` 门控），阈值 2–60 | `C0121w.java:47-63`、`:85-92` |
| `dev/duo/hookprobe/C0122x.java` | 租约注册表：面板 id → 租约对象 / 归还守卫对象；TTL 收敛 | `C0122x.java:37-41`、`:142-144`、`:181-189` |
| `dev/duo/hookprobe/C0123y.java` | 首次使用引导与免责声明对话框（文案硬编码），`guide`/`agreedTerms`/`newUserMasterOff` 三个偏好键 | `C0123y.java:24-36`、`:87-197` |
| `dev/duo/hookprobe/C0124z.java` | 桌面小部件位图渲染器（`Canvas`+`TextPaint` 画电量/日历/天气卡片） | `C0124z.java:51`、`:96-124`、`:310-393` |
| `dev/duo/workspaceprobe/C0148g.java` | 搜索框 Binder 旁路采样（见 §4） | `C0148g.java:19-127` |
| `dev/duo/workspaceprobe/C0143b.java` | 桌面/SystemUI 主改造体（1.9 万行级），也是本包所有 hook 的宿主 | `C0143b.java:199`、`:8656-8676` |
| `btm/.../newnotificationcenter/C0014e.java` | 通知中心视觉主体（3561 行）：建时钟容器、清除按钮、头部、遮罩层、滚动接管 | `C0014e.java:1351-1393`、`:1597-1643`、`:2991-3019` |
| `btm/.../newnotificationcenter/C0022m.java` | 通知堆叠取消与滚动范围重算 | `C0022m.java:788-919` |
| `btm/.../newnotificationcenter/C0023n.java` | 行/面板 MIUI 玻璃材质统一（反射 5 个 View 材质 API） | `C0023n.java:33-36`、`:288-405` |
| `btm/.../newnotificationcenter/C0017h.java` | 通知行属性快照/还原（`getSuper*`/`setSuper*`、`getActualHeight` 等） | `C0017h.java:77-109`、`:112-134` |
| `btm/.../newnotificationcenter/C0019j.java` | 锁屏快捷方式宿主 `FrameLayout`，把原生插件内容搬进自绘层 | `C0019j.java:115-138`、`:287-310` |
| `btm/.../newnotificationcenter/C0020k.java` | 快捷方式管理器包装（`MiuiShortcutManager.INSTANCE`、`startShortcutActivity` hook） | `C0020k.java:69-91` |
| `btm/.../newnotificationcenter/C0024o.java` | 面板进度积分器 + 松手开合判定 | `C0024o.java:35-37`、`:51-75` |
| `btm/.../newnotificationcenter/C0015f/C0016g/C0018i/C0021l/C0012c.java` | 偏好键与数值范围（总开关、壁纸来源、头部间距、清除按钮样式、底部位移） | `C0015f.java:7-23`、`C0018i.java:7-95`、`C0021l.java:9-36`、`C0012c.java:10-25` |
| `btm/.../hypermusiccover/C0007h.java` | 外壳主控（1618 行）：建层、进度合成、模糊、圆角、日志 | `C0007h.java:666-710`、`:1405-1449` |
| `btm/.../hypermusiccover/C0002c.java` | 壁纸位图加载与缓存（锁屏/桌面壁纸、`Os.fstat` 比对） | `C0002c.java:583-613` |
| `btm/.../hypermusiccover/C0003d.java` | `View` 背景模糊 API 的反射封装（读回/恢复） | `C0003d.java:44-64`、`:106-116` |
| `btm/.../hypermusiccover/C0004e.java` | 从一堆 `BlurProvider` 里认出"窗口级模糊"那个（按 view==根 / 回调 / maxRadius） | `C0004e.java:28-99` |
| `btm/.../hypermusiccover/C0005f.java` | 面板 alpha 门控：进度 <0.045 隐藏、≥0.1 恢复，6 秒兜底恢复（防止透明面板吃掉触摸） | `C0005f.java:58-63`、`:94-116` |
| `btm/.../hypermusiccover/C0006g.java` | 头部元素偏移（`big_time`/`date_time`/`carrier_container`） | `C0006g.java:15-24`、`:149-180` |
| `btm/.../hypermusiccover/C0009j.java` | 反射工具（`hook`/`m199a`/`m200a`/`m211b`/`m207a`、ClassValue 缓存） | `C0009j.java:110-278` |
| `btm/.../hypermusiccover/SharedPreferencesC0000a.java` | 以 ContentProvider 为后端的 SharedPreferences 替身 | `SharedPreferencesC0000a.java:22-35` |

## 7. 二次开发切入点

1. **想改视觉先改材质层，不要碰骨架**：`C0023n`（行/面板模糊，5 个 `View` API）与 `C0010a`（时钟玻璃 float[42]）是纯参数改写，改完立即生效且失败只打日志不崩；`C0014e.m321a`（22 参数）是样式总入口（`C0014e.java:3241-3287`），`C0007h.m150c` 是从偏好到样式的映射（`C0007h.java:1270-1281`）。
2. **想改交互动力学，动 `C0024o` + `ChoreographerFrameCallbackC0008i`**：前者是进度积分与开合阈值（`C0024o.java:35`、`:51`），后者是弹簧刚度/阻尼（`ChoreographerFrameCallbackC0008i.java:25-31`、`:169-185`）；两处都是纯数值，改错最多表现为手感异常，不影响功能。
3. **想替换背景图，只需替换 `C0007h.m164j()` 的返回源**（`C0007h.java:1187-1195`），或改写 `C0002c` 的加载分支（`C0002c.java:583`）——当前只支持 MIUI 壁纸文件与 `WallpaperManager`。
4. **想加新的 SystemUI 行为，优先挂 `C0013d.m255a` 的 try 块**：每段 hook 都独立 try/catch 并带 `[IOSShade] ... unavailable` 日志（`C0013d.java:62-252`），新增一段失败不会拖垮其它功能，这是全模块最安全的扩展点。
5. **风险点（务必先看）**：`C0013d.m259b` 会调用 `setVisible$2(false)` 延迟隐藏面板（`C0013d.java:462-471`）；`C0005f` 会把面板 alpha 直接设 0（`C0005f.java:69-70`），注释明确写了"alpha 0 仍吃触摸，等于死机"，并加了 6 秒兜底（`C0005f.java:59`）。任何改这两处的改动都要保留兜底逻辑。
6. **配置注入**：SystemUI 侧不要直接 `getSharedPreferences`，走 `SharedPreferencesC0000a`（ContentProvider + `ContentObserver`，`SharedPreferencesC0000a.java:31`、`:52-84`），这样 `duo_top` 与 `iosNc` 两组配置能热更新且无需重启 SystemUI。
7. **`C0117s` / `C0118t` 不适合做通用显示接口**：`C0117s` 要求 7 个方法全部 `deoptimize` 成功才 READY（`C0117s.java:398-451`），且校验调用方 uid 为 SystemUI/personalassistant（`C0117s.java:605-623`）。要复用只能新开 transaction 码并复制同样的 UID 校验，否则会被 `SecurityException` 拒绝。
