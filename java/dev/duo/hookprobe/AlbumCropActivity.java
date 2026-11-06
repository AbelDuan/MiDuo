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
import dev.duo.hookprobe.UiKit;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class AlbumCropActivity extends Activity {

    /* renamed from: f */
    private static final String f759f = "MiDuoAlbum";

    /* renamed from: g */
    private static final long f760g = 16000000;

    /* renamed from: h */
    private static final String f761h = "zoom";

    /* renamed from: i */
    private static final String f762i = "centerX";

    /* renamed from: j */
    private static final String f763j = "centerY";

    /* renamed from: k */
    private static final ExecutorService f764k = Executors.newSingleThreadExecutor();

    /* renamed from: a */
    private UiKit.d f765a;

    /* renamed from: b */
    private Bundle f766b;

    /* renamed from: c */
    private LinearLayout f767c;

    /* renamed from: d */
    private AlbumCropGestureView f768d;

    /* renamed from: e */
    private Bitmap f769e;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m757b(Uri uri) {
        final Bitmap m748a = m748a(uri);
        runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.AlbumCropActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                AlbumCropActivity.this.m752a(m748a);
            }
        });
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f766b = bundle;
        this.f765a = new UiKit.d(this);
        this.f767c = UiKit.m1411a((Context) this);
        UiKit.d dVar = this.f765a;
        int m1432a = dVar.m1432a(dVar.m1439e());
        this.f767c.setPadding(m1432a, this.f765a.m1438d(), m1432a, UiKit.m1399a((Context) this, 16.0f));
        this.f767c.addView(WidgetCenterActivity.m1511a(this, this.f765a, "裁切照片", "移动和缩放，框里就是桌面上的样子"), UiKit.m1408a());
        this.f765a.f1395b.addView(this.f767c, new FrameLayout.LayoutParams(-1, -1));
        setContentView(this.f765a.f1394a);
        this.f765a.m1433a();
        final Uri data = getIntent().getData();
        new Thread(new Runnable() { // from class: dev.duo.hookprobe.AlbumCropActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                AlbumCropActivity.this.m757b(data);
            }
        }, "album-crop").start();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Bitmap bitmap = this.f769e;
        if (bitmap != null) {
            bitmap.recycle();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        AlbumCropGestureView c0099a = this.f768d;
        if (c0099a == null) {
            return;
        }
        bundle.putFloat(f761h, c0099a.m1559e());
        bundle.putFloat(f762i, this.f768d.m1556b());
        bundle.putFloat(f763j, this.f768d.m1557c());
    }

    /* renamed from: a */
    private Bitmap m748a(Uri uri) {
        try {
            return ImageDecoder.decodeBitmap(ImageDecoder.createSource(getContentResolver(), uri), new ImageDecoder.OnHeaderDecodedListener() { // from class: dev.duo.hookprobe.AlbumCropActivity$$ExternalSyntheticLambda0
                @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                    AlbumCropActivity.m753a(imageDecoder, imageInfo, source);
                }
            });
        } catch (IOException | OutOfMemoryError | SecurityException e) {
            Log.w(f759f, "decode failed", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void m752a(Bitmap bitmap) {
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
        this.f769e = bitmap;
        this.f768d = new AlbumCropGestureView(this, this.f769e);
        Bundle bundle = this.f766b;
        if (bundle != null && bundle.containsKey(f761h)) {
            this.f768d.m1555a(this.f766b.getFloat(f761h), this.f766b.getFloat(f762i), this.f766b.getFloat(f763j));
        }
        this.f767c.addView(this.f768d, UiKit.m1410a(new LinearLayout.LayoutParams(-1, 0, 1.0f), this, 8.0f));
        TextView m1415a = UiKit.m1415a((Context) this, "完成", true, 44.0f);
        m1415a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.AlbumCropActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlbumCropActivity.this.m754a(view);
            }
        });
        LinearLayout.LayoutParams m1410a = UiKit.m1410a(new LinearLayout.LayoutParams(UiKit.m1399a((Context) this, 200.0f), -2), this, 12.0f);
        m1410a.gravity = 1;
        this.f767c.addView(m1415a, m1410a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m753a(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        int i = 1;
        imageDecoder.setAllocator(1);
        while (true) {
            long j = i;
            if ((imageInfo.getSize().getWidth() * imageInfo.getSize().getHeight()) / (j * j) <= f760g) {
                imageDecoder.setTargetSampleSize(i);
                return;
            }
            i *= 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m754a(View view) {
        view.setEnabled(false);
        m749a();
    }

    /* renamed from: a */
    private void m749a() {
        final int intExtra = getIntent().getIntExtra("appWidgetId", 0);
        if (!AlbumWidgetProvider.m766a(this, intExtra)) {
            Toast.makeText(this, "这个组件已经删除了", 0).show();
            finish();
        } else {
            final Bitmap m1558d = this.f768d.m1558d();
            final Context applicationContext = getApplicationContext();
            f764k.execute(new Runnable() { // from class: dev.duo.hookprobe.AlbumCropActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    AlbumCropActivity.this.m750a(applicationContext, intExtra, m1558d);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m750a(final Context context, final int i, Bitmap bitmap) {
        final boolean z = AlbumWidgetProvider.m766a(context, i) && AlbumImageStore.m1581a(context, i, bitmap);
        bitmap.recycle();
        runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.AlbumCropActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                AlbumCropActivity.this.m755b(context, i, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void m755b(Context context, int i, boolean z) {
        if (!z) {
            Toast.makeText(this, "保存失败", 0).show();
            finish();
        } else {
            AlbumWidgetProvider.m768b(context, i);
            startActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").addFlags(268435456));
            finish();
        }
    }
}
