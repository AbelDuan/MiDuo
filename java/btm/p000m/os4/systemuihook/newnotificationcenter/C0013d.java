package btm.p000m.os4.systemuihook.newnotificationcenter;

import android.view.Choreographer;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import btm.p000m.os4.systemuihook.hypermusiccover.C0007h;
import btm.p000m.os4.systemuihook.hypermusiccover.C0009j;
import io.github.libxposed.api.XposedInterface;
import java.util.List;

/* renamed from: btm.m.os4.systemuihook.newnotificationcenter.d */
/* loaded from: classes.dex */
public final class C0013d {

    /* renamed from: a */
    private static Object f238a = null;

    /* renamed from: b */
    private static Object f239b = null;

    /* renamed from: c */
    private static boolean f240c = false;

    /* renamed from: d */
    private static float f241d = 0.0f;

    /* renamed from: e */
    private static float f242e = 0.0f;

    /* renamed from: f */
    private static boolean f243f = false;

    /* renamed from: g */
    private static VelocityTracker f244g = null;

    /* renamed from: h */
    private static long f245h = -1;

    /* renamed from: i */
    private static long f246i = -1;

    /* renamed from: j */
    private static int f247j = -1;

    /* renamed from: k */
    private static float f248k;

    /* renamed from: l */
    private static float f249l;

    /* renamed from: m */
    private static boolean f250m;

    /* renamed from: n */
    private static boolean f251n;

    private C0013d() {
    }

    /* renamed from: a */
    public static void m255a(ClassLoader classLoader) {
        C0022m.m485a(classLoader);
        try {
            Class<?> m199a = C0009j.m199a("com.android.keyguard.shortcut.MiuiShortcutController", classLoader);
            C0009j.m205a(m199a, "onShortcutPluginCallbackWrap", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda1
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m251a;
                    m251a = C0013d.m251a(chain);
                    return m251a;
                }
            });
            C0009j.m205a(m199a, "addShortcutViews", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda11
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m258b;
                    m258b = C0013d.m258b(chain);
                    return m258b;
                }
            });
            C0009j.m205a(m199a, "setMiuiShortcutPlugin", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda12
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m269l;
                    m269l = C0013d.m269l(chain);
                    return m269l;
                }
            });
            C0009j.m205a(m199a, "onSystemUIAction$1", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda13
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m270m;
                    m270m = C0013d.m270m(chain);
                    return m270m;
                }
            });
        } catch (Throwable th) {
            C0009j.m209a("[IOSShade] native shortcut integration unavailable: " + th);
        }
        try {
            C0009j.m205a(C0009j.m199a("com.android.systemui.shade.NotificationDismissViewController", classLoader), "onInit", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda14
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m271n;
                    m271n = C0013d.m271n(chain);
                    return m271n;
                }
            });
        } catch (Throwable th2) {
            C0009j.m209a("[IOSShade] native clear action capture unavailable: " + th2);
        }
        try {
            C0009j.m205a(C0009j.m199a("com.android.systemui.statusbar.policy.KeyguardStateControllerImpl", classLoader), "notifyKeyguardState", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda15
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m272o;
                    m272o = C0013d.m272o(chain);
                    return m272o;
                }
            });
        } catch (Throwable th3) {
            C0009j.m209a("[IOSShade] keyguard state callback unavailable: " + th3);
        }
        try {
            C0009j.m205a(C0009j.m199a("com.android.keyguard.KeyguardUpdateMonitor", classLoader), "setKeyguardShowing", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda16
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m273p;
                    m273p = C0013d.m273p(chain);
                    return m273p;
                }
            });
        } catch (Throwable th4) {
            C0009j.m209a("[IOSShade] keyguard monitor callback unavailable: " + th4);
        }
        try {
            C0009j.m205a(C0009j.m199a("com.android.systemui.shade.NotificationShadeWindowView", classLoader), "dispatchTouchEvent", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda17
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m274q;
                    m274q = C0013d.m274q(chain);
                    return m274q;
                }
            });
            C0009j.m205a(C0009j.m199a("com.miui.systemui.shade.NotificationShadeWrapper", classLoader), "getAllowParentInterceptSwitchEvent", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda18
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m275r;
                    m275r = C0013d.m275r(chain);
                    return m275r;
                }
            });
        } catch (Throwable th5) {
            C0009j.m209a("[IOSShade] horizontal switch gesture unavailable: " + th5);
        }
        try {
            C0009j.m205a(C0009j.m199a("com.miui.systemui.shade.header.ShadeHeaderContainer", classLoader), "dispatchTouchEvent", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda19
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m276s;
                    m276s = C0013d.m276s(chain);
                    return m276s;
                }
            });
        } catch (Throwable th6) {
            C0009j.m209a("[IOSShade] header touch routing unavailable: " + th6);
        }
        try {
            C0009j.m205a(C0009j.m199a("com.android.systemui.qs.MiuiNotificationHeaderView", classLoader), "onFinishInflate", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda2
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m260c;
                    m260c = C0013d.m260c(chain);
                    return m260c;
                }
            });
        } catch (Throwable th7) {
            C0009j.m209a("[IOSShade] notification header inflate capture unavailable: " + th7);
        }
        try {
            C0009j.m205a(C0009j.m199a("com.android.systemui.controlcenter.shade.CombinedHeaderController", classLoader), "getHeaderView", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda3
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m261d;
                    m261d = C0013d.m261d(chain);
                    return m261d;
                }
            });
        } catch (Throwable th8) {
            C0009j.m209a("[IOSShade] combined header capture unavailable: " + th8);
        }
        try {
            Class<?> m199a2 = C0009j.m199a("com.android.systemui.shade.NotificationPanelExpandController", classLoader);
            C0009j.m205a(m199a2, "notifyExpandHeightChanged", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda4
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m262e;
                    m262e = C0013d.m262e(chain);
                    return m262e;
                }
            });
            C0009j.m205a(C0009j.m199a("com.android.systemui.shade.NotificationPanelViewController$TouchHandler", classLoader), "onTouchEvent", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda5
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m263f;
                    m263f = C0013d.m263f(chain);
                    return m263f;
                }
            });
            C0009j.m205a(m199a2, "onExpandFinish", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda6
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m264g;
                    m264g = C0013d.m264g(chain);
                    return m264g;
                }
            });
            C0009j.m205a(m199a2, "setVisible$2", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda7
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m265h;
                    m265h = C0013d.m265h(chain);
                    return m265h;
                }
            });
            C0011b.m241a(m199a2, "hide", "access$updatePanelVisible");
            C0007h.m110J();
            C0009j.m209a("[IOSShade] raw notification height and visibility hooked");
        } catch (Throwable th9) {
            C0009j.m209a("[IOSShade] raw driver unavailable; using native expansion: " + th9);
        }
        try {
            Class<?> m199a3 = C0009j.m199a("com.miui.systemui.shade.ShadeSwitchControllerImpl", classLoader);
            XposedInterface.Hooker hooker = new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda8
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m266i;
                    m266i = C0013d.m266i(chain);
                    return m266i;
                }
            };
            C0009j.m205a(m199a3, "performProgressChanged", hooker);
            C0009j.m205a(m199a3, "setSwitching", hooker);
            C0007h.m111K();
        } catch (Throwable th10) {
            C0009j.m209a("[IOSShade] native switch progress unavailable: " + th10);
        }
        try {
            Class<?> m199a4 = C0009j.m199a("com.android.systemui.shade.NotificationPanelViewControllerInjector", classLoader);
            C0009j.m205a(m199a4, "onControlCenterAppearChanged", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda9
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m267j;
                    m267j = C0013d.m267j(chain);
                    return m267j;
                }
            });
            C0009j.m205a(m199a4, "onNotificationAppearChanged", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda10
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m268k;
                    m268k = C0013d.m268k(chain);
                    return m268k;
                }
            });
            C0009j.m209a("[IOSShade] notification/control-centre ownership hooked");
        } catch (Throwable th11) {
            C0009j.m209a("[IOSShade] panel ownership hooks unavailable: " + th11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ Object m258b(XposedInterface.Chain chain) throws Throwable {
        C0019j.m462d();
        Object proceed = chain.proceed();
        C0019j.m455a(chain.getThisObject());
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ Object m260c(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        C0014e.m331b((View) chain.getThisObject());
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static /* synthetic */ Object m261d(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (proceed instanceof View) {
            C0014e.m331b((View) proceed);
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static /* synthetic */ Object m262e(XposedInterface.Chain chain) throws Throwable {
        f239b = chain.getThisObject();
        Object proceed = chain.proceed();
        List args = chain.getArgs();
        if (args.size() == 4 && C0007h.m181w()) {
            Object m200a = C0009j.m200a(chain.getThisObject(), "getTracking", new Object[0]);
            Boolean bool = Boolean.TRUE;
            C0007h.m128a(((Number) args.get(0)).floatValue(), ((Number) args.get(1)).floatValue(), bool.equals(C0009j.m200a(m200a, "getValue", new Object[0])), bool.equals(args.get(3)));
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static /* synthetic */ Object m263f(XposedInterface.Chain chain) throws Throwable {
        MotionEvent motionEvent = (MotionEvent) chain.getArgs().get(0);
        if (C0007h.m181w()) {
            m253a(motionEvent);
        } else if (f245h != -1) {
            VelocityTracker velocityTracker = f244g;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
            f245h = -1L;
        }
        try {
            return chain.proceed();
        } finally {
            f250m = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public static /* synthetic */ Object m264g(XposedInterface.Chain chain) throws Throwable {
        if (f250m && C0007h.m181w()) {
            try {
                m256a(chain.getThisObject());
            } catch (Throwable th) {
                C0009j.m209a("[IOSShade] release rule unavailable, MIUI decides: " + th);
            }
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public static /* synthetic */ Object m265h(XposedInterface.Chain chain) throws Throwable {
        if (!Boolean.TRUE.equals(chain.getArgs().get(0)) && !f240c && C0007h.m119S()) {
            f238a = chain.getThisObject();
            return null;
        }
        f238a = null;
        Object proceed = chain.proceed();
        if (Boolean.FALSE.equals(chain.getArgs().get(0))) {
            C0007h.m109I();
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public static /* synthetic */ Object m266i(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        Object thisObject = chain.getThisObject();
        C0007h.m129a(((Number) C0009j.m211b(C0009j.m211b(thisObject, "progressAnimator"), "_progress")).floatValue(), Boolean.TRUE.equals(C0009j.m211b(thisObject, "switching")));
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public static /* synthetic */ Object m267j(XposedInterface.Chain chain) throws Throwable {
        C0007h.m146b(Boolean.TRUE.equals(chain.getArgs().get(0)));
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public static /* synthetic */ Object m268k(XposedInterface.Chain chain) throws Throwable {
        C0007h.m151c(Boolean.TRUE.equals(chain.getArgs().get(0)));
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public static /* synthetic */ Object m269l(XposedInterface.Chain chain) throws Throwable {
        C0019j.m458b();
        Object proceed = chain.proceed();
        C0019j.m455a(chain.getThisObject());
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public static /* synthetic */ Object m270m(XposedInterface.Chain chain) throws Throwable {
        List args = chain.getArgs();
        boolean z = true;
        Object obj = args.size() > 1 ? args.get(1) : null;
        if (!"onConfigChanged".equals(obj) && !"onThemeStateChange".equals(obj)) {
            z = false;
        }
        if (z) {
            C0019j.m462d();
        }
        Object proceed = chain.proceed();
        if (z) {
            C0019j.m455a(chain.getThisObject());
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public static /* synthetic */ Object m271n(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        C0014e.m317a(chain.getThisObject());
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public static /* synthetic */ Object m272o(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (!chain.getArgs().isEmpty() && (chain.getArgs().get(0) instanceof Boolean)) {
            C0014e.m318a(((Boolean) chain.getArgs().get(0)).booleanValue());
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public static /* synthetic */ Object m273p(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (!chain.getArgs().isEmpty() && (chain.getArgs().get(0) instanceof Boolean)) {
            C0014e.m318a(((Boolean) chain.getArgs().get(0)).booleanValue());
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public static /* synthetic */ Object m274q(XposedInterface.Chain chain) throws Throwable {
        MotionEvent motionEvent = (MotionEvent) chain.getArgs().get(0);
        if (!C0019j.m456a(motionEvent) && !C0014e.m322a(motionEvent)) {
            m254a((View) chain.getThisObject(), motionEvent);
            try {
                Object proceed = chain.proceed();
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked != 1 && actionMasked != 3) {
                    return proceed;
                }
                f243f = false;
                f251n = false;
                return proceed;
            } catch (Throwable th) {
                int actionMasked2 = motionEvent.getActionMasked();
                if (actionMasked2 == 1 || actionMasked2 == 3) {
                    f243f = false;
                    f251n = false;
                }
                throw th;
            }
        }
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public static /* synthetic */ Object m275r(XposedInterface.Chain chain) throws Throwable {
        return Boolean.valueOf(Boolean.TRUE.equals(chain.proceed()) || (C0014e.m288L() && f251n));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public static /* synthetic */ Object m276s(XposedInterface.Chain chain) throws Throwable {
        return (!chain.getArgs().isEmpty() && (chain.getArgs().get(0) instanceof MotionEvent) && C0014e.m333b((MotionEvent) chain.getArgs().get(0))) ? Boolean.FALSE : chain.proceed();
    }

    /* renamed from: b */
    public static void m259b() {
        Object obj = f238a;
        f238a = null;
        if (obj != null) {
            f240c = true;
            try {
                C0009j.m200a(obj, "setVisible$2", Boolean.FALSE);
            } catch (Throwable th) {
                try {
                    C0009j.m209a("[IOSShade] deferred panel hide unavailable: " + th);
                } finally {
                    f240c = false;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m251a(XposedInterface.Chain chain) throws Throwable {
        List args = chain.getArgs();
        if (args.size() == 2 && (args.get(1) instanceof String) && C0020k.m467a(chain.getThisObject(), (String) args.get(1))) {
            return null;
        }
        return chain.proceed();
    }

    /* renamed from: a */
    static void m252a() {
        Object obj = f239b;
        if (obj == null) {
            return;
        }
        try {
            C0009j.m200a(obj, "hide", Boolean.FALSE);
        } catch (Throwable th) {
            C0009j.m209a("[IOSShade] shortcut panel collapse unavailable: " + th);
        }
    }

    /* renamed from: a */
    private static void m253a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (motionEvent.getEventTime() == f246i && actionMasked == f247j) {
            return;
        }
        f246i = motionEvent.getEventTime();
        f247j = actionMasked;
        if (f244g == null) {
            f244g = VelocityTracker.obtain();
        }
        if (motionEvent.getDownTime() != f245h) {
            f244g.clear();
            f245h = motionEvent.getDownTime();
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setLocation(motionEvent.getRawX(), motionEvent.getRawY());
        f244g.addMovement(obtain);
        obtain.recycle();
        if (actionMasked == 1) {
            f244g.computeCurrentVelocity(1000);
            f248k = f244g.getYVelocity();
            f249l = C0007h.m183y();
            f250m = true;
        }
    }

    /* renamed from: a */
    private static void m256a(final Object obj) {
        String str;
        float m184z = C0007h.m184z();
        if (Float.isNaN(m184z)) {
            return;
        }
        C0007h.m127a(f248k, f249l);
        final boolean m527a = C0024o.m527a(m184z, f248k, f249l);
        Boolean bool = Boolean.TRUE;
        boolean equals = bool.equals(C0009j.m211b(obj, "appearance"));
        StringBuilder append = new StringBuilder().append("[IOSShade] release at ").append(Math.round(m184z * 100.0f)).append("%, ").append(Math.round(f248k)).append("px/s of ").append(Math.round(f249l)).append("px -> ").append(m527a ? "open" : "close");
        if (m527a == equals) {
            str = "";
        } else {
            str = " (MIUI: " + (equals ? "open" : "close") + ")";
        }
        C0009j.m209a(append.append(str).toString());
        if (m527a == equals) {
            return;
        }
        Object m211b = C0009j.m211b(obj, "panelAnimator");
        C0009j.m200a(obj, "setAppearance", Boolean.valueOf(m527a));
        C0009j.m200a(m211b, "beginPanelExpandAnimation", new Object[0]);
        Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: btm.m.os4.systemuihook.newnotificationcenter.d$$ExternalSyntheticLambda0
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                C0013d.m257a(obj, m527a, j);
            }
        });
        C0009j.m200a(obj, "setSafeScenarioEnd", Boolean.valueOf(m527a));
        Object m211b2 = C0009j.m211b(obj, "ambientState");
        if (m527a && bool.equals(C0009j.m211b(m211b2, "expandingVisibleFromHeadsUp"))) {
            C0009j.m200a(C0009j.m211b(obj, "pipelineChoreographer"), "schedule", new Object[0]);
        }
        C0009j.m200a(m211b, "startPanelVisibleAnimation", Boolean.valueOf(m527a), bool, bool);
        C0009j.m200a(obj, "notifyAppearanceChanged", Boolean.valueOf(m527a), bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m257a(Object obj, boolean z, long j) {
        try {
            Class<?> m199a = C0009j.m199a("com.miui.systemui.util.ScenarioRecognitionEventUtils", obj.getClass().getClassLoader());
            Class cls = Boolean.TYPE;
            m199a.getMethod("eventNotificationShade", cls, cls).invoke(null, Boolean.valueOf(z), Boolean.TRUE);
        } catch (Throwable th) {
            C0009j.m209a("[IOSShade] shade scenario event unavailable: " + th);
        }
    }

    /* renamed from: a */
    private static void m254a(View view, MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            f241d = motionEvent.getRawX();
            f242e = motionEvent.getRawY();
            f243f = C0014e.m288L() && !C0014e.m333b(motionEvent);
            f251n = false;
            return;
        }
        if (motionEvent.getActionMasked() == 2 && f243f && !f251n) {
            float rawX = motionEvent.getRawX() - f241d;
            f251n = rawX < (-(view.getResources().getDisplayMetrics().density * 24.0f)) && (-rawX) > Math.abs(motionEvent.getRawY() - f242e) * 1.25f;
        }
    }
}
