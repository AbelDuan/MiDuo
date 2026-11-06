package dev.duo.hookprobe;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.Log;
import android.util.SparseArray;
import android.view.SurfaceControl;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import java.lang.reflect.Constructor;
import java.lang.reflect.Executable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Predicate;

/* renamed from: dev.duo.hookprobe.n */
/* loaded from: classes.dex */
final class SystemServerHooks {

    /* renamed from: a */
    private static final String f1650a = "DuoCompat";

    /* renamed from: b */
    static final long f1651b = 174042980;

    /* renamed from: c */
    static final long f1652c = 180326787;

    /* renamed from: d */
    static final long f1653d = 203647190;

    /* renamed from: e */
    static final long f1654e = 327313645;

    /* renamed from: f */
    private static final String f1655f = "/enabled";

    /* renamed from: g */
    private static volatile Map<String, int[]> f1656g = null;

    /* renamed from: h */
    private static volatile Map<String, ?> f1657h = null;

    /* renamed from: i */
    private static final Set<String> f1658i;

    /* renamed from: j */
    private static String f1659j = null;

    /* renamed from: k */
    private static volatile Map<String, Integer> f1660k = null;

    /* renamed from: l */
    private static Boolean f1661l = null;

    /* renamed from: m */
    private static volatile Map<String, ?> f1662m = null;

    /* renamed from: n */
    private static final AtomicBoolean f1663n;

    /* renamed from: o */
    private static final SharedPreferences.OnSharedPreferenceChangeListener f1664o;

    /* renamed from: p */
    private static final Set<String> f1665p;

    /* renamed from: q */
    private static ScheduledExecutorService f1666q = null;

    /* renamed from: r */
    private static final ThreadLocal<Boolean> f1667r;

    /* renamed from: s */
    private static final ThreadLocal<Boolean> f1668s;

    /* renamed from: t */
    private static Field f1669t = null;

    /* renamed from: u */
    private static Field f1670u = null;

    /* renamed from: v */
    private static Method f1671v = null;

    /* renamed from: w */
    private static final Map<String, Integer> f1672w;

    /* renamed from: x */
    private static final Set<String> f1673x;

    /* renamed from: y */
    private static final String f1674y = "com.tencent.mm";

    /* renamed from: z */
    private static final String f1675z = ".plugin.appbrand.ui.";

    /* renamed from: dev.duo.hookprobe.n$a */
    class a extends ContentObserver {
        a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            if (SystemServerHooks.f1663n.compareAndSet(false, true)) {
                SystemServerHooks.m1757e().schedule(new Runnable() { // from class: dev.duo.hookprobe.n$a$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SystemServerHooks.m1750c();
                    }
                }, 300L, TimeUnit.MILLISECONDS);
            }
        }
    }

    static {
        Map<String, Integer> map = Collections.EMPTY_MAP;
        f1657h = map;
        f1658i = Collections.singleton(f1674y);
        f1660k = map;
        f1663n = new AtomicBoolean();
        f1664o = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda15
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                SystemServerHooks.m1730a(sharedPreferences, str);
            }
        };
        f1665p = new HashSet();
        f1667r = new ThreadLocal<>();
        f1668s = new ThreadLocal<>();
        f1672w = new HashMap();
        f1673x = new HashSet(Arrays.asList("AppBrandUI", "AppBrandUI00", "AppBrandUI01", "AppBrandUI02", "AppBrandUI03", "AppBrandUI04", "AppBrandUI1", "AppBrandUI2", "AppBrandUI3", "AppBrandUI4", "AppBrandUI4MM"));
    }

    private SystemServerHooks() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static /* synthetic */ void m1750c() {
        m1759f();
    }

    /* renamed from: d */
    static void m1754d() {
        m1734a(f1662m, "license");
    }

    /* renamed from: e */
    private static void m1758e(XposedModule xposedModule, ClassLoader classLoader) {
        try {
            if (f1669t == null || f1671v == null) {
                throw new NoSuchMethodException("ActivityRecord task helpers unavailable");
            }
            Class<?> cls = Class.forName("com.android.server.wm.ImeContainer", false, classLoader);
            Class<?> cls2 = Class.forName("com.android.server.wm.WindowContainer", false, classLoader);
            Class<?> cls3 = Class.forName("com.android.server.wm.DisplayContent", false, classLoader);
            Class<?> cls4 = Class.forName("com.android.server.wm.WindowState", false, classLoader);
            Class<?> cls5 = Class.forName("com.android.server.wm.ConfigurationContainer", false, classLoader);
            final Method declaredMethod = cls2.getDeclaredMethod("getDisplayContent", null);
            final Method declaredMethod2 = cls2.getDeclaredMethod("getSurfaceControl", null);
            final Method declaredMethod3 = cls5.getDeclaredMethod("getBounds", null);
            final Method declaredMethod4 = cls5.getDeclaredMethod("getWindowingMode", null);
            Method[] methodArr = {declaredMethod, declaredMethod2, declaredMethod3, declaredMethod4};
            for (int i = 0; i < 4; i++) {
                methodArr[i].setAccessible(true);
            }
            final Field m1728a = m1728a(cls3, "mImeLayeringTarget");
            final Field m1728a2 = m1728a(cls3, "mDisplayId");
            final Field m1728a3 = m1728a(cls4, "mActivityRecord");
            xposedModule.hook(cls.getDeclaredMethod("assignRelativeLayer", SurfaceControl.Transaction.class, SurfaceControl.class, Integer.TYPE, Boolean.TYPE)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda6
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1725a;
                    m1725a = SystemServerHooks.m1725a(declaredMethod, m1728a2, m1728a, m1728a3, declaredMethod2, declaredMethod4, declaredMethod3, chain);
                    return m1725a;
                }
            });
            ArrayList arrayList = new ArrayList();
            m1733a(arrayList, classLoader, "com.android.server.wm.DisplayContent", "assignRelativeLayerForIme");
            Log.i(f1650a, "READY task-relative IME hook, deoptimized " + m1726a(xposedModule, arrayList));
        } catch (ReflectiveOperationException e) {
            Log.e(f1650a, "IME layer hook NOT installed", e);
        }
    }

    /* renamed from: f */
    private static void m1760f(XposedModule xposedModule, ClassLoader classLoader) {
        try {
            xposedModule.hook(Class.forName("com.android.server.wm.MiuiSizeCompatService", false, classLoader).getDeclaredMethod("shouldUseFullscreenBypassInternal", String.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda14
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1742b;
                    m1742b = SystemServerHooks.m1742b(chain);
                    return m1742b;
                }
            });
            ArrayList arrayList = new ArrayList();
            m1733a(arrayList, classLoader, "com.android.server.wm.MiuiSizeCompatService", "isFullscreenBypassActivity");
            m1733a(arrayList, classLoader, "com.android.server.wm.MiuiSizeCompatService", "shouldUseFullscreenBypass");
            m1733a(arrayList, classLoader, "com.android.server.wm.MiuiSizeCompatService", "isActiveFullscreenBypassActivity");
            m1733a(arrayList, classLoader, "com.android.server.wm.MiuiSizeCompatService", "isSizeCompatControlSupportedLocked");
            String[] strArr = {"canUseWideFoldLandFsSuppress", "hasActiveFullscreenBypassActivityInProcess", "isFullscreenBypassOwnerRequestingLandscape", "resolveFixedAspectRatioIfNeeded", "shouldRestorePortraitForLockedWideFoldInnerCompat", "adaptCompatConfiguration", "refreshSizeCompatAfterFullscreenBypass"};
            for (int i = 0; i < 7; i++) {
                m1733a(arrayList, classLoader, "com.android.server.wm.BoundsCompatController", strArr[i]);
            }
            Log.i(f1650a, "READY miniapp hook, deoptimized " + m1726a(xposedModule, arrayList));
        } catch (Throwable th) {
            Log.e(f1650a, "miniapp hook NOT installed, native answers kept", th);
        }
    }

    /* renamed from: g */
    static boolean m1762g() {
        return f1656g != null;
    }

    /* renamed from: h */
    /*
    */
    private static void m1764h(XposedModule xposedModule, ClassLoader classLoader) {
        int i;
        int i2 = 0;
        try {
            Class<?> cls = Class.forName("com.android.server.wm.AppCompatReachabilityOverrides", false, classLoader);
            Method declaredMethod = cls.getDeclaredMethod("getHorizontalPositionMultiplier", Configuration.class);
            final Field m1728a = m1728a(cls, "mActivityRecord");
            final Field m1728a2 = m1728a(Class.forName("com.android.server.wm.ActivityRecord", false, classLoader), "packageName");
            Method declaredMethod2 = Class.forName("com.android.server.wm.AppCompatConfiguration", false, classLoader).getDeclaredMethod("getLetterboxHorizontalPositionMultiplier", Boolean.TYPE);
            try {
                xposedModule.hook(declaredMethod).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda11
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object m1722a;
                        m1722a = SystemServerHooks.m1722a(m1728a, m1728a2, chain);
                        return m1722a;
                    }
                });
                try {
                    xposedModule.hook(declaredMethod2).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda12
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object m1749c;
                            m1749c = SystemServerHooks.m1749c(chain);
                            return m1749c;
                        }
                    });
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(declaredMethod);
                    m1733a(arrayList, classLoader, "com.android.server.wm.ActivityRecord", "updateResolvedBoundsPosition");
                    m1733a(arrayList, classLoader, "com.android.server.wm.AppCompatAspectRatioOverrides", "shouldUseSplitScreenAspectRatio");
                    Log.i(f1650a, "READY position hook, deoptimized " + m1726a(xposedModule, arrayList));
                } catch (Throwable th) {
                    th = th;
                    i2 = 2;
                    i = i2;
                    Log.e(f1650a, i != 0 ? "position hook NOT installed, native position kept" : "position hooks installed=" + i + "/2, deoptimize list incomplete", th);
                }
            } catch (Throwable th2) {
                th = th2;
                i = 1;
                Log.e(f1650a, i != 0 ? "position hook NOT installed, native position kept" : "position hooks installed=" + i + "/2, deoptimize list incomplete", th);
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: i */
    private static void m1766i(XposedModule xposedModule, ClassLoader classLoader) {
        try {
            final InsetsBridge c0072q = new InsetsBridge(classLoader, true);
            Class<?> cls = Class.forName("com.android.server.wm.WindowState", false, classLoader);
            final Field m1728a = m1728a(cls, "mActivityRecord");
            final Field m1728a2 = m1728a(Class.forName("com.android.server.wm.ActivityRecord", false, classLoader), "packageName");
            final Field m1728a3 = m1728a(c0072q.f1196a, "mSources");
            Class<?> cls2 = c0072q.f1196a;
            final Constructor<?> declaredConstructor = cls2.getDeclaredConstructor(cls2, Boolean.TYPE);
            Method declaredMethod = cls.getDeclaredMethod("getCompatInsetsState", null);
            Class<?> cls3 = Class.forName("com.android.server.wm.ConfigurationContainer", false, classLoader);
            final Method declaredMethod2 = cls3.getDeclaredMethod("getWindowingMode", null);
            final Method declaredMethod3 = cls3.getDeclaredMethod("getActivityType", null);
            xposedModule.hook(declaredMethod).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda4
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1721a;
                    m1721a = SystemServerHooks.m1721a(m1728a, m1728a2, c0072q, declaredMethod2, declaredMethod3, declaredConstructor, m1728a3, chain);
                    return m1721a;
                }
            });
            ArrayList arrayList = new ArrayList();
            m1733a(arrayList, classLoader, "com.android.server.wm.WindowState", "fillInsetsState");
            m1733a(arrayList, classLoader, "com.android.server.wm.WindowState", "reportResized");
            m1733a(arrayList, classLoader, "com.android.server.wm.WindowState", "notifyInsetsControlChanged");
            m1733a(arrayList, classLoader, "com.android.server.wm.WindowManagerService", "addWindowInner");
            m1733a(arrayList, classLoader, "com.android.server.wm.WindowManagerService", "relayoutWindow");
            Log.i(f1650a, "READY server top hook, deoptimized " + m1726a(xposedModule, arrayList));
        } catch (Throwable th) {
            Log.e(f1650a, "server top hook NOT installed", th);
        }
    }

    /* renamed from: j */
    private static void m1767j() {
        for (int i = 1; i <= 90; i++) {
            try {
                m1765i().getContentResolver().registerContentObserver(ConfigBroadcastHub.f942d, false, new a(null));
                Log.i(f1650a, "READY app change observer attempt=" + i);
                return;
            } catch (Throwable th) {
                if (i == 1 || i == 90) {
                    Log.w(f1650a, "app change observer not registered, attempt " + i, th);
                }
                SystemClock.sleep(2000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m1730a(SharedPreferences sharedPreferences, String str) {
        if (m1739a("changeLog", 50)) {
            Log.i(f1650a, "CHANGE key=" + str);
        }
        if (str == null || str.endsWith(f1655f) || ConfigKeys.m1248h(str) || ConfigKeys.m1251j(str) || "_global/master".equals(str) || "_global/licenseToken".equals(str) || ConfigKeys.m1262u(str) || ConfigKeys.m1255n(str)) {
            m1734a(sharedPreferences.getAll(), "change " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ boolean m1748b(Map map, String str) {
        return ((Integer) map.getOrDefault(str, 100)).equals(f1660k.getOrDefault(str, 100));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ Object m1749c(XposedInterface.Chain chain) throws Throwable {
        if (!Boolean.TRUE.equals(f1667r.get()) || ((Boolean) chain.getArg(0)).booleanValue()) {
            return chain.proceed();
        }
        if (m1739a("position", 1)) {
            Log.i(f1650a, "POSITION left for a Duo app");
        }
        return Float.valueOf(0.0f);
    }

    /* renamed from: d */
    private static void m1755d(XposedModule xposedModule, ClassLoader classLoader) {
        boolean z = false;
        int i = 0;
        try {
            Class<?> cls = Class.forName("com.android.server.wm.ActivityRecord", false, classLoader);
            f1669t = m1728a(cls, "packageName");
            f1670u = m1728a(Class.forName("com.android.server.wm.Task", false, classLoader), "realActivity");
            Method method = null;
            while (cls != null && method == null) {
                try {
                    for (Method method2 : cls.getDeclaredMethods()) {
                        if (method2.getName().equals("getTask") && method2.getParameterCount() == 0) {
                            method = method2;
                        }
                    }
                    cls = cls.getSuperclass();
                } catch (Throwable th) {
                    th = th;
                    Log.e(f1650a, "host hook installed=" + i + "/2, embedded pages keep their own answer", th);
                    return;
                }
            }
            if (method == null) {
                throw new NoSuchMethodException("ActivityRecord.getTask");
            }
            method.setAccessible(true);
            f1671v = method;
            ArrayList arrayList = new ArrayList();
            String[] strArr = {"com.android.server.wm.AppCompatAspectRatioPolicy", "com.android.server.wm.DesktopAppCompatAspectRatioPolicy"};
            int i2 = 0;
            int i3 = 0;
            while (i2 < 2) {
                try {
                    Class<?> cls2 = Class.forName(strArr[i2], z, classLoader);
                    final Field m1728a = m1728a(cls2, "mActivityRecord");
                    Method[] declaredMethods = cls2.getDeclaredMethods();
                    int length = declaredMethods.length;
                    for (int r15 = 0; r15 < length; r15++) {
                        Method method3 = declaredMethods[r15];
                        String[] strArr2 = strArr;
                        if (method3.getName().equals("getMinAspectRatio")) {
                            xposedModule.hook(method3).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda5
                                public final Object intercept(XposedInterface.Chain chain) {
                                    Object m1720a;
                                    m1720a = SystemServerHooks.m1720a(m1728a, chain);
                                    return m1720a;
                                }
                            });
                            i3++;
                        }
                        strArr = strArr2;
                    }
                    i2++;
                    z = false;
                } catch (Throwable th2) {
                    th = th2;
                    i = i3;
                    Log.e(f1650a, "host hook installed=" + i + "/2, embedded pages keep their own answer", th);
                    return;
                }
            }
            m1733a(arrayList, classLoader, "com.android.server.wm.ActivityRecord", "getMinAspectRatio");
            m1733a(arrayList, classLoader, "com.android.server.wm.AppCompatAspectRatioPolicy", "applyAspectRatio");
            m1733a(arrayList, classLoader, "com.android.server.wm.AppCompatAspectRatioPolicy", "hasFixedAspectRatio");
            m1733a(arrayList, classLoader, "com.android.server.wm.DesktopAppCompatAspectRatioPolicy", "calculateAspectRatio");
            m1733a(arrayList, classLoader, "com.android.server.wm.DesktopAppCompatAspectRatioPolicy", "hasMinAspectRatioOverride");
            Log.i(f1650a, "READY host hook=" + i3 + "/2, deoptimized " + m1726a(xposedModule, arrayList));
        } catch (Throwable th3) {
            th = th3;
            i = 0;
        }
    }

    /* renamed from: g */
    private static void m1761g(XposedModule xposedModule, ClassLoader classLoader) {
        try {
            if (f1669t == null || f1671v == null) {
                throw new NoSuchMethodException("ActivityRecord task helpers unavailable");
            }
            Class<?> cls = Class.forName("com.android.server.wm.ActivityRecord", false, classLoader);
            Class<?> cls2 = Class.forName("com.android.server.wm.ConfigurationContainer", false, classLoader);
            Class<?> cls3 = Class.forName("com.android.server.wm.DisplayContent", false, classLoader);
            Class<?> cls4 = Class.forName("com.android.server.wm.TaskFragment", false, classLoader);
            Class<?> cls5 = Class.forName("com.android.server.wm.AppCompatSandboxingPolicy$ConfigOverrideHint", false, classLoader);
            final Field m1728a = m1728a(Class.forName("com.android.server.wm.WindowContainer", false, classLoader), "mDisplayContent");
            final Field m1728a2 = m1728a(cls3, "mInitialDisplayWidth");
            final Field m1728a3 = m1728a(cls3, "mInitialDisplayHeight");
            final Field m1728a4 = m1728a(cls3, "mDisplayId");
            final Field m1728a5 = m1728a((Class<?>) Configuration.class, "windowConfiguration");
            Method declaredMethod = cls.getDeclaredMethod("resolveOverrideConfiguration", Configuration.class);
            final Method declaredMethod2 = cls2.getDeclaredMethod("getResolvedOverrideConfiguration", null);
            final Method declaredMethod3 = cls2.getDeclaredMethod("getWindowingMode", null);
            final Method declaredMethod4 = cls2.getDeclaredMethod("getActivityType", null);
            final Method declaredMethod5 = cls.getDeclaredMethod("getAppCompatDisplayInsets", null);
            final Method declaredMethod6 = cls.getDeclaredMethod("shouldCreateAppCompatDisplayInsets", null);
            final Method declaredMethod7 = cls.getDeclaredMethod("inMiuiSizeCompatMode", null);
            final Method declaredMethod8 = cls4.getDeclaredMethod("computeConfigResourceOverrides", Configuration.class, Configuration.class, cls5);
            Method[] methodArr = {declaredMethod2, declaredMethod3, declaredMethod4, declaredMethod5, declaredMethod6, declaredMethod7, declaredMethod8};
            for (int i = 0; i < 7; i++) {
                methodArr[i].setAccessible(true);
            }
            xposedModule.hook(declaredMethod).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda0
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1723a;
                    m1723a = SystemServerHooks.m1723a(m1728a, m1728a4, m1728a2, m1728a3, declaredMethod3, declaredMethod4, declaredMethod5, declaredMethod6, declaredMethod7, declaredMethod2, declaredMethod8, m1728a5, chain);
                    return m1723a;
                }
            });
            ArrayList arrayList = new ArrayList();
            m1733a(arrayList, classLoader, "com.android.server.wm.ConfigurationContainer", "onConfigurationChanged");
            Log.i(f1650a, "READY outer Activity density (user scale), native size-compat snapshots excluded, deoptimized " + m1726a(xposedModule, arrayList));
        } catch (ReflectiveOperationException e) {
            Log.e(f1650a, "OUTER_DENSITY NOT installed", e);
        }
    }

    /* renamed from: b */
    private static void m1745b(XposedModule xposedModule, ClassLoader classLoader) {
        String str = null;
        try {
            Class cls = Long.TYPE;
            str = "compat";
            xposedModule.hook(ApplicationInfo.class.getDeclaredMethod("isChangeEnabled", cls)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda2
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1719a;
                    m1719a = SystemServerHooks.m1719a(chain);
                    return m1719a;
                }
            });
            ArrayList arrayList = new ArrayList();
            arrayList.add(ActivityInfo.class.getDeclaredMethod("isChangeEnabled", cls));
            m1733a(arrayList, classLoader, "com.android.server.wm.AppCompatUtils", "isChangeEnabled");
            m1733a(arrayList, classLoader, "com.android.server.wm.AppCompatAspectRatioOverrides", "shouldOverrideMinAspectRatio");
            m1733a(arrayList, classLoader, "com.android.server.wm.AppCompatAspectRatioPolicy", "getMinAspectRatio");
            m1733a(arrayList, classLoader, "com.android.server.wm.DesktopAppCompatAspectRatioPolicy", "getMinAspectRatio");
            m1733a(arrayList, classLoader, "com.android.server.wm.ConfigurationContainer", "applySizeOverrideIfNeeded");
            Collections.addAll(arrayList, Class.forName("com.android.server.wm.AppCompatSandboxingPolicy", false, classLoader).getDeclaredConstructors());
            Log.i(f1650a, "READY compat hook, deoptimized " + m1726a(xposedModule, arrayList));
        } catch (Throwable th) {
            Log.e(f1650a, "compat hook " + (str == null ? "NOT installed, native answers kept" : "installed but deoptimize list incomplete"), th);
        }
    }

    /* renamed from: a */
    private static void m1734a(Map<String, ?> map, String str) {
        boolean m1753c;
        HashSet hashSet;
        HashSet hashSet2;
        synchronized (SystemServerHooks.class) {
            Map<String, int[]> map2 = f1656g;
            final Map<String, Integer> map3 = f1660k;
            m1753c = m1753c(map, str);
            Map<String, int[]> map4 = f1656g;
            hashSet = new HashSet(map4 == null ? Collections.EMPTY_SET : map4.keySet());
            if (map2 != null) {
                HashSet<String> hashSet3 = new HashSet(hashSet);
                hashSet3.retainAll(map2.keySet());
                hashSet.addAll(map2.keySet());
                if (!m1753c) {
                    hashSet.removeAll(hashSet3);
                    for (String str2 : hashSet3) {
                        if ((map2.get(str2)[0] == 0) != (map4.get(str2)[0] == 0)) {
                            hashSet.add(str2);
                        }
                    }
                }
            }
            hashSet2 = new HashSet(map3.keySet());
            hashSet2.addAll(f1660k.keySet());
            hashSet2.removeIf(new Predicate() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda8
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m1748b;
                    m1748b = SystemServerHooks.m1748b(map3, (String) obj);
                    return m1748b;
                }
            });
            hashSet.addAll(hashSet2);
        }
        if (m1753c) {
            str = "master";
        } else if (!hashSet2.isEmpty()) {
            str = "outerScale";
        }
        m1736a(hashSet, str);
        final HashSet hashSet4 = new HashSet(hashSet2);
        hashSet4.retainAll(f1658i);
        if (!hashSet4.isEmpty()) {
            m1757e().schedule(new Runnable() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    SystemServerHooks.m1746b((Set<String>) hashSet4);
                }
            }, 1200L, TimeUnit.MILLISECONDS);
        }
        if (m1753c) {
            m1757e().execute(new Runnable() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    SystemServerHooks.m1763h();
                }
            });
        }
    }

    /* renamed from: c */
    private static void m1751c(XposedModule xposedModule, ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.server.wm.WindowStateStubImpl", false, classLoader);
            final Field m1728a = m1728a(cls, "mWindowState");
            final Field m1728a2 = m1728a(Class.forName("com.android.server.wm.WindowState", false, classLoader), "mActivityRecord");
            final Method method = Class.forName("com.android.server.wm.ActivityRecord", false, classLoader).getMethod("getBounds", null);
            method.setAccessible(true);
            xposedModule.hook(cls.getDeclaredMethod("isInSpecificEmbeddedSplitDialog", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda3
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1724a;
                    m1724a = SystemServerHooks.m1724a(m1728a2, m1728a, method, chain);
                    return m1724a;
                }
            });
            ArrayList arrayList = new ArrayList();
            m1733a(arrayList, classLoader, "com.android.server.wm.WindowManagerService", "addWindowInner");
            m1733a(arrayList, classLoader, "com.android.server.wm.DisplayContent", "shouldImeAttachedToApp");
            Log.i(f1650a, "READY embedded dialog hook, deoptimized " + m1726a(xposedModule, arrayList));
        } catch (Throwable th) {
            Log.e(f1650a, "embedded dialog hook incomplete, check hook and deoptimize state", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static void m1759f() {
        f1663n.set(false);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            ContentProviderClient acquireUnstableContentProviderClient = m1765i().getContentResolver().acquireUnstableContentProviderClient("dev.duo.hookprobe.config");
            Bundle bundle = null;
            if (acquireUnstableContentProviderClient != null) {
                try {
                    bundle = acquireUnstableContentProviderClient.call("duoState", null, null);
                } finally {
                }
            }
            if (bundle != null && !bundle.containsKey("error")) {
                HashMap hashMap = new HashMap();
                for (String str : bundle.keySet()) {
                    hashMap.put(str, bundle.get(str));
                }
                m1734a(hashMap, "app notified");
                if (acquireUnstableContentProviderClient != null) {
                    acquireUnstableContentProviderClient.close();
                }
                return;
            }
            Log.w(f1650a, "duoState unavailable: " + (bundle == null ? "no provider" : bundle.getString("error")));
            if (acquireUnstableContentProviderClient != null) {
                acquireUnstableContentProviderClient.close();
            }
        } catch (Throwable th) {
            try {
                Log.w(f1650a, "duoState failed", th);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* renamed from: c */
    /*
    */
    private static synchronized boolean m1753c(Map<String, ?> map, String str) {
        boolean z;
        Boolean bool;
        String valueOf;
        synchronized (SystemServerHooks.class) {
            boolean z2 = false;
            if (map == null) {
                return false;
            }
            f1662m = map;
            HashSet hashSet = new HashSet();
            for (Map.Entry<String, ?> entry : map.entrySet()) {
                String key = entry.getKey();
                if (!key.startsWith("_") && key.endsWith(f1655f) && Boolean.TRUE.equals(entry.getValue())) {
                    hashSet.add(key.substring(0, key.length() - 8));
                }
            }
            hashSet.removeAll(ConfigKeys.f1171i);
            boolean m1220a = ConfigKeys.m1220a(map);
            boolean z3 = m1220a && LicenseState.m1876a((String) map.get("_global/licenseToken"), m1220a);
            Boolean bool2 = f1661l;
            if (bool2 != null && !bool2.booleanValue()) {
                z = false;
                bool = f1661l;
                if (bool != null || bool.booleanValue() != z3) {
                    if (!m1741a(z3)) {
                        f1661l = Boolean.valueOf(z3);
                    } else {
                        Log.e(f1650a, "MASTER change to " + z3 + " NOT applied reason=" + str);
                        z3 = z;
                    }
                }
                if (f1656g != null && z3 != z) {
                    z2 = true;
                }
                Map<String, int[]> map2 = f1656g;
                Set set = !z3 ? hashSet : Collections.EMPTY_SET;
                f1656g = ConfigKeys.m1216a(map, (Set<String>) set);
                f1657h = !z3 ? map : Collections.EMPTY_MAP;
                f1660k = !z3 ? ConfigKeys.m1228b(map, (Set<String>) set) : Collections.EMPTY_MAP;
                Integer num = f1660k.get(f1674y);
                valueOf = num != null ? "" : String.valueOf(num);
                if (!valueOf.equals(f1659j) && m1740a("debug.duo.scale.wx", valueOf)) {
                    f1659j = valueOf;
                }
                Log.i(f1650a, "CONFIG duoApps=" + f1656g.size() + " enabled=" + hashSet.size() + " master=" + z3 + (map2 != null ? "" : " before=" + map2.size()) + " reason=" + str);
                return z2;
            }
            z = true;
            bool = f1661l;
            if (bool != null) {
            }
            if (!m1741a(z3)) {
            }
            if (f1656g != null) {
                z2 = true;
            }
            Map<String, int[]> map22 = f1656g;
            if (!z3) {
            }
            f1656g = ConfigKeys.m1216a(map, (Set<String>) set);
            f1657h = !z3 ? map : Collections.EMPTY_MAP;
            f1660k = !z3 ? ConfigKeys.m1228b(map, (Set<String>) set) : Collections.EMPTY_MAP;
            Integer num2 = f1660k.get(f1674y);
            if (num2 != null) {
            }
            if (!valueOf.equals(f1659j)) {
                f1659j = valueOf;
            }
            Log.i(f1650a, "CONFIG duoApps=" + f1656g.size() + " enabled=" + hashSet.size() + " master=" + z3 + (map22 != null ? "" : " before=" + map22.size()) + " reason=" + str);
            return z2;
        }
    }

    /* renamed from: b */
    private static boolean m1747b(String str) {
        if (str != null && str.startsWith("com.tencent.mm/")) {
            String substring = str.substring(15);
            if (substring.startsWith("com.tencent.mm.")) {
                substring = substring.substring(14);
            }
            if (substring.startsWith(f1675z) && f1673x.contains(substring.substring(20))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    static boolean m1738a(String str) {
        Map<String, int[]> map = f1656g;
        return (map == null || str == null || !map.containsKey(str)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ Object m1742b(XposedInterface.Chain chain) throws Throwable {
        String str = (String) chain.getArg(0);
        if (m1747b(str) && m1738a(f1674y)) {
            if (m1739a("miniApp", 1)) {
                Log.i(f1650a, "MINIAPP fullscreen bypass first " + str);
            }
            return Boolean.TRUE;
        }
        return chain.proceed();
    }

    /* renamed from: a */
    static void m1732a(final XposedModule xposedModule, ClassLoader classLoader) {
        m1745b(xposedModule, classLoader);
        m1755d(xposedModule, classLoader);
        m1761g(xposedModule, classLoader);
        m1751c(xposedModule, classLoader);
        m1764h(xposedModule, classLoader);
        m1760f(xposedModule, classLoader);
        m1766i(xposedModule, classLoader);
        m1758e(xposedModule, classLoader);
        Thread thread = new Thread(new Runnable() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                SystemServerHooks.m1744b(xposedModule);
            }
        }, "DuoCompatConfig");
        thread.setDaemon(true);
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public static void m1763h() {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Object invoke = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", null).invoke(null, null);
            Context context = (Context) invoke.getClass().getMethod("getSystemContext", null).invoke(invoke, null);
            ActivityManager.class.getMethod("forceStopPackage", String.class).invoke((ActivityManager) context.getSystemService(ActivityManager.class), "com.miui.home");
            Context.class.getMethod("startActivityAsUser", Intent.class, UserHandle.class).invoke(context, new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").addFlags(268435456), UserHandle.class.getField("CURRENT").get(null));
            Log.i(f1650a, "HOME reopened for the master switch");
        } catch (Throwable th) {
            try {
                Log.e(f1650a, "HOME reopen failed; the desktop switches at its next start", th);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m1744b(XposedModule xposedModule) {
        for (int i = 1; i <= 90; i++) {
            try {
                SharedPreferences remotePreferences = xposedModule.getRemotePreferences("duo_top");
                LicenseState.m1872a(remotePreferences);
                remotePreferences.registerOnSharedPreferenceChangeListener(f1664o);
                m1753c(remotePreferences.getAll(), "initial attempt=" + i);
                HashSet hashSet = new HashSet(f1656g.keySet());
                hashSet.addAll(f1660k.keySet());
                m1736a(hashSet, "config ready");
                m1767j();
                return;
            } catch (Throwable th) {
                if (i == 1 || i == 90) {
                    Log.w(f1650a, "config not readable, attempt " + i, th);
                }
                SystemClock.sleep(2000L);
            }
        }
        Log.e(f1650a, "config unreadable, native answers kept");
    }

    /* renamed from: i */
    private static Context m1765i() throws ReflectiveOperationException {
        Object invoke = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", null).invoke(null, null);
        return (Context) invoke.getClass().getMethod("getSystemContext", null).invoke(invoke, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m1723a(Field field, Field field2, Field field3, Field field4, Method method, Method method2, Method method3, Method method4, Method method5, Method method6, Method method7, Field field5, XposedInterface.Chain chain) throws Throwable {
        Object obj;
        Object invoke;
        Object proceed = chain.proceed();
        try {
            Object thisObject = chain.getThisObject();
            Integer num = f1660k.get((String) f1669t.get(thisObject));
            if (num != null && num.intValue() < 100 && (obj = field.get(thisObject)) != null && field2.getInt(obj) == 0 && DimensionConst.m850a(field3.getInt(obj), field4.getInt(obj)) && (invoke = f1671v.invoke(thisObject, null)) != null && ((Integer) method.invoke(invoke, null)).intValue() == 1 && ((Integer) method2.invoke(invoke, null)).intValue() == 1) {
                if (method3.invoke(thisObject, null) == null && !((Boolean) method4.invoke(thisObject, null)).booleanValue() && !((Boolean) method5.invoke(thisObject, null)).booleanValue()) {
                    Configuration configuration = (Configuration) chain.getArg(0);
                    Configuration configuration2 = (Configuration) method6.invoke(thisObject, null);
                    int i = configuration2.densityDpi;
                    if (i == 0) {
                        i = configuration.densityDpi;
                    }
                    int round = Math.round((num.intValue() * i) / 100.0f);
                    Configuration configuration3 = new Configuration(configuration);
                    float f = round;
                    float f2 = configuration.densityDpi / f;
                    configuration3.densityDpi = round;
                    configuration3.screenWidthDp = Math.round(configuration.screenWidthDp * f2);
                    configuration3.screenHeightDp = Math.round(configuration.screenHeightDp * f2);
                    configuration3.smallestScreenWidthDp = Math.round(configuration.smallestScreenWidthDp * f2);
                    Configuration configuration4 = new Configuration(configuration2);
                    configuration4.densityDpi = round;
                    configuration4.screenLayout = 0;
                    configuration4.screenHeightDp = 0;
                    configuration4.screenWidthDp = 0;
                    int i2 = configuration2.smallestScreenWidthDp;
                    if (i2 == 0) {
                        i2 = configuration.smallestScreenWidthDp;
                    }
                    configuration4.smallestScreenWidthDp = Math.round((i2 * i) / f);
                    method7.invoke(invoke, configuration4, configuration3, null);
                    if (!field5.get(configuration2).equals(field5.get(configuration4))) {
                        if (m1739a("densityGeometry", 3)) {
                            Log.e(f1650a, "OUTER_DENSITY rejected: native resource computation changed window geometry");
                            return proceed;
                        }
                    } else {
                        configuration2.setTo(configuration4);
                        return proceed;
                    }
                }
                if (m1739a("densityUnsupported", 3)) {
                    Log.w(f1650a, "OUTER_DENSITY unsupported size-compat page " + f1669t.get(thisObject));
                    return proceed;
                }
            }
        } catch (ReflectiveOperationException e) {
            if (m1739a("densityError", 3)) {
                Log.e(f1650a, "OUTER_DENSITY calculation failed; native configuration kept", e);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m1746b(Set<String> set) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Log.i(f1650a, "RESTART scale-changed apps=" + set + " tasks=" + RootTaskRecompute.m1383b(set));
        } catch (Throwable th) {
            try {
                Log.e(f1650a, "RESTART failed", th);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static void m1756d(String str) {
        LinkedHashSet linkedHashSet;
        Set<String> set = f1665p;
        synchronized (set) {
            linkedHashSet = new LinkedHashSet(set);
            set.clear();
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            int[] m1382a = RootTaskRecompute.m1382a((Set<String>) linkedHashSet);
            Log.i(f1650a, "REFRESH reason=" + str + " requested=" + linkedHashSet.size() + " packages=" + m1382a[0] + " tasks=" + m1382a[1]);
        } catch (Throwable th) {
            try {
                Log.w(f1650a, "REFRESH failed reason=" + str + " requested=" + linkedHashSet.size(), th);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static synchronized ScheduledExecutorService m1757e() {
        ScheduledExecutorService scheduledExecutorService;
        synchronized (SystemServerHooks.class) {
            if (f1666q == null) {
                f1666q = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda7
                    @Override // java.util.concurrent.ThreadFactory
                    public final Thread newThread(Runnable runnable) {
                        Thread m1727a;
                        m1727a = SystemServerHooks.m1727a(runnable);
                        return m1727a;
                    }
                });
            }
            scheduledExecutorService = f1666q;
        }
        return scheduledExecutorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m1725a(Method method, Field field, Field field2, Field field3, Method method2, Method method3, Method method4, XposedInterface.Chain chain) throws Throwable {
        Object invoke;
        SurfaceControl surfaceControl;
        Object[] array = chain.getArgs().toArray();
        try {
            Object invoke2 = method.invoke(chain.getThisObject(), null);
            if (invoke2 != null && field.getInt(invoke2) == 0) {
                Object obj = field2.get(invoke2);
                Object obj2 = obj == null ? null : field3.get(obj);
                if (obj2 != null && array[1] == method2.invoke(obj, null) && ((m1738a((String) f1669t.get(obj2)) || m1737a(obj2)) && (invoke = f1671v.invoke(obj2, null)) != null && ((Integer) method3.invoke(invoke, null)).intValue() == 1 && new Rect(0, 0, 1168, 1712).equals(method4.invoke(invoke, null)) && new Rect(0, 0, 963, 1712).equals(method4.invoke(obj2, null)) && (surfaceControl = (SurfaceControl) method2.invoke(invoke, null)) != null && surfaceControl.isValid())) {
                    array[1] = surfaceControl;
                    array[2] = 2001;
                    if (m1739a("imeLayer", 3)) {
                        Log.i(f1650a, "IME_LAYER above Duo task " + invoke);
                    }
                }
            }
        } catch (ReflectiveOperationException e) {
            if (m1739a("imeLayerError", 3)) {
                Log.e(f1650a, "IME layer lookup failed, native anchor kept", e);
            }
        }
        return chain.proceed(array);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m1721a(Field field, Field field2, InsetsBridge c0072q, Method method, Method method2, Constructor constructor, Field field3, XposedInterface.Chain chain) throws Throwable {
        Rect m1264a;
        String m1263a;
        int m1226b;
        Object proceed = chain.proceed();
        try {
            Object obj = field.get(chain.getThisObject());
            if (obj != null) {
                String str = (String) field2.get(obj);
                Map<String, int[]> map = f1656g;
                int[] iArr = map == null ? null : map.get(str);
                Map<String, ?> map2 = f1657h;
                if ((iArr != null || ConfigKeys.m1234c(map2, str)) && (m1263a = InsetsBridge.m1263a((m1264a = c0072q.m1264a(proceed)))) != null) {
                    if (iArr != null) {
                        m1226b = iArr[!"inner".equals(m1263a) ? 1 : 0];
                    } else if ("outer".equals(m1263a) && m1264a.width() == 1168 && ((Integer) method.invoke(obj, null)).intValue() == 1 && ((Integer) method2.invoke(obj, null)).intValue() == 1) {
                        m1226b = ConfigKeys.m1226b(map2, str);
                    }
                    if (m1226b != 0) {
                        Object newInstance = constructor.newInstance(proceed, Boolean.FALSE);
                        c0072q.m1265a(newInstance, (SparseArray) field3.get(newInstance), m1264a, m1226b, "inner".equals(m1263a));
                        return newInstance;
                    }
                }
            }
        } catch (ReflectiveOperationException e) {
            if (m1739a("serverTopError", 3)) {
                Log.e(f1650a, "SERVER_TOP failed, native insets kept", e);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m1719a(XposedInterface.Chain chain) throws Throwable {
        long longValue = ((Long) chain.getArg(0)).longValue();
        if (longValue != f1651b && longValue != f1652c && longValue != f1653d && longValue != f1654e) {
            return chain.proceed();
        }
        String str = ((ApplicationInfo) chain.getThisObject()).packageName;
        boolean z = longValue != f1654e && Boolean.TRUE.equals(f1668s.get());
        if (!m1738a(str) && !z) {
            return chain.proceed();
        }
        boolean z2 = longValue != f1653d;
        if (m1739a("compat:" + longValue, 1)) {
            Log.i(f1650a, "COMPAT " + longValue + "=" + z2 + " first pkg=" + str);
        }
        if (z && !m1738a(str) && m1739a("host:" + str, 3)) {
            Log.i(f1650a, "HOST compat " + longValue + "=" + z2 + " pkg=" + str);
        }
        return Boolean.valueOf(z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    /*
    */
    public static /* synthetic */ Object m1722a(Field field, Field field2, XposedInterface.Chain chain) throws Throwable {
        Object obj;
        Boolean bool;
        String str = null;
        try {
            obj = field.get(chain.getThisObject());
            if (obj != null) {
                try {
                    str = (String) field2.get(obj);
                } catch (Throwable th) {
                    th = th;
                    if (m1739a("positionError", 3)) {
                        Log.e(f1650a, "position owner unreadable, native kept", th);
                    }
                    ThreadLocal<Boolean> threadLocal = f1667r;
                    bool = threadLocal.get();
                    threadLocal.set(Boolean.valueOf(!m1738a(str) || m1737a(obj)));
                    Object proceed = chain.proceed();
                    if (bool != null) {
                    }
                    return proceed;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            obj = null;
        }
        ThreadLocal<Boolean> threadLocal2 = f1667r;
        bool = threadLocal2.get();
        threadLocal2.set(Boolean.valueOf(!m1738a(str) || m1737a(obj)));
        try {
            Object proceed2 = chain.proceed();
            if (bool != null) {
                threadLocal2.remove();
            } else {
                threadLocal2.set(bool);
            }
            return proceed2;
        } catch (Throwable th3) {
            if (bool == null) {
                f1667r.remove();
            } else {
                f1667r.set(bool);
            }
            throw th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m1720a(Field field, XposedInterface.Chain chain) throws Throwable {
        Object obj;
        try {
            obj = field.get(chain.getThisObject());
        } catch (Throwable th) {
            if (m1739a("hostError", 3)) {
                Log.e(f1650a, "host owner unreadable, native kept", th);
            }
            obj = null;
        }
        ThreadLocal<Boolean> threadLocal = f1668s;
        Boolean bool = threadLocal.get();
        threadLocal.set(Boolean.valueOf(m1737a(obj)));
        try {
            Object proceed = chain.proceed();
            if (bool == null) {
                threadLocal.remove();
            } else {
                threadLocal.set(bool);
            }
            return proceed;
        } catch (Throwable th2) {
            if (bool == null) {
                f1668s.remove();
            } else {
                f1668s.set(bool);
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m1724a(Field field, Field field2, Method method, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (Boolean.TRUE.equals(proceed)) {
            try {
                Object obj = field.get(field2.get(chain.getThisObject()));
                if (m1738a((String) f1669t.get(obj)) || m1737a(obj)) {
                    Rect rect = (Rect) method.invoke(obj, null);
                    if (rect.left == 0 && rect.top == 0 && rect.right == 963 && rect.bottom == 1712) {
                        return Boolean.FALSE;
                    }
                }
            } catch (Throwable th) {
                if (m1739a("dialogError", 3)) {
                    Log.e(f1650a, "dialog owner unreadable, native parent kept", th);
                }
            }
        }
        return proceed;
    }

    /* renamed from: a */
    private static boolean m1737a(Object obj) {
        if (obj != null && f1671v != null) {
            try {
                String str = (String) f1669t.get(obj);
                if (!ConfigKeys.f1171i.contains(str) && !m1738a(str)) {
                    ComponentName componentName = null;
                    Object invoke = f1671v.invoke(obj, null);
                    if (invoke != null) {
                        componentName = (ComponentName) f1670u.get(invoke);
                    }
                    if (componentName != null && !componentName.getPackageName().equals(str)) {
                        if (m1738a(componentName.getPackageName())) {
                            return true;
                        }
                    }
                }
                return false;
            } catch (Throwable th) {
                if (m1739a("hostError", 3)) {
                    Log.e(f1650a, "host task unreadable, native kept", th);
                }
            }
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m1740a(String str, String str2) {
        try {
            Class.forName("android.os.SystemProperties").getMethod("set", String.class, String.class).invoke(null, str, str2);
            Log.i(f1650a, "PROP " + str + "=" + str2);
            return true;
        } catch (Throwable th) {
            Log.e(f1650a, "PROP " + str + " not set", th);
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m1741a(boolean z) {
        String str;
        try {
            Method method = Class.forName("android.os.SystemProperties").getMethod("set", String.class, String.class);
            if (z) {
                str = "1";
            } else {
                str = "0";
            }
            method.invoke(null, "debug.duo.master", str);
            Log.i(f1650a, "MASTER debug.duo.master=" + (z ? 1 : 0));
            return true;
        } catch (Throwable th) {
            Log.e(f1650a, "MASTER property not set; the desktop keeps its recorded layout", th);
            return false;
        }
    }

    /* renamed from: a */
    private static void m1736a(Set<String> set, final String str) {
        if (set == null || set.isEmpty()) {
            return;
        }
        Set<String> set2 = f1665p;
        synchronized (set2) {
            boolean isEmpty = set2.isEmpty();
            set2.addAll(set);
            if (isEmpty) {
                m1757e().schedule(new Runnable() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SystemServerHooks.m1756d(str);
                    }
                }, 300L, TimeUnit.MILLISECONDS);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Thread m1727a(Runnable runnable) {
        Thread thread = new Thread(runnable, "DuoCompatRefresh");
        thread.setDaemon(true);
        return thread;
    }

    /* renamed from: a */
    private static void m1733a(List<Executable> list, ClassLoader classLoader, String str, String str2) throws ClassNotFoundException {
        for (Method method : Class.forName(str, false, classLoader).getDeclaredMethods()) {
            if (method.getName().equals(str2)) {
                list.add(method);
            }
        }
    }

    /* renamed from: a */
    private static String m1726a(XposedModule xposedModule, List<Executable> list) {
        boolean z;
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (Executable executable : list) {
            try {
                z = xposedModule.deoptimize(executable);
            } catch (Throwable th) {
                Log.w(f1650a, "deoptimize threw for " + executable, th);
                z = false;
            }
            if (z) {
                i++;
            } else {
                sb.append(' ').append(executable.getDeclaringClass().getSimpleName()).append('.').append(executable instanceof Constructor ? "<init>" : executable.getName());
            }
        }
        return i + "/" + list.size() + (sb.length() == 0 ? "" : " failed:" + ((Object) sb));
    }

    /* renamed from: a */
    private static Field m1728a(Class<?> cls, String str) throws NoSuchFieldException {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField;
    }

    /* renamed from: a */
    private static boolean m1739a(String str, int i) {
        Map<String, Integer> map = f1672w;
        synchronized (map) {
            Integer num = map.get(str);
            int intValue = num == null ? 0 : num.intValue();
            if (intValue >= i) {
                return false;
            }
            map.put(str, Integer.valueOf(intValue + 1));
            return true;
        }
    }
}
