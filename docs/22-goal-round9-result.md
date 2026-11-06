# 22 · 第 9 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 8 轮末 | 第 9 轮末 | 变化 |
|---|---|---|---|
| 可见报错 | 2 | **98** | +96（假象→真实） |
| 产出 class | 409 | **409** | 持平 |
| 该文件隐藏错误 | 547 | **98** | **−449** |

## 本轮突破：找到并修掉了 547 个错误的共同根因

第 8 轮发现 `workspaceprobe/b.java` 的"2 个错误"掩盖了 547 个真实错误。本轮找到了根因。

### 根因：60 个常量字段遮蔽了同名的类

该文件第 200–260 行是一整块常量定义：

```java
private static final int I = 999;      // 遮蔽了嵌套类 I
private static final int T = 47;       // 遮蔽了嵌套类 T
private static final int a = -789517;  // 遮蔽了类 a / 嵌套类 a
private static final int b = -16777216; // 遮蔽了类 b 自己！
private static final int j = 3;        // 遮蔽了类 j
private static final int n = 0;
private static final int o = 1;
// ... 共 53 个
```

于是 `J.h`、`t.e`、`e.b(...)`、`n.a(...)` 全部被 javac 解析成"对 int 的成员访问"：

```
54  t   if (i != 0 || t.e) {
32  J   private static final String[] f = J.h;
22  e   if (e.b(bArr, i2) == 101010256) {
16  n   n.a(str, (WorkspaceSession) obj);
```

这与第 1 轮 `T.java` 的情况**完全同构**。

### 解法：给常量加 `_v` 后缀

只给**类级常量字段**（indent 4、基本类型、名字不是嵌套类名）加 `_v`：

```java
private static final int b_v = -16777216;
private static final int j_v = 3;
```

53 个常量改名后，隐藏错误从 **547 → 98**。

### 两个必须避开的陷阱

本轮踩了两次，都是同一个原因：

| 陷阱 | 后果 | 修法 |
|---|---|---|
| 把**嵌套类声明**也改名（`class F` → `class F_v`） | 构造器 `F(...)` 与类名不匹配，34 个语法错误 | 先收集全部 class/interface/enum 名，跳过它们 |
| 把**字符字面量**也改名（`'\b'` → `'\b_v'`） | 46 个 "unclosed character literal" | 用 tokenizer 切出 `"..."` 和 `'...'`，只改代码段 |
| 把**顶层类名**也改名（`class b` → `class b_v`） | 构造器 `public b()` 失效 | 恢复第 190 行 |

## 剩余 98 个错误

96 个 `cannot find symbol` + 2 个 `boolean cannot be dereferenced`。

### 符号分布

| 次数 | 符号 | 典型行 |
|---|---|---|
| 47 | `b` | `this.b = surfaceControl;` |
| 16 | `j` | `this.j = dev.duo.hookprobe.N.a(str);` |
| 10 | `n` | `this.n = 1.0f;` |
| 6 | `k` | `this.k = true;` |
| 6 | `u0` | `canvas.translate(0.0f, dev.duo.workspaceprobe.b.u0);` |
| 3 | `l` | `this.l = true;` |
| 3 | `w` | `case dev.duo.workspaceprobe.b.w /* 16 */:` |

### 根因：字段名存在"同名不同层"的歧义

同一个名字在不同嵌套类里有不同含义：

```java
// 顶层 b 的字段
private final N e;          // line 736
private static Field e;     // line 226

// 嵌套类 L 的字段（我改成了 b_v）
final SurfaceControl b_v;   // line 1551
// 但赋值仍是 this.b = surfaceControl;  ← 47 个错误来自这里
```

`this.b` 在 `L` 内部应指向 `L.b_v`，但文本上写的是 `this.b`。**纯文本替换无法区分"哪个类的 this"**。

这需要按类作用域解析，是下一轮的工作。

## 未完成项

| 项 | 状态 |
|---|---|
| `workspaceprobe/b.java` 归零 | 剩 98 个，需按类作用域处理 |
| d8 出 dex | 未开始 |
| 重签名替换 APK | 未开始 |
| **装机验证** | **阻塞（第 9 轮仍阻塞）**，`adb devices` 为空 |

### smali 路径仍可用

`out/MiDuo-rebuild.apk`（3,431,594 字节）签名有效，`classes.dex` 1,360,028 字节。

## 累计进展

| 轮次 | 可见报错 | 产出 class |
|---|---|---|
| 起点 | 415（旧 java/） | 0 |
| 第 1 轮 | 314 | 56 |
| 第 4 轮 | 6 | 78 |
| 第 6 轮 | 4 | 224 |
| 第 7 轮 | 2 | 409 |
| **第 9 轮** | **98（真实）** | **409** |

**120/121 个文件编译通过，409 个 class 产出。** 只剩 `workspaceprobe/b.java`（17,051 行）。

## 下一轮计划

1. 写一个按类作用域解析的脚本：对每个嵌套类，找出它的字段声明，只在该类的花括号范围内替换 `this.<f>` → `this.<f>_v`
2. 预计可清掉 47+16+10+6+6+3+3 = 91 个错误
3. 剩 7 个手工处理
4. 归零后 d8 → 替换 dex → 重签
