# 重建完整性校验报告

原始 APK：`MiDuo-1.0.415.apk`  
SHA-256：`062db1d5eae31a253e28fc2aca6d8183ad4b69ded7c81f3437aaf0f6c37d0659`

重建 APK：`out/MiDuo-rebuild.apk`  
SHA-256：`97c03e078c658c9f77bbeec4abdc8a3e2d1669417010ecf02daf7c0f4b4b8724`

## 1. dex 结构对比

| 指标 | 原始 | 重建 | 差异 |
|---|---|---|---|
| 类定义(class_defs) | 1437 | 1437 | +0 |
| 方法引用(method_ids) | 9894 | 9894 | +0 |
| 字段引用(field_ids) | 5707 | 5707 | +0 |
| 原型(proto_ids) | 2715 | 2715 | +0 |
| 类型(type_ids) | 2117 | 2117 | +0 |
| 字符串(string_ids) | 11926 | 11924 | -2 |
| dex 字节数 | 1563688 | 1567480 | +3792 |

**结论**：`classes / methods / fields / protos / types` 全部一致，说明 1437 个类、9894 个方法引用、5707 个字段引用一个不少。
dex 字节数与 strings 数有微小差异（+3792 字节 / -2 条字符串），来自 apktool 重新 smali 时的字符串池重排，不影响语义。

## 2. 包内条目对比

- 原始 43 条，重建 43 条
- 原始有而重建缺失：`META-INF/PROBE.RSA`, `META-INF/PROBE.SF`, `res/drawable-nodpi-v4/album_widget_preview.png`
- 重建多出：`META-INF/MIDUO.RSA`, `META-INF/MIDUO.SF`, `res/drawable-nodpi/album_widget_preview.png`

缺失的三项中，`META-INF/PROBE.RSA` / `PROBE.SF` 是原签名文件（重建后由新签名 `MIDUO.RSA/.SF` 取代）；
`res/drawable-nodpi-v4/album_widget_preview.png` 在重建包中路径变为 `res/drawable-nodpi/`（aapt2 重新规范化目录名，资源引用不变）。

## 3. libxposed 模块元数据

- `META-INF/xposed/module.prop`：重建包内 存在
- `META-INF/xposed/scope.list`：重建包内 存在
- `META-INF/xposed/java_init.list`：重建包内 存在
- `META-INF/xposed/native_init.list`：重建包内 存在

## 4. 反编译产物规模

| 产物 | 数量 |
|---|---|
| smali 类（apktool） | 1437 |
| java 文件（jadx） | 166 |
| 资源文件（res） | 27 |
| native 反汇编导出符号 | 121 |

## 5. 签名

重建包使用 `tools/miduo-rebuild.jks`（自签，alias=`miduo`），与原始 `PROBE` 签名不同。
因 `minSdkVersion=35`，apksigner 只启用 **APK Signature Scheme v3**（已验证 `Verifies`）。
若要保留原签名，需自备原始 keystore；否则装机会与原版冲突（需先卸载原版）。
