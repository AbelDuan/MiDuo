# 10 · 源码质量报告（反编译残缺清单）

> 生成时间：2026-11-06
> 范围：`java/` 目录全部 134 个文件

## 1. 已完成的处理

| 项目 | 结果 |
|---|---|
| 类名可读化 | 65 个 `C0xxx` 类已重命名为语义化名称（见 §3） |
| 类名引用同步 | 86 个文件的 import/引用已更新，0 处残留 |
| JADX 注释清理 | 279 行误导性 `JADX WARN` / `Code decompiled incorrectly` 注释已移除 |
| 语法检查 | **全树 0 个语法错误** |
| 已实质修复的方法 | 3 个（AlbumPageJob.m759a、FoldShader.m709b、Preflight.onSensorChanged） |

## 2. 仍存在的逻辑残缺（66 处）

这些是 jadx 反编译时**异常控制流被拆坏**的位置。语法合法，但逻辑不完整：

| 类型 | 处数 | 含义 |
|---|---|---|
| 空 try 块（原反编译失败） | 12 | empty_try |
| 空 catch 块 | 34 | empty_catch |
| catch 内空 if | 20 | catch_empty_if |

### 按文件分布

| 文件 | 残缺处数 |
|---|---|
| `dev/duo/workspaceprobe/C0143b.java` | 14 |
| `dev/duo/workspaceprobe/WorkbenchLocalApi.java` | 8 |
| `dev/duo/hookprobe/MainActivity.java` | 6 |
| `dev/duo/taskcore/WorkspaceShell.java` | 5 |
| `dev/duo/hookprobe/UiKit.java` | 3 |
| `dev/duo/icons/C0126b.java` | 3 |
| `dev/duo/hookprobe/FoldAnimPermission.java` | 2 |
| `dev/duo/hookprobe/StandbyTrialActivity.java` | 2 |
| `dev/duo/icons/C0125a.java` | 2 |
| `dev/duo/icons/C0128d.java` | 2 |
| `dev/duo/taskcore/WorkspaceSession.java` | 2 |
| `dev/duo/fold/Preflight.java` | 1 |
| `dev/duo/hookprobe/AppSettingsPanel.java` | 1 |
| `dev/duo/hookprobe/AwemeVideoHook.java` | 1 |
| `dev/duo/hookprobe/BugCaptureService.java` | 1 |
| `dev/duo/hookprobe/ConfigStore.java` | 1 |
| `dev/duo/hookprobe/Diagnostics.java` | 1 |
| `dev/duo/hookprobe/DisplayParcelCodec.java` | 1 |
| `dev/duo/hookprobe/LauncherDbWriter.java` | 1 |
| `dev/duo/hookprobe/MtzIconImportDialog.java` | 1 |
| `dev/duo/hookprobe/OuterDensityHook.java` | 1 |
| `dev/duo/hookprobe/RailCustomActivity.java` | 1 |
| `dev/duo/hookprobe/TentClockActivity.java` | 1 |
| `dev/duo/hookprobe/WidgetDataSource.java` | 1 |
| `dev/duo/icons/C0129e.java` | 1 |
| `dev/duo/icons/MainActivity.java` | 1 |
| `dev/duo/taskcore/WorkspaceWm.java` | 1 |
| `dev/duo/workspaceprobe/LauncherOverlayProbe.java` | 1 |

### 逐条清单

| 文件 | 行号 | 类型 |
|---|---|---|
| `dev/duo/fold/Preflight.java` | 138 | 空 try 块（原反编译失败） |
| `dev/duo/hookprobe/AppSettingsPanel.java` | 586 | 空 catch 块 |
| `dev/duo/hookprobe/AwemeVideoHook.java` | 139 | catch 内空 if |
| `dev/duo/hookprobe/BugCaptureService.java` | 209 | 空 try 块（原反编译失败） |
| `dev/duo/hookprobe/ConfigStore.java` | 461 | 空 try 块（原反编译失败） |
| `dev/duo/hookprobe/Diagnostics.java` | 171 | catch 内空 if |
| `dev/duo/hookprobe/DisplayParcelCodec.java` | 627 | catch 内空 if |
| `dev/duo/hookprobe/FoldAnimPermission.java` | 575 | 空 try 块（原反编译失败） |
| `dev/duo/hookprobe/FoldAnimPermission.java` | 915 | 空 try 块（原反编译失败） |
| `dev/duo/hookprobe/LauncherDbWriter.java` | 517 | 空 try 块（原反编译失败） |
| `dev/duo/hookprobe/MainActivity.java` | 2226 | 空 catch 块 |
| `dev/duo/hookprobe/MainActivity.java` | 2275 | 空 catch 块 |
| `dev/duo/hookprobe/MainActivity.java` | 2287 | 空 catch 块 |
| `dev/duo/hookprobe/MainActivity.java` | 2305 | catch 内空 if |
| `dev/duo/hookprobe/MainActivity.java` | 2344 | catch 内空 if |
| `dev/duo/hookprobe/MainActivity.java` | 4823 | 空 try 块（原反编译失败） |
| `dev/duo/hookprobe/MtzIconImportDialog.java` | 204 | 空 catch 块 |
| `dev/duo/hookprobe/OuterDensityHook.java` | 84 | 空 catch 块 |
| `dev/duo/hookprobe/RailCustomActivity.java` | 2324 | 空 catch 块 |
| `dev/duo/hookprobe/StandbyTrialActivity.java` | 99 | catch 内空 if |
| `dev/duo/hookprobe/StandbyTrialActivity.java` | 110 | catch 内空 if |
| `dev/duo/hookprobe/TentClockActivity.java` | 366 | catch 内空 if |
| `dev/duo/hookprobe/UiKit.java` | 866 | 空 try 块（原反编译失败） |
| `dev/duo/hookprobe/UiKit.java` | 894 | 空 catch 块 |
| `dev/duo/hookprobe/UiKit.java` | 904 | 空 catch 块 |
| `dev/duo/hookprobe/WidgetDataSource.java` | 149 | catch 内空 if |
| `dev/duo/icons/C0125a.java` | 73 | 空 catch 块 |
| `dev/duo/icons/C0125a.java` | 243 | 空 catch 块 |
| `dev/duo/icons/C0126b.java` | 119 | catch 内空 if |
| `dev/duo/icons/C0126b.java` | 194 | catch 内空 if |
| `dev/duo/icons/C0126b.java` | 203 | catch 内空 if |
| `dev/duo/icons/C0128d.java` | 364 | catch 内空 if |
| `dev/duo/icons/C0128d.java` | 376 | catch 内空 if |
| `dev/duo/icons/C0129e.java` | 668 | catch 内空 if |
| `dev/duo/icons/MainActivity.java` | 217 | 空 catch 块 |
| `dev/duo/taskcore/WorkspaceSession.java` | 1328 | 空 try 块（原反编译失败） |
| `dev/duo/taskcore/WorkspaceSession.java` | 1329 | catch 内空 if |
| `dev/duo/taskcore/WorkspaceShell.java` | 1829 | 空 catch 块 |
| `dev/duo/taskcore/WorkspaceShell.java` | 2797 | 空 try 块（原反编译失败） |
| `dev/duo/taskcore/WorkspaceShell.java` | 2798 | catch 内空 if |
| `dev/duo/taskcore/WorkspaceShell.java` | 2806 | catch 内空 if |
| `dev/duo/taskcore/WorkspaceShell.java` | 3059 | 空 catch 块 |
| `dev/duo/taskcore/WorkspaceWm.java` | 930 | 空 try 块（原反编译失败） |
| `dev/duo/workspaceprobe/C0143b.java` | 1799 | 空 catch 块 |
| `dev/duo/workspaceprobe/C0143b.java` | 1814 | 空 catch 块 |
| `dev/duo/workspaceprobe/C0143b.java` | 3563 | 空 catch 块 |
| `dev/duo/workspaceprobe/C0143b.java` | 7406 | catch 内空 if |
| `dev/duo/workspaceprobe/C0143b.java` | 8403 | 空 catch 块 |
| `dev/duo/workspaceprobe/C0143b.java` | 8816 | 空 catch 块 |
| `dev/duo/workspaceprobe/C0143b.java` | 9069 | catch 内空 if |
| `dev/duo/workspaceprobe/C0143b.java` | 9748 | 空 catch 块 |
| `dev/duo/workspaceprobe/C0143b.java` | 14044 | 空 catch 块 |
| `dev/duo/workspaceprobe/C0143b.java` | 14545 | 空 catch 块 |
| `dev/duo/workspaceprobe/C0143b.java` | 16123 | 空 try 块（原反编译失败） |
| `dev/duo/workspaceprobe/C0143b.java` | 17238 | 空 catch 块 |
| `dev/duo/workspaceprobe/C0143b.java` | 18957 | 空 catch 块 |
| `dev/duo/workspaceprobe/C0143b.java` | 18967 | 空 catch 块 |
| `dev/duo/workspaceprobe/LauncherOverlayProbe.java` | 45 | 空 catch 块 |
| `dev/duo/workspaceprobe/WorkbenchLocalApi.java` | 57 | 空 catch 块 |
| `dev/duo/workspaceprobe/WorkbenchLocalApi.java` | 61 | 空 catch 块 |
| `dev/duo/workspaceprobe/WorkbenchLocalApi.java` | 65 | 空 catch 块 |
| `dev/duo/workspaceprobe/WorkbenchLocalApi.java` | 69 | 空 catch 块 |
| `dev/duo/workspaceprobe/WorkbenchLocalApi.java` | 73 | 空 catch 块 |
| `dev/duo/workspaceprobe/WorkbenchLocalApi.java` | 77 | 空 catch 块 |
| `dev/duo/workspaceprobe/WorkbenchLocalApi.java` | 81 | 空 catch 块 |
| `dev/duo/workspaceprobe/WorkbenchLocalApi.java` | 85 | 空 catch 块 |

## 3. 类名映射表

| 原名 | 新名 | 职责 |
|---|---|---|
| （见 docs/00-class-name-map.md 与 §下方映射） | | |

> 完整映射由 `rename_files.py` 执行，映射表见下表。