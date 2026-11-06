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

/* renamed from: dev.duo.hookprobe.U */
/* loaded from: classes.dex */
final class C0094U {

    /* renamed from: a */
    private static final String f1497a = "DuoWeChatDensity";

    /* renamed from: b */
    private static final Map<Integer, Integer> f1498b = new HashMap();

    /* renamed from: c */
    private static final Set<Integer> f1499c = new HashSet();

    /* renamed from: d */
    private static final Set<Integer> f1500d = new HashSet();

    /* renamed from: e */
    private static int f1501e = 100;

    /* renamed from: f */
    private static IntSupplier f1502f;

    C0094U() {
    }

    /* renamed from: a */
    static void m1500a(XposedModule xposedModule, ClassLoader classLoader, final IntSupplier intSupplier) {
        try {
            f1502f = intSupplier;
            Method method = Resources.class.getMethod("updateConfiguration", Configuration.class, DisplayMetrics.class);
            Method method2 = Class.forName("android.app.ContextImpl", false, classLoader).getMethod("createConfigurationContext", Configuration.class);
            Method method3 = Configuration.class.getMethod("updateFrom", Configuration.class);
            Method method4 = DisplayMetrics.class.getMethod("setTo", DisplayMetrics.class);
            xposedModule.hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.U$$ExternalSyntheticLambda0
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1497a;
                    m1497a = C0094U.m1497a(intSupplier, chain);
                    return m1497a;
                }
            });
            xposedModule.hook(method2).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.U$$ExternalSyntheticLambda1
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1502b;
                    m1502b = C0094U.m1502b(intSupplier, chain);
                    return m1502b;
                }
            });
            xposedModule.hook(method3).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.U$$ExternalSyntheticLambda2
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1504c;
                    m1504c = C0094U.m1504c(intSupplier, chain);
                    return m1504c;
                }
            });
            xposedModule.hook(method4).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.U$$ExternalSyntheticLambda3
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1506d;
                    m1506d = C0094U.m1506d(intSupplier, chain);
                    return m1506d;
                }
            });
            xposedModule.hook(Activity.class.getDeclaredMethod("onCreate", Bundle.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.U$$ExternalSyntheticLambda4
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1496a;
                    m1496a = C0094U.m1496a(chain);
                    return m1496a;
                }
            });
            xposedModule.hook(Activity.class.getDeclaredMethod("onConfigurationChanged", Configuration.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.U$$ExternalSyntheticLambda5
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1501b;
                    m1501b = C0094U.m1501b(chain);
                    return m1501b;
                }
            });
            xposedModule.hook(Application.class.getDeclaredMethod("onCreate", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.U$$ExternalSyntheticLambda6
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1503c;
                    m1503c = C0094U.m1503c(chain);
                    return m1503c;
                }
            });
            xposedModule.hook(Application.class.getDeclaredMethod("onConfigurationChanged", Configuration.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.U$$ExternalSyntheticLambda7
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1505d;
                    m1505d = C0094U.m1505d(chain);
                    return m1505d;
                }
            });
            Log.i(f1497a, "READY app-initiated density scale (updateConfiguration, createConfigurationContext, updateFrom, setTo, lifecycle)");
        } catch (ReflectiveOperationException e) {
            Log.e(f1497a, "WeChat density NOT installed", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ Object m1502b(IntSupplier intSupplier, XposedInterface.Chain chain) throws Throwable {
        Configuration m1495a = m1495a((Configuration) chain.getArg(0), intSupplier.getAsInt());
        return m1495a == null ? chain.proceed() : chain.proceed(new Object[]{m1495a});
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ Object m1504c(IntSupplier intSupplier, XposedInterface.Chain chain) throws Throwable {
        int m1494a;
        Object proceed = chain.proceed();
        Configuration configuration = (Configuration) chain.getThisObject();
        Configuration configuration2 = (Configuration) chain.getArg(0);
        if (configuration2.densityDpi != 0 && (m1494a = m1494a(configuration.densityDpi, intSupplier.getAsInt())) != 0) {
            float f = m1494a / configuration.densityDpi;
            configuration.densityDpi = m1494a;
            int i = configuration2.screenWidthDp;
            if (i != 0) {
                configuration.screenWidthDp = Math.round(i / f);
            }
            int i2 = configuration2.screenHeightDp;
            if (i2 != 0) {
                configuration.screenHeightDp = Math.round(i2 / f);
            }
            int i3 = configuration2.smallestScreenWidthDp;
            if (i3 != 0) {
                configuration.smallestScreenWidthDp = Math.round(i3 / f);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static /* synthetic */ Object m1506d(IntSupplier intSupplier, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        DisplayMetrics displayMetrics = (DisplayMetrics) chain.getThisObject();
        int m1494a = m1494a(displayMetrics.densityDpi, intSupplier.getAsInt());
        if (m1494a != 0) {
            m1499a(displayMetrics, m1494a);
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ Object m1501b(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        m1498a((Context) chain.getThisObject());
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static /* synthetic */ Object m1505d(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        m1498a((Context) chain.getThisObject());
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ Object m1503c(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        m1498a((Context) chain.getThisObject());
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m1497a(IntSupplier intSupplier, XposedInterface.Chain chain) throws Throwable {
        Configuration configuration = (Configuration) chain.getArg(0);
        DisplayMetrics displayMetrics = (DisplayMetrics) chain.getArg(1);
        Configuration m1495a = m1495a(configuration, intSupplier.getAsInt());
        if (m1495a == null) {
            return chain.proceed();
        }
        if (displayMetrics != null) {
            DisplayMetrics displayMetrics2 = new DisplayMetrics();
            displayMetrics2.setTo(displayMetrics);
            if (displayMetrics2.densityDpi == displayMetrics.densityDpi) {
                m1499a(displayMetrics2, m1495a.densityDpi);
            }
            displayMetrics = displayMetrics2;
        }
        return chain.proceed(new Object[]{m1495a, displayMetrics});
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m1496a(XposedInterface.Chain chain) throws Throwable {
        m1498a((Context) chain.getThisObject());
        return chain.proceed();
    }

    /* renamed from: a */
    private static int m1493a(int i) {
        return Math.round((DisplayMetrics.DENSITY_DEVICE_STABLE * i) / 100.0f);
    }

    /* renamed from: a */
    private static int m1494a(int i, int i2) {
        int i3 = 0;
        if (i == 0) {
            return 0;
        }
        Map<Integer, Integer> map = f1498b;
        synchronized (map) {
            int i4 = f1501e;
            if (i2 != i4) {
                f1499c.add(Integer.valueOf(m1493a(i4)));
                f1501e = i2;
            }
            int m1493a = m1493a(i2);
            Integer num = map.get(Integer.valueOf(i));
            if (i2 >= 100) {
                int i5 = DisplayMetrics.DENSITY_DEVICE_STABLE;
                if (i == i5) {
                    return 0;
                }
                if (num != null) {
                    return num.intValue();
                }
                if (f1499c.contains(Integer.valueOf(i)) && !f1500d.contains(Integer.valueOf(i))) {
                    i3 = i5;
                }
                return i3;
            }
            if (i == m1493a) {
                return 0;
            }
            if (f1499c.contains(Integer.valueOf(i)) && !f1500d.contains(Integer.valueOf(i))) {
                return m1493a;
            }
            int intValue = num == null ? i : num.intValue();
            f1500d.add(Integer.valueOf(intValue));
            int round = Math.round((i2 * intValue) / 100.0f);
            if (round == i) {
                return 0;
            }
            map.put(Integer.valueOf(round), Integer.valueOf(intValue));
            return round;
        }
    }

    /* renamed from: a */
    private static Configuration m1495a(Configuration configuration, int i) {
        int m1494a = m1494a(configuration.densityDpi, i);
        if (m1494a == 0) {
            return null;
        }
        float f = m1494a / configuration.densityDpi;
        Configuration configuration2 = new Configuration(configuration);
        configuration2.densityDpi = m1494a;
        int i2 = configuration.screenWidthDp;
        if (i2 != 0) {
            configuration2.screenWidthDp = Math.round(i2 / f);
        }
        int i3 = configuration.screenHeightDp;
        if (i3 != 0) {
            configuration2.screenHeightDp = Math.round(i3 / f);
        }
        int i4 = configuration.smallestScreenWidthDp;
        if (i4 != 0) {
            configuration2.smallestScreenWidthDp = Math.round(i4 / f);
        }
        return configuration2;
    }

    /* renamed from: a */
    private static void m1499a(DisplayMetrics displayMetrics, int i) {
        float f = i / displayMetrics.densityDpi;
        displayMetrics.density *= f;
        displayMetrics.densityDpi = i;
        displayMetrics.scaledDensity *= f;
    }

    /* renamed from: a */
    private static void m1498a(Context context) {
        int asInt = f1502f.getAsInt();
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
                    int m1494a = m1494a(displayMetrics.densityDpi, asInt);
                    if (m1494a != 0) {
                        m1499a(displayMetrics, m1494a);
                    }
                    Configuration configuration = resources4.getConfiguration();
                    int m1494a2 = m1494a(configuration.densityDpi, asInt);
                    if (m1494a2 != 0) {
                        configuration.densityDpi = m1494a2;
                    }
                }
            }
        }
    }
}
