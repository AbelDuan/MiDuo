package dev.duo.hookprobe;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.SystemClock;
import android.util.Log;
import io.github.libxposed.service.XposedService;
import io.github.libxposed.service.XposedServiceHelper;

/* renamed from: dev.duo.hookprobe.L */
/* loaded from: classes.dex */
final class C0056L {

    /* renamed from: a */
    private static volatile XposedService f939a;

    /* renamed from: b */
    private static boolean f940b;

    /* renamed from: c */
    private static volatile Context f941c;

    /* renamed from: d */
    static final Uri f942d = Uri.parse("content://dev.duo.hookprobe.config/duoState");

    /* renamed from: e */
    static final Uri f943e = Uri.parse("content://dev.duo.hookprobe.config/duoRail");

    /* renamed from: f */
    static final Uri f944f = Uri.parse("content://dev.duo.hookprobe.config/rotationSuggest");

    /* renamed from: g */
    static final Uri f945g = Uri.parse("content://dev.duo.hookprobe.config/standbyClock");

    /* renamed from: h */
    static final Uri f946h = Uri.parse("content://dev.duo.hookprobe.config/notificationIcons");

    /* renamed from: i */
    static final Uri f947i = Uri.parse("content://dev.duo.hookprobe.config/searchButton");

    /* renamed from: j */
    static final Uri f948j = Uri.parse("content://dev.duo.hookprobe.config/pickButton");

    /* renamed from: k */
    static final Uri f949k = Uri.parse("content://dev.duo.hookprobe.config/foldSplit");

    /* renamed from: l */
    static final Uri f950l = Uri.parse("content://dev.duo.hookprobe.config/workbench");

    /* renamed from: m */
    static final Uri f951m = Uri.parse("content://dev.duo.hookprobe.config/statusStyles");

    /* renamed from: n */
    static final Uri f952n = Uri.parse("content://dev.duo.hookprobe.config/railCustom");

    /* renamed from: o */
    static final Uri f953o = Uri.parse("content://dev.duo.hookprobe.config/iosNc");

    /* renamed from: p */
    static final SharedPreferences.OnSharedPreferenceChangeListener f954p = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: dev.duo.hookprobe.L$$ExternalSyntheticLambda0
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            C0056L.m973a(sharedPreferences, str);
        }
    };

    /* renamed from: dev.duo.hookprobe.L$a */
    class a implements XposedServiceHelper.OnServiceListener {
        a() {
        }

        @Override // io.github.libxposed.service.XposedServiceHelper.OnServiceListener
        public void onServiceBind(XposedService xposedService) {
            XposedService unused = C0056L.f939a = xposedService;
            if (C0056L.f941c != null) {
                xposedService.getRemotePreferences("duo_top").registerOnSharedPreferenceChangeListener(C0056L.f954p);
                C0056L.f941c.getContentResolver().notifyChange(C0056L.f945g, null);
                C0056L.f941c.getContentResolver().notifyChange(C0056L.f947i, null);
                C0056L.f941c.getContentResolver().notifyChange(C0056L.f952n, null);
                C0056L.f941c.getContentResolver().notifyChange(C0056L.f944f, null);
                C0056L.f941c.getContentResolver().notifyChange(C0056L.f946h, null);
                C0056L.f941c.getContentResolver().notifyChange(C0056L.f948j, null);
                C0056L.f941c.getContentResolver().notifyChange(C0056L.f949k, null);
                C0056L.f941c.getContentResolver().notifyChange(C0056L.f951m, null);
                C0056L.f941c.getContentResolver().notifyChange(C0056L.f950l, null);
                C0056L.f941c.getContentResolver().notifyChange(C0056L.f953o, null);
                try {
                    C0123y.m2040a(C0056L.f941c, new C0113o(xposedService));
                } catch (RuntimeException e) {
                    Log.e("MiDuoGuide", "Master switch default not settled", e);
                }
            }
        }

        @Override // io.github.libxposed.service.XposedServiceHelper.OnServiceListener
        public void onServiceDied(XposedService xposedService) {
            if (C0056L.f939a == xposedService) {
                XposedService unused = C0056L.f939a = null;
            }
        }
    }

    private C0056L() {
    }

    /* renamed from: c */
    static XposedService m975c() {
        return f939a;
    }

    /* renamed from: d */
    static synchronized void m976d() {
        synchronized (C0056L.class) {
            if (f940b) {
                return;
            }
            f940b = true;
            XposedServiceHelper.registerListener(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m973a(SharedPreferences sharedPreferences, String str) {
        if (str == null || str.endsWith("/enabled") || C0071P.m1248h(str) || C0071P.m1251j(str) || "_global/master".equals(str) || "_global/licenseToken".equals(str) || C0071P.m1259r(str) || C0071P.m1262u(str) || C0071P.m1233c(str) || C0071P.m1255n(str)) {
            f941c.getContentResolver().notifyChange(f942d, null);
            String m1256o = C0071P.m1256o(str);
            f941c.getContentResolver().notifyChange(m1256o == null ? f943e : f943e.buildUpon().appendPath(m1256o).build(), null);
        }
        if (str == null || "_global/rotationSuggest".equals(str) || "_global/rotationPortraitRight".equals(str) || "_global/rotationLandscapeRight".equals(str)) {
            f941c.getContentResolver().notifyChange(f944f, null);
        }
        if (!C0113o.f1683i && (str == null || "_global/standbyClock".equals(str) || "_global/master".equals(str))) {
            f941c.getContentResolver().notifyChange(f945g, null);
        }
        if (str == null || "_global/notificationIcons".equals(str)) {
            f941c.getContentResolver().notifyChange(f946h, null);
        }
        if (str == null || "_global/searchButton".equals(str)) {
            f941c.getContentResolver().notifyChange(f947i, null);
        }
        if (str == null || "_global/pickButton".equals(str)) {
            f941c.getContentResolver().notifyChange(f948j, null);
        }
        if (str == null || "_global/foldSplit".equals(str) || "_global/foldNudge".equals(str)) {
            f941c.getContentResolver().notifyChange(f949k, null);
        }
        if (str == null || "_global/workbench".equals(str)) {
            f941c.getContentResolver().notifyChange(f950l, null);
        }
        if (str == null || "_global/cellularStyle".equals(str) || "_global/statusThin".equals(str) || "_global/percentTop".equals(str) || str.startsWith("_global/statusDy/")) {
            f941c.getContentResolver().notifyChange(f951m, null);
        }
        if (str == null || "_global/railCustom".equals(str) || "_global/railSidebarApps".equals(str) || "_global/railSidebarFreeform".equals(str) || "_global/railSidebarKeyEnd".equals(str)) {
            f941c.getContentResolver().notifyChange(f952n, null);
        }
        if (str == null || str.startsWith("ios_notification_")) {
            f941c.getContentResolver().notifyChange(f953o, null);
        }
        if (str == null || !str.endsWith("/pageColors/_revision")) {
            return;
        }
        f941c.getContentResolver().notifyChange(Uri.parse("content://dev.duo.hookprobe.config/pageTones/" + str.substring(0, str.length() - 21)), null);
    }

    /* renamed from: a */
    static synchronized void m972a(Context context) {
        synchronized (C0056L.class) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            f941c = context;
            m976d();
        }
    }

    /* renamed from: a */
    static XposedService m970a(long j) {
        m976d();
        long uptimeMillis = SystemClock.uptimeMillis() + j;
        while (f939a == null && SystemClock.uptimeMillis() < uptimeMillis) {
            SystemClock.sleep(50L);
        }
        return f939a;
    }
}
