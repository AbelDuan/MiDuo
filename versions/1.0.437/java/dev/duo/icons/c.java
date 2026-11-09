package dev.duo.icons;

/* loaded from: classes.dex */
public final class c extends io.github.libxposed.api.XposedModule {
    private java.lang.String a;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        android.app.Application application = (android.app.Application) chain.getThisObject();
        if (dev.duo.icons.g.b.equals(application.getPackageName())) {
            dev.duo.icons.b.a(application);
        }
        return proceed;
    }

    public void onModuleLoaded(io.github.libxposed.api.XposedModuleInterface.ModuleLoadedParam moduleLoadedParam) {
        this.a = moduleLoadedParam.getProcessName();
    }

    public void onPackageLoaded(io.github.libxposed.api.XposedModuleInterface.PackageLoadedParam packageLoadedParam) {
        if (packageLoadedParam.isFirstPackage() && dev.duo.icons.g.b.equals(this.a) && dev.duo.icons.g.b.equals(packageLoadedParam.getPackageName())) {
            try {
                hook(android.app.Application.class.getDeclaredMethod("attach", android.content.Context.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.icons.c$$ExternalSyntheticLambda0
                    public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                        java.lang.Object a;
                        a = dev.duo.icons.c.a(chain);
                        return a;
                    }
                });
            } catch (java.lang.Throwable th) {
                android.util.Log.e("DuoIcons", "图标桥未启动", th);
            }
        }
    }
}
