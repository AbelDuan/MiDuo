package dev.duo.icons;

/* loaded from: classes.dex */
final class a {
    private final android.content.Context a;
    private final android.os.Handler b = new android.os.Handler(android.os.Looper.getMainLooper());
    private android.content.ServiceConnection c;
    private android.net.Uri d;
    private boolean e;
    private boolean f;
    private boolean g;
    private volatile boolean h;

    /* renamed from: dev.duo.icons.a$a, reason: collision with other inner class name */
    class ResultReceiverC0003a extends android.os.ResultReceiver {
        final /* synthetic */ dev.duo.icons.a.c a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ResultReceiverC0003a(android.os.Handler handler, dev.duo.icons.a.c cVar) {
            super(handler);
            this.a = cVar;
        }

        @Override // android.os.ResultReceiver
        protected void onReceiveResult(int i, android.os.Bundle bundle) {
            if (!dev.duo.icons.a.this.f) {
                dev.duo.icons.a.this.a();
                this.a.a(i == 0, bundle);
                return;
            }
            android.os.ParcelFileDescriptor parcelFileDescriptor = (android.os.ParcelFileDescriptor) bundle.getParcelable("backupFd", android.os.ParcelFileDescriptor.class);
            if (parcelFileDescriptor != null) {
                try {
                    parcelFileDescriptor.close();
                } catch (java.lang.Exception e) {
                }
            }
        }
    }

    class b implements android.content.ServiceConnection {
        final /* synthetic */ java.lang.Runnable a;

        b(java.lang.Runnable runnable) {
            this.a = runnable;
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(android.content.ComponentName componentName) {
            this.a.run();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(android.content.ComponentName componentName, android.os.IBinder iBinder) {
            this.a.run();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(android.content.ComponentName componentName) {
        }
    }

    interface c {
        void a(boolean z, android.os.Bundle bundle);
    }

    a(android.content.Context context) {
        this.a = context;
    }

    private java.lang.String b() {
        try {
            android.content.pm.ProviderInfo[] providerInfoArr = this.a.getPackageManager().getPackageInfo(dev.duo.icons.g.b, 8).providers;
            if (providerInfoArr == null) {
                return null;
            }
            for (android.content.pm.ProviderInfo providerInfo : providerInfoArr) {
                if (providerInfo.exported && providerInfo.enabled && providerInfo.readPermission == null && providerInfo.writePermission == null && dev.duo.icons.g.b.equals(providerInfo.processName)) {
                    return providerInfo.authority.split(";")[0];
                }
            }
            return null;
        } catch (android.content.pm.PackageManager.NameNotFoundException e) {
            android.util.Log.w("DuoIcons", "未安装主题壁纸", e);
            return null;
        }
    }

    void a(final java.lang.String str, final java.lang.String str2, final java.lang.String str3, final dev.duo.icons.a.c cVar) {
        final java.lang.String replace = java.util.UUID.randomUUID().toString().replace(dev.duo.hookprobe.J.e, "");
        this.a.getSharedPreferences("state", 0).edit().putString("nonce", replace).putLong("nonceAt", java.lang.System.currentTimeMillis()).commit();
        final dev.duo.icons.a.ResultReceiverC0003a resultReceiverC0003a = new dev.duo.icons.a.ResultReceiverC0003a(this.b, cVar);
        final java.lang.Runnable runnable = new java.lang.Runnable() { // from class: dev.duo.icons.a$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.icons.a.this.a(str, replace, resultReceiverC0003a, str3, str2, cVar);
            }
        };
        this.c = new dev.duo.icons.a.b(runnable);
        try {
            this.g = this.a.bindService(new android.content.Intent().setComponent(new android.content.ComponentName(dev.duo.icons.g.b, dev.duo.icons.g.g)), this.c, 1);
        } catch (java.lang.SecurityException e) {
            android.util.Log.w("DuoIcons", "主题服务不可绑定，改用公开 Provider 唤醒", e);
        }
        this.h = this.g;
        if (!this.g) {
            final java.lang.String b2 = b();
            if (b2 == null) {
                runnable.run();
            } else {
                new java.lang.Thread(new java.lang.Runnable() { // from class: dev.duo.icons.a$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.icons.a.this.a(b2, runnable);
                    }
                }).start();
            }
        }
        this.b.postDelayed(new java.lang.Runnable() { // from class: dev.duo.icons.a$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.icons.a.this.a(cVar);
            }
        }, 30000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.String str, java.lang.String str2, android.os.ResultReceiver resultReceiver, java.lang.String str3, java.lang.String str4, dev.duo.icons.a.c cVar) {
        if (this.e || this.f) {
            return;
        }
        this.e = true;
        android.content.Intent putExtra = new android.content.Intent(dev.duo.icons.g.d).setPackage(dev.duo.icons.g.b).putExtra("op", str).putExtra("nonce", str2).putExtra("reply", resultReceiver);
        if (str.equals("APPLY")) {
            android.net.Uri parse = android.net.Uri.parse("content://dev.duo.hookprobe.icons.files/stage/" + str2);
            this.d = parse;
            this.a.grantUriPermission(dev.duo.icons.g.b, parse, 1);
            putExtra.putExtra("uri", this.d).putExtra("hash", str3).putExtra("title", str4);
        }
        try {
            this.a.sendBroadcast(putExtra, null, android.app.BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
        } catch (java.lang.Exception e) {
            a();
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putString("message", "无法连接图标桥：" + e.getMessage());
            cVar.a(false, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.String str, java.lang.Runnable runnable) {
        try {
            android.content.ContentProviderClient acquireUnstableContentProviderClient = this.a.getContentResolver().acquireUnstableContentProviderClient(str);
            try {
                this.h = acquireUnstableContentProviderClient != null;
                if (acquireUnstableContentProviderClient != null) {
                    acquireUnstableContentProviderClient.close();
                }
            } finally {
            }
        } catch (java.lang.Exception e) {
            android.util.Log.w("DuoIcons", "主题进程唤醒失败：" + str, e);
        }
        this.b.post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.icons.a.c cVar) {
        if (this.f) {
            return;
        }
        a();
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putString("message", "未收到图标桥结果（主题壁纸 " + a(this.a) + "）。" + (this.h ? "" : "主题壁纸未在运行且无法自动唤醒，请先打开一次主题壁纸再回来检查。") + "请确认 LSPosed 的 MiDuo 作用域已勾选「主题壁纸」（保留原有勾选）；刚勾选的需在系统设置里强行停止一次「主题壁纸」让它加载模块。之后点「检查模块状态」，不要重复应用。电脑和 Root 不参与此流程。");
        cVar.a(false, bundle);
    }

    static java.lang.String a(android.content.Context context) {
        try {
            android.content.pm.PackageInfo packageInfo = context.getPackageManager().getPackageInfo(dev.duo.icons.g.b, 0);
            return packageInfo.versionName + "（" + packageInfo.getLongVersionCode() + "）";
        } catch (android.content.pm.PackageManager.NameNotFoundException e) {
            return "未安装";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.f = true;
        if (this.g) {
            try {
                this.a.unbindService(this.c);
            } catch (java.lang.Exception e) {
            }
        }
        android.net.Uri uri = this.d;
        if (uri != null) {
            this.a.revokeUriPermission(uri, 1);
        }
    }
}
