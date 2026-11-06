# 18 · 第 5 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 4 轮末 | 第 5 轮末 | 变化 |
|---|---|---|---|
| javac 报错 | 6 | **5** | −1 |
| 产出 class | 78 | **100** | **+22** |
| 有错误的文件数 | 3 | **3** | 持平 |

累计：**314 → 5**，降幅 98.4%；class 产出 **0 → 100**。

## 本轮完成的修复

| 修复 | 文件 | 说明 |
|---|---|---|
| `T.f.a(cls2)` 调用 + 包 try/catch | T.java | 该 helper 在嵌套类 `f` 内，且 `Method.invoke`/`Field.getInt` 抛 checked |
| 删除空 try/catch | T.java | 原 try 体为空，`ReflectiveOperationException` 永不抛出 |
| `intConsumer.accept(i)` → `iFinal` | T.java | 循环变量需 effectively-final |
| 删除 `throw th2;` 之后的死代码 | AlbumPageJob | unreachable statement |
| `a(b, ...)` → `a(bLocal, ...)` | workspaceprobe/b.java | 该方法签名是 `a(boolean,int,String,boolean,Runnable)` |

### class 产出的两次跃升

| 修复 | class 数 |
|---|---|
| 起始 | 78 |
| `T.java` 归零 | **93** |
| `AlbumPageJob` 归零 | **100** |

`T.java` 是 1470 行的 UiKit，`AlbumPageJob` 是 JobService；两者编译通过后，各自的下游类才开始产出。

### 关键发现：同名文件陷阱（第二次）

本轮又遇到一次：报错 `b.java:474`，但实际是 **`dev/duo/hookprobe/b.java`**，不是 `dev/duo/workspaceprobe/b.java`。两个 `b.java` 行号完全不同。

第 3 轮也踩过一次（`h.java` 实际是 `fold/h.java`）。

**教训**：报错路径必须看全路径，不能只看 basename。`err_one.py` 只按 basename 过滤，会误导。

## 剩余 5 个错误

| 文件 | 错误 | 根因 |
|---|---|---|
| `workspaceprobe/b.java` | 1 | `SurfaceControlViewHost` 两个构造器 `(Context,Display,IBinder)` 与 `(Context,Display,int)`，传 `null` 无法消歧 |
| `workspaceprobe/b.java` | 2 | 2584/2604 处 `boolean b` 遮蔽 `b.b(...)`，但该方法的局部 `b` 同时是 FrameLayout |
| `hookprobe/b.java` | 1 | `a(Context,int,d,C0001b)` 的 try/catch 被 jadx 破坏：第 468 行 try 体为空，导致 `z`/`trim` 可能未初始化 |
| `MainActivity.java` | 1 | 嵌套类 `f` 的构造器参数 |

### `hookprobe/b.java` 的 try/catch 损坏

jadx 输出：

```java
try {
} catch (InterruptedException e4) {      // ← 空 try
    Thread.currentThread().interrupt();
    return z;                              // z 未初始化
} catch (Exception e5) {
    Throwable th = e5;
    cVar.a("Root 失败", th);              // 需要 Exception
    dVar.a(cVar, th);
    return z;
}
```

smali 原文（`b.1.smali:2376`）显示真正逻辑：

```smali
:try_start_0
const-string v9, "id -u"
invoke-static {v9}, Ldev/duo/hookprobe/M;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v9
...
const-string v10, "0"
invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if-eqz v10, :cond_7
const/4 v9, 0x0
invoke-virtual {v6, v7, v9}, Ldev/duo/hookprobe/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V
```

需要按 smali 重建整个 `a(Context,int,d,C0001b)` 方法。本轮尝试了 `(Exception) th` 转型，反而把错误从 5 涨到 15（因为 `th` 在 `catch (Exception e5)` 里是 `Throwable`，转型后又暴露 `z` 未初始化），已回退。

## 未完成项

| 项 | 状态 | 原因 |
|---|---|---|
| d8 出 dex | 未开始 | 需先归零 |
| 重签名替换 APK | 未开始 | 同上 |
| **装机验证** | **阻塞（第 5 轮仍阻塞）** | `adb devices` 为空；`kill-server`/`start-server` 无效 |

### smali 路径仍可用（对照基准）

`out/MiDuo-rebuild.apk`（3,431,594 字节）签名有效，`classes.dex` 1,360,028 字节。

## 下一轮计划

1. 按 smali 重建 `hookprobe/b.java` 的 `a(Context,int,d,C0001b)` 方法（含 try/catch 与 `z`/`trim` 初始化）
2. 修 `workspaceprobe/b.java` 的 3 个：SurfaceControlViewHost 显式 `(IBinder) null` 消歧、2584/2604 的 `b` 语义区分
3. `MainActivity.f` 构造器：需连 `addView` 实参一起重排（smali 证实真构造器是 `f(MainActivity, MainActivity$a)`）
4. 归零后 d8 → 替换 dex → 重签
5. 设备恢复后装机验证
