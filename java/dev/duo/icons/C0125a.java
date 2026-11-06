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
import dev.duo.hookprobe.C0054J;
import java.util.UUID;

/* renamed from: dev.duo.icons.a */
/* loaded from: classes.dex */
final class C0125a {

    /* renamed from: a */
    private final Context f1913a;

    /* renamed from: b */
    private final Handler f1914b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    private ServiceConnection f1915c;

    /* renamed from: d */
    private Uri f1916d;

    /* renamed from: e */
    private boolean f1917e;

    /* renamed from: f */
    private boolean f1918f;

    /* renamed from: g */
    private boolean f1919g;

    /* renamed from: h */
    private volatile boolean f1920h;

    /* renamed from: dev.duo.icons.a$a */
    class a extends ResultReceiver {

        /* renamed from: a */
        final /* synthetic */ c f1921a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Handler handler, c cVar) {
            super(handler);
            this.f1921a = cVar;
        }

        @Override // android.os.ResultReceiver
        protected void onReceiveResult(int i, Bundle bundle) {
            if (!C0125a.this.f1918f) {
                C0125a.this.m2080a();
                this.f1921a.mo2078a(i == 0, bundle);
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

    /* renamed from: dev.duo.icons.a$b */
    class b implements ServiceConnection {

        /* renamed from: a */
        final /* synthetic */ Runnable f1923a;

        b(Runnable runnable) {
            this.f1923a = runnable;
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(ComponentName componentName) {
            this.f1923a.run();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            this.f1923a.run();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: dev.duo.icons.a$c */
    interface c {
        /* renamed from: a */
        void mo2078a(boolean z, Bundle bundle);
    }

    C0125a(Context context) {
        this.f1913a = context;
    }

    /* renamed from: b */
    private String m2085b() {
        try {
            ProviderInfo[] providerInfoArr = this.f1913a.getPackageManager().getPackageInfo(C0131g.f1964b, 8).providers;
            if (providerInfoArr == null) {
                return null;
            }
            for (ProviderInfo providerInfo : providerInfoArr) {
                if (providerInfo.exported && providerInfo.enabled && providerInfo.readPermission == null && providerInfo.writePermission == null && C0131g.f1964b.equals(providerInfo.processName)) {
                    return providerInfo.authority.split(";")[0];
                }
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("DuoIcons", "未安装主题壁纸", e);
            return null;
        }
    }

    /* renamed from: a */
    void m2087a(final String str, final String str2, final String str3, final c cVar) {
        final String replace = UUID.randomUUID().toString().replace(C0054J.f922e, "");
        this.f1913a.getSharedPreferences("state", 0).edit().putString("nonce", replace).putLong("nonceAt", System.currentTimeMillis()).commit();
        final a aVar = new a(this.f1914b, cVar);
        final Runnable runnable = new Runnable() { // from class: dev.duo.icons.a$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0125a.this.m2083a(str, replace, aVar, str3, str2, cVar);
            }
        };
        this.f1915c = new b(runnable);
        try {
            this.f1919g = this.f1913a.bindService(new Intent().setComponent(new ComponentName(C0131g.f1964b, C0131g.f1969g)), this.f1915c, 1);
        } catch (SecurityException e) {
            Log.w("DuoIcons", "主题服务不可绑定，改用公开 Provider 唤醒", e);
        }
        this.f1920h = this.f1919g;
        if (!this.f1919g) {
            final String m2085b = m2085b();
            if (m2085b == null) {
                runnable.run();
            } else {
                new Thread(new Runnable() { // from class: dev.duo.icons.a$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        C0125a.this.m2082a(m2085b, runnable);
                    }
                }).start();
            }
        }
        this.f1914b.postDelayed(new Runnable() { // from class: dev.duo.icons.a$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C0125a.this.m2081a(cVar);
            }
        }, 30000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2083a(String str, String str2, ResultReceiver resultReceiver, String str3, String str4, c cVar) {
        if (this.f1917e || this.f1918f) {
            return;
        }
        this.f1917e = true;
        Intent putExtra = new Intent(C0131g.f1966d).setPackage(C0131g.f1964b).putExtra("op", str).putExtra("nonce", str2).putExtra("reply", resultReceiver);
        if (str.equals("APPLY")) {
            Uri parse = Uri.parse("content://dev.duo.hookprobe.icons.files/stage/" + str2);
            this.f1916d = parse;
            this.f1913a.grantUriPermission(C0131g.f1964b, parse, 1);
            putExtra.putExtra("uri", this.f1916d).putExtra("hash", str3).putExtra("title", str4);
        }
        try {
            this.f1913a.sendBroadcast(putExtra, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
        } catch (Exception e) {
            m2080a();
            Bundle bundle = new Bundle();
            bundle.putString("message", "无法连接图标桥：" + e.getMessage());
            cVar.mo2078a(false, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2082a(String str, Runnable runnable) {
        try {
            ContentProviderClient acquireUnstableContentProviderClient = this.f1913a.getContentResolver().acquireUnstableContentProviderClient(str);
            try {
                this.f1920h = acquireUnstableContentProviderClient != null;
                if (acquireUnstableContentProviderClient != null) {
                    acquireUnstableContentProviderClient.close();
                }
            } finally {
            }
        } catch (Exception e) {
            Log.w("DuoIcons", "主题进程唤醒失败：" + str, e);
        }
        this.f1914b.post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2081a(c cVar) {
        if (this.f1918f) {
            return;
        }
        m2080a();
        Bundle bundle = new Bundle();
        bundle.putString("message", "未收到图标桥结果（主题壁纸 " + m2079a(this.f1913a) + "）。" + (this.f1920h ? "" : "主题壁纸未在运行且无法自动唤醒，请先打开一次主题壁纸再回来检查。") + "请确认 LSPosed 的 MiDuo 作用域已勾选「主题壁纸」（保留原有勾选）；刚勾选的需在系统设置里强行停止一次「主题壁纸」让它加载模块。之后点「检查模块状态」，不要重复应用。电脑和 Root 不参与此流程。");
        cVar.mo2078a(false, bundle);
    }

    /* renamed from: a */
    static String m2079a(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(C0131g.f1964b, 0);
            return packageInfo.versionName + "（" + packageInfo.getLongVersionCode() + "）";
        } catch (PackageManager.NameNotFoundException e) {
            return "未安装";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m2080a() {
        this.f1918f = true;
        if (this.f1919g) {
            try {
                this.f1913a.unbindService(this.f1915c);
            } catch (Exception e) {
            }
        }
        Uri uri = this.f1916d;
        if (uri != null) {
            this.f1913a.revokeUriPermission(uri, 1);
        }
    }
}
