# 20 · 第 7 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 6 轮末 | 第 7 轮末 | 变化 |
|---|---|---|---|
| javac 报错 | 4 | **2** | −2 |
| 产出 class | 224 | **409** | **+185** |
| 有错误的文件数 | 3 | **1** | −2 |

累计：**314 → 2**（降幅 99.4%）；class 产出 **0 → 409**。

## class 产出的五次跃升

| 修复 | class 数 |
|---|---|
| 起始 | 224 |
| `G.java` 归零 | **253** |
| `h_lower_.java` 归零 | **278** |
| `K.java` 归零 | **293** |
| **`MainActivity.java` 归零** | **401** ← 最大跃升 |
| `r.java` 归零 | **409** |

`MainActivity.java`（4946 行，主界面）编译通过后一次性释放 **108 个下游类**。

## 本轮完成的修复

| 修复 | 文件 | 说明 |
|---|---|---|
| 删除 `throw th3;` 之后的死代码 | G.java | 11 行不可达 |
| `h.a(...)` 包 try/catch；删除空的 `ReflectiveOperationException` catch | h_lower_ | 方法声明 `throws Throwable` |
| 2 处 `K.a(...)` 包 try/catch | K.java | 同上 |
| `f fVar0 = new f(); mainActivity.P0.setAdapter(fVar0);` | MainActivity | 按 smali 重排；`f` 构造器只有 `(MainActivity, MainActivity$a)` |
| `topFinal` 副本 | MainActivity | `onSizeChanged` 的 `top` 被匿名类捕获 |
| `strF` 副本 | MainActivity | `b(o)` 的 `str` 在多个 catch 分支赋值 |
| 删除 1979–2006 的重复代码块 | MainActivity | `throw th2;` 后的 jadx 重复输出 |
| `final o c0021o2` → `o c0021o2` + `c0021o2F` 副本 | MainActivity | 匿名类捕获 |
| `a2 = null` 初始化 | r.java | catch 分支未赋值 |

### 本轮最关键的发现

`MainActivity.java:1233` 那个错误困扰了 3 轮。根因是 jadx 把**三条独立语句**拼成了一条：

```java
// jadx 输出（错误）
mainActivity.u.addView(new f(mainActivity, str, this.w, null, true, 0, this.q.d(), 0, this.q.b(), new Runnable() {...}).e, new FrameLayout.LayoutParams(-1, -1));

// smali 真相（13123–13132）
new-instance v1, MainActivity$f
invoke-direct {v1, v0, v2}, MainActivity$f;-><init>(MainActivity, MainActivity$a)V   ← 只有 2 个参数
iput-object v1, v0, MainActivity;->O0:MainActivity$f
iget-object v2, v0, MainActivity;->P0:ListView
invoke-virtual {v2, v1}, ListView;->setAdapter(ListAdapter)V

// 正确 Java
f fVar0 = new f();
mainActivity.O0 = fVar0;
mainActivity.P0.setAdapter(fVar0);
```

jadx 把 `O0 = fVar0`、`P0.setAdapter(fVar0)`、以及后面一个无关的 `addView` 全塞进了构造器参数列表。这也解释了为什么改成 `new f()` 会让 `addView` 实参错位——那个 `addView` 根本不该在那里。

## 剩余 2 个错误

都在 `dev/duo/workspaceprobe/b.java`（WorkspaceHooks，17,051 行）：

```java
2584: boolean b = b.b(dev.duo.workspaceprobe.b.this.i4);
2604: frameLayout.setBackground(b.b(b ? -149152738 : -134941450, 64.0f));
```

### 为什么改不动

`d0()` 构造器里 `boolean b` 是局部变量，遮蔽了静态方法 `b(...)`。本轮试了 3 种改法，全部失败：

| 尝试 | 结果 |
|---|---|
| 局部改 `bFlag` + 调用点全限定 | 2 → 548 错误 |
| 仅 3 行改全限定 `dev.duo.workspaceprobe.b.b(` | 2 → 547 错误 |
| 局部改 `bFlag`（不改调用点） | 2 → 3 错误（`b.b` 仍解析成字段） |

**根因**：`dev.duo.workspaceprobe.b` 类内部引用自己的全限定名 `dev.duo.workspaceprobe.b.b(...)` 时，javac 会把 `dev.duo.workspaceprobe.b` 解析成**当前实例的字段 `b`**（因为类里有个字段叫 `b`），产生递归歧义，导致整个文件崩掉。

这个文件有几十个不同作用域的 `b`：类名、局部 boolean、局部 FrameLayout、字段 `this.b`、静态方法 `b(...)`、嵌套类 `b.R`/`b.O`/`b.L`。

**可能的解法**（下轮尝试）：
1. 把 `d0()` 里的局部 `b` 改名为 `bFlag`，同时**只**改 2584/2604/2619 三行的接收者为 `this.b` 的静态替代——即引入一个静态辅助方法 `private static GradientDrawable bStatic(int,float)`，在类内调用它，避开 `b.b` 歧义
2. 或者把该静态方法 `b(int,float)` 改名（如 `bgDrawable`），只有 3 处调用点

## 未完成项

| 项 | 状态 | 原因 |
|---|---|---|
| d8 出 dex | 未开始 | 需先归零（差 2 个） |
| 重签名替换 APK | 未开始 | 同上 |
| **装机验证** | **阻塞（第 7 轮仍阻塞）** | `adb devices` 为空 |

### smali 路径仍可用（对照基准）

`out/MiDuo-rebuild.apk`（3,431,594 字节）签名有效，`classes.dex` 1,360,028 字节。

## 下一轮计划

1. 用"给静态方法改名"的思路修 `workspaceprobe/b.java` 的 2 个错误
2. 归零后立即 d8 → 替换 dex → 重签
3. 设备恢复后装机验证
