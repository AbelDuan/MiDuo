package dev.duo.hookprobe;

import android.util.Log;
import dev.duo.taskcore.WorkspaceProtocol;
import dev.duo.taskcore.WorkspaceWm;
import io.github.libxposed.api.XposedModule;
import io.github.libxposed.api.XposedModuleInterface;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class MiDuo extends XposedModule {
    private static final Set<String> h = new HashSet(Arrays.asList("com.miui.home", "com.android.systemui", "com.miui.personalassistant"));
    private final G a = new G();
    private dev.duo.workspaceprobe.b b;
    private dev.duo.workspaceprobe.g c;
    private dev.duo.icons.c d;
    private boolean e;
    private boolean f;
    private s g;

    private boolean a() {
        try {
            return getRemotePreferences("duo_top").getBoolean("_global/foldAnimation", false);
        } catch (RuntimeException e) {
            Log.e("MiDuoFold", "开关读取失败，本进程不加载动画", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f() {
    }

    public void onModuleLoaded(XposedModuleInterface.ModuleLoadedParam moduleLoadedParam) {
        WorkspaceProtocol.modulePackage = dev.duo.icons.g.a;
        WorkspaceProtocol.buildId = l.b;
        Log.i("DuoWorkbench", "package=1.0.415-1-05e92cb34b03 wmProtocol=0.403-fix1-1-ef7dfe872f21");
        if (dev.duo.icons.g.b.equals(moduleLoadedParam.getProcessName())) {
            dev.duo.icons.c cVar = new dev.duo.icons.c();
            this.d = cVar;
            cVar.attachFramework(this, new Runnable() { // from class: dev.duo.hookprobe.MiDuo$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    MiDuo.b();
                }
            });
            this.d.onModuleLoaded(moduleLoadedParam);
            return;
        }
        this.e = "com.android.systemui".equals(moduleLoadedParam.getProcessName());
        this.f = "com.miui.personalassistant".equals(moduleLoadedParam.getProcessName());
        this.a.attachFramework(this, new Runnable() { // from class: dev.duo.hookprobe.MiDuo$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                MiDuo.c();
            }
        });
        this.a.onModuleLoaded(moduleLoadedParam);
        if (!moduleLoadedParam.isSystemServer() && dev.duo.hookprobe.h.contains(moduleLoadedParam.getProcessName())) {
            dev.duo.workspaceprobe.b bVar = new dev.duo.workspaceprobe.b();
            this.b = bVar;
            bVar.attachFramework(this, new Runnable() { // from class: dev.duo.hookprobe.MiDuo$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    MiDuo.d();
                }
            });
            this.b.onModuleLoaded(moduleLoadedParam);
            return;
        }
        if ("com.android.quicksearchbox".equals(moduleLoadedParam.getProcessName())) {
            dev.duo.workspaceprobe.g gVar = new dev.duo.workspaceprobe.g();
            this.c = gVar;
            gVar.attachFramework(this, new Runnable() { // from class: dev.duo.hookprobe.MiDuo$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    MiDuo.e();
                }
            });
            this.c.onModuleLoaded(moduleLoadedParam);
        }
    }

    public void onPackageLoaded(XposedModuleInterface.PackageLoadedParam packageLoadedParam) {
        boolean a;
        dev.duo.icons.c cVar = this.d;
        if (cVar != null) {
            cVar.onPackageLoaded(packageLoadedParam);
            return;
        }
        this.a.onPackageLoaded(packageLoadedParam);
        dev.duo.workspaceprobe.b bVar = this.b;
        if (bVar != null) {
            bVar.onPackageLoaded(packageLoadedParam);
        }
        if ((this.e || this.f) && packageLoadedParam.isFirstPackage() && (a = a())) {
            Log.i("MiDuoFold", "开合入口 package=" + packageLoadedParam.getPackageName() + " enabled=" + a);
            try {
                t.b(getModuleApplicationInfo().sourceDir);
                if (this.e) {
                    t.e(this.b);
                    q.a(this, packageLoadedParam.getDefaultClassLoader());
                }
            } catch (Exception e) {
                Log.e("MiDuoFold", "就绪观察启动失败", e);
            }
        }
    }

    public void onSystemServerStarting(XposedModuleInterface.SystemServerStartingParam systemServerStartingParam) {
        this.a.onSystemServerStarting(systemServerStartingParam);
        try {
            new WorkspaceWm().install(this, systemServerStartingParam.getClassLoader());
        } catch (Throwable th) {
            Log.e("DuoWorkbench", "system_server 工作台协作未安装 1.0.415-1-05e92cb34b03", th);
        }
        boolean a = a();
        try {
            Class.forName("android.os.SystemProperties").getMethod("set", String.class, String.class).invoke(null, "debug.duo.foldanim", a ? "247" : "0");
        } catch (ReflectiveOperationException e) {
            Log.e("MiDuoFold", "原生动画许可设置失败，本次启动不启用开合动画", e);
            a = false;
        }
        if (a) {
            s sVar = new s();
            this.g = sVar;
            sVar.attachFramework(this, new Runnable() { // from class: dev.duo.hookprobe.MiDuo$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MiDuo.f();
                }
            });
            this.g.onSystemServerStarting(systemServerStartingParam);
        }
    }
}
