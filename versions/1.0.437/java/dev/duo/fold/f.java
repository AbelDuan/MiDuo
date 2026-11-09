package dev.duo.fold;

/* loaded from: classes.dex */
final class f {
    static final long g = 1000;
    static final float h = 1450.0f;
    static final float i = 200.0f;
    private boolean e;
    private long a = -1;
    private long b = -1;
    private dev.duo.fold.f.a c = dev.duo.fold.f.a.SHUT;
    private float d = Float.NaN;
    private long f = -1;

    enum a {
        WAITING,
        SHUT,
        OPEN,
        FALLBACK
    }

    f() {
    }

    boolean a(float f, long j, long j2) {
        b(j2);
        if (java.lang.Float.isNaN(f) || java.lang.Float.isInfinite(f) || j <= this.b || j > j2 || j2 - j >= g) {
            return false;
        }
        this.b = j;
        float abs = java.lang.Math.abs(f);
        if (abs >= h) {
            this.c = dev.duo.fold.f.a.SHUT;
            this.e = true;
            if (!java.lang.Float.isNaN(this.d)) {
                float f2 = this.d;
                abs = ((abs - f2) * 0.05f) + f2;
            }
            this.d = abs;
        } else if (abs < a()) {
            dev.duo.fold.f.a aVar = this.c;
            dev.duo.fold.f.a aVar2 = dev.duo.fold.f.a.OPEN;
            if (aVar != aVar2) {
                this.f = j;
            }
            this.c = aVar2;
        }
        return true;
    }

    dev.duo.fold.f.a b(long j) {
        if (this.a < 0) {
            this.a = j;
        }
        long j2 = this.b;
        return j2 < 0 ? j - this.a < g ? dev.duo.fold.f.a.WAITING : dev.duo.fold.f.a.FALLBACK : j - j2 < g ? this.c : dev.duo.fold.f.a.FALLBACK;
    }

    long c() {
        return this.f;
    }

    boolean d() {
        return this.e;
    }

    void b() {
        if (this.c != dev.duo.fold.f.a.SHUT) {
            this.e = false;
        }
    }

    float a() {
        if (java.lang.Float.isNaN(this.d)) {
            return 1350.0f;
        }
        return java.lang.Math.min(1400.0f, this.d - i);
    }

    void a(long j) {
        this.a = j;
        this.b = -1L;
    }
}
