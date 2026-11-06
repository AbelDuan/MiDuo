# 48 · 第 35 轮 goal 结果

> 时间：2026-11-07
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 34 轮末 | 第 35 轮末 | 变化 |
|---|---|---|---|
| javac 批量报错 | 432 | **426** | **−6** |
| 符号解析真实错误 | 100 | **100** | 持平 |
| 非符号错误 | 16 | **8** | **−8（减半）** |
| `bad operand types` | 4 | **0** | **全部消除** |
| `incomparable types` | 1 | **0** | **全部消除** |
| 产出 class | 409 | **409** | 持平 |

## 本轮完成的四组修复（共 6 处）

### 1. L16838 动画时长计算（1 处）

```java
// 错误：r6、r5 是未定义的局部变量
ofFloat.setDuration(Math.round(Math.abs(r6 - r5) * 240.0f) + 20);

// 修复：起止值是 this.L6 和目标值
ofFloat.setDuration(Math.round(Math.abs((z2 ? 1.0f : 0.0f) - this.L6) * 240.0f) + 20);
```

**依据**：上一行 `ValueAnimator.ofFloat(this.L6, z2 ? 1.0f : 0.0f)` 明确了起止值。

### 2. L12563 touch slop 计算（1 处）

```java
// 错误：r5 未定义
if (rawY < (-r5) || Math.abs(rawX) > r5 * 2) {

// 修复
if (rawY < (-ViewConfiguration.get(this.i4).getScaledTouchSlop())
    || Math.abs(rawX) > ViewConfiguration.get(this.i4).getScaledTouchSlop() * 2) {
```

**依据**：上一行 `rawY <= ViewConfiguration.get(this.i4).getScaledTouchSlop()` 已经用了这个值。

### 3. L13788 空死循环（2 处）

```java
// 错误：r5、r4 未定义，且循环体为空
while (r5 < r4) {
}

// 修复：整段注释掉
// while (r5 < r4) {  // dead empty loop
// }
```

### 4. L8851/8853 与 L16344（3 处）

```java
// L8851/8853：r4、r6 应为 h[0]、h[1]
if (f >= h[0] && f <= r4 + h[2])   →  if (f >= h[0] && f <= h[0] + h[2])
if (f2 >= h[1] && f2 <= r6 + h[3]) →  if (f2 >= h[1] && f2 <= h[1] + h[3])

// L16344：k2.y_v 是 int，z4 是 boolean
if (k2.y_v != z4)                  →  if (k2.y_v != (z4 ? 1 : 0))
```

**依据**：`int[] h = h()` 返回 `{x, y, width, height}`，`h[0]`+`h[2]` 是右边界，`h[1]`+`h[3]` 是下边界。

## 当前 100 个真实错误的构成

```
92  cannot find symbol       ← 占 92%
 8  其他（见下表）
```

**非符号错误从 17 个降到 8 个**，是本轮最大成果。

### 剩余 8 个非符号错误

| 位置 | 错误 | 类型 |
|---|---|---|
| L11029 | `Bundle → capture#2 of ? extends Parcelable` | 泛型 |
| L11235 | `no suitable method found for n(String)` | 方法签名 |
| L15448 | `no suitable method found for a(ThreadLocal<Integer>,long,boolean,Set<String>)` | 方法签名 |
| L6759 | `non-static method a(Object)` 在静态上下文 | 静态引用 |
| L7645 | `Sensor → int` | 类型 |
| L9035 | `array required, but boolean found` | 数组 |
| L9486 | `Enum.valueOf` 类型参数 | 泛型 |
| g.java:54 | `non-static method equals(Object)` | 静态引用 |

## 累计进展

| 轮次 | 批量报错 | 真实错误 | 非符号 | class |
|---|---|---|---|---|
| 起点（旧 java/） | 415 | — | — | 0 |
| 第 1 轮 | 314 | — | — | 56 |
| 第 7 轮 | 2 | — | — | 409 |
| 第 13 轮 | 733 | 902 | — | 409 |
| 第 23 轮 | 514 | 100 | — | 409 |
| 第 29 轮 | 455 | 100 | 20 | 409 |
| 第 30 轮 | 445 | 100 | 17 | 409 |
| 第 32 轮 | 436 | 100 | 17 | 409 |
| 第 34 轮 | 432 | 100 | 16 | 409 |
| **第 35 轮** | **426** | **100** | **8** | **409** |

### 小类别清零总记录

| 类别 | 清零轮次 |
|---|---|
| `not an enclosing class` | 第 30 轮 |
| `non-static variable r1` | 第 30 轮 |
| `incomparable types` | 第 35 轮 |
| `bad operand types` | 第 35 轮 |
| `int cannot be dereferenced` | 第 33 轮 |
| `no suitable method b(int,Runnable,Consumer)` | 第 34 轮 |
| `cannot assign to final` | 第 24 轮 |

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 的 100 个真实错误 | 92 个是 cannot find symbol |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 35 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 剩余 5 轮的评估

非符号错误只剩 8 个，按本轮速度（每轮 −4～−8）可在 1–2 轮内清完。

**之后全部是 `cannot find symbol`**（92 个），每个需：
1. `SymDetail` 提取符号名
2. 定位代码
3. 查 smali / 上下文
4. 单点修复 + 验证

按最乐观估计（每个 3 分钟），92 个需 4.6 小时，无法在 5 轮内完成。

**下一轮计划**：清完剩余 8 个非符号错误，把 100 个真实错误压缩到「纯 cannot find symbol」。
