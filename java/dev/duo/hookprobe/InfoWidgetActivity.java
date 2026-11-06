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
import dev.duo.hookprobe.UiKit;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class InfoWidgetActivity extends Activity {

    /* renamed from: a */
    private LinearLayout f902a;

    /* renamed from: b */
    private final ArrayList<Bitmap> f903b = new ArrayList<>();

    /* renamed from: c */
    private boolean f904c;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m900a() {
        final Bundle[] bundleArr = new Bundle[3];
        try {
            bundleArr[0] = WidgetDataSource.m746a(this, InfoWidgetProvider.m912a(this, "battery"));
            bundleArr[1] = WidgetDataSource.m745a(this);
            bundleArr[2] = WidgetDataSource.m747a(InfoWidgetProvider.m912a(this, "weather"));
            runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    InfoWidgetActivity.this.m905a(bundleArr);
                }
            });
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            Log.w("MiDuoWidgets", "preview interrupted", e);
        }
    }

    /* renamed from: b */
    private int m906b(int i) {
        return UiKit.m1399a(this, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m911c(View view) {
        InfoWidgetProvider.m913a(this);
        m907b();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        UiKit.d dVar = new UiKit.d(this);
        ScrollView scrollView = new ScrollView(this);
        this.f902a = UiKit.m1411a((Context) this);
        int m1432a = dVar.m1432a(dVar.m1439e());
        this.f902a.setPadding(m1432a, dVar.m1438d(), m1432a, dVar.m1436b());
        scrollView.addView(this.f902a);
        dVar.f1395b.addView(scrollView, new FrameLayout.LayoutParams(-1, -1));
        setContentView(dVar.f1394a);
        dVar.m1433a();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ArrayList<Bitmap> arrayList = this.f903b;
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
        if (this.f904c) {
            m907b();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.f904c = false;
        super.onPause();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 396) {
            InfoWidgetProvider.m913a(this);
            m907b();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f904c = true;
        m907b();
    }

    /* renamed from: b */
    private void m907b() {
        this.f902a.removeAllViews();
        ArrayList<Bitmap> arrayList = this.f903b;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Bitmap bitmap = arrayList.get(i);
            i++;
            bitmap.recycle();
        }
        this.f903b.clear();
        TextView m1413a = UiKit.m1413a(this, 14.0f, UiKit.f1347c, RailCodec.f930m);
        m1413a.setText("正在读取组件数据…");
        this.f902a.addView(m1413a);
        MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                InfoWidgetActivity.this.m900a();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m910c(final int i) {
        final boolean m1529a = WidgetCenterActivity.m1529a();
        runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                InfoWidgetActivity.this.m904a(m1529a, i);
            }
        });
    }

    /* renamed from: b */
    private void m909b(Bundle[] bundleArr) {
        this.f902a.removeAllViews();
        TextView m1415a = UiKit.m1415a((Context) this, "返回小组件", false, 40.0f);
        m1415a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InfoWidgetActivity.this.m903a(view);
            }
        });
        this.f902a.addView(m1415a);
        String[] strArr = {"电池", "日历", "天气"};
        int intExtra = getIntent().getIntExtra("type", -1);
        for (int i = 0; i < 3; i++) {
            if (intExtra < 0 || intExtra >= 6 || intExtra / 2 == i) {
                TextView m1413a = UiKit.m1413a(this, 18.0f, UiKit.f1345b, 700);
                m1413a.setText(strArr[i]);
                m1413a.setPadding(0, m906b(12), 0, m906b(8));
                this.f902a.addView(m1413a);
                LinearLayout m1430c = UiKit.m1430c(this);
                m1430c.setGravity(16);
                LinearLayout m1430c2 = UiKit.m1430c(this);
                int i2 = 0;
                while (i2 < 2) {
                    final int i3 = (i * 2) + i2;
                    Bitmap m2046a = WidgetBitmapPainter.m2046a(InfoWidgetProvider.f908d[i3], i2 == 1, bundleArr[i]);
                    this.f903b.add(m2046a);
                    ImageView imageView = new ImageView(this);
                    imageView.setImageBitmap(m2046a);
                    imageView.setAdjustViewBounds(true);
                    imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    imageView.setContentDescription(InfoWidgetProvider.f909e[i3]);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, i2 == 1 ? 338.0f : 158.0f);
                    if (i2 == 1) {
                        layoutParams.leftMargin = m906b(10);
                    }
                    m1430c.addView(imageView, layoutParams);
                    TextView m1415a2 = UiKit.m1415a((Context) this, i2 == 1 ? "添加 4×2" : "添加 2×2", false, 40.0f);
                    m1415a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            InfoWidgetActivity.this.m902a(i3, view);
                        }
                    });
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, m906b(40), i2 == 1 ? 338.0f : 158.0f);
                    if (i2 == 1) {
                        layoutParams2.leftMargin = m906b(10);
                    }
                    m1430c2.addView(m1415a2, layoutParams2);
                    i2++;
                }
                this.f902a.addView(m1430c);
                this.f902a.addView(m1430c2, UiKit.m1410a(UiKit.m1408a(), this, 8.0f));
                if (i == 1 && checkSelfPermission("android.permission.READ_CALENDAR") != 0) {
                    TextView m1415a3 = UiKit.m1415a((Context) this, "允许读取日历", true, 40.0f);
                    m1415a3.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            InfoWidgetActivity.this.m908b(view);
                        }
                    });
                    this.f902a.addView(m1415a3, UiKit.m1410a(UiKit.m1408a(), this, 8.0f));
                }
            }
        }
        TextView m1415a4 = UiKit.m1415a((Context) this, "刷新", false, 40.0f);
        m1415a4.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InfoWidgetActivity.this.m911c(view);
            }
        });
        this.f902a.addView(m1415a4, UiKit.m1410a(UiKit.m1408a(), this, 16.0f));
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1347c, RailCodec.f930m);
        m1413a2.setText("天气沿用小米天气的城市；未连接设备显示空电量环。预览使用当前数据。");
        m1413a2.setPadding(0, m906b(10), 0, 0);
        this.f902a.addView(m1413a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m905a(Bundle[] bundleArr) {
        if (isDestroyed()) {
            return;
        }
        m909b(bundleArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m903a(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m902a(int i, View view) {
        m901a(i);
    }

    /* renamed from: a */
    private void m901a(final int i) {
        MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.InfoWidgetActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                InfoWidgetActivity.this.m910c(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m904a(boolean z, int i) {
        if (this.f904c) {
            if (!z) {
                Toast.makeText(this, "未能打开桌面快捷方式权限", 0).show();
            } else {
                if (AppWidgetManager.getInstance(this).requestPinAppWidget(new ComponentName(this, InfoWidgetProvider.f907c[i]), null, null)) {
                    return;
                }
                Toast.makeText(this, "当前桌面不支持直接添加", 0).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m908b(View view) {
        requestPermissions(new String[]{"android.permission.READ_CALENDAR"}, 396);
    }
}
