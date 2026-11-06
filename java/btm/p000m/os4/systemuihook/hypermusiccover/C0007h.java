package btm.p000m.os4.systemuihook.hypermusiccover;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.graphics.RenderEffect;
import android.graphics.Shader;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.ImageView;
import btm.p000m.os4.systemuihook.hypermusiccover.ChoreographerFrameCallbackC0008i;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0012c;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0013d;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0014e;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0015f;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0016g;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0018i;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0021l;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0023n;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0024o;

/* renamed from: btm.m.os4.systemuihook.hypermusiccover.h */
/* loaded from: classes.dex */
public final class C0007h {

    /* renamed from: A */
    private static final float f84A = 0.12f;

    /* renamed from: A0 */
    private static volatile float f85A0 = 0.0f;

    /* renamed from: B */
    private static final float f86B = 80.0f;

    /* renamed from: B0 */
    private static volatile float f87B0 = 0.0f;

    /* renamed from: C */
    private static final float f88C = 0.7f;

    /* renamed from: C0 */
    private static volatile float f89C0 = 0.0f;

    /* renamed from: D0 */
    private static volatile boolean f91D0 = false;

    /* renamed from: E */
    private static final float f92E = 0.65f;

    /* renamed from: E0 */
    private static volatile Object f93E0 = null;

    /* renamed from: F */
    private static final float f94F = 100.0f;

    /* renamed from: G */
    private static final float f96G = 0.9f;

    /* renamed from: G0 */
    private static volatile long f97G0 = 0;

    /* renamed from: H */
    private static final float f98H = 200.0f;

    /* renamed from: I */
    private static final float f99I = 1.0f;

    /* renamed from: J */
    private static ChoreographerFrameCallbackC0008i f100J = null;

    /* renamed from: K */
    private static ChoreographerFrameCallbackC0008i f101K = null;

    /* renamed from: L */
    private static volatile float f102L = 0.0f;

    /* renamed from: M */
    private static final float f103M = 24.0f;

    /* renamed from: O */
    private static volatile long f105O = 0;

    /* renamed from: P */
    private static volatile boolean f106P = false;

    /* renamed from: Q */
    private static volatile Bitmap f107Q = null;

    /* renamed from: R */
    private static volatile Bitmap f108R = null;

    /* renamed from: T */
    private static volatile View f110T = null;

    /* renamed from: U */
    private static final boolean f111U = false;

    /* renamed from: V */
    private static final boolean f112V = false;

    /* renamed from: W */
    private static final int f113W = 100;

    /* renamed from: X */
    private static final int f114X = 0;

    /* renamed from: Y */
    private static final boolean f115Y = true;

    /* renamed from: Z */
    private static final float f116Z = 0.15f;

    /* renamed from: a */
    private static final String f117a = "[MCShade] ";

    /* renamed from: c */
    private static final String f121c = "com.android.systemui.shade.NotificationPanelView";

    /* renamed from: d */
    private static volatile ViewGroup f123d = null;

    /* renamed from: d0 */
    private static volatile float f124d0 = 0.0f;

    /* renamed from: e */
    private static volatile FrameLayout f125e = null;

    /* renamed from: f */
    private static volatile ImageView f127f = null;

    /* renamed from: f0 */
    private static long f128f0 = 0;

    /* renamed from: g */
    private static volatile Class<?> f129g = null;

    /* renamed from: g0 */
    private static long f130g0 = 0;

    /* renamed from: h0 */
    private static long f132h0 = 0;

    /* renamed from: i */
    private static volatile boolean f133i = false;

    /* renamed from: i0 */
    private static long f134i0 = 0;

    /* renamed from: j */
    private static volatile Bitmap f135j = null;

    /* renamed from: j0 */
    private static long f136j0 = 0;

    /* renamed from: k */
    private static final int f137k = 0;

    /* renamed from: k0 */
    private static volatile float[] f138k0 = null;

    /* renamed from: l */
    private static volatile boolean f139l = false;

    /* renamed from: l0 */
    private static volatile int f140l0 = 0;

    /* renamed from: m */
    private static volatile boolean f141m = false;

    /* renamed from: m0 */
    private static volatile float f142m0 = 0.0f;

    /* renamed from: n */
    private static boolean f143n = false;

    /* renamed from: n0 */
    private static volatile boolean f144n0 = false;

    /* renamed from: o */
    private static int f145o = 0;

    /* renamed from: o0 */
    private static volatile float f146o0 = 0.0f;

    /* renamed from: p */
    private static volatile int f147p = 0;

    /* renamed from: p0 */
    private static volatile float f148p0 = 0.0f;

    /* renamed from: r */
    private static boolean f151r = false;

    /* renamed from: r0 */
    private static volatile int f152r0 = 0;

    /* renamed from: s */
    private static boolean f153s = false;

    /* renamed from: s0 */
    private static final float f154s0 = 0.006f;

    /* renamed from: t */
    private static ChoreographerFrameCallbackC0008i f155t = null;

    /* renamed from: t0 */
    private static final float f156t0 = 0.05f;

    /* renamed from: u */
    private static float f157u = 0.0f;

    /* renamed from: u0 */
    private static final float f158u0 = 0.001f;

    /* renamed from: v */
    private static float f159v = 0.0f;

    /* renamed from: v0 */
    private static final float f160v0 = 24.0f;

    /* renamed from: w */
    private static SharedPreferences f161w = null;

    /* renamed from: w0 */
    private static final int f162w0 = 6;

    /* renamed from: x0 */
    private static volatile float f164x0 = 0.0f;

    /* renamed from: y */
    private static final float f165y = 0.045f;

    /* renamed from: y0 */
    private static volatile boolean f166y0 = false;

    /* renamed from: z */
    private static final float f167z = 0.7f;

    /* renamed from: z0 */
    private static volatile boolean f168z0;

    /* renamed from: b */
    private static final Handler f119b = new Handler(Looper.getMainLooper());

    /* renamed from: h */
    private static volatile int f131h = -1;

    /* renamed from: q */
    private static final C0024o f149q = new C0024o();

    /* renamed from: x */
    private static final SharedPreferences.OnSharedPreferenceChangeListener f163x = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: btm.m.os4.systemuihook.hypermusiccover.h$$ExternalSyntheticLambda0
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            C0007h.m132a(sharedPreferences, str);
        }
    };

    /* renamed from: D */
    private static volatile int f90D = -1;

    /* renamed from: N */
    private static volatile float f104N = -1.0f;

    /* renamed from: S */
    private static final Runnable f109S = new b();

    /* renamed from: a0 */
    private static int f118a0 = -1;

    /* renamed from: b0 */
    private static float f120b0 = Float.NaN;

    /* renamed from: c0 */
    private static volatile float f122c0 = Float.NaN;

    /* renamed from: e0 */
    private static final ViewOutlineProvider f126e0 = new e();

    /* renamed from: q0 */
    private static volatile float f150q0 = Float.NaN;

    /* renamed from: F0 */
    private static volatile String f95F0 = "?";

    /* renamed from: btm.m.os4.systemuihook.hypermusiccover.h$a */
    class a implements Runnable {

        /* renamed from: a */
        final /* synthetic */ ViewGroup f169a;

        a(ViewGroup viewGroup) {
            this.f169a = viewGroup;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewGroup viewGroup = C0007h.f123d;
            ViewGroup viewGroup2 = this.f169a;
            if (viewGroup == viewGroup2) {
                C0007h.m144b(viewGroup2);
            }
        }
    }

    /* renamed from: btm.m.os4.systemuihook.hypermusiccover.h$b */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0007h.m120T();
            if (C0007h.f141m) {
                C0007h.m163i();
            }
        }
    }

    /* renamed from: btm.m.os4.systemuihook.hypermusiccover.h$c */
    class c implements ChoreographerFrameCallbackC0008i.a {
        c() {
        }

        @Override // btm.p000m.os4.systemuihook.hypermusiccover.ChoreographerFrameCallbackC0008i.a
        /* renamed from: a */
        public void mo185a(float f) {
            float unused = C0007h.f102L = f;
            float round = Math.round(f * 24.0f) / 24.0f;
            if (round == C0007h.f104N) {
                return;
            }
            float unused2 = C0007h.f104N = round;
            C0004e.m70a(round);
        }
    }

    /* renamed from: btm.m.os4.systemuihook.hypermusiccover.h$d */
    class d implements ChoreographerFrameCallbackC0008i.a {
        d() {
        }

        @Override // btm.p000m.os4.systemuihook.hypermusiccover.ChoreographerFrameCallbackC0008i.a
        /* renamed from: a */
        public void mo185a(float f) {
            C0007h.m152d(f);
        }
    }

    /* renamed from: btm.m.os4.systemuihook.hypermusiccover.h$e */
    class e extends ViewOutlineProvider {
        e() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            Outline outline2;
            float f = C0007h.f124d0;
            if (f <= 0.0f) {
                outline2 = outline;
            } else {
                if (view.getWidth() > 0) {
                    float[] m171m = C0007h.m171m();
                    float min = Math.min(C0007h.m172n(), Math.min(f, view.getWidth()) / 2.0f);
                    float f2 = min / 2.0f;
                    int ceil = (int) Math.ceil(min);
                    float f3 = m171m[0];
                    int i = (f3 >= f2 || m171m[3] >= f2) ? 0 : -ceil;
                    int i2 = (f3 >= f2 || m171m[1] >= f2) ? 0 : -ceil;
                    int width = view.getWidth();
                    if (m171m[1] >= f2 || m171m[2] >= f2) {
                        ceil = 0;
                    }
                    outline.setRoundRect(i, i2, width + ceil, (int) f, min);
                    return;
                }
                outline2 = outline;
            }
            outline2.setEmpty();
        }
    }

    private C0007h() {
    }

    /* renamed from: A */
    public static boolean m101A() {
        return f141m && f147p != 2;
    }

    /* renamed from: B */
    private static boolean m102B() {
        return f125e != null && f125e.getWidth() > 0 && f125e.getHeight() > 0 && f125e.getWidth() > f125e.getHeight();
    }

    /* renamed from: C */
    public static boolean m103C() {
        return C0002c.m44d();
    }

    /* renamed from: D */
    static boolean m104D() {
        return f141m && f147p == 0;
    }

    /* renamed from: E */
    private static void m105E() {
        long j = f128f0;
        if (j == 0) {
            return;
        }
        C0009j.m209a("[MCShade] frame cost: " + j + " frames over " + ((f136j0 - f134i0) / 1000000) + "ms, ours avg " + ((f130g0 / j) / 1000) + "us, max " + (f132h0 / 1000) + "us");
        f128f0 = 0L;
        f130g0 = 0L;
        f132h0 = 0L;
    }

    /* renamed from: F */
    private static boolean m106F() {
        try {
            return true ^ "0".equals(Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, "debug.duo.master", ""));
        } catch (ReflectiveOperationException e2) {
            C0009j.m209a("[MCShade] master switch unreadable, treated as on: " + e2);
            return true;
        }
    }

    /* renamed from: G */
    public static void m107G() {
        if (f141m) {
            m163i();
        }
    }

    /* renamed from: H */
    public static void m108H() {
        m168l();
        m180v();
    }

    /* renamed from: I */
    public static void m109I() {
        C0024o c0024o = f149q;
        if (c0024o.f526g) {
            return;
        }
        m168l();
        c0024o.m528a(0.0f, 0.0f, 0.0f, false);
        c0024o.m530a(0.0f);
        if (f141m) {
            m180v();
        }
        C0014e.m284H();
    }

    /* renamed from: J */
    public static void m110J() {
        f151r = true;
    }

    /* renamed from: K */
    public static void m111K() {
        f153s = true;
    }

    /* renamed from: L */
    private static boolean m112L() {
        Object obj = f93E0;
        if (obj == null) {
            return false;
        }
        try {
            if (Boolean.TRUE.equals(C0009j.m200a(obj, "isTracking", new Object[0]))) {
                return true;
            }
        } catch (Throwable th) {
        }
        try {
            Object m211b = C0009j.m211b(obj, "mNotifInjector");
            if (m211b != null) {
                if (!m139a(m211b, "panelOpening") && !m139a(m211b, "panelCollapsing")) {
                    if (!m139a(m211b, "panelIntercepting")) {
                        return false;
                    }
                }
                return true;
            }
        } catch (Throwable th2) {
        }
        return false;
    }

    /* renamed from: M */
    static View m113M() {
        Class<?> m147c;
        View view = f110T;
        if (view != null && view.getParent() == f123d) {
            return view;
        }
        ViewGroup viewGroup = f123d;
        if (viewGroup == null || (m147c = m147c(viewGroup)) == null) {
            return null;
        }
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (m147c.isInstance(childAt)) {
                f110T = childAt;
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: N */
    static float m114N() {
        return f102L;
    }

    /* renamed from: O */
    public static void m115O() {
        boolean z = f143n && m106F();
        int i = f145o;
        if (z == f141m && i == f147p) {
            return;
        }
        C0009j.m209a("[MCShade] iOS notification center " + (z ? "on" : "off") + ((!f143n || z) ? "" : " (MiDuo off)"));
        m116P();
        if (f139l) {
            C0002c.m36b(false);
        }
        f139l = false;
        f141m = z;
        if (z) {
            C0014e.m298V();
        } else {
            C0014e.m297U();
        }
        f147p = i;
        C0014e.m349e(i != 2);
        C0002c.m40c();
        if (z) {
            if (i != 2) {
                C0002c.m47g();
            }
            if (f125e != null) {
                m177s();
                f125e.setVisibility(4);
            }
        }
        if (f123d != null) {
            m157f(f164x0);
        }
    }

    /* renamed from: P */
    static void m116P() {
        f97G0++;
        m168l();
        f149q.m529a();
        C0014e.m312a(0.0f, 0.0f, false, null);
        C0013d.m259b();
        C0023n.m511a(false, f123d);
        if (f139l) {
            C0002c.m36b(false);
        }
        f139l = false;
        FrameLayout frameLayout = f125e;
        ImageView imageView = f127f;
        f118a0 = -1;
        f120b0 = Float.NaN;
        f122c0 = Float.NaN;
        ChoreographerFrameCallbackC0008i choreographerFrameCallbackC0008i = f100J;
        if (choreographerFrameCallbackC0008i != null) {
            choreographerFrameCallbackC0008i.m194d();
        }
        ChoreographerFrameCallbackC0008i choreographerFrameCallbackC0008i2 = f101K;
        if (choreographerFrameCallbackC0008i2 != null) {
            choreographerFrameCallbackC0008i2.m194d();
        }
        f144n0 = false;
        if (C0005f.m85c()) {
            C0005f.m86d();
        }
        C0002c.m42c(false);
        C0006g.m100f();
        if (frameLayout != null) {
            frameLayout.setTranslationY(0.0f);
            frameLayout.setAlpha(0.0f);
            f124d0 = 0.0f;
            frameLayout.invalidateOutline();
            frameLayout.setVisibility(8);
        }
        if (imageView != null) {
            imageView.setTranslationY(0.0f);
            imageView.setScaleX(f99I);
            imageView.setScaleY(f99I);
            imageView.setRenderEffect(null);
        }
        f90D = -1;
    }

    /* renamed from: Q */
    private static boolean m117Q() {
        return f164x0 <= 0.0f && f149q.f524e <= 0.0f;
    }

    /* renamed from: R */
    static View m118R() {
        return f123d;
    }

    /* renamed from: S */
    public static boolean m119S() {
        if (!m182x()) {
            return false;
        }
        C0024o c0024o = f149q;
        return !c0024o.f526g && c0024o.f524e > 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: T */
    public static void m120T() {
        ImageView imageView = f127f;
        if (imageView == null) {
            return;
        }
        Bitmap m164j = m164j();
        if ((m164j == null || !m164j.isRecycled()) && m164j != f108R) {
            f108R = m164j;
            imageView.setBackgroundColor(0);
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            imageView.setImageBitmap(m164j);
            f90D = -1;
        }
    }

    /* renamed from: a */
    private static int m123a(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    /* renamed from: g */
    private static float m159g(float f) {
        return f >= f92E ? f99I : f / f92E;
    }

    /* renamed from: h */
    private static float m160h(float f) {
        if (f < 0.0f) {
            return 0.0f;
        }
        return f > f99I ? f99I : f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public static void m163i() {
        RenderEffect createBlurEffect;
        if (f125e == null) {
            return;
        }
        C0024o c0024o = f149q;
        if (c0024o.f525f || c0024o.f524e <= 0.0f || c0024o.f527h <= 0.0f || !m176r()) {
            m180v();
            return;
        }
        m177s();
        m120T();
        boolean m101A = m101A();
        C0014e.m349e(m101A);
        float f = c0024o.f524e * c0024o.f527h;
        f125e.setAlpha(f * f * (3.0f - (2.0f * f)));
        f125e.setVisibility(0);
        f139l = m101A;
        boolean m102B = m102B();
        float f2 = m102B ? 1.12f : 1.0f;
        if (f127f != null) {
            if (f127f.getScaleX() != f2) {
                f127f.setScaleX(f2);
            }
            if (f127f.getScaleY() != f2) {
                f127f.setScaleY(f2);
            }
        }
        float f3 = f125e.getResources().getDisplayMetrics().density;
        int round = m102B ? Math.round((((f99I - f) * 14.0f) + 22.0f) * f3) : Math.round(f3 * 28.0f * (f99I - f));
        if (f127f != null && f90D != round) {
            ImageView imageView = f127f;
            if (round == 0) {
                createBlurEffect = null;
            } else {
                float f4 = round;
                createBlurEffect = RenderEffect.createBlurEffect(f4, f4, Shader.TileMode.CLAMP);
            }
            imageView.setRenderEffect(createBlurEffect);
            f90D = round;
        }
        m152d(c0024o.f524e);
        C0023n.m511a(m101A, f123d);
        C0014e.m312a(f, c0024o.f524e, true, f125e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public static /* synthetic */ void m165j(float f) {
        f149q.m530a(f);
        m163i();
    }

    /* renamed from: k */
    static void m167k(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > f99I) {
            f = 1.0f;
        }
        if (f > 0.0f && m117Q()) {
            m115O();
        }
        f105O++;
        f164x0 = f;
        if (f141m) {
            if (f151r) {
                return;
            }
            f149q.m530a(f);
            m163i();
            return;
        }
        if (!f106P) {
            f106P = true;
            C0009j.m209a("[MCShade] expansion driver is live - first frame f=" + f);
        }
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        m157f(f);
        m130a(SystemClock.elapsedRealtimeNanos() - elapsedRealtimeNanos);
    }

    /* renamed from: l */
    private static void m168l() {
        ChoreographerFrameCallbackC0008i choreographerFrameCallbackC0008i = f155t;
        f155t = null;
        f157u = 0.0f;
        if (choreographerFrameCallbackC0008i != null) {
            choreographerFrameCallbackC0008i.m194d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public static float[] m171m() {
        WindowInsets rootWindowInsets;
        ViewGroup viewGroup = f123d;
        int width = viewGroup == null ? 0 : (viewGroup.getWidth() * 31) + viewGroup.getHeight();
        float[] fArr = f138k0;
        if (fArr != null && width == f140l0) {
            return fArr;
        }
        float[] fArr2 = new float[4];
        if (viewGroup == null) {
            rootWindowInsets = null;
        } else {
            try {
                rootWindowInsets = viewGroup.getRootWindowInsets();
            } catch (Throwable th) {
                C0009j.m209a("[MCShade] no corner radius from the insets, the curtain line will run to the screen edge: " + th);
            }
        }
        int[] iArr = {0, 1, 2, 3};
        for (int i = 0; i < 4 && rootWindowInsets != null; i++) {
            if (rootWindowInsets.getRoundedCorner(iArr[i]) != null) {
                fArr2[i] = r11.getRadius();
            }
        }
        if (fArr2[0] + fArr2[1] + fArr2[2] + fArr2[3] <= 0.0f) {
            float f = viewGroup != null ? viewGroup.getResources().getDisplayMetrics().density * 28.0f : 0.0f;
            return new float[]{f, f, f, f};
        }
        f138k0 = fArr2;
        f140l0 = width;
        C0009j.m209a("[MCShade] display corner radii = " + ((int) fArr2[0]) + "/" + ((int) fArr2[1]) + "/" + ((int) fArr2[2]) + "/" + ((int) fArr2[3]));
        return fArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public static float m172n() {
        float[] m171m = m171m();
        return Math.max(Math.max(m171m[0], m171m[1]), Math.max(m171m[2], m171m[3]));
    }

    /* renamed from: o */
    static String m173o() {
        String str;
        Object valueOf;
        String str2;
        ViewGroup viewGroup = f123d;
        FrameLayout frameLayout = f125e;
        StringBuilder append = new StringBuilder().append("root=").append(viewGroup == null ? "null" : viewGroup.getClass().getSimpleName() + "/" + viewGroup.getChildCount()).append(" frame=").append(frameLayout != null ? frameLayout.getVisibility() + "@" + f131h + " alpha=" + frameLayout.getAlpha() + " line=" + ((int) f124d0) + " r=" + ((int) m172n()) : "null").append(" panel=").append(f129g == null ? "unresolved" : "resolved").append(" mode=").append(0).append(" push=").append(0).append(" pushNow=").append(C0002c.m50j()).append(" hdr=").append(C0006g.m99e()).append(" sbias=").append(C0002c.m49i()).append(" pic=").append(f108R == null ? "none" : f108R == f135j ? "cover" : f108R == f107Q ? "wallpaper" : "stale").append(" cur=").append(f142m0).append(" touch=").append(f168z0 ? "gesture" : f166y0 ? "down" : "up").append(" T/G=").append(f166y0).append("/").append(f168z0).append(" src=").append(f95F0).append(" spr=");
        if (f101K == null) {
            str = "?";
        } else {
            str = m162i(f101K.m195e()) + "/" + (f101K.m193c() ? "run" : "stop");
        }
        StringBuilder append2 = append.append(str).append(" tgt=").append(m162i(f150q0)).append(" relF=").append(f152r0).append(" rst=").append(f97G0).append(" wh=").append(frameLayout == null ? "?" : frameLayout.getWidth() + "x" + frameLayout.getHeight()).append(" at=").append(m126a((View) frameLayout)).append(" drw=");
        if (f127f == null) {
            valueOf = "?";
        } else {
            valueOf = Boolean.valueOf(f127f.getDrawable() != null);
        }
        StringBuilder append3 = append2.append(valueOf).append(" wpwh=").append(f127f == null ? "?" : f127f.getWidth() + "x" + f127f.getHeight()).append(" rel=");
        if (f144n0) {
            str2 = m162i(f146o0) + "/" + m162i(f148p0) + "->" + (Float.isNaN(f150q0) ? "?" : m162i(f150q0));
        } else {
            str2 = "off";
        }
        return append3.append(str2).append(" blurNow=").append(f102L).append(" ").append(C0004e.m72b()).toString();
    }

    /* renamed from: p */
    private static boolean m174p() {
        return f85A0 - f87B0 > 24.0f;
    }

    /* renamed from: q */
    static boolean m175q() {
        return f139l && !f141m;
    }

    /* renamed from: r */
    private static boolean m176r() {
        if (C0002c.m48h() && !C0014e.m293Q() && f141m) {
            if (f147p == 2) {
                return true;
            }
            if (f107Q == null) {
                C0002c.m47g();
            }
            if (f107Q != null && !f107Q.isRecycled()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: s */
    private static void m177s() {
        int indexOfChild;
        int i;
        ViewGroup viewGroup = f123d;
        FrameLayout frameLayout = f125e;
        if (viewGroup == null || frameLayout == null) {
            return;
        }
        Class<?> m147c = m147c(viewGroup);
        if (m147c != null && frameLayout.getParent() == viewGroup && (indexOfChild = viewGroup.indexOfChild(frameLayout)) >= 0 && (i = indexOfChild + 1) < viewGroup.getChildCount() && m147c.isInstance(viewGroup.getChildAt(i))) {
            f131h = indexOfChild;
            return;
        }
        try {
            if (frameLayout.getParent() instanceof ViewGroup) {
                ((ViewGroup) frameLayout.getParent()).removeView(frameLayout);
            }
            int m124a = m147c == null ? -1 : m124a(viewGroup, m147c);
            if (m124a < 0 && !f133i) {
                f133i = true;
                C0009j.m209a("[MCShade] no com.android.systemui.shade.NotificationPanelView under the shade root - the cover layer falls back to index 0, where MIUI's own scrims paint over it. The expected symptom is that pulling the shade shows no cover at all, at every mode.");
            }
            int min = m124a < 0 ? 0 : Math.min(m124a, viewGroup.getChildCount());
            viewGroup.addView(frameLayout, min, new FrameLayout.LayoutParams(-1, -1));
            f131h = min;
            C0009j.m209a("[MCShade] cover layer at index " + min + " of " + viewGroup.getChildCount() + " children, " + (m124a < 0 ? "NOT anchored to the panel" : "below the panel"));
        } catch (Throwable th) {
            C0009j.m209a("[MCShade] cover layer could not be placed: " + th);
        }
    }

    /* renamed from: t */
    private static void m178t() {
        if (f100J != null) {
            return;
        }
        ChoreographerFrameCallbackC0008i choreographerFrameCallbackC0008i = new ChoreographerFrameCallbackC0008i(new c());
        choreographerFrameCallbackC0008i.f175a = f94F;
        choreographerFrameCallbackC0008i.f176b = f96G;
        choreographerFrameCallbackC0008i.f177c = f99I;
        f100J = choreographerFrameCallbackC0008i;
        ChoreographerFrameCallbackC0008i choreographerFrameCallbackC0008i2 = new ChoreographerFrameCallbackC0008i(new d());
        choreographerFrameCallbackC0008i2.f175a = f98H;
        choreographerFrameCallbackC0008i2.f176b = f99I;
        choreographerFrameCallbackC0008i2.f177c = f99I;
        f101K = choreographerFrameCallbackC0008i2;
    }

    /* renamed from: u */
    private static float m179u() {
        ViewGroup viewGroup = f123d;
        if (viewGroup == null) {
            return f142m0;
        }
        int height = viewGroup.getHeight();
        if (height <= 0) {
            return f142m0;
        }
        viewGroup.getLocationOnScreen(new int[2]);
        return m160h(f91D0 ? (f85A0 - r2[1]) / height : f89C0 + ((f85A0 - f87B0) / height));
    }

    /* renamed from: v */
    private static void m180v() {
        f139l = false;
        C0014e.m312a(0.0f, 0.0f, false, null);
        C0023n.m511a(false, f123d);
        if (f125e != null) {
            f125e.setAlpha(0.0f);
            f125e.setVisibility(4);
            f125e.setTranslationY(0.0f);
            f125e.setClipBounds(null);
            f125e.invalidateOutline();
        }
        if (f127f != null) {
            f127f.setTranslationY(0.0f);
            f127f.setScaleX(f99I);
            f127f.setScaleY(f99I);
            f127f.setRenderEffect(null);
        }
        f90D = -1;
        f122c0 = Float.NaN;
        C0013d.m259b();
    }

    /* renamed from: w */
    public static boolean m181w() {
        return f141m;
    }

    /* renamed from: x */
    public static boolean m182x() {
        if (!f141m) {
            return false;
        }
        C0024o c0024o = f149q;
        return !c0024o.f525f && c0024o.f524e > 0.0f && m176r();
    }

    /* renamed from: y */
    public static float m183y() {
        if (f123d != null) {
            return f123d.getHeight();
        }
        return 0.0f;
    }

    /* renamed from: z */
    public static float m184z() {
        if (!f141m) {
            return Float.NaN;
        }
        C0024o c0024o = f149q;
        if (c0024o.f525f || c0024o.f526g) {
            return Float.NaN;
        }
        return c0024o.f524e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static void m152d(float f) {
        int height;
        ViewGroup viewGroup = f123d;
        FrameLayout frameLayout = f125e;
        if (viewGroup == null || frameLayout == null || frameLayout.getVisibility() != 0 || (height = viewGroup.getHeight()) <= 0) {
            return;
        }
        f142m0 = f;
        if (f141m) {
            float f2 = (-height) * (f99I - f);
            if (frameLayout.getTranslationY() != f2) {
                frameLayout.setTranslationY(f2);
            }
            float f3 = height;
            if (f124d0 != f3) {
                f124d0 = f3;
                frameLayout.invalidateOutline();
            }
            if (f127f == null || f127f.getTranslationY() == 0.0f) {
                return;
            }
            f127f.setTranslationY(0.0f);
            return;
        }
        float f4 = height;
        int i = (int) (f4 * f);
        if (i != f118a0) {
            f118a0 = i;
            f124d0 = i;
            frameLayout.invalidateOutline();
        }
        float f5 = f4 * (-0.12f) * (f99I - f);
        ImageView imageView = f127f;
        if (imageView == null || f5 == f120b0) {
            return;
        }
        f120b0 = f5;
        imageView.setTranslationY(f5);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002e  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void m155e(float f) {
        float f2;
        float f3;
        int i;
        int i2;
        RenderEffect renderEffect;
        if (!f141m) {
            if (f <= 0.0f) {
                i = 0;
            } else if (f <= 0.7f) {
                i = 80;
            } else {
                f2 = (f99I - f) / 0.3f;
                f3 = f86B;
            }
            i2 = (i / 4) * 4;
            if (i2 != f90D) {
                return;
            }
            f90D = i2;
            ImageView imageView = f127f;
            if (imageView == null) {
                return;
            }
            if (i2 > 0) {
                float f4 = i2;
                renderEffect = RenderEffect.createBlurEffect(f4, f4, Shader.TileMode.CLAMP);
            } else {
                renderEffect = null;
            }
            imageView.setRenderEffect(renderEffect);
            return;
        }
        f2 = f99I - f;
        f3 = 24.0f;
        i = (int) (f2 * f3);
        i2 = (i / 4) * 4;
        if (i2 != f90D) {
        }
    }

    /* renamed from: f */
    private static void m157f(float f) {
        if (f141m) {
            m163i();
            return;
        }
        FrameLayout frameLayout = f125e;
        if (frameLayout == null) {
            return;
        }
        if (!m176r()) {
            if (f139l) {
                C0002c.m36b(false);
            }
            C0002c.m42c(false);
            C0006g.m100f();
            f139l = false;
            if (frameLayout.getVisibility() != 8) {
                m116P();
                return;
            }
            return;
        }
        m178t();
        float m170m = m170m(f);
        ChoreographerFrameCallbackC0008i choreographerFrameCallbackC0008i = f101K;
        boolean z = m170m > f165y && !((f > f158u0 ? 1 : (f == f158u0 ? 0 : -1)) <= 0 && !f166y0 && !(choreographerFrameCallbackC0008i != null && choreographerFrameCallbackC0008i.m193c()));
        if (z != f139l) {
            C0002c.m36b(z && !f141m);
            C0002c.m42c((!z || f141m || m164j() == null) ? false : true);
            C0006g.m93a(z && !f141m);
            if (!z) {
                m105E();
            }
        }
        f139l = z;
        if (!z) {
            if (frameLayout.getVisibility() != 8) {
                frameLayout.setVisibility(8);
                frameLayout.setAlpha(0.0f);
                f122c0 = Float.NaN;
                frameLayout.setClipBounds(null);
                if (f127f != null) {
                    f127f.setRenderEffect(null);
                }
                f90D = -1;
            }
            f100J.m190a(m159g(m170m));
            return;
        }
        if (m164j() != null) {
            if (frameLayout.getVisibility() != 0) {
                m177s();
                m120T();
                frameLayout.setVisibility(0);
                f100J.m192c(m159g(m170m));
            }
            float f2 = (!f141m && m170m < 0.7f) ? (m170m - f165y) / 0.655f : f99I;
            if (f2 != f122c0) {
                f122c0 = f2;
                frameLayout.setAlpha(f2);
            }
            m155e(m170m);
            m152d(f101K.m195e());
        } else if (frameLayout.getVisibility() == 0) {
            frameLayout.setVisibility(8);
            frameLayout.setAlpha(0.0f);
            frameLayout.setClipBounds(null);
        }
        f100J.m190a(m159g(m170m));
    }

    /* renamed from: b */
    private static void m142b(float f, float f2) {
        m168l();
        C0024o c0024o = f149q;
        if (Math.abs(c0024o.f524e - f) < f158u0) {
            c0024o.m530a(f);
            m163i();
            return;
        }
        ChoreographerFrameCallbackC0008i choreographerFrameCallbackC0008i = new ChoreographerFrameCallbackC0008i(new ChoreographerFrameCallbackC0008i.a() { // from class: btm.m.os4.systemuihook.hypermusiccover.h$$ExternalSyntheticLambda1
            @Override // btm.p000m.os4.systemuihook.hypermusiccover.ChoreographerFrameCallbackC0008i.a
            /* renamed from: a */
            public final void mo185a(float f3) {
                C0007h.m165j(f3);
            }
        });
        choreographerFrameCallbackC0008i.f175a = 400.0f;
        choreographerFrameCallbackC0008i.f176b = f99I;
        f155t = choreographerFrameCallbackC0008i;
        f159v = f;
        choreographerFrameCallbackC0008i.m191a(c0024o.f524e, f, f2);
    }

    /* renamed from: c */
    public static void m151c(boolean z) {
        if (f153s && z) {
            return;
        }
        if (!z) {
            C0024o c0024o = f149q;
            if (c0024o.f526g) {
                return;
            }
            m168l();
            c0024o.m530a(0.0f);
            m180v();
            C0014e.m284H();
            return;
        }
        C0024o c0024o2 = f149q;
        boolean z2 = c0024o2.f525f;
        c0024o2.m534c();
        if (f141m && z2) {
            m168l();
            c0024o2.m530a(f99I);
            m163i();
        }
    }

    /* renamed from: j */
    private static Bitmap m164j() {
        if (!f141m || f147p == 2) {
            return null;
        }
        if (f107Q == null) {
            C0002c.m47g();
        }
        return f107Q;
    }

    /* renamed from: a */
    public static void m138a(boolean z) {
        C0002c.m29a(z);
    }

    /* renamed from: l */
    private static void m169l(float f) {
        f144n0 = true;
        f146o0 = f142m0;
        f148p0 = f;
        f150q0 = Float.NaN;
    }

    /* renamed from: a */
    public static void m127a(float f, float f2) {
        f157u = f2 > 0.0f ? f / f2 : 0.0f;
    }

    /* renamed from: a */
    public static void m128a(float f, float f2, boolean z, boolean z2) {
        if (m117Q()) {
            m115O();
        }
        if (f141m) {
            float height = f123d != null ? f123d.getHeight() : 0.0f;
            C0024o c0024o = f149q;
            if (!c0024o.f525f && !c0024o.f526g) {
                float m528a = c0024o.m528a(f, f2, height, z);
                C0014e.m332b(z);
                if (z) {
                    m168l();
                    c0024o.m530a(m528a);
                    m163i();
                    return;
                } else if (!z2) {
                    m168l();
                    c0024o.m530a(m528a);
                    m163i();
                    return;
                } else {
                    if (f155t == null || f159v != m528a) {
                        m142b(m528a, f157u);
                        return;
                    }
                    return;
                }
            }
            c0024o.m528a(f, f2, height, false);
        }
    }

    /* renamed from: b */
    public static void m146b(boolean z) {
        if (f153s && z) {
            return;
        }
        C0024o c0024o = f149q;
        boolean z2 = c0024o.f525f;
        c0024o.m531a(z);
        if (z) {
            m168l();
            m180v();
            C0014e.m284H();
        } else if (z2) {
            m168l();
            c0024o.m530a(0.0f);
            m180v();
            C0014e.m284H();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static void m150c(SharedPreferences sharedPreferences) {
        boolean z = sharedPreferences.getBoolean(C0015f.f406a, false);
        int m431a = C0015f.m431a(sharedPreferences.getInt(C0015f.f407b, 0));
        C0014e.m340c(sharedPreferences.getBoolean(C0015f.f408c, false));
        C0014e.m321a(sharedPreferences.getBoolean(C0018i.f429a, false), sharedPreferences.getInt(C0018i.f430b, 3), sharedPreferences.getInt(C0018i.f431c, 0), sharedPreferences.getFloat(C0018i.f432d, 22.0f), sharedPreferences.getInt(C0018i.f433e, 1728053247), sharedPreferences.getInt(C0018i.f434f, -1), sharedPreferences.getInt(C0018i.f435g, 14), sharedPreferences.getInt(C0018i.f436h, 36), sharedPreferences.getBoolean(C0018i.f437i, false), sharedPreferences.getInt(C0018i.f438j, -1), sharedPreferences.getInt(C0018i.f439k, 10), sharedPreferences.getInt(C0018i.f440l, 80), sharedPreferences.getInt(C0018i.f441m, 36), sharedPreferences.getFloat(C0018i.f442n, 0.14f), sharedPreferences.getInt(C0018i.f443o, 0), sharedPreferences.getInt(C0018i.f444p, 0), sharedPreferences.getString(C0018i.f445q, ""), sharedPreferences.getString(C0018i.f446r, ""), sharedPreferences.getString(C0018i.f447s, ""), sharedPreferences.getInt(C0018i.f448t, f113W), sharedPreferences.getInt(C0018i.f449u, f113W), sharedPreferences.getInt(C0018i.f450v, 8));
        C0014e.m320a(C0021l.m475a(sharedPreferences), C0021l.m476b(sharedPreferences));
        C0014e.m330b(C0012c.m250a(sharedPreferences));
        C0014e.m337c(sharedPreferences.getInt(C0016g.f409a, 0));
        f143n = z;
        f145o = m431a;
        m115O();
    }

    /* renamed from: k */
    private static void m166k() {
        ChoreographerFrameCallbackC0008i choreographerFrameCallbackC0008i = f101K;
        if (choreographerFrameCallbackC0008i == null) {
            return;
        }
        m169l(f164x0);
        f152r0 = 0;
        if (f164x0 >= 0.999f) {
            f150q0 = f99I;
        } else if (f164x0 <= f158u0) {
            f150q0 = 0.0f;
        }
        if (Float.isNaN(f150q0)) {
            return;
        }
        choreographerFrameCallbackC0008i.m190a(f150q0);
    }

    /* renamed from: m */
    private static float m170m(float f) {
        ChoreographerFrameCallbackC0008i choreographerFrameCallbackC0008i = f101K;
        if (choreographerFrameCallbackC0008i == null) {
            return f;
        }
        if (!f141m) {
            if (f166y0 && f168z0) {
                if (f <= f158u0 && !m174p()) {
                    f95F0 = "hold";
                    if (!f144n0) {
                        m169l(f);
                    }
                    return m122a(choreographerFrameCallbackC0008i, f);
                }
                f95F0 = "glue";
                f144n0 = false;
                float m179u = m179u();
                float f2 = f - ((f99I - f) * f116Z);
                if (m179u < f2) {
                    m179u = f2;
                }
                choreographerFrameCallbackC0008i.m192c(m160h(m179u));
                return choreographerFrameCallbackC0008i.m195e();
            }
            if (f166y0) {
                f95F0 = "idle";
                if (!f144n0) {
                    m169l(f);
                }
                return m122a(choreographerFrameCallbackC0008i, f);
            }
            f95F0 = "release";
            if (!f144n0) {
                m169l(f);
            }
            return m122a(choreographerFrameCallbackC0008i, f);
        }
        f95F0 = "panel";
        choreographerFrameCallbackC0008i.m192c(f);
        return f;
    }

    /* renamed from: a */
    public static void m129a(float f, boolean z) {
        C0024o c0024o = f149q;
        boolean z2 = c0024o.f526g;
        if (c0024o.m532a(f, z) && f141m) {
            C0014e.m345d(c0024o.f526g);
            m168l();
            m163i();
            if (!z2 || c0024o.f526g || c0024o.f525f || c0024o.m533b() >= c0024o.f524e) {
                return;
            }
            m142b(c0024o.m533b(), 0.0f);
        }
    }

    /* renamed from: b */
    static void m145b(Object obj) {
        if (obj instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) obj;
            if (f123d != null && f123d != viewGroup) {
                m116P();
                if (f139l) {
                    C0002c.m36b(false);
                }
                f139l = false;
                if (f125e != null && (f125e.getParent() instanceof ViewGroup)) {
                    ((ViewGroup) f125e.getParent()).removeView(f125e);
                }
                f125e = null;
                f127f = null;
                f108R = null;
                f110T = null;
            }
            f123d = viewGroup;
            f138k0 = null;
            f131h = -1;
            viewGroup.post(new a(viewGroup));
        }
    }

    /* renamed from: i */
    private static String m162i(float f) {
        return String.valueOf(Math.round(f * 1000.0f) / 1000.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m132a(final SharedPreferences sharedPreferences, String str) {
        if (C0015f.f406a.equals(str) || C0015f.f407b.equals(str) || C0015f.f408c.equals(str) || C0018i.f429a.equals(str) || C0018i.f430b.equals(str) || C0018i.f431c.equals(str) || C0018i.f432d.equals(str) || C0018i.f433e.equals(str) || C0018i.f434f.equals(str) || C0018i.f435g.equals(str) || C0018i.f436h.equals(str) || C0018i.f437i.equals(str) || C0018i.f438j.equals(str) || C0018i.f439k.equals(str) || C0018i.f440l.equals(str) || C0018i.f441m.equals(str) || C0018i.f442n.equals(str) || C0018i.f443o.equals(str) || C0018i.f444p.equals(str) || C0018i.f445q.equals(str) || C0018i.f446r.equals(str) || C0018i.f447s.equals(str) || C0018i.f448t.equals(str) || C0018i.f449u.equals(str) || C0018i.f450v.equals(str) || C0021l.f489a.equals(str) || C0021l.f490b.equals(str) || C0012c.f237a.equals(str) || C0016g.f409a.equals(str)) {
            f119b.post(new Runnable() { // from class: btm.m.os4.systemuihook.hypermusiccover.h$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    C0007h.m150c(sharedPreferences);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m144b(ViewGroup viewGroup) {
        if (f125e != null) {
            return;
        }
        try {
            Context context = viewGroup.getContext();
            if (!C0002c.m37b()) {
                C0002c.m25a(context);
            }
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setClipChildren(true);
            frameLayout.setClickable(false);
            frameLayout.setFocusable(false);
            frameLayout.setEnabled(false);
            frameLayout.setClipToOutline(true);
            frameLayout.setOutlineProvider(f126e0);
            frameLayout.setAlpha(0.0f);
            frameLayout.setVisibility(8);
            ImageView imageView = new ImageView(context);
            imageView.setClickable(false);
            imageView.setFocusable(false);
            imageView.setEnabled(false);
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            frameLayout.addView(imageView, new FrameLayout.LayoutParams(-1, -1));
            f125e = frameLayout;
            f127f = imageView;
            frameLayout.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: btm.m.os4.systemuihook.hypermusiccover.h$$ExternalSyntheticLambda3
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    C0007h.m135a(view, i, i2, i3, i4, i5, i6, i7, i8);
                }
            });
            C0014e.m316a(viewGroup);
            C0004e.m74c();
            m120T();
            if (f141m) {
                m177s();
                frameLayout.setVisibility(4);
                m163i();
            }
            C0009j.m209a("[MCShade] cover layer built for " + viewGroup.getClass().getName() + " (" + viewGroup.getChildCount() + " children)");
        } catch (Throwable th) {
            C0009j.m209a("[MCShade] cover layer could not be built: " + th);
        }
    }

    /* renamed from: a */
    static void m131a(SharedPreferences sharedPreferences) {
        f161w = sharedPreferences;
        m150c(sharedPreferences);
        sharedPreferences.registerOnSharedPreferenceChangeListener(f163x);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m135a(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (f125e == view && f141m && f149q.f524e > 0.0f) {
            if (i3 - i == i7 - i5 && i4 - i2 == i8 - i6) {
                return;
            }
            m163i();
        }
    }

    /* renamed from: a */
    private static int m124a(ViewGroup viewGroup, Class<?> cls) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            if (cls.isInstance(viewGroup.getChildAt(i))) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    static void m133a(Bitmap bitmap) {
        f107Q = bitmap;
        f119b.post(f109S);
    }

    /* renamed from: a */
    private static void m130a(long j) {
        if (f128f0 == 0) {
            f134i0 = SystemClock.elapsedRealtimeNanos();
        }
        f136j0 = SystemClock.elapsedRealtimeNanos();
        f128f0++;
        f130g0 += j;
        if (j > f132h0) {
            f132h0 = j;
        }
    }

    /* renamed from: a */
    static void m137a(Object obj) {
        f93E0 = obj;
    }

    /* renamed from: a */
    static void m134a(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return;
        }
        switch (motionEvent.getActionMasked()) {
            case 0:
                f166y0 = true;
                f168z0 = false;
                f85A0 = motionEvent.getRawY();
                f87B0 = f85A0;
                f91D0 = f164x0 <= f158u0;
                f89C0 = f142m0;
                break;
            case 1:
            case 3:
                f166y0 = false;
                f168z0 = false;
                m166k();
                break;
            case 2:
                f85A0 = motionEvent.getRawY();
                if (!f168z0) {
                    f168z0 = m112L();
                    break;
                }
                break;
        }
    }

    /* renamed from: c */
    private static Class<?> m147c(ViewGroup viewGroup) {
        Class<?> cls = f129g;
        if (cls != null) {
            return cls;
        }
        try {
            Class<?> m199a = C0009j.m199a(f121c, viewGroup.getClass().getClassLoader());
            f129g = m199a;
            return m199a;
        } catch (Throwable th) {
            C0009j.m209a("[MCShade] com.android.systemui.shade.NotificationPanelView not found: " + th);
            return null;
        }
    }

    /* renamed from: a */
    private static boolean m139a(Object obj, String str) {
        try {
            return Boolean.TRUE.equals(C0009j.m211b(obj, str));
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: a */
    private static float m122a(ChoreographerFrameCallbackC0008i choreographerFrameCallbackC0008i, float f) {
        f152r0++;
        if (Float.isNaN(f150q0)) {
            if (f >= 0.999f) {
                f150q0 = f99I;
            } else if (f <= f158u0) {
                f150q0 = 0.0f;
            } else if (f > f148p0 + f154s0) {
                f150q0 = f99I;
            } else if (f < f148p0 - f154s0) {
                f150q0 = 0.0f;
            } else if (f152r0 > 6) {
                f150q0 = f < 0.5f ? 0.0f : 1.0f;
            }
        }
        if (!Float.isNaN(f150q0)) {
            if (f150q0 == f99I && f < f148p0 - f156t0) {
                f150q0 = 0.0f;
            } else if (f150q0 == 0.0f && f > f148p0 + f156t0) {
                f150q0 = f99I;
            } else if (Math.abs(f - f148p0) < f154s0 && f152r0 > 6) {
                float f2 = f >= 0.5f ? 1.0f : 0.0f;
                if (f2 != f150q0) {
                    f150q0 = f2;
                    f152r0 = 0;
                    choreographerFrameCallbackC0008i.m190a(f2);
                    return choreographerFrameCallbackC0008i.m195e();
                }
            }
        }
        float f3 = f150q0;
        if (Float.isNaN(f3)) {
            return choreographerFrameCallbackC0008i.m195e();
        }
        if (!choreographerFrameCallbackC0008i.m193c()) {
            if (f <= f158u0 && f3 != 0.0f) {
                f150q0 = 0.0f;
                choreographerFrameCallbackC0008i.m190a(0.0f);
                return choreographerFrameCallbackC0008i.m195e();
            }
            if (f >= 0.999f && f3 != f99I) {
                f150q0 = f99I;
                choreographerFrameCallbackC0008i.m190a(f99I);
                return choreographerFrameCallbackC0008i.m195e();
            }
        }
        choreographerFrameCallbackC0008i.m190a(f3);
        return choreographerFrameCallbackC0008i.m195e();
    }

    /* renamed from: a */
    private static String m126a(View view) {
        if (view == null) {
            return "?";
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr[0] + "," + iArr[1];
    }
}
