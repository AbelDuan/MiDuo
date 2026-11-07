# 59 · LSPosed 无法启用模块 —— 根因是重建数据库漏了 user_version

> 时间：2026-11-07
> 症状：LSPosed 管理器显示模块无法启用 / 开关无反应；LSPosed daemon 无主进程

## 根因

我在重建 `modules_config.db` 时，**只建了表结构和数据，漏掉了 `PRAGMA user_version`**。

LSPosed 用 `SQLiteOpenHelper` 管理 schema：

- 打开数据库 → 读 `user_version`
- `user_version == 0` → 认为库是全新的 → 调用 `onCreate()` 执行 `CREATE TABLE`
- 表**已经存在** → `SQLiteException: table modules already exists` → **daemon 主线程崩溃**

崩溃栈（`/data/adb/lspd/log/daemon_crash_*.log`）：

```
java.lang.RuntimeException: android.database.sqlite.SQLiteException:
    table modules already exists (code 1 SQLITE_ERROR):
    , while compiling: CREATE TABLE modules (module_pkg_name text PRIMARY KEY NOT NULL,apk_path text);
    at j7.<init>(...)        ← SQLiteOpenHelper 构造
    at j7.t(...)
    at org.lsposed.lspd.Main.main(...)
```

**正确的 `user_version` 是 `101`**（LSPosed 2.2.1 / API 102 的 schema 版本）。

## 修复

```python
con = sqlite3.connect(rebuilt_db)
con.execute("PRAGMA user_version = 101")
con.commit()
```

验证：

```python
cur.execute("PRAGMA user_version")   # → 101
cur.execute("PRAGMA integrity_check") # → ok
```

部署后 `ksud soft-reboot`，`lspd` 主进程正常出现：

```
root  16927  16865  ...  do_epoll_wait  S  lspd
```

LSPosed 管理器显示「已激活 2.2.1 (7912) API 102」，模块可正常启用。

## 教训

**重建 LSPosed 数据库时必须保留 `PRAGMA user_version`，否则 daemon 会无限崩溃。**

对比各库的版本号：

| 库 | user_version |
|---|---|
| 原始 `modules_config.db` | 101 |
| 我重建的（错误） | **0** |
| 修复后 | 101 |

排查这类问题的快捷命令：

```bash
ls -t /data/adb/lspd/log/ | head -3          # 有没有 daemon_crash_*
ps -A | grep lspd                            # lspd 主进程在不在
```

只要看到 `daemon_crash_*.log` 且没有 `lspd` 进程，就是 daemon 启动失败，而 `CREATE TABLE ... already exists` 几乎一定是 `user_version` 丢了。

## 数据库会反复损坏

本次排查中还发现 `modules_config.db` 会**反复出现 `database disk image is malformed`**（累计 3 次）。每次都用逐 rowid 抢救的方式重建：

```python
for rowid in range(lo, hi+1):
    try:
        cur.execute("select ... from module_configs where rowid=?", (rowid,))
        r = cur.fetchone()
        if r: dcur.execute(insert_sql, r); ok += 1
    except Exception:
        fail += 1      # 跳过损坏行
```

重建后**必须补 `PRAGMA user_version = 101`**。

## 相关操作约束（用户要求）

1. **不允许直接 `adb reboot`**，只能用 `ksud soft-reboot`
2. 改版 MiDuo（`com.lsposed.miduo`）与原版（`dev.duo.hookprobe`）**只允许启用一个**

当前配置：改版 `enabled=1`，原版 `enabled=0`。
