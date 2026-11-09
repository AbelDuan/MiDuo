package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
final class C0028q {

    /* renamed from: dev.duo.hookprobe.q$a */
    class a extends android.content.BroadcastReceiver {
        final /* synthetic */ android.content.Context a;

        a(android.content.Context context) {
            this.a = context;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            this.a.unregisterReceiver(this);
            dev.duo.hookprobe.C0028q.c(this.a);
        }
    }

    C0028q() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(android.content.Context context) {
        try {
            android.content.ContentProviderClient acquireContentProviderClient = context.getContentResolver().acquireContentProviderClient("dev.duo.hookprobe.config");
            try {
                if (acquireContentProviderClient == null) {
                    throw new java.lang.IllegalStateException("MiDuo 配置服务不可用");
                }
                android.os.Bundle call = acquireContentProviderClient.call("foldStart", null, null);
                if (call == null || !call.getBoolean("ok")) {
                    throw new java.lang.IllegalStateException(java.lang.String.valueOf(call));
                }
                android.util.Log.i("MiDuoFold", "引擎启动请求已受理");
                acquireContentProviderClient.close();
            } finally {
            }
        } catch (java.lang.Exception e) {
            android.util.Log.e("MiDuoFold", "开合引擎启动失败", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(final android.content.Context context) {
        android.util.Log.i("MiDuoFold", "发起引擎启动");
        new java.lang.Thread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.q$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.C0028q.b(context);
            }
        }, "MiDuoFoldStart").start();
    }

    static void a(io.github.libxposed.api.XposedModule xposedModule, java.lang.ClassLoader classLoader) {
        try {
            xposedModule.hook(java.lang.Class.forName("com.android.systemui.application.impl.SystemUIApplicationImpl", false, classLoader).getDeclaredMethod("onCreate", null)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.q$$ExternalSyntheticLambda0
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.hookprobe.C0028q.a(chain);
                    return a2;
                }
            });
            android.util.Log.i("MiDuoFold", "SystemUI 引擎启动钩子已安装");
        } catch (java.lang.ReflectiveOperationException e) {
            throw new java.lang.IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        android.app.Application application = (android.app.Application) chain.getThisObject();
        dev.duo.hookprobe.C0028q.a aVar = new dev.duo.hookprobe.C0028q.a(application);
        application.registerReceiver(aVar, new android.content.IntentFilter("android.intent.action.USER_UNLOCKED"));
        if (((android.os.UserManager) application.getSystemService(android.os.UserManager.class)).isUserUnlocked()) {
            application.unregisterReceiver(aVar);
            c(application);
            return proceed;
        }
        android.util.Log.i("MiDuoFold", "SystemUI onCreate 完成，等用户解锁后发起引擎启动");
        return proceed;
    }

    static synchronized android.os.Bundle a(android.content.Context context, int i) {
        synchronized (dev.duo.hookprobe.C0028q.class) {
            try {
                if (i == context.getPackageManager().getApplicationInfo("com.android.systemui", 0).uid) {
                    android.os.Bundle bundle = new android.os.Bundle();
                    io.github.libxposed.service.XposedService a2 = dev.duo.hookprobe.L.a(5000L);
                    if (a2 == null) {
                        bundle.putString("error", "LSPosed 配置服务未绑定");
                        return bundle;
                    }
                    dev.duo.hookprobe.C0026o c0026o = new dev.duo.hookprobe.C0026o(a2);
                    java.lang.String a3 = dev.duo.hookprobe.C0035v.a(context);
                    if (a3 != null) {
                        bundle.putString("error", a3);
                        return bundle;
                    }
                    if (!c0026o.d()) {
                        bundle.putString("error", "开合动画已关闭");
                        return bundle;
                    }
                    java.lang.String str = "'" + context.getApplicationInfo().sourceDir.replace("'", "'\\''") + "'";
                    final java.lang.String str2 = "pgrep -f '^MiDuoFoldEngine' >/dev/null || CLASSPATH=" + str + " setsid sh -c 'echo $$ > /sys/fs/cgroup/cgroup.procs && exec /system/bin/app_process /system/bin --nice-name=MiDuoFoldEngine dev.duo.fold.Engine \"$0\" || log -p e -t MiDuoFold 开合引擎启动失败' " + str + " </dev/null >/dev/null 2>&1 &";
                    new java.lang.Thread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.q$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.hookprobe.C0028q.a(str2);
                        }
                    }, "MiDuoFoldStart").start();
                    bundle.putBoolean("ok", true);
                    return bundle;
                }
                throw new java.lang.SecurityException("仅允许 SystemUI 启动开合引擎");
            } catch (android.content.pm.PackageManager.NameNotFoundException e) {
                throw new java.lang.IllegalStateException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(java.lang.String str) {
        try {
            int waitFor = new java.lang.ProcessBuilder("su", "-c", str).redirectErrorStream(true).start().waitFor();
            if (waitFor == 0) {
                android.util.Log.i("MiDuoFold", "root 启动脚本已返回");
                return;
            }
            throw new java.lang.IllegalStateException("root 启动返回 " + waitFor);
        } catch (java.lang.Exception e) {
            android.util.Log.e("MiDuoFold", "开合引擎启动失败，本次不启用", e);
        }
    }
}
