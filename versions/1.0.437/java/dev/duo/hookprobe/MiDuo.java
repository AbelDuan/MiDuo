package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class MiDuo extends io.github.libxposed.api.XposedModule {
    private static final java.util.Set<java.lang.String> h = new java.util.HashSet(java.util.Arrays.asList("com.miui.home", "com.android.systemui", "com.miui.personalassistant"));
    private final dev.duo.hookprobe.G a = new dev.duo.hookprobe.G();
    private dev.duo.workspaceprobe.b b;
    private dev.duo.workspaceprobe.g c;
    private dev.duo.icons.c d;
    private boolean e;
    private boolean f;
    private dev.duo.hookprobe.C0029s g;

    private boolean a() {
        try {
            return getRemotePreferences("duo_top").getBoolean("_global/foldAnimation", false);
        } catch (java.lang.RuntimeException e) {
            android.util.Log.e("MiDuoFold", "开关读取失败，本进程不加载动画", e);
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

    public void onModuleLoaded(io.github.libxposed.api.XposedModuleInterface.ModuleLoadedParam moduleLoadedParam) {
        dev.duo.taskcore.h.I = dev.duo.icons.g.a;
        dev.duo.taskcore.h.J = dev.duo.hookprobe.C0023l.b;
        android.util.Log.i("DuoWorkbench", "package=1.0.437-4-bbb1db675c6a wmProtocol=0.403-fix1-1-ef7dfe872f21");
        if (dev.duo.icons.g.b.equals(moduleLoadedParam.getProcessName())) {
            dev.duo.icons.c cVar = new dev.duo.icons.c();
            this.d = cVar;
            cVar.attachFramework(this, new java.lang.Runnable() { // from class: dev.duo.hookprobe.MiDuo$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MiDuo.b();
                }
            });
            this.d.onModuleLoaded(moduleLoadedParam);
            return;
        }
        this.e = "com.android.systemui".equals(moduleLoadedParam.getProcessName());
        this.f = "com.miui.personalassistant".equals(moduleLoadedParam.getProcessName());
        this.a.attachFramework(this, new java.lang.Runnable() { // from class: dev.duo.hookprobe.MiDuo$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MiDuo.c();
            }
        });
        this.a.onModuleLoaded(moduleLoadedParam);
        if (!moduleLoadedParam.isSystemServer() && h.contains(moduleLoadedParam.getProcessName())) {
            dev.duo.workspaceprobe.b bVar = new dev.duo.workspaceprobe.b();
            this.b = bVar;
            bVar.attachFramework(this, new java.lang.Runnable() { // from class: dev.duo.hookprobe.MiDuo$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MiDuo.d();
                }
            });
            this.b.onModuleLoaded(moduleLoadedParam);
            return;
        }
        if ("com.android.quicksearchbox".equals(moduleLoadedParam.getProcessName())) {
            dev.duo.workspaceprobe.g gVar = new dev.duo.workspaceprobe.g();
            this.c = gVar;
            gVar.attachFramework(this, new java.lang.Runnable() { // from class: dev.duo.hookprobe.MiDuo$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MiDuo.e();
                }
            });
            this.c.onModuleLoaded(moduleLoadedParam);
        }
    }

    public void onPackageLoaded(io.github.libxposed.api.XposedModuleInterface.PackageLoadedParam packageLoadedParam) {
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
            android.util.Log.i("MiDuoFold", "开合入口 package=" + packageLoadedParam.getPackageName() + " enabled=" + a);
            try {
                dev.duo.hookprobe.C0030t.b(getModuleApplicationInfo().sourceDir);
                if (this.e) {
                    dev.duo.hookprobe.C0030t.e(this.b);
                    dev.duo.hookprobe.C0028q.a(this, packageLoadedParam.getDefaultClassLoader());
                }
            } catch (java.lang.Exception e) {
                android.util.Log.e("MiDuoFold", "就绪观察启动失败", e);
            }
        }
    }

    public void onSystemServerStarting(io.github.libxposed.api.XposedModuleInterface.SystemServerStartingParam systemServerStartingParam) {
        this.a.onSystemServerStarting(systemServerStartingParam);
        try {
            new dev.duo.taskcore.k().a((io.github.libxposed.api.XposedInterface) this, systemServerStartingParam.getClassLoader());
        } catch (java.lang.Throwable th) {
            android.util.Log.e("DuoWorkbench", "system_server 工作台协作未安装 1.0.437-4-bbb1db675c6a", th);
        }
        boolean a = a();
        try {
            java.lang.Class.forName("android.os.SystemProperties").getMethod("set", java.lang.String.class, java.lang.String.class).invoke(null, "debug.duo.foldanim", a ? "247" : "0");
        } catch (java.lang.ReflectiveOperationException e) {
            android.util.Log.e("MiDuoFold", "原生动画许可设置失败，本次启动不启用开合动画", e);
            a = false;
        }
        if (a) {
            dev.duo.hookprobe.C0029s c0029s = new dev.duo.hookprobe.C0029s();
            this.g = c0029s;
            c0029s.attachFramework(this, new java.lang.Runnable() { // from class: dev.duo.hookprobe.MiDuo$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MiDuo.f();
                }
            });
            this.g.onSystemServerStarting(systemServerStartingParam);
        }
    }
}
