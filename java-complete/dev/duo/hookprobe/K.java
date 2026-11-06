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

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class K {
    private static final String a = "DuoRatioGate";
    private static final long b = 180326787;
    private static final long c = 203647190;
    private static final long d = 327313645;
    private static final int e = 1672;
    private static final int f = 2364;
    private static final int g = 1;
    private static final Map<String, Integer> h = new HashMap();

    private K() {
    }

    static void a(XposedModule xposedModule, ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.server.wm.AppCompatAspectRatioOverrides", false, classLoader);
            Method declaredMethod = cls.getDeclaredMethod("shouldOverrideMinAspectRatio", null);
            final Field a2 = a(cls, "mActivityRecord");
            final Field a3 = a(Class.forName("com.android.server.wm.WindowContainer", false, classLoader), "mDisplayContent");
            Class<?> cls2 = Class.forName("com.android.server.wm.DisplayContent", false, classLoader);
            final Field a4 = a(cls2, "mInitialDisplayWidth");
            final Field a5 = a(cls2, "mInitialDisplayHeight");
            final Field a6 = a(Class.forName("com.android.server.wm.ActivityRecord", false, classLoader), "info");
            final Method declaredMethod2 = ActivityInfo.class.getDeclaredMethod("isChangeEnabled", Long.TYPE);
            declaredMethod2.setAccessible(true);
            final Method declaredMethod3 = Class.forName("android.os.SystemProperties").getDeclaredMethod("getBoolean", String.class, Boolean.TYPE);
            xposedModule.hook(declaredMethod).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.K$$ExternalSyntheticLambda0
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a7;
                    a7 = K.a(declaredMethod3, a2, a3, a4, a5, a6, declaredMethod2, chain);
                    return a7;
                }
            });
            Log.i(a, "READY shouldOverrideMinAspectRatio gated on inner 1672x2364");
        } catch (Throwable th) {
            Log.e(a, "NOT installed, native ratio behaviour unchanged", th);
        }
        b(xposedModule, classLoader);
    }

    private static void b(XposedModule xposedModule, ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.server.wm.BoundsCompatController", false, classLoader);
            Class<?> cls2 = Class.forName("com.android.server.wm.WindowContainer", false, classLoader);
            Class<?> cls3 = Class.forName("com.android.server.wm.DisplayContent", false, classLoader);
            final Field a2 = a(cls, "mOwner");
            final Field a3 = a(Class.forName("com.android.server.wm.ActivityRecord", false, classLoader), "info");
            final Field a4 = a(Class.forName("com.android.server.wm.ConfigurationContainer", false, classLoader), "mFullConfiguration");
            final Field a5 = a(cls2, "mParent");
            final Field a6 = a(cls2, "mOverrideOrientation");
            final Field a7 = a(cls2, "mDisplayContent");
            final Field a8 = a(cls3, "mDisplayId");
            final Field a9 = a(cls3, "mInitialDisplayWidth");
            final Field a10 = a(cls3, "mInitialDisplayHeight");
            final Field a11 = a((Class<?>) Configuration.class, "windowConfiguration");
            final Field a12 = a(Class.forName("android.app.WindowConfiguration"), "mWindowingMode");
            final Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("getBoolean", String.class, Boolean.TYPE);
            xposedModule.hook(cls.getDeclaredMethod("isLandscapeForWideFoldCompat", Configuration.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.K$$ExternalSyntheticLambda1
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a13;
                    a13 = K.a(a2, a7, a5, a3, a4, a8, a9, a10, a6, a12, a11, declaredMethod, chain);
                    return a13;
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
                            Log.e(a, "deoptimize failed " + method);
                        }
                    }
                }
            }
            Log.i(a, "READY outer stale landscape correction, deoptimized " + i + "/3");
        } catch (Throwable th) {
            Log.e(a, "outer orientation NOT installed, native behaviour unchanged", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object a(Method method, Field field, Field field2, Field field3, Field field4, Field field5, Method method2, XposedInterface.Chain chain) throws Throwable {
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
                        if (Math.min(i, i2) == e && Math.max(i, i2) == f && (activityInfo = (ActivityInfo) field5.get(obj2)) != null) {
                            if (n.g()) {
                                if (!n.a(activityInfo.packageName)) {
                                }
                            } else if (((Boolean) method2.invoke(activityInfo, Long.valueOf(b))).booleanValue()) {
                                if (!((Boolean) method2.invoke(activityInfo, Long.valueOf(c))).booleanValue()) {
                                    if (!((Boolean) method2.invoke(activityInfo, Long.valueOf(d))).booleanValue()) {
                                    }
                                }
                            }
                            if (a(activityInfo.packageName, 2)) {
                                Log.i(a, "INNER native ratio pkg=" + activityInfo.packageName + " display=" + i + "x" + i2);
                            }
                            return Boolean.FALSE;
                        }
                    }
                }
            } catch (Throwable th) {
                if (a("error", 3)) {
                    Log.e(a, "gate skipped, native answer kept", th);
                }
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:37:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0112  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ Object a(Field field, Field field2, Field field3, Field field4, Field field5, Field field6, Field field7, Field field8, Field field9, Field field10, Field field11, Method method, XposedInterface.Chain chain) throws Throwable {
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
            if (activityInfo != null && n.g() && n.a(activityInfo.packageName)) {
                Configuration configuration2 = (Configuration) field5.get(obj2);
                if (a(field6.getInt(obj), field7.getInt(obj), field8.getInt(obj), ((Configuration) field5.get(obj)).orientation, ((Configuration) field5.get(obj3)).orientation, field9.getInt(obj3), configuration2.orientation, field10.getInt(field11.get(configuration2)))) {
                    if (((Boolean) method.invoke(null, "debug.duo.outer_orientation", Boolean.TRUE)).booleanValue()) {
                        try {
                            if (a("outer:" + activityInfo.packageName, 3)) {
                                Log.i(a, "OUTER stale landscape -> task portrait pkg=" + activityInfo.packageName + " requested=" + field9.getInt(obj3));
                            }
                            configuration = configuration2;
                        } catch (Throwable th) {
                            th = th;
                            configuration = configuration2;
                            if (a("outerError", 3)) {
                                Log.e(a, "outer orientation skipped, native answer kept", th);
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

    static boolean a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        return i == 0 && E.a(i2, i3) && i4 == 1 && i5 == 2 && i6 != 0 && i6 != 6 && i6 != 8 && i6 != 11 && i7 == 1 && i8 == 1;
    }

    private static Field a(Class<?> cls, String str) throws NoSuchFieldException {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField;
    }

    private static synchronized boolean a(String str, int i) {
        synchronized (dev.duo.hookprobe.K.class) {
            Map<String, Integer> map = h;
            int intValue = map.containsKey(str) ? map.get(str).intValue() : 0;
            if (intValue >= i) {
                return false;
            }
            map.put(str, Integer.valueOf(intValue + 1));
            return map.size() < 200;
        }
    }
}
