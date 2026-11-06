package dev.duo.fold;

/* renamed from: dev.duo.fold.a */
/* loaded from: classes.dex */
final class FoldCurve {

    /* renamed from: i */
    static final float f630i = 178.0f;

    /* renamed from: j */
    static final long f631j = 320;

    /* renamed from: k */
    static final long f632k = 3000;

    /* renamed from: l */
    static final long f633l = 1200;

    /* renamed from: m */
    static final long f634m = 600;

    /* renamed from: a */
    long f635a;

    /* renamed from: b */
    long f636b;

    /* renamed from: c */
    long f637c;

    /* renamed from: d */
    long f638d = -1;

    /* renamed from: e */
    long f639e = -1;

    /* renamed from: f */
    boolean f640f;

    /* renamed from: g */
    float f641g;

    /* renamed from: h */
    final float f642h;

    FoldCurve(long j, float f) {
        this.f636b = j;
        this.f642h = f;
    }

    /* renamed from: b */
    static float m641b(long j, long j2) {
        if (j < 0) {
            return 0.0f;
        }
        float max = Math.max(0.0f, Math.min(1.0f, (j2 - j) / 320.0f));
        return max * max * (3.0f - (max * 2.0f));
    }

    /* renamed from: a */
    long m642a(boolean z, float f, long j) {
        this.f640f = z;
        this.f641g = f;
        this.f637c = j;
        this.f639e = -1L;
        this.f638d = -1L;
        long j2 = this.f635a + 1;
        this.f635a = j2;
        return j2;
    }

    /* renamed from: c */
    boolean m646c(long j, long j2) {
        if (j != this.f635a || j2 < this.f637c || this.f638d >= 0 || this.f639e >= 0) {
            return false;
        }
        this.f638d = j2;
        return true;
    }

    /* renamed from: d */
    boolean m647d(long j, long j2) {
        if (j != this.f635a || j2 < this.f637c || this.f639e >= 0) {
            return false;
        }
        this.f638d = -1L;
        return true;
    }

    /* renamed from: e */
    boolean m648e(long j, long j2) {
        return this.f639e < 0 && j - this.f637c >= j2;
    }

    /* renamed from: a */
    boolean m645a(long j, long j2) {
        if (j != this.f635a) {
            return false;
        }
        long j3 = this.f638d;
        if (j3 < 0 || j2 < j3) {
            return false;
        }
        this.f639e = j2;
        return true;
    }

    /* renamed from: a */
    boolean m643a(float f, boolean z) {
        float max = this.f640f ? Math.max(this.f641g, f) : Math.min(this.f641g, f);
        this.f641g = max;
        return this.f640f ? z || max - f >= this.f642h : !z && (f - max >= this.f642h || f >= f630i);
    }

    /* renamed from: a */
    boolean m644a(long j) {
        return m648e(j, f632k);
    }
}
