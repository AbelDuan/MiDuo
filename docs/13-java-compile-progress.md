# 13 · Java 源码编译进展（第 1 轮 goal）

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 本轮突破

### T.java 与 Engine.java 已编译通过

这两个是全部 121 个文件里**最难**的类，此前一直是"编译错误被掩盖"的根源。

| 指标 | 轮次开始 | 轮次结束 |
|---|---|---|
| javac 报错 | 22（**假象**） | 314（**真实**） |
| 产出 class 文件 | 0 | **56** |
| T.java | 编译失败 | **通过** |
| Engine.java | 编译失败 | **通过** |

### 关键认知：22 个错误是假象

`T.java` 编译失败时，javac 会**跳过**所有 30 个引用 `T` 的文件的检查。所以修好 `T.java` 后，被掩盖的下游错误才暴露出来——错误数从 22 涨到 314，**这不是退步，是可见度提升**。

判断依据：修好 `Engine.java` 后，错误数从 7 涨到 16，且产出的 class 从 20 涨到 56。

### T.java 的根因与解法

`dev.duo.hookprobe.T`（UiKit，1470 行）在同一个名字空间里声明了三类东西：

```java
static final int T = 7;      // 字段 T 遮蔽了类名 T
static boolean a = false;    // 字段 a 遮蔽了方法 a(...)
static int b = 0;            // 字段 b 遮蔽了方法 b(...)
static int c = 0;
class a extends ...          // 嵌套类 a 又与字段 a 冲突
class b extends ...          // 嵌套类 b
class c extends ...          // 嵌套类 c
static void a(Activity)      // 方法 a，25 个重载
```

`T.a(...)` 被 javac 解析成"字段 a 的成员访问"，所以 25 个重载全部不可见。

**解法（三步）**：
1. 把可变静态字段 `a`/`b`/`c` 改名为 `a_v`/`b_v`/`c_v`，同步所有**值位置**引用（用"后跟标识符+声明符"的特征区分类型位置）
2. 把 `dev.duo.hookprobe.T.a(...)` 全限定形式改回 `T.a(...)`（字段已改名，不再遮蔽）
3. 把字段 `T` 改名为 `T_v`

### Engine.java 的根因与解法

| 错误 | 根因 | 修法 |
|---|---|---|
| `Engine.c.b()` → long cannot be dereferenced | 静态 long 字段 `c` 遮蔽嵌套类 `c` | 内联为 `throw new IllegalStateException("默认屏被移除")`（smali 中该方法体就是这一句） |
| `new f(bundle)` → Bundle 不能转 Engine.a | `f` 是 `private static final class f`，只有无参构造器 | 改为 `new f()` |
| 11 处 `unreported exception` | `Runnable.run()` 不能抛 checked 异常 | 包 `try { ... } catch (Exception ex) { throw new RuntimeException(ex); }` |

## 剩余 314 个错误

全部来自**下游文件**，根因已归类：

| 类型 | 数量 | 根因 | 典型位置 |
|---|---|---|---|
| `cannot find symbol` | 193 | jadx 把**局部变量**错误限定成包名 | `dev.duo.hookprobe.a.setPadding(...)` 中 `a` 是局部 `TextView` |
| `non-static method equals(...) cannot be referenced from a static context` | 38 | `dev.duo.hookprobe.e.equals(str)` 中 `e` 是局部变量 | `J.java` |
| `incompatible types` | 27 | 泛型推断失败 / `Bundle` 与 `CAP#1` | `o_lower_.java` 的 `Iterator<Map.Entry<String, ?>>` |
| `X cannot be dereferenced` | 23 | 基本类型遮蔽类名 | `T.java` 已修复，其余散落 |
| `cannot assign a value to final variable e` | 8 | catch 参数名与字段冲突 | `o_lower_.java`、`r.java` |
| 其他 | 25 | 单点问题 | — |

### 错误集中度

```
116  MainActivity.java      ← 最大头，多为 T.d 参数与局部变量遮蔽
 32  J.java
 16  G.java
 15  L.java
 14  b.java
 14  o_lower_.java
 12  BugCaptureActivity.java
 11  f_lower_.java
 10  T.java                 ← 剩余为 T.d/T.e/T.f 三向冲突
 10  AlbumWidgetProvider.java
```

## 下一轮计划

1. **`dev.duo.hookprobe.<x>.` → `<x>.` 的批量修复**（覆盖 193+38 个错误）
   - 判据：如果 `dev.duo.hookprobe.X.member` 出现在**方法体内**，且 `X` 是单小写字母，则 `X` 是局部变量
   - 注意：上一轮这个批量替换导致 0 class 产出（误伤了字段声明里的类型位置），需要先保护字段声明行
2. **`T.d`/`T.e`/`T.f` 三向冲突**（T.java 剩余 10 个）
   - 嵌套类 `d`/`e`/`f` 与静态字段 `d`/`e`/`f` 同名
   - 方案：给嵌套类加大写别名（`T.D`/`T.E`/`T.F`），只改**类型位置**
3. **泛型 `CAP#1`**（27 个）— 把 `Iterator<Map.Entry<String, ?>>` 改为 `Iterator<? extends Map.Entry<String, ?>>` 或加显式转型

## 交付状态

| 项目 | 状态 |
|---|---|
| `java-complete/` 源码 | 121 文件 / 65,925 行 / 零反编译 stub |
| javac 编译 | 314 错误，56 class 产出 |
| `out/MiDuo-rebuild.apk` | 已构建 + 已签名（smali 路径，3,431,594 字节） |
| 装机验证 | **未完成**（设备 `02040860499C3540` 已掉线，`adb devices` 为空） |
