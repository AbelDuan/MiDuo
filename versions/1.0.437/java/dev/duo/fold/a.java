package dev.duo.fold;

/* loaded from: classes.dex */
final class a {
    static final float i = 178.0f;
    static final long j = 320;
    static final long k = 3000;
    static final long l = 1200;
    static final long m = 600;
    long a;
    long b;
    long c;
    long d = -1;
    long e = -1;
    boolean f;
    float g;
    final float h;

    a(long j2, float f) {
        this.b = j2;
        this.h = f;
    }

    static float b(long j2, long j3) {
        if (j2 < 0) {
            return 0.0f;
        }
        float max = java.lang.Math.max(0.0f, java.lang.Math.min(1.0f, (j3 - j2) / 320.0f));
        return max * max * (3.0f - (max * 2.0f));
    }

    long a(boolean z, float f, long j2) {
        this.f = z;
        this.g = f;
        this.c = j2;
        this.e = -1L;
        this.d = -1L;
        long j3 = this.a + 1;
        this.a = j3;
        return j3;
    }

    boolean c(long j2, long j3) {
        if (j2 != this.a || j3 < this.c || this.d >= 0 || this.e >= 0) {
            return false;
        }
        this.d = j3;
        return true;
    }

    boolean d(long j2, long j3) {
        if (j2 != this.a || j3 < this.c || this.e >= 0) {
            return false;
        }
        this.d = -1L;
        return true;
    }

    boolean e(long j2, long j3) {
        return this.e < 0 && j2 - this.c >= j3;
    }

    boolean a(long j2, long j3) {
        if (j2 != this.a) {
            return false;
        }
        long j4 = this.d;
        if (j4 < 0 || j3 < j4) {
            return false;
        }
        this.e = j3;
        return true;
    }

    boolean a(float f, boolean z) {
        float max = this.f ? java.lang.Math.max(this.g, f) : java.lang.Math.min(this.g, f);
        this.g = max;
        return this.f ? z || max - f >= this.h : !z && (f - max >= this.h || f >= i);
    }
}
