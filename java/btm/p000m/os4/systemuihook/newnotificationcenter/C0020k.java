package btm.p000m.os4.systemuihook.newnotificationcenter;

import android.os.Handler;
import btm.p000m.os4.systemuihook.hypermusiccover.C0009j;
import dev.duo.taskcore.WorkspaceProtocol;
import io.github.libxposed.api.XposedInterface;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;

/* renamed from: btm.m.os4.systemuihook.newnotificationcenter.k */
/* loaded from: classes.dex */
final class C0020k {

    /* renamed from: l */
    private static final Set<Class<?>> f476l = Collections.newSetFromMap(new IdentityHashMap());

    /* renamed from: m */
    private static C0020k f477m;

    /* renamed from: a */
    private final Object f478a;

    /* renamed from: b */
    private final Object f479b;

    /* renamed from: c */
    private final Object f480c;

    /* renamed from: d */
    private final Object f481d;

    /* renamed from: e */
    private final Handler f482e;

    /* renamed from: f */
    private boolean f483f;

    /* renamed from: g */
    private boolean f484g;

    /* renamed from: h */
    private boolean f485h;

    /* renamed from: i */
    private final Runnable f486i = new Runnable() { // from class: btm.m.os4.systemuihook.newnotificationcenter.k$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            C0020k.this.m468c();
        }
    };

    /* renamed from: j */
    private final Runnable f487j = new Runnable() { // from class: btm.m.os4.systemuihook.newnotificationcenter.k$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            C0020k.this.m469d();
        }
    };

    /* renamed from: k */
    private final Runnable f488k = new Runnable() { // from class: btm.m.os4.systemuihook.newnotificationcenter.k$$ExternalSyntheticLambda2
        @Override // java.lang.Runnable
        public final void run() {
            C0020k.this.m470f();
        }
    };

    private C0020k(Object obj, Object obj2) throws Exception {
        this.f478a = obj;
        Object m211b = C0009j.m211b(obj2, "shortcutMoveController");
        this.f479b = m211b;
        Object m211b2 = C0009j.m211b(m211b, "shortcutOccludedAnimController");
        this.f480c = m211b2;
        this.f481d = C0009j.m199a("com.miui.keyguard.shortcuts.manager.MiuiShortcutManager", obj2.getClass().getClassLoader()).getField("INSTANCE").get(null);
        this.f482e = (Handler) C0009j.m200a(m211b2, "getMainHandler", new Object[0]);
        Class<?> cls = m211b2.getClass();
        Set<Class<?>> set = f476l;
        if (set.contains(cls)) {
            return;
        }
        C0009j.m205a(cls, "startShortcutActivity", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.k$$ExternalSyntheticLambda3
            public final Object intercept(XposedInterface.Chain chain) {
                Object m465a;
                m465a = C0020k.m465a(chain);
                return m465a;
            }
        });
        set.add(cls);
        C0011b.m241a(cls, "startFullScreenAnim");
    }

    /* renamed from: a */
    static C0020k m464a(Object obj, Object obj2) throws Exception {
        return new C0020k(obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m468c() {
        m466a(this.f484g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m469d() {
        m466a(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m470f() {
        if (f477m != this || this.f485h) {
            return;
        }
        try {
            ((Runnable) C0009j.m211b(this.f480c, "dismissRunnable")).run();
        } catch (Throwable th) {
            try {
                C0009j.m209a("[IOSShade] shortcut failure feedback unavailable: " + th);
            } finally {
                m466a(false);
            }
        }
    }

    /* renamed from: g */
    private void m471g() {
        if (this.f485h || this.f483f) {
            return;
        }
        this.f483f = true;
        try {
            this.f484g = Boolean.TRUE.equals(C0009j.m200a(this.f481d, "startShortcutActivity", new Object[0]));
        } catch (Throwable th) {
            C0009j.m209a("[IOSShade] shortcut launch failed: " + th);
        }
        if (this.f484g) {
            return;
        }
        this.f482e.post(this.f488k);
    }

    /* renamed from: b */
    void m473b() {
        m466a(false);
    }

    /* renamed from: e */
    void m474e() {
        if (f477m != this || this.f485h) {
            return;
        }
        this.f482e.removeCallbacks(this.f486i);
        this.f482e.postDelayed(this.f486i, 2500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m465a(XposedInterface.Chain chain) throws Throwable {
        C0020k c0020k = f477m;
        if (c0020k == null || c0020k.f480c != chain.getThisObject()) {
            return chain.proceed();
        }
        c0020k.m471g();
        return null;
    }

    /* renamed from: a */
    void m472a() {
        C0020k c0020k = f477m;
        if (c0020k != null) {
            c0020k.m466a(false);
        }
        this.f483f = false;
        this.f484g = false;
        f477m = this;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    static boolean m467a(Object obj, String str) {
        char c;
        C0020k c0020k = f477m;
        if (c0020k == null || c0020k.f478a != obj) {
            return false;
        }
        str.getClass();
        switch (str.hashCode()) {
            case -1770987263:
                if (str.equals("onOccludedAnimationEnd")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1098601720:
                if (str.equals("onOccludedAnimationStart")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -78161010:
                if (str.equals("onMoveDistanceUpdate")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 201463643:
                if (str.equals("onTouchUp")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1285420546:
                if (str.equals("onDismissAnimationEnd")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1720356556:
                if (str.equals("updateCanShowBiometricAuthentication")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1900609853:
                if (str.equals("onBackAnimationEnd")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1992897752:
                if (str.equals("onFullscreenAnimationStart")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 2062393041:
                if (str.equals("onFullscreenAnimationEnd")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 4:
            case WorkspaceProtocol.QUERY /* 6 */:
                if (!c0020k.f485h) {
                    c0020k.f482e.post(c0020k.f487j);
                }
            case 0:
            case 1:
            case 2:
            case 3:
            case 5:
                return true;
            case 7:
                c0020k.m474e();
                return true;
            case WorkspaceProtocol.RELEASE_TASK /* 8 */:
                if (!c0020k.f485h) {
                    c0020k.f482e.removeCallbacks(c0020k.f486i);
                    c0020k.f482e.post(c0020k.f486i);
                }
                return true;
            default:
                return false;
        }
    }

    /* renamed from: a */
    private void m466a(boolean z) {
        if (f477m != this || this.f485h) {
            return;
        }
        this.f485h = true;
        this.f482e.removeCallbacks(this.f486i);
        this.f482e.removeCallbacks(this.f487j);
        this.f482e.removeCallbacks(this.f488k);
        if (z) {
            try {
                C0013d.m252a();
            } catch (Throwable th) {
                try {
                    C0009j.m209a("[IOSShade] shortcut reset unavailable: " + th);
                    try {
                        C0009j.m200a(this.f480c, "removeAnimShortcutView", new Object[0]);
                    } catch (Throwable th2) {
                        C0009j.m209a("[IOSShade] shortcut layer removal unavailable: " + th2);
                    }
                    try {
                        C0009j.m200a(this.f481d, "setInAppOpening", Boolean.FALSE);
                        C0009j.m200a(this.f481d, "resetOccludedMovedShortcut", new Object[0]);
                        C0009j.m200a(this.f481d, "removeWindowIfNeed", new Object[0]);
                    } catch (Throwable th3) {
                        C0009j.m209a("[IOSShade] shortcut window cleanup unavailable: " + th3);
                    }
                } catch (Throwable th4) {
                    try {
                        C0009j.m200a(this.f481d, "setInAppOpening", Boolean.FALSE);
                        C0009j.m200a(this.f481d, "resetOccludedMovedShortcut", new Object[0]);
                        C0009j.m200a(this.f481d, "removeWindowIfNeed", new Object[0]);
                    } catch (Throwable th5) {
                        C0009j.m209a("[IOSShade] shortcut window cleanup unavailable: " + th5);
                    }
                    f477m = null;
                    this.f485h = false;
                    throw th4;
                }
            }
        }
        C0009j.m200a(this.f479b, "reset", "ios notification shortcut finished");
        try {
            C0009j.m200a(this.f481d, "setInAppOpening", Boolean.FALSE);
            C0009j.m200a(this.f481d, "resetOccludedMovedShortcut", new Object[0]);
            C0009j.m200a(this.f481d, "removeWindowIfNeed", new Object[0]);
        } catch (Throwable th6) {
            C0009j.m209a("[IOSShade] shortcut window cleanup unavailable: " + th6);
        }
        f477m = null;
        this.f485h = false;
    }
}
