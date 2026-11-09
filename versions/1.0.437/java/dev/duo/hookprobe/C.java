package dev.duo.hookprobe;

/* loaded from: classes.dex */
final class C {
    static final int a = 0;
    static final int b = 1;
    static final int c = 2;
    static final java.lang.String d = "lhasa";
    private static final java.lang.String e = "8.01.02.6325";
    private static final java.lang.String f = "2.2.1";
    private static final int g = 7912;
    private static final java.lang.String h = "org.lsposed.manager";
    private static final java.lang.String i = "/data/adb/lspd/config/modules_config.db";

    static final class a {
        final java.lang.String a;
        final java.lang.String b;
        final int c;

        a(java.lang.String str, int i, java.lang.String str2) {
            this.a = str;
            this.c = i;
            this.b = str2;
        }
    }

    C() {
    }

    static java.util.List<dev.duo.hookprobe.C.a> a(android.content.Context context, boolean z, java.lang.String str, int i2, long j, java.util.Set<java.lang.String> set, java.lang.String str2) {
        dev.duo.hookprobe.C.a aVar;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.lang.String str3 = android.os.Build.MODEL;
        java.lang.String str4 = android.os.Build.DEVICE;
        arrayList.add(d.equals(str4) ? new dev.duo.hookprobe.C.a("机型", 0, "小米 18 Fold（" + str3 + "）") : new dev.duo.hookprobe.C.a("机型", 2, "这台是 " + android.os.Build.MANUFACTURER + " " + str3 + "（" + str4 + "），MiDuo 只适配小米 18 Fold"));
        dev.duo.hookprobe.C.a a2 = a();
        arrayList.add(a2);
        java.lang.String a3 = a(context, "com.miui.home");
        java.lang.String a4 = a(context, "com.miui.personalassistant");
        java.lang.String str5 = "没读到版本";
        if (e.equals(a3)) {
            aVar = new dev.duo.hookprobe.C.a("小米桌面", 0, a3);
        } else {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            if (a3.isEmpty()) {
                a3 = "没读到版本";
            }
            aVar = new dev.duo.hookprobe.C.a("小米桌面", 2, sb.append(a3).append("，适配的是 ").append(e).toString());
        }
        arrayList.add(aVar);
        arrayList.add(new dev.duo.hookprobe.C.a("智能助理", "未安装".equals(a4) ? 2 : 0, a4 + "；组件接口在运行时核对，不限定版本号"));
        boolean z2 = z && i2 == 102 && j == 7912 && str != null && str.contains(f);
        if (!z) {
            arrayList.add(new dev.duo.hookprobe.C.a("LSPosed", 2, "未连接，请在 LSPosed 中启用 MiDuo"));
        } else if (z2) {
            arrayList.add(new dev.duo.hookprobe.C.a("LSPosed", 0, str + " / " + j + " / API " + i2));
        } else {
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            if (str != null && !str.isEmpty()) {
                str5 = str;
            }
            arrayList.add(new dev.duo.hookprobe.C.a("LSPosed", 2, sb2.append(str5).append(" / ").append(j).append(" / API ").append(i2).append("，需要 ").append(f).append(" / ").append(g).append(" / API 102").toString()));
        }
        dev.duo.hookprobe.C.a b2 = b(context);
        if (b2 != null) {
            arrayList.add(b2);
        }
        if (!z) {
            arrayList.add(new dev.duo.hookprobe.C.a("作用域", 2, "未连接 LSPosed，没法核对"));
        } else if (str2 != null) {
            arrayList.add(new dev.duo.hookprobe.C.a("作用域", 2, "读取失败（" + str2 + "）"));
        } else {
            java.util.ArrayList arrayList2 = new java.util.ArrayList();
            java.util.ArrayList arrayList3 = new java.util.ArrayList();
            for (java.lang.String str6 : dev.duo.hookprobe.P.o) {
                if (set == null || !set.contains(str6)) {
                    arrayList2.add(c(str6));
                }
            }
            for (java.lang.String str7 : dev.duo.hookprobe.P.p) {
                if (set == null || !set.contains(str7)) {
                    arrayList3.add(c(str7));
                }
            }
            arrayList.add(arrayList2.isEmpty() ? new dev.duo.hookprobe.C.a("作用域（核心五项）", 0, "系统框架、系统界面、小米桌面、智能助理、系统搜索都已勾选") : new dev.duo.hookprobe.C.a("作用域（核心五项）", 2, "缺少" + java.lang.String.join("、", arrayList2) + "。到 LSPosed 管理器 → 模块 → MiDuo → 作用域里勾上，或在 MiDuo 首页点“补齐作用域”"));
            if (!arrayList3.isEmpty()) {
                arrayList.add(new dev.duo.hookprobe.C.a("作用域（附加功能）", 1, "没勾" + java.lang.String.join("、", arrayList3) + "，对应功能不可用，不影响打开"));
            }
        }
        if (a2.c != 0) {
            return arrayList;
        }
        arrayList.add(a(context));
        arrayList.add(c(context));
        arrayList.addAll(dev.duo.hookprobe.C0018g.b(context));
        return arrayList;
    }

    private static dev.duo.hookprobe.C.a b(android.content.Context context) {
        try {
            android.content.pm.PackageInfo packageInfo = context.getPackageManager().getPackageInfo(h, 0);
            return new dev.duo.hookprobe.C.a("LSPosed 管理器", 0, packageInfo.versionName + " / " + packageInfo.versionCode);
        } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    static java.lang.String c(java.lang.String str) {
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
            case 6:
                return "壁纸（个别 App 适配）";
            case 7:
                return "设置（通用适配）";
            case dev.duo.taskcore.h.k /* 8 */:
                return "系统界面";
            case dev.duo.taskcore.h.l /* 9 */:
                return "主题（图标）";
            case dev.duo.taskcore.h.m /* 10 */:
                return "小米桌面";
            default:
                return str;
        }
    }

    private static java.lang.String b(java.lang.String str) throws java.lang.Exception {
        return dev.duo.hookprobe.M.a(str);
    }

    private static dev.duo.hookprobe.C.a c(android.content.Context context) {
        java.lang.String str = context.getApplicationInfo().sourceDir;
        try {
            java.lang.String[] split = b("base64 /data/adb/lspd/config/modules_config.db 2>/dev/null; echo @@; test -f /data/adb/lspd/config/modules_config.db-wal && base64 /data/adb/lspd/config/modules_config.db-wal; echo @@; true").split("@@\n", -1);
            if (split.length < 2 || split[0].trim().isEmpty()) {
                return new dev.duo.hookprobe.C.a("LSPosed 登记的安装包", 2, "读不到 LSPosed 配置");
            }
            try {
                java.lang.String a2 = a(context, split[0], split.length > 1 ? split[1] : "");
                if (str.equals(a2)) {
                    return new dev.duo.hookprobe.C.a("LSPosed 登记的安装包", 0, "与当前安装一致");
                }
                return new dev.duo.hookprobe.C.a("LSPosed 登记的安装包", 2, a2 == null ? "LSPosed 里没有 MiDuo" : "登记的还是旧安装包。打开 LSPosed 管理器，把 MiDuo 关一次再打开");
            } catch (java.lang.Exception e2) {
                return new dev.duo.hookprobe.C.a("LSPosed 登记的安装包", 2, "读取失败（" + e2.getMessage() + "）");
            }
        } catch (dev.duo.hookprobe.M.a e3) {
            return new dev.duo.hookprobe.C.a("LSPosed 登记的安装包", 2, e3.getMessage());
        } catch (java.lang.InterruptedException e4) {
            java.lang.Thread.currentThread().interrupt();
            return new dev.duo.hookprobe.C.a("LSPosed 登记的安装包", 2, "检查已取消");
        } catch (java.util.concurrent.TimeoutException e5) {
            return new dev.duo.hookprobe.C.a("LSPosed 登记的安装包", 2, e5.getMessage() + "，请重试");
        } catch (java.lang.Exception e6) {
            return new dev.duo.hookprobe.C.a("LSPosed 登记的安装包", 2, "读取失败（" + e6.getMessage() + "）");
        }
    }

    private static dev.duo.hookprobe.C.a a() {
        try {
            java.lang.String trim = dev.duo.hookprobe.M.a("id -u").trim();
            if ("0".equals(trim)) {
                return new dev.duo.hookprobe.C.a("Root", 0, "已授权（uid=0）");
            }
            java.lang.StringBuilder append = new java.lang.StringBuilder().append("su 返回的不是 root（");
            if (trim.isEmpty()) {
                trim = "空";
            }
            return new dev.duo.hookprobe.C.a("Root", 2, append.append(trim).append("）").append("。打开 KernelSU → 超级用户（应用授权）→ 找到 MiDuo → 打开允许，回到 MiDuo 再点一次开关").toString());
        } catch (java.io.IOException e2) {
            return new dev.duo.hookprobe.C.a("Root", 2, "没有 su，或被拒绝。打开 KernelSU → 超级用户（应用授权）→ 找到 MiDuo → 打开允许，回到 MiDuo 再点一次开关");
        } catch (java.lang.InterruptedException e3) {
            java.lang.Thread.currentThread().interrupt();
            return new dev.duo.hookprobe.C.a("Root", 2, "检查已取消");
        } catch (java.util.concurrent.TimeoutException e4) {
            return new dev.duo.hookprobe.C.a("Root", 2, e4.getMessage() + "，可能在等待授权弹窗。打开 KernelSU → 超级用户（应用授权）→ 找到 MiDuo → 打开允许，回到 MiDuo 再点一次开关");
        } catch (java.lang.Exception e5) {
            java.lang.String message = e5.getMessage();
            return new dev.duo.hookprobe.C.a("Root", 2, "未授权或被拒绝" + ((message == null || message.isEmpty()) ? "" : "（" + message + "）") + "。打开 KernelSU → 超级用户（应用授权）→ 找到 MiDuo → 打开允许，回到 MiDuo 再点一次开关");
        }
    }

    private static dev.duo.hookprobe.C.a a(android.content.Context context) {
        try {
            java.lang.String b2 = b("wm density");
            if (!b2.contains("Physical density")) {
                return new dev.duo.hookprobe.C.a("屏幕密度", 2, "读不到屏幕密度");
            }
            java.util.ArrayList arrayList = new java.util.ArrayList();
            int i2 = -1;
            for (java.lang.String str : b2.split("\n")) {
                int a2 = a(str);
                if (str.contains("Physical density") && a2 > 0) {
                    i2 = a2;
                } else if (str.contains("Override density") && a2 > 0 && i2 > 0 && a2 != i2) {
                    arrayList.add("原装 " + i2 + "，现在 " + a2);
                }
            }
            return !arrayList.isEmpty() ? new dev.duo.hookprobe.C.a("屏幕密度", 2, "改过 DPI（" + java.lang.String.join("；", arrayList) + "）。请到开发者选项把最小宽度恢复默认") : new dev.duo.hookprobe.C.a("屏幕密度", 0, "没改过");
        } catch (dev.duo.hookprobe.M.a e2) {
            return new dev.duo.hookprobe.C.a("屏幕密度", 2, e2.getMessage());
        } catch (java.lang.InterruptedException e3) {
            java.lang.Thread.currentThread().interrupt();
            return new dev.duo.hookprobe.C.a("屏幕密度", 2, "检查已取消");
        } catch (java.util.concurrent.TimeoutException e4) {
            return new dev.duo.hookprobe.C.a("屏幕密度", 2, e4.getMessage() + "，请重试");
        } catch (java.lang.Exception e5) {
            return new dev.duo.hookprobe.C.a("屏幕密度", 2, "读取失败（" + e5.getMessage() + "）");
        }
    }

    private static int a(java.lang.String str) {
        java.util.regex.Matcher matcher = java.util.regex.Pattern.compile("(\\d+)").matcher(str);
        int i2 = -1;
        while (matcher.find()) {
            i2 = java.lang.Integer.parseInt(matcher.group(1));
        }
        return i2;
    }

    private static java.lang.String a(android.content.Context context, java.lang.String str) {
        try {
            java.lang.String str2 = context.getPackageManager().getPackageInfo(str, 0).versionName;
            java.util.regex.Matcher matcher = java.util.regex.Pattern.compile("\\d+(\\.\\d+){2,}").matcher(str2 == null ? "" : str2);
            return matcher.find() ? matcher.group() : java.lang.String.valueOf(str2);
        } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
            return "未安装";
        }
    }

    private static java.lang.String a(android.content.Context context, java.lang.String str, java.lang.String str2) throws java.lang.Exception {
        java.io.File file = new java.io.File(context.getCacheDir(), "mastercheck");
        if (!file.isDirectory() && !file.mkdirs()) {
            throw new java.lang.IllegalStateException("无法建立缓存目录");
        }
        java.io.File[] fileArr = {new java.io.File(file, "modules_config.db"), new java.io.File(file, "modules_config.db-wal"), new java.io.File(file, "modules_config.db-shm")};
        int i2 = 0;
        try {
            java.nio.file.Files.write(fileArr[0].toPath(), java.util.Base64.getMimeDecoder().decode(str.replaceAll("\\s", "")), new java.nio.file.OpenOption[0]);
            if (!str2.trim().isEmpty()) {
                java.nio.file.Files.write(fileArr[1].toPath(), java.util.Base64.getMimeDecoder().decode(str2.replaceAll("\\s", "")), new java.nio.file.OpenOption[0]);
            }
            android.database.sqlite.SQLiteDatabase openDatabase = android.database.sqlite.SQLiteDatabase.openDatabase(fileArr[0].getPath(), null, 0);
            try {
                android.database.Cursor rawQuery = openDatabase.rawQuery("select apk_path from modules where module_pkg_name=?", new java.lang.String[]{context.getPackageName()});
                try {
                    java.lang.String string = rawQuery.moveToFirst() ? rawQuery.getString(0) : null;
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
