# 状态栏尺寸调节（com.abel.statussize）

LSPosed 模块，作用域 `com.android.systemui` + `system`（system_server 侧不再伪造 dimen）。

## 四项可调配置（Settings.Global，模块 App 里保存即时生效）

| 键 | 含义 | 0 值语义 |
|---|---|---|
| `dsh_sb_height_dp` | 系统状态栏高度（dp） | **完全隐藏**（窗口 height=0、alpha=0、不可触摸） |
| `dsh_dots_height_dp` | 三点菜单所在 `notification_icon_area` 的高度（dp） | 不干预，用系统原值 |
| `dsh_pull_edge_dp` | 顶部下拉热区高度（dp），屏幕顶部多少像素以内能拉出通知栏/控制中心 | 默认 12 |
| `dsh_app_top_dp` | 应用顶部避让（dp），通过 statusBars inset 下发的顶部留白 | -1 = 不干预 |

## 实现要点

- **状态栏高度**：hook `com.android.systemui.statusbar.window.StatusBarWindowControllerImpl` 的 `apply(State)`，
  proceed 后同步 `mLp` / `mLpChanged` / `paramsForRotation[0..3]` 四处：
  ```java
  boolean hideSb = sSbDp <= 0;
  int targetH = hideSb ? 0 : dpToPx(sSbDp);
  float targetA = hideSb ? 0.0f : 1.0f;
  w.alpha = targetA; w.height = targetH;
  if (hideSb) { w.flags |= 0x10; view.setVisibility(GONE); }
  else { w.flags &= ~0x10; view.setVisibility(VISIBLE); }
  ```
  注意：MIUI 折叠屏分支会在 `apply()` 内部重设 alpha，必须在 proceed 之后写并主动 `updateViewLayout`。
- **下拉热区**：`ensureTopTouchProxy` 建 `TYPE_APPLICATION_OVERLAY(2038)` 悬浮窗，
  `lp.width=-1`、`lp.height=dpToPx(sPullDp)`、`gravity=TOP`、`flags=0x108`，`OnTouch` UP 按 `getRawX() >= screenW/2` 分区：
  左半 `ShadeControllerImpl.expandToNotifications()`，右半 `expandToQs()`。
- **三点区域**：hook `View.onAttachedToWindow`，命中 `id == 0x7f0b086b`（`notification_icon_area`）
  时改 `LayoutParams.height = dpToPx(sDotsDp)`。注意它被状态栏窗口（`dsh_sb_height_dp`）裁剪，
  有效范围是 0 ~ 状态栏高度。
- **应用顶部避让**：遍历 `mLpChanged.paramsForRotation[i].providedInsets`，
  对 `type & WindowInsets.Type.statusBars() != 0` 的 provider 调 `setInsetsSize(Insets.of(0, px, 0, 0))`。

## 已知限制

- `notification_icon_area` 在状态栏窗口内部，三点高度超过状态栏高度会被裁剪。
- 应用顶部避让只对用 `WindowInsets` 布局的 App 有效；小红书这类直接读 `android:dimen/status_bar_height` 的无效。
- 状态栏变矮时图标会纵向被裁（MIUI 不自动缩放状态栏内容）。

## 部署

```bash
cd /storage/emulated/0/Documents/DSH/projects/statussize && bash build.sh
# 产物：/tmp/dsh-work/statussize/dist/StatusSize-v1.0.0.apk，自动 cp 到 DSH/builds/statussize/

cp -f /sdcard/Documents/DSH/builds/statussize/StatusSize-v1.0.0.apk /data/local/tmp/ss.apk
pm install -r /data/local/tmp/ss.apk
NEW=$(pm path com.abel.statussize | sed 's/package://')
app_process64 -Djava.class.path=/data/local/tmp/db5.dex /data/local/tmp DbPatch2 fix com.abel.statussize "$NEW"
killall com.android.systemui
```

## 调试

```bash
settings put global dsh_sb_height_dp 30     # 30dp ≈ 67px
am broadcast -a com.dsh.statussize.RELOAD   # 热重载
logcat -b all -d | grep 'StatusSize:'
dumpsys window windows | grep -A1 'ty=STATUS_BAR '
```

解锁：`input keyevent KEYCODE_WAKEUP` → `KEYCODE_MENU` → 上滑 → `input text 080808` → `KEYCODE_HOME`。

## 18:20 ✅ 比例方案验证通过（用户确认符合预期）
**最终方案**：在 SystemUI 进程内 hook `Resources.getDimensionPixelSize` /
`getDimensionPixelOffset` / `getDimension`，命中 `status_bar_height` 系列资源时
返回 `Math.round(原值 * ratio / 100f)`。

**为什么必须这样**：三点（`···`）在小窗 caption 容器 `MiuiCaptionContainerView` 里，
与全屏状态栏三点**共用** `status_bar_height`。只改状态栏窗口高度/容器位移，三点不会动；
只有把 `status_bar_height` 本身缩窄，两处才同时生效。

**实测**：
- `settings put global dsh_sb_ratio 40` → 日志 `状态栏 dimen 缩放 140 -> 56 (ratio=40)`
- `dsh_sb_height_dp = -1`（隐藏内容）
- 状态栏窗口 `mAttrs={(0,0)(fillx56)}`
- 三点从 y≈48 上移到 y≈35（在 56px 区域内居中）
- 系统图标（时间/信号/电量）全部隐藏，只剩三点
- **用户确认（m05591）：「现在的高度调整符合预期了」**

**配置键**
| key | 含义 | 当前值 |
|---|---|---|
| `dsh_sb_ratio` | 状态栏高度百分比，100=原样 | 40 |
| `dsh_sb_height_dp` | 状态栏窗口高度，-1/0=隐藏内容 | -1 |
| `dsh_pull_edge_dp` | 顶部下拉热区高度 | 12 |
| `dsh_dots_height_dp` | 三点区域高度 | — |
| `dsh_app_top_dp` | 应用顶部避让，-1=不干预 | — |

**部署命令**
```bash
am start -n top.funcun.dshfolk/me.bmax.apatch.ui.DshWebUiActivity
cp -f /sdcard/Documents/DSH/builds/statussize/StatusSize-v1.0.0.apk /data/local/tmp/ss.apk
pm install -r /data/local/tmp/ss.apk
NEW=$(pm path com.abel.statussize | sed 's/package://')
app_process64 -Djava.class.path=/data/local/tmp/db5.dex /data/local/tmp DbPatch2 fix com.abel.statussize "$NEW"
killall com.android.systemui
```

---

## 侧边状态栏改造（2026-11-03 23:32 部署验证）

**需求（用户 m00080/m00081）**：把状态栏条整体移到侧边——侧边给 140px 宽的竖条、全高，
显示信息由模块自定义；下拉通知/控制中心仍从顶部弹出，其它完全不动。

**方案**：系统状态栏窗口高度归零（顶部让出），自绘一枚 140px × 屏高 的右侧浮层，
里面用 TextClock（顶部）+ DotView 电池环与图标行（底部）承载信息；顶部保留下拉热区。

**代码改动**（src/com/abel/statussize/MainHook.java）
1. `applyDockPosition()` 改为侧边全高定位：`lp.width=origStatusBarPx(); lp.height=screenHeightPx();
   lp.gravity=TOP|RIGHT; lp.x=lp.y=0;`，去掉了挖孔 anchor 定位与每 350ms 刷屏日志
   （改为尺寸变化才 log 一次 `侧边状态栏：屏=WxH 条=WxH`）。
2. `syncDockPosition()` 的变更判据改为 `"side|" + screenWidthPx() + "x" + screenHeightPx()`。
3. `ensureCutoutDot()` 的窗口高度改为 `screenHeightPx()`；box 内的 TextClock 与 DotView 之间
   插入 `spacer(1, 0, weight=1)`，使时钟贴顶、电池环贴底。
4. 系统状态栏窗口高度全部归零：`applySbWindowZero()` 的 `h=0`、`refreshStatusBarTranslation()`
   的 `targetH=0`、`applyWindowAlpha()` 的 `targetH=0`、`restoreSbWindow()` 的 `hh=0`。

**验证（23:32 日志 + 截图）**
- `StatusSize: 侧边状态栏：屏=2364x1672 条=140x1672`
- `dumpsys window windows` → `mAttrs={(0,0)(140x1672) gr=TOP RIGHT CENTER ... ty=APPLICATION_OVERLAY}`
- 系统状态栏：`mAttrs={(0,0)(fillx0) ... ty=STATUS_BAR alpha=0.0}`（顶部已让出）
- 截图 s4.png：右上角时钟、右下角电池环 + 图标行
- 顶部下滑仍能正常拉出通知栏（截图 s5.png，通知列表与大时钟正常）

**产物/截图**
- APK：/storage/emulated/0/Documents/DSH/builds/statussize/StatusSize-v1.0.0.apk（md5 76ee9dfe72c4b537cab30f0600cd2a0c）
- 截图：/storage/emulated/0/Documents/DSH/artifacts/statussize/s4.png、s5.png

**遗留 / 待定**
- 侧条背景：目前全透明，是否要加一条半透明底板待用户定。
- 条内容密度：中间大片空白，可加日期、信号、通知图标等。
- 应用是否要给右侧 140px 让位（现在内容铺满、被侧条覆盖）待用户定。
- `dockAnchor()` / `dockKeyOf()` 已无调用点，可后续清理。

## 状态栏 inset 侧移（2026-11-03 23:49 部署验证）

**需求（用户 m00451）**：不只是把状态栏条画到侧边，而是把状态栏占用的 **padding / inset 也移到侧面**——
所有应用在侧边让出位置，顶部不再让位。

**原理**：窗口的 `statusBars` inset 来源由「窗口位置 + providedInsets」共同决定。
把系统状态栏窗口从「顶部 140 高横条」改成「右侧 140 宽全高竖条」，
再把它的 providedInsets 设成右侧 140，WMS 就会把 `statusBars` 从 top 换算成 right。

**代码改动**（src/com/abel/statussize/MainHook.java）
1. 新增 `applySideGeometry(LayoutParams lp)`：`width=origStatusBarPx(); height=screenHeightPx();
   x=y=0; gravity=TOP|RIGHT`。
2. 新增 `applySideInsets(Object lp)`：statusBars provider → `Insets.of(0, 0, origStatusBarPx(), 0)`，
   其余 provider（displayCutout 等）清零。
3. `applySbWindowZero()` / `refreshStatusBarTranslation()` / `applyWindowAlpha()` / `restoreSbWindow()`
   全部改用这两个 helper，原生状态栏内容 `alpha=0`（信息由自绘侧条承担）。
4. `applyAppInset()` / `clearInsets()` 精简为调用 `applySideInsets()`。

**验证（23:49，pid 18250）**
- 日志：`侧边状态栏：屏=2364x1672 条=140x1672`、`应用侧边避让 -> 右 140px`、`状态栏 -> 右侧竖条 140x1672，原生内容隐藏`
- 状态栏窗口：`mAttrs={(0,0)(140x1672) gr=TOP RIGHT CENTER ... alpha=0.0}`
- **inset 实证**：`InsetsSource type=statusBars frame=[2224,0][2364,1672] sideHint=RIGHT`，
  `mInsetsHint=Insets{left=0, top=0, right=140, bottom=0}`
- 桌面截图 s8.png：图标网格与 Dock 整体左移，右侧空出 140px；顶部无状态栏
- 下拉通知截图 s10.png：顶部下滑照常拉出通知栏

**已知遗留**
- 锁屏（Keyguard）时系统状态栏仍显示在顶部（s7/s9.png），未做侧移处理。
  原因：锁屏状态走 StatusBarWindowControllerImpl 的另一套 State 分支，需要单独覆盖。
- 侧条无背景底板（全透明）。

## 侧条定位回归修复 + 应用顶部留白清零（2026-11-04 00:29 验证）

### 现象
1. 侧边竖条窗口跑回左下角 `(0,1259)(140x249) gr=TOP LEFT CENTER`，只有 249 高。
2. 小红书等应用顶部仍有约 56px 空白（用户："上面还是空档"）。

### 根因
1. `applyDockPosition()` 被回滚成旧的挖孔 anchor 定位：`int h = (int)(w*1.78f)` + `dockAnchor()` + `gravity TOP|LEFT` + `x=sw-w,y=a.bottom`，`ensureCutoutDot()` 里也还是 `lp.height = origStatusBarPx()*1.78f`。
2. `hookAppProbe` 的应用侧 status_bar_height 覆盖条件是 `if (dp > 0)`，而 `dsh_sb_height_dp` 当前为 0 → 不干预 → 应用拿到系统原值（140px）当顶部 padding；模块在 SystemUI 侧的比例缩放（ratio=40 → 56px）不作用于应用进程。

### 修复（src/com/abel/statussize/MainHook.java）
- `applyDockPosition()`：`int h = sh;`、`lp.gravity = TOP|RIGHT`、`lp.x=0; lp.y=0;`、`key = "side|" + sw + "x" + sh`、日志改为 `侧边状态栏：屏=WxH 条=WxH`。
- `ensureCutoutDot()`：`lp.height = screenHeightPx();`、`lp.gravity = TOP|RIGHT`。
- `hookAppProbe`：`if (dp > 0)` → `if (dp >= 0)`，即 `dsh_sb_height_dp=0` 时应用侧 status_bar_height 返回 0（顶部彻底贴顶）。

### 验证
- 窗口 dump：`mAttrs={(0,0)(140x1672) gr=TOP RIGHT CENTER ...}` 两份（`ty=STATUS_BAR alpha=0.0` 与 `ty=APPLICATION_OVERLAY`），侧条与原生状态栏窗口完全重合。
- 小红书首页（s19.png）：顶栏贴顶、卡片右边界止于 2224、右侧 140px 让给侧条；底部 tab "我" 同样右移。
- DSH-Folk（s17.png）：顶部贴顶，卡片右侧让出 140px。
- 侧条内容：时钟贴顶、电池环贴底（00:29 / 100）。

### 遗留
1. 锁屏（Keyguard）状态下顶部仍显示系统状态栏（7:55 5G 100），走的是另一套 State 分支，未处理。
2. 侧条无背景底板，内容直接浮于应用之上；深色应用下可读性尚可，浅色壁纸下需评估。

## v1.1.0 新增（2026-11-04）

### 应用顶部避让统一（dsh_app_top_dp）
两条路径共用同一个值：
- **读 insets 的 App**：状态栏窗口高度 = `dpToPx(dsh_app_top_dp)`，`statusBars` inset 自然下发（`source=FRAME` 下最终以窗口 frame 为准，`setInsetsSize` 只做补充）。
- **读 dimen 的 App**（小红书等）：hook 该 App 进程的 `Resources.getDimensionPixelSize/getDimensionPixelOffset/getDimension`，命中 `status_bar_height` 系列 5 个 id 时返回 `dpToPx(dsh_app_top_dp)`。
- 开关：LSPosed 里给本模块勾选该 App 的作用域即可，无需额外配置。

### 三点菜单纵向位置（dsh_dots_height_dp）
三点位置公式 `dotY = (captionHeight + captionOffsetY) / 2`，而 `captionHeight` 直接取状态栏可见高度。
hook `MiuiDecorationDot.updateCaptionGeometry`，**在 `proceed()` 之后**改写入参 `MiuiDecorationBase$RelayoutResult`：
```java
mCaptionY = dpToPx(dsh_dots_height_dp) / 2;
mCaptionOffsetY = 2 * target - mCaptionHeight;
```
坑：`proceed()` 之前 `mCaptionHeight` 还是 0，必须之后改。

### Dock（三合一悬浮条）
- 位置：内屏锁摄像头所在列（`x = clamp(cx - w/2, 0, sw-w)`），纵向永远贴屏幕顶部；摄像头贴顶时让到其下方。外屏固定屏幕右侧。
- 摄像头坐标不依赖 `WindowInsets.getDisplayCutout()`（本机恒为 null），改用 `anchorFromRotation()` 按物理挖孔 164×140 + rotation 推算。
- 内容：`TextClock`（字号/颜色/字重复制系统 `MiuiClock`）+ 电池环（`drawArc` 300°）+ 环内电量数字 + 系统图标行（`statusIcons` 的 `StatusBarIconView`）+ 通知图标行（`MiuiNotificationListener.getActiveNotifications`，过滤 ≤ IMPORTANCE_LOW，最多 8 个两行）。
- 配色：`sysColor()` 优先从 `LightBarControllerImpl.mAppearance` 的 `APPEARANCE_LIGHT_STATUS_BARS` 位判断黑/白；取不到时回退系统时钟 `getCurrentTextColor()`。

### 已知限制
- 横屏时状态栏窗口变成侧边竖条，`top` inset 为 0，顶部避让在横屏不生效（一个窗口只能占一条边）。
- `notification_icon_area` 在该 MIUI 上恒为 GONE，所以通知图标只能从 `MiuiNotificationListener` 取，不能从视图树抓。
- `Display.getCutout()` / `DisplayInfo.displayCutout` / `WindowMetrics.getWindowInsets().getDisplayCutout()` 在本机**全部返回 null**，挖孔坐标只能几何推算。
- 传统 Xposed API 模块（`minApiVersion<100`）在 LSPosed 2.2.1 上不进 UI 列表，无法授权普通 App 作用域，只能靠手写 `modules_config.db` 进 system_server。
