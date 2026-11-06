# 38 · 第 25 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 24 轮末 | 第 25 轮末 | 变化 |
|---|---|---|---|
| javac 批量报错 | 486 | **482** | **−4** |
| 产出 class | 409 | **409** | 持平 |
| 符号解析真实错误 | 100 | **100** | 持平（分层守恒） |

## 本轮完成的修复

### 1. `r0_v.x` / `r0_v.y` → 补回丢失的局部变量（L8707-8708）

jadx 丢失了 `getRealSize` 的接收变量：

```java
// 错误（r0 未声明，r0_v 是第 252 行的常量）
((DisplayManager) ...).getDisplay(0).getRealSize(new Point());
return new float[]{r0_v.x, r0_v.y, ...};

// 修复
Point r0 = new Point();
((DisplayManager) ...).getDisplay(0).getRealSize(r0);
return new float[]{r0.x, r0.y, ...};
```

### 2. `h0` 类的 `float h` 字段遮蔽类 `h`（L3348）

`h0`（第 3331 行 `static final class h0 extends View`）有一个实例字段：

```java
private static final float h = 149.0f;   →   private static final float h_v = 149.0f;
```

这遮蔽了同包的类 `h`，导致 `h.a(...)` 被解析成「对 float 的成员访问」：

```
L3482:85  float cannot be dereferenced
L3685:46  float cannot be dereferenced
L3825:14  float cannot be dereferenced
```

改名后 3 个错误全部消失。

### 3. `h0` 类内的裸 `h` 引用（L3476）

```java
float f7 = z5 ? j_v : h;   →   float f7 = z5 ? j_v : h_v;
```

## 关键观察：错误总数分层守恒

对比修复前后的差异：

```
消失的（3 个）：
  L3482:85 float cannot be dereferenced
  L3685:46 float cannot be dereferenced
  L3825:14 float cannot be dereferenced

新增的（3 个）：
  L3476:35 cannot find symbol          ← h0 内的裸 h（已修）
  L14291:119 cannot find symbol        ← r2.b（待修）
  L14291:167 cannot find symbol        ← r2.b（待修）
```

修掉 L3476 后，L14291 的两处浮现。**100 这个数字是分层的上限，不是总数**。

## 当前 100 个错误的构成

```
49  cannot find symbol
27  incompatible types
 4  array required, but int found
 3  incomparable types
 2  not an enclosing class
 2  no suitable method found for b(int,<anonymous ...>)
 2  int cannot be dereferenced
 2  array required, but boolean found
```

### 剩余 `int cannot be dereferenced`

```
L13350:24  long a2 = a.a(i2);                    ← a 被遮蔽
L13473:27  a.b a2 = a.a(call != null, ...);       ← a 被遮蔽
```

第 219 行 `private static final int a = -789517;` 遮蔽了类 `a`。但 `a` 在文件中有大量 `this.a` 实例字段引用，需要精确区分。

## 累计进展

| 轮次 | 批量报错 | 真实错误 | class |
|---|---|---|---|
| 起点（旧 java/） | 415 | — | 0 |
| 第 1 轮 | 314 | — | 56 |
| 第 7 轮 | 2 | — | 409 |
| 第 13 轮 | 733 | 902 | 409 |
| 第 20 轮 | 528 | — | 409 |
| 第 23 轮 | 514 | 100 | 409 |
| 第 24 轮 | 486 | 100 | 409 |
| **第 25 轮** | **482** | **100** | **409** |

## 方法论验证

本轮的修复模式已固化：

1. **用 `SymList` 拿精确错误清单**（javac Tree API + `-encoding UTF-8`）
2. **按行号+列号定位**到具体表达式
3. **判断遮蔽源**：
   - 顶层类的静态常量 → 改常量
   - 嵌套类的实例字段 → 改字段（**且只在该类范围内改 `this.<f>`**）
   - `import` 冲突 → 加全限定名
4. **修完立刻用 `SymList` 验证**，避免连锁破坏
5. **接受总数守恒**：修好上层会暴露下层，这是正常的

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 的 100 个真实错误 | 本轮修 3 类，剩余分层暴露 |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 25 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 下一轮计划

1. **`a` 遮蔽**（L13350、L13473）——需精确区分类访问与实例字段
2. **`r2.b`**（L14291）——`r2` 的类型推断
3. **`cannot find symbol` 的 49 个**——逐个用 `SymDetail` 提取符号名
4. **`incompatible types` 的 27 个**——逐条看上下文
