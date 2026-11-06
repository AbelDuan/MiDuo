package btm.p000m.os4.systemuihook.newnotificationcenter;

import android.content.SharedPreferences;

/* renamed from: btm.m.os4.systemuihook.newnotificationcenter.l */
/* loaded from: classes.dex */
public final class C0021l {

    /* renamed from: a */
    public static final String f489a = "ios_notification_shortcuts";

    /* renamed from: b */
    public static final String f490b = "ios_notification_shortcuts_bottom_offset_dp";

    /* renamed from: c */
    public static final boolean f491c = true;

    private C0021l() {
    }

    /* renamed from: a */
    public static boolean m475a(SharedPreferences sharedPreferences) {
        return sharedPreferences.getBoolean(f489a, true);
    }

    /* renamed from: b */
    public static int m476b(SharedPreferences sharedPreferences) {
        int i = sharedPreferences.getInt(f490b, 0);
        if (i < -40) {
            return -40;
        }
        if (i > 120) {
            return 120;
        }
        return i;
    }
}
