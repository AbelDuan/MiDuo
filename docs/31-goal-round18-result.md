# 31 · 第 18 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 17 轮末 | 第 18 轮末 | 变化 |
|---|---|---|---|
| javac 报错 | 619 | **574** | **−45** |
| 产出 class | 409 | **409** | 持平 |

`t_lower_.java` 从 76 个错误降到 **31** 个。

## 关键突破：改名方向搞反了

第 17 轮用正则改 `t_lower_` 时破坏了字符串字面量。本轮改用 AST，但第一次尝试（`Fix12`）**改错了方向**：

### 错误的方向（Fix12）

`Fix12` 把**类名 `t` 的所有引用**改成 `t_v`：

```java
// 改前
if (i != 0 || t.e) {          // t 是类
// 改后
if (i != 0 || t_v.e) {        // t_v 是 long 字段 ← 完全错误
```

结果：619 → 621（变差）。

### 正确的方向（Fix13）

应该改的是**字段 `t`**，而不是类 `t` 的引用：

```java
// 第 50 行
private static long t = 0;     →  private static long t_v = 0;

// 引用侧
t.e                            →  保持 t.e（类访问）
this.t                         →  this.t_v（字段访问）
```

关键区别：**`t.e` 里的 `t` 是类名，`this.t` 里的 `t` 是字段名**。AST 能通过 `ThisExpr` 精确区分。

### 实现

`Fix13` 只改 `FieldAccessExpr` 且 scope 是**无 qualifier 的 `ThisExpr`**：

```java
for (FieldAccessExpr fa : cu.findAll(FieldAccessExpr.class)) {
    if (!(fa.getScope() instanceof ThisExpr)) continue;
    if (((ThisExpr) fa.getScope()).getTypeName().isPresent()) continue;
    // 只改 this.<field>，不动 X.<member> 的类访问
}
```

结果：**619 → 574**。

## `t_lower_.java` 的根因完整图景

```java
final class t {                          // 第 30 行：类 t
    private static int b = 0;            // 第 32 行：遮蔽类 b
    private static long r = -1;          // 第 48 行：遮蔽类 r
    private static long s = 0;           // 第 49 行：遮蔽类 s
    private static long t = 0;           // 第 50 行：遮蔽类 t 自己！
    private static String u = "????";    // 第 51 行
    private static float[] w;            // 第 53 行：遮蔽类 w
}
```

**`t` 类的字段 `t` 遮蔽了 `t` 类自己**——这是自引用冲突。同理 `b`、`r`、`s`、`w` 遮蔽同包的其他类。

改名这 4 个字段（`b`、`r`、`s`、`t`）后，76 → 31。

## 剩余 574 个错误的分布

```
179  dev/duo/workspaceprobe/b.java
 73  dev/duo/workspaceprobe/n.java
 55  dev/duo/hookprobe/RailCustomActivity.java
 42  dev/duo/icons/e.java
 31  dev/duo/hookprobe/t_lower_.java      ← 已从 76 降低
 30  dev/duo/taskcore/WorkspaceShell.java
 25  dev/duo/hookprobe/n_lower_.java
 18  dev/duo/icons/b.java
 16  dev/duo/workspaceprobe/d.java
 13  dev/duo/icons/d.java
```

## `t_lower_` 剩余 31 个的性质

```java
192: non-static variable this cannot be referenced from a static context
     b bVar2 = new b(new Handler(Looper.getMainLooper()), bVar);
202: not an enclosing class: b
     t.c(dev.duo.workspaceprobe.b.this);
```

### smali 真相

```smali
invoke-static {p0, p1}, Ldev/duo/hookprobe/t;->c(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V
```

`t->c(b, View)` 是一个**静态方法**，第一个参数是 `b` 类型的**实例**。

jadx 把它写成了 `t.c(dev.duo.workspaceprobe.b.this)`——用 `b.this` 表达"b 的实例"，但 `t` 不在 `b` 内部，所以 `b.this` 不合法。

**正确写法**应该是传入某个 `b` 实例引用。这需要看 smali 里 `p0` 从哪来，属于逐条重建范畴。

### 5 个嵌套类都是非静态

```
56:  class a implements DisplayManager.DisplayListener {
87:  class c implements View.OnAttachStateChangeListener {
108: class d implements Choreographer.FrameCallback {
131: class e implements Choreographer.FrameCallback {
350: class b extends Binder {
```

从静态方法里 `new b(...)` 会报 "non-static variable this cannot be referenced from a static context"。修法：给这些嵌套类加 `static`。

## 累计进展

| 轮次 | 报错 | class | 关键 |
|---|---|---|---|
| 起点（旧 java/） | 415 | 0 | — |
| 第 1 轮 | 314 | 56 | `T.java`/`Engine` 通过 |
| 第 7 轮 | 2 | 409 | `MainActivity` 归零 |
| 第 13 轮 | 733（真实） | 409 | 打开 `d0` 闸门 |
| 第 16 轮 | 619 | 409 | 修复 AST 列偏移 bug |
| 第 17 轮 | 619 | 409 | 发现错误分布 32 文件 |
| **第 18 轮** | **574** | **409** | **改正改名方向，t_lower 76→31** |

## 本轮交付的工具

```
source-pipeline\ast-sync-this-fields.java   Fix13 只同步 this.<field>
```

## 未完成项

| 项 | 状态 |
|---|---|
| 574 个错误（32 文件） | 逐文件处理中 |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 18 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 下一轮计划

1. **`t_lower_` 的 31 个**——给 5 个嵌套类加 `static`，再按 smali 修 `b.this` 的语义
2. **`n.java`（73）**——同样的静态常量遮蔽模式
3. **`RailCustomActivity.java`（55）**、**`icons/e.java`（42）**
4. **`workspaceprobe/b.java`（179）**——最大的一个，放最后

**关键方法论已确立**：
- 用 AST 精确区分"类名引用"和"字段引用"
- 改字段不改类名（除非类名本身遮蔽）
- 正则处理 Java 必须严格保护字面量（第 17 轮教训）
