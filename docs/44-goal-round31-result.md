# 44 · 第 31 轮 goal 结果

> 时间：2026-11-07
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 30 轮末 | 第 31 轮末 | 变化 |
|---|---|---|---|
| javac 批量报错 | 445 | **440** | **−5** |
| 符号解析真实错误 | 100 | **100** | 持平 |
| `no suitable method` | 7 | **2** | **−5** |
| `array required` | 4 | **2** | **−2** |
| 产出 class | 409 | **409** | 持平 |

## 本轮完成的两组修复（共 4 处）

### 1. 修正上一轮的错误改动（3 处）

第 30 轮把 `R.this.b()` 改成了 `dev.duo.workspaceprobe.b.this.b()`，这是**错的**：

```java
// class R (第 1866 行) 有自己的方法
void b() { ... }    // ← 第 1890 行

// 第 30 轮的错误改法
dev.duo.workspaceprobe.b.R.this.b()   →   dev.duo.workspaceprobe.b.this.b()
// 结果：调用到了外层 b 的 b()，报 "no suitable method found for b(no arguments)"

// 本轮的正确改法
dev.duo.workspaceprobe.b.R.this.b()   →   r2.b()
```

**依据**：方法 `a`（14306–14560）内 `r2` 就是 `R` 类型的局部变量（第 14515 行 `if (r2.b.isValid())`）。

`no suitable method found for b(no arguments)` 从 3 个降到 0。

### 2. `r6` 数组丢失（1 处）

```java
// 错误（r6 是 private P r6 字段，不是数组）
view.getLocationOnScreen(new int[2]);
float exactCenterX = (f2 - r6[0]) - ...;

// 修复
int[] r6 = new int[2];
view.getLocationOnScreen(r6);
float exactCenterX = (f2 - r6[0]) - ...;
```

`array required` 从 4 个降到 2 个。

## 教训：修复要验证语义，不能只看错误消失

第 30 轮的 `R.this.b()` → `b.this.b()` 改动：
- **消除了** `not an enclosing class` 错误
- **引入了** `no suitable method found for b(no arguments)` 错误

这是典型的「错误转移」——错误总数不变，但换了形式。

**正确做法**：改完后要检查**新错误是否合理**。本轮通过 `class R` 的 `void b()` 方法确认了正确目标。

## 当前 100 个真实错误的构成

```
80  cannot find symbol       ← 占 80%
 3  incompatible types
 2  array required, but boolean found
 2  int cannot be dereferenced
 2  no suitable method found for b(int,<anonymous ...>)
 1  non-static method equals(Object) cannot be referenced
 1  non-static method a(Object) cannot be referenced
 1  method valueOf in class java.lang.Enum<E> cannot be applied
```

### 剩余的小类别

| 位置 | 错误 |
|---|---|
| L11028 | `Bundle → capture#2 of ? extends Parcelable` |
| L11234 | `no suitable method found for n(String)` |
| L13412 | `boolean → Field`（第 30 轮改动引入的） |
| L15447 | `no suitable method found for a(ThreadLocal<Integer>,long,boolean,Set<String>)` |
| L3539 | `array required, but boolean found`（`r5[i10]`，`r5` 是 boolean 字段） |
| L6725/9423 | `no suitable method found for b(int,Runnable,Consumer)` |
| L7644 | `Sensor → int` |
| L9034 | `array required, but boolean found` |

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
| 第 30 轮 | 445 | 100 | 409 |
| **第 31 轮** | **440** | **100** | **409** |

### 小类别清零记录

| 类别 | 第 30 轮 | 第 31 轮 |
|---|---|---|
| `incomparable types` | 0 | 0 |
| `non-static variable r1` | 0 | 0 |
| `not an enclosing class` | 0 | 0 |
| `no suitable method (b no args)` | 3 | **0** |
| `array required (int found)` | 2 | **0** |

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 的 100 个真实错误 | 80 个是 cannot find symbol |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 31 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 下一轮计划

**主攻 `cannot find symbol` 的 80 个**：

1. 用 `SymDetail` 提取全部符号名
2. 按符号聚类（同一符号出现多次则一并处理）
3. 判断类型：类名被遮蔽 / 局部变量丢失 / 方法名错误
4. 单点修复 + 每次验证

剩余 9 轮（goal 上限 40，已用 31）。按本轮速度（−5），最多再降 45 个。

**建议**：最后 9 轮聚焦「清完 100 个真实错误中的小类别」（当前剩 20 个非符号错误），把 `cannot find symbol` 留给后续。
