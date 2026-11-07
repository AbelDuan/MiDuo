# 58 · 模块功能不生效 —— 根因是 LSPosed 数据库损坏

> 时间：2026-11-07
> 症状：外屏侧边栏、桌面布局、外屏比例等全部不生效；App 显示「未连接 LSPosed」，配置项全是「—」

## 根因（最终确认）

**LSPosed 的 `modules_config.db` 数据库文件损坏。**

损坏范围：
- `PRAGMA integrity_check` → `database disk image is malformed`
- MiDuo 的 `duo_top` prefs 记录（`module_configs` 表，24 条）所在 B-tree 页损坏
- 损坏 rowid 区间：7700–8699、32200–34199
- 其余表（modules/modules_state/scope）可正常读取

### 故障链路

```
LSPosed 读 module_configs 里 MiDuo 的 duo_top
  → SQLite 抛 "database disk image is malformed"
  → LSPosed 捕获后静默返回 null
    → 客户端 RemotePreferences.newInstance()
      → throw new RemoteException("Framework returns null")
        → XposedService$ServiceException: Xposed service error
          → MiDuo 显示「未连接 LSPosed」，所有配置读不到
            → 侧边栏等全部功能不生效
```

反编译验证（`libxposed/service/RemotePreferences.java:39-43`）：

```java
static RemotePreferences newInstance(XposedService service, String group) throws RemoteException {
    Bundle output = service.asInterface().requestRemotePreferences(group);
    if (output == null) {
        throw new RemoteException("Framework returns null");   // ← 这里
    }
```

而 framework 侧（`framework.dex` 的 `e1` 类）在 bundle 为 null 时还会抛 NPE：

```java
Bundle bundle = (Bundle) (obtain2.readInt() != 0 ? Bundle.CREATOR.createFromParcel(obtain2) : null);
...
if (bundle.containsKey(...))    // ← bundle 为 null → NullPointerException
```

## 修复过程

### 1. 重建数据库

```python
# 逐 rowid 抢救可读行，跳过损坏行
ok = 0; fail = 0
for rowid in range(7700, 34325):
    try:
        scur.execute("select ... from module_configs where rowid=?", (rowid,))
        r = scur.fetchone()
        if r is None: continue
        dcur.execute(insert_sql, r); ok += 1
    except Exception:
        fail += 1      # 损坏行跳过
```

结果：
- `integrity_check` → **ok**
- 抢救出 193/288 行 prefs
- **MiDuo 保住 96 条 duo_top 记录**
- 其余表全部完整（modules 31、modules_state 30、scope 81、lspd_configs 2）

### 2. 部署

```bash
# 备份损坏库
cp modules_config.db modules_config.db.corrupt-<ts>
# 停 daemon
killall lspd
# 替换（必须删掉旧 -wal/-shm，否则与新库冲突）
cp /data/local/tmp/rebuilt.db modules_config.db
rm -f modules_config.db-wal modules_config.db-shm
chmod 600 modules_config.db; chown root:root modules_config.db
```

### 3. 顺带修复的两个独立问题

| 问题 | 现象 | 修复 |
|---|---|---|
| `n.smali` monitor VerifyError | `[0x163] monitor-exit on non-object (BooleanConstant)` | 删除 L4182 的 `const/4 v0, 0x1`（它把 monitor 锁对象 v0 覆盖成了常量） |
| `module.prop` 缺必填字段 | LSPosed 只加载 native 模块，不加载 Java 模块 | 补全 `id`/`name`/`author`/`description`/`version`/`versionCode` |

`module.prop` 修复前的对比：

```
# 修复前（只有 4 个 API 字段）
minApiVersion=102
targetApiVersion=102
staticScope=false
autoHotReload=false

# 修复后
id=miduo
name=MiDuo
author=MiDuo
description=HyperOS foldable enhancement (license removed)
version=1.0.415
versionCode=415
minApiVersion=100
targetApiVersion=102
staticScope=false
autoHotReload=true
```

### 4. 新增 MemPrefs 兜底

`sakura/` 解决了 prefs 为 null 时的崩溃：

- `o.1.smali` 构造器：prefs 为 null 时用 `MemPrefs`（内存实现）
- `L$a.smali` 的 `onServiceBind`：`registerOnSharedPreferenceChangeListener` 前加 null 检查
- 新增 `MemPrefs.smali` + `MemPrefs$Editor.smali`（完整实现 `SharedPreferences` 接口）

## 验证结果

### ConfigProvider 直读（修复后）

```bash
$ adb shell "content call --uri content://com.lsposed.miduo.config --method railEnabled --arg com.ss.android.ugc.aweme"
Result: Bundle[{enabled=true, railBlack=false, railColor=white, railBackground=-789517,
               innerNativeBar=false, hiddenTop=0, railCustomBackground=false}]

$ adb shell "content call --uri content://com.lsposed.miduo.config --method railCustom --arg com.ss.android.ugc.aweme"
Result: Bundle[{layout=back,home,recents,dock,dock,dock,-, sidebarApps=, sidebarKeyEnd=false,
               panelOrder=, sidebarFreeform=true}]
```

**不再有任何 error。**

### App 界面

| 项 | 状态 |
|---|---|
| MiDuo 运行中 | ✅ 主开关已开 |
| 桌面 | ✅ 4×6 |
| 外屏比例 | ✅ 9:16 |
| 侧栏 | ✅ 白色 |
| 顶部避让高度 | ✅ 126px |
| 外屏侧栏颜色 | ✅ 白色（选中） |
| 外屏页面缩放 | ✅ 90% |
| 诊断信息 | ✅ 运行正常 |
| **LSPosed** | ✅ **已连接 · 2.2.1** |
| **作用域** | ✅ 核心五项和附加功能都已勾选 |

### DuoRail 运行时日志

```
W/DuoRail: Duo config read pkg=com.lsposed.miduo reason=foreground direct ms=1 enabled=false
W/DuoRail: Rail off reason=scene(no home/app sidebar) home=false split=false pkg=... size=2364x1672
```

- `direct ms=1` —— **配置直读成功，1 毫秒**
- `Rail off reason=scene(...)` —— rail 逻辑正常运行，只是当前场景（内屏、MiDuo 自己的 App）不需要侧栏

## 踩坑记录

### 坑：修复数据库后 App 组件突然不可用

**现象**：`am start` 报 `Activity class {com.lsposed.miduo/dev.duo.hookprobe.MainActivity} does not exist`，但 `dumpsys package` 里组件完整，APK sha256 与本地一致。

**修复**：

```bash
adb shell pm enable com.lsposed.miduo          # shell 权限可用
adb shell cmd package install-existing com.lsposed.miduo
adb shell monkey -p com.lsposed.miduo -c android.intent.category.LAUNCHER 1
```

之后 `am start` 恢复正常。

**注意**：`dumpsys package <pkg>` 在 MIUI 上本来就不输出 `Activities:`/`Services:` 段（正常包也一样），不能据此判断组件缺失。

### 坑：`resolve-activity` 在 MIUI 上不可用

`cmd package resolve-activity --brief -c LAUNCHER <pkg>` 对**任何**包都返回 `No activity found`，不能作为诊断依据。

## 当前状态

| 项 | 值 |
|---|---|
| APK | `out/MiDuo-rebuild.apk` |
| 数据库 | 已重建，`integrity_check=ok` |
| LSPosed 连接 | ✅ 已连接 · 2.2.1 |
| 配置读写 | ✅ 完全正常 |
| DuoRail | ✅ 运行中，配置直读 1ms |

## 待验证

**外屏 App 模式下的侧栏显示**需要物理合盖（`cmd device_state state 0` 只改软件状态，不会真的点亮外屏）。

验证方法：
1. 合上手机
2. 外屏打开**已开启 Duo 的 App**（如抖音 `com.ss.android.ugc.aweme`，当前 `enabled=true`）
3. 右侧应出现六格侧栏：返回 / 主页 / 最近任务 / dock / dock / dock / 空
