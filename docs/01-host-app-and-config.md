# 01 路 模块宿主应用本体与配置/持久化体系

分析对象：`dev.duo.hookprobe`（MiDuo 1.0.415，libxposed 模块，入口 `dev.duo.hookprobe.MiDuo`）。
来源根：jadx 输出 `jadx-out/sources`，apktool 输出 `apktool-out`。行号均按 jadx 产物。
约定：每条结论后标来源；无法由代码直接证实者标 **[推断]**；找不到实现者写「未定位」。

## 1. 概览

模块入口 `MiDuo` 不自己装 hook，而是按进程把生命周期转发给子模块：本进程 → `dev.duo.icons.C0127c`；其它进程（含 system_server）→ `C0050G`；`com.android.systemui` / `com.miui.home` / `com.miui.personalassistant` → `dev.duo.workspaceprobe.C0143b`（任务范围外）；`com.android.quicksearchbox` → `C0148g`；system_server 且开合动画开关打开 → `C0117s`（`dev/duo/hookprobe/MiDuo.java:78-126`、`:154-179`、`:20`）。

本文覆盖宿主侧两类东西：**① 用户可见的 App 本体**（Activity / Widget / 前台服务 / ContentProvider）；**② 配置体系**（`RemotePreferences("duo_top")` 这一份跨进程共享的键值库，加上 App 自身若干普通 `SharedPreferences`）。

配置体系的唯一真源是 `duo_top` 这一 RemotePreferences 组：模块进程通过 `XposedService.getRemotePreferences("duo_top")` 拿到它（`dev/duo/hookprobe/C0056L.java:77`、`dev/duo/hookprobe/C0113o.java:53`），被 hook 的目标进程通过 `XposedModule.getRemotePreferences("duo_top")` 拿到同一份（`dev/duo/hookprobe/C0050G.java:688`、`dev/duo/hookprobe/MiDuo.java:46`）。写操作一律走 `commit()` 而非 `apply()`，失败即返回 false 并回滚（`dev/duo/hookprobe/C0113o.java:332-371`）。[推断] 该组由 LSPosed 框架进程落盘，模块与目标进程都只是远程视图（`io/github/libxposed/service/RemotePreferences.java:39-52`）。

## 2. 组件清单

| 类名 | 职责 | 入口条件 | 源码行 |
|---|---|---|---|
| `MiDuo` | libxposed 入口，按进程分发子模块；读 `_global/foldAnimation` 决定是否加载开合动画 | LSPosed 加载模块 | `dev/duo/hookprobe/MiDuo.java:44-51`、`:78-126` |
| `MainActivity` | 主界面，5 个 tab（首页/App/授权/小功能/UI） | LAUNCHER，`exported=true` | `AndroidManifest.xml:12-17`；`dev/duo/hookprobe/MainActivity.java:2426-2475` |
| `DetailActivity` | 单 App 设置页的转发壳：竖屏内嵌 `C0104f`；宽屏(≥840dp) 直接跳 `MainActivity` 的 App tab 并带 `pkg` | `exported=false`，由 `MainActivity` 点击列表项启动 | `dev/duo/hookprobe/DetailActivity.java:19-54`、`:25-28`；`dev/duo/hookprobe/MainActivity.java:4297` |
| `ColorConfigActivity` | 颜色配置导入/导出（`.miduocolors` 文件、SAF 选择器） | `exported=false`，`MainActivity` 小功能页按钮 | `dev/duo/hookprobe/ColorConfigActivity.java:63`、`:175-213`；`dev/duo/hookprobe/MainActivity.java:3654` |
| `TentClockActivity` | 帐篷钟面（锁屏帐篷姿态下的常亮外屏钟面），`reverseLandscape`、`showWhenLocked` | `exported=false`，`excludeFromRecents` | `AndroidManifest.xml:19`；`dev/duo/hookprobe/TentClockActivity.java:359`、`:437` |
| `StandbyTrialActivity` | 待机/试用页（`sensorLandscape`） | `exported=false` | `AndroidManifest.xml:18`；`dev/duo/hookprobe/StandbyTrialActivity.java:173-226` |
| `IosNcActivity` | iOS 风格通知中心设置页，直接读写 `duo_top` 的 `ios_notification_*` | `exported=false` | `dev/duo/hookprobe/IosNcActivity.java:41-53`、`:71-104`；`dev/duo/hookprobe/MainActivity.java:3061` |
| `RailCustomActivity` | 外屏侧栏自定义（6 格拖放、侧栏 App 列表） | `exported=true` | `AndroidManifest.xml:24`；`dev/duo/hookprobe/RailCustomActivity.java:999`、`:1423-1441`、`:2234` |
| `WidgetCenterActivity` | 小组件中心：预览/添加到桌面/换照片 | `exported=false`，可由 `AlbumWidgetProvider` 的 PendingIntent 带 `appWidgetId` 进入 | `AndroidManifest.xml:95`；`dev/duo/hookprobe/WidgetCenterActivity.java:155`、`:599`、`:665` |
| `InfoWidgetActivity` | 电池/日历/天气小组件预览与 pin | `exported=true`，`type` extra = 0/2/4 | `AndroidManifest.xml:27`；`dev/duo/hookprobe/InfoWidgetActivity.java:170` |
| `AlbumCropActivity` | 相册小组件裁图（缩放/居中三参数 `zoom`/`centerX`/`centerY`） | `exported=false`，`excludeFromRecents` | `dev/duo/hookprobe/AlbumCropActivity.java:31-37`、`:186-221` |
| `AlbumWidgetConfigureActivity` | 相册小组件配置入口，可被 `miduo://widget/album/edit` 深链唤起 | `exported=true`，`Theme.Translucent` | `AndroidManifest.xml:97-104`；`dev/duo/hookprobe/AlbumWidgetConfigureActivity.java:26-54`；深链格式 `dev/duo/hookprobe/C0102d.java:38-40` |
| `AlbumWidgetProvider` | 相册 4×6 小组件，跑在 `:widgetProvider` 独立进程 | `APPWIDGET_UPDATE` / `miui.appwidget.action.APPWIDGET_UPDATE` / 自定义 `ALBUM_REFRESH` | `AndroidManifest.xml:105-114`；`dev/duo/hookprobe/AlbumWidgetProvider.java:25`、`:107-131` |
| `AlbumPageJob` | 把小组件「设为第 1 页」，`JobService`，`BIND_JOB_SERVICE` | 由 `AlbumWidgetProvider` 调度（jobId 41201） | `AndroidManifest.xml:115`；`dev/duo/hookprobe/AlbumPageJob.java:29-41`、`:78` |
| `InfoWidgetProvider` | 电池/日历/天气 6 个 2×2、4×2 小组件基类 + 6 个静态子类 | 6 个 receiver，均带 `miuiWidget` 元数据 | `AndroidManifest.xml:35-94`；`dev/duo/hookprobe/InfoWidgetProvider.java:33-59` |
| `BugCaptureActivity` | Bug 抓取界面（选择导出文件、开始/停止） | `exported=false` | `dev/duo/hookprobe/BugCaptureActivity.java:106-220` |
| `BugCaptureService` | 前台服务（`shortService`），跑 `logcat`/抓取脚本，结果写 `bug_capture` prefs | `startForegroundService` 或 `STOP_BUG_CAPTURE` 动作 | `AndroidManifest.xml:23`；`dev/duo/hookprobe/BugCaptureService.java:42-66`、`:167`、`:382` |
| `ConfigProvider` | `authority=dev.duo.hookprobe.config`，`exported=true` 的**唯一**跨进程配置/取色 RPC 入口，只实现 `call()` | `ContentResolver.call()`；`onCreate` 注册 `C0056L` | `AndroidManifest.xml:118`；`dev/duo/hookprobe/ConfigProvider.java:153`、`:538-541` |
| `RootCompatCleanup` | 独立 `main()` 工具：以 root 调用 `IPlatformCompat.removeAllOverridesOnReleaseBuilds` 清 4 条兼容规则 | 只能被 `app_process` 以 root 启动，需 uid 0 | `dev/duo/hookprobe/RootCompatCleanup.java:22-56` |
| `RootTaskRecompute` | 独立 `main()` 工具：root 下重算 task `appBounds` / 重启 top activity | 同上；被 `C0112n` 直接以静态方法复用 | `dev/duo/hookprobe/RootTaskRecompute.java:54-77`；`dev/duo/hookprobe/C0112n.java:903`、`:924` |
| `C0050G` | **其它进程**的钩子集合（SystemUI 状态栏高度、微信密度、抖音视频适配、`debug.duo.master` 读取） | `MiDuo` 无条件 `attachFramework` + `onModuleLoaded` | `dev/duo/hookprobe/MiDuo.java:96-102`；`dev/duo/hookprobe/C0050G.java:245-355`、`:213-224` |
| `C0117s` | system_server 侧开合动画许可（`debug.duo.foldanim`） | 仅 `_global/foldAnimation=true` | `dev/duo/hookprobe/MiDuo.java:161-178`；`dev/duo/hookprobe/C0117s.java:304` |

### 2.1 其余 `C00xx` 混淆类职责判定

| 类 | 判定职责 | 依据 |
|---|---|---|
| `C0041A` | 小组件数据源：从 SystemUI 拉电池/日历/天气 Bundle 并归一化字段 | `dev/duo/hookprobe/C0041A.java:45`、`:197`、`:245`；`dev/duo/hookprobe/InfoWidgetActivity.java:38-40` |
| `C0043B` | 授权/试用服务端客户端（证书固定、`/v1/device/hello`、`/v1/orders`） | `dev/duo/hookprobe/C0043B.java:88-106`、`:132-145` |
| `C0044C` | 已安装 App 枚举 + 桌面 DB 读取（`favorites`/`screens`） | `dev/duo/hookprobe/C0044C.java:78`、`:159`；`dev/duo/hookprobe/MainActivity.java:4753` |
| `C0047D` | 外屏密度 hook（`DuoOuterDensity` tag） | `dev/duo/hookprobe/C0047D.java:26`；`dev/duo/hookprobe/C0050G.java:700` |
| `C0048E` | 尺寸常量表（1168/1712/963） | `dev/duo/hookprobe/C0048E.java:8-14` |
| `C0049F` | 取色会话状态机（内存态 `f826b`/`f827c` + `notifyChange`），颜色近似比较 | `dev/duo/hookprobe/C0049F.java:24-30`、`:68-70` |
| `C0051H` | 资源 ID 常量表（`R.id`/`R.layout`/`R.drawable`） | `dev/duo/hookprobe/C0051H.java:11-14` |
| `C0052I` | 快捷开关（screenshot/torch/...）ID 白名单 + 图标加载 | `dev/duo/hookprobe/C0052I.java:26`、`:32` |
| `C0054J` | 侧栏编码/解码工具（`f924g` 默认 `back,home,recents,dock,dock,dock,-`；`f922e` 空位 `-`） | `dev/duo/hookprobe/C0054J.java:27-33`、`:146` |
| `C0055K` | system_server 比例门（`DuoRatioGate`，按兼容规则号判断） | `dev/duo/hookprobe/C0055K.java:18-30`；`dev/duo/hookprobe/C0050G.java:358` |
| `C0056L` | **配置变更广播中枢**：持有 `XposedService`，注册 prefs 监听，按 key 路由 `notifyChange` | `dev/duo/hookprobe/C0056L.java:25-58`、`:74-93`、`:125-165` |
| `C0057M` | root 命令执行封装（30s 超时、16MB 上限、`MiDuoRootRead` 线程） | `dev/duo/hookprobe/C0057M.java:30` |
| `C0069N` | 圆形进度 `Drawable`（授权页试用环） | `dev/duo/hookprobe/C0069N.java:44`；`dev/duo/hookprobe/MainActivity.java:826-874` |
| `C0070O` | MTZ 图标导入对话框 | `dev/duo/hookprobe/C0070O.java:29`、`:65` |
| `C0071P` | **配置键常量与默认值/夹取规则总表**（本文配置键的主要来源） | `dev/duo/hookprobe/C0071P.java:22-217`、`:490-495`、`:566` |
| `C0072Q` | `InsetsState`/`DisplayCutout` 反射桥 | `dev/duo/hookprobe/C0072Q.java:58` |
| `C0083S` | 试用计时器（亮屏且开关打开才计时） | `dev/duo/hookprobe/C0083S.java:38-43`；`dev/duo/hookprobe/C0114p.java:186` |
| `C0087T` | **UI 工具与导航栏**：`m1412a` 造 5-tab 底栏，`d` 类算横竖屏/边距 | `dev/duo/hookprobe/C0087T.java:1400-1468`、`:1043-1092` |
| `C0094U` | 微信密度 hook（`DuoWeChatDensity`） | `dev/duo/hookprobe/C0094U.java:26`、`:47`；`dev/duo/hookprobe/C0050G.java:809` |
| `C0095V` | Bundle → JSON（`widget396Probe` 调试用） | `dev/duo/hookprobe/C0095V.java:21` |
| `C0099a` | 相册裁图手势 View | `dev/duo/hookprobe/C0099a.java:152`、`:170`；`dev/duo/hookprobe/AlbumCropActivity.java:52` |
| `C0100b` | 桌面 DB 写回（`widget_page_pending`、`update favorites set screen=...`） | `dev/duo/hookprobe/C0100b.java:29`、`:41` |
| `C0101c` | 相册图片落盘（`files/album/<id>.jpg`、`latest.jpg`） | `dev/duo/hookprobe/C0101c.java:30`、`:35` |
| `C0102d` | 深链/几何工具（`miduo://widget/album/edit?miuiWidgetId=`） | `dev/duo/hookprobe/C0102d.java:38-44` |
| `C0103e` | 位图圆角裁切 | `dev/duo/hookprobe/C0103e.java:18` |
| `C0104f` | **单 App 详情设置面板**（缩放/顶部避让/侧栏色/页面取色），`DetailActivity` 与 `MainActivity` 宽屏共用；内部抽象行基类 `f` + 两个实现 `d`（缩放）/`e`（顶部避让） | `dev/duo/hookprobe/C0104f.java:376`、`:240`、`:294`、`:1061-1078`；`dev/duo/hookprobe/MainActivity.java:1597` |
| `C0105g` | 已装 App 列表补充枚举（`dev.duo.hookprobe` 自身过滤） | `dev/duo/hookprobe/C0105g.java:16` |
| `C0106h` | 抖音内外屏视频适配 hook（`DuoAwemeFit`） | `dev/duo/hookprobe/C0106h.java:26`、`:92`；`dev/duo/hookprobe/C0050G.java:754` |
| `C0107i` | 授权协议常量与 token 验签（`_global/licenseToken`、`_global/trialUsedSec`、服务端 `https://117.72.175.180:18790`） | `dev/duo/hookprobe/C0107i.java:20`、`:29-32`、`:64` |
| `C0108j` | root 抓包输出流协议（`MIDUO_CAPTURE_ROOT_READY`） | `dev/duo/hookprobe/C0108j.java:14`、`:20` |
| `C0109k` | 抓 Bug 用的 shell 脚本常量（快照/环形日志/正则） | `dev/duo/hookprobe/C0109k.java:8-11` |
| `C0110l` | 版本常量 `1.0.415-1-05e92cb34b03`、`0.403-fix1-1-ef7dfe872f21` | `dev/duo/hookprobe/C0110l.java:8-11` |
| `C0111m` | 颜色配置导入导出（`.miduo.colors` Properties、`_railPalette/`、`/pageColors/`） | `dev/duo/hookprobe/C0111m.java:24`、`:30` |
| `C0112n` | system_server 侧「缩放变更 App 重启/任务重算」 | `dev/duo/hookprobe/C0112n.java:49`、`:903-925` |
| `C0113o` | **配置读写门面**（`C0113o(XposedService)` 包一层 `duo_top`），所有 getter/setter 在此 | `dev/duo/hookprobe/C0113o.java:52-54`、`:56-934` |
| `C0114p` | 授权状态轮询（60s/600s 两级，广播接收） | `dev/duo/hookprobe/C0114p.java:23-29`、`:186` |
| `C0115q` | 开合引擎启动（root 起 `MiDuoFoldEngine`、SystemUI 解锁后触发） | `dev/duo/hookprobe/C0115q.java:76`、`:108`、`:129` |
| `C0116r` | 桌面/侧栏布局枚举 + `MiDuoFoldPreflight` 预检 | `dev/duo/hookprobe/C0116r.java:90`、`:232` |
| `C0118t` | 开合动画运行时（`MiDuoFold`/`MiDuoFoldLease`） | `dev/duo/hookprobe/C0118t.java:247`、`:399` |
| `C0119u` | 显示/窗口 Parcel 结构封装（`width`/`height`/`rotation`/`wallpaperId` 等） | `dev/duo/hookprobe/C0119u.java:159`、`:214` |
| `C0120v` | 开合动画机型/桌面版本白名单（`OS4.0.22/21/26.0.XPNCNXM` + 桌面 `801026325`） | `dev/duo/hookprobe/C0120v.java:14` |
| `C0121w` | 手势/帧节流器（阈值 72 等） | `dev/duo/hookprobe/C0121w.java:34`、`:39` |
| `C0122x` | 折叠事件缓存与判定（200ms/3000ms/0.95/700ms） | `dev/duo/hookprobe/C0122x.java:14-26` |
| `C0123y` | **首次使用条款对话框** + `guide` prefs + 总开关默认值落定 | `dev/duo/hookprobe/C0123y.java:24-36`、`:42-92`、`:183-194` |
| `C0124z` | 小组件位图绘制（电池/日历/天气，400×158 / 854×338） | `dev/duo/hookprobe/C0124z.java:27`、`:51` |

## 3. 配置键总表

### 3.1 `RemotePreferences("duo_top")` — `_global/*`（组名常量 `duo_top`，`dev/duo/hookprobe/C0071P.java:85`）

| 键名 | 类型 | 默认值 | 语义 | 读取位置 |
|---|---|---|---|---|
| `_global/master` | bool | 缺省时 `!getAll().isEmpty()` | MiDuo 总开关；也决定 `debug.duo.master` | `dev/duo/hookprobe/C0071P.java:490-495`、`dev/duo/hookprobe/C0050G.java:213-224` |
| `_global/licenseToken` | string | null | 买断授权令牌（验签后才认） | `dev/duo/hookprobe/C0107i.java:29`、`dev/duo/hookprobe/C0043B.java:132-145` |
| `_global/trialUsedSec` | int | 0 | 试用已用秒数，上限 1800 | `dev/duo/hookprobe/C0107i.java:32`、`dev/duo/hookprobe/ConfigProvider.java:564-573` |
| `_global/innerNativeBar` | bool | false | 内屏显示原厂顶栏（可被 `<pkg>/innerNativeBar` 覆盖） | `dev/duo/hookprobe/C0113o.java:123`、`dev/duo/hookprobe/C0071P.java:402-404` |
| `_global/outerHideTop` | bool | false | 外屏隐藏未开 Duo App 的原生状态栏 | `dev/duo/hookprobe/C0113o.java:138`、`dev/duo/hookprobe/C0071P.java:386-399` |
| `_global/nonDuoOuterTopPx` | int | 126 | 未开 Duo App 外屏顶部留白，夹取 1..126 | `dev/duo/hookprobe/C0113o.java:229`、`dev/duo/hookprobe/C0071P.java:242` |
| `_global/railColor` | string | `white` | 外屏侧栏底色 `white`/`black` | `dev/duo/hookprobe/C0113o.java:175`、`dev/duo/hookprobe/C0071P.java:598` |
| `_global/railFollowDark` | bool | false | 侧栏颜色跟随深浅模式 | `dev/duo/hookprobe/C0113o.java:272`、`dev/duo/hookprobe/C0071P.java:437` |
| `_global/railCustom` | string | null（移除即默认） | 外屏侧栏 6 格布局编码，默认 `back,home,recents,dock,dock,dock,-` | `dev/duo/hookprobe/C0113o.java:180`、`dev/duo/hookprobe/C0054J.java:33` |
| `_global/railSidebarApps` | string | null | 侧栏自定义 App 列表（编码串） | `dev/duo/hookprobe/C0113o.java:375`、`:418` |
| `_global/railPanelOrder` | string | `""` | 侧栏面板顺序（编码串） | `dev/duo/hookprobe/ConfigProvider.java:232-236` |
| `_global/railSidebarFreeform` | bool | true | 侧栏「自由窗口」入口 | `dev/duo/hookprobe/C0113o.java:185` |
| `_global/railSidebarKeyEnd` | bool | false | 侧栏按键放末尾 | `dev/duo/hookprobe/C0113o.java:190` |
| `_global/screenOffTimeoutSaved` | int | 0（0=删除键） | 保存的息屏超时（供 SystemUI 读） | `dev/duo/hookprobe/ConfigProvider.java:210-220` |
| `_global/rotationSuggest` | bool | false | 关闭自动旋转时显示「旋转建议」按钮 | `dev/duo/hookprobe/C0113o.java:195`、`:448` |
| `_global/rotationPortraitRight` / `_global/rotationLandscapeRight` | bool | false | 竖屏 / 横屏建议方向为右 | `dev/duo/hookprobe/C0113o.java:900-905` |
| `_global/standbyClock` | bool | false | 帐篷钟面开关（写时有回滚保护） | `dev/duo/hookprobe/C0113o.java:207`、`:332-371` |
| `_global/notificationIcons` | bool | true | 时间模块下显示通知图标 | `dev/duo/hookprobe/C0113o.java:438` |
| `_global/searchButton` | bool | true | 内外屏右下角搜索按钮 | `dev/duo/hookprobe/C0113o.java:200` |
| `_global/pickButton` | bool | false | 取色按钮（贴侧栏搜索键头顶） | `dev/duo/hookprobe/C0113o.java:599` |
| `_global/foldAnimation` | bool | false | 开合动画（实验性），另写系统属性 `debug.duo.foldanim` | `dev/duo/hookprobe/C0113o.java:503`、`dev/duo/hookprobe/MiDuo.java:161-167` |
| `_global/foldSplit` | bool | true | 轻折分屏（与 `foldAnimation` 互斥） | `dev/duo/hookprobe/C0113o.java:408`；互斥见 `dev/duo/hookprobe/MainActivity.java:1648` |
| `_global/foldNudge` | int | 1 | 轻折灵敏度 0/1/2，夹取 0..2 | `dev/duo/hookprobe/C0113o.java:614` |
| `_global/workbench` | bool | true | 内屏横放右下角拖入工作台 | `dev/duo/hookprobe/C0113o.java:63` |
| `_global/cellularStyle` | bool | true | 5G 新样式（圆环内信号格） | `dev/duo/hookprobe/C0113o.java:493` |
| `_global/statusThin` | bool | false | 时钟线条「细」 | `dev/duo/hookprobe/C0113o.java:58` |
| `_global/percentTop` | bool | true | 电量百分比显示在顶部 | `dev/duo/hookprobe/C0113o.java:619` |
| `_global/statusDy/<名>` | int | 0，夹取 -60..60 | 时钟模块位置，7 个名：`outerDesk,outerApp,innerLand,innerPort,lockOuter,lockInnerLand,lockInnerPort` | `dev/duo/hookprobe/C0071P.java:217`、`dev/duo/hookprobe/C0113o.java:594`、`:895` |
| `_global/outerScale` | int | 90，夹取 60..100 | 外屏页面缩放全局百分比 | `dev/duo/hookprobe/C0071P.java:530`、`:566`、`dev/duo/hookprobe/C0113o.java:78` |
| `_global/defaultPx` | int | 126，夹取 1..126 | 顶部避让高度全局值 | `dev/duo/hookprobe/C0113o.java:380`、`dev/duo/hookprobe/C0071P.java:523-526` |
| `_global/defaultPxInner` / `_global/defaultPxOuter` | int | 126 | 内/外屏顶部避让默认值 | `dev/duo/hookprobe/C0071P.java:154-157`、`:523-526` |
| `_global/allAppsEnabled` | bool | false | 「全部 App 开启 Duo」 | `dev/duo/hookprobe/C0113o.java:910`、`:635` |
| `_global/allAppsSeen` | stringset | 空 | 已处理过的包名集合 | `dev/duo/hookprobe/C0113o.java:544-546`、`:433` |
| `_global/defaultEnabled` | bool | false | 「新应用默认开 Duo」 | `dev/duo/hookprobe/C0113o.java:390`、`:498` |
| `_railPalette/<id>` | string | — | 侧栏配色对 `"RRGGBB,RRGGBB"`（浅,深） | `dev/duo/hookprobe/C0113o.java:846`、`dev/duo/hookprobe/C0071P.java:124` |

### 3.2 按包名分组的键（无 `_global/` 前缀，第一段是包名，`dev/duo/hookprobe/C0071P.java:313-317`）

| 键名 | 类型 | 默认值 | 语义 | 读取位置 |
|---|---|---|---|---|
| `<pkg>/enabled` | bool | `securitycenter`/`safetycenter` 为 true，其余 false | 该 App 是否启用 Duo；`f1171i` 三包（quicksearchbox/camera/miui.systemui.plugin）强制不启用 | `dev/duo/hookprobe/C0071P.java:412-414`、`:295-300`、`:166` |
| `<pkg>/topSafePx` | int | 126 | 旧版单值顶部避让（兼容读取） | `dev/duo/hookprobe/C0071P.java:285-287`、`:503-505` |
| `<pkg>/topSafePxInner` / `topSafePxOuter` | int | 126 | 内/外屏顶部避让 | `dev/duo/hookprobe/C0071P.java:485-487`、`:543-545` |
| `<pkg>/innerNativeBar` | bool | 回落 `_global/innerNativeBar` | 该 App 内屏原生顶栏 | `dev/duo/hookprobe/C0071P.java:272-274`、`:402-404` |
| `<pkg>/outerHideTop` | bool | 回落 `_global/outerHideTop` | 该 App 外屏隐藏原生状态栏 | `dev/duo/hookprobe/C0071P.java:290-292`、`:386-399` |
| `<pkg>/outerScale` | int | 回落 `_global/outerScale`(90) | 该 App 外屏缩放百分比 | `dev/duo/hookprobe/C0071P.java:349-356`、`:417-419` |
| `<pkg>/railColor` | string | 回落 `_global/railColor` | 该 App 侧栏底色 | `dev/duo/hookprobe/C0071P.java:331-333`、`:441-447` |
| `<pkg>/railPalette` | string | null | 该 App 选用的 `_railPalette/<id>` | `dev/duo/hookprobe/C0071P.java:344-346`、`:422-428` |
| `<pkg>/pageColors/_revision` | long | 0 | 页面配色版本号（写前做乐观锁） | `dev/duo/hookprobe/C0113o.java:161-168`、`dev/duo/hookprobe/ConfigProvider.java:99-101` |
| `<pkg>/pageColors/<base>` | string | — | 页面 → 基色 `dark/XXXXXX` / `light/XXXXXX` | `dev/duo/hookprobe/C0113o.java:709`、`:722` |
| `<pkg>/pageColors/_color/<hex>` | int | — | 基色 → ARGB | `dev/duo/hookprobe/C0113o.java:722`、`:785` |
| `<pkg>/pageColors/_base/<名>` | string | — | 默认色采集页绑定 | `dev/duo/hookprobe/C0113o.java:687`、`:312-313` |
| `<pkg>/pageColors/_edge/<名>` | int | — | 页面边缘色（用于同页判定，容差 12/通道） | `dev/duo/hookprobe/C0113o.java:687`、`dev/duo/hookprobe/C0049F.java:68-70` |
| `<pkg>/pageColors/_label/<名>` | string | `默认色采集页` / `页面 N` | 页面显示名 | `dev/duo/hookprobe/C0113o.java:688-690`、`:718` |
| `com.ss.android.ugc.aweme/outerVideoFit` | bool | true | 抖音外屏视频适配 | `dev/duo/hookprobe/C0071P.java:106`、`dev/duo/hookprobe/C0113o.java:68` |
| `com.ss.android.ugc.aweme/innerVideoFit` | bool | true | 抖音内屏视频适配 | `dev/duo/hookprobe/C0071P.java:112`、`dev/duo/hookprobe/C0113o.java:68` |
| `com.ss.android.ugc.aweme/innerHideTop` / `outerHideTop` | bool | 回落 `_global/outerHideTop` | 抖音内外屏隐藏顶栏 | `dev/duo/hookprobe/C0071P.java:228-230` |
| `ios_notification_*` | bool/int/float/long/string | 见 3.3 | iOS 风格通知中心全部参数，按前缀整体下发 | `dev/duo/hookprobe/C0113o.java:567`、`dev/duo/hookprobe/ConfigProvider.java:237-254` |

### 3.3 `ios_notification_*` 明细（34 个键 + 1 个前缀 `ios_notification_clock_glass_`）

路径前缀 `btm/p000m/os4/systemuihook/newnotificationcenter/`（下表简写 `NC/`）。

| 键名 | 归属 | 语义 |
|---|---|---|
| `ios_notification_center` | `NC/C0015f.java:8` | 通知中心总开关 |
| `ios_notification_wallpaper` | `NC/C0015f.java:11` | 壁纸来源（0 锁屏壁纸 / 2 不显示） |
| `ios_notification_hide_clear` | `NC/C0015f.java:14` | 隐藏原「清除」按钮 |
| `ios_notification_header` | `NC/C0018i.java:8` | 头部开关 |
| `ios_notification_clear_style` / `_material` / `_radius` / `_pure_color` | `NC/C0018i.java:11-20` | 清除按钮样式/材质/圆角/纯色 |
| `ios_notification_clear_advanced_color` / `_opacity` / `_blur` / `_highlight` | `NC/C0018i.java:23-32` | 高级材质四参数 |
| `ios_notification_clear_soft_color` / `_opacity` / `_backdrop_blur` / `_blur` / `_luminance` / `_refraction` | `NC/C0018i.java:35-50` | 柔光材质六参数 |
| `ios_notification_header_content_mode` / `_text` / `_icon` / `_builtin_icon` / `_icon_scale` / `_text_scale` / `_icon_text_spacing` | `NC/C0018i.java:53-71` | 头部内容与排版 |
| `ios_notification_header_gap_dp` | `NC/C0016g.java:8` | 头部间距 |
| `ios_notification_bottom_offset_dp` | `NC/C0012c.java:10` | 底部偏移，夹取 -40..120（`NC/C0012c.java:15-25`） |
| `ios_notification_clock_glass_enabled` / `_refraction_blur` / `_background_blur` / `_background_scale` / `_background_opacity` | `NC/C0010a.java:24-36` | 时钟玻璃材质 |
| `ios_notification_shortcuts` / `_shortcuts_bottom_offset_dp` | `NC/C0021l.java:10-13` | 锁屏快捷方式 |

其中 `C0113o` 只对 4 个键强置 true（`hide_clear`、`header`、`clear_advanced_highlight`、`clock_glass_enabled`），对 `ios_notification_shortcuts` 强置 false，并清理其余未知 `ios_notification_` 前缀键（`dev/duo/hookprobe/C0113o.java:35-41`、`:560-585`）。

### 3.4 普通 `SharedPreferences`（各自独立文件，**不跨进程**）

| 文件名 | 键 | 类型 | 语义 | 读取位置 |
|---|---|---|---|---|
| `duo_top` | 见 3.1–3.3 | — | RemotePreferences 组名 | `dev/duo/hookprobe/C0071P.java:85` |
| `guide` | `agreedTerms` | int | 已同意条款版本（≥1 视为已同意） | `dev/duo/hookprobe/C0123y.java:27`、`:43` |
| `guide` | `newUserMasterOff` | bool | 新用户首次落定总开关时置为关 | `dev/duo/hookprobe/C0123y.java:30`、`:76-77`、`:186` |
| `billing` | `order` | string | 待轮询的订单号 | `dev/duo/hookprobe/MainActivity.java:3728-3736`、`:4580` |
| `billing` | `key` | string | 服务端下发的授权码明文（换机用） | `dev/duo/hookprobe/MainActivity.java:3740`、`:3749` |
| `bug_capture` | `status` / `file` / `capturing` / `ring` | string/string/bool/bool | 抓取状态、导出文件、是否进行中、环形日志开关 | `dev/duo/hookprobe/BugCaptureService.java:66-72`、`:167`、`:205`、`:382`；`dev/duo/hookprobe/BugCaptureActivity.java:214`、`:263` |
| `tent_clock` | `face` | int | 帐篷钟面样式索引 | `dev/duo/hookprobe/TentClockActivity.java:359`、`:437` |
| `album_widget` | `layout_b_<widgetId>` | bool | 该小组件是否用 B 版布局 | `dev/duo/hookprobe/AlbumWidgetProvider.java:37`、`:142`、`:191-193`、`:209-211` |
| `state`（`dev.duo.icons` 侧） | `nonce` / `nonceAt` | string/long | 图标 StageProvider 一次性 nonce（2 分钟有效） | `dev/duo/icons/C0125a.java:137`；校验 `dev/duo/icons/StageProvider.java:46-47` |
| AppWidget options（非 prefs） | `miuiEditUri` | string | 相册小组件深链，供桌面「编辑」入口 | `dev/duo/hookprobe/AlbumWidgetProvider.java:202-205`；生成 `dev/duo/hookprobe/C0102d.java:38-40` |

## 4. 跨进程同步机制

三条通道并行，职责不同：

1. **RemotePreferences（配置真源）**。模块进程 `C0056L` 通过 `XposedServiceHelper` 绑定 LSPosed 服务（`dev/duo/hookprobe/C0056L.java:69-102`、`:113-121`），绑定成功后 `getRemotePreferences("duo_top").registerOnSharedPreferenceChangeListener(...)`（`:77`）。被 hook 的进程侧各自 `XposedModule.getRemotePreferences("duo_top")` 得到同一份数据（`dev/duo/hookprobe/C0050G.java:688`、`dev/duo/hookprobe/MiDuo.java:46`）。写入方一律 `commit()`，`RemotePreferences.Editor.commit()` 走 `buildCommitBundle()` → 框架侧 RPC → 本地 `doUpdate()` 乐观更新（`io/github/libxposed/service/RemotePreferences.java:189`、`:225`、`:252-258`）。[推断] 因此「改一个键」在框架侧是整表回写，高频拖动 seekbar 时应做节流——代码里确有 `f1027d1` 等 Runnable 做延迟落盘（`dev/duo/hookprobe/MainActivity.java:292`、`:894-899`）。

2. **`ConfigProvider.call()`（RPC + 变更广播）**。`authority=dev.duo.hookprobe.config`、`exported=true`、只实现 `call()`（`dev/duo/hookprobe/ConfigProvider.java:153`、`:522-551`）。方法名分两类：
   - 读取类（SystemUI / shell 可用）：`duoState`、`railCustom`、`railSidebarApps`、`railPanelOrder`、`statusStyles`、`rotationSuggest`、`notificationIcons`、`searchButton`、`pickButton`、`foldSplit`、`standbyClock`、`workbench`、`keepScreen`、`iosNc`、`pageTones`、`list`、`get`（`dev/duo/hookprobe/ConfigProvider.java:188-189`、`:204-296`、`:498-505`）。
   - 特权类：`pickState`/`pickConfirm`（取色会话，需 owner 或 SystemUI，`dev/duo/hookprobe/ConfigProvider.java:31-142`）、`foldStart`（仅 SystemUI，`:176-178`）、`trialTick`/`duoState`（仅 `uid==1000`，`:554-624`）、`widget396Probe`（仅 shell/root `2000`，`:160-175`）。
   - 权限模型：`callingUid == systemui.uid` 或 `== myUid` 或 `== 0` 或 `== 2000`；否则要求 `--arg` 包名与本 uid 匹配，且只允许 `pickState` 写（`dev/duo/hookprobe/ConfigProvider.java:34-47`）。

3. **`ContentResolver.notifyChange` 变更广播**。`C0056L` 的 prefs 监听把每个变化的键**路由**到一组固定 URI（`content://dev.duo.hookprobe.config/{duoState,duoRail,rotationSuggest,standbyClock,notificationIcons,searchButton,pickButton,foldSplit,workbench,statusStyles,railCustom,iosNc}`，`dev/duo/hookprobe/C0056L.java:25-58`），映射规则在 `:125-165`；`standbyClock` 有一层 `f1683i` 抑制位防止自触发回环（`:134`、`dev/duo/hookprobe/C0113o.java:336-341`）。另有一类按包名的 URI：`pageTones/<pkg>`（`:161-164`）与 `duoRail/<pkg>`（`:128-129`）。取色会话另有独立 URI `content://dev.duo.hookprobe.config/pickState`（`dev/duo/hookprobe/C0049F.java:12`、`:28`、`:63`）。

**时序**：App 内改动 → `C0113o` 写 `duo_top` → LSPosed 回推变更 → `C0056L` 收到 → `notifyChange` → SystemUI/桌面侧 `ContentObserver` 重读 `ConfigProvider.call(...)` 或自己的 `getRemotePreferences`。读取方不缓存，每次 `call()` 现建 `new C0113o(xposedService)`（`dev/duo/hookprobe/ConfigProvider.java:202`）。**注意**：`ConfigProvider` 的读取结果里 `hiddenTop`、`railColor` 等是**计算后的派生值**而非原始键（`:307-314`）。

## 5. 主要界面与交互

底部导航 5 项，标签与索引映射不是顺序的：`strArr = {"首页","App","授权","小功能","UI"}`、`f1327K = {0,1,3,4,2}`（`dev/duo/hookprobe/C0087T.java:1411`、`:90`）。5 个页面视图在 `onCreate` 里按 `f1053r[0..4]` 顺序装配（`dev/duo/hookprobe/MainActivity.java:2432-2436`），切换由 `m1155n(int)` 控制可见性（`:2675-2692`）。宽屏（`f1398e`，宽度 ≥840dp）走双栏布局（`dev/duo/hookprobe/C0087T.java:1055`、`dev/duo/hookprobe/MainActivity.java:2594-2606`）。

**首页**（`m1093e`，`dev/duo/hookprobe/MainActivity.java:2545`）：标题 `MiDuo`（点击跳授权 tab，`:3648`）→ 总开关卡（`f972C`，附「桌面 4×6 / 外屏比例 9:16 / 侧栏」三项指标，`:1768-1804`、`:1553-1564`）→「顶部避让高度」seekbar + 1/75/126 三个快捷值（`:2129-2167`）→「外屏页面缩放」seekbar 60–100%（`:1467-1482`）→「外屏侧栏颜色」白/黑/跟随（`:1104-1124`）→「诊断信息」可折叠（LSPosed/作用域/系统/桌面/助理/MiDuo/开合动画，`:2798-2875`）→「图标」（MTZ 导入，`:2706`）→「使用说明」（`:2105`）。

**App 页**（`m1086d`，`:3413`）：搜索框（`:3431-3443`）+「全部 App 开启 Duo」(`f987J0`，`:3450-3463`）+「新应用默认开 Duo」(`f989K0`，`:3199-3233`）+「外屏非 Duo 顶栏」(`f1002R`，`:971`）+「内屏原生顶栏」(`f1010V`，`:2730`）+ 过滤分段 `{"全部","已开","单独设置","未开"}`（`f961e`，`:881`；控件 `:3476-3487`）+ `ListView`（`:3488-3505`）。宽屏时左侧固定 316dp 列表、右侧嵌 `C0104f` 详情（`:3509-3516`、`:1597`）。

**授权页**（`m1100f` → `m988K`，`:3658`、`:1172-1345`）：已买断卡（授权码可复制，`:1198-1240`）/ 试用中环形进度（`C0069N`，`:1248`）/ ¥49.9 + 立即购买（`:1263-1280`）/「输入授权码」（`:1288-1298`）。数据来自 `C0043B` 服务端 + `billing`/`duo_top`（`:3718-3756`）。

**小功能页**（`m1114h`，`:3606-3621`，按装配顺序）：小组件（`:1888`，跳 `WidgetCenterActivity` `:2196`）→ 外屏 App 内侧栏自定义（`:1127`，跳 `RailCustomActivity` `:3923`）→ iOS 风格通知中心（`:2765`，跳 `IosNcActivity` `:3061`）→ 旋转建议按钮（`f1000Q`，`:1442`，含竖/横屏左右方向 `:1401-1439`）→ 取色按钮（`f1016Y`，`:1068`）→ 颜色配置（导入/导出，`:3101-3140`）→ 工作台（`f1024c0`，`:1915`）→ 轻折分屏（`f1018Z` + 灵敏度三档「灵敏/标准/稳定」，`:2000-2060`）→ 帐篷钟面（`f994N`，`:1725`）→ 开合动画（`f1020a0`，`:1959`，含机型白名单提示 `dev/duo/hookprobe/C0120v.java:14`）。

**UI 页**（`m1107g`，`:3322-3348`）：时钟线条「细/粗」→ 电量百分比「下方/顶部」→「5G 新样式」(`f1022b0`，`:2876`）→「通知图标」(`f1012W`，`:936`）→「搜索按钮」(`f1014X`，`:1485`）→「时钟模块位置」7 条 seekbar（`:1807-1848`，名称数组 `:1833`）。

**开关启用条件**：所有 `Switch` 初始 `setEnabled(false)`，由 `m995R()` 统一按「LSPosed 已连 + 系统框架已加载 + 试用未结束 + 非刷新中」置为可用（`dev/duo/hookprobe/MainActivity.java:1521-1580`、`:1538`、`:1565`）。每次写入后统一 `m997T()` 回读刷新（`:1612-1650`）。

**首次启动**：`onCreate` 末尾 `C0123y.m2042b(this)` 弹条款对话框；不同意直接 `finish()`（`dev/duo/hookprobe/MainActivity.java:2474`、`dev/duo/hookprobe/C0123y.java:86-92`、`:176-179`）。

## 6. 二次开发切入点

### 6.1 如何新增一个「全局开关」（以 `<feature>` 为例）

必须改的文件，按数据流顺序：

1. **`dev/duo/hookprobe/C0071P.java`** — 加键常量（如 `static final String fXXXX = "_global/<feature>";`，参照 `:70`、`:88`）；若默认值非 false/0，在此加夹取/回落函数（参照 `:566` 的 `m1222b`、`:490-495` 的 `m1229b`）。
2. **`dev/duo/hookprobe/C0113o.java`** — 加 getter + setter，setter 必须 `commit()` 且返回 boolean（参照 `:63` / `:556`、`:346`）；需要防回环的（如钟面）套 `synchronized` + 抑制位模式（`:332-371`）。
3. **`dev/duo/hookprobe/ConfigProvider.java`** — 若要给 SystemUI/桌面读：把方法名加进 `z3` 白名单（`:189`），并在 `:255-289` 那串 `else if` 里加分支，`bundle2.putBoolean("on", ...)`。若要能被 `--extra` 写：按 `:188` 的 `z2` / `:189` 的 `z3` 语义区分加进去。
4. **`dev/duo/hookprobe/C0056L.java`** — 若希望变化即时推送，在 `:125-165` 加一条 `notifyChange` 路由（并按需在 `:25-58` 加 URI 常量）；若开关只需重启生效，可跳过此步。
5. **`dev/duo/hookprobe/MainActivity.java`** — 造卡片 View（复制 `m992O()`/`m1129j()` 的骨架：标题 `TextView` + 副标题 + `Switch` + 点击整行转发 `performClick()`），加入对应页的装配方法（首页 `m1093e` `:2583-2592`，小功能 `m1114h` `:3611-3620`，UI `m1107g` `:3334-3346`）；在 `m997T()` 里加 `setChecked(...)`（`:1612-1650`）；若要参与可用性判断再改 `m995R()`。
6. **消费侧**（真正生效的地方）：本进程内用 `C0113o`；被 hook 进程用 `getRemotePreferences("duo_top")` + `C0071P` 工具函数（参照 `dev/duo/hookprobe/C0050G.java:688-715`）；system_server 侧参照 `dev/duo/hookprobe/C0112n.java:814-817` 的 `registerOnSharedPreferenceChangeListener` 热更新模式。

最小可用改动是 1+2+5（仅 App 内可读写、重启生效）；要跨进程即时生效就必须加 3+4。

### 6.2 其它高价值切入点

- **`ConfigProvider` 是唯一无需 hook 即可读配置的口子**：`content://dev.duo.hookprobe.config` 已 `exported=true`，可用 `content call --uri content://dev.duo.hookprobe.config --method <名>` 直接调（方法名见 `:188-189`、`:298`、`:498-505`）。`duoState`/`trialTick` 明确只允许 uid 1000（`:555`、`:585`）；`pickState` 之外的写操作要求调用方是 SystemUI，报错文案为 `shell or root only`（`:192-196`）。注意 `:192-196` 这段被 jadx 打乱（`z` 赋值与判断交织），实际放行集合需以 smali 复核。
- **加一个新 App 级开关**（只对某包生效）：在 `C0071P` 加 `<pkg>/xxx` 生成器（模式同 `:331-333` 的 `m1258q`），`C0113o` 加读写，`C0104f` 详情面板加控件（`dev/duo/hookprobe/C0104f.java:1061-1078` 的 `f` 子类列表），再在 `ConfigProvider` 的 `:306-314` 分支里导出。
- **加新小组件**：`InfoWidgetProvider` 的 6 个静态子类模式最省事——加子类 + `f907c`/`f908d`/`f909e` 三个数组（`dev/duo/hookprobe/InfoWidgetProvider.java:33-59`）+ 新 `res/xml/<name>_info.xml` + `AndroidManifest.xml` 一个 receiver + 绘制函数走 `C0124z.m2046a`（`dev/duo/hookprobe/C0124z.java:51`）。
- **`RootTaskRecompute`/`RootCompatCleanup` 是现成的 root 侧 `app_process` 工具入口**，格式 `CLASSPATH=<apk> app_process /system/bin --nice-name=... dev.duo.hookprobe.RootTaskRecompute <pkg...>`（`dev/duo/hookprobe/RootTaskRecompute.java:54-61`；同类用法见 `dev/duo/hookprobe/C0115q.java:129`）。

## 7. 未定位 / 存疑

- `_global/defaultPxInner`、`_global/defaultPxOuter` 的**写入方**未定位：只找到读取（`dev/duo/hookprobe/C0071P.java:523-526`），全表扫描未出现对这两个常量的 `putInt`，可能由外部（LSPosed 管理器或旧版本）写入。
- `StandbyTrialActivity` 的**启动方**未定位：manifest 声明 `exported=false`（`AndroidManifest.xml:18`），本包内未找到 `startActivity(... StandbyTrialActivity ...)`。
- `RootCompatCleanup` 的**调用方**未定位（`main()` 存在但本包无 `app_process ... RootCompatCleanup` 字面量）；`RootTaskRecompute` 则有静态复用（`dev/duo/hookprobe/C0112n.java:903`、`:924`）。
- `ios_notification_*` 的**实际消费端**在 `btm.m.os4.systemuihook.*`（本文只按常量表列出语义，未逐一追到读取行）。
- `_global/allAppsEnabled` / `allAppsSeen` / `defaultEnabled` 三个键在 `C0113o` 有读写，但 `MainActivity` 走的是 `m1775a`/`m1801d`/`m1839m` 三条不同路径（`dev/duo/hookprobe/C0113o.java:910`、`:390`、`:433`），二者关系仅部分对齐，[推断] `allAppsSeen` 用于「只在首次批量开启」的幂等标记。
