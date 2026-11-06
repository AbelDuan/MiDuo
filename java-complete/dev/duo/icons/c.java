package dev.duo.icons;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import io.github.libxposed.api.XposedModuleInterface;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class c extends XposedModule {
    private String a;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object a(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        Application application = (Application) chain.getThisObject();
        if (g.b.equals(application.getPackageName())) {
            b.a(application);
        }
        return proceed;
    }

    public void onModuleLoaded(XposedModuleInterface.ModuleLoadedParam moduleLoadedParam) {
        this.a = moduleLoadedParam.getProcessName();
    }

    public void onPackageLoaded(XposedModuleInterface.PackageLoadedParam packageLoadedParam) {
        if (packageLoadedParam.isFirstPackage() && g.b.equals(this.a) && g.b.equals(packageLoadedParam.getPackageName())) {
            try {
                hook(Application.class.getDeclaredMethod("attach", Context.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.icons.c$$ExternalSyntheticLambda0
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object a;
                        a = c.a(chain);
                        return a;
                    }
                });
            } catch (Throwable th) {
                Log.e("DuoIcons", "图标桥未启动", th);
            }
        }
    }
}
