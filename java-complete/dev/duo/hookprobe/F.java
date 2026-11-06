package dev.duo.hookprobe;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class F {
    public static final Uri a = Uri.parse("content://com.lsposed.miduo.config/pickState");
    private static String b = "";
    private static long c = 0;
    public static final String d = "debug.duo.device";

    public static synchronized void a(Context context, String str) {
        synchronized (dev.duo.hookprobe.F.class) {
            b = str;
            c++;
            context.getContentResolver().notifyChange(a, null);
        }
    }

    public static void b(final String str, final String str2) {
        new Thread(new Runnable() { // from class: dev.duo.hookprobe.F$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                F.a(str, str2);
            }
        }, "MiDuoToneShare").start();
    }

    static synchronized Bundle a(String str) {
        Bundle bundle;
        synchronized (dev.duo.hookprobe.F.class) {
            bundle = new Bundle();
            bundle.putString("package", b);
            bundle.putLong("token", c);
            bundle.putBoolean("active", dev.duo.hookprobe.b.equals(str));
        }
        return bundle;
    }

    static synchronized void a(Context context, long j) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, String str2) {
    }

    public static boolean a(int i, int i2) {
        return (i == 0 || i2 == 0) ? i == i2 : Math.abs(((i >> 16) & 255) - ((i2 >> 16) & 255)) <= 12 && Math.abs(((i >> 8) & 255) - ((i2 >> 8) & 255)) <= 12 && Math.abs((i & 255) - (i2 & 255)) <= 12;
    }
}
