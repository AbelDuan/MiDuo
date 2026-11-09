# rebuild —— 1.0.437 可读可编译工程

`rebuild/` 是 1.0.437 的反编译工程，**`taskcore` 已还原为真实类名**，可直接用 apktool 编译、可直接改代码。

## 为什么需要这个

原始反编译（`versions/1.0.437/smali/`）里 `taskcore` 全是混淆名：

```
g.smali    ← WorkspaceHost
j.smali    ← WorkspaceShell
i.smali    ← WorkspaceSession
k.smali    ← WorkspaceWm
```

看代码时无法判断 `g` 是什么，改代码更无从下手。本目录已把它们还原成真实名。

## 还原方法：字典序 1:1 对齐

1.0.415 的 `taskcore` 保留真实类名，1.0.437 用 R8 混淆。两版都是 **45 个类**，且 R8 按**字典序**分配短名，因此可以按排序后序号一一对齐：

```
415（排序后）              437（排序后）
1  Frames                  a
2  Frames$Driver           a$a
3  Frames$Scheduler        a$b
4  Geometry                b
5  SystemGate              c
6  TaskBinding             d
...
12 WorkspaceHost           g
...
45 WorkspaceWm$Source      k$c
```

**验证依据**：对齐后逐项检查父子关系，45 个类的 `.super` / 内部类归属**全部一致**（无一例外）。这比任何模糊指纹匹配都可靠。

映射表：`versions/1.0.437/taskcore-map-lexicographic.json`

## 已还原的内容

| 项目 | 状态 |
|---|---|
| `taskcore` 45 个类名 | **已还原**（`WorkspaceHost`、`WorkspaceShell` 等） |
| 全工程类型引用（240 个文件） | **已同步替换** |
| `InnerClass` 注记（26 处） | **已修正** |
| `taskcore` 方法名 | **保持混淆**（见下） |
| `taskcore` 字段名 | **保持混淆**（见下） |
| `workspaceprobe` / `hookprobe` | **未改动**（两版类名基本一致，无需还原） |

### 为什么不还原方法名和字段名

尝试过，**不可靠**，因此放弃：

- 对 `WorkspaceHost` 的 90 个方法做匹配，最高分仅 68，**强匹配 0 个**。
- 原因：437 有 118 个方法（比 415 多 28 个），且 R8 做了内联/重排，方法体特征已变形。
- `access$XXX` 这类合成访问器有 40+ 个，方法体几乎相同（都是 `iget` + `return`），无法区分。
- 强行匹配错配会让代码更难读，风险大于收益。

**实际影响有限**：类名还原后，改代码时看方法体逻辑即可判断用途。字段名混淆只影响可读性，不影响修改。

## 编译

```powershell
java -jar miduo-src\tools\apktool.jar b miduo-src\versions\1.0.437\rebuild -o out\MiDuo-437-deobf.apk
```

已验证通过，产物 3,077,809 字节（原始 APK 3,054,784 字节，差值来自类名字符串变长）。

> 注意：直接编译出的 APK **未签名**，安装前需签名。
> 另外原始 437 是 `dev.duo.hookprobe` 包名，若要和官方版共存需改包名（参考 415 工程的做法）。

## 改代码时怎么找位置

### 找类

查下表或 `versions/1.0.437/taskcore-map-lexicographic.json`：

| 真实类名 | 职责 | 437 中的方法数（415 对照） |
|---|---|---|
| `WorkspaceHost` | 工作台宿主：Overlay View、成员项管理、触摸、无障碍 | 118（90） |
| `WorkspaceShell` | 工作台外壳：任务捕获、转场、拖拽、RecentTasks | 241（152） |
| `WorkspaceSession` | 会话与状态机 | 135（100） |
| `WorkspaceWm` | 窗口管理：SurfaceControl、Task 绑定 | 58（40） |
| `WorkspaceProtocol` | 与 SystemUI 的 IPC 协议 | 7（8） |
| `SystemGate` | 系统门控 | 8（8） |
| `Geometry` | 几何计算 | 7（4） |
| `Frames` | 帧驱动/调度 | 6（6） |
| `TaskBinding` | 任务绑定与租约 | 3（3） |
| `Tx` | 事务封装 | 3（4） |
| `VirtualFocus` | 虚拟焦点 | 5（5） |

### 找功能

用 grep 搜日志字符串（437 的日志文本全部保留）：

```powershell
# 工作台相关
Select-String -Path rebuild\smali\dev\duo\taskcore\*.smali -Pattern 'TaskCoreShell'
Select-String -Path rebuild\smali\dev\duo\taskcore\*.smali -Pattern 'floating window'
Select-String -Path rebuild\smali\dev\duo\taskcore\*.smali -Pattern 'TaskView redirect'

# rail / dock（主类 b.smali 两版同名）
Select-String -Path rebuild\smali\dev\duo\workspaceprobe\b.smali -Pattern 'Workbench rail'
```

### rail / dock 的位置

`workspaceprobe/b.smali` 两版同名，可直接与 415 工程的 `apktool/smali/dev/duo/workspaceprobe/b.smali` 对比：

- 437: 66,557 行 / 1,604,525 字节
- 415: 65,280 行 / 1,576,771 字节

## 与 415 工程的关系

| | 415 工程（`miduo-src/apktool/`） | 437 rebuild（本目录） |
|---|---|---|
| 基线版本 | 1.0.415 | 1.0.437 |
| 包名 | `com.lsposed.miduo`（已改，可共存） | `dev.duo.hookprobe`（原始） |
| 已移除功能 | 授权/iOS通知中心/轻折分屏/旋转按钮（手工删） | iOS通知中心官方已删，其余仍需自行处理 |
| 自定义补丁 | rail 可见性、scene 判定等 | 无 |
| taskcore 类名 | 真实名 | 真实名（本目录已还原） |
| 构建脚本 | `build.ps1`（6 步，含 dex 魔数修正） | 仅 apktool（可直接编） |

**建议**：改 437 新功能时在 `rebuild/` 里做；维护既有补丁时在 415 工程里做。两者最后需要合并时，按 `docs/63` 的移植优先级处理。

## 重新生成

若 `rebuild/` 被破坏，可从 `versions/1.0.437/smali/` 重建：

1. 复制 `smali/dev/duo` 到新目录（含 `apktool.yml`、`res/`、`AndroidManifest.xml`）
2. 载入 `taskcore-map-lexicographic.json`（437 混淆名 → 415 真实名）
3. 正则替换所有 `Ldev/duo/taskcore/<短名>;` → `Ldev/duo/taskcore/<真实名>;`
4. 重命名 45 个 `.smali` 文件
5. 修正 `InnerClass` 注记
6. `apktool b` 验证

脚本逻辑见 `_work/deobf2.py`（会话工作目录）。
