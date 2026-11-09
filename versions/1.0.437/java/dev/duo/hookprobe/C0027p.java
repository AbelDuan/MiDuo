package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
final class C0027p {
    private static final java.lang.String a = "DuoLicense";
    private static final long b = 60000;
    private static final long c = 600000;
    private static dev.duo.hookprobe.S d;
    private static java.lang.String e;
    private static java.lang.String f;
    private static java.lang.String g;
    private static java.lang.String h;
    private static boolean i;
    private static android.os.Handler j;
    private static android.content.Context k;
    private static long l;
    private static boolean m;
    private static boolean n;
    private static final java.lang.Runnable o = new java.lang.Runnable() { // from class: dev.duo.hookprobe.p$$ExternalSyntheticLambda2
        @Override // java.lang.Runnable
        public final void run() {
            dev.duo.hookprobe.C0027p.c();
        }
    };

    /* renamed from: dev.duo.hookprobe.p$a */
    class a extends android.content.BroadcastReceiver {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(android.content.Intent intent) {
            dev.duo.hookprobe.C0027p.b("android.intent.action.SCREEN_ON".equals(intent.getAction()));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, final android.content.Intent intent) {
            dev.duo.hookprobe.C0027p.b("screen", new java.lang.Runnable() { // from class: dev.duo.hookprobe.p$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.C0027p.a.a(intent);
                }
            });
        }
    }

    private C0027p() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(final int i2) {
        try {
            java.lang.Object invoke = java.lang.Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", null).invoke(null, null);
            android.content.Context context = (android.content.Context) invoke.getClass().getMethod("getSystemContext", null).invoke(invoke, null);
            android.content.IntentFilter intentFilter = new android.content.IntentFilter("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            boolean isInteractive = ((android.os.PowerManager) context.getSystemService(android.os.PowerManager.class)).isInteractive();
            context.registerReceiver(new dev.duo.hookprobe.C0027p.a(), intentFilter, null, j, 4);
            k = context;
            b(isInteractive);
            dev.duo.hookprobe.C0025n.d();
            android.util.Log.i(a, "READY screen receiver attempt=" + i2);
        } catch (java.lang.Throwable th) {
            if (i2 == 1 || i2 == 90) {
                android.util.Log.w(a, "screen receiver not registered, attempt " + i2, th);
            }
            if (i2 < 90) {
                j.postDelayed(new java.lang.Runnable() { // from class: dev.duo.hookprobe.p$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.hookprobe.C0027p.a(i2);
                    }
                }, 2000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c() {
        b("tick", new java.lang.Runnable() { // from class: dev.duo.hookprobe.p$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.C0027p.b();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0031 A[Catch: all -> 0x0042, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000f, B:10:0x0017, B:13:0x0024, B:15:0x0028, B:18:0x002d, B:20:0x0031, B:24:0x003b), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003b A[Catch: all -> 0x0042, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000f, B:10:0x0017, B:13:0x0024, B:15:0x0028, B:18:0x002d, B:20:0x0031, B:24:0x003b), top: B:3:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static synchronized void d() {
        /*
            java.lang.Class<dev.duo.hookprobe.p> r0 = dev.duo.hookprobe.C0027p.class
            monitor-enter(r0)
            boolean r1 = dev.duo.hookprobe.C0027p.n     // Catch: java.lang.Throwable -> L42
            if (r1 == 0) goto L23
            dev.duo.hookprobe.S r1 = dev.duo.hookprobe.C0027p.d     // Catch: java.lang.Throwable -> L42
            boolean r1 = r1.a()     // Catch: java.lang.Throwable -> L42
            if (r1 == 0) goto L23
            dev.duo.hookprobe.S r1 = dev.duo.hookprobe.C0027p.d     // Catch: java.lang.Throwable -> L42
            boolean r1 = r1.d()     // Catch: java.lang.Throwable -> L42
            if (r1 == 0) goto L23
            dev.duo.hookprobe.S r1 = dev.duo.hookprobe.C0027p.d     // Catch: java.lang.Throwable -> L42
            long r2 = r1.b     // Catch: java.lang.Throwable -> L42
            long r4 = r1.a     // Catch: java.lang.Throwable -> L42
            int r1 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r1 >= 0) goto L23
            r1 = 1
            goto L24
        L23:
            r1 = 0
        L24:
            boolean r2 = dev.duo.hookprobe.C0027p.m     // Catch: java.lang.Throwable -> L42
            if (r1 == r2) goto L40
            android.os.Handler r2 = dev.duo.hookprobe.C0027p.j     // Catch: java.lang.Throwable -> L42
            if (r2 != 0) goto L2d
            goto L40
        L2d:
            dev.duo.hookprobe.C0027p.m = r1     // Catch: java.lang.Throwable -> L42
            if (r1 == 0) goto L3b
            java.lang.Runnable r1 = dev.duo.hookprobe.C0027p.o     // Catch: java.lang.Throwable -> L42
            r3 = 60000(0xea60, double:2.9644E-319)
            r2.postDelayed(r1, r3)     // Catch: java.lang.Throwable -> L42
            monitor-exit(r0)
            return
        L3b:
            java.lang.Runnable r1 = dev.duo.hookprobe.C0027p.o     // Catch: java.lang.Throwable -> L42
            r2.removeCallbacks(r1)     // Catch: java.lang.Throwable -> L42
        L40:
            monitor-exit(r0)
            return
        L42:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L42
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.C0027p.d():void");
    }

    private static java.lang.String c(java.lang.String str) throws java.lang.ReflectiveOperationException {
        return (java.lang.String) java.lang.Class.forName("android.os.SystemProperties").getMethod("get", java.lang.String.class, java.lang.String.class).invoke(null, str, "");
    }

    static synchronized void a(android.content.SharedPreferences sharedPreferences) {
        synchronized (dev.duo.hookprobe.C0027p.class) {
            if (d == null || j == null) {
                try {
                    java.lang.String c2 = c("ro.serialno");
                    if (c2.isEmpty()) {
                        c2 = c("ro.boot.serialno");
                    }
                    java.lang.String a2 = dev.duo.hookprobe.C0020i.a(c2);
                    e = a2;
                    java.lang.String string = sharedPreferences.getString("_global/licenseToken", null);
                    f = string;
                    g = string;
                    long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
                    if (d == null) {
                        d = new dev.duo.hookprobe.S(1800000L, sharedPreferences.getInt("_global/trialUsedSec", 0) * 1000, d(f), elapsedRealtime);
                    }
                    d.b(elapsedRealtime, dev.duo.hookprobe.P.b(sharedPreferences));
                    android.util.Log.i(a, "INIT serial=" + (c2.isEmpty() ? "EMPTY" : "ok") + " licensed=" + d.c() + " usedSec=" + (d.b / 1000) + " entitled=" + d.b());
                    try {
                        b(dev.duo.hookprobe.F.d, a2);
                    } catch (java.lang.ReflectiveOperationException e2) {
                        android.util.Log.e(a, "device property publish failed; verified license retained", e2);
                    }
                    android.os.HandlerThread handlerThread = new android.os.HandlerThread(a);
                    handlerThread.start();
                    android.os.Handler handler = new android.os.Handler(handlerThread.getLooper());
                    j = handler;
                    handler.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.p$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.hookprobe.C0027p.b(1);
                        }
                    });
                } catch (java.lang.Throwable th) {
                    android.util.Log.e(a, "license initialization incomplete; only verified licenses allowed", th);
                }
            }
        }
    }

    private static boolean d(java.lang.String str) {
        if (!a(str, h)) {
            h = str;
            i = dev.duo.hookprobe.C0020i.a(str, e);
            if (str != null) {
                android.util.Log.i(a, "TOKEN valid=" + i);
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(boolean z) {
        boolean c2;
        boolean z2;
        synchronized (dev.duo.hookprobe.C0027p.class) {
            long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
            c2 = d.c(elapsedRealtime, z);
            z2 = true;
            n = true;
            if (!z || d.b() || elapsedRealtime - l < c) {
                z2 = false;
            }
            if (z2) {
                l = elapsedRealtime;
            }
            d();
        }
        android.util.Log.i(a, "SCREEN " + (z ? "on" : "off") + (c2 ? " entitlement changed" : ""));
        if (c2 || !z || z2) {
            b(c2 ? "screen" : null);
        }
    }

    static synchronized boolean a(java.lang.String str, boolean z) {
        synchronized (dev.duo.hookprobe.C0027p.class) {
            if (d == null) {
                return e != null && d(str);
            }
            if (!a(str, g)) {
                g = str;
                f = str;
            }
            long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
            d.b(elapsedRealtime, z);
            d.a(elapsedRealtime, d(f));
            d();
            return d.c() || (n && d.b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b() {
        boolean a2;
        synchronized (dev.duo.hookprobe.C0027p.class) {
            m = false;
            a2 = d.a(android.os.SystemClock.elapsedRealtime());
        }
        b(a2 ? "tick" : null);
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(int i2) {
        b(i2 + 1);
    }

    private static android.os.Bundle a(java.lang.String str) {
        if (k == null) {
            return null;
        }
        long clearCallingIdentity = android.os.Binder.clearCallingIdentity();
        try {
            android.content.ContentProviderClient acquireUnstableContentProviderClient = k.getContentResolver().acquireUnstableContentProviderClient("dev.duo.hookprobe.config");
            try {
                if (acquireUnstableContentProviderClient == null) {
                    android.util.Log.w(a, "MiDuo app provider not available");
                    if (acquireUnstableContentProviderClient != null) {
                        acquireUnstableContentProviderClient.close();
                    }
                    return null;
                }
                android.os.Bundle call = acquireUnstableContentProviderClient.call("trialTick", str, null);
                if (call != null && call.containsKey("error")) {
                    android.util.Log.w(a, "trialTick error " + call.getString("error"));
                }
                acquireUnstableContentProviderClient.close();
                return call;
            } finally {
            }
        } catch (java.lang.Throwable th) {
            try {
                android.util.Log.w(a, "trialTick failed", th);
                return null;
            } finally {
                android.os.Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(java.lang.String str, java.lang.Runnable runnable) {
        try {
            runnable.run();
        } catch (java.lang.Throwable th) {
            android.util.Log.e(a, str + " failed", th);
        }
    }

    private static void b(java.lang.String str) {
        int i2;
        synchronized (dev.duo.hookprobe.C0027p.class) {
            i2 = (int) (d.b / 1000);
        }
        android.os.Bundle a2 = a(java.lang.String.valueOf(i2));
        boolean z = str != null;
        if (a2 != null && !a2.containsKey("error")) {
            synchronized (dev.duo.hookprobe.C0027p.class) {
                long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
                boolean a3 = d.a(elapsedRealtime, a2.getInt("trialUsedSec", 0) * 1000) | z;
                java.lang.String string = a2.getString("token");
                f = string;
                z = a3 | d.a(elapsedRealtime, d(string));
            }
        }
        if (z) {
            synchronized (dev.duo.hookprobe.C0027p.class) {
                java.lang.StringBuilder append = new java.lang.StringBuilder().append("ENTITLEMENT ").append(d.b()).append(" licensed=").append(d.c()).append(" usedSec=").append(d.b / 1000).append(" by=");
                if (str == null) {
                    str = "app";
                }
                android.util.Log.i(a, append.append(str).toString());
            }
            dev.duo.hookprobe.C0025n.d();
        }
    }

    private static void b(java.lang.String str, java.lang.String str2) throws java.lang.ReflectiveOperationException {
        java.lang.Class.forName("android.os.SystemProperties").getMethod("set", java.lang.String.class, java.lang.String.class).invoke(null, str, str2);
    }

    private static boolean a(java.lang.String str, java.lang.String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equals(str2);
    }
}
