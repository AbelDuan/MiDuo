package btm.p000m.os4.systemuihook.hypermusiccover;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.MotionEvent;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0010a;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0013d;
import io.github.libxposed.api.XposedInterface;
import java.util.List;

/* renamed from: btm.m.os4.systemuihook.hypermusiccover.b */
/* loaded from: classes.dex */
public final class C0001b {

    /* renamed from: a */
    private static final String f12a = "com.miui.systemui.util.FloatFlowProperty";

    /* renamed from: b */
    private static final String f13b = "com.miui.systemui.shade.blur.ShadeBlendBlurController$BlurProvider";

    /* renamed from: c */
    private static final String f14c = "com.android.systemui.shade.NotificationPanelExpansionAnimator";

    /* renamed from: d */
    private static final String f15d = "com.android.systemui.shade.NotificationPanelViewController";

    /* renamed from: e */
    private static volatile Class<?> f16e;

    private C0001b() {
    }

    /* renamed from: a */
    public static void m11a(XposedInterface xposedInterface, ClassLoader classLoader, SharedPreferences sharedPreferences) {
        C0009j.m206a(xposedInterface);
        SharedPreferencesC0000a sharedPreferencesC0000a = new SharedPreferencesC0000a(sharedPreferences);
        C0002c.m41c(sharedPreferencesC0000a);
        try {
            Object invoke = Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
            if (invoke instanceof Context) {
                C0002c.m25a((Context) invoke);
            }
        } catch (Throwable th) {
            C0009j.m209a("iOS shade has no application context: " + th);
        }
        C0007h.m131a((SharedPreferences) sharedPreferencesC0000a);
        try {
            C0009j.m204a(C0009j.m199a("com.android.systemui.shade.NotificationShadeWindowView", classLoader), new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.hypermusiccover.b$$ExternalSyntheticLambda0
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m10a;
                    m10a = C0001b.m10a(chain);
                    return m10a;
                }
            });
        } catch (Throwable th2) {
            C0009j.m209a("iOS shade window hook failed: " + th2);
        }
        try {
            f16e = C0009j.m199a(f14c, classLoader);
            C0009j.m205a(C0009j.m199a(f12a, classLoader), "setValue", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.hypermusiccover.b$$ExternalSyntheticLambda1
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m12b;
                    m12b = C0001b.m12b(chain);
                    return m12b;
                }
            });
        } catch (Throwable th3) {
            C0009j.m209a("iOS shade expansion hook failed: " + th3);
        }
        try {
            C0013d.m255a(classLoader);
        } catch (Throwable th4) {
            C0009j.m209a("iOS notification hooks failed: " + th4);
        }
        try {
            C0010a.m226a((SharedPreferences) sharedPreferencesC0000a);
        } catch (Throwable th5) {
            C0009j.m209a("iOS clock glass hooks failed: " + th5);
        }
        try {
            Class<?> m199a = C0009j.m199a(f13b, classLoader);
            C0009j.m204a(m199a, new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.hypermusiccover.b$$ExternalSyntheticLambda2
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m13c;
                    m13c = C0001b.m13c(chain);
                    return m13c;
                }
            });
            C0009j.m205a(m199a, "setBlurRatio", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.hypermusiccover.b$$ExternalSyntheticLambda3
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m14d;
                    m14d = C0001b.m14d(chain);
                    return m14d;
                }
            });
        } catch (Throwable th6) {
            C0009j.m209a("iOS shade blur hook failed: " + th6);
        }
        try {
            C0009j.m204a(C0009j.m199a(f15d, classLoader), new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.hypermusiccover.b$$ExternalSyntheticLambda4
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m15e;
                    m15e = C0001b.m15e(chain);
                    return m15e;
                }
            });
            C0009j.m205a(C0009j.m199a("com.android.systemui.shade.NotificationPanelViewController$TouchHandler", classLoader), "onTouchEvent", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.hypermusiccover.b$$ExternalSyntheticLambda5
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m16f;
                    m16f = C0001b.m16f(chain);
                    return m16f;
                }
            });
        } catch (Throwable th7) {
            C0009j.m209a("iOS shade touch hook failed: " + th7);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ Object m12b(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (chain.getThisObject().getClass() == f16e) {
            List args = chain.getArgs();
            Object obj = args.size() > 1 ? args.get(1) : null;
            if (obj instanceof Float) {
                C0007h.m167k(((Float) obj).floatValue());
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ Object m13c(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        C0004e.m75c(chain.getThisObject());
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static /* synthetic */ Object m14d(XposedInterface.Chain chain) throws Throwable {
        if (C0004e.m73b(chain.getThisObject()) && C0007h.m175q()) {
            List args = chain.getArgs();
            if (args.size() == 1 && (args.get(0) instanceof Float)) {
                Object[] array = args.toArray();
                array[0] = Float.valueOf(C0007h.m114N());
                return chain.proceed(array);
            }
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static /* synthetic */ Object m15e(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        C0007h.m137a(chain.getThisObject());
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static /* synthetic */ Object m16f(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        List args = chain.getArgs();
        if (!args.isEmpty() && (args.get(0) instanceof MotionEvent)) {
            C0007h.m134a((MotionEvent) args.get(0));
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m10a(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        C0007h.m145b(chain.getThisObject());
        return proceed;
    }
}
