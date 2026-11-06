# 15 · 第 2 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 1 轮末 | 第 2 轮末 | 变化 |
|---|---|---|---|
| javac 报错 | 117 | **64** | −53 |
| 产出 class | 0 | **56** | +56 |
| 已归零的文件 | — | WidgetCenterActivity、T.java（仅剩 1）、Engine、Surfaces、Preflight | +5 |

## 本轮完成的修复

| 修复 | 文件 | 错误降幅 |
|---|---|---|
| 字段 `L`（T.e）与 `P`（boolean）遮蔽类 `L`/`P` | MainActivity | 117→106 |
| 静态调用 `r.a()`/`v.a()` 被同名字段遮蔽 | MainActivity | 106→99 |
| `T.java` 裸字段引用（`b`/`f`/`a`→`_v`）、`new a(`→`new RowAdapter(` | T.java | 99→85 |
| `AlbumWidgetProvider` 按 smali 修正 `c.a`/`c.b`/`c.c`/`b.b`/`d.a` 的目标类 | AlbumWidgetProvider | 85→77 |
| `h_lower_` 匿名类 `h.this` → 捕获引用；`ex` 作用域 | h_lower_ | 77→75 |
| `ex` → `th`（复用 catch 变量）；删除 `IosNcActivity` 残留分支；`R.color`→`ResIds.color` | 6 文件 | 75→68 |
| `WidgetCenterActivity` 嵌套类 `a` 改名 `WidgetListener`，`b.d` 全限定 | WidgetCenterActivity | 68→64（该类归零） |

## 关键教训：`b.java` 是陷阱

`dev.duo.workspaceprobe.b`（WorkspaceHooks，17,051 行）不能靠正则批量改。本轮两次尝试都失败：

1. 正则 `b\.(a|b)\s*\(` → 全限定：错误 10→592（把局部变量调用全改了）
2. 同样的 `b.b(` 替换：错误 10→159

原因：该类里 `b` 同时是类名、局部变量、参数名、字段名，正则无法区分。

**结论**：`b.java` 的 8 个残余错误必须逐行人工判断，不能批量。

## 剩余 64 个错误

| 文件 | 错误 | 根因 |
|---|---|---|
| `workspaceprobe/b.java` | 8 | `b` 多重身份；`SurfaceControlViewHost` 构造器歧义；`n.setBounds` 的 `n` 是局部变量 |
| `f_lower_.java` | 5 | 局部变量遮蔽 |
| `o_lower_.java` | 5 | 同上 |
| `MainActivity.java` | 5 | 嵌套类 `f` 构造器参数、`r6` 寄存器残留 |
| `a_lower_.java` | 4 | 同上 |
| `AlbumWidgetProvider.java` | 4 | 同上 |
| `G/Q/h_lower_/r.java` | 各 4 | 同上 |
| 其余 11 文件 | 25 | 单点问题 |

## 未完成项

| 项 | 状态 | 原因 |
|---|---|---|
| d8 出 dex | 未开始 | 需先归零 |
| 重签名替换 APK | 未开始 | 同上 |
| **装机验证** | **阻塞（第 2 轮仍阻塞）** | `adb devices` 为空，设备 `02040860499C3540` 持续离线 |

### smali 路径仍可用（对照基准）

`out/MiDuo-rebuild.apk`（3,431,594 字节）签名有效，`classes.dex` 1,360,028 字节。

## 下一轮计划

1. `b.java` 的 8 个错误逐行修（**禁止正则**）
2. 剩余 56 个分散错误逐文件清
3. 归零后 d8 → 替换 dex → 重签
4. 设备恢复后装机验证
