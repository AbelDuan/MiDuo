package btm.p000m.os4.systemuihook.newnotificationcenter;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import btm.p000m.os4.systemuihook.hypermusiccover.C0009j;
import io.github.libxposed.api.XposedInterface;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;

/* renamed from: btm.m.os4.systemuihook.newnotificationcenter.n */
/* loaded from: classes.dex */
public final class C0023n {

    /* renamed from: j */
    private static boolean f513j;

    /* renamed from: k */
    private static ViewGroup f514k;

    /* renamed from: l */
    private static View f515l;

    /* renamed from: m */
    private static ViewTreeObserver f516m;

    /* renamed from: n */
    private static boolean f517n;

    /* renamed from: a */
    private static final String[] f504a = {"setMiBackgroundBlurMode", "setMiBackgroundBlurType", "setMiBackgroundBlurRadius", "setPassWindowBlurEnabled", "disableMiBackgroundContainBelow"};

    /* renamed from: b */
    private static final String[] f505b = {"getMiBackgroundBlurMode", "getMiBackgroundBlurType", "getMiBackgroundBlurRadius", "getPassWindowBlurEnabled", "getMiBackgroundContainBelow"};

    /* renamed from: c */
    private static final Method[] f506c = new Method[5];

    /* renamed from: d */
    private static final Method[] f507d = new Method[5];

    /* renamed from: e */
    private static final int[] f508e = {3, 0, 1, 2, 4};

    /* renamed from: f */
    private static final WeakHashMap<View, Object[]> f509f = new WeakHashMap<>();

    /* renamed from: g */
    private static final WeakHashMap<View, Boolean> f510g = new WeakHashMap<>();

    /* renamed from: h */
    private static final WeakHashMap<View, Boolean> f511h = new WeakHashMap<>();

    /* renamed from: i */
    private static final ThreadLocal<Boolean> f512i = new ThreadLocal<>();

    /* renamed from: o */
    private static final ViewTreeObserver.OnGlobalLayoutListener f518o = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: btm.m.os4.systemuihook.newnotificationcenter.n$$ExternalSyntheticLambda0
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            C0023n.m515c();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m507a(int i, XposedInterface.Chain chain) throws Throwable {
        View view = (View) chain.getThisObject();
        if (Boolean.TRUE.equals(f512i.get())) {
            return chain.proceed();
        }
        if (m519e(view) && i != 4) {
            return chain.proceed();
        }
        Object obj = chain.getArgs().get(0);
        if (i == 4 && !m516c(view)) {
            return chain.proceed();
        }
        if (i == 4 && m516c(view)) {
            f510g.put(view, (Boolean) obj);
        }
        if (!f513j || ((!m525k(view) && (i != 4 || !m514b(view))) || view.getRootView() != f514k)) {
            return chain.proceed();
        }
        Object[] m522h = m522h(view);
        m522h[i] = obj;
        return chain.proceed(new Object[]{m508a(view, i, m522h)});
    }

    /* renamed from: b */
    public static void m513b() {
        Class cls;
        final int i = 0;
        while (true) {
            String[] strArr = f504a;
            if (i >= strArr.length) {
                try {
                    C0009j.m197a().hook(View.class.getDeclaredMethod("setMiViewBlurMode", Integer.TYPE)).setExceptionMode(XposedInterface.ExceptionMode.PROTECTIVE).intercept(new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.n$$ExternalSyntheticLambda2
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object m509a;
                            m509a = C0023n.m509a(chain);
                            return m509a;
                        }
                    });
                    return;
                } catch (Throwable th) {
                    C0009j.m209a("[IOSShade] row material refresh hook unavailable: " + th);
                    return;
                }
            }
            if (i >= 3) {
                try {
                    cls = Boolean.TYPE;
                } catch (Throwable th2) {
                    C0009j.m209a("[IOSShade] material API unavailable: " + f504a[i] + ": " + th2);
                }
            } else {
                cls = Integer.TYPE;
            }
            Method declaredMethod = View.class.getDeclaredMethod(strArr[i], cls);
            declaredMethod.setAccessible(true);
            f506c[i] = declaredMethod;
            try {
                Method[] methodArr = f507d;
                Method declaredMethod2 = View.class.getDeclaredMethod(f505b[i], null);
                methodArr[i] = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (Throwable th3) {
            }
            C0009j.m197a().hook(declaredMethod).setExceptionMode(XposedInterface.ExceptionMode.PROTECTIVE).intercept(new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.n$$ExternalSyntheticLambda1
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m507a;
                    m507a = C0023n.m507a(i, chain);
                    return m507a;
                }
            });
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ void m515c() {
        ViewGroup viewGroup;
        if (!f513j || (viewGroup = f514k) == null) {
            return;
        }
        m523i(viewGroup);
    }

    /* renamed from: d */
    private static boolean m518d(View view) {
        return view.getClass().getName().equals("com.miui.systemui.widget.CircleAndTickAnimView");
    }

    /* renamed from: e */
    private static boolean m519e(View view) {
        return view.getClass().getName().equals("com.android.systemui.shade.NotificationPanelView");
    }

    /* renamed from: f */
    public static void m520f(View view) {
        f515l = view;
        if (!f513j || view == null) {
            return;
        }
        m524j(view);
    }

    /* renamed from: g */
    public static void m521g(View view) {
        try {
            Object m200a = C0009j.m200a((Object) view, "getMediaViewHolder", new Object[0]);
            if (m200a == null) {
                return;
            }
            Object m211b = C0009j.m211b(m200a, "mediaBg");
            if (m211b instanceof View) {
                View view2 = (View) m211b;
                f511h.put(view2, Boolean.TRUE);
                if (f513j && view2.getRootView() == f514k && !f509f.containsKey(view2)) {
                    m510a(view2);
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: h */
    private static Object[] m522h(View view) {
        Object[] objArr = f509f.get(view);
        if (objArr != null) {
            return objArr;
        }
        Object[] objArr2 = new Object[f504a.length];
        int i = 0;
        while (true) {
            Method[] methodArr = f507d;
            if (i >= methodArr.length) {
                break;
            }
            if (!m519e(view) || i == 4) {
                try {
                    Method method = methodArr[i];
                    if (method != null) {
                        objArr2[i] = method.invoke(view, null);
                    }
                } catch (Throwable th) {
                }
            }
            i++;
        }
        if (objArr2[4] instanceof Boolean) {
            objArr2[4] = Boolean.valueOf(!((Boolean) r1).booleanValue());
        } else {
            objArr2[4] = null;
        }
        WeakHashMap<View, Boolean> weakHashMap = f510g;
        if (weakHashMap.containsKey(view)) {
            objArr2[4] = weakHashMap.get(view);
        }
        f509f.put(view, objArr2);
        return objArr2;
    }

    /* renamed from: i */
    private static void m523i(View view) {
        if (view == f515l) {
            m524j(view);
        }
        if (view.getClass().getName().equals("com.android.systemui.statusbar.notification.mediacontrol.MiuiMediaHeaderView")) {
            m521g(view);
        }
        if (m525k(view) && view.isShown() && !f509f.containsKey(view)) {
            m510a(view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                m523i(viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: j */
    private static void m524j(View view) {
        Method[] methodArr = f506c;
        if (methodArr[4] != null) {
            WeakHashMap<View, Object[]> weakHashMap = f509f;
            if (!weakHashMap.containsKey(view)) {
                Object[] objArr = new Object[f504a.length];
                try {
                    if (f507d[4] != null) {
                        objArr[4] = Boolean.valueOf(!((Boolean) r4.invoke(view, null)).booleanValue());
                    }
                    if (objArr[4] != null) {
                        weakHashMap.put(view, objArr);
                        f512i.set(Boolean.TRUE);
                        methodArr[4].invoke(view, Boolean.FALSE);
                    }
                } catch (Throwable th) {
                }
                f512i.remove();
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                m524j(viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: k */
    private static boolean m525k(View view) {
        String name = view.getClass().getName();
        return m519e(view) || name.endsWith(".NotificationBackgroundView") || name.equals("com.miui.systemui.widget.CircleAndTickAnimView") || f511h.containsKey(view);
    }

    /* renamed from: c */
    private static boolean m516c(View view) {
        return m519e(view) || m518d(view) || m514b(view);
    }

    /* renamed from: d */
    private static void m517d() {
        Object obj;
        f513j = false;
        f515l = null;
        ViewTreeObserver viewTreeObserver = f516m;
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            f516m.removeOnGlobalLayoutListener(f518o);
        }
        f516m = null;
        f512i.set(Boolean.TRUE);
        try {
            ArrayList arrayList = new ArrayList(f509f.entrySet());
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                Map.Entry entry = (Map.Entry) obj2;
                View view = (View) entry.getKey();
                Object[] objArr = (Object[]) entry.getValue();
                if (view != null) {
                    for (int i2 : f508e) {
                        Method method = f506c[i2];
                        if (method != null && (obj = objArr[i2]) != null) {
                            try {
                                method.invoke(view, obj);
                            } catch (Throwable th) {
                            }
                        }
                    }
                }
            }
        } finally {
            f509f.clear();
            f512i.remove();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m509a(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        View view = (View) chain.getThisObject();
        if (f513j && !Boolean.TRUE.equals(f512i.get()) && !f509f.containsKey(view) && m525k(view) && view.getRootView() == f514k) {
            m510a(view);
        }
        return proceed;
    }

    /* renamed from: a */
    public static void m511a(boolean z, ViewGroup viewGroup) {
        if (m512a()) {
            if (z == f513j && viewGroup == f514k) {
                return;
            }
            m517d();
            f514k = viewGroup;
            boolean z2 = z && viewGroup != null;
            f513j = z2;
            if (z2) {
                ViewTreeObserver viewTreeObserver = viewGroup.getViewTreeObserver();
                f516m = viewTreeObserver;
                viewTreeObserver.addOnGlobalLayoutListener(f518o);
                m523i(viewGroup);
            }
        }
    }

    /* renamed from: a */
    private static boolean m512a() {
        for (Method method : f506c) {
            if (method != null) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private static Object m508a(View view, int i, Object[] objArr) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 1;
            case 2:
                Object obj = objArr[2];
                int intValue = obj instanceof Number ? ((Number) obj).intValue() : 0;
                if (intValue <= 0) {
                    intValue = 80;
                }
                return Integer.valueOf(intValue);
            case 3:
                return Boolean.FALSE;
            case 4:
                return Boolean.FALSE;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* renamed from: a */
    private static void m510a(View view) {
        Method method;
        Object[] m522h = m522h(view);
        f512i.set(Boolean.TRUE);
        int i = 0;
        while (true) {
            try {
                Method[] methodArr = f506c;
                if (i >= methodArr.length) {
                    return;
                }
                if (m522h[i] != null && ((i != 4 || ((m519e(view) || m518d(view)) && m522h[4] != null)) && (method = methodArr[i]) != null)) {
                    method.invoke(view, m508a(view, i, m522h));
                }
                i++;
            } catch (Throwable th) {
                try {
                    if (!f517n) {
                        f517n = true;
                        C0009j.m209a("[IOSShade] local material failed: " + th);
                    }
                    return;
                } finally {
                    f512i.remove();
                }
            }
        }
    }

    /* renamed from: b */
    private static boolean m514b(View view) {
        View view2 = f515l;
        while (view != null) {
            if (view == view2) {
                return view2 != null;
            }
            view = view.getParent() instanceof View ? (View) view.getParent() : null;
        }
        return false;
    }
}
