package dev.duo.hookprobe;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import dev.duo.hookprobe.C0057M;
import dev.duo.icons.C0131g;
import dev.duo.taskcore.WorkspaceProtocol;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeoutException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: dev.duo.hookprobe.C */
/* loaded from: classes.dex */
final class C0044C {

    /* renamed from: a */
    static final int f800a = 0;

    /* renamed from: b */
    static final int f801b = 1;

    /* renamed from: c */
    static final int f802c = 2;

    /* renamed from: d */
    static final String f803d = "lhasa";

    /* renamed from: e */
    private static final String f804e = "8.01.02.6325";

    /* renamed from: f */
    private static final String f805f = "2.2.1";

    /* renamed from: g */
    private static final int f806g = 7912;

    /* renamed from: h */
    private static final String f807h = "org.lsposed.manager";

    /* renamed from: i */
    private static final String f808i = "/data/adb/lspd/config/modules_config.db";

    /* renamed from: dev.duo.hookprobe.C$a */
    static final class a {

        /* renamed from: a */
        final String f809a;

        /* renamed from: b */
        final String f810b;

        /* renamed from: c */
        final int f811c;

        a(String str, int i, String str2) {
            this.f809a = str;
            this.f811c = i;
            this.f810b = str2;
        }
    }

    C0044C() {
    }

    /* renamed from: a */
    static List<a> m821a(Context context, boolean z, String str, int i, long j, Set<String> set, String str2) {
        a aVar;
        ArrayList arrayList = new ArrayList();
        String str3 = Build.MODEL;
        String str4 = Build.DEVICE;
        arrayList.add(f803d.equals(str4) ? new a("机型", 0, "小米 18 Fold（" + str3 + "）") : new a("机型", 2, "这台是 " + Build.MANUFACTURER + " " + str3 + "（" + str4 + "），MiDuo 只适配小米 18 Fold"));
        a m817a = m817a();
        arrayList.add(m817a);
        String m819a = m819a(context, "com.miui.home");
        String m819a2 = m819a(context, "com.miui.personalassistant");
        String str5 = "没读到版本";
        if (f804e.equals(m819a)) {
            aVar = new a("小米桌面", 0, m819a);
        } else {
            StringBuilder sb = new StringBuilder();
            if (m819a.isEmpty()) {
                m819a = "没读到版本";
            }
            aVar = new a("小米桌面", 2, sb.append(m819a).append("，适配的是 ").append(f804e).toString());
        }
        arrayList.add(aVar);
        arrayList.add(new a("智能助理", "未安装".equals(m819a2) ? 2 : 0, m819a2 + "；组件接口在运行时核对，不限定版本号"));
        boolean z2 = z && i == 102 && j == 7912 && str != null && str.contains(f805f);
        if (!z) {
            arrayList.add(new a("LSPosed", 2, "未连接，请在 LSPosed 中启用 MiDuo"));
        } else if (z2) {
            arrayList.add(new a("LSPosed", 0, str + " / " + j + " / API " + i));
        } else {
            StringBuilder sb2 = new StringBuilder();
            if (str != null && !str.isEmpty()) {
                str5 = str;
            }
            arrayList.add(new a("LSPosed", 2, sb2.append(str5).append(" / ").append(j).append(" / API ").append(i).append("，需要 ").append(f805f).append(" / ").append(f806g).append(" / API 102").toString()));
        }
        a m822b = m822b(context);
        if (m822b != null) {
            arrayList.add(m822b);
        }
        if (!z) {
            arrayList.add(new a("作用域", 2, "未连接 LSPosed，没法核对"));
        } else if (str2 != null) {
            arrayList.add(new a("作用域", 2, "读取失败（" + str2 + "）"));
        } else {
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (String str6 : C0071P.f1183o) {
                if (set == null || !set.contains(str6)) {
                    arrayList2.add(m825c(str6));
                }
            }
            for (String str7 : C0071P.f1185p) {
                if (set == null || !set.contains(str7)) {
                    arrayList3.add(m825c(str7));
                }
            }
            arrayList.add(arrayList2.isEmpty() ? new a("作用域（核心五项）", 0, "系统框架、系统界面、小米桌面、智能助理、系统搜索都已勾选") : new a("作用域（核心五项）", 2, "缺少" + String.join("、", arrayList2) + "。到 LSPosed 管理器 → 模块 → MiDuo → 作用域里勾上，或在 MiDuo 首页点“补齐作用域”"));
            if (!arrayList3.isEmpty()) {
                arrayList.add(new a("作用域（附加功能）", 1, "没勾" + String.join("、", arrayList3) + "，对应功能不可用，不影响打开"));
            }
        }
        if (m817a.f811c != 0) {
            return arrayList;
        }
        arrayList.add(m818a(context));
        arrayList.add(m824c(context));
        arrayList.addAll(C0105g.m1695b(context));
        return arrayList;
    }

    /* renamed from: b */
    private static a m822b(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(f807h, 0);
            return new a("LSPosed 管理器", 0, packageInfo.versionName + " / " + packageInfo.versionCode);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    static String m825c(String str) {
        char c;
        str.getClass();
        switch (str.hashCode()) {
            case -1507407806:
                if (str.equals("com.android.quicksearchbox")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -973170826:
                if (str.equals("com.tencent.mm")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -887328209:
                if (str.equals("system")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -259844499:
                if (str.equals("com.miui.personalassistant")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 313184810:
                if (str.equals("com.ss.android.ugc.aweme")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 560468770:
                if (str.equals("com.xiaomi.market")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 916429045:
                if (str.equals("com.miui.miwallpaper")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1156888975:
                if (str.equals("com.android.settings")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 1698344559:
                if (str.equals("com.android.systemui")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 1799462192:
                if (str.equals(C0131g.f1964b)) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 2095214256:
                if (str.equals("com.miui.home")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return "系统搜索";
            case 1:
                return "微信（适配）";
            case 2:
                return "系统框架";
            case 3:
                return "智能助理";
            case 4:
                return "抖音（适配）";
            case 5:
                return "应用商店（通用适配）";
            case WorkspaceProtocol.QUERY /* 6 */:
                return "壁纸（个别 App 适配）";
            case 7:
                return "设置（通用适配）";
            case WorkspaceProtocol.RELEASE_TASK /* 8 */:
                return "系统界面";
            case WorkspaceProtocol.REGISTER_SOURCE /* 9 */:
                return "主题（图标）";
            case WorkspaceProtocol.CANCEL_SOURCE /* 10 */:
                return "小米桌面";
            default:
                return str;
        }
    }

    /* renamed from: b */
    private static String m823b(String str) throws Exception {
        return C0057M.m977a(str);
    }

    /* renamed from: c */
    private static a m824c(Context context) {
        String str = context.getApplicationInfo().sourceDir;
        try {
            String[] split = m823b("base64 /data/adb/lspd/config/modules_config.db 2>/dev/null; echo @@; test -f /data/adb/lspd/config/modules_config.db-wal && base64 /data/adb/lspd/config/modules_config.db-wal; echo @@; true").split("@@\n", -1);
            if (split.length < 2 || split[0].trim().isEmpty()) {
                return new a("LSPosed 登记的安装包", 2, "读不到 LSPosed 配置");
            }
            try {
                String m820a = m820a(context, split[0], split.length > 1 ? split[1] : "");
                if (str.equals(m820a)) {
                    return new a("LSPosed 登记的安装包", 0, "与当前安装一致");
                }
                return new a("LSPosed 登记的安装包", 2, m820a == null ? "LSPosed 里没有 MiDuo" : "登记的还是旧安装包。打开 LSPosed 管理器，把 MiDuo 关一次再打开");
            } catch (Exception e) {
                return new a("LSPosed 登记的安装包", 2, "读取失败（" + e.getMessage() + "）");
            }
        } catch (C0057M.a e2) {
            return new a("LSPosed 登记的安装包", 2, e2.getMessage());
        } catch (InterruptedException e3) {
            Thread.currentThread().interrupt();
            return new a("LSPosed 登记的安装包", 2, "检查已取消");
        } catch (TimeoutException e4) {
            return new a("LSPosed 登记的安装包", 2, e4.getMessage() + "，请重试");
        } catch (Exception e5) {
            return new a("LSPosed 登记的安装包", 2, "读取失败（" + e5.getMessage() + "）");
        }
    }

    /* renamed from: a */
    private static a m817a() {
        try {
            String trim = C0057M.m977a("id -u").trim();
            if ("0".equals(trim)) {
                return new a("Root", 0, "已授权（uid=0）");
            }
            StringBuilder append = new StringBuilder().append("su 返回的不是 root（");
            if (trim.isEmpty()) {
                trim = "空";
            }
            return new a("Root", 2, append.append(trim).append("）").append("。打开 KernelSU → 超级用户（应用授权）→ 找到 MiDuo → 打开允许，回到 MiDuo 再点一次开关").toString());
        } catch (IOException e) {
            return new a("Root", 2, "没有 su，或被拒绝。打开 KernelSU → 超级用户（应用授权）→ 找到 MiDuo → 打开允许，回到 MiDuo 再点一次开关");
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            return new a("Root", 2, "检查已取消");
        } catch (TimeoutException e3) {
            return new a("Root", 2, e3.getMessage() + "，可能在等待授权弹窗。打开 KernelSU → 超级用户（应用授权）→ 找到 MiDuo → 打开允许，回到 MiDuo 再点一次开关");
        } catch (Exception e4) {
            String message = e4.getMessage();
            return new a("Root", 2, "未授权或被拒绝" + ((message == null || message.isEmpty()) ? "" : "（" + message + "）") + "。打开 KernelSU → 超级用户（应用授权）→ 找到 MiDuo → 打开允许，回到 MiDuo 再点一次开关");
        }
    }

    /* renamed from: a */
    private static a m818a(Context context) {
        try {
            String m823b = m823b("wm density");
            if (!m823b.contains("Physical density")) {
                return new a("屏幕密度", 2, "读不到屏幕密度");
            }
            ArrayList arrayList = new ArrayList();
            int i = -1;
            for (String str : m823b.split("\n")) {
                int m816a = m816a(str);
                if (str.contains("Physical density") && m816a > 0) {
                    i = m816a;
                } else if (str.contains("Override density") && m816a > 0 && i > 0 && m816a != i) {
                    arrayList.add("原装 " + i + "，现在 " + m816a);
                }
            }
            return !arrayList.isEmpty() ? new a("屏幕密度", 2, "改过 DPI（" + String.join("；", arrayList) + "）。请到开发者选项把最小宽度恢复默认") : new a("屏幕密度", 0, "没改过");
        } catch (C0057M.a e) {
            return new a("屏幕密度", 2, e.getMessage());
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            return new a("屏幕密度", 2, "检查已取消");
        } catch (TimeoutException e3) {
            return new a("屏幕密度", 2, e3.getMessage() + "，请重试");
        } catch (Exception e4) {
            return new a("屏幕密度", 2, "读取失败（" + e4.getMessage() + "）");
        }
    }

    /* renamed from: a */
    private static int m816a(String str) {
        Matcher matcher = Pattern.compile("(\\d+)").matcher(str);
        int i = -1;
        while (matcher.find()) {
            i = Integer.parseInt(matcher.group(1));
        }
        return i;
    }

    /* renamed from: a */
    private static String m819a(Context context, String str) {
        try {
            String str2 = context.getPackageManager().getPackageInfo(str, 0).versionName;
            Matcher matcher = Pattern.compile("\\d+(\\.\\d+){2,}").matcher(str2 == null ? "" : str2);
            return matcher.find() ? matcher.group() : String.valueOf(str2);
        } catch (PackageManager.NameNotFoundException e) {
            return "未安装";
        }
    }

    /* renamed from: a */
    private static String m820a(Context context, String str, String str2) throws Exception {
        File file = new File(context.getCacheDir(), "mastercheck");
        if (!file.isDirectory() && !file.mkdirs()) {
            throw new IllegalStateException("无法建立缓存目录");
        }
        File[] fileArr = {new File(file, "modules_config.db"), new File(file, "modules_config.db-wal"), new File(file, "modules_config.db-shm")};
        int i = 0;
        try {
            Files.write(fileArr[0].toPath(), Base64.getMimeDecoder().decode(str.replaceAll("\\s", "")), new OpenOption[0]);
            if (!str2.trim().isEmpty()) {
                Files.write(fileArr[1].toPath(), Base64.getMimeDecoder().decode(str2.replaceAll("\\s", "")), new OpenOption[0]);
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
