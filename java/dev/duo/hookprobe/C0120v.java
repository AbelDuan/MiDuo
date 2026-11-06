package dev.duo.hookprobe;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;

/* renamed from: dev.duo.hookprobe.v */
/* loaded from: classes.dex */
final class C0120v {
    C0120v() {
    }

    /* renamed from: a */
    static String m2004a(Context context) {
        String str = Build.VERSION.INCREMENTAL;
        if (!"OS4.0.22.0.XPNCNXM".equals(str) && !"OS4.0.21.0.XPNCNXM".equals(str) && !"OS4.0.26.0.XPNCNXM".equals(str)) {
            return "当前系统版本不在开合动画支持范围";
        }
        try {
            if (context.getPackageManager().getPackageInfo("com.miui.home", 0).getLongVersionCode() != 801026325) {
                return "当前小米桌面版本不在开合动画支持范围";
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            return "未找到小米桌面";
        }
    }
}
