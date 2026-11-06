package dev.duo.hookprobe;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.IntSupplier;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class U {
    private static final String a = "DuoWeChatDensity";
    private static final Map<Integer, Integer> b = new HashMap();
    private static final Set<Integer> c = new HashSet();
    private static final Set<Integer> d = new HashSet();
    private static int e = 100;
    private static IntSupplier f;

    U() {
    }

    static void a(XposedModule xposedModule, ClassLoader classLoader, final IntSupplier intSupplier) {
        try {
            f = intSupplier;
            Method method = Resources.class.getMethod("updateConfiguration", Configuration.class, DisplayMetrics.class);
            Method method2 = Class.forName("android.app.ContextImpl", false, classLoader).getMethod("createConfigurationContext", Configuration.class);
            Method method3 = Configuration.class.getMethod("updateFrom", Configuration.class);
            Method method4 = DisplayMetrics.class.getMethod("setTo", DisplayMetrics.class);
            xposedModule.hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.U$$ExternalSyntheticLambda0
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a2;
                    a2 = U.a(intSupplier, chain);
                    return a2;
                }
            });
            xposedModule.hook(method2).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.U$$ExternalSyntheticLambda1
                public final Object intercept(XposedInterface.Chain chain) {
                    Object b2;
                    b2 = U.b(intSupplier, chain);
                    return b2;
                }
            });
            xposedModule.hook(method3).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.U$$ExternalSyntheticLambda2
                public final Object intercept(XposedInterface.Chain chain) {
                    Object c2;
                    c2 = U.c(intSupplier, chain);
                    return c2;
                }
            });
            xposedModule.hook(method4).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.U$$ExternalSyntheticLambda3
                public final Object intercept(XposedInterface.Chain chain) {
                    Object d2;
                    d2 = U.d(intSupplier, chain);
                    return d2;
                }
            });
            xposedModule.hook(Activity.class.getDeclaredMethod("onCreate", Bundle.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.U$$ExternalSyntheticLambda4
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a2;
                    a2 = U.a(chain);
                    return a2;
                }
            });
            xposedModule.hook(Activity.class.getDeclaredMethod("onConfigurationChanged", Configuration.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.U$$ExternalSyntheticLambda5
                public final Object intercept(XposedInterface.Chain chain) {
                    Object b2;
                    b2 = U.b(chain);
                    return b2;
                }
            });
            xposedModule.hook(Application.class.getDeclaredMethod("onCreate", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.U$$ExternalSyntheticLambda6
                public final Object intercept(XposedInterface.Chain chain) {
                    Object c2;
                    c2 = U.c(chain);
                    return c2;
                }
            });
            xposedModule.hook(Application.class.getDeclaredMethod("onConfigurationChanged", Configuration.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.U$$ExternalSyntheticLambda7
                public final Object intercept(XposedInterface.Chain chain) {
                    Object d2;
                    d2 = U.d(chain);
                    return d2;
                }
            });
            Log.i(a, "READY app-initiated density scale (updateConfiguration, createConfigurationContext, updateFrom, setTo, lifecycle)");
        } catch (ReflectiveOperationException e2) {
            Log.e(a, "WeChat density NOT installed", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object b(IntSupplier intSupplier, XposedInterface.Chain chain) throws Throwable {
        Configuration a2 = a((Configuration) chain.getArg(0), intSupplier.getAsInt());
        return a2 == null ? chain.proceed() : chain.proceed(new Object[]{a2});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object c(IntSupplier intSupplier, XposedInterface.Chain chain) throws Throwable {
        int a2;
        Object proceed = chain.proceed();
        Configuration configuration = (Configuration) chain.getThisObject();
        Configuration configuration2 = (Configuration) chain.getArg(0);
        if (configuration2.densityDpi != 0 && (a2 = a(configuration.densityDpi, intSupplier.getAsInt())) != 0) {
            float f2 = a2 / configuration.densityDpi;
            configuration.densityDpi = a2;
            int i = configuration2.screenWidthDp;
            if (i != 0) {
                configuration.screenWidthDp = Math.round(i / f2);
            }
            int i2 = configuration2.screenHeightDp;
            if (i2 != 0) {
                configuration.screenHeightDp = Math.round(i2 / f2);
            }
            int i3 = configuration2.smallestScreenWidthDp;
            if (i3 != 0) {
                configuration.smallestScreenWidthDp = Math.round(i3 / f2);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object d(IntSupplier intSupplier, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        DisplayMetrics displayMetrics = (DisplayMetrics) chain.getThisObject();
        int a2 = a(displayMetrics.densityDpi, intSupplier.getAsInt());
        if (a2 != 0) {
            a(displayMetrics, a2);
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object b(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        a((Context) chain.getThisObject());
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object d(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        a((Context) chain.getThisObject());
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object c(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        a((Context) chain.getThisObject());
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object a(IntSupplier intSupplier, XposedInterface.Chain chain) throws Throwable {
        Configuration configuration = (Configuration) chain.getArg(0);
        DisplayMetrics displayMetrics = (DisplayMetrics) chain.getArg(1);
        Configuration a2 = a(configuration, intSupplier.getAsInt());
        if (a2 == null) {
            return chain.proceed();
        }
        if (displayMetrics != null) {
            DisplayMetrics displayMetrics2 = new DisplayMetrics();
            displayMetrics2.setTo(displayMetrics);
            if (displayMetrics2.densityDpi == displayMetrics.densityDpi) {
                a(displayMetrics2, a2.densityDpi);
            }
            displayMetrics = displayMetrics2;
        }
        return chain.proceed(new Object[]{a2, displayMetrics});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object a(XposedInterface.Chain chain) throws Throwable {
        a((Context) chain.getThisObject());
        return chain.proceed();
    }

    private static int a(int i) {
        return Math.round((DisplayMetrics.DENSITY_DEVICE_STABLE * i) / 100.0f);
    }

    private static int a(int i, int i2) {
        int i3 = 0;
        if (i == 0) {
            return 0;
        }
        Map<Integer, Integer> map = b;
        synchronized (map) {
            int i4 = e;
            if (i2 != i4) {
                c.add(Integer.valueOf(a(i4)));
                e = i2;
            }
            int a2 = a(i2);
            Integer num = map.get(Integer.valueOf(i));
            if (i2 >= 100) {
                int i5 = DisplayMetrics.DENSITY_DEVICE_STABLE;
                if (i == i5) {
                    return 0;
                }
                if (num != null) {
                    return num.intValue();
                }
                if (c.contains(Integer.valueOf(i)) && !d.contains(Integer.valueOf(i))) {
                    i3 = i5;
                }
                return i3;
            }
            if (i == a2) {
                return 0;
            }
            if (c.contains(Integer.valueOf(i)) && !d.contains(Integer.valueOf(i))) {
                return a2;
            }
            int intValue = num == null ? i : num.intValue();
            d.add(Integer.valueOf(intValue));
            int round = Math.round((i2 * intValue) / 100.0f);
            if (round == i) {
                return 0;
            }
            map.put(Integer.valueOf(round), Integer.valueOf(intValue));
            return round;
        }
    }

    private static Configuration a(Configuration configuration, int i) {
        int a2 = a(configuration.densityDpi, i);
        if (a2 == 0) {
            return null;
        }
        float f2 = a2 / configuration.densityDpi;
        Configuration configuration2 = new Configuration(configuration);
        configuration2.densityDpi = a2;
        int i2 = configuration.screenWidthDp;
        if (i2 != 0) {
            configuration2.screenWidthDp = Math.round(i2 / f2);
        }
        int i3 = configuration.screenHeightDp;
        if (i3 != 0) {
            configuration2.screenHeightDp = Math.round(i3 / f2);
        }
        int i4 = configuration.smallestScreenWidthDp;
        if (i4 != 0) {
            configuration2.smallestScreenWidthDp = Math.round(i4 / f2);
        }
        return configuration2;
    }

    private static void a(DisplayMetrics displayMetrics, int i) {
        float f2 = i / displayMetrics.densityDpi;
        displayMetrics.density *= f2;
        displayMetrics.densityDpi = i;
        displayMetrics.scaledDensity *= f2;
    }

    private static void a(Context context) {
        int asInt = f.getAsInt();
        Resources system = Resources.getSystem();
        Resources resources = context.getResources();
        Resources resources2 = null;
        Resources resources3 = context.getApplicationContext() == null ? null : context.getApplicationContext().getResources();
        if (context instanceof ContextWrapper) {
            ContextWrapper contextWrapper = (ContextWrapper) context;
            if (contextWrapper.getBaseContext() != null) {
                resources2 = contextWrapper.getBaseContext().getResources();
            }
        }
        Resources[] resourcesArr = {system, resources, resources3, resources2};
        for (int i = 0; i < 4; i++) {
            Resources resources4 = resourcesArr[i];
            if (resources4 != null) {
                boolean z = false;
                for (int i2 = 0; i2 < i; i2++) {
                    z |= resourcesArr[i2] == resources4;
                }
                if (!z) {
                    DisplayMetrics displayMetrics = resources4.getDisplayMetrics();
                    int a2 = a(displayMetrics.densityDpi, asInt);
                    if (a2 != 0) {
                        a(displayMetrics, a2);
                    }
                    Configuration configuration = resources4.getConfiguration();
                    int a3 = a(configuration.densityDpi, asInt);
                    if (a3 != 0) {
                        configuration.densityDpi = a3;
                    }
                }
            }
        }
    }
}
