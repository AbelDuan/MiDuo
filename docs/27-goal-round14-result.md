# 27 · 第 14 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 13 轮末 | 第 14 轮末 | 变化 |
|---|---|---|---|
| javac 报错 | 733 | **733** | 持平 |
| 产出 class | 409 | **409** | 持平 |

本轮没有净进展。两次尝试都因连锁反应失败并已回退，但**明确了一个重要的结构性限制**。

## 尝试一：给 142 个遮蔽类名的常量加 `_v`

### 发现

第 13 轮只给**小写纯字母**常量（`a`~`z`）加了 `_v`，漏掉了：
- 大写常量 `A`~`Z`（142 个中的大部分）
- 带数字的常量 `a0`~`z0`、`h0`

用 `find_shadow.py` 扫描，找到 **142 个常量遮蔽了类名**：

```java
private static final int A = 12;    // 遮蔽嵌套类 A
private static final int B = 96;    // 遮蔽嵌套类 B
static final int T = 47;            // 遮蔽嵌套类 T
private static final int h0 = 30;   // 遮蔽嵌套类 h0
```

### 尝试与结果

改名 142 个常量 + 同步所有值引用：

```
errors: 733 → 4468
```

**已回退。**

### 失败原因

`A`~`Z` 这些名字**同时**是：
1. 嵌套类的名字（`class A implements TetheringManager.StopTetheringCallback`）
2. 常量字段的名字（`private static final int A = 12;`）

给常量加 `_v` 后，所有 `new A(...)`、`A.this`、`(A) obj` 这些**类型用法**也被误改，导致 4000+ 连锁错误。

这与第 9 轮的教训相同，只是这次涉及大写字母。

## 尝试二：单独给 `h0` 常量加 `_v`

`h0` 是一个更精确的目标：`private static final int h0 = 30;`（第 233 行）遮蔽了嵌套类 `h0`。

只改这一行，并用"保护 `h0.` / `h0(` / `h0 Type`"的正则同步引用：

```
errors: 733 → 4451
```

**已回退。**

### 失败原因

`h0` 在文件中出现的位置太多，`h0.D`、`h0Var`、`h0V` 等近似名字都被波及。正则的保护逻辑不够精确。

## 核心结构性限制

`workspaceprobe/b.java` 存在一个**无法用文本替换解决的结构问题**：

```java
// 顶层类 b 的常量
private static final int A = 12;      // 与嵌套类 A 同名
private static final int T = 47;      // 与嵌套类 T 同名
private static final int h0 = 30;     // 与嵌套类 h0 同名

// 嵌套类 A 的声明
class A implements TetheringManager.StopTetheringCallback { ... }
```

javac 在类 `b` 的方法体内解析 `A` 时，**优先绑定常量字段**，于是 `A.this`、`(A) obj`、`new A(...)` 全部失败。

要修复必须二选一：
- **给常量改名** → 但常量的**值引用**与类名的**类型引用**在文本上不可区分
- **给嵌套类改名** → 需要同步所有 `new A(...)`、`A.this`、`(A) obj`、`instanceof A`，且改类名会破坏 smali 对应关系

两者都需要**真正的 Java 语法解析**（区分类型位置与值位置），而不是正则。

## 剩余 733 个错误的分类

| 类型 | 数量 | 可脚本修复性 |
|---|---|---|
| `cannot find symbol` | 376 | 需语法解析 |
| `int/long cannot be dereferenced` | 179 | 需语法解析（类型 vs 值） |
| `incompatible types` | 51 | 逐条人工 |
| `not an enclosing class` | 42 | 逐条人工 |
| 其他 | 85 | 混合 |

**结论**：这 733 个错误的主体（555 个）需要**语法级解析**，不是正则能解决的。

## 累计进展

| 轮次 | 报错 | class | 关键 |
|---|---|---|---|
| 起点 | 415 | 0 | — |
| 第 1 轮 | 314 | 56 | `T.java`/`Engine` 通过 |
| 第 6 轮 | 4 | 224 | `f_lower_` 归零 |
| 第 7 轮 | 2 | 409 | `MainActivity` 归零 |
| 第 10 轮 | 2 | 409 | 按类作用域解析 |
| 第 13 轮 | 733（真实） | 409 | 打开 `d0` 闸门，902→733 |
| **第 14 轮** | **733** | **409** | 确认结构性限制 |

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 733 个错误 | 需语法级解析（JavaParser / tree-sitter） |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 14 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 下一轮的两个方向

### 方向 A：引入语法解析器

用 JavaParser（jar 已在本地 Maven 缓存可查）或 tree-sitter-java：
1. 解析 `b.java` 为 AST
2. 区分 `SimpleName` 在 `Type` 位置还是 `Expression` 位置
3. 只改值位置，保留类型位置

这是唯一能系统解决 555 个错误的方法。

### 方向 B：接受当前状态交付

120/121 文件编译通过、409 class 产出，出包走 smali。

考虑到目标还包括**装机验证**（已阻塞 14 轮），而这一步完全依赖设备连接，建议先确认设备状态。
