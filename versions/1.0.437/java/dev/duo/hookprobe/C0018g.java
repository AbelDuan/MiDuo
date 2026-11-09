package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
final class C0018g {
    private static final java.lang.String a = "dev.duo.hookprobe";
    private static final int b = 20;

    private C0018g() {
    }

    private static dev.duo.hookprobe.C.a a(android.content.Context context) {
        int size = context.getPackageManager().getInstalledApplications(0).size();
        return size > b ? new dev.duo.hookprobe.C.a("应用列表", 0, "能读到 " + size + " 个应用") : new dev.duo.hookprobe.C.a("应用列表", 1, "只读到 " + size + " 个应用，App 页会不全。到 设置 → 应用设置 → 应用管理 → MiDuo → 权限，允许获取应用列表");
    }

    static java.util.List<dev.duo.hookprobe.C.a> b(android.content.Context context) {
        int myUid = android.os.Process.myUid() / 100000;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        arrayList.add(a(context));
        arrayList.add(a(context, myUid, "android.permission.READ_CALENDAR", "日历权限", "信息组件显示日程"));
        arrayList.add(a(context, myUid, "android.permission.POST_NOTIFICATIONS", "通知权限", "问题反馈等提醒"));
        arrayList.add(a(myUid, 10017, "桌面快捷方式（MIUI 10017）", "把相册、信息组件添加到桌面"));
        arrayList.add(a(myUid, 10020, "锁屏显示（MIUI 10020）", "帐篷钟面在锁屏上显示"));
        return arrayList;
    }

    private static dev.duo.hookprobe.C.a a(android.content.Context context, int i, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        java.lang.String message;
        if (context.checkSelfPermission(str) == 0) {
            return new dev.duo.hookprobe.C.a(str2, 0, "已允许");
        }
        try {
            dev.duo.hookprobe.M.a("pm grant --user " + i + " dev.duo.hookprobe " + str);
            message = null;
        } catch (java.lang.InterruptedException e) {
            java.lang.Thread.currentThread().interrupt();
            message = "检查已取消";
        } catch (java.util.concurrent.TimeoutException e2) {
            message = e2.getMessage();
        } catch (java.lang.Exception e3) {
            message = e3.getMessage();
        }
        if (context.checkSelfPermission(str) == 0) {
            return new dev.duo.hookprobe.C.a(str2, 0, "已自动允许");
        }
        return new dev.duo.hookprobe.C.a(str2, 1, "没有生效" + ((message == null || message.isEmpty()) ? "" : "（" + message + "）") + "，" + str3 + "不可用。可到 设置 → 应用管理 → MiDuo → 权限 手动允许；不影响打开");
    }

    private static dev.duo.hookprobe.C.a a(int i, int i2, java.lang.String str, java.lang.String str2) {
        java.lang.String message;
        java.lang.String str3 = "--user " + i + " dev.duo.hookprobe " + i2;
        java.lang.String str4 = "";
        try {
            str4 = dev.duo.hookprobe.M.a("cmd appops get " + str3 + " | grep -q ': allow' || cmd appops set " + str3 + " allow; cmd appops get " + str3);
            message = null;
        } catch (java.lang.InterruptedException e) {
            java.lang.Thread.currentThread().interrupt();
            message = "检查已取消";
        } catch (java.util.concurrent.TimeoutException e2) {
            message = e2.getMessage();
        } catch (java.lang.Exception e3) {
            message = e3.getMessage();
        }
        if (message == null && java.util.regex.Pattern.compile("(?m)^\\s*MIUIOP\\(" + i2 + "\\): allow(?:;[^\\r\\n]*)?\\s*$").matcher(str4).find()) {
            return new dev.duo.hookprobe.C.a(str, 0, "已允许");
        }
        java.lang.StringBuilder append = new java.lang.StringBuilder().append("没有生效（");
        if (message == null) {
            message = str4.trim().isEmpty() ? "读不到" : str4.trim();
        }
        return new dev.duo.hookprobe.C.a(str, 1, append.append(message).append("），").append(str2).append("不可用；不影响打开").toString());
    }
}
