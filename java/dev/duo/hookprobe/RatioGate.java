package dev.duo.hookprobe;

import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.util.Log;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* renamed from: dev.duo.hookprobe.K */
/* loaded from: classes.dex */
final class RatioGate {

    /* renamed from: a */
    private static final String f931a = "DuoRatioGate";

    /* renamed from: b */
    private static final long f932b = 180326787;

    /* renamed from: c */
    private static final long f933c = 203647190;

    /* renamed from: d */
    private static final long f934d = 327313645;

    /* renamed from: e */
    private static final int f935e = 1672;

    /* renamed from: f */
    private static final int f936f = 2364;

    /* renamed from: g */
    private static final int f937g = 1;

    /* renamed from: h */
    private static final Map<String, Integer> f938h = new HashMap();

    private RatioGate() {
    }

    /* renamed from: a */
    static void m965a(XposedModule xposedModule, ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.server.wm.AppCompatAspectRatioOverrides", false, classLoader);
            Method declaredMethod = cls.getDeclaredMethod("shouldOverrideMinAspectRatio", null);
            final Field m964a = m964a(cls, "mActivityRecord");
            final Field m964a2 = m964a(Class.forName("com.android.server.wm.WindowContainer", false, classLoader), "mDisplayContent");
            Class<?> cls2 = Class.forName("com.android.server.wm.DisplayContent", false, classLoader);
            final Field m964a3 = m964a(cls2, "mInitialDisplayWidth");
            final Field m964a4 = m964a(cls2, "mInitialDisplayHeight");
            final Field m964a5 = m964a(Class.forName("com.android.server.wm.ActivityRecord", false, classLoader), "info");
            final Method declaredMethod2 = ActivityInfo.class.getDeclaredMethod("isChangeEnabled", Long.TYPE);
            declaredMethod2.setAccessible(true);
            final Method declaredMethod3 = Class.forName("android.os.SystemProperties").getDeclaredMethod("getBoolean", String.class, Boolean.TYPE);
            xposedModule.hook(declaredMethod).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.K$$ExternalSyntheticLambda0
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m963a;
                    m963a = RatioGate.m963a(declaredMethod3, m964a, m964a2, m964a3, m964a4, m964a5, declaredMethod2, chain);
                    return m963a;
                }
            });
            Log.i(f931a, "READY shouldOverrideMinAspectRatio gated on inner 1672x2364");
        } catch (Throwable th) {
            Log.e(f931a, "NOT installed, native ratio behaviour unchanged", th);
        }
        m968b(xposedModule, classLoader);
    }

    /* renamed from: b */
    private static void m968b(XposedModule xposedModule, ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.server.wm.BoundsCompatController", false, classLoader);
            Class<?> cls2 = Class.forName("com.android.server.wm.WindowContainer", false, classLoader);
            Class<?> cls3 = Class.forName("com.android.server.wm.DisplayContent", false, classLoader);
            final Field m964a = m964a(cls, "mOwner");
            final Field m964a2 = m964a(Class.forName("com.android.server.wm.ActivityRecord", false, classLoader), "info");
            final Field m964a3 = m964a(Class.forName("com.android.server.wm.ConfigurationContainer", false, classLoader), "mFullConfiguration");
            final Field m964a4 = m964a(cls2, "mParent");
            final Field m964a5 = m964a(cls2, "mOverrideOrientation");
            final Field m964a6 = m964a(cls2, "mDisplayContent");
            final Field m964a7 = m964a(cls3, "mDisplayId");
            final Field m964a8 = m964a(cls3, "mInitialDisplayWidth");
            final Field m964a9 = m964a(cls3, "mInitialDisplayHeight");
            final Field m964a10 = m964a((Class<?>) Configuration.class, "windowConfiguration");
            final Field m964a11 = m964a(Class.forName("android.app.WindowConfiguration"), "mWindowingMode");
            final Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("getBoolean", String.class, Boolean.TYPE);
            xposedModule.hook(cls.getDeclaredMethod("isLandscapeForWideFoldCompat", Configuration.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.K$$ExternalSyntheticLambda1
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m962a;
                    m962a = RatioGate.m962a(m964a, m964a6, m964a4, m964a2, m964a3, m964a7, m964a8, m964a9, m964a5, m964a11, m964a10, declaredMethod, chain);
                    return m962a;
                }
            });
            String[][] strArr = {new String[]{"BoundsCompatController", "skipWideFoldFullscreenOverride"}, new String[]{"BoundsCompatController", "isWideFoldLandscapeTempFullscreen"}, new String[]{"AppCompatAspectRatioOverrides", "skipWideFoldFullscreenOverride"}};
            int i = 0;
            for (int i2 = 0; i2 < 3; i2++) {
                String[] strArr2 = strArr[i2];
                for (Method method : Class.forName("com.android.server.wm." + strArr2[0], false, classLoader).getDeclaredMethods()) {
                    if (method.getName().equals(strArr2[1])) {
                        if (xposedModule.deoptimize(method)) {
                            i++;
                        } else {
                            Log.e(f931a, "deoptimize failed " + method);
                        }
                    }
                }
            }
            Log.i(f931a, "READY outer stale landscape correction, deoptimized " + i + "/3");
        } catch (Throwable th) {
            Log.e(f931a, "outer orientation NOT installed, native behaviour unchanged", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m963a(Method method, Field field, Field field2, Field field3, Field field4, Field field5, Method method2, XposedInterface.Chain chain) throws Throwable {
        ActivityInfo activityInfo;
        Object proceed = chain.proceed();
        Boolean bool = Boolean.TRUE;
        if (bool.equals(proceed)) {
            try {
                Object obj = null;
                if (((Boolean) method.invoke(null, "debug.duo.ratio_gate", bool)).booleanValue()) {
                    Object obj2 = field.get(chain.getThisObject());
                    if (obj2 != null) {
                        obj = field2.get(obj2);
                    }
                    if (obj != null) {
                        int i = field3.getInt(obj);
                        int i2 = field4.getInt(obj);
                        if (Math.min(i, i2) == f935e && Math.max(i, i2) == f936f && (activityInfo = (ActivityInfo) field5.get(obj2)) != null) {
                            if (SystemServerHooks.m1762g()) {
                                if (!SystemServerHooks.m1738a(activityInfo.packageName)) {
                                }
                            } else if (((Boolean) method2.invoke(activityInfo, Long.valueOf(f932b))).booleanValue()) {
                                if (!((Boolean) method2.invoke(activityInfo, Long.valueOf(f933c))).booleanValue()) {
                                    if (!((Boolean) method2.invoke(activityInfo, Long.valueOf(f934d))).booleanValue()) {
                                    }
                                }
                            }
                            if (m967a(activityInfo.packageName, 2)) {
                                Log.i(f931a, "INNER native ratio pkg=" + activityInfo.packageName + " display=" + i + "x" + i2);
                            }
                            return Boolean.FALSE;
                        }
                    }
                }
            } catch (Throwable th) {
                if (m967a("error", 3)) {
                    Log.e(f931a, "gate skipped, native answer kept", th);
                }
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    /*
    */
    public static /* synthetic */ Object m962a(Field field, Field field2, Field field3, Field field4, Field field5, Field field6, Field field7, Field field8, Field field9, Field field10, Field field11, Method method, XposedInterface.Chain chain) throws Throwable {
        Object obj;
        Object obj2;
        ActivityInfo activityInfo;
        if (chain.getArg(0) != null) {
            return chain.proceed();
        }
        Configuration configuration = null;
        try {
            Object obj3 = field.get(chain.getThisObject());
            if (obj3 == null) {
                obj = null;
            } else {
                obj = field2.get(obj3);
            }
            if (obj == null) {
                obj2 = null;
            } else {
                obj2 = field3.get(obj3);
            }
            if (obj2 == null) {
                activityInfo = null;
            } else {
                activityInfo = (ActivityInfo) field4.get(obj3);
            }
            if (activityInfo != null && SystemServerHooks.m1762g() && SystemServerHooks.m1738a(activityInfo.packageName)) {
                Configuration configuration2 = (Configuration) field5.get(obj2);
                if (m966a(field6.getInt(obj), field7.getInt(obj), field8.getInt(obj), ((Configuration) field5.get(obj)).orientation, ((Configuration) field5.get(obj3)).orientation, field9.getInt(obj3), configuration2.orientation, field10.getInt(field11.get(configuration2)))) {
                    if (((Boolean) method.invoke(null, "debug.duo.outer_orientation", Boolean.TRUE)).booleanValue()) {
                        try {
                            if (m967a("outer:" + activityInfo.packageName, 3)) {
                                Log.i(f931a, "OUTER stale landscape -> task portrait pkg=" + activityInfo.packageName + " requested=" + field9.getInt(obj3));
                            }
                            configuration = configuration2;
                        } catch (Throwable th) {
                            th = th;
                            configuration = configuration2;
                            if (m967a("outerError", 3)) {
                                Log.e(f931a, "outer orientation skipped, native answer kept", th);
                            }
                            if (configuration != null) {
                            }
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return configuration != null ? chain.proceed() : chain.proceed(new Object[]{configuration});
    }

    /* renamed from: a */
    static boolean m966a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        return i == 0 && DimensionConst.m850a(i2, i3) && i4 == 1 && i5 == 2 && i6 != 0 && i6 != 6 && i6 != 8 && i6 != 11 && i7 == 1 && i8 == 1;
    }

    /* renamed from: a */
    private static Field m964a(Class<?> cls, String str) throws NoSuchFieldException {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField;
    }

    /* renamed from: a */
    private static synchronized boolean m967a(String str, int i) {
        synchronized (RatioGate.class) {
            Map<String, Integer> map = f938h;
            int intValue = map.containsKey(str) ? map.get(str).intValue() : 0;
            if (intValue >= i) {
                return false;
            }
            map.put(str, Integer.valueOf(intValue + 1));
            return map.size() < 200;
        }
    }
}
