package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class F {
    public static final android.net.Uri a = android.net.Uri.parse("content://dev.duo.hookprobe.config/pickState");
    private static java.lang.String b = "";
    private static long c = 0;
    public static final java.lang.String d = "debug.duo.device";

    public static synchronized void a(android.content.Context context, java.lang.String str) {
        synchronized (dev.duo.hookprobe.F.class) {
            b = str;
            c++;
            context.getContentResolver().notifyChange(a, null);
        }
    }

    public static void b(final java.lang.String str, final java.lang.String str2) {
        new java.lang.Thread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.F$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.B.c(str, str2);
            }
        }, "MiDuoToneShare").start();
    }

    static synchronized android.os.Bundle a(java.lang.String str) {
        android.os.Bundle bundle;
        synchronized (dev.duo.hookprobe.F.class) {
            bundle = new android.os.Bundle();
            bundle.putString("package", b);
            bundle.putLong("token", c);
            bundle.putBoolean("active", b.equals(str));
        }
        return bundle;
    }

    static synchronized void a(android.content.Context context, long j) {
        synchronized (dev.duo.hookprobe.F.class) {
            long j2 = c;
            if (j != j2) {
                return;
            }
            b = "";
            c = j2 + 1;
            context.getContentResolver().notifyChange(a, null);
        }
    }

    public static boolean a(int i, int i2) {
        return (i == 0 || i2 == 0) ? i == i2 : java.lang.Math.abs(((i >> 16) & 255) - ((i2 >> 16) & 255)) <= 12 && java.lang.Math.abs(((i >> 8) & 255) - ((i2 >> 8) & 255)) <= 12 && java.lang.Math.abs((i & 255) - (i2 & 255)) <= 12;
    }
}
