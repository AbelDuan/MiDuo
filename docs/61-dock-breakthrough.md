# 61 · dock 侧移突破 —— HyperChanger 冲突 + 4×6 布局前提

> 时间：2026-11-07
> 承接 docs/60，本轮拿到了决定性证据

## 突破一：HyperChanger 冲突是 `CORE_NOT_READY` 的根因

### 现象

禁用 `btm.m.os4.systemuihook`（HyperChanger）前：

```
E/DuoWorkspace: PAGE_GUARD_FAILED; unchanged
E/DuoWorkspace: CORE_NOT_READY; stock layout restored, no hooks
```

禁用后（同样在桌面进程，但只注入 MiDuo）：

```
W/MiDuoLayout: LAYOUT want=stock active=stock; unchanged
W/DuoWorkspace: STOCK layout in use; no hooks installed    ← 无任何错误
```

**`CORE_NOT_READY` 和 `PAGE_GUARD_FAILED` 全部消失。**

### 证据

两个模块在同一个 `com.miui.home` 进程里竞争同一批 native hook：

```
Loaded native module com.lsposed.miduo    (libduoworkspace.so)
Loaded native module btm.m.os4.systemuihook (libhyperpatch.so)
Loaded native module btm.m.os4.systemuihook (libhyperchanger_dock.so)   ← 也 hook dock
I/Dobby: [!] 0x7a8057198c already been hooked.
I/Dobby: [!] 0x7a80553d30 already been hooked.
```

`libhyperchanger_dock.so` 名字就带 dock，与 MiDuo 的 `duo_official_dock` 直接冲突。
MiDuo 用自研 `HookPageGuard` 做 inline hook，Dobby 先占了目标函数，
MiDuo 的 preflight 字节校验就失败 → 整组 disabled → `CORE_NOT_READY`。

**处置：HyperChanger 已在 LSPosed 中禁用（`modules_state.enabled=0`）。**

## 突破二：dock 侧移功能本身完全可用

把 `launcher4x5.db` 重命名为 `launcher4x6.db`，并设 `miduo-layout/active=duo` 后：

**截图确认右侧出现了竖直侧栏**，6 个图标（电话/短信/浏览器/相机/MiDuo/微信）。

同时 native 日志开始大量输出：

```
I/DuoOfficialDock: CALL kind=23 scale_arguments stage=1 landscape=0 n=286
I/DuoOfficialDock: CALL kind=13 transform stage=1 landscape=0 n=286
I/DuoOfficialDock: CALL kind=23 scale_arguments stage=3 landscape=0 n=287
I/DuoOfficialDock: CALL kind=13 transform stage=2 landscape=0 n=287
（持续刷屏，n 递增到 300+）
```

**这证明 `duo_official_dock` 的 hook 已安装并持续劫持桌面 dock 的布局计算。**

## 剩下的唯一障碍：需要「真正的 4×6 桌面数据库」

上述实验里侧栏虽然出现，但**图标布局错乱**（图标从 20 个掉到 8 个，组件重排）。

原因：`launcher4x6.db` 只是 `launcher4x5.db` 改了名，`favorites` 表里的
`cellY` 坐标仍是按 5 行排的，桌面按 6 行读取时大量图标越界被丢弃。

回滚后（`launcher4x5.db` + `active=stock`）：

- 桌面恢复正常 4×5
- 但侧栏消失（hook 未再安装，因为 `want=stock`）

### 为什么改 prefs 无效

`launcher_sharedpreference.xml` 里的网格键：

```xml
<int name="pref_key_cell_x" value="4"/>
<int name="pref_key_cell_y" value="4"/>
<string name="desktop_cell_count_in_db">4x5</string>
```

单独改 `pref_key_cell_y=6` 会在桌面启动后被**重置回 4**；
同时改 `desktop_cell_count_in_db=4x6` 也一样被重置回 `4x5`。

**因为桌面是从「数据库文件名」推导网格的，prefs 只是被动回写。**

而 `MiuiHomeSettingActivity` 的「桌面布局」分区只有：
卸载后自动补位 / 锁定桌面布局 / 无字模式 —— **没有网格切换项**。

### MiDuo 不自己生成 4×6

删掉整个 `miduo-layout/` 目录后重启桌面，它不会重建（因为 `want=stock`）。
`.so` 的逻辑是**消费**已有的 4×6（`STOCK_COPY created from the 4x6 layout`），
而不是创建。

## 当前状态

| 项 | 值 |
|---|---|
| HyperChanger | **已禁用**（enabled=0） |
| MiDuo | 启用，`CORE` 就绪 |
| 桌面数据库 | `launcher4x5.db`（4×5，已回滚） |
| `miduo-layout/active` | `stock` |
| 桌面表现 | 正常 4×5，dock 在底部，无侧栏 |
| 备份 | `/data/local/tmp/dbbak/`（4x5 三件套）、`/data/local/tmp/ml-bak/`（miduo-layout）、`/data/local/tmp/lhbak-1794053699/`（prefs+db） |

## 下一步

要让功能持续生效，必须构造一个**真正按 6 行排布**的 `launcher4x6.db`：

- `favorites` 表里 `cellY` 从 0..4 重映射到 0..5 区间
- 处理文件夹内图标、组件（widget）、dock 项
- 保持 `screens` 表与图标数量一致

技术可行但需要仔细处理坐标重排。另一个更省事的思路：
**找一个本来就是 4×6 布局的桌面备份**（云备份 / 旧版本数据库）直接替换。

## 关键教训

1. **多模块 native hook 冲突会静默降级** —— 没有崩溃、没有异常，只是
   `CORE_NOT_READY` 然后什么都不做。判断方式：看 native 模块加载顺序 + Dobby 日志
2. **`dumpsys` 里 polish 过的日志不要只看一个 tag** —— MiDuo 有 10 个 tag
3. **HyperOS 4 桌面网格完全由数据库文件名决定**，prefs 改不动
4. **侧栏能出现但图标错乱 = 数据库内容与文件名不符**，不是功能 bug
