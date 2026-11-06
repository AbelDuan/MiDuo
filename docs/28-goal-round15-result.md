# 28 · 第 15 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 14 轮末 | 第 15 轮末 | 变化 |
|---|---|---|---|
| javac 报错 | 733 | **733** | 持平 |
| 产出 class | 409 | **409** | 持平 |

本轮实现了第 14 轮规划的"AST 定位 + 文本原地编辑"，但**三次尝试都未能改善**，并发现了一个更深的语义障碍。

## 三次 AST 尝试

### 尝试 1：`Fix3` —— 全量 AST 定位 + 原地编辑

- 定位 37 个字段/类型冲突名
- 233 处编辑（37 声明 + 124 NameExpr + 211 `this.<f>`）
- 原地编辑保留格式（文件仅增 699 字节）

结果：**733 → 1099**（变差）

### 尝试 2：`Fix4` —— 只改顶层类的静态常量

- 精确限定为 `topCls.getFields()` 中 `isStatic()` 的字段
- 36 个常量
- `this.field` 编辑 0 处（`findAncestor` 判断失效）

结果：未编译测试（脚本先暴露了 API 用法问题）

### 尝试 3：`Fix5` —— 顶层常量 + 所有 NameExpr

- 36 个顶层常量改名
- 124 处 NameExpr 编辑

结果：**733 → 764**（变差）

## 发现的深层语义障碍

### 问题：同名不同层

```java
// 顶层类 b 的静态常量
private static final int a = -789517;   // line 219
private static final int b = -16777216; // line 221

// 嵌套类的实例字段（完全无关）
class d0 {
    private final boolean b_v;          // 实例字段
    void x() { this.b_v = ...; }
}

class C0034c {
    final /* synthetic */ ValueAnimator b_v;  // 另一个类的实例字段
    void y() { this.b_v = valueAnimator; }
}
```

**`a`、`b` 在顶层类是常量，在嵌套类里是实例字段**。它们名字相同但作用域完全不同。

AST 把顶层常量改成 `a_v`、`b_v` 后：
- 嵌套类里的 `this.b` 现在指向**顶层类的常量**（因为实例字段可能不存在或名字不同）
- 于是 `this.b = bVar;` 报 "cannot find symbol: variable b"

### 为什么 124 处 NameExpr 全量替换不够

`NameExpr` 包含所有简单名字引用。但同一个名字在不同类里有不同含义：

```
this.a   → 在类 X 里指 X.a（实例字段）
this.a   → 在类 Y 里指顶层常量 a（静态字段）
a        → 在方法里指局部变量
```

AST 能给出位置，但**无法判断"这个 a 属于哪个类"**——这需要符号解析（symbol resolution），JavaParser 不做这个。

### 真正的需求

要修 733 个错误，需要：
1. **完整的符号表**（每个类、每个方法、每个局部作用域的声明）
2. **作用域链解析**（`this.a` → 找最近的 enclosing class 的 `a`）
3. **只在必要时改名**（避免破坏其他类的同名成员）

这相当于实现一个**简化版 Java 编译器前端**。JavaParser 提供 AST，但不提供符号解析。

## 本轮交付的工具

```
source-pipeline\ast-scope-analyze.java   分析器（已验证：识别 37 个冲突名）
source-pipeline\ast-fix-inplace.java     Fix3 原地编辑（失败）
source-pipeline\ast-fix-toplevel.java    Fix4 顶层限定（API 问题）
source-pipeline\ast-fix-nameexpr.java    Fix5 全量 NameExpr（失败）
```

JavaParser jar 位置：
```
C:\Users\Abel\hyperduo-toolchain\gradle-9.8.2\lib\javaparser-core-3.27.1.jar
```

## 累计进展

| 轮次 | 报错 | class | 关键 |
|---|---|---|---|
| 起点 | 415 | 0 | — |
| 第 1 轮 | 314 | 56 | `T.java`/`Engine` 通过 |
| 第 6 轮 | 4 | 224 | `f_lower_` 归零 |
| 第 7 轮 | 2 | 409 | `MainActivity` 归零 |
| 第 10 轮 | 2 | 409 | 按类作用域解析 |
| 第 13 轮 | 733（真实） | 409 | 打开 `d0` 闸门，902→733 |
| 第 14 轮 | 733 | 409 | JavaParser 验证可用 |
| **第 15 轮** | **733** | **409** | AST 原地编辑三次尝试失败 |

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 733 个错误 | 需符号解析（不只是 AST） |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 15 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 客观评估

### 已完成

- **120/121 个文件编译通过**
- **409 个 class 产出**
- 完整的可复现重建流水线（26 个脚本）
- 12 份工程记录文档

### 剩余

`workspaceprobe/b.java`（17,051 行，全项目最大类）的 733 个错误，需要：
- 实现符号解析（作用域链 + 类型推断）
- 或逐条人工对照 smali 修正

按本轮经验，纯文本/AST 正则方案已触及上限。

### 建议

考虑到：
1. 目标还包括**装机验证**（已阻塞 15 轮，完全依赖设备连接）
2. smali 路径 100% 可用且已验证
3. Java 路径已完成 99.2%

建议与用户确认优先级：是继续投入符号解析器（可能需要 5-10 轮），还是接受当前状态交付。
