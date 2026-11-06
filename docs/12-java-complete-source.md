# 12 · 全量源码树（java-complete）交付说明

> 生成时间：2026-11-06
> 目录：`java-complete/`
> 对应 dex：`out/MiDuo-lsposed.apk` 的 `classes.dex`（精简版，1251 类）

## 1. 这是什么

`java-complete/` 是 MiDuo 1.0.415 **精简版**（已移除授权/试用、轻折分屏、旋转建议、iOS 通知中心）的完整 Java 源码树，用于二次开发时阅读与修改实现。

与旧的 `java/` 目录的区别：

| 项目 | 旧 `java/` | 新 `java-complete/` |
|---|---|---|
| 反编译来源 | 单一 jadx `--deobf` 输出 | **多反编译器择优合并** |
| 顶层类覆盖 | 120 / 120 | **120 / 120** |
| 类内部嵌套类 | 部分被 jadx 提升为独立文件 | **全部正确嵌套** |
| 反编译失败的方法 | 55 处 `Code decompiled incorrectly` | **0 处** |
| 总行数 | 73,500 | 66,011 |
| 可编译 | 否（415 个符号错误） | **部分包已通过**（见 §4） |

## 2. 关键工程发现

### 2.1 三个反编译器的实际能力对比

对同一个 `classes.dex`（精简版，1251 个类、6522 个方法）实测：

| 反编译器 | 产出文件 | 失败方法数 | 失败率 | 备注 |
|---|---|---|---|---|
| **jadx 1.5.1**（`--show-bad-code`） | 143 | 48 处标记 | 最低 | **最大类 WorkspaceHooks 完整还原 17,051 行** |
| Vineflower 1.11.1 | 1005 | 158 | 2.42% | 结构/嵌套最好，但**最大的 4 个类直接失败** |
| CFR 0.152 | 1156 | 32 | — | 能救 Vineflower 失败的类，但语法错误最多（2173 个） |

**结论：jadx 对这类 R8 混淆 + 大量 lambda 的 APK 综合最优。** 最终树 120 个顶层类**全部**来自 jadx-slim。

### 2.2 Windows 大小写不敏感是致命陷阱

APK 里存在 `dev.duo.hookprobe.b` 与 `B`、`o` 与 `O` 这类**仅大小写不同**的类名（共 17 组）。

- jadx 遇到这种冲突会**自动改名**（`o` → `C0021o`），并在源码里留注释：
  ```java
  /* renamed from: dev.duo.hookprobe.o, reason: case insensitive filesystem */
  final class C0021o {
  ```
- 如果直接把 jadx 输出写到普通 NTFS 目录，`o.java` 与 `O.java` 会**互相覆盖**，实测 `hookprobe` 从 479 个类掉到 370 个。
- **javac 本身也有这个问题**：即使文件系统允许共存，javac 仍通过大小写不敏感的路径缓存解析源文件，同一批次里只能看到其中一个。

**解决方式**（已全部落地）：

1. 输出目录启用 NTFS 目录级大小写敏感：
   ```powershell
   fsutil file setCaseSensitiveInfo <dir> enable
   ```
2. 对仍然冲突的文件**重命名文件**（不改类名，Java 允许非 public 类放在任意文件名）：
   ```
   o.java  ->  o_lower_.java
   ```
   重命名记录在 `java-complete/_renames.json`。
3. 把 jadx 的 `C0xxx` 发明名统一映射回真实短名（17 组，见 `_work/normalize3.py`）。

### 2.3 机械缺陷的批量修复

`_work/` 下的脚本，按顺序执行即可从原始反编译输出复现整棵树：

| 脚本 | 作用 | 处理量 |
|---|---|---|
| `sanitize_vf.py` | 修 Vineflower 里含 `-` 的非法标识符（`$r8$lambda$xxx-yyy`） | 411 文件 / 543 token |
| `fix_vf4.py` | `<unrepresentable>` 字段类型、静态方法归属、`new X;` 合并、裸语句 | 546 处 |
| `fix_vf6.py` | apktool `.1` 文件名歧义、enum `$VALUES` 残留 | 14 处 |
| `build_final.py` | 按优先级选源、按顶层类写文件 | 120 类 |
| `normalize3.py` | `C0xxx` → 真实短名 | 17 组 / 35 文件 |
| `fix_final_qq.py` | jadx `??` 类型推断占位符 | 16 处 |
| `fix_final_vars.py` | `for (final int i = ...; i++)` 非法修饰符 | 1 处 |
| `fix_struct.py` | 合成类 import、重复局部声明、`extends Record` | 4 文件 |
| `fix_case_files.py` | 大小写冲突文件重命名 | 17 文件 |

## 3. 已完成的手工修复

| 文件 | 问题 | 修复 |
|---|---|---|
| `io/.../HotReloadResult.java` | 原类继承 `java.lang.Record`，Java 源码不能直接继承 | 手写等价 record 语义（构造器、equals/hashCode/toString、访问器） |
| `io/.../XposedServiceHelper.java` | `XposedService.this` 在匿名类里非法；`try` 缺 `catch` | 改为捕获的 `service` 变量；补 `catch (RemoteException)` |
| `dev/duo/fold/f.java` | 枚举 `f.a` 与字段 `a`（long）冲突，`f.a.SHUT` 被解析成字段访问 | 枚举改名 `State`，全包同步 2 个文件 |
| `dev/duo/fold/Preflight.java` | 静态字段 `String[] e` 被当作 Throwable 局部变量 | 重写 `a()`，异常用独立 `cause` 局部变量 |
| `dev/duo/fold/g.java` | `close()` 里插入的 `Exception e` 与 catch 参数重名；`g.b(...)` 静态调用被当变量 | catch 参数改名；静态调用加全限定名 |
| `dev/duo/hookprobe/T.java` | `dev.duo.hookprobe.c.setPadding` 把局部变量 `c` 错误限定成类 | 还原为 `c.setPadding` |

## 4. 编译状态

**已完整通过的包**（0 错误，产出 36 个 class 文件）：

```
io.github.libxposed.service   ← 10 个源文件全部通过
```

**编译验证命令**（可复现）：

```powershell
$JAVAC = "C:\Program Files\Microsoft\jdk-17.0.20.101-hotspot\bin\javac.exe"
$CP    = "C:/Android/sdk/platforms/android-37/android.jar;tools/libxposed-api-102/classes.jar"
# 输出目录必须先启用大小写敏感，否则同名类会互相覆盖
fsutil file setCaseSensitiveInfo <outdir> enable
& $JAVAC -d <outdir> -encoding UTF-8 -cp $CP -nowarn -proc:none "@args.txt"
```

**全树当前状态**：120 个源文件，**106 个错误**。

剩余错误分布（全部是 jadx 的类型推断缺陷，需逐点人工分析）：

| 文件 | 错误数 | 典型问题 |
|---|---|---|
| `dev/duo/fold/g.java` | 20 | `e` 局部变量与 `String[] e` 字段混淆 |
| `dev/duo/fold/Preflight.java` | 15 | 同上（第二个方法 `a(SensorManager...)`） |
| `dev/duo/fold/Engine.java` | 14 | `Bundle bundle = 0;` 等 int/Object 推断错误 |
| `dev/duo/hookprobe/T.java` | 9 | 静态方法 `T.a(...)` 被当实例方法 |
| `dev/duo/hookprobe/A.java` | 7 | `ContentResolver` 被推断成 `String` |
| 其余 8 个文件 | 41 | 同类型推断/名字冲突 |

> 这些位置在 smali 里有明确答案，修法一致：**以 `apktool/smali/` 为权威，逐方法对照重写**。每处约 5–15 分钟。

## 5. 怎么用这棵树

### 只想读懂实现

直接看 `java-complete/`。命名仍是 R8 原始短名（`b`、`n`、`T`、`f`…），语义对照见 `docs/00-class-name-map.md`。

关键类：

| 类 | 行数 | 职责 |
|---|---|---|
| `dev.duo.workspaceprobe.b` | 17,051 | 主 Hook（工作台、侧栏、手势、窗口） |
| `dev.duo.taskcore.WorkspaceShell` | 3,954 | 工作台壳层与布局 |
| `dev.duo.hookprobe.MainActivity` | 4,946 | 模块设置主界面 |
| `dev.duo.hookprobe.RailCustomActivity` | 2,749 | 侧栏自定义 |
| `dev.duo.workspaceprobe.n` | 2,103 | 工作台控制器 |
| `dev.duo.fold.Engine` | 1,674 | 折叠动画引擎 |

### 要改逻辑并出包

改 `apktool/smali/`，然后 `.\build.ps1 -Install`。这条路径**已验证 100% 可重建**（见 `docs/05-rebuild-verification.md`），改 smali 比让整套 Java 编译通过更省事。

### 要让某个包完全可编译

按 §4 的错误分布，挑目标包逐点修。建议顺序：`fold` → `taskcore` → `workspaceprobe` → `hookprobe`（`icons` 与 `hookprobe` 互相依赖，最后一起编）。

## 6. 复现流水线

```powershell
# 1. 从精简版 APK 取 dex
#    （out/MiDuo-lsposed.apk 的 classes.dex，magic 为 dex\n039）
# 2. dex -> jar
d2j-dex2jar.bat -f -o miduo-dex2jar.jar classes.dex
# 3. jadx（主力）
jadx --no-res --show-bad-code -d _work/jadx-slim _work/dex/classes.dex
# 4. Vineflower（对照/救急）
java -jar vineflower.jar --decompile-generics=true --decompile-inner=true ^
     miduo-dex2jar.jar _work/vf-case
# 5. CFR（救 Vineflower 失败的大类）
java -jar cfr.jar miduo-dex2jar.jar --outputdir _work/cfr-one
# 6. 合并 + 修复（按 §2.3 表格顺序）
python _work/build_final.py      # 需要先跑 fix_vf*/sanitize 等
python _work/normalize3.py
python _work/fix_final_qq.py
python _work/fix_final_vars.py
python _work/fix_struct.py
python _work/fix_case_files.py
```

> 注意：`_work/` 未纳入 git（`.gitignore` 里 `.work/` 忽略）。脚本在 `miduo-re/_work/`，需要时从该处取。
