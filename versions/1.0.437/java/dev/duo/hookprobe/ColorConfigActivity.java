package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class ColorConfigActivity extends android.app.Activity {
    private dev.duo.hookprobe.ColorConfigActivity.b a;
    private android.app.AlertDialog b;

    private static final class b {
        android.net.Uri a;
        java.util.Map<java.lang.String, java.lang.String> b;
        boolean c;
        boolean d;
        java.lang.String e;
        dev.duo.hookprobe.ColorConfigActivity f;

        private b() {
        }
    }

    static void a(android.app.Activity activity, java.lang.String str, boolean z) {
        activity.startActivity(new android.content.Intent(activity, (java.lang.Class<?>) dev.duo.hookprobe.ColorConfigActivity.class).putExtra("pkg", str).putExtra("export", z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        try {
            io.github.libxposed.service.XposedService a2 = dev.duo.hookprobe.L.a(1500L);
            if (a2 == null) {
                throw new java.io.IOException("请先连接 LSPosed");
            }
            java.lang.String a3 = dev.duo.hookprobe.C0024m.a(new dev.duo.hookprobe.C0026o(a2).a.getAll(), getIntent().getStringExtra("pkg"));
            java.io.OutputStream openOutputStream = getContentResolver().openOutputStream(this.a.a, "wt");
            try {
                if (openOutputStream == null) {
                    throw new java.io.IOException("无法写入所选文件");
                }
                java.io.OutputStreamWriter outputStreamWriter = new java.io.OutputStreamWriter(openOutputStream, java.nio.charset.StandardCharsets.UTF_8);
                outputStreamWriter.write(a3);
                outputStreamWriter.flush();
                openOutputStream.close();
                b("颜色配置已导出");
            } catch (java.lang.Throwable th) {
                if (openOutputStream != null) {
                    try {
                        openOutputStream.close();
                    } catch (java.lang.Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (java.io.IOException | java.lang.RuntimeException e) {
            b("导出失败：" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        try {
            java.io.InputStream openInputStream = getContentResolver().openInputStream(this.a.a);
            try {
                if (openInputStream == null) {
                    throw new java.io.IOException("无法读取所选文件");
                }
                java.lang.String a2 = dev.duo.hookprobe.C0024m.a(openInputStream);
                openInputStream.close();
                java.util.Map<java.lang.String, java.lang.String> c = dev.duo.hookprobe.C0024m.c(a2);
                dev.duo.hookprobe.ColorConfigActivity.b bVar = this.a;
                bVar.b = c;
                bVar.c = false;
                d();
            } catch (java.lang.Throwable th) {
                if (openInputStream != null) {
                    try {
                        openInputStream.close();
                    } catch (java.lang.Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (java.io.IOException | java.lang.RuntimeException e) {
            b("导入失败：" + e.getMessage());
        }
    }

    private void d() {
        new android.os.Handler(android.os.Looper.getMainLooper()).post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.ColorConfigActivity.this.a();
            }
        });
    }

    private void e() {
        this.a.c = true;
        if (!getIntent().getBooleanExtra("export", false)) {
            dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.ColorConfigActivity.this.c();
                }
            });
        } else {
            this.a.d = true;
            dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.ColorConfigActivity.this.b();
                }
            });
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, android.content.Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 1 || i2 != -1 || intent == null || intent.getData() == null) {
            finish();
            return;
        }
        this.a.a = intent.getData();
        e();
    }

    @Override // android.app.Activity
    protected void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        dev.duo.hookprobe.U.a((android.app.Activity) this);
        android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(this);
        frameLayout.setBackground(dev.duo.hookprobe.U.b(this));
        android.widget.TextView a2 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.c, 500);
        a2.setText("正在处理颜色配置…");
        frameLayout.addView(a2, new android.widget.FrameLayout.LayoutParams(-2, -2, 17));
        setContentView(frameLayout);
        dev.duo.hookprobe.ColorConfigActivity.b bVar = (dev.duo.hookprobe.ColorConfigActivity.b) getLastNonConfigurationInstance();
        dev.duo.hookprobe.ColorConfigActivity.b bVar2 = bVar == null ? new dev.duo.hookprobe.ColorConfigActivity.b() : bVar;
        this.a = bVar2;
        bVar2.f = this;
        if (bVar != null) {
            d();
            return;
        }
        if (bundle == null) {
            boolean booleanExtra = getIntent().getBooleanExtra("export", false);
            android.content.Intent type = new android.content.Intent(booleanExtra ? "android.intent.action.CREATE_DOCUMENT" : "android.intent.action.OPEN_DOCUMENT").addCategory("android.intent.category.OPENABLE").setType(booleanExtra ? "application/octet-stream" : "*/*");
            if (booleanExtra) {
                java.lang.String stringExtra = getIntent().getStringExtra("pkg");
                type.putExtra("android.intent.extra.TITLE", (stringExtra == null ? "MiDuo-全部颜色配置" : a(stringExtra) + "-颜色配置").replaceAll("[\\\\/:*?\"<>|\\p{Cntrl}]", "_") + dev.duo.hookprobe.J.e + new java.text.SimpleDateFormat("yyyyMMdd-HHmmss", java.util.Locale.ROOT).format(new java.util.Date()) + ".miduocolors");
            }
            startActivityForResult(type, 1);
            return;
        }
        if (bundle.getBoolean("writing")) {
            b("操作被中断，请检查当前配置后再操作");
            return;
        }
        java.lang.String string = bundle.getString("selected");
        if (string != null) {
            this.a.a = android.net.Uri.parse(string);
            e();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        dev.duo.hookprobe.ColorConfigActivity.b bVar = this.a;
        if (bVar != null && bVar.f == this) {
            bVar.f = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public java.lang.Object onRetainNonConfigurationInstance() {
        return this.a;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(android.os.Bundle bundle) {
        super.onSaveInstanceState(bundle);
        android.net.Uri uri = this.a.a;
        if (uri != null) {
            bundle.putString("selected", uri.toString());
        }
        bundle.putBoolean("writing", this.a.d);
    }

    private java.lang.String a(java.lang.String str) {
        try {
            return getPackageManager().getApplicationLabel(getPackageManager().getApplicationInfo(str, 0)).toString();
        } catch (android.content.pm.PackageManager.NameNotFoundException e) {
            return str;
        }
    }

    private void a(final java.util.Map<java.lang.String, java.lang.String> map) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        android.app.AlertDialog alertDialog = this.b;
        if (alertDialog == null || !alertDialog.isShowing()) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            java.util.Iterator<java.lang.String> it = dev.duo.hookprobe.C0024m.a(map).iterator();
            while (it.hasNext()) {
                sb.append("\n• ").append(a(it.next()));
            }
            final android.app.AlertDialog create = dev.duo.hookprobe.U.a((android.app.Activity) this, "替换颜色配置？").setMessage("将替换以下 App 的全部配色：" + ((java.lang.Object) sb) + "\n\n其他 App 和其他设置保持不变。未安装 App 的配色也会保存。").setNegativeButton("取消", new android.content.DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(android.content.DialogInterface dialogInterface, int i) {
                    dev.duo.hookprobe.ColorConfigActivity.this.a(dialogInterface, i);
                }
            }).setPositiveButton("确认替换", (android.content.DialogInterface.OnClickListener) null).create();
            this.b = create;
            create.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(android.content.DialogInterface dialogInterface) {
                    dev.duo.hookprobe.ColorConfigActivity.this.a(dialogInterface);
                }
            });
            dev.duo.hookprobe.U.a(create);
            create.getButton(-1).setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.hookprobe.ColorConfigActivity.this.a(create, map, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.content.DialogInterface dialogInterface, int i) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.content.DialogInterface dialogInterface) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.app.AlertDialog alertDialog, final java.util.Map map, android.view.View view) {
        dev.duo.hookprobe.ColorConfigActivity.b bVar = this.a;
        bVar.c = true;
        bVar.d = true;
        alertDialog.getButton(-1).setEnabled(false);
        dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.ColorConfigActivity.this.b(map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        java.util.Map<java.lang.String, java.lang.String> map;
        dev.duo.hookprobe.ColorConfigActivity colorConfigActivity = this.a.f;
        if (colorConfigActivity == null || colorConfigActivity.isFinishing() || colorConfigActivity.isDestroyed()) {
            return;
        }
        dev.duo.hookprobe.ColorConfigActivity.b bVar = this.a;
        java.lang.String str = bVar.e;
        if (str != null) {
            android.widget.Toast.makeText(colorConfigActivity, str, 1).show();
            colorConfigActivity.finish();
        } else {
            if (bVar.c || (map = bVar.b) == null) {
                return;
            }
            colorConfigActivity.a(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(java.util.Map map) {
        try {
            io.github.libxposed.service.XposedService a2 = dev.duo.hookprobe.L.a(1500L);
            if (a2 != null) {
                synchronized (dev.duo.hookprobe.F.class) {
                    if (new dev.duo.hookprobe.C0026o(a2).a((java.util.Map<java.lang.String, java.lang.String>) map)) {
                        android.os.Bundle a3 = dev.duo.hookprobe.F.a("");
                        if (dev.duo.hookprobe.C0024m.a((java.util.Map<java.lang.String, java.lang.String>) map).contains(a3.getString("package"))) {
                            dev.duo.hookprobe.F.a(this, a3.getLong("token"));
                        }
                    } else {
                        throw new java.io.IOException("颜色配置保存失败");
                    }
                }
                b("颜色配置已导入");
                return;
            }
            throw new java.io.IOException("LSPosed 配置服务未连接");
        } catch (java.io.IOException | java.lang.RuntimeException e) {
            b("导入失败：" + e.getMessage());
        }
    }

    private void b(java.lang.String str) {
        dev.duo.hookprobe.ColorConfigActivity.b bVar = this.a;
        bVar.e = str;
        bVar.c = false;
        d();
    }
}
