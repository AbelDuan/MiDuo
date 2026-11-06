# 34 · 第 21 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 20 轮末 | 第 21 轮末 | 变化 |
|---|---|---|---|
| javac 报错 | 528 | **514** | **−14** |
| 产出 class | 409 | **409** | 持平 |

`n.java` 从 **73 → 59**。

## 本轮的核心发现：15 个文件有常量遮蔽

用 `Fix16` 扫描全部 121 个文件，发现 **15 个文件存在常量遮蔽同名类**：

```
e.java              SHADOW: [e]
Engine.java         SHADOW: [a, b, c, d, e, f]
b.java              SHADOW: [b, c, d]
C.java              SHADOW: [a]
d_lower_.java       SHADOW: [d]
M.java              SHADOW: [a]
MainActivity.java   SHADOW: [f, i, k]
r.java              SHADOW: [a]
RailCustomActivity  SHADOW: [a, c, d, e, j]     ← 5 个，55 个错误
T.java              SHADOW: [c, T, d, e]
TentClockActivity   SHADOW: [d, e, f]
t_lower_.java       SHADOW: [e]
u_lower_.java       SHADOW: [a]
b.java (workspace)  SHADOW: [A..Z, a..z, a0..z0]  ← 32 个
n.java              SHADOW: [n]
o.java              SHADOW: [b, c]
```

## 批量应用失败（两次）

### 尝试 1：9 个文件批量

```
errors: 528 → 541, classes: 409 → 290
```

### 尝试 2：4 个文件批量（o、C、r、M）

```
errors: 514 → 518, classes: 409 → 290
```

**失败原因**：`Fix16` 只处理文件内的 `this.<f>`，但常量改名后，**跨文件引用**（`C.a`、`M.a`）没有同步，导致其他文件报错。

## 成功：单独处理 n.java

```
SHADOW: [n]
this.<f>=0  skipNested=2
errors: 528 → 514
```

`n.java` 的根因是 `static final int n` 遮蔽类 `n`（`workspaceprobe/n.java` 是 `class n`）。改名后 73 → 59。

### 为什么 n.java 能成功而其他文件不能

`n.java` 的常量 `n` **只在文件内部使用**，没有其他文件写 `n.n` 这样的限定引用。而 `C.a`、`M.a` 有跨文件引用。

## 关键洞察：跨文件引用是批量修复的障碍

```java
// 文件 A
class C {
    static final int a = 1;    →  a_v
}

// 文件 B
int x = C.a;                   ← 必须同步改成 C.a_v
```

`Fix16` 只处理单文件，需要配套的**跨文件引用扫描器**。

## 累计进展

| 轮次 | 报错 | class | 关键 |
|---|---|---|---|
| 起点（旧 java/） | 415 | 0 | — |
| 第 1 轮 | 314 | 56 | `T.java`/`Engine` 通过 |
| 第 7 轮 | 2 | 409 | `MainActivity` 归零 |
| 第 13 轮 | 733（真实） | 409 | 打开 `d0` 闸门 |
| 第 16 轮 | 619 | 409 | 修复 AST 列偏移 bug |
| 第 19 轮 | 554 | 409 | t_lower 31→11 |
| 第 20 轮 | 528 | 409 | icons/e 42→0 |
| **第 21 轮** | **514** | **409** | 扫描出 15 个遮蔽文件，n.java 73→59 |

## 剩余 514 个错误的分布

```
179  dev/duo/workspaceprobe/b.java       ← 32 个遮蔽常量
 59  dev/duo/workspaceprobe/n.java       ← 已从 73 降低
 55  dev/duo/hookprobe/RailCustomActivity.java  ← 5 个遮蔽常量
 30  dev/duo/taskcore/WorkspaceShell.java
 25  dev/duo/hookprobe/n_lower_.java
 18  dev/duo/icons/b.java
 16  dev/duo/workspaceprobe/d.java
 16  dev/duo/icons/d.java
```

## 未完成项

| 项 | 状态 |
|---|---|
| 514 个错误（30 文件） | 逐文件处理中 |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 21 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 下一轮计划

**需要先实现跨文件引用同步器**，才能安全地批量处理那 15 个遮蔽文件：

1. 扫描所有文件，建立「类名 → 静态常量名」映射
2. 对每个常量改名后，在所有文件中查找 `<ClassName>.<constName>` 的引用并同步
3. 然后再批量应用 `Fix16`

预计这一实现能让批量处理生效，一次性清掉 100+ 个错误。
