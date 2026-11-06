package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.d, reason: case insensitive filesystem */
/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class d {
    static final int a = 854;
    static final int b = 1329;
    static final int c = 0;
    static final int d = 1;
    static final int e = 854;
    static final int f = 1328;
    static final float g = 56.0f;
    static final String h = "com.miui.gallery";
    static final float i = 6.0f;

    private d() {
    }

    static String a(int i2) {
        return "miduo://widget/album/edit?miuiWidgetId=" + i2;
    }

    static float[] a(int i2, int i3, float f2, float f3, float f4) {
        float f5 = i2;
        float f6 = (i3 - f3) - f4;
        float min = Math.min(f6, ((f5 - (f2 * 2.0f)) * 1328.0f) / 854.0f);
        float f7 = (854.0f * min) / 1328.0f;
        float f8 = (f5 - f7) / 2.0f;
        float f9 = f3 + ((f6 - min) / 2.0f);
        return new float[]{f8, f9, f7 + f8, min + f9};
    }

    static float a(float f2, float f3, int i2, int i3) {
        return Math.max(f2 / i2, f3 / i3);
    }

    static float a(float f2, float f3, float f4, float f5) {
        return Math.min(f4, Math.max(f5 - f3, f2));
    }

    static float[] a(float f2, float f3, float f4) {
        float min = Math.min(f4, Math.min(f2, f3) / 2.0f);
        float f5 = 0.5522848f * min;
        float f6 = f2 - min;
        float f7 = f6 + f5;
        float f8 = min - f5;
        float f9 = f3 - min;
        float f10 = f5 + f9;
        return new float[]{0.0f, min, 0.0f, 1.0f, f6, 0.0f, 3.0f, f7, 0.0f, f2, f8, f2, min, 1.0f, f2, f9, 3.0f, f2, f10, f7, f3, f6, f3, 1.0f, min, f3, 3.0f, f8, f3, 0.0f, f10, 0.0f, f9, 1.0f, 0.0f, min, 3.0f, 0.0f, f8, f8, 0.0f, min, 0.0f, 4.0f};
    }
}
