package btm.p000m.os4.systemuihook.hypermusiccover;

import android.view.Choreographer;

/* renamed from: btm.m.os4.systemuihook.hypermusiccover.i */
/* loaded from: classes.dex */
final class ChoreographerFrameCallbackC0008i implements Choreographer.FrameCallback {

    /* renamed from: k */
    private static final float f170k = 0.004f;

    /* renamed from: l */
    private static final float f171l = 0.002f;

    /* renamed from: m */
    private static final float f172m = 0.02f;

    /* renamed from: n */
    private static final float f173n = 0.064f;

    /* renamed from: o */
    private static Choreographer f174o;

    /* renamed from: a */
    float f175a = 100.0f;

    /* renamed from: b */
    float f176b = 0.9f;

    /* renamed from: c */
    float f177c = 1.0f;

    /* renamed from: d */
    private final a f178d;

    /* renamed from: e */
    private float f179e;

    /* renamed from: f */
    private float f180f;

    /* renamed from: g */
    private float f181g;

    /* renamed from: h */
    private boolean f182h;

    /* renamed from: i */
    private boolean f183i;

    /* renamed from: j */
    private long f184j;

    /* renamed from: btm.m.os4.systemuihook.hypermusiccover.i$a */
    interface a {
        /* renamed from: a */
        void mo185a(float f);
    }

    ChoreographerFrameCallbackC0008i(a aVar) {
        this.f178d = aVar;
    }

    /* renamed from: a */
    private static Choreographer m186a() {
        Choreographer choreographer = f174o;
        if (choreographer != null) {
            return choreographer;
        }
        Choreographer choreographer2 = Choreographer.getInstance();
        f174o = choreographer2;
        return choreographer2;
    }

    /* renamed from: b */
    private void m188b() {
        if (this.f183i) {
            return;
        }
        this.f183i = true;
        m186a().postFrameCallback(this);
    }

    /* renamed from: c */
    boolean m193c() {
        return this.f182h;
    }

    /* renamed from: d */
    void m194d() {
        this.f182h = false;
        this.f180f = 0.0f;
        m186a().removeFrameCallback(this);
        this.f183i = false;
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        this.f183i = false;
        if (this.f182h) {
            if (this.f184j == 0) {
                this.f184j = j;
                m188b();
                return;
            }
            float f = (j - r0) / 1.0E9f;
            this.f184j = j;
            if (f <= 0.0f) {
                m188b();
                return;
            }
            if (f > f173n) {
                f = 0.064f;
            }
            m189d(f);
            float m187b = m187b(this.f179e);
            this.f179e = m187b;
            this.f178d.mo185a(m187b);
            if (Math.abs(this.f179e - this.f181g) >= f171l || Math.abs(this.f180f) >= f172m) {
                m188b();
                return;
            }
            float f2 = this.f181g;
            this.f179e = f2;
            this.f180f = 0.0f;
            this.f178d.mo185a(f2);
            m194d();
        }
    }

    /* renamed from: e */
    float m195e() {
        return this.f179e;
    }

    /* renamed from: c */
    void m192c(float f) {
        m194d();
        float m187b = m187b(f);
        this.f179e = m187b;
        this.f180f = 0.0f;
        this.f178d.mo185a(m187b);
    }

    /* renamed from: b */
    private float m187b(float f) {
        if (f < 0.0f) {
            return 0.0f;
        }
        float f2 = this.f177c;
        return f > f2 ? f2 : f;
    }

    /* renamed from: a */
    void m190a(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        float f2 = this.f177c;
        if (f > f2) {
            f = f2;
        }
        this.f181g = f;
        this.f182h = true;
        m188b();
    }

    /* renamed from: d */
    private void m189d(float f) {
        int ceil = (int) Math.ceil(f / f170k);
        if (ceil < 1) {
            ceil = 1;
        }
        float f2 = f / ceil;
        float sqrt = this.f176b * 2.0f * ((float) Math.sqrt(this.f175a));
        for (int i = 0; i < ceil; i++) {
            float f3 = -this.f175a;
            float f4 = this.f179e;
            float f5 = f3 * (f4 - this.f181g);
            float f6 = this.f180f;
            float f7 = f6 + ((f5 - (sqrt * f6)) * f2);
            this.f180f = f7;
            this.f179e = f4 + (f7 * f2);
        }
    }

    /* renamed from: a */
    void m191a(float f, float f2, float f3) {
        m194d();
        this.f179e = m187b(f);
        this.f180f = f3;
        this.f184j = System.nanoTime();
        m190a(f2);
    }
}
