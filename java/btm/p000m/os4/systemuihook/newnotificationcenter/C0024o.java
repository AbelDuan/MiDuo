package btm.p000m.os4.systemuihook.newnotificationcenter;

/* renamed from: btm.m.os4.systemuihook.newnotificationcenter.o */
/* loaded from: classes.dex */
public final class C0024o {

    /* renamed from: i */
    static final float f519i = 0.2f;

    /* renamed from: a */
    private boolean f520a;

    /* renamed from: b */
    private float f521b;

    /* renamed from: c */
    private float f522c;

    /* renamed from: d */
    private float f523d;

    /* renamed from: e */
    public float f524e;

    /* renamed from: f */
    public boolean f525f;

    /* renamed from: g */
    public boolean f526g;

    /* renamed from: h */
    public float f527h = 1.0f;

    /* renamed from: a */
    public static boolean m527a(float f, float f2, float f3) {
        return f + (f3 > 0.0f ? (f2 * f519i) / f3 : 0.0f) >= 0.5f;
    }

    /* renamed from: b */
    public float m533b() {
        return m526a(this.f521b, this.f522c);
    }

    /* renamed from: c */
    public void m534c() {
        this.f525f = false;
        this.f521b = this.f522c;
    }

    /* renamed from: a */
    public float m528a(float f, float f2, float f3, boolean z) {
        if (Float.isFinite(f2) && f2 > 0.0f) {
            this.f522c = f2;
        }
        if (!Float.isFinite(f)) {
            f = this.f521b;
        }
        if (!z) {
            this.f520a = false;
            this.f521b = f;
            return m526a(f, f2);
        }
        if (!this.f520a) {
            if (Float.isFinite(f3) && f3 > 0.0f) {
                f2 = f3;
            }
            this.f523d = f2;
        }
        this.f520a = true;
        float f4 = this.f524e;
        float f5 = this.f523d;
        float f6 = f5 > 0.0f ? (f - this.f521b) / f5 : 0.0f;
        this.f521b = f;
        return m526a(f4 + f6, 1.0f);
    }

    /* renamed from: a */
    public boolean m532a(float f, boolean z) {
        float m526a = m526a(f, 1.0f);
        if (!z && !this.f526g && m526a == this.f527h) {
            return false;
        }
        this.f526g = z;
        this.f527h = m526a;
        m531a(!z && m526a <= 0.0f);
        if (z) {
            this.f520a = false;
            m530a(1.0f);
        }
        return true;
    }

    /* renamed from: a */
    static float m526a(float f, float f2) {
        if (Float.isFinite(f) && Float.isFinite(f2) && f2 > 0.0f) {
            return Math.max(0.0f, Math.min(1.0f, f / f2));
        }
        return 0.0f;
    }

    /* renamed from: a */
    public void m530a(float f) {
        this.f524e = this.f525f ? 0.0f : m526a(f, 1.0f);
    }

    /* renamed from: a */
    public void m531a(boolean z) {
        this.f525f = z;
        if (z) {
            this.f524e = 0.0f;
            this.f520a = false;
            this.f521b = 0.0f;
        }
    }

    /* renamed from: a */
    public void m529a() {
        this.f524e = 0.0f;
        this.f525f = false;
        this.f526g = false;
        this.f527h = 1.0f;
        this.f520a = false;
        this.f521b = 0.0f;
        this.f522c = 0.0f;
        this.f523d = 0.0f;
    }
}
