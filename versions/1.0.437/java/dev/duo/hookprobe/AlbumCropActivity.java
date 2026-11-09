package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class AlbumCropActivity extends android.app.Activity {
    private static final java.lang.String f = "MiDuoAlbum";
    private static final long g = 16000000;
    private static final java.lang.String h = "zoom";
    private static final java.lang.String i = "centerX";
    private static final java.lang.String j = "centerY";
    private static final java.util.concurrent.ExecutorService k = java.util.concurrent.Executors.newSingleThreadExecutor();
    private dev.duo.hookprobe.U.d a;
    private android.os.Bundle b;
    private android.widget.LinearLayout c;
    private dev.duo.hookprobe.C0011a d;
    private android.graphics.Bitmap e;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(android.net.Uri uri) {
        final android.graphics.Bitmap a = a(uri);
        runOnUiThread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.AlbumCropActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.AlbumCropActivity.this.a(a);
            }
        });
    }

    @Override // android.app.Activity
    protected void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        this.b = bundle;
        this.a = new dev.duo.hookprobe.U.d(this);
        this.c = dev.duo.hookprobe.U.a((android.content.Context) this);
        dev.duo.hookprobe.U.d dVar = this.a;
        int a = dVar.a(dVar.e());
        this.c.setPadding(a, this.a.d(), a, dev.duo.hookprobe.U.a((android.content.Context) this, 16.0f));
        this.c.addView(dev.duo.hookprobe.WidgetCenterActivity.a(this, this.a, "裁切照片", "移动和缩放，框里就是桌面上的样子"), dev.duo.hookprobe.U.a());
        this.a.b.addView(this.c, new android.widget.FrameLayout.LayoutParams(-1, -1));
        setContentView(this.a.a);
        this.a.a();
        final android.net.Uri data = getIntent().getData();
        new java.lang.Thread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.AlbumCropActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.AlbumCropActivity.this.b(data);
            }
        }, "album-crop").start();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        android.graphics.Bitmap bitmap = this.e;
        if (bitmap != null) {
            bitmap.recycle();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(android.os.Bundle bundle) {
        super.onSaveInstanceState(bundle);
        dev.duo.hookprobe.C0011a c0011a = this.d;
        if (c0011a == null) {
            return;
        }
        bundle.putFloat(h, c0011a.e());
        bundle.putFloat(i, this.d.b());
        bundle.putFloat(j, this.d.c());
    }

    private android.graphics.Bitmap a(android.net.Uri uri) {
        try {
            return android.graphics.ImageDecoder.decodeBitmap(android.graphics.ImageDecoder.createSource(getContentResolver(), uri), new android.graphics.ImageDecoder.OnHeaderDecodedListener() { // from class: dev.duo.hookprobe.AlbumCropActivity$$ExternalSyntheticLambda0
                @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                public final void onHeaderDecoded(android.graphics.ImageDecoder imageDecoder, android.graphics.ImageDecoder.ImageInfo imageInfo, android.graphics.ImageDecoder.Source source) {
                    dev.duo.hookprobe.AlbumCropActivity.a(imageDecoder, imageInfo, source);
                }
            });
        } catch (java.io.IOException | java.lang.OutOfMemoryError | java.lang.SecurityException e) {
            android.util.Log.w(f, "decode failed", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(android.graphics.Bitmap bitmap) {
        if (isDestroyed()) {
            if (bitmap != null) {
                bitmap.recycle();
                return;
            }
            return;
        }
        if (bitmap == null) {
            android.widget.Toast.makeText(this, "这张照片打不开", 0).show();
            finish();
            return;
        }
        this.e = bitmap;
        this.d = new dev.duo.hookprobe.C0011a(this, this.e);
        android.os.Bundle bundle = this.b;
        if (bundle != null && bundle.containsKey(h)) {
            this.d.a(this.b.getFloat(h), this.b.getFloat(i), this.b.getFloat(j));
        }
        this.c.addView(this.d, dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0f), this, 8.0f));
        android.widget.TextView a = dev.duo.hookprobe.U.a((android.content.Context) this, "完成", true, 44.0f);
        a.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.AlbumCropActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.AlbumCropActivity.this.a(view);
            }
        });
        android.widget.LinearLayout.LayoutParams a2 = dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(dev.duo.hookprobe.U.a((android.content.Context) this, 200.0f), -2), this, 12.0f);
        a2.gravity = 1;
        this.c.addView(a, a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.graphics.ImageDecoder imageDecoder, android.graphics.ImageDecoder.ImageInfo imageInfo, android.graphics.ImageDecoder.Source source) {
        int i2 = 1;
        imageDecoder.setAllocator(1);
        while (true) {
            long j2 = i2;
            if ((imageInfo.getSize().getWidth() * imageInfo.getSize().getHeight()) / (j2 * j2) <= g) {
                imageDecoder.setTargetSampleSize(i2);
                return;
            }
            i2 *= 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.view.View view) {
        view.setEnabled(false);
        a();
    }

    private void a() {
        final int intExtra = getIntent().getIntExtra("appWidgetId", 0);
        if (!dev.duo.hookprobe.AlbumWidgetProvider.a(this, intExtra)) {
            android.widget.Toast.makeText(this, "这个组件已经删除了", 0).show();
            finish();
        } else {
            final android.graphics.Bitmap d = this.d.d();
            final android.content.Context applicationContext = getApplicationContext();
            k.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.AlbumCropActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.AlbumCropActivity.this.a(applicationContext, intExtra, d);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final android.content.Context context, final int i2, android.graphics.Bitmap bitmap) {
        final boolean z = dev.duo.hookprobe.AlbumWidgetProvider.a(context, i2) && dev.duo.hookprobe.C0013c.a(context, i2, bitmap);
        bitmap.recycle();
        runOnUiThread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.AlbumCropActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.AlbumCropActivity.this.b(context, i2, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(android.content.Context context, int i2, boolean z) {
        if (!z) {
            android.widget.Toast.makeText(this, "保存失败", 0).show();
            finish();
        } else {
            dev.duo.hookprobe.AlbumWidgetProvider.b(context, i2);
            startActivity(new android.content.Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").addFlags(268435456));
            finish();
        }
    }
}
