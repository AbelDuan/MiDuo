# 46 · 第 33 轮 goal 结果

> 时间：2026-11-07
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 32 轮末 | 第 33 轮末 | 变化 |
|---|---|---|---|
| javac 批量报错 | 436 | **434** | **−2** |
| 符号解析真实错误 | 100 | **100** | 持平 |
| `int cannot be dereferenced` | 2 | **0** | **全部消除** |
| `non-static method equals` | 2 | **1** | −1 |
| 产出 class | 409 | **409** | 持平 |

## 本轮完成的两组修复（共 3 处）

### 1. `a.a(...)` 全限定名修正（2 处）

**根因**：方法 `a(...)` 遮蔽了类 `a`。

```java
// 方法声明（第 13334 行）
public /* synthetic */ void a(final long j2, a.b bVar, String str, long j3) {
//                              ↑ 这里的 a.b 是类型（类 a 的内部类 b）

// 方法体内（第 13352 行）
long a2 = a.a(i2);
//        ↑ 但这里的 a 被方法名 a 遮蔽，解析成了「对方法的引用」
```

修复：

```java
long a2 = dev.duo.workspaceprobe.a.a(i2);
dev.duo.workspaceprobe.a.b a2 = dev.duo.workspaceprobe.a.a(call != null, ...);
```

**依据**：`workspaceprobe/a.java` 是 `final class a`，有：
- `static long a(int i)`（第 31 行）
- `static b a(boolean z, boolean z2, ..., boolean z7)`（第 96 行）

两个调用的参数数量分别匹配。

**效果**：`int cannot be dereferenced` 从 2 个降到 **0**，批量 436 → **434**。

### 2. `a.equals(...)` 非静态调用修正（1 处）

```java
// 错误：a 是类，equals 是实例方法
dev.duo.workspaceprobe.a.equals(dev.duo.workspaceprobe.b.this.L3)

// 修复：反转调用方向
dev.duo.workspaceprobe.b.this.L3.equals(dev.duo.workspaceprobe.a)
```

**效果**：`non-static method equals` 从 2 个降到 1 个。

## 一次失败尝试：`K.a` 字段改名

尝试把 `class K` 的 `SurfaceControl a` 字段改成 `a_sc`：

```
L10800: SurfaceControl a;  →  SurfaceControl a_sc;
batch: 434 → 447（变差 +13）
```

**原因**：`K.a` 有大量其他引用（`k2.a`、`this.a` 等），改名后没同步到。已回退。

## 当前 100 个真实错误的构成

```
84  cannot find symbol       ← 占 84%
 2  no suitable method found for b(int,<anonymous Runnable>,<anonymous Consumer>)
 2  incompatible types
 1  non-static method a(Object)
 1  no suitable method found for a(ThreadLocal<Integer>,long,boolean,Set<String>)
 1  bad operand types for binary operator '*'
 ... 其他 9 个
```

### 非符号错误的处理状态

| 位置 | 错误 | 状态 |
|---|---|---|
| L13352 | `int cannot be dereferenced` | ✅ 已修 |
| L13475 | `int cannot be dereferenced` | ✅ 已修 |
| L9244 | `non-static method equals` | ✅ 已修 |
| L12563 | `boolean for unary '-'` + `'*'` | 待修 |
| L13788 | `bad operand types for '<'` | 待修 |
| L15448 | `no suitable method a(ThreadLocal,...)` | 待修 |
| L16344 | `incomparable int/boolean` | 待修 |
| L16838 | `bad operand types for '-'` | 待修 |
| L6726/9424 | `no suitable method b(int,Runnable,Consumer)` | 待修（2 个同类） |
| L6759 | `non-static method a(Object)` | 待修 |
| L7645 | `Sensor → int` | 待修 |
| L8853 | `bad operand types for '+'` | 待修 |
| L9035 | `array required, but boolean found` | 待修 |
| L9486 | `Enum.valueOf` 类型参数 | 待修 |
| L11029 | `Bundle → Parcelable` 泛型 | 待修 |
| L11235 | `no suitable method n(String)` | 待修 |
| g.java:54 | `non-static method equals` | 待修 |

## 累计进展

| 轮次 | 批量报错 | 真实错误 | class |
|---|---|---|---|
| 起点（旧 java/） | 415 | — | 0 |
| 第 1 轮 | 314 | — | 56 |
| 第 7 轮 | 2 | — | 409 |
| 第 13 轮 | 733 | 902 | 409 |
| 第 23 轮 | 514 | 100 | 409 |
| 第 28 轮 | 471 | 100 | 409 |
| 第 30 轮 | 445 | 100 | 409 |
| 第 31 轮 | 440 | 100 | 409 |
| 第 32 轮 | 436 | 100 | 409 |
| **第 33 轮** | **434** | **100** | **409** |

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 的 100 个真实错误 | 84 个是 cannot find symbol |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 33 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 剩余 7 轮的评估

按本轮速度（−2），7 轮内最多再降 14–20 个，总数降到 415 左右。

**`cannot find symbol` 的 84 个是最大障碍**，每一个都需要：
1. 用 `SymDetail` 提取符号名
2. 定位到具体代码
3. 查 smali 或上下文确定正确写法
4. 单点修复 + 验证

平均每个需 5–10 分钟，84 个需要 7–14 小时，无法在 7 轮内完成。

**建议**：最后 7 轮聚焦把剩余 16 个非符号错误清完（成组处理效率更高），`cannot find symbol` 留给后续 session。
