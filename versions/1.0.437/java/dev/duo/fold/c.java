package dev.duo.fold;

/* loaded from: classes.dex */
final class c {
    static final long h = 120;
    private static final int i = 32;
    static final long j = 35;
    static final long k = 120;
    static final float l = 3.0f;
    private int c;
    private int d;
    private long f;
    private final float g;
    private final float[] a = new float[i];
    private final long[] b = new long[i];
    private float e = Float.NaN;

    c(float f) {
        this.g = f;
    }

    void a(float f, long j2) {
        if (f < 0.0f || f > 360.0f) {
            return;
        }
        int i2 = this.c;
        if (i2 <= 0 || j2 >= this.b[((this.d + i2) - 1) % i]) {
            int i3 = this.d;
            int i4 = (i3 + i2) % i;
            if (i2 == i) {
                int i5 = (i3 + 1) % i;
                this.d = i5;
                int i6 = i2 - 1;
                this.c = i6;
                i4 = (i5 + i6) % i;
            }
            this.a[i4] = f;
            this.b[i4] = j2;
            this.c++;
            if (java.lang.Float.isNaN(this.e)) {
                this.e = f;
                this.f = j2;
            }
        }
    }

    float b() {
        if (this.c == 0) {
            return Float.NaN;
        }
        return this.a[((this.d + r0) - 1) % i];
    }

    long c() {
        if (this.c == 0) {
            return -1L;
        }
        return this.b[((this.d + r0) - 1) % i];
    }

    float d(long j2) {
        int i2 = this.c;
        if (i2 < 2) {
            return 0.0f;
        }
        int i3 = ((this.d + i2) - 1) % i;
        if (j2 - this.b[i3] > 240) {
            return 0.0f;
        }
        int i4 = i2 - 2;
        int i5 = i3;
        while (i4 >= 0) {
            int i6 = (this.d + i4) % i;
            long[] jArr = this.b;
            if (jArr[i3] - jArr[i6] > 120) {
                break;
            }
            i4--;
            i5 = i6;
        }
        if (i5 == i3) {
            i5 = ((this.d + this.c) - 2) % i;
            long[] jArr2 = this.b;
            if (jArr2[i3] - jArr2[i5] > 480) {
                return 0.0f;
            }
        }
        long[] jArr3 = this.b;
        long j3 = jArr3[i3] - jArr3[i5];
        if (j3 <= 0) {
            return 0.0f;
        }
        float[] fArr = this.a;
        return ((fArr[i3] - fArr[i5]) * 1000.0f) / j3;
    }

    float b(long j2) {
        if (this.c == 0) {
            return Float.NaN;
        }
        float b = b();
        long c = j2 - c();
        if (c > 0 && c < 120) {
            float d = (d(c()) * java.lang.Math.min(c, j)) / 1000.0f;
            if (c > j) {
                d *= 1.0f - ((c - j) / 85.0f);
            }
            if (d > l) {
                d = 3.0f;
            }
            if (d < -3.0f) {
                d = -3.0f;
            }
            b += d;
            if (b < 0.0f) {
                return 0.0f;
            }
            if (b > 180.0f) {
                return 180.0f;
            }
        }
        return b;
    }

    boolean c(long j2) {
        return this.c > 0 && j2 - c() < 120 && d(c()) != 0.0f;
    }

    boolean a() {
        return this.c == 0;
    }

    float a(long j2) {
        if (this.c == 0) {
            return Float.NaN;
        }
        float b = b(j2);
        long max = java.lang.Math.max(0L, j2 - this.f);
        this.f = j2;
        if (this.g > 0.0f && max <= 250) {
            float exp = 1.0f - ((float) java.lang.Math.exp((-max) / r6));
            float f = this.e;
            float f2 = f + ((b - f) * exp);
            this.e = f2;
            if (java.lang.Math.abs(b - f2) < 0.05f) {
                this.e = b;
            }
            return this.e;
        }
        this.e = b;
        return b;
    }

    boolean a(long j2, long j3, float f) {
        boolean z;
        int i2 = this.c;
        if (i2 == 0) {
            return false;
        }
        int i3 = i2 - 1;
        float f2 = -3.4028235E38f;
        float f3 = Float.MAX_VALUE;
        while (true) {
            if (i3 < 0) {
                z = false;
                break;
            }
            int i4 = (this.d + i3) % i;
            if (j2 - this.b[i4] > j3) {
                z = true;
                break;
            }
            f3 = java.lang.Math.min(f3, this.a[i4]);
            f2 = java.lang.Math.max(f2, this.a[i4]);
            i3--;
        }
        if (f3 == Float.MAX_VALUE) {
            return true;
        }
        return z && f2 - f3 <= f;
    }

    boolean d() {
        return this.c > 0 && java.lang.Math.abs(b() - this.e) >= 0.05f;
    }

    float a(long j2, long j3) {
        if (this.c == 0) {
            return 0.0f;
        }
        float b = b();
        for (int i2 = this.c - 1; i2 >= 0; i2--) {
            int i3 = (this.d + i2) % i;
            if (j2 - this.b[i3] > j3) {
                break;
            }
            b = java.lang.Math.max(b, this.a[i3]);
        }
        return b - b();
    }
}
