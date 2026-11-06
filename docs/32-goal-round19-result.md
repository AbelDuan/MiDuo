# 32 · 第 19 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 18 轮末 | 第 19 轮末 | 变化 |
|---|---|---|---|
| javac 报错 | 574 | **554** | **−20** |
| 产出 class | 409 | **409** | 持平 |

`t_lower_.java` 从 **31 → 11**（本轮开始时该文件已是 31，累计从原始的 76 降到 11）。

## 本轮完成的四项修复

### 1. `b.this` → 参数名（3 处）

```java
// 静态方法签名
static void e(final dev.duo.workspaceprobe.b bVar) {
    // jadx 写错：
    t.c(dev.duo.workspaceprobe.b.this);
    // smali 真相：t->c(b, View) 是静态方法，第一参数是 b 实例
    // 正确：
    t.c(bVar);
```

**574 → 571**

### 2. 嵌套类加 `static`（5 个）

```java
class a implements DisplayManager.DisplayListener { ... }   →  static class a
class c implements View.OnAttachStateChangeListener { ... } →  static class c
class d implements Choreographer.FrameCallback { ... }      →  static class d
class e implements Choreographer.FrameCallback { ... }      →  static class e
class b extends Binder { ... }                              →  static class b
```

原因：从静态方法 `new b(...)` 实例化非静态内部类会报 "non-static variable this cannot be referenced from a static context"。

**571 → 566**

### 3. 类 `t` 的限定字段访问同步（`t.<field>`）

第 18 轮把类 `t` 的字段 `b`、`r`、`s`、`t`、`w` 改成了 `_v`，但**限定形式**的引用没同步：

```java
t.r = -1L;      →  t.r_v = -1L;
t.s = t.t = 0L; →  t.s_v = t.t_v = 0L;
t.o             →  t.o_v
```

**566 → 563**

### 4. 嵌套类 `b` 的字段改名 + 引用同步（4 处）

```java
// nested class b (第 350 行) 有字段
final /* synthetic */ dev.duo.workspaceprobe.b b;   // ← 遮蔽类 b
// 改为
final /* synthetic */ dev.duo.workspaceprobe.b b_fld;

// 引用同步
this.b_v = bVar;   →  this.b_fld = bVar;
t.b_v.a(...)       →  t.b.a(...)
```

**563 → 560**

### 5. `this.b_v` / `b.this` 在嵌套类内的统一（10 处）

```java
final dev.duo.workspaceprobe.b bVar = this.b_v;   →  this.b_fld
t.a(dev.duo.workspaceprobe.b.this, ...)           →  t.a(this.b_fld, ...)
this.b_v.a(bundle, true)                          →  this.b_fld.a(bundle, true)
```

**560 → 554**

## `t_lower_.java` 的完整修复历程

| 阶段 | 错误数 | 关键动作 |
|---|---|---|
| 原始 | 76 | 字段 `b`/`r`/`s`/`t`/`w` 遮蔽同名类 |
| 第 18 轮 | 31 | 字段改名 + `this.<f>` 同步 |
| 第 19 轮 | **11** | `b.this`→参数、嵌套类加 static、限定字段同步、嵌套类 b 字段改名 |

### 剩余 11 个的性质

```java
235: cannot find symbol   b = parseInt;         // 变量名 b 与类 b 冲突
237: cannot find symbol   d = new w(b, 192);     // 变量名 d 与类 d 冲突
281: non-static method getClass() cannot be referenced from a static context
     String str = (String) dev.duo.hookprobe.A.getClass().getMethod("getUniqueId", null)...
```

## 本轮失败的一次尝试：`icons/e.java`

`icons/e.java` 有 42 个错误，根因是第 38 行：

```java
private static final int e = 2097152;   // 遮蔽类 e 自己（icons/e.java 是 class e）
```

用正则改名 `e` → `e_v` 并同步值引用：

```
554 → 586（class 归零，说明正则破坏了结构）
```

已回退。**这是第 17 轮"正则破坏字面量"教训的重复**——`e` 这个单字母在文件中出现太多，正则无法可靠区分。

正确做法：用 AST（`Fix13` 思路，只改 `this.<f>` 和字段声明）。

## 累计进展

| 轮次 | 报错 | class | 关键 |
|---|---|---|---|
| 起点（旧 java/） | 415 | 0 | — |
| 第 1 轮 | 314 | 56 | `T.java`/`Engine` 通过 |
| 第 7 轮 | 2 | 409 | `MainActivity` 归零 |
| 第 13 轮 | 733（真实） | 409 | 打开 `d0` 闸门 |
| 第 16 轮 | 619 | 409 | 修复 AST 列偏移 bug |
| 第 18 轮 | 574 | 409 | 改正改名方向 |
| **第 19 轮** | **554** | **409** | t_lower 31→11 |

## 剩余 554 个错误的分布

```
179  dev/duo/workspaceprobe/b.java
 73  dev/duo/workspaceprobe/n.java
 55  dev/duo/hookprobe/RailCustomActivity.java
 42  dev/duo/icons/e.java          ← 本轮尝试失败，待 AST 处理
 30  dev/duo/taskcore/WorkspaceShell.java
 25  dev/duo/hookprobe/n_lower_.java
 18  dev/duo/icons/b.java
 16  dev/duo/workspaceprobe/d.java
 13  dev/duo/icons/d.java
 11  dev/duo/hookprobe/t_lower_.java
```

## 未完成项

| 项 | 状态 |
|---|---|
| 554 个错误（32 文件） | 逐文件处理中 |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 19 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 下一轮计划

1. **`icons/e.java`（42）**——用 AST（`Fix13` 模式），不用正则
2. **`n.java`（73）**——静态常量遮蔽，同样用 AST
3. **`RailCustomActivity.java`（55）**——需要先诊断
4. **`workspaceprobe/b.java`（179）**——最大，放最后

### 已确立的方法论（三轮验证）

1. **用 AST 精确区分**「类名引用」和「字段引用」
2. **改字段不改类名**（除非类名本身遮蔽其他类）
3. **正则处理 Java 必须严格保护字面量**——两次教训（第 17、19 轮）
4. 嵌套类若从静态上下文实例化，必须加 `static`
