package btm.p000m.os4.systemuihook.hypermusiccover;

import android.view.View;
import android.view.ViewTreeObserver;
import dev.duo.hookprobe.C0054J;

/* renamed from: btm.m.os4.systemuihook.hypermusiccover.g */
/* loaded from: classes.dex */
final class C0006g {

    /* renamed from: a */
    private static final String f65a = "[MCHeader] ";

    /* renamed from: b */
    private static final String f66b = "normal_notification_header_view";

    /* renamed from: c */
    private static final String f67c = "big_time";

    /* renamed from: d */
    private static final String f68d = "date_time";

    /* renamed from: e */
    private static final String f69e = "carrier_container";

    /* renamed from: f */
    private static volatile int f70f = 0;

    /* renamed from: g */
    private static volatile int f71g = 0;

    /* renamed from: h */
    private static volatile View f72h = null;

    /* renamed from: i */
    private static volatile View f73i = null;

    /* renamed from: j */
    private static volatile View f74j = null;

    /* renamed from: k */
    private static volatile ViewTreeObserver f75k = null;

    /* renamed from: l */
    private static volatile boolean f76l = false;

    /* renamed from: m */
    private static final int f77m = 0;

    /* renamed from: n */
    private static final int f78n = 1;

    /* renamed from: o */
    private static final int f79o = 2;

    /* renamed from: r */
    private static volatile boolean f82r;

    /* renamed from: p */
    private static final int[] f80p = new int[3];

    /* renamed from: q */
    private static final float[] f81q = {Float.NaN, Float.NaN, Float.NaN};

    /* renamed from: s */
    private static final ViewTreeObserver.OnPreDrawListener f83s = new a();

    /* renamed from: btm.m.os4.systemuihook.hypermusiccover.g$a */
    class a implements ViewTreeObserver.OnPreDrawListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            C0006g.m94b();
            return true;
        }
    }

    private C0006g() {
    }

    /* renamed from: b */
    static void m95b(int i) {
        f70f = i;
    }

    /* renamed from: c */
    static int m97c() {
        return f71g;
    }

    /* renamed from: d */
    static int m98d() {
        return f70f;
    }

    /* renamed from: e */
    static String m99e() {
        if (f70f == 0 && f71g == 0) {
            return "off";
        }
        StringBuilder append = new StringBuilder().append(f76l ? "armed" : "idle").append("/c").append(f70f).append(" r").append(f71g).append(" ty=").append(m89a(f72h)).append(",").append(m89a(f73i)).append(",").append(m89a(f74j)).append(" added=");
        int[] iArr = f80p;
        return append.append(iArr[0]).append(",").append(iArr[1]).append(",").append(iArr[2]).toString();
    }

    /* renamed from: f */
    static void m100f() {
        ViewTreeObserver viewTreeObserver = f75k;
        f75k = null;
        if (viewTreeObserver != null) {
            try {
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnPreDrawListener(f83s);
                }
            } catch (Throwable th) {
            }
        }
        if (f76l) {
            f76l = false;
            m92a(0, f72h, 0, true);
            m92a(1, f73i, 0, true);
            m92a(2, f74j, 0, true);
            f72h = null;
            f73i = null;
            f74j = null;
            C0009j.m209a("[MCHeader] header released");
        }
    }

    /* renamed from: a */
    static void m91a(int i) {
        f71g = i;
    }

    /* renamed from: b */
    private static void m96b(View view) {
        if (f75k == null || !f75k.isAlive()) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                f75k = viewTreeObserver;
                viewTreeObserver.addOnPreDrawListener(f83s);
            }
        }
    }

    /* renamed from: a */
    static void m93a(boolean z) {
        View m118R;
        if (!z) {
            m100f();
            return;
        }
        if ((f70f == 0 && f71g == 0) || (m118R = C0007h.m118R()) == null) {
            return;
        }
        View m88a = m88a(m118R, f66b);
        if (m88a == null) {
            if (f82r) {
                return;
            }
            f82r = true;
            C0009j.m209a("[MCHeader] no normal_notification_header_view under " + m118R.getClass().getSimpleName() + " - there is nothing for the header offsets to move on this build");
            return;
        }
        if (f76l) {
            m92a(0, f72h, 0, true);
            m92a(1, f73i, 0, true);
            m92a(2, f74j, 0, true);
            f76l = false;
        }
        f72h = m88a(m88a, f67c);
        f73i = m88a(m88a, f68d);
        f74j = m88a(m88a, f69e);
        if (f72h == null && f73i == null && f74j == null) {
            C0009j.m209a("[MCHeader] none of big_time / date_time / carrier_container found inside the header - nothing to move");
            return;
        }
        for (int i = 0; i < 3; i++) {
            f80p[i] = 0;
            f81q[i] = Float.NaN;
        }
        m96b(m88a);
        if (!f76l) {
            C0009j.m209a("[MCHeader] header armed: clock=" + (f72h != null) + " date=" + (f73i != null) + " carriers=" + (f74j != null) + " shift=" + f70f + "/" + f71g);
        }
        f76l = true;
        m94b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m94b() {
        if (f76l) {
            m92a(0, f72h, f70f, false);
            m92a(1, f73i, f70f, false);
            m92a(2, f74j, f71g, false);
        }
    }

    /* renamed from: a */
    private static void m92a(int i, View view, int i2, boolean z) {
        float f;
        if (view == null) {
            return;
        }
        try {
            float translationY = view.getTranslationY();
            int[] iArr = f80p;
            int i3 = iArr[i];
            if (z) {
                f = translationY - i3;
                iArr[i] = 0;
                f81q[i] = Float.NaN;
            } else {
                float[] fArr = f81q;
                if (translationY != fArr[i]) {
                    float f2 = i2 + translationY;
                    iArr[i] = i2;
                    fArr[i] = f2;
                    f = f2;
                } else {
                    if (i3 == i2) {
                        return;
                    }
                    float f3 = (translationY - i3) + i2;
                    iArr[i] = i2;
                    fArr[i] = f3;
                    f = f3;
                }
            }
            if (f != translationY) {
                view.setTranslationY(f);
            }
        } catch (Throwable th) {
            C0009j.m209a("[MCHeader] could not hold a header view: " + th);
        }
    }

    /* renamed from: a */
    private static View m88a(View view, String str) {
        if (view == null) {
            return null;
        }
        try {
            int identifier = view.getContext().getResources().getIdentifier(str, "id", "com.android.systemui");
            if (identifier == 0) {
                return null;
            }
            return view.findViewById(identifier);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    private static String m89a(View view) {
        return view == null ? C0054J.f922e : String.valueOf(Math.round(view.getTranslationY()));
    }
}
