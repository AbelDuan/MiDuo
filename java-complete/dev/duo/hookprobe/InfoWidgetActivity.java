package dev.duo.hookprobe;

import android.app.Activity;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import dev.duo.hookprobe.T;
import java.util.ArrayList;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class InfoWidgetActivity extends Activity {
    private LinearLayout a;
    private final ArrayList<Bitmap> b = new ArrayList<>();
    private boolean c;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        final Bundle[] bundleArr = new Bundle[3];
        try {
            bundleArr[0] = A.a(this, InfoWidgetProvider.a(this, "battery"));
            bundleArr[1] = A.a(this);
            bundleArr[2] = A.a(InfoWidgetProvider.a(this, "weather"));
            runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.InfoWidgetActivity.this.a(bundleArr);
                }
            });
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            Log.w("MiDuoWidgets", "preview interrupted", e);
        }
    }

    private int b(int i) {
        return T.a(this, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        InfoWidgetProvider.a(this);
        b();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        T.d dVar = new T.d(this);
        ScrollView scrollView = new ScrollView(this);
        this.a = T.a((Context) this);
        int a = dVar.a(dVar.e());
        this.a.setPadding(a, dVar.d(), a, dVar.b());
        scrollView.addView(this.a);
        dVar.b.addView(scrollView, new FrameLayout.LayoutParams(-1, -1));
        setContentView(dVar.a);
        dVar.a();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ArrayList<Bitmap> arrayList = this.b;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Bitmap bitmap = arrayList.get(i);
            i++;
            bitmap.recycle();
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
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
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 396) {
            InfoWidgetProvider.a(this);
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
        ArrayList<Bitmap> arrayList = this.b;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Bitmap bitmap = arrayList.get(i);
            i++;
            bitmap.recycle();
        }
        this.b.clear();
        TextView a = T.a(this, 14.0f, T.c, J.m);
        a.setText("正在读取组件数据…");
        this.a.addView(a);
        MainActivity.a.execute(new Runnable() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.InfoWidgetActivity.this.a();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(final int i) {
        final boolean a = WidgetCenterActivity.a();
        runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.InfoWidgetActivity.this.a(a, i);
            }
        });
    }

    private void b(Bundle[] bundleArr) {
        this.a.removeAllViews();
        TextView a = T.a((Context) this, "返回小组件", false, 40.0f);
        a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.InfoWidgetActivity.this.a(view);
            }
        });
        this.a.addView(a);
        String[] strArr = {"电池", "日历", "天气"};
        int intExtra = getIntent().getIntExtra("type", -1);
        for (int i = 0; i < 3; i++) {
            if (intExtra < 0 || intExtra >= 6 || intExtra / 2 == i) {
                TextView a2 = T.a(this, 18.0f, T.b, 700);
                a2.setText(strArr[i]);
                a2.setPadding(0, b(12), 0, b(8));
                this.a.addView(a2);
                LinearLayout c = T.c(this);
                c.setGravity(16);
                LinearLayout c2 = T.c(this);
                int i2 = 0;
                while (i2 < 2) {
                    final int i3 = (i * 2) + i2;
                    Bitmap a3 = z.a(InfoWidgetProvider.d[i3], i2 == 1, bundleArr[i]);
                    this.b.add(a3);
                    ImageView imageView = new ImageView(this);
                    imageView.setImageBitmap(a3);
                    imageView.setAdjustViewBounds(true);
                    imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    imageView.setContentDescription(InfoWidgetProvider.e[i3]);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, i2 == 1 ? 338.0f : 158.0f);
                    if (i2 == 1) {
                        layoutParams.leftMargin = b(10);
                    }
                    c.addView(imageView, layoutParams);
                    TextView a4 = T.a((Context) this, i2 == 1 ? "添加 4×2" : "添加 2×2", false, 40.0f);
                    a4.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            dev.duo.hookprobe.InfoWidgetActivity.this.a(i3, view);
                        }
                    });
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, b(40), i2 == 1 ? 338.0f : 158.0f);
                    if (i2 == 1) {
                        layoutParams2.leftMargin = b(10);
                    }
                    c2.addView(a4, layoutParams2);
                    i2++;
                }
                this.a.addView(c);
                this.a.addView(c2, T.a(T.a(), this, 8.0f));
                if (i == 1 && checkSelfPermission("android.permission.READ_CALENDAR") != 0) {
                    TextView a5 = T.a((Context) this, "允许读取日历", true, 40.0f);
                    a5.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            dev.duo.hookprobe.InfoWidgetActivity.this.b(view);
                        }
                    });
                    this.a.addView(a5, T.a(T.a(), this, 8.0f));
                }
            }
        }
        TextView a6 = T.a((Context) this, "刷新", false, 40.0f);
        a6.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.InfoWidgetActivity.this.c(view);
            }
        });
        this.a.addView(a6, T.a(T.a(), this, 16.0f));
        TextView a7 = T.a(this, 12.0f, T.c, J.m);
        a7.setText("天气沿用小米天气的城市；未连接设备显示空电量环。预览使用当前数据。");
        a7.setPadding(0, b(10), 0, 0);
        this.a.addView(a7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Bundle[] bundleArr) {
        if (isDestroyed()) {
            return;
        }
        b(bundleArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, View view) {
        a(i);
    }

    private void a(final int i) {
        MainActivity.a.execute(new Runnable() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda3
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
                Toast.makeText(this, "未能打开桌面快捷方式权限", 0).show();
            } else {
                if (AppWidgetManager.getInstance(this).requestPinAppWidget(new ComponentName(this, InfoWidgetProvider.c[i]), null, null)) {
                    return;
                }
                Toast.makeText(this, "当前桌面不支持直接添加", 0).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        requestPermissions(new String[]{"android.permission.READ_CALENDAR"}, 396);
    }
}
