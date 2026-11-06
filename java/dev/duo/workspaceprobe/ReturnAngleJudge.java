package dev.duo.workspaceprobe;

/* renamed from: dev.duo.workspaceprobe.c */
/* loaded from: classes.dex */
final class ReturnAngleJudge {

    /* renamed from: g */
    static final float f2780g = 165.0f;

    /* renamed from: h */
    static final float f2781h = 5.0f;

    /* renamed from: l */
    static final int f2785l = 1;

    /* renamed from: a */
    private float f2786a = f2783j[1];

    /* renamed from: b */
    private long f2787b = f2784k[1];

    /* renamed from: c */
    private float f2788c = Float.NaN;

    /* renamed from: d */
    private long f2789d;

    /* renamed from: e */
    private boolean f2790e;

    /* renamed from: f */
    private long f2791f;

    /* renamed from: j */
    static final float[] f2783j = {15.0f, 25.0f, 35.0f};

    /* renamed from: i */
    static final long f2782i = 800;

    /* renamed from: k */
    static final long[] f2784k = {1500, 1000, f2782i};

    ReturnAngleJudge() {
    }

    /* renamed from: a */
    void m2902a() {
        this.f2788c = Float.NaN;
        this.f2790e = false;
        this.f2791f = 0L;
    }

    /* renamed from: a */
    void m2903a(int i) {
        this.f2786a = f2783j[i];
        this.f2787b = f2784k[i];
        m2902a();
    }

    /* renamed from: a */
    boolean m2904a(float f, long j) {
        if (f <= 90.0f) {
            m2902a();
            return false;
        }
        if (Float.isNaN(this.f2788c) || f > this.f2788c) {
            this.f2788c = f;
            if (Float.isNaN(f)) {
                return false;
            }
        }
        float f2 = this.f2788c;
        if (f >= f2 - f2781h) {
            boolean z = this.f2790e && j - this.f2789d <= this.f2787b && f2 >= f2780g && j >= this.f2791f;
            this.f2790e = false;
            this.f2789d = j;
            if (z) {
                this.f2791f = j + f2782i;
            }
            return z;
        }
        if (f2 >= f2780g && f <= f2 - this.f2786a) {
            this.f2790e = true;
        }
        if (j - this.f2789d > this.f2787b) {
            this.f2790e = false;
            this.f2788c = f;
            this.f2789d = j;
        }
        return false;
    }
}
