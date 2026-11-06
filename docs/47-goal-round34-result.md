# 47 · 第 34 轮 goal 结果

> 时间：2026-11-07
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 33 轮末 | 第 34 轮末 | 变化 |
|---|---|---|---|
| javac 批量报错 | 434 | **432** | **−2** |
| 符号解析真实错误 | 100 | **100** | 持平 |
| `no suitable method found for b` | 2 | **0** | **全部消除** |
| 产出 class | 409 | **409** | 持平 |

## 本轮核心成果：`Runnable` → `M` 接口修正

### 问题

```java
// 第 6726 行 / 第 9424 行
b(i2, new Runnable() { public void run() { } }, new Consumer() { ... });
```

编译器报：

```
no suitable method found for b(int,<anonymous Runnable>,<anonymous Consumer>)
```

### smali 给出的真相

`b.java` 的 `u0()` 方法（smali 第 59725 行起）：

```smali
59814: new-instance v0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda34;
59816: invoke-direct {v0}, ...Lambda34;-><init>()V
59824: invoke-direct {p0, v7, v0, v2}, Ldev/duo/workspaceprobe/b;->b(ILdev/duo/workspaceprobe/b$M;Ljava/util/function/Consumer;)V
```

目标方法签名是 `b(int, b$M, Consumer)`，第二个参数类型是 **`b$M`**，不是 `Runnable`。

### Lambda34 实现的接口

```smali
# b$$ExternalSyntheticLambda34.smali
.class public final synthetic Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda34;
# interfaces
.implements Ldev/duo/workspaceprobe/b$M;
```

### `M` 接口的定义

```java
// b.java 第 1561 行
interface M {
    int a(SurfaceControl surfaceControl) throws ReflectiveOperationException;    // 第 1562 行
}
```

### 修复

```java
// 修复前
new Runnable() { public void run() { } }

// 修复后
new M() { public int a(SurfaceControl sc) throws ReflectiveOperationException { return 0; } }
```

**效果**：`no suitable method found for b` 从 2 个降到 **0**，批量 434 → **432**。

## 一次重要的误改与回退

第一次替换时用了全局匹配 `new Runnable() { public void run() { } }`，结果**误改了 9 处**，其中 7 处是：

```java
this.A1.post(new M() { ... });   // ← post() 需要 Runnable，不是 M
```

**回退方法**：只回退含 `.post(` 的行。

```python
for i, ln in enumerate(lines):
    if new in ln and ".post(" in ln:
        lines[i] = ln.replace(new, old)
```

这 7 处正确保持为 `new Runnable()`。

## 当前 100 个真实错误的构成

```
84  cannot find symbol       ← 占 84%
 2  incompatible types
 1  non-static method a(Object)
 1  no suitable method found for a(ThreadLocal,...)
 1  bad operand types '*'
 ... 其他 11 个
```

### 剩余非符号错误（16 个）

| 位置 | 错误 |
|---|---|
| L11029 | `Bundle → capture#2 of ? extends Parcelable` |
| L11235 | `no suitable method found for n(String)` |
| L12563 | `boolean for unary '-'` + `'*'`（2 个） |
| L13788 | `bad operand types for '<'` |
| L15448 | `no suitable method found for a(ThreadLocal,...)` |
| L16344 | `incomparable int/boolean` |
| L16838 | `bad operand types for '-'` |
| L6759 | `non-static method a(Object)` |
| L7645 | `Sensor → int` |
| L8853 | `bad operand types for '+'` |
| L9035 | `array required, but boolean found` |
| L9486 | `Enum.valueOf` 类型参数 |
| g.java:54 | `non-static method equals` |

## 累计进展

| 轮次 | 批量报错 | 真实错误 | class |
|---|---|---|---|
| 起点（旧 java/） | 415 | — | 0 |
| 第 1 轮 | 314 | — | 56 |
| 第 7 轮 | 2 | — | 409 |
| 第 13 轮 | 733 | 902 | 409 |
| 第 23 轮 | 514 | 100 | 409 |
| 第 29 轮 | 455 | 100 | 409 |
| 第 31 轮 | 440 | 100 | 409 |
| 第 32 轮 | 436 | 100 | 409 |
| 第 33 轮 | 434 | 100 | 409 |
| **第 34 轮** | **432** | **100** | **409** |

### 小类别清零记录

| 类别 | 第 33 轮 | 第 34 轮 |
|---|---|---|
| `int cannot be dereferenced` | 0 | 0 |
| `not an enclosing class` | 0 | 0 |
| `incomparable types`（部分） | 1 | 1 |
| `no suitable method b(int,Runnable,Consumer)` | 2 | **0** |

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 的 100 个真实错误 | 84 个是 cannot find symbol |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 34 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 剩余 6 轮的评估

按本轮速度（−2），6 轮内最多再降 12 个，总数降到 420 左右。

**`cannot find symbol` 的 84 个仍是最大障碍**，无法在 6 轮内完成。

**建议**：最后 6 轮继续清非符号错误（16 个），成组处理效率更高。
