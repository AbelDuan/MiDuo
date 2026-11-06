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
import dev.duo.hookprobe.C0087T;
import dev.duo.hookprobe.C0100b;
import dev.duo.workspaceprobe.b.R;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.function.IntConsumer;

/* loaded from: classes.dex */
public final class WidgetCenterActivity extends Activity {

    /* renamed from: e */
    private static final String[][] f1503e = {new String[]{"电池", "2×2 / 4×2"}, new String[]{"日历", "2×2 / 4×2"}, new String[]{"天气", "2×2 / 4×2"}};

    /* renamed from: f */
    private static final int f1504f = 132;

    /* renamed from: a */
    private C0087T.d f1505a;

    /* renamed from: b */
    private LinearLayout f1506b;

    /* renamed from: c */
    private boolean f1507c;

    /* renamed from: d */
    private final C0100b.d f1508d = new C0096a();

    /* renamed from: dev.duo.hookprobe.WidgetCenterActivity$a */
    class C0096a implements C0100b.d {
        C0096a() {
        }

        @Override // dev.duo.hookprobe.C0100b.d
        /* renamed from: a */
        public void mo771a(String str) {
            WidgetCenterActivity.this.m1539c(str);
        }

        @Override // dev.duo.hookprobe.C0100b.d
        /* renamed from: a */
        public void mo770a(C0100b.c cVar, Exception exc) {
            WidgetCenterActivity.this.m1523a(cVar, exc);
        }
    }

    /* renamed from: dev.duo.hookprobe.WidgetCenterActivity$b */
    class C0097b extends ViewOutlineProvider {

        /* renamed from: a */
        final /* synthetic */ float f1510a;

        C0097b(float f) {
            this.f1510a = f;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.f1510a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.hookprobe.WidgetCenterActivity$c */
    static final class C0098c {

        /* renamed from: a */
        final int[] f1512a;

        /* renamed from: b */
        final LinkedHashMap<Integer, Long> f1513b;

        /* renamed from: c */
        final long f1514c;

        C0098c(int[] iArr, LinkedHashMap<Integer, Long> linkedHashMap, long j) {
            this.f1512a = iArr;
            this.f1513b = linkedHashMap;
            this.f1514c = j;
        }
    }

    /* renamed from: b */
    private float m1531b() {
        return this.f1505a.f1398e ? 26.0f : 28.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public void m1514a(int i) {
        if (C0100b.m1569a(this, i, this.f1508d)) {
            return;
        }
        m1544g();
    }

    /* renamed from: d */
    private void m1541d() {
        final Context applicationContext = getApplicationContext();
        MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                WidgetCenterActivity.this.m1517a(applicationContext);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m1542e() {
        if (isDestroyed()) {
            return;
        }
        new AlertDialog.Builder(this).setTitle("请先展开手机").setMessage("手机折叠时，小米桌面放不下整页相册（4×6）。请展开手机，再点「添加相册」。").setPositiveButton("知道了", (DialogInterface.OnClickListener) null).show();
    }

    /* renamed from: f */
    private C0098c m1543f() throws Exception {
        String m1563a = C0100b.m1563a();
        LinkedHashMap<Integer, Long> linkedHashMap = C0100b.m1561a(this, m1563a).f1539a;
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
        return new C0098c(iArr, linkedHashMap, C0100b.m1572b(m1563a) ? C0100b.m1573c(m1563a) : -1L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public void m1544g() {
        String m1563a = C0100b.m1563a();
        C0100b.c cVar = new C0100b.c();
        try {
            final boolean m1572b = C0100b.m1572b(m1563a);
            C0100b.a m1561a = m1572b ? C0100b.m1561a(this, m1563a) : null;
            long m1573c = C0100b.m1573c(m1563a);
            if (m1572b && m1537b(m1561a, m1573c)) {
                return;
            }
            if (m1572b && m1540c() && !m1530a(m1561a, m1573c)) {
                runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        WidgetCenterActivity.this.m1542e();
                    }
                });
                return;
            }
            cVar.m1577a("读取桌面数据", (String) null);
            final boolean m1529a = m1529a();
            if (m1529a && m1572b) {
                C0100b.m1566a(this, m1561a.f1541c);
            }
            runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    WidgetCenterActivity.this.m1528a(m1529a, m1572b);
                }
            });
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        } catch (Exception e2) {
            cVar.m1576a("读取桌面数据", e2);
            m1523a(cVar, e2);
        }
    }

    /* renamed from: h */
    private View m1545h() {
        LinearLayout m1411a = C0087T.m1411a((Context) this);
        C0087T.m1418a(m1411a, m1531b());
        m1411a.setPadding(m1509a(16.0f), m1509a(6.0f), m1509a(16.0f), m1509a(6.0f));
        int i = 0;
        while (true) {
            String[][] strArr = f1503e;
            if (i >= strArr.length) {
                return m1411a;
            }
            if (i > 0) {
                View view = new View(this);
                view.setBackgroundColor(C0087T.f1357h);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, Math.max(1, m1509a(0.5f)));
                layoutParams.leftMargin = m1509a(50.0f);
                m1411a.addView(view, layoutParams);
            }
            String[] strArr2 = strArr[i];
            m1411a.addView(m1512a(strArr2[0], strArr2[1]), C0087T.m1408a());
            i++;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1505a = new C0087T.d(this);
        LinearLayout m1411a = C0087T.m1411a((Context) this);
        C0087T.d dVar = this.f1505a;
        int m1432a = dVar.m1432a(dVar.m1439e());
        m1411a.setPadding(m1432a, this.f1505a.m1438d(), m1432a, this.f1505a.m1436b());
        m1411a.addView(m1511a(this, this.f1505a, "小组件", "MiDuo 做的桌面小组件都在这里"), C0087T.m1408a());
        LinearLayout m1411a2 = C0087T.m1411a((Context) this);
        this.f1506b = m1411a2;
        C0087T.m1418a(m1411a2, m1531b());
        this.f1506b.setPadding(m1509a(14.0f), m1509a(14.0f), m1509a(14.0f), m1509a(14.0f));
        View m1545h = m1545h();
        if (this.f1505a.f1396c >= 600) {
            LinearLayout m1430c = C0087T.m1430c(this);
            m1430c.setGravity(48);
            m1430c.setBaselineAligned(false);
            m1430c.addView(m1532b("我的小组件", this.f1506b), new LinearLayout.LayoutParams(0, -1, 1.0f));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
            layoutParams.leftMargin = m1509a(12.0f);
            m1430c.addView(m1532b("信息组件", m1545h), layoutParams);
            m1411a.addView(m1430c, C0087T.m1408a());
        } else {
            m1411a.addView(m1532b("我的小组件", this.f1506b), C0087T.m1408a());
            m1411a.addView(m1532b("信息组件", m1545h), C0087T.m1408a());
        }
        ScrollView scrollView = new ScrollView(this);
        scrollView.setClipToPadding(false);
        scrollView.setVerticalScrollBarEnabled(false);
        scrollView.addView(m1411a);
        this.f1505a.f1395b.addView(scrollView, new FrameLayout.LayoutParams(-1, -1));
        this.f1505a.m1434a(3, new IntConsumer() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda14
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                WidgetCenterActivity.this.m1533b(i);
            }
        });
        setContentView(this.f1505a.f1394a);
        this.f1505a.m1433a();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f1507c = false;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f1507c = true;
        m1541d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m1533b(int i) {
        startActivity(new Intent(this, (Class<?>) MainActivity.class).putExtra("tab", i).addFlags(603979776));
        finish();
    }

    /* renamed from: c */
    private boolean m1540c() {
        Rect bounds = getWindowManager().getCurrentWindowMetrics().getBounds();
        return Math.min(bounds.width(), bounds.height()) < 1400;
    }

    /* renamed from: a */
    private int m1509a(float f) {
        return C0087T.m1399a(this, f);
    }

    /* renamed from: a */
    static View m1511a(final Activity activity, C0087T.d dVar, String str, String str2) {
        LinearLayout m1430c = C0087T.m1430c(activity);
        int m1399a = C0087T.m1399a((Context) activity, 4.0f);
        m1430c.setPadding(m1399a, 0, dVar.m1437c() + m1399a, 0);
        FrameLayout frameLayout = new FrameLayout(activity);
        frameLayout.setBackground(C0087T.m1404a(C0087T.f1353f, C0087T.m1399a((Context) activity, 20.0f)));
        int m1399a2 = C0087T.m1399a((Context) activity, 18.0f);
        frameLayout.addView(C0087T.m1407a(activity, C0087T.m1403a(activity, 3, C0087T.f1345b, 2.4f, false, 18.0f)), new FrameLayout.LayoutParams(m1399a2, m1399a2, 17));
        frameLayout.setContentDescription("返回");
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                activity.finish();
            }
        });
        m1430c.addView(frameLayout, C0087T.m1409a(activity, 40.0f, 40.0f));
        LinearLayout m1411a = C0087T.m1411a((Context) activity);
        m1411a.setPadding(C0087T.m1399a((Context) activity, 12.0f), 0, 0, 0);
        TextView m1413a = C0087T.m1413a(activity, 22.0f, C0087T.f1345b, 800);
        m1413a.setText(str);
        m1413a.setLetterSpacing(-0.01f);
        m1411a.addView(m1413a);
        TextView m1413a2 = C0087T.m1413a(activity, 12.0f, C0087T.f1349d, C0054J.f930m);
        m1413a2.setText(str2);
        m1413a2.setPadding(0, C0087T.m1399a((Context) activity, 3.0f), 0, 0);
        m1411a.addView(m1413a2);
        m1430c.addView(m1411a, C0087T.m1428b());
        return m1430c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m1539c(final String str) {
        runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                WidgetCenterActivity.this.m1536b(str);
            }
        });
    }

    /* renamed from: b */
    private View m1532b(String str, View view) {
        LinearLayout m1411a = C0087T.m1411a((Context) this);
        m1411a.addView(C0087T.m1414a((Context) this, str), C0087T.m1408a());
        m1411a.addView(view, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        return m1411a;
    }

    /* renamed from: b */
    private boolean m1537b(C0100b.a aVar, long j) {
        Integer num;
        if (!aVar.f1539a.isEmpty() || j < 0 || (num = aVar.f1540b.get(Long.valueOf(j))) == null || num.intValue() == 0) {
            return false;
        }
        Log.i("MiDuoAlbum", "widget page blocked: fixed page " + j + " has items");
        m1539c("第 1 页已有内容，请先移除后再添加相册");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m1536b(String str) {
        Toast.makeText(this, str, 1).show();
    }

    /* renamed from: b */
    private void m1535b(C0098c c0098c, Bitmap[] bitmapArr) {
        this.f1506b.removeAllViews();
        if (c0098c.f1512a.length == 0) {
            this.f1506b.addView(m1510a(0, (Bitmap) null, 0, false), C0087T.m1408a());
        }
        int i = 0;
        while (true) {
            int[] iArr = c0098c.f1512a;
            if (i >= iArr.length) {
                return;
            }
            boolean z = c0098c.f1514c >= 0 && c0098c.f1513b.get(Integer.valueOf(iArr[i])).longValue() == c0098c.f1514c;
            LinearLayout linearLayout = this.f1506b;
            int[] iArr2 = c0098c.f1512a;
            linearLayout.addView(m1510a(iArr2[i], bitmapArr[i], iArr2.length, z), C0087T.m1410a(C0087T.m1408a(), this, i == 0 ? 0.0f : 14.0f));
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m1534b(final int i, View view) {
        MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                WidgetCenterActivity.this.m1514a(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m1523a(C0100b.c cVar, Exception exc) {
        Log.w("MiDuoAlbum", "widget page not set\n" + cVar.m1575a(), exc);
        final String m1575a = cVar.m1575a();
        runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                WidgetCenterActivity.this.m1524a(m1575a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1524a(final String str) {
        if (isDestroyed()) {
            return;
        }
        new AlertDialog.Builder(this).setTitle("没能设为桌面第 1 页").setMessage(str).setPositiveButton("复制", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                WidgetCenterActivity.this.m1525a(str, dialogInterface, i);
            }
        }).setNegativeButton("关闭", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1525a(String str, DialogInterface dialogInterface, int i) {
        ((ClipboardManager) getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("MiDuo 小组件页诊断", str));
        Toast.makeText(this, "已复制", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1528a(boolean z, boolean z2) {
        String str;
        m1527a(z);
        if (z) {
            if (z2) {
                str = "点系统弹窗里的“添加”，相册会自动设为桌面第 1 页，桌面会重开一次，不用再回来";
            } else {
                str = "放好相册即可";
            }
            Toast.makeText(this, str, 1).show();
        }
    }

    /* renamed from: a */
    private static boolean m1530a(C0100b.a aVar, long j) {
        if (j < 0 || !aVar.f1541c.contains(Long.valueOf(j))) {
            return false;
        }
        Integer num = aVar.f1540b.get(Long.valueOf(j));
        return num == null || num.intValue() == 0;
    }

    /* renamed from: a */
    static boolean m1529a() {
        String str = "--user " + (Process.myUid() / 100000) + " dev.duo.hookprobe 10017";
        try {
            C0057M.m977a("cmd appops get " + str + " | grep -q ': allow' || cmd appops set " + str + " allow");
            return true;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            return false;
        } catch (Exception e2) {
            Log.w("MiDuoAlbum", "allow 10017 failed", e2);
            return false;
        }
    }

    /* renamed from: a */
    private ImageView m1513a(Bitmap bitmap) {
        ImageView imageView = new ImageView(this);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        if (bitmap != null) {
            imageView.setImageBitmap(bitmap);
        } else {
            imageView.setImageResource(R.drawable.album_widget_preview);
        }
        imageView.setOutlineProvider(new C0097b((m1509a(132.0f) * 56.0f) / 854.0f));
        imageView.setClipToOutline(true);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1517a(Context context) {
        try {
            final C0098c m1543f = m1543f();
            final Bitmap[] bitmapArr = new Bitmap[m1543f.f1512a.length];
            int i = 0;
            while (true) {
                int[] iArr = m1543f.f1512a;
                if (i >= iArr.length) {
                    runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda13
                        @Override // java.lang.Runnable
                        public final void run() {
                            WidgetCenterActivity.this.m1520a(m1543f, bitmapArr);
                        }
                    });
                    m1519a(m1543f);
                    return;
                } else {
                    bitmapArr[i] = C0101c.m1587e(context, iArr[i]);
                    i++;
                }
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        } catch (Exception e2) {
            Log.w("MiDuoAlbum", "desktop albums not read", e2);
            m1539c("读取桌面相册失败：" + e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1520a(C0098c c0098c, Bitmap[] bitmapArr) {
        if (isDestroyed()) {
            return;
        }
        m1535b(c0098c, bitmapArr);
    }

    /* renamed from: a */
    private void m1519a(C0098c c0098c) {
        if (C0100b.m1571b(this) && c0098c.f1512a.length != 0 && C0100b.m1568a(this) && c0098c.f1513b.get(Integer.valueOf(c0098c.f1512a[0])).longValue() != c0098c.f1514c) {
            m1539c("相册已放好，正在设为桌面第 1 页，桌面会重开一次");
            m1514a(c0098c.f1512a[0]);
        }
    }

    /* renamed from: a */
    private View m1510a(final int i, Bitmap bitmap, int i2, boolean z) {
        String str;
        boolean z2 = i != 0;
        int m1509a = (m1509a(132.0f) * 1328) / 854;
        LinearLayout m1430c = C0087T.m1430c(this);
        m1430c.setGravity(48);
        m1430c.addView(m1513a(bitmap), new LinearLayout.LayoutParams(m1509a(132.0f), m1509a));
        LinearLayout m1411a = C0087T.m1411a((Context) this);
        m1411a.setPadding(m1509a(14.0f), m1509a(4.0f), 0, 0);
        TextView m1413a = C0087T.m1413a(this, 17.0f, C0087T.f1345b, 700);
        m1413a.setText("相册");
        m1411a.addView(m1413a);
        TextView m1413a2 = C0087T.m1413a(this, 12.0f, C0087T.f1349d, C0054J.f930m);
        if (z2) {
            str = "4×6 · 桌面上有 " + i2 + " 个" + (z ? " · 在第 1 页" : "");
        } else {
            str = "4×6 · 还没放到桌面";
        }
        m1413a2.setText(str);
        m1413a2.setPadding(0, m1509a(4.0f), 0, 0);
        m1411a.addView(m1413a2);
        TextView m1413a3 = C0087T.m1413a(this, 12.0f, C0087T.f1347c, C0054J.f930m);
        m1413a3.setText("用小米相册选图，在 MiDuo 里裁切，内外屏都铺满一页");
        m1413a3.setLineSpacing(0.0f, 1.25f);
        m1413a3.setPadding(0, m1509a(10.0f), 0, 0);
        m1411a.addView(m1413a3);
        m1411a.addView(new View(this), new LinearLayout.LayoutParams(-1, 0, 1.0f));
        if (z2) {
            TextView m1415a = C0087T.m1415a((Context) this, bitmap == null ? "选择照片" : "换照片", true, 40.0f);
            m1415a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WidgetCenterActivity.this.m1515a(i, view);
                }
            });
            m1411a.addView(m1415a, C0087T.m1410a(C0087T.m1408a(), this, 12.0f));
            if (!z) {
                TextView m1415a2 = C0087T.m1415a((Context) this, "设为第 1 页", false, 40.0f);
                m1415a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        WidgetCenterActivity.this.m1534b(i, view);
                    }
                });
                m1411a.addView(m1415a2, C0087T.m1410a(C0087T.m1408a(), this, 12.0f));
            }
        } else {
            TextView m1415a3 = C0087T.m1415a((Context) this, "添加相册", true, 40.0f);
            m1415a3.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WidgetCenterActivity.this.m1518a(view);
                }
            });
            m1411a.addView(m1415a3, C0087T.m1410a(C0087T.m1408a(), this, 12.0f));
        }
        m1430c.addView(m1411a, new LinearLayout.LayoutParams(0, m1509a, 1.0f));
        return m1430c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1515a(int i, View view) {
        startActivity(new Intent(this, (Class<?>) AlbumWidgetConfigureActivity.class).setData(Uri.parse(C0102d.m1590a(i))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1518a(View view) {
        MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                WidgetCenterActivity.this.m1544g();
            }
        });
    }

    /* renamed from: a */
    private void m1527a(boolean z) {
        if (this.f1507c) {
            if (!z) {
                Toast.makeText(this, "没有 Root，打不开桌面快捷方式权限", 0).show();
                return;
            }
            try {
                if (AppWidgetManager.getInstance(this).requestPinAppWidget(new ComponentName(this, (Class<?>) AlbumWidgetProvider.class), null, null)) {
                    return;
                }
                Toast.makeText(this, "当前桌面不支持直接添加", 0).show();
            } catch (IllegalStateException e) {
                Log.w("MiDuoAlbum", "pin request while leaving the foreground", e);
            }
        }
    }

    /* renamed from: a */
    private View m1512a(final String str, String str2) {
        LinearLayout m1430c = C0087T.m1430c(this);
        m1430c.setMinimumHeight(m1509a(68.0f));
        TextView m1413a = C0087T.m1413a(this, 15.0f, C0087T.f1378v, 700);
        m1413a.setText(str.substring(0, 1));
        m1413a.setGravity(17);
        m1413a.setBackground(C0087T.m1406a(C0087T.f1376t, C0087T.f1377u));
        m1430c.addView(m1413a, C0087T.m1409a(this, 38.0f, 38.0f));
        LinearLayout m1411a = C0087T.m1411a((Context) this);
        m1411a.setPadding(m1509a(12.0f), 0, m1509a(8.0f), 0);
        TextView m1413a2 = C0087T.m1413a(this, 15.0f, C0087T.f1345b, 600);
        m1413a2.setText(str);
        m1411a.addView(m1413a2);
        TextView m1413a3 = C0087T.m1413a(this, 12.0f, C0087T.f1349d, C0054J.f930m);
        m1413a3.setText(str2);
        m1413a3.setPadding(0, m1509a(3.0f), 0, 0);
        m1411a.addView(m1413a3);
        m1430c.addView(m1411a, C0087T.m1428b());
        TextView m1413a4 = C0087T.m1413a(this, 12.0f, C0087T.f1349d, 500);
        m1413a4.setText("预览与添加");
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.WidgetCenterActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WidgetCenterActivity.this.m1526a(str, view);
            }
        });
        m1430c.addView(m1413a4);
        return m1430c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1526a(String str, View view) {
        startActivity(new Intent(this, (Class<?>) InfoWidgetActivity.class).putExtra("type", "电池".equals(str) ? 0 : "日历".equals(str) ? 2 : 4));
    }
}
