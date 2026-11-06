package dev.duo.hookprobe;

import android.content.Context;
import android.os.Process;
import dev.duo.hookprobe.C0044C;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;

/* renamed from: dev.duo.hookprobe.g */
/* loaded from: classes.dex */
final class C0105g {

    /* renamed from: a */
    private static final String f1613a = "dev.duo.hookprobe";

    /* renamed from: b */
    private static final int f1614b = 20;

    private C0105g() {
    }

    /* renamed from: a */
    private static C0044C.a m1693a(Context context) {
        int size = context.getPackageManager().getInstalledApplications(0).size();
        return size > f1614b ? new C0044C.a("应用列表", 0, "能读到 " + size + " 个应用") : new C0044C.a("应用列表", 1, "只读到 " + size + " 个应用，App 页会不全。到 设置 → 应用设置 → 应用管理 → MiDuo → 权限，允许获取应用列表");
    }

    /* renamed from: b */
    static List<C0044C.a> m1695b(Context context) {
        int myUid = Process.myUid() / 100000;
        ArrayList arrayList = new ArrayList();
        arrayList.add(m1693a(context));
        arrayList.add(m1694a(context, myUid, "android.permission.READ_CALENDAR", "日历权限", "信息组件显示日程"));
        arrayList.add(m1694a(context, myUid, "android.permission.POST_NOTIFICATIONS", "通知权限", "问题反馈等提醒"));
        arrayList.add(m1692a(myUid, 10017, "桌面快捷方式（MIUI 10017）", "把相册、信息组件添加到桌面"));
        arrayList.add(m1692a(myUid, 10020, "锁屏显示（MIUI 10020）", "帐篷钟面在锁屏上显示"));
        return arrayList;
    }

    /* renamed from: a */
    private static C0044C.a m1694a(Context context, int i, String str, String str2, String str3) {
        String message;
        if (context.checkSelfPermission(str) == 0) {
            return new C0044C.a(str2, 0, "已允许");
        }
        try {
            C0057M.m977a("pm grant --user " + i + " dev.duo.hookprobe " + str);
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
            return new C0044C.a(str2, 0, "已自动允许");
        }
        return new C0044C.a(str2, 1, "没有生效" + ((message == null || message.isEmpty()) ? "" : "（" + message + "）") + "，" + str3 + "不可用。可到 设置 → 应用管理 → MiDuo → 权限 手动允许；不影响打开");
    }

    /* renamed from: a */
    private static C0044C.a m1692a(int i, int i2, String str, String str2) {
        String message;
        String str3 = "--user " + i + " dev.duo.hookprobe " + i2;
        String str4 = "";
        try {
            str4 = C0057M.m977a("cmd appops get " + str3 + " | grep -q ': allow' || cmd appops set " + str3 + " allow; cmd appops get " + str3);
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
            return new C0044C.a(str, 0, "已允许");
        }
        StringBuilder append = new StringBuilder().append("没有生效（");
        if (message == null) {
            message = str4.trim().isEmpty() ? "读不到" : str4.trim();
        }
        return new C0044C.a(str, 1, append.append(message).append("），").append(str2).append("不可用；不影响打开").toString());
    }
}
