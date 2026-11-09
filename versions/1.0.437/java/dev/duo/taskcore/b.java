package dev.duo.taskcore;

/* loaded from: classes.dex */
public final class b {
    public static final int g = 40;
    public static final int h = 24;
    public static final int i = 4;
    public static final int j = 3;
    public final android.graphics.Rect a;
    public final android.graphics.Rect b;
    public final boolean c;
    public final android.graphics.Rect[] d;
    public final android.graphics.Rect e;
    public final float f;

    public b(android.graphics.Rect rect) {
        this(rect, false);
    }

    public android.graphics.Rect a(float f) {
        float width = this.a.width() + f;
        float height = this.a.height() * (width / this.a.width());
        int round = java.lang.Math.round(this.a.centerY() - (height / 2.0f));
        if (!this.c) {
            return new android.graphics.Rect(java.lang.Math.round(this.a.right - width), round, this.a.right, java.lang.Math.round(round + height));
        }
        int i2 = this.a.left;
        return new android.graphics.Rect(i2, round, java.lang.Math.round(i2 + width), java.lang.Math.round(round + height));
    }

    public int b() {
        return this.c ? this.a.right + 12 : this.a.left - 12;
    }

    public int c() {
        return this.c ? 1 : -1;
    }

    public b(android.graphics.Rect rect, boolean z) {
        android.graphics.Rect rect2 = new android.graphics.Rect();
        this.a = rect2;
        this.d = new android.graphics.Rect[3];
        this.b = new android.graphics.Rect(rect);
        this.c = z;
        int height = rect.height();
        int i2 = height - 80;
        int i3 = (height - 152) / 4;
        float f = i2;
        float f2 = i3 / f;
        int round = java.lang.Math.round((rect.width() - 104) / (1.0f + f2));
        int width = (rect.width() - 104) - round;
        int i4 = z ? rect.left + 40 : (rect.right - 40) - round;
        rect2.set(i4, rect.top + 40, i4 + round, rect.bottom - 40);
        float f3 = round;
        float min = java.lang.Math.min(width / f3, f2);
        this.f = min;
        int round2 = java.lang.Math.round(f3 * min);
        int round3 = java.lang.Math.round(f * min);
        android.graphics.Rect[] rectArr = new android.graphics.Rect[4];
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 4; i6 < i7; i7 = 4) {
            int i8 = rect.top + 40 + ((i3 + 24) * i6) + ((i3 - round3) / 2);
            int i9 = (z ? (rect.right - 40) - width : rect.left + 40) + ((width - round2) / 2);
            rectArr[i6] = new android.graphics.Rect(i9, i8, i9 + round2, i8 + round3);
            i6++;
        }
        this.e = rectArr[0];
        while (i5 < 3) {
            int i10 = i5 + 1;
            this.d[i5] = rectArr[i10];
            i5 = i10;
        }
    }

    public void b(android.graphics.Rect rect) {
        rect.offset(this.c ? (this.b.right - rect.left) + 40 : -(rect.right + 40), 0);
    }

    public android.graphics.Rect a() {
        if (!this.c) {
            android.graphics.Rect rect = this.b;
            return new android.graphics.Rect(rect.left, rect.top, this.a.left, rect.bottom);
        }
        int i2 = this.a.right;
        android.graphics.Rect rect2 = this.b;
        return new android.graphics.Rect(i2, rect2.top, rect2.right, rect2.bottom);
    }

    public float[] a(android.graphics.Rect rect) {
        float width = rect.width() / this.a.width();
        float f = rect.left;
        android.graphics.Rect rect2 = this.a;
        return new float[]{width, f - (rect2.left * width), rect.top - (rect2.top * width)};
    }

    public static android.graphics.Rect a(android.graphics.Rect rect, android.graphics.Rect rect2, float f, android.graphics.Rect rect3) {
        rect3.set(java.lang.Math.round(rect.left + ((rect2.left - r0) * f)), java.lang.Math.round(rect.top + ((rect2.top - r1) * f)), java.lang.Math.round(rect.right + ((rect2.right - r2) * f)), java.lang.Math.round(rect.bottom + ((rect2.bottom - r5) * f)));
        return rect3;
    }
}
