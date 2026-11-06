# 17 · 第 4 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 3 轮末 | 第 4 轮末 | 变化 |
|---|---|---|---|
| javac 报错 | 38 | **6** | −32 |
| 产出 class | 56 | **78** | +22 |
| 有错误的文件数 | 15 | **3** | −12 |

累计：**314 → 6**，降幅 98%。

## 本轮完成的修复

| 修复 | 文件 | 依据 |
|---|---|---|
| `d.a(...)` → `dev.duo.hookprobe.d.a(...)`，参数补 float 转型 | a_lower_ | smali `d->a(IIFFF)[F` |
| `throw th5;` / `throw e;` → `throw new RuntimeException(...)` | **fold/h.java**（不是 hookprobe） | checked Throwable |
| `dev.duo.hookprobe.i.a(...)` → `dev.duo.fold.i.a(...)` | r.java | smali `Ldev/duo/fold/i;->a(InputStream,I)` |
| `new a(...)` → `new r.a(...)`（35 处） | r.java | smali `Ldev/duo/hookprobe/r$a;` |
| `r12` → 字面量 `2` | r.java | smali `const/4 v0, 0x2` |
| `main(String[])` 加 `throws Exception` | fold/Preflight.java | 6 个 checked 异常一次性解决 |
| `DENSITY_DEVICE_STABLE * r7` → `* 1.0f` | D.java | jadx 寄存器泄漏 |
| `new a(...)` → `new InfoWidgetProvider.a(...)`，嵌套类加 `static` | InfoWidgetProvider | 静态上下文实例化 |
| `h.this` → 捕获变量 `c0015h` | h_lower_ | 匿名类捕获的是局部 `final h c0015h` |
| `J.a(...)` → `j.a(...)` | BugCaptureService | `j` 才有该重载 |
| `16773120 - r4.length` → `16773120` | BugCaptureService | `r4` 未声明 |
| `C.a(...)` → `dev.duo.hookprobe.C.a(...)` | MainActivity | 类名限定 |

### 关键发现：`h.java` 是三个不同的类

第 3 轮我一直改 `hookprobe/h_lower_.java`，但报错实际来自：
- `dev/duo/fold/h.java`（240 行）← `throw th5;` 在这里
- `dev/duo/workspaceprobe/h.java`
- `dev/duo/hookprobe/h_lower_.java`

修好 `fold/h.java` 后 class 产出从 56 → 67，随后 `Preflight` 修好后又 → 78。

## 剩余 6 个错误

| 文件 | 错误 | 根因 |
|---|---|---|
| `T.java` | 1 | `a(Class<?>)` 与 `obj.getClass()` 返回 `Class<? extends Object>` 的类型推断 |
| `b.java` | 1 | `cVar.a(String, Throwable)` 重载（应传 `Exception`） |
| `MainActivity.java` | 1 | 嵌套类 `f` 只有一个无参构造器，但调用处 jadx 塞了 10 个参数（smali 证实真构造器是 `f(MainActivity, MainActivity$a)`） |
| `b.java` | 3 | `SurfaceControlViewHost` 构造器歧义、`boolean b` 遮蔽 `b.b(...)`（2 处） |

### `MainActivity.f` 的陷阱

smali 证据：
```smali
invoke-direct {v1, v0, v2}, Ldev/duo/hookprobe/MainActivity$f;-><init>(Ldev/duo/hookprobe/MainActivity;Ldev/duo/hookprobe/MainActivity$a;)V
```

真构造器只有 `(MainActivity, MainActivity$a)` 两个参数，而 jadx 在调用处写了 10 个。改成 `new f()` 会让 `addView` 的参数列表错位，必须连 `addView` 的实参一起重排——本轮试了一次，把第 1238 行改坏了，已回退。

## 未完成项

| 项 | 状态 | 原因 |
|---|---|---|
| d8 出 dex | 未开始 | 需先归零 |
| 重签名替换 APK | 未开始 | 同上 |
| **装机验证** | **阻塞（第 4 轮仍阻塞）** | `adb devices` 为空；`kill-server`/`start-server` 无效 |

### smali 路径仍可用（对照基准）

`out/MiDuo-rebuild.apk`（3,431,594 字节）签名有效，`classes.dex` 1,360,028 字节。

## 下一轮计划

1. 6 个错误逐个修（每个改完立即编译）
2. 归零后 d8 → 替换 dex → 重签
3. 设备恢复后装机验证
