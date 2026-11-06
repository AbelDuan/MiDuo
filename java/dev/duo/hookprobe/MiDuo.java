package dev.duo.hookprobe;

import android.util.Log;
import dev.duo.icons.ThemeManagerHooks;
import dev.duo.icons.IconConst;
import dev.duo.taskcore.WorkspaceProtocol;
import dev.duo.taskcore.WorkspaceWm;
import dev.duo.workspaceprobe.WorkspaceHooks;
import dev.duo.workspaceprobe.LauncherOverlayProbe;
import io.github.libxposed.api.XposedModule;
import io.github.libxposed.api.XposedModuleInterface;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class MiDuo extends XposedModule {

    /* renamed from: h */
    private static final Set<String> f1115h = new HashSet(Arrays.asList("com.miui.home", "com.android.systemui", "com.miui.personalassistant"));

    /* renamed from: a */
    private final GenericProcessHooks f1116a = new GenericProcessHooks();

    /* renamed from: b */
    private WorkspaceHooks f1117b;

    /* renamed from: c */
    private LauncherOverlayProbe f1118c;

    /* renamed from: d */
    private ThemeManagerHooks f1119d;

    /* renamed from: e */
    private boolean f1120e;

    /* renamed from: f */
    private boolean f1121f;

    /* renamed from: g */
    private FoldAnimPermission f1122g;

    /* renamed from: a */
    private boolean m1192a() {
        try {
            return getRemotePreferences("duo_top").getBoolean("_global/foldAnimation", false);
        } catch (RuntimeException e) {
            Log.e("MiDuoFold", "开关读取失败，本进程不加载动画", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ void m1193b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ void m1194c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static /* synthetic */ void m1195d() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static /* synthetic */ void m1196e() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static /* synthetic */ void m1197f() {
    }

    public void onModuleLoaded(XposedModuleInterface.ModuleLoadedParam moduleLoadedParam) {
        WorkspaceProtocol.modulePackage = IconConst.f1963a;
        WorkspaceProtocol.buildId = BuildConst.f1644b;
        Log.i("DuoWorkbench", "package=1.0.415-1-05e92cb34b03 wmProtocol=0.403-fix1-1-ef7dfe872f21");
        if (IconConst.f1964b.equals(moduleLoadedParam.getProcessName())) {
            ThemeManagerHooks c0127c = new ThemeManagerHooks();
            this.f1119d = c0127c;
            c0127c.attachFramework(this, new Runnable() { // from class: dev.duo.hookprobe.MiDuo$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    MiDuo.m1193b();
                }
            });
            this.f1119d.onModuleLoaded(moduleLoadedParam);
            return;
        }
        this.f1120e = "com.android.systemui".equals(moduleLoadedParam.getProcessName());
        this.f1121f = "com.miui.personalassistant".equals(moduleLoadedParam.getProcessName());
        this.f1116a.attachFramework(this, new Runnable() { // from class: dev.duo.hookprobe.MiDuo$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                MiDuo.m1194c();
            }
        });
        this.f1116a.onModuleLoaded(moduleLoadedParam);
        if (!moduleLoadedParam.isSystemServer() && f1115h.contains(moduleLoadedParam.getProcessName())) {
            WorkspaceHooks c0143b = new WorkspaceHooks();
            this.f1117b = c0143b;
            c0143b.attachFramework(this, new Runnable() { // from class: dev.duo.hookprobe.MiDuo$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    MiDuo.m1195d();
                }
            });
            this.f1117b.onModuleLoaded(moduleLoadedParam);
            return;
        }
        if ("com.android.quicksearchbox".equals(moduleLoadedParam.getProcessName())) {
            LauncherOverlayProbe c0148g = new LauncherOverlayProbe();
            this.f1118c = c0148g;
            c0148g.attachFramework(this, new Runnable() { // from class: dev.duo.hookprobe.MiDuo$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    MiDuo.m1196e();
                }
            });
            this.f1118c.onModuleLoaded(moduleLoadedParam);
        }
    }

    public void onPackageLoaded(XposedModuleInterface.PackageLoadedParam packageLoadedParam) {
        boolean m1192a;
        ThemeManagerHooks c0127c = this.f1119d;
        if (c0127c != null) {
            c0127c.onPackageLoaded(packageLoadedParam);
            return;
        }
        this.f1116a.onPackageLoaded(packageLoadedParam);
        WorkspaceHooks c0143b = this.f1117b;
        if (c0143b != null) {
            c0143b.onPackageLoaded(packageLoadedParam);
        }
        if ((this.f1120e || this.f1121f) && packageLoadedParam.isFirstPackage() && (m1192a = m1192a())) {
            Log.i("MiDuoFold", "开合入口 package=" + packageLoadedParam.getPackageName() + " enabled=" + m1192a);
            try {
                FoldFrameObserver.m1949b(getModuleApplicationInfo().sourceDir);
                if (this.f1120e) {
                    FoldFrameObserver.m1962e(this.f1117b);
                    FoldEngineLauncher.m1891a(this, packageLoadedParam.getDefaultClassLoader());
                }
            } catch (Exception e) {
                Log.e("MiDuoFold", "就绪观察启动失败", e);
            }
        }
    }

    public void onSystemServerStarting(XposedModuleInterface.SystemServerStartingParam systemServerStartingParam) {
        this.f1116a.onSystemServerStarting(systemServerStartingParam);
        try {
            new WorkspaceWm().install(this, systemServerStartingParam.getClassLoader());
        } catch (Throwable th) {
            Log.e("DuoWorkbench", "system_server 工作台协作未安装 1.0.415-1-05e92cb34b03", th);
        }
        boolean m1192a = m1192a();
        try {
            Class.forName("android.os.SystemProperties").getMethod("set", String.class, String.class).invoke(null, "debug.duo.foldanim", m1192a ? "247" : "0");
        } catch (ReflectiveOperationException e) {
            Log.e("MiDuoFold", "原生动画许可设置失败，本次启动不启用开合动画", e);
            m1192a = false;
        }
        if (m1192a) {
            FoldAnimPermission c0117s = new FoldAnimPermission();
            this.f1122g = c0117s;
            c0117s.attachFramework(this, new Runnable() { // from class: dev.duo.hookprobe.MiDuo$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MiDuo.m1197f();
                }
            });
            this.f1122g.onSystemServerStarting(systemServerStartingParam);
        }
    }
}
