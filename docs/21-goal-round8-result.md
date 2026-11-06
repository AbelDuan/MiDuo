# 21 · 第 8 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 7 轮末 | 第 8 轮末 | 变化 |
|---|---|---|---|
| javac 报错 | 2 | **2** | 持平 |
| 产出 class | 409 | **409** | 持平 |

本轮没有净进展，但**发现了一个关键事实**，它改变了对剩余工作的判断。

## 本轮最重要的发现：`2 个错误` 又是假象

第 7 轮末报告的"只剩 2 个错误"来自 `dev/duo/workspaceprobe/b.java`：

```java
2584: boolean b = b.b(dev.duo.workspaceprobe.b.this.i4);
2604: frameLayout.setBackground(b.b(b ? -149152738 : -134941450, 64.0f));
```

本轮做了 4 次实验，每次都试图只修这 2 行：

| 尝试 | 方案 | 结果 |
|---|---|---|
| 1 | 局部 `b` → `bFlag` + 调用点全限定 | 2 → **548** |
| 2 | 只改 3 行调用点为全限定 | 2 → **547** |
| 3 | 局部 `b` → `bLocal`（镜像 b0 的写法） | 2 → **547** |
| 4 | 新建 `Bg.java` 辅助类，绕开 `b.b` 歧义 | 2 → **547** |

**第 4 次实验最有价值**：新建一个独立类 `Bg`，在类内调用 `b.b(...)`（该文件里没有叫 `b` 的局部变量，不可能有歧义）。结果仍是 547 个错误。

这证明：**修好那 2 行后，`workspaceprobe/b.java` 自身会暴露 547 个真实错误**。

### 抽样验证

暴露出来的错误里，抽样看几条：

```java
2764:  dev.duo.workspaceprobe.b.this.m(!r2.T3);          // r2 不是 b 实例
3096:  int b = signalStrength == null ? -1 : b.b(signalStrength);   // b 遮蔽
3482:  float degrees = ... ((h.a(valueOf, o, h0Var.S) / 2.0f) ...  // float 被当对象
3536:  if (i10 >= dev.duo.workspaceprobe.k.length) {    // k 未定义
3539:  double radians = Math.toRadians(r5[i10]);         // r5 未定义
4727:  intent.putExtra("state", (boolean) r2);           // int 转 boolean
5795:  r2 = "DuoKeyguard";                              // String 赋给 int
6758:  b.a(dev.duo.workspaceprobe.b.O.this);            // O 不是内部类
12636: process = processBuilder.start();                // java.lang.Process vs android.os.Process
14600: j3 += (r1 >> w) & 255;                           // r1 未定义
16834: ofFloat.setDuration(Math.round(Math.abs(r6 - r5) * 240.0f) + 20);  // r6/r5 未定义
```

`T3` 确实是真实字段（第 388 行 `private boolean T3;`），但 `r2` 不是 `b` 实例——这说明 jadx 在这个 17,051 行的类里产生了大量寄存器名残留（`r0`/`r1`/`r2`/`r5`/`r6`/`r10`/`r42`）和类型错配。

### 结论

`dev/duo/workspaceprobe/b.java`（WorkspaceHooks，17,051 行，全项目最大的类）**需要大规模重建**，不是修 2 行能解决的。它的 2 个错误掩盖了 547 个真实错误。

这与第 1 轮的 `T.java` 情况完全相同——当时 22 个错误掩盖了 314 个。

## 剩余工作量的重新估算

| 文件 | 掩盖的真实错误数 |
|---|---|
| `workspaceprobe/b.java` | **547**（本轮实测） |
| 其余 120 文件 | 0（已全部编译通过） |

也就是说：**409 个 class 已全部产出，只剩这一个文件**。但它是个硬骨头。

### 可行的方向

1. **按 smali 重建 `d0()` 及周边方法**——本轮已确认 `d0` 的构造器结构（字段 `private final boolean b;` 与局部 `boolean b` 同名是根因），但重建后暴露的 547 个错误需要逐个处理
2. **保留 smali 路径出包**（`out/MiDuo-rebuild.apk` 已验证可用），Java 源码作为阅读/二次开发参考
3. **对 `workspaceprobe/b.java` 做混合方案**：从 `apktool/smali` 里把该类的关键方法用 smali 保真度最高的工具（Vineflower）重新反编译，替换 jadx 版本

## 未完成项

| 项 | 状态 | 原因 |
|---|---|---|
| `workspaceprobe/b.java` 归零 | 未完成 | 需处理 547 个真实错误 |
| d8 出 dex | 未开始 | 需先归零 |
| 重签名替换 APK | 未开始 | 同上 |
| **装机验证** | **阻塞（第 8 轮仍阻塞）** | `adb devices` 为空 |

### smali 路径仍可用（对照基准）

`out/MiDuo-rebuild.apk`（3,431,594 字节）签名有效，`classes.dex` 1,360,028 字节。这条路径 100% 可用，且已验证。

## 下一轮计划

1. 评估 `workspaceprobe/b.java` 的 547 个错误分类（寄存器残留 / 类型错配 / 遮蔽）
2. 优先修"寄存器残留"类（`r0`~`r42`），这类有明确模式，可批量
3. 若 547 无法在合理时间内清零，则明确告知用户：Java 路径已完成 120/121 文件，仅剩最大类；smali 路径可交付
