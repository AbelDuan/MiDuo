package dev.duo.hookprobe;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;

/* renamed from: dev.duo.hookprobe.F */
/* loaded from: classes.dex */
public final class ColorPickSession {

    /* renamed from: a */
    public static final Uri f825a = Uri.parse("content://dev.duo.hookprobe.config/pickState");

    /* renamed from: b */
    private static String f826b = "";

    /* renamed from: c */
    private static long f827c = 0;

    /* renamed from: d */
    public static final String f828d = "debug.duo.device";

    /* renamed from: a */
    public static synchronized void m853a(Context context, String str) {
        synchronized (ColorPickSession.class) {
            f826b = str;
            f827c++;
            context.getContentResolver().notifyChange(f825a, null);
        }
    }

    /* renamed from: b */
    public static void m856b(final String str, final String str2) {
        new Thread(new Runnable() { // from class: dev.duo.hookprobe.F$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                LicenseClient.m787c(str, str2);
            }
        }, "MiDuoToneShare").start();
    }

    /* renamed from: a */
    static synchronized Bundle m851a(String str) {
        Bundle bundle;
        synchronized (ColorPickSession.class) {
            bundle = new Bundle();
            bundle.putString("package", f826b);
            bundle.putLong("token", f827c);
            bundle.putBoolean("active", f826b.equals(str));
        }
        return bundle;
    }

    /* renamed from: a */
    static synchronized void m852a(Context context, long j) {
        synchronized (ColorPickSession.class) {
            long j2 = f827c;
            if (j != j2) {
                return;
            }
            f826b = "";
            f827c = j2 + 1;
            context.getContentResolver().notifyChange(f825a, null);
        }
    }

    /* renamed from: a */
    public static boolean m855a(int i, int i2) {
        return (i == 0 || i2 == 0) ? i == i2 : Math.abs(((i >> 16) & 255) - ((i2 >> 16) & 255)) <= 12 && Math.abs(((i >> 8) & 255) - ((i2 >> 8) & 255)) <= 12 && Math.abs((i & 255) - (i2 & 255)) <= 12;
    }
}
