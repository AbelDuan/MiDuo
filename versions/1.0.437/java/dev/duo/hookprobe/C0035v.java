package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
final class C0035v {
    C0035v() {
    }

    static java.lang.String a(android.content.Context context) {
        java.lang.String str = android.os.Build.VERSION.INCREMENTAL;
        if (!"OS4.0.22.0.XPNCNXM".equals(str) && !"OS4.0.21.0.XPNCNXM".equals(str) && !"OS4.0.26.0.XPNCNXM".equals(str)) {
            return "当前系统版本不在开合动画支持范围";
        }
        try {
            if (context.getPackageManager().getPackageInfo("com.miui.home", 0).getLongVersionCode() != 801026325) {
                return "当前小米桌面版本不在开合动画支持范围";
            }
            return null;
        } catch (android.content.pm.PackageManager.NameNotFoundException e) {
            return "未找到小米桌面";
        }
    }
}
