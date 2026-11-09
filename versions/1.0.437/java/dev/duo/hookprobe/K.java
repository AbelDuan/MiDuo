package dev.duo.hookprobe;

/* loaded from: classes.dex */
final class K {
    private static final java.lang.String a = "DuoRatioGate";
    private static final long b = 180326787;
    private static final long c = 203647190;
    private static final long d = 327313645;
    private static final int e = 1672;
    private static final int f = 2364;
    private static final int g = 1;
    private static final java.util.Map<java.lang.String, java.lang.Integer> h = new java.util.HashMap();

    private K() {
    }

    static void a(io.github.libxposed.api.XposedModule xposedModule, java.lang.ClassLoader classLoader) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.server.wm.AppCompatAspectRatioOverrides", false, classLoader);
            java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod("shouldOverrideMinAspectRatio", null);
            final java.lang.reflect.Field a2 = a(cls, "mActivityRecord");
            final java.lang.reflect.Field a3 = a(java.lang.Class.forName("com.android.server.wm.WindowContainer", false, classLoader), "mDisplayContent");
            java.lang.Class<?> cls2 = java.lang.Class.forName("com.android.server.wm.DisplayContent", false, classLoader);
            final java.lang.reflect.Field a4 = a(cls2, "mInitialDisplayWidth");
            final java.lang.reflect.Field a5 = a(cls2, "mInitialDisplayHeight");
            final java.lang.reflect.Field a6 = a(java.lang.Class.forName("com.android.server.wm.ActivityRecord", false, classLoader), "info");
            final java.lang.reflect.Method declaredMethod2 = android.content.pm.ActivityInfo.class.getDeclaredMethod("isChangeEnabled", java.lang.Long.TYPE);
            declaredMethod2.setAccessible(true);
            final java.lang.reflect.Method declaredMethod3 = java.lang.Class.forName("android.os.SystemProperties").getDeclaredMethod("getBoolean", java.lang.String.class, java.lang.Boolean.TYPE);
            xposedModule.hook(declaredMethod).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.K$$ExternalSyntheticLambda0
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a7;
                    a7 = dev.duo.hookprobe.K.a(declaredMethod3, a2, a3, a4, a5, a6, declaredMethod2, chain);
                    return a7;
                }
            });
            android.util.Log.i(a, "READY shouldOverrideMinAspectRatio gated on inner 1672x2364");
        } catch (java.lang.Throwable th) {
            android.util.Log.e(a, "NOT installed, native ratio behaviour unchanged", th);
        }
        b(xposedModule, classLoader);
    }

    private static void b(io.github.libxposed.api.XposedModule xposedModule, java.lang.ClassLoader classLoader) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.server.wm.BoundsCompatController", false, classLoader);
            java.lang.Class<?> cls2 = java.lang.Class.forName("com.android.server.wm.WindowContainer", false, classLoader);
            java.lang.Class<?> cls3 = java.lang.Class.forName("com.android.server.wm.DisplayContent", false, classLoader);
            final java.lang.reflect.Field a2 = a(cls, "mOwner");
            final java.lang.reflect.Field a3 = a(java.lang.Class.forName("com.android.server.wm.ActivityRecord", false, classLoader), "info");
            final java.lang.reflect.Field a4 = a(java.lang.Class.forName("com.android.server.wm.ConfigurationContainer", false, classLoader), "mFullConfiguration");
            final java.lang.reflect.Field a5 = a(cls2, "mParent");
            final java.lang.reflect.Field a6 = a(cls2, "mOverrideOrientation");
            final java.lang.reflect.Field a7 = a(cls2, "mDisplayContent");
            final java.lang.reflect.Field a8 = a(cls3, "mDisplayId");
            final java.lang.reflect.Field a9 = a(cls3, "mInitialDisplayWidth");
            final java.lang.reflect.Field a10 = a(cls3, "mInitialDisplayHeight");
            final java.lang.reflect.Field a11 = a((java.lang.Class<?>) android.content.res.Configuration.class, "windowConfiguration");
            final java.lang.reflect.Field a12 = a(java.lang.Class.forName("android.app.WindowConfiguration"), "mWindowingMode");
            final java.lang.reflect.Method declaredMethod = java.lang.Class.forName("android.os.SystemProperties").getDeclaredMethod("getBoolean", java.lang.String.class, java.lang.Boolean.TYPE);
            xposedModule.hook(cls.getDeclaredMethod("isLandscapeForWideFoldCompat", android.content.res.Configuration.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.K$$ExternalSyntheticLambda1
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a13;
                    a13 = dev.duo.hookprobe.K.a(a2, a7, a5, a3, a4, a8, a9, a10, a6, a12, a11, declaredMethod, chain);
                    return a13;
                }
            });
            java.lang.String[][] strArr = {new java.lang.String[]{"BoundsCompatController", "skipWideFoldFullscreenOverride"}, new java.lang.String[]{"BoundsCompatController", "isWideFoldLandscapeTempFullscreen"}, new java.lang.String[]{"AppCompatAspectRatioOverrides", "skipWideFoldFullscreenOverride"}};
            int i = 0;
            for (int i2 = 0; i2 < 3; i2++) {
                java.lang.String[] strArr2 = strArr[i2];
                for (java.lang.reflect.Method method : java.lang.Class.forName("com.android.server.wm." + strArr2[0], false, classLoader).getDeclaredMethods()) {
                    if (method.getName().equals(strArr2[1])) {
                        if (xposedModule.deoptimize(method)) {
                            i++;
                        } else {
                            android.util.Log.e(a, "deoptimize failed " + method);
                        }
                    }
                }
            }
            android.util.Log.i(a, "READY outer stale landscape correction, deoptimized " + i + "/3");
        } catch (java.lang.Throwable th) {
            android.util.Log.e(a, "outer orientation NOT installed, native behaviour unchanged", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.reflect.Field field3, java.lang.reflect.Field field4, java.lang.reflect.Field field5, java.lang.reflect.Method method2, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        android.content.pm.ActivityInfo activityInfo;
        java.lang.Object proceed = chain.proceed();
        java.lang.Boolean bool = java.lang.Boolean.TRUE;
        if (bool.equals(proceed)) {
            try {
                java.lang.Object obj = null;
                if (((java.lang.Boolean) method.invoke(null, "debug.duo.ratio_gate", bool)).booleanValue()) {
                    java.lang.Object obj2 = field.get(chain.getThisObject());
                    if (obj2 != null) {
                        obj = field2.get(obj2);
                    }
                    if (obj != null) {
                        int i = field3.getInt(obj);
                        int i2 = field4.getInt(obj);
                        if (java.lang.Math.min(i, i2) == e && java.lang.Math.max(i, i2) == f && (activityInfo = (android.content.pm.ActivityInfo) field5.get(obj2)) != null) {
                            if (dev.duo.hookprobe.C0025n.g()) {
                                if (!dev.duo.hookprobe.C0025n.a(activityInfo.packageName)) {
                                }
                            } else if (((java.lang.Boolean) method2.invoke(activityInfo, java.lang.Long.valueOf(b))).booleanValue()) {
                                if (!((java.lang.Boolean) method2.invoke(activityInfo, java.lang.Long.valueOf(c))).booleanValue()) {
                                    if (!((java.lang.Boolean) method2.invoke(activityInfo, java.lang.Long.valueOf(d))).booleanValue()) {
                                    }
                                }
                            }
                            if (a(activityInfo.packageName, 2)) {
                                android.util.Log.i(a, "INNER native ratio pkg=" + activityInfo.packageName + " display=" + i + "x" + i2);
                            }
                            return java.lang.Boolean.FALSE;
                        }
                    }
                }
            } catch (java.lang.Throwable th) {
                if (a("error", 3)) {
                    android.util.Log.e(a, "gate skipped, native answer kept", th);
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
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object a(java.lang.reflect.Field r16, java.lang.reflect.Field r17, java.lang.reflect.Field r18, java.lang.reflect.Field r19, java.lang.reflect.Field r20, java.lang.reflect.Field r21, java.lang.reflect.Field r22, java.lang.reflect.Field r23, java.lang.reflect.Field r24, java.lang.reflect.Field r25, java.lang.reflect.Field r26, java.lang.reflect.Method r27, io.github.libxposed.api.XposedInterface.Chain r28) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.K.a(java.lang.reflect.Field, java.lang.reflect.Field, java.lang.reflect.Field, java.lang.reflect.Field, java.lang.reflect.Field, java.lang.reflect.Field, java.lang.reflect.Field, java.lang.reflect.Field, java.lang.reflect.Field, java.lang.reflect.Field, java.lang.reflect.Field, java.lang.reflect.Method, io.github.libxposed.api.XposedInterface$Chain):java.lang.Object");
    }

    static boolean a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        return i == 0 && dev.duo.hookprobe.E.a(i2, i3) && i4 == 1 && i5 == 2 && i6 != 0 && i6 != 6 && i6 != 8 && i6 != 11 && i7 == 1 && i8 == 1;
    }

    private static java.lang.reflect.Field a(java.lang.Class<?> cls, java.lang.String str) throws java.lang.NoSuchFieldException {
        java.lang.reflect.Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField;
    }

    private static synchronized boolean a(java.lang.String str, int i) {
        synchronized (dev.duo.hookprobe.K.class) {
            java.util.Map<java.lang.String, java.lang.Integer> map = h;
            int intValue = map.containsKey(str) ? map.get(str).intValue() : 0;
            if (intValue >= i) {
                return false;
            }
            map.put(str, java.lang.Integer.valueOf(intValue + 1));
            return map.size() < 200;
        }
    }
}
