package dev.duo.hookprobe;

import android.R;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import dev.duo.hookprobe.C;
import dev.duo.hookprobe.MainActivity;
import dev.duo.hookprobe.T;
import dev.duo.hookprobe.r;
import io.github.libxposed.service.XposedService;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.IntConsumer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class MainActivity extends Activity {
    static final ExecutorService a = Executors.newSingleThreadExecutor();
    static final ExecutorService b = Executors.newSingleThreadExecutor();
    static final ExecutorService c = Executors.newSingleThreadExecutor();
    static final Set<String> d;
    private static final String[] e;
    private static volatile boolean f = false;
    private static volatile String g = null;
    private static final String h = "8.01.02.6325";
    private static final int i = 316;
    private static final String j = "全屏 App 轻折放平进入双分屏，双分屏再轻折放平，原有分屏收到左边、桌面选第三个 App 进入三分屏；关闭后全部恢复小米原生";
    private static final int k = 10;
    private TextView A;
    private TextView A0;
    private TextView B;
    private TextView B0;
    private Switch C;
    private TextView C0;
    private TextView D;
    private TextView D0;
    private TextView E;
    private TextView E0;
    private TextView F;
    private TextView F0;
    private TextView G;
    private TextView G0;
    private SeekBar H;
    private TextView H0;
    private TextView I;
    private EditText I0;
    private SeekBar J;
    private Switch J0;
    private Switch K0;
    private T.e L;
    private TextView L0;
    private TextView M;
    private T.e M0;
    private Switch N;
    private int N0;
    private TextView O;
    private f O0;
    private boolean P;
    private ListView P0;
    private Switch Q;
    private LinearLayout Q0;
    private Switch R;
    private View R0;
    private LinearLayout S;
    private h S0;
    private TextView T;
    private boolean T0;
    private SeekBar U;
    private boolean U0;
    private Switch V;
    private boolean V0;
    private Switch W;
    private String W0;
    private Switch X;
    private String[] X0;
    private Switch Y;
    private Set<String> Y0;
    private Switch Z;
    private String Z0;
    private Switch a0;
    private int a1;
    private Switch b0;
    private boolean b1;
    private Switch c0;
    private boolean c1;
    private T.e d0;
    private final Runnable d1;
    private T.e e0;
    private i e1;
    private T.e f0;
    private boolean f1;
    private final SeekBar[] g0;
    private TextView g1;
    private final TextView[] h0;
    private String h1;
    private final Runnable[] i0;
    private float i1;
    private TextView j0;
    private boolean j1;
    private FrameLayout k0;
    private View l0;
    private View m0;
    private T.e n0;
    private T.e o0;
    private o p;
    private float p0;
    private T.d q;
    private ValueAnimator q0;
    private View r0;
    private TextView s0;
    private boolean t;
    private TextView t0;
    private FrameLayout u;
    private TextView u0;
    private String v;
    private TextView v0;
    private String w;
    private TextView w0;
    private int x;
    private ImageView x0;
    private LinearLayout y;
    private LinearLayout y0;
    private FrameLayout z;
    private TextView z0;
    private final AtomicBoolean l = new AtomicBoolean();
    private final Handler m = new Handler(Looper.getMainLooper());
    private final List<g> n = new ArrayList();
    private final List<g> o = new ArrayList();
    private final View[] r = new View[5];
    private int s = 0;
    private final List<TextView> K = new ArrayList();

    class a implements SeekBar.OnSeekBarChangeListener {
        final /* synthetic */ TextView a;
        final /* synthetic */ int b;
        final /* synthetic */ IntConsumer c;

        a(TextView textView, int i, IntConsumer intConsumer) {
            this.a = textView;
            this.b = i;
            this.c = intConsumer;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            this.a.setText(String.valueOf(i + this.b));
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            this.c.accept(seekBar.getProgress() + this.b);
        }
    }

    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            dev.duo.hookprobe.MainActivity.this.o();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    class c extends ListView {
        c(Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i, int i2) {
            setSelectionFromTop(i, i2);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            final int firstVisiblePosition = getFirstVisiblePosition();
            View childAt = getChildAt(0);
            final int top = childAt != null ? childAt.getTop() : 0;
            super.onSizeChanged(i, i2, i3, i4);
            if (dev.duo.hookprobe.MainActivity.this.I0 == null || !dev.duo.hookprobe.MainActivity.this.I0.hasFocus()) {
                return;
            }
            if (firstVisiblePosition == 0) {
                View view = (View) dev.duo.hookprobe.MainActivity.this.I0.getParent();
                top = Math.max(Math.min(top, (i2 - getPaddingBottom()) - view.getBottom()), getPaddingTop() - view.getTop());
            }
            post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$c$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.c.this.a(firstVisiblePosition, top);
                }
            });
        }

        @Override // android.widget.ListView, android.view.ViewGroup, android.view.ViewParent
        public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
            if (dev.duo.hookprobe.MainActivity.this.I0 == null || !dev.duo.hookprobe.MainActivity.this.I0.hasFocus()) {
                return super.requestChildRectangleOnScreen(view, rect, z);
            }
            return false;
        }
    }

    class d implements SeekBar.OnSeekBarChangeListener {
        final /* synthetic */ TextView a;
        final /* synthetic */ int b;

        d(TextView textView, int i) {
            this.a = textView;
            this.b = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i, int i2) {
            dev.duo.hookprobe.MainActivity.this.i0[i] = null;
            if (dev.duo.hookprobe.MainActivity.this.p.a(i, i2)) {
                return;
            }
            Toast.makeText(dev.duo.hookprobe.MainActivity.this, "时钟模块位置保存失败", 0).show();
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            final int i2 = i - 60;
            this.a.setText(MainActivity.c(i2));
            dev.duo.hookprobe.MainActivity.this.Z();
            if (!z || dev.duo.hookprobe.MainActivity.this.p == null || MainActivity.f) {
                return;
            }
            if (dev.duo.hookprobe.MainActivity.this.i0[this.b] != null) {
                dev.duo.hookprobe.MainActivity.this.m.removeCallbacks(dev.duo.hookprobe.MainActivity.this.i0[this.b]);
            }
            Runnable[] runnableArr = dev.duo.hookprobe.MainActivity.this.i0;
            final int i3 = this.b;
            runnableArr[i3] = new Runnable() { // from class: dev.duo.hookprobe.MainActivity$d$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.d.this.a(i3, i2);
                }
            };
            dev.duo.hookprobe.MainActivity.this.m.postDelayed(dev.duo.hookprobe.MainActivity.this.i0[this.b], 80L);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    private final class f extends BaseAdapter {
        private f() {
        }

        private String a(String str, boolean z) {
            if (!z) {
                return "未开启 Duo";
            }
            String str2 = (dev.duo.hookprobe.MainActivity.this.p.b(str, "inner") || dev.duo.hookprobe.MainActivity.this.p.b(str, "outer")) ? dev.duo.hookprobe.MainActivity.this.p.e(str, "inner") == dev.duo.hookprobe.MainActivity.this.p.e(str, "outer") ? "高度 " + dev.duo.hookprobe.MainActivity.this.p.e(str, "inner") + "px" : "内屏 " + dev.duo.hookprobe.MainActivity.this.p.e(str, "inner") + " / 外屏 " + dev.duo.hookprobe.MainActivity.this.p.e(str, "outer") : "高度跟随全局";
            String p = dev.duo.hookprobe.MainActivity.this.p.p(str);
            return str2 + " · " + (p == null ? "侧栏跟随全局" : "black".equals(p) ? "侧栏黑色" : "侧栏白色") + (((P.o.contains(str) || dev.duo.hookprobe.P.p.contains(str)) && dev.duo.hookprobe.MainActivity.this.Z0 == null && !dev.duo.hookprobe.MainActivity.this.Y0.contains(str)) ? " · 等待授权" : "");
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return dev.duo.hookprobe.MainActivity.this.o.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return dev.duo.hookprobe.MainActivity.this.o.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            j jVar = view == null ? dev.duo.hookprobe.MainActivity.this.new j() : (j) view.getTag();
            g gVar = (g) dev.duo.hookprobe.MainActivity.this.o.get(i);
            boolean z = i == 0;
            boolean z2 = i == dev.duo.hookprobe.MainActivity.this.o.size() - 1;
            float a = dev.duo.hookprobe.MainActivity.this.a(24.0f);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor((dev.duo.hookprobe.MainActivity.this.t && gVar.a.equals(dev.duo.hookprobe.MainActivity.this.v)) ? T.w : dev.duo.hookprobe.T.i);
            float f = z ? a : 0.0f;
            float f2 = z ? a : 0.0f;
            float f3 = z ? a : 0.0f;
            float f4 = z ? a : 0.0f;
            float f5 = z2 ? a : 0.0f;
            float f6 = z2 ? a : 0.0f;
            float f7 = z2 ? a : 0.0f;
            if (!z2) {
                a = 0.0f;
            }
            gradientDrawable.setCornerRadii(new float[]{f, f2, f3, f4, f5, f6, f7, a});
            jVar.b.setBackground(gradientDrawable);
            jVar.b.setPadding(dev.duo.hookprobe.MainActivity.this.a(16.0f), z ? dev.duo.hookprobe.MainActivity.this.a(4.0f) : 0, 0, z2 ? dev.duo.hookprobe.MainActivity.this.a(4.0f) : 0);
            jVar.g.setVisibility(z2 ? 4 : 0);
            jVar.c.setImageDrawable(gVar.c);
            jVar.d.setText(gVar.b);
            jVar.b.setAlpha(gVar.d ? 0.45f : 1.0f);
            if (gVar.d) {
                jVar.e.setText(gVar.e);
                jVar.f.setText("不可用");
                GradientDrawable a2 = T.a(0, dev.duo.hookprobe.MainActivity.this.a(11.0f));
                a2.setStroke(Math.max(1, dev.duo.hookprobe.MainActivity.this.a(1.0f)), 1198945920);
                jVar.f.setBackground(a2);
                jVar.f.setTextColor(T.e);
                jVar.f.setVisibility(0);
                return jVar.a;
            }
            boolean z3 = dev.duo.hookprobe.MainActivity.this.p != null && dev.duo.hookprobe.MainActivity.this.p.i(gVar.a);
            jVar.e.setText(dev.duo.hookprobe.MainActivity.this.p == null ? gVar.a : a(gVar.a, z3));
            boolean z4 = dev.duo.hookprobe.MainActivity.this.p != null && dev.duo.hookprobe.MainActivity.this.b(gVar.a);
            jVar.f.setText(!z3 ? "关" : z4 ? "单独" : "开");
            GradientDrawable a3 = T.a((!z3 || z4) ? 0 : T.f, dev.duo.hookprobe.MainActivity.this.a(11.0f));
            if (!z3 || z4) {
                a3.setStroke(Math.max(1, dev.duo.hookprobe.MainActivity.this.a(1.0f)), z3 ? (T.b & 16777215) | (-1946157056) : 1198945920);
            }
            jVar.f.setBackground(a3);
            jVar.f.setTextColor(z3 ? T.b : T.e);
            jVar.f.setVisibility(dev.duo.hookprobe.MainActivity.this.p == null ? 8 : 0);
            return jVar.a;
        }

        /* synthetic */ f(MainActivity mainActivity, a aVar) {
            this();
        }
    }

    static final class g {
        String a;
        String b;
        Drawable c;
        boolean d;
        String e;

        g() {
        }
    }

    static final class h {
        boolean a;
        boolean b;
        boolean c = true;
        String d;
        int e;
        float f;
        String g;

        h() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class i {
        List<g> a;
        o b;
        h c;
        Set<String> d;
        String e;
        boolean f;
        String g;
        int h;
        String[] i;
        r.a j;

        private i() {
        }

        /* synthetic */ i(a aVar) {
            this();
        }
    }

    private final class j {
        final LinearLayout a;
        final LinearLayout b;
        final ImageView c;
        final TextView d;
        final TextView e;
        final TextView f;
        final View g;

        j() {
            LinearLayout c = T.c(dev.duo.hookprobe.MainActivity.this);
            this.a = c;
            LinearLayout c2 = T.c(dev.duo.hookprobe.MainActivity.this);
            this.b = c2;
            ImageView imageView = new ImageView(dev.duo.hookprobe.MainActivity.this);
            this.c = imageView;
            TextView a = T.a(dev.duo.hookprobe.MainActivity.this, 16.0f, T.b, 600);
            this.d = a;
            TextView a2 = T.a(dev.duo.hookprobe.MainActivity.this, 12.0f, T.d, J.m);
            this.e = a2;
            TextView a3 = T.a(dev.duo.hookprobe.MainActivity.this, 11.0f, T.b, 600);
            this.f = a3;
            View view = new View(dev.duo.hookprobe.MainActivity.this);
            this.g = view;
            dev.duo.hookprobe.c.setPadding(dev.duo.hookprobe.MainActivity.this.x, 0, dev.duo.hookprobe.MainActivity.this.x, 0);
            dev.duo.hookprobe.c.setTag(this);
            dev.duo.hookprobe.c.addView(c2, T.a());
            c2.addView(imageView, T.a(dev.duo.hookprobe.MainActivity.this, 42.0f, 42.0f));
            LinearLayout a4 = T.a((Context) dev.duo.hookprobe.MainActivity.this);
            LinearLayout c3 = T.c(dev.duo.hookprobe.MainActivity.this);
            c3.setPadding(0, dev.duo.hookprobe.MainActivity.this.a(12.0f), dev.duo.hookprobe.MainActivity.this.a(14.0f), dev.duo.hookprobe.MainActivity.this.a(12.0f));
            LinearLayout a5 = T.a((Context) dev.duo.hookprobe.MainActivity.this);
            dev.duo.hookprobe.a.setSingleLine(true);
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            dev.duo.hookprobe.a.setEllipsize(truncateAt);
            a5.addView(a);
            a2.setSingleLine(true);
            a2.setEllipsize(truncateAt);
            a2.setPadding(0, dev.duo.hookprobe.MainActivity.this.a(4.0f), 0, 0);
            a5.addView(a2);
            c3.addView(a5, T.b());
            a3.setGravity(17);
            a3.setPadding(dev.duo.hookprobe.MainActivity.this.a(9.0f), 0, dev.duo.hookprobe.MainActivity.this.a(9.0f), 0);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, dev.duo.hookprobe.MainActivity.this.a(22.0f));
            layoutParams.leftMargin = dev.duo.hookprobe.MainActivity.this.a(8.0f);
            c3.addView(a3, layoutParams);
            LinearLayout.LayoutParams a6 = T.a(dev.duo.hookprobe.MainActivity.this, 13.0f, 13.0f);
            a6.leftMargin = dev.duo.hookprobe.MainActivity.this.a(8.0f);
            c3.addView(T.a(dev.duo.hookprobe.MainActivity.this, T.a(dev.duo.hookprobe.MainActivity.this, 4, T.x, 3.0f, false, 13.0f)), a6);
            a4.addView(c3, T.a());
            view.setBackgroundColor(T.h);
            a4.addView(view, new LinearLayout.LayoutParams(-1, Math.max(1, dev.duo.hookprobe.MainActivity.this.a(0.5f))));
            LinearLayout.LayoutParams b = T.b();
            dev.duo.hookprobe.b.leftMargin = dev.duo.hookprobe.MainActivity.this.a(12.0f);
            c2.addView(a4, b);
        }
    }

    private static final class k extends View {
        private final Paint a;
        private final float b;
        private final int c;

        k(Context context, float f, int i) {
            super(context);
            this.a = new Paint(1);
            this.b = f;
            this.c = i;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            Canvas canvas2;
            float a = T.a(getContext(), 8.0f);
            float f = a / 2.0f;
            RectF rectF = new RectF(f, f, getWidth() - f, getHeight() - f);
            this.a.setStyle(Paint.Style.STROKE);
            this.a.setStrokeWidth(a);
            this.a.setStrokeCap(Paint.Cap.ROUND);
            this.a.setColor(695629440);
            canvas.drawOval(rectF, this.a);
            this.a.setColor(T.b);
            float f2 = this.b;
            if (f2 > 0.0f) {
                canvas2 = canvas;
                canvas2.drawArc(rectF, -90.0f, f2 * 360.0f, false, this.a);
            } else {
                canvas2 = canvas;
            }
            this.a.setStyle(Paint.Style.FILL);
            this.a.setTextAlign(Paint.Align.CENTER);
            Paint paint = this.a;
            Typeface typeface = Typeface.DEFAULT;
            paint.setTypeface(Typeface.create(typeface, 800, false));
            this.a.setTextSize(T.a(getContext(), 42.0f));
            canvas2.drawText(String.valueOf(this.c), getWidth() / 2.0f, (getHeight() / 2.0f) + T.a(getContext(), 6.0f), this.a);
            this.a.setColor(T.d);
            this.a.setTypeface(Typeface.create(typeface, 600, false));
            this.a.setTextSize(T.a(getContext(), 12.0f));
            canvas2.drawText("分钟剩余", getWidth() / 2.0f, (getHeight() / 2.0f) + T.a(getContext(), 26.0f), this.a);
        }
    }

    static {
        HashSet hashSet = new HashSet(Arrays.asList("android", "com.miui.home", "com.miui.personalassistant", "com.android.systemui", dev.duo.icons.g.a, "dev.duo.workspaceprobe"));
        d = hashSet;
        hashSet.addAll(dev.duo.hookprobe.P.i);
        e = new String[]{"全部", "已开", "单独设置", "未开"};
        g = "";
    }

    public MainActivity() {
        String[] strArr = dev.duo.hookprobe.P.e0;
        this.g0 = new SeekBar[strArr.length];
        this.h0 = new TextView[strArr.length];
        this.i0 = new Runnable[strArr.length];
        this.U0 = true;
        this.W0 = "正在连接…";
        this.X0 = new String[]{"", "", "", ""};
        this.Y0 = Collections.EMPTY_SET;
        this.d1 = new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda83
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.a0();
            }
        };
    }

    private int A() {
        int i2 = 0;
        if (this.p != null && this.Z0 == null) {
            Iterator<String> it = P.o.iterator();
            while (it.hasNext()) {
                if (!this.Y0.contains(it.next())) {
                    i2++;
                }
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<String> B() {
        ArrayList arrayList = new ArrayList();
        if (this.p != null && this.Z0 == null) {
            for (String str : P.o) {
                if (!this.Y0.contains(str)) {
                    arrayList.add(str);
                }
            }
            for (String str2 : dev.duo.hookprobe.P.p) {
                if (!this.Y0.contains(str2)) {
                    arrayList.add(str2);
                }
            }
        }
        return arrayList;
    }

    private View C() {
        LinearLayout c2 = T.c(this);
        T.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        LinearLayout a2 = T.a((Context) this);
        TextView a3 = T.a(this, 15.0f, T.b, 600);
        a3.setText("通知图标");
        a2.addView(a3);
        TextView a4 = T.a(this, 12.0f, T.d, J.m);
        a4.setText("在时间模块下方显示通知 App 图标，点那一块打开通知中心；关掉后两样都没有");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, T.b());
        Switch r1 = new Switch(this);
        this.W = r1;
        T.a(r1);
        this.W.setContentDescription("通知图标");
        this.W.setEnabled(false);
        this.W.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda27
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.g(compoundButton, z);
            }
        });
        c2.addView(this.W);
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda28
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.n(view);
            }
        });
        return c2;
    }

    private View E() {
        LinearLayout a2 = T.a((Context) this);
        T.a(a2, this.q.e ? 26.0f : 28.0f);
        a2.setPadding(a(18.0f), a(12.0f), a(16.0f), a(12.0f));
        LinearLayout c2 = T.c(this);
        LinearLayout a3 = T.a((Context) this);
        TextView a4 = T.a(this, 15.0f, T.b, 600);
        a4.setText("外屏非 Duo 顶栏");
        a3.addView(a4);
        TextView a5 = T.a(this, 12.0f, T.d, J.m);
        a5.setText("开启后隐藏未开启 Duo 的 App 原生状态栏；单独设置过的 App 优先");
        a5.setPadding(0, a(3.0f), a(8.0f), 0);
        a3.addView(a5);
        c2.addView(a3, T.b());
        Switch r2 = new Switch(this);
        this.R = r2;
        T.a(r2);
        this.R.setContentDescription("隐藏外屏非 Duo 原生状态栏");
        this.R.setEnabled(false);
        this.R.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda91
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.h(compoundButton, z);
            }
        });
        c2.addView(this.R);
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda92
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.o(view);
            }
        });
        a2.addView(c2);
        TextView[] textViewArr = new TextView[1];
        SeekBar[] seekBarArr = new SeekBar[1];
        LinearLayout a6 = a("顶部留白高度", "px", 1, 126, textViewArr, seekBarArr, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda93
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                dev.duo.hookprobe.MainActivity.this.g(i2);
            }
        });
        this.S = a6;
        a6.setBackground(null);
        this.S.setPadding(0, a(12.0f), 0, 0);
        this.T = textViewArr[0];
        this.U = seekBarArr[0];
        TextView a7 = T.a(this, 12.0f, T.d, J.m);
        a7.setText("外屏竖屏生效；高度是隐藏状态栏后的顶部留白，单个 App 可单独调整");
        this.S.addView(a7);
        this.S.setVisibility(8);
        a2.addView(this.S);
        return a2;
    }

    private View F() {
        LinearLayout c2 = T.c(this);
        T.a(c2, 26.0f);
        c2.setPadding(a(20.0f), 0, a(12.0f), 0);
        LinearLayout a2 = T.a((Context) this);
        TextView a3 = T.a(this, 15.0f, T.b, 600);
        a3.setText("App 概览");
        a2.addView(a3);
        TextView a4 = T.a(this, 12.0f, T.d, J.m);
        this.t0 = a4;
        a4.setPadding(0, a(4.0f), 0, 0);
        a2.addView(this.t0);
        c2.addView(a2, new LinearLayout.LayoutParams(a(112.0f), -2));
        LinearLayout c3 = T.c(this);
        this.u0 = a(c3, "已开 Duo", 0.0f);
        this.v0 = a(c3, "单独设置", 8.0f);
        TextView a5 = a(c3, "未开", 8.0f);
        this.w0 = a5;
        TextView[] textViewArr = {this.u0, this.v0, a5};
        for (int i2 = 0; i2 < 3; i2++) {
            TextView textView = textViewArr[i2];
            textView.setTextSize(18.0f);
            textView.setFontFeatureSettings("tnum");
        }
        c2.addView(c3, T.b());
        TextView a6 = T.a((Context) this, "管理 App", true, 40.0f);
        a6.setTextSize(13.0f);
        a6.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, T.a(this, 4, T.o, 3.0f, false, 12.0f), (Drawable) null);
        a6.setCompoundDrawablePadding(a(4.0f));
        a6.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda33
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.p(view);
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, a(40.0f));
        layoutParams.leftMargin = a(14.0f);
        c2.addView(a6, layoutParams);
        return c2;
    }

    private View G() {
        LinearLayout c2 = T.c(this);
        T.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        c2.setMinimumHeight(a(76.0f));
        LinearLayout a2 = T.a((Context) this);
        TextView a3 = T.a(this, 15.0f, T.b, 600);
        a3.setText("取色按钮");
        a2.addView(a3);
        TextView a4 = T.a(this, 12.0f, T.d, J.m);
        a4.setText("取色按钮贴在 App 侧栏搜索键的头顶，在哪个 App 点它就给哪个 App 取色");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, T.b());
        Switch r1 = new Switch(this);
        this.Y = r1;
        T.a(r1);
        this.Y.setContentDescription("取色按钮");
        this.Y.setEnabled(false);
        this.Y.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda49
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.i(compoundButton, z);
            }
        });
        c2.addView(this.Y);
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda50
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.q(view);
            }
        });
        return c2;
    }

    private LinearLayout H() {
        LinearLayout u = u();
        LinearLayout i2 = i();
        TextView a2 = T.a(this, 16.0f, T.b, 600);
        a2.setText("外屏侧栏颜色");
        i2.addView(a2);
        dev.duo.hookprobe.u.addView(i2);
        T.e eVar = new T.e(this, new String[]{"白色", "黑色", "跟随系统"}, new int[]{-1, -14869217, 0}, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda84
            @Override // java.util.function.IntConsumer
            public final void accept(int i3) {
                dev.duo.hookprobe.MainActivity.this.j(i3);
            }
        });
        this.L = eVar;
        eVar.a(false);
        dev.duo.hookprobe.u.addView(this.L.a, T.a(T.a(), this, 8.0f));
        TextView a3 = T.a(this, 12.0f, T.d, J.m);
        this.M = a3;
        dev.duo.hookprobe.u.addView(a3, T.a(T.a(), this, 12.0f));
        return u;
    }

    private View I() {
        LinearLayout c2 = T.c(this);
        T.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        c2.setMinimumHeight(a(76.0f));
        LinearLayout a2 = T.a((Context) this);
        TextView a3 = T.a(this, 15.0f, T.b, 600);
        a3.setText("外屏 App 内侧栏自定义");
        a2.addView(a3);
        TextView a4 = T.a(this, 12.0f, T.d, J.m);
        a4.setText("外屏 App 模式右侧 6 格：拖入返回、主页等动作，自己的 App 或 dock");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, T.b());
        LinearLayout.LayoutParams a5 = T.a(this, 14.0f, 14.0f);
        a5.leftMargin = a(8.0f);
        c2.addView(T.a(this, T.a(this, 4, T.d, 3.0f, false, 14.0f)), a5);
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.r(view);
            }
        });
        return c2;
    }

    private void J() {
        final o c0021o = this.p;
        if (c0021o == null) {
            return;
        }
        if (this.l.compareAndSet(false, true)) {
            dev.duo.hookprobe.b.execute(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda85
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MainActivity.this.a(c0021o);
                }
            });
        } else {
            this.j1 = true;
        }
    }

    private void K() {
        float f2;
        int i2;
        float f3;
        this.Q0.removeAllViews();
        final h hVar = this.S0;
        LinearLayout a2 = T.a((Context) this);
        T.a(a2, 28.0f);
        a2.setGravity(1);
        a2.setPadding(a(20.0f), a(28.0f), a(20.0f), a(26.0f));
        this.Q0.addView(a2, T.a());
        float f4 = 12.0f;
        if (hVar == null) {
            f2 = 16.0f;
            i2 = 17;
            f3 = 10.0f;
        } else {
            if (!hVar.a) {
                if (hVar.b) {
                    FrameLayout frameLayout = new FrameLayout(this);
                    frameLayout.setBackground(T.a(T.r, T.s));
                    frameLayout.setElevation(a(6.0f));
                    i2 = 17;
                    frameLayout.addView(T.a(this, T.a(this, 6, T.v, 2.6f, false, 30.0f)), new FrameLayout.LayoutParams(a(30.0f), a(30.0f), 17));
                    a2.addView(frameLayout, T.a(this, 64.0f, 64.0f));
                    TextView a3 = T.a(this, 22.0f, T.b, 800);
                    a3.setText("已买断，永久使用");
                    a2.addView(a3, T.a(T.c(), this, 16.0f));
                    TextView a4 = T.a(this, 13.0f, T.d, J.m);
                    a4.setText("绑定在这台手机上");
                    a2.addView(a4, T.a(T.c(), this, 8.0f));
                    if (hVar.d != null) {
                        LinearLayout a5 = T.a((Context) this);
                        T.a(a5, 24.0f);
                        a5.setPadding(a(18.0f), a(16.0f), a(16.0f), a(16.0f));
                        TextView a6 = T.a(this, 13.0f, T.c, 600);
                        a6.setText("授权码 · 换手机时要用，请保存好");
                        a5.addView(a6);
                        LinearLayout c2 = T.c(this);
                        c2.setBackground(T.a(T.g, a(16.0f)));
                        c2.setPadding(a(14.0f), a(8.0f), a(6.0f), a(8.0f));
                        TextView a7 = T.a(this, 16.0f, T.b, 700);
                        a7.setText(hVar.d);
                        a7.setSingleLine(true);
                        a7.setEllipsize(TextUtils.TruncateAt.END);
                        a7.setLetterSpacing(0.04f);
                        a7.setTextIsSelectable(true);
                        c2.addView(a7, T.b());
                        TextView a8 = T.a((Context) this, this.T0 ? "已复制" : "复制", true, 34.0f);
                        a8.setTextSize(13.0f);
                        a8.setMinWidth(a(72.0f));
                        a8.setBackground(T.a(this.T0 ? -13326253 : T.n, a(17.0f)));
                        a8.setTextColor(this.T0 ? -1 : T.o);
                        boolean z = this.T0;
                        a8.setCompoundDrawablesRelativeWithIntrinsicBounds(T.a(this, z ? 6 : 9, z ? -1 : T.o, 2.4f, false, 13.0f), (Drawable) null, (Drawable) null, (Drawable) null);
                        a8.setCompoundDrawablePadding(a(5.0f));
                        a8.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda41
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                dev.duo.hookprobe.MainActivity.this.a(hVar, view);
                            }
                        });
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, a(34.0f));
                        f3 = 10.0f;
                        layoutParams.leftMargin = a(10.0f);
                        c2.addView(a8, layoutParams);
                        a5.addView(c2, T.a(T.a(), this, 10.0f));
                        f4 = 12.0f;
                        this.Q0.addView(a5, T.a(T.a(), this, 12.0f));
                    } else {
                        f4 = 12.0f;
                        f3 = 10.0f;
                    }
                } else {
                    i2 = 17;
                    f3 = 10.0f;
                    a2.addView(new k(this, hVar.f, hVar.e), T.a(this, 140.0f, 140.0f));
                    TextView a9 = T.a(this, 20.0f, T.b, 800);
                    a9.setText(hVar.c ? "" : "");
                    a2.addView(a9, T.a(T.c(), this, 14.0f));
                    TextView a10 = T.a(this, 12.0f, T.d, J.m);
                    a10.setGravity(17);
                    a10.setLineSpacing(0.0f, 1.3f);
                    a10.setText(hVar.c ? "" : "");
                    a2.addView(a10, T.a(T.a(), this, 10.0f));
                    LinearLayout a11 = T.a((Context) this);
                    T.a(a11, 24.0f);
                    a11.setPadding(a(18.0f), a(18.0f), a(18.0f), a(18.0f));
                    LinearLayout c3 = T.c(this);
                    c3.setGravity(80);
                    TextView a12 = T.a(this, 17.0f, T.b, 700);
                    a12.setText("");
                    c3.addView(a12, T.b());
                    TextView a13 = T.a(this, 24.0f, T.b, 800);
                    a13.setText("¥49.9");
                    c3.addView(a13);
                    a11.addView(c3);
                    TextView a14 = T.a(this, 13.0f, T.d, J.m);
                    a14.setText("");
                    a11.addView(a14, T.a(T.a(), this, 10.0f));
                    TextView a15 = T.a((Context) this, "", true, 50.0f);
                    a15.setTextSize(16.0f);
                    a15.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda42
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            dev.duo.hookprobe.MainActivity.this.s(view);
                        }
                    });
                    a11.addView(a15, T.a(new LinearLayout.LayoutParams(-1, a(50.0f)), this, 14.0f));
                    this.Q0.addView(a11, T.a(T.a(), this, 12.0f));
                }
                LinearLayout c4 = T.c(this);
                T.a(c4, 25.0f);
                c4.setGravity(i2);
                float f5 = f4;
                c4.addView(T.a(this, T.a(this, 2, T.b, 2.2f, false, 17.0f)), T.a(this, 17.0f, 17.0f));
                TextView a16 = T.a(this, 15.0f, T.b, 600);
                a16.setText("");
                a16.setPadding(a(8.0f), 0, 0, 0);
                c4.addView(a16);
                c4.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda43
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        dev.duo.hookprobe.MainActivity.this.t(view);
                    }
                });
                this.Q0.addView(c4, T.a(new LinearLayout.LayoutParams(-1, a(50.0f)), this, f5));
                TextView a17 = T.a(this, f5, T.d, J.m);
                a17.setLineSpacing(0.0f, 1.3f);
                a17.setText("" + ((hVar != null || hVar.g == null) ? "" : "\n" + hVar.g));
                a17.setPadding(a(f3), 0, a(f3), 0);
                this.Q0.addView(a17, T.a(T.a(), this, f5));
                LinearLayout a18 = O.a(this);
                this.R0 = a18;
                this.Q0.addView(a18, T.a(T.a(), this, 20.0f));
                this.Q0.addView(O.b(this), T.a(T.a(), this, f5));
            }
            f2 = 16.0f;
            i2 = 17;
            f3 = 10.0f;
        }
        TextView a19 = T.a(this, f2, T.c, 600);
        a19.setGravity(i2);
        a19.setText(hVar == null ? "" : "");
        a2.addView(a19);
        LinearLayout c42 = T.c(this);
        T.a(c42, 25.0f);
        c42.setGravity(i2);
        float f52 = f4;
        c42.addView(T.a(this, T.a(this, 2, T.b, 2.2f, false, 17.0f)), T.a(this, 17.0f, 17.0f));
        TextView a162 = T.a(this, 15.0f, T.b, 600);
        a162.setText("");
        a162.setPadding(a(8.0f), 0, 0, 0);
        c42.addView(a162);
        c42.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda43
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.t(view);
            }
        });
        this.Q0.addView(c42, T.a(new LinearLayout.LayoutParams(-1, a(50.0f)), this, f52));
        TextView a172 = T.a(this, f52, T.d, J.m);
        a172.setLineSpacing(0.0f, 1.3f);
        a172.setText("" + ((hVar != null || hVar.g == null) ? "" : "\n" + hVar.g));
        a172.setPadding(a(f3), 0, a(f3), 0);
        this.Q0.addView(a172, T.a(T.a(), this, f52));
        LinearLayout a182 = O.a(this);
        this.R0 = a182;
        this.Q0.addView(a182, T.a(T.a(), this, 20.0f));
        this.Q0.addView(O.b(this), T.a(T.a(), this, f52));
    }

    private void L() {
        XposedService c2 = L.c();
        List<String> B = B();
        if (c2 == null || B.isEmpty() || this.c1) {
            return;
        }
        this.c1 = true;
        this.H0.setEnabled(false);
        g += (dev.duo.hookprobe.g.isEmpty() ? "" : "\n") + "已一次申请 " + B.size() + " 个作用域，请在 LSPosed 通知中批准";
        Toast.makeText(this, "已申请 " + B.size() + " 个作用域，请在 LSPosed 通知中批准", 1).show();
        R();
        try {
            c2.requestScope(B, new e());
        } catch (Throwable th) {
            this.c1 = false;
            g += "\n作用域申请失败：" + th.getMessage();
            R();
        }
    }

    private View M() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setVisibility(8);
        return linearLayout;
    }

    private View N() {
        LinearLayout a2 = T.a((Context) this);
        T.a(a2, this.q.e ? 26.0f : 28.0f);
        a2.setPadding(a(16.0f), a(14.0f), a(16.0f), a(14.0f));
        int i2 = 0;
        boolean z = this.q.c >= 600;
        String[] strArr = {"左下", "右下"};
        this.n0 = new T.e(this, strArr, null, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda11
            @Override // java.util.function.IntConsumer
            public final void accept(int i3) {
                dev.duo.hookprobe.MainActivity.this.h(i3);
            }
        });
        this.o0 = new T.e(this, strArr, null, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda12
            @Override // java.util.function.IntConsumer
            public final void accept(int i3) {
                dev.duo.hookprobe.MainActivity.this.i(i3);
            }
        });
        this.n0.a(false);
        this.o0.a(false);
        T.e[] eVarArr = {this.n0, this.o0};
        String[] strArr2 = {"竖屏", "横屏"};
        while (i2 < 2) {
            LinearLayout c2 = z ? T.c(this) : T.a((Context) this);
            TextView a3 = T.a(this, 13.0f, T.c, 600);
            a3.setText(strArr2[i2]);
            if (z) {
                c2.addView(a3, new LinearLayout.LayoutParams(a(44.0f), -2));
                c2.addView(eVarArr[i2].a, T.b());
            } else {
                c2.addView(a3);
                c2.addView(eVarArr[i2].a, T.a(T.a(), this, 6.0f));
            }
            a2.addView(c2, i2 == 0 ? T.a() : T.a(T.a(), this, 10.0f));
            i2++;
        }
        return a2;
    }

    private View O() {
        this.k0 = new FrameLayout(this);
        int a2 = a(10.0f);
        this.k0.setPadding(a2, a2, a2, a2);
        this.k0.setClipToPadding(false);
        this.k0.setClipChildren(true);
        this.l0 = M();
        View N = N();
        this.m0 = N;
        this.k0.addView(N, new FrameLayout.LayoutParams(0, -2));
        this.k0.addView(this.l0, new FrameLayout.LayoutParams(-1, a(76.0f)));
        this.k0.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda73
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                dev.duo.hookprobe.MainActivity.this.a(view, i2, i3, i4, i5, i6, i7, i8, i9);
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, a(76.0f) + (a2 * 2));
        int i2 = -a2;
        layoutParams.setMargins(i2, a(12.0f) - a2, i2, i2);
        this.k0.setLayoutParams(layoutParams);
        return this.k0;
    }

    private LinearLayout P() {
        TextView[] textViewArr = new TextView[1];
        SeekBar[] seekBarArr = new SeekBar[1];
        LinearLayout a2 = a("外屏页面缩放", "%", 60, 100, textViewArr, seekBarArr, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda67
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                dev.duo.hookprobe.MainActivity.this.m(i2);
            }
        });
        this.I = textViewArr[0];
        this.J = seekBarArr[0];
        TextView a3 = T.a(this, 12.0f, T.d, J.m);
        a3.setText("全局比例只用于已开启 Duo 且未单独设置的 App；未开 Duo 的 App 可在详情页单独缩放，否则保持原样。内屏不受影响（微信内外屏一起缩）");
        a2.addView(a3, T.a(T.a(), this, 12.0f));
        return a2;
    }

    private View Q() {
        LinearLayout c2 = T.c(this);
        T.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        LinearLayout a2 = T.a((Context) this);
        TextView a3 = T.a(this, 15.0f, T.b, 600);
        a3.setText("搜索按钮");
        a2.addView(a3);
        TextView a4 = T.a(this, 12.0f, T.d, J.m);
        a4.setText("在内外屏桌面和应用侧栏显示右下角圆形搜索按钮");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, T.b());
        Switch r1 = new Switch(this);
        this.X = r1;
        T.a(r1);
        this.X.setContentDescription("搜索按钮");
        this.X.setEnabled(false);
        this.X.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda46
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.k(compoundButton, z);
            }
        });
        c2.addView(this.X);
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda47
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.v(view);
            }
        });
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        int i2;
        int i3;
        o c0021o = this.p;
        boolean z = c0021o == null || c0021o.m();
        this.b1 = true;
        Switch r3 = this.J0;
        o c0021o2 = this.p;
        r3.setChecked(c0021o2 != null && c0021o2.a());
        Switch r32 = this.K0;
        if (r32 != null) {
            o c0021o3 = this.p;
            r32.setChecked(c0021o3 != null && c0021o3.d());
            this.K0.setEnabled((this.p == null || f) ? false : true);
        }
        this.C.setChecked(z);
        this.b1 = false;
        this.C.setEnabled(this.p != null && this.V0 && this.U0 && !f);
        this.A.setText(z ? "MiDuo 运行中" : "MiDuo 已关闭");
        String str = this.p == null ? "未连接 LSPosed，请在 LSPosed 中启用 MiDuo" : !this.V0 ? "系统框架还没加载 MiDuo，总开关暂不能用。LSPosed 里启用 MiDuo 后，系统框架要到手机下次开机才加载" : !this.U0 ? "试用已结束，购买后可继续使用" : null;
        this.B.setText(str);
        this.B.setVisibility(str == null ? 8 : 0);
        FrameLayout frameLayout = this.z;
        if (z && str == null) {
            i2 = T.r;
            i3 = T.s;
        } else {
            i2 = T.t;
            i3 = T.u;
        }
        frameLayout.setBackground(T.a(i2, i3));
        this.z.setElevation((z && str == null) ? a(4.0f) : 0.0f);
        String str2 = "原装";
        this.D.setText(this.p == null ? "—" : z ? "4×6" : "原装");
        TextView textView = this.E;
        if (this.p == null) {
            str2 = "—";
        } else if (z) {
            str2 = "9:16";
        }
        textView.setText(str2);
        if (this.p == null) {
            this.F.setText("—");
        }
        this.J0.setEnabled((this.p == null || f) ? false : true);
        this.P0.setEnabled(!f);
        int size = B().size();
        int A = A();
        boolean z2 = this.p != null && this.V0 && this.Z0 == null && A == 0 && !"未安装".equals(this.X0[2]);
        boolean z3 = this.X0[1].isEmpty() || dev.duo.hookprobe.h.equals(this.X0[1]);
        this.r0.setBackground(b((z2 && z3) ? -13326253 : -2543579));
        this.s0.setText(!z2 ? "需要处理" : z3 ? "运行正常" : "版本不对");
        this.z0.setText(this.W0);
        this.A0.setText(this.Z0 != null ? "读取失败（" + this.Z0 + "）" : (A == 0 && size == 0) ? "核心五项和附加功能都已勾选" : "核心缺 " + A + " 个，附加功能缺 " + (size - A) + " 个");
        this.H0.setText("补齐缺失作用域（" + size + " 个）");
        this.H0.setVisibility(size == 0 ? 8 : 0);
        this.H0.setEnabled((f || this.c1) ? false : true);
        this.L0.setText(g);
        this.L0.setVisibility(dev.duo.hookprobe.g.isEmpty() ? 8 : 0);
    }

    private void S() {
        MainActivity mainActivity;
        this.u.removeAllViews();
        int firstVisiblePosition = this.P0.getFirstVisiblePosition();
        View childAt = this.P0.getChildAt(0);
        int top = childAt != null ? childAt.getTop() : 0;
        String str = this.v;
        if (str == null) {
            TextView a2 = T.a(this, 15.0f, T.d, 500);
            a2.setText("选择左侧的 App 查看设置");
            this.u.addView(a2, new FrameLayout.LayoutParams(-2, -2, 17));
            mainActivity = this;
        } else {
            mainActivity = this;
            mainActivity.u.addView(new f(mainActivity, str, this.w, null, true, 0, this.q.d(), 0, this.q.b(), new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda90
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MainActivity.this.o();
                }
            }).e, new FrameLayout.LayoutParams(-1, -1));
        }
        f fVar = mainActivity.O0;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
        mainActivity.P0.setSelectionFromTop(firstVisiblePosition, top);
    }

    private void T() {
        o c0021o = this.p;
        if (c0021o == null) {
            this.G.setText("—");
            return;
        }
        int j2 = c0021o.j();
        this.H.setEnabled(!f);
        this.H.setProgress(j2 - 1);
        this.G.setText(String.valueOf(j2));
        for (int i2 = 0; i2 < this.K.size(); i2++) {
            T.a(this.K.get(i2), P.x[i2] == j2);
            this.K.get(i2).setEnabled(!f);
        }
        this.J.setEnabled(!f);
        this.J.setProgress(this.p.p() - 60);
        this.I.setText(String.valueOf(this.p.p()));
        boolean u = this.p.u();
        boolean equals = "black".equals(this.p.k());
        this.L.a(u ? 2 : equals ? 1 : 0);
        this.L.a(!f);
        this.M.setText(u ? "浅色模式白色，深色模式黑色；单独设置过的 App 不受影响" : "单独设置过颜色的 App 不受影响");
        this.F.setText(u ? "跟随" : equals ? "黑色" : "白色");
        this.b1 = true;
        Switch r0 = this.Q;
        boolean x = this.p.x();
        if (r0 != null) {
            r0.setChecked(x);
        }
        Switch r02 = this.V;
        boolean l = this.p.l();
        if (r02 != null) {
            r02.setChecked(l);
        }
        Switch r03 = this.R;
        boolean o = this.p.o();
        if (r03 != null) {
            r03.setChecked(o);
        }
        this.S.setVisibility(this.p.o() ? 0 : 8);
        this.T.setText(String.valueOf(this.p.q()));
        this.U.setProgress(this.p.q() - 1);
        Switch r04 = this.W;
        boolean n = this.p.n();
        if (r04 != null) {
            r04.setChecked(n);
        }
        Switch r05 = this.X;
        boolean y = this.p.y();
        if (r05 != null) {
            r05.setChecked(y);
        }
        Switch r06 = this.N;
        boolean z = this.p.z();
        if (r06 != null) {
            r06.setChecked(z);
        }
        Switch r07 = this.Y;
        boolean t = this.p.t();
        if (r07 != null) {
            r07.setChecked(t);
        }
        Switch r08 = this.c0;
        boolean B = this.p.B();
        if (r08 != null) {
            r08.setChecked(B);
        }
        boolean e2 = this.p.e();
        Switch r2 = this.Z;
        boolean z2 = this.p.g() && !e2;
        if (r2 != null) {
            r2.setChecked(z2);
        }
        this.g1.setText(e2 ? "开合动画开启时不可用：两者都靠开合手势，会互相干扰。关闭开合动画后恢复" : j);
        Switch r22 = this.a0;
        boolean e3 = this.p.e();
        if (r22 != null) {
            r22.setChecked(e3);
        }
        Switch r23 = this.b0;
        boolean c2 = this.p.c();
        if (r23 != null) {
            r23.setChecked(c2);
        }
        this.b1 = false;
        this.Q.setEnabled(!f);
        this.V.setEnabled(!f);
        this.R.setEnabled(!f);
        this.U.setEnabled(!f && this.p.o());
        this.W.setEnabled(!f);
        this.X.setEnabled(!f);
        this.N.setEnabled((f || this.P) ? false : true);
        this.O.setText(this.P ? "正在开启锁屏显示权限…" : "开启时自动允许锁屏显示（需 Root）；权限被关闭后可重新开启");
        this.Y.setEnabled(!f);
        this.c0.setEnabled(!f);
        this.Z.setEnabled((f || e2) ? false : true);
        this.a0.setEnabled(!f && this.h1 == null);
        this.b0.setEnabled(!f);
        this.d0.a(!this.p.A() ? 1 : 0);
        this.e0.a(this.p.s() ? 1 : 0);
        this.d0.a(!f);
        this.f0.a(this.p.f());
        this.f0.a((f || e2) ? false : true);
        this.e0.a(!f);
        int i3 = 0;
        while (true) {
            SeekBar[] seekBarArr = this.g0;
            if (i3 >= seekBarArr.length) {
                Z();
                this.q.a(this.p.A());
                this.n0.a(this.p.a(false) ? 1 : 0);
                this.o0.a(this.p.a(true) ? 1 : 0);
                this.n0.a(!f);
                this.o0.a(!f);
                return;
            }
            if (this.i0[i3] == null) {
                seekBarArr[i3].setProgress(this.p.e(i3) + 60);
                this.h0[i3].setText(c(this.p.e(i3)));
                this.g0[i3].setEnabled(!f);
            }
            i3++;
        }
    }

    private void U() {
        int i2;
        if (this.t0 == null) {
            return;
        }
        int i3 = 0;
        if (this.p != null) {
            i2 = 0;
            for (g gVar : this.n) {
                if (this.p.i(gVar.a)) {
                    i3++;
                }
                if (b(gVar.a)) {
                    i2++;
                }
            }
        } else {
            i2 = 0;
        }
        this.t0.setText("共 " + this.n.size() + " 个");
        this.u0.setText(this.p == null ? "—" : String.valueOf(i3));
        this.v0.setText(this.p == null ? "—" : String.valueOf(i2));
        this.w0.setText(this.p != null ? String.valueOf(this.n.size() - i3) : "—");
    }

    private void V() {
        ((ScrollView) this.r[2]).smoothScrollTo(0, Math.max(0, (this.Q0.getTop() + this.R0.getTop()) - a(12.0f)));
    }

    private View W() {
        LinearLayout a2 = T.a((Context) this);
        T.a(a2, this.q.e ? 26.0f : 28.0f);
        a2.setPadding(a(18.0f), a(6.0f), a(16.0f), a(12.0f));
        LinearLayout c2 = T.c(this);
        c2.setMinimumHeight(a(76.0f));
        LinearLayout a3 = T.a((Context) this);
        TextView a4 = T.a(this, 15.0f, T.b, 600);
        a4.setText("帐篷钟面");
        a3.addView(a4);
        TextView a5 = T.a(this, 12.0f, T.d, J.m);
        a5.setText("锁屏摆成帐篷姿势时，在外屏显示常亮钟面");
        a5.setPadding(0, a(3.0f), 0, 0);
        a3.addView(a5);
        c2.addView(a3, T.b());
        Switch r2 = new Switch(this);
        this.N = r2;
        T.a(r2);
        this.N.setContentDescription("帐篷钟面");
        this.N.setEnabled(false);
        this.N.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda51
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.l(compoundButton, z);
            }
        });
        c2.addView(this.N);
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda52
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.w(view);
            }
        });
        a2.addView(c2);
        TextView a6 = T.a(this, 12.0f, T.d, J.m);
        this.O = a6;
        a6.setLineSpacing(0.0f, 1.2f);
        this.O.setText("开启时自动允许锁屏显示（需 Root）；权限被关闭后可重新开启");
        a2.addView(this.O, T.a());
        return a2;
    }

    private LinearLayout X() {
        LinearLayout u = u();
        LinearLayout i2 = i();
        FrameLayout frameLayout = new FrameLayout(this);
        this.z = frameLayout;
        frameLayout.addView(T.a(this, T.a(this, 7, T.v, 2.4f, false, 20.0f)), new FrameLayout.LayoutParams(a(20.0f), a(20.0f), 17));
        i2.addView(this.z, T.a(this, 44.0f, 44.0f));
        LinearLayout a2 = T.a((Context) this);
        a2.setPadding(a(12.0f), 0, a(8.0f), 0);
        TextView a3 = T.a(this, 18.0f, T.b, 700);
        this.A = a3;
        a2.addView(a3);
        TextView a4 = T.a(this, 12.0f, T.c, J.m);
        this.B = a4;
        a4.setPadding(0, a(4.0f), 0, 0);
        a2.addView(this.B);
        i2.addView(a2, T.b());
        Switch r2 = new Switch(this);
        this.C = r2;
        T.a(r2);
        this.C.setContentDescription("MiDuo 总开关");
        this.C.setEnabled(false);
        this.C.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.m(compoundButton, z);
            }
        });
        i2.addView(this.C);
        dev.duo.hookprobe.u.addView(i2);
        LinearLayout c2 = T.c(this);
        this.D = a(c2, "桌面", 0.0f);
        this.E = a(c2, "外屏比例", 8.0f);
        this.F = a(c2, "侧栏", 8.0f);
        dev.duo.hookprobe.u.addView(c2, T.a(T.a(), this, 14.0f));
        return u;
    }

    private View Y() {
        LinearLayout a2 = T.a((Context) this);
        T.a(a2, this.q.e ? 26.0f : 28.0f);
        int i2 = 0;
        a2.setPadding(a(18.0f), 0, a(16.0f), 0);
        LinearLayout c2 = T.c(this);
        c2.setGravity(16);
        c2.setMinimumHeight(a(64.0f));
        LinearLayout a3 = T.a((Context) this);
        TextView a4 = T.a(this, 15.0f, T.b, 600);
        a4.setText("时钟模块位置");
        a3.addView(a4);
        TextView a5 = T.a(this, 12.0f, T.d, J.m);
        a5.setText("时间、电量环和通知图标一起上下移动");
        a5.setPadding(0, a(3.0f), 0, 0);
        a3.addView(a5);
        c2.addView(a3, T.b());
        TextView a6 = T.a(this, 13.0f, T.d, 500);
        this.j0 = a6;
        c2.addView(a6);
        final ImageView a7 = T.a(this, T.a(this, 5, T.e, 2.6f, false, 14.0f));
        LinearLayout.LayoutParams a8 = T.a(this, 14.0f, 14.0f);
        a8.leftMargin = a(10.0f);
        c2.addView(a7, a8);
        a2.addView(c2);
        final LinearLayout a9 = T.a((Context) this);
        String[] strArr = {"外屏桌面", "外屏应用", "内屏横屏桌面", "内屏竖屏桌面", "外屏锁屏", "内屏横屏锁屏", "内屏竖屏锁屏"};
        while (i2 < 7) {
            a9.addView(a(i2, strArr[i2]), T.a(T.a(), this, i2 == 0 ? 2.0f : 14.0f));
            i2++;
        }
        a9.addView(new View(this), new LinearLayout.LayoutParams(-1, a(16.0f)));
        a9.setVisibility(8);
        a2.addView(a9);
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda86
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.c(a9, a7, view);
            }
        });
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z() {
        int i2 = 0;
        for (SeekBar seekBar : this.g0) {
            if (seekBar.getProgress() != 60) {
                i2++;
            }
        }
        this.j0.setText(i2 == 0 ? "全部默认" : "已调 " + i2 + " 处");
    }

    private static int a(int i2, int i3) {
        if (i2 == 2) {
            return -2543579;
        }
        if (i2 == 1) {
            return -878336;
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(o c0021o, TextView textView) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, o c0021o) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0() {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        this.m.removeCallbacks(this.d1);
        R();
        o();
        if (f) {
            this.m.postDelayed(this.d1, 500L);
        }
    }

    private View b0() {
        LinearLayout c2 = T.c(this);
        T.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        c2.setMinimumHeight(a(76.0f));
        LinearLayout a2 = T.a((Context) this);
        TextView a3 = T.a(this, 15.0f, T.b, 600);
        a3.setText("小组件");
        a2.addView(a3);
        TextView a4 = T.a(this, 12.0f, T.d, J.m);
        a4.setText("预览 MiDuo 的桌面小组件，添加到桌面或换照片");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, T.b());
        LinearLayout.LayoutParams a5 = T.a(this, 14.0f, 14.0f);
        a5.leftMargin = a(8.0f);
        c2.addView(T.a(this, T.a(this, 4, T.d, 3.0f, false, 14.0f)), a5);
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda77
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.x(view);
            }
        });
        return c2;
    }

    private h c(o c0021o) {
        return null;
    }

    private View c0() {
        LinearLayout c2 = T.c(this);
        T.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        c2.setMinimumHeight(a(76.0f));
        LinearLayout a2 = T.a((Context) this);
        TextView a3 = T.a(this, 15.0f, T.b, 600);
        a3.setText("工作台");
        a2.addView(a3);
        TextView a4 = T.a(this, 12.0f, T.d, J.m);
        a4.setText("内屏横放时，在全屏 App 右下角按住再往里拉，进入工作台。关闭后右下角不再响应，正在显示的工作台会退出、当前大窗 App 回到全屏；小米原生分屏不受影响");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, T.b());
        Switch r1 = new Switch(this);
        this.c0 = r1;
        T.a(r1);
        this.c0.setContentDescription("工作台");
        this.c0.setEnabled(false);
        this.c0.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda38
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.n(compoundButton, z);
            }
        });
        c2.addView(this.c0);
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda39
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.y(view);
            }
        });
        return c2;
    }

    private View f() {
        LinearLayout linearLayout = new LinearLayout(this);
        this.Q0 = linearLayout;
        linearLayout.setVisibility(8);
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(View view) {
        if (this.R.isEnabled()) {
            this.R.performClick();
        }
    }

    private View p() {
        LinearLayout c2 = T.c(this);
        T.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        c2.setMinimumHeight(a(76.0f));
        LinearLayout a2 = T.a((Context) this);
        TextView a3 = T.a(this, 15.0f, T.b, 600);
        a3.setText("开合动画（实验性）");
        a2.addView(a3);
        TextView a4 = T.a(this, 12.0f, T.d, J.m);
        String a5 = v.a(this);
        this.h1 = a5;
        if (a5 == null) {
            a5 = "切换后要等系统下次启动才用上";
        }
        a4.setText(a5);
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, T.b());
        Switch r1 = new Switch(this);
        this.a0 = r1;
        T.a(r1);
        this.a0.setContentDescription("开合动画（实验性）");
        this.a0.setEnabled(false);
        this.a0.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda36
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.d(compoundButton, z);
            }
        });
        c2.addView(this.a0);
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda37
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.i(view);
            }
        });
        return c2;
    }

    private View q() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setVisibility(8);
        return linearLayout;
    }

    private void r() throws IOException, InterruptedException {
        int myUid = Process.myUid() / 100000;
        Process start = new ProcessBuilder("su", "-c", "cmd appops set --user " + myUid + " com.lsposed.miduo 10020 allow && cmd appops get --user " + myUid + " com.lsposed.miduo 10020").redirectErrorStream(true).start();
        try {
            if (!start.waitFor(30L, TimeUnit.SECONDS)) {
                start.destroyForcibly();
                throw new IOException("Lockscreen permission request timed out");
            }
            InputStream inputStream = start.getInputStream();
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[256];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read < 0) {
                        break;
                    } else {
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                }
                String byteArrayOutputStream2 = byteArrayOutputStream.toString("UTF-8");
                inputStream.close();
                if (start.exitValue() != 0 || !Pattern.compile("(?m)^\\s*MIUIOP\\(10020\\): allow(?:;[^\\r\\n]*)?\\s*$").matcher(byteArrayOutputStream2).find()) {
                    throw new IOException("Lockscreen permission was not allowed: " + byteArrayOutputStream2.trim());
                }
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (InterruptedException e2) {
            start.destroyForcibly();
            throw e2;
        }
    }

    private View s() {
        LinearLayout c2 = T.c(this);
        T.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        LinearLayout a2 = T.a((Context) this);
        TextView a3 = T.a(this, 15.0f, T.b, 600);
        a3.setText("使用说明");
        a2.addView(a3);
        TextView a4 = T.a(this, 12.0f, T.d, J.m);
        a4.setText("安装要求、注意事项和免责声明");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, T.b());
        c2.addView(T.a(this, T.a(this, 4, T.e, 2.6f, false, 14.0f)), T.a(this, 14.0f, 14.0f));
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda59
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.j(view);
            }
        });
        return c2;
    }

    private LinearLayout t() {
        TextView[] textViewArr = new TextView[1];
        SeekBar[] seekBarArr = new SeekBar[1];
        LinearLayout a2 = a("顶部避让高度", "px", 1, 126, textViewArr, seekBarArr, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda81
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                dev.duo.hookprobe.MainActivity.this.l(i2);
            }
        });
        this.G = textViewArr[0];
        this.H = seekBarArr[0];
        LinearLayout c2 = T.c(this);
        int i2 = 0;
        while (true) {
            int[] iArr = P.x;
            if (i2 >= iArr.length) {
                a2.addView(c2);
                TextView a3 = T.a(this, 12.0f, T.d, J.m);
                a3.setText("单独设置过的 App 不受影响，App 下次打开时生效");
                a2.addView(a3, T.a(T.a(), this, 12.0f));
                return a2;
            }
            final int i3 = iArr[i2];
            TextView a4 = T.a((Context) this, i3 + "px", false, 36.0f);
            a4.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda82
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dev.duo.hookprobe.MainActivity.this.a(i3, view);
                }
            });
            this.K.add(a4);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, a(36.0f), 1.0f);
            if (i2 > 0) {
                layoutParams.leftMargin = a(8.0f);
            }
            c2.addView(a4, layoutParams);
            i2++;
        }
    }

    private LinearLayout u() {
        LinearLayout a2 = T.a((Context) this);
        T.a(a2, this.q.e ? 26.0f : 28.0f);
        a2.setPadding(a(18.0f), a(18.0f), a(18.0f), a(18.0f));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(View view) {
        if (this.X.isEnabled()) {
            this.X.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(View view) {
        if (this.N.isEnabled()) {
            this.N.performClick();
        }
    }

    private View x() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setVisibility(8);
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(View view) {
        startActivity(new Intent(this, (Class<?>) dev.duo.hookprobe.WidgetCenterActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(View view) {
        if (this.c0.isEnabled()) {
            this.c0.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0173 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void z() {
        o c0021o;
        final o c0021o2;
        String valueOf;
        String valueOf2;
        PackageManager packageManager = getPackageManager();
        final ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        Iterator<String> it = dev.duo.hookprobe.d.iterator();
        boolean z = false;
        int i2 = 0;
        while (it.hasNext()) {
            try {
                packageManager.getApplicationInfo(it.next(), 0);
                i2++;
            } catch (PackageManager.NameNotFoundException e2) {
            }
        }
        for (PackageInfo packageInfo : packageManager.getInstalledPackages(1)) {
            String str = packageInfo.packageName;
            if (!dev.duo.hookprobe.d.contains(str)) {
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                if (applicationInfo.enabled && packageInfo.activities != null && !"system".equals(applicationInfo.processName)) {
                    ActivityInfo[] activityInfoArr = packageInfo.activities;
                    int length = activityInfoArr.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 < length) {
                            ActivityInfo activityInfo = activityInfoArr[i3];
                            if (activityInfo.enabled && !"system".equals(activityInfo.processName) && !"com.android.systemui".equals(activityInfo.processName)) {
                                g gVar = new g();
                                gVar.a = str;
                                gVar.b = String.valueOf(packageInfo.applicationInfo.loadLabel(packageManager));
                                gVar.c = packageInfo.applicationInfo.loadIcon(packageManager);
                                arrayList.add(gVar);
                                hashSet.add(str);
                                break;
                            }
                            i3++;
                        }
                    }
                }
            }
        }
        final Collator collator = Collator.getInstance(Locale.CHINA);
        Collections.sort(arrayList, new Comparator() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda63
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int a2;
                a2 = MainActivity.a(collator, (MainActivity.g) obj, (MainActivity.g) obj2);
                return a2;
            }
        });
        for (String str2 : dev.duo.hookprobe.P.i) {
            try {
                ApplicationInfo applicationInfo2 = packageManager.getApplicationInfo(str2, 0);
                g gVar2 = new g();
                gVar2.a = str2;
                gVar2.b = String.valueOf(applicationInfo2.loadLabel(packageManager));
                gVar2.c = applicationInfo2.loadIcon(packageManager);
                gVar2.d = true;
                gVar2.e = h(str2);
                arrayList.add(gVar2);
                hashSet.add(str2);
            } catch (PackageManager.NameNotFoundException e3) {
            }
        }
        for (String str3 : P.j) {
            if (!hashSet.contains(str3)) {
                try {
                    ApplicationInfo applicationInfo3 = packageManager.getApplicationInfo(str3, 0);
                    g gVar3 = new g();
                    gVar3.a = str3;
                    gVar3.b = String.valueOf(applicationInfo3.loadLabel(packageManager));
                    gVar3.c = applicationInfo3.loadIcon(packageManager);
                    arrayList.add(gVar3);
                } catch (PackageManager.NameNotFoundException e4) {
                }
            }
        }
        Collections.sort(arrayList, new Comparator() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda64
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int b2;
                b2 = MainActivity.b(collator, (MainActivity.g) obj, (MainActivity.g) obj2);
                return b2;
            }
        });
        boolean z2 = !i("debug.duo.master").isEmpty();
        XposedService a2 = L.a(8000L);
        a aVar = null;
        if (a2 != null) {
            try {
                c0021o = new o(a2);
            } catch (Throwable th) {
                th = th;
                c0021o = null;
                c0021o2 = c0021o;
                valueOf = String.valueOf(th);
                HashSet hashSet2 = new HashSet();
                if (a2 != null) {
                }
                valueOf2 = null;
                final i iVar = new i(aVar);
                iVar.a = arrayList;
                iVar.b = c0021o2;
                iVar.c = null;
                iVar.d = hashSet2;
                iVar.e = valueOf2;
                iVar.f = z2;
                iVar.h = i2;
                if (c0021o2 != null) {
                }
                iVar.g = c0021o2 != null ? "已连接 · " + a2.getFrameworkVersion() : "未连接" + (valueOf == null ? "：请在 LSPosed 中启用 MiDuo" : "（" + valueOf + "）");
                iVar.i = new String[]{Build.VERSION.INCREMENTAL, a(packageManager, "com.miui.home"), a(packageManager, "com.miui.personalassistant"), a(packageManager, getPackageName())};
                if (c0021o2 != null) {
                }
                iVar.j = r.a(z);
                this.m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda65
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.hookprobe.MainActivity.this.a(iVar, c0021o2, arrayList);
                    }
                });
            }
        } else {
            c0021o = null;
        }
        if (c0021o != null) {
            try {
                if (!c0021o.b()) {
                    Log.e("MiDuo", "通知中心固定配置写入失败");
                }
            } catch (Throwable th2) {
                th = th2;
                c0021o2 = c0021o;
                valueOf = String.valueOf(th);
                HashSet hashSet22 = new HashSet();
                if (a2 != null) {
                }
                valueOf2 = null;
                final i iVar2 = new i(aVar);
                iVar2.a = arrayList;
                iVar2.b = c0021o2;
                iVar2.c = null;
                iVar2.d = hashSet22;
                iVar2.e = valueOf2;
                iVar2.f = z2;
                iVar2.h = i2;
                if (c0021o2 != null) {
                }
                iVar2.g = c0021o2 != null ? "已连接 · " + a2.getFrameworkVersion() : "未连接" + (valueOf == null ? "：请在 LSPosed 中启用 MiDuo" : "（" + valueOf + "）");
                iVar2.i = new String[]{Build.VERSION.INCREMENTAL, a(packageManager, "com.miui.home"), a(packageManager, "com.miui.personalassistant"), a(packageManager, getPackageName())};
                if (c0021o2 != null) {
                    z = true;
                }
                iVar2.j = r.a(z);
                this.m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda65
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.hookprobe.MainActivity.this.a(iVar2, c0021o2, arrayList);
                    }
                });
            }
        }
        c0021o2 = c0021o;
        valueOf = null;
        HashSet hashSet222 = new HashSet();
        if (a2 != null) {
            try {
                hashSet222.addAll(a2.getScope());
            } catch (Throwable th3) {
                valueOf2 = String.valueOf(th3);
            }
        }
        valueOf2 = null;
        final i iVar22 = new i(aVar);
        iVar22.a = arrayList;
        iVar22.b = c0021o2;
        iVar22.c = null;
        iVar22.d = hashSet222;
        iVar22.e = valueOf2;
        iVar22.f = z2;
        iVar22.h = i2;
        iVar22.g = c0021o2 != null ? "已连接 · " + a2.getFrameworkVersion() : "未连接" + (valueOf == null ? "：请在 LSPosed 中启用 MiDuo" : "（" + valueOf + "）");
        iVar22.i = new String[]{Build.VERSION.INCREMENTAL, a(packageManager, "com.miui.home"), a(packageManager, "com.miui.personalassistant"), a(packageManager, getPackageName())};
        if (c0021o2 != null && c0021o2.e()) {
            z = true;
        }
        iVar22.j = r.a(z);
        this.m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda65
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.a(iVar22, c0021o2, arrayList);
            }
        });
    }

    void D() {
        if (this.f1 || isDestroyed()) {
            return;
        }
        this.f1 = true;
        ExecutorService executorService = a;
        executorService.execute(new MainActivity$$ExternalSyntheticLambda13(this));
        executorService.execute(new MainActivity$$ExternalSyntheticLambda14());
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        L.d();
        T.d dVar = new T.d(this);
        this.q = dVar;
        this.t = dVar.e;
        this.r[0] = e();
        this.r[1] = d();
        this.r[2] = f();
        this.r[3] = h();
        this.r[4] = g();
        this.r[0].setId(1001);
        this.r[2].setId(1003);
        this.r[3].setId(1004);
        this.r[4].setId(1005);
        for (View view : this.r) {
            this.q.b.addView(view, new FrameLayout.LayoutParams(-1, -1));
        }
        Intent intent = getIntent();
        int intExtra = intent.getIntExtra("tab", 0);
        this.v = intent.getStringExtra("pkg");
        this.w = intent.getStringExtra("label");
        if (bundle != null) {
            intExtra = bundle.getInt("tab", intExtra);
            this.N0 = bundle.getInt("appTab", 0);
            this.v = bundle.getString("pkg");
            this.w = bundle.getString("label");
        }
        this.M0.a(this.N0);
        a((h) null);
        n(intExtra);
        setContentView(this.q.a);
        this.q.a();
        i iVar = (i) getLastNonConfigurationInstance();
        if (iVar != null) {
            a(iVar);
        } else if (1 != 0) {
            dev.duo.hookprobe.a.execute(new MainActivity$$ExternalSyntheticLambda13(this));
        }
        if (bundle == null && 1 != 0) {
            dev.duo.hookprobe.a.execute(new MainActivity$$ExternalSyntheticLambda14());
        }
        if (iVar != null || 1 != 0) {
            this.f1 = true;
        }
        if (this.t) {
            S();
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        n(intent.getIntExtra("tab", this.s));
        if (intent.getStringExtra("pkg") != null) {
            this.v = intent.getStringExtra("pkg");
            this.w = intent.getStringExtra("label");
            if (this.t) {
                S();
            }
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.p == null || !this.f1) {
            return;
        }
        dev.duo.hookprobe.a.execute(new MainActivity$$ExternalSyntheticLambda13(this));
    }

    @Override // android.app.Activity
    public Object onRetainNonConfigurationInstance() {
        return this.e1;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("tab", this.s);
        bundle.putInt("appTab", this.N0);
        bundle.putString("pkg", this.v);
        bundle.putString("label", this.w);
    }

    private TextView c(String str) {
        LinearLayout c2 = T.c(this);
        c2.setPadding(0, a(10.0f), 0, 0);
        TextView a2 = T.a(this, 13.0f, T.d, J.m);
        a2.setText(str);
        c2.addView(a2);
        TextView a3 = T.a(this, 13.0f, T.b, 500);
        a3.setGravity(8388613);
        a3.setPadding(a(16.0f), 0, 0, 0);
        c2.addView(a3, T.b());
        this.y0.addView(c2);
        return a3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(CompoundButton compoundButton, boolean z) {
        if (this.b1 || this.p == null) {
            return;
        }
        if (!z) {
            i(false);
            return;
        }
        this.b1 = true;
        compoundButton.setChecked(false);
        this.b1 = false;
        k();
    }

    private View e() {
        MainActivity mainActivity;
        LinearLayout a2 = T.a((Context) this);
        LinearLayout c2 = T.c(this);
        if (this.q.e) {
            mainActivity = this;
        } else {
            c2.setPadding(a(6.0f), 0, a(6.0f) + this.q.c(), a(4.0f));
            FrameLayout frameLayout = new FrameLayout(this);
            T.a(frameLayout, 14.0f);
            mainActivity = this;
            frameLayout.addView(T.a(this, T.a(mainActivity, 10, T.b, 0.0f, true, 26.0f)), new FrameLayout.LayoutParams(a(26.0f), a(26.0f), 17));
            c2.addView(frameLayout, T.a(this, 46.0f, 46.0f));
        }
        TextView g2 = g("MiDuo");
        if (mainActivity.q.e) {
            g2.setTextSize(28.0f);
        } else {
            g2.setPadding(a(12.0f), 0, 0, 0);
        }
        c2.addView(g2, T.b());
        LinearLayout c3 = T.c(this);
        mainActivity.y = c3;
        T.a(c3, 16.0f);
        mainActivity.y.setPadding(a(7.0f), 0, a(12.0f), 0);
        mainActivity.y.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda45
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.a(view);
            }
        });
        c2.addView(mainActivity.y, new LinearLayout.LayoutParams(-2, a(32.0f)));
        a2.addView(c2, new LinearLayout.LayoutParams(-1, mainActivity.q.e ? a(40.0f) : -2));
        View X = X();
        View t = t();
        View P = P();
        View H = H();
        View b2 = b(!mainActivity.q.e);
        if (!mainActivity.q.e) {
            a2.addView(X, T.a(T.a(), this, 12.0f));
            a2.addView(T.a((Context) this, "常用设置"));
            a2.addView(t, T.a());
            a2.addView(P, T.a(T.a(), this, 12.0f));
            a2.addView(H, T.a(T.a(), this, 12.0f));
            a2.addView(b2, T.a(T.a(), this, 12.0f));
            a2.addView(v(), T.a(new LinearLayout.LayoutParams(-1, a(64.0f)), this, 12.0f));
            a2.addView(s(), T.a(new LinearLayout.LayoutParams(-1, a(64.0f)), this, 12.0f));
            return a(a2);
        }
        LinearLayout a3 = T.a((Context) this);
        a3.addView(a(X, t), new LinearLayout.LayoutParams(-1, 0, 1.0f));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
        layoutParams.topMargin = a(14.0f);
        a3.addView(a(b2, H), layoutParams);
        a2.addView(a3, T.a(new LinearLayout.LayoutParams(-1, 0, 1.0f), this, 14.0f));
        a2.addView(P, T.a(T.a(), this, 14.0f));
        a2.addView(F(), T.a(new LinearLayout.LayoutParams(-1, a(84.0f)), this, 14.0f));
        a2.addView(v(), T.a(new LinearLayout.LayoutParams(-1, a(64.0f)), this, 14.0f));
        a2.addView(s(), T.a(new LinearLayout.LayoutParams(-1, a(64.0f)), this, 14.0f));
        ScrollView a4 = a(a2);
        a4.setFillViewport(true);
        return a4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(View view) {
        boolean z = this.y0.getVisibility() != 0;
        this.y0.setVisibility(z ? 0 : 8);
        this.x0.setRotation(z ? 180.0f : 0.0f);
    }

    private TextView g(String str) {
        TextView a2 = T.a(this, 32.0f, T.b, 800);
        a2.setText(str);
        a2.setLetterSpacing(-0.02f);
        return a2;
    }

    static String h(String str) {
        return "com.android.camera".equals(str) ? "相机不能开 Duo" : "com.android.quicksearchbox".equals(str) ? "系统搜索不能开 Duo" : "miui.systemui.plugin".equals(str) ? "系统界面插件不能开 Duo" : "这个应用不能开 Duo";
    }

    private LinearLayout i() {
        LinearLayout c2 = T.c(this);
        c2.setMinimumHeight(a(44.0f));
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(CompoundButton compoundButton, boolean z) {
        if (this.b1 || this.p == null) {
            return;
        }
        n(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(CompoundButton compoundButton, boolean z) {
        if (this.b1 || this.p == null) {
            return;
        }
        o(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(CompoundButton compoundButton, boolean z) {
        if (this.b1 || this.p == null) {
            return;
        }
        p(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(CompoundButton compoundButton, boolean z) {
        if (this.b1 || this.p == null) {
            return;
        }
        a(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(int i2) {
        this.s = i2;
        int i3 = 0;
        while (true) {
            View[] viewArr = this.r;
            if (i3 >= viewArr.length) {
                this.q.a(i2, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda68
                    @Override // java.util.function.IntConsumer
                    public final void accept(int i4) {
                        dev.duo.hookprobe.MainActivity.this.n(i4);
                    }
                });
                return;
            } else {
                viewArr[i3].setVisibility(i3 == i2 ? 0 : 8);
                i3++;
            }
        }
    }

    private void o(boolean z) {
        if (this.p.q(z)) {
            Toast.makeText(this, z ? "已开启搜索按钮" : "已关闭搜索按钮", 0).show();
        } else {
            Toast.makeText(this, "搜索按钮保存失败", 0).show();
            T();
        }
    }

    private View v() {
        LinearLayout c2 = T.c(this);
        T.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        LinearLayout a2 = T.a((Context) this);
        TextView a3 = T.a(this, 15.0f, T.b, 600);
        a3.setText("图标");
        a2.addView(a3);
        TextView a4 = T.a(this, 12.0f, T.d, J.m);
        a4.setText("从 MTZ 导入图标，或恢复原备份");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, T.b());
        c2.addView(T.a(this, T.a(this, 4, T.e, 2.6f, false, 14.0f)), T.a(this, 14.0f, 14.0f));
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda23
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.k(view);
            }
        });
        return c2;
    }

    private View w() {
        LinearLayout c2 = T.c(this);
        T.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), a(12.0f), a(16.0f), a(12.0f));
        LinearLayout a2 = T.a((Context) this);
        TextView a3 = T.a(this, 15.0f, T.b, 600);
        a3.setText("内屏原生顶栏");
        a2.addView(a3);
        TextView a4 = T.a(this, 12.0f, T.d, J.m);
        a4.setText("开启后内屏显示小米原厂顶栏（时间、电量、通知），往下拉交给系统；每个 App 可在详情里单独设置");
        a4.setPadding(0, a(3.0f), a(8.0f), 0);
        a2.addView(a4);
        c2.addView(a2, T.b());
        Switch r1 = new Switch(this);
        this.V = r1;
        T.a(r1);
        this.V.setContentDescription("内屏原生顶栏");
        this.V.setEnabled(false);
        this.V.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda61
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.f(compoundButton, z);
            }
        });
        c2.addView(this.V);
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda62
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.l(view);
            }
        });
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y() {
        b(this.p0);
    }

    private LinearLayout b(boolean z) {
        MainActivity mainActivity;
        LinearLayout u = u();
        if (z) {
            dev.duo.hookprobe.u.setPadding(a(18.0f), 0, a(18.0f), 0);
        }
        LinearLayout i2 = i();
        if (z) {
            i2.setMinimumHeight(a(52.0f));
        }
        View view = new View(this);
        this.r0 = view;
        i2.addView(view, T.a(this, 7.0f, 7.0f));
        TextView a2 = T.a(this, 15.0f, T.b, 600);
        a2.setText("诊断信息");
        a2.setPadding(a(10.0f), 0, 0, 0);
        i2.addView(a2, T.b());
        TextView a3 = T.a(this, 13.0f, T.d, 500);
        this.s0 = a3;
        i2.addView(a3);
        dev.duo.hookprobe.u.addView(i2);
        this.y0 = T.a((Context) this);
        if (!z) {
            mainActivity = this;
        } else {
            mainActivity = this;
            mainActivity.x0 = T.a(this, T.a(mainActivity, 5, T.e, 2.6f, false, 14.0f));
            LinearLayout.LayoutParams a4 = T.a(this, 14.0f, 14.0f);
            a4.leftMargin = a(10.0f);
            i2.addView(mainActivity.x0, a4);
            i2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda69
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    dev.duo.hookprobe.MainActivity.this.f(view2);
                }
            });
            mainActivity.y0.setVisibility(8);
        }
        View view2 = new View(this);
        view2.setBackgroundColor(T.h);
        mainActivity.y0.addView(view2, new LinearLayout.LayoutParams(-1, Math.max(1, a(0.5f))));
        mainActivity.z0 = c("LSPosed");
        mainActivity.A0 = c("作用域");
        mainActivity.B0 = c("系统");
        mainActivity.C0 = c("小米桌面");
        mainActivity.D0 = c("智能助理");
        mainActivity.E0 = c("MiDuo");
        mainActivity.F0 = c("开合动画");
        TextView a5 = T.a(this, 12.0f, -2543579, 500);
        mainActivity.G0 = a5;
        a5.setPadding(0, a(10.0f), 0, 0);
        mainActivity.G0.setVisibility(8);
        mainActivity.y0.addView(mainActivity.G0);
        TextView a6 = T.a((Context) this, "", false, 40.0f);
        mainActivity.H0 = a6;
        a6.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda70
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                dev.duo.hookprobe.MainActivity.this.g(view3);
            }
        });
        mainActivity.y0.addView(mainActivity.H0, T.a(new LinearLayout.LayoutParams(-1, a(40.0f)), this, 10.0f));
        TextView a7 = T.a((Context) this, "Bug 抓取与导出", false, 40.0f);
        a7.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda71
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                dev.duo.hookprobe.MainActivity.this.h(view3);
            }
        });
        mainActivity.y0.addView(a7, T.a(new LinearLayout.LayoutParams(-1, a(40.0f)), this, 8.0f));
        if (z) {
            mainActivity.y0.addView(new View(this), new LinearLayout.LayoutParams(-1, a(14.0f)));
        }
        dev.duo.hookprobe.u.addView(mainActivity.y0);
        return u;
    }

    private View j() {
        LinearLayout c2 = T.c(this);
        T.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        LinearLayout a2 = T.a((Context) this);
        TextView a3 = T.a(this, 15.0f, T.b, 600);
        a3.setText("5G 新样式");
        a2.addView(a3);
        TextView a4 = T.a(this, 12.0f, T.d, J.m);
        a4.setText("用流量时圆环中间显示信号格，缺口处写网络类型");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, T.b());
        Switch r1 = new Switch(this);
        this.b0 = r1;
        T.a(r1);
        this.b0.setContentDescription("5G 新样式");
        this.b0.setEnabled(false);
        this.b0.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda29
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.b(compoundButton, z);
            }
        });
        c2.addView(this.b0);
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda30
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.b(view);
            }
        });
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(View view) {
        startActivity(new Intent(this, (Class<?>) dev.duo.icons.MainActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(View view) {
        if (this.V.isEnabled()) {
            this.V.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(int i2) {
        o c0021o = this.p;
        if (c0021o == null || c0021o.c(i2)) {
            return;
        }
        Toast.makeText(this, "外屏缩放保存失败", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(View view) {
        if (this.a0.isEnabled()) {
            this.a0.performClick();
        }
    }

    private void k(boolean z) {
        if (this.p.i(z)) {
            Toast.makeText(this, z ? "已开启通知图标" : "已关闭通知图标", 0).show();
        } else {
            Toast.makeText(this, "通知图标保存失败", 0).show();
            T();
        }
    }

    private void l() {
        final long j2;
        final int i2;
        final String str;
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        ScrollView scrollView = new ScrollView(this);
        LinearLayout a2 = T.a((Context) this);
        a2.setPadding(a(22.0f), a(22.0f), a(22.0f), a(18.0f));
        scrollView.addView(a2);
        TextView a3 = T.a(this, 20.0f, T.b, 700);
        a3.setText("打开前检查");
        a2.addView(a3);
        final TextView a4 = T.a(this, 13.0f, T.c, J.m);
        a4.setText("正在检查…");
        a4.setLineSpacing(a(2.0f), 1.0f);
        a2.addView(a4, T.a(T.a(), this, 8.0f));
        final LinearLayout a5 = T.a((Context) this);
        a5.setBackground(T.a(T.g, a(16.0f)));
        a5.setPadding(a(14.0f), 0, a(14.0f), 0);
        a5.setVisibility(8);
        a2.addView(a5, T.a(T.a(), this, 14.0f));
        LinearLayout c2 = T.c(this);
        c2.setGravity(8388629);
        final TextView a6 = T.a((Context) this, "取消", false, 38.0f);
        a6.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        c2.addView(a6);
        a2.addView(c2, T.a(T.a(), this, 18.0f));
        dialog.setContentView(scrollView);
        dialog.show();
        dialog.getWindow().setBackgroundDrawable(T.a(dev.duo.hookprobe.T.i, a(24.0f)));
        dialog.getWindow().setLayout(Math.min(getResources().getDisplayMetrics().widthPixels - a(32.0f), a(560.0f)), -2);
        XposedService c3 = L.c();
        final boolean z = (this.p == null || c3 == null) ? false : true;
        if (!z) {
            j2 = 0;
            i2 = 0;
            str = "";
        } else {
            String frameworkVersion = c3.getFrameworkVersion();
            int apiVersion = c3.getApiVersion();
            j2 = c3.getFrameworkVersionCode();
            i2 = apiVersion;
            str = frameworkVersion;
        }
        final Set<String> set = this.Y0;
        final String str2 = this.Z0;
        final Future<?> submit = dev.duo.hookprobe.c.submit(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.a(z, str, i2, j2, set, str2, dialog, a5, a4, a6);
            }
        });
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                dev.duo.hookprobe.MainActivity.this.b(submit, dialogInterface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(View view) {
        f(this.i1 == 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(CompoundButton compoundButton, boolean z) {
        o c0021o;
        if (this.b1 || (c0021o = this.p) == null) {
            return;
        }
        if (!c0021o.g(z)) {
            Toast.makeText(this, "内屏原生顶栏保存失败", 0).show();
            T();
        } else {
            Toast.makeText(this, "已保存，切回 App 或开合一下即生效；个别 App 要重新打开", 1).show();
            if (this.u != null) {
                S();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(View view) {
        L();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(CompoundButton compoundButton, boolean z) {
        if (this.b1 || this.p == null) {
            return;
        }
        m(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(View view) {
        startActivity(new Intent(this, (Class<?>) IosNcActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(View view) {
        if (this.W.isEnabled()) {
            this.W.performClick();
        }
    }

    static /* synthetic */ String a(Object obj) {
        String str = g + obj;
        g = str;
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(CompoundButton compoundButton, boolean z) {
        if (this.b1 || this.p == null) {
            return;
        }
        k(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(View view) {
        startActivity(new Intent(this, (Class<?>) dev.duo.hookprobe.BugCaptureActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(int i2) {
        a(true, i2 == 1);
    }

    private View m() {
        LinearLayout a2 = T.a((Context) this);
        T.a(a2, this.q.e ? 26.0f : 28.0f);
        a2.setPadding(a(18.0f), a(6.0f), a(18.0f), a(6.0f));
        LinearLayout c2 = T.c(this);
        c2.setMinimumHeight(a(76.0f));
        TextView a3 = T.a(this, 15.0f, T.b, 600);
        a3.setText("颜色配置");
        c2.addView(a3, T.b());
        final ImageView a4 = T.a(this, T.a(this, 5, T.d, 3.0f, false, 12.0f));
        c2.addView(a4, T.a(this, 12.0f, 12.0f));
        a2.addView(c2);
        final LinearLayout a5 = T.a((Context) this);
        a5.setPadding(0, 0, 0, a(12.0f));
        TextView a6 = T.a((Context) this, "导出全部 App 颜色配置", false, 48.0f);
        a6.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda78
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.c(view);
            }
        });
        a5.addView(a6, T.a());
        TextView a7 = T.a((Context) this, "导入颜色配置", false, 48.0f);
        a7.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda79
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.d(view);
            }
        });
        a5.addView(a7, T.a(T.a(), this, 8.0f));
        a5.setVisibility(8);
        a2.addView(a5);
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda80
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.a(a5, a4, view);
            }
        });
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(CompoundButton compoundButton, boolean z) {
        if (this.b1 || this.p == null) {
            return;
        }
        r(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(int i2) {
        if (!this.p.d(i2)) {
            Toast.makeText(this, "顶部留白保存失败", 0).show();
        }
        T();
        if (this.u != null) {
            S();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(CompoundButton compoundButton, boolean z) {
        o c0021o;
        if (this.b1 || (c0021o = this.p) == null) {
            return;
        }
        if (!c0021o.j(z)) {
            Toast.makeText(this, "外屏顶栏保存失败", 0).show();
            T();
            return;
        }
        T();
        Toast.makeText(this, "已保存，切回 App 后生效；个别 App 要重新打开", 1).show();
        if (this.u != null) {
            S();
        }
    }

    static String i(String str) {
        try {
            Process start = new ProcessBuilder("getprop", str).start();
            byte[] bArr = new byte[16];
            int read = start.getInputStream().read(bArr);
            start.waitFor();
            if (read <= 0) {
                return "";
            }
            return new String(bArr, 0, read).trim();
        } catch (Throwable th) {
            return "";
        }
    }

    private View n() {
        LinearLayout a2 = T.a((Context) this);
        T.a(a2, this.q.e ? 26.0f : 28.0f);
        a2.setPadding(a(18.0f), a(12.0f), a(16.0f), a(12.0f));
        LinearLayout c2 = T.c(this);
        LinearLayout a3 = T.a((Context) this);
        TextView a4 = T.a(this, 15.0f, T.b, 600);
        a4.setText("新应用默认开 Duo");
        a3.addView(a4);
        TextView a5 = T.a(this, 12.0f, T.d, J.m);
        a5.setText("只影响还没单独设过的应用。打开时会把它们打开；关掉后，已经打开的不变");
        a5.setPadding(0, a(3.0f), a(8.0f), 0);
        a3.addView(a5);
        c2.addView(a3, T.b());
        Switch r2 = new Switch(this);
        this.K0 = r2;
        T.a(r2);
        this.K0.setContentDescription("新应用默认开 Duo");
        this.K0.setEnabled(false);
        this.K0.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda34
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.c(compoundButton, z);
            }
        });
        c2.addView(this.K0);
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda35
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.MainActivity.this.e(view);
            }
        });
        a2.addView(c2);
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        int i2;
        o c0021o;
        String lowerCase = this.I0.getText().toString().trim().toLowerCase(Locale.ROOT);
        this.o.clear();
        ArrayList arrayList = new ArrayList();
        Iterator<g> it = this.n.iterator();
        while (true) {
            boolean z = false;
            if (it.hasNext()) {
                g next = it.next();
                if (!lowerCase.isEmpty()) {
                    String str = next.b;
                    Locale locale = Locale.ROOT;
                    if (!str.toLowerCase(locale).contains(lowerCase) && !next.a.toLowerCase(locale).contains(lowerCase)) {
                    }
                }
                if (!next.d && (c0021o = this.p) != null && c0021o.i(next.a)) {
                    z = true;
                }
                if (!next.d || ((i2 = this.N0) != 1 && i2 != 2)) {
                    int i3 = this.N0;
                    if (i3 != 1 || z) {
                        if (i3 != 3 || !z) {
                            if (i3 != 2 || (this.p != null && b(next.a))) {
                                (z ? arrayList : this.o).add(next);
                            }
                        }
                    }
                }
            } else {
                this.o.addAll(0, arrayList);
                this.O0.notifyDataSetChanged();
                U();
                return;
            }
        }
    }

    class e implements XposedService.OnScopeEventListener {
        e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(List list) {
            dev.duo.hookprobe.MainActivity.this.c1 = false;
            dev.duo.hookprobe.MainActivity.this.Y0 = new HashSet(dev.duo.hookprobe.MainActivity.this.Y0);
            dev.duo.hookprobe.MainActivity.this.Y0.addAll(list);
            String unused = MainActivity.g = MainActivity.g.replaceFirst("\\d+ 个等待 LSPosed 授权", dev.duo.hookprobe.MainActivity.this.B().size() + " 个等待 LSPosed 授权");
            dev.duo.hookprobe.MainActivity.this.R();
            dev.duo.hookprobe.MainActivity.this.o();
        }

        @Override // io.github.libxposed.service.XposedService.OnScopeEventListener
        public void onScopeRequestApproved(final List<String> list) {
            dev.duo.hookprobe.MainActivity.this.m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$e$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.e.this.a(list);
                }
            });
        }

        @Override // io.github.libxposed.service.XposedService.OnScopeEventListener
        public void onScopeRequestFailed(final String str) {
            dev.duo.hookprobe.MainActivity.this.m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$e$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.e.this.a(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str) {
            dev.duo.hookprobe.MainActivity.this.c1 = false;
            MainActivity.a((Object) ("\n作用域申请未完成：" + str));
            dev.duo.hookprobe.MainActivity.this.R();
        }
    }

    private View g() {
        LinearLayout a2 = T.a((Context) this);
        TextView g2 = g("UI");
        g2.setPadding(a(6.0f), 0, 0, a(10.0f));
        a2.addView(g2, new LinearLayout.LayoutParams(-1, a(56.0f)));
        T.e eVar = new T.e(this, new String[]{"细", "粗"}, null, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda57
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                dev.duo.hookprobe.MainActivity.this.e(i2);
            }
        });
        this.d0 = eVar;
        a2.addView(a("时钟线条", "圆环、时间和数字一起变粗或变细", eVar), T.a(new LinearLayout.LayoutParams(-1, a(64.0f)), this, 12.0f));
        T.e eVar2 = new T.e(this, new String[]{"下方", "顶部"}, null, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda58
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                dev.duo.hookprobe.MainActivity.this.f(i2);
            }
        });
        this.e0 = eVar2;
        a2.addView(a("电量百分比位置", "系统电量百分比打开时，显示在圆环下方或顶部", eVar2), T.a(new LinearLayout.LayoutParams(-1, a(72.0f)), this, 12.0f));
        a2.addView(j(), T.a(new LinearLayout.LayoutParams(-1, a(72.0f)), this, 12.0f));
        a2.addView(C(), T.a(new LinearLayout.LayoutParams(-1, a(64.0f)), this, 12.0f));
        a2.addView(Q(), T.a(new LinearLayout.LayoutParams(-1, a(72.0f)), this, 12.0f));
        a2.addView(Y(), T.a(T.a(), this, 12.0f));
        return a(a2);
    }

    private void k() {
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        ScrollView scrollView = new ScrollView(this);
        LinearLayout a2 = T.a((Context) this);
        a2.setPadding(a(22.0f), a(22.0f), a(22.0f), a(18.0f));
        scrollView.addView(a2);
        TextView a3 = T.a(this, 20.0f, T.b, 700);
        a3.setText("开合动画检查");
        a2.addView(a3);
        final TextView a4 = T.a(this, 13.0f, T.c, J.m);
        a4.setText("正在检查接口和传感器数据，请稍候…");
        a4.setLineSpacing(a(2.0f), 1.0f);
        a2.addView(a4, T.a(T.a(), this, 8.0f));
        final LinearLayout a5 = T.a((Context) this);
        a5.setBackground(T.a(T.g, a(16.0f)));
        a5.setPadding(a(14.0f), 0, a(14.0f), 0);
        a5.setVisibility(8);
        a2.addView(a5, T.a(T.a(), this, 14.0f));
        final LinearLayout c2 = T.c(this);
        c2.setGravity(8388629);
        final TextView a6 = T.a((Context) this, "取消", false, 38.0f);
        a6.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        c2.addView(a6);
        a2.addView(c2, T.a(T.a(), this, 18.0f));
        dialog.setContentView(scrollView);
        dialog.show();
        dialog.getWindow().setBackgroundDrawable(T.a(dev.duo.hookprobe.T.i, a(24.0f)));
        dialog.getWindow().setLayout(Math.min(getResources().getDisplayMetrics().widthPixels - a(32.0f), a(560.0f)), -2);
        final o c0021o = this.p;
        final boolean z = this.V0;
        final boolean z2 = this.U0;
        final boolean z3 = c0021o.m() && z && z2;
        final Set<String> set = this.Y0;
        final String str = this.Z0;
        final String str2 = this.X0[2];
        final Future<?> submit = dev.duo.hookprobe.c.submit(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.a(c0021o, z, z2, set, str, str2, dialog, a5, z3, a4, a6, c2);
            }
        });
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda19
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                submit.cancel(true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(float f2) {
        return T.a(this, f2);
    }

    private View d() {
        T.d dVar = this.q;
        this.x = dVar.a(dVar.e());
        LinearLayout a2 = T.a((Context) this);
        a2.setPadding(this.x, this.q.d(), this.x, a(12.0f));
        TextView g2 = g("App");
        if (!this.q.e) {
            g2.setPadding(a(6.0f), 0, 0, a(10.0f));
            a2.addView(g2, new LinearLayout.LayoutParams(-1, a(56.0f)));
        } else {
            g2.setTextSize(28.0f);
            g2.setGravity(16);
            a2.addView(g2, new LinearLayout.LayoutParams(-1, a(40.0f)));
        }
        LinearLayout c2 = T.c(this);
        T.a(c2, 23.0f);
        c2.setPadding(a(16.0f), 0, a(16.0f), 0);
        c2.addView(T.a(this, T.a(this, 8, T.d, 2.4f, false, 17.0f)), T.a(this, 17.0f, 17.0f));
        EditText editText = new EditText(this);
        this.I0 = editText;
        editText.setId(1004);
        this.I0.setHint("搜索 App 名称或包名");
        this.I0.setHintTextColor(T.d);
        this.I0.setTextColor(T.b);
        this.I0.setTextSize(15.0f);
        this.I0.setSingleLine(true);
        a aVar = null;
        this.I0.setBackground(null);
        this.I0.setPadding(a(10.0f), 0, 0, 0);
        this.I0.addTextChangedListener(new b());
        c2.addView(this.I0, new LinearLayout.LayoutParams(0, -1, 1.0f));
        LinearLayout a3 = T.a((Context) this);
        T.a(a3, 24.0f);
        a3.setPadding(a(18.0f), 0, a(14.0f), 0);
        LinearLayout c3 = T.c(this);
        c3.setMinimumHeight(a(58.0f));
        TextView a4 = T.a(this, 16.0f, T.b, 600);
        a4.setText("全部 App 开启 Duo");
        c3.addView(a4, T.b());
        Switch r13 = new Switch(this);
        this.J0 = r13;
        T.a(r13);
        this.J0.setContentDescription("全部 App 开启 Duo");
        this.J0.setEnabled(false);
        this.J0.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda87
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.a(compoundButton, z);
            }
        });
        c3.addView(this.J0);
        a3.addView(c3);
        TextView a5 = T.a(this, 12.0f, T.c, J.m);
        this.L0 = a5;
        a5.setLineSpacing(0.0f, 1.3f);
        this.L0.setPadding(0, 0, 0, a(14.0f));
        this.L0.setVisibility(8);
        a3.addView(this.L0);
        a2.addView(c2, T.a(new LinearLayout.LayoutParams(-1, a(46.0f)), this, 12.0f));
        a2.addView(a3, T.a(T.a(), this, 12.0f));
        a2.addView(n(), T.a(T.a(), this, 12.0f));
        a2.addView(E(), T.a(T.a(), this, 12.0f));
        a2.addView(w(), T.a(T.a(), this, 12.0f));
        T.e eVar = new T.e(this, e, null, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda88
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                dev.duo.hookprobe.MainActivity.this.d(i2);
            }
        });
        this.M0 = eVar;
        for (TextView textView : eVar.c) {
            textView.setTextSize(13.0f);
        }
        this.M0.a(0);
        a2.addView(this.M0.a, T.a(T.a(), this, 16.0f));
        c cVar = new c(this);
        this.P0 = cVar;
        cVar.setId(1002);
        this.P0.setDivider(null);
        this.P0.setSelector(R.color.transparent);
        this.P0.setClipToPadding(false);
        this.P0.setVerticalScrollBarEnabled(false);
        this.P0.setPadding(0, a(18.0f), 0, this.q.b());
        this.P0.addHeaderView(a2, null, false);
        f fVar = new f(this, aVar);
        this.O0 = fVar;
        this.P0.setAdapter((ListAdapter) fVar);
        this.P0.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda89
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i2, long j2) {
                dev.duo.hookprobe.MainActivity.this.a(adapterView, view, i2, j2);
            }
        });
        if (!this.t) {
            return this.P0;
        }
        LinearLayout c4 = T.c(this);
        c4.setGravity(48);
        c4.addView(this.P0, new LinearLayout.LayoutParams(a(316.0f), -1));
        this.u = new FrameLayout(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
        layoutParams.leftMargin = a(14.0f);
        c4.addView(this.u, layoutParams);
        return c4;
    }

    private ScrollView a(LinearLayout linearLayout) {
        ScrollView scrollView = new ScrollView(this);
        scrollView.setClipToPadding(false);
        scrollView.setVerticalScrollBarEnabled(false);
        T.d dVar = this.q;
        int a2 = dVar.a(dVar.e());
        linearLayout.setPadding(a2, this.q.d(), a2, this.q.b());
        scrollView.addView(linearLayout);
        return scrollView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(CompoundButton compoundButton, boolean z) {
        if (this.b1 || this.p == null || f) {
            return;
        }
        if (!this.p.d(z)) {
            Toast.makeText(this, "默认开关保存失败", 0).show();
            R();
            return;
        }
        if (z) {
            ArrayList arrayList = new ArrayList();
            for (g gVar : this.n) {
                if (!gVar.d && !P.k.contains(gVar.a) && this.p.m(gVar.a)) {
                    arrayList.add(gVar);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            a((List<g>) arrayList, true, false);
        }
    }

    private void f(boolean z) {
        this.i1 = z ? 1.0f : 0.0f;
        ValueAnimator valueAnimator = this.q0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.p0, this.i1);
        this.q0 = ofFloat;
        ofFloat.setDuration(Math.max(1, Math.round(Math.abs(this.i1 - r6) * 460.0f)));
        this.q0.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.0f, 1.0f));
        this.q0.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda75
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                dev.duo.hookprobe.MainActivity.this.a(valueAnimator2);
            }
        });
        this.q0.start();
    }

    private void i(final boolean z) {
        if (!this.p.e(z)) {
            Toast.makeText(this, "开合动画保存失败", 0).show();
            T();
        } else {
            Toast.makeText(this, "已保存，系统下次启动时用上", 0).show();
            T();
            dev.duo.hookprobe.a.execute(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MainActivity.this.d(z);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s(View view) {
        V();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(int i2) {
        a(false, i2 == 1);
    }

    private View h() {
        LinearLayout a2 = T.a((Context) this);
        TextView g2 = g("小功能");
        g2.setPadding(a(6.0f), 0, 0, a(10.0f));
        a2.addView(g2, new LinearLayout.LayoutParams(-1, a(56.0f)));
        a2.addView(b0(), T.a(T.a(), this, 12.0f));
        a2.addView(I(), T.a(T.a(), this, 12.0f));
        a2.addView(x(), T.a(T.a(), this, 12.0f));
        a2.addView(O());
        a2.addView(G(), T.a(T.a(), this, 12.0f));
        a2.addView(m(), T.a(T.a(), this, 12.0f));
        a2.addView(c0(), T.a(T.a(), this, 12.0f));
        a2.addView(q(), T.a(T.a(), this, 12.0f));
        a2.addView(W(), T.a(T.a(), this, 12.0f));
        a2.addView(p(), T.a(T.a(), this, 12.0f));
        return a(a2);
    }

    private LinearLayout a(LinearLayout linearLayout, float f2, float f3) {
        LinearLayout a2 = T.a((Context) this);
        T.a(a2, f2);
        a2.setPadding(a(f3), a(f3), a(f3), a(f3));
        linearLayout.addView(a2, T.a(T.a(), this, 12.0f));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(View view) {
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(int i2) {
        l(i2 == 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        n(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        ColorConfigActivity.a((Activity) this, (String) null, true);
    }

    private LinearLayout a(View view, View view2) {
        LinearLayout c2 = T.c(this);
        c2.setBaselineAligned(false);
        c2.addView(view, new LinearLayout.LayoutParams(0, -1, 1.0f));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
        layoutParams.leftMargin = a(14.0f);
        c2.addView(view2, layoutParams);
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(LinearLayout linearLayout, ImageView imageView, View view) {
        boolean z = linearLayout.getVisibility() != 0;
        linearLayout.setVisibility(z ? 0 : 8);
        imageView.setRotation(z ? 180.0f : 0.0f);
    }

    private void j(final String str) {
        final o c0021o = this.p;
        if (c0021o == null) {
            return;
        }
        dev.duo.hookprobe.b.execute(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.a(str, c0021o);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String c(int i2) {
        if (i2 == 0) {
            return "默认";
        }
        return (i2 < 0 ? "上移 " : "下移 ") + Math.abs(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(int i2) {
        boolean z;
        String str;
        if (this.p == null || f) {
            return;
        }
        if (i2 == 2) {
            z = this.p.m(true);
        } else {
            if (this.p.m(false)) {
                if (this.p.t(i2 == 1 ? "black" : "white")) {
                    z = true;
                }
            }
            z = false;
        }
        T();
        if (z) {
            str = "外屏侧栏已设为" + (i2 == 2 ? "跟随系统" : i2 == 1 ? "黑色" : "白色") + "，离开 MiDuo 后生效";
        } else {
            str = "侧栏颜色保存失败";
        }
        Toast.makeText(this, str, 0).show();
    }

    private void m(boolean z) {
        if (this.p.l(z)) {
            Toast.makeText(this, z ? "已开启取色按钮" : "已关闭取色按钮", 0).show();
        } else {
            Toast.makeText(this, "取色按钮保存失败", 0).show();
            T();
        }
    }

    private LinearLayout a(String str, String str2, int i2, int i3, TextView[] textViewArr, SeekBar[] seekBarArr, IntConsumer intConsumer) {
        LinearLayout u = u();
        LinearLayout i4 = i();
        TextView a2 = T.a(this, 16.0f, T.b, 600);
        a2.setText(str);
        i4.addView(a2, T.b());
        TextView a3 = T.a(this, 26.0f, T.b, 800);
        a3.setFontFeatureSettings("tnum");
        i4.addView(a3);
        TextView a4 = T.a(this, 14.0f, T.c, 600);
        a4.setText(str2);
        a4.setPadding(a(2.0f), a(8.0f), 0, 0);
        i4.addView(a4);
        dev.duo.hookprobe.u.addView(i4);
        SeekBar seekBar = new SeekBar(this);
        T.a(seekBar);
        seekBar.setMax(i3 - i2);
        seekBar.setEnabled(false);
        seekBar.setContentDescription(str);
        seekBar.setOnSeekBarChangeListener(new a(a3, i2, intConsumer));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, a(44.0f));
        layoutParams.leftMargin = -a(17.0f);
        layoutParams.rightMargin = -a(17.0f);
        dev.duo.hookprobe.u.addView(seekBar, layoutParams);
        textViewArr[0] = a3;
        seekBarArr[0] = seekBar;
        return u;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(String str) {
        this.P = false;
        if (isDestroyed() || isFinishing()) {
            return;
        }
        T();
        Toast.makeText(this, str, 1).show();
    }

    private void g(final boolean z) {
        dev.duo.hookprobe.c.execute(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.c(z);
            }
        });
    }

    private void h(boolean z) {
        if (this.p.c(z)) {
            Toast.makeText(this, z ? "已开启 5G 新样式" : "已关闭 5G 新样式", 0).show();
        } else {
            Toast.makeText(this, "5G 新样式保存失败", 0).show();
            T();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(View view) {
        n(1);
    }

    private void r(boolean z) {
        if (this.p.t(z) && this.p.B() == z) {
            Toast.makeText(this, (z ? "已保存为开启" : "已保存为关闭") + "，系统界面读到后生效", 0).show();
        } else {
            Toast.makeText(this, "工作台开关保存失败，仍是" + (this.p.B() ? "开启" : "关闭"), 0).show();
            T();
        }
    }

    private void p(boolean z) {
        String message;
        if (this.P) {
            return;
        }
        if (!z) {
            try {
                message = this.p.r(false) ? "已关闭帐篷钟面" : "帐篷钟面保存失败";
            } catch (IllegalStateException e2) {
                Log.e("DuoStandby", "Clock switch state unconfirmed", e2);
                message = e2.getMessage();
            }
            T();
            Toast.makeText(this, message, 0).show();
            return;
        }
        this.P = true;
        T();
        final o c0021o = this.p;
        dev.duo.hookprobe.c.execute(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda76
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.b(c0021o);
            }
        });
    }

    private void j(boolean z) {
        if (this.p.f(z)) {
            Toast.makeText(this, z ? "" : "", 0).show();
        } else {
            Toast.makeText(this, "轻折分屏保存失败", 0).show();
            T();
        }
    }

    private void n(boolean z) {
        if (this.p.p(z)) {
            Toast.makeText(this, z ? "" : "", 0).show();
        } else {
            Toast.makeText(this, "旋转建议按钮保存失败", 0).show();
            T();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(View view) {
        startActivity(new Intent(this, (Class<?>) dev.duo.hookprobe.RailCustomActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(View view) {
        if (this.Y.isEnabled()) {
            this.Y.performClick();
        }
    }

    private void q(boolean z) {
        if (this.p == null || f) {
            return;
        }
        if (!this.p.s(z)) {
            Toast.makeText(this, "时钟线条保存失败", 0).show();
        }
        T();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(LinearLayout linearLayout, ImageView imageView, View view) {
        boolean z = linearLayout.getVisibility() != 0;
        linearLayout.setVisibility(z ? 0 : 8);
        imageView.setRotation(z ? 180.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(CompoundButton compoundButton, boolean z) {
        if (this.b1 || this.p == null) {
            return;
        }
        h(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(CompoundButton compoundButton, boolean z) {
        if (this.b1 || this.p == null) {
            return;
        }
        j(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        if (this.b0.isEnabled()) {
            this.b0.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(View view) {
        if (this.K0.isEnabled()) {
            this.K0.performClick();
        }
    }

    private void b(float f2) {
        this.p0 = f2;
        int a2 = a(10.0f) * 2;
        int width = this.k0.getWidth() - a2;
        if (width <= 0) {
            return;
        }
        int a3 = (width - a(this.q.e ? 14.0f : 12.0f)) / 2;
        int a4 = a(76.0f);
        this.m0.measure(View.MeasureSpec.makeMeasureSpec(a3, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        int max = Math.max(a4, this.m0.getMeasuredHeight());
        int round = a4 + Math.round((max - a4) * f2);
        int i2 = width - a3;
        int round2 = width - Math.round(i2 * f2);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.m0.getLayoutParams();
        layoutParams.width = a3;
        layoutParams.height = max;
        layoutParams.leftMargin = i2;
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.l0.getLayoutParams();
        layoutParams2.width = round2;
        layoutParams2.height = round;
        this.m0.setTranslationX((round2 + r2) - i2);
        this.m0.setAlpha(Math.min(1.0f, f2 * 2.0f));
        this.k0.getLayoutParams().height = round + a2;
        this.k0.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(int i2) {
        q(i2 == 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(String str) {
        Toast.makeText(this, str, 1).show();
        R();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(boolean z) {
        XposedService c2 = L.c();
        if (c2 != null) {
            try {
                this.Y0 = new HashSet(c2.getScope());
                this.Z0 = null;
            } catch (Throwable th) {
                this.Z0 = String.valueOf(th);
            }
        }
        g += (this.Z0 != null ? " · 作用域读取失败，未刷新" : " · " + B().size() + " 个等待 LSPosed 授权");
        T();
        R();
        o();
        if (z) {
            L();
        }
    }

    private void c() {
        final EditText editText = new EditText(this);
        editText.setHint("MD-XXXX-XXXX-XXXX-XXXX");
        editText.setSingleLine(true);
        new AlertDialog.Builder(this).setTitle("").setMessage("").setView(editText).setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                dev.duo.hookprobe.MainActivity.this.a(editText, dialogInterface, i2);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, View view) {
        l(i2);
    }

    private View a(String str, String str2, T.e eVar) {
        LinearLayout c2 = T.c(this);
        T.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        LinearLayout a2 = T.a((Context) this);
        TextView a3 = T.a(this, 15.0f, T.b, 600);
        a3.setText(str);
        a2.addView(a3);
        TextView a4 = T.a(this, 12.0f, T.d, J.m);
        a4.setText(str2);
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, T.b());
        eVar.a(false);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(a(124.0f), -2);
        layoutParams.leftMargin = a(12.0f);
        c2.addView(eVar.a, layoutParams);
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(boolean z) {
        String str;
        final String str2;
        o c0021o = this.p;
        boolean z2 = c0021o != null && c0021o.h(z) && c0021o.m() == z;
        if (!z2) {
            str = "";
        } else {
            try {
                Thread.sleep(1500L);
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
            }
            String i2 = i("debug.duo.master");
            if ((z ? "1" : "0").equals(i2)) {
                str = "系统框架已读取；";
            } else {
                StringBuilder append = new StringBuilder().append("系统框架还没读到（当前 ");
                if (i2.isEmpty()) {
                    i2 = "无记录";
                }
                str = append.append(i2).append("），以首页状态为准；").toString();
            }
        }
        if (z2) {
            str2 = (z ? "已保存为打开。" : "已保存为关闭。") + str + "桌面会重开一次，布局是否换好以桌面实际显示为准";
        } else {
            str2 = "总开关保存失败，什么都没有改";
        }
        this.m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.e(str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(Collator collator, g gVar, g gVar2) {
        return collator.compare(gVar.b, gVar2.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(int i2) {
        if (this.p == null || f) {
            return;
        }
        if (!this.p.a(i2)) {
            Toast.makeText(this, "轻折灵敏度保存失败", 0).show();
        }
        T();
    }

    private Drawable b(int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(i2);
        return gradientDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        if (i4 - i2 != i8 - i6) {
            view.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MainActivity.this.y();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        b(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private TextView a(LinearLayout linearLayout, String str, float f2) {
        LinearLayout a2 = T.a((Context) this);
        a2.setBackground(T.a(T.g, a(16.0f)));
        a2.setPadding(a(12.0f), a(10.0f), a(12.0f), a(10.0f));
        TextView a3 = T.a(this, 11.0f, T.c, J.m);
        a3.setText(str);
        a2.addView(a3);
        TextView a4 = T.a(this, 15.0f, T.b, 700);
        a4.setPadding(0, a(4.0f), 0, 0);
        a2.addView(a4);
        LinearLayout.LayoutParams b2 = T.b();
        b2.leftMargin = a(f2);
        linearLayout.addView(a2, b2);
        return a4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(DialogInterface dialogInterface, int i2) {
        R();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(DialogInterface dialogInterface) {
        R();
    }

    private void c(r.a aVar) {
        this.F0.setText(aVar.b);
        this.F0.setTextColor(a(aVar.c, T.b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Future future, DialogInterface dialogInterface) {
        future.cancel(true);
        if (isDestroyed()) {
            return;
        }
        R();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i2) {
        o c0021o = this.p;
        if (c0021o == null) {
            return;
        }
        if (!c0021o.b(i2)) {
            Toast.makeText(this, "全局默认保存失败", 0).show();
            return;
        }
        T();
        o();
        Toast.makeText(this, "已设为 " + i2 + "px，App 下次打开时生效", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(o c0021o) {
        final String str;
        try {
            try {
                r();
                try {
                    str = c0021o.r(true) ? "已开启帐篷钟面和锁屏显示权限" : "帐篷钟面保存失败";
                } catch (IllegalStateException e2) {
                    Log.e("DuoStandby", "Clock switch state unconfirmed", e2);
                    str = e2.getMessage();
                }
            } catch (InterruptedException e3) {
                Thread.currentThread().interrupt();
                Log.e("DuoStandby", "Lockscreen permission request interrupted", e3);
                str = "开启已中断，请重试";
            }
        } catch (IOException | RuntimeException e4) {
            Log.e("DuoStandby", "Lockscreen permission request failed", e4);
            str = "未能开启帐篷钟面，请检查 Root 授权或锁屏显示权限";
        }
        this.m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda74
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.f(str);
            }
        });
    }

    private void l(boolean z) {
        if (this.p == null || f) {
            return;
        }
        if (!this.p.k(z)) {
            Toast.makeText(this, "电量百分比位置保存失败", 0).show();
        }
        T();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(CompoundButton compoundButton, boolean z) {
        if (this.b1 || this.p == null || f) {
            return;
        }
        a((List<g>) new ArrayList(this.n), z, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AdapterView adapterView, View view, int i2, long j2) {
        g gVar = (g) adapterView.getItemAtPosition(i2);
        if (gVar == null) {
            return;
        }
        if (this.t) {
            this.v = gVar.a;
            this.w = gVar.b;
            S();
            return;
        }
        startActivity(new Intent(this, (Class<?>) dev.duo.hookprobe.DetailActivity.class).putExtra("pkg", gVar.a).putExtra("label", gVar.b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(LinearLayout linearLayout, ImageView imageView, View view) {
        boolean z = linearLayout.getVisibility() != 0;
        linearLayout.setVisibility(z ? 0 : 8);
        imageView.setRotation(z ? 180.0f : 0.0f);
    }

    private View a(int i2, String str) {
        LinearLayout a2 = T.a((Context) this);
        LinearLayout c2 = T.c(this);
        TextView a3 = T.a(this, 13.0f, T.c, 600);
        a3.setText(str);
        c2.addView(a3, T.b());
        TextView a4 = T.a(this, 13.0f, T.d, 500);
        c2.addView(a4);
        a2.addView(c2);
        SeekBar seekBar = new SeekBar(this);
        T.a(seekBar);
        seekBar.setMax(120);
        seekBar.setEnabled(false);
        a2.addView(seekBar, T.a(T.a(), this, 4.0f));
        this.g0[i2] = seekBar;
        this.h0[i2] = a4;
        seekBar.setOnSeekBarChangeListener(new d(a4, i2));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(r.a aVar) {
        if (isDestroyed()) {
            return;
        }
        c(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Dialog dialog, View view) {
        dialog.dismiss();
        i(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        return this.p.d(str) || this.p.b(str, "inner") || this.p.b(str, "outer") || this.p.p(str) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(h hVar, View view) {
        ((ClipboardManager) getSystemService(ClipboardManager.class)).setPrimaryClip(ClipData.newPlainText("MiDuo 授权码", hVar.d));
        this.T0 = true;
        K();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(Collator collator, g gVar, g gVar2) {
        return collator.compare(gVar.b, gVar2.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(i iVar, o c0021o, List list) {
        if (isDestroyed()) {
            return;
        }
        a(iVar);
        if (f) {
            a0();
        }
        if (c0021o == null || f) {
            return;
        }
        if (c0021o.a() || c0021o.d()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                g gVar = (g) it.next();
                if (!gVar.d && !P.k.contains(gVar.a) && c0021o.m(gVar.a)) {
                    arrayList.add(gVar);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            a((List<g>) arrayList, true, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(int i2) {
        this.N0 = i2;
        this.M0.a(i2);
        o();
    }

    private void a(i iVar) {
        this.e1 = iVar;
        this.n.clear();
        this.n.addAll(iVar.a);
        this.p = iVar.b;
        this.V0 = iVar.f;
        this.a1 = iVar.h;
        this.Y0 = iVar.d;
        this.Z0 = iVar.e;
        this.W0 = iVar.g;
        String[] strArr = iVar.i;
        this.X0 = strArr;
        this.B0.setText(strArr[0]);
        boolean equals = dev.duo.hookprobe.h.equals(this.X0[1]);
        boolean equals2 = "未安装".equals(this.X0[2]);
        this.C0.setText(equals ? this.X0[1] : this.X0[1] + " · 需 " + h);
        this.C0.setTextColor(equals ? T.b : -2543579);
        this.D0.setText(this.X0[2]);
        this.D0.setTextColor(equals2 ? -2543579 : T.b);
        this.G0.setText("小米桌面的版本与 MiDuo 适配的版本不同，桌面相关功能可能出错。请用下方 Bug 抓取导出报告，再到“授权”页联系作者。");
        this.G0.setVisibility(equals ? 8 : 0);
        this.E0.setText(this.X0[3]);
        c(iVar.j);
        h hVar = iVar.c;
        if (hVar != null) {
            a(hVar);
        }
        T();
        R();
        o();
        J();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        ColorConfigActivity.a((Activity) this, (String) null, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(String str) {
        Toast.makeText(this, str, 1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(boolean z) {
        final r.a a2 = r.a(z);
        this.m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.b(a2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final o c0021o) {
        try {
            final h c2 = c(c0021o);
            this.l.set(false);
            this.m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda48
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MainActivity.this.a(c0021o, c2);
                }
            });
        } catch (Throwable th) {
            this.l.set(false);
            final h hVar = null;
            this.m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda48
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MainActivity.this.a(c0021o, hVar);
                }
            });
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(o c0021o, h hVar) {
        if (isDestroyed()) {
            return;
        }
        if (this.p == c0021o && hVar != null) {
            a(hVar);
            R();
        }
        if (this.j1 || this.p != c0021o) {
            this.j1 = false;
            J();
        }
    }

    private static String a(PackageManager packageManager, String str) {
        try {
            String str2 = packageManager.getPackageInfo(str, 0).versionName;
            Matcher matcher = Pattern.compile("\\d+(\\.\\d+){2,}").matcher(str2 == null ? "" : str2);
            return matcher.find() ? matcher.group() : String.valueOf(str2);
        } catch (PackageManager.NameNotFoundException e2) {
            return "未安装";
        }
    }

    private void a(h hVar) {
        MainActivity mainActivity;
        String str;
        this.S0 = hVar;
        this.U0 = hVar == null || hVar.c;
        this.y.removeAllViews();
        if (hVar == null) {
            mainActivity = this;
        } else if (!hVar.b) {
            mainActivity = this;
        } else {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setColor(T.n);
            FrameLayout frameLayout = new FrameLayout(this);
            frameLayout.setBackground(gradientDrawable);
            mainActivity = this;
            frameLayout.addView(T.a(this, T.a(mainActivity, 6, T.o, 3.0f, false, 12.0f)), new FrameLayout.LayoutParams(a(12.0f), a(12.0f), 17));
            LinearLayout.LayoutParams a2 = T.a(this, 18.0f, 18.0f);
            a2.rightMargin = a(6.0f);
            mainActivity.y.addView(frameLayout, a2);
        }
        TextView a3 = T.a(this, 13.0f, T.b, 600);
        if (hVar == null || hVar.a) {
            str = "";
        } else if (hVar.b) {
            str = "已买断";
        } else {
            str = hVar.c ? "试用 " + hVar.e + " 分钟" : "";
        }
        a3.setText(str);
        if (hVar == null || !hVar.b) {
            a3.setPadding(a(5.0f), 0, 0, 0);
        }
        mainActivity.y.addView(a3);
        K();
    }

    private void a(final TextView textView) {
        final o c0021o = this.p;
        if (c0021o == null) {
            return;
        }
        textView.setEnabled(false);
        dev.duo.hookprobe.b.execute(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda72
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.a(c0021o, textView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(TextView textView, String str, String str2) {
        textView.setEnabled(true);
        Toast.makeText(this, str, 1).show();
        if (str2 != null) {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str2)));
        } else {
            dev.duo.hookprobe.a.execute(new MainActivity$$ExternalSyntheticLambda13(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(EditText editText, DialogInterface dialogInterface, int i2) {
        j(editText.getText().toString());
    }

    private void a(boolean z) {
        if (z) {
            this.b1 = true;
            this.C.setChecked(false);
            this.b1 = false;
            l();
            return;
        }
        new AlertDialog.Builder(this).setTitle("关闭 MiDuo？").setMessage("关闭后变回小米原装：桌面会自动重开一次并换成原装布局（你的 4×6 布局另存，打开时原样回来）；已打开的 App 需要重开；状态栏在开合或转屏一次后恢复。在 LSPosed 里停用 MiDuo 之前，请先关闭此开关。").setPositiveButton("关闭", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda53
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                dev.duo.hookprobe.MainActivity.this.a(dialogInterface, i2);
            }
        }).setNegativeButton("取消", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda54
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                dev.duo.hookprobe.MainActivity.this.b(dialogInterface, i2);
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda55
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                dev.duo.hookprobe.MainActivity.this.b(dialogInterface);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface, int i2) {
        g(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, String str, int i2, long j2, Set set, String str2, final Dialog dialog, final LinearLayout linearLayout, final TextView textView, final TextView textView2) {
        final List<C.a> a2 = C.a(this, z, str, i2, j2, set, str2);
        this.m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.a(dialog, a2, linearLayout, textView, textView2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Dialog dialog, List list, LinearLayout linearLayout, TextView textView, TextView textView2) {
        if (isDestroyed() || !dialog.isShowing()) {
            return;
        }
        Iterator it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            C.a aVar = (C.a) it.next();
            if (aVar.c == 2) {
                i2++;
            }
            if (linearLayout.getChildCount() > 0) {
                View view = new View(this);
                view.setBackgroundColor(T.h);
                linearLayout.addView(view, new LinearLayout.LayoutParams(-1, Math.max(1, a(0.5f))));
            }
            linearLayout.addView(a(aVar));
        }
        linearLayout.setVisibility(0);
        if (i2 > 0) {
            textView.setText("有 " + i2 + " 项没通过，没有打开。按红字处理好后再点一次开关。");
            textView.setTextColor(-2543579);
            textView2.setText("知道了");
            T.a(textView2, true);
            return;
        }
        Iterator it2 = list.iterator();
        int i3 = 0;
        while (it2.hasNext()) {
            if (((C.a) it2.next()).c == 1) {
                i3++;
            }
        }
        textView.setText(i3 == 0 ? "全部通过，正在打开。" : "必需项全部通过，正在打开；黄色的 " + i3 + " 项只影响对应功能。");
        g(true);
        if (i3 > 0) {
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda40
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    dev.duo.hookprobe.MainActivity.this.a(dialogInterface);
                }
            });
            textView2.setText("知道了");
            T.a(textView2, true);
        } else {
            textView2.setEnabled(false);
            dialog.setOnDismissListener(null);
            dialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface) {
        if (isDestroyed()) {
            return;
        }
        R();
    }

    private View a(C.a aVar) {
        int i2 = aVar.c;
        boolean z = i2 == 2;
        boolean z2 = i2 == 1;
        LinearLayout c2 = T.c(this);
        c2.setGravity(48);
        c2.setPadding(0, a(12.0f), 0, a(12.0f));
        View view = new View(this);
        view.setBackground(b(z ? -2543579 : z2 ? -878336 : -13326253));
        LinearLayout.LayoutParams a2 = T.a(this, 7.0f, 7.0f);
        a2.topMargin = a(5.0f);
        a2.rightMargin = a(12.0f);
        c2.addView(view, a2);
        LinearLayout a3 = T.a((Context) this);
        TextView a4 = T.a(this, 14.0f, z ? -2543579 : T.b, 500);
        a4.setText(aVar.a);
        a3.addView(a4);
        TextView a5 = T.a(this, 12.0f, z ? -2543579 : T.d, J.m);
        a5.setText(aVar.b);
        a5.setLineSpacing(a(2.0f), 1.0f);
        a3.addView(a5, T.a(T.a(), this, 4.0f));
        c2.addView(a3, T.b());
        return c2;
    }

    private void a(final List<g> list, final boolean z, final boolean z2) {
        if (f || this.p == null) {
            return;
        }
        f = true;
        g = "正在" + (z ? "开启" : "关闭") + " 0/" + list.size();
        R();
        a0();
        final o c0021o = this.p;
        dev.duo.hookprobe.a.execute(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda56
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.a(z2, c0021o, z, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, o c0021o, final boolean z2, List list) {
        if (z) {
            try {
                if (!c0021o.b(z2)) {
                    throw new IllegalStateException("总开关保存失败");
                }
            } catch (Throwable th) {
                try {
                    g = "批量操作失败：" + th.getMessage();
                    return;
                } finally {
                    f = false;
                    this.m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda25
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.hookprobe.MainActivity.this.e(z2);
                        }
                    });
                }
            }
        }
        String str = "";
        String str2 = "";
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < list.size()) {
            g gVar = (g) list.get(i2);
            i2++;
            g = "正在" + (z2 ? "开启" : "关闭") + " " + i2 + "/" + list.size() + " · " + gVar.b;
            try {
            } catch (Throwable th2) {
                i4++;
                if (str2.isEmpty()) {
                    str2 = gVar.b + "：" + th2.getMessage();
                }
            }
            if (!c0021o.d(gVar.a, z2)) {
                throw new IllegalStateException("启用状态保存失败");
            }
            i3++;
        }
        StringBuilder append = new StringBuilder().append("已").append(z2 ? "开启 " : "关闭 ").append(i3).append(" 个 · 跳过 ").append(this.a1).append(" 个组件 · ").append(i4).append(" 个应用失败");
        if (!str2.isEmpty()) {
            str = "\n" + str2;
        }
        g = append.append(str).toString();
        g += "\n现有窗口由系统服务自动刷新；顶部留白在应用进程下次启动时生效";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(o c0021o, boolean z, boolean z2, Set set, String str, String str2, final Dialog dialog, final LinearLayout linearLayout, final boolean z3, final TextView textView, final TextView textView2, final LinearLayout linearLayout2) {
        final List<r.a> a2 = r.a(this, c0021o, z, z2, set, str, str2);
        this.m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda66
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.a(dialog, a2, linearLayout, z3, textView, textView2, linearLayout2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final Dialog dialog, List list, LinearLayout linearLayout, boolean z, TextView textView, TextView textView2, LinearLayout linearLayout2) {
        String str;
        if (isDestroyed() || !dialog.isShowing()) {
            return;
        }
        Iterator it = list.iterator();
        int i2 = 0;
        int i3 = 0;
        while (it.hasNext()) {
            r.a aVar = (r.a) it.next();
            int i4 = aVar.c;
            if (i4 == 2) {
                i2++;
            }
            if (i4 == 1) {
                i3++;
            }
            if (linearLayout.getChildCount() > 0) {
                View view = new View(this);
                view.setBackgroundColor(T.h);
                linearLayout.addView(view, new LinearLayout.LayoutParams(-1, Math.max(1, a(0.5f))));
            }
            linearLayout.addView(a(aVar));
        }
        linearLayout.setVisibility(0);
        if (!z) {
            textView.setText("MiDuo 总开关没有运行，暂时不能打开开合动画。");
            textView2.setText("知道了");
            T.a(textView2, true);
            return;
        }
        if (i2 > 0) {
            str = "有 " + i2 + " 项没通过。仍可打开，但开合动画可能无法正常运行；打开后系统下次启动时用上。";
        } else if (i3 > 0) {
            str = "可以打开，有 " + i3 + " 项需要留意。打开后系统下次启动时用上。";
        } else {
            str = "全部通过。打开后系统下次启动时用上。";
        }
        textView.setText(str);
        View a2 = T.a((Context) this, (i2 > 0 || i3 > 0) ? "仍然打开" : "打开", true, 38.0f);
        a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                dev.duo.hookprobe.MainActivity.this.b(dialog, view2);
            }
        });
        LinearLayout.LayoutParams c2 = T.c();
        c2.leftMargin = a(10.0f);
        linearLayout2.addView(a2, c2);
    }

    private View a(r.a aVar) {
        LinearLayout c2 = T.c(this);
        c2.setGravity(48);
        c2.setPadding(0, a(12.0f), 0, a(12.0f));
        View view = new View(this);
        view.setBackground(b(a(aVar.c, -13326253)));
        LinearLayout.LayoutParams a2 = T.a(this, 7.0f, 7.0f);
        a2.topMargin = a(5.0f);
        a2.rightMargin = a(12.0f);
        c2.addView(view, a2);
        LinearLayout a3 = T.a((Context) this);
        TextView a4 = T.a(this, 14.0f, T.b, 500);
        a4.setText(aVar.a);
        a3.addView(a4);
        TextView a5 = T.a(this, 12.0f, aVar.c == 2 ? -2543579 : T.d, J.m);
        a5.setText(aVar.b);
        a5.setLineSpacing(a(2.0f), 1.0f);
        a3.addView(a5, T.a(T.a(), this, 4.0f));
        c2.addView(a3, T.b());
        return c2;
    }

    private void a(boolean z, boolean z2) {
        if (this.p == null || f) {
            return;
        }
        if (!this.p.a(z, z2)) {
            Toast.makeText(this, "旋转按钮位置保存失败", 0).show();
        }
        T();
    }
}
