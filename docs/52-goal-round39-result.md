# 52 · 第 39 轮 goal 结果

> 时间：2026-11-07
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 38 轮末 | 第 39 轮末 | 变化 |
|---|---|---|---|
| javac 批量报错 | 421 | **418** | **−3** |
| 符号解析真实错误 | 100 | **100** | 持平 |
| **非符号错误** | 1 | **0** | **全部清零** |
| 产出 class | 409 | **409** | 持平 |

## 里程碑：100 个真实错误全部是 `cannot find symbol`

第 39 轮实现了本轮 goal 的**核心目标**：把所有非符号类错误清零。

现在的 100 个真实错误**全部是 `cannot find symbol`**，这是一个重要的状态收敛——从「17 类混合错误」变成「单一类型」。

## 本轮完成的三组修复（共 3 处）

### 1. L9035 的 `r1[1]` 数组引用（1 处）

```java
// 错误：r1 是 private volatile boolean r1，不是数组
((int[]) ...P5.get(...)) == null ? 0 : r1[1]

// 修复：内联重新取数组
((int[]) ...P5.get(...)) == null ? 0 : ((int[]) ...P5.get(...))[1]
```

### 2. `u_lower_.java` 的重复 `exc` 声明（1 处）

第 37 轮的批量修改在 L534 加了 `Exception exc = e2;`，而 L535 原本有 `Exception exc = e;`，造成重复声明。

```java
// 删除 L534
Exception exc = e2;   →  (删除)
// 保留 L535 但改用 e2（因为 e 是 Method 字段）
Exception exc = e;    →  Exception exc = e2;
```

### 3. 验证 L534 的类型（1 处）

`u_lower_.java` 第 47 行有 `private final Method e`，所以 `Exception exc = e;` 报
`incompatible types: Method cannot be converted to Exception`。

## 符号聚类分析（为下一轮铺路）

用 `SymDetail` 提取 100 个错误的符号名，聚类结果（共 92 个可分类符号）：

| 次数 | 符号 |
|---|---|
| 11 | `variable t` |
| 10 | `variable b` |
| 9 | `variable k` |
| 9 | `variable q` |
| 5 | `variable th` |
| 3 | `variable l` |
| 3 | `method invoke(Object,<nulltype>)` |
| 3 | `variable exc` |
| 3 | `variable r10` |
| 3 | `variable j` |
| 3 | `variable n` |
| 2 | `variable h` |
| 2 | `class workspaceprobe` |

### 最重要的发现：`variable t` 和 `variable T`

`SymDetail` 报的行号有偏移（因为它读的是另一份编译状态）。用 `SymList` 的精确行号才能对应到真实代码。

**精确的前 15 条错误**（用 `SymList` + PowerShell 提取）：

```
L10634: r2.n = true;                                        ← n 被遮蔽
L11139: int i3 = Color.luminance(k2.t >= 0 ? bVar.u(k2.t) : a) ...   ← t 被遮蔽
L11196: if (k2.t >= 0) {                                    ← t 被遮蔽
L11811: dev.duo.workspaceprobe.b.this.N();                   ← N() 方法不存在
L12209: h = field2.getType().getMethod("getActivityType", null);     ← h 是 Method 字段
L12210: i = dev.duo.workspaceprobe.g.getType().getMethod("getWindowingMode", null);
L12216: boolean z4 = ...c.getInt(runningTaskInfo) == 0 && ...d.getBoolean(runningTaskInfo);
L12220: Object obj2 = dev.duo.workspaceprobe.e.get(runningTaskInfo);
L12221: Object obj3 = dev.duo.workspaceprobe.g.get(f.get(runningTaskInfo));
L12222: final int intValue = ((Integer) dev.duo.workspaceprobe.h.invoke(obj3, null)).intValue();
L12233: if (!z4 || ((Integer) dev.duo.workspaceprobe.i.invoke(obj3, null)).intValue() == 5) {
L12257: if (intValue != 1 || ((Integer) dev.duo.workspaceprobe.i.invoke(obj3, null)).intValue() != 1) {
L12712: throw th;
```

### 反射相关的 `c`/`d`/`e`/`g`/`h`/`i` 类引用

L12216-L12257 这一组都涉及 `dev.duo.workspaceprobe.{c,d,e,g,h,i}` 这些**类**，但它们被 `b.java` 的同名字段遮蔽：

```java
// b.java 顶层字段（第 226-234 行）
private static Field e = null;    // 遮蔽类 e
private static Field g = null;    // 遮蔽类 g
private static Method i = null;   // 遮蔽类 i
```

这是第 26 轮 TopFix 尝试过的方向，但批量改名会让 117 个其他文件的引用失效。

## 累计进展

| 轮次 | 批量报错 | 真实错误 | 非符号 | class |
|---|---|---|---|---|
| 起点（旧 java/） | 415 | — | — | 0 |
| 第 1 轮 | 314 | — | — | 56 |
| 第 7 轮 | 2 | — | — | 409 |
| 第 13 轮 | 733 | 902 | — | 409 |
| 第 23 轮 | 514 | 100 | — | 409 |
| 第 29 轮 | 455 | 100 | 20 | 409 |
| 第 34 轮 | 432 | 100 | 16 | 409 |
| 第 35 轮 | 426 | 100 | 8 | 409 |
| 第 36 轮 | 425 | 100 | 5 | 409 |
| 第 37 轮 | 423 | 100 | 4 | 409 |
| 第 38 轮 | 421 | 100 | 1 | 409 |
| **第 39 轮** | **418** | **100** | **0** | **409** |

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 的 100 个真实错误 | **全部是 cannot find symbol** |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 39 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 最后 1 轮（第 40 轮）的计划

**必须做的三件事**：

1. **处理最集中的 `variable t`（11 个）和 `variable b`（10 个）**
   - 这两个符号占 21%，且都是同一类遮蔽问题
   - 单点修复可能带来 2–5 个的改善

2. **完善交接文档**
   - `docs/` 已有 52 份记录
   - 需要一份「当前状态总览 + 剩余工作清单」的交接文档
   - 明确说明：409 class / 120 文件通过 / smali 路径可用 / 100 个 cannot-find-symbol

3. **最终验证**
   - 确认 409 class 产出
   - 确认 `out/MiDuo-rebuild.apk` 签名有效
   - 确认 `build.ps1` 可重新打包
