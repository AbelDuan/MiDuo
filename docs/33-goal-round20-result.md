# 33 · 第 20 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 19 轮末 | 第 20 轮末 | 变化 |
|---|---|---|---|
| javac 报错 | 554 | **528** | **−26** |
| 产出 class | 409 | **409** | 持平 |

**`icons/e.java` 从 42 → 0**，本轮实现了一次完整的文件归零。

## 关键突破：跳过嵌套类的 `this.<f>`

### 问题

`icons/e.java` 的根因是：

```java
public static final long a = 1073741824;   // 遮蔽类 a
public static final long b = 134217728;    // 遮蔽类 b
private static final long c = 134217728;   // 遮蔽类 c
private static final int e = 2097152;      // 遮蔽类 e 自己
```

这 4 个常量遮蔽了同名类，导致 `e.b(bArr, i2)`、`e.a(bArr, i)` 这类**类访问**被解析成 int 的成员访问。

### 三次失败尝试

| 尝试 | 方案 | 结果 |
|---|---|---|
| 正则改名 `e`→`e_v` | 值引用全替换 | 554 → **586**（class 归零，破坏结构） |
| Fix14（声明 + `this.<f>` + NameExpr） | 全量 AST | 554 → **592**（NameExpr 把类访问也改了） |
| Fix15（声明 + `this.<f>`，无 NameExpr） | 保守 AST | 554 → **560**（`this.<f>` 改到了嵌套类的同名字段） |

### 成功的方案（Fix16）

关键洞察：**嵌套类有自己的同名字段**，不能改。

```java
class e {                                  // 顶层类
    private static final int e = 2097152;  // ← 要改
    
    class C0033a {                         // 嵌套类
        final int b;                       // ← 自己的字段，不能改
        final long e;                      // ← 自己的字段，不能改
        void x() { this.e = ...; }         // ← this.e 指嵌套类的字段
    }
}
```

`Fix16` 加入判断：

```java
ClassOrInterfaceDeclaration c = enc(fa);   // 找到 this.<f> 所属的类
if (c == null || c.isNestedType()) { skip++; continue; }  // 嵌套类内跳过
```

输出：

```
SHADOW: [a, b, c, e]
this.<f>=0  skipNested=36
554 → 529
```

**36 处嵌套类的 `this.<f>` 被正确跳过。**

### 最后一步：引用同步

`icons/e` 的常量 `b` 改名后，`icons/b.java` 里的 `e.b` 引用失效：

```java
e.a(openInputStream, file, e.b);   →  e.a(openInputStream, file, e.b_v);
```

**529 → 528**

## 累计进展

| 轮次 | 报错 | class | 关键 |
|---|---|---|---|
| 起点（旧 java/） | 415 | 0 | — |
| 第 1 轮 | 314 | 56 | `T.java`/`Engine` 通过 |
| 第 7 轮 | 2 | 409 | `MainActivity` 归零 |
| 第 13 轮 | 733（真实） | 409 | 打开 `d0` 闸门 |
| 第 16 轮 | 619 | 409 | 修复 AST 列偏移 bug |
| 第 18 轮 | 574 | 409 | 改正改名方向 |
| 第 19 轮 | 554 | 409 | t_lower 31→11 |
| **第 20 轮** | **528** | **409** | **icons/e 42→0** |

## 剩余 528 个错误的分布

```
179  dev/duo/workspaceprobe/b.java
 73  dev/duo/workspaceprobe/n.java
 55  dev/duo/hookprobe/RailCustomActivity.java
 30  dev/duo/taskcore/WorkspaceShell.java
 25  dev/duo/hookprobe/n_lower_.java
 19  dev/duo/icons/b.java
 16  dev/duo/icons/d.java
 16  dev/duo/workspaceprobe/d.java
```

### 错误类型分布

```
280  cannot find symbol
 74  int cannot be dereferenced
 48  incompatible types
 35  not an enclosing class
 18  cannot assign a value to final variable
 13  boolean cannot be dereferenced
```

## 已确立的完整方法论（四轮验证）

1. **用 AST 精确区分**「类名引用」和「字段引用」
   - `T.a(...)` 中的 `T` 是类名 → 保持
   - `this.a` 中的 `a` 是字段 → 按需改名

2. **改字段不改类名**（除非类名本身遮蔽其他类）

3. **跳过嵌套类内的 `this.<f>`**（嵌套类有自己的同名字段）
   - 本轮新增，解决了第 19 轮无法处理的情况

4. **正则处理 Java 必须严格保护字面量**
   - 第 17 轮：`"some string"` → `""`（破坏 46 个字符字面量）
   - 第 19 轮：`e` → `e_v` 波及全文件

5. **嵌套类若从静态上下文实例化，必须加 `static`**

6. **常量改名后必须同步跨文件引用**
   - `icons/e` 的 `b` 改名后，`icons/b` 的 `e.b` 需要跟着改

## 本轮交付的工具

```
source-pipeline\ast-fix-const-skipnested.java   Fix16（含嵌套类跳过判断）
```

## 未完成项

| 项 | 状态 |
|---|---|
| 528 个错误（30 文件） | 逐文件处理中 |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 20 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 下一轮计划

按文件大小依次处理，每个文件用 `Fix16` + 手工调整：

1. **`workspaceprobe/n.java`（73）**——先诊断是否有常量遮蔽
2. **`RailCustomActivity.java`（55）**——需要先诊断
3. **`taskcore/WorkspaceShell.java`（30）**
4. **`hookprobe/n_lower_.java`（25）**
5. **`workspaceprobe/b.java`（179）**——最大，放最后

按当前速度（本轮 −26），剩余约需 10–12 轮。
