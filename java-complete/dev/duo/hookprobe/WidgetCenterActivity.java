package dev.duo.hookprobe;

import android.app.Activity;
import android.app.AlertDialog;
import android.appwidget.AppWidgetManager;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import dev.duo.hookprobe.H;
import dev.duo.hookprobe.T;
import dev.duo.hookprobe.b;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.function.IntConsumer;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class WidgetCenterActivity extends Activity {
    private static final String[][] e = {new String[]{"电池", "2×2 / 4×2"}, new String[]{"日历", "2×2 / 4×2"}, new String[]{"天气", "2×2 / 4×2"}};
    private static final int f = 132;
    private T.d a;
    private LinearLayout b_fld;
    private boolean c;
    private final b.d d = new a();

    class a implements b.d {
        a() {
        }

        @Override // b.d
        public void a(String str) {
            dev.duo.hookprobe.WidgetCenterActivity.this.c(str);
        }

        @Override // b.d
        public void a(b.c cVar, Exception exc) {
            dev.duo.hookprobe.WidgetCenterActivity.this.a(cVar, exc);
        }
    }

    class b extends ViewOutlineProvider {
        final /* synthetic */ float a;

        b(float f) {
            this.a = f;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c {
        final int[] a;
        final LinkedHashMap<Integer, Long> b;
        final long c;

        c(int[] iArr, LinkedHashMap<Integer, Long> linkedHashMap, long j) {
            this.a = iArr;
            this.b_fld = linkedHashMap;
            this.c = j;
        }
    }

    private float b() {
        return this.a.e ? 26.0f : 28.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public void a(int i) {
        if (b.a(this, i, this.d)) {
            return;
        }
        g();
    }

    private void d() {
        final Context applicationContext = getApplicationContext();
        MainActivity.a.execute(new Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda12
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
        new AlertDialog.Builder(this).setTitle("请先展开手机").setMessage("手机折叠时，小米桌面放不下整页相册（4×6）。请展开手机，再点「添加相册」。").setPositiveButton("知道了", (DialogInterface.OnClickListener) null).show();
    }

    private c f() throws Exception {
        String a2 = b.a();
        LinkedHashMap<Integer, Long> linkedHashMap = b.a(this, a2).a;
        int size = linkedHashMap.size();
        int[] iArr = new int[size];
        Iterator<Integer> it = linkedHashMap.keySet().iterator();
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
        return new c(iArr, linkedHashMap, b.b(a2) ? b.c(a2) : -1L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        String a2 = b.a();
        b.c cVar = new b.c();
        try {
            final boolean b2 = b.b(a2);
            b.a a3 = b2 ? b.a(this, a2) : null;
            long c2 = b.c(a2);
            if (b2 && b(a3, c2)) {
                return;
            }
            if (b2 && c() && !a(a3, c2)) {
                runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.hookprobe.WidgetCenterActivity.this.e();
                    }
                });
                return;
            }
            cVar.a("读取桌面数据", (String) null);
            final boolean a4 = a();
            if (a4 && b2) {
                b.a(this, a3.c);
            }
            runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.WidgetCenterActivity.this.a(a4, b2);
                }
            });
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
        } catch (Exception e3) {
            cVar.a("读取桌面数据", e3);
            a(cVar, e3);
        }
    }

    private View h() {
        LinearLayout a2 = T.a((Context) this);
        T.a(a2, b());
        a2.setPadding(a(16.0f), a(6.0f), a(16.0f), a(6.0f));
        int i = 0;
        while (true) {
            String[][] strArr = e;
            if (i >= strArr.length) {
                return a2;
            }
            if (i > 0) {
                View view = new View(this);
                view.setBackgroundColor(T.h);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, Math.max(1, a(0.5f)));
                layoutParams.leftMargin = a(50.0f);
                a2.addView(view, layoutParams);
            }
            String[] strArr2 = strArr[i];
            a2.addView(a(strArr2[0], strArr2[1]), T.a());
            i++;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = new T.d(this);
        LinearLayout a2 = T.a((Context) this);
        T.d dVar = this.a;
        int a3 = dVar.a(dVar.e());
        a2.setPadding(a3, this.a.d(), a3, this.a.b());
        a2.addView(a(this, this.a, "小组件", "MiDuo 做的桌面小组件都在这里"), T.a());
        LinearLayout a4 = T.a((Context) this);
        this.b_fld = a4;
        T.a(a4, b());
        this.b_fld.setPadding(a(14.0f), a(14.0f), a(14.0f), a(14.0f));
        View h = h();
        if (this.a.c >= 600) {
            LinearLayout c2 = T.c(this);
            c2.setGravity(48);
            c2.setBaselineAligned(false);
            c2.addView(b("我的小组件", this.b), new LinearLayout.LayoutParams(0, -1, 1.0f));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
            layoutParams.leftMargin = a(12.0f);
            c2.addView(b("信息组件", h), layoutParams);
            a2.addView(c2, T.a());
        } else {
            a2.addView(b("我的小组件", this.b), T.a());
            a2.addView(b("信息组件", h), T.a());
        }
        ScrollView scrollView = new ScrollView(this);
        scrollView.setClipToPadding(false);
        scrollView.setVerticalScrollBarEnabled(false);
        scrollView.addView(a2);
        this.a.b.addView(scrollView, new FrameLayout.LayoutParams(-1, -1));
        this.a.a(3, new IntConsumer() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda14
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
        startActivity(new Intent(this, (Class<?>) dev.duo.hookprobe.MainActivity.class).putExtra("tab", i).addFlags(603979776));
        finish();
    }

    private boolean c() {
        Rect bounds = getWindowManager().getCurrentWindowMetrics().getBounds();
        return Math.min(bounds.width(), bounds.height()) < 1400;
    }

    private int a(float f2) {
        return T.a(this, f2);
    }

    static View a(final Activity activity, T.d dVar, String str, String str2) {
        LinearLayout c2 = T.c(activity);
        int a2 = T.a((Context) activity, 4.0f);
        c2.setPadding(a2, 0, dVar.c() + a2, 0);
        FrameLayout frameLayout = new FrameLayout(activity);
        frameLayout.setBackground(T.a(T.f, T.a((Context) activity, 20.0f)));
        int a3 = T.a((Context) activity, 18.0f);
        frameLayout.addView(T.a(activity, T.a(activity, 3, T.b, 2.4f, false, 18.0f)), new FrameLayout.LayoutParams(a3, a3, 17));
        frameLayout.setContentDescription("返回");
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                activity.finish();
            }
        });
        c2.addView(frameLayout, T.a(activity, 40.0f, 40.0f));
        LinearLayout a4 = T.a((Context) activity);
        a4.setPadding(T.a((Context) activity, 12.0f), 0, 0, 0);
        TextView a5 = T.a(activity, 22.0f, T.b, 800);
        a5.setText(str);
        a5.setLetterSpacing(-0.01f);
        a4.addView(a5);
        TextView a6 = T.a(activity, 12.0f, T.d, J.m);
        a6.setText(str2);
        a6.setPadding(0, T.a((Context) activity, 3.0f), 0, 0);
        a4.addView(a6);
        c2.addView(a4, T.b());
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final String str) {
        runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.WidgetCenterActivity.this.b(str);
            }
        });
    }

    private View b(String str, View view) {
        LinearLayout a2 = T.a((Context) this);
        a2.addView(T.a((Context) this, str), T.a());
        a2.addView(view, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        return a2;
    }

    private boolean b(b.a aVar, long j) {
        Integer num;
        if (!aVar.a.isEmpty() || j < 0 || (num = aVar.b.get(Long.valueOf(j))) == null || num.intValue() == 0) {
            return false;
        }
        Log.i("MiDuoAlbum", "widget page blocked: fixed page " + j + " has items");
        c("第 1 页已有内容，请先移除后再添加相册");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str) {
        Toast.makeText(this, str, 1).show();
    }

    private void b(c cVar, Bitmap[] bitmapArr) {
        this.b_fld.removeAllViews();
        if (cVar.a.length == 0) {
            this.b_fld.addView(a(0, (Bitmap) null, 0, false), T.a());
        }
        int i = 0;
        while (true) {
            int[] iArr = cVar.a;
            if (i >= iArr.length) {
                return;
            }
            boolean z = cVar.c >= 0 && cVar.b.get(Integer.valueOf(iArr[i])).longValue() == cVar.c;
            LinearLayout linearLayout = this.b;
            int[] iArr2 = cVar.a;
            linearLayout.addView(a(iArr2[i], bitmapArr[i], iArr2.length, z), T.a(T.a(), this, i == 0 ? 0.0f : 14.0f));
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final int i, View view) {
        MainActivity.a.execute(new Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.WidgetCenterActivity.this.a(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(b.c cVar, Exception exc) {
        Log.w("MiDuoAlbum", "widget page not set\n" + cVar.a(), exc);
        final String a2 = cVar.a();
        runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.WidgetCenterActivity.this.a(a2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final String str) {
        if (isDestroyed()) {
            return;
        }
        new AlertDialog.Builder(this).setTitle("没能设为桌面第 1 页").setMessage(str).setPositiveButton("复制", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dev.duo.hookprobe.WidgetCenterActivity.this.a(str, dialogInterface, i);
            }
        }).setNegativeButton("关闭", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, DialogInterface dialogInterface, int i) {
        ((ClipboardManager) getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("MiDuo 小组件页诊断", str));
        Toast.makeText(this, "已复制", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, boolean z2) {
        String str;
        a(z);
        if (z) {
            if (z2) {
                str = "点系统弹窗里的“添加”，相册会自动设为桌面第 1 页，桌面会重开一次，不用再回来";
            } else {
                str = "放好相册即可";
            }
            Toast.makeText(this, str, 1).show();
        }
    }

    private static boolean a(b.a aVar, long j) {
        if (j < 0 || !aVar.c.contains(Long.valueOf(j))) {
            return false;
        }
        Integer num = aVar.b.get(Long.valueOf(j));
        return num == null || num.intValue() == 0;
    }

    static boolean a() {
        String str = "--user " + (Process.myUid() / 100000) + " com.lsposed.miduo 10017";
        try {
            M.a("cmd appops get " + str + " | grep -q ': allow' || cmd appops set " + str + " allow");
            return true;
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            return false;
        } catch (Exception e3) {
            Log.w("MiDuoAlbum", "allow 10017 failed", e3);
            return false;
        }
    }

    private ImageView a(Bitmap bitmap) {
        ImageView imageView = new ImageView(this);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        if (bitmap != null) {
            imageView.setImageBitmap(bitmap);
        } else {
            imageView.setImageResource(H.b.b);
        }
        imageView.setOutlineProvider(new b((a(132.0f) * 56.0f) / 854.0f));
        imageView.setClipToOutline(true);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Context context) {
        try {
            final c f2 = f();
            final Bitmap[] bitmapArr = new Bitmap[f2.a.length];
            int i = 0;
            while (true) {
                int[] iArr = f2.a;
                if (i >= iArr.length) {
                    runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda13
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.hookprobe.WidgetCenterActivity.this.a(f2, bitmapArr);
                        }
                    });
                    a(f2);
                    return;
                } else {
                    bitmapArr[i] = c.e(context, iArr[i]);
                    i++;
                }
            }
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
        } catch (Exception e3) {
            Log.w("MiDuoAlbum", "desktop albums not read", e3);
            c("读取桌面相册失败：" + e3.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(c cVar, Bitmap[] bitmapArr) {
        if (isDestroyed()) {
            return;
        }
        b(cVar, bitmapArr);
    }

    private void a(c cVar) {
        if (b.b(this) && cVar.a.length != 0 && b.a(this) && cVar.b.get(Integer.valueOf(cVar.a[0])).longValue() != cVar.c) {
            c("相册已放好，正在设为桌面第 1 页，桌面会重开一次");
            a(cVar.a[0]);
        }
    }

    private View a(final int i, Bitmap bitmap, int i2, boolean z) {
        String str;
        boolean z2 = i != 0;
        int a2 = (a(132.0f) * 1328) / 854;
        LinearLayout c2 = T.c(this);
        c2.setGravity(48);
        c2.addView(a(bitmap), new LinearLayout.LayoutParams(a(132.0f), a2));
        LinearLayout a3 = T.a((Context) this);
        a3.setPadding(a(14.0f), a(4.0f), 0, 0);
        TextView a4 = T.a(this, 17.0f, T.b, 700);
        a4.setText("相册");
        a3.addView(a4);
        TextView a5 = T.a(this, 12.0f, T.d, J.m);
        if (z2) {
            str = "4×6 · 桌面上有 " + i2 + " 个" + (z ? " · 在第 1 页" : "");
        } else {
            str = "4×6 · 还没放到桌面";
        }
        a5.setText(str);
        a5.setPadding(0, a(4.0f), 0, 0);
        a3.addView(a5);
        TextView a6 = T.a(this, 12.0f, T.c, J.m);
        a6.setText("用小米相册选图，在 MiDuo 里裁切，内外屏都铺满一页");
        a6.setLineSpacing(0.0f, 1.25f);
        a6.setPadding(0, a(10.0f), 0, 0);
        a3.addView(a6);
        a3.addView(new View(this), new LinearLayout.LayoutParams(-1, 0, 1.0f));
        if (z2) {
            TextView a7 = T.a((Context) this, bitmap == null ? "选择照片" : "换照片", true, 40.0f);
            a7.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dev.duo.hookprobe.WidgetCenterActivity.this.a(i, view);
                }
            });
            a3.addView(a7, T.a(T.a(), this, 12.0f));
            if (!z) {
                TextView a8 = T.a((Context) this, "设为第 1 页", false, 40.0f);
                a8.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        dev.duo.hookprobe.WidgetCenterActivity.this.b(i, view);
                    }
                });
                a3.addView(a8, T.a(T.a(), this, 12.0f));
            }
        } else {
            TextView a9 = T.a((Context) this, "添加相册", true, 40.0f);
            a9.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dev.duo.hookprobe.WidgetCenterActivity.this.a(view);
                }
            });
            a3.addView(a9, T.a(T.a(), this, 12.0f));
        }
        c2.addView(a3, new LinearLayout.LayoutParams(0, a2, 1.0f));
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, View view) {
        startActivity(new Intent(this, (Class<?>) dev.duo.hookprobe.AlbumWidgetConfigureActivity.class).setData(Uri.parse(d.a(i))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        MainActivity.a.execute(new Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.WidgetCenterActivity.this.g();
            }
        });
    }

    private void a(boolean z) {
        if (this.c) {
            if (!z) {
                Toast.makeText(this, "没有 Root，打不开桌面快捷方式权限", 0).show();
                return;
            }
            try {
                if (AppWidgetManager.getInstance(this).requestPinAppWidget(new ComponentName(this, (Class<?>) dev.duo.hookprobe.AlbumWidgetProvider.class), null, null)) {
                    return;
                }
                Toast.makeText(this, "当前桌面不支持直接添加", 0).show();
            } catch (IllegalStateException e2) {
                Log.w("MiDuoAlbum", "pin request while leaving the foreground", e2);
            }
        }
    }

    private View a(final String str, String str2) {
        LinearLayout c2 = T.c(this);
        c2.setMinimumHeight(a(68.0f));
        TextView a2 = T.a(this, 15.0f, T.v, 700);
        a2.setText(str.substring(0, 1));
        a2.setGravity(17);
        a2.setBackground(T.a(T.t, T.u));
        c2.addView(a2, T.a(this, 38.0f, 38.0f));
        LinearLayout a3 = T.a((Context) this);
        a3.setPadding(a(12.0f), 0, a(8.0f), 0);
        TextView a4 = T.a(this, 15.0f, T.b, 600);
        a4.setText(str);
        a3.addView(a4);
        TextView a5 = T.a(this, 12.0f, T.d, J.m);
        a5.setText(str2);
        a5.setPadding(0, a(3.0f), 0, 0);
        a3.addView(a5);
        c2.addView(a3, T.b());
        TextView a6 = T.a(this, 12.0f, T.d, 500);
        a6.setText("预览与添加");
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.WidgetCenterActivity.this.a(str, view);
            }
        });
        c2.addView(a6);
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, View view) {
        startActivity(new Intent(this, (Class<?>) dev.duo.hookprobe.InfoWidgetActivity.class).putExtra("type", "电池".equals(str) ? 0 : "日历".equals(str) ? 2 : 4));
    }
}
