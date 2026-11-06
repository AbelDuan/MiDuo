# 11 · 源码可读化改造报告

> 生成时间：2026-11-06
> 目标：让 `java/` 源码可以直接看懂、能定位到功能实现，供二次开发与优化。

---

## 1. 已完成的工作

### 1.1 类名语义化（74 个类）

原来 `C0041A` / `C0143b` 这类名字完全看不出用途。现已按职责重命名：

| 包 | 重命名数 | 代表 |
|---|---|---|
| `dev.duo.hookprobe` | 61 | `C0113o`→`ConfigStore`、`C0071P`→`ConfigKeys`、`C0087T`→`UiKit`、`C0112n`→`SystemServerHooks` |
| `dev.duo.workspaceprobe` | 18 | `C0143b`→**`WorkspaceHooks`**（主 Hook）、`C0155n`→`WorkbenchController` |
| `dev.duo.fold` | 9 | `C0038g`→`FoldShader`、`C0039h`→`FoldRenderer` |
| `dev.duo.icons` | 7 | `C0129e`→`IconZipCodec`、`C0131g`→`IconConst` |
| `dev.duo.taskcore` | 1 | `C0132Tx`→`WindowCropTx` |

**引用同步**：86 + 26 个文件的 `import` 与类名引用已全部更新，**0 处残留**。

### 1.2 反编译失败点处理

| 项目 | 结果 |
|---|---|
| 清理误导性注释 | 279 行 `JADX WARN` / `Code decompiled incorrectly` 已移除 |
| 全树语法检查 | **0 个语法错误**（134 文件全部通过 javac 语法解析） |
| 实质重写方法 | 4 个：`AlbumPageJob.m759a`、`FoldShader.m709b`、`Preflight.onSensorChanged`、`StandbyTrialActivity` 表盘加载、`WorkspaceShell.publishGroupFrame` |
| 逻辑残缺识别 | 66 处（空 try / 空 catch / catch 内空 if），清单见 `docs/10-source-quality-report.md` |

### 1.3 接入 REA（jadx-headless-mcp）

已部署 `jadx-headless-mcp 0.7.1`，提供 **26 个分析工具**：

| 工具 | 用途 |
|---|---|
| `get_method_body` | 取单个方法源码；**反编译失败时自动回退 smali** |
| `get_class_source` | 取整类源码 |
| `get_class_summary` | 类骨架（方法签名 + 字段，不含方法体） |
| `get_xrefs_to_method` | **方法调用点追踪**（找谁调用了它） |
| `get_xrefs_to_class` | 类引用追踪 |
| `get_xrefs_to_field` | 字段读写点追踪 |
| `search_classes_by_keyword` | 按类名/方法名/字段名/代码内容搜索 |
| `get_smali_of_class` | 整类 smali |
| `get_method_smali` | 单方法 smali |
| `resolve_class` | 模糊类名解析 |

**关键能力**：`get_method_body` 的 `fell_back=true` 模式会返回**完整 smali**，这是修复 jadx 反编译失败点的权威依据。

---

## 2. 方法体导出（31 份）

`java-method-dump/` 目录下有 31 个方法的完整源码，覆盖所有已知反编译失败点：

| 文件 | 说明 |
|---|---|
| `WorkspaceWm__dispatch.txt` | system_server 侧 Binder 分发（9.4KB） |
| `dev.duo.hookprobe.ConfigProvider_call.txt` | 配置 RPC 入口（26.7KB） |
| `dev.duo.hookprobe.u__a.txt` | Display Parcel 编解码（10.5KB） |
| `dev.duo.taskcore.WorkspaceShell_playPending.txt` | 工作台动画回放（9.2KB） |
| `dev.duo.hookprobe.MainActivity_z.txt` | 主界面方法（8.5KB） |
| 其余 26 份 | 见目录 |

> 这些文件是**直接可读的 Java**，可直接对照理解功能，或作为重写残缺方法的依据。

---

## 3. 怎么用它做二次开发

### 3.1 找某个功能在哪实现

```bash
# 1) 按关键字搜类
search_classes_by_keyword { "keyword": "rail", "scope": "class" }

# 2) 看类骨架（快速判断职责）
get_class_summary { "class_name": "dev.duo.workspaceprobe.WorkspaceHooks" }

# 3) 看具体方法
get_method_body { "class_name": "...", "method_name": "m2190K1" }
```

### 3.2 改某个行为前，先查调用链

```bash
# 谁调用了这个方法？
get_xrefs_to_method { "class_name": "...", "method_name": "..." }

# 这个字段被谁读写？
get_xrefs_to_field { "class_name": "...", "field_name": "f2301i4" }
```

这比手工 grep 可靠得多，尤其对 `WorkspaceHooks`（1.9 万行）这种巨型类。

### 3.3 遇到反编译失败的方法

```bash
get_method_body { "class_name": "...", "method_name": "...", "smali_fallback": true }
```
返回 smali，按寄存器语义重写成 Java。

---

## 4. 现状与局限（重要）

### 4.1 源码树的真实状态

| 指标 | 数值 |
|---|---|
| Java 文件 | 134 |
| 总行数 | ~73,500 |
| 语法错误 | **0** |
| 可完整编译 | **否**（415 个符号解析错误） |
| 逻辑残缺 | 66 处 |

**编译错误的主体**是跨包符号解析（`R` 类、内部类拆分、泛型推断），不是本次改造引入的。

### 4.2 为什么还不能直接编译

1. **`R` 类缺失**：`dev.duo.workspaceprobe.b.R` 这类引用指向 apktool 生成的资源 ID 类，Java 树里没有
2. **内部类被拆散**：`b$R`、`C0143b$R` 等被 jadx 提升成独立文件，跨文件引用断链
3. **泛型/lambda 还原失真**：`invokedynamic` 反糖化产物在 javac 下不合法

> 结论：**`java/` 当前适合"读"，不完全适合"编"**。要编译需先补齐上述三类问题。

### 4.3 建议的下一步

若目标是"能编译并改代码"，需要：
1. 补齐 `R` 类（从 apktool 的 `res/` 生成，或从 smali 的 `Ldev/duo/workspaceprobe/b$R;` 提取常量）
2. 合并被拆散的同名内部类
3. 逐处修复剩余 66 处逻辑残缺（用 `java-method-dump/` 的权威源码对照）

若目标是"读懂功能并做配置级/小改动"，**当前状态已够用**：类名语义化 + 31 份方法体 + REA 工具链。

---

## 5. 工具环境

| 工具 | 位置 | 用途 |
|---|---|---|
| jadx-headless-mcp | `.work/jadx-mcp.jar` | 26 个分析工具，HTTP 模式端口 18080 |
| REA 6.3.0 | `.work/rea-pkg/package/` | 编排层（依赖未装齐，直接用 MCP 更省事） |
| jadx 1.5.1 | `Freeform_repo/docs/recon/tools/lib/` | 批量反编译 |
| apktool 2.11.1 | `miduo-src/tools/apktool.jar` | 可编译工程 |

启动 MCP 服务：
```powershell
java -jar .work\jadx-mcp.jar --transport http --port 18080 --apk miduo-re\MiDuo-1.0.415.apk
```
