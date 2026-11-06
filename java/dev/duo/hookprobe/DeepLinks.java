package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.d */
/* loaded from: classes.dex */
final class DeepLinks {

    /* renamed from: a */
    static final int f1549a = 854;

    /* renamed from: b */
    static final int f1550b = 1329;

    /* renamed from: c */
    static final int f1551c = 0;

    /* renamed from: d */
    static final int f1552d = 1;

    /* renamed from: e */
    static final int f1553e = 854;

    /* renamed from: f */
    static final int f1554f = 1328;

    /* renamed from: g */
    static final float f1555g = 56.0f;

    /* renamed from: h */
    static final String f1556h = "com.miui.gallery";

    /* renamed from: i */
    static final float f1557i = 6.0f;

    private DeepLinks() {
    }

    /* renamed from: a */
    static String m1590a(int i) {
        return "miduo://widget/album/edit?miuiWidgetId=" + i;
    }

    /* renamed from: a */
    static float[] m1592a(int i, int i2, float f, float f2, float f3) {
        float f4 = i;
        float f5 = (i2 - f2) - f3;
        float min = Math.min(f5, ((f4 - (f * 2.0f)) * 1328.0f) / 854.0f);
        float f6 = (854.0f * min) / 1328.0f;
        float f7 = (f4 - f6) / 2.0f;
        float f8 = f2 + ((f5 - min) / 2.0f);
        return new float[]{f7, f8, f6 + f7, min + f8};
    }

    /* renamed from: a */
    static float m1589a(float f, float f2, int i, int i2) {
        return Math.max(f / i, f2 / i2);
    }

    /* renamed from: a */
    static float m1588a(float f, float f2, float f3, float f4) {
        return Math.min(f3, Math.max(f4 - f2, f));
    }

    /* renamed from: a */
    static float[] m1591a(float f, float f2, float f3) {
        float min = Math.min(f3, Math.min(f, f2) / 2.0f);
        float f4 = 0.5522848f * min;
        float f5 = f - min;
        float f6 = f5 + f4;
        float f7 = min - f4;
        float f8 = f2 - min;
        float f9 = f4 + f8;
        return new float[]{0.0f, min, 0.0f, 1.0f, f5, 0.0f, 3.0f, f6, 0.0f, f, f7, f, min, 1.0f, f, f8, 3.0f, f, f9, f6, f2, f5, f2, 1.0f, min, f2, 3.0f, f7, f2, 0.0f, f9, 0.0f, f8, 1.0f, 0.0f, min, 3.0f, 0.0f, f7, f7, 0.0f, min, 0.0f, 4.0f};
    }
}
