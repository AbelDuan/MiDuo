package dev.duo.hookprobe;

/* loaded from: classes.dex */
final class S {
    final long a;
    long b;
    private boolean c;
    private boolean d = true;
    private boolean e;
    private boolean f;
    private long g;

    S(long j, long j2, boolean z, long j3) {
        this.a = j;
        long min = java.lang.Math.min(j, j2);
        this.b = min;
        this.e = z;
        this.g = j3;
        this.f = !z && min >= j;
    }

    boolean a() {
        return (!this.d || this.e || this.f) ? false : true;
    }

    boolean b() {
        return this.e || !this.f;
    }

    boolean c() {
        return this.e;
    }

    boolean d() {
        return this.c;
    }

    boolean a(long j) {
        if (this.c && a()) {
            this.b = java.lang.Math.min(this.a, this.b + java.lang.Math.max(0L, j - this.g));
        }
        this.g = j;
        boolean z = this.f;
        if (this.e) {
            this.f = false;
        } else if (this.b >= this.a && !this.c) {
            this.f = true;
        }
        return z != this.f;
    }

    boolean b(long j, boolean z) {
        boolean a = a(j);
        this.d = z;
        return a(j) | a;
    }

    boolean c(long j, boolean z) {
        boolean a = a(j);
        this.c = z;
        return a(j) | a;
    }

    boolean a(long j, boolean z) {
        boolean a = a(j);
        this.e = z;
        return a(j) | a;
    }

    boolean a(long j, long j2) {
        boolean a = a(j);
        this.b = java.lang.Math.max(this.b, java.lang.Math.min(this.a, j2));
        return a(j) | a;
    }
}
