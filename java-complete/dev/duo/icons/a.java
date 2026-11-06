package dev.duo.icons;

import android.app.BroadcastOptions;
import android.content.ComponentName;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.util.Log;
import dev.duo.hookprobe.J;
import java.util.UUID;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class a {
    private final Context a;
    private final Handler b = new Handler(Looper.getMainLooper());
    private ServiceConnection c;
    private Uri d;
    private boolean e;
    private boolean f;
    private boolean g;
    private volatile boolean h;

    /* renamed from: dev.duo.icons.a$a, reason: collision with other inner class name */
    class ResultReceiverC0003a extends ResultReceiver {
        final /* synthetic */ c a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ResultReceiverC0003a(Handler handler, c cVar) {
            super(handler);
            this.a = cVar;
        }

        @Override // android.os.ResultReceiver
        protected void onReceiveResult(int i, Bundle bundle) {
            if (!dev.duo.icons.a.this.f) {
                dev.duo.icons.a.this.a();
                this.a.a(i == 0, bundle);
                return;
            }
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) bundle.getParcelable("backupFd", ParcelFileDescriptor.class);
            if (parcelFileDescriptor != null) {
                try {
                    parcelFileDescriptor.close();
                } catch (Exception e) {
                }
            }
        }
    }

    class b implements ServiceConnection {
        final /* synthetic */ Runnable a;

        b(Runnable runnable) {
            this.a = runnable;
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(ComponentName componentName) {
            this.a.run();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            this.a.run();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    interface c {
        void a(boolean z, Bundle bundle);
    }

    a(Context context) {
        this.a = context;
    }

    private String b() {
        try {
            ProviderInfo[] providerInfoArr = this.a.getPackageManager().getPackageInfo(g.b, 8).providers;
            if (providerInfoArr == null) {
                return null;
            }
            for (ProviderInfo providerInfo : providerInfoArr) {
                if (providerInfo.exported && providerInfo.enabled && providerInfo.readPermission == null && providerInfo.writePermission == null && g.b.equals(providerInfo.processName)) {
                    return providerInfo.authority.split(";")[0];
                }
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("DuoIcons", "未安装主题壁纸", e);
            return null;
        }
    }

    void a(final String str, final String str2, final String str3, final c cVar) {
        final String replace = UUID.randomUUID().toString().replace(J.e, "");
        this.a.getSharedPreferences("state", 0).edit().putString("nonce", replace).putLong("nonceAt", System.currentTimeMillis()).commit();
        final ResultReceiverC0003a resultReceiverC0003a = new ResultReceiverC0003a(this.b, cVar);
        final Runnable runnable = new Runnable() { // from class: dev.duo.icons.a$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.icons.a.this.a(str, replace, resultReceiverC0003a, str3, str2, cVar);
            }
        };
        this.c = new b(runnable);
        try {
            this.g = this.a.bindService(new Intent().setComponent(new ComponentName(g.b, g.g)), this.c, 1);
        } catch (SecurityException e) {
            Log.w("DuoIcons", "主题服务不可绑定，改用公开 Provider 唤醒", e);
        }
        this.h = this.g;
        if (!this.g) {
            final String b2 = b();
            if (b2 == null) {
                runnable.run();
            } else {
                new Thread(new Runnable() { // from class: dev.duo.icons.a$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.icons.a.this.a(b2, runnable);
                    }
                }).start();
            }
        }
        this.b.postDelayed(new Runnable() { // from class: dev.duo.icons.a$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.icons.a.this.a(cVar);
            }
        }, 30000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, ResultReceiver resultReceiver, String str3, String str4, c cVar) {
        if (this.e || this.f) {
            return;
        }
        this.e = true;
        Intent putExtra = new Intent(g.d).setPackage(g.b).putExtra("op", str).putExtra("nonce", str2).putExtra("reply", resultReceiver);
        if (str.equals("APPLY")) {
            Uri parse = Uri.parse("content://com.lsposed.miduo.icons.files/stage/" + str2);
            this.d = parse;
            this.a.grantUriPermission(g.b, parse, 1);
            putExtra.putExtra("uri", this.d).putExtra("hash", str3).putExtra("title", str4);
        }
        try {
            this.a.sendBroadcast(putExtra, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
        } catch (Exception e) {
            a();
            Bundle bundle = new Bundle();
            bundle.putString("message", "无法连接图标桥：" + dev.duo.icons.e.getMessage());
            cVar.a(false, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Runnable runnable) {
        try {
            ContentProviderClient acquireUnstableContentProviderClient = this.a.getContentResolver().acquireUnstableContentProviderClient(str);
            try {
                this.h = acquireUnstableContentProviderClient != null;
                if (acquireUnstableContentProviderClient != null) {
                    acquireUnstableContentProviderClient.close();
                }
            } finally {
            }
        } catch (Exception e) {
            Log.w("DuoIcons", "主题进程唤醒失败：" + str, e);
        }
        this.b.post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(c cVar) {
        if (this.f) {
            return;
        }
        a();
        Bundle bundle = new Bundle();
        bundle.putString("message", "未收到图标桥结果（主题壁纸 " + a(this.a) + "）。" + (this.h ? "" : "主题壁纸未在运行且无法自动唤醒，请先打开一次主题壁纸再回来检查。") + "请确认 LSPosed 的 MiDuo 作用域已勾选「主题壁纸」（保留原有勾选）；刚勾选的需在系统设置里强行停止一次「主题壁纸」让它加载模块。之后点「检查模块状态」，不要重复应用。电脑和 Root 不参与此流程。");
        cVar.a(false, bundle);
    }

    static String a(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(g.b, 0);
            return packageInfo.versionName + "（" + packageInfo.getLongVersionCode() + "）";
        } catch (PackageManager.NameNotFoundException e) {
            return "未安装";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.f = true;
        if (this.g) {
            try {
                this.a.unbindService(this.c);
            } catch (Exception e) {
            }
        }
        Uri uri = this.d;
        if (uri != null) {
            this.a.revokeUriPermission(uri, 1);
        }
    }
}
