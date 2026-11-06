package dev.duo.hookprobe;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Process;
import dev.duo.fold.C0040i;
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

/* renamed from: dev.duo.hookprobe.r */
/* loaded from: classes.dex */
final class C0116r {

    /* renamed from: a */
    static final int f1701a = 0;

    /* renamed from: b */
    static final int f1702b = 1;

    /* renamed from: c */
    static final int f1703c = 2;

    /* renamed from: f */
    private static final String f1706f = "local:4639175402683733248";

    /* renamed from: g */
    private static final String f1707g = "local:4639175068132267009";

    /* renamed from: h */
    private static final String f1708h = "/data/adb/lspd/config/modules_config.db";

    /* renamed from: i */
    private static final String f1709i = "需要 Root 才能检查";

    /* renamed from: k */
    private static final String f1711k = "：桌面开合有动画，App 里开合没有动画。";

    /* renamed from: d */
    private static final String[] f1704d = {"system", "com.android.systemui", "com.miui.home", "com.miui.personalassistant"};

    /* renamed from: e */
    private static final String[] f1705e = {"系统框架", "系统界面", "小米桌面", "智能助理"};

    /* renamed from: j */
    private static final String f1710j = "/data/system/theme_magic/users/" + (Process.myUid() / 100000) + "/wallpaper/data/";

    /* renamed from: dev.duo.hookprobe.r$a */
    static final class a {

        /* renamed from: a */
        final String f1712a;

        /* renamed from: b */
        final String f1713b;

        /* renamed from: c */
        final int f1714c;

        a(String str, int i, String str2) {
            this.f1712a = str;
            this.f1714c = i;
            this.f1713b = str2;
        }
    }

    C0116r() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0276  */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v15, types: [int] */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static List<a> m1899a(Context context, C0113o c0113o, boolean z, boolean z2, Set<String> set, String str, String str2) {
        int i;
        String str3;
        String str4;
        String str5;
        String m1897a;
        a aVar;
        boolean contains;
        boolean contains2;
        String str6;
        ArrayList arrayList = new ArrayList();
        String m2004a = C0120v.m2004a(context);
        int i2 = m2004a == null ? 0 : 2;
        if (m2004a == null) {
            m2004a = "与适配版本一致";
        }
        arrayList.add(new a("系统与小米桌面版本", i2, m2004a));
        boolean equals = "未安装".equals(str2);
        arrayList.add(new a("智能助理", !equals ? 0 : 2, !equals ? str2 + "；不限定版本号" : "未安装，请先安装智能助理"));
        if (c0113o == null) {
            arrayList.add(new a("LSPosed", 2, "未连接，请在 LSPosed 中启用 MiDuo"));
            i = 0;
        } else if (str != null) {
            arrayList.add(new a("LSPosed 作用域", 2, "读取失败（" + str + "）"));
            i = 0;
        } else {
            ArrayList arrayList2 = new ArrayList();
            int i3 = 0;
            while (true) {
                String[] strArr = f1704d;
                if (i3 >= strArr.length) {
                    break;
                }
                if (!set.contains(strArr[i3])) {
                    arrayList2.add(f1705e[i3]);
                }
                i3++;
            }
            int i4 = arrayList2.isEmpty() ? 0 : 2;
            if (arrayList2.isEmpty()) {
                str3 = "系统框架、系统界面、小米桌面、智能助理都已勾选";
                i = 0;
            } else {
                i = 0;
                str3 = "缺少" + String.join("、", arrayList2) + "，可在首页诊断信息里补齐";
            }
            arrayList.add(new a("LSPosed 作用域", i4, str3));
        }
        int i5 = (c0113o != null && c0113o.m1838m() && z && z2) ? 1 : i;
        arrayList.add(new a("MiDuo 总开关", i5 != 0 ? i : 2, i5 != 0 ? "运行中" : c0113o == null ? "未连接 LSPosed" : !z2 ? "试用已结束，购买后可继续使用" : !z ? "需要重启手机一次后才能使用" : "请先在首页打开 MiDuo"));
        if (c0113o != null && c0113o.m1818g()) {
            arrayList.add(new a("轻折分屏", 1, "打开开合动画后轻折分屏会暂停（两者都靠开合手势，会互相干扰）；关闭开合动画即恢复"));
        }
        try {
            StringBuilder append = new StringBuilder().append("id -u; echo @@; dumpsys display | grep -o 'local:[0-9]*' | sort -u; echo @@; base64 /data/adb/lspd/config/modules_config.db 2>/dev/null; echo @@; test -f /data/adb/lspd/config/modules_config.db-wal && base64 /data/adb/lspd/config/modules_config.db-wal; echo @@; cat ");
            String str7 = f1710j;
            String[] split = m1901b(append.append(str7).append("small_home.xml 2>/dev/null; echo @@; cat ").append(str7).append("home.xml 2>/dev/null; true").toString()).split("@@\n", -1);
            if (!"0".equals(split[i].trim())) {
                arrayList.add(new a("Root 权限", 2, "su 返回的不是 root 身份（uid " + split[i].trim() + "）"));
                arrayList.add(new a("LSPosed 登记的安装包", 2, f1709i));
                arrayList.add(new a("内外屏", 2, f1709i));
                arrayList.add(new a("壁纸", 1, f1709i));
                arrayList.add(new a("关键接口与传感器数据", 2, f1709i));
                return arrayList;
            }
            arrayList.add(new a("Root 权限", i, "已允许"));
            String str8 = context.getApplicationInfo().sourceDir;
            if (split[2].trim().isEmpty()) {
                arrayList.add(new a("LSPosed 登记的安装包", 2, "读不到 LSPosed 配置（/data/adb/lspd/config/modules_config.db）"));
                str5 = null;
            } else {
                try {
                    String str9 = split[2];
                    str5 = split[3];
                    m1897a = m1897a(context, str9, str5);
                } catch (Exception e) {
                    e = e;
                    str5 = null;
                }
                try {
                    if (str8.equals(m1897a)) {
                        str5 = null;
                        aVar = new a("LSPosed 登记的安装包", 0, "与当前安装一致");
                    } else {
                        str5 = null;
                        aVar = new a("LSPosed 登记的安装包", 2, m1897a == null ? "LSPosed 里没有 MiDuo" : "LSPosed 还没登记刚装的新版本，现在软重启会加载不到 MiDuo；请打开 LSPosed 管理器或稍等后再检查");
                    }
                    arrayList.add(aVar);
                } catch (Exception e2) {
                    e = e2;
                    arrayList.add(new a("LSPosed 登记的安装包", 2, "读取 LSPosed 配置失败（" + e.getMessage() + "）"));
                    List asList = Arrays.asList(split[1].split("\n"));
                    contains = asList.contains(f1706f);
                    contains2 = asList.contains(f1707g);
                    if (contains) {
                    }
                    if (contains) {
                    }
                    str6 = "没找到" + (!contains ? "外屏" : contains2 ? "内屏" : "内屏和外屏") + "：屏幕编号与适配的手机不同";
                    arrayList.add(new a("内外屏", r12, str6));
                    m1900a(context, arrayList);
                    arrayList.add(m1895a(split[4], split[5]));
                    return arrayList;
                }
            }
            List asList2 = Arrays.asList(split[1].split("\n"));
            contains = asList2.contains(f1706f);
            contains2 = asList2.contains(f1707g);
            int r12 = (contains && contains2) ? 0 : 2;
            if (contains || !contains2) {
                str6 = "没找到" + (!contains ? "外屏" : contains2 ? "内屏" : "内屏和外屏") + "：屏幕编号与适配的手机不同";
            } else {
                str6 = "内屏、外屏都已识别";
            }
            arrayList.add(new a("内外屏", r12, str6));
            m1900a(context, arrayList);
            arrayList.add(m1895a(split[4], split[5]));
            return arrayList;
        } catch (Exception e3) {
            if (e3 instanceof TimeoutException) {
                str4 = e3.getMessage() + "，请重试";
            } else {
                str4 = "未获得 Root，请在 Root 管理器里允许 MiDuo" + ((e3.getMessage() == null || e3.getMessage().isEmpty()) ? "" : "（" + e3.getMessage() + "）");
            }
            arrayList.add(new a("Root 权限", 2, str4));
            arrayList.add(new a("LSPosed 登记的安装包", 2, f1709i));
            arrayList.add(new a("内外屏", 2, f1709i));
            arrayList.add(new a("壁纸", 1, f1709i));
            arrayList.add(new a("关键接口与传感器数据", 2, f1709i));
            return arrayList;
        }
    }

    /* renamed from: b */
    private static String m1901b(String str) throws Exception {
        return C0057M.m977a(str);
    }

    /* renamed from: a */
    private static void m1900a(Context context, List<a> list) {
        try {
            JSONArray jSONArray = null;
            for (String str : m1901b("CLASSPATH=" + m1898a(context.getApplicationInfo().sourceDir) + " exec /system/bin/timeout -s KILL 8 /system/bin/app_process /system/bin --nice-name=MiDuoFoldPreflight dev.duo.fold.Preflight").split("\\n")) {
                if (str.startsWith("MiDuoFoldCheck:")) {
                    jSONArray = new JSONArray(str.substring(15));
                }
            }
            if (jSONArray != null && jSONArray.length() == 4) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONArray jSONArray2 = jSONArray.getJSONArray(i);
                    int i2 = jSONArray2.getInt(1);
                    if (i2 >= 0 && i2 <= 2) {
                        arrayList.add(new a(jSONArray2.getString(0), i2, jSONArray2.getString(2)));
                    } else {
                        throw new IllegalStateException("检测状态无效");
                    }
                }
                list.addAll(arrayList);
                return;
            }
            throw new IllegalStateException("未收到完整检测结果");
        } catch (Exception e) {
            String message = e.getMessage();
            StringBuilder append = new StringBuilder().append("检查失败：");
            if (message == null || message.trim().isEmpty()) {
                message = "检测未完成或超过8秒";
            }
            list.add(new a("关键接口与传感器数据", 2, append.append(message).toString()));
        }
    }

    /* renamed from: a */
    private static a m1895a(String str, String str2) {
        String str3;
        try {
            String str4 = null;
            String m739a = str.trim().isEmpty() ? null : C0040i.m739a(new ByteArrayInputStream(str.getBytes(StandardCharsets.UTF_8)), 4);
            if (!str2.trim().isEmpty()) {
                str4 = C0040i.m739a(new ByteArrayInputStream(str2.getBytes(StandardCharsets.UTF_8)), 1);
            }
            if (m739a != null && str4 != null) {
                String trim = m1901b("test -r " + m1898a(m739a) + " && test -r " + m1898a(str4) + " || { echo unreadable; exit 0; }; cmp -s " + m1898a(m739a) + " " + m1898a(str4) + " && echo same || echo different").trim();
                if ("same".equals(trim)) {
                    return new a("壁纸", 0, "内外屏是同一张静态图片");
                }
                return new a("壁纸", 1, ("unreadable".equals(trim) ? "读不到壁纸原图" : "内外屏是两张不同的图片") + f1711k + "内外屏换成同一张静态图片即可");
            }
            StringBuilder sb = new StringBuilder();
            if (m739a == null && str4 == null) {
                str3 = "内外屏";
            } else if (m739a == null) {
                str3 = "外屏";
            } else {
                str3 = "内屏";
            }
            return new a("壁纸", 1, sb.append(str3).append("不是静态图片壁纸（动态、带特效或模糊）").append(f1711k).append("内外屏换成同一张静态图片即可").toString());
        } catch (Exception e) {
            return new a("壁纸", 1, "壁纸检查失败（" + e.getMessage() + "）");
        }
    }

    /* renamed from: a */
    private static String m1898a(String str) {
        return "'" + str.replace("'", "'\\''") + "'";
    }

    /* renamed from: a */
    static a m1896a(boolean z) {
        boolean equals = "247".equals(MainActivity.m1123i("debug.duo.foldanim"));
        if (!z) {
            return new a("开合动画", 0, equals ? "已关闭，系统端许可仍在加载状态" : "已关闭");
        }
        if (!equals) {
            return new a("开合动画", 1, "已打开，系统端许可尚未加载");
        }
        try {
            if (m1901b("pgrep -f '^MiDuoFoldEngine'; true").trim().isEmpty()) {
                return new a("开合动画", 2, "引擎未运行");
            }
            return new a("开合动画", 1, "引擎运行中，实际动画效果尚未确认");
        } catch (Exception e) {
            return new a("开合动画", 2, "无法检查（未获得 Root）");
        }
    }

    /* renamed from: a */
    private static String m1897a(Context context, String str, String str2) throws Exception {
        File file = new File(context.getCacheDir(), "foldcheck");
        if (!file.isDirectory() && !file.mkdirs()) {
            throw new IllegalStateException("无法建立缓存目录");
        }
        File[] fileArr = {new File(file, "modules_config.db"), new File(file, "modules_config.db-wal"), new File(file, "modules_config.db-shm")};
        int i = 0;
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
            while (i < 3) {
                fileArr[i].delete();
                i++;
            }
        }
    }
}
