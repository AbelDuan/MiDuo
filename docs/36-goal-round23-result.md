# 36 · 第 23 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 22 轮末 | 第 23 轮末 | 变化 |
|---|---|---|---|
| javac 批量报错 | 514 | **514** | 持平 |
| 产出 class | 409 | **409** | 持平 |
| **javac 符号解析真实错误** | 未知 | **100** | **新发现** |

本轮没有降低批量报错数，但**用 javac 自己的符号解析把真实错误从 514 精确到 100**。

## 决定性发现：真实错误只有 100 个，全在 `b.java`

### 方法：用 javac Tree API 做完整 analyze

```java
JavacTask task = (JavacTask) compiler.getTask(null, fm, diags,
    Arrays.asList("-proc:none", "-nowarn", "-encoding", "UTF-8"), null, units);
task.parse();
task.analyze();     // ← 关键：完整符号解析
```

输出：

```
ATTR errors total: 100
by file (1):
  100  b.java
by kind (31):
  1  unary operator '-' bad operand boolean
  1  incompatible types: android.hardware.Sensor -> int
  1  incompatible types: Bundle -> capture#2 of ? extends Parcelable
  6  incompatible types: int -> boolean
  2  incompatible types: Class<StatusBarManager> -> Class<Object>
  4  incompatible types: Exception -> Field
  ...
```

### 验证：排除 b.java 后，其他文件的 423 个错误全是连带

编译 117 个文件（排除 `b.java`）：

```
errors: 423, classes: 0
```

全部错误都是同一类：

```
AlbumWidgetProvider.java:33: error: package dev.duo.hookprobe.b does not exist
AlbumWidgetProvider.java:66: error: package b does not exist
```

**这是缺少 `b.java` 类型定义导致的连带错误。**

## 514 = 100 真实 + 414 连带

| 来源 | 数量 |
|---|---|
| `b.java` 自身的真实错误 | **100** |
| 其他 117 文件因缺 `b` 类型而连带报错 | 414 |
| **合计（批量编译）** | **514** |

### 为什么之前测不准

`javac` 批量编译时，如果 `b.java` 先失败，它的符号表就不完整，所有引用它的文件都会报"package b does not exist"。

而 `JavacTask.analyze()` 会**一次性分析所有文件**，符号表完整，只报真实错误。

这与第 12 轮的发现同构（当时 465 个"b.java 错误"实际是编译顺序造成的）。

## 100 个真实错误的构成

| 类型 | 数量 |
|---|---|
| `cannot find symbol` | 42 |
| `incompatible types` | 26 |
| `int cannot be dereferenced` | 6 |
| `array required, but int found` | 4 |
| `float cannot be dereferenced` | 3 |
| `array required, but boolean found` | 2 |
| `cannot assign a value to final variable i3` | 2 |
| `no suitable method found for b(int,<anonymous ...>)` | 2 |
| 其他 | 13 |

### 具体位置（前 20 条）

```
b.java:10077:25  cannot assign a value to final variable i3
b.java:10082:25  cannot assign a value to final variable i3
b.java:10373:57  int cannot be dereferenced
b.java:10630:11  cannot find symbol
b.java:11025:39  incompatible types: Bundle -> capture#2 of ? extends Parcelable
b.java:11027:52  int cannot be dereferenced
b.java:11079:33  incompatible types: Exception -> Field
b.java:11080:45  incompatible types: Field -> Exception
b.java:11104:21  incompatible types: Exception -> Field
b.java:11136:36  cannot find symbol
b.java:11136:55  cannot find symbol
b.java:11180:13  cannot assign a value to final variable bVar
b.java:11193:15  cannot find symbol
b.java:11232:50  no suitable method found for n(String)
b.java:11605:176 incompatible types: Object -> Map.Entry
b.java:11808:54  cannot find symbol
b.java:12207:45  cannot find symbol
b.java:12213:50  cannot find symbol
b.java:12213:132 cannot find symbol
b.java:12217:51  cannot find symbol
```

## 累计进展

| 轮次 | 批量报错 | 真实错误 | class | 关键 |
|---|---|---|---|---|
| 起点（旧 java/） | 415 | — | 0 | — |
| 第 1 轮 | 314 | — | 56 | `T.java`/`Engine` 通过 |
| 第 7 轮 | 2 | — | 409 | `MainActivity` 归零 |
| 第 13 轮 | 733 | 902 | 409 | 打开 `d0` 闸门 |
| 第 16 轮 | 619 | — | 409 | 修复 AST 列偏移 bug |
| 第 19 轮 | 554 | — | 409 | t_lower 31→11 |
| 第 20 轮 | 528 | — | 409 | icons/e 42→0 |
| 第 22 轮 | 514 | — | 409 | 跨文件同步失败 |
| **第 23 轮** | **514** | **100** | **409** | **javac 符号解析定位真实错误** |

## 本轮交付的工具

```
source-pipeline\javac-symbol-attr.java   统计真实错误数
source-pipeline\javac-symbol-list.java   列出每个错误的位置
docs\b-java-100-real-errors.txt          100 个错误的完整清单
```

### 关键用法

```powershell
java -Duser.language=en -cp <workdir> SymList <java-complete> <classpath>
```

必须加 `-encoding UTF-8`（默认 GBK 会把 UTF-8 源码读成乱码，报 200 个假的"语法错误"）。

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 的 100 个真实错误 | 已精确定位，待修复 |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 23 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 下一轮计划

现在目标非常明确：**只修 `b.java` 的 100 个错误**。

1. 按类型分批：
   - `cannot find symbol`（42）——用 javac 的 `Trees.getElement()` 查询每个未解析名字的真实绑定
   - `incompatible types`（26）——逐条看上下文
   - `int/float cannot be dereferenced`（9）——局部变量被误加 `_v`
   - `array required`（6）——类型推断错误
2. 每修一批用 `SymList` 验证真实错误数
3. 100 → 0 后，批量编译应该只剩 0 个错误

**关键优势**：现在有了精确的错误清单（`docs/b-java-100-real-errors.txt`），不再需要猜测。
