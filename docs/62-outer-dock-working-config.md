# 62 · 外屏右侧 dock —— 成功配置与复现步骤

> 时间：2026-11-07
> 状态：**已验证成功并稳定**（截图确认，桌面重启后保持）

## 最终效果

外屏（1168×1712，合盖）桌面：

- 底部 dock **完全隐藏**
- 右侧出现**竖直 dock**（电话 / 微信 / 浏览器 / 相机 / 支付宝 / Mi）
- 桌面图标 5 行完整，无错乱

## 成功配置组合（关键）

```
/data/user_de/0/com.miui.home/databases/launcher4x6.db     ← 文件名必须是 4x6
/data/user_de/0/com.miui.home/files/miduo-layout/active    ← 内容 "duo"（无换行）
debug.duo.inner_dock_hide = 1                              ← 隐藏底部 dock
```

**同时 prefs 必须保持这个"矛盾"组合：**

```xml
<!-- launcher_sharedpreference.xml -->
<int name="pref_key_cell_y" value="4"/>              ← 4（桌面按 5 行显示，图标不错乱）
<string name="desktop_cell_count_in_db">4x6</string> ← 4x6（与文件名一致）
<int name="pref_key_cell_x" value="4"/>
```

### 为什么这个组合能工作

MiDuo 的判定逻辑（`.so` 内）：

1. 检查 `databases/` 下**文件名**是 `launcher4x6.db` 还是 `launcher4x5.db`
   → 有 4x6 就认为可以进 duo
2. 读 `miduo-layout/active` → 必须 `duo`
3. 两者满足后安装 `duo_official_dock` hook

而桌面自己按 `pref_key_cell_y` 决定每屏行数：

- `pref_key_cell_y=4` → 桌面按 5 行（0..4）渲染，现有 `favorites.cellY`（0..4）
  **正好放得下，图标一个不丢**
- 如果把它也改成 6 → 桌面按 6 行读，但数据是 5 行布局，
  会触发"网格升级"并把越界条目丢弃 → 图标从 20 个掉到 8 个

**所以"文件名 4x6 + pref_key_cell_y 4"才是正确的组合。**

### 失败过的组合（别再试）

| 组合 | 结果 |
|---|---|
| 只改文件名 4x6，prefs 留 4x5 | `want=stock`，不激活 |
| 文件名 + prefs 全改 4x6 | 桌面按 6 行读，**图标大面积丢失** |
| 只改 prefs 4x6，文件名 4x5 | 桌面启动后把 prefs **重置回 4x5** |
| 手动放 `duo/launcher4x6.db` | `refused: a second copy of the layout in use` |

## 关键前提：HyperChanger 必须禁用

LSPosed 中 `btm.m.os4.systemuihook`（HyperChanger）加载 `libhyperchanger_dock.so`，
与 MiDuo 的 `duo_official_dock` 抢同一批 native hook 点。

不禁用它时：

```
E/DuoWorkspace: PAGE_GUARD_FAILED; unchanged
E/DuoWorkspace: CORE_NOT_READY; stock layout restored, no hooks
```

禁用后 `CORE_NOT_READY` 消失，dock hook 才能装上。

## 完整复现步骤

```bash
# 0) 前提：LSPosed 里禁用 HyperChanger（btm.m.os4.systemuihook）

# 1) 改数据库文件名（保持内容不变！）
su -c 'killall com.miui.home'
sleep 4
D=/data/user_de/0/com.miui.home/databases
su -c "mv $D/launcher4x5.db $D/launcher4x6.db; \
       mv $D/launcher4x5.db-wal $D/launcher4x6.db-wal; \
       mv $D/launcher4x5.db-shm $D/launcher4x6.db-shm; \
       chown u0_a127:u0_a127 $D/launcher4x6.db*; chmod 600 $D/launcher4x6.db*"

# 2) prefs：cell_y 留 4，desktop_cell_count_in_db 改 4x6
F=/data/user_de/0/com.miui.home/shared_prefs/launcher_sharedpreference.xml
su -c "sed -i 's|desktop_cell_count_in_db\">4x5|desktop_cell_count_in_db\">4x6|' $F"

# 3) active=duo
M=/data/user_de/0/com.miui.home/files/miduo-layout
su -c "echo -n duo > $M/active; chown u0_a127:u0_a127 $M/active; chmod 600 $M/active"

# 4) 隐藏底部 dock
su -c 'setprop debug.duo.inner_dock_hide 1'

# 5) soft reboot（必须！让 native 层重新初始化）
su -c '/data/adb/ksu/bin/ksud soft-reboot'

# 6) 开机后重设属性（debug.* 不持久）
su -c 'setprop debug.duo.inner_dock_hide 1'
```

## 验证方法

```bash
P=$(pidof com.miui.home)

# 必须看到 axisV=1（垂直 dock 轴）
logcat -d -s DuoOfficialDock:V | grep INNER_OFFSET | tail -3
# I/DuoOfficialDock: INNER_OFFSET dx=0.0000 dy=0.0000 local=0.0000 axisV=1

# 必须看到持续 CALL
logcat -d -s DuoOfficialDock:V | tail -5
# I/DuoOfficialDock: CALL kind=6 delta stage=601 landscape=0 n=113
```

## 已知的持久化问题

`debug.duo.inner_dock_hide` 是 **debug 属性**（`debug.*` 前缀），
设备彻底重启后清空，需要重新 `setprop`。

**已解决**：创建了开机脚本 `/data/adb/service.d/miduo-dock.sh`：

```sh
#!/system/bin/sh
setprop debug.duo.inner_dock_hide 1
```

其他三项（文件名、active、prefs）都是文件，持久有效。

## 重要：`debug.duo.master` 必须保持 0（或空）

**dock 侧移完全不依赖 `master`。** 实测：

| master | 右侧 dock | 桌面渲染 |
|---|---|---|
| `0` | ✅ 正常 | ✅ 壁纸/图标完全正常 |
| `1` | ✅ 正常 | ❌ **壁纸消失、时间跑到右上角、底部出现搜索图标** |

`master=1` 会激活 Java 层的 `DuoRail`（日志 `DuoRail: Mode transition finished ms=546`），
而 Java rail 在本机上会污染桌面渲染。

**所以：不要为了"让 MiDuo 显示运行中"去设 master=1。**

代价是 App 首页的开关会显示为「关闭」（toggle 读 `debug.duo.master`），
但右侧 dock 照常工作。这是原版 App 的 UI 不一致问题（标签读 prefs、toggle 读属性），
不是配置错误。

## 验证：最终成功状态

```
右侧竖直 dock（6 格）：电话 / 微信 / 浏览器 / 相机 / MiDuo / 支付宝
底部 dock：已隐藏
桌面：5 行图标完整，壁纸正常
```

日志佐证：

```
I/DuoOfficialDock: INNER_OFFSET dx=0.0000 dy=0.0000 local=0.0000 axisV=1
I/DuoOfficialDock: CALL kind=13 transform stage=1 landscape=0 n=240
I/DuoOfficialDock: CALL kind=23 scale_arguments stage=1 landscape=0 n=240
```

`axisV=1` = 垂直 dock 轴 = 侧边 dock。


## 备份位置（回滚用）

```
/data/local/tmp/dbbak/              ← 原始 4x5 数据库三件套
/data/local/tmp/ml-bak/             ← 原始 miduo-layout
/data/local/tmp/lhbak-1794053699/   ← prefs + db
/data/adb/lspd/config/modules_config.db.before-hc-disable-1794054836
```
