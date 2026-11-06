package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.S */
/* loaded from: classes.dex */
final class C0083S {

    /* renamed from: a */
    final long f1300a;

    /* renamed from: b */
    long f1301b;

    /* renamed from: c */
    private boolean f1302c;

    /* renamed from: d */
    private boolean f1303d = true;

    /* renamed from: e */
    private boolean f1304e;

    /* renamed from: f */
    private boolean f1305f;

    /* renamed from: g */
    private long f1306g;

    C0083S(long j, long j2, boolean z, long j3) {
        this.f1300a = j;
        long min = Math.min(j, j2);
        this.f1301b = min;
        this.f1304e = z;
        this.f1306g = j3;
        this.f1305f = !z && min >= j;
    }

    /* renamed from: a */
    boolean m1384a() {
        return (!this.f1303d || this.f1304e || this.f1305f) ? false : true;
    }

    /* renamed from: b */
    boolean m1388b() {
        return this.f1304e || !this.f1305f;
    }

    /* renamed from: c */
    boolean m1390c() {
        return this.f1304e;
    }

    /* renamed from: d */
    boolean m1392d() {
        return this.f1302c;
    }

    /* renamed from: a */
    boolean m1385a(long j) {
        if (this.f1302c && m1384a()) {
            this.f1301b = Math.min(this.f1300a, this.f1301b + Math.max(0L, j - this.f1306g));
        }
        this.f1306g = j;
        boolean z = this.f1305f;
        if (this.f1304e) {
            this.f1305f = false;
        } else if (this.f1301b >= this.f1300a && !this.f1302c) {
            this.f1305f = true;
        }
        return z != this.f1305f;
    }

    /* renamed from: b */
    boolean m1389b(long j, boolean z) {
        boolean m1385a = m1385a(j);
        this.f1303d = z;
        return m1385a(j) | m1385a;
    }

    /* renamed from: c */
    boolean m1391c(long j, boolean z) {
        boolean m1385a = m1385a(j);
        this.f1302c = z;
        return m1385a(j) | m1385a;
    }

    /* renamed from: a */
    boolean m1387a(long j, boolean z) {
        boolean m1385a = m1385a(j);
        this.f1304e = z;
        return m1385a(j) | m1385a;
    }

    /* renamed from: a */
    boolean m1386a(long j, long j2) {
        boolean m1385a = m1385a(j);
        this.f1301b = Math.max(this.f1301b, Math.min(this.f1300a, j2));
        return m1385a(j) | m1385a;
    }
}
