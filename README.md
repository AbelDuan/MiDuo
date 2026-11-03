# MiDuo · 桌面 Dock 定制

HyperOS 8（Xiaomi 18 Fold / Android 17）桌面 Dock 的 LSPosed 模块。

目标：把桌面底部 Dock 移到**左右侧**（默认右侧），补上**柔光玻璃背景**，让搜索栏与状态栏三合一胶囊跟随 Dock 位置。内外屏都要。

## 为什么是 LSPosed native hook

HyperOS 8 的桌面 `com.miui.home` 是 **Flutter / Dart AOT** 架构：

- APK 里**没有任何 `classes.dex`**（`hasCode="false"`），只有 `flutter_assets`、`lib/arm64-v8a/*.so`、`resources.arsc`、`res`；
- 布局逻辑全在 `libapp.so`（28.4MB）的 Dart AOT 快照里，Java 层 hook 碰不到。

所以模块走 **Dart AOT 机器码 hook** 的路子（与 HyperCeiler / HyperLight 同类）：

1. 从 `libapp.so` 的 `.gnu_debugdata`（xz 压缩符号表，4.7MB）解出 74,181 个符号；
2. 按符号名找到目标 Dart 函数在 `.text` 里的偏移；
3. 在目标进程里 `dl_iterate_phdr` 拿到 `libapp.so` 基址，算出绝对地址；
4. inline hook 目标函数（ARM64），改返回值。

## 已定位的目标

`libapp.so` 段表：`.gnu_debugdata` off=0x01a80108 size=649668；`.text` off=0x00800000 size=19372208 addr=0x800000。

| 符号 | 偏移 | 大小 | 说明 |
|---|---|---|---|
| `HotseatLayerGetxController.calculatePositionX` | `0x00889338` | 1536 | **Dock 的 X 坐标**，主返回 `ret @0x00889874` |
| `HotseatLayerGetxController.calculatePositionY` | `0x00c1cbac` | 1404 | Dock 的 Y 坐标 |
| `HotseatLayerGetxController._getTotalHotSeatsMarginBottom` | `0x00889030` | 320 | Dock 底部边距 |
| `HotseatLayerGetxController.horizontalPadding` | `0x008899f8` | 104 | Dock 水平内边距 |
| `GridController.dockCellWidth` | `0x00889968` | 144 | Dock 图标宽度 |
| `GlobalHotseatWindowManager._buildDockLayout` | `0x0108b930` | 500 | Dock 窗口布局 |
| `GlobalHotseatWindowManager.updateDockHierarchy` | `0x010929b4` | 2108 | Dock 层级更新 |
| `GlobalHotseatWindowManager._relayout` | `0x0194c2d0` | 908 | Dock 重排 |
| `calHotseatOffsetY` | `0x00905b00` | 516 | 写对象偏移 `0xc3`（setter） |
| `calHotseatCenterPosition` | `0x00905ec4` | 640 | Dock 中心位置 |
| `SearchBarGetXController.getCenterLocation` | `0x012c2e28` | 232 | 搜索栏中心 |
| `_DockBackgroundViewState._buildStrategy` | `0x0108d144` | 416 | Dock 背景构建 |
| `_HotseatWidgetState._buildBackground` | `0x0109d6fc` | 24 | Dock 背景 |
| `GridController.searchBarMarginBottom` | `0x00e02b34` | 100 | 搜索栏底边距 |
| `_calSearchBarMarginBottom` | `0x009e8b00` | 648 | 搜索栏底边距计算 |

`calculatePositionX` 的返回值链（主分支）：

```
0x0088985c  fdiv  d1, d3, d2
0x00889860  scvtf d2, x0
0x00889864  fmul  d3, d2, d0
0x00889868  fadd  d0, d3, d1     ; d0 = 最终 X 坐标
0x0088986c  mov   x15, x29
0x00889870  ldp   x29, x30, [x15], #0x10
0x00889874  ret
```

在 `0x00889868` 之后改 `d0` 即可整体平移 Dock 的 X。

## 当前状态

- [x] 符号表解析（`.gnu_debugdata` → 74,181 符号，1,694 个 dock/hotseat/searchbar 相关）
- [x] `calculatePositionX` 反汇编确认 hook 点
- [x] 模块骨架（LSPosed API 102，`com.miui.home` 作用域）
- [x] 手工打包链（aarch64 上绕开 Gradle/aapt2 daemon 死结）
- [x] APK 安装 + LSPosed 登记
- [ ] inline hook 落地（等 lspd 重新扫描模块，需一次 zygote 重载）
- [ ] Dock 右移 + 竖排
- [ ] 柔光玻璃背景
- [ ] 搜索栏 / 状态栏胶囊跟随

## 构建

本机是 arm64 Android 容器，没有 x86_64 的 Android SDK 工具链，因此：

- `aapt2` / `zipalign` 用 Debian aarch64 原生版（`/root/Freeform_tmp/tools/android-tools/`）；
- `javac` / `d8` / `apksigner` 用 JDK 17 + SDK build-tools；
- native 用**设备侧** Termux clang 21（proot 内跑 bionic 工具链会因 execve 被拦截而失败）。

```bash
bash build.sh    # 产物在 /tmp/dsh-work/dockhook/dist/DockHook-<ver>.apk
```

`build.sh` 里的路径是本机专用的，移植时改 `SRC` / `SDK` / `NDK` 三个变量即可。

## 参考

- [HyperCeiler](https://github.com/ReChronoRain/HyperCeiler)（AGPL-3.0）：Dart AOT hook 基础设施、`symtab.cpp` 符号表、`home_layout_knobs.h` 的 8 个布局旋钮
- [HyperLight](https://github.com/KiminonawaResa/HyperLight)：`RustDesktopDockHook`、dock 尺寸/圆角/搜索栏边距，以及内嵌的柔光玻璃 GLSL（`processGlassColor` / `renderGlassShape` / `calculateInnerEdgeEffects`）

## 许可

仅供个人设备使用。
