package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class G extends io.github.libxposed.api.XposedModule {
    private static final java.lang.String i = "DuoHookProbe";
    private static final java.lang.String j = "com.android.systemui";
    private static volatile java.lang.reflect.Method k;
    private static volatile boolean l;
    private static java.lang.reflect.Method n;
    private static java.lang.reflect.Method o;
    private static volatile java.lang.Object p;
    private static volatile android.view.View q;
    private static volatile boolean r;
    private static int u;
    private java.lang.String a;
    private boolean b;
    private boolean d;
    private android.content.SharedPreferences e;
    private static final java.lang.ThreadLocal<java.lang.Boolean> m = new java.lang.ThreadLocal<>();
    private static final java.util.Set<android.view.View> s = java.util.Collections.newSetFromMap(new java.util.WeakHashMap());
    private static boolean t = true;
    private static final java.util.Set<android.view.View> v = java.util.Collections.newSetFromMap(new java.util.WeakHashMap());
    private volatile java.lang.String c = "unknown";
    private volatile int f = 126;
    private volatile int g = 126;
    private final java.util.Map<java.lang.String, java.lang.Integer> h = new java.util.HashMap();

    class a implements android.view.View.OnLayoutChangeListener {
        final /* synthetic */ java.lang.reflect.Field a;
        final /* synthetic */ java.lang.reflect.Method b;
        final /* synthetic */ java.lang.reflect.Field c;

        a(java.lang.reflect.Field field, java.lang.reflect.Method method, java.lang.reflect.Field field2) {
            this.a = field;
            this.b = method;
            this.c = field2;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(android.view.View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (view.getWidth() == 0 || view.getHeight() == 0) {
                return;
            }
            view.removeOnLayoutChangeListener(this);
            dev.duo.hookprobe.G.v.remove(view);
            try {
                int i9 = this.a.getInt(view);
                this.b.invoke(view, java.lang.Integer.valueOf(i9), this.c.get(null));
                if (dev.duo.hookprobe.G.this.a("batteryBlurReplay", 4)) {
                    android.util.Log.i(dev.duo.hookprobe.G.i, "BATTERY_BLUR replayed radius=" + i9);
                }
            } catch (java.lang.ReflectiveOperationException e) {
                android.util.Log.e(dev.duo.hookprobe.G.i, "BATTERY_BLUR replay failed", e);
            }
        }
    }

    class b implements java.util.function.IntSupplier {
        private volatile long a;
        private volatile int b = 100;
        final /* synthetic */ android.content.SharedPreferences c;
        final /* synthetic */ java.lang.String d;

        b(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
            this.c = sharedPreferences;
            this.d = str;
        }

        @Override // java.util.function.IntSupplier
        public int getAsInt() {
            long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
            if (elapsedRealtime >= this.a) {
                int h = dev.duo.hookprobe.G.this.h();
                if (h == 0) {
                    h = (this.c != null && dev.duo.hookprobe.G.g() && dev.duo.hookprobe.P.b(this.c) && (this.c.getBoolean(dev.duo.hookprobe.P.f(this.d), dev.duo.hookprobe.P.e(this.d)) || dev.duo.hookprobe.P.a(this.c, this.d))) ? dev.duo.hookprobe.P.g(this.c, this.d) : 100;
                }
                this.b = h;
                this.a = elapsedRealtime + 1000;
            }
            return this.b;
        }
    }

    private boolean c() {
        android.content.SharedPreferences sharedPreferences = this.e;
        return sharedPreferences != null && sharedPreferences.getBoolean(dev.duo.hookprobe.P.f("com.ss.android.ugc.aweme"), dev.duo.hookprobe.P.e("com.ss.android.ugc.aweme"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object d(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        android.view.View view = (android.view.View) chain.getThisObject();
        s.add(view);
        view.setTransitionAlpha((t || !g()) ? 1.0f : 0.0f);
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object e(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        if (g()) {
            try {
                a((android.view.ViewGroup) chain.getThisObject());
                return proceed;
            } catch (java.lang.Throwable th) {
                if (a("keyguardHeightError", 1)) {
                    android.util.Log.e(i, "KEYGUARD_HEIGHT_ZERO row left at native height", th);
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
            java.lang.reflect.Method method = k;
            if (method == null) {
                method = java.lang.Class.forName("android.os.SystemProperties").getMethod("get", java.lang.String.class, java.lang.String.class);
                k = method;
            }
            return true ^ "0".equals(method.invoke(null, "debug.duo.master", ""));
        } catch (java.lang.Throwable th) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int h() {
        try {
            java.lang.reflect.Method method = k;
            if (method == null) {
                method = java.lang.Class.forName("android.os.SystemProperties").getMethod("get", java.lang.String.class, java.lang.String.class);
                k = method;
            }
            java.lang.String str = (java.lang.String) method.invoke(null, "debug.duo.scale.wx", "");
            if (str.isEmpty()) {
                return 0;
            }
            return dev.duo.hookprobe.P.b(java.lang.Integer.parseInt(str));
        } catch (java.lang.NumberFormatException | java.lang.ReflectiveOperationException e) {
            return 0;
        }
    }

    public void onModuleLoaded(io.github.libxposed.api.XposedModuleInterface.ModuleLoadedParam moduleLoadedParam) {
        this.a = moduleLoadedParam.getProcessName();
        boolean isSystemServer = moduleLoadedParam.isSystemServer();
        this.b = isSystemServer;
        if (isSystemServer) {
            return;
        }
        android.util.Log.i(i, "JAVA_ENTRY process=" + this.a + " pid=" + android.os.Process.myPid() + " uid=" + android.os.Process.myUid());
    }

    public void onPackageLoaded(io.github.libxposed.api.XposedModuleInterface.PackageLoadedParam packageLoadedParam) {
        if (this.b || !packageLoadedParam.isFirstPackage()) {
            return;
        }
        java.lang.String packageName = packageLoadedParam.getPackageName();
        if (!packageName.equals(j)) {
            if (dev.duo.hookprobe.MainActivity.d.contains(packageName) || this.a.equals(j)) {
                return;
            }
            a(packageLoadedParam.getDefaultClassLoader(), packageName);
            return;
        }
        if (this.a.equals(j)) {
            try {
                java.lang.Class<?> cls = java.lang.Class.forName("com.android.internal.policy.SystemBarUtils", false, packageLoadedParam.getDefaultClassLoader());
                java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod("getStatusBarHeight", android.content.Context.class);
                java.lang.Class cls2 = java.lang.Integer.TYPE;
                java.lang.reflect.Method declaredMethod2 = cls.getDeclaredMethod("getStatusBarHeightForRotation", android.content.Context.class, cls2);
                hook(declaredMethod).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda11
                    public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                        java.lang.Object a2;
                        a2 = dev.duo.hookprobe.G.a(chain);
                        return a2;
                    }
                });
                hook(declaredMethod2).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda12
                    public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                        java.lang.Object b2;
                        b2 = dev.duo.hookprobe.G.b(chain);
                        return b2;
                    }
                });
                android.util.Log.i(i, "STATUS_HEIGHT_ZERO hooks installed in SystemUI only");
                try {
                    final java.lang.Class<?> cls3 = java.lang.Class.forName("com.android.systemui.statusbar.window.StatusBarWindowControllerImpl", false, packageLoadedParam.getDefaultClassLoader());
                    java.lang.Class<?> cls4 = java.lang.Class.forName("com.android.systemui.statusbar.phone.PhoneStatusBarView", false, packageLoadedParam.getDefaultClassLoader());
                    n = cls3.getDeclaredMethod("refreshStatusBarHeight", null);
                    o = cls4.getDeclaredMethod("updateStatusBarHeight", null);
                    n.setAccessible(true);
                    o.setAccessible(true);
                    java.lang.reflect.Method[] methodArr = {n, cls3.getDeclaredMethod("getBarLayoutParamsForRotation", cls2), cls3.getDeclaredMethod("apply", java.lang.Class.forName(cls3.getName() + "$State", false, packageLoadedParam.getDefaultClassLoader())), o};
                    for (int i2 = 0; i2 < 4; i2++) {
                        final java.lang.reflect.Method method = methodArr[i2];
                        hook(method).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda13
                            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                                java.lang.Object a2;
                                a2 = dev.duo.hookprobe.G.a(method, cls3, chain);
                                return a2;
                            }
                        });
                    }
                    hook(cls4.getDeclaredMethod("onAttachedToWindow", null)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda14
                        public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                            java.lang.Object c;
                            c = dev.duo.hookprobe.G.c(chain);
                            return c;
                        }
                    });
                    android.util.Log.i(i, "STATUS_FOREGROUND refresh hooks installed");
                } catch (java.lang.Throwable th) {
                    n = null;
                    android.util.Log.e(i, "STATUS_FOREGROUND not installed, status bar stays hidden", th);
                }
                try {
                    hook(java.lang.Class.forName("com.android.systemui.controlcenter.phone.widget.ControlCenterFakeStatusIcons", false, packageLoadedParam.getDefaultClassLoader()).getDeclaredMethod("onAttachedToWindow", null)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda15
                        public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                            java.lang.Object d;
                            d = dev.duo.hookprobe.G.d(chain);
                            return d;
                        }
                    });
                    android.util.Log.i(i, "STATUS_FOREGROUND control center status copy hook installed");
                } catch (java.lang.Throwable th2) {
                    android.util.Log.e(i, "STATUS_FOREGROUND control center status copy not hooked", th2);
                }
                try {
                    java.lang.Class<?> cls5 = java.lang.Class.forName("com.android.systemui.statusbar.phone.MiuiKeyguardStatusBarView", false, packageLoadedParam.getDefaultClassLoader());
                    java.lang.String[] strArr = {"updateKeyguardStatusBarHeight", "onAttachedToWindow"};
                    for (int i3 = 0; i3 < 2; i3++) {
                        hook(cls5.getDeclaredMethod(strArr[i3], null)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda16
                            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                                java.lang.Object e;
                                e = dev.duo.hookprobe.G.this.e(chain);
                                return e;
                            }
                        });
                    }
                    android.util.Log.i(i, "KEYGUARD_HEIGHT_ZERO hooks installed on MiuiKeyguardStatusBarView");
                } catch (java.lang.Throwable th3) {
                    android.util.Log.e(i, "KEYGUARD_HEIGHT_ZERO not installed", th3);
                }
                try {
                    b(packageLoadedParam.getDefaultClassLoader());
                } catch (java.lang.Throwable th4) {
                    android.util.Log.e(i, "BATTERY_BLUR replay not installed", th4);
                }
            } catch (java.lang.Throwable th5) {
                android.util.Log.e(i, "STATUS_HEIGHT_ZERO not installed", th5);
            }
        }
    }

    public void onSystemServerStarting(io.github.libxposed.api.XposedModuleInterface.SystemServerStartingParam systemServerStartingParam) {
        dev.duo.hookprobe.K.a(this, systemServerStartingParam.getClassLoader());
        dev.duo.hookprobe.C0025n.a(this, systemServerStartingParam.getClassLoader());
    }

    private int b(java.lang.String str) {
        return this.e != null ? (!"outer".equals(str) || c()) ? dev.duo.hookprobe.P.b(this.e, "com.ss.android.ugc.aweme", str) : dev.duo.hookprobe.P.e(this.e, "com.ss.android.ugc.aweme") : "inner".equals(str) ? this.f : "outer".equals(str) ? this.g : this.g;
    }

    private boolean a(java.lang.String str) {
        android.content.SharedPreferences sharedPreferences;
        if (str != null && (sharedPreferences = this.e) != null && dev.duo.hookprobe.P.b(sharedPreferences) && g()) {
            if (c()) {
                return ("inner".equals(str) && dev.duo.hookprobe.P.d(this.e, "com.ss.android.ugc.aweme")) ? false : true;
            }
            if ((("inner".equals(str) ? 2 : 1) & dev.duo.hookprobe.P.c(this.e, "com.ss.android.ugc.aweme")) != 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object c(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        q = (android.view.View) chain.getThisObject();
        return chain.proceed();
    }

    private void d() {
        try {
            final android.util.SparseArray sparseArray = new android.util.SparseArray();
            java.lang.String[] strArr = {"status_bar_height", "status_bar_height_portrait", "status_bar_height_landscape", "status_bar_height_default"};
            for (int i2 = 0; i2 < 4; i2++) {
                java.lang.String str = strArr[i2];
                int identifier = android.content.res.Resources.getSystem().getIdentifier(str, "dimen", "android");
                if (identifier != 0) {
                    sparseArray.put(identifier, str);
                }
            }
            final java.lang.reflect.Field field = android.content.res.Configuration.class.getField("windowConfiguration");
            final java.lang.reflect.Method method = field.getType().getMethod("getBounds", null);
            final java.lang.reflect.Method method2 = field.getType().getMethod("getMaxBounds", null);
            hook(android.content.res.Resources.class.getDeclaredMethod("getDimensionPixelSize", java.lang.Integer.TYPE)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda2
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.hookprobe.G.this.a(sparseArray, field, method2, method, chain);
                    return a2;
                }
            });
            android.util.Log.i(i, "AWEME_STATUS_RESOURCE installed ids=" + sparseArray.size());
        } catch (java.lang.Throwable th) {
            android.util.Log.e(i, "AWEME_STATUS_RESOURCE not installed", th);
        }
    }

    private boolean c(java.lang.ClassLoader classLoader) {
        try {
            final dev.duo.hookprobe.Q q2 = new dev.duo.hookprobe.Q(classLoader, false);
            hook(q2.a.getDeclaredMethod("readFromParcel", android.os.Parcel.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda1
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.hookprobe.G.this.a(q2, chain);
                    return a2;
                }
            });
            android.util.Log.i(i, "TOP_INSETS installed inner=" + this.f + " outer=" + this.g);
            return true;
        } catch (java.lang.Throwable th) {
            android.util.Log.e(i, "TOP_INSETS not installed, app left untouched", th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object b(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        if (g() && !l && java.lang.Boolean.TRUE.equals(m.get())) {
            return 0;
        }
        return chain.proceed();
    }

    private void e() {
        try {
            final android.util.SparseArray sparseArray = new android.util.SparseArray();
            java.lang.String[] strArr = {"status_bar_height", "status_bar_height_portrait", "status_bar_height_landscape", "status_bar_height_default"};
            for (int i2 = 0; i2 < 4; i2++) {
                java.lang.String str = strArr[i2];
                int identifier = android.content.res.Resources.getSystem().getIdentifier(str, "dimen", "android");
                if (identifier != 0) {
                    sparseArray.put(identifier, str);
                }
            }
            java.lang.Class cls = java.lang.Integer.TYPE;
            hook(android.content.res.AssetManager.class.getDeclaredMethod("getResourceValue", cls, cls, android.util.TypedValue.class, java.lang.Boolean.TYPE)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda5
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.hookprobe.G.this.a(sparseArray, chain);
                    return a2;
                }
            });
            android.util.Log.i(i, "STATUS_RESOURCE installed inner=" + this.f + " outer=" + this.g + " ids=" + sparseArray.size());
        } catch (java.lang.Throwable th) {
            android.util.Log.e(i, "STATUS_RESOURCE not installed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        if (g() && !l && java.lang.Boolean.TRUE.equals(m.get())) {
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
            java.lang.StringBuilder append = new java.lang.StringBuilder().append("STATUS_FOREGROUND ").append(z ? "shown" : "hidden").append(" window=").append(p != null).append(" view=");
            if (q == null) {
                z2 = false;
            }
            android.util.Log.i(i, append.append(z2).toString());
        } catch (java.lang.ReflectiveOperationException e) {
            android.util.Log.e(i, "STATUS_FOREGROUND refresh failed shown=" + z, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, java.lang.Class cls, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        if (method.getDeclaringClass() == cls) {
            p = chain.getThisObject();
        } else {
            q = (android.view.View) chain.getThisObject();
        }
        java.lang.ThreadLocal<java.lang.Boolean> threadLocal = m;
        java.lang.Boolean bool = threadLocal.get();
        threadLocal.set(java.lang.Boolean.TRUE);
        try {
            java.lang.Object proceed = chain.proceed();
            if (bool == null) {
                threadLocal.remove();
                return proceed;
            }
            threadLocal.set(bool);
            return proceed;
        } catch (java.lang.Throwable th) {
            if (bool == null) {
                m.remove();
            } else {
                m.set(bool);
            }
            throw th;
        }
    }

    private void b(java.lang.ClassLoader classLoader) throws java.lang.ReflectiveOperationException {
        java.lang.Class<?> cls = java.lang.Class.forName("com.android.systemui.statusbar.views.MiuiBatteryMeterView", false, classLoader);
        final java.lang.reflect.Field declaredField = cls.getDeclaredField("mBlurRadius");
        declaredField.setAccessible(true);
        java.lang.reflect.Field declaredField2 = java.lang.Class.forName("com.android.systemui.statusbar.anim.MiuiStatusBarIconAnimatorController", false, classLoader).getDeclaredField("blurPoint");
        declaredField2.setAccessible(true);
        java.lang.Class cls2 = java.lang.Integer.TYPE;
        final dev.duo.hookprobe.G.a aVar = new dev.duo.hookprobe.G.a(declaredField, cls.getMethod("setMiSelfBlur", cls2, java.util.ArrayList.class), declaredField2);
        hook(cls.getDeclaredMethod("setBlurRadius", cls2)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda4
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object a2;
                a2 = dev.duo.hookprobe.G.a(declaredField, aVar, chain);
                return a2;
            }
        });
        android.util.Log.i(i, "BATTERY_BLUR replay hook installed");
    }

    public static void a(boolean z) {
        t = z;
        boolean z2 = z || !g();
        java.util.Iterator<android.view.View> it = s.iterator();
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
        final android.view.View rootView = q == null ? null : q.getRootView();
        if (!z3) {
            b(z4);
            a(rootView, 1.0f);
        } else if (!z4 && rootView != null && l) {
            a(rootView, 0.0f);
            rootView.getViewTreeObserver().registerFrameCommitCallback(new java.lang.Runnable() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.G.a(rootView, i2);
                }
            });
            rootView.invalidate();
        } else {
            a(rootView, 0.0f);
            b(z4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.view.View view, final int i2) {
        view.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.G.a(i2);
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
    public static /* synthetic */ boolean b(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
        if (g() && dev.duo.hookprobe.P.b(sharedPreferences)) {
            return sharedPreferences.getBoolean(dev.duo.hookprobe.P.f(str), dev.duo.hookprobe.P.e(str)) || dev.duo.hookprobe.P.a(sharedPreferences, str);
        }
        return false;
    }

    private static void a(android.view.View view, float f) {
        if (view == null || view.getAlpha() == f) {
            return;
        }
        view.setAlpha(f);
        android.util.Log.i(i, "STATUS_FOREGROUND window alpha=" + f + " root=" + view.getClass().getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(android.content.SharedPreferences sharedPreferences) {
        return dev.duo.hookprobe.P.g(sharedPreferences, "com.ss.android.ugc.aweme");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, android.view.View.OnLayoutChangeListener onLayoutChangeListener, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        android.view.View view = (android.view.View) chain.getThisObject();
        boolean z = false;
        if (((java.lang.Integer) chain.getArg(0)).intValue() != field.getInt(view) && (view.getWidth() == 0 || view.getHeight() == 0)) {
            z = true;
        }
        java.lang.Object proceed = chain.proceed();
        if (z && v.add(view)) {
            view.addOnLayoutChangeListener(onLayoutChangeListener);
        }
        return proceed;
    }

    private void a(android.view.ViewGroup viewGroup) {
        android.view.ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
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
            android.util.Log.i(i, "KEYGUARD_HEIGHT_ZERO class=" + viewGroup.getClass().getName() + " height=" + i2 + " -> 0 clipChildren=" + viewGroup.getClipChildren() + " clipToPadding=" + viewGroup.getClipToPadding());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.ClassLoader r10, final java.lang.String r11) {
        /*
            r9 = this;
            java.lang.String r0 = "DuoHookProbe"
            java.lang.String r1 = "com.ss.android.ugc.aweme"
            boolean r1 = r1.equals(r11)
            if (r1 == 0) goto L18
            java.lang.String r0 = r9.a
            boolean r11 = r11.equals(r0)
            if (r11 != 0) goto L14
            goto Le8
        L14:
            r9.a(r10)
            return
        L18:
            r1 = 0
            r2 = 126(0x7e, float:1.77E-43)
            r3 = 0
            java.lang.String r4 = "duo_top"
            android.content.SharedPreferences r3 = r9.getRemotePreferences(r4)     // Catch: java.lang.Throwable -> L70
            java.lang.String r4 = dev.duo.hookprobe.P.f(r11)     // Catch: java.lang.Throwable -> L70
            boolean r5 = dev.duo.hookprobe.P.e(r11)     // Catch: java.lang.Throwable -> L70
            boolean r4 = r3.getBoolean(r4, r5)     // Catch: java.lang.Throwable -> L70
            if (r4 == 0) goto L3f
            boolean r4 = dev.duo.hookprobe.P.b(r3)     // Catch: java.lang.Throwable -> L70
            if (r4 == 0) goto L3f
            boolean r4 = g()     // Catch: java.lang.Throwable -> L70
            if (r4 == 0) goto L3f
            r4 = 1
            goto L40
        L3f:
            r4 = r1
        L40:
            boolean r5 = dev.duo.hookprobe.P.d(r3, r11)     // Catch: java.lang.Throwable -> L70
            r9.d = r5     // Catch: java.lang.Throwable -> L70
            java.lang.String r5 = "inner"
            int r5 = dev.duo.hookprobe.P.b(r3, r11, r5)     // Catch: java.lang.Throwable -> L70
            java.lang.String r6 = "outer"
            int r2 = dev.duo.hookprobe.P.b(r3, r11, r6)     // Catch: java.lang.Throwable -> L69
            if (r4 != 0) goto L5a
            boolean r6 = dev.duo.hookprobe.P.a(r3, r11)     // Catch: java.lang.Throwable -> L69
            if (r6 == 0) goto L67
        L5a:
            dev.duo.hookprobe.G$$ExternalSyntheticLambda6 r6 = new dev.duo.hookprobe.G$$ExternalSyntheticLambda6     // Catch: java.lang.Throwable -> L69
            r6.<init>()     // Catch: java.lang.Throwable -> L69
            dev.duo.hookprobe.G$$ExternalSyntheticLambda7 r7 = new dev.duo.hookprobe.G$$ExternalSyntheticLambda7     // Catch: java.lang.Throwable -> L69
            r7.<init>()     // Catch: java.lang.Throwable -> L69
            dev.duo.hookprobe.D.a(r9, r10, r6, r7)     // Catch: java.lang.Throwable -> L69
        L67:
            r1 = r4
            goto L7d
        L69:
            r4 = move-exception
            r8 = r3
            r3 = r2
            r2 = r5
            r5 = r4
            r4 = r8
            goto L74
        L70:
            r4 = move-exception
            r5 = r4
            r4 = r3
            r3 = r2
        L74:
            java.lang.String r6 = "CONFIG unreadable, app left untouched"
            android.util.Log.e(r0, r6, r5)
            r5 = r2
            r2 = r3
            r3 = r4
        L7d:
            java.lang.String r4 = "com.tencent.mm"
            boolean r6 = r4.equals(r11)
            if (r6 == 0) goto L88
            r9.a(r10, r11, r3)
        L88:
            r9.f = r5
            r9.g = r2
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r6 = "CONFIG package="
            java.lang.StringBuilder r3 = r3.append(r6)
            java.lang.StringBuilder r3 = r3.append(r11)
            java.lang.String r6 = " process="
            java.lang.StringBuilder r3 = r3.append(r6)
            java.lang.String r6 = r9.a
            java.lang.StringBuilder r3 = r3.append(r6)
            java.lang.String r6 = " enabled="
            java.lang.StringBuilder r3 = r3.append(r6)
            java.lang.StringBuilder r3 = r3.append(r1)
            java.lang.String r6 = " topSafePxInner="
            java.lang.StringBuilder r3 = r3.append(r6)
            java.lang.StringBuilder r3 = r3.append(r5)
            java.lang.String r5 = " topSafePxOuter="
            java.lang.StringBuilder r3 = r3.append(r5)
            java.lang.StringBuilder r2 = r3.append(r2)
            java.lang.String r2 = r2.toString()
            android.util.Log.i(r0, r2)
            if (r1 != 0) goto Lcf
            goto Le8
        Lcf:
            java.util.List<java.lang.String> r0 = dev.duo.hookprobe.P.q
            boolean r0 = r0.contains(r11)
            if (r0 != 0) goto Le8
            boolean r11 = r4.equals(r11)
            if (r11 == 0) goto Lde
            goto Le8
        Lde:
            boolean r10 = r9.c(r10)
            if (r10 != 0) goto Le5
            goto Le8
        Le5:
            r9.e()
        Le8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.G.a(java.lang.ClassLoader, java.lang.String):void");
    }

    private void a(java.lang.ClassLoader classLoader) {
        long uptimeMillis = android.os.SystemClock.uptimeMillis();
        try {
            final android.content.SharedPreferences remotePreferences = getRemotePreferences("duo_top");
            long uptimeMillis2 = android.os.SystemClock.uptimeMillis() - uptimeMillis;
            this.e = remotePreferences;
            dev.duo.hookprobe.C0019h.a(this, classLoader, remotePreferences, new java.util.function.BooleanSupplier() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda8
                @Override // java.util.function.BooleanSupplier
                public final boolean getAsBoolean() {
                    boolean g;
                    g = dev.duo.hookprobe.G.g();
                    return g;
                }
            });
            try {
                boolean z = c() && dev.duo.hookprobe.P.b(remotePreferences) && g();
                if (z || dev.duo.hookprobe.P.a(remotePreferences, "com.ss.android.ugc.aweme")) {
                    dev.duo.hookprobe.D.a(this, classLoader, new java.util.function.BooleanSupplier() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda9
                        @Override // java.util.function.BooleanSupplier
                        public final boolean getAsBoolean() {
                            boolean a2;
                            a2 = dev.duo.hookprobe.G.a(remotePreferences);
                            return a2;
                        }
                    }, new java.util.function.IntSupplier() { // from class: dev.duo.hookprobe.G$$ExternalSyntheticLambda10
                        @Override // java.util.function.IntSupplier
                        public final int getAsInt() {
                            int b2;
                            b2 = dev.duo.hookprobe.G.b(remotePreferences);
                            return b2;
                        }
                    });
                }
                android.util.Log.i(i, "CONFIG package=com.ss.android.ugc.aweme process=" + this.a + " enabled=" + z + " path=awemeLive topSafePxInner=" + b("inner") + " topSafePxOuter=" + b("outer") + " prefsMs=" + uptimeMillis2);
                if (c(classLoader)) {
                    if (z) {
                        e();
                    }
                    d();
                }
                android.util.Log.i(i, "AWEME_SETUP ms=" + (android.os.SystemClock.uptimeMillis() - uptimeMillis));
            } catch (java.lang.RuntimeException e) {
                android.util.Log.e(i, "AWEME config unreadable, app left untouched", e);
            }
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.e(i, "AWEME config unreadable, app left untouched", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(android.content.SharedPreferences sharedPreferences) {
        if (g() && dev.duo.hookprobe.P.b(sharedPreferences)) {
            return sharedPreferences.getBoolean(dev.duo.hookprobe.P.f("com.ss.android.ugc.aweme"), dev.duo.hookprobe.P.e("com.ss.android.ugc.aweme")) || dev.duo.hookprobe.P.a(sharedPreferences, "com.ss.android.ugc.aweme");
        }
        return false;
    }

    private void a(java.lang.ClassLoader classLoader, java.lang.String str, android.content.SharedPreferences sharedPreferences) {
        android.util.Log.i(i, "WECHAT_SCALE process=" + this.a + " uid=" + android.os.Process.myUid() + " property=" + h() + " preferences=" + (sharedPreferences != null));
        dev.duo.hookprobe.V.a(this, classLoader, new dev.duo.hookprobe.G.b(sharedPreferences, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean a(java.lang.String str, int i2) {
        java.lang.Integer num = this.h.get(str);
        int intValue = num == null ? 0 : num.intValue();
        if (intValue >= i2) {
            return false;
        }
        this.h.put(str, java.lang.Integer.valueOf(intValue + 1));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(dev.duo.hookprobe.Q q2, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        if (!(proceed instanceof android.util.SparseArray)) {
            return proceed;
        }
        java.lang.Object thisObject = chain.getThisObject();
        android.graphics.Rect a2 = q2.a(thisObject);
        java.lang.String a3 = dev.duo.hookprobe.Q.a(a2);
        this.c = a3 == null ? "unknown" : a3;
        if (a3 != null && ((!this.d || !"inner".equals(a3)) && (this.e == null || a(a3)))) {
            int b2 = b(a3);
            q2.a(thisObject, (android.util.SparseArray) proceed, a2, b2, "inner".equals(a3));
            if (a("parcel:" + a3, 3)) {
                android.util.Log.i(i, "TOP_INSETS panel=" + a3 + " status/cutout -> " + b2);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(android.util.SparseArray sparseArray, java.lang.reflect.Field field, java.lang.reflect.Method method, java.lang.reflect.Method method2, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        try {
            java.lang.String str = (java.lang.String) sparseArray.get(((java.lang.Integer) chain.getArg(0)).intValue());
            if (str != null) {
                java.lang.Object obj = field.get(((android.content.res.Resources) chain.getThisObject()).getConfiguration());
                android.graphics.Rect rect = (android.graphics.Rect) method.invoke(obj, null);
                android.graphics.Rect rect2 = (android.graphics.Rect) method2.invoke(obj, null);
                java.lang.String a2 = dev.duo.hookprobe.Q.a(rect);
                if (a2 != null && a(a2) && (c() || rect2.equals(rect))) {
                    int b2 = b(a2);
                    if (a("awemeStatusRes:" + a2, 4)) {
                        android.util.Log.i(i, "AWEME_STATUS_RESOURCE panel=" + a2 + " " + str + " bounds=" + rect + " px=" + proceed + " -> " + b2);
                    }
                    return java.lang.Integer.valueOf(b2);
                }
            }
        } catch (java.lang.Throwable th) {
            if (a("awemeStatusError", 1)) {
                android.util.Log.w(i, "AWEME_STATUS_RESOURCE read failed, native value kept", th);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(android.util.SparseArray sparseArray, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        java.lang.String str = (java.lang.String) sparseArray.get(((java.lang.Integer) chain.getArg(0)).intValue());
        if (str != null && java.lang.Boolean.TRUE.equals(proceed)) {
            android.util.TypedValue typedValue = (android.util.TypedValue) chain.getArg(2);
            if (typedValue.type == 5) {
                java.lang.String str2 = this.c;
                if ((this.e == null || (c() && a(str2))) && (!this.d || !"inner".equals(str2))) {
                    int b2 = b(str2);
                    int i2 = b2 << 8;
                    int i3 = typedValue.data;
                    typedValue.data = i2;
                    if (a("statusRes:" + str2, 4)) {
                        android.util.Log.i(i, "STATUS_RESOURCE panel=" + str2 + " " + str + " data=" + i3 + " -> " + i2 + " (" + b2 + "px)");
                    }
                }
            }
        }
        return proceed;
    }
}
