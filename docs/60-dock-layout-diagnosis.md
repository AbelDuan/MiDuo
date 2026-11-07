# 60 · dock 侧移不生效 —— 完整诊断链

> 时间：2026-11-07
> 症状：外屏桌面 dock 不侧移；MiDuo 显示「运行中」但功能不生效

## 结论先行：不是版本问题

`.so` 里只有一个硬编码 SHA256 校验值：

```
libduoworkspace.so 内置期望值:
  ffac014c9a627e5f2fe51a40c9f7457fe7ac5ac212adf5b0cb7f38d9560c9d58

桌面 lib/arm64-v8a/libapp_launcher.so 实际 SHA256:
  ffac014c9a627e5f2fe51a40c9f7457fe7ac5ac212adf5b0cb7f38d9560c9d58
```

**完全一致。** 加上 `module.prop`/`C.smali` 里的 `8.01.02.6325` 与桌面
`RELEASE-8.01.02.6325-260818-09181716-R` 匹配 —— **MiDuo 就是针对这台机器的
桌面版本编译的，版本校验会通过。**

## native 层其实在运行

之前误判为「native 零日志」，实际日志 tag 是 `DuoWorkspace` / `MiDuoLayout`：

```
W/DuoWorkspace: ENTRY process=com.miui.home pid=3486
W/MiDuoLayout:  LAYOUT want=stock active=stock; unchanged
W/DuoWorkspace: STOCK layout in use; no hooks installed
E/DuoWorkspace: CORE_NOT_READY; stock layout restored, no hooks
```

**native 加载并执行了，但它主动选择 `want=stock`，因此一个 hook 都不装。**

## 核心机制：MiDuo 的布局状态机

`.so` 里的关键字符串：

```
stock.tmp
%s/miduo-layout
launcher4x5.db
launcher4x6.db
STOCK_COPY created from the 4x6 layout
no saved 4x6 layout
LAYOUT want=%s active=%s refused: %s
LAYOUT resume refused: database already open; unsafe
LAYOUT unsafe; Home stopped before its database opens
CORE_NOT_READY
PAGE_GUARD_FAILED
```

工作目录：`/data/user_de/0/com.miui.home/files/miduo-layout/`

```
active        → "stock" 或 "duo"
duo/          → duo 布局的数据库副本
```

**MiDuo 的 dock 侧移依赖「duo 布局」，而 duo 布局需要一个 4×6 的桌面数据库。**

当前状态：

| 项 | 值 |
|---|---|
| `miduo-layout/active` | `stock` |
| `miduo-layout/duo/` | 只有 `launcher4x5.db`（4×5！） |
| `databases/` | 只有 `launcher4x5.db` |
| 桌面网格 | 4 列 × 5 行 |

App 里显示「桌面 4×6」只是 UI 文案，**实际桌面是 4×5**。

App 的检测逻辑（`b.1.smali` L1744-1807）：

```java
// shell: [ -f launcher4x6.db ] && a=1; [ -f launcher4x5.db ] && b=1; echo $a$b
if ("10".equals(r)) return "launcher4x6.db";
if ("01".equals(r)) return "launcher4x5.db";   // ← 当前
```

## 手动改数据库会被安全检查拒绝

实测三种改法都被 native 层主动拒绝：

| 尝试 | 拒绝原因（日志原文） |
|---|---|
| 复制 `launcher4x5.db` → `launcher4x6.db` | `refused: workspace database unreadable or twice` |
| 把 4×6 放进 `duo/` 并设 `active=duo` | `refused: a second copy of the layout in use` |
| 只保留 `duo/launcher4x6.db` | `refused: database already open` + `PAGE_GUARD_FAILED` |

**MiDuo 要求：数据库唯一、未被任何进程打开、Home 已完全停止。手工操作无法满足。**

## 两个待验证的根因

### 1. `CORE_NOT_READY`（优先级高）

native 层报告核心未就绪，说明某些 hook 点的字节校验没通过。
`.so` 里的相关日志：

```
MISMATCH %s va=%lx; whole group disabled
STEP_MISMATCH va=%lx; site skipped
MISMATCH %s va=%lx; whole group disabled
```

**可疑对象：`btm.m.os4.systemuihook`（HyperChanger）**

同一进程的 LSPosed 日志：

```
Loaded native module btm.m.os4.systemuihook (libhyperpatch.so)
Loaded native module btm.m.os4.systemuihook (libhyperchanger_dock.so)   ← 同样 hook dock
Loaded native module btm.m.os4.systemuihook (libhyperchanger_folder.so)
I/Dobby: [!] [FunctionInlineHook.cc:55:DobbyHook]0x7a8057198c already been hooked.
I/Dobby: [!] [FunctionInlineHook.cc:55:DobbyHook]0x7a80553d30 already been hooked.
```

**两个模块都在 hook 桌面 dock 相关函数，Dobby 已明确报告冲突。**

验证方法：临时把 HyperChanger 移出 `com.miui.home` 的 scope，只看 MiDuo 能否
`CORE_READY`。

### 2. 桌面原生网格不是 4×6

必须让桌面**自己**生成 4×6 数据库（通过桌面设置 UI），MiDuo 才能接管：

长按桌面空白 → 更多设置 → 找「布局 / 网格」→ 选 4×6

## 已做的代码改动（诊断用，保留）

`b.smali` 的 `onModuleLoaded` 加了日志与异常捕获：

```java
Log.w("DuoRail", "onModuleLoaded process=" + processName);
if ("com.miui.home".equals(processName)) {
    try {
        System.loadLibrary("duoworkspace");
        Log.w("DuoRail", "loadLibrary duoworkspace OK");
    } catch (Throwable t) {
        Log.e("DuoRail", "loadLibrary duoworkspace FAILED", t);
    }
}
```

实测结果：`onModuleLoaded process=com.miui.personalassistant`（智能助理进程有），
桌面进程没有该日志 —— 但 native 层的 `ENTRY` 日志证明 .so 已通过
LSPosed `native_init.list` 正常执行，Java 侧日志缺失不影响 native。

## 关键教训

1. **不要只看一个 tag 就断定 native 没运行** —— 应先从 `.so` 里提取所有 log tag
   （`DuoWorkspace`、`MiDuoLayout`、`DuoOfficialDock`、`DuoSidebar` 等 10 个）
2. **SHA256 是判断版本兼容最直接的证据** —— 比版本号字符串可靠
3. **`miduo-layout/` 是状态机，不要手工伪造** —— 有唯一性/独占性检查
4. `dumpsys SurfaceFlinger` 里 `bounds={0,0,1712,205}` 不是 bug —— 那是
   旋转坐标系下的显示，Java 侧 `setCrop` 用的是正确的 `Rect(0,0,205,1712)`
