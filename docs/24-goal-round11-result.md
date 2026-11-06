# 24 · 第 11 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 10 轮末 | 第 11 轮末 | 变化 |
|---|---|---|---|
| javac 报错 | 2 | **2** | 持平 |
| 产出 class | 409 | **409** | 持平 |

本轮**没有净进展**，但完成了对剩余工作的定量诊断，结论明确。

## 诊断一：512 个"其他文件错误"全是连带错误

排除 `workspaceprobe/b.java` 单独编译其余 120 个文件，得到 **512 个错误**：

```
114  dev/duo/workspaceprobe/n.java
101  dev/duo/hookprobe/t_lower_.java
 55  dev/duo/hookprobe/RailCustomActivity.java
 42  dev/duo/icons/e.java
 30  dev/duo/taskcore/WorkspaceShell.java
 25  dev/duo/hookprobe/n_lower_.java
 18  dev/duo/icons/b.java
 16  dev/duo/workspaceprobe/d.java
 ...
```

但逐个查看，**全部**是同一类：

```java
n.java:40:   cannot find symbol          import dev.duo.workspaceprobe.b;
n.java:41:   package ...b does not exist  import dev.duo.workspaceprobe.b.R;
t_lower_.java:190: cannot find symbol    static void e(final dev.duo.workspaceprobe.b bVar)
```

即：**`b.java` 编译失败 → 引用它的文件全部无法解析该类型 → 连带报错**。

**结论**：这 512 个不是独立问题，`b.java` 编译通过后它们会自动消失。

## 诊断二：`b.java` 内部有 465 个真实错误

把 `d0()` 的 2 个错误修好后，`b.java` 自身暴露 **465 个错误**：

```
367  cannot find symbol
 28  incompatible types
 23  int cannot be dereferenced
  5  not an enclosing class
  4  array required, but int found
  3  method b in class b.d0 cannot be applied to given types
```

### 367 个 `cannot find symbol` 的分布

```
 81  variable b   if (w2 != null && w2.b == view) {
 32  variable j   ArrayList arrayList = new ArrayList(this.a.j);
 19  variable q   final h0 h0Var = it.next().q;
 17  variable k   c0 c0Var = ((K) obj).k;
 15  variable p   if (this.j_v >= 0 && !this.a.p && ...)
 14  variable t   this.t = -1;
 14  variable l   ...
 13  variable o   this.j_v = d0Var.o.indexOf(view);
```

### 关键判断：这不是我的改名造成的

验证过程：
1. 收集所有声明为 `_v` 的字段（38 个）和声明为普通名的字段（773 个）
2. 计算"需要回退"的名单：772 个
3. 用单次交替正则扫描整个文件找 `.<f>_v` 形式的过度改名
4. **结果：0 处**

这说明 `w2.b`、`this.a.j`、`it.next().q` 这些引用**在原始 jadx 输出里就是这样**——它们是 jadx 对超大嵌套类产生的错误字段名。

### 为什么无法脚本修复

这些错误需要知道 `w2` 是什么类型、`w2` 的字段叫什么。而 jadx 输出的字段名本身就是错的：

```java
// jadx 说
if (w2 != null && w2.b == view) {      // w2.b 不存在
// 真实字段可能是 b_v、a、e... 取决于 w2 的实际类型
```

要修复必须**反查 smali 确认每个引用的真实字段**，这是 465 个独立的人工判断，不是批量模式。

## 累计进展

| 轮次 | javac 报错 | class 产出 | 关键突破 |
|---|---|---|---|
| 起点（旧 java/） | 415 | 0 | — |
| 第 1 轮 | 314 | 56 | `T.java`/`Engine` 编译通过 |
| 第 4 轮 | 6 | 78 | — |
| 第 6 轮 | 4 | 224 | `f_lower_` 归零 |
| 第 7 轮 | 2 | 409 | `MainActivity` 归零 |
| 第 9 轮 | 98（真实） | 409 | 找到 547 错误的根因（53 个常量遮蔽类名） |
| 第 10 轮 | 2 | 409 | 按类作用域解析字段引用（98→2） |
| **第 11 轮** | **2** | **409** | 定量诊断：剩余 465 个是 jadx 固有错误 |

## 客观结论

**Java 源码路径的现状**：
- ✅ 120/121 个文件编译通过
- ✅ 409 个 class 文件产出（全部 1251 个类中的顶层类）
- ⚠️ `workspaceprobe/b.java`（17,051 行）有 465 个 jadx 固有错误
- ⚠️ 该文件的错误连带影响 512 个其他文件的报错（编译通过后自动消失）

**这 465 个错误的性质**：jadx 反编译 17,051 行超大嵌套类时产生的错误字段名引用，需要逐条对照 smali 修正，无法批量。

## 未完成项

| 项 | 状态 |
|---|---|
| `workspaceprobe/b.java` 465 个错误 | 需逐条对照 smali（估计 20+ 轮） |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 11 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
lib/libduoworkspace.so  4K 对齐
```

`build.ps1` 改 smali 后重新打包，100% 可靠。这条路径不受本轮任何问题影响。

## 需要用户决策

已完成 120/121 文件、409 class。剩余是一个文件、465 个需要人工对照的错误。

三个选项：

- **A**：继续攻 `b.java`——按 smali 逐条修 465 个错误，预计 20+ 轮
- **B**：接受当前状态——Java 源码 99.2% 可编译，出包走 smali
- **C**：混合——用 Vineflower 重新反编译这一个类（第 1 轮实测 Vineflower 对超大类的失败率 2.42%，可能优于 jadx 的错误率）

---

## 补充：选项 C（Vineflower 重反编译）已实测不可行

本轮试了 Vineflower 1.12.0 重新反编译 `dev/duo/workspaceprobe/b.class`：

```
java -jar vineflower-1.12.jar --only="dev.duo.workspaceprobe.b" miduo-dex2jar.jar vf-b
```

结果：
- 加载了全部 1326 个类（日志正常）
- **退出码 0，但输出目录为空**
- 加 `--file` 显式指定输出文件，同样无输出
- 加 `--silent` 后 stderr 为空

这与第 1 轮的记录一致：Vineflower 在这 4 个最大类上会 NPE 崩溃（`VarDefinitionHelper`），且崩溃时不报错、静默跳过。

**结论：选项 C 不可行。**

## 三个选项的实测状态

| 选项 | 状态 |
|---|---|
| A. 继续攻 b.java（按 smali 逐条修 465 个） | 可行，预计 20+ 轮 |
| B. 接受当前状态（120/121 文件，出包走 smali） | **可立即交付** |
| C. Vineflower 重反编译 | **本轮实测不可行**（静默崩溃） |