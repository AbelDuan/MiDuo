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

/* renamed from: dev.duo.hookprobe.G */
/* loaded from: classes.dex */
public final class GenericProcessHooks extends XposedModule {

    /* renamed from: i */
    private static final String f829i = "DuoHookProbe";

    /* renamed from: j */
    private static final String f830j = "com.android.systemui";

    /* renamed from: k */
    private static volatile Method f831k;

    /* renamed from: l */
    private static volatile boolean f832l;

    /* renamed from: n */
    private static Method f834n;

    /* renamed from: o */
    private static Method f835o;

    /* renamed from: p */
    private static volatile Object f836p;

    /* renamed from: q */
    private static volatile View f837q;

    /* renamed from: r */
    private static volatile boolean f838r;

    /* renamed from: u */
    private static int f841u;

    /* renamed from: a */
    private String f843a;

    /* renamed from: b */
    private boolean f844b;

    /* renamed from: d */
    private boolean f846d;

    /* renamed from: e */
    private SharedPreferences f847e;

    /* renamed from: m */
    private static final ThreadLocal<Boolean> f833m = new ThreadLocal<>();

    /* renamed from: s */
    private static final Set<View> f839s = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: t */
    private static boolean f840t = true;

    /* renamed from: v */
    private static final Set<View> f842v = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: c */
    private volatile String f845c = "unknown";

    /* renamed from: f */
    private volatile int f848f = 126;

    /* renamed from: g */
    private volatile int f849g = 126;

    /* renamed from: h */
    private final Map<String, Integer> f850h = new HashMap();

    /* renamed from: dev.duo.hookprobe.G$a */
    class a implements View.OnLayoutChangeListener {

        /* renamed from: a */
        final /* synthetic */ Field f851a;

        /* renamed from: b */
        final /* synthetic */ Method f852b;

        /* renamed from: c */
        final /* synthetic */ Field f853c;

        a(Field field, Method method, Field field2) {
            this.f851a = field;
            this.f852b = method;
            this.f853c = field2;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (view.getWidth() == 0 || view.getHeight() == 0) {
                return;
            }
            view.removeOnLayoutChangeListener(this);
            GenericProcessHooks.f842v.remove(view);
            try {
                int i9 = this.f851a.getInt(view);
                this.f852b.invoke(view, Integer.valueOf(i9), this.f853c.get(null));
                if (GenericProcessHooks.this.m878a("batteryBlurReplay", 4)) {
                    Log.i(GenericProcessHooks.f829i, "BATTERY_BLUR replayed radius=" + i9);
                }
            } catch (ReflectiveOperationException e) {
                Log.e(GenericProcessHooks.f829i, "BATTERY_BLUR replay failed", e);
            }
        }
    }

    /* renamed from: dev.duo.hookprobe.G$b */
    class b implements IntSupplier {

        /* renamed from: a */
        private volatile long f855a;

        /* renamed from: b */
        private volatile int f856b = 100;

        /* renamed from: c */
        final /* synthetic */ SharedPreferences f857c;

        /* renamed from: d */
        final /* synthetic */ String f858d;

        b(SharedPreferences sharedPreferences, String str) {
            this.f857c = sharedPreferences;
            this.f858d = str;
        }

        @Override // java.util.function.IntSupplier
        public int getAsInt() {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (elapsedRealtime >= this.f855a) {
                int m895h = GenericProcessHooks.this.m895h();
                if (m895h == 0) {
                    m895h = (this.f857c != null && GenericProcessHooks.m894g() && ConfigKeys.m1229b(this.f857c) && (this.f857c.getBoolean(ConfigKeys.m1243f(this.f858d), ConfigKeys.m1242e(this.f858d)) || ConfigKeys.m1218a(this.f857c, this.f858d))) ? ConfigKeys.m1245g(this.f857c, this.f858d) : 100;
                }
                this.f856b = m895h;
                this.f855a = elapsedRealtime + 1000;
            }
            return this.f856b;
        }
    }

    /* renamed from: c */
    private boolean m887c() {
        SharedPreferences sharedPreferences = this.f847e;
        return sharedPreferences != null && sharedPreferences.getBoolean(ConfigKeys.m1243f("com.ss.android.ugc.aweme"), ConfigKeys.m1242e("com.ss.android.ugc.aweme"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static /* synthetic */ Object m889d(XposedInterface.Chain chain) throws Throwable {
        View view = (View) chain.getThisObject();
        f839s.add(view);
        view.setTransitionAlpha((f840t || !m894g()) ? 1.0f : 0.0f);
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ Object m891e(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (m894g()) {
            try {
                m869a((ViewGroup) chain.getThisObject());
                return proceed;
            } catch (Throwable th) {
                if (m878a("keyguardHeightError", 1)) {
                    Log.e(f829i, "KEYGUARD_HEIGHT_ZERO row left at native height", th);
                }
            }
        }
        return proceed;
    }

    /* renamed from: f */
    public static boolean m893f() {
        return f838r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public static boolean m894g() {
        try {
            Method method = f831k;
            if (method == null) {
                method = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class);
                f831k = method;
            }
            return true ^ "0".equals(method.invoke(null, "debug.duo.master", ""));
        } catch (Throwable th) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public int m895h() {
        try {
            Method method = f831k;
            if (method == null) {
                method = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class);
                f831k = method;
            }
            String str = (String) method.invoke(null, "debug.duo.scale.wx", "");
            if (str.isEmpty()) {
                return 0;
            }
            return ConfigKeys.m1222b(Integer.parseInt(str));
        } catch (NumberFormatException | ReflectiveOperationException e) {
            return 0;
        }
    }

    public void onModuleLoaded(XposedModuleInterface.ModuleLoadedParam moduleLoadedParam) {
        this.f843a = moduleLoadedParam.getProcessName();
        boolean isSystemServer = moduleLoadedParam.isSystemServer();
        this.f844b = isSystemServer;
        if (isSystemServer) {
            return;
        }
        Log.i(f829i, "JAVA_ENTRY process=" + this.f843a + " pid=" + Process.myPid() + " uid=" + Process.myUid());
    }

    public void onPackageLoaded(XposedModuleInterface.PackageLoadedParam packageLoadedParam) {
        if (this.f844b || !packageLoadedParam.isFirstPackage()) {
            return;
        }
        String packageName = packageLoadedParam.getPackageName();
        if (!packageName.equals(f830j)) {
            if (MainActivity.f960d.contains(packageName) || this.f843a.equals(f830j)) {
                return;
            }
            m871a(packageLoadedParam.getDefaultClassLoader(), packageName);
            return;
        }
        if (this.f843a.equals(f830j)) {
            try {
                Class<?> cls = Class.forName("com.android.internal.policy.SystemBarUtils", false, packageLoadedParam.getDefaultClassLoader());
                Method declaredMethod = cls.getDeclaredMethod("getStatusBarHeight", Context.class);
                Class cls2 = Integer.TYPE;
                Method declaredMethod2 = cls.getDeclaredMethod("getStatusBarHeightForRotation", Context.class, cls2);
                hook(declaredMethod).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda11
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object m862a;
                        m862a = GenericProcessHooks.m862a(chain);
                        return m862a;
                    }
                });
                hook(declaredMethod2).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda12
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object m881b;
                        m881b = GenericProcessHooks.m881b(chain);
                        return m881b;
                    }
                });
                Log.i(f829i, "STATUS_HEIGHT_ZERO hooks installed in SystemUI only");
                try {
                    final Class<?> cls3 = Class.forName("com.android.systemui.statusbar.window.StatusBarWindowControllerImpl", false, packageLoadedParam.getDefaultClassLoader());
                    Class<?> cls4 = Class.forName("com.android.systemui.statusbar.phone.PhoneStatusBarView", false, packageLoadedParam.getDefaultClassLoader());
                    f834n = cls3.getDeclaredMethod("refreshStatusBarHeight", null);
                    f835o = cls4.getDeclaredMethod("updateStatusBarHeight", null);
                    f834n.setAccessible(true);
                    f835o.setAccessible(true);
                    Method[] methodArr = {f834n, cls3.getDeclaredMethod("getBarLayoutParamsForRotation", cls2), cls3.getDeclaredMethod("apply", Class.forName(cls3.getName() + "$State", false, packageLoadedParam.getDefaultClassLoader())), f835o};
                    for (int i = 0; i < 4; i++) {
                        final Method method = methodArr[i];
                        hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda13
                            public final Object intercept(XposedInterface.Chain chain) {
                                Object m864a;
                                m864a = GenericProcessHooks.m864a(method, cls3, chain);
                                return m864a;
                            }
                        });
                    }
                    hook(cls4.getDeclaredMethod("onAttachedToWindow", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda14
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object m886c;
                            m886c = GenericProcessHooks.m886c(chain);
                            return m886c;
                        }
                    });
                    Log.i(f829i, "STATUS_FOREGROUND refresh hooks installed");
                } catch (Throwable th) {
                    f834n = null;
                    Log.e(f829i, "STATUS_FOREGROUND not installed, status bar stays hidden", th);
                }
                try {
                    hook(Class.forName("com.android.systemui.controlcenter.phone.widget.ControlCenterFakeStatusIcons", false, packageLoadedParam.getDefaultClassLoader()).getDeclaredMethod("onAttachedToWindow", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda15
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object m889d;
                            m889d = GenericProcessHooks.m889d(chain);
                            return m889d;
                        }
                    });
                    Log.i(f829i, "STATUS_FOREGROUND control center status copy hook installed");
                } catch (Throwable th2) {
                    Log.e(f829i, "STATUS_FOREGROUND control center status copy not hooked", th2);
                }
                try {
                    Class<?> cls5 = Class.forName("com.android.systemui.statusbar.phone.MiuiKeyguardStatusBarView", false, packageLoadedParam.getDefaultClassLoader());
                    String[] strArr = {"updateKeyguardStatusBarHeight", "onAttachedToWindow"};
                    for (int i2 = 0; i2 < 2; i2++) {
                        hook(cls5.getDeclaredMethod(strArr[i2], null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda16
                            public final Object intercept(XposedInterface.Chain chain) {
                                Object m891e;
                                m891e = GenericProcessHooks.this.m891e(chain);
                                return m891e;
                            }
                        });
                    }
                    Log.i(f829i, "KEYGUARD_HEIGHT_ZERO hooks installed on MiuiKeyguardStatusBarView");
                } catch (Throwable th3) {
                    Log.e(f829i, "KEYGUARD_HEIGHT_ZERO not installed", th3);
                }
                try {
                    m882b(packageLoadedParam.getDefaultClassLoader());
                } catch (Throwable th4) {
                    Log.e(f829i, "BATTERY_BLUR replay not installed", th4);
                }
            } catch (Throwable th5) {
                Log.e(f829i, "STATUS_HEIGHT_ZERO not installed", th5);
            }
        }
    }

    public void onSystemServerStarting(XposedModuleInterface.SystemServerStartingParam systemServerStartingParam) {
        RatioGate.m965a(this, systemServerStartingParam.getClassLoader());
        SystemServerHooks.m1732a(this, systemServerStartingParam.getClassLoader());
    }

    /* renamed from: b */
    private int m880b(String str) {
        return this.f847e != null ? (!"outer".equals(str) || m887c()) ? ConfigKeys.m1224b(this.f847e, "com.ss.android.ugc.aweme", str) : ConfigKeys.m1240e(this.f847e, "com.ss.android.ugc.aweme") : "inner".equals(str) ? this.f848f : "outer".equals(str) ? this.f849g : this.f849g;
    }

    /* renamed from: a */
    private boolean m877a(String str) {
        SharedPreferences sharedPreferences;
        if (str != null && (sharedPreferences = this.f847e) != null && ConfigKeys.m1229b(sharedPreferences) && m894g()) {
            if (m887c()) {
                return ("inner".equals(str) && ConfigKeys.m1239d(this.f847e, "com.ss.android.ugc.aweme")) ? false : true;
            }
            if ((("inner".equals(str) ? 2 : 1) & ConfigKeys.m1231c(this.f847e, "com.ss.android.ugc.aweme")) != 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ Object m886c(XposedInterface.Chain chain) throws Throwable {
        f837q = (View) chain.getThisObject();
        return chain.proceed();
    }

    /* renamed from: d */
    private void m890d() {
        try {
            final SparseArray sparseArray = new SparseArray();
            String[] strArr = {"status_bar_height", "status_bar_height_portrait", "status_bar_height_landscape", "status_bar_height_default"};
            for (int i = 0; i < 4; i++) {
                String str = strArr[i];
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
                    Object m860a;
                    m860a = GenericProcessHooks.this.m860a(sparseArray, field, method2, method, chain);
                    return m860a;
                }
            });
            Log.i(f829i, "AWEME_STATUS_RESOURCE installed ids=" + sparseArray.size());
        } catch (Throwable th) {
            Log.e(f829i, "AWEME_STATUS_RESOURCE not installed", th);
        }
    }

    /* renamed from: c */
    private boolean m888c(ClassLoader classLoader) {
        try {
            final InsetsBridge c0072q = new InsetsBridge(classLoader, false);
            hook(c0072q.f1196a.getDeclaredMethod("readFromParcel", Parcel.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda1
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m861a;
                    m861a = GenericProcessHooks.this.m861a(c0072q, chain);
                    return m861a;
                }
            });
            Log.i(f829i, "TOP_INSETS installed inner=" + this.f848f + " outer=" + this.f849g);
            return true;
        } catch (Throwable th) {
            Log.e(f829i, "TOP_INSETS not installed, app left untouched", th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ Object m881b(XposedInterface.Chain chain) throws Throwable {
        if (m894g() && !f832l && Boolean.TRUE.equals(f833m.get())) {
            return 0;
        }
        return chain.proceed();
    }

    /* renamed from: e */
    private void m892e() {
        try {
            final SparseArray sparseArray = new SparseArray();
            String[] strArr = {"status_bar_height", "status_bar_height_portrait", "status_bar_height_landscape", "status_bar_height_default"};
            for (int i = 0; i < 4; i++) {
                String str = strArr[i];
                int identifier = Resources.getSystem().getIdentifier(str, "dimen", "android");
                if (identifier != 0) {
                    sparseArray.put(identifier, str);
                }
            }
            Class cls = Integer.TYPE;
            hook(AssetManager.class.getDeclaredMethod("getResourceValue", cls, cls, TypedValue.class, Boolean.TYPE)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda5
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m859a;
                    m859a = GenericProcessHooks.this.m859a(sparseArray, chain);
                    return m859a;
                }
            });
            Log.i(f829i, "STATUS_RESOURCE installed inner=" + this.f848f + " outer=" + this.f849g + " ids=" + sparseArray.size());
        } catch (Throwable th) {
            Log.e(f829i, "STATUS_RESOURCE not installed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m862a(XposedInterface.Chain chain) throws Throwable {
        if (m894g() && !f832l && Boolean.TRUE.equals(f833m.get())) {
            return 0;
        }
        return chain.proceed();
    }

    /* renamed from: b */
    private static void m883b(boolean z) {
        if (z == f832l) {
            return;
        }
        f832l = z;
        try {
            if (f836p != null) {
                f834n.invoke(f836p, null);
            }
            if (f837q != null) {
                f835o.invoke(f837q, null);
            }
            boolean z2 = true;
            StringBuilder append = new StringBuilder().append("STATUS_FOREGROUND ").append(z ? "shown" : "hidden").append(" window=").append(f836p != null).append(" view=");
            if (f837q == null) {
                z2 = false;
            }
            Log.i(f829i, append.append(z2).toString());
        } catch (ReflectiveOperationException e) {
            Log.e(f829i, "STATUS_FOREGROUND refresh failed shown=" + z, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m864a(Method method, Class cls, XposedInterface.Chain chain) throws Throwable {
        if (method.getDeclaringClass() == cls) {
            f836p = chain.getThisObject();
        } else {
            f837q = (View) chain.getThisObject();
        }
        ThreadLocal<Boolean> threadLocal = f833m;
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
                f833m.remove();
            } else {
                f833m.set(bool);
            }
            throw th;
        }
    }

    /* renamed from: b */
    private void m882b(ClassLoader classLoader) throws ReflectiveOperationException {
        Class<?> cls = Class.forName("com.android.systemui.statusbar.views.MiuiBatteryMeterView", false, classLoader);
        final Field declaredField = cls.getDeclaredField("mBlurRadius");
        declaredField.setAccessible(true);
        Field declaredField2 = Class.forName("com.android.systemui.statusbar.anim.MiuiStatusBarIconAnimatorController", false, classLoader).getDeclaredField("blurPoint");
        declaredField2.setAccessible(true);
        Class cls2 = Integer.TYPE;
        final a aVar = new a(declaredField, cls.getMethod("setMiSelfBlur", cls2, ArrayList.class), declaredField2);
        hook(cls.getDeclaredMethod("setBlurRadius", cls2)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda4
            public final Object intercept(XposedInterface.Chain chain) {
                Object m863a;
                m863a = GenericProcessHooks.m863a(declaredField, aVar, chain);
                return m863a;
            }
        });
        Log.i(f829i, "BATTERY_BLUR replay hook installed");
    }

    /* renamed from: a */
    public static void m873a(boolean z) {
        f840t = z;
        boolean z2 = z || !m894g();
        Iterator<View> it = f839s.iterator();
        while (it.hasNext()) {
            it.next().setTransitionAlpha(z2 ? 1.0f : 0.0f);
        }
    }

    /* renamed from: a */
    public static void m874a(boolean z, boolean z2) {
        if (f834n == null) {
            return;
        }
        boolean z3 = m894g() && !z;
        boolean z4 = z || z2;
        final int i = f841u + 1;
        f841u = i;
        f838r = !z3;
        final View rootView = f837q == null ? null : f837q.getRootView();
        if (!z3) {
            m883b(z4);
            m867a(rootView, 1.0f);
        } else if (!z4 && rootView != null && f832l) {
            m867a(rootView, 0.0f);
            rootView.getViewTreeObserver().registerFrameCommitCallback(new Runnable() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    GenericProcessHooks.m868a(rootView, i);
                }
            });
            rootView.invalidate();
        } else {
            m867a(rootView, 0.0f);
            m883b(z4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m868a(View view, final int i) {
        view.post(new Runnable() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                GenericProcessHooks.m866a(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m866a(int i) {
        if (i == f841u) {
            m883b(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ boolean m885b(SharedPreferences sharedPreferences, String str) {
        if (m894g() && ConfigKeys.m1229b(sharedPreferences)) {
            return sharedPreferences.getBoolean(ConfigKeys.m1243f(str), ConfigKeys.m1242e(str)) || ConfigKeys.m1218a(sharedPreferences, str);
        }
        return false;
    }

    /* renamed from: a */
    private static void m867a(View view, float f) {
        if (view == null || view.getAlpha() == f) {
            return;
        }
        view.setAlpha(f);
        Log.i(f829i, "STATUS_FOREGROUND window alpha=" + f + " root=" + view.getClass().getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ int m879b(SharedPreferences sharedPreferences) {
        return ConfigKeys.m1245g(sharedPreferences, "com.ss.android.ugc.aweme");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m863a(Field field, View.OnLayoutChangeListener onLayoutChangeListener, XposedInterface.Chain chain) throws Throwable {
        View view = (View) chain.getThisObject();
        boolean z = false;
        if (((Integer) chain.getArg(0)).intValue() != field.getInt(view) && (view.getWidth() == 0 || view.getHeight() == 0)) {
            z = true;
        }
        Object proceed = chain.proceed();
        if (z && f842v.add(view)) {
            view.addOnLayoutChangeListener(onLayoutChangeListener);
        }
        return proceed;
    }

    /* renamed from: a */
    private void m869a(ViewGroup viewGroup) {
        ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        viewGroup.setClipChildren(true);
        viewGroup.setClipToPadding(true);
        int i = layoutParams.height;
        if (i != 0) {
            layoutParams.height = 0;
            viewGroup.setLayoutParams(layoutParams);
        }
        if (m878a("keyguardHeight", 2)) {
            Log.i(f829i, "KEYGUARD_HEIGHT_ZERO class=" + viewGroup.getClass().getName() + " height=" + i + " -> 0 clipChildren=" + viewGroup.getClipChildren() + " clipToPadding=" + viewGroup.getClipToPadding());
        }
    }

    /* renamed from: a */
    /*
    */
    private void m871a(ClassLoader classLoader, final String str) {
        Throwable th;
        SharedPreferences sharedPreferences;
        int i;
        int i2;
        boolean z;
        if ("com.ss.android.ugc.aweme".equals(str)) {
            if (str.equals(this.f843a)) {
                m870a(classLoader);
                return;
            }
            return;
        }
        boolean z2 = false;
        int i3 = 126;
        final SharedPreferences sharedPreferences2 = null;
        try {
            sharedPreferences2 = getRemotePreferences("duo_top");
            z = sharedPreferences2.getBoolean(ConfigKeys.m1243f(str), ConfigKeys.m1242e(str)) && ConfigKeys.m1229b(sharedPreferences2) && m894g();
            this.f846d = ConfigKeys.m1239d(sharedPreferences2, str);
            i2 = ConfigKeys.m1224b(sharedPreferences2, str, "inner");
        } catch (Throwable th2) {
            th = th2;
            sharedPreferences = sharedPreferences2;
            i = 126;
        }
        try {
            i3 = ConfigKeys.m1224b(sharedPreferences2, str, "outer");
            if (z || ConfigKeys.m1218a(sharedPreferences2, str)) {
                OuterDensityHook.m847a(this, classLoader, new BooleanSupplier() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda6
                    @Override // java.util.function.BooleanSupplier
                    public final boolean getAsBoolean() {
                        boolean m885b;
                        m885b = GenericProcessHooks.m885b(sharedPreferences2, str);
                        return m885b;
                    }
                }, new IntSupplier() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda7
                    @Override // java.util.function.IntSupplier
                    public final int getAsInt() {
                        int m1245g;
                        m1245g = ConfigKeys.m1245g(sharedPreferences2, str);
                        return m1245g;
                    }
                });
            }
            z2 = z;
        } catch (Throwable th3) {
            i = i3;
            i3 = i2;
            th = th3;
            sharedPreferences = sharedPreferences2;
            Log.e(f829i, "CONFIG unreadable, app left untouched", th);
            i2 = i3;
            i3 = i;
            sharedPreferences2 = sharedPreferences;
            if ("com.tencent.mm".equals(str)) {
            }
            this.f848f = i2;
            this.f849g = i3;
            Log.i(f829i, "CONFIG package=" + str + " process=" + this.f843a + " enabled=" + z2 + " topSafePxInner=" + i2 + " topSafePxOuter=" + i3);
            if (z2) {
                m892e();
            }
            return;
        }
        if ("com.tencent.mm".equals(str)) {
            m872a(classLoader, str, sharedPreferences2);
        }
        this.f848f = i2;
        this.f849g = i3;
        Log.i(f829i, "CONFIG package=" + str + " process=" + this.f843a + " enabled=" + z2 + " topSafePxInner=" + i2 + " topSafePxOuter=" + i3);
        if (z2 && !ConfigKeys.f1186q.contains(str) && !"com.tencent.mm".equals(str) && m888c(classLoader)) {
            m892e();
        }
    }

    /* renamed from: a */
    private void m870a(ClassLoader classLoader) {
        long uptimeMillis = SystemClock.uptimeMillis();
        try {
            final SharedPreferences remotePreferences = getRemotePreferences("duo_top");
            long uptimeMillis2 = SystemClock.uptimeMillis() - uptimeMillis;
            this.f847e = remotePreferences;
            AwemeVideoHook.m1699a(this, classLoader, remotePreferences, new BooleanSupplier() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda8
                @Override // java.util.function.BooleanSupplier
                public final boolean getAsBoolean() {
                    boolean m894g;
                    m894g = GenericProcessHooks.m894g();
                    return m894g;
                }
            });
            try {
                boolean z = m887c() && ConfigKeys.m1229b(remotePreferences) && m894g();
                if (z || ConfigKeys.m1218a(remotePreferences, "com.ss.android.ugc.aweme")) {
                    OuterDensityHook.m847a(this, classLoader, new BooleanSupplier() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda9
                        @Override // java.util.function.BooleanSupplier
                        public final boolean getAsBoolean() {
                            boolean m875a;
                            m875a = GenericProcessHooks.m875a(remotePreferences);
                            return m875a;
                        }
                    }, new IntSupplier() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda10
                        @Override // java.util.function.IntSupplier
                        public final int getAsInt() {
                            int m879b;
                            m879b = GenericProcessHooks.m879b(remotePreferences);
                            return m879b;
                        }
                    });
                }
                Log.i(f829i, "CONFIG package=com.ss.android.ugc.aweme process=" + this.f843a + " enabled=" + z + " path=awemeLive topSafePxInner=" + m880b("inner") + " topSafePxOuter=" + m880b("outer") + " prefsMs=" + uptimeMillis2);
                if (m888c(classLoader)) {
                    if (z) {
                        m892e();
                    }
                    m890d();
                }
                Log.i(f829i, "AWEME_SETUP ms=" + (SystemClock.uptimeMillis() - uptimeMillis));
            } catch (RuntimeException e) {
                Log.e(f829i, "AWEME config unreadable, app left untouched", e);
            }
        } catch (RuntimeException e2) {
            Log.e(f829i, "AWEME config unreadable, app left untouched", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ boolean m875a(SharedPreferences sharedPreferences) {
        if (m894g() && ConfigKeys.m1229b(sharedPreferences)) {
            return sharedPreferences.getBoolean(ConfigKeys.m1243f("com.ss.android.ugc.aweme"), ConfigKeys.m1242e("com.ss.android.ugc.aweme")) || ConfigKeys.m1218a(sharedPreferences, "com.ss.android.ugc.aweme");
        }
        return false;
    }

    /* renamed from: a */
    private void m872a(ClassLoader classLoader, String str, SharedPreferences sharedPreferences) {
        Log.i(f829i, "WECHAT_SCALE process=" + this.f843a + " uid=" + Process.myUid() + " property=" + m895h() + " preferences=" + (sharedPreferences != null));
        WeChatDensityHook.m1500a(this, classLoader, new b(sharedPreferences, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public synchronized boolean m878a(String str, int i) {
        Integer num = this.f850h.get(str);
        int intValue = num == null ? 0 : num.intValue();
        if (intValue >= i) {
            return false;
        }
        this.f850h.put(str, Integer.valueOf(intValue + 1));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m861a(InsetsBridge c0072q, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (!(proceed instanceof SparseArray)) {
            return proceed;
        }
        Object thisObject = chain.getThisObject();
        Rect m1264a = c0072q.m1264a(thisObject);
        String m1263a = InsetsBridge.m1263a(m1264a);
        this.f845c = m1263a == null ? "unknown" : m1263a;
        if (m1263a != null && ((!this.f846d || !"inner".equals(m1263a)) && (this.f847e == null || m877a(m1263a)))) {
            int m880b = m880b(m1263a);
            c0072q.m1265a(thisObject, (SparseArray) proceed, m1264a, m880b, "inner".equals(m1263a));
            if (m878a("parcel:" + m1263a, 3)) {
                Log.i(f829i, "TOP_INSETS panel=" + m1263a + " status/cutout -> " + m880b);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m860a(SparseArray sparseArray, Field field, Method method, Method method2, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        try {
            String str = (String) sparseArray.get(((Integer) chain.getArg(0)).intValue());
            if (str != null) {
                Object obj = field.get(((Resources) chain.getThisObject()).getConfiguration());
                Rect rect = (Rect) method.invoke(obj, null);
                Rect rect2 = (Rect) method2.invoke(obj, null);
                String m1263a = InsetsBridge.m1263a(rect);
                if (m1263a != null && m877a(m1263a) && (m887c() || rect2.equals(rect))) {
                    int m880b = m880b(m1263a);
                    if (m878a("awemeStatusRes:" + m1263a, 4)) {
                        Log.i(f829i, "AWEME_STATUS_RESOURCE panel=" + m1263a + " " + str + " bounds=" + rect + " px=" + proceed + " -> " + m880b);
                    }
                    return Integer.valueOf(m880b);
                }
            }
        } catch (Throwable th) {
            if (m878a("awemeStatusError", 1)) {
                Log.w(f829i, "AWEME_STATUS_RESOURCE read failed, native value kept", th);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m859a(SparseArray sparseArray, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        String str = (String) sparseArray.get(((Integer) chain.getArg(0)).intValue());
        if (str != null && Boolean.TRUE.equals(proceed)) {
            TypedValue typedValue = (TypedValue) chain.getArg(2);
            if (typedValue.type == 5) {
                String str2 = this.f845c;
                if ((this.f847e == null || (m887c() && m877a(str2))) && (!this.f846d || !"inner".equals(str2))) {
                    int m880b = m880b(str2);
                    int i = m880b << 8;
                    int i2 = typedValue.data;
                    typedValue.data = i;
                    if (m878a("statusRes:" + str2, 4)) {
                        Log.i(f829i, "STATUS_RESOURCE panel=" + str2 + " " + str + " data=" + i2 + " -> " + i + " (" + m880b + "px)");
                    }
                }
            }
        }
        return proceed;
    }
}
