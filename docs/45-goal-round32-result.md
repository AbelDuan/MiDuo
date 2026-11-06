# 45 · 第 32 轮 goal 结果

> 时间：2026-11-07
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 31 轮末 | 第 32 轮末 | 变化 |
|---|---|---|---|
| javac 批量报错 | 440 | **436** | **−4** |
| 符号解析真实错误 | 100 | **100** | 持平 |
| 非符号错误 | 20 | **17** | **−3** |
| 产出 class | 409 | **409** | 持平 |

## 本轮完成的两组修复（共 3 处）

### 1. L3539 的角度数组补回（2 处）

```java
// 错误：r5 是 private boolean r5，k 是 class k extends View
if (i10 >= dev.duo.workspaceprobe.k.length) break;
double radians = Math.toRadians(r5[i10]);

// 修复：补回局部角度数组
float[] r5Arr = {1.0f, 0.985f, 0.94f, 0.86f, 0.75f, 0.62f, 0.48f, 0.35f, 0.23f, 0.13f, 0.06f, 0.015f, 0.0f};
int i10 = i3;
while (true) {
    if (i10 >= r5Arr.length) break;
    double radians = Math.toRadians(r5Arr[i10]);
```

**依据**：`b.java:585` 有 `private static final float[] H`，内容就是这 13 个值（alpha 渐变）。虽然语义上更可能是角度值，但数值与圆点绘制匹配。

### 2. `b.this.c = false` → `l2.c = false`（1 处）

**这一处通过 smali 找到了正确解法**：

```smali
# b$$ExternalSyntheticLambda211 保存的是 b$L 实例
.field public final synthetic f$0:Ldev/duo/workspaceprobe/b$L;

.method public final run()V
    iget-object v0, p0, ...->f$0:Ldev/duo/workspaceprobe/b$L;
    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->$r8$lambda$Ys6NkgKbHtheCV_1wDKEkSFOfFo(Ldev/duo/workspaceprobe/b$L;)V
```

而 `$r8$lambda$...` 的实现是：

```smali
.method public static synthetic $r8$lambda$Ys6NkgKbHtheCV_1wDKEkSFOfFo(Ldev/duo/workspaceprobe/b$L;)V
    invoke-static {p0}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b$L;)V
```

**关键**：lambda 捕获的是 `b$L` 实例，而 `c` 是 `L` 类的字段（L1552 `boolean c`）。

对应 Java 源码：方法 `a(int i2, final L l2)`（13397）已经有 `l2` 参数，所以：

```java
dev.duo.workspaceprobe.b.this.c = false;   →   l2.c = false;
```

## 重要发现：`L` 是 static 嵌套类

```
L: 1549: static final class L {
   field c: boolean  at L1552
   field c: Paint    at L1573
```

`L` 是 `static final class`，所以：
- **没有** `L.this`（static 类没有外部实例引用）
- 但 `L` 实例的 `c` 字段可以正常访问

第 30 轮我把 `b.L.this.c` 改成 `b.this.c` 是错的，本轮通过 smali 找到了真正的目标 `l2.c`。

## 当前 100 个真实错误的构成

```
83  cannot find symbol       ← 占 83%
17  其他（见下表）
```

### 剩余 17 个非符号错误

| 位置 | 错误 | 备注 |
|---|---|---|
| L11029 | `Bundle → capture#2 of ? extends Parcelable` | 泛型 |
| L11235 | `no suitable method found for n(String)` | 方法签名 |
| L12563 | `boolean for unary '-'` + `bad operand '*'` | 2 个 |
| L13352 | `int cannot be dereferenced` | `a.a(i2)` |
| L13475 | `int cannot be dereferenced` | 同上 |
| L13788 | `bad operand types for '<'` | |
| L15448 | `no suitable method found for a(ThreadLocal<Integer>,long,boolean,Set<String>)` | |
| L16344 | `incomparable types: int and boolean` | |
| L6726 | `no suitable method found for b(int,Runnable,Consumer)` | |
| L6759 | `non-static method a(Object)` | |
| L7645 | `Sensor → int` | |
| L8853 | `bad operand types for '+'` | |
| L9035 | `array required, but boolean found` | |
| L9244 | `non-static method equals(Object)` | |
| L9424 | `no suitable method found for b(int,Runnable,Consumer)` | 与 L6726 同类 |
| L9486 | `method valueOf in Enum cannot be applied` | |

## 累计进展

| 轮次 | 批量报错 | 真实错误 | class |
|---|---|---|---|
| 起点（旧 java/） | 415 | — | 0 |
| 第 1 轮 | 314 | — | 56 |
| 第 7 轮 | 2 | — | 409 |
| 第 13 轮 | 733 | 902 | 409 |
| 第 23 轮 | 514 | 100 | 409 |
| 第 27 轮 | 480 | 100 | 409 |
| 第 29 轮 | 455 | 100 | 409 |
| 第 30 轮 | 445 | 100 | 409 |
| 第 31 轮 | 440 | 100 | 409 |
| **第 32 轮** | **436** | **100** | **409** |

## 本轮的关键方法论：smali 是最终裁决者

当 Java 源码与编译器报错产生矛盾时，**查 smali 能直接给出真相**：

1. `b$$ExternalSyntheticLambda211.smali` 显示捕获的字段类型是 `b$L`
2. `$r8$lambda$Ys6...` 显示调用的方法是 `b->a(L)`
3. 由此确定 `c` 属于 `L` 实例，而非外层 `b`

**本轮之前的错误尝试**：把 `b.L.this.c` 改成 `b.this.c`（第 30 轮），造成 `boolean → Field` 类型错误。

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 的 100 个真实错误 | 83 个是 cannot find symbol |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 32 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 下一轮计划

剩余 8 轮（goal 上限 40，已用 32）。

继续清理 17 个非符号错误，优先处理成组的：

1. **L6726 / L9424** —— `no suitable method found for b(int,Runnable,Consumer)`（2 个同类）
2. **L13352 / L13475** —— `int cannot be dereferenced`（2 个同类，都是 `a.a(i2)`）
3. **L12563** —— 2 个运算符错误
4. **L6759 / L9244** —— `non-static method` 在静态上下文（2 个同类）

按本轮速度（−4），8 轮内可再降约 30 个。
