package dev.duo.hookprobe;

import android.app.Application;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.function.BooleanSupplier;
import java.util.function.IntSupplier;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class D {
    D() {
    }

    static void a(XposedModule xposedModule, ClassLoader classLoader, final BooleanSupplier booleanSupplier, final IntSupplier intSupplier) {
        Class<?> cls;
        final boolean z;
        try {
            Class.forName("miuix.autodensity.AutoDensityConfig", false, classLoader);
            try {
                try {
                    cls = Class.forName("miuix.autodensity.DensityUtil", false, classLoader);
                    z = true;
                } catch (ClassNotFoundException e) {
                    cls = Class.forName("miuix.autodensity.g", false, classLoader);
                    z = false;
                }
                Class<?> cls2 = Class.forName(z ? "miuix.view.DisplayConfig" : "miuix.view.e", false, classLoader);
                final Constructor<?> constructor = cls2.getConstructor(Configuration.class);
                final Field field = cls2.getField(z ? "densityDpi" : "d");
                final Field field2 = cls2.getField(z ? "density" : "e");
                final Field field3 = cls2.getField(z ? "scaledDensity" : "f");
                final Field field4 = cls2.getField(z ? "fontScale" : "g");
                final Field field5 = cls2.getField(z ? "defaultBitmapDensity" : "c");
                final Field field6 = cls2.getField(z ? "windowWidthDp" : "a");
                final Field field7 = cls2.getField(z ? "windowHeightDp" : "b");
                final Field field8 = Configuration.class.getField("windowConfiguration");
                final Field field9 = Configuration.class.getField("extraConfig");
                Class<?> type = field8.getType();
                final Method method = type.getMethod("getBounds", null);
                final Method method2 = type.getMethod("getMaxBounds", null);
                final Method method3 = type.getMethod("getWindowingMode", null);
                final Method method4 = type.getMethod("getActivityType", null);
                final Method method5 = field9.getType().getMethod("getDisplayId", null);
                final Method method6 = Class.forName("android.app.ActivityThread", false, classLoader).getMethod("currentApplication", null);
                Method declaredMethod = cls.getDeclaredMethod(z ? "doChangeDensity" : "b", cls2, Resources.class, Integer.TYPE);
                Class<?> cls3 = Class.forName(z ? "miuix.autodensity.DensityConfigManager" : "miuix.autodensity.e", false, classLoader);
                final Method method7 = cls3.getMethod(z ? "getInstance" : "h", null);
                final Method method8 = z ? cls3.getMethod("getTargetConfig", Display.class) : cls3.getMethod("j", null);
                xposedModule.hook(declaredMethod).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.D$$ExternalSyntheticLambda0
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object a;
                        a = D.a(intSupplier, booleanSupplier, field8, method, method2, method5, field9, method3, method4, method6, z, method8, method7, field, field4, field6, field7, constructor, field2, field3, field5, chain);
                        return a;
                    }
                });
                int i = 0;
                int i2 = 0;
                for (Method method9 : cls.getDeclaredMethods()) {
                    if (!method9.equals(declaredMethod)) {
                        i++;
                        if (xposedModule.deoptimize(method9)) {
                            i2++;
                        } else {
                            Log.w("DuoOuterDensity", "deoptimize failed: " + method9);
                        }
                    }
                }
                Log.i("DuoOuterDensity", "READY MIUIX outer Activity density (user scale), deoptimized " + i2 + "/" + i);
            } catch (ReflectiveOperationException e2) {
                Log.e("DuoOuterDensity", "MIUIX outer density NOT installed", e2);
            }
        } catch (ClassNotFoundException e3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object a(IntSupplier intSupplier, BooleanSupplier booleanSupplier, Field field, Method method, Method method2, Method method3, Field field2, Method method4, Method method5, Method method6, boolean z, Method method7, Method method8, Field field3, Field field4, Field field5, Field field6, Constructor constructor, Field field7, Field field8, Field field9, XposedInterface.Chain chain) throws Throwable {
        if (intSupplier.getAsInt() < 100 && booleanSupplier.getAsBoolean()) {
            Resources resources = (Resources) chain.getArg(1);
            Configuration configuration = resources.getConfiguration();
            Object obj = field.get(configuration);
            Rect rect = (Rect) method.invoke(obj, null);
            Rect rect2 = (Rect) method2.invoke(obj, null);
            float round = Math.round((android.util.DisplayMetrics.DENSITY_DEVICE_STABLE * r7) / 100.0f);
            if (resources != Resources.getSystem() && ((Integer) method3.invoke(field2.get(configuration), null)).intValue() == 0 && ((Integer) method4.invoke(obj, null)).intValue() == 1 && ((Integer) method5.invoke(obj, null)).intValue() == 1 && ((rect.width() == 963 || rect.width() == 1168) && rect.height() == 1712 && rect2.width() == 1168 && rect2.height() == 1712 && configuration.screenWidthDp == Math.round((rect.width() * 160.0f) / round) && configuration.screenHeightDp == Math.round((rect.height() * 160.0f) / round))) {
                Application application = (Application) method6.invoke(null, null);
                if (application == null) {
                    return chain.proceed();
                }
                Display display = ((DisplayManager) application.getSystemService(DisplayManager.class)).getDisplay(0);
                if (display == null) {
                    return chain.proceed();
                }
                Display.Mode mode = display.getMode();
                if (!E.a(mode.getPhysicalWidth(), mode.getPhysicalHeight())) {
                    return chain.proceed();
                }
                Object arg = chain.getArg(0);
                if (arg != (z ? method7.invoke(method8.invoke(null, null), display) : method7.invoke(method8.invoke(null, null), null))) {
                    return chain.proceed();
                }
                Configuration configuration2 = new Configuration();
                configuration2.densityDpi = Math.round((field3.getInt(arg) * r7) / 100.0f);
                configuration2.fontScale = field4.getFloat(arg);
                configuration2.screenWidthDp = field5.getInt(arg);
                configuration2.screenHeightDp = field6.getInt(arg);
                Object newInstance = constructor.newInstance(configuration2);
                float f = configuration2.densityDpi / field3.getInt(arg);
                field7.setFloat(newInstance, field7.getFloat(arg) * f);
                field8.setFloat(newInstance, field8.getFloat(arg) * f);
                field9.setInt(newInstance, Math.round(field9.getInt(arg) * f));
                return chain.proceed(new Object[]{newInstance, resources, chain.getArg(2)});
            }
            return chain.proceed();
        }
        return chain.proceed();
    }
}
