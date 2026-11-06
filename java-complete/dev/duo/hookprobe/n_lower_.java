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

/* renamed from: dev.duo.hookprobe.n, reason: case insensitive filesystem */
/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class n {
    private static final String a = "DuoCompat";
    static final long b = 174042980;
    static final long c = 180326787;
    static final long d = 203647190;
    static final long e = 327313645;
    private static final String f = "/enabled";
    private static volatile Map<String, int[]> g = null;
    private static volatile Map<String, ?> h = null;
    private static final Set<String> i;
    private static String j = null;
    private static volatile Map<String, Integer> k = null;
    private static Boolean l = null;
    private static volatile Map<String, ?> m = null;
    private static final AtomicBoolean n;
    private static final SharedPreferences.OnSharedPreferenceChangeListener o;
    private static final Set<String> p;
    private static ScheduledExecutorService q = null;
    private static final ThreadLocal<Boolean> r;
    private static final ThreadLocal<Boolean> s;
    private static Field t = null;
    private static Field u = null;
    private static Method v = null;
    private static final Map<String, Integer> w;
    private static final Set<String> x;
    private static final String y = "com.tencent.mm";
    private static final String z = ".plugin.appbrand.ui.";

    /* renamed from: dev.duo.hookprobe.n$a */
    class a extends ContentObserver {
        a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            if (n.n.compareAndSet(false, true)) {
                n.e().schedule(new Runnable() { // from class: dev.duo.hookprobe.n$a$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.c();
                    }
                }, 300L, TimeUnit.MILLISECONDS);
            }
        }
    }

    static {
        Map<String, Integer> map = Collections.EMPTY_MAP;
        h = map;
        i = Collections.singleton(y);
        k = map;
        n = new AtomicBoolean();
        o = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda15
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                n.a(sharedPreferences, str);
            }
        };
        p = new HashSet();
        r = new ThreadLocal<>();
        s = new ThreadLocal<>();
        w = new HashMap();
        x = new HashSet(Arrays.asList("AppBrandUI", "AppBrandUI00", "AppBrandUI01", "AppBrandUI02", "AppBrandUI03", "AppBrandUI04", "AppBrandUI1", "AppBrandUI2", "AppBrandUI3", "AppBrandUI4", "AppBrandUI4MM"));
    }

    private n() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c() {
        f();
    }

    static void d() {
        a(m, "license");
    }

    private static void e(XposedModule xposedModule, ClassLoader classLoader) {
        try {
            if (t == null || v == null) {
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
            for (int i2 = 0; i2 < 4; i2++) {
                methodArr[i2].setAccessible(true);
            }
            final Field a2 = a(cls3, "mImeLayeringTarget");
            final Field a3 = a(cls3, "mDisplayId");
            final Field a4 = a(cls4, "mActivityRecord");
            xposedModule.hook(cls.getDeclaredMethod("assignRelativeLayer", SurfaceControl.Transaction.class, SurfaceControl.class, Integer.TYPE, Boolean.TYPE)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda6
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a5;
                    a5 = n.a(declaredMethod, a3, a2, a4, declaredMethod2, declaredMethod4, declaredMethod3, chain);
                    return a5;
                }
            });
            ArrayList arrayList = new ArrayList();
            a(arrayList, classLoader, "com.android.server.wm.DisplayContent", "assignRelativeLayerForIme");
            Log.i(a, "READY task-relative IME hook, deoptimized " + a(xposedModule, arrayList));
        } catch (ReflectiveOperationException e2) {
            Log.e(a, "IME layer hook NOT installed", e2);
        }
    }

    private static void f(XposedModule xposedModule, ClassLoader classLoader) {
        try {
            xposedModule.hook(Class.forName("com.android.server.wm.MiuiSizeCompatService", false, classLoader).getDeclaredMethod("shouldUseFullscreenBypassInternal", String.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda14
                public final Object intercept(XposedInterface.Chain chain) {
                    Object b2;
                    b2 = n.b(chain);
                    return b2;
                }
            });
            ArrayList arrayList = new ArrayList();
            a(arrayList, classLoader, "com.android.server.wm.MiuiSizeCompatService", "isFullscreenBypassActivity");
            a(arrayList, classLoader, "com.android.server.wm.MiuiSizeCompatService", "shouldUseFullscreenBypass");
            a(arrayList, classLoader, "com.android.server.wm.MiuiSizeCompatService", "isActiveFullscreenBypassActivity");
            a(arrayList, classLoader, "com.android.server.wm.MiuiSizeCompatService", "isSizeCompatControlSupportedLocked");
            String[] strArr = {"canUseWideFoldLandFsSuppress", "hasActiveFullscreenBypassActivityInProcess", "isFullscreenBypassOwnerRequestingLandscape", "resolveFixedAspectRatioIfNeeded", "shouldRestorePortraitForLockedWideFoldInnerCompat", "adaptCompatConfiguration", "refreshSizeCompatAfterFullscreenBypass"};
            for (int i2 = 0; i2 < 7; i2++) {
                a(arrayList, classLoader, "com.android.server.wm.BoundsCompatController", strArr[i2]);
            }
            Log.i(a, "READY miniapp hook, deoptimized " + a(xposedModule, arrayList));
        } catch (Throwable th) {
            Log.e(a, "miniapp hook NOT installed, native answers kept", th);
        }
    }

    static boolean g() {
        return g != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void h(XposedModule xposedModule, ClassLoader classLoader) {
        int i2;
        int i3 = 0;
        try {
            Class<?> cls = Class.forName("com.android.server.wm.AppCompatReachabilityOverrides", false, classLoader);
            Method declaredMethod = cls.getDeclaredMethod("getHorizontalPositionMultiplier", Configuration.class);
            final Field a2 = a(cls, "mActivityRecord");
            final Field a3 = a(Class.forName("com.android.server.wm.ActivityRecord", false, classLoader), "packageName");
            Method declaredMethod2 = Class.forName("com.android.server.wm.AppCompatConfiguration", false, classLoader).getDeclaredMethod("getLetterboxHorizontalPositionMultiplier", Boolean.TYPE);
            try {
                xposedModule.hook(declaredMethod).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda11
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object a4;
                        a4 = n.a(a2, a3, chain);
                        return a4;
                    }
                });
                try {
                    xposedModule.hook(declaredMethod2).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda12
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object c2;
                            c2 = n.c(chain);
                            return c2;
                        }
                    });
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(declaredMethod);
                    a(arrayList, classLoader, "com.android.server.wm.ActivityRecord", "updateResolvedBoundsPosition");
                    a(arrayList, classLoader, "com.android.server.wm.AppCompatAspectRatioOverrides", "shouldUseSplitScreenAspectRatio");
                    Log.i(a, "READY position hook, deoptimized " + a(xposedModule, arrayList));
                } catch (Throwable th) {
                    th = th;
                    i3 = 2;
                    i2 = i3;
                    Log.e(a, i2 != 0 ? "position hook NOT installed, native position kept" : "position hooks installed=" + i2 + "/2, deoptimize list incomplete", th);
                }
            } catch (Throwable th2) {
                th = th2;
                i2 = 1;
                Log.e(a, i2 != 0 ? "position hook NOT installed, native position kept" : "position hooks installed=" + i2 + "/2, deoptimize list incomplete", th);
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static void i(XposedModule xposedModule, ClassLoader classLoader) {
        try {
            final Q q2 = new Q(classLoader, true);
            Class<?> cls = Class.forName("com.android.server.wm.WindowState", false, classLoader);
            final Field a2 = a(cls, "mActivityRecord");
            final Field a3 = a(Class.forName("com.android.server.wm.ActivityRecord", false, classLoader), "packageName");
            final Field a4 = a(q2.a, "mSources");
            Class<?> cls2 = q2.a;
            final Constructor<?> declaredConstructor = cls2.getDeclaredConstructor(cls2, Boolean.TYPE);
            Method declaredMethod = cls.getDeclaredMethod("getCompatInsetsState", null);
            Class<?> cls3 = Class.forName("com.android.server.wm.ConfigurationContainer", false, classLoader);
            final Method declaredMethod2 = cls3.getDeclaredMethod("getWindowingMode", null);
            final Method declaredMethod3 = cls3.getDeclaredMethod("getActivityType", null);
            xposedModule.hook(declaredMethod).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda4
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a5;
                    a5 = n.a(a2, a3, q2, declaredMethod2, declaredMethod3, declaredConstructor, a4, chain);
                    return a5;
                }
            });
            ArrayList arrayList = new ArrayList();
            a(arrayList, classLoader, "com.android.server.wm.WindowState", "fillInsetsState");
            a(arrayList, classLoader, "com.android.server.wm.WindowState", "reportResized");
            a(arrayList, classLoader, "com.android.server.wm.WindowState", "notifyInsetsControlChanged");
            a(arrayList, classLoader, "com.android.server.wm.WindowManagerService", "addWindowInner");
            a(arrayList, classLoader, "com.android.server.wm.WindowManagerService", "relayoutWindow");
            Log.i(a, "READY server top hook, deoptimized " + a(xposedModule, arrayList));
        } catch (Throwable th) {
            Log.e(a, "server top hook NOT installed", th);
        }
    }

    private static void j() {
        for (int i2 = 1; i2 <= 90; i2++) {
            try {
                i().getContentResolver().registerContentObserver(L.d, false, new a(null));
                Log.i(a, "READY app change observer attempt=" + i2);
                return;
            } catch (Throwable th) {
                if (i2 == 1 || i2 == 90) {
                    Log.w(a, "app change observer not registered, attempt " + i2, th);
                }
                SystemClock.sleep(2000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(SharedPreferences sharedPreferences, String str) {
        if (a("changeLog", 50)) {
            Log.i(a, "CHANGE key=" + str);
        }
        if (str == null || str.endsWith(f) || P.h(str) || P.j(str) || "_global/master".equals(str) || "_global/licenseToken".equals(str) || P.u(str) || P.n(str)) {
            a(sharedPreferences.getAll(), "change " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean b(Map map, String str) {
        return ((Integer) map.getOrDefault(str, 100)).equals(k.getOrDefault(str, 100));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object c(XposedInterface.Chain chain) throws Throwable {
        if (!Boolean.TRUE.equals(r.get()) || ((Boolean) chain.getArg(0)).booleanValue()) {
            return chain.proceed();
        }
        if (a("position", 1)) {
            Log.i(a, "POSITION left for a Duo app");
        }
        return Float.valueOf(0.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [int] */
    /* JADX WARN: Type inference failed for: r15v3 */
    private static void d(XposedModule xposedModule, ClassLoader classLoader) {
        boolean z2 = false;
        int i2 = 0;
        try {
            Class<?> cls = Class.forName("com.android.server.wm.ActivityRecord", false, classLoader);
            t = a(cls, "packageName");
            u = a(Class.forName("com.android.server.wm.Task", false, classLoader), "realActivity");
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
                    Log.e(a, "host hook installed=" + i2 + "/2, embedded pages keep their own answer", th);
                    return;
                }
            }
            if (method == null) {
                throw new NoSuchMethodException("ActivityRecord.getTask");
            }
            method.setAccessible(true);
            v = method;
            ArrayList arrayList = new ArrayList();
            String[] strArr = {"com.android.server.wm.AppCompatAspectRatioPolicy", "com.android.server.wm.DesktopAppCompatAspectRatioPolicy"};
            int i3 = 0;
            int i4 = 0;
            while (i3 < 2) {
                try {
                    Class<?> cls2 = Class.forName(strArr[i3], z2, classLoader);
                    final Field a2 = a(cls2, "mActivityRecord");
                    Method[] declaredMethods = cls2.getDeclaredMethods();
                    int length = declaredMethods.length;
                    for (int r15 = z2; r15 < length; r15++) {
                        Method method3 = declaredMethods[r15];
                        String[] strArr2 = strArr;
                        if (method3.getName().equals("getMinAspectRatio")) {
                            xposedModule.hook(method3).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda5
                                public final Object intercept(XposedInterface.Chain chain) {
                                    Object a3;
                                    a3 = n.a(a2, chain);
                                    return a3;
                                }
                            });
                            i4++;
                        }
                        strArr = strArr2;
                    }
                    i3++;
                    z2 = false;
                } catch (Throwable th2) {
                    th = th2;
                    i2 = i4;
                    Log.e(a, "host hook installed=" + i2 + "/2, embedded pages keep their own answer", th);
                    return;
                }
            }
            a(arrayList, classLoader, "com.android.server.wm.ActivityRecord", "getMinAspectRatio");
            a(arrayList, classLoader, "com.android.server.wm.AppCompatAspectRatioPolicy", "applyAspectRatio");
            a(arrayList, classLoader, "com.android.server.wm.AppCompatAspectRatioPolicy", "hasFixedAspectRatio");
            a(arrayList, classLoader, "com.android.server.wm.DesktopAppCompatAspectRatioPolicy", "calculateAspectRatio");
            a(arrayList, classLoader, "com.android.server.wm.DesktopAppCompatAspectRatioPolicy", "hasMinAspectRatioOverride");
            Log.i(a, "READY host hook=" + i4 + "/2, deoptimized " + a(xposedModule, arrayList));
        } catch (Throwable th3) {
            th = th3;
            i2 = 0;
        }
    }

    private static void g(XposedModule xposedModule, ClassLoader classLoader) {
        try {
            if (t == null || v == null) {
                throw new NoSuchMethodException("ActivityRecord task helpers unavailable");
            }
            Class<?> cls = Class.forName("com.android.server.wm.ActivityRecord", false, classLoader);
            Class<?> cls2 = Class.forName("com.android.server.wm.ConfigurationContainer", false, classLoader);
            Class<?> cls3 = Class.forName("com.android.server.wm.DisplayContent", false, classLoader);
            Class<?> cls4 = Class.forName("com.android.server.wm.TaskFragment", false, classLoader);
            Class<?> cls5 = Class.forName("com.android.server.wm.AppCompatSandboxingPolicy$ConfigOverrideHint", false, classLoader);
            final Field a2 = a(Class.forName("com.android.server.wm.WindowContainer", false, classLoader), "mDisplayContent");
            final Field a3 = a(cls3, "mInitialDisplayWidth");
            final Field a4 = a(cls3, "mInitialDisplayHeight");
            final Field a5 = a(cls3, "mDisplayId");
            final Field a6 = a((Class<?>) Configuration.class, "windowConfiguration");
            Method declaredMethod = cls.getDeclaredMethod("resolveOverrideConfiguration", Configuration.class);
            final Method declaredMethod2 = cls2.getDeclaredMethod("getResolvedOverrideConfiguration", null);
            final Method declaredMethod3 = cls2.getDeclaredMethod("getWindowingMode", null);
            final Method declaredMethod4 = cls2.getDeclaredMethod("getActivityType", null);
            final Method declaredMethod5 = cls.getDeclaredMethod("getAppCompatDisplayInsets", null);
            final Method declaredMethod6 = cls.getDeclaredMethod("shouldCreateAppCompatDisplayInsets", null);
            final Method declaredMethod7 = cls.getDeclaredMethod("inMiuiSizeCompatMode", null);
            final Method declaredMethod8 = cls4.getDeclaredMethod("computeConfigResourceOverrides", Configuration.class, Configuration.class, cls5);
            Method[] methodArr = {declaredMethod2, declaredMethod3, declaredMethod4, declaredMethod5, declaredMethod6, declaredMethod7, declaredMethod8};
            for (int i2 = 0; i2 < 7; i2++) {
                methodArr[i2].setAccessible(true);
            }
            xposedModule.hook(declaredMethod).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda0
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a7;
                    a7 = n.a(a2, a5, a3, a4, declaredMethod3, declaredMethod4, declaredMethod5, declaredMethod6, declaredMethod7, declaredMethod2, declaredMethod8, a6, chain);
                    return a7;
                }
            });
            ArrayList arrayList = new ArrayList();
            a(arrayList, classLoader, "com.android.server.wm.ConfigurationContainer", "onConfigurationChanged");
            Log.i(a, "READY outer Activity density (user scale), native size-compat snapshots excluded, deoptimized " + a(xposedModule, arrayList));
        } catch (ReflectiveOperationException e2) {
            Log.e(a, "OUTER_DENSITY NOT installed", e2);
        }
    }

    private static void b(XposedModule xposedModule, ClassLoader classLoader) {
        String str = null;
        try {
            Class cls = Long.TYPE;
            str = "compat";
            xposedModule.hook(ApplicationInfo.class.getDeclaredMethod("isChangeEnabled", cls)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda2
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a2;
                    a2 = n.a(chain);
                    return a2;
                }
            });
            ArrayList arrayList = new ArrayList();
            arrayList.add(ActivityInfo.class.getDeclaredMethod("isChangeEnabled", cls));
            a(arrayList, classLoader, "com.android.server.wm.AppCompatUtils", "isChangeEnabled");
            a(arrayList, classLoader, "com.android.server.wm.AppCompatAspectRatioOverrides", "shouldOverrideMinAspectRatio");
            a(arrayList, classLoader, "com.android.server.wm.AppCompatAspectRatioPolicy", "getMinAspectRatio");
            a(arrayList, classLoader, "com.android.server.wm.DesktopAppCompatAspectRatioPolicy", "getMinAspectRatio");
            a(arrayList, classLoader, "com.android.server.wm.ConfigurationContainer", "applySizeOverrideIfNeeded");
            Collections.addAll(arrayList, Class.forName("com.android.server.wm.AppCompatSandboxingPolicy", false, classLoader).getDeclaredConstructors());
            Log.i(a, "READY compat hook, deoptimized " + a(xposedModule, arrayList));
        } catch (Throwable th) {
            Log.e(a, "compat hook " + (str == null ? "NOT installed, native answers kept" : "installed but deoptimize list incomplete"), th);
        }
    }

    private static void a(Map<String, ?> map, String str) {
        boolean c2;
        HashSet hashSet;
        HashSet hashSet2;
        synchronized (n.class) {
            Map<String, int[]> map2 = g;
            final Map<String, Integer> map3 = k;
            c2 = c(map, str);
            Map<String, int[]> map4 = g;
            hashSet = new HashSet(map4 == null ? Collections.EMPTY_SET : map4.keySet());
            if (map2 != null) {
                HashSet<String> hashSet3 = new HashSet(hashSet);
                hashSet3.retainAll(map2.keySet());
                hashSet.addAll(map2.keySet());
                if (!c2) {
                    hashSet.removeAll(hashSet3);
                    for (String str2 : hashSet3) {
                        if ((map2.get(str2)[0] == 0) != (map4.get(str2)[0] == 0)) {
                            hashSet.add(str2);
                        }
                    }
                }
            }
            hashSet2 = new HashSet(map3.keySet());
            hashSet2.addAll(k.keySet());
            hashSet2.removeIf(new Predicate() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda8
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean b2;
                    b2 = n.b(map3, (String) obj);
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
        final HashSet hashSet4 = new HashSet(hashSet2);
        hashSet4.retainAll(i);
        if (!hashSet4.isEmpty()) {
            e().schedule(new Runnable() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    n.b((Set<String>) hashSet4);
                }
            }, 1200L, TimeUnit.MILLISECONDS);
        }
        if (c2) {
            e().execute(new Runnable() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    n.h();
                }
            });
        }
    }

    private static void c(XposedModule xposedModule, ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.server.wm.WindowStateStubImpl", false, classLoader);
            final Field a2 = a(cls, "mWindowState");
            final Field a3 = a(Class.forName("com.android.server.wm.WindowState", false, classLoader), "mActivityRecord");
            final Method method = Class.forName("com.android.server.wm.ActivityRecord", false, classLoader).getMethod("getBounds", null);
            method.setAccessible(true);
            xposedModule.hook(cls.getDeclaredMethod("isInSpecificEmbeddedSplitDialog", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda3
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a4;
                    a4 = n.a(a3, a2, method, chain);
                    return a4;
                }
            });
            ArrayList arrayList = new ArrayList();
            a(arrayList, classLoader, "com.android.server.wm.WindowManagerService", "addWindowInner");
            a(arrayList, classLoader, "com.android.server.wm.DisplayContent", "shouldImeAttachedToApp");
            Log.i(a, "READY embedded dialog hook, deoptimized " + a(xposedModule, arrayList));
        } catch (Throwable th) {
            Log.e(a, "embedded dialog hook incomplete, check hook and deoptimize state", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f() {
        n.set(false);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            ContentProviderClient acquireUnstableContentProviderClient = i().getContentResolver().acquireUnstableContentProviderClient("com.lsposed.miduo.config");
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
                a(hashMap, "app notified");
                if (acquireUnstableContentProviderClient != null) {
                    acquireUnstableContentProviderClient.close();
                }
                return;
            }
            Log.w(a, "duoState unavailable: " + (bundle == null ? "no provider" : bundle.getString("error")));
            if (acquireUnstableContentProviderClient != null) {
                acquireUnstableContentProviderClient.close();
            }
        } catch (Throwable th) {
            try {
                Log.w(a, "duoState failed", th);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d5 A[Catch: all -> 0x0165, TryCatch #0 {, blocks: (B:9:0x0008, B:10:0x0017, B:12:0x001d, B:15:0x0031, B:18:0x0039, B:21:0x0046, B:30:0x0054, B:34:0x006e, B:36:0x0072, B:40:0x007c, B:42:0x0080, B:44:0x00b6, B:48:0x00bd, B:51:0x00c5, B:54:0x00d1, B:56:0x00d5, B:57:0x00dc, B:60:0x00f1, B:62:0x00f9, B:64:0x0101, B:65:0x0103, B:68:0x014e, B:72:0x0137, B:73:0x00ed, B:74:0x00da, B:75:0x00cf, B:76:0x00c3, B:77:0x0086, B:79:0x008c, B:80:0x0093), top: B:8:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0137 A[Catch: all -> 0x0165, TryCatch #0 {, blocks: (B:9:0x0008, B:10:0x0017, B:12:0x001d, B:15:0x0031, B:18:0x0039, B:21:0x0046, B:30:0x0054, B:34:0x006e, B:36:0x0072, B:40:0x007c, B:42:0x0080, B:44:0x00b6, B:48:0x00bd, B:51:0x00c5, B:54:0x00d1, B:56:0x00d5, B:57:0x00dc, B:60:0x00f1, B:62:0x00f9, B:64:0x0101, B:65:0x0103, B:68:0x014e, B:72:0x0137, B:73:0x00ed, B:74:0x00da, B:75:0x00cf, B:76:0x00c3, B:77:0x0086, B:79:0x008c, B:80:0x0093), top: B:8:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00ed A[Catch: all -> 0x0165, TryCatch #0 {, blocks: (B:9:0x0008, B:10:0x0017, B:12:0x001d, B:15:0x0031, B:18:0x0039, B:21:0x0046, B:30:0x0054, B:34:0x006e, B:36:0x0072, B:40:0x007c, B:42:0x0080, B:44:0x00b6, B:48:0x00bd, B:51:0x00c5, B:54:0x00d1, B:56:0x00d5, B:57:0x00dc, B:60:0x00f1, B:62:0x00f9, B:64:0x0101, B:65:0x0103, B:68:0x014e, B:72:0x0137, B:73:0x00ed, B:74:0x00da, B:75:0x00cf, B:76:0x00c3, B:77:0x0086, B:79:0x008c, B:80:0x0093), top: B:8:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00da A[Catch: all -> 0x0165, TryCatch #0 {, blocks: (B:9:0x0008, B:10:0x0017, B:12:0x001d, B:15:0x0031, B:18:0x0039, B:21:0x0046, B:30:0x0054, B:34:0x006e, B:36:0x0072, B:40:0x007c, B:42:0x0080, B:44:0x00b6, B:48:0x00bd, B:51:0x00c5, B:54:0x00d1, B:56:0x00d5, B:57:0x00dc, B:60:0x00f1, B:62:0x00f9, B:64:0x0101, B:65:0x0103, B:68:0x014e, B:72:0x0137, B:73:0x00ed, B:74:0x00da, B:75:0x00cf, B:76:0x00c3, B:77:0x0086, B:79:0x008c, B:80:0x0093), top: B:8:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00cf A[Catch: all -> 0x0165, TryCatch #0 {, blocks: (B:9:0x0008, B:10:0x0017, B:12:0x001d, B:15:0x0031, B:18:0x0039, B:21:0x0046, B:30:0x0054, B:34:0x006e, B:36:0x0072, B:40:0x007c, B:42:0x0080, B:44:0x00b6, B:48:0x00bd, B:51:0x00c5, B:54:0x00d1, B:56:0x00d5, B:57:0x00dc, B:60:0x00f1, B:62:0x00f9, B:64:0x0101, B:65:0x0103, B:68:0x014e, B:72:0x0137, B:73:0x00ed, B:74:0x00da, B:75:0x00cf, B:76:0x00c3, B:77:0x0086, B:79:0x008c, B:80:0x0093), top: B:8:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00c3 A[Catch: all -> 0x0165, TryCatch #0 {, blocks: (B:9:0x0008, B:10:0x0017, B:12:0x001d, B:15:0x0031, B:18:0x0039, B:21:0x0046, B:30:0x0054, B:34:0x006e, B:36:0x0072, B:40:0x007c, B:42:0x0080, B:44:0x00b6, B:48:0x00bd, B:51:0x00c5, B:54:0x00d1, B:56:0x00d5, B:57:0x00dc, B:60:0x00f1, B:62:0x00f9, B:64:0x0101, B:65:0x0103, B:68:0x014e, B:72:0x0137, B:73:0x00ed, B:74:0x00da, B:75:0x00cf, B:76:0x00c3, B:77:0x0086, B:79:0x008c, B:80:0x0093), top: B:8:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x008c A[Catch: all -> 0x0165, TryCatch #0 {, blocks: (B:9:0x0008, B:10:0x0017, B:12:0x001d, B:15:0x0031, B:18:0x0039, B:21:0x0046, B:30:0x0054, B:34:0x006e, B:36:0x0072, B:40:0x007c, B:42:0x0080, B:44:0x00b6, B:48:0x00bd, B:51:0x00c5, B:54:0x00d1, B:56:0x00d5, B:57:0x00dc, B:60:0x00f1, B:62:0x00f9, B:64:0x0101, B:65:0x0103, B:68:0x014e, B:72:0x0137, B:73:0x00ed, B:74:0x00da, B:75:0x00cf, B:76:0x00c3, B:77:0x0086, B:79:0x008c, B:80:0x0093), top: B:8:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0093 A[Catch: all -> 0x0165, TryCatch #0 {, blocks: (B:9:0x0008, B:10:0x0017, B:12:0x001d, B:15:0x0031, B:18:0x0039, B:21:0x0046, B:30:0x0054, B:34:0x006e, B:36:0x0072, B:40:0x007c, B:42:0x0080, B:44:0x00b6, B:48:0x00bd, B:51:0x00c5, B:54:0x00d1, B:56:0x00d5, B:57:0x00dc, B:60:0x00f1, B:62:0x00f9, B:64:0x0101, B:65:0x0103, B:68:0x014e, B:72:0x0137, B:73:0x00ed, B:74:0x00da, B:75:0x00cf, B:76:0x00c3, B:77:0x0086, B:79:0x008c, B:80:0x0093), top: B:8:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static synchronized boolean c(Map<String, ?> map, String str) {
        boolean z2;
        Boolean bool;
        String valueOf;
        synchronized (n.class) {
            boolean z3 = false;
            if (map != null) {
                m = map;
                HashSet hashSet = new HashSet();
                for (Map.Entry<String, ?> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (!key.startsWith("_") && key.endsWith(f) && Boolean.TRUE.equals(entry.getValue())) {
                        hashSet.add(key.substring(0, key.length() - 8));
                    }
                }
                hashSet.removeAll(dev.duo.hookprobe.P.i);
                boolean z4 = P.a(map) && ((String) map.get("_global/licenseToken")) != null;
                Boolean bool2 = l;
                if (bool2 != null && !bool2.booleanValue()) {
                    z2 = false;
                    bool = l;
                    if (bool != null || bool.booleanValue() != z4) {
                        if (!a(z4)) {
                            l = Boolean.valueOf(z4);
                        } else {
                            Log.e(a, "MASTER change to " + z4 + " NOT applied reason=" + str);
                            z4 = z2;
                        }
                    }
                    if (g != null && z4 != z2) {
                        z3 = true;
                    }
                    Map<String, int[]> map2 = g;
                    Set set = !z4 ? hashSet : Collections.EMPTY_SET;
                    g = P.a(map, (Set<String>) set);
                    h = !z4 ? map : Collections.EMPTY_MAP;
                    k = !z4 ? P.b(map, (Set<String>) set) : Collections.EMPTY_MAP;
                    Integer num = k.get(y);
                    valueOf = num != null ? "" : String.valueOf(num);
                    if (!valueOf.equals(j) && a("debug.duo.scale.wx", valueOf)) {
                        j = valueOf;
                    }
                    Log.i(a, "CONFIG duoApps=" + g.size() + " enabled=" + hashSet.size() + " master=" + z4 + (map2 != null ? "" : " before=" + map2.size()) + " reason=" + str);
                    return z3;
                }
                z2 = true;
                bool = l;
                if (bool != null) {
                }
                if (!a(z4)) {
                }
                if (g != null) {
                    z3 = true;
                }
                Map<String, int[]> map22 = g;
                if (!z4) {
                }
                g = P.a(map, (Set<String>) set);
                h = !z4 ? map : Collections.EMPTY_MAP;
                k = !z4 ? P.b(map, (Set<String>) set) : Collections.EMPTY_MAP;
                Integer num2 = k.get(y);
                if (num2 != null) {
                }
                if (!valueOf.equals(j)) {
                    j = valueOf;
                }
                Log.i(a, "CONFIG duoApps=" + g.size() + " enabled=" + hashSet.size() + " master=" + z4 + (map22 != null ? "" : " before=" + map22.size()) + " reason=" + str);
                return z3;
            }
        }
        return false;
    }

    private static boolean b(String str) {
        if (str != null && str.startsWith("com.tencent.mm/")) {
            String substring = str.substring(15);
            if (substring.startsWith("com.tencent.mm.")) {
                substring = substring.substring(14);
            }
            if (substring.startsWith(z) && x.contains(substring.substring(20))) {
                return true;
            }
        }
        return false;
    }

    static boolean a(String str) {
        Map<String, int[]> map = g;
        return (map == null || str == null || !map.containsKey(str)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object b(XposedInterface.Chain chain) throws Throwable {
        String str = (String) chain.getArg(0);
        if (b(str) && a(y)) {
            if (a("miniApp", 1)) {
                Log.i(a, "MINIAPP fullscreen bypass first " + str);
            }
            return Boolean.TRUE;
        }
        return chain.proceed();
    }

    static void a(final XposedModule xposedModule, ClassLoader classLoader) {
        b(xposedModule, classLoader);
        d(xposedModule, classLoader);
        g(xposedModule, classLoader);
        c(xposedModule, classLoader);
        h(xposedModule, classLoader);
        f(xposedModule, classLoader);
        i(xposedModule, classLoader);
        e(xposedModule, classLoader);
        Thread thread = new Thread(new Runnable() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                n.b(xposedModule);
            }
        }, "DuoCompatConfig");
        thread.setDaemon(true);
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void h() {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Object invoke = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", null).invoke(null, null);
            Context context = (Context) invoke.getClass().getMethod("getSystemContext", null).invoke(invoke, null);
            ActivityManager.class.getMethod("forceStopPackage", String.class).invoke((ActivityManager) context.getSystemService(ActivityManager.class), "com.miui.home");
            Context.class.getMethod("startActivityAsUser", Intent.class, UserHandle.class).invoke(context, new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").addFlags(268435456), UserHandle.class.getField("CURRENT").get(null));
            Log.i(a, "HOME reopened for the master switch");
        } catch (Throwable th) {
            try {
                Log.e(a, "HOME reopen failed; the desktop switches at its next start", th);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(XposedModule xposedModule) {
        for (int i2 = 1; i2 <= 90; i2++) {
            try {
                SharedPreferences remotePreferences = xposedModule.getRemotePreferences("duo_top");
                remotePreferences.registerOnSharedPreferenceChangeListener(o);
                c(remotePreferences.getAll(), "initial attempt=" + i2);
                HashSet hashSet = new HashSet(g.keySet());
                hashSet.addAll(k.keySet());
                a(hashSet, "config ready");
                j();
                return;
            } catch (Throwable th) {
                if (i2 == 1 || i2 == 90) {
                    Log.w(a, "config not readable, attempt " + i2, th);
                }
                SystemClock.sleep(2000L);
            }
        }
        Log.e(a, "config unreadable, native answers kept");
    }

    private static Context i() throws ReflectiveOperationException {
        Object invoke = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", null).invoke(null, null);
        return (Context) invoke.getClass().getMethod("getSystemContext", null).invoke(invoke, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object a(Field field, Field field2, Field field3, Field field4, Method method, Method method2, Method method3, Method method4, Method method5, Method method6, Method method7, Field field5, XposedInterface.Chain chain) throws Throwable {
        Object obj;
        Object invoke;
        Object proceed = chain.proceed();
        try {
            Object thisObject = chain.getThisObject();
            Integer num = k.get((String) t.get(thisObject));
            if (num != null && num.intValue() < 100 && (obj = field.get(thisObject)) != null && field2.getInt(obj) == 0 && E.a(field3.getInt(obj), field4.getInt(obj)) && (invoke = v.invoke(thisObject, null)) != null && ((Integer) method.invoke(invoke, null)).intValue() == 1 && ((Integer) method2.invoke(invoke, null)).intValue() == 1) {
                if (method3.invoke(thisObject, null) == null && !((Boolean) method4.invoke(thisObject, null)).booleanValue() && !((Boolean) method5.invoke(thisObject, null)).booleanValue()) {
                    Configuration configuration = (Configuration) chain.getArg(0);
                    Configuration configuration2 = (Configuration) method6.invoke(thisObject, null);
                    int i2 = configuration2.densityDpi;
                    if (i2 == 0) {
                        i2 = configuration.densityDpi;
                    }
                    int round = Math.round((num.intValue() * i2) / 100.0f);
                    Configuration configuration3 = new Configuration(configuration);
                    float f2 = round;
                    float f3 = configuration.densityDpi / f2;
                    configuration3.densityDpi = round;
                    configuration3.screenWidthDp = Math.round(configuration.screenWidthDp * f3);
                    configuration3.screenHeightDp = Math.round(configuration.screenHeightDp * f3);
                    configuration3.smallestScreenWidthDp = Math.round(configuration.smallestScreenWidthDp * f3);
                    Configuration configuration4 = new Configuration(configuration2);
                    configuration4.densityDpi = round;
                    configuration4.screenLayout = 0;
                    configuration4.screenHeightDp = 0;
                    configuration4.screenWidthDp = 0;
                    int i3 = configuration2.smallestScreenWidthDp;
                    if (i3 == 0) {
                        i3 = configuration.smallestScreenWidthDp;
                    }
                    configuration4.smallestScreenWidthDp = Math.round((i3 * i2) / f2);
                    method7.invoke(invoke, configuration4, configuration3, null);
                    if (!field5.get(configuration2).equals(field5.get(configuration4))) {
                        if (a("densityGeometry", 3)) {
                            Log.e(a, "OUTER_DENSITY rejected: native resource computation changed window geometry");
                            return proceed;
                        }
                    } else {
                        configuration2.setTo(configuration4);
                        return proceed;
                    }
                }
                if (a("densityUnsupported", 3)) {
                    Log.w(a, "OUTER_DENSITY unsupported size-compat page " + t.get(thisObject));
                    return proceed;
                }
            }
        } catch (ReflectiveOperationException e2) {
            if (a("densityError", 3)) {
                Log.e(a, "OUTER_DENSITY calculation failed; native configuration kept", e2);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Set<String> set) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Log.i(a, "RESTART scale-changed apps=" + set + " tasks=" + RootTaskRecompute.b(set));
        } catch (Throwable th) {
            try {
                Log.e(a, "RESTART failed", th);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(String str) {
        LinkedHashSet linkedHashSet;
        Set<String> set = p;
        synchronized (set) {
            linkedHashSet = new LinkedHashSet(set);
            set.clear();
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            int[] a2 = RootTaskRecompute.a((Set<String>) linkedHashSet);
            Log.i(a, "REFRESH reason=" + str + " requested=" + linkedHashSet.size() + " packages=" + a2[0] + " tasks=" + a2[1]);
        } catch (Throwable th) {
            try {
                Log.w(a, "REFRESH failed reason=" + str + " requested=" + linkedHashSet.size(), th);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized ScheduledExecutorService e() {
        ScheduledExecutorService scheduledExecutorService;
        synchronized (n.class) {
            if (q == null) {
                q = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda7
                    @Override // java.util.concurrent.ThreadFactory
                    public final Thread newThread(Runnable runnable) {
                        Thread a2;
                        a2 = n.a(runnable);
                        return a2;
                    }
                });
            }
            scheduledExecutorService = q;
        }
        return scheduledExecutorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object a(Method method, Field field, Field field2, Field field3, Method method2, Method method3, Method method4, XposedInterface.Chain chain) throws Throwable {
        Object invoke;
        SurfaceControl surfaceControl;
        Object[] array = chain.getArgs().toArray();
        try {
            Object invoke2 = method.invoke(chain.getThisObject(), null);
            if (invoke2 != null && field.getInt(invoke2) == 0) {
                Object obj = field2.get(invoke2);
                Object obj2 = obj == null ? null : field3.get(obj);
                if (obj2 != null && array[1] == method2.invoke(obj, null) && ((a((String) t.get(obj2)) || a(obj2)) && (invoke = v.invoke(obj2, null)) != null && ((Integer) method3.invoke(invoke, null)).intValue() == 1 && new Rect(0, 0, 1168, 1712).equals(method4.invoke(invoke, null)) && new Rect(0, 0, 963, 1712).equals(method4.invoke(obj2, null)) && (surfaceControl = (SurfaceControl) method2.invoke(invoke, null)) != null && surfaceControl.isValid())) {
                    array[1] = surfaceControl;
                    array[2] = 2001;
                    if (a("imeLayer", 3)) {
                        Log.i(a, "IME_LAYER above Duo task " + invoke);
                    }
                }
            }
        } catch (ReflectiveOperationException e2) {
            if (a("imeLayerError", 3)) {
                Log.e(a, "IME layer lookup failed, native anchor kept", e2);
            }
        }
        return chain.proceed(array);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object a(Field field, Field field2, Q q2, Method method, Method method2, Constructor constructor, Field field3, XposedInterface.Chain chain) throws Throwable {
        Rect a2;
        String a3;
        int b2;
        Object proceed = chain.proceed();
        try {
            Object obj = field.get(chain.getThisObject());
            if (obj != null) {
                String str = (String) field2.get(obj);
                Map<String, int[]> map = g;
                int[] iArr = map == null ? null : map.get(str);
                Map<String, ?> map2 = h;
                if ((iArr != null || P.c(map2, str)) && (a3 = Q.a((a2 = q2.a(proceed)))) != null) {
                    if (iArr != null) {
                        b2 = iArr[!"inner".equals(a3) ? 1 : 0];
                    } else if ("outer".equals(a3) && a2.width() == 1168 && ((Integer) method.invoke(obj, null)).intValue() == 1 && ((Integer) method2.invoke(obj, null)).intValue() == 1) {
                        b2 = P.b(map2, str);
                    }
                    if (b2 != 0) {
                        Object newInstance = constructor.newInstance(proceed, Boolean.FALSE);
                        q2.a(newInstance, (SparseArray) field3.get(newInstance), a2, b2, "inner".equals(a3));
                        return newInstance;
                    }
                }
            }
        } catch (ReflectiveOperationException e2) {
            if (a("serverTopError", 3)) {
                Log.e(a, "SERVER_TOP failed, native insets kept", e2);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object a(XposedInterface.Chain chain) throws Throwable {
        long longValue = ((Long) chain.getArg(0)).longValue();
        if (longValue != b && longValue != c && longValue != d && longValue != e) {
            return chain.proceed();
        }
        String str = ((ApplicationInfo) chain.getThisObject()).packageName;
        boolean z2 = longValue != e && Boolean.TRUE.equals(s.get());
        if (!a(str) && !z2) {
            return chain.proceed();
        }
        boolean z3 = longValue != d;
        if (a("compat:" + longValue, 1)) {
            Log.i(a, "COMPAT " + longValue + "=" + z3 + " first pkg=" + str);
        }
        if (z2 && !a(str) && a("host:" + str, 3)) {
            Log.i(a, "HOST compat " + longValue + "=" + z3 + " pkg=" + str);
        }
        return Boolean.valueOf(z3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ Object a(Field field, Field field2, XposedInterface.Chain chain) throws Throwable {
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
                    if (a("positionError", 3)) {
                        Log.e(a, "position owner unreadable, native kept", th);
                    }
                    ThreadLocal<Boolean> threadLocal = r;
                    bool = threadLocal.get();
                    threadLocal.set(Boolean.valueOf(!a(str) || a(obj)));
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
        ThreadLocal<Boolean> threadLocal2 = r;
        bool = threadLocal2.get();
        threadLocal2.set(Boolean.valueOf(!a(str) || a(obj)));
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
                r.remove();
            } else {
                r.set(bool);
            }
            throw th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object a(Field field, XposedInterface.Chain chain) throws Throwable {
        Object obj;
        try {
            obj = field.get(chain.getThisObject());
        } catch (Throwable th) {
            if (a("hostError", 3)) {
                Log.e(a, "host owner unreadable, native kept", th);
            }
            obj = null;
        }
        ThreadLocal<Boolean> threadLocal = s;
        Boolean bool = threadLocal.get();
        threadLocal.set(Boolean.valueOf(a(obj)));
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
                s.remove();
            } else {
                s.set(bool);
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object a(Field field, Field field2, Method method, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (Boolean.TRUE.equals(proceed)) {
            try {
                Object obj = field.get(field2.get(chain.getThisObject()));
                if (a((String) t.get(obj)) || a(obj)) {
                    Rect rect = (Rect) method.invoke(obj, null);
                    if (rect.left == 0 && rect.top == 0 && rect.right == 963 && rect.bottom == 1712) {
                        return Boolean.FALSE;
                    }
                }
            } catch (Throwable th) {
                if (a("dialogError", 3)) {
                    Log.e(a, "dialog owner unreadable, native parent kept", th);
                }
            }
        }
        return proceed;
    }

    private static boolean a(Object obj) {
        if (obj != null && v != null) {
            try {
                String str = (String) t.get(obj);
                if (!dev.duo.hookprobe.P.i.contains(str) && !a(str)) {
                    ComponentName componentName = null;
                    Object invoke = v.invoke(obj, null);
                    if (invoke != null) {
                        componentName = (ComponentName) u.get(invoke);
                    }
                    if (componentName != null && !componentName.getPackageName().equals(str)) {
                        if (a(componentName.getPackageName())) {
                            return true;
                        }
                    }
                }
                return false;
            } catch (Throwable th) {
                if (a("hostError", 3)) {
                    Log.e(a, "host task unreadable, native kept", th);
                }
            }
        }
        return false;
    }

    private static boolean a(String str, String str2) {
        try {
            Class.forName("android.os.SystemProperties").getMethod("set", String.class, String.class).invoke(null, str, str2);
            Log.i(a, "PROP " + str + "=" + str2);
            return true;
        } catch (Throwable th) {
            Log.e(a, "PROP " + str + " not set", th);
            return false;
        }
    }

    private static boolean a(boolean z2) {
        String str;
        try {
            Method method = Class.forName("android.os.SystemProperties").getMethod("set", String.class, String.class);
            if (z2) {
                str = "1";
            } else {
                str = "0";
            }
            method.invoke(null, "debug.duo.master", str);
            Log.i(a, "MASTER debug.duo.master=" + (z2 ? 1 : 0));
            return true;
        } catch (Throwable th) {
            Log.e(a, "MASTER property not set; the desktop keeps its recorded layout", th);
            return false;
        }
    }

    private static void a(Set<String> set, final String str) {
        if (set == null || set.isEmpty()) {
            return;
        }
        Set<String> set2 = p;
        synchronized (set2) {
            boolean isEmpty = set2.isEmpty();
            set2.addAll(set);
            if (isEmpty) {
                e().schedule(new Runnable() { // from class: dev.duo.hookprobe.n$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.d(str);
                    }
                }, 300L, TimeUnit.MILLISECONDS);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread a(Runnable runnable) {
        Thread thread = new Thread(runnable, "DuoCompatRefresh");
        thread.setDaemon(true);
        return thread;
    }

    private static void a(List<Executable> list, ClassLoader classLoader, String str, String str2) throws ClassNotFoundException {
        for (Method method : Class.forName(str, false, classLoader).getDeclaredMethods()) {
            if (method.getName().equals(str2)) {
                list.add(method);
            }
        }
    }

    private static String a(XposedModule xposedModule, List<Executable> list) {
        boolean z2;
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        for (Executable executable : list) {
            try {
                z2 = xposedModule.deoptimize(executable);
            } catch (Throwable th) {
                Log.w(a, "deoptimize threw for " + executable, th);
                z2 = false;
            }
            if (z2) {
                i2++;
            } else {
                sb.append(' ').append(executable.getDeclaringClass().getSimpleName()).append('.').append(executable instanceof Constructor ? "<init>" : executable.getName());
            }
        }
        return i2 + "/" + list.size() + (sb.length() == 0 ? "" : " failed:" + ((Object) sb));
    }

    private static Field a(Class<?> cls, String str) throws NoSuchFieldException {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField;
    }

    private static boolean a(String str, int i2) {
        Map<String, Integer> map = w;
        synchronized (map) {
            Integer num = map.get(str);
            int intValue = num == null ? 0 : num.intValue();
            if (intValue >= i2) {
                return false;
            }
            map.put(str, Integer.valueOf(intValue + 1));
            return true;
        }
    }
}
