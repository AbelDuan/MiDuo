package dev.duo.hookprobe;

import android.content.Context;
import android.os.Process;
import dev.duo.hookprobe.C;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;

/* renamed from: dev.duo.hookprobe.g, reason: case insensitive filesystem */
/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class g {
    private static final String a = "com.lsposed.miduo";
    private static final int b = 20;

    private g() {
    }

    private static C.a a(Context context) {
        int size = context.getPackageManager().getInstalledApplications(0).size();
        return size > b ? new C.a("应用列表", 0, "能读到 " + size + " 个应用") : new C.a("应用列表", 1, "只读到 " + size + " 个应用，App 页会不全。到 设置 → 应用设置 → 应用管理 → MiDuo → 权限，允许获取应用列表");
    }

    static List<C.a> b(Context context) {
        int myUid = Process.myUid() / 100000;
        ArrayList arrayList = new ArrayList();
        arrayList.add(a(context));
        arrayList.add(a(context, myUid, "android.permission.READ_CALENDAR", "日历权限", "信息组件显示日程"));
        arrayList.add(a(context, myUid, "android.permission.POST_NOTIFICATIONS", "通知权限", "问题反馈等提醒"));
        arrayList.add(a(myUid, 10017, "桌面快捷方式（MIUI 10017）", "把相册、信息组件添加到桌面"));
        arrayList.add(a(myUid, 10020, "锁屏显示（MIUI 10020）", "帐篷钟面在锁屏上显示"));
        return arrayList;
    }

    private static C.a a(Context context, int i, String str, String str2, String str3) {
        String message;
        if (context.checkSelfPermission(str) == 0) {
            return new C.a(str2, 0, "已允许");
        }
        try {
            M.a("pm grant --user " + i + " com.lsposed.miduo " + str);
            message = null;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            message = "检查已取消";
        } catch (TimeoutException e2) {
            message = e2.getMessage();
        } catch (Exception e3) {
            message = e3.getMessage();
        }
        if (context.checkSelfPermission(str) == 0) {
            return new C.a(str2, 0, "已自动允许");
        }
        return new C.a(str2, 1, "没有生效" + ((message == null || message.isEmpty()) ? "" : "（" + message + "）") + "，" + str3 + "不可用。可到 设置 → 应用管理 → MiDuo → 权限 手动允许；不影响打开");
    }

    private static C.a a(int i, int i2, String str, String str2) {
        String message;
        String str3 = "--user " + i + " com.lsposed.miduo " + i2;
        String str4 = "";
        try {
            str4 = M.a("cmd appops get " + str3 + " | grep -q ': allow' || cmd appops set " + str3 + " allow; cmd appops get " + str3);
            message = null;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            message = "检查已取消";
        } catch (TimeoutException e2) {
            message = e2.getMessage();
        } catch (Exception e3) {
            message = e3.getMessage();
        }
        if (message == null && Pattern.compile("(?m)^\\s*MIUIOP\\(" + i2 + "\\): allow(?:;[^\\r\\n]*)?\\s*$").matcher(str4).find()) {
            return new C.a(str, 0, "已允许");
        }
        StringBuilder append = new StringBuilder().append("没有生效（");
        if (message == null) {
            message = str4.trim().isEmpty() ? "读不到" : str4.trim();
        }
        return new C.a(str, 1, append.append(message).append("），").append(str2).append("不可用；不影响打开").toString());
    }
}
