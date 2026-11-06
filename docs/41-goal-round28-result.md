# 41 · 第 28 轮 goal 结果

> 时间：2026-11-07
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 27 轮末 | 第 28 轮末 | 变化 |
|---|---|---|---|
| javac 批量报错 | 480 | **471** | **−9** |
| 符号解析真实错误 | 100 | **100** | 持平 |
| `incompatible types` | 27 | **18** | **−9** |
| 产出 class | 409 | **409** | 持平 |

本轮是近几轮中进展最好的一轮（−9）。

## 核心发现：`e` 字段遮蔽 `Exception` 变量

`b.java` 第 226 行：

```java
private static Field e = null;
```

但代码里有 9 处把 `e` 当作**异常变量**使用：

```java
} catch (ReflectiveOperationException e2) {
    e = e2;                                    // ← e 是 Field，不能存 Exception
    Log.w(str, "...", e);                      // ← Field 不是 Throwable
}
```

## 本轮完成的四组修复

### 1. `onPackageLoaded` 的 3 个 catch 块（L7129/7135/7139）

方法 `onPackageLoaded`（6956–7142）内有三个并列 catch 块，都用 `e` 存异常：

```java
// 修复前
} catch (ReflectiveOperationException e2) {
    e = e2;
    str = "DuoWallpaper";
}
try {
    Log.w(str, "...");
} catch (ReflectiveOperationException e3) {
    e = e3;
    Log.w(str, "Unsupported Shell entry; no wallpaper fix installed", e);
}
} catch (ReflectiveOperationException e4) {
    e = e4;
    str = "DuoWallpaper";
}

// 修复后：方法开头声明一个 exc，三个 catch 块共用
public void onPackageLoaded(...) {
    Exception exc = null;                     // ← 新增
    ...
    } catch (ReflectiveOperationException e2) {
        exc = e2;
    }
    try { ... } catch (ReflectiveOperationException e3) {
        exc = e3;
        Log.w(str, "...", exc);
    }
    } catch (ReflectiveOperationException e4) {
        exc = e4;
    }
```

**关键**：`Exception exc = null;` 必须声明在**方法体开头**，不能放在任何一个 catch 块内（否则作用域不够）。

第一次尝试时把声明插到了第一个 `if` 块里（第 6963 行），导致 4 个新错误；修正到第 6957 行后全部消失。

效果：4 个 `incompatible types` 消除。

### 2. `e = e2; Exception exc = e;` 合并（L11082-11083）

```java
// 修复前（两行）
} catch (ReflectiveOperationException | RuntimeException e2) {
    e = e2;
    Exception exc = e;
    try { ... }

// 修复后（一行）
} catch (ReflectiveOperationException | RuntimeException e2) {
    Exception exc = e2;
    try { ... }
```

### 3. `e = e3;` + `Log.w(..., e)`（L7285-7286）

```java
// 修复前
} catch (... e3) {
    e = e3;
    Log.w("DuoRail", "Sidebar dual apps failed", e);

// 修复后
} catch (... e3) {
    Log.w("DuoRail", "Sidebar dual apps failed", e3);
```

### 4. `e = e4;` 直接移除（L7311）

```java
} catch (... e4) {
    e = e4;        →   // 移除（e4 未使用）
    i2 = 0;
}
```

## 当前 100 个真实错误的构成

```
55  cannot find symbol
18  incompatible types
 5  not an enclosing class
 3  incomparable types
 2  non-static variable r1 cannot be referenced
 2  int cannot be dereferenced
 2  array required, but boolean found
 2  no suitable method found for b(int,<anonymous ...>)
```

### 剩余 18 个 `incompatible types`

| 位置 | 类型 |
|---|---|
| L11028 | `Bundle → capture#2 of ? extends Parcelable` |
| L11106 | `Exception → Field`（同类问题，未修） |
| L11607 | `Object → Map.Entry` |
| L12892/12894 | `int ↔ boolean` |
| L4727/4729 | `int → boolean` |
| L5761/5767/5782/5788 | `int → boolean` |
| L5795/5805/5819/5840 | `String → int` |
| L6812/6860 | `Class<StatusBarManager> → Class<Object>` |
| L7644 | `Sensor → int` |

## 累计进展

| 轮次 | 批量报错 | 真实错误 | class |
|---|---|---|---|
| 起点（旧 java/） | 415 | — | 0 |
| 第 1 轮 | 314 | — | 56 |
| 第 7 轮 | 2 | — | 409 |
| 第 13 轮 | 733 | 902 | 409 |
| 第 20 轮 | 528 | — | 409 |
| 第 23 轮 | 514 | 100 | 409 |
| 第 25 轮 | 482 | 100 | 409 |
| 第 27 轮 | 480 | 100 | 409 |
| **第 28 轮** | **471** | **100** | **409** |

## 方法论验证：单点修复有效

| 策略 | 效果 |
|---|---|
| 单点修 4 组（9 处异常变量） | 480 → **471**（改善） |
| 批量改 41 个常量（第 27 轮 TriFix） | 482 → 505（变差） |

**结论**：`b.java` 必须单点修复。每轮修 4–10 个错误，按此速度剩余 471 个需 50–100 轮，超出 goal 上限（40 轮，已用 28 轮）。

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 的 100 个真实错误 | 单点修复中（本轮 −9） |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 28 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 下一轮计划

继续单点修复 `incompatible types`（剩 18 个）：

1. **L11106** —— `e = e4;` 同类问题（本轮漏掉）
2. **L12892/12894、L4727/4729、L5761-5788** —— `int ↔ boolean`，共 7 个
3. **L5795-5840** —— `String → int`，共 4 个
4. **L6812/6860** —— `Class<StatusBarManager>` 泛型问题，共 2 个
5. **L11028、L11607、L7644** —— 单个问题

预计 2–3 轮可把 18 个 `incompatible types` 清完。
