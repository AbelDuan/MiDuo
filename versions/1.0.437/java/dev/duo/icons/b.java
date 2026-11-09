package dev.duo.icons;

/* loaded from: classes.dex */
final class b extends android.content.BroadcastReceiver {
    private static dev.duo.icons.b d;
    private final android.app.Application a;
    private final java.util.concurrent.ExecutorService b = java.util.concurrent.Executors.newSingleThreadExecutor();
    private final java.io.File c;

    private b(android.app.Application application) {
        this.a = application;
        this.c = new java.io.File(application.getFilesDir(), "duo-icons-v1");
    }

    static synchronized void a(android.app.Application application) {
        synchronized (dev.duo.icons.b.class) {
            if (d != null) {
                return;
            }
            dev.duo.icons.b bVar = new dev.duo.icons.b(application);
            d = bVar;
            application.registerReceiver(bVar, new android.content.IntentFilter(dev.duo.icons.g.d), dev.duo.icons.g.e, null, 2);
            android.util.Log.i("DuoIcons", "图标桥已注册，仅主题壁纸作用域");
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(android.content.Context context, final android.content.Intent intent) {
        final android.os.ResultReceiver resultReceiver;
        try {
            if (getSentFromUid() == this.a.getPackageManager().getApplicationInfo(dev.duo.icons.g.a, 0).uid && dev.duo.icons.g.a.equals(getSentFromPackage())) {
                final java.lang.String stringExtra = intent.getStringExtra("op");
                final java.lang.String stringExtra2 = intent.getStringExtra("nonce");
                if (java.util.Arrays.asList("STATUS", "APPLY", "RESTORE").contains(stringExtra) && stringExtra2 != null && stringExtra2.matches("[a-f0-9]{32}") && (resultReceiver = (android.os.ResultReceiver) intent.getParcelableExtra("reply", android.os.ResultReceiver.class)) != null) {
                    final android.content.BroadcastReceiver.PendingResult goAsync = goAsync();
                    this.b.execute(new java.lang.Runnable() { // from class: dev.duo.icons.b$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.icons.b.this.a(stringExtra, intent, stringExtra2, resultReceiver, goAsync);
                        }
                    });
                }
            }
        } catch (java.lang.Exception e) {
            android.util.Log.w("DuoIcons", "拒绝不匹配请求", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0191 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0183 A[Catch: all -> 0x019d, TryCatch #9 {all -> 0x019d, blocks: (B:41:0x0175, B:44:0x0187, B:51:0x0183), top: B:40:0x0175 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void a(java.lang.String r17, android.content.Intent r18, java.lang.String r19, android.os.ResultReceiver r20, android.content.BroadcastReceiver.PendingResult r21) {
        /*
            Method dump skipped, instructions count: 429
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.icons.b.a(java.lang.String, android.content.Intent, java.lang.String, android.os.ResultReceiver, android.content.BroadcastReceiver$PendingResult):void");
    }
}
