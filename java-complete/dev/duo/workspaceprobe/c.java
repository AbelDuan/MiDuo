package dev.duo.workspaceprobe;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class c {
    static final float g = 165.0f;
    static final float h = 5.0f;
    static final int l = 1;
    private float a = j[1];
    private long b = k[1];
    private float c = Float.NaN;
    private long d;
    private boolean e;
    private long f;
    static final float[] j = {15.0f, 25.0f, 35.0f};
    static final long i = 800;
    static final long[] k = {1500, 1000, i};

    c() {
    }

    void a() {
        this.c = Float.NaN;
        this.e = false;
        this.f = 0L;
    }

    void a(int i2) {
        this.a = j[i2];
        this.b = k[i2];
        a();
    }

    boolean a(float f, long j2) {
        if (f <= 90.0f) {
            a();
            return false;
        }
        if (Float.isNaN(this.c) || f > this.c) {
            this.c = f;
            if (Float.isNaN(f)) {
                return false;
            }
        }
        float f2 = this.c;
        if (f >= f2 - h) {
            boolean z = this.e && j2 - this.d <= this.b && f2 >= g && j2 >= this.f;
            this.e = false;
            this.d = j2;
            if (z) {
                this.f = j2 + i;
            }
            return z;
        }
        if (f2 >= g && f <= f2 - this.a) {
            this.e = true;
        }
        if (j2 - this.d > this.b) {
            this.e = false;
            this.c = f;
            this.d = j2;
        }
        return false;
    }
}
