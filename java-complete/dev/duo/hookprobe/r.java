package dev.duo.hookprobe;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Process;
import dev.duo.fold.i;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class r {
    static final int a = 0;
    static final int b = 1;
    static final int c = 2;
    private static final String f = "local:4639175402683733248";
    private static final String g = "local:4639175068132267009";
    private static final String h = "/data/adb/lspd/config/modules_config.db";
    private static final String i = "需要 Root 才能检查";
    private static final String k = "：桌面开合有动画，App 里开合没有动画。";
    private static final String[] d = {"system", "com.android.systemui", "com.miui.home", "com.miui.personalassistant"};
    private static final String[] e = {"系统框架", "系统界面", "小米桌面", "智能助理"};
    private static final String j = "/data/system/theme_magic/users/" + (Process.myUid() / 100000) + "/wallpaper/data/";

    static final class a {
        final String a;
        final String b;
        final int c;

        a(String str, int i, String str2) {
            this.a = str;
            this.c = i;
            this.b = str2;
        }
    }

    r() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0276  */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v15, types: [int] */
    /* JADX WARN: Type inference failed for: r12v16 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static List<a> a(Context context, o c0021o, boolean z, boolean z2, Set<String> set, String str, String str2) {
        int i2;
        String str3;
        String str4;
        String str5;
        String a2;
        a aVar;
        boolean contains;
        boolean contains2;
        String str6;
        ArrayList arrayList = new ArrayList();
        String a3 = v.a(context);
        int i3 = a3 == null ? 0 : 2;
        if (a3 == null) {
            a3 = "与适配版本一致";
        }
        arrayList.add(new r.a("系统与小米桌面版本", i3, a3));
        boolean equals = "未安装".equals(str2);
        arrayList.add(new r.a("智能助理", !equals ? 0 : 2, !equals ? str2 + "；不限定版本号" : "未安装，请先安装智能助理"));
        if (c0021o == null) {
            arrayList.add(new r.a("LSPosed", 2, "未连接，请在 LSPosed 中启用 MiDuo"));
            i2 = 0;
        } else if (str != null) {
            arrayList.add(new r.a("LSPosed 作用域", 2, "读取失败（" + str + "）"));
            i2 = 0;
        } else {
            ArrayList arrayList2 = new ArrayList();
            int i4 = 0;
            while (true) {
                String[] strArr = d;
                if (i4 >= strArr.length) {
                    break;
                }
                if (!set.contains(strArr[i4])) {
                    arrayList2.add(e[i4]);
                }
                i4++;
            }
            int i5 = arrayList2.isEmpty() ? 0 : 2;
            if (arrayList2.isEmpty()) {
                str3 = "系统框架、系统界面、小米桌面、智能助理都已勾选";
                i2 = 0;
            } else {
                i2 = 0;
                str3 = "缺少" + String.join("、", arrayList2) + "，可在首页诊断信息里补齐";
            }
            arrayList.add(new r.a("LSPosed 作用域", i5, str3));
        }
        int i6 = (c0021o != null && c0021o.m() && z && z2) ? 1 : i2;
        arrayList.add(new r.a("MiDuo 总开关", i6 != 0 ? i2 : 2, i6 != 0 ? "运行中" : c0021o == null ? "未连接 LSPosed" : !z2 ? "试用已结束，购买后可继续使用" : !z ? "需要重启手机一次后才能使用" : "请先在首页打开 MiDuo"));
        if (c0021o != null && c0021o.g()) {
            arrayList.add(new r.a("轻折分屏", 1, "打开开合动画后轻折分屏会暂停（两者都靠开合手势，会互相干扰）；关闭开合动画即恢复"));
        }
        try {
            StringBuilder append = new StringBuilder().append("id -u; echo @@; dumpsys display | grep -o 'local:[0-9]*' | sort -u; echo @@; base64 /data/adb/lspd/config/modules_config.db 2>/dev/null; echo @@; test -f /data/adb/lspd/config/modules_config.db-wal && base64 /data/adb/lspd/config/modules_config.db-wal; echo @@; cat ");
            String str7 = j;
            String[] split = b(append.append(str7).append("small_home.xml 2>/dev/null; echo @@; cat ").append(str7).append("home.xml 2>/dev/null; true").toString()).split("@@\n", -1);
            if (!"0".equals(split[i2].trim())) {
                arrayList.add(new r.a("Root 权限", 2, "su 返回的不是 root 身份（uid " + split[i2].trim() + "）"));
                arrayList.add(new r.a("LSPosed 登记的安装包", 2, i));
                arrayList.add(new r.a("内外屏", 2, i));
                arrayList.add(new r.a("壁纸", 1, i));
                arrayList.add(new r.a("关键接口与传感器数据", 2, i));
                return arrayList;
            }
            arrayList.add(new r.a("Root 权限", i2, "已允许"));
            String str8 = context.getApplicationInfo().sourceDir;
            if (split[2].trim().isEmpty()) {
                Throwable ex = null;
                arrayList.add(new r.a("LSPosed 登记的安装包", 2, "读不到 LSPosed 配置（/data/adb/lspd/config/modules_config.db）"));
                str5 = null;
            } else {
                try {
                    String str9 = split[2];
                    str5 = split[3];
                    a2 = a(context, str9, str5);
                } catch (Exception e2) {
                    Throwable th = e2;
                    str5 = null;
                }
                try {
                    if (str8.equals(a2)) {
                        str5 = null;
                        aVar = new r.a("LSPosed 登记的安装包", 0, "与当前安装一致");
                    } else {
                        str5 = null;
                        aVar = new r.a("LSPosed 登记的安装包", 2, a2 == null ? "LSPosed 里没有 MiDuo" : "LSPosed 还没登记刚装的新版本，现在软重启会加载不到 MiDuo；请打开 LSPosed 管理器或稍等后再检查");
                    }
                    arrayList.add(aVar);
                } catch (Exception e3) {
                    Throwable th = e3;
                    arrayList.add(new r.a("LSPosed 登记的安装包", 2, "读取 LSPosed 配置失败（" + th.getMessage() + "）"));
                    List asList = Arrays.asList(split[1].split("\n"));
                    contains = asList.contains(f);
                    contains2 = asList.contains(g);
                    if (contains) {
                    }
                    if (contains) {
                    }
                    str6 = "没找到" + (!contains ? "外屏" : contains2 ? "内屏" : "内屏和外屏") + "：屏幕编号与适配的手机不同";
                    arrayList.add(new r.a("内外屏", 2, str6));
                    a(context, arrayList);
                    arrayList.add(a(split[4], split[5]));
                    return arrayList;
                }
            }
            List asList2 = Arrays.asList(split[1].split("\n"));
            contains = asList2.contains(f);
            contains2 = asList2.contains(g);
            int r12 = (contains || !contains2) ? 2 : 1;
            if (contains || !contains2) {
                str6 = "没找到" + (!contains ? "外屏" : contains2 ? "内屏" : "内屏和外屏") + "：屏幕编号与适配的手机不同";
            } else {
                str6 = "内屏、外屏都已识别";
            }
            arrayList.add(new r.a("内外屏", r12, str6));
            a(context, arrayList);
            arrayList.add(a(split[4], split[5]));
            return arrayList;
        } catch (Exception e4) {
            if (e4 instanceof TimeoutException) {
                str4 = e4.getMessage() + "，请重试";
            } else {
                str4 = "未获得 Root，请在 Root 管理器里允许 MiDuo" + ((e4.getMessage() == null || e4.getMessage().isEmpty()) ? "" : "（" + e4.getMessage() + "）");
            }
            arrayList.add(new r.a("Root 权限", 2, str4));
            arrayList.add(new r.a("LSPosed 登记的安装包", 2, i));
            arrayList.add(new r.a("内外屏", 2, i));
            arrayList.add(new r.a("壁纸", 1, i));
            arrayList.add(new r.a("关键接口与传感器数据", 2, i));
            return arrayList;
        }
    }

    private static String b(String str) throws Exception {
        return M.a(str);
    }

    private static void a(Context context, List<a> list) {
        try {
            JSONArray jSONArray = null;
            for (String str : b("CLASSPATH=" + a(context.getApplicationInfo().sourceDir) + " exec /system/bin/timeout -s KILL 8 /system/bin/app_process /system/bin --nice-name=MiDuoFoldPreflight dev.duo.fold.Preflight").split("\\n")) {
                if (str.startsWith("MiDuoFoldCheck:")) {
                    jSONArray = new JSONArray(str.substring(15));
                }
            }
            if (jSONArray != null && jSONArray.length() == 4) {
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONArray jSONArray2 = jSONArray.getJSONArray(i2);
                    int i3 = jSONArray2.getInt(1);
                    if (i3 >= 0 && i3 <= 2) {
                        arrayList.add(new r.a(jSONArray2.getString(0), i3, jSONArray2.getString(2)));
                    } else {
                        throw new IllegalStateException("检测状态无效");
                    }
                }
                list.addAll(arrayList);
                return;
            }
            throw new IllegalStateException("未收到完整检测结果");
        } catch (Exception e2) {
            String message = e2.getMessage();
            StringBuilder append = new StringBuilder().append("检查失败：");
            if (message == null || message.trim().isEmpty()) {
                message = "检测未完成或超过8秒";
            }
            list.add(new r.a("关键接口与传感器数据", 2, append.append(message).toString()));
        }
    }

    private static a a(String str, String str2) {
        String str3;
        try {
            String str4 = null;
            String a2 = str.trim().isEmpty() ? null : dev.duo.fold.i.a(new ByteArrayInputStream(str.getBytes(StandardCharsets.UTF_8)), 4);
            if (!str2.trim().isEmpty()) {
                str4 = dev.duo.fold.i.a(new ByteArrayInputStream(str2.getBytes(StandardCharsets.UTF_8)), 1);
            }
            if (a2 != null && str4 != null) {
                String trim = b("test -r " + a(a2) + " && test -r " + a(str4) + " || { echo unreadable; exit 0; }; cmp -s " + a(a2) + " " + a(str4) + " && echo same || echo different").trim();
                if ("same".equals(trim)) {
                    return new r.a("壁纸", 0, "内外屏是同一张静态图片");
                }
                return new r.a("壁纸", 1, ("unreadable".equals(trim) ? "读不到壁纸原图" : "内外屏是两张不同的图片") + k + "内外屏换成同一张静态图片即可");
            }
            StringBuilder sb = new StringBuilder();
            if (a2 == null && str4 == null) {
                str3 = "内外屏";
            } else if (a2 == null) {
                str3 = "外屏";
            } else {
                str3 = "内屏";
            }
            return new r.a("壁纸", 1, sb.append(str3).append("不是静态图片壁纸（动态、带特效或模糊）").append(k).append("内外屏换成同一张静态图片即可").toString());
        } catch (Exception e2) {
            return new r.a("壁纸", 1, "壁纸检查失败（" + e2.getMessage() + "）");
        }
    }

    private static String a(String str) {
        return "'" + str.replace("'", "'\\''") + "'";
    }

    static a a(boolean z) {
        boolean equals = "247".equals(dev.duo.hookprobe.MainActivity.i("debug.duo.foldanim"));
        if (!z) {
            return new r.a("开合动画", 0, equals ? "已关闭，系统端许可仍在加载状态" : "已关闭");
        }
        if (!equals) {
            return new r.a("开合动画", 1, "已打开，系统端许可尚未加载");
        }
        try {
            if (b("pgrep -f '^MiDuoFoldEngine'; true").trim().isEmpty()) {
                return new r.a("开合动画", 2, "引擎未运行");
            }
            return new r.a("开合动画", 1, "引擎运行中，实际动画效果尚未确认");
        } catch (Exception e2) {
            return new r.a("开合动画", 2, "无法检查（未获得 Root）");
        }
    }

    private static String a(Context context, String str, String str2) throws Exception {
        File file = new File(context.getCacheDir(), "foldcheck");
        if (!file.isDirectory() && !file.mkdirs()) {
            throw new IllegalStateException("无法建立缓存目录");
        }
        File[] fileArr = {new File(file, "modules_config.db"), new File(file, "modules_config.db-wal"), new File(file, "modules_config.db-shm")};
        int i2 = 0;
        try {
            Files.write(fileArr[0].toPath(), Base64.getMimeDecoder().decode(str), new OpenOption[0]);
            if (!str2.trim().isEmpty()) {
                Files.write(fileArr[1].toPath(), Base64.getMimeDecoder().decode(str2), new OpenOption[0]);
            }
            SQLiteDatabase openDatabase = SQLiteDatabase.openDatabase(fileArr[0].getPath(), null, 0);
            try {
                Cursor rawQuery = openDatabase.rawQuery("select apk_path from modules where module_pkg_name=?", new String[]{context.getPackageName()});
                try {
                    String string = rawQuery.moveToFirst() ? rawQuery.getString(0) : null;
                    rawQuery.close();
                    openDatabase.close();
                    return string;
                } finally {
                }
            } finally {
            }
        } finally {
            while (i2 < 3) {
                fileArr[i2].delete();
                i2++;
            }
        }
    }
}
