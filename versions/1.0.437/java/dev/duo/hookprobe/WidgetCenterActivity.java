package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class WidgetCenterActivity extends android.app.Activity {
    private static final java.lang.String[][] e = {new java.lang.String[]{"电池", "2×2 / 4×2"}, new java.lang.String[]{"日历", "2×2 / 4×2"}, new java.lang.String[]{"天气", "2×2 / 4×2"}};
    private static final int f = 132;
    private dev.duo.hookprobe.U.d a;
    private android.widget.LinearLayout b;
    private boolean c;
    private final dev.duo.hookprobe.C0012b.d d = new dev.duo.hookprobe.WidgetCenterActivity.a();

    class a implements dev.duo.hookprobe.C0012b.d {
        a() {
        }

        @Override // dev.duo.hookprobe.C0012b.d
        public void a(java.lang.String str) {
            dev.duo.hookprobe.WidgetCenterActivity.this.c(str);
        }

        @Override // dev.duo.hookprobe.C0012b.d
        public void a(dev.duo.hookprobe.C0012b.c cVar, java.lang.Exception exc) {
            dev.duo.hookprobe.WidgetCenterActivity.this.a(cVar, exc);
        }
    }

    class b extends android.view.ViewOutlineProvider {
        final /* synthetic */ float a;

        b(float f) {
            this.a = f;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(android.view.View view, android.graphics.Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c {
        final int[] a;
        final java.util.LinkedHashMap<java.lang.Integer, java.lang.Long> b;
        final long c;

        c(int[] iArr, java.util.LinkedHashMap<java.lang.Integer, java.lang.Long> linkedHashMap, long j) {
            this.a = iArr;
            this.b = linkedHashMap;
            this.c = j;
        }
    }

    private float b() {
        return this.a.e ? 26.0f : 28.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public void a(int i) {
        if (dev.duo.hookprobe.C0012b.a(this, i, this.d)) {
            return;
        }
        g();
    }

    private void d() {
        final android.content.Context applicationContext = getApplicationContext();
        dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.WidgetCenterActivity.this.a(applicationContext);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (isDestroyed()) {
            return;
        }
        new android.app.AlertDialog.Builder(this).setTitle("请先展开手机").setMessage("手机折叠时，小米桌面放不下整页相册（4×6）。请展开手机，再点「添加相册」。").setPositiveButton("知道了", (android.content.DialogInterface.OnClickListener) null).show();
    }

    private dev.duo.hookprobe.WidgetCenterActivity.c f() throws java.lang.Exception {
        java.lang.String a2 = dev.duo.hookprobe.C0012b.a();
        java.util.LinkedHashMap<java.lang.Integer, java.lang.Long> linkedHashMap = dev.duo.hookprobe.C0012b.a(this, a2).a;
        int size = linkedHashMap.size();
        int[] iArr = new int[size];
        java.util.Iterator<java.lang.Integer> it = linkedHashMap.keySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = it.next().intValue();
            i++;
        }
        int intExtra = getIntent().getIntExtra("appWidgetId", 0);
        for (int i2 = 1; i2 < size; i2++) {
            if (iArr[i2] == intExtra) {
                iArr[i2] = iArr[0];
                iArr[0] = intExtra;
            }
        }
        return new dev.duo.hookprobe.WidgetCenterActivity.c(iArr, linkedHashMap, dev.duo.hookprobe.C0012b.b(a2) ? dev.duo.hookprobe.C0012b.c(a2) : -1L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        java.lang.String a2 = dev.duo.hookprobe.C0012b.a();
        dev.duo.hookprobe.C0012b.c cVar = new dev.duo.hookprobe.C0012b.c();
        try {
            final boolean b2 = dev.duo.hookprobe.C0012b.b(a2);
            dev.duo.hookprobe.C0012b.a a3 = b2 ? dev.duo.hookprobe.C0012b.a(this, a2) : null;
            long c2 = dev.duo.hookprobe.C0012b.c(a2);
            if (b2 && b(a3, c2)) {
                return;
            }
            if (b2 && c() && !a(a3, c2)) {
                runOnUiThread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.hookprobe.WidgetCenterActivity.this.e();
                    }
                });
                return;
            }
            cVar.a("读取桌面数据", (java.lang.String) null);
            final boolean a4 = a();
            if (a4 && b2) {
                dev.duo.hookprobe.C0012b.a(this, a3.c);
            }
            runOnUiThread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.WidgetCenterActivity.this.a(a4, b2);
                }
            });
        } catch (java.lang.InterruptedException e2) {
            java.lang.Thread.currentThread().interrupt();
        } catch (java.lang.Exception e3) {
            cVar.a("读取桌面数据", e3);
            a(cVar, e3);
        }
    }

    private android.view.View h() {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        dev.duo.hookprobe.U.a(a2, b());
        a2.setPadding(a(16.0f), a(6.0f), a(16.0f), a(6.0f));
        int i = 0;
        while (true) {
            java.lang.String[][] strArr = e;
            if (i >= strArr.length) {
                return a2;
            }
            if (i > 0) {
                android.view.View view = new android.view.View(this);
                view.setBackgroundColor(dev.duo.hookprobe.U.h);
                android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(-1, java.lang.Math.max(1, a(0.5f)));
                layoutParams.leftMargin = a(50.0f);
                a2.addView(view, layoutParams);
            }
            java.lang.String[] strArr2 = strArr[i];
            a2.addView(a(strArr2[0], strArr2[1]), dev.duo.hookprobe.U.a());
            i++;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        this.a = new dev.duo.hookprobe.U.d(this);
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        dev.duo.hookprobe.U.d dVar = this.a;
        int a3 = dVar.a(dVar.e());
        a2.setPadding(a3, this.a.d(), a3, this.a.b());
        a2.addView(a(this, this.a, "小组件", "MiDuo 做的桌面小组件都在这里"), dev.duo.hookprobe.U.a());
        android.widget.LinearLayout a4 = dev.duo.hookprobe.U.a((android.content.Context) this);
        this.b = a4;
        dev.duo.hookprobe.U.a(a4, b());
        this.b.setPadding(a(14.0f), a(14.0f), a(14.0f), a(14.0f));
        android.view.View h = h();
        if (this.a.c >= 600) {
            android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
            c2.setGravity(48);
            c2.setBaselineAligned(false);
            c2.addView(b("我的小组件", this.b), new android.widget.LinearLayout.LayoutParams(0, -1, 1.0f));
            android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(0, -1, 1.0f);
            layoutParams.leftMargin = a(12.0f);
            c2.addView(b("信息组件", h), layoutParams);
            a2.addView(c2, dev.duo.hookprobe.U.a());
        } else {
            a2.addView(b("我的小组件", this.b), dev.duo.hookprobe.U.a());
            a2.addView(b("信息组件", h), dev.duo.hookprobe.U.a());
        }
        android.widget.ScrollView scrollView = new android.widget.ScrollView(this);
        scrollView.setClipToPadding(false);
        scrollView.setVerticalScrollBarEnabled(false);
        scrollView.addView(a2);
        this.a.b.addView(scrollView, new android.widget.FrameLayout.LayoutParams(-1, -1));
        this.a.a(3, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda14
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                dev.duo.hookprobe.WidgetCenterActivity.this.b(i);
            }
        });
        setContentView(this.a.a);
        this.a.a();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.c = false;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.c = true;
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        startActivity(new android.content.Intent(this, (java.lang.Class<?>) dev.duo.hookprobe.MainActivity.class).putExtra("tab", i).addFlags(603979776));
        finish();
    }

    private boolean c() {
        android.graphics.Rect bounds = getWindowManager().getCurrentWindowMetrics().getBounds();
        return java.lang.Math.min(bounds.width(), bounds.height()) < 1400;
    }

    private int a(float f2) {
        return dev.duo.hookprobe.U.a(this, f2);
    }

    static android.view.View a(final android.app.Activity activity, dev.duo.hookprobe.U.d dVar, java.lang.String str, java.lang.String str2) {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(activity);
        int a2 = dev.duo.hookprobe.U.a((android.content.Context) activity, 4.0f);
        c2.setPadding(a2, 0, dVar.c() + a2, 0);
        android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(activity);
        frameLayout.setBackground(dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.f, dev.duo.hookprobe.U.a((android.content.Context) activity, 20.0f)));
        int a3 = dev.duo.hookprobe.U.a((android.content.Context) activity, 18.0f);
        frameLayout.addView(dev.duo.hookprobe.U.a(activity, dev.duo.hookprobe.U.a(activity, 3, dev.duo.hookprobe.U.b, 2.4f, false, 18.0f)), new android.widget.FrameLayout.LayoutParams(a3, a3, 17));
        frameLayout.setContentDescription("返回");
        frameLayout.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                activity.finish();
            }
        });
        c2.addView(frameLayout, dev.duo.hookprobe.U.a(activity, 40.0f, 40.0f));
        android.widget.LinearLayout a4 = dev.duo.hookprobe.U.a((android.content.Context) activity);
        a4.setPadding(dev.duo.hookprobe.U.a((android.content.Context) activity, 12.0f), 0, 0, 0);
        android.widget.TextView a5 = dev.duo.hookprobe.U.a(activity, 22.0f, dev.duo.hookprobe.U.b, 800);
        a5.setText(str);
        a5.setLetterSpacing(-0.01f);
        a4.addView(a5);
        android.widget.TextView a6 = dev.duo.hookprobe.U.a(activity, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a6.setText(str2);
        a6.setPadding(0, dev.duo.hookprobe.U.a((android.content.Context) activity, 3.0f), 0, 0);
        a4.addView(a6);
        c2.addView(a4, dev.duo.hookprobe.U.b());
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final java.lang.String str) {
        runOnUiThread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.WidgetCenterActivity.this.b(str);
            }
        });
    }

    private android.view.View b(java.lang.String str, android.view.View view) {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        a2.addView(dev.duo.hookprobe.U.a((android.content.Context) this, str), dev.duo.hookprobe.U.a());
        a2.addView(view, new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0f));
        return a2;
    }

    private boolean b(dev.duo.hookprobe.C0012b.a aVar, long j) {
        java.lang.Integer num;
        if (!aVar.a.isEmpty() || j < 0 || (num = aVar.b.get(java.lang.Long.valueOf(j))) == null || num.intValue() == 0) {
            return false;
        }
        android.util.Log.i("MiDuoAlbum", "widget page blocked: fixed page " + j + " has items");
        c("第 1 页已有内容，请先移除后再添加相册");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(java.lang.String str) {
        android.widget.Toast.makeText(this, str, 1).show();
    }

    private void b(dev.duo.hookprobe.WidgetCenterActivity.c cVar, android.graphics.Bitmap[] bitmapArr) {
        this.b.removeAllViews();
        if (cVar.a.length == 0) {
            this.b.addView(a(0, (android.graphics.Bitmap) null, 0, false), dev.duo.hookprobe.U.a());
        }
        int i = 0;
        while (true) {
            int[] iArr = cVar.a;
            if (i >= iArr.length) {
                return;
            }
            boolean z = cVar.c >= 0 && cVar.b.get(java.lang.Integer.valueOf(iArr[i])).longValue() == cVar.c;
            android.widget.LinearLayout linearLayout = this.b;
            int[] iArr2 = cVar.a;
            linearLayout.addView(a(iArr2[i], bitmapArr[i], iArr2.length, z), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, i == 0 ? 0.0f : 14.0f));
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final int i, android.view.View view) {
        dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.WidgetCenterActivity.this.a(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(dev.duo.hookprobe.C0012b.c cVar, java.lang.Exception exc) {
        android.util.Log.w("MiDuoAlbum", "widget page not set\n" + cVar.a(), exc);
        final java.lang.String a2 = cVar.a();
        runOnUiThread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.WidgetCenterActivity.this.a(a2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final java.lang.String str) {
        if (isDestroyed()) {
            return;
        }
        new android.app.AlertDialog.Builder(this).setTitle("没能设为桌面第 1 页").setMessage(str).setPositiveButton("复制", new android.content.DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda10
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(android.content.DialogInterface dialogInterface, int i) {
                dev.duo.hookprobe.WidgetCenterActivity.this.a(str, dialogInterface, i);
            }
        }).setNegativeButton("关闭", (android.content.DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.String str, android.content.DialogInterface dialogInterface, int i) {
        ((android.content.ClipboardManager) getSystemService("clipboard")).setPrimaryClip(android.content.ClipData.newPlainText("MiDuo 小组件页诊断", str));
        android.widget.Toast.makeText(this, "已复制", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, boolean z2) {
        java.lang.String str;
        a(z);
        if (z) {
            if (z2) {
                str = "点系统弹窗里的“添加”，相册会自动设为桌面第 1 页，桌面会重开一次，不用再回来";
            } else {
                str = "放好相册即可";
            }
            android.widget.Toast.makeText(this, str, 1).show();
        }
    }

    private static boolean a(dev.duo.hookprobe.C0012b.a aVar, long j) {
        if (j < 0 || !aVar.c.contains(java.lang.Long.valueOf(j))) {
            return false;
        }
        java.lang.Integer num = aVar.b.get(java.lang.Long.valueOf(j));
        return num == null || num.intValue() == 0;
    }

    static boolean a() {
        java.lang.String str = "--user " + (android.os.Process.myUid() / 100000) + " dev.duo.hookprobe 10017";
        try {
            dev.duo.hookprobe.M.a("cmd appops get " + str + " | grep -q ': allow' || cmd appops set " + str + " allow");
            return true;
        } catch (java.lang.InterruptedException e2) {
            java.lang.Thread.currentThread().interrupt();
            return false;
        } catch (java.lang.Exception e3) {
            android.util.Log.w("MiDuoAlbum", "allow 10017 failed", e3);
            return false;
        }
    }

    private android.widget.ImageView a(android.graphics.Bitmap bitmap) {
        android.widget.ImageView imageView = new android.widget.ImageView(this);
        imageView.setScaleType(android.widget.ImageView.ScaleType.CENTER_CROP);
        if (bitmap != null) {
            imageView.setImageBitmap(bitmap);
        } else {
            imageView.setImageResource(dev.duo.workspaceprobe.b.R.drawable.album_widget_preview);
        }
        imageView.setOutlineProvider(new dev.duo.hookprobe.WidgetCenterActivity.b((a(132.0f) * 56.0f) / 854.0f));
        imageView.setClipToOutline(true);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.content.Context context) {
        try {
            final dev.duo.hookprobe.WidgetCenterActivity.c f2 = f();
            final android.graphics.Bitmap[] bitmapArr = new android.graphics.Bitmap[f2.a.length];
            int i = 0;
            while (true) {
                int[] iArr = f2.a;
                if (i >= iArr.length) {
                    runOnUiThread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda13
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.hookprobe.WidgetCenterActivity.this.a(f2, bitmapArr);
                        }
                    });
                    a(f2);
                    return;
                } else {
                    bitmapArr[i] = dev.duo.hookprobe.C0013c.e(context, iArr[i]);
                    i++;
                }
            }
        } catch (java.lang.InterruptedException e2) {
            java.lang.Thread.currentThread().interrupt();
        } catch (java.lang.Exception e3) {
            android.util.Log.w("MiDuoAlbum", "desktop albums not read", e3);
            c("读取桌面相册失败：" + e3.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.hookprobe.WidgetCenterActivity.c cVar, android.graphics.Bitmap[] bitmapArr) {
        if (isDestroyed()) {
            return;
        }
        b(cVar, bitmapArr);
    }

    private void a(dev.duo.hookprobe.WidgetCenterActivity.c cVar) {
        if (dev.duo.hookprobe.C0012b.b(this) && cVar.a.length != 0 && dev.duo.hookprobe.C0012b.a(this) && cVar.b.get(java.lang.Integer.valueOf(cVar.a[0])).longValue() != cVar.c) {
            c("相册已放好，正在设为桌面第 1 页，桌面会重开一次");
            a(cVar.a[0]);
        }
    }

    private android.view.View a(final int i, android.graphics.Bitmap bitmap, int i2, boolean z) {
        java.lang.String str;
        boolean z2 = i != 0;
        int a2 = (a(132.0f) * 1328) / 854;
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        c2.setGravity(48);
        c2.addView(a(bitmap), new android.widget.LinearLayout.LayoutParams(a(132.0f), a2));
        android.widget.LinearLayout a3 = dev.duo.hookprobe.U.a((android.content.Context) this);
        a3.setPadding(a(14.0f), a(4.0f), 0, 0);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 17.0f, dev.duo.hookprobe.U.b, 700);
        a4.setText("相册");
        a3.addView(a4);
        android.widget.TextView a5 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        if (z2) {
            str = "4×6 · 桌面上有 " + i2 + " 个" + (z ? " · 在第 1 页" : "");
        } else {
            str = "4×6 · 还没放到桌面";
        }
        a5.setText(str);
        a5.setPadding(0, a(4.0f), 0, 0);
        a3.addView(a5);
        android.widget.TextView a6 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.c, dev.duo.hookprobe.J.m);
        a6.setText("用小米相册选图，在 MiDuo 里裁切，内外屏都铺满一页");
        a6.setLineSpacing(0.0f, 1.25f);
        a6.setPadding(0, a(10.0f), 0, 0);
        a3.addView(a6);
        a3.addView(new android.view.View(this), new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0f));
        if (z2) {
            android.widget.TextView a7 = dev.duo.hookprobe.U.a((android.content.Context) this, bitmap == null ? "选择照片" : "换照片", true, 40.0f);
            a7.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.hookprobe.WidgetCenterActivity.this.a(i, view);
                }
            });
            a3.addView(a7, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
            if (!z) {
                android.widget.TextView a8 = dev.duo.hookprobe.U.a((android.content.Context) this, "设为第 1 页", false, 40.0f);
                a8.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(android.view.View view) {
                        dev.duo.hookprobe.WidgetCenterActivity.this.b(i, view);
                    }
                });
                a3.addView(a8, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
            }
        } else {
            android.widget.TextView a9 = dev.duo.hookprobe.U.a((android.content.Context) this, "添加相册", true, 40.0f);
            a9.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.hookprobe.WidgetCenterActivity.this.a(view);
                }
            });
            a3.addView(a9, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        }
        c2.addView(a3, new android.widget.LinearLayout.LayoutParams(0, a2, 1.0f));
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, android.view.View view) {
        startActivity(new android.content.Intent(this, (java.lang.Class<?>) dev.duo.hookprobe.AlbumWidgetConfigureActivity.class).setData(android.net.Uri.parse(dev.duo.hookprobe.C0014d.a(i))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.view.View view) {
        dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.WidgetCenterActivity.this.g();
            }
        });
    }

    private void a(boolean z) {
        if (this.c) {
            if (!z) {
                android.widget.Toast.makeText(this, "没有 Root，打不开桌面快捷方式权限", 0).show();
                return;
            }
            try {
                if (android.appwidget.AppWidgetManager.getInstance(this).requestPinAppWidget(new android.content.ComponentName(this, (java.lang.Class<?>) dev.duo.hookprobe.AlbumWidgetProvider.class), null, null)) {
                    return;
                }
                android.widget.Toast.makeText(this, "当前桌面不支持直接添加", 0).show();
            } catch (java.lang.IllegalStateException e2) {
                android.util.Log.w("MiDuoAlbum", "pin request while leaving the foreground", e2);
            }
        }
    }

    private android.view.View a(final java.lang.String str, java.lang.String str2) {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        c2.setMinimumHeight(a(68.0f));
        android.widget.TextView a2 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.v, 700);
        a2.setText(str.substring(0, 1));
        a2.setGravity(17);
        a2.setBackground(dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.t, dev.duo.hookprobe.U.u));
        c2.addView(a2, dev.duo.hookprobe.U.a(this, 38.0f, 38.0f));
        android.widget.LinearLayout a3 = dev.duo.hookprobe.U.a((android.content.Context) this);
        a3.setPadding(a(12.0f), 0, a(8.0f), 0);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a4.setText(str);
        a3.addView(a4);
        android.widget.TextView a5 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a5.setText(str2);
        a5.setPadding(0, a(3.0f), 0, 0);
        a3.addView(a5);
        c2.addView(a3, dev.duo.hookprobe.U.b());
        android.widget.TextView a6 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, 500);
        a6.setText("预览与添加");
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.WidgetCenterActivity.this.a(str, view);
            }
        });
        c2.addView(a6);
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.String str, android.view.View view) {
        startActivity(new android.content.Intent(this, (java.lang.Class<?>) dev.duo.hookprobe.InfoWidgetActivity.class).putExtra("type", "电池".equals(str) ? 0 : "日历".equals(str) ? 2 : 4));
    }
}
