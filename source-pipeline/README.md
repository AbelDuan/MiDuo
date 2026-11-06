# 源码重建流水线

从 `out/MiDuo-lsposed.apk` 的 `classes.dex` 复现 `java-complete/` 的全部脚本。

## 前置工具

| 工具 | 版本 | 用途 |
|---|---|---|
| jadx | 1.5.1 | 主力反编译器 |
| Vineflower | 1.11.1 | 结构与嵌套对照 |
| CFR | 0.152 | 救 Vineflower 失败的大类 |
| dex-tools | 2.4 | dex -> jar |
| JDK | 17 | javac 编译验证 |

## 执行顺序

```powershell
# 1. 准备 dex 与 jar
d2j-dex2jar.bat -f -o miduo-dex2jar.jar classes.dex

# 2. 三路反编译
jadx --no-res --show-bad-code -d jadx-slim classes.dex
java -jar vineflower.jar --decompile-generics=true --decompile-inner=true miduo-dex2jar.jar vf-case
java -jar cfr.jar miduo-dex2jar.jar --outputdir cfr-one

# 3. 清洗 Vineflower（仅在使用 vf 作为源时需要）
python sanitize_vf.py vf-case
python fix_vf4.py vf-case
python fix_vf6.py vf-case

# 4. 选源合并（顶层类逐个择优）
python build_final.py

# 5. 逐项修复
python normalize3.py        # C0xxx -> 真实短名
python fix_final_qq.py      # ?? 占位符
python fix_final_vars.py    # 非法 final
python fix_struct.py        # 合成类 import / 重复局部声明 / extends Record
python fix_case_files.py    # 大小写冲突重命名

# 6. 校验
python audit_stubs.py       # 应为 0
python deporder.py          # 按包依赖顺序编译
```

## 关键约束

**输出目录必须启用 NTFS 大小写敏感**，否则 `o.java` 与 `O.java` 会互相覆盖：

```powershell
fsutil file setCaseSensitiveInfo <dir> enable
```

javac 的 `-d` 输出目录同样需要，否则 `o.class` 与 `O.class` 会覆盖。

## 脚本说明

| 脚本 | 作用 |
|---|---|
| `sanitize_vf.py` | 修 Vineflower 含 `-` 的非法标识符 |
| `fix_vf3/4/6.py` | 修 `<unrepresentable>`、`new X;`、`.1` 歧义、enum 残留 |
| `build_final.py` | 按 jadx > java/ > vf > cfr 优先级为每个顶层类选源 |
| `normalize3.py` | jadx 发明名 `C0021o` → 真实名 `o` |
| `fix_final_qq.py` | jadx `??` 类型占位符 |
| `fix_final_vars.py` | `for (final int i = ...; i++)` |
| `fix_struct.py` | 合成类 import、重复局部声明、`extends Record` |
| `fix_case_files.py` | 大小写冲突文件重命名（记录到 `_renames.json`） |
| `fix_deref.py` | 基本类型遮蔽类名导致的 `cannot be dereferenced` |
| `fix_catch4.py` | catch 块内误用字段名 |
| `deporder.py` | 按包依赖顺序编译并报告 |
| `hybrid.py` | 逐类替换实验，验证 jadx 是否为最优源 |
| `audit_stubs.py` | 统计残留的反编译失败方法 |