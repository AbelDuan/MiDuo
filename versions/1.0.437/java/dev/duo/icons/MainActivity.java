package dev.duo.icons;

/* loaded from: classes.dex */
public final class MainActivity extends android.app.Activity {
    private static final int o = 1;
    private static final java.util.concurrent.atomic.AtomicBoolean p = new java.util.concurrent.atomic.AtomicBoolean();
    private final java.util.concurrent.ExecutorService a = new java.util.concurrent.ThreadPoolExecutor(0, 1, 30, java.util.concurrent.TimeUnit.SECONDS, new java.util.concurrent.LinkedBlockingQueue());
    private android.widget.TextView b;
    private android.widget.TextView c;
    private android.widget.TextView d;
    private android.widget.TextView e;
    private android.widget.LinearLayout f;
    private android.widget.Button g;
    private android.widget.Button h;
    private android.widget.Button i;
    private android.widget.Button j;
    private boolean k;
    private boolean l;
    private boolean m;
    private android.content.SharedPreferences n;

    private int a(int i) {
        return java.lang.Math.round(i * getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        a("STATUS");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        startActivityForResult(new android.content.Intent("android.intent.action.OPEN_DOCUMENT").setType("*/*").addCategory("android.intent.category.OPENABLE"), 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        a("APPLY");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        new android.app.AlertDialog.Builder(this).setTitle("恢复图标备份").setMessage("只恢复本 App 首次应用前的图标，不改壁纸、桌面布局或 Dock。继续？").setNegativeButton("取消", (android.content.DialogInterface.OnClickListener) null).setPositiveButton("恢复", new android.content.DialogInterface.OnClickListener() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(android.content.DialogInterface dialogInterface, int i) {
                dev.duo.icons.MainActivity.this.a(dialogInterface, i);
            }
        }).show();
    }

    private void f() {
        this.f.removeAllViews();
        if (!g().exists()) {
            this.c.setText("尚未选择 MTZ");
            return;
        }
        this.c.setText(this.n.getString("selectedTitle", "已导入主题") + " · " + this.n.getInt("selectedCount", 0) + " 个图标资源");
        try {
            java.util.zip.ZipFile zipFile = new java.util.zip.ZipFile(g());
            try {
                java.util.ArrayList arrayList = new java.util.ArrayList();
                java.lang.String[] strArr = {"com.android.contacts", "com.android.mms", "com.android.settings", "com.android.camera", "com.tencent.mm", "com.miui.gallery"};
                for (int i = 0; i < 6; i++) {
                    java.lang.String str = strArr[i];
                    if (zipFile.getEntry("res/drawable-xxhdpi/" + str + ".png") != null) {
                        arrayList.add("res/drawable-xxhdpi/" + str + ".png");
                    }
                }
                java.util.Enumeration<? extends java.util.zip.ZipEntry> entries = zipFile.entries();
                while (arrayList.size() < 6 && entries.hasMoreElements()) {
                    java.lang.String name = entries.nextElement().getName();
                    if (!arrayList.contains(name)) {
                        arrayList.add(name);
                    }
                }
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    java.lang.Object obj = arrayList.get(i2);
                    i2++;
                    java.lang.String str2 = (java.lang.String) obj;
                    java.io.InputStream inputStream = zipFile.getInputStream(zipFile.getEntry(str2));
                    try {
                        byte[] a = dev.duo.icons.e.a(inputStream, 2097152L);
                        android.graphics.Bitmap decodeByteArray = android.graphics.BitmapFactory.decodeByteArray(a, 0, a.length);
                        if (decodeByteArray != null) {
                            android.widget.ImageView imageView = new android.widget.ImageView(this);
                            imageView.setImageBitmap(decodeByteArray);
                            imageView.setContentDescription(str2.substring(str2.lastIndexOf(47) + 1));
                            android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(a(56), a(56));
                            layoutParams.setMargins(0, a(8), a(10), a(12));
                            this.f.addView(imageView, layoutParams);
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    } catch (java.lang.Throwable th) {
                        if (inputStream == null) {
                            throw th;
                        }
                        try {
                            inputStream.close();
                            throw th;
                        } catch (java.lang.Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                }
                zipFile.close();
            } finally {
            }
        } catch (java.lang.Exception e) {
            this.d.setText("预览不可用，请重新导入主题。");
        }
    }

    private java.io.File g() {
        return new java.io.File(getFilesDir(), "selected.zip");
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, android.content.Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 1 || i2 != -1 || intent == null || intent.getData() == null) {
            return;
        }
        final android.net.Uri data = intent.getData();
        final java.lang.String str = "主题.mtz";
        try {
            android.database.Cursor query = getContentResolver().query(data, new java.lang.String[]{"_display_name"}, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        str = query.getString(0);
                    }
                } finally {
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (java.lang.Exception e) {
        }
        if (!p.compareAndSet(false, true)) {
            this.d.setText("上一次主题导入仍在进行，请稍后再试。");
            return;
        }
        this.k = true;
        a();
        this.d.setText("正在检查主题及图标资源…");
        this.a.execute(new java.lang.Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.icons.MainActivity.this.a(data, str);
            }
        });
    }

    @Override // android.app.Activity
    public void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        android.content.SharedPreferences sharedPreferences = getSharedPreferences("state", 0);
        this.n = sharedPreferences;
        sharedPreferences.edit().remove("labelBlocked").apply();
        android.widget.ScrollView scrollView = new android.widget.ScrollView(this);
        scrollView.setFillViewport(true);
        android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(a(24), a(32), a(24), a(28));
        scrollView.addView(linearLayout);
        a(linearLayout, "MiDuo 图标", 28, -15260885).setTypeface(null, 1);
        a(linearLayout, "从 MTZ 主题中单独更换应用图标", 15, -10655632);
        this.b = a(linearLayout, "模块状态：待检查", 16, -14724508);
        a(linearLayout, "主题壁纸版本：" + dev.duo.icons.a.a(this), 13, -10655632);
        this.j = a(linearLayout, "检查模块状态", new java.lang.Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.icons.MainActivity.this.b();
            }
        });
        a(linearLayout, "选择主题", 19, -15260885).setTypeface(null, 1);
        this.c = a(linearLayout, "尚未选择 MTZ", 16, -15260885);
        android.widget.HorizontalScrollView horizontalScrollView = new android.widget.HorizontalScrollView(this);
        android.widget.LinearLayout linearLayout2 = new android.widget.LinearLayout(this);
        this.f = linearLayout2;
        horizontalScrollView.addView(linearLayout2);
        linearLayout.addView(horizontalScrollView);
        this.g = a(linearLayout, "选择 .mtz 主题包（.zip 也可）", new java.lang.Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.icons.MainActivity.this.c();
            }
        });
        this.h = a(linearLayout, "应用图标", new java.lang.Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.icons.MainActivity.this.d();
            }
        });
        this.e = a(linearLayout, "首次应用前会备份当前图标；恢复按钮回到该备份。", 14, -10655632);
        this.i = a(linearLayout, "恢复首次应用前的图标", new java.lang.Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.icons.MainActivity.this.e();
            }
        });
        this.d = a(linearLayout, "只使用适配应用的静态 PNG，未适配应用保留原图标。壁纸、锁屏、控制中心、布局和 Dock 样式不参与应用。", 14, -10655632);
        a(linearLayout, "在 LSPosed 的 MiDuo 作用域中增加「主题壁纸」，原有勾选保持。加载图标桥后再检查状态。无需电脑或额外 Root 授权。", 13, -10655632);
        setContentView(scrollView);
        f();
        a();
        a("STATUS");
    }

    private android.widget.TextView a(android.widget.LinearLayout linearLayout, java.lang.String str, int i, int i2) {
        android.widget.TextView textView = new android.widget.TextView(this);
        textView.setText(str);
        textView.setTextSize(i);
        textView.setTextColor(i2);
        textView.setPadding(0, a(8), 0, a(8));
        linearLayout.addView(textView);
        return textView;
    }

    private android.widget.Button a(android.widget.LinearLayout linearLayout, java.lang.String str, final java.lang.Runnable runnable) {
        android.widget.Button button = new android.widget.Button(this);
        button.setText(str);
        button.setAllCaps(false);
        linearLayout.addView(button, new android.widget.LinearLayout.LayoutParams(-1, a(52)));
        button.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                runnable.run();
            }
        });
        return button;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.content.DialogInterface dialogInterface, int i) {
        a("RESTORE");
    }

    private void a() {
        this.g.setEnabled(!this.k);
        this.j.setEnabled(!this.k);
        this.h.setEnabled(!this.k && this.l && g().exists());
        this.i.setEnabled(!this.k && this.l && this.m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.net.Uri uri, java.lang.String str) {
        java.io.File file = new java.io.File(getCacheDir(), "import.mtz");
        java.io.File file2 = new java.io.File(getCacheDir(), "prepared.zip");
        try {
            java.io.InputStream openInputStream = getContentResolver().openInputStream(uri);
            try {
                if (openInputStream != null) {
                    dev.duo.icons.e.a(openInputStream, file, dev.duo.icons.e.a);
                    openInputStream.close();
                    final dev.duo.icons.e.b a = dev.duo.icons.e.a(file, file2, str, new dev.duo.icons.MainActivity$$ExternalSyntheticLambda5());
                    java.nio.file.Files.move(file2.toPath(), g().toPath(), java.nio.file.StandardCopyOption.REPLACE_EXISTING, java.nio.file.StandardCopyOption.ATOMIC_MOVE);
                    if (this.n.edit().putString("selectedTitle", a.a).putString("selectedHash", a.b).putInt("selectedCount", a.d).commit()) {
                        runOnUiThread(new java.lang.Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda6
                            @Override // java.lang.Runnable
                            public final void run() {
                                dev.duo.icons.MainActivity.this.a(a);
                            }
                        });
                        return;
                    } else {
                        g().delete();
                        throw new java.io.IOException("导入信息未能保存，请重新导入");
                    }
                }
                throw new java.io.IOException("无法读取所选文件");
            } finally {
            }
        } catch (java.lang.Throwable th) {
            try {
                runOnUiThread(new java.lang.Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.icons.MainActivity.this.a(th);
                    }
                });
            } finally {
                file.delete();
                file2.delete();
                new java.io.File(file2.getPath() + ".new").delete();
                p.set(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.icons.e.b bVar) {
        this.k = false;
        f();
        this.d.setText("导入完成：" + bVar.d + " 个静态图标资源" + (bVar.e > 0 ? "，跳过 " + bVar.e + " 个（" + bVar.c + "）" : "") + "。点击「应用图标」生效。");
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.Throwable th) {
        this.k = false;
        f();
        this.d.setText("导入失败，当前图标未改变：" + (th.getMessage() == null ? th.toString() : th.getMessage()));
        a();
    }

    private void a(final java.lang.String str) {
        if (this.k) {
            return;
        }
        this.k = true;
        a();
        this.d.setText(str.equals("STATUS") ? "正在连接主题壁纸中的图标桥…" : str.equals("APPLY") ? "正在备份并应用图标…" : "正在恢复图标备份…");
        new dev.duo.icons.a(this).a(str, this.n.getString("selectedTitle", "主题"), this.n.getString("selectedHash", ""), new dev.duo.icons.a.c() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda8
            @Override // dev.duo.icons.a.c
            public final void a(boolean z, android.os.Bundle bundle) {
                dev.duo.icons.MainActivity.this.a(str, z, bundle);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final java.lang.String str, final boolean z, final android.os.Bundle bundle) {
        if (!str.equals("STATUS")) {
            this.n.edit().putString("lastOperationResult", bundle.getString("message", "未收到明确结果")).commit();
        }
        final android.os.ParcelFileDescriptor parcelFileDescriptor = (android.os.ParcelFileDescriptor) bundle.getParcelable("backupFd", android.os.ParcelFileDescriptor.class);
        this.a.execute(new java.lang.Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.icons.MainActivity.this.a(parcelFileDescriptor, bundle, z, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.os.ParcelFileDescriptor parcelFileDescriptor, final android.os.Bundle bundle, final boolean z, final java.lang.String str) {
        final java.lang.String str2;
        if (parcelFileDescriptor != null) {
            try {
                android.os.ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new android.os.ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
                try {
                    java.io.File file = new java.io.File(getFilesDir(), "backup.new");
                    dev.duo.icons.e.a(autoCloseInputStream, file, dev.duo.icons.e.b);
                    if (dev.duo.icons.e.a(file).equals(bundle.getString("backup"))) {
                        java.nio.file.Files.move(file.toPath(), new java.io.File(getFilesDir(), "backup.icons").toPath(), java.nio.file.StandardCopyOption.ATOMIC_MOVE, java.nio.file.StandardCopyOption.REPLACE_EXISTING);
                        autoCloseInputStream.close();
                    } else {
                        throw new java.io.IOException("备份副本校验失败");
                    }
                } finally {
                }
            } catch (java.lang.Exception e) {
                str2 = "\n手机主题进程内的备份仍保留；App 内副本未保存：" + e.getMessage();
            }
        }
        str2 = "";
        runOnUiThread(new java.lang.Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.icons.MainActivity.this.a(z, bundle, str, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, android.os.Bundle bundle, java.lang.String str, java.lang.String str2) {
        boolean z2 = false;
        this.k = false;
        this.l = z;
        if (z && java.lang.Boolean.parseBoolean(bundle.getString("canRestore", "false"))) {
            z2 = true;
        }
        this.m = z2;
        this.b.setText(z ? "图标桥已连接" : "模块未就绪或操作失败");
        java.lang.String string = bundle.getString("backup");
        java.lang.String str3 = "";
        if (string != null) {
            this.e.setText("首次应用前的图标已备份到手机。" + (dev.duo.icons.d.d.equals(string) ? "备份为系统原图标，无覆盖文件。" : ""));
        }
        java.lang.String string2 = bundle.getString("message", "未收到明确结果");
        if (z && str.equals("STATUS") && this.n.contains("lastOperationResult")) {
            string2 = string2 + "\n上次操作：" + this.n.getString("lastOperationResult", "");
        }
        android.widget.TextView textView = this.d;
        java.lang.StringBuilder append = new java.lang.StringBuilder().append(string2).append(str2);
        if (z && !str.equals("STATUS")) {
            str3 = "\n桌面与 Dock 使用原生图标；App 侧栏最近项会在切换应用后刷新。";
        }
        textView.setText(append.append(str3).toString());
        a();
    }
}
