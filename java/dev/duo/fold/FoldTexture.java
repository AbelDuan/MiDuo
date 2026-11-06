package dev.duo.fold;

/* renamed from: dev.duo.fold.f */
/* loaded from: classes.dex */
final class FoldTexture {

    /* renamed from: g */
    static final long f677g = 1000;

    /* renamed from: h */
    static final float f678h = 1450.0f;

    /* renamed from: i */
    static final float f679i = 200.0f;

    /* renamed from: e */
    private boolean f684e;

    /* renamed from: a */
    private long f680a = -1;

    /* renamed from: b */
    private long f681b = -1;

    /* renamed from: c */
    private a f682c = a.SHUT;

    /* renamed from: d */
    private float f683d = Float.NaN;

    /* renamed from: f */
    private long f685f = -1;

    /* renamed from: dev.duo.fold.f$a */
    enum a {
        WAITING,
        SHUT,
        OPEN,
        FALLBACK
    }

    FoldTexture() {
    }

    /* renamed from: a */
    boolean m689a(float f, long j, long j2) {
        m690b(j2);
        if (Float.isNaN(f) || Float.isInfinite(f) || j <= this.f681b || j > j2 || j2 - j >= f677g) {
            return false;
        }
        this.f681b = j;
        float abs = Math.abs(f);
        if (abs >= f678h) {
            this.f682c = a.SHUT;
            this.f684e = true;
            if (!Float.isNaN(this.f683d)) {
                float f2 = this.f683d;
                abs = ((abs - f2) * 0.05f) + f2;
            }
            this.f683d = abs;
        } else if (abs < m687a()) {
            a aVar = this.f682c;
            a aVar2 = a.OPEN;
            if (aVar != aVar2) {
                this.f685f = j;
            }
            this.f682c = aVar2;
        }
        return true;
    }

    /* renamed from: b */
    a m690b(long j) {
        if (this.f680a < 0) {
            this.f680a = j;
        }
        long j2 = this.f681b;
        return j2 < 0 ? j - this.f680a < f677g ? a.WAITING : a.FALLBACK : j - j2 < f677g ? this.f682c : a.FALLBACK;
    }

    /* renamed from: c */
    long m692c() {
        return this.f685f;
    }

    /* renamed from: d */
    boolean m693d() {
        return this.f684e;
    }

    /* renamed from: b */
    void m691b() {
        if (this.f682c != a.SHUT) {
            this.f684e = false;
        }
    }

    /* renamed from: a */
    float m687a() {
        if (Float.isNaN(this.f683d)) {
            return 1350.0f;
        }
        return Math.min(1400.0f, this.f683d - f679i);
    }

    /* renamed from: a */
    void m688a(long j) {
        this.f680a = j;
        this.f681b = -1L;
    }
}
