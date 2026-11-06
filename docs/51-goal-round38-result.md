# 51 · 第 38 轮 goal 结果

> 时间：2026-11-07
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 37 轮末 | 第 38 轮末 | 变化 |
|---|---|---|---|
| javac 批量报错 | 423 | **421** | **−2** |
| 符号解析真实错误 | 100 | **100** | 持平 |
| 非符号错误 | 4 | **1** | **−3** |
| 产出 class | 409 | **409** | 持平 |

**非符号错误只剩 1 个**——距离「纯 cannot find symbol」只差一步。

## 本轮完成的三组修复（共 4 处）

### 1. `n(String)` → `d(String)` 桥接方法（1 处）

**通过 smali 找到真相**：

```smali
# b.smali:54329 存在一个 synthetic 桥接方法
.method private synthetic n(Ljava/lang/String;)V
    .locals 0
    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b;->d(Ljava/lang/String;)V
    return-void
.end method
```

**jadx 没有把这个 synthetic 方法输出到 Java 源码**，但调用点保留了对 `n(String)` 的引用。

```java
dev.duo.workspaceprobe.b.this.n(str);   →   dev.duo.workspaceprobe.b.this.d(str);
```

### 2. `r2` → `runnableArr` 变量引用（2 处）

**根因**：lambda 引用了尚未声明的变量。

```java
// 修复前（错误顺序）
Runnable runnable = new Runnable() {
    public final void run() {
        dev.duo.workspaceprobe.b.this.a(r2, j2, z2, set);   // ← r2 是 ThreadLocal<Integer>
    }
};
final Runnable[] runnableArr = {runnable};                  // ← 声明在 lambda 之后

// 修复后（正确顺序）
final Runnable[] runnableArr = {runnable};                  // ← 移到 lambda 之前
Runnable runnable = new Runnable() {
    public final void run() {
        dev.duo.workspaceprobe.b.this.a(runnableArr, j2, z2, set);
    }
};
```

**依据**：smali 第 2027 行 `invoke-direct/range {p0 .. p5}, b;->a([Ljava/lang/Runnable;JZLjava/util/Set;)V` 显示目标方法签名是 `a(Runnable[], long, boolean, Set)`，而 Java 源码 L15458 确实有这个方法。

### 3. `ArrayList<? extends Parcelable>` 泛型（1 处）

```java
// 错误：通配符类型无法 add
ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
arrayList.add(bundle2);   // Bundle 不能赋给 ? extends Parcelable

// 修复
ArrayList<Parcelable> arrayList = new ArrayList<>();
arrayList.add(bundle2);
```

## 唯一剩余的 1 个非符号错误

```
b.java:9035:169  array required, but boolean found
```

代码：

```java
return dev.duo.hookprobe.J.a((((this.m - (((int[]) dev.duo.workspaceprobe.b.this.P5.get(
    Integer.valueOf(dev.duo.workspaceprobe.b.this.G1))) == null ? 0 : r1[1])) - ...
```

`r1[1]` 中的 `r1` 是 boolean，不是数组。这是复杂的嵌套三元表达式，jadx 严重失真。

## 累计进展

| 轮次 | 批量报错 | 真实错误 | 非符号 | class |
|---|---|---|---|---|
| 起点（旧 java/） | 415 | — | — | 0 |
| 第 1 轮 | 314 | — | — | 56 |
| 第 7 轮 | 2 | — | — | 409 |
| 第 13 轮 | 733 | 902 | — | 409 |
| 第 23 轮 | 514 | 100 | — | 409 |
| 第 29 轮 | 455 | 100 | 20 | 409 |
| 第 34 轮 | 432 | 100 | 16 | 409 |
| 第 35 轮 | 426 | 100 | 8 | 409 |
| 第 36 轮 | 425 | 100 | 5 | 409 |
| 第 37 轮 | 423 | 100 | 4 | 409 |
| **第 38 轮** | **421** | **100** | **1** | **409** |

## 本轮的关键发现：synthetic 桥接方法

**jadx 会丢弃某些 synthetic 方法**，但保留对它们的调用，导致「cannot find symbol」。

**识别方法**：在 smali 中搜索 `.method` 与调用签名匹配的定义：

```powershell
Select-String -Path "b.smali" -Pattern '\.method.*n\(Ljava/lang/String;\)V'
```

**典型模式**：

```smali
.method private synthetic n(Ljava/lang/String;)V
    .locals 0
    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b;->d(Ljava/lang/String;)V    ← 转发到真实方法
    return-void
.end method
```

**处理方式**：把调用点的 `n(...)` 改为 `d(...)`。

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 的 100 个真实错误 | 99 个是 cannot find symbol |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 38 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 剩余 2 轮的计划

**第 39 轮**：
1. 修最后 1 个非符号错误（L9035）
2. 用 `SymDetail` 做 99 个 `cannot find symbol` 的符号聚类分析
3. 输出「按符号名分组」的可批量处理清单

**第 40 轮**：
1. 批量处理聚类后的符号（如多个 `variable b`、`variable t`）
2. 完善文档，确保工作可交接
3. 最终验证 409 class / smali 路径
