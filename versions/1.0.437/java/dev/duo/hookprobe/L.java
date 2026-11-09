package dev.duo.hookprobe;

/* loaded from: classes.dex */
final class L {
    private static volatile io.github.libxposed.service.XposedService a;
    private static boolean b;
    private static volatile android.content.Context c;
    static final android.net.Uri d = android.net.Uri.parse("content://dev.duo.hookprobe.config/duoState");
    static final android.net.Uri e = android.net.Uri.parse("content://dev.duo.hookprobe.config/duoRail");
    static final android.net.Uri f = android.net.Uri.parse("content://dev.duo.hookprobe.config/rotationSuggest");
    static final android.net.Uri g = android.net.Uri.parse("content://dev.duo.hookprobe.config/standbyClock");
    static final android.net.Uri h = android.net.Uri.parse("content://dev.duo.hookprobe.config/notificationIcons");
    static final android.net.Uri i = android.net.Uri.parse("content://dev.duo.hookprobe.config/searchButton");
    static final android.net.Uri j = android.net.Uri.parse("content://dev.duo.hookprobe.config/pickButton");
    static final android.net.Uri k = android.net.Uri.parse("content://dev.duo.hookprobe.config/foldSplit");
    static final android.net.Uri l = android.net.Uri.parse("content://dev.duo.hookprobe.config/workbench");
    static final android.net.Uri m = android.net.Uri.parse("content://dev.duo.hookprobe.config/statusStyles");
    static final android.net.Uri n = android.net.Uri.parse("content://dev.duo.hookprobe.config/railCustom");
    static final android.content.SharedPreferences.OnSharedPreferenceChangeListener o = new android.content.SharedPreferences.OnSharedPreferenceChangeListener() { // from class: dev.duo.hookprobe.L$$ExternalSyntheticLambda0
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
            dev.duo.hookprobe.L.a(sharedPreferences, str);
        }
    };

    class a implements io.github.libxposed.service.XposedServiceHelper.OnServiceListener {
        a() {
        }

        @Override // io.github.libxposed.service.XposedServiceHelper.OnServiceListener
        public void onServiceBind(io.github.libxposed.service.XposedService xposedService) {
            io.github.libxposed.service.XposedService unused = dev.duo.hookprobe.L.a = xposedService;
            if (dev.duo.hookprobe.L.c != null) {
                xposedService.getRemotePreferences("duo_top").registerOnSharedPreferenceChangeListener(dev.duo.hookprobe.L.o);
                dev.duo.hookprobe.L.c.getContentResolver().notifyChange(dev.duo.hookprobe.L.g, null);
                dev.duo.hookprobe.L.c.getContentResolver().notifyChange(dev.duo.hookprobe.L.i, null);
                dev.duo.hookprobe.L.c.getContentResolver().notifyChange(dev.duo.hookprobe.L.n, null);
                dev.duo.hookprobe.L.c.getContentResolver().notifyChange(dev.duo.hookprobe.L.f, null);
                dev.duo.hookprobe.L.c.getContentResolver().notifyChange(dev.duo.hookprobe.L.h, null);
                dev.duo.hookprobe.L.c.getContentResolver().notifyChange(dev.duo.hookprobe.L.j, null);
                dev.duo.hookprobe.L.c.getContentResolver().notifyChange(dev.duo.hookprobe.L.k, null);
                dev.duo.hookprobe.L.c.getContentResolver().notifyChange(dev.duo.hookprobe.L.m, null);
                dev.duo.hookprobe.L.c.getContentResolver().notifyChange(dev.duo.hookprobe.L.l, null);
                try {
                    dev.duo.hookprobe.y.a(dev.duo.hookprobe.L.c, new dev.duo.hookprobe.C0026o(xposedService));
                } catch (java.lang.RuntimeException e) {
                    android.util.Log.e("MiDuoGuide", "Master switch default not settled", e);
                }
            }
        }

        @Override // io.github.libxposed.service.XposedServiceHelper.OnServiceListener
        public void onServiceDied(io.github.libxposed.service.XposedService xposedService) {
            if (dev.duo.hookprobe.L.a == xposedService) {
                io.github.libxposed.service.XposedService unused = dev.duo.hookprobe.L.a = null;
            }
        }
    }

    private L() {
    }

    static io.github.libxposed.service.XposedService c() {
        return a;
    }

    static synchronized void d() {
        synchronized (dev.duo.hookprobe.L.class) {
            if (b) {
                return;
            }
            b = true;
            io.github.libxposed.service.XposedServiceHelper.registerListener(new dev.duo.hookprobe.L.a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
        if (str == null || str.endsWith("/enabled") || dev.duo.hookprobe.P.h(str) || dev.duo.hookprobe.P.j(str) || "_global/master".equals(str) || "_global/licenseToken".equals(str) || dev.duo.hookprobe.P.r(str) || dev.duo.hookprobe.P.u(str) || dev.duo.hookprobe.P.c(str) || dev.duo.hookprobe.P.n(str)) {
            c.getContentResolver().notifyChange(d, null);
            java.lang.String o2 = dev.duo.hookprobe.P.o(str);
            c.getContentResolver().notifyChange(o2 == null ? e : e.buildUpon().appendPath(o2).build(), null);
        }
        if (str == null || "_global/rotationSuggest".equals(str) || "_global/rotationPortraitRight".equals(str) || "_global/rotationLandscapeRight".equals(str)) {
            c.getContentResolver().notifyChange(f, null);
        }
        if (!dev.duo.hookprobe.C0026o.f && (str == null || "_global/standbyClock".equals(str) || "_global/master".equals(str))) {
            c.getContentResolver().notifyChange(g, null);
        }
        if (str == null || "_global/notificationIcons".equals(str)) {
            c.getContentResolver().notifyChange(h, null);
        }
        if (str == null || "_global/searchButton".equals(str)) {
            c.getContentResolver().notifyChange(i, null);
        }
        if (str == null || "_global/pickButton".equals(str)) {
            c.getContentResolver().notifyChange(j, null);
        }
        if (str == null || "_global/foldSplit".equals(str) || "_global/foldNudge".equals(str)) {
            c.getContentResolver().notifyChange(k, null);
        }
        if (str == null || "_global/workbench".equals(str)) {
            c.getContentResolver().notifyChange(l, null);
        }
        if (str == null || "_global/cellularStyle".equals(str) || "_global/statusThin".equals(str) || "_global/percentTop".equals(str) || str.startsWith("_global/statusDy/")) {
            c.getContentResolver().notifyChange(m, null);
        }
        if (str == null || "_global/railCustom".equals(str) || "_global/railSidebarApps".equals(str) || "_global/workbenchRail".equals(str) || "_global/railSidebarFreeform".equals(str) || "_global/railSidebarKeyEnd".equals(str)) {
            c.getContentResolver().notifyChange(n, null);
        }
        if (str == null || !str.endsWith("/pageColors/_revision")) {
            return;
        }
        c.getContentResolver().notifyChange(android.net.Uri.parse("content://dev.duo.hookprobe.config/pageTones/" + str.substring(0, str.length() - 21)), null);
    }

    static synchronized void a(android.content.Context context) {
        synchronized (dev.duo.hookprobe.L.class) {
            android.content.Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            c = context;
            d();
        }
    }

    static io.github.libxposed.service.XposedService a(long j2) {
        d();
        long uptimeMillis = android.os.SystemClock.uptimeMillis() + j2;
        while (a == null && android.os.SystemClock.uptimeMillis() < uptimeMillis) {
            android.os.SystemClock.sleep(50L);
        }
        return a;
    }
}
