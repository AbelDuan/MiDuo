# 29 · 第 16 轮 goal 结果

> 时间：2026-11-06
> 目标：修复 `java-complete/` 全部编译错误 → d8 出 dex → 重签名 → 装机验证

## 结果

| 指标 | 第 15 轮末 | 第 16 轮末 | 变化 |
|---|---|---|---|
| javac 报错 | 733 | **619** | **−114** |
| 产出 class | 409 | **409** | 持平 |

**本轮恢复了进展**，突破了第 14–15 轮 AST 方案的失败。

## 关键突破：找到并修复了列偏移 bug

第 15 轮的三次 AST 尝试全部失败（733→1099、764）。本轮找到了根因：

### JavaParser Range 的语义

```java
Range r = fa.getName().getRange().get();
sb.replace(r.begin.column - 1, r.end.column - 1, newName);   // 错误
sb.replace(r.begin.column - 1, r.end.column, newName);       // 正确
```

JavaParser 的 `Range.begin.column` 和 `end.column` **都是 1-based 且 end 包含端点**。所以替换范围应是 `[begin-1, end)`。

用错误的 `end-1` 会**少替换一个字符**，导致：

```java
this.N6.b  →  this.N6.b_vb     ← 多留了一个 'b'
```

这个 bug 让所有 AST 编辑都产生了损坏，错误数反而上升。

修复后立即见效：**733 → 691**。

## 四个递进的 AST 修复器

### Fix7 —— `obj.field`（含 `this.X.field`）

```
obj.field fixed: 42
733 → 691
```

覆盖：
- `this.X.field`（X 是 enclosing class 的字段，field 属于 X 的类型）
- `X.field`（X 是 enclosing class 的字段）

### Fix8 —— 加 `this.field` 直接访问

```
A=0 B=0 C=9 total=9
691 → 682
```

新增 case C：`this.field` 且该类的字段声明是 `field_v`。

### Fix9 —— 加局部变量类型推断

```
methods with locals: 506
local=55 field=0 total=55
682 → 628
```

关键：建立 `MethodDeclaration → {变量名: 类型}` 的映射，从而解析 `r2.b`、`bVar.u` 这类**局部变量**的字段访问。

### Fix10 —— 加链式解析 `a.b.c`

```
fixed: 9
628 → 619
```

实现 `resolveType(Expression)` 递归：
- `EnclosedExpr` → 递归内部
- `CastExpr` → 取 cast 类型
- `NameExpr` → 查局部变量表 → 查字段表
- `FieldAccessExpr` → 递归 scope 类型 → 查该类型的字段表

## 累计进展

| 轮次 | 报错 | class | 关键 |
|---|---|---|---|
| 起点（旧 java/） | 415 | 0 | — |
| 第 1 轮 | 314 | 56 | `T.java`/`Engine` 通过 |
| 第 6 轮 | 4 | 224 | `f_lower_` 归零 |
| 第 7 轮 | 2 | 409 | `MainActivity` 归零 |
| 第 13 轮 | 733（真实） | 409 | 打开 `d0` 闸门，902→733 |
| 第 14–15 轮 | 733 | 409 | AST 尝试失败（列偏移 bug） |
| **第 16 轮** | **619** | **409** | **修复列偏移，四件套生效** |

## 剩余 619 个错误的构成

| 类型 | 数量 |
|---|---|
| `cannot find symbol` | 268 |
| `int cannot be dereferenced` | 101 |
| `long cannot be dereferenced` | 63 |
| `incompatible types` | 51 |
| `not an enclosing class` | 42 |
| `cannot assign a value to final variable` | 21 |
| 其他 | 73 |

### 缺失符号 Top 8

| 次数 | 符号 | 典型 |
|---|---|---|
| 58 | `variable b` | `k2.g.b = !this.I2.isEmpty();` |
| 18 | `variable th` | `Log.w(str, "...", th);` |
| 14 | `variable e` | `e = e2;` |
| 11 | `variable k` | `c0 c0Var = ((K) obj).k;` |
| 10 | `variable q` | `final h0 h0Var = it.next().q;` |
| 8 | `variable t` | `Color.luminance(k2.t >= 0 ? bVar.u(k2.t) : a)` |
| 8 | `method getProperty(String)` | `dev.duo.icons.a.getProperty(str5)` |
| 7 | `method getMessage()` | `dev.duo.icons.e.getMessage()` |

## 本轮交付的工具

```
source-pipeline\ast-fix-fieldaccess.java   Fix7   obj.field / this.X.field
source-pipeline\ast-fix-localtypes.java    Fix9   局部变量类型推断
source-pipeline\ast-fix-chained.java       Fix10  链式 a.b.c 解析
```

JavaParser jar：
```
C:\Users\Abel\hyperduo-toolchain\gradle-9.8.2\lib\javaparser-core-3.27.1.jar
```

## 未完成项

| 项 | 状态 |
|---|---|
| `b.java` 619 个错误 | AST 四件套持续收敛中 |
| d8 出 dex | 阻塞于上 |
| 重签名替换 APK | 阻塞于上 |
| **装机验证** | **阻塞 16 轮**，`adb devices` 始终为空 |

### smali 路径仍然完全可用

```
out/MiDuo-rebuild.apk   3,431,594 字节   签名有效
classes.dex             1,360,028 字节
build.ps1               改 smali 后重新打包 100% 可靠
```

## 下一轮计划

按当前收敛速度（本轮 −114），剩余 619 个错误约需 4–6 轮。

优先级：
1. **`cannot find symbol` 的 268 个**——继续扩展 AST 类型推断（`k2.g.b` 三级、方法返回值类型）
2. **`int/long cannot be dereferenced` 的 164 个**——多数是局部变量被误加 `_v`，可用 AST 精确回退
3. **`not an enclosing class` 的 42 个**——逐个确认嵌套类是否 static
4. **`incompatible types` 的 51 个**——逐条人工
