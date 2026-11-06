package dev.duo.icons;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import io.github.libxposed.api.XposedModuleInterface;

/* renamed from: dev.duo.icons.c */
/* loaded from: classes.dex */
public final class C0127c extends XposedModule {

    /* renamed from: a */
    private String f1929a;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m2090a(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        Application application = (Application) chain.getThisObject();
        if (C0131g.f1964b.equals(application.getPackageName())) {
            C0126b.m2088a(application);
        }
        return proceed;
    }

    public void onModuleLoaded(XposedModuleInterface.ModuleLoadedParam moduleLoadedParam) {
        this.f1929a = moduleLoadedParam.getProcessName();
    }

    public void onPackageLoaded(XposedModuleInterface.PackageLoadedParam packageLoadedParam) {
        if (packageLoadedParam.isFirstPackage() && C0131g.f1964b.equals(this.f1929a) && C0131g.f1964b.equals(packageLoadedParam.getPackageName())) {
            try {
                hook(Application.class.getDeclaredMethod("attach", Context.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.icons.c$$ExternalSyntheticLambda0
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object m2090a;
                        m2090a = C0127c.m2090a(chain);
                        return m2090a;
                    }
                });
            } catch (Throwable th) {
                Log.e("DuoIcons", "图标桥未启动", th);
            }
        }
    }
}
