package btm.p000m.os4.systemuihook.newnotificationcenter;

import android.util.SparseArray;
import android.view.View;
import btm.p000m.os4.systemuihook.hypermusiccover.C0007h;
import btm.p000m.os4.systemuihook.hypermusiccover.C0009j;
import io.github.libxposed.api.XposedInterface;
import java.lang.reflect.Method;

/* renamed from: btm.m.os4.systemuihook.newnotificationcenter.b */
/* loaded from: classes.dex */
final class C0011b {
    private C0011b() {
    }

    /* renamed from: a */
    private static boolean m243a(Object obj) {
        if (!C0007h.m182x()) {
            return false;
        }
        try {
            return !Boolean.TRUE.equals(C0009j.m200a(C0009j.m211b(obj, "ambientState"), "isOnKeyguard", new Object[0]));
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: b */
    private static void m245b(Object obj) {
        Object obj2;
        try {
            Object m200a = C0009j.m200a(obj, "getInjector", new Object[0]);
            if (m243a(m200a)) {
                Object m211b = C0009j.m211b(m200a, "ambientState");
                if (C0014e.m288L() || Boolean.TRUE.equals(C0009j.m211b(m211b, "panelVisible"))) {
                    Object m211b2 = C0009j.m211b(C0009j.m211b(C0009j.m200a(obj, "getViewState", new Object[0]), "mInjector"), "folmeStateMap");
                    if ((m211b2 instanceof SparseArray) && (obj2 = ((SparseArray) m211b2).get(11018)) != null) {
                        C0009j.m207a(obj2, "alpha", Float.valueOf(1.0f));
                        C0009j.m207a(obj2, "scaleX", Float.valueOf(1.0f));
                        C0009j.m207a(obj2, "scaleY", Float.valueOf(1.0f));
                        float f = 0.0f;
                        C0009j.m207a(obj2, "translationY", Float.valueOf(0.0f));
                        Object m211b3 = C0009j.m211b(m200a, "animator");
                        if (m211b3 != null) {
                            f = ((Number) C0009j.m211b(m211b3, "slideTransX")).floatValue();
                        }
                        C0009j.m207a(obj2, "translationX", Float.valueOf(f));
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ Object m246c(XposedInterface.Chain chain) throws Throwable {
        Object[] array = chain.getArgs().toArray();
        if (array.length != 9 || !m243a(chain.getThisObject())) {
            return chain.proceed();
        }
        array[0] = Boolean.FALSE;
        return chain.proceed(array);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static /* synthetic */ Object m247d(XposedInterface.Chain chain) throws Throwable {
        Object[] array = chain.getArgs().toArray();
        if (array.length != 7 || !m243a(chain.getThisObject())) {
            return chain.proceed();
        }
        array[3] = Boolean.FALSE;
        return chain.proceed(array);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static /* synthetic */ Object m248e(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (m243a(chain.getThisObject())) {
            m245b(C0009j.m211b(chain.getThisObject(), "view"));
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static /* synthetic */ Object m249f(XposedInterface.Chain chain) throws Throwable {
        if (chain.getThisObject() instanceof View) {
            m245b(chain.getThisObject());
        }
        Object m499f = chain.getThisObject() instanceof View ? C0022m.m499f((View) chain.getThisObject()) : null;
        try {
            Object proceed = chain.proceed();
            if (chain.getThisObject() instanceof View) {
                C0022m.m481a((View) chain.getThisObject());
                C0017h.m441b((View) chain.getThisObject());
            }
            return proceed;
        } finally {
            C0022m.m486a(m499f);
        }
    }

    /* renamed from: a */
    static void m242a(ClassLoader classLoader) {
        try {
            Class<?> m199a = C0009j.m199a("com.android.systemui.shade.MiuiNotificationPanelAnimControllerImpl", classLoader);
            C0009j.m205a(m199a, "startPanelExpandAnimation$default", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.b$$ExternalSyntheticLambda0
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m240a;
                    m240a = C0011b.m240a(chain);
                    return m240a;
                }
            });
            C0009j.m205a(m199a, "startPanelVisibleAnimation", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.b$$ExternalSyntheticLambda1
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m244b;
                    m244b = C0011b.m244b(chain);
                    return m244b;
                }
            });
            m241a(m199a, "startPanelExpandAnimation$default", "startPanelVisibleAnimation");
        } catch (Throwable th) {
            C0009j.m209a("[IOSShade] panel animation controller unavailable: " + th);
        }
        try {
            Class<?> m199a2 = C0009j.m199a("com.android.systemui.shade.MiuiPanelAnimValueObjectImpl", classLoader);
            C0009j.m205a(m199a2, "changeExpand", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.b$$ExternalSyntheticLambda2
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m246c;
                    m246c = C0011b.m246c(chain);
                    return m246c;
                }
            });
            C0009j.m205a(m199a2, "changeVisible", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.b$$ExternalSyntheticLambda3
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m247d;
                    m247d = C0011b.m247d(chain);
                    return m247d;
                }
            });
            C0009j.m205a(m199a2, "scheduleUpdate", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.b$$ExternalSyntheticLambda4
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m248e;
                    m248e = C0011b.m248e(chain);
                    return m248e;
                }
            });
        } catch (Throwable th2) {
            C0009j.m209a("[IOSShade] notification panel animator unavailable: " + th2);
        }
        try {
            Class<?> m199a3 = C0009j.m199a("com.miui.systemui.notification.row.ExpandableViewBase", classLoader);
            C0009j.m205a(m199a3, "onPropertiesUpdate", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.b$$ExternalSyntheticLambda5
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m249f;
                    m249f = C0011b.m249f(chain);
                    return m249f;
                }
            });
            m241a(m199a3, "onPropertiesUpdate", "dispatchPropertiesUpdate");
            m241a(C0009j.m199a("com.miui.systemui.widget.PropertiesFrameLayout", classLoader), "dispatchPropertiesUpdate");
            C0009j.m209a("[IOSShade] notifications follow the hosted sheet; OEM panel transforms disabled");
        } catch (Throwable th3) {
            C0009j.m209a("[IOSShade] notification property hook unavailable: " + th3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ Object m244b(XposedInterface.Chain chain) throws Throwable {
        Object[] array = chain.getArgs().toArray();
        if (array.length == 3 && m243a(chain.getThisObject())) {
            array[1] = Boolean.FALSE;
            return chain.proceed(array);
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m240a(XposedInterface.Chain chain) throws Throwable {
        Object[] array = chain.getArgs().toArray();
        if (array.length == 5 && m243a(array[0])) {
            array[3] = Boolean.FALSE;
            return chain.proceed(array);
        }
        return chain.proceed();
    }

    /* renamed from: a */
    static void m241a(Class<?> cls, String... strArr) {
        for (Method method : cls.getDeclaredMethods()) {
            int length = strArr.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    String str = strArr[i];
                    if (method.getName().equals(str)) {
                        try {
                            C0009j.m197a().deoptimize(method);
                            break;
                        } catch (Throwable th) {
                            C0009j.m209a("[IOSShade] cannot deoptimize " + str + ": " + th);
                        }
                    } else {
                        i++;
                    }
                }
            }
        }
    }
}
