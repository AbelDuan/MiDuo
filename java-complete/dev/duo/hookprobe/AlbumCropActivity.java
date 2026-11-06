package dev.duo.hookprobe;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import dev.duo.hookprobe.T;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class AlbumCropActivity extends Activity {
    private static final String f = "MiDuoAlbum";
    private static final long g = 16000000;
    private static final String h = "zoom";
    private static final String i = "centerX";
    private static final String j = "centerY";
    private static final ExecutorService k = Executors.newSingleThreadExecutor();
    private T.d a;
    private Bundle b;
    private LinearLayout c;
    private a d;
    private Bitmap e;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Uri uri) {
        final Bitmap a = a(uri);
        runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.AlbumCropActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.AlbumCropActivity.this.a(a);
            }
        });
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.b = bundle;
        this.a = new T.d(this);
        this.c = T.a((Context) this);
        T.d dVar = this.a;
        int a = dVar.a(dVar.e());
        this.c.setPadding(a, this.a.d(), a, T.a((Context) this, 16.0f));
        this.c.addView(WidgetCenterActivity.a(this, this.a, "裁切照片", "移动和缩放，框里就是桌面上的样子"), T.a());
        this.a.b.addView(this.c, new FrameLayout.LayoutParams(-1, -1));
        setContentView(this.a.a);
        this.a.a();
        final Uri data = getIntent().getData();
        new Thread(new Runnable() { // from class: dev.duo.hookprobe.AlbumCropActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.AlbumCropActivity.this.b(data);
            }
        }, "album-crop").start();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Bitmap bitmap = this.e;
        if (bitmap != null) {
            bitmap.recycle();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        a c0008a = this.d;
        if (c0008a == null) {
            return;
        }
        bundle.putFloat(h, c0008a.e());
        bundle.putFloat(i, this.d.b());
        bundle.putFloat(j, this.d.c());
    }

    private Bitmap a(Uri uri) {
        try {
            return ImageDecoder.decodeBitmap(ImageDecoder.createSource(getContentResolver(), uri), new ImageDecoder.OnHeaderDecodedListener() { // from class: dev.duo.hookprobe.AlbumCropActivity$$ExternalSyntheticLambda0
                @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                    AlbumCropActivity.a(imageDecoder, imageInfo, source);
                }
            });
        } catch (IOException | OutOfMemoryError | SecurityException e) {
            Log.w(f, "decode failed", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(Bitmap bitmap) {
        if (isDestroyed()) {
            if (bitmap != null) {
                bitmap.recycle();
                return;
            }
            return;
        }
        if (bitmap == null) {
            Toast.makeText(this, "这张照片打不开", 0).show();
            finish();
            return;
        }
        this.e = bitmap;
        this.d = new a(this, this.e);
        Bundle bundle = this.b;
        if (bundle != null && bundle.containsKey(h)) {
            this.d.a(this.b.getFloat(h), this.b.getFloat(i), this.b.getFloat(j));
        }
        this.c.addView(this.d, T.a(new LinearLayout.LayoutParams(-1, 0, 1.0f), this, 8.0f));
        TextView a = T.a((Context) this, "完成", true, 44.0f);
        dev.duo.hookprobe.a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.AlbumCropActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.AlbumCropActivity.this.a(view);
            }
        });
        LinearLayout.LayoutParams a2 = T.a(new LinearLayout.LayoutParams(T.a((Context) this, 200.0f), -2), this, 12.0f);
        a2.gravity = 1;
        this.c.addView(a, a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
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
    public /* synthetic */ void a(View view) {
        view.setEnabled(false);
        a();
    }

    private void a() {
        final int intExtra = getIntent().getIntExtra("appWidgetId", 0);
        if (!AlbumWidgetProvider.a(this, intExtra)) {
            Toast.makeText(this, "这个组件已经删除了", 0).show();
            finish();
        } else {
            final Bitmap d = this.d.d();
            final Context applicationContext = getApplicationContext();
            dev.duo.hookprobe.k.execute(new Runnable() { // from class: dev.duo.hookprobe.AlbumCropActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.AlbumCropActivity.this.a(applicationContext, intExtra, d);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final Context context, final int i2, Bitmap bitmap) {
        final boolean z = AlbumWidgetProvider.a(context, i2) && c.a(context, i2, bitmap);
        bitmap.recycle();
        runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.AlbumCropActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.AlbumCropActivity.this.b(context, i2, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(Context context, int i2, boolean z) {
        if (!z) {
            Toast.makeText(this, "保存失败", 0).show();
            finish();
        } else {
            AlbumWidgetProvider.b(context, i2);
            startActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").addFlags(268435456));
            finish();
        }
    }
}
