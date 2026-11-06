package dev.duo.hookprobe;

import android.content.BroadcastReceiver;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;
import dev.duo.hookprobe.C0114p;

/* renamed from: dev.duo.hookprobe.p */
/* loaded from: classes.dex */
final class C0114p {

    /* renamed from: a */
    private static final String f1685a = "DuoLicense";

    /* renamed from: b */
    private static final long f1686b = 60000;

    /* renamed from: c */
    private static final long f1687c = 600000;

    /* renamed from: d */
    private static C0083S f1688d;

    /* renamed from: e */
    private static String f1689e;

    /* renamed from: f */
    private static String f1690f;

    /* renamed from: g */
    private static String f1691g;

    /* renamed from: h */
    private static String f1692h;

    /* renamed from: i */
    private static boolean f1693i;

    /* renamed from: j */
    private static Handler f1694j;

    /* renamed from: k */
    private static Context f1695k;

    /* renamed from: l */
    private static long f1696l;

    /* renamed from: m */
    private static boolean f1697m;

    /* renamed from: n */
    private static boolean f1698n;

    /* renamed from: o */
    private static final Runnable f1699o = new Runnable() { // from class: dev.duo.hookprobe.p$$ExternalSyntheticLambda2
        @Override // java.lang.Runnable
        public final void run() {
            C0114p.m1884c();
        }
    };

    /* renamed from: dev.duo.hookprobe.p$a */
    class a extends BroadcastReceiver {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public static /* synthetic */ void m1887a(Intent intent) {
            C0114p.m1882b("android.intent.action.SCREEN_ON".equals(intent.getAction()));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, final Intent intent) {
            C0114p.m1880b("screen", new Runnable() { // from class: dev.duo.hookprobe.p$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C0114p.a.m1887a(intent);
                }
            });
        }
    }

    private C0114p() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m1878b(final int i) {
        try {
            Object invoke = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", null).invoke(null, null);
            Context context = (Context) invoke.getClass().getMethod("getSystemContext", null).invoke(invoke, null);
            IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            boolean isInteractive = ((PowerManager) context.getSystemService(PowerManager.class)).isInteractive();
            context.registerReceiver(new a(), intentFilter, null, f1694j, 4);
            f1695k = context;
            m1882b(isInteractive);
            C0112n.m1754d();
            Log.i(f1685a, "READY screen receiver attempt=" + i);
        } catch (Throwable th) {
            if (i == 1 || i == 90) {
                Log.w(f1685a, "screen receiver not registered, attempt " + i, th);
            }
            if (i < 90) {
                f1694j.postDelayed(new Runnable() { // from class: dev.duo.hookprobe.p$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        C0114p.m1871a(i);
                    }
                }, 2000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ void m1884c() {
        m1880b("tick", new Runnable() { // from class: dev.duo.hookprobe.p$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C0114p.m1877b();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0031 A[Catch: all -> 0x0042, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000f, B:10:0x0017, B:13:0x0024, B:15:0x0028, B:18:0x002d, B:20:0x0031, B:24:0x003b), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003b A[Catch: all -> 0x0042, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000f, B:10:0x0017, B:13:0x0024, B:15:0x0028, B:18:0x002d, B:20:0x0031, B:24:0x003b), top: B:3:0x0003 }] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static synchronized void m1885d() {
        boolean z;
        Handler handler;
        synchronized (C0114p.class) {
            if (f1698n && f1688d.m1384a() && f1688d.m1392d()) {
                C0083S c0083s = f1688d;
                if (c0083s.f1301b < c0083s.f1300a) {
                    z = true;
                    if (z != f1697m && (handler = f1694j) != null) {
                        f1697m = z;
                        if (!z) {
                            handler.postDelayed(f1699o, f1686b);
                            return;
                        }
                        handler.removeCallbacks(f1699o);
                    }
                }
            }
            z = false;
            if (z != f1697m) {
                f1697m = z;
                if (!z) {
                }
            }
        }
    }

    /* renamed from: c */
    private static String m1883c(String str) throws ReflectiveOperationException {
        return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
    }

    /* renamed from: a */
    static synchronized void m1872a(SharedPreferences sharedPreferences) {
        synchronized (C0114p.class) {
            if (f1688d == null || f1694j == null) {
                try {
                    String m1883c = m1883c("ro.serialno");
                    if (m1883c.isEmpty()) {
                        m1883c = m1883c("ro.boot.serialno");
                    }
                    String m1704a = C0107i.m1704a(m1883c);
                    f1689e = m1704a;
                    String string = sharedPreferences.getString("_global/licenseToken", null);
                    f1690f = string;
                    f1691g = string;
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    if (f1688d == null) {
                        f1688d = new C0083S(1800000L, sharedPreferences.getInt("_global/trialUsedSec", 0) * 1000, m1886d(f1690f), elapsedRealtime);
                    }
                    f1688d.m1389b(elapsedRealtime, C0071P.m1229b(sharedPreferences));
                    Log.i(f1685a, "INIT serial=" + (m1883c.isEmpty() ? "EMPTY" : "ok") + " licensed=" + f1688d.m1390c() + " usedSec=" + (f1688d.f1301b / 1000) + " entitled=" + f1688d.m1388b());
                    try {
                        m1881b(C0049F.f828d, m1704a);
                    } catch (ReflectiveOperationException e) {
                        Log.e(f1685a, "device property publish failed; verified license retained", e);
                    }
                    HandlerThread handlerThread = new HandlerThread(f1685a);
                    handlerThread.start();
                    Handler handler = new Handler(handlerThread.getLooper());
                    f1694j = handler;
                    handler.post(new Runnable() { // from class: dev.duo.hookprobe.p$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            C0114p.m1878b(1);
                        }
                    });
                } catch (Throwable th) {
                    Log.e(f1685a, "license initialization incomplete; only verified licenses allowed", th);
                }
            }
        }
    }

    /* renamed from: d */
    private static boolean m1886d(String str) {
        if (!m1875a(str, f1692h)) {
            f1692h = str;
            f1693i = C0107i.m1705a(str, f1689e);
            if (str != null) {
                Log.i(f1685a, "TOKEN valid=" + f1693i);
            }
        }
        return f1693i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m1882b(boolean z) {
        boolean m1391c;
        boolean z2;
        synchronized (C0114p.class) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            m1391c = f1688d.m1391c(elapsedRealtime, z);
            z2 = true;
            f1698n = true;
            if (!z || f1688d.m1388b() || elapsedRealtime - f1696l < f1687c) {
                z2 = false;
            }
            if (z2) {
                f1696l = elapsedRealtime;
            }
            m1885d();
        }
        Log.i(f1685a, "SCREEN " + (z ? "on" : "off") + (m1391c ? " entitlement changed" : ""));
        if (m1391c || !z || z2) {
            m1879b(m1391c ? "screen" : null);
        }
    }

    /* renamed from: a */
    static synchronized boolean m1876a(String str, boolean z) {
        synchronized (C0114p.class) {
            if (f1688d == null) {
                return f1689e != null && m1886d(str);
            }
            if (!m1875a(str, f1691g)) {
                f1691g = str;
                f1690f = str;
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            f1688d.m1389b(elapsedRealtime, z);
            f1688d.m1387a(elapsedRealtime, m1886d(f1690f));
            m1885d();
            return f1688d.m1390c() || (f1698n && f1688d.m1388b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ void m1877b() {
        boolean m1385a;
        synchronized (C0114p.class) {
            f1697m = false;
            m1385a = f1688d.m1385a(SystemClock.elapsedRealtime());
        }
        m1879b(m1385a ? "tick" : null);
        m1885d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m1871a(int i) {
        m1878b(i + 1);
    }

    /* renamed from: a */
    private static Bundle m1869a(String str) {
        if (f1695k == null) {
            return null;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            ContentProviderClient acquireUnstableContentProviderClient = f1695k.getContentResolver().acquireUnstableContentProviderClient("dev.duo.hookprobe.config");
            try {
                if (acquireUnstableContentProviderClient == null) {
                    Log.w(f1685a, "MiDuo app provider not available");
                    if (acquireUnstableContentProviderClient != null) {
                        acquireUnstableContentProviderClient.close();
                    }
                    return null;
                }
                Bundle call = acquireUnstableContentProviderClient.call("trialTick", str, null);
                if (call != null && call.containsKey("error")) {
                    Log.w(f1685a, "trialTick error " + call.getString("error"));
                }
                acquireUnstableContentProviderClient.close();
                return call;
            } finally {
            }
        } catch (Throwable th) {
            try {
                Log.w(f1685a, "trialTick failed", th);
                return null;
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m1880b(String str, Runnable runnable) {
        try {
            runnable.run();
        } catch (Throwable th) {
            Log.e(f1685a, str + " failed", th);
        }
    }

    /* renamed from: b */
    private static void m1879b(String str) {
        int i;
        synchronized (C0114p.class) {
            i = (int) (f1688d.f1301b / 1000);
        }
        Bundle m1869a = m1869a(String.valueOf(i));
        boolean z = str != null;
        if (m1869a != null && !m1869a.containsKey("error")) {
            synchronized (C0114p.class) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                boolean m1386a = f1688d.m1386a(elapsedRealtime, m1869a.getInt("trialUsedSec", 0) * 1000) | z;
                String string = m1869a.getString("token");
                f1690f = string;
                z = m1386a | f1688d.m1387a(elapsedRealtime, m1886d(string));
            }
        }
        if (z) {
            synchronized (C0114p.class) {
                StringBuilder append = new StringBuilder().append("ENTITLEMENT ").append(f1688d.m1388b()).append(" licensed=").append(f1688d.m1390c()).append(" usedSec=").append(f1688d.f1301b / 1000).append(" by=");
                if (str == null) {
                    str = "app";
                }
                Log.i(f1685a, append.append(str).toString());
            }
            C0112n.m1754d();
        }
    }

    /* renamed from: b */
    private static void m1881b(String str, String str2) throws ReflectiveOperationException {
        Class.forName("android.os.SystemProperties").getMethod("set", String.class, String.class).invoke(null, str, str2);
    }

    /* renamed from: a */
    private static boolean m1875a(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equals(str2);
    }
}
