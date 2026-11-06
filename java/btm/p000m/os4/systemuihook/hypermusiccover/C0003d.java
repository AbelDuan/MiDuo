package btm.p000m.os4.systemuihook.hypermusiccover;

import android.view.View;
import java.lang.reflect.Method;

/* renamed from: btm.m.os4.systemuihook.hypermusiccover.d */
/* loaded from: classes.dex */
final class C0003d {

    /* renamed from: a */
    private static final String f39a = "[MCMiBlur] ";

    /* renamed from: b */
    private static volatile boolean f40b;

    /* renamed from: c */
    private static Method f41c;

    /* renamed from: d */
    private static Method f42d;

    /* renamed from: e */
    private static Method f43e;

    /* renamed from: f */
    private static Method f44f;

    /* renamed from: g */
    private static Method f45g;

    /* renamed from: h */
    private static Method f46h;

    /* renamed from: i */
    private static Method f47i;

    /* renamed from: j */
    private static Method f48j;

    private C0003d() {
    }

    /* renamed from: a */
    private static synchronized void m57a() {
        synchronized (C0003d.class) {
            if (f40b) {
                return;
            }
            boolean z = true;
            f40b = true;
            Class cls = Integer.TYPE;
            f41c = m56a("setMiBackgroundBlurMode", (Class<?>) cls);
            f42d = m56a("setMiBackgroundBlurType", (Class<?>) cls);
            f43e = m56a("setMiBackgroundBlurRadius", (Class<?>) cls);
            f44f = m56a("setPassWindowBlurEnabled", (Class<?>) Boolean.TYPE);
            f45g = m55a("getMiBackgroundBlurMode");
            f46h = m55a("getMiBackgroundBlurRadius");
            f47i = m55a("getMiBackgroundBlurType");
            f48j = m55a("getPassWindowBlurEnabled");
            StringBuilder append = new StringBuilder().append("[MCMiBlur] blur api: mode=").append(f41c != null).append(" type=").append(f42d != null).append(" radius=").append(f43e != null).append(" passWindow=").append(f44f != null).append(" readBack=").append(f45g != null).append("/").append(f46h != null).append("/").append(f47i != null).append("/");
            if (f48j == null) {
                z = false;
            }
            C0009j.m209a(append.append(z).toString());
        }
    }

    /* renamed from: b */
    static String m63b(View view) {
        m57a();
        return "mode=" + m54a(f45g, view) + ",r=" + m54a(f46h, view) + ",type=" + m54a(f47i, view) + ",pass=" + m54a(f48j, view);
    }

    /* renamed from: c */
    static int[] m64c(View view) {
        m57a();
        return new int[]{m62b(f45g, view), m62b(f46h, view)};
    }

    /* renamed from: b */
    private static int m62b(Method method, View view) {
        if (method != null && view != null) {
            try {
                Object invoke = method.invoke(view, null);
                if (invoke instanceof Integer) {
                    return ((Integer) invoke).intValue();
                }
                return -1;
            } catch (Throwable th) {
            }
        }
        return -1;
    }

    /* renamed from: a */
    private static Method m55a(String str) {
        try {
            Method declaredMethod = View.class.getDeclaredMethod(str, null);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    static void m60a(View view, int[] iArr) {
        m57a();
        if (iArr == null || iArr.length < 2) {
            return;
        }
        m61a(f43e, view, Integer.valueOf(Math.max(0, iArr[1])));
        m61a(f41c, view, Integer.valueOf(Math.max(0, iArr[0])));
        m61a(f44f, view, Boolean.TRUE);
    }

    /* renamed from: a */
    private static Object m54a(Method method, View view) {
        if (method != null && view != null) {
            try {
                return method.invoke(view, null);
            } catch (Throwable th) {
                return "!";
            }
        }
        return "?";
    }

    /* renamed from: a */
    private static Method m56a(String str, Class<?> cls) {
        try {
            Method declaredMethod = View.class.getDeclaredMethod(str, cls);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    static void m59a(View view, int i) {
        m57a();
        m61a(f41c, view, 1);
        m61a(f42d, view, 1);
        m61a(f43e, view, Integer.valueOf(i));
        m61a(f44f, view, Boolean.FALSE);
    }

    /* renamed from: a */
    static void m58a(View view) {
        m57a();
        m61a(f43e, view, 0);
        m61a(f41c, view, 0);
    }

    /* renamed from: a */
    private static void m61a(Method method, View view, Object obj) {
        if (method == null) {
            return;
        }
        try {
            method.invoke(view, obj);
        } catch (Throwable th) {
        }
    }
}
