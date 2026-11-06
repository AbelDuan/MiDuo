package dev.duo.hookprobe;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import io.github.libxposed.service.XposedService;

/* renamed from: dev.duo.hookprobe.q, reason: case insensitive filesystem */
/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class q {

    /* renamed from: dev.duo.hookprobe.q$a */
    class a extends BroadcastReceiver {
        final /* synthetic */ Context a;

        a(Context context) {
            this.a = context;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            this.a.unregisterReceiver(this);
            q.c(this.a);
        }
    }

    q() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(Context context) {
        try {
            ContentProviderClient acquireContentProviderClient = context.getContentResolver().acquireContentProviderClient("com.lsposed.miduo.config");
            try {
                if (acquireContentProviderClient == null) {
                    throw new IllegalStateException("MiDuo 配置服务不可用");
                }
                Bundle call = acquireContentProviderClient.call("foldStart", null, null);
                if (call == null || !call.getBoolean("ok")) {
                    throw new IllegalStateException(String.valueOf(call));
                }
                Log.i("MiDuoFold", "引擎启动请求已受理");
                acquireContentProviderClient.close();
            } finally {
            }
        } catch (Exception e) {
            Log.e("MiDuoFold", "开合引擎启动失败", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(final Context context) {
        Log.i("MiDuoFold", "发起引擎启动");
        new Thread(new Runnable() { // from class: dev.duo.hookprobe.q$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                q.b(context);
            }
        }, "MiDuoFoldStart").start();
    }

    static void a(XposedModule xposedModule, ClassLoader classLoader) {
        try {
            xposedModule.hook(Class.forName("com.android.systemui.application.impl.SystemUIApplicationImpl", false, classLoader).getDeclaredMethod("onCreate", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.q$$ExternalSyntheticLambda0
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a2;
                    a2 = q.a(chain);
                    return a2;
                }
            });
            Log.i("MiDuoFold", "SystemUI 引擎启动钩子已安装");
        } catch (ReflectiveOperationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object a(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        Application application = (Application) chain.getThisObject();
        a aVar = new a(application);
        application.registerReceiver(aVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
        if (((UserManager) application.getSystemService(UserManager.class)).isUserUnlocked()) {
            application.unregisterReceiver(aVar);
            c(application);
            return proceed;
        }
        Log.i("MiDuoFold", "SystemUI onCreate 完成，等用户解锁后发起引擎启动");
        return proceed;
    }

    static synchronized Bundle a(Context context, int i) {
        synchronized (q.class) {
            try {
                if (i == context.getPackageManager().getApplicationInfo("com.android.systemui", 0).uid) {
                    Bundle bundle = new Bundle();
                    XposedService a2 = L.a(5000L);
                    if (a2 == null) {
                        bundle.putString("error", "LSPosed 配置服务未绑定");
                        return bundle;
                    }
                    o c0021o = new o(a2);
                    String a3 = v.a(context);
                    if (a3 != null) {
                        bundle.putString("error", a3);
                        return bundle;
                    }
                    if (!c0021o.e()) {
                        bundle.putString("error", "开合动画已关闭");
                        return bundle;
                    }
                    String str = "'" + context.getApplicationInfo().sourceDir.replace("'", "'\\''") + "'";
                    final String str2 = "pgrep -f '^MiDuoFoldEngine' >/dev/null || CLASSPATH=" + str + " setsid sh -c 'echo $$ > /sys/fs/cgroup/cgroup.procs && exec /system/bin/app_process /system/bin --nice-name=MiDuoFoldEngine dev.duo.fold.Engine \"$0\" || log -p e -t MiDuoFold 开合引擎启动失败' " + str + " </dev/null >/dev/null 2>&1 &";
                    new Thread(new Runnable() { // from class: dev.duo.hookprobe.q$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            q.a(str2);
                        }
                    }, "MiDuoFoldStart").start();
                    bundle.putBoolean("ok", true);
                    return bundle;
                }
                throw new SecurityException("仅允许 SystemUI 启动开合引擎");
            } catch (PackageManager.NameNotFoundException e) {
                throw new IllegalStateException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str) {
        try {
            int waitFor = new ProcessBuilder("su", "-c", str).redirectErrorStream(true).start().waitFor();
            if (waitFor == 0) {
                Log.i("MiDuoFold", "root 启动脚本已返回");
                return;
            }
            throw new IllegalStateException("root 启动返回 " + waitFor);
        } catch (Exception e) {
            Log.e("MiDuoFold", "开合引擎启动失败，本次不启用", e);
        }
    }
}
