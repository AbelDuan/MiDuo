package com.abel.dockhook;

import android.app.Application;
import android.util.Log;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import io.github.libxposed.api.XposedModuleInterface;
import java.lang.reflect.Method;

public class MainHook extends XposedModule {
    private static final String TAG = "DSHDock";

    static {
        try { System.loadLibrary("dockhook"); }
        catch (Throwable t) { Log.e(TAG, "loadLibrary fail", t); }
    }

    private static native void nativeInit();
    private static native void nativeSetConfig(int mode, int offsetX, int offsetY, int columns);

    @Override
    public void onPackageLoaded(XposedModuleInterface.PackageLoadedParam param) {
        if (!"com.miui.home".equals(param.getPackageName())) return;
        log("onPackageLoaded: com.miui.home");
        try {
            Method onCreate = Application.class.getDeclaredMethod("onCreate");
            hook(onCreate)
                .setExceptionMode(XposedInterface.ExceptionMode.PROTECTIVE)
                .setId("app_oncreate")
                .intercept(new XposedInterface.Hooker() {
                    @Override
                    public Object intercept(XposedInterface.Chain chain) throws Throwable {
                        Object r = chain.proceed();
                        try { nativeInit(); } catch (Throwable t) { log("nativeInit fail: " + t); }
                        return r;
                    }
                });
            log("hook Application.onCreate installed");
        } catch (Throwable t) {
            log("hook fail: " + t);
        }
    }

    private void log(String s) { Log.i(TAG, s); }
}
