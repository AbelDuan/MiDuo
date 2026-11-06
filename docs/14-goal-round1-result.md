# 14 · 第 1 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 轮次开始 | 轮次结束 | 变化 |
|---|---|---|---|
| javac 报错 | 22（假象） | **117**（真实） | 见下说明 |
| 产出 class | 0 | 0 | — |
| 已编译通过的关键类 | — | **T.java（UiKit）、Engine.java（折叠引擎）、Surfaces.java** | +3 |

### 为什么"错误数变多"是进步

轮次开始的 22 个错误是**假象**。`T.java`（1470 行，UiKit）编译失败时，javac 会跳过全部 30 个引用 `T` 的文件的检查，只报 `T.java` 自身的问题。

把 `T.java` 和 `Engine.java` 修到真正通过后，被掩盖的下游错误才暴露：错误数从 22 涨到 314，随后逐轮收敛到 **117**。

判断依据：`Engine.java` 修好后错误数 7→16，但 class 产出 20→56，两者同时上升才是真实进展。

## 本轮完成的修复

### 1. T.java（UiKit）—— 三类名字冲突

该类在同一个名字空间里声明了字段、方法、嵌套类，三者同名：

```java
static final int T = 7;       // 字段 T 遮蔽类名 T
static boolean a = false;     // 字段 a 遮蔽方法 a(...)（25 个重载）
static int b = 0;             // 字段 b 遮蔽方法 b(...) 与嵌套类 b
static int f = 0;             // 字段 f 遮蔽嵌套类 f
static class a extends ...    // 嵌套类 a 又与字段 a 冲突
```

`T.a(...)` 因此被 javac 解析成"字段 a 的成员访问"，25 个重载全部不可见。

**解法**：
1. 可变静态字段改名：`a`→`a_v`、`b`→`b_v`、`c`→`c_v`、`f`→`f_v`、`T`→`T_v`
2. 嵌套类 `a` 改名 `RowAdapter`（连带构造器与实例化）
3. 值位置引用同步改名；类型位置（`T.d x`、`T.e x`）保持不变
4. `T.a(...)` 统一写成 `dev.duo.hookprobe.T.a(...)` 以绕开同名嵌套类

### 2. Engine.java —— 字段遮蔽 + checked exception

| 错误 | 修法 |
|---|---|
| `Engine.c.b()` long cannot be dereferenced | 静态 long 字段 `c` 遮蔽嵌套类 `c`；内联为 `throw new IllegalStateException("默认屏被移除")`（smali 中方法体即此句） |
| `new f(bundle)` Bundle→Engine.a | `f` 是 `private static final class f`，只有无参构造器；改 `new f()` |
| 11 处 `unreported exception` | `Runnable.run()` 不能抛 checked；包 `try { ... } catch (Exception ex) { throw new RuntimeException(ex); }` |

### 3. 全树批量修复

| 修复 | 覆盖 | 效果 |
|---|---|---|
| `dev.duo.hookprobe.<小写>.` → `<小写>.` | 36 文件 | 238→132（jadx 把局部变量误当包名） |
| `th = th2;` → `throw th2;` | 14 文件 | 消除 jadx 残留 |
| `new X$$ExternalSyntheticLambdaN(...)` → 匿名 Runnable | 7 文件 | 补上被 jadx 内联掉的合成类 |
| `Iterator<Entry<String,?>>` → `Iterator<? extends ...>` | 2 文件 | 泛型 CAP#1 |
| `java.lang.Process` vs `android.os.Process` | MainActivity | 类型冲突 |
| `final int top` 被重新赋值 | MainActivity | 去掉多余 final |
| 字段 `J`（SeekBar）遮蔽类 `J` | MainActivity | 116→40 |
| catch 变量 `e` 与字段 `e` 冲突 | 4 文件 | 引入 `ex` 局部变量 |

## 剩余 117 个错误

| 文件 | 错误 | 主要问题 |
|---|---|---|
| `MainActivity.java` | 24 | 嵌套类构造器参数不匹配、`L.c()` 方法缺失、`boolean cannot be dereferenced` |
| `T.java` | 15 | `a(Class)` 重载歧义、剩余裸字段引用 |
| `b.java` | 12 | `ex` 未声明、`Exception` 与 `String` 互转 |
| `AlbumWidgetProvider.java` | 8 | 泛型/类型推断 |
| `o_lower_.java` | 8 | 同上 |
| `h_lower_.java` | 8 | 匿名类里的 `h.this` |
| 其余 13 文件 | 42 | 单点问题 |

### 错误类型分布

```
58  cannot find symbol
12  int cannot be dereferenced
 9  boolean cannot be dereferenced
 8  cannot assign a value to final variable e
 4  non-static variable e cannot be referenced from a static context
 4  incompatible types: Iterator<Entry<String,CAP#1>> ...
 4  non-static variable this cannot be referenced from a static context
```

## 未完成项

| 项 | 状态 | 原因 |
|---|---|---|
| d8 出 dex | 未开始 | 需先 0 错误 |
| 重签名替换 APK | 未开始 | 同上 |
| **装机验证** | **阻塞** | `adb devices` 为空，设备 `02040860499C3540` 已掉线 |

### smali 路径仍然可用（对照基准保留）

`out/MiDuo-rebuild.apk`（3,431,594 字节）已构建并通过签名验证（`CN=MiDuo Rebuild`），`classes.dex` 1,360,028 字节，`libduoworkspace.so` 4K 对齐。

```powershell
.\build.ps1          # 改 smali 后重新打包，100% 可靠
```

## 下一轮计划

1. 逐个修 `MainActivity`（24）、`T.java`（15）、`b.java`（12）——这三者占 51/117
2. `ex` 声明插入要按方法作用域精确判断，上一轮盲插导致 117→124 反弹
3. 归零后：`d8 java-complete → classes.dex`，替换进 `MiDuo-lsposed.apk`，`apksigner` 重签
4. 设备恢复后 `adb push` + `su -c pm install -r -d` 装机验证
