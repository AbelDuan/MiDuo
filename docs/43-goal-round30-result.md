# 43 · 第 30 轮 goal 结果

> 时间：2026-11-07
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 29 轮末 | 第 30 轮末 | 变化 |
|---|---|---|---|
| javac 批量报错 | 455 | **445** | **−10** |
| 符号解析真实错误 | 100 | **100** | 持平 |
| `incomparable types` | 3 | **0** | **全部消除** |
| `non-static variable r1` | 3 | **0** | **全部消除** |
| `not an enclosing class` | 5 | **0** | **全部消除** |
| 产出 class | 409 | **409** | 持平 |

## 本轮完成的三组修复（共 11 处）

### 1. `r1` 静态上下文引用（3 处）

```java
// 错误：r1 是非静态字段，在静态方法里引用
j3 += (r1 >> w_v) & 255;
j4 += (r1 >> 8) & 255;
j5 += r1 & 255;

// 修复：r1 应该是当前像素值
j3 += (copy.getPixel(i4, i3) >> w_v) & 255;
j4 += (copy.getPixel(i4, i3) >> 8) & 255;
j5 += copy.getPixel(i4, i3) & 255;
```

**依据**：循环上下文是 `for (int i4 = i2; i4 < copy.getWidth(); i4++)`，`copy.getPixel(i4, i3)` 就是当前遍历的像素。

### 2. `z2` boolean 与 int 比较（3 处）

```java
// 错误
int i3 = z2 != 0 ? -1 : -13618632;      // z2 是 boolean
if (z2 == 0) { ... }                     // 同上
k2.s_v.a(z2 == 0 ? 2 : 0);               // 同上

// 修复
int i3 = z2 ? -1 : -13618632;
if (!z2) { ... }
k2.s_v.a(z2 ? 0 : 2);
```

### 3. 合成 lambda 的 enclosing 引用（5 处）

```java
// 错误：O/L/R 是 static 嵌套类，或不在当前作用域
dev.duo.workspaceprobe.b.a(dev.duo.workspaceprobe.b.O.this);     // L6758
dev.duo.workspaceprobe.b.L.this.c = false;                        // L13412
dev.duo.workspaceprobe.b.R.this.b();                              // L14522/14540/14550

// 修复：这些都在 b$$ExternalSyntheticLambda 匿名类里，外层是 b
dev.duo.workspaceprobe.b.a(dev.duo.workspaceprobe.b.this);
dev.duo.workspaceprobe.b.this.c = false;
dev.duo.workspaceprobe.b.this.b();
```

**根因分析**：

```
O at 1686:  static final class O {     ← static，没有 O.this
L at 1549:  static final class L {     ← static，没有 L.this
R at 1866:  final class R {             ← 非 static，但引用位置不在 R 内
```

三处 `R.this.b()` 都在 `b$$ExternalSyntheticLambda` 匿名类（`this.A1.post(new Runnable() {...})`）里，外层实际是 `b`。

## 当前 100 个真实错误的构成

```
75  cannot find symbol
 3  no suitable method found for b(no argument ...)
 3  incompatible types
 2  no suitable method found for b(int,<anonymous ...>)
 2  int cannot be dereferenced
 2  array required, but dev.duo.workspaceprobe...
 2  array required, but boolean found
 1  non-static variable r5 cannot be referenced
```

**`cannot find symbol` 现在占 75%**，是下一阶段的主要目标。

## 累计进展

| 轮次 | 批量报错 | 真实错误 | class |
|---|---|---|---|
| 起点（旧 java/） | 415 | — | 0 |
| 第 1 轮 | 314 | — | 56 |
| 第 7 轮 | 2 | — | 409 |
| 第 13 轮 | 733 | 902 | 409 |
| 第 20 轮 | 528 | — | 409 |
| 第 23 轮 | 514 | 100 | 409 |
| 第 27 轮 | 480 | 100 | 409 |
| 第 28 轮 | 471 | 100 | 409 |
| 第 29 轮 | 455 | 100 | 409 |
| **第 30 轮** | **445** | **100** | **409** |

### 小错误类别的清零记录

| 类别 | 第 29 轮 | 第 30 轮 |
|---|---|---|
| `incomparable types` | 3 | **0** |
| `non-static variable r1` | 3 | **0** |
| `not an enclosing class` | 5 | **0** |
| `incompatible types` | 2 | 3（略升，新暴露） |
| `float/int cannot be dereferenced` | 2 | 2 |

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 的 100 个真实错误 | 75 个是 cannot find symbol |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 30 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 下一轮计划

**主攻 `cannot find symbol` 的 75 个**：

1. 用 `SymDetail` 提取全部符号名，按符号归类
2. 同类符号批量定位（如多个 `variable b`、`variable t`）
3. 每个符号判断是「类名被遮蔽」还是「局部变量丢失」
4. 单点修复 + 每次验证

按本轮速度（−10），剩余 445 个需 45 轮，超出 goal 上限（40 轮，已用 30 轮）。

**剩余 10 轮内可完成的部分**：把 100 个真实错误中的小类别全部清完（当前剩 75 符号 + 25 其他）。
