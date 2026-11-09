package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class InfoWidgetActivity extends android.app.Activity {
    private android.widget.LinearLayout a;
    private final java.util.ArrayList<android.graphics.Bitmap> b = new java.util.ArrayList<>();
    private boolean c;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        final android.os.Bundle[] bundleArr = new android.os.Bundle[3];
        try {
            bundleArr[0] = dev.duo.hookprobe.A.a(this, dev.duo.hookprobe.InfoWidgetProvider.a(this, "battery"));
            bundleArr[1] = dev.duo.hookprobe.A.a(this);
            bundleArr[2] = dev.duo.hookprobe.A.a(dev.duo.hookprobe.InfoWidgetProvider.a(this, "weather"));
            runOnUiThread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.InfoWidgetActivity.this.a(bundleArr);
                }
            });
        } catch (java.lang.InterruptedException e) {
            java.lang.Thread.currentThread().interrupt();
            android.util.Log.w("MiDuoWidgets", "preview interrupted", e);
        }
    }

    private int b(int i) {
        return dev.duo.hookprobe.U.a(this, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(android.view.View view) {
        dev.duo.hookprobe.InfoWidgetProvider.a(this);
        b();
    }

    @Override // android.app.Activity
    protected void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        dev.duo.hookprobe.U.d dVar = new dev.duo.hookprobe.U.d(this);
        android.widget.ScrollView scrollView = new android.widget.ScrollView(this);
        this.a = dev.duo.hookprobe.U.a((android.content.Context) this);
        int a = dVar.a(dVar.e());
        this.a.setPadding(a, dVar.d(), a, dVar.b());
        scrollView.addView(this.a);
        dVar.b.addView(scrollView, new android.widget.FrameLayout.LayoutParams(-1, -1));
        setContentView(dVar.a);
        dVar.a();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        java.util.ArrayList<android.graphics.Bitmap> arrayList = this.b;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            android.graphics.Bitmap bitmap = arrayList.get(i);
            i++;
            bitmap.recycle();
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(android.content.Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        if (this.c) {
            b();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.c = false;
        super.onPause();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, java.lang.String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 396) {
            dev.duo.hookprobe.InfoWidgetProvider.a(this);
            b();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.c = true;
        b();
    }

    private void b() {
        this.a.removeAllViews();
        java.util.ArrayList<android.graphics.Bitmap> arrayList = this.b;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            android.graphics.Bitmap bitmap = arrayList.get(i);
            i++;
            bitmap.recycle();
        }
        this.b.clear();
        android.widget.TextView a = dev.duo.hookprobe.U.a(this, 14.0f, dev.duo.hookprobe.U.c, dev.duo.hookprobe.J.m);
        a.setText("正在读取组件数据…");
        this.a.addView(a);
        dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.InfoWidgetActivity.this.a();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(final int i) {
        final boolean a = dev.duo.hookprobe.WidgetCenterActivity.a();
        runOnUiThread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.InfoWidgetActivity.this.a(a, i);
            }
        });
    }

    private void b(android.os.Bundle[] bundleArr) {
        this.a.removeAllViews();
        android.widget.TextView a = dev.duo.hookprobe.U.a((android.content.Context) this, "返回小组件", false, 40.0f);
        a.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.InfoWidgetActivity.this.a(view);
            }
        });
        this.a.addView(a);
        java.lang.String[] strArr = {"电池", "日历", "天气"};
        int intExtra = getIntent().getIntExtra("type", -1);
        for (int i = 0; i < 3; i++) {
            if (intExtra < 0 || intExtra >= 6 || intExtra / 2 == i) {
                android.widget.TextView a2 = dev.duo.hookprobe.U.a(this, 18.0f, dev.duo.hookprobe.U.b, 700);
                a2.setText(strArr[i]);
                a2.setPadding(0, b(12), 0, b(8));
                this.a.addView(a2);
                android.widget.LinearLayout c = dev.duo.hookprobe.U.c(this);
                c.setGravity(16);
                android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
                int i2 = 0;
                while (i2 < 2) {
                    final int i3 = (i * 2) + i2;
                    android.graphics.Bitmap a3 = dev.duo.hookprobe.z.a(dev.duo.hookprobe.InfoWidgetProvider.d[i3], i2 == 1, bundleArr[i]);
                    this.b.add(a3);
                    android.widget.ImageView imageView = new android.widget.ImageView(this);
                    imageView.setImageBitmap(a3);
                    imageView.setAdjustViewBounds(true);
                    imageView.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
                    imageView.setContentDescription(dev.duo.hookprobe.InfoWidgetProvider.e[i3]);
                    android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(0, -2, i2 == 1 ? 338.0f : 158.0f);
                    if (i2 == 1) {
                        layoutParams.leftMargin = b(10);
                    }
                    c.addView(imageView, layoutParams);
                    android.widget.TextView a4 = dev.duo.hookprobe.U.a((android.content.Context) this, i2 == 1 ? "添加 4×2" : "添加 2×2", false, 40.0f);
                    a4.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(android.view.View view) {
                            dev.duo.hookprobe.InfoWidgetActivity.this.a(i3, view);
                        }
                    });
                    android.widget.LinearLayout.LayoutParams layoutParams2 = new android.widget.LinearLayout.LayoutParams(0, b(40), i2 == 1 ? 338.0f : 158.0f);
                    if (i2 == 1) {
                        layoutParams2.leftMargin = b(10);
                    }
                    c2.addView(a4, layoutParams2);
                    i2++;
                }
                this.a.addView(c);
                this.a.addView(c2, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 8.0f));
                if (i == 1 && checkSelfPermission("android.permission.READ_CALENDAR") != 0) {
                    android.widget.TextView a5 = dev.duo.hookprobe.U.a((android.content.Context) this, "允许读取日历", true, 40.0f);
                    a5.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(android.view.View view) {
                            dev.duo.hookprobe.InfoWidgetActivity.this.b(view);
                        }
                    });
                    this.a.addView(a5, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 8.0f));
                }
            }
        }
        android.widget.TextView a6 = dev.duo.hookprobe.U.a((android.content.Context) this, "刷新", false, 40.0f);
        a6.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.InfoWidgetActivity.this.c(view);
            }
        });
        this.a.addView(a6, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 16.0f));
        android.widget.TextView a7 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.c, dev.duo.hookprobe.J.m);
        a7.setText("天气沿用小米天气的城市；未连接设备显示空电量环。预览使用当前数据。");
        a7.setPadding(0, b(10), 0, 0);
        this.a.addView(a7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.os.Bundle[] bundleArr) {
        if (isDestroyed()) {
            return;
        }
        b(bundleArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.view.View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, android.view.View view) {
        a(i);
    }

    private void a(final int i) {
        dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.InfoWidgetActivity.this.c(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, int i) {
        if (this.c) {
            if (!z) {
                android.widget.Toast.makeText(this, "未能打开桌面快捷方式权限", 0).show();
            } else {
                if (android.appwidget.AppWidgetManager.getInstance(this).requestPinAppWidget(new android.content.ComponentName(this, dev.duo.hookprobe.InfoWidgetProvider.c[i]), null, null)) {
                    return;
                }
                android.widget.Toast.makeText(this, "当前桌面不支持直接添加", 0).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(android.view.View view) {
        requestPermissions(new java.lang.String[]{"android.permission.READ_CALENDAR"}, 396);
    }
}
