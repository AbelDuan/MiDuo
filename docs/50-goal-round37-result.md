# 50 · 第 37 轮 goal 结果

> 时间：2026-11-07
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 36 轮末 | 第 37 轮末 | 变化 |
|---|---|---|---|
| javac 批量报错 | 425 | **423** | **−2** |
| 符号解析真实错误 | 100 | **100** | 持平 |
| 非符号错误 | 5 | **4** | **−1** |
| 产出 class | 409 | **409** | 持平 |

## 本轮完成的四组修复

### 1. `Enum.valueOf` 类型参数（1 处）

```java
// 错误：Enum.valueOf 需要 Class<? extends Enum>
final Object valueOf = Enum.valueOf(cls3, "MULTIPLE_SURFACES");

// 修复：加原始类型转换
final Object valueOf = Enum.valueOf((Class) cls3, "MULTIPLE_SURFACES");
```

### 2. `u_lower_.java` 的 final 变量赋值（4 处）

```java
c0025u = this;    →   // c0025u = this;  // final
```

这些是 jadx 生成的多余赋值（在深层嵌套的 if/for 里重复赋值 final 变量），直接注释掉。

### 3. `u_lower_.java` 的 final 局部变量（6 处）

```java
final Method a2 = a(cls2, "isVisible", ...);   →   Method a2 = ...
final Method a3 = a(cls2, "getDisplayId", ...); →  Method a3 = ...
```

这些变量在深层循环里被重新赋值，去掉 `final`。

### 4. `u_lower_.java` 的 `e` 字段遮蔽异常变量（4 处）

```java
// 第 47 行有 private final Method e，但代码把它当异常变量
e = e2;                    →   Exception exc = e2;
Log.e("MiDuoFold", "...", e);   →   Log.e("MiDuoFold", "...", exc);
```

**这与第 28 轮 `b.java` 的同类问题完全一样**（第 226 行 `private static Field e`）。

## 当前 100 个真实错误的构成

```
96  cannot find symbol       ← 占 96%
 4  其他（见下表）
```

### 剩余 4 个非符号错误

| 位置 | 错误 | 分析 |
|---|---|---|
| L11029 | `Bundle → capture#1 of ? extends Parcelable` | `arrayList.add(bundle2)`，泛型推断 |
| L11235 | `no suitable method found for n(String)` | `n(String)` 方法不存在 |
| L15448 | `no suitable method found for a(ThreadLocal<Integer>,long,boolean,Set<String>)` | 方法签名不匹配 |
| L9035 | `array required, but boolean found` | 复杂嵌套表达式 |

## 一个环境问题：`enum.py` 覆盖标准库

`_work/enum.py` 这个文件（早前用于检查 Enum 错误）**覆盖了 Python 标准库的 `enum` 模块**：

```
AttributeError: module 'enum' has no attribute 'global_enum'
```

导致所有 `import re` 失败（因为 `re` 内部 import `enum`）。

**解决**：删除 `_work/enum.py`。

**教训**：Python 脚本目录里不要放与标准库同名的文件（`enum.py`、`re.py`、`types.py`、`json.py` 等）。

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
| **第 37 轮** | **423** | **100** | **4** | **409** |

### 小类别清零总记录

| 类别 | 清零轮次 |
|---|---|
| `cannot assign to final`（b.java） | 第 24 轮 |
| `not an enclosing class` | 第 30 轮 |
| `non-static variable r1` | 第 30 轮 |
| `int cannot be dereferenced` | 第 33 轮 |
| `no suitable method b(int,Runnable,Consumer)` | 第 34 轮 |
| `incomparable types` | 第 35 轮 |
| `bad operand types` | 第 35 轮 |
| `non-static method equals/a` | 第 36 轮 |
| `Enum.valueOf` 类型参数 | 第 37 轮 |
| `cannot assign to final`（u_lower） | 第 37 轮 |

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 的 100 个真实错误 | 96 个是 cannot find symbol |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 37 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 剩余 3 轮的评估

剩余 4 个非符号错误都是复杂的泛型/签名问题，可能需 1–2 轮。

之后全部是 `cannot find symbol`（96 个），**无法在剩余轮次内完成**。

**最后 3 轮建议**：
1. 清完 4 个非符号错误（把 100 个真实错误压缩到「纯 cannot find symbol」）
2. 用 `SymDetail` 做符号聚类分析，输出可批量处理的候选清单（为后续 session 铺路）
3. 完善文档，确保工作可交接
