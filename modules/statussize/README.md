# statussize · 状态栏尺寸调节

LSPosed 模块（`com.abel.statussize`），作用域 `com.android.systemui` + `system`。

## 功能

在 SystemUI 进程内 hook `Resources.getDimensionPixelSize` / `getDimensionPixelOffset` /
`getDimension`，命中 `status_bar_height` 系列资源时返回 `原值 × ratio%`。

因为**三点菜单**（`···`）在全屏状态栏和小窗 caption（`MiuiCaptionContainerView`）里
共用 `status_bar_height`，所以缩小这个 dimen 会让**两处同时缩窄、三点同步上移**。

## 配置（Settings.Global）

| key | 含义 | 说明 |
|---|---|---|
| `dsh_sb_ratio` | 状态栏高度百分比 | 100 = 原样，40 = 缩窄 60% |
| `dsh_sb_height_dp` | 状态栏窗口高度 | `-1`/`0` = 隐藏时间/信号/电量，只留三点 |
| `dsh_pull_edge_dp` | 顶部下拉热区高度 | 默认 12 |
| `dsh_dots_height_dp` | 三点区域高度 | — |
| `dsh_app_top_dp` | 应用顶部避让 | `-1` = 不干预，`0` = 完全顶格 |

改完发广播热重载：

```bash
settings put global dsh_sb_ratio 40
am broadcast -a com.dsh.statussize.RELOAD
```

## 构建

```bash
bash modules/statussize/build.sh
```

产物：`/tmp/dsh-work/statussize/dist/StatusSize-v1.0.0.apk`

依赖：

- SDK：`/root/Freeform_tmp/tools/sdk`（build-tools 34.0.0 + platforms/android-36）
- aapt2：`/root/Freeform_tmp/tools/android-tools/aapt2`
- Xposed API：`/root/OS4Theme/app/libs/libxposed-api-102.jar`

## 部署

```bash
am start -n top.funcun.dshfolk/me.bmax.apatch.ui.DshWebUiActivity
cp -f <apk> /data/local/tmp/ss.apk
pm install -r /data/local/tmp/ss.apk
NEW=$(pm path com.abel.statussize | sed 's/package://')
app_process64 -Djava.class.path=/data/local/tmp/db5.dex /data/local/tmp DbPatch2 fix com.abel.statussize "$NEW"
killall com.android.systemui
```

## 与其他模块的关系

本目录与仓库根部的 Dock hook（`cpp/` + `src/`，Dart AOT 机器码 hook）**完全独立**：

- 进程不同：`com.android.systemui` vs `com.miui.home`
- 技术不同：Java Xposed vs native inline hook
- 构建不同：aapt2/javac/d8 vs CMake/NDK

将来若要合并成单一 APK，可在 `java_init.list` 保留 Java 入口、同时打包 `lib/<abi>/*.so`
提供 native 入口，`scope.list` 同时列两个包名。
