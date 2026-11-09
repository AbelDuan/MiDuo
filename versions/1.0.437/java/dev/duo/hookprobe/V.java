package dev.duo.hookprobe;

/* loaded from: classes.dex */
final class V {
    private static final java.lang.String a = "DuoWeChatDensity";
    private static final java.util.Map<java.lang.Integer, java.lang.Integer> b = new java.util.HashMap();
    private static final java.util.Set<java.lang.Integer> c = new java.util.HashSet();
    private static final java.util.Set<java.lang.Integer> d = new java.util.HashSet();
    private static int e = 100;
    private static java.util.function.IntSupplier f;

    V() {
    }

    static void a(io.github.libxposed.api.XposedModule xposedModule, java.lang.ClassLoader classLoader, final java.util.function.IntSupplier intSupplier) {
        try {
            f = intSupplier;
            java.lang.reflect.Method method = android.content.res.Resources.class.getMethod("updateConfiguration", android.content.res.Configuration.class, android.util.DisplayMetrics.class);
            java.lang.reflect.Method method2 = java.lang.Class.forName("android.app.ContextImpl", false, classLoader).getMethod("createConfigurationContext", android.content.res.Configuration.class);
            java.lang.reflect.Method method3 = android.content.res.Configuration.class.getMethod("updateFrom", android.content.res.Configuration.class);
            java.lang.reflect.Method method4 = android.util.DisplayMetrics.class.getMethod("setTo", android.util.DisplayMetrics.class);
            xposedModule.hook(method).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.V$$ExternalSyntheticLambda0
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.hookprobe.V.a(intSupplier, chain);
                    return a2;
                }
            });
            xposedModule.hook(method2).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.V$$ExternalSyntheticLambda1
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object b2;
                    b2 = dev.duo.hookprobe.V.b(intSupplier, chain);
                    return b2;
                }
            });
            xposedModule.hook(method3).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.V$$ExternalSyntheticLambda2
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object c2;
                    c2 = dev.duo.hookprobe.V.c(intSupplier, chain);
                    return c2;
                }
            });
            xposedModule.hook(method4).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.V$$ExternalSyntheticLambda3
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object d2;
                    d2 = dev.duo.hookprobe.V.d(intSupplier, chain);
                    return d2;
                }
            });
            xposedModule.hook(android.app.Activity.class.getDeclaredMethod("onCreate", android.os.Bundle.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.V$$ExternalSyntheticLambda4
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.hookprobe.V.a(chain);
                    return a2;
                }
            });
            xposedModule.hook(android.app.Activity.class.getDeclaredMethod("onConfigurationChanged", android.content.res.Configuration.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.V$$ExternalSyntheticLambda5
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object b2;
                    b2 = dev.duo.hookprobe.V.b(chain);
                    return b2;
                }
            });
            xposedModule.hook(android.app.Application.class.getDeclaredMethod("onCreate", null)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.V$$ExternalSyntheticLambda6
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object c2;
                    c2 = dev.duo.hookprobe.V.c(chain);
                    return c2;
                }
            });
            xposedModule.hook(android.app.Application.class.getDeclaredMethod("onConfigurationChanged", android.content.res.Configuration.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.V$$ExternalSyntheticLambda7
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object d2;
                    d2 = dev.duo.hookprobe.V.d(chain);
                    return d2;
                }
            });
            android.util.Log.i(a, "READY app-initiated density scale (updateConfiguration, createConfigurationContext, updateFrom, setTo, lifecycle)");
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e(a, "WeChat density NOT installed", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object b(java.util.function.IntSupplier intSupplier, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        android.content.res.Configuration a2 = a((android.content.res.Configuration) chain.getArg(0), intSupplier.getAsInt());
        return a2 == null ? chain.proceed() : chain.proceed(new java.lang.Object[]{a2});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object c(java.util.function.IntSupplier intSupplier, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        int a2;
        java.lang.Object proceed = chain.proceed();
        android.content.res.Configuration configuration = (android.content.res.Configuration) chain.getThisObject();
        android.content.res.Configuration configuration2 = (android.content.res.Configuration) chain.getArg(0);
        if (configuration2.densityDpi != 0 && (a2 = a(configuration.densityDpi, intSupplier.getAsInt())) != 0) {
            float f2 = a2 / configuration.densityDpi;
            configuration.densityDpi = a2;
            int i = configuration2.screenWidthDp;
            if (i != 0) {
                configuration.screenWidthDp = java.lang.Math.round(i / f2);
            }
            int i2 = configuration2.screenHeightDp;
            if (i2 != 0) {
                configuration.screenHeightDp = java.lang.Math.round(i2 / f2);
            }
            int i3 = configuration2.smallestScreenWidthDp;
            if (i3 != 0) {
                configuration.smallestScreenWidthDp = java.lang.Math.round(i3 / f2);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object d(java.util.function.IntSupplier intSupplier, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        android.util.DisplayMetrics displayMetrics = (android.util.DisplayMetrics) chain.getThisObject();
        int a2 = a(displayMetrics.densityDpi, intSupplier.getAsInt());
        if (a2 != 0) {
            a(displayMetrics, a2);
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object b(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        a((android.content.Context) chain.getThisObject());
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object d(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        a((android.content.Context) chain.getThisObject());
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object c(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        a((android.content.Context) chain.getThisObject());
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(java.util.function.IntSupplier intSupplier, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        android.content.res.Configuration configuration = (android.content.res.Configuration) chain.getArg(0);
        android.util.DisplayMetrics displayMetrics = (android.util.DisplayMetrics) chain.getArg(1);
        android.content.res.Configuration a2 = a(configuration, intSupplier.getAsInt());
        if (a2 == null) {
            return chain.proceed();
        }
        if (displayMetrics != null) {
            android.util.DisplayMetrics displayMetrics2 = new android.util.DisplayMetrics();
            displayMetrics2.setTo(displayMetrics);
            if (displayMetrics2.densityDpi == displayMetrics.densityDpi) {
                a(displayMetrics2, a2.densityDpi);
            }
            displayMetrics = displayMetrics2;
        }
        return chain.proceed(new java.lang.Object[]{a2, displayMetrics});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        a((android.content.Context) chain.getThisObject());
        return chain.proceed();
    }

    private static int a(int i) {
        return java.lang.Math.round((android.util.DisplayMetrics.DENSITY_DEVICE_STABLE * i) / 100.0f);
    }

    private static int a(int i, int i2) {
        int i3 = 0;
        if (i == 0) {
            return 0;
        }
        java.util.Map<java.lang.Integer, java.lang.Integer> map = b;
        synchronized (map) {
            int i4 = e;
            if (i2 != i4) {
                c.add(java.lang.Integer.valueOf(a(i4)));
                e = i2;
            }
            int a2 = a(i2);
            java.lang.Integer num = map.get(java.lang.Integer.valueOf(i));
            if (i2 >= 100) {
                int i5 = android.util.DisplayMetrics.DENSITY_DEVICE_STABLE;
                if (i == i5) {
                    return 0;
                }
                if (num != null) {
                    return num.intValue();
                }
                if (c.contains(java.lang.Integer.valueOf(i)) && !d.contains(java.lang.Integer.valueOf(i))) {
                    i3 = i5;
                }
                return i3;
            }
            if (i == a2) {
                return 0;
            }
            if (c.contains(java.lang.Integer.valueOf(i)) && !d.contains(java.lang.Integer.valueOf(i))) {
                return a2;
            }
            int intValue = num == null ? i : num.intValue();
            d.add(java.lang.Integer.valueOf(intValue));
            int round = java.lang.Math.round((i2 * intValue) / 100.0f);
            if (round == i) {
                return 0;
            }
            map.put(java.lang.Integer.valueOf(round), java.lang.Integer.valueOf(intValue));
            return round;
        }
    }

    private static android.content.res.Configuration a(android.content.res.Configuration configuration, int i) {
        int a2 = a(configuration.densityDpi, i);
        if (a2 == 0) {
            return null;
        }
        float f2 = a2 / configuration.densityDpi;
        android.content.res.Configuration configuration2 = new android.content.res.Configuration(configuration);
        configuration2.densityDpi = a2;
        int i2 = configuration.screenWidthDp;
        if (i2 != 0) {
            configuration2.screenWidthDp = java.lang.Math.round(i2 / f2);
        }
        int i3 = configuration.screenHeightDp;
        if (i3 != 0) {
            configuration2.screenHeightDp = java.lang.Math.round(i3 / f2);
        }
        int i4 = configuration.smallestScreenWidthDp;
        if (i4 != 0) {
            configuration2.smallestScreenWidthDp = java.lang.Math.round(i4 / f2);
        }
        return configuration2;
    }

    private static void a(android.util.DisplayMetrics displayMetrics, int i) {
        float f2 = i / displayMetrics.densityDpi;
        displayMetrics.density *= f2;
        displayMetrics.densityDpi = i;
        displayMetrics.scaledDensity *= f2;
    }

    private static void a(android.content.Context context) {
        int asInt = f.getAsInt();
        android.content.res.Resources system = android.content.res.Resources.getSystem();
        android.content.res.Resources resources = context.getResources();
        android.content.res.Resources resources2 = null;
        android.content.res.Resources resources3 = context.getApplicationContext() == null ? null : context.getApplicationContext().getResources();
        if (context instanceof android.content.ContextWrapper) {
            android.content.ContextWrapper contextWrapper = (android.content.ContextWrapper) context;
            if (contextWrapper.getBaseContext() != null) {
                resources2 = contextWrapper.getBaseContext().getResources();
            }
        }
        android.content.res.Resources[] resourcesArr = {system, resources, resources3, resources2};
        for (int i = 0; i < 4; i++) {
            android.content.res.Resources resources4 = resourcesArr[i];
            if (resources4 != null) {
                boolean z = false;
                for (int i2 = 0; i2 < i; i2++) {
                    z |= resourcesArr[i2] == resources4;
                }
                if (!z) {
                    android.util.DisplayMetrics displayMetrics = resources4.getDisplayMetrics();
                    int a2 = a(displayMetrics.densityDpi, asInt);
                    if (a2 != 0) {
                        a(displayMetrics, a2);
                    }
                    android.content.res.Configuration configuration = resources4.getConfiguration();
                    int a3 = a(configuration.densityDpi, asInt);
                    if (a3 != 0) {
                        configuration.densityDpi = a3;
                    }
                }
            }
        }
    }
}
