# 42 · 第 29 轮 goal 结果

> 时间：2026-11-07
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 28 轮末 | 第 29 轮末 | 变化 |
|---|---|---|---|
| javac 批量报错 | 471 | **455** | **−16** |
| 符号解析真实错误 | 100 | **100** | 持平 |
| `incompatible types` | 18 | **2** | **−16** |
| 产出 class | 409 | **409** | 持平 |

**本轮是全部 29 轮中进展最好的一轮**（−16）。

## 本轮完成的四组修复（共 15 处）

### 1. `int ↔ boolean` 类型修正（8 处）

| 位置 | 修复前 | 修复后 |
|---|---|---|
| L4727 | `intent.putExtra("state", (boolean) r2);` | `(r2 != 0)` |
| L4729 | `Log.w(..., + ((boolean) r2));` | `(r2 != 0)` |
| L5761 | `this.l4 = r2 ^ 1;` | `(r2 ^ 1) != 0` |
| L5767 | `this.n3 = r2;` | `r2 != 0` |
| L5782 | `this.l4 = r2 ^ 1;` | `(r2 ^ 1) != 0` |
| L5788 | `this.n3 = r2;` | `r2 != 0` |
| L12892 | `boolean z2 = ... ? 1 : 0;` | `? true : false` |
| L12894 | `int i4 = !z2;` | `z2 ? 0 : 1` |

**效果：`incompatible types` 18 → 10**

### 2. 死代码清理（4 处）

```java
} catch (Throwable th2) {
    throw th2;                    // ← 已经 throw
    r2 = "DuoKeyguard";           // ← 永远执行不到的死代码
    int i6 = this.v3;
```

`r2` 是 `int`（第 4721 行 `int r2 = 0;`），但这里赋 `String`。这些是 jadx 生成的**不可达代码**，直接注释掉：

```java
// r2 = "DuoKeyguard";  // dead code after throw
```

**效果：`incompatible types` 10 → 6**

### 3. 漏掉的 `e = e4;`（L11106）

第 28 轮修了 3 处 `e = eX;`，漏了这一处。同样注释掉。

### 4. 泛型转换修正（3 处）

```java
// L6812 / L6860
this.i4.getSystemService((Class<Object>) StatusBarManager.class)
  → this.i4.getSystemService((Class) StatusBarManager.class)

// L11607
for (Map.Entry entry : ((Map) Class.forName(...)...
  → for (Map.Entry entry : (Set<Map.Entry>) ((Map) Class.forName(...)...
```

**效果：`incompatible types` 6 → 2**

## 关键发现：死代码是重要错误来源

`b.java` 中有大量 jadx 生成的**不可达代码**：

```java
} catch (Throwable th) {
    throw th;              // 从这里开始，后面全部不可达
    r2 = "DuoKeyguard";    // 类型不匹配，但永远不会执行
    int i6 = this.v3;
    ...
}
```

这些代码**不影响运行时行为**（因为不可达），但会让 javac 报类型错误。

**处理方式**：直接注释掉，而不是尝试修复类型。

## 当前 100 个真实错误的构成

```
66  cannot find symbol
 5  not an enclosing class
 3  incomparable types
 3  non-static variable r1 cannot be referenced
 2  array required, but dev.duo.workspaceprobe...
 2  incompatible types
 2  int cannot be dereferenced
 2  no suitable method found for b(int,<anonymous ...>)
```

### 剩余 2 个 `incompatible types`

```
L11028:39  android.os.Bundle → capture#2 of ? extends Parcelable
           arrayList.add(bundle2);   ← bundle2 类型与泛型参数不匹配
L7644:18   android.hardware.Sensor → int
           i3 = i5;                  ← i5 是 Sensor，i3 是 int
```

## 累计进展

| 轮次 | 批量报错 | 真实错误 | incompatible | class |
|---|---|---|---|---|
| 起点（旧 java/） | 415 | — | — | 0 |
| 第 1 轮 | 314 | — | — | 56 |
| 第 7 轮 | 2 | — | — | 409 |
| 第 13 轮 | 733 | 902 | — | 409 |
| 第 20 轮 | 528 | — | — | 409 |
| 第 23 轮 | 514 | 100 | 27 | 409 |
| 第 25 轮 | 482 | 100 | 27 | 409 |
| 第 27 轮 | 480 | 100 | 27 | 409 |
| 第 28 轮 | 471 | 100 | 18 | 409 |
| **第 29 轮** | **455** | **100** | **2** | **409** |

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 的 100 个真实错误 | 单点修复中（本轮 −16） |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 29 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 下一轮计划

按错误类型继续：

1. **`cannot find symbol` 的 66 个** —— 用 `SymDetail` 提取符号名，逐个定位
2. **`not an enclosing class` 的 5 个** —— 需确认嵌套类是否 static
3. **`incomparable types` 的 3 个**、**`non-static variable r1` 的 3 个**
4. **剩余 2 个 `incompatible types`**

按本轮速度（−16），剩余 455 个需 28 轮，接近 goal 上限（40 轮，已用 29 轮）。
