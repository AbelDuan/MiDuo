# 57 · 总开关检查不再拦截（第二处阻断已清）

> 时间：2026-11-07
> 需求：整体开关会做环境检查，检查完应允许直接打开，不做限制，但检查仍要做

## 问题：有两处阻断，之前只清了一处

`MainActivity.smali` 里有两个检查弹窗构建方法：

| 方法 | 行范围 | 用途 | 之前状态 |
|---|---|---|---|
| `a(Dialog, List, LinearLayout, TextView, TextView)` | L7282-7536 | **总开关**「打开前检查」 | 已清（`goto :cond_4`） |
| `a(Dialog, List, LinearLayout, **Z**, TextView, TextView, LinearLayout)` | L7538-7785 | **开合动画**检查 | **未清** |

第二个方法的参数多一个 `Z`（boolean `p4` = 总开关是否在运行）。

## 本次改动

### 1. 开合动画检查的阻断（L7650）

原逻辑：

```smali
:cond_4
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V
    if-nez p4, :cond_5                      # 总开关没运行
    const-string p1, "MiDuo \u603b\u5f00\u5173\u6ca1\u6709\u8fd0\u884c\uff0c..."
    ...                                      # 改文案 + 改按钮 + 高亮
    return-void                              # ← 直接退出，不打开
:cond_5
    ...
```

改为跳过整段：

```smali
:cond_4
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V
    goto :cond_5                             # ← 无条件走允许路径
```

> **注意**：第一次尝试把 `return-void` 改成 `goto :cond_5` 导致 `VerifyError`——因为该段里 `p2` 已被复用为 `Iterator`，跳转后寄存器类型与 `:cond_5` 处的期望不符。
> **正确做法**：改**分支条件本身**（`if-nez p4, :cond_5` → `goto :cond_5`），让整段成为不可达死代码，寄存器状态保持在 `if` 之前的正确类型。

### 2. 误导文案修正（L7653）

原文案说「暂时不能打开开合动画」，但现在已经能打开，改为：

```
MiDuo 总开关没有运行，开合动画仍会保存，但要等总开关打开后才会生效。
```

## 当前阻断清单（全部已清）

| 检查 | 阻断点 | 状态 |
|---|---|---|
| 总开关「打开前检查」 | `if-lez v2, :cond_4` | ✅ 改为 `goto :cond_4` |
| 开合动画检查（总开关未运行） | `if-nez p4, :cond_5` | ✅ 改为 `goto :cond_5` |
| 开合动画检查（有失败项） | `if-lez v1, :cond_6` | ✅ 原本就不阻断（只改文案） |

三个 `if` 后面的 `return-void` 现在都是**不可达死代码**，不影响运行。

## 仍然保留的检查

| 位置 | 内容 |
|---|---|
| 首页「诊断信息」面板 | LSPosed 连接状态/版本、作用域勾选情况、系统版本、Root、机型、小米桌面版本 |
| 点总开关时的「打开前检查」弹窗 | 七项检查（机型/Root/小米桌面/智能助理/LSPosed/LSPosed管理器/作用域），红绿状态完整展示 |
| 小功能 →「开合动画检查」 | 接口和传感器数据检查，结果完整展示 |

**检查照做，只是结果不再拦截操作。**

## 验证结果

| 场景 | 结果 |
|---|---|
| Root 检查红（App 进程 su 被 SELinux 拒）、其余正常 | ✅ 直接打开成功，显示「MiDuo 运行中」，桌面 4×6 / 外屏 9:16 生效 |
| 关闭时 | ✅ 弹「关闭 MiDuo?」确认框，点关闭后变「MiDuo 已关闭」，桌面回到「原装」 |
| 关闭后再打开 | ✅ 直接打开，无阻断弹窗 |
| 诊断信息面板 | ✅ 保留，LSPosed「已连接 · 2.2.1」、作用域已勾选、系统 OS4.0.26.0.XPNCNXM |
| 崩溃 | ✅ 无（含 VerifyError 已排除） |

## 踩坑记录

### VerifyError: register type mismatch

```
java.lang.VerifyError: Verifier rejected class dev.duo.hookprobe.MainActivity:
void ...a(Dialog, List, LinearLayout, boolean, TextView, TextView, LinearLayout)
failed to verify: [0xBB] register v9 has type Reference java.lang.Object
but expected Reference: android.app.Dialog
```

**原因**：把 `return-void` 直接改成 `goto :cond_5`，跳过了中间对 `p2` 的重新赋值。`p2` 在 L7560 从 `List` 变成了 `Iterator`，而 `:cond_5` 之后的代码期望它是别的东西，dex 校验器发现寄存器类型不一致。

**教训**：smali 里改控制流，优先改**分支条件**让代码段不可达，而不是改 `return`/`goto` 让代码段被跳过——前者不影响寄存器类型推导。

## 当前 APK

| 项 | 值 |
|---|---|
| 文件 | `out/MiDuo-rebuild.apk` |
| 大小 | 3,431,594 字节 |
| dex | `dex\n039\x00`，header 112，1251 类 |
| 装机状态 | 运行中，无崩溃 |
