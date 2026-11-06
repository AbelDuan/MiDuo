# 39 · 第 26 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 25 轮末 | 第 26 轮末 | 变化 |
|---|---|---|---|
| 符号解析真实错误 | 100 | **100** | 持平 |
| `dereferenced` 类错误 | 5 | **0** | **全部消除** |
| `incompatible types` | 27 | **12** | **−15** |
| javac 批量报错 | 482 | 609 | +127（连带增加） |
| 产出 class | 409 | **409** | 持平 |

## 本轮核心成果：消除全部 dereferenced 错误

第 25 轮末还有 5 个 `int/float cannot be dereferenced`：

```
L13350:24  long a2 = a.a(i2);                    ← 类 a 被 int 常量遮蔽
L13473:27  a.b a2 = a.a(call != null, ...);       ← 同上
L3482:85   h.a(valueOf, o_v, h0Var.S)             ← 类 h 被 float 字段遮蔽
L3685:46   h.a("23:59", m, false)                 ← 同上
L3825:14   h.a(str, f2, this.S, ...)              ← 同上
```

本轮用 `TopFix`（AST 精确版）一次性处理了**顶层类 b 的 41 个遮蔽常量**，全部 `dereferenced` 错误归零。

### TopFix 的关键设计

```java
// 只改顶层类「直接声明」的字段（top.getFields()）
for (FieldDeclaration fd : top.getFields())
    for (VariableDeclarator v : fd.getVariables())
        if (typeNames.contains(nm) && !nm.endsWith("_v")) { ... }

// 只改「直接属于顶层类」的 this.<f>（用身份比较，不用名字）
ClassOrInterfaceDeclaration c = enc(fa);
if (c == null || c != top) continue;    // ← 关键：c != top，不是 c.getNameAsString().equals(...)
```

输出：

```
types: 77
SHADOW: [A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z,
         a, a0, b0, c, c0, d, d0, e, e0, f0, g, g0, i, i0, m]
this.<f> in top: 0  total edits: 41
```

### 全限定引用的同步（syncq）

常量改名后，`dev.duo.workspaceprobe.b.Z` 这类**全限定引用**必须同步：

```
H: 3    J: 7    L: 1    M: 1    O: 1    Q: 2    R: 7
S: 1    V: 1    W: 5    Z: 2    a: 11   b0: 7   c: 2
c0: 1   d0: 8   g0: 9
total synced: 69
```

同步后 `cannot find symbol` 从 49 涨到 85（因为本文件内的裸名引用还没同步），但 `incompatible types` 从 27 降到 12。

## 两次失败尝试

### 失败 1：按缩进判断 `this.<f>`（本轮早期）

```python
# 错误做法：缩进 8 就认为是顶层类的方法体
m = re.match(r"^        (.*)$", lines[i])
for f in TARGETS:
    if re.search(r"this\." + f + r"\b(?!_v)", lines[i]):
        lines[i] = re.sub(..., "this." + f + "_v", lines[i])
```

问题：**嵌套类的方法体也是缩进 8**。改了 101 处，其中大量属于嵌套类的同名字段，错误从 100 涨到 142 个新错误。

### 失败 2：正则同步裸名引用（本轮后期）

```python
# 错误做法：用一个正则保护 + 替换
seg = re.sub(r"(?<![\w$.])(" + "|".join(NAMES) + r")(?![\w$])", lambda m: m.group(1) + "_v", seg)
```

改了 **1848 行**，产生 **61 个 illegal start of expression + 31 个 invalid method declaration**，批量编译 4490 个错误、0 class。

**根因**：正则无法区分「裸名引用」和「声明/类型/方法名」。例如：

```java
int a = 1;            ← `a` 是声明，不该改
a(1, 2);              ← `a` 是方法名，不该改
String a = "x";       ← `a` 是变量名，不该改
return a;             ← `a` 是引用，该改
```

已回退。

## 当前 100 个真实错误的构成（结构最优）

```
85  cannot find symbol
12  incompatible types
 1  array required, but boolean found
 1  no suitable method found for b(int,<anonymous ...>)
 1  non-static variable r5 cannot be referenced
```

**没有 dereferenced 错误**——这是本轮最重要的结构性改善。

### 85 个 cannot find symbol 的原因

41 个顶层常量改名后，本文件内的**裸名引用**还没同步：

```java
textView.setPadding(dev.duo.workspaceprobe.b.Z_v, 0, ...);  ← 已同步（syncq）
int length = dev.duo.workspaceprobe.b.H_v.length;           ← 已同步
// 但：
int x = Z;        ← 裸名，未同步
if (W > 0) ...    ← 裸名，未同步
```

## 累计进展

| 轮次 | 批量报错 | 真实错误 | dereferenced | class |
|---|---|---|---|---|
| 起点（旧 java/） | 415 | — | — | 0 |
| 第 1 轮 | 314 | — | — | 56 |
| 第 7 轮 | 2 | — | — | 409 |
| 第 13 轮 | 733 | 902 | — | 409 |
| 第 20 轮 | 528 | — | — | 409 |
| 第 23 轮 | 514 | 100 | — | 409 |
| 第 24 轮 | 486 | 100 | — | 409 |
| 第 25 轮 | 482 | 100 | 5 | 409 |
| **第 26 轮** | **609** | **100** | **0** | **409** |

## 本轮交付的工具

```
source-pipeline\top-fix-const-shadow.java   TopFix（顶层类常量精确改名）
```

`syncq.py`（全限定引用同步）保存在 `_work/`。

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 的 100 个真实错误 | dereferenced 已清零，剩 85 符号 + 12 类型 |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 26 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 下一轮计划

**必须用 AST 而非正则**处理裸名引用。方向：

1. 用 `BareFix`（已有），但**改进跳过逻辑**：
   - 当前 `BareFix` 改了 119 处，跳过 202 局部变量 + 46 嵌套类字段
   - 但它仍然引入了新的 dereferenced 错误（说明跳过不够）
   - 需要额外检查：`NameExpr` 的父节点是否为 `MethodCallExpr` 的 name（方法名）、`VariableDeclarator` 的 name（声明）

2. 或者：**接受 609 的批量报错，转向其他方向**
   - 真实错误 100 个已精确定位
   - 但批量报错 609 意味着连带错误变多了

3. 考虑回退到第 25 轮的 482 状态，只保留 TopFix 中**真正有效的部分**（如 `h0.h`、`r0`、`h.a` 那几处手改）

---

## 最终决定：回退到 482 状态

TopFix + syncq 虽然消除了全部 dereferenced 错误，但批量编译错误从 **482 涨到 609**。

**目标的首要指标是「可完整编译」，即批量报错数。** 因此回退到第 25 轮的 482 状态：

`
git checkout aada952 -- java-complete/dev/duo/workspaceprobe/b.java
`

验证：

`
javac batch: 482 errors, 409 classes
`

### 保留的价值

虽然 TopFix 的批量效果是负面的，但本轮的**方法论成果**仍然有效：

1. **c != top 身份比较**——AST 中区分顶层类与嵌套类的正确方法
2. **消除 dereferenced 的路径已验证**——41 个顶层常量遮蔽是根因
3. **失败模式记录**：
   - 按缩进判断会误改嵌套类
   - 正则同步裸名会破坏语法

### 后续若要再试

正确顺序应该是：

1. 用 TopFix 改顶层常量（41 个）
2. **同时**用 AST 精确同步裸名引用（只改 NameExpr，且父节点不是 MethodCallExpr 的 name、不是 VariableDeclarator 的 name、不是 Parameter 的 name）
3. 同时用 syncq 同步全限定引用
4. 三者一起应用，一次性验证

单独应用任何一步都会造成大批连带错误。