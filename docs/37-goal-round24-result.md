# 37 · 第 24 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 23 轮末 | 第 24 轮末 | 变化 |
|---|---|---|---|
| javac 批量报错 | 514 | 514 | 持平 |
| 产出 class | 409 | **409** | 持平 |
| **符号解析真实错误** | 100 | **100** | 持平 |

错误总数没变，但**错误构成发生了实质变化**——本轮修掉了 5 类具体问题。

## 本轮完成的修复

### 1. `java.lang.Process` 类型冲突（4 处）

`b.java` 第 80 行 `import android.os.Process;` 遮蔽了 `java.lang.Process`，而以下 4 处需要 `java.lang.Process`（有 `getInputStream()`/`waitFor()`/`destroy()`）：

```java
531:   private Process q5;                          →  private java.lang.Process q5;
6692:  Process process = this.q5;                   →  java.lang.Process process = ...
12628: final Process process;                       →  final java.lang.Process process;
15893: a(Process process, Object obj)              →  a(java.lang.Process process, ...)
```

效果：`getInputStream`、`waitFor`、`isAlive`、`destroy` 相关的 6 个错误全部消失。

### 2. `final` 变量被重新赋值（27 处声明 + 1 处）

`b.java` 中有 28 个变量声明为 `final` 但后续被重新赋值：

```java
final b bVar = ...;          →  b bVar = ...;          (4 处)
final boolean z2 = ...;      →  boolean z2 = ...;      (17 处)
final int i3 = ...;          →  int i3 = ...;          (5 处)
final InterruptedException e3 = null;  →  ...          (1 处)
final Boolean bool = null;   →  Boolean bool = null;   (1 处)
```

效果：`cannot assign a value to final variable` 从 6 个降到 **0**。

### 3. `h0` 常量遮蔽类 `h0`（1 处）

第 233 行：

```java
private static final int h0 = 30;   →   private static final int h0_v = 30;
```

`h0.D`、`h0Var` 这类引用中的 `h0` 是**类名**，被字段遮蔽导致：

```
L5084:  int max = this.W0.a() ? Math.max(h0.D, this.W0.R0_v) : h0.D;   ← int cannot be dereferenced
L10373: R r2 = new R("status", h0Var, 963.0f, T, 205, h0.D, ...);      ← 同上
L11027: int i4 = r7 == this.N6 ? h0.D : r7.g;                          ← 同上
```

效果：4 个 `int cannot be dereferenced` 消失。

## 关键观察：修好一处会暴露另一处

对比修复前后的错误清单：

```
修复后消失的（4 个）：
  L10373 int cannot be dereferenced
  L11027 int cannot be dereferenced
  L5084:44 int cannot be dereferenced
  L5084:66 int cannot be dereferenced

修复后新增的（4 个）：
  L13501 cannot find symbol
  L13785 bad operand types for binary operator '<'
  L13935 cannot find symbol
  L13940 cannot find symbol
```

**总数守恒**：`h0` 遮蔽解除后，javac 能继续分析后面的代码，于是暴露出 4 个原本被掩盖的错误。

这说明 `b.java` 的 100 个错误是**分层掩盖**的——每修一层，下一层就浮现。

## 当前 100 个错误的构成

```
44  cannot find symbol
27  incompatible types
 4  array required, but int found
 4  int cannot be dereferenced
 3  incomparable types
 3  float cannot be dereferenced
 2  not an enclosing class
 2  no suitable method found for b(int,<anonymous ...>)
 2  array required, but boolean found
 1  non-static variable r5 cannot be referenced
```

### 剩余 `dereferenced` 错误的位置

```
L13349: long a2 = a.a(i2);                          ← a 被遮蔽
L13472: a.b a2 = a.a(call != null, ...);            ← a 被遮蔽
L3482:  Math.toDegrees(Math.asin(Math.min(1.0f, (((h.a(valueOf, o_v, h0Var.S) / ...  ← h.a 是类，但 h 被遮蔽
L3685:  Math.max(56.6676f, (h.a("23:59", m, false) / 2.0f) + z_v);   ← 同上
L3825:  h.a(str, f2, this.S, f3, f4, this.i0, this.j0_v);            ← 同上
L8708:  return new float[]{r0_v.x, r0_v.y, ...}                      ← r0_v 应为类
```

## 累计进展

| 轮次 | 批量报错 | 真实错误 | class |
|---|---|---|---|
| 起点（旧 java/） | 415 | — | 0 |
| 第 1 轮 | 314 | — | 56 |
| 第 7 轮 | 2 | — | 409 |
| 第 13 轮 | 733 | 902 | 409 |
| 第 19 轮 | 554 | — | 409 |
| 第 20 轮 | 528 | — | 409 |
| 第 23 轮 | 514 | 100 | 409 |
| **第 24 轮** | **514** | **100** | **409** |

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 的 100 个真实错误 | 已修 5 类，剩余分层暴露 |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 24 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 下一轮计划

按 `dereferenced` 错误清单继续修遮蔽常量：

1. **`a`** —— L13349、L13472 的 `a.a(...)`、`a.b`
2. **`h`** —— L3482、L3685、L3825 的 `h.a(...)`
3. **`r0_v`** —— L8708 的 `r0_v.x`

每修一个，用 `SymList` 验证真实错误数的变化。

**方法论已固化**：
- 用 `SymList`（javac Tree API + `-encoding UTF-8`）获取精确错误清单
- 按错误位置定位代码
- 判断是「类名被字段遮蔽」还是「局部变量被误加 `_v`」
- 修完验证，避免连锁破坏
