# 49 · 第 36 轮 goal 结果

> 时间：2026-11-07
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 35 轮末 | 第 36 轮末 | 变化 |
|---|---|---|---|
| javac 批量报错 | 426 | **425** | **−1** |
| 符号解析真实错误 | 100 | **100** | 持平 |
| 非符号错误 | 8 | **5** | **−3** |
| `non-static method` | 2 | **0** | **全部消除** |
| 产出 class | 409 | **409** | 持平 |

## 本轮完成的三组修复（共 4 处）

### 1. `g.java:54` 的 `d.equals(...)` 反转（1 处）

```java
// 错误：d 是类，equals 是实例方法
dev.duo.workspaceprobe.d.equals(chain.getArg(1))

// 修复：反转调用方向
chain.getArg(1).equals(dev.duo.workspaceprobe.d)
```

**注意**：文件名容易混淆。`g.java` 有三个候选：
- `dev/duo/fold/g.java`
- `dev/duo/icons/g.java`
- `dev/duo/workspaceprobe/g.java` ← 真正的错误源

用 `SymFull` 工具打印完整路径才确认。

### 2. `b.java:6759` 的 `b.a(b.this)` 修正（1 处）

**通过 smali 找到真相**：

```smali
# Lambda139 捕获 (b, String)
59649: new-instance v1, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda139;
59651: invoke-direct {v1, p0, p1}, ...Lambda139;-><init>(Ldev/duo/workspaceprobe/b;Ljava/lang/String;)V

# Lambda139.run() 调用
invoke-static {v0, v1}, Ldev/duo/workspaceprobe/b;->$r8$lambda$LKXNDbTkkmPqTt2V7mVYSYygG7E(Ldev/duo/workspaceprobe/b;Ljava/lang/String;)V

# 该静态合成方法的实现（smali 第 1946 行）
.method public static synthetic $r8$lambda$LKXNDbTkkmPqTt2V7mVYSYygG7E(Ldev/duo/workspaceprobe/b;Ljava/lang/String;)V
    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b;->m(Ljava/lang/String;)V    ← 实例方法 m(String)
```

**结论**：lambda 实际调用 `b.this.m(str)`，jadx 误写成 `b.a(b.this)`。

```java
// 修复前
dev.duo.workspaceprobe.b.a(dev.duo.workspaceprobe.b.this);

// 修复后
dev.duo.workspaceprobe.b.this.m(str);
```

### 3. `Enum.valueOf` 与死代码（2 处）

```java
// L9486：Enum.valueOf 需要具体的枚举类，不能用原始 Enum
final Enum valueOf = Enum.valueOf(cls3, "MULTIPLE_SURFACES");
→  final Object valueOf = Enum.valueOf(cls3, "MULTIPLE_SURFACES");

// L7645：throw 之后的死代码
i3 = i5;  →  // i3 = i5;  // dead code after throw
```

## 当前 100 个真实错误的构成

```
95  cannot find symbol       ← 占 95%
 5  其他（见下表）
```

**非符号错误从 8 个降到 5 个**，距离「纯 cannot find symbol」只剩 5 个。

### 剩余 5 个非符号错误

| 位置 | 错误 | 分析 |
|---|---|---|
| L11029 | `Bundle → capture#2 of ? extends Parcelable` | 泛型 `arrayList.add(bundle2)` |
| L11235 | `no suitable method found for n(String)` | `n(String)` 方法不存在 |
| L15448 | `no suitable method found for a(ThreadLocal<Integer>,long,boolean,Set<String>)` | 方法签名不匹配 |
| L9035 | `array required, but boolean found` | 复杂表达式 |
| L9486 | `Enum.valueOf` 类型参数 | 上一步改为 Object 后仍报（行号已偏移） |

## 累计进展

| 轮次 | 批量报错 | 真实错误 | 非符号 | class |
|---|---|---|---|---|
| 起点（旧 java/） | 415 | — | — | 0 |
| 第 1 轮 | 314 | — | — | 56 |
| 第 7 轮 | 2 | — | — | 409 |
| 第 13 轮 | 733 | 902 | — | 409 |
| 第 23 轮 | 514 | 100 | — | 409 |
| 第 29 轮 | 455 | 100 | 20 | 409 |
| 第 32 轮 | 436 | 100 | 17 | 409 |
| 第 34 轮 | 432 | 100 | 16 | 409 |
| 第 35 轮 | 426 | 100 | 8 | 409 |
| **第 36 轮** | **425** | **100** | **5** | **409** |

### 小类别清零总记录

| 类别 | 清零轮次 |
|---|---|
| `cannot assign to final` | 第 24 轮 |
| `not an enclosing class` | 第 30 轮 |
| `non-static variable r1` | 第 30 轮 |
| `int cannot be dereferenced` | 第 33 轮 |
| `no suitable method b(int,Runnable,Consumer)` | 第 34 轮 |
| `incomparable types` | 第 35 轮 |
| `bad operand types` | 第 35 轮 |
| `non-static method equals/a` | 第 36 轮 |

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 的 100 个真实错误 | 95 个是 cannot find symbol |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 36 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 剩余 4 轮的评估

非符号错误只剩 5 个，可在 1 轮内清完。

之后全部是 `cannot find symbol`（95 个），无法在 3 轮内完成。

**下一轮计划**：
1. 清完剩余 5 个非符号错误
2. 开始 `cannot find symbol` 的聚类分析（用 `SymDetail` 提取符号名，按名字分组，找出可批量处理的部分）
