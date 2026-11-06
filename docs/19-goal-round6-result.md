# 19 · 第 6 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 5 轮末 | 第 6 轮末 | 变化 |
|---|---|---|---|
| javac 报错 | 5 | **4** | −1 |
| 产出 class | 100 | **224** | **+124** |
| 有错误的文件数 | 3 | **3** | 持平 |

累计：**314 → 4**（降幅 98.7%）；class 产出 **0 → 224**。

## class 产出的四次跃升

| 修复 | class 数 |
|---|---|
| 起始 | 100 |
| `hookprobe/b.java` 方法重建 | **105** |
| `BugCaptureActivity` 两个方法重建 | **116** |
| `BugCaptureService.a()` 重建 | **133** |
| `ConfigProvider` 归零 | **135** |
| **`f_lower_.java` 归零** | **224** ← 最大跃升 |
| `D.java` 归零 | **145**（中间态） |
| `G.java` 修复 | **224** |

`f_lower_.java`（UI 工具类）编译通过后一次性释放 79 个下游类，是本轮最大突破。

## 本轮完成的修复

| 修复 | 文件 | 依据 |
|---|---|---|
| `a(Context,int,d,C0001b)` 按 smali 重建 | hookprobe/b.java | `b.1.smali:2376` 的 try/catch 结构与 catch_0..catch_3 处理器 |
| 两个 `a(...)` 方法重建（`str` 参数被赋值、局部未初始化） | BugCaptureActivity | 把 final 参数改为可变局部 `msg` |
| `a()` 按 smali 重建（嵌套 try 全空） | BugCaptureService | `BugCaptureService.smali:133` 的 try_start_0..2 / catchall |
| 删除空 try/catch、不可达代码、初始化 `bundle2` | ConfigProvider | JSONObject.toString() 不抛 JSONException |
| `final boolean z` → `boolean z` + `zFinal` 副本 | D.java | 匿名类需 effectively-final |
| 14 处 `G.a(...)` 调用包 try/catch | G.java | 方法声明 `throws Throwable` |
| `spFinal` → `spCap` 最终副本 | G.java | 匿名类捕获可变局部 |
| `iFinal` 循环变量副本 | f_lower_.java | 匿名类捕获循环变量 |
| `(IBinder) null` 消歧 | workspaceprobe/b.java | `SurfaceControlViewHost` 两个构造器 |

### 反复出现的技术模式

本轮修复的 9 个文件里，**6 个是同一类问题**：jadx 把 try/catch 结构拆坏了。

| 症状 | 真因 |
|---|---|
| 空 `try {}` + catch 在别处 | smali 的 try 范围跨越整个方法体 |
| `variable X might not have been initialized` | 变量在 try 内赋值，catch 分支未赋值 |
| `unreachable statement` | catch 处理器里的代码被 jadx 搬到了 `throw` 之后 |
| `exception Y is never thrown` | 空 try 导致 catch 无意义 |
| `local variables ... must be final` | 匿名类捕获了可变局部 |

**统一解法**：查 smali 的 `:try_start_*` / `:try_end_*` / `.catch` 指令，按真实范围重建方法体。

## 剩余 4 个错误

| 文件 | 错误 | 根因 |
|---|---|---|
| `workspaceprobe/b.java:2584/2604` | 2 | `d0()` 构造器里 `boolean b` 遮蔽静态方法 `b(...)`；该方法的局部 `b` 同时是 FrameLayout |
| `hookprobe/G.java:676` | 1 | `i3 = i4;` 不可达 |
| `MainActivity.java:1233` | 1 | 嵌套类 `f` 构造器：smali 证实真构造器是 `f(MainActivity, MainActivity$a)`，jadx 塞了 10 个参数 |

### `MainActivity.f` 的难点

```smali
invoke-direct {v1, v0, v2}, Ldev/duo/hookprobe/MainActivity$f;-><init>(Ldev/duo/hookprobe/MainActivity;Ldev/duo/hookprobe/MainActivity$a;)V
```

真构造器 2 个参数（隐式 outer + 一个合成参数），jadx 在调用处写了 10 个。改成 `new f()` 会让 `addView` 实参错位——第 5 轮试过一次，把第 1238 行改坏了。

需要把整个 `addView(new f(...), 0, ..., new Runnable(){...}).e, new FrameLayout.LayoutParams(-1,-1))` 语句一起重排。

## 未完成项

| 项 | 状态 | 原因 |
|---|---|---|
| d8 出 dex | 未开始 | 需先归零 |
| 重签名替换 APK | 未开始 | 同上 |
| **装机验证** | **阻塞（第 6 轮仍阻塞）** | `adb devices` 为空 |

### smali 路径仍可用（对照基准）

`out/MiDuo-rebuild.apk`（3,431,594 字节）签名有效，`classes.dex` 1,360,028 字节。

## 下一轮计划

1. 修 `workspaceprobe/b.java` 的 2 个（`d0()` 构造器的 `b` 语义）
2. 修 `G.java:676` 不可达、`MainActivity.f` 构造器
3. 归零后 d8 → 替换 dex → 重签
4. 设备恢复后装机验证
