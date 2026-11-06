package dev.duo.hookprobe;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.SystemClock;
import android.util.Log;
import io.github.libxposed.service.XposedService;
import io.github.libxposed.service.XposedServiceHelper;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class L {
    private static volatile XposedService a;
    private static boolean b;
    private static volatile Context c;
    static final Uri d = Uri.parse("content://com.lsposed.miduo.config/duoState");
    static final Uri e = Uri.parse("content://com.lsposed.miduo.config/duoRail");
    static final Uri f = Uri.parse("content://com.lsposed.miduo.config/rotationSuggest");
    static final Uri g = Uri.parse("content://com.lsposed.miduo.config/standbyClock");
    static final Uri h = Uri.parse("content://com.lsposed.miduo.config/notificationIcons");
    static final Uri i = Uri.parse("content://com.lsposed.miduo.config/searchButton");
    static final Uri j = Uri.parse("content://com.lsposed.miduo.config/pickButton");
    static final Uri k = Uri.parse("content://com.lsposed.miduo.config/foldSplit");
    static final Uri l = Uri.parse("content://com.lsposed.miduo.config/workbench");
    static final Uri m = Uri.parse("content://com.lsposed.miduo.config/statusStyles");
    static final Uri n = Uri.parse("content://com.lsposed.miduo.config/railCustom");
    static final Uri o = Uri.parse("content://com.lsposed.miduo.config/iosNc");
    static final SharedPreferences.OnSharedPreferenceChangeListener p = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: dev.duo.hookprobe.L$$ExternalSyntheticLambda0
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            L.a(sharedPreferences, str);
        }
    };

    class a implements XposedServiceHelper.OnServiceListener {
        a() {
        }

        @Override // io.github.libxposed.service.XposedServiceHelper.OnServiceListener
        public void onServiceBind(XposedService xposedService) {
            XposedService unused = L.a = xposedService;
            if (L.c != null) {
                xposedService.getRemotePreferences("duo_top").registerOnSharedPreferenceChangeListener(dev.duo.hookprobe.L.p);
                L.c.getContentResolver().notifyChange(L.g, null);
                L.c.getContentResolver().notifyChange(dev.duo.hookprobe.L.i, null);
                L.c.getContentResolver().notifyChange(L.n, null);
                L.c.getContentResolver().notifyChange(L.f, null);
                L.c.getContentResolver().notifyChange(L.h, null);
                L.c.getContentResolver().notifyChange(L.j, null);
                L.c.getContentResolver().notifyChange(L.k, null);
                L.c.getContentResolver().notifyChange(L.m, null);
                L.c.getContentResolver().notifyChange(L.l, null);
                L.c.getContentResolver().notifyChange(L.o, null);
                try {
                    Context unused2 = L.c;
                    new o(xposedService);
                } catch (RuntimeException e) {
                    Log.e("MiDuoGuide", "Master switch default not settled", e);
                }
            }
        }

        @Override // io.github.libxposed.service.XposedServiceHelper.OnServiceListener
        public void onServiceDied(XposedService xposedService) {
            if (L.a == xposedService) {
                XposedService unused = L.a = null;
            }
        }
    }

    private L() {
    }

    static XposedService c() {
        return a;
    }

    static synchronized void d() {
        synchronized (dev.duo.hookprobe.L.class) {
            if (b) {
                return;
            }
            b = true;
            XposedServiceHelper.registerListener(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(SharedPreferences sharedPreferences, String str) {
        if (str == null || str.endsWith("/enabled") || P.h(str) || P.j(str) || "_global/master".equals(str) || "_global/licenseToken".equals(str) || P.r(str) || P.u(str) || P.c(str) || P.n(str)) {
            dev.duo.hookprobe.c.getContentResolver().notifyChange(d, null);
            String o2 = P.o(str);
            dev.duo.hookprobe.c.getContentResolver().notifyChange(o2 == null ? e : dev.duo.hookprobe.e.buildUpon().appendPath(o2).build(), null);
        }
        if (str == null || "_global/rotationSuggest".equals(str) || "_global/rotationPortraitRight".equals(str) || "_global/rotationLandscapeRight".equals(str)) {
            dev.duo.hookprobe.c.getContentResolver().notifyChange(f, null);
        }
        if (!dev.duo.hookprobe.o.i && (str == null || "_global/standbyClock".equals(str) || "_global/master".equals(str))) {
            dev.duo.hookprobe.c.getContentResolver().notifyChange(g, null);
        }
        if (str == null || "_global/notificationIcons".equals(str)) {
            dev.duo.hookprobe.c.getContentResolver().notifyChange(h, null);
        }
        if (str == null || "_global/searchButton".equals(str)) {
            dev.duo.hookprobe.c.getContentResolver().notifyChange(i, null);
        }
        if (str == null || "_global/pickButton".equals(str)) {
            dev.duo.hookprobe.c.getContentResolver().notifyChange(j, null);
        }
        if (str == null || "_global/foldSplit".equals(str) || "_global/foldNudge".equals(str)) {
            dev.duo.hookprobe.c.getContentResolver().notifyChange(k, null);
        }
        if (str == null || "_global/workbench".equals(str)) {
            dev.duo.hookprobe.c.getContentResolver().notifyChange(l, null);
        }
        if (str == null || "_global/cellularStyle".equals(str) || "_global/statusThin".equals(str) || "_global/percentTop".equals(str) || str.startsWith("_global/statusDy/")) {
            dev.duo.hookprobe.c.getContentResolver().notifyChange(m, null);
        }
        if (str == null || "_global/railCustom".equals(str) || "_global/railSidebarApps".equals(str) || "_global/railSidebarFreeform".equals(str) || "_global/railSidebarKeyEnd".equals(str)) {
            dev.duo.hookprobe.c.getContentResolver().notifyChange(n, null);
        }
        if (str == null || str.startsWith("ios_notification_")) {
            dev.duo.hookprobe.c.getContentResolver().notifyChange(o, null);
        }
        if (str == null || !str.endsWith("/pageColors/_revision")) {
            return;
        }
        dev.duo.hookprobe.c.getContentResolver().notifyChange(Uri.parse("content://com.lsposed.miduo.config/pageTones/" + str.substring(0, str.length() - 21)), null);
    }

    static synchronized void a(Context context) {
        synchronized (dev.duo.hookprobe.L.class) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            c = context;
            d();
        }
    }

    static XposedService a(long j2) {
        d();
        long uptimeMillis = SystemClock.uptimeMillis() + j2;
        while (a == null && SystemClock.uptimeMillis() < uptimeMillis) {
            SystemClock.sleep(50L);
        }
        return a;
    }
}
