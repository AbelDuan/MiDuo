package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
final class C0025n {
    private static final java.lang.String a = "DuoCompat";
    static final long b = 174042980;
    static final long c = 180326787;
    static final long d = 203647190;
    static final long e = 327313645;
    private static final java.lang.String f = "/enabled";
    private static volatile java.util.Map<java.lang.String, int[]> g = null;
    private static volatile java.util.Map<java.lang.String, ?> h = null;
    private static final java.util.Set<java.lang.String> i;
    private static java.lang.String j = null;
    private static volatile java.util.Map<java.lang.String, java.lang.Integer> k = null;
    private static java.lang.Boolean l = null;
    private static volatile java.util.Map<java.lang.String, ?> m = null;
    private static final java.util.concurrent.atomic.AtomicBoolean n;
    private static final android.content.SharedPreferences.OnSharedPreferenceChangeListener o;
    private static final java.util.Set<java.lang.String> p;
    private static java.util.concurrent.ScheduledExecutorService q = null;
    private static final java.lang.ThreadLocal<java.lang.Boolean> r;
    private static final java.lang.ThreadLocal<java.lang.Boolean> s;
    private static java.lang.reflect.Field t = null;
    private static java.lang.reflect.Field u = null;
    private static java.lang.reflect.Method v = null;
    private static final java.util.Map<java.lang.String, java.lang.Integer> w;
    private static final java.util.Set<java.lang.String> x;
    private static final java.lang.String y = "com.tencent.mm";
    private static final java.lang.String z = ".plugin.appbrand.ui.";

    /* renamed from: dev.duo.hookprobe.n$a */
    class a extends android.database.ContentObserver {
        a(android.os.Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            if (dev.duo.hookprobe.C0025n.n.compareAndSet(false, true)) {
                dev.duo.hookprobe.C0025n.e().schedule(new java.lang.Runnable() { // from class: dev.duo.hookprobe.n$a$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.hookprobe.C0025n.c();
                    }
                }, 300L, java.util.concurrent.TimeUnit.MILLISECONDS);
            }
        }
    }

    static {
        java.util.Map<java.lang.String, java.lang.Integer> map = java.util.Collections.EMPTY_MAP;
        h = map;
        i = java.util.Collections.singleton(y);
        k = map;
        n = new java.util.concurrent.atomic.AtomicBoolean();
        o = new android.content.SharedPreferences.OnSharedPreferenceChangeListener() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda15
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
                dev.duo.hookprobe.C0025n.a(sharedPreferences, str);
            }
        };
        p = new java.util.HashSet();
        r = new java.lang.ThreadLocal<>();
        s = new java.lang.ThreadLocal<>();
        w = new java.util.HashMap();
        x = new java.util.HashSet(java.util.Arrays.asList("AppBrandUI", "AppBrandUI00", "AppBrandUI01", "AppBrandUI02", "AppBrandUI03", "AppBrandUI04", "AppBrandUI1", "AppBrandUI2", "AppBrandUI3", "AppBrandUI4", "AppBrandUI4MM"));
    }

    private C0025n() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c() {
        f();
    }

    static void d() {
        a(m, "license");
    }

    private static void e(io.github.libxposed.api.XposedModule xposedModule, java.lang.ClassLoader classLoader) {
        try {
            if (t == null || v == null) {
                throw new java.lang.NoSuchMethodException("ActivityRecord task helpers unavailable");
            }
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.server.wm.ImeContainer", false, classLoader);
            java.lang.Class<?> cls2 = java.lang.Class.forName("com.android.server.wm.WindowContainer", false, classLoader);
            java.lang.Class<?> cls3 = java.lang.Class.forName("com.android.server.wm.DisplayContent", false, classLoader);
            java.lang.Class<?> cls4 = java.lang.Class.forName("com.android.server.wm.WindowState", false, classLoader);
            java.lang.Class<?> cls5 = java.lang.Class.forName("com.android.server.wm.ConfigurationContainer", false, classLoader);
            final java.lang.reflect.Method declaredMethod = cls2.getDeclaredMethod("getDisplayContent", null);
            final java.lang.reflect.Method declaredMethod2 = cls2.getDeclaredMethod("getSurfaceControl", null);
            final java.lang.reflect.Method declaredMethod3 = cls5.getDeclaredMethod("getBounds", null);
            final java.lang.reflect.Method declaredMethod4 = cls5.getDeclaredMethod("getWindowingMode", null);
            java.lang.reflect.Method[] methodArr = {declaredMethod, declaredMethod2, declaredMethod3, declaredMethod4};
            for (int i2 = 0; i2 < 4; i2++) {
                methodArr[i2].setAccessible(true);
            }
            final java.lang.reflect.Field a2 = a(cls3, "mImeLayeringTarget");
            final java.lang.reflect.Field a3 = a(cls3, "mDisplayId");
            final java.lang.reflect.Field a4 = a(cls4, "mActivityRecord");
            xposedModule.hook(cls.getDeclaredMethod("assignRelativeLayer", android.view.SurfaceControl.Transaction.class, android.view.SurfaceControl.class, java.lang.Integer.TYPE, java.lang.Boolean.TYPE)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda6
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a5;
                    a5 = dev.duo.hookprobe.C0025n.a(declaredMethod, a3, a2, a4, declaredMethod2, declaredMethod4, declaredMethod3, chain);
                    return a5;
                }
            });
            java.util.ArrayList arrayList = new java.util.ArrayList();
            a(arrayList, classLoader, "com.android.server.wm.DisplayContent", "assignRelativeLayerForIme");
            android.util.Log.i(a, "READY task-relative IME hook, deoptimized " + a(xposedModule, arrayList));
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e(a, "IME layer hook NOT installed", e2);
        }
    }

    private static void f(io.github.libxposed.api.XposedModule xposedModule, java.lang.ClassLoader classLoader) {
        try {
            xposedModule.hook(java.lang.Class.forName("com.android.server.wm.MiuiSizeCompatService", false, classLoader).getDeclaredMethod("shouldUseFullscreenBypassInternal", java.lang.String.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda14
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object b2;
                    b2 = dev.duo.hookprobe.C0025n.b(chain);
                    return b2;
                }
            });
            java.util.ArrayList arrayList = new java.util.ArrayList();
            a(arrayList, classLoader, "com.android.server.wm.MiuiSizeCompatService", "isFullscreenBypassActivity");
            a(arrayList, classLoader, "com.android.server.wm.MiuiSizeCompatService", "shouldUseFullscreenBypass");
            a(arrayList, classLoader, "com.android.server.wm.MiuiSizeCompatService", "isActiveFullscreenBypassActivity");
            a(arrayList, classLoader, "com.android.server.wm.MiuiSizeCompatService", "isSizeCompatControlSupportedLocked");
            java.lang.String[] strArr = {"canUseWideFoldLandFsSuppress", "hasActiveFullscreenBypassActivityInProcess", "isFullscreenBypassOwnerRequestingLandscape", "resolveFixedAspectRatioIfNeeded", "shouldRestorePortraitForLockedWideFoldInnerCompat", "adaptCompatConfiguration", "refreshSizeCompatAfterFullscreenBypass"};
            for (int i2 = 0; i2 < 7; i2++) {
                a(arrayList, classLoader, "com.android.server.wm.BoundsCompatController", strArr[i2]);
            }
            android.util.Log.i(a, "READY miniapp hook, deoptimized " + a(xposedModule, arrayList));
        } catch (java.lang.Throwable th) {
            android.util.Log.e(a, "miniapp hook NOT installed, native answers kept", th);
        }
    }

    static boolean g() {
        return g != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void h(io.github.libxposed.api.XposedModule r9, java.lang.ClassLoader r10) {
        /*
            java.lang.String r0 = "com.android.server.wm.ActivityRecord"
            java.lang.String r1 = "DuoCompat"
            r2 = 0
            java.lang.String r3 = "com.android.server.wm.AppCompatReachabilityOverrides"
            java.lang.Class r3 = java.lang.Class.forName(r3, r2, r10)     // Catch: java.lang.Throwable -> L87
            java.lang.String r4 = "getHorizontalPositionMultiplier"
            java.lang.Class<android.content.res.Configuration> r5 = android.content.res.Configuration.class
            java.lang.Class[] r5 = new java.lang.Class[]{r5}     // Catch: java.lang.Throwable -> L87
            java.lang.reflect.Method r4 = r3.getDeclaredMethod(r4, r5)     // Catch: java.lang.Throwable -> L87
            java.lang.String r5 = "mActivityRecord"
            java.lang.reflect.Field r3 = a(r3, r5)     // Catch: java.lang.Throwable -> L87
            java.lang.Class r5 = java.lang.Class.forName(r0, r2, r10)     // Catch: java.lang.Throwable -> L87
            java.lang.String r6 = "packageName"
            java.lang.reflect.Field r5 = a(r5, r6)     // Catch: java.lang.Throwable -> L87
            java.lang.String r6 = "com.android.server.wm.AppCompatConfiguration"
            java.lang.Class r6 = java.lang.Class.forName(r6, r2, r10)     // Catch: java.lang.Throwable -> L87
            java.lang.String r7 = "getLetterboxHorizontalPositionMultiplier"
            java.lang.Class r8 = java.lang.Boolean.TYPE     // Catch: java.lang.Throwable -> L87
            java.lang.Class[] r8 = new java.lang.Class[]{r8}     // Catch: java.lang.Throwable -> L87
            java.lang.reflect.Method r2 = r6.getDeclaredMethod(r7, r8)     // Catch: java.lang.Throwable -> L87
            io.github.libxposed.api.XposedInterface$HookBuilder r6 = r9.hook(r4)     // Catch: java.lang.Throwable -> L84
            dev.duo.hookprobe.n$$ExternalSyntheticLambda11 r7 = new dev.duo.hookprobe.n$$ExternalSyntheticLambda11     // Catch: java.lang.Throwable -> L84
            r7.<init>()     // Catch: java.lang.Throwable -> L84
            r6.intercept(r7)     // Catch: java.lang.Throwable -> L84
            r3 = 2
            io.github.libxposed.api.XposedInterface$HookBuilder r2 = r9.hook(r2)     // Catch: java.lang.Throwable -> L81
            dev.duo.hookprobe.n$$ExternalSyntheticLambda12 r5 = new dev.duo.hookprobe.n$$ExternalSyntheticLambda12     // Catch: java.lang.Throwable -> L81
            r5.<init>()     // Catch: java.lang.Throwable -> L81
            r2.intercept(r5)     // Catch: java.lang.Throwable -> L81
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L81
            r2.<init>()     // Catch: java.lang.Throwable -> L81
            r2.add(r4)     // Catch: java.lang.Throwable -> L81
            java.lang.String r4 = "updateResolvedBoundsPosition"
            a(r2, r10, r0, r4)     // Catch: java.lang.Throwable -> L81
            java.lang.String r0 = "com.android.server.wm.AppCompatAspectRatioOverrides"
            java.lang.String r4 = "shouldUseSplitScreenAspectRatio"
            a(r2, r10, r0, r4)     // Catch: java.lang.Throwable -> L81
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L81
            r10.<init>()     // Catch: java.lang.Throwable -> L81
            java.lang.String r0 = "READY position hook, deoptimized "
            java.lang.StringBuilder r10 = r10.append(r0)     // Catch: java.lang.Throwable -> L81
            java.lang.String r9 = a(r9, r2)     // Catch: java.lang.Throwable -> L81
            java.lang.StringBuilder r9 = r10.append(r9)     // Catch: java.lang.Throwable -> L81
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Throwable -> L81
            android.util.Log.i(r1, r9)     // Catch: java.lang.Throwable -> L81
            return
        L81:
            r9 = move-exception
            r2 = r3
            goto L88
        L84:
            r9 = move-exception
            r10 = 1
            goto L89
        L87:
            r9 = move-exception
        L88:
            r10 = r2
        L89:
            if (r10 != 0) goto L8e
            java.lang.String r10 = "position hook NOT installed, native position kept"
            goto La7
        L8e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "position hooks installed="
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.StringBuilder r10 = r0.append(r10)
            java.lang.String r0 = "/2, deoptimize list incomplete"
            java.lang.StringBuilder r10 = r10.append(r0)
            java.lang.String r10 = r10.toString()
        La7:
            android.util.Log.e(r1, r10, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.C0025n.h(io.github.libxposed.api.XposedModule, java.lang.ClassLoader):void");
    }

    private static void i(io.github.libxposed.api.XposedModule xposedModule, java.lang.ClassLoader classLoader) {
        try {
            final dev.duo.hookprobe.Q q2 = new dev.duo.hookprobe.Q(classLoader, true);
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.server.wm.WindowState", false, classLoader);
            final java.lang.reflect.Field a2 = a(cls, "mActivityRecord");
            final java.lang.reflect.Field a3 = a(java.lang.Class.forName("com.android.server.wm.ActivityRecord", false, classLoader), "packageName");
            final java.lang.reflect.Field a4 = a(q2.a, "mSources");
            java.lang.Class<?> cls2 = q2.a;
            final java.lang.reflect.Constructor<?> declaredConstructor = cls2.getDeclaredConstructor(cls2, java.lang.Boolean.TYPE);
            java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod("getCompatInsetsState", null);
            java.lang.Class<?> cls3 = java.lang.Class.forName("com.android.server.wm.ConfigurationContainer", false, classLoader);
            final java.lang.reflect.Method declaredMethod2 = cls3.getDeclaredMethod("getWindowingMode", null);
            final java.lang.reflect.Method declaredMethod3 = cls3.getDeclaredMethod("getActivityType", null);
            xposedModule.hook(declaredMethod).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda4
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a5;
                    a5 = dev.duo.hookprobe.C0025n.a(a2, a3, q2, declaredMethod2, declaredMethod3, declaredConstructor, a4, chain);
                    return a5;
                }
            });
            java.util.ArrayList arrayList = new java.util.ArrayList();
            a(arrayList, classLoader, "com.android.server.wm.WindowState", "fillInsetsState");
            a(arrayList, classLoader, "com.android.server.wm.WindowState", "reportResized");
            a(arrayList, classLoader, "com.android.server.wm.WindowState", "notifyInsetsControlChanged");
            a(arrayList, classLoader, "com.android.server.wm.WindowManagerService", "addWindowInner");
            a(arrayList, classLoader, "com.android.server.wm.WindowManagerService", "relayoutWindow");
            android.util.Log.i(a, "READY server top hook, deoptimized " + a(xposedModule, arrayList));
        } catch (java.lang.Throwable th) {
            android.util.Log.e(a, "server top hook NOT installed", th);
        }
    }

    private static void j() {
        for (int i2 = 1; i2 <= 90; i2++) {
            try {
                i().getContentResolver().registerContentObserver(dev.duo.hookprobe.L.d, false, new dev.duo.hookprobe.C0025n.a(null));
                android.util.Log.i(a, "READY app change observer attempt=" + i2);
                return;
            } catch (java.lang.Throwable th) {
                if (i2 == 1 || i2 == 90) {
                    android.util.Log.w(a, "app change observer not registered, attempt " + i2, th);
                }
                android.os.SystemClock.sleep(2000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
        if (a("changeLog", 50)) {
            android.util.Log.i(a, "CHANGE key=" + str);
        }
        if (str == null || str.endsWith(f) || dev.duo.hookprobe.P.h(str) || dev.duo.hookprobe.P.j(str) || "_global/master".equals(str) || "_global/licenseToken".equals(str) || dev.duo.hookprobe.P.u(str) || dev.duo.hookprobe.P.n(str)) {
            a(sharedPreferences.getAll(), "change " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean b(java.util.Map map, java.lang.String str) {
        return ((java.lang.Integer) map.getOrDefault(str, 100)).equals(k.getOrDefault(str, 100));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object c(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        if (!java.lang.Boolean.TRUE.equals(r.get()) || ((java.lang.Boolean) chain.getArg(0)).booleanValue()) {
            return chain.proceed();
        }
        if (a("position", 1)) {
            android.util.Log.i(a, "POSITION left for a Duo app");
        }
        return java.lang.Float.valueOf(0.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [int] */
    /* JADX WARN: Type inference failed for: r15v3 */
    private static void d(io.github.libxposed.api.XposedModule xposedModule, java.lang.ClassLoader classLoader) {
        boolean z2 = false;
        int i2 = 0;
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.server.wm.ActivityRecord", false, classLoader);
            t = a(cls, "packageName");
            u = a(java.lang.Class.forName("com.android.server.wm.Task", false, classLoader), "realActivity");
            java.lang.reflect.Method method = null;
            while (cls != null && method == null) {
                try {
                    for (java.lang.reflect.Method method2 : cls.getDeclaredMethods()) {
                        if (method2.getName().equals("getTask") && method2.getParameterCount() == 0) {
                            method = method2;
                        }
                    }
                    cls = cls.getSuperclass();
                } catch (java.lang.Throwable th) {
                    th = th;
                    android.util.Log.e(a, "host hook installed=" + i2 + "/2, embedded pages keep their own answer", th);
                    return;
                }
            }
            if (method == null) {
                throw new java.lang.NoSuchMethodException("ActivityRecord.getTask");
            }
            method.setAccessible(true);
            v = method;
            java.util.ArrayList arrayList = new java.util.ArrayList();
            java.lang.String[] strArr = {"com.android.server.wm.AppCompatAspectRatioPolicy", "com.android.server.wm.DesktopAppCompatAspectRatioPolicy"};
            int i3 = 0;
            int i4 = 0;
            while (i3 < 2) {
                try {
                    java.lang.Class<?> cls2 = java.lang.Class.forName(strArr[i3], z2, classLoader);
                    final java.lang.reflect.Field a2 = a(cls2, "mActivityRecord");
                    java.lang.reflect.Method[] declaredMethods = cls2.getDeclaredMethods();
                    int length = declaredMethods.length;
                    for (?? r15 = z2; r15 < length; r15++) {
                        java.lang.reflect.Method method3 = declaredMethods[r15];
                        java.lang.String[] strArr2 = strArr;
                        if (method3.getName().equals("getMinAspectRatio")) {
                            xposedModule.hook(method3).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda5
                                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                                    java.lang.Object a3;
                                    a3 = dev.duo.hookprobe.C0025n.a(a2, chain);
                                    return a3;
                                }
                            });
                            i4++;
                        }
                        strArr = strArr2;
                    }
                    i3++;
                    z2 = false;
                } catch (java.lang.Throwable th2) {
                    th = th2;
                    i2 = i4;
                    android.util.Log.e(a, "host hook installed=" + i2 + "/2, embedded pages keep their own answer", th);
                    return;
                }
            }
            a(arrayList, classLoader, "com.android.server.wm.ActivityRecord", "getMinAspectRatio");
            a(arrayList, classLoader, "com.android.server.wm.AppCompatAspectRatioPolicy", "applyAspectRatio");
            a(arrayList, classLoader, "com.android.server.wm.AppCompatAspectRatioPolicy", "hasFixedAspectRatio");
            a(arrayList, classLoader, "com.android.server.wm.DesktopAppCompatAspectRatioPolicy", "calculateAspectRatio");
            a(arrayList, classLoader, "com.android.server.wm.DesktopAppCompatAspectRatioPolicy", "hasMinAspectRatioOverride");
            android.util.Log.i(a, "READY host hook=" + i4 + "/2, deoptimized " + a(xposedModule, arrayList));
        } catch (java.lang.Throwable th3) {
            th = th3;
            i2 = 0;
        }
    }

    private static void g(io.github.libxposed.api.XposedModule xposedModule, java.lang.ClassLoader classLoader) {
        try {
            if (t == null || v == null) {
                throw new java.lang.NoSuchMethodException("ActivityRecord task helpers unavailable");
            }
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.server.wm.ActivityRecord", false, classLoader);
            java.lang.Class<?> cls2 = java.lang.Class.forName("com.android.server.wm.ConfigurationContainer", false, classLoader);
            java.lang.Class<?> cls3 = java.lang.Class.forName("com.android.server.wm.DisplayContent", false, classLoader);
            java.lang.Class<?> cls4 = java.lang.Class.forName("com.android.server.wm.TaskFragment", false, classLoader);
            java.lang.Class<?> cls5 = java.lang.Class.forName("com.android.server.wm.AppCompatSandboxingPolicy$ConfigOverrideHint", false, classLoader);
            final java.lang.reflect.Field a2 = a(java.lang.Class.forName("com.android.server.wm.WindowContainer", false, classLoader), "mDisplayContent");
            final java.lang.reflect.Field a3 = a(cls3, "mInitialDisplayWidth");
            final java.lang.reflect.Field a4 = a(cls3, "mInitialDisplayHeight");
            final java.lang.reflect.Field a5 = a(cls3, "mDisplayId");
            final java.lang.reflect.Field a6 = a((java.lang.Class<?>) android.content.res.Configuration.class, "windowConfiguration");
            java.lang.Class<?> cls6 = java.lang.Class.forName("android.app.WindowConfiguration");
            final java.lang.reflect.Method method = cls6.getMethod("getBounds", null);
            final java.lang.reflect.Method method2 = cls6.getMethod("getAppBounds", null);
            final java.lang.reflect.Method method3 = cls6.getMethod("getMaxBounds", null);
            final java.lang.reflect.Method method4 = cls6.getMethod("getWindowingMode", null);
            final java.lang.reflect.Method method5 = cls6.getMethod("getActivityType", null);
            java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod("resolveOverrideConfiguration", android.content.res.Configuration.class);
            final java.lang.reflect.Method declaredMethod2 = cls2.getDeclaredMethod("getResolvedOverrideConfiguration", null);
            final java.lang.reflect.Method declaredMethod3 = cls2.getDeclaredMethod("getWindowingMode", null);
            final java.lang.reflect.Method declaredMethod4 = cls2.getDeclaredMethod("getActivityType", null);
            final java.lang.reflect.Method declaredMethod5 = cls.getDeclaredMethod("getAppCompatDisplayInsets", null);
            final java.lang.reflect.Method declaredMethod6 = cls.getDeclaredMethod("shouldCreateAppCompatDisplayInsets", null);
            final java.lang.reflect.Method declaredMethod7 = cls.getDeclaredMethod("inMiuiSizeCompatMode", null);
            final java.lang.reflect.Method declaredMethod8 = cls4.getDeclaredMethod("computeConfigResourceOverrides", android.content.res.Configuration.class, android.content.res.Configuration.class, cls5);
            java.lang.reflect.Method[] methodArr = {declaredMethod2, declaredMethod3, declaredMethod4, declaredMethod5, declaredMethod6, declaredMethod7, declaredMethod8};
            for (int i2 = 0; i2 < 7; i2++) {
                methodArr[i2].setAccessible(true);
            }
            xposedModule.hook(declaredMethod).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda0
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a7;
                    a7 = dev.duo.hookprobe.C0025n.a(a2, a5, a3, a4, declaredMethod3, declaredMethod4, declaredMethod5, declaredMethod6, declaredMethod7, declaredMethod2, declaredMethod8, a6, method2, method, method3, method4, method5, chain);
                    return a7;
                }
            });
            java.util.ArrayList arrayList = new java.util.ArrayList();
            a(arrayList, classLoader, "com.android.server.wm.ConfigurationContainer", "onConfigurationChanged");
            android.util.Log.i(a, "READY outer Activity density (user scale), native size-compat snapshots excluded, deoptimized " + a(xposedModule, arrayList));
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e(a, "OUTER_DENSITY NOT installed", e2);
        }
    }

    private static void b(io.github.libxposed.api.XposedModule xposedModule, java.lang.ClassLoader classLoader) {
        java.lang.String str = null;
        try {
            java.lang.Class cls = java.lang.Long.TYPE;
            str = "compat";
            xposedModule.hook(android.content.pm.ApplicationInfo.class.getDeclaredMethod("isChangeEnabled", cls)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda2
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.hookprobe.C0025n.a(chain);
                    return a2;
                }
            });
            java.util.ArrayList arrayList = new java.util.ArrayList();
            arrayList.add(android.content.pm.ActivityInfo.class.getDeclaredMethod("isChangeEnabled", cls));
            a(arrayList, classLoader, "com.android.server.wm.AppCompatUtils", "isChangeEnabled");
            a(arrayList, classLoader, "com.android.server.wm.AppCompatAspectRatioOverrides", "shouldOverrideMinAspectRatio");
            a(arrayList, classLoader, "com.android.server.wm.AppCompatAspectRatioPolicy", "getMinAspectRatio");
            a(arrayList, classLoader, "com.android.server.wm.DesktopAppCompatAspectRatioPolicy", "getMinAspectRatio");
            a(arrayList, classLoader, "com.android.server.wm.ConfigurationContainer", "applySizeOverrideIfNeeded");
            java.util.Collections.addAll(arrayList, java.lang.Class.forName("com.android.server.wm.AppCompatSandboxingPolicy", false, classLoader).getDeclaredConstructors());
            android.util.Log.i(a, "READY compat hook, deoptimized " + a(xposedModule, arrayList));
        } catch (java.lang.Throwable th) {
            android.util.Log.e(a, "compat hook " + (str == null ? "NOT installed, native answers kept" : "installed but deoptimize list incomplete"), th);
        }
    }

    private static void a(java.util.Map<java.lang.String, ?> map, java.lang.String str) {
        boolean c2;
        java.util.HashSet hashSet;
        java.util.HashSet hashSet2;
        synchronized (dev.duo.hookprobe.C0025n.class) {
            java.util.Map<java.lang.String, int[]> map2 = g;
            final java.util.Map<java.lang.String, java.lang.Integer> map3 = k;
            c2 = c(map, str);
            java.util.Map<java.lang.String, int[]> map4 = g;
            hashSet = new java.util.HashSet(map4 == null ? java.util.Collections.EMPTY_SET : map4.keySet());
            if (map2 != null) {
                java.util.HashSet<java.lang.String> hashSet3 = new java.util.HashSet(hashSet);
                hashSet3.retainAll(map2.keySet());
                hashSet.addAll(map2.keySet());
                if (!c2) {
                    hashSet.removeAll(hashSet3);
                    for (java.lang.String str2 : hashSet3) {
                        if ((map2.get(str2)[0] == 0) != (map4.get(str2)[0] == 0)) {
                            hashSet.add(str2);
                        }
                    }
                }
            }
            hashSet2 = new java.util.HashSet(map3.keySet());
            hashSet2.addAll(k.keySet());
            hashSet2.removeIf(new java.util.function.Predicate() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda8
                @Override // java.util.function.Predicate
                public final boolean test(java.lang.Object obj) {
                    boolean b2;
                    b2 = dev.duo.hookprobe.C0025n.b(map3, (java.lang.String) obj);
                    return b2;
                }
            });
            hashSet.addAll(hashSet2);
        }
        if (c2) {
            str = "master";
        } else if (!hashSet2.isEmpty()) {
            str = "outerScale";
        }
        a(hashSet, str);
        final java.util.HashSet hashSet4 = new java.util.HashSet(hashSet2);
        hashSet4.retainAll(i);
        if (!hashSet4.isEmpty()) {
            e().schedule(new java.lang.Runnable() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.C0025n.b((java.util.Set<java.lang.String>) hashSet4);
                }
            }, 1200L, java.util.concurrent.TimeUnit.MILLISECONDS);
        }
        if (c2) {
            e().execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.C0025n.h();
                }
            });
        }
    }

    private static void c(io.github.libxposed.api.XposedModule xposedModule, java.lang.ClassLoader classLoader) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.server.wm.WindowStateStubImpl", false, classLoader);
            final java.lang.reflect.Field a2 = a(cls, "mWindowState");
            final java.lang.reflect.Field a3 = a(java.lang.Class.forName("com.android.server.wm.WindowState", false, classLoader), "mActivityRecord");
            final java.lang.reflect.Method method = java.lang.Class.forName("com.android.server.wm.ActivityRecord", false, classLoader).getMethod("getBounds", null);
            method.setAccessible(true);
            xposedModule.hook(cls.getDeclaredMethod("isInSpecificEmbeddedSplitDialog", null)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda3
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a4;
                    a4 = dev.duo.hookprobe.C0025n.a(a3, a2, method, chain);
                    return a4;
                }
            });
            java.util.ArrayList arrayList = new java.util.ArrayList();
            a(arrayList, classLoader, "com.android.server.wm.WindowManagerService", "addWindowInner");
            a(arrayList, classLoader, "com.android.server.wm.DisplayContent", "shouldImeAttachedToApp");
            android.util.Log.i(a, "READY embedded dialog hook, deoptimized " + a(xposedModule, arrayList));
        } catch (java.lang.Throwable th) {
            android.util.Log.e(a, "embedded dialog hook incomplete, check hook and deoptimize state", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f() {
        n.set(false);
        long clearCallingIdentity = android.os.Binder.clearCallingIdentity();
        try {
            android.content.ContentProviderClient acquireUnstableContentProviderClient = i().getContentResolver().acquireUnstableContentProviderClient("dev.duo.hookprobe.config");
            android.os.Bundle bundle = null;
            if (acquireUnstableContentProviderClient != null) {
                try {
                    bundle = acquireUnstableContentProviderClient.call("duoState", null, null);
                } finally {
                }
            }
            if (bundle != null && !bundle.containsKey("error")) {
                java.util.HashMap hashMap = new java.util.HashMap();
                for (java.lang.String str : bundle.keySet()) {
                    hashMap.put(str, bundle.get(str));
                }
                a(hashMap, "app notified");
                if (acquireUnstableContentProviderClient != null) {
                    acquireUnstableContentProviderClient.close();
                }
                return;
            }
            android.util.Log.w(a, "duoState unavailable: " + (bundle == null ? "no provider" : bundle.getString("error")));
            if (acquireUnstableContentProviderClient != null) {
                acquireUnstableContentProviderClient.close();
            }
        } catch (java.lang.Throwable th) {
            try {
                android.util.Log.w(a, "duoState failed", th);
            } finally {
                android.os.Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d8 A[Catch: all -> 0x0168, TryCatch #0 {, blocks: (B:9:0x0008, B:10:0x0017, B:12:0x001d, B:15:0x0031, B:18:0x0039, B:21:0x0046, B:30:0x0054, B:34:0x0071, B:36:0x0075, B:40:0x007f, B:42:0x0083, B:44:0x00b9, B:48:0x00c0, B:51:0x00c8, B:54:0x00d4, B:56:0x00d8, B:57:0x00df, B:60:0x00f4, B:62:0x00fc, B:64:0x0104, B:65:0x0106, B:68:0x0151, B:72:0x013a, B:73:0x00f0, B:74:0x00dd, B:75:0x00d2, B:76:0x00c6, B:77:0x0089, B:79:0x008f, B:80:0x0096), top: B:8:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x013a A[Catch: all -> 0x0168, TryCatch #0 {, blocks: (B:9:0x0008, B:10:0x0017, B:12:0x001d, B:15:0x0031, B:18:0x0039, B:21:0x0046, B:30:0x0054, B:34:0x0071, B:36:0x0075, B:40:0x007f, B:42:0x0083, B:44:0x00b9, B:48:0x00c0, B:51:0x00c8, B:54:0x00d4, B:56:0x00d8, B:57:0x00df, B:60:0x00f4, B:62:0x00fc, B:64:0x0104, B:65:0x0106, B:68:0x0151, B:72:0x013a, B:73:0x00f0, B:74:0x00dd, B:75:0x00d2, B:76:0x00c6, B:77:0x0089, B:79:0x008f, B:80:0x0096), top: B:8:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00f0 A[Catch: all -> 0x0168, TryCatch #0 {, blocks: (B:9:0x0008, B:10:0x0017, B:12:0x001d, B:15:0x0031, B:18:0x0039, B:21:0x0046, B:30:0x0054, B:34:0x0071, B:36:0x0075, B:40:0x007f, B:42:0x0083, B:44:0x00b9, B:48:0x00c0, B:51:0x00c8, B:54:0x00d4, B:56:0x00d8, B:57:0x00df, B:60:0x00f4, B:62:0x00fc, B:64:0x0104, B:65:0x0106, B:68:0x0151, B:72:0x013a, B:73:0x00f0, B:74:0x00dd, B:75:0x00d2, B:76:0x00c6, B:77:0x0089, B:79:0x008f, B:80:0x0096), top: B:8:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00dd A[Catch: all -> 0x0168, TryCatch #0 {, blocks: (B:9:0x0008, B:10:0x0017, B:12:0x001d, B:15:0x0031, B:18:0x0039, B:21:0x0046, B:30:0x0054, B:34:0x0071, B:36:0x0075, B:40:0x007f, B:42:0x0083, B:44:0x00b9, B:48:0x00c0, B:51:0x00c8, B:54:0x00d4, B:56:0x00d8, B:57:0x00df, B:60:0x00f4, B:62:0x00fc, B:64:0x0104, B:65:0x0106, B:68:0x0151, B:72:0x013a, B:73:0x00f0, B:74:0x00dd, B:75:0x00d2, B:76:0x00c6, B:77:0x0089, B:79:0x008f, B:80:0x0096), top: B:8:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00d2 A[Catch: all -> 0x0168, TryCatch #0 {, blocks: (B:9:0x0008, B:10:0x0017, B:12:0x001d, B:15:0x0031, B:18:0x0039, B:21:0x0046, B:30:0x0054, B:34:0x0071, B:36:0x0075, B:40:0x007f, B:42:0x0083, B:44:0x00b9, B:48:0x00c0, B:51:0x00c8, B:54:0x00d4, B:56:0x00d8, B:57:0x00df, B:60:0x00f4, B:62:0x00fc, B:64:0x0104, B:65:0x0106, B:68:0x0151, B:72:0x013a, B:73:0x00f0, B:74:0x00dd, B:75:0x00d2, B:76:0x00c6, B:77:0x0089, B:79:0x008f, B:80:0x0096), top: B:8:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00c6 A[Catch: all -> 0x0168, TryCatch #0 {, blocks: (B:9:0x0008, B:10:0x0017, B:12:0x001d, B:15:0x0031, B:18:0x0039, B:21:0x0046, B:30:0x0054, B:34:0x0071, B:36:0x0075, B:40:0x007f, B:42:0x0083, B:44:0x00b9, B:48:0x00c0, B:51:0x00c8, B:54:0x00d4, B:56:0x00d8, B:57:0x00df, B:60:0x00f4, B:62:0x00fc, B:64:0x0104, B:65:0x0106, B:68:0x0151, B:72:0x013a, B:73:0x00f0, B:74:0x00dd, B:75:0x00d2, B:76:0x00c6, B:77:0x0089, B:79:0x008f, B:80:0x0096), top: B:8:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x008f A[Catch: all -> 0x0168, TryCatch #0 {, blocks: (B:9:0x0008, B:10:0x0017, B:12:0x001d, B:15:0x0031, B:18:0x0039, B:21:0x0046, B:30:0x0054, B:34:0x0071, B:36:0x0075, B:40:0x007f, B:42:0x0083, B:44:0x00b9, B:48:0x00c0, B:51:0x00c8, B:54:0x00d4, B:56:0x00d8, B:57:0x00df, B:60:0x00f4, B:62:0x00fc, B:64:0x0104, B:65:0x0106, B:68:0x0151, B:72:0x013a, B:73:0x00f0, B:74:0x00dd, B:75:0x00d2, B:76:0x00c6, B:77:0x0089, B:79:0x008f, B:80:0x0096), top: B:8:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0096 A[Catch: all -> 0x0168, TryCatch #0 {, blocks: (B:9:0x0008, B:10:0x0017, B:12:0x001d, B:15:0x0031, B:18:0x0039, B:21:0x0046, B:30:0x0054, B:34:0x0071, B:36:0x0075, B:40:0x007f, B:42:0x0083, B:44:0x00b9, B:48:0x00c0, B:51:0x00c8, B:54:0x00d4, B:56:0x00d8, B:57:0x00df, B:60:0x00f4, B:62:0x00fc, B:64:0x0104, B:65:0x0106, B:68:0x0151, B:72:0x013a, B:73:0x00f0, B:74:0x00dd, B:75:0x00d2, B:76:0x00c6, B:77:0x0089, B:79:0x008f, B:80:0x0096), top: B:8:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static synchronized boolean c(java.util.Map<java.lang.String, ?> r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.C0025n.c(java.util.Map, java.lang.String):boolean");
    }

    private static boolean b(java.lang.String str) {
        if (str != null && str.startsWith("com.tencent.mm/")) {
            java.lang.String substring = str.substring(15);
            if (substring.startsWith("com.tencent.mm.")) {
                substring = substring.substring(14);
            }
            if (substring.startsWith(z) && x.contains(substring.substring(20))) {
                return true;
            }
        }
        return false;
    }

    static boolean a(java.lang.String str) {
        java.util.Map<java.lang.String, int[]> map = g;
        return (map == null || str == null || !map.containsKey(str)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object b(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.String str = (java.lang.String) chain.getArg(0);
        if (b(str) && a(y)) {
            if (a("miniApp", 1)) {
                android.util.Log.i(a, "MINIAPP fullscreen bypass first " + str);
            }
            return java.lang.Boolean.TRUE;
        }
        return chain.proceed();
    }

    static void a(final io.github.libxposed.api.XposedModule xposedModule, java.lang.ClassLoader classLoader) {
        b(xposedModule, classLoader);
        d(xposedModule, classLoader);
        g(xposedModule, classLoader);
        c(xposedModule, classLoader);
        h(xposedModule, classLoader);
        f(xposedModule, classLoader);
        i(xposedModule, classLoader);
        e(xposedModule, classLoader);
        java.lang.Thread thread = new java.lang.Thread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.C0025n.b(xposedModule);
            }
        }, "DuoCompatConfig");
        thread.setDaemon(true);
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void h() {
        long clearCallingIdentity = android.os.Binder.clearCallingIdentity();
        try {
            java.lang.Object invoke = java.lang.Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", null).invoke(null, null);
            android.content.Context context = (android.content.Context) invoke.getClass().getMethod("getSystemContext", null).invoke(invoke, null);
            android.app.ActivityManager.class.getMethod("forceStopPackage", java.lang.String.class).invoke((android.app.ActivityManager) context.getSystemService(android.app.ActivityManager.class), "com.miui.home");
            android.content.Context.class.getMethod("startActivityAsUser", android.content.Intent.class, android.os.UserHandle.class).invoke(context, new android.content.Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").addFlags(268435456), android.os.UserHandle.class.getField("CURRENT").get(null));
            android.util.Log.i(a, "HOME reopened for the master switch");
        } catch (java.lang.Throwable th) {
            try {
                android.util.Log.e(a, "HOME reopen failed; the desktop switches at its next start", th);
            } finally {
                android.os.Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(io.github.libxposed.api.XposedModule xposedModule) {
        for (int i2 = 1; i2 <= 90; i2++) {
            try {
                android.content.SharedPreferences remotePreferences = xposedModule.getRemotePreferences("duo_top");
                dev.duo.hookprobe.C0027p.a(remotePreferences);
                remotePreferences.registerOnSharedPreferenceChangeListener(o);
                c(remotePreferences.getAll(), "initial attempt=" + i2);
                java.util.HashSet hashSet = new java.util.HashSet(g.keySet());
                hashSet.addAll(k.keySet());
                a(hashSet, "config ready");
                j();
                return;
            } catch (java.lang.Throwable th) {
                if (i2 == 1 || i2 == 90) {
                    android.util.Log.w(a, "config not readable, attempt " + i2, th);
                }
                android.os.SystemClock.sleep(2000L);
            }
        }
        android.util.Log.e(a, "config unreadable, native answers kept");
    }

    private static android.content.Context i() throws java.lang.ReflectiveOperationException {
        java.lang.Object invoke = java.lang.Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", null).invoke(null, null);
        return (android.content.Context) invoke.getClass().getMethod("getSystemContext", null).invoke(invoke, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.reflect.Field field3, java.lang.reflect.Field field4, java.lang.reflect.Method method, java.lang.reflect.Method method2, java.lang.reflect.Method method3, java.lang.reflect.Method method4, java.lang.reflect.Method method5, java.lang.reflect.Method method6, java.lang.reflect.Method method7, java.lang.reflect.Field field5, java.lang.reflect.Method method8, java.lang.reflect.Method method9, java.lang.reflect.Method method10, java.lang.reflect.Method method11, java.lang.reflect.Method method12, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object obj;
        int i2;
        java.lang.Object proceed = chain.proceed();
        try {
            java.lang.Object thisObject = chain.getThisObject();
            java.lang.Integer num = k.get((java.lang.String) t.get(thisObject));
            if (num == null) {
                return proceed;
            }
            if (num.intValue() >= 100) {
                return proceed;
            }
            java.lang.Object obj2 = field.get(thisObject);
            if (obj2 == null) {
                return proceed;
            }
            if (field2.getInt(obj2) != 0) {
                return proceed;
            }
            if (!dev.duo.hookprobe.E.a(field3.getInt(obj2), field4.getInt(obj2))) {
                return proceed;
            }
            java.lang.Object invoke = v.invoke(thisObject, null);
            if (invoke == null) {
                return proceed;
            }
            if (((java.lang.Integer) method.invoke(invoke, null)).intValue() != 1) {
                return proceed;
            }
            if (((java.lang.Integer) method2.invoke(invoke, null)).intValue() != 1) {
                return proceed;
            }
            try {
                if (method3.invoke(thisObject, null) != null) {
                    obj = proceed;
                } else if (((java.lang.Boolean) method4.invoke(thisObject, null)).booleanValue()) {
                    obj = proceed;
                } else {
                    if (!((java.lang.Boolean) method5.invoke(thisObject, null)).booleanValue()) {
                        android.content.res.Configuration configuration = (android.content.res.Configuration) chain.getArg(0);
                        android.content.res.Configuration configuration2 = (android.content.res.Configuration) method6.invoke(thisObject, null);
                        int i3 = configuration2.densityDpi;
                        if (i3 == 0) {
                            i3 = configuration.densityDpi;
                        }
                        int round = java.lang.Math.round((num.intValue() * i3) / 100.0f);
                        android.content.res.Configuration configuration3 = new android.content.res.Configuration(configuration);
                        float f2 = round;
                        float f3 = configuration.densityDpi / f2;
                        configuration3.densityDpi = round;
                        configuration3.screenWidthDp = java.lang.Math.round(configuration.screenWidthDp * f3);
                        configuration3.screenHeightDp = java.lang.Math.round(configuration.screenHeightDp * f3);
                        configuration3.smallestScreenWidthDp = java.lang.Math.round(configuration.smallestScreenWidthDp * f3);
                        android.content.res.Configuration configuration4 = new android.content.res.Configuration(configuration2);
                        configuration4.densityDpi = round;
                        configuration4.screenLayout = 0;
                        configuration4.screenHeightDp = 0;
                        configuration4.screenWidthDp = 0;
                        int i4 = configuration2.smallestScreenWidthDp;
                        if (i4 == 0) {
                            i4 = configuration.smallestScreenWidthDp;
                        }
                        configuration4.smallestScreenWidthDp = java.lang.Math.round((i4 * i3) / f2);
                        method7.invoke(invoke, configuration4, configuration3, null);
                        java.lang.Object obj3 = field5.get(configuration2);
                        java.lang.Object obj4 = field5.get(configuration4);
                        if (!obj3.equals(obj4)) {
                            boolean z2 = method8.invoke(obj3, null) == null && ((android.graphics.Rect) method9.invoke(obj3, null)).isEmpty() && ((android.graphics.Rect) method10.invoke(obj3, null)).isEmpty() && method9.invoke(obj3, null).equals(method9.invoke(obj4, null)) && method10.invoke(obj3, null).equals(method10.invoke(obj4, null)) && method11.invoke(obj3, null).equals(method11.invoke(obj4, null)) && method12.invoke(obj3, null).equals(method12.invoke(obj4, null));
                            if (z2 && ((i2 = configuration4.screenWidthDp) <= 0 || configuration4.screenHeightDp <= 0 || configuration4.smallestScreenWidthDp <= 0 || java.lang.Math.abs(i2 - configuration3.screenWidthDp) > 2)) {
                                if (!a("densityInheritedDp", 3)) {
                                    return proceed;
                                }
                                android.util.Log.e(a, "OUTER_DENSITY rejected: inherited-window dp " + configuration4.screenWidthDp + "x" + configuration4.screenHeightDp + " vs parent " + configuration3.screenWidthDp + " " + t.get(thisObject));
                                return proceed;
                            }
                            if (!z2) {
                                if (a("densityGeometry", 3)) {
                                    android.util.Log.e(a, "OUTER_DENSITY rejected: native resource computation changed window geometry");
                                    return proceed;
                                }
                                return proceed;
                            }
                            configuration2.densityDpi = configuration4.densityDpi;
                            configuration2.screenWidthDp = configuration4.screenWidthDp;
                            configuration2.screenHeightDp = configuration4.screenHeightDp;
                            configuration2.smallestScreenWidthDp = configuration4.smallestScreenWidthDp;
                            configuration2.screenLayout = (configuration4.screenLayout & 63) | (configuration.screenLayout & (-64));
                            if (a("densityInherited", 3)) {
                                android.util.Log.i(a, "OUTER_DENSITY inherited-window page " + t.get(thisObject) + " density=" + configuration4.densityDpi + " dp=" + configuration4.screenWidthDp + "x" + configuration4.screenHeightDp);
                                return proceed;
                            }
                            return proceed;
                        }
                        configuration2.setTo(configuration4);
                        return proceed;
                    }
                    obj = proceed;
                }
                if (!a("densityUnsupported", 3)) {
                    return obj;
                }
                android.util.Log.w(a, "OUTER_DENSITY unsupported size-compat page " + t.get(thisObject));
                return obj;
            } catch (java.lang.ReflectiveOperationException e2) {
                e = e2;
                if (!a("densityError", 3)) {
                    return proceed;
                }
                android.util.Log.e(a, "OUTER_DENSITY calculation failed; native configuration kept", e);
                return proceed;
            }
        } catch (java.lang.ReflectiveOperationException e3) {
            e = e3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(java.util.Set<java.lang.String> set) {
        long clearCallingIdentity = android.os.Binder.clearCallingIdentity();
        try {
            android.util.Log.i(a, "RESTART scale-changed apps=" + set + " tasks=" + dev.duo.hookprobe.RootTaskRecompute.b(set));
        } catch (java.lang.Throwable th) {
            try {
                android.util.Log.e(a, "RESTART failed", th);
            } finally {
                android.os.Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(java.lang.String str) {
        java.util.LinkedHashSet linkedHashSet;
        java.util.Set<java.lang.String> set = p;
        synchronized (set) {
            linkedHashSet = new java.util.LinkedHashSet(set);
            set.clear();
        }
        long clearCallingIdentity = android.os.Binder.clearCallingIdentity();
        try {
            int[] a2 = dev.duo.hookprobe.RootTaskRecompute.a((java.util.Set<java.lang.String>) linkedHashSet);
            android.util.Log.i(a, "REFRESH reason=" + str + " requested=" + linkedHashSet.size() + " packages=" + a2[0] + " tasks=" + a2[1]);
        } catch (java.lang.Throwable th) {
            try {
                android.util.Log.w(a, "REFRESH failed reason=" + str + " requested=" + linkedHashSet.size(), th);
            } finally {
                android.os.Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized java.util.concurrent.ScheduledExecutorService e() {
        java.util.concurrent.ScheduledExecutorService scheduledExecutorService;
        synchronized (dev.duo.hookprobe.C0025n.class) {
            if (q == null) {
                q = java.util.concurrent.Executors.newSingleThreadScheduledExecutor(new java.util.concurrent.ThreadFactory() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda7
                    @Override // java.util.concurrent.ThreadFactory
                    public final java.lang.Thread newThread(java.lang.Runnable runnable) {
                        java.lang.Thread a2;
                        a2 = dev.duo.hookprobe.C0025n.a(runnable);
                        return a2;
                    }
                });
            }
            scheduledExecutorService = q;
        }
        return scheduledExecutorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.reflect.Field field3, java.lang.reflect.Method method2, java.lang.reflect.Method method3, java.lang.reflect.Method method4, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object invoke;
        android.view.SurfaceControl surfaceControl;
        java.lang.Object[] array = chain.getArgs().toArray();
        try {
            java.lang.Object invoke2 = method.invoke(chain.getThisObject(), null);
            if (invoke2 != null && field.getInt(invoke2) == 0) {
                java.lang.Object obj = field2.get(invoke2);
                java.lang.Object obj2 = obj == null ? null : field3.get(obj);
                if (obj2 != null && array[1] == method2.invoke(obj, null) && ((a((java.lang.String) t.get(obj2)) || a(obj2)) && (invoke = v.invoke(obj2, null)) != null && ((java.lang.Integer) method3.invoke(invoke, null)).intValue() == 1 && new android.graphics.Rect(0, 0, 1168, 1712).equals(method4.invoke(invoke, null)) && new android.graphics.Rect(0, 0, 963, 1712).equals(method4.invoke(obj2, null)) && (surfaceControl = (android.view.SurfaceControl) method2.invoke(invoke, null)) != null && surfaceControl.isValid())) {
                    array[1] = surfaceControl;
                    array[2] = 2001;
                    if (a("imeLayer", 3)) {
                        android.util.Log.i(a, "IME_LAYER above Duo task " + invoke);
                    }
                }
            }
        } catch (java.lang.ReflectiveOperationException e2) {
            if (a("imeLayerError", 3)) {
                android.util.Log.e(a, "IME layer lookup failed, native anchor kept", e2);
            }
        }
        return chain.proceed(array);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, java.lang.reflect.Field field2, dev.duo.hookprobe.Q q2, java.lang.reflect.Method method, java.lang.reflect.Method method2, java.lang.reflect.Constructor constructor, java.lang.reflect.Field field3, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        android.graphics.Rect a2;
        java.lang.String a3;
        int b2;
        java.lang.Object proceed = chain.proceed();
        try {
            java.lang.Object obj = field.get(chain.getThisObject());
            if (obj != null) {
                java.lang.String str = (java.lang.String) field2.get(obj);
                java.util.Map<java.lang.String, int[]> map = g;
                int[] iArr = map == null ? null : map.get(str);
                java.util.Map<java.lang.String, ?> map2 = h;
                if ((iArr != null || dev.duo.hookprobe.P.c(map2, str)) && (a3 = dev.duo.hookprobe.Q.a((a2 = q2.a(proceed)))) != null) {
                    if (iArr != null) {
                        b2 = iArr[!"inner".equals(a3) ? 1 : 0];
                    } else if ("outer".equals(a3) && a2.width() == 1168 && ((java.lang.Integer) method.invoke(obj, null)).intValue() == 1 && ((java.lang.Integer) method2.invoke(obj, null)).intValue() == 1) {
                        b2 = dev.duo.hookprobe.P.b(map2, str);
                    }
                    if (b2 != 0) {
                        java.lang.Object newInstance = constructor.newInstance(proceed, java.lang.Boolean.FALSE);
                        q2.a(newInstance, (android.util.SparseArray) field3.get(newInstance), a2, b2, "inner".equals(a3));
                        return newInstance;
                    }
                }
            }
        } catch (java.lang.ReflectiveOperationException e2) {
            if (a("serverTopError", 3)) {
                android.util.Log.e(a, "SERVER_TOP failed, native insets kept", e2);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        long longValue = ((java.lang.Long) chain.getArg(0)).longValue();
        if (longValue != b && longValue != c && longValue != d && longValue != e) {
            return chain.proceed();
        }
        java.lang.String str = ((android.content.pm.ApplicationInfo) chain.getThisObject()).packageName;
        boolean z2 = longValue != e && java.lang.Boolean.TRUE.equals(s.get());
        if (!a(str) && !z2) {
            return chain.proceed();
        }
        boolean z3 = longValue != d;
        if (a("compat:" + longValue, 1)) {
            android.util.Log.i(a, "COMPAT " + longValue + "=" + z3 + " first pkg=" + str);
        }
        if (z2 && !a(str) && a("host:" + str, 3)) {
            android.util.Log.i(a, "HOST compat " + longValue + "=" + z3 + " pkg=" + str);
        }
        return java.lang.Boolean.valueOf(z3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object a(java.lang.reflect.Field r3, java.lang.reflect.Field r4, io.github.libxposed.api.XposedInterface.Chain r5) throws java.lang.Throwable {
        /*
            r0 = 0
            java.lang.Object r1 = r5.getThisObject()     // Catch: java.lang.Throwable -> L16
            java.lang.Object r3 = r3.get(r1)     // Catch: java.lang.Throwable -> L16
            if (r3 != 0) goto Lc
            goto L28
        Lc:
            java.lang.Object r4 = r4.get(r3)     // Catch: java.lang.Throwable -> L14
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L14
            r0 = r4
            goto L28
        L14:
            r4 = move-exception
            goto L18
        L16:
            r4 = move-exception
            r3 = r0
        L18:
            java.lang.String r1 = "positionError"
            r2 = 3
            boolean r1 = a(r1, r2)
            if (r1 == 0) goto L28
            java.lang.String r1 = "DuoCompat"
            java.lang.String r2 = "position owner unreadable, native kept"
            android.util.Log.e(r1, r2, r4)
        L28:
            java.lang.ThreadLocal<java.lang.Boolean> r4 = dev.duo.hookprobe.C0025n.r
            java.lang.Object r1 = r4.get()
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r0 = a(r0)
            if (r0 != 0) goto L3f
            boolean r3 = a(r3)
            if (r3 == 0) goto L3d
            goto L3f
        L3d:
            r3 = 0
            goto L40
        L3f:
            r3 = 1
        L40:
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)
            r4.set(r3)
            java.lang.Object r3 = r5.proceed()     // Catch: java.lang.Throwable -> L55
            if (r1 != 0) goto L51
            r4.remove()
            goto L54
        L51:
            r4.set(r1)
        L54:
            return r3
        L55:
            r3 = move-exception
            if (r1 != 0) goto L5e
            java.lang.ThreadLocal<java.lang.Boolean> r4 = dev.duo.hookprobe.C0025n.r
            r4.remove()
            goto L63
        L5e:
            java.lang.ThreadLocal<java.lang.Boolean> r4 = dev.duo.hookprobe.C0025n.r
            r4.set(r1)
        L63:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.C0025n.a(java.lang.reflect.Field, java.lang.reflect.Field, io.github.libxposed.api.XposedInterface$Chain):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object obj;
        try {
            obj = field.get(chain.getThisObject());
        } catch (java.lang.Throwable th) {
            if (a("hostError", 3)) {
                android.util.Log.e(a, "host owner unreadable, native kept", th);
            }
            obj = null;
        }
        java.lang.ThreadLocal<java.lang.Boolean> threadLocal = s;
        java.lang.Boolean bool = threadLocal.get();
        threadLocal.set(java.lang.Boolean.valueOf(a(obj)));
        try {
            java.lang.Object proceed = chain.proceed();
            if (bool == null) {
                threadLocal.remove();
            } else {
                threadLocal.set(bool);
            }
            return proceed;
        } catch (java.lang.Throwable th2) {
            if (bool == null) {
                s.remove();
            } else {
                s.set(bool);
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.reflect.Method method, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        if (java.lang.Boolean.TRUE.equals(proceed)) {
            try {
                java.lang.Object obj = field.get(field2.get(chain.getThisObject()));
                if (a((java.lang.String) t.get(obj)) || a(obj)) {
                    android.graphics.Rect rect = (android.graphics.Rect) method.invoke(obj, null);
                    if (rect.left == 0 && rect.top == 0 && rect.right == 963 && rect.bottom == 1712) {
                        return java.lang.Boolean.FALSE;
                    }
                }
            } catch (java.lang.Throwable th) {
                if (a("dialogError", 3)) {
                    android.util.Log.e(a, "dialog owner unreadable, native parent kept", th);
                }
            }
        }
        return proceed;
    }

    private static boolean a(java.lang.Object obj) {
        if (obj != null && v != null) {
            try {
                java.lang.String str = (java.lang.String) t.get(obj);
                if (!dev.duo.hookprobe.P.i.contains(str) && !a(str)) {
                    android.content.ComponentName componentName = null;
                    java.lang.Object invoke = v.invoke(obj, null);
                    if (invoke != null) {
                        componentName = (android.content.ComponentName) u.get(invoke);
                    }
                    if (componentName != null && !componentName.getPackageName().equals(str)) {
                        if (a(componentName.getPackageName())) {
                            return true;
                        }
                    }
                }
                return false;
            } catch (java.lang.Throwable th) {
                if (a("hostError", 3)) {
                    android.util.Log.e(a, "host task unreadable, native kept", th);
                }
            }
        }
        return false;
    }

    private static boolean a(java.lang.String str, java.lang.String str2) {
        try {
            java.lang.Class.forName("android.os.SystemProperties").getMethod("set", java.lang.String.class, java.lang.String.class).invoke(null, str, str2);
            android.util.Log.i(a, "PROP " + str + "=" + str2);
            return true;
        } catch (java.lang.Throwable th) {
            android.util.Log.e(a, "PROP " + str + " not set", th);
            return false;
        }
    }

    private static boolean a(boolean z2) {
        java.lang.String str;
        try {
            java.lang.reflect.Method method = java.lang.Class.forName("android.os.SystemProperties").getMethod("set", java.lang.String.class, java.lang.String.class);
            if (z2) {
                str = "1";
            } else {
                str = "0";
            }
            method.invoke(null, "debug.duo.master", str);
            android.util.Log.i(a, "MASTER debug.duo.master=" + (z2 ? 1 : 0));
            return true;
        } catch (java.lang.Throwable th) {
            android.util.Log.e(a, "MASTER property not set; the desktop keeps its recorded layout", th);
            return false;
        }
    }

    private static void a(java.util.Set<java.lang.String> set, final java.lang.String str) {
        if (set == null || set.isEmpty()) {
            return;
        }
        java.util.Set<java.lang.String> set2 = p;
        synchronized (set2) {
            boolean isEmpty = set2.isEmpty();
            set2.addAll(set);
            if (isEmpty) {
                e().schedule(new java.lang.Runnable() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.hookprobe.C0025n.d(str);
                    }
                }, 300L, java.util.concurrent.TimeUnit.MILLISECONDS);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Thread a(java.lang.Runnable runnable) {
        java.lang.Thread thread = new java.lang.Thread(runnable, "DuoCompatRefresh");
        thread.setDaemon(true);
        return thread;
    }

    private static void a(java.util.List<java.lang.reflect.Executable> list, java.lang.ClassLoader classLoader, java.lang.String str, java.lang.String str2) throws java.lang.ClassNotFoundException {
        for (java.lang.reflect.Method method : java.lang.Class.forName(str, false, classLoader).getDeclaredMethods()) {
            if (method.getName().equals(str2)) {
                list.add(method);
            }
        }
    }

    private static java.lang.String a(io.github.libxposed.api.XposedModule xposedModule, java.util.List<java.lang.reflect.Executable> list) {
        boolean z2;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        int i2 = 0;
        for (java.lang.reflect.Executable executable : list) {
            try {
                z2 = xposedModule.deoptimize(executable);
            } catch (java.lang.Throwable th) {
                android.util.Log.w(a, "deoptimize threw for " + executable, th);
                z2 = false;
            }
            if (z2) {
                i2++;
            } else {
                sb.append(' ').append(executable.getDeclaringClass().getSimpleName()).append('.').append(executable instanceof java.lang.reflect.Constructor ? "<init>" : executable.getName());
            }
        }
        return i2 + "/" + list.size() + (sb.length() == 0 ? "" : " failed:" + ((java.lang.Object) sb));
    }

    private static java.lang.reflect.Field a(java.lang.Class<?> cls, java.lang.String str) throws java.lang.NoSuchFieldException {
        java.lang.reflect.Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField;
    }

    private static boolean a(java.lang.String str, int i2) {
        java.util.Map<java.lang.String, java.lang.Integer> map = w;
        synchronized (map) {
            java.lang.Integer num = map.get(str);
            int intValue = num == null ? 0 : num.intValue();
            if (intValue >= i2) {
                return false;
            }
            map.put(str, java.lang.Integer.valueOf(intValue + 1));
            return true;
        }
    }
}
