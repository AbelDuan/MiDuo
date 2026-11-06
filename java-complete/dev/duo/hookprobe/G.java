package dev.duo.hookprobe;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import io.github.libxposed.api.XposedModuleInterface;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.function.BooleanSupplier;
import java.util.function.IntSupplier;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class G extends XposedModule {
    private static final String i = "DuoHookProbe";
    private static final String j = "com.android.systemui";
    private static volatile Method k;
    private static volatile boolean l;
    private static Method n;
    private static Method o;
    private static volatile Object p;
    private static volatile View q;
    private static volatile boolean r;
    private static int u;
    private String a;
    private boolean b;
    private boolean d;
    private SharedPreferences e;
    private static final ThreadLocal<Boolean> m = new ThreadLocal<>();
    private static final Set<View> s = Collections.newSetFromMap(new WeakHashMap());
    private static boolean t = true;
    private static final Set<View> v = Collections.newSetFromMap(new WeakHashMap());
    private volatile String c = "unknown";
    private volatile int f = 126;
    private volatile int g = 126;
    private final Map<String, Integer> h = new HashMap();

    class a implements View.OnLayoutChangeListener {
        final /* synthetic */ Field a;
        final /* synthetic */ Method b;
        final /* synthetic */ Field c;

        a(Field field, Method method, Field field2) {
            this.a = field;
            this.b = method;
            this.c = field2;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (view.getWidth() == 0 || view.getHeight() == 0) {
                return;
            }
            view.removeOnLayoutChangeListener(this);
            G.v.remove(view);
            try {
                int i9 = this.a.getInt(view);
                this.b.invoke(view, Integer.valueOf(i9), this.c.get(null));
                if (dev.duo.hookprobe.G.this.a("batteryBlurReplay", 4)) {
                    Log.i(dev.duo.hookprobe.G.i, "BATTERY_BLUR replayed radius=" + i9);
                }
            } catch (ReflectiveOperationException e) {
                Log.e(dev.duo.hookprobe.G.i, "BATTERY_BLUR replay failed", e);
            }
        }
    }

    class b implements IntSupplier {
        private volatile long a;
        private volatile int b = 100;
        final /* synthetic */ SharedPreferences c;
        final /* synthetic */ String d;

        b(SharedPreferences sharedPreferences, String str) {
            this.c = sharedPreferences;
            this.d = str;
        }

        @Override // java.util.function.IntSupplier
        public int getAsInt() {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (elapsedRealtime >= this.a) {
                int h = dev.duo.hookprobe.G.this.h();
                if (h == 0) {
                    h = (this.c != null && G.g() && P.b(this.c) && (this.c.getBoolean(P.f(this.d), P.e(this.d)) || P.a(this.c, this.d))) ? P.g(this.c, this.d) : 100;
                }
                this.b = h;
                this.a = elapsedRealtime + 1000;
            }
            return this.b;
        }
    }

    private boolean c() {
        SharedPreferences sharedPreferences = this.e;
        return sharedPreferences != null && sharedPreferences.getBoolean(P.f("com.ss.android.ugc.aweme"), P.e("com.ss.android.ugc.aweme"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object d(XposedInterface.Chain chain) throws Throwable {
        View view = (View) chain.getThisObject();
        s.add(view);
        view.setTransitionAlpha((t || !g()) ? 1.0f : 0.0f);
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object e(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (g()) {
            try {
                a((ViewGroup) chain.getThisObject());
                return proceed;
            } catch (Throwable th) {
                if (a("keyguardHeightError", 1)) {
                    Log.e(i, "KEYGUARD_HEIGHT_ZERO row left at native height", th);
                }
            }
        }
        return proceed;
    }

    public static boolean f() {
        return r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean g() {
        try {
            Method method = k;
            if (method == null) {
                method = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class);
                k = method;
            }
            return true ^ "0".equals(method.invoke(null, "debug.duo.master", ""));
        } catch (Throwable th) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int h() {
        try {
            Method method = k;
            if (method == null) {
                method = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class);
                k = method;
            }
            String str = (String) method.invoke(null, "debug.duo.scale.wx", "");
            if (str.isEmpty()) {
                return 0;
            }
            return P.b(Integer.parseInt(str));
        } catch (NumberFormatException | ReflectiveOperationException e) {
            return 0;
        }
    }

    public void onModuleLoaded(XposedModuleInterface.ModuleLoadedParam moduleLoadedParam) {
        this.a = moduleLoadedParam.getProcessName();
        boolean isSystemServer = moduleLoadedParam.isSystemServer();
        this.b = isSystemServer;
        if (isSystemServer) {
            return;
        }
        Log.i(i, "JAVA_ENTRY process=" + this.a + " pid=" + Process.myPid() + " uid=" + Process.myUid());
    }

    public void onPackageLoaded(XposedModuleInterface.PackageLoadedParam packageLoadedParam) {
        if (this.b || !packageLoadedParam.isFirstPackage()) {
            return;
        }
        String packageName = packageLoadedParam.getPackageName();
        if (!packageName.equals(j)) {
            if (MainActivity.d.contains(packageName) || this.a.equals(j)) {
                return;
            }
            a(packageLoadedParam.getDefaultClassLoader(), packageName);
            return;
        }
        if (this.a.equals(j)) {
            try {
                Class<?> cls = Class.forName("com.android.internal.policy.SystemBarUtils", false, packageLoadedParam.getDefaultClassLoader());
                Method declaredMethod = cls.getDeclaredMethod("getStatusBarHeight", Context.class);
                Class cls2 = Integer.TYPE;
                Method declaredMethod2 = cls.getDeclaredMethod("getStatusBarHeightForRotation", Context.class, cls2);
                hook(declaredMethod).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda11
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object a2;
                        a2 = G.a(chain);
                        return a2;
                    }
                });
                hook(declaredMethod2).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda12
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object b2;
                        b2 = G.b(chain);
                        return b2;
                    }
                });
                Log.i(i, "STATUS_HEIGHT_ZERO hooks installed in SystemUI only");
                try {
                    final Class<?> cls3 = Class.forName("com.android.systemui.statusbar.window.StatusBarWindowControllerImpl", false, packageLoadedParam.getDefaultClassLoader());
                    Class<?> cls4 = Class.forName("com.android.systemui.statusbar.phone.PhoneStatusBarView", false, packageLoadedParam.getDefaultClassLoader());
                    n = cls3.getDeclaredMethod("refreshStatusBarHeight", null);
                    o = cls4.getDeclaredMethod("updateStatusBarHeight", null);
                    n.setAccessible(true);
                    o.setAccessible(true);
                    Method[] methodArr = {n, cls3.getDeclaredMethod("getBarLayoutParamsForRotation", cls2), cls3.getDeclaredMethod("apply", Class.forName(cls3.getName() + "$State", false, packageLoadedParam.getDefaultClassLoader())), o};
                    for (int i2 = 0; i2 < 4; i2++) {
                        final Method method = methodArr[i2];
                        hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda13
                            public final Object intercept(XposedInterface.Chain chain) {
                                Object a2;
                                a2 = G.a(method, cls3, chain);
                                return a2;
                            }
                        });
                    }
                    hook(cls4.getDeclaredMethod("onAttachedToWindow", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda14
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object c;
                            c = G.c(chain);
                            return c;
                        }
                    });
                    Log.i(i, "STATUS_FOREGROUND refresh hooks installed");
                } catch (Throwable th) {
                    n = null;
                    Log.e(i, "STATUS_FOREGROUND not installed, status bar stays hidden", th);
                }
                try {
                    hook(Class.forName("com.android.systemui.controlcenter.phone.widget.ControlCenterFakeStatusIcons", false, packageLoadedParam.getDefaultClassLoader()).getDeclaredMethod("onAttachedToWindow", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda15
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object d;
                            d = G.d(chain);
                            return d;
                        }
                    });
                    Log.i(i, "STATUS_FOREGROUND control center status copy hook installed");
                } catch (Throwable th2) {
                    Log.e(i, "STATUS_FOREGROUND control center status copy not hooked", th2);
                }
                try {
                    Class<?> cls5 = Class.forName("com.android.systemui.statusbar.phone.MiuiKeyguardStatusBarView", false, packageLoadedParam.getDefaultClassLoader());
                    String[] strArr = {"updateKeyguardStatusBarHeight", "onAttachedToWindow"};
                    for (int i3 = 0; i3 < 2; i3++) {
                        hook(cls5.getDeclaredMethod(strArr[i3], null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda16
                            public final Object intercept(XposedInterface.Chain chain) {
                                Object e;
                                e = dev.duo.hookprobe.G.this.e(chain);
                                return e;
                            }
                        });
                    }
                    Log.i(i, "KEYGUARD_HEIGHT_ZERO hooks installed on MiuiKeyguardStatusBarView");
                } catch (Throwable th3) {
                    Log.e(i, "KEYGUARD_HEIGHT_ZERO not installed", th3);
                }
                try {
                    b(packageLoadedParam.getDefaultClassLoader());
                } catch (Throwable th4) {
                    Log.e(i, "BATTERY_BLUR replay not installed", th4);
                }
            } catch (Throwable th5) {
                Log.e(i, "STATUS_HEIGHT_ZERO not installed", th5);
            }
        }
    }

    public void onSystemServerStarting(XposedModuleInterface.SystemServerStartingParam systemServerStartingParam) {
        K.a(this, systemServerStartingParam.getClassLoader());
        n.a(this, systemServerStartingParam.getClassLoader());
    }

    private int b(String str) {
        return this.e != null ? (!"outer".equals(str) || c()) ? P.b(this.e, "com.ss.android.ugc.aweme", str) : P.e(this.e, "com.ss.android.ugc.aweme") : "inner".equals(str) ? this.f : "outer".equals(str) ? this.g : this.g;
    }

    private boolean a(String str) {
        SharedPreferences sharedPreferences;
        if (str != null && (sharedPreferences = this.e) != null && P.b(sharedPreferences) && g()) {
            if (c()) {
                return ("inner".equals(str) && P.d(this.e, "com.ss.android.ugc.aweme")) ? false : true;
            }
            if ((("inner".equals(str) ? 2 : 1) & P.c(this.e, "com.ss.android.ugc.aweme")) != 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object c(XposedInterface.Chain chain) throws Throwable {
        q = (View) chain.getThisObject();
        return chain.proceed();
    }

    private void d() {
        try {
            final SparseArray sparseArray = new SparseArray();
            String[] strArr = {"status_bar_height", "status_bar_height_portrait", "status_bar_height_landscape", "status_bar_height_default"};
            for (int i2 = 0; i2 < 4; i2++) {
                String str = strArr[i2];
                int identifier = Resources.getSystem().getIdentifier(str, "dimen", "android");
                if (identifier != 0) {
                    sparseArray.put(identifier, str);
                }
            }
            final Field field = Configuration.class.getField("windowConfiguration");
            final Method method = field.getType().getMethod("getBounds", null);
            final Method method2 = field.getType().getMethod("getMaxBounds", null);
            hook(Resources.class.getDeclaredMethod("getDimensionPixelSize", Integer.TYPE)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda2
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a2;
                    a2 = dev.duo.hookprobe.G.this.a(sparseArray, field, method2, method, chain);
                    return a2;
                }
            });
            Log.i(i, "AWEME_STATUS_RESOURCE installed ids=" + sparseArray.size());
        } catch (Throwable th) {
            Log.e(i, "AWEME_STATUS_RESOURCE not installed", th);
        }
    }

    private boolean c(ClassLoader classLoader) {
        try {
            final Q q2 = new Q(classLoader, false);
            hook(q2.a.getDeclaredMethod("readFromParcel", Parcel.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda1
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a2;
                    a2 = dev.duo.hookprobe.G.this.a(q2, chain);
                    return a2;
                }
            });
            Log.i(i, "TOP_INSETS installed inner=" + this.f + " outer=" + this.g);
            return true;
        } catch (Throwable th) {
            Log.e(i, "TOP_INSETS not installed, app left untouched", th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object b(XposedInterface.Chain chain) throws Throwable {
        if (g() && !l && Boolean.TRUE.equals(m.get())) {
            return 0;
        }
        return chain.proceed();
    }

    private void e() {
        try {
            final SparseArray sparseArray = new SparseArray();
            String[] strArr = {"status_bar_height", "status_bar_height_portrait", "status_bar_height_landscape", "status_bar_height_default"};
            for (int i2 = 0; i2 < 4; i2++) {
                String str = strArr[i2];
                int identifier = Resources.getSystem().getIdentifier(str, "dimen", "android");
                if (identifier != 0) {
                    sparseArray.put(identifier, str);
                }
            }
            Class cls = Integer.TYPE;
            hook(AssetManager.class.getDeclaredMethod("getResourceValue", cls, cls, TypedValue.class, Boolean.TYPE)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda5
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a2;
                    a2 = dev.duo.hookprobe.G.this.a(sparseArray, chain);
                    return a2;
                }
            });
            Log.i(i, "STATUS_RESOURCE installed inner=" + this.f + " outer=" + this.g + " ids=" + sparseArray.size());
        } catch (Throwable th) {
            Log.e(i, "STATUS_RESOURCE not installed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object a(XposedInterface.Chain chain) throws Throwable {
        if (g() && !l && Boolean.TRUE.equals(m.get())) {
            return 0;
        }
        return chain.proceed();
    }

    private static void b(boolean z) {
        if (z == l) {
            return;
        }
        l = z;
        try {
            if (p != null) {
                n.invoke(p, null);
            }
            if (q != null) {
                o.invoke(q, null);
            }
            boolean z2 = true;
            StringBuilder append = new StringBuilder().append("STATUS_FOREGROUND ").append(z ? "shown" : "hidden").append(" window=").append(p != null).append(" view=");
            if (q == null) {
                z2 = false;
            }
            Log.i(i, append.append(z2).toString());
        } catch (ReflectiveOperationException e) {
            Log.e(i, "STATUS_FOREGROUND refresh failed shown=" + z, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object a(Method method, Class cls, XposedInterface.Chain chain) throws Throwable {
        if (method.getDeclaringClass() == cls) {
            p = chain.getThisObject();
        } else {
            q = (View) chain.getThisObject();
        }
        ThreadLocal<Boolean> threadLocal = m;
        Boolean bool = threadLocal.get();
        threadLocal.set(Boolean.TRUE);
        try {
            Object proceed = chain.proceed();
            if (bool == null) {
                threadLocal.remove();
                return proceed;
            }
            threadLocal.set(bool);
            return proceed;
        } catch (Throwable th) {
            if (bool == null) {
                m.remove();
            } else {
                m.set(bool);
            }
            throw th;
        }
    }

    private void b(ClassLoader classLoader) throws ReflectiveOperationException {
        Class<?> cls = Class.forName("com.android.systemui.statusbar.views.MiuiBatteryMeterView", false, classLoader);
        final Field declaredField = cls.getDeclaredField("mBlurRadius");
        declaredField.setAccessible(true);
        Field declaredField2 = Class.forName("com.android.systemui.statusbar.anim.MiuiStatusBarIconAnimatorController", false, classLoader).getDeclaredField("blurPoint");
        declaredField2.setAccessible(true);
        Class cls2 = Integer.TYPE;
        final a aVar = new a(declaredField, cls.getMethod("setMiSelfBlur", cls2, ArrayList.class), declaredField2);
        hook(cls.getDeclaredMethod("setBlurRadius", cls2)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda4
            public final Object intercept(XposedInterface.Chain chain) {
                Object a2;
                a2 = G.a(declaredField, aVar, chain);
                return a2;
            }
        });
        Log.i(i, "BATTERY_BLUR replay hook installed");
    }

    public static void a(boolean z) {
        t = z;
        boolean z2 = z || !g();
        Iterator<View> it = s.iterator();
        while (it.hasNext()) {
            it.next().setTransitionAlpha(z2 ? 1.0f : 0.0f);
        }
    }

    public static void a(boolean z, boolean z2) {
        if (n == null) {
            return;
        }
        boolean z3 = g() && !z;
        boolean z4 = z || z2;
        final int i2 = u + 1;
        u = i2;
        r = !z3;
        final View rootView = q == null ? null : q.getRootView();
        if (!z3) {
            b(z4);
            a(rootView, 1.0f);
        } else if (!z4 && rootView != null && l) {
            a(rootView, 0.0f);
            rootView.getViewTreeObserver().registerFrameCommitCallback(new Runnable() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    G.a(rootView, i2);
                }
            });
            rootView.invalidate();
        } else {
            a(rootView, 0.0f);
            b(z4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(View view, final int i2) {
        view.post(new Runnable() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                G.a(i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(int i2) {
        if (i2 == u) {
            b(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean b(SharedPreferences sharedPreferences, String str) {
        if (g() && P.b(sharedPreferences)) {
            return sharedPreferences.getBoolean(P.f(str), P.e(str)) || P.a(sharedPreferences, str);
        }
        return false;
    }

    private static void a(View view, float f) {
        if (view == null || view.getAlpha() == f) {
            return;
        }
        view.setAlpha(f);
        Log.i(i, "STATUS_FOREGROUND window alpha=" + f + " root=" + view.getClass().getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(SharedPreferences sharedPreferences) {
        return P.g(sharedPreferences, "com.ss.android.ugc.aweme");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object a(Field field, View.OnLayoutChangeListener onLayoutChangeListener, XposedInterface.Chain chain) throws Throwable {
        View view = (View) chain.getThisObject();
        boolean z = false;
        if (((Integer) chain.getArg(0)).intValue() != field.getInt(view) && (view.getWidth() == 0 || view.getHeight() == 0)) {
            z = true;
        }
        Object proceed = chain.proceed();
        if (z && v.add(view)) {
            view.addOnLayoutChangeListener(onLayoutChangeListener);
        }
        return proceed;
    }

    private void a(ViewGroup viewGroup) {
        ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        viewGroup.setClipChildren(true);
        viewGroup.setClipToPadding(true);
        int i2 = layoutParams.height;
        if (i2 != 0) {
            layoutParams.height = 0;
            viewGroup.setLayoutParams(layoutParams);
        }
        if (a("keyguardHeight", 2)) {
            Log.i(i, "KEYGUARD_HEIGHT_ZERO class=" + viewGroup.getClass().getName() + " height=" + i2 + " -> 0 clipChildren=" + viewGroup.getClipChildren() + " clipToPadding=" + viewGroup.getClipToPadding());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(ClassLoader classLoader, final String str) {
        Throwable th;
        SharedPreferences sharedPreferences;
        int i2;
        int i3;
        boolean z;
        if ("com.ss.android.ugc.aweme".equals(str)) {
            if (str.equals(this.a)) {
                a(classLoader);
                return;
            }
            return;
        }
        boolean z2 = false;
        int i4 = 126;
        final SharedPreferences sharedPreferences2 = null;
        try {
            sharedPreferences2 = getRemotePreferences("duo_top");
            z = sharedPreferences2.getBoolean(P.f(str), P.e(str)) && P.b(sharedPreferences2) && g();
            this.d = P.d(sharedPreferences2, str);
            i3 = P.b(sharedPreferences2, str, "inner");
        } catch (Throwable th2) {
            throw th2;
            sharedPreferences = sharedPreferences2;
            i2 = 126;
        }
        try {
            i4 = P.b(sharedPreferences2, str, "outer");
            if (z || P.a(sharedPreferences2, str)) {
                D.a(this, classLoader, new BooleanSupplier() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda6
                    @Override // java.util.function.BooleanSupplier
                    public final boolean getAsBoolean() {
                        boolean b2;
                        b2 = G.b(sharedPreferences2, str);
                        return b2;
                    }
                }, new IntSupplier() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda7
                    @Override // java.util.function.IntSupplier
                    public final int getAsInt() {
                        int g;
                        g = P.g(sharedPreferences2, str);
                        return g;
                    }
                });
            }
            z2 = z;
        } catch (Throwable th3) {
            i2 = i4;
            i4 = i3;
            throw th3;
            sharedPreferences = sharedPreferences2;
            Log.e(i, "CONFIG unreadable, app left untouched", th);
            i3 = i4;
            i4 = i2;
            sharedPreferences2 = sharedPreferences;
            if ("com.tencent.mm".equals(str)) {
            }
            this.f = i3;
            this.g = i4;
            Log.i(i, "CONFIG package=" + str + " process=" + this.a + " enabled=" + z2 + " topSafePxInner=" + i3 + " topSafePxOuter=" + i4);
            if (z2) {
                e();
            }
            return;
        }
        if ("com.tencent.mm".equals(str)) {
            a(classLoader, str, sharedPreferences2);
        }
        this.f = i3;
        this.g = i4;
        Log.i(i, "CONFIG package=" + str + " process=" + this.a + " enabled=" + z2 + " topSafePxInner=" + i3 + " topSafePxOuter=" + i4);
        if (z2 && !P.q.contains(str) && !"com.tencent.mm".equals(str) && c(classLoader)) {
            e();
        }
    }

    private void a(ClassLoader classLoader) {
        long uptimeMillis = SystemClock.uptimeMillis();
        try {
            final SharedPreferences remotePreferences = getRemotePreferences("duo_top");
            long uptimeMillis2 = SystemClock.uptimeMillis() - uptimeMillis;
            this.e = remotePreferences;
            h.a(this, classLoader, remotePreferences, new BooleanSupplier() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda8
                @Override // java.util.function.BooleanSupplier
                public final boolean getAsBoolean() {
                    boolean g;
                    g = G.g();
                    return g;
                }
            });
            try {
                boolean z = c() && P.b(remotePreferences) && g();
                if (z || P.a(remotePreferences, "com.ss.android.ugc.aweme")) {
                    D.a(this, classLoader, new BooleanSupplier() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda9
                        @Override // java.util.function.BooleanSupplier
                        public final boolean getAsBoolean() {
                            boolean a2;
                            a2 = G.a(remotePreferences);
                            return a2;
                        }
                    }, new IntSupplier() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda10
                        @Override // java.util.function.IntSupplier
                        public final int getAsInt() {
                            int b2;
                            b2 = G.b(remotePreferences);
                            return b2;
                        }
                    });
                }
                Log.i(i, "CONFIG package=com.ss.android.ugc.aweme process=" + this.a + " enabled=" + z + " path=awemeLive topSafePxInner=" + b("inner") + " topSafePxOuter=" + b("outer") + " prefsMs=" + uptimeMillis2);
                if (c(classLoader)) {
                    if (z) {
                        e();
                    }
                    d();
                }
                Log.i(i, "AWEME_SETUP ms=" + (SystemClock.uptimeMillis() - uptimeMillis));
            } catch (RuntimeException e) {
                Log.e(i, "AWEME config unreadable, app left untouched", e);
            }
        } catch (RuntimeException e2) {
            Log.e(i, "AWEME config unreadable, app left untouched", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(SharedPreferences sharedPreferences) {
        if (g() && P.b(sharedPreferences)) {
            return sharedPreferences.getBoolean(P.f("com.ss.android.ugc.aweme"), P.e("com.ss.android.ugc.aweme")) || P.a(sharedPreferences, "com.ss.android.ugc.aweme");
        }
        return false;
    }

    private void a(ClassLoader classLoader, String str, SharedPreferences sharedPreferences) {
        Log.i(i, "WECHAT_SCALE process=" + this.a + " uid=" + Process.myUid() + " property=" + h() + " preferences=" + (sharedPreferences != null));
        U.a(this, classLoader, new b(sharedPreferences, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean a(String str, int i2) {
        Integer num = this.h.get(str);
        int intValue = num == null ? 0 : num.intValue();
        if (intValue >= i2) {
            return false;
        }
        this.h.put(str, Integer.valueOf(intValue + 1));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Q q2, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (!(proceed instanceof SparseArray)) {
            return proceed;
        }
        Object thisObject = chain.getThisObject();
        Rect a2 = q2.a(thisObject);
        String a3 = Q.a(a2);
        this.c = a3 == null ? "unknown" : a3;
        if (a3 != null && ((!this.d || !"inner".equals(a3)) && (this.e == null || a(a3)))) {
            int b2 = b(a3);
            q2.a(thisObject, (SparseArray) proceed, a2, b2, "inner".equals(a3));
            if (a("parcel:" + a3, 3)) {
                Log.i(i, "TOP_INSETS panel=" + a3 + " status/cutout -> " + b2);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(SparseArray sparseArray, Field field, Method method, Method method2, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        try {
            String str = (String) sparseArray.get(((Integer) chain.getArg(0)).intValue());
            if (str != null) {
                Object obj = field.get(((Resources) chain.getThisObject()).getConfiguration());
                Rect rect = (Rect) method.invoke(obj, null);
                Rect rect2 = (Rect) method2.invoke(obj, null);
                String a2 = Q.a(rect);
                if (a2 != null && a(a2) && (c() || rect2.equals(rect))) {
                    int b2 = b(a2);
                    if (a("awemeStatusRes:" + a2, 4)) {
                        Log.i(i, "AWEME_STATUS_RESOURCE panel=" + a2 + " " + str + " bounds=" + rect + " px=" + proceed + " -> " + b2);
                    }
                    return Integer.valueOf(b2);
                }
            }
        } catch (Throwable th) {
            if (a("awemeStatusError", 1)) {
                Log.w(i, "AWEME_STATUS_RESOURCE read failed, native value kept", th);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(SparseArray sparseArray, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        String str = (String) sparseArray.get(((Integer) chain.getArg(0)).intValue());
        if (str != null && Boolean.TRUE.equals(proceed)) {
            TypedValue typedValue = (TypedValue) chain.getArg(2);
            if (typedValue.type == 5) {
                String str2 = this.c;
                if ((this.e == null || (c() && a(str2))) && (!this.d || !"inner".equals(str2))) {
                    int b2 = b(str2);
                    int i2 = b2 << 8;
                    int i3 = typedValue.data;
                    typedValue.data = i2;
                    if (a("statusRes:" + str2, 4)) {
                        Log.i(i, "STATUS_RESOURCE panel=" + str2 + " " + str + " data=" + i3 + " -> " + i2 + " (" + b2 + "px)");
                    }
                }
            }
        }
        return proceed;
    }
}
