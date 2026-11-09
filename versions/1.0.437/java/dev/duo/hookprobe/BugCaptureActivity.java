package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class BugCaptureActivity extends android.app.Activity {
    private android.widget.TextView a;
    private android.widget.TextView b;
    private android.widget.TextView c;
    private android.widget.TextView d;
    private android.widget.TextView e;
    private java.lang.String f;
    private final android.content.SharedPreferences.OnSharedPreferenceChangeListener g = new android.content.SharedPreferences.OnSharedPreferenceChangeListener() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda1
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
            dev.duo.hookprobe.BugCaptureActivity.this.a(sharedPreferences, str);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(android.view.View view) {
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(android.view.View view) {
        if (checkSelfPermission("android.permission.POST_NOTIFICATIONS") != 0) {
            requestPermissions(new java.lang.String[]{"android.permission.POST_NOTIFICATIONS"}, 1);
        } else {
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(android.view.View view) {
        startService(new android.content.Intent(this, (java.lang.Class<?>) dev.duo.hookprobe.BugCaptureService.class).setAction("dev.duo.hookprobe.STOP_BUG_CAPTURE"));
        this.c.setEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(android.view.View view) {
        this.f = dev.duo.hookprobe.BugCaptureService.a(this).getString("file", null);
        startActivityForResult(new android.content.Intent("android.intent.action.CREATE_DOCUMENT").addCategory("android.intent.category.OPENABLE").setType("text/plain").putExtra("android.intent.extra.TITLE", "MiDuo-" + this.f), 2);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, android.content.Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 2 || i2 != -1 || intent == null || intent.getData() == null) {
            return;
        }
        final android.net.Uri data = intent.getData();
        final java.io.File file = new java.io.File(getFilesDir(), this.f);
        final android.content.Context applicationContext = getApplicationContext();
        dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.BugCaptureActivity.this.a(file, applicationContext, data);
            }
        });
    }

    @Override // android.app.Activity
    protected void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        dev.duo.hookprobe.L.a(this);
        dev.duo.hookprobe.U.d dVar = new dev.duo.hookprobe.U.d(this);
        android.widget.LinearLayout a = dev.duo.hookprobe.U.a((android.content.Context) this);
        a.setPadding(dev.duo.hookprobe.U.a((android.content.Context) this, 20.0f), dev.duo.hookprobe.U.a((android.content.Context) this, 20.0f), dev.duo.hookprobe.U.a((android.content.Context) this, 20.0f), dev.duo.hookprobe.U.a((android.content.Context) this, 28.0f));
        android.widget.TextView a2 = dev.duo.hookprobe.U.a((android.content.Context) this, "返回", false, 44.0f);
        a2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.BugCaptureActivity.this.a(view);
            }
        });
        a.addView(a2, dev.duo.hookprobe.U.a());
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 24.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("Bug 抓取模式");
        a.addView(a3, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 20.0f));
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 14.0f, dev.duo.hookprobe.U.c, dev.duo.hookprobe.J.m);
        a4.setText("1. 点开始并允许 Root 读取日志。\n2. 去出问题的 App 复现。冷启动问题请在打开 App 前开始抓取。\n3. 出问题后立即点通知里的结束，再回来导出。\n\n最多抓取 2 分钟、16 MiB，自动停止；默认关闭，不自动上传。\n\n报告包含：开头和结尾各一份状态快照（各进程载入的 MiDuo 版本、窗口与任务、图层、小组件、权限、内存、崩溃记录）、MiDuo 全部模块日志、所有警告与错误日志、设备与应用版本。不截屏，不读聊天和照片内容。可能含正在使用的 App 名称，分享前请检查。应用私有目录最多保留最近 3 份报告。\n\n“常驻轻量记录”默认关闭：打开后后台只留 MiDuo 相关日志的最近约 8 MiB，抓取报告会一并附上，用来抓两分钟复现不出来的偶发问题；关闭即删除。重启手机后需打开一次 MiDuo 才会恢复。");
        a4.setLineSpacing(0.0f, 1.2f);
        a.addView(a4, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 16.0f));
        android.widget.TextView a5 = dev.duo.hookprobe.U.a(this, 14.0f, dev.duo.hookprobe.U.b, 500);
        this.a = a5;
        a.addView(a5, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 20.0f));
        this.b = dev.duo.hookprobe.U.a((android.content.Context) this, "开始抓取", true, 48.0f);
        this.c = dev.duo.hookprobe.U.a((android.content.Context) this, "结束抓取", false, 48.0f);
        this.d = dev.duo.hookprobe.U.a((android.content.Context) this, "导出最近一次报告", false, 48.0f);
        android.widget.TextView a6 = dev.duo.hookprobe.U.a((android.content.Context) this, "", false, 48.0f);
        this.e = a6;
        android.widget.TextView[] textViewArr = {this.b, this.c, this.d, a6};
        for (int i = 0; i < 4; i++) {
            a.addView(textViewArr[i], dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        }
        this.e.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.BugCaptureActivity.this.b(view);
            }
        });
        this.b.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.BugCaptureActivity.this.c(view);
            }
        });
        this.c.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.BugCaptureActivity.this.d(view);
            }
        });
        this.d.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.BugCaptureActivity.this.e(view);
            }
        });
        android.widget.ScrollView scrollView = new android.widget.ScrollView(this);
        scrollView.setFillViewport(true);
        scrollView.addView(a);
        dVar.b.addView(scrollView);
        setContentView(dVar.a);
        if (bundle != null) {
            this.f = bundle.getString("selected");
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, java.lang.String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 1 && iArr.length > 0 && iArr[0] == 0) {
            a();
        } else if (i == 1) {
            android.widget.Toast.makeText(this, "未开始抓取：需要通知权限显示结束按钮", 1).show();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(android.os.Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("selected", this.f);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        c();
        if (b()) {
            a(dev.duo.hookprobe.C0021j.b(), (java.lang.String) null, "RING_STARTED", "RING_ALREADY");
        }
        dev.duo.hookprobe.BugCaptureService.a(this).registerOnSharedPreferenceChangeListener(this.g);
        d();
    }

    @Override // android.app.Activity
    protected void onStop() {
        dev.duo.hookprobe.BugCaptureService.a(this).unregisterOnSharedPreferenceChangeListener(this.g);
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.view.View view) {
        finish();
    }

    private boolean b() {
        return dev.duo.hookprobe.BugCaptureService.a(this).getBoolean("ring", false);
    }

    private void a() {
        try {
            startForegroundService(new android.content.Intent(this, (java.lang.Class<?>) dev.duo.hookprobe.BugCaptureService.class));
            this.b.setEnabled(false);
        } catch (java.lang.RuntimeException e) {
            android.widget.Toast.makeText(this, "无法开始抓取：" + e.getMessage(), 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(android.content.Context context, java.lang.String str) {
        android.widget.Toast.makeText(context, str, 1).show();
    }

    private void d() {
        java.lang.String string;
        android.content.SharedPreferences a = dev.duo.hookprobe.BugCaptureService.a(this);
        java.lang.String string2 = a.getString("file", null);
        boolean z = dev.duo.hookprobe.BugCaptureService.f;
        boolean z2 = false;
        if (!z && a.getBoolean("capturing", false)) {
            string = "上次抓取被中断，可导出已保存的部分";
        } else {
            string = a.getString("status", "尚未抓取");
        }
        this.a.setText((z ? "进行中\n" : "已停止\n") + string + ((z || string2 == null) ? "" : "\n报告：" + string2));
        this.b.setEnabled(!z);
        this.c.setEnabled(z);
        android.widget.TextView textView = this.d;
        if (!z && string2 != null && new java.io.File(getFilesDir(), string2).isFile()) {
            z2 = true;
        }
        textView.setEnabled(z2);
    }

    private void c() {
        this.e.setText(b() ? "常驻轻量记录：已开启（点此关闭并删除记录）" : "常驻轻量记录：已关闭（点此开启）");
    }

    private void e() {
        boolean b = b();
        dev.duo.hookprobe.BugCaptureService.a(this).edit().putBoolean("ring", !b).apply();
        c();
        a(!b ? dev.duo.hookprobe.C0021j.b() : dev.duo.hookprobe.C0021j.c(), !b ? "常驻记录已开启" : "常驻记录已关闭并删除", !b ? new java.lang.String[]{"RING_STARTED", "RING_ALREADY"} : new java.lang.String[]{"RING_STOPPED"});
    }

    private void a(final java.lang.String str, final java.lang.String str2, final java.lang.String... strArr) {
        final android.content.Context applicationContext = getApplicationContext();
        dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.BugCaptureActivity.this.a(str2, str, strArr, applicationContext);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final java.lang.String str, java.lang.String str2, java.lang.String[] strArr, final android.content.Context context) {
        java.lang.Process start;
        java.io.ByteArrayOutputStream byteArrayOutputStream;
        java.io.InputStream inputStream;
        try {
            start = new java.lang.ProcessBuilder("su", "-c", str2).redirectErrorStream(true).start();
            byteArrayOutputStream = new java.io.ByteArrayOutputStream();
            inputStream = start.getInputStream();
        } catch (java.io.IOException | java.lang.InterruptedException | java.lang.RuntimeException e) {
            java.lang.String str3 = "常驻记录操作失败：" + e.getMessage();
            if (e instanceof java.lang.InterruptedException) {
                java.lang.Thread.currentThread().interrupt();
            }
            str = str3;
        }
        try {
            dev.duo.hookprobe.C0021j.a(inputStream, byteArrayOutputStream, 8192L);
            if (inputStream != null) {
                inputStream.close();
            }
            if (start.waitFor(20L, java.util.concurrent.TimeUnit.SECONDS)) {
                java.lang.String byteArrayOutputStream2 = byteArrayOutputStream.toString("UTF-8");
                boolean z = false;
                for (java.lang.String str4 : strArr) {
                    z |= byteArrayOutputStream2.contains(str4);
                }
                if (!z) {
                    str = "常驻记录操作失败：" + (byteArrayOutputStream2.trim().isEmpty() ? "没有结果" : byteArrayOutputStream2.trim());
                }
            } else {
                start.destroyForcibly();
                str = "操作超时";
            }
            if (str != null) {
                runOnUiThread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.hookprobe.BugCaptureActivity.b(context, str);
                    }
                });
            }
        } catch (java.lang.Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (java.lang.Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.io.File file, final android.content.Context context, android.net.Uri uri) {
        final java.lang.String str;
        java.io.FileInputStream fileInputStream;
        try {
            fileInputStream = new java.io.FileInputStream(file);
        } catch (java.io.IOException | java.lang.RuntimeException e) {
            str = "导出失败：" + e.getMessage();
        }
        try {
            java.io.OutputStream openOutputStream = context.getContentResolver().openOutputStream(uri, "wt");
            try {
                if (openOutputStream == null) {
                    throw new java.io.IOException("无法打开所选位置");
                }
                dev.duo.hookprobe.C0021j.a(fileInputStream, openOutputStream, 16777216L);
                str = "报告已导出";
                openOutputStream.close();
                fileInputStream.close();
                runOnUiThread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.hookprobe.BugCaptureActivity.a(context, str);
                    }
                });
            } finally {
            }
        } catch (java.lang.Throwable th) {
            try {
                fileInputStream.close();
            } catch (java.lang.Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.content.Context context, java.lang.String str) {
        android.widget.Toast.makeText(context, str, 1).show();
    }
}
