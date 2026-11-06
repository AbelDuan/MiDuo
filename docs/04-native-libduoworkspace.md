# 04 · native 层 `libduoworkspace.so` 分析

> 样本：`lib/arm64-v8a/libduoworkspace.so`（254,256 B，ELF64-aarch64，已 strip，保留 `.dynsym` 121 项）
> 加载方式：`META-INF/xposed/native_init.list` + `assets/native_init` 均声明本 so，由 libxposed 框架在目标进程加载后调用 `native_init`
> 证据来源：`native/disasm/`（`disasm-full.txt` / `symbols-*.txt` / `strings.txt` / `readelf.txt`），下文地址均为文件内虚拟地址

---

## 1. 概览

native 层的职责不是"实现功能"，而是**在 MIUI 启动器的 Dart/Flutter 引擎里打 3 类补丁**：

| 补丁类型 | 手段 | 证据 |
|---|---|---|
| **inline hook 跳板** | 把目标函数头部改写成 `b <xxx_entry>`；entry 保存 x0–x30 + q0–q31 + NZCV/FPCR/FPSR，调 `inspect_frame`，再恢复全部寄存器并 `br <原始指令地址>` | `grid_entry @0x18740`：`sub sp,#0x310` → 存 32 个 X 寄存器 → `bl inspect_frame` → 全部 `ldp` 还原 → `br x16`（`disasm-full.txt` 中 0x1888c） |
| **Rust 引擎修补** | 校验 `libapp.so` 的 SHA-256，在指定偏移处把 `BL` 指令改指向自己的 stub | 字符串 `v122 verified Rust base=%lx SHA256=%s` / `v122 active=1 protection_restored=%d Rust base=%lx site=%lx BL=%08x stub=%lx helper=%lx`；常量 `ffac014c9a627e5f2fe51a40c9f7457fe7ac5ac212adf5b0cb7f38d9560c9d58`（疑似白名单 SHA-256） |
| **布局数据库热替换** | 把 `/data/user_de/0/com.miui.home/databases/launcher4x5.db` ↔ `launcher4x6.db` 在两个目录间原子交换，配合 `active` / `stock` / `swapping` 三态标记 | `miduo_layout::prepare_for` / `swap` / `create_stock_copy` / `move_all` / `sync_dir` |

**关键结论：native 层不处理 Binder 业务逻辑。** Binder 相关的 `AIBinder_*` / `AParcel_*` 全部由 `init_binder` 通过 `dlopen("libbinder_ndk.so")` + 13 次 `dlsym` 动态获取（见 §2），用于 `WorkspaceHome.publish()` 把 `HardwareBuffer` 写进 Parcel —— 这是 Java 侧 `nativeWriteBuffer` 的底层实现。

---

## 2. `native_init` 初始化流程（@0x10e90）

```
native_init(JavaVM *vm)
 ├─ fopen("/proc/self/cmdline", "r") → fread(127 字节) → fclose      @0x10ea8–0x10eec
 ├─ __android_log_print(5, "DuoWorkspace", "ENTRY process=%s pid=%d", cmdline, getpid())
 │                                                                  @0x10ef0–0x10f10
 ├─ 校验 cmdline 前 14 字节 == "com.miui.home\0"                      @0x10f14–0x10f44
 │   ├─ 不匹配 → 0x11034（走"非桌面进程"分支）
 │   └─ 匹配 → __aarch64_swp1_acq_rel(&installed) 做单次守卫        @0x10f48–0x10f58
 │        （已装过就直接 return，防止重复 init）
 ├─ __system_property_get("debug.duo.master", buf)                   @0x10f60–0x10f7c
 ├─ miduo_layout::prepare_for(buf)  → 返回值决定布局策略             @0x10f84
 │   0 = 不接管 / 1 = 接管 active / 2 = 错误（errno → strerror 打日志后 return）
 ├─ dl_iterate_phdr(library_loaded, &arg)                            @0x10fc0
 └─ library_loaded(name, phdr)  ← 每加载一个 so 回调一次
```

### 2.1 `library_loaded`（@0x11474）——真正的安装点

```
library_loaded(name, phdr)
 ├─ strlen(name) >= 9 且 name 末尾 9 字节 == "libapp.so"            @0x1148c–0x114ac
 │   （`strcmp(name+len-9, "libapp.so")`，即匹配 libapp.so 及其路径后缀）
 ├─ pthread_mutex_lock(&installation_mutex); 检查 installed 位       @0x114b0–0x114c4
 ├─ installed = 1; dl_iterate_phdr(library_base, &ctx) 拿加载基址    @0x114c8–0x114e4
 ├─ 基址有效 → install_workspace(base)                              @0x114fc
 │    └─ 返回 false → 放弃（0x11530）
 └─ install_workspace 成功 → configure_workspace()                  @0x11504
```

> `install_workspace @0x13490` 开头是一串 **64 位魔数比较**（`0x150dad4 + 0x640`、`0xf85f3a4fc5b3a1` 等），
> 实质是拿 `libapp.so` 里若干个特征字节与内置指纹比对，确认这是**该版本**的 Flutter 引擎。
> 任一不符就跳到 `0x137a8` 失败分支 —— 这就是"版本不匹配就不打补丁"的保护。

### 2.2 `configure_workspace`（@0x15b48）——读系统属性调参

```
configure_workspace()
 ├─ __system_property_get("debug.duo.workspace", buf)   → '1'/'2'/'3' 决定 w19 = 1 / 0 / 3   @0x15b64–0x15bb8
 ├─ __system_property_get("debug.duo.row_px", buf)      → strtod 转 double 作行高      @0x15bc0–0x15bfc
 └─ …（其余 50+ 个 debug.duo.* 属性在各 inspect_* 函数里按需读取）
```

### 2.3 `init_binder`（@0x2fc5c）——NDK Binder 动态绑定

```
dlopen("libbinder_ndk.so", RTLD_NOW)   @0x2fc7c
dlopen("libnativewindow.so", RTLD_NOW) @0x2fc90
   ↓ 任一失败 → 打 "Binder libraries unavailable: %s" 后放弃
dlsym × 13（全部在 libbinder_ndk.so 里）：
  AIBinder_getCallingUid            @0x2fcac
  AIBinder_Class_define             @0x2fcc8
  AIBinder_associateClass           @0x2fce4
  AIBinder_incStrong                @0x2fd00
  AIBinder_decStrong                @0x2fd1c
  AIBinder_prepareTransaction        @0x2fd38
  AIBinder_transact                 @0x2fd54
  AIBinder_DeathRecipient_new        @0x2fd70
  AIBinder_DeathRecipient_setOnUnlinked @0x2fd8c
  AIBinder_linkToDeath               @0x2fda8
  AIBinder_unlinkToDeath            @0x2fdc4
  AParcel_readInt32                 @0x2fde0
  AParcel_readInt64                 @0x2fdfc
```
每个 `dlsym` 结果存入 `0x3e000` 段的函数指针表（`+0xf50 … +0xf98`），后续通过该表调用。

---

## 3. 导出函数总表（`.dynsym` 的 `T` 段，共 41 个）

所有 `*_entry` 的**结构完全相同**（0x150 字节）：保存寄存器 → `bl inspect_frame` → 还原 → 尾跳原函数。
差异只在传给 `inspect_frame` 的 **mode 常量**（w1 立即数），由 `widget_page_inspect @0xe1c4` 分派到具体 `inspect_*`。

| 函数 | 地址 | 大小 | 作用 | 对应的 Java 侧语义 |
|---|---|---|---|---|
| `widget_page_startup_entry` | `0xd9f0` | 0x15c | mode=0，首次页面启动 | 首屏页序 |
| `widget_page_move_entry` | `0xdb4c` | 0x15c | mode=1 | 页移动 |
| `widget_page_pin_entry` | `0xdca8` | 0x15c | mode=2 | 页固定 |
| `widget_page_last_entry` | `0xde04` | 0x15c | mode=4 | 末页判定 |
| `widget_page_find_entry` | `0xdf60` | 0x2f30 | mode=5 + 完整实现（不是薄跳板） | 页查找 |
| `grid_entry` | `0x18740` | 0x150 | 网格布局 | `C0143b` 网格参数 |
| `occupied_entry` | `0x18890` | 0x150 | 占位格 | 图标占位 |
| `icon_entry` | `0x189e0` | 0x150 | 图标尺寸/位置 | `debug.duo.icon_box_px` |
| `cell_rows_entry` | `0x18b30` | 0x150 | 单元格行数 | `debug.duo.rows` |
| `q18_entry` | `0x18c80` | 0x150 | "q18" 布局（推测为 1×8 或某代桌面代号） | `debug.duo.q18_*` |
| `indicator_entry` | `0x18dd0` | 0x150 | 页面指示点 | `debug.duo.indicator_down_px` |
| `q18_args_entry` | `0x18f20` | 0x150 | q18 参数 | — |
| `rows_entry` | `0x19070` | 0x150 | 行数 | `debug.duo.row_px` |
| `q18_ctx_entry` | `0x191c0` | 0x150 | q18 上下文 | — |
| `dots_transform_entry` | `0x19310` | 0x150 | 指示点变换 | `debug.duo.dots_x_px` / `dots_y_px` |
| `inner_args_entry` | `0x19460` | 0x150 | 内屏参数 | `debug.duo.inner_*` |
| `pair_shift_entry` | `0x195b0` | 0x150 | 双屏配对位移 | — |
| `pad_dock_entry` | `0x19700` | 0x150 | Dock 内边距 | `debug.duo.pd_*` |
| `snap_step_entry` | `0x19850` | 0x150 | 吸附步长 | — |
| `fling_target_entry` | `0x199a0` | 0x150 | 甩动目标 | — |
| `fling_upper_entry` | `0x19af0` | 0x150 | 甩动上限 | — |
| `pair_start_entry` | `0x19c40` | 0x164 | 配对起点（略大） | — |
| `page_xform_entry` | `0x19da4` | 0x150 | 页变换 | — |
| `page_select_entry` | `0x19ef4` | 0x15c | 页选择 | — |
| `page_controller_entry` | `0x1a050` | 0x150 | 页控制器 | — |
| `page_position_entry` | `0x1a1a0` | 0x150 | 页位置 | — |
| `page_restore_entry` | `0x1a2f0` | 0x15c | 页恢复 | — |
| `edit_state_entry` | `0x1a44c` | 0x150 | 编辑态 | 日志 `EDIT_STATE editing=%d` |
| `thumb_params_entry` | `0x1a59c` | 0x150 | 缩略图参数 | `debug.duo.edit_thumb_k` |
| `strip_height_entry` | `0x1a6ec` | 0x150 | 缩略条高度 | `strip_height` |
| `is_deleteable_entry` | `0x1a83c` | 0x15c | 是否可删（注意拼写 deleteable） | — |
| `can_be_deleted_entry` | `0x1a998` | 0x15c | 可删除判定 | — |
| `minus_scroll_entry` | `0x1aaf4` | 0x150 | 负向滚动 | — |
| `overlay_alpha_entry` | `0x1ac44` | 0x150 | 覆盖层透明度 | `overlay_progress` |
| `overlay_close_entry` | `0x1ad94` | 0x15c | 覆盖层关闭 | — |
| `screen_pages_flush_return` | `0x1e2cc` | 0x5c | 屏幕页刷新返回 | — |
| `screen_pages_fold_flush_return` | `0x1e328` | 0x5c | 折叠屏刷新返回 | — |
| `screen_pages_init_native` | `0x1e384` | 0x1c | 屏幕页初始化 | — |
| `screen_pages_position_return` | `0x1e3a0` | 0xc770 | **最大函数**，屏幕页定位全实现 | — |
| `Java_dev_duo_workspaceprobe_WorkspaceHome_nativeWriteBuffer` | `0x30cc0` | — | JNI：把 `HardwareBuffer` 写进 `Parcel` | `WorkspaceHome.publish()` |

> 另有 `dock_right_1_entry` … `dock_right_52_entry`（缺 11/14/30/31/33–40）共 52 个，**未出现在 `.dynsym`**，
> 但被 `inspect_frame` 的跳转表引用，属于"同族但内部可见"的 Dock 右侧布局分支。

### 3.1 内部函数（`.symtab` 已 strip，仅能从 `.dynsym` 的局部符号与反汇编识别）

| 命名空间 | 函数 | 作用 |
|---|---|---|
| `miduo_layout::` | `prepare_for` / `read_small` / `finish_committed` / `swap` / `database_in` / `create_stock_copy` / `proc_database_open` / `remove_record` / `sync_dir` / `move_all` / `write_small` | 桌面布局库原子热替换（§4） |
| `widget_page::` | `startup_order` / `screen_index` / `string_is` / `empty_screen` / `album` / `list` / `DartView::ref` / `DartView::inner_screen` / `DartView::landscape` | 解析 Flutter Dart 堆里的 widget 页结构 |
| `first_page_lock::` | `first_screen_id` | 首页锁定（`first_page_lock` / `FIRST_PAGE_LOCK ready=%d`） |
| `duo_official_dock::` | `preflight` / `protect` / `install` / `configure` / `publish_edit` / `publish_minus` / `publish_overlay` / `publish_overlay_close` / `publish_fold` / `outer_pad_layer` / `read_range` / `can_write_range` / `write_range` | 官方 Dock 参数注入 |
| `duo_official_dock_axis::` | `from_algorithm` / `from_provider` / `inspect` / `cap_recent` / `split_offset` / `portrait_height_px_now` / `portrait_dy_px_now` | 轴向几何计算 |
| `official_dock_geometry::` | `height_write` / `bounds_from_height_frame` / `constraints_entry` / `constraints_tail` / `pad_state` / `body_state` | 写 Dock 高度/边界/约束 |
| `official_dock_ready::` | `attach` / `detach` / `pending_state` / `list_data` | 就绪状态机 |
| `official_dock_return_target::` | `recent_lifecycle` / `outer_square` / `outer_launch` / `outer_source` / `outer_gate` / `adapt` | 外屏返回目标 |
| `official_dock_recents::` | `consumer` / `budget` | 最近任务配额 |
| `miduo_right_anchor::` | `findTopRight` / `scaleArgumentsPre` / `bodyAlignPre` / `portrait_shift` / `portrait_trace` / `freshTransformsPre` | 右上角锚点 |
| `official_dock_motion_trace::` | `generation` / `sample` / `emit` / `rendered` | 运动轨迹采样 |
| `duo_screen_switch::` | `install` / `initial_target` / `initial_overlay` / `rebuild_controller` / `initializing` / `cancel_initialization` / `outer_count` / `protection_restored` | 双屏切换保护（`DuoScreenSwitch`） |
| `duo_owned_pages::Pages::update` | — | 自持页面更新 |
| `duo_inner_portrait::compute` | — | 内屏竖屏几何 |
| `duo_native_metrics::` | `span` / `locate` / `Sha256::block` / `Sha256::finish` | 指标采样 + 内置 SHA-256（用于校验 libapp.so） |
| `HookPageGuard::advise` | — | 页保护（`PAGE_GUARD ready pages=%zu bytes=%zu advice=%d`），配合 `guarded_madvise` |
| `workbench_recents::install` | — | 工作台最近任务 |

---

## 4. `debug.duo.*` 系统属性总表

native 侧通过 `__system_property_get` 读取，Java 侧用 `SystemProperties.get` 读。**native 独有**的属性只能 `setprop` 调，配置界面里没有。

| 属性 | 归属 | 作用 |
|---|---|---|
| `debug.duo.master` | native + Java | **总开关**。native 在 `native_init` 里读，`"1"` 才继续；Java 侧 `C0143b` 也读 |
| `debug.duo.foldanim` | Java（system_server 写 `247`） | 折叠动画许可 |
| `debug.duo.workspace` | native | `"1"`/`"2"`/`"3"` → 工作台策略（1 / 0 / 3） |
| `debug.duo.rows` / `debug.duo.row_px` / `debug.duo.row_slot` / `debug.duo.row_y_px` | native | 桌面行数与行高/行槽/行 Y |
| `debug.duo.cell_h_px` / `debug.duo.cell_rows` / `debug.duo.icon_box_px` / `debug.duo.icon_follow` | native | 单元格高度、图标框、图标跟随 |
| `debug.duo.geom_off` | native | 几何整体偏移开关 |
| `debug.duo.hotseat_h_px` / `debug.duo.dock_h_dp` / `debug.duo.dock_slot` / `debug.duo.dock_recent_max` | native | Dock 高度/槽位/最近任务上限 |
| `debug.duo.dots_x_px` / `dots_y_px` / `inner_dots_dx_px` / `inner_dots_dy_px` / `inner_dots_window_px` | native | 指示点坐标 |
| `debug.duo.indicator_down_px` | native | 指示点下移 |
| `debug.duo.pd_inset_px` / `pd_inset_l_px` / `pd_inset_t_px` / `pd_inset_r_px` / `pd_inset_b_px` | native | Dock 内边距（四边） |
| `debug.duo.pd_height_px` / `pd_item_px` / `pd_sep_px` / `pd_dy_px` | native | Dock 高度/项/分隔/纵向位移 |
| `debug.duo.inner` / `inner_top_px` / `inner_left_px` / `inner_common_px` / `inner_cell_px` / `inner_row_px` / `inner_shift_px` / `inner_step1` / `inner_dock_h_px` / `inner_dock_hide` | native | 内屏几何全套 |
| `debug.duo.q18_side_px` / `q18_cell_px` / `q18_row_px` / `q18_top_dp` / `q18_gap_dp` / `q18_right_px` / `q18_nodock` | native | q18 布局全套 |
| `debug.duo.official_right` / `outer_official_right` | native | 官方 Dock 右边界 |
| `debug.duo.edit_thumb_k` | native | 编辑缩略图系数 |
| `debug.duo.motion_trace` / `endpoint_trace` | native | 运动/端点轨迹日志开关 |
| `debug.duo.scale` / `ratio_gate` / `device` / `awemefit` / `outer_orientation` | Java | 缩放、比例门、机型、适配、外屏方向 |

> 完整 55 条 `debug.duo.*` 字符串见 `native/disasm/strings.txt`（`grep "debug.duo"`）。

---

## 5. 桌面布局数据库劫持（`miduo_layout`）

这是 native 层最"重"的一块，目的是**在不改 `com.miui.home` 代码的前提下换掉它的桌面布局**。

### 5.1 目录布局

`prepare_for` 拼出 3 个路径（`snprintf` 参数已解析）：

| 路径模板 | 实际值 |
|---|---|
| `/data/user_de/%u/com.miui.home` | 桌面数据目录（`%u` 由 `getuid()` 反算 userId） |
| `%s/databases` | SQLite 目录 |
| `%s/files/miduo-layout` | **MiDuo 自己的布局目录** |

在 `miduo-layout` 下维护 3 个子目录/标记：

| 名字 | 含义 |
|---|---|
| `active` | 当前生效的布局（指向 `duo`） |
| `duo` | MiDuo 改造后的 4×6 布局 |
| `stock` | 原版 4×5 布局（首次运行时从 `launcher4x5.db` 复制而来） |
| `swapping` | 交换进行中的事务标记（崩溃后可恢复） |

### 5.2 状态机

```
prepare_for(prop_master)
 ├─ read_small("active") → 读不到 → "no saved 4x6 layout" → 用 stock（返回 0）
 ├─ active 内容为 "duo" 或 "stock" → 正常
 │   ├─ 内容既非 duo 也非 stock → 日志 "ACTIVE '%s' unreadable; unsafe" → 返回 2（拒绝接管）
 ├─ 检查 swapping 标记：存在 → "SWAPPING record '%s' active=%s; unsafe" → 返回 2
 ├─ 校验数据库：database_in() / proc_database_open()
 │   ├─ 已打开 → "database already open" / "workspace database unreadable or twice" → 返回 2
 │   └─ 正常 → 继续
 └─ 创建 stock 副本（create_stock_copy）：
     ├─ 从 databases/launcher4x5.db（或 6.db）复制 → stock.tmp → 原子 rename
     └─ 失败 → "stock copy failed" → 返回 2
```

日志关键字（排查时 grep 这些）：`MiDuoLayout` tag、`ACTIVE`、`SWAPPING`、`LAYOUT want=%s`、`LAYOUT resume`、`STOCK_COPY`、`SYNC_DIR`、`MOVE`、`SWAP`。

### 5.3 与 Java 侧的对应

Java 侧 `dev/duo/hookprobe/C0100b.java` 是这套逻辑的**另一份实现**（面向 root 进程的 shell 版本）：

| Java 方法 | 行号 | 对应 native |
|---|---|---|
| `m1564a(String)` | `C0100b.java:410-421` | `miduo_layout::database_in` —— 用 shell `[ -f ... ]` 探测 `launcher4x6.db` / `launcher4x5.db` 存在性，返回 `"10"`/`"01"`/`"11"` |
| `m1561a(Context, String)` | `C0100b.java:424+` | `miduo_layout::create_stock_copy` —— 建 `home-db-<pid>` 临时目录，复制 `db` + `-wal` + `-shm` 三件套 |

> 所以这套布局劫持有**两套实现**：native 版在桌面进程内（更可靠，有事务标记），Java 版在 root 进程（用于首次初始化/修复）。
> 二者读写同一组文件，靠 `swapping` 标记与 `database_in` 检查互斥。

---

## 6. 与 Java 层的交互面

### 6.1 唯一的 JNI 入口

```java
// dev/duo/workspaceprobe/WorkspaceHome.java
private static native int nativeWriteBuffer(Parcel parcel, HardwareBuffer buffer);
```

`WorkspaceHome.publish()`（`WorkspaceHome.java:131-160`）的流程：

```
publish(context, launcherProxyBinder, epoch, frame, int[] cids, w, h, ..., HardwareBuffer ahb, ..., ResultReceiver)
 ├─ 校验参数；取 com.miui.home 的 uid
 ├─ load() → System.loadLibrary("duoworkspace")
 ├─ 组 Parcel：writeInterfaceToken("...ILauncherProxy") + 1 + 1 + epoch + frame
 │             + cids.length + cids[] + 4 个 int + 强 Binder（receipt）
 ├─ nativeWriteBuffer(parcel, ahb)   ← 走 AHardwareBuffer_writeToParcel
 ├─ launcherProxy.transact(4457009, parcel, reply, 0)
 └─ receipt.m2133a(code, textureId)  ← 回执回调
```

`nativeWriteBuffer` 内部链路（`0x30cc0` 起）：`AHardwareBuffer_fromHardwareBuffer` → `AHardwareBuffer_acquire` → `AHardwareBuffer_writeToParcel` → `AHardwareBuffer_release`，返回 `AParcel` 状态码（0 = 成功）。

### 6.2 反方向：native → Java 的回执

`BinderC0141a`（`WorkspaceHome.java:22-91`）是 native 侧 `transact` 回调的目标，code 语义：

| code | 字符串（`m2133a`） | 含义 |
|---|---|---|
| 0 | `waiting engine` | 等引擎 |
| 1 | `registered` | 已注册 |
| 2 | `texture layer added` | 纹理层已加 |
| 3 | `raster acquired buffer` | 光栅拿到 buffer |
| 4 | `producer released` | 生产者释放 |
| 其它 | `native frame error` | 出错 |

### 6.3 Java 侧**没有**直接调用 `*_entry`

全库扫描：`grid_entry` / `page_controller_entry` / `q18` / `official_dock` 等在 Java 源码里 **0 处引用**。
这些导出符号只被 native 自己的 `inspect_frame` 跳转表使用 —— **它们是给 native 内部 hook 链用的，不是 Java API**。

Java 侧只出现一处相关字符串：`C0100b.java:29` 的 `"widget_page_pending"`（与 native 的 `widget-page` 目录名呼应）。

---

## 7. 二次开发切入点

### 7.1 调布局参数（零代码，最省事）

native 侧几乎所有几何量都从 `debug.duo.*` 读，**改属性即可，无需重打包**：

```bash
adb shell su -c 'setprop debug.duo.row_px 132'
adb shell su -c 'setprop debug.duo.icon_box_px 108'
adb shell su -c 'setprop debug.duo.dock_h_px 96'
# 改完重启桌面让 native_init 重新读
adb shell su -c 'killall com.miui.home'
```

> 注意：`configure_workspace` 只在**进程启动时读一次**（`0x15b48` 开头），所以必须重启进程。

### 7.2 加一个新的布局参数（需要改 native）

1. 在 `strings.txt` 里找个空位加 `debug.duo.<new>` 字符串（改 `.rodata`）。
2. 在目标 `inspect_*` 函数里加一段 `__system_property_get("debug.duo.<new>", buf)` + `strtod`。
3. 把结果写进对应结构体字段（参考 `configure_workspace` 的 `strtod` 用法 `0x15bf8`）。
4. 替换 `apktool/lib/arm64-v8a/libduoworkspace.so` 后重打包。

> 风险：`install_workspace` 会校验 `libapp.so` 指纹，但**不校验自己**；改 `.text` 长度会破坏后续所有函数地址，
> 建议只在函数**尾部**追加代码并用 `bl` 跳入，不要插入到中间。

### 7.3 加一个新 hook 点（最安全的扩展方式）

`*_entry` 模板已经现成，复制一个 0x150 字节的跳板即可：

```
sub sp, #0x310
stp x0,x1 … stp q30,q31      ; 保存全部寄存器
bl  inspect_frame            ; 你的处理函数
ldp q30,q31 … ldp x0,x1      ; 还原
br  <原函数+4>                ; 尾跳
```

然后在 `install_workspace` 里把目标函数头 4 字节改成 `b <你的 entry>`（需要 `mprotect` 加写权限，
库内已有 `guarded_madvise` / `mprotect` 调用可参考）。

### 7.4 关掉整套 native 补丁

```bash
adb shell su -c 'setprop debug.duo.master 0'
adb shell su -c 'killall com.miui.home'
```
`native_init` 读到 `"0"` 就会在 `prepare_for` 返回 0 时走"不接管"分支，不装任何 hook。

---

## 8. 未定位 / 存疑

- **`q18` 的语义**：`q18_entry` / `q18_args_entry` / `q18_ctx_entry` / `q18_side_px` / `q18_cell_px` / `q18_row_px` / `q18_top_dp` / `q18_gap_dp` / `q18_right_px` / `q18_nodock` 共 10 处，全部围绕 `q18`。
  [推断] 是某个桌面布局代号（可能是 "18 格" 或内部版本号），未在 Java 侧找到对应命名。
- **`dock_right_11/14/30/31/33~40` 缺失**：52 个 `dock_right_N_entry` 中这些编号不存在，且它们**不在 `.dynsym`**。
  [推断] 这些编号对应被移除的旧布局分支，跳转表里留空。
- **`ffac014c...` 这个 SHA-256 常量**：出现位置紧跟 `v122 verified Rust base=... SHA256=%s`。
  [推断] 是 `libapp.so` 的白名单哈希之一；未能确定它对应哪个具体版本。
- **`install_workspace` 的魔数表**：`0x150dad4+0x640`、`0xf85f3a4fc5b3a1`、`0x14a0d57c`、`0x14a0ede0` 等 4 组 64 位常量，
  是 `libapp.so` 内的特征字节序列。未能反推它们对应的具体机器码。
- **`screen_pages_position_return`（0xc770）** 是全库最大函数，未逐指令分析；从命名与相邻符号看是屏幕页定位的完整实现。
