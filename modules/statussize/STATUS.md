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
