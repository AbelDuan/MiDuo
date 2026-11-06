package btm.p000m.os4.systemuihook.hypermusiccover;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;

/* renamed from: btm.m.os4.systemuihook.hypermusiccover.f */
/* loaded from: classes.dex */
final class C0005f {

    /* renamed from: a */
    private static final String f53a = "[MCGate] ";

    /* renamed from: c */
    private static final float f55c = 0.045f;

    /* renamed from: d */
    private static final float f56d = 0.1f;

    /* renamed from: e */
    private static final long f57e = 350;

    /* renamed from: f */
    private static final long f58f = 200;

    /* renamed from: h */
    private static final long f60h = 6000;

    /* renamed from: i */
    private static AnimatorSet f61i;

    /* renamed from: j */
    private static boolean f62j;

    /* renamed from: k */
    private static volatile boolean f63k;

    /* renamed from: b */
    private static final Handler f54b = new Handler(Looper.getMainLooper());

    /* renamed from: g */
    private static final Interpolator f59g = new PathInterpolator(0.33f, 0.0f, 0.67f, 1.0f);

    /* renamed from: l */
    private static final Runnable f64l = new a();

    /* renamed from: btm.m.os4.systemuihook.hypermusiccover.f$a */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0005f.f63k) {
                C0009j.m209a("[MCGate] the panel has been hidden for 6000ms with nothing moving it - restoring unconditionally. A panel at alpha 0 still takes touches, so leaving it there is a phone that looks dead.");
                C0005f.m86d();
            }
        }
    }

    private C0005f() {
    }

    /* renamed from: b */
    private static void m82b(View view) {
        m83b(view, 0.0f);
        if (f63k) {
            return;
        }
        f63k = true;
        Handler handler = f54b;
        Runnable runnable = f64l;
        handler.removeCallbacks(runnable);
        handler.postDelayed(runnable, f60h);
    }

    /* renamed from: c */
    static void m84c(View view) {
        m83b(view, 1.0f);
    }

    /* renamed from: d */
    private static void m87d(View view) {
        f63k = false;
        f54b.removeCallbacks(f64l);
        m79a(view, 1.0f, f57e);
    }

    /* renamed from: a */
    static void m78a(View view, float f) {
        if (view == null) {
            return;
        }
        if (f <= f55c) {
            m81b();
            f62j = false;
            m82b(view);
        } else {
            if (f >= f56d) {
                if (f62j) {
                    return;
                }
                f62j = true;
                m87d(view);
                return;
            }
            if (f62j) {
                f62j = false;
                m77a(view);
            }
        }
    }

    /* renamed from: c */
    static boolean m85c() {
        return f63k;
    }

    /* renamed from: d */
    static void m86d() {
        m81b();
        f62j = false;
        f63k = false;
        f54b.removeCallbacks(f64l);
        m84c(C0007h.m113M());
    }

    /* renamed from: b */
    private static void m81b() {
        AnimatorSet animatorSet = f61i;
        if (animatorSet == null) {
            return;
        }
        f61i = null;
        try {
            animatorSet.cancel();
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    private static void m83b(View view, float f) {
        if (view == null) {
            return;
        }
        try {
            view.setAlpha(f);
        } catch (Throwable th) {
            C0009j.m209a("[MCGate] could not set the panel's alpha: " + th);
        }
    }

    /* renamed from: a */
    private static void m77a(View view) {
        f63k = true;
        Handler handler = f54b;
        Runnable runnable = f64l;
        handler.removeCallbacks(runnable);
        handler.postDelayed(runnable, f60h);
        m79a(view, 0.0f, f58f);
    }

    /* renamed from: a */
    private static void m79a(View view, float f, long j) {
        m81b();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", f);
        ofFloat.setDuration(j);
        ofFloat.setInterpolator(f59g);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat);
        f61i = animatorSet;
        animatorSet.start();
    }
}
