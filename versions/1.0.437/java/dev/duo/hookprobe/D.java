package dev.duo.hookprobe;

/* loaded from: classes.dex */
final class D {
    D() {
    }

    static void a(io.github.libxposed.api.XposedModule xposedModule, java.lang.ClassLoader classLoader, final java.util.function.BooleanSupplier booleanSupplier, final java.util.function.IntSupplier intSupplier) {
        java.lang.Class<?> cls;
        final boolean z;
        try {
            java.lang.Class.forName("miuix.autodensity.AutoDensityConfig", false, classLoader);
            try {
                try {
                    cls = java.lang.Class.forName("miuix.autodensity.DensityUtil", false, classLoader);
                    z = true;
                } catch (java.lang.ClassNotFoundException e) {
                    cls = java.lang.Class.forName("miuix.autodensity.g", false, classLoader);
                    z = false;
                }
                java.lang.Class<?> cls2 = java.lang.Class.forName(z ? "miuix.view.DisplayConfig" : "miuix.view.e", false, classLoader);
                final java.lang.reflect.Constructor<?> constructor = cls2.getConstructor(android.content.res.Configuration.class);
                final java.lang.reflect.Field field = cls2.getField(z ? "densityDpi" : "d");
                final java.lang.reflect.Field field2 = cls2.getField(z ? "density" : "e");
                final java.lang.reflect.Field field3 = cls2.getField(z ? "scaledDensity" : "f");
                final java.lang.reflect.Field field4 = cls2.getField(z ? "fontScale" : "g");
                final java.lang.reflect.Field field5 = cls2.getField(z ? "defaultBitmapDensity" : "c");
                final java.lang.reflect.Field field6 = cls2.getField(z ? "windowWidthDp" : "a");
                final java.lang.reflect.Field field7 = cls2.getField(z ? "windowHeightDp" : "b");
                final java.lang.reflect.Field field8 = android.content.res.Configuration.class.getField("windowConfiguration");
                final java.lang.reflect.Field field9 = android.content.res.Configuration.class.getField("extraConfig");
                java.lang.Class<?> type = field8.getType();
                final java.lang.reflect.Method method = type.getMethod("getBounds", null);
                final java.lang.reflect.Method method2 = type.getMethod("getMaxBounds", null);
                final java.lang.reflect.Method method3 = type.getMethod("getWindowingMode", null);
                final java.lang.reflect.Method method4 = type.getMethod("getActivityType", null);
                final java.lang.reflect.Method method5 = field9.getType().getMethod("getDisplayId", null);
                final java.lang.reflect.Method method6 = java.lang.Class.forName("android.app.ActivityThread", false, classLoader).getMethod("currentApplication", null);
                java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod(z ? "doChangeDensity" : "b", cls2, android.content.res.Resources.class, java.lang.Integer.TYPE);
                java.lang.Class<?> cls3 = java.lang.Class.forName(z ? "miuix.autodensity.DensityConfigManager" : "miuix.autodensity.e", false, classLoader);
                final java.lang.reflect.Method method7 = cls3.getMethod(z ? "getInstance" : "h", null);
                final java.lang.reflect.Method method8 = z ? cls3.getMethod("getTargetConfig", android.view.Display.class) : cls3.getMethod("j", null);
                xposedModule.hook(declaredMethod).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.D$$ExternalSyntheticLambda0
                    public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                        java.lang.Object a;
                        a = dev.duo.hookprobe.D.a(intSupplier, booleanSupplier, field8, method, method2, method5, field9, method3, method4, method6, z, method8, method7, field, field4, field6, field7, constructor, field2, field3, field5, chain);
                        return a;
                    }
                });
                int i = 0;
                int i2 = 0;
                for (java.lang.reflect.Method method9 : cls.getDeclaredMethods()) {
                    if (!method9.equals(declaredMethod)) {
                        i++;
                        if (xposedModule.deoptimize(method9)) {
                            i2++;
                        } else {
                            android.util.Log.w("DuoOuterDensity", "deoptimize failed: " + method9);
                        }
                    }
                }
                android.util.Log.i("DuoOuterDensity", "READY MIUIX outer Activity density (user scale), deoptimized " + i2 + "/" + i);
            } catch (java.lang.ReflectiveOperationException e2) {
                android.util.Log.e("DuoOuterDensity", "MIUIX outer density NOT installed", e2);
            }
        } catch (java.lang.ClassNotFoundException e3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(java.util.function.IntSupplier intSupplier, java.util.function.BooleanSupplier booleanSupplier, java.lang.reflect.Field field, java.lang.reflect.Method method, java.lang.reflect.Method method2, java.lang.reflect.Method method3, java.lang.reflect.Field field2, java.lang.reflect.Method method4, java.lang.reflect.Method method5, java.lang.reflect.Method method6, boolean z, java.lang.reflect.Method method7, java.lang.reflect.Method method8, java.lang.reflect.Field field3, java.lang.reflect.Field field4, java.lang.reflect.Field field5, java.lang.reflect.Field field6, java.lang.reflect.Constructor constructor, java.lang.reflect.Field field7, java.lang.reflect.Field field8, java.lang.reflect.Field field9, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        if (intSupplier.getAsInt() < 100 && booleanSupplier.getAsBoolean()) {
            android.content.res.Resources resources = (android.content.res.Resources) chain.getArg(1);
            android.content.res.Configuration configuration = resources.getConfiguration();
            java.lang.Object obj = field.get(configuration);
            android.graphics.Rect rect = (android.graphics.Rect) method.invoke(obj, null);
            android.graphics.Rect rect2 = (android.graphics.Rect) method2.invoke(obj, null);
            float round = java.lang.Math.round((android.util.DisplayMetrics.DENSITY_DEVICE_STABLE * r7) / 100.0f);
            if (resources != android.content.res.Resources.getSystem() && ((java.lang.Integer) method3.invoke(field2.get(configuration), null)).intValue() == 0 && ((java.lang.Integer) method4.invoke(obj, null)).intValue() == 1 && ((java.lang.Integer) method5.invoke(obj, null)).intValue() == 1 && ((rect.width() == 963 || rect.width() == 1168) && rect.height() == 1712 && rect2.width() == 1168 && rect2.height() == 1712 && configuration.screenWidthDp == java.lang.Math.round((rect.width() * 160.0f) / round) && configuration.screenHeightDp == java.lang.Math.round((rect.height() * 160.0f) / round))) {
                android.app.Application application = (android.app.Application) method6.invoke(null, null);
                if (application == null) {
                    return chain.proceed();
                }
                android.view.Display display = ((android.hardware.display.DisplayManager) application.getSystemService(android.hardware.display.DisplayManager.class)).getDisplay(0);
                if (display == null) {
                    return chain.proceed();
                }
                android.view.Display.Mode mode = display.getMode();
                if (!dev.duo.hookprobe.E.a(mode.getPhysicalWidth(), mode.getPhysicalHeight())) {
                    return chain.proceed();
                }
                java.lang.Object arg = chain.getArg(0);
                if (arg != (z ? method7.invoke(method8.invoke(null, null), display) : method7.invoke(method8.invoke(null, null), null))) {
                    return chain.proceed();
                }
                android.content.res.Configuration configuration2 = new android.content.res.Configuration();
                configuration2.densityDpi = java.lang.Math.round((field3.getInt(arg) * r7) / 100.0f);
                configuration2.fontScale = field4.getFloat(arg);
                configuration2.screenWidthDp = field5.getInt(arg);
                configuration2.screenHeightDp = field6.getInt(arg);
                java.lang.Object newInstance = constructor.newInstance(configuration2);
                float f = configuration2.densityDpi / field3.getInt(arg);
                field7.setFloat(newInstance, field7.getFloat(arg) * f);
                field8.setFloat(newInstance, field8.getFloat(arg) * f);
                field9.setInt(newInstance, java.lang.Math.round(field9.getInt(arg) * f));
                return chain.proceed(new java.lang.Object[]{newInstance, resources, chain.getArg(2)});
            }
            return chain.proceed();
        }
        return chain.proceed();
    }
}
