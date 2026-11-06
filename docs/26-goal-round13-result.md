# 26 · 第 13 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 12 轮末 | 第 13 轮末 | 变化 |
|---|---|---|---|
| 全量报错（可见） | 2（假象） | **733**（真实） | 假象变真实 |
| 该文件真实错误 | 902 | **733** | **−169** |
| 产出 class | 409 | **409** | 持平 |

## 本轮完成的三项实质修复

### 1. 按 smali 重建 `d0()` 构造器

smali 真相（`b$d0.smali:159`）：

```smali
.method constructor <init>(Ldev/duo/workspaceprobe/b;)V
    iget-object v2, v1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;
    invoke-static {v2}, Ldev/duo/workspaceprobe/b;->b(Landroid/content/Context;)Z
    move-result v2
    iput-boolean v2, v0, Ldev/duo/workspaceprobe/b$d0;->b:Z     ← 直接存字段
    if-eqz v2, :cond_0
```

**没有局部变量**，结果直接 `iput` 到字段。jadx 多造了一个 `boolean b_v` 局部变量，导致与字段同名冲突。

修正为：

```java
this.b_v = dev.duo.workspaceprobe.b.b(dev.duo.workspaceprobe.b.this.i4);
// 后续引用改为 this.b_v
```

效果：`d0` 归零，但同时**暴露出 902 个真实错误**。

### 2. 方法调用去后缀（68 处）

之前的全局改名把方法调用也加了 `_v`：

```java
this.p_v();        // 应为 this.p()
this.t_v(str);     // 应为 this.t(str)
this.r_v(str);     // 应为 this.r(str)
```

修复：`.name_v(` → `.name(`，共 68 处。

效果：**902 → 838**

### 3. 类型感知的字段引用修正（87 行）

扩展 `type_fix2.py`：不仅查类字段表，还收集**全文件的局部变量类型**，用于推断 `obj.<f>` 中 `obj` 的类型。

效果：**838 → 749**

### 4. 局部变量去后缀（16 处）

`int b_v = signalStrength == null ? -1 : b_v.b(...)` 中 `b_v` 是 int 局部变量，却要调 `.b()`。修复为 `int b` + `dev.duo.workspaceprobe.b.b(...)`。

效果：**749 → 733**

## 剩余 733 个错误的构成

| 类型 | 数量 |
|---|---|
| `cannot find symbol` | 376 |
| `int cannot be dereferenced` | 116 |
| `long cannot be dereferenced` | 63 |
| `incompatible types` | 51 |
| `not an enclosing class` | 42 |
| `boolean cannot be dereferenced` | 13 |
| 其他 | 72 |

### 缺失符号 Top 10

| 次数 | 符号 | 典型 |
|---|---|---|
| 113 | `variable b` | `if (w2 != null && w2.b == view)` |
| 19 | `variable q` | `final h0 h0Var = it.next().q;` |
| 18 | `variable th` | `Log.w(str, "...", th);` |
| 14 | `variable k` | `c0 c0Var = ((K) obj).k;` |
| 14 | `variable t` | `this.t = -1;` |
| 14 | `variable e` | `e = e2;` |
| 11 | `variable j` | `ArrayList arrayList = new ArrayList(this.a.j);` |
| 10 | `variable o` | `this.j_v = d0Var.o.indexOf(view);` |

## 剩余工作的性质

### `variable b` 的 113 个是最难的

`w2` 这个变量名在**不同作用域有不同类型**：

```
2783:  W w2 = this.l_v;                    ← W 类，字段是 b_v
12329: FrameLayout w2 = w(1);              ← FrameLayout，无 b 字段
13458: SharedPreferences w2 = w();         ← 无 b 字段
```

所以 `w2.b` 在不同位置含义不同。静态类型推断需要**精确的作用域分析**（按方法边界），本轮试过的简单窗口法只修了 1 处。

### `not an enclosing class` 的 42 个

```
b_v.a(dev.duo.workspaceprobe.b.O.this);
dev.duo.workspaceprobe.b.L.this.c = false;
dev.duo.workspaceprobe.b.R.this.b();
```

本轮试过把 `X.this` 统一改成 `b.this`，结果错误从 733 涨到 752，已回退。这些需要逐个确认 `O`/`L`/`R` 是否真是内部类（非 static）。

## 累计进展

| 轮次 | 报错 | class | 关键突破 |
|---|---|---|---|
| 起点（旧 java/） | 415 | 0 | — |
| 第 1 轮 | 314 | 56 | `T.java`/`Engine` 通过 |
| 第 6 轮 | 4 | 224 | `f_lower_` 归零 |
| 第 7 轮 | 2 | 409 | `MainActivity` 归零 |
| 第 9 轮 | 98 | 409 | 53 个常量遮蔽类名 |
| 第 10 轮 | 2 | 409 | 按类作用域解析 |
| 第 12 轮 | 2 | 409 | 纠正真实错误数为 2 |
| **第 13 轮** | **733（真实）** | **409** | 打开 `d0` 闸门，902→733 |

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 733 个错误 | 按类型分批处理中 |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 13 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 下一轮计划

按错误类型分批，优先级：

1. **`int/long cannot be dereferenced`（179 个）**——多数是局部变量被误加 `_v`，有明确模式
2. **`incompatible types`（51 个）**——逐条看
3. **`not an enclosing class`（42 个）**——逐个确认嵌套类是否 static
4. **`variable b`（113 个）**——需要按方法边界的作用域分析，最难，放最后
