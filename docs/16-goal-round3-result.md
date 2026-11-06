# 16 · 第 3 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 2 轮末 | 第 3 轮末 | 变化 |
|---|---|---|---|
| javac 报错 | 64 | **38** | −26 |
| 产出 class | 56 | **56** | 保持 |
| 有错误的文件数 | 19 | **15** | −4 |

累计：**314 → 38**，降幅 88%。

## 本轮完成的修复

| 修复 | 文件 | 依据 |
|---|---|---|
| 删除 `IosNcActivity` 残留分支 | MainActivity | 该功能已从精简版移除 |
| `c.a(...)`、`b.a(...)`、`g.b(...)`、`n.a(...)`、`e.a(...)` 加类名限定 | AlbumCrop/AlbumPageJob/AWP/C/G | 局部变量遮蔽类名 |
| `throw th5;` / `throw e;` → `throw new RuntimeException(...)` | h_lower_ | checked Throwable 不能直接抛 |
| `setText(int)` → `setText(String.valueOf(...))` | f_lower_ | TextView 重载 |
| `ex = null` → `th = null`；`Throwable th = e2` → `th = e2` | o_lower_ | 重复声明 / 未声明 |
| `r6`/`r2` 寄存器残留 → 真实字段 | MainActivity | jadx 遗留 |
| SparseArray 泛型 → 强制转型 | Q.java | `CAP#1` 捕获变量 |
| `sharedPreferences2` 去掉 `final` | G.java | 后续被重新赋值 |
| `new a(...)` → `new r.a(...)` | r.java | 嵌套类需限定 |
| `DisplayMetrics.DENSITY_DEVICE_STABLE` 全限定 | D.java | import 冲突 |
| 嵌套类 `a` 加 `static` | L.java、AlbumWidgetProvider | 静态上下文实例化 |
| `entry2.getKey()` → `((Map.Entry) entry2).getKey()` | BugCaptureService | 原始类型迭代 |
| `dev.duo.workspaceprobe.n.setBounds` → `n.setBounds` | b.java | smali 证实 `n` 是局部 Drawable |

### 一个关键证据

`b.java` 的 `n.setBounds(...)` 通过 smali 确认为局部变量：

```smali
invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
```

即 `n` 是一个 `Drawable` 局部变量，jadx 误加了包名前缀。这条修复使 `b.java` 从 10 个错误降到 8 个。

## 剩余 38 个错误

| 文件 | 错误 | 根因 |
|---|---|---|
| `workspaceprobe/b.java` | 8 | `b` 多重身份（类名/局部/字段/方法）；`SurfaceControlViewHost` 构造器歧义 |
| `a_lower_.java` | 4 | `d.a(...)` 中 `d` 是局部对象，方法未在源码中出现 |
| `f_lower_.java` | 4 | `f.a(...)` 重载不匹配、`final i` 被自增 |
| `o_lower_.java` | 4 | `th` 作用域 |
| `r.java` | 4 | 嵌套类 `a`、三元表达式类型 |
| `BugCaptureService.java` | 3 | 原始类型 |
| `G.java` | 3 | `h.a(...)` 目标 |
| `MainActivity.java` | 3 | 嵌套类 `f` 构造器、`C.a(...)` |
| 其余 7 文件 | 9 | 单点 |

## 重要教训：`b.java` 已确认不可批量修改

本轮又试了 3 次，每次都从 8 个错误暴涨到 160~610 个：

| 尝试 | 结果 |
|---|---|
| 正则 `b\.(a|b)\(` → 全限定 | 10 → 592 |
| `b.b(` → 全限定 | 10 → 159 |
| `a(b, ...)` → `a(this.b, ...)` | 8 → 167 |

**原因**：该类 17,051 行里有几十个不同作用域的 `b`：
- 类名 `dev.duo.workspaceprobe.b`
- 局部 `boolean b`
- 局部 `FrameLayout b`
- 字段 `this.b`
- 静态方法 `b(...)`
- 嵌套类 `b.R`、`b.O`、`b.L`

任何全局替换都会命中多个语义。这 8 个错误必须**逐个按行号 + 唯一上下文**处理。

## 未完成项

| 项 | 状态 | 原因 |
|---|---|---|
| d8 出 dex | 未开始 | 需先归零 |
| 重签名替换 APK | 未开始 | 同上 |
| **装机验证** | **阻塞（第 3 轮仍阻塞）** | `adb devices` 为空；设备管理器显示 3 个 `Android ADB Interface` 状态均为 `Unknown` |

### smali 路径仍可用（对照基准）

`out/MiDuo-rebuild.apk`（3,431,594 字节）签名有效，`classes.dex` 1,360,028 字节。

## 下一轮计划

1. `b.java` 8 个错误：按行号 + 唯一上下文逐个修，每次改 1 处就编译验证
2. 剩余 30 个分散错误
3. 归零后 d8 → 替换 dex → 重签
4. 设备恢复后装机验证
