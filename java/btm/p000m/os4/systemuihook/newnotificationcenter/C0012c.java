package btm.p000m.os4.systemuihook.newnotificationcenter;

import android.content.SharedPreferences;

/* renamed from: btm.m.os4.systemuihook.newnotificationcenter.c */
/* loaded from: classes.dex */
public final class C0012c {

    /* renamed from: a */
    public static final String f237a = "ios_notification_bottom_offset_dp";

    private C0012c() {
    }

    /* renamed from: a */
    public static int m250a(SharedPreferences sharedPreferences) {
        int i = sharedPreferences.getInt(f237a, 0);
        if (i < -40) {
            return -40;
        }
        if (i > 120) {
            return 120;
        }
        return i;
    }
}
