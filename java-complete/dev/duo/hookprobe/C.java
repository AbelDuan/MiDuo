package dev.duo.hookprobe;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import dev.duo.hookprobe.M;
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

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class C {
    static final int a = 0;
    static final int b = 1;
    static final int c = 2;
    static final String d = "lhasa";
    private static final String e = "8.01.02.6325";
    private static final String f = "2.2.1";
    private static final int g = 7912;
    private static final String h = "org.lsposed.manager";
    private static final String i = "/data/adb/lspd/config/modules_config.db";

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

    C() {
    }

    static List<a> a(Context context, boolean z, String str, int i2, long j, Set<String> set, String str2) {
        a aVar;
        ArrayList arrayList = new ArrayList();
        String str3 = Build.MODEL;
        String str4 = Build.DEVICE;
        arrayList.add(d.equals(str4) ? new a("机型", 0, "小米 18 Fold（" + str3 + "）") : new a("机型", 2, "这台是 " + Build.MANUFACTURER + " " + str3 + "（" + str4 + "），MiDuo 只适配小米 18 Fold"));
        a a2 = a();
        arrayList.add(a2);
        String a3 = a(context, "com.miui.home");
        String a4 = a(context, "com.miui.personalassistant");
        String str5 = "没读到版本";
        if (e.equals(a3)) {
            aVar = new a("小米桌面", 0, a3);
        } else {
            StringBuilder sb = new StringBuilder();
            if (a3.isEmpty()) {
                a3 = "没读到版本";
            }
            aVar = new a("小米桌面", 2, sb.append(a3).append("，适配的是 ").append(e).toString());
        }
        arrayList.add(aVar);
        arrayList.add(new a("智能助理", "未安装".equals(a4) ? 2 : 0, a4 + "；组件接口在运行时核对，不限定版本号"));
        boolean z2 = z && i2 >= 102 && j >= 7912 && str != null && str.contains(f);
        if (!z) {
            arrayList.add(new a("LSPosed", 2, "未连接，请在 LSPosed 中启用 MiDuo"));
        } else if (z2) {
            arrayList.add(new a("LSPosed", 0, str + " / " + j + " / API " + i2));
        } else {
            StringBuilder sb2 = new StringBuilder();
            if (str != null && !str.isEmpty()) {
                str5 = str;
            }
            arrayList.add(new a("LSPosed", 2, sb2.append(str5).append(" / ").append(j).append(" / API ").append(i2).append("，需要 ").append(f).append(" / ").append(g).append(" / API 102").toString()));
        }
        a b2 = b(context);
        if (b2 != null) {
            arrayList.add(b2);
        }
        if (!z) {
            arrayList.add(new a("作用域", 2, "未连接 LSPosed，没法核对"));
        } else if (str2 != null) {
            arrayList.add(new a("作用域", 2, "读取失败（" + str2 + "）"));
        } else {
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (String str6 : P.o) {
                if (set == null || !set.contains(str6)) {
                    arrayList2.add(c(str6));
                }
            }
            for (String str7 : dev.duo.hookprobe.P.p) {
                if (set == null || !set.contains(str7)) {
                    arrayList3.add(c(str7));
                }
            }
            arrayList.add(arrayList2.isEmpty() ? new a("作用域（核心五项）", 0, "系统框架、系统界面、小米桌面、智能助理、系统搜索都已勾选") : new a("作用域（核心五项）", 2, "缺少" + String.join("、", arrayList2) + "。到 LSPosed 管理器 → 模块 → MiDuo → 作用域里勾上，或在 MiDuo 首页点“补齐作用域”"));
            if (!arrayList3.isEmpty()) {
                arrayList.add(new a("作用域（附加功能）", 1, "没勾" + String.join("、", arrayList3) + "，对应功能不可用，不影响打开"));
            }
        }
        if (a2.c != 0) {
            return arrayList;
        }
        arrayList.add(a(context));
        arrayList.add(c(context));
        arrayList.addAll(dev.duo.hookprobe.g.b(context));
        return arrayList;
    }

    private static a b(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(h, 0);
            return new a("LSPosed 管理器", 0, packageInfo.versionName + " / " + packageInfo.versionCode);
        } catch (PackageManager.NameNotFoundException e2) {
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    static String c(String str) {
        char c2;
        str.getClass();
        switch (str.hashCode()) {
            case -1507407806:
                if (str.equals("com.android.quicksearchbox")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -973170826:
                if (str.equals("com.tencent.mm")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -887328209:
                if (str.equals("system")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -259844499:
                if (str.equals("com.miui.personalassistant")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 313184810:
                if (str.equals("com.ss.android.ugc.aweme")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 560468770:
                if (str.equals("com.xiaomi.market")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 916429045:
                if (str.equals("com.miui.miwallpaper")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 1156888975:
                if (str.equals("com.android.settings")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 1698344559:
                if (str.equals("com.android.systemui")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case 1799462192:
                if (str.equals(dev.duo.icons.g.b)) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case 2095214256:
                if (str.equals("com.miui.home")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
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

    private static String b(String str) throws Exception {
        return M.a(str);
    }

    private static a c(Context context) {
        String str = context.getApplicationInfo().sourceDir;
        try {
            String[] split = b("base64 /data/adb/lspd/config/modules_config.db 2>/dev/null; echo @@; test -f /data/adb/lspd/config/modules_config.db-wal && base64 /data/adb/lspd/config/modules_config.db-wal; echo @@; true").split("@@\n", -1);
            if (split.length < 2 || split[0].trim().isEmpty()) {
                return new a("LSPosed 登记的安装包", 2, "读不到 LSPosed 配置");
            }
            try {
                String a2 = a(context, split[0], split.length > 1 ? split[1] : "");
                if (str.equals(a2)) {
                    return new a("LSPosed 登记的安装包", 0, "与当前安装一致");
                }
                return new a("LSPosed 登记的安装包", 2, a2 == null ? "LSPosed 里没有 MiDuo" : "登记的还是旧安装包。打开 LSPosed 管理器，把 MiDuo 关一次再打开");
            } catch (Exception e2) {
                return new a("LSPosed 登记的安装包", 2, "读取失败（" + e2.getMessage() + "）");
            }
        } catch (M.a e3) {
            return new a("LSPosed 登记的安装包", 2, e3.getMessage());
        } catch (InterruptedException e4) {
            Thread.currentThread().interrupt();
            return new a("LSPosed 登记的安装包", 2, "检查已取消");
        } catch (TimeoutException e5) {
            return new a("LSPosed 登记的安装包", 2, e5.getMessage() + "，请重试");
        } catch (Exception e6) {
            return new a("LSPosed 登记的安装包", 2, "读取失败（" + e6.getMessage() + "）");
        }
    }

    private static a a() {
        try {
            String trim = M.a("id -u").trim();
            if ("0".equals(trim)) {
                return new a("Root", 0, "已授权（uid=0）");
            }
            StringBuilder append = new StringBuilder().append("su 返回的不是 root（");
            if (trim.isEmpty()) {
                trim = "空";
            }
            return new a("Root", 2, append.append(trim).append("）").append("。打开 KernelSU → 超级用户（应用授权）→ 找到 MiDuo → 打开允许，回到 MiDuo 再点一次开关").toString());
        } catch (IOException e2) {
            return new a("Root", 2, "没有 su，或被拒绝。打开 KernelSU → 超级用户（应用授权）→ 找到 MiDuo → 打开允许，回到 MiDuo 再点一次开关");
        } catch (InterruptedException e3) {
            Thread.currentThread().interrupt();
            return new a("Root", 2, "检查已取消");
        } catch (TimeoutException e4) {
            return new a("Root", 2, e4.getMessage() + "，可能在等待授权弹窗。打开 KernelSU → 超级用户（应用授权）→ 找到 MiDuo → 打开允许，回到 MiDuo 再点一次开关");
        } catch (Exception e5) {
            String message = e5.getMessage();
            return new a("Root", 2, "未授权或被拒绝" + ((message == null || message.isEmpty()) ? "" : "（" + message + "）") + "。打开 KernelSU → 超级用户（应用授权）→ 找到 MiDuo → 打开允许，回到 MiDuo 再点一次开关");
        }
    }

    private static a a(Context context) {
        try {
            String b2 = b("wm density");
            if (!b2.contains("Physical density")) {
                return new a("屏幕密度", 2, "读不到屏幕密度");
            }
            ArrayList arrayList = new ArrayList();
            int i2 = -1;
            for (String str : b2.split("\n")) {
                int a2 = a(str);
                if (str.contains("Physical density") && a2 > 0) {
                    i2 = a2;
                } else if (str.contains("Override density") && a2 > 0 && i2 > 0 && a2 != i2) {
                    arrayList.add("原装 " + i2 + "，现在 " + a2);
                }
            }
            return !arrayList.isEmpty() ? new a("屏幕密度", 2, "改过 DPI（" + String.join("；", arrayList) + "）。请到开发者选项把最小宽度恢复默认") : new a("屏幕密度", 0, "没改过");
        } catch (M.a e2) {
            return new a("屏幕密度", 2, e2.getMessage());
        } catch (InterruptedException e3) {
            Thread.currentThread().interrupt();
            return new a("屏幕密度", 2, "检查已取消");
        } catch (TimeoutException e4) {
            return new a("屏幕密度", 2, e4.getMessage() + "，请重试");
        } catch (Exception e5) {
            return new a("屏幕密度", 2, "读取失败（" + e5.getMessage() + "）");
        }
    }

    private static int a(String str) {
        Matcher matcher = Pattern.compile("(\\d+)").matcher(str);
        int i2 = -1;
        while (matcher.find()) {
            i2 = Integer.parseInt(matcher.group(1));
        }
        return i2;
    }

    private static String a(Context context, String str) {
        try {
            String str2 = context.getPackageManager().getPackageInfo(str, 0).versionName;
            Matcher matcher = Pattern.compile("\\d+(\\.\\d+){2,}").matcher(str2 == null ? "" : str2);
            return matcher.find() ? matcher.group() : String.valueOf(str2);
        } catch (PackageManager.NameNotFoundException e2) {
            return "未安装";
        }
    }

    private static String a(Context context, String str, String str2) throws Exception {
        File file = new File(context.getCacheDir(), "mastercheck");
        if (!file.isDirectory() && !file.mkdirs()) {
            throw new IllegalStateException("无法建立缓存目录");
        }
        File[] fileArr = {new File(file, "modules_config.db"), new File(file, "modules_config.db-wal"), new File(file, "modules_config.db-shm")};
        int i2 = 0;
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
            while (i2 < 3) {
                fileArr[i2].delete();
                i2++;
            }
        }
    }
}
