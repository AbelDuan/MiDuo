# 30 · 第 17 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 16 轮末 | 第 17 轮末 | 变化 |
|---|---|---|---|
| javac 报错 | 619 | **619** | 持平 |
| 产出 class | 409 | **409** | 持平 |

本轮有一次**重大发现**和一次**严重回退**，最终恢复到稳定状态。

## 重大发现：错误分布在 32 个文件，不只是 b.java

第 16 轮末的 619 个错误，按文件分布：

```
179  dev/duo/workspaceprobe/b.java
 76  dev/duo/hookprobe/t_lower_.java      ← 本轮重点
 73  dev/duo/workspaceprobe/n.java
 55  dev/duo/hookprobe/RailCustomActivity.java
 42  dev/duo/icons/e.java
 30  dev/duo/taskcore/WorkspaceShell.java
 25  dev/duo/hookprobe/n_lower_.java
 18  dev/duo/icons/b.java
 16  dev/duo/workspaceprobe/d.java
 13  dev/duo/icons/d.java
 ... 22 个其他文件
```

**`b.java` 只占 179 个**，其余 440 个分散在 31 个文件。

### `t_lower_.java` 的 76 个错误只有一个根因

第 50 行：

```java
private static long t = 0;    // ← 遮蔽了类 t
```

于是 `t.e`、`t.d(...)`、`t.m`、`t.v`、`t.b(...)` 全被解析成"对 long 的成员访问"：

```
69: long cannot be dereferenced   if (i != 0 || t.e) {
72: long cannot be dereferenced   t.d(this.a);
73: long cannot be dereferenced   if (t.m) {
74: long cannot be dereferenced   Iterator it = t.v.keySet().iterator();
76: long cannot be dereferenced   t.b(this.a, (View) it.next());
```

这与 `T.java`、`workspaceprobe/b.java` 的**模式完全相同**——静态常量遮蔽同名类。

## 严重回退：正则破坏了字符串字面量

### 尝试

用正则给 `t_lower_.java` 的 4 个常量（`b`、`r`、`s`、`t`）加 `_v`，同步引用：

```
renamed: ['b', 'r', 's', 't']
```

编译结果一度显示 **619 → 34**（巨大进展）。

### 但 34 个全是语法错误

```
51: illegal start of expression    private static String u = ;
174: illegal start of expression   Log.e(, , e2);
197: illegal start of expression   a(obtain, );
238: illegal start of expression   IBinder iBinder = (IBinder) Class.forName().getMethod(, String.class)...
```

**正则把字符串字面量的内容删空了**：`"some string"` → `""`。

原因：我的 tokenizer 用了 `STR.split(ln)`，但替换后重新拼接时，`holders` 字典的清理时机有 bug，导致字符串段被当作代码段处理。

### 处理

立即回退到 `0d966ed`（第 16 轮末的干净状态），确认恢复：

```
errors: 619  classes: 409
```

已提交恢复。

## 本轮验证的 AST 方案（Fix11）

虽然 `t_lower_` 的正则尝试失败，但本轮实现了 `Fix11`——一个**带完整作用域判断**的 AST 常量改名器：

```
TOP_STATIC_CONST_SHADOW: 32
NameExpr renamed=74 skippedLocal=14 skippedField=17
```

它正确地：
- 只改顶层类的静态基本类型常量
- 跳过被局部变量遮蔽的引用（14 处）
- 跳过被嵌套类字段遮蔽的引用（17 处）

在 `b.java` 上测试：**619 → 631**（略升，因为部分引用仍需更多作用域信息）。

## 累计进展

| 轮次 | 报错 | class | 关键 |
|---|---|---|---|
| 起点（旧 java/） | 415 | 0 | — |
| 第 1 轮 | 314 | 56 | `T.java`/`Engine` 通过 |
| 第 6 轮 | 4 | 224 | `f_lower_` 归零 |
| 第 7 轮 | 2 | 409 | `MainActivity` 归零 |
| 第 13 轮 | 733（真实） | 409 | 打开 `d0` 闸门，902→733 |
| 第 16 轮 | 619 | 409 | 修复列偏移 bug |
| **第 17 轮** | **619** | **409** | 发现错误分布在 32 文件；正则破坏字面量已回退 |

## 剩余 619 个错误的分类

| 类型 | 数量 |
|---|---|
| `cannot find symbol` | 268 |
| `int/long cannot be dereferenced` | 164 |
| `incompatible types` | 51 |
| `not an enclosing class` | 42 |
| `cannot assign a value to final` | 21 |
| 其他 | 73 |

## 本轮交付的工具

```
source-pipeline\ast-fix-const-shadow.java   Fix11 带作用域判断的常量改名器
```

## 未完成项

| 项 | 状态 |
|---|---|
| 619 个错误（32 文件） | 逐文件处理中 |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 17 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 下一轮计划

`t_lower_.java` 的 76 个错误是**单一根因**（第 50 行 `long t`），值得优先处理。但必须用 **AST 方案**而非正则：

1. 用 `Fix11` 的思路处理 `t_lower_.java`
2. 逐个处理 `n.java`（73）、`RailCustomActivity.java`（55）、`icons/e.java`（42）
3. 每个文件处理完立即编译验证

**关键教训**：正则处理 Java 源码时，必须严格保护字符串字面量和字符字面量。AST 方案更安全。
