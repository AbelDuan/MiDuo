# `java/` 目录的编译状态与可编译化路径

## 1. 现状（实测）

用 `javac` 对 `java/` 下 166 个 `.java` 做全量编译，classpath = `android-37/android.jar` + `libxposed-api-102/classes.jar`：

| 项目 | 数值 |
|---|---|
| 编译错误总数 | **456** |
| 涉及文件 | **66 / 166**（40%） |
| 完全无错文件 | 100 / 166 |

错误类型分布（按 javac 消息归类）：

| 错误类型 | 条数 | 根因 |
|---|---|---|
| 找不到符号 | 239 | jadx 反编译失败处的残破代码 + 内联类被拆散 |
| 无法从静态上下文引用非静态 this | 35 | 内联后 lambda 被错误地放进静态方法 |
| 不兼容的类型: boolean→int 等 | 13 | jadx 类型推断错误 |
| 找不到类 R / C0143b.R | 13 | 内部类被拆分到独立文件后引用失效 |
| int 无法转换为 boolean | 10 | 同上 |
| Object 无法转换为 Entry | 7 | 泛型推断失败 |
| 其它（Bundle→CAP#1、Iterator 泛型、构造器重载歧义…） | 其余 | jadx 泛型/重载推断失败 |

> 这些错误的**位置高度集中**：`C0143b.java` 121 处、`WorkspaceShell.java` 34 处、`C0155n.java` 21 处，三者合计占 39%。

## 2. 为什么 `java/` 天然不完整

jadx 的 Java 输出是「尽力还原」，不是「等价还原」。三类损失无法靠调参消除：

1. **55 处 `Code decompiled incorrectly`**：jadx 的 SSA 重构失败，只能留指令转储提示（清单见 `docs/06-decompile-gaps.md`）。这些方法在 Java 树里**没有可用代码**。
2. **内联类拆散**：`--no-inline-methods` 能保住方法边界，但内部类（`b$R`、`C0143b$R`）会被提升成顶层文件，导致跨文件的 `b.R` 引用全部断链。
3. **lambda/record 还原失真**：`invokedynamic` 反糖化后生成的 `$r8$lambda$...`、`ExternalSyntheticLambda` 类与 `extends Record` 语法在 javac 下不合法（`HotReloadResult` 就是这一类）。

## 3. 三条可行路径

### 路径 A（推荐）：以 `apktool/smali/` 为唯一真源

`apktool/` 目录**已验证 100% 可重建**：`apktool b` 出包 3.6 MB，dex 的 `classes/methods/fields/protos/types` 与原始 APK 逐项相等（见 `docs/05-rebuild-verification.md`）。

```powershell
.\build.ps1 -Install
```

改逻辑 = 改 smali。配合 `docs/00-class-name-map.md` 把 jadx 名换回原始短名，再对照 `java/` 里同方法的可读版本理解语义，这是最省事的组合。

### 路径 B：`java/` 局部可编译化（适合大改某个子系统）

只把要改的包抽出来单独编译，不要全树编译。以 `dev.duo.fold`（12 个类、折叠动画）为例：

1. 拷出 `java/dev/duo/fold/*.java` + 它依赖的 `dev/duo/taskcore/WorkspaceProtocol.java`。
2. 逐个修 `Code decompiled incorrectly`（对照 `apktool/smali/dev/duo/fold/*.smali` 的 `llvm` 式指令，或 `jadx -m fallback` 的指令级输出）。
3. `javac` 编译成 `.class` → `d8` 成 dex → 用 apktool 的 `smali` 目录做增量替换。

> 这条路能走通的前提是：该子系统**没有**被 jadx 拆散的内部类。`dev.duo.fold` 满足，`dev.duo.workspaceprobe`（`b$R` 断链）和 `dev.duo.taskcore`（`WorkspaceShell` 34 处错误）不满足。

### 路径 C：完整 Java 工程重建（工作量大，不建议）

需要重写全部 55 处失败方法 + 重建 13 处内部类引用 + 修 35 处 lambda 上下文 + 补 239 处符号。按实测密度估算，这是**数周级**工作量，且容易引入与原版不一致的行为。

## 4. 已验证可用的编译命令

```powershell
$J  = "C:\Program Files\Microsoft\jdk-17.0.20.101-hotspot\bin"
$CP = "C:/Android/sdk/platforms/android-37/android.jar;tools/libxposed-api-102/classes.jar"

# 解出 aar 里的 classes.jar
python -c "import zipfile;z=zipfile.ZipFile(r'tools\libxposed-api-102.aar');open(r'tools\libxposed-api-102\classes.jar','wb').write(z.read('classes.jar'))"

# 只编某个包（示例：fold）
Get-ChildItem java\dev\duo\fold -Filter *.java | ForEach-Object { $_.FullName.Replace('\','/') } |
  Set-Content .work\args.txt -Encoding UTF8
& "$J\javac.exe" -d .work\out -encoding UTF-8 -cp $CP -nowarn -proc:none "@.work\args.txt"
```

## 5. 已做的修复

`java/` 里 **11 处 `?? ` 类型推断失败**（jadx 连变量类型都没定出来，直接导致语法错误）已全部修好，且都是**单行替换**，文档里的行号引用不受影响：

| 文件 | 行 | 修法 |
|---|---|---|
| `btm/.../C0014e.java` | 1227 | `?? r0` → `int r0` |
| `dev/duo/fold/C0038g.java` | 217 | `?? r6;` → `int r6;` |
| `dev/duo/fold/Preflight.java` | 257 / 260 | `?? r3;` / `?? r6;` → `int` |
| `dev/duo/hookprobe/C0112n.java` | 417 | 循环变量 `?? r15 = z` → `int r15 = 0` |
| `dev/duo/hookprobe/C0116r.java` | 198 | `?? r12` → `int r12 = (contains && contains2) ? 0 : 2` |
| `dev/duo/hookprobe/InfoWidgetProvider.java` | 201 | 循环变量 → `int r13 = 0` |
| `dev/duo/workspaceprobe/C0143b.java` | 6321 | `?? r2 = 0` → `int r2 = 0` |
| `dev/duo/workspaceprobe/C0143b.java` | 7266 | `?? r2;` → `boolean r2;` |
| `dev/duo/workspaceprobe/C0153l.java` | 91 / 99 | → `LinearLayout r2` / `LinearLayout linearLayout` |

修复后 `java/` 中 `?? ` 出现次数为 **0**。
