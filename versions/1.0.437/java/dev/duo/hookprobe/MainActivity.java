package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class MainActivity extends android.app.Activity {
    static final java.util.concurrent.ExecutorService a = java.util.concurrent.Executors.newSingleThreadExecutor();
    static final java.util.concurrent.ExecutorService b = java.util.concurrent.Executors.newSingleThreadExecutor();
    static final java.util.concurrent.ExecutorService c = java.util.concurrent.Executors.newSingleThreadExecutor();
    static final java.util.Set<java.lang.String> d;
    private static final java.lang.String[] e;
    private static volatile boolean f = false;
    private static volatile java.lang.String g = null;
    private static final java.lang.String h = "8.01.02.6325";
    private static final int i = 316;
    private static final java.lang.String j = "全屏 App 轻折放平进入双分屏，双分屏再轻折放平，原有分屏收到左边、桌面选第三个 App 进入三分屏；关闭后全部恢复小米原生";
    private static final int k = 10;
    private android.widget.TextView A;
    private android.widget.ImageView A0;
    private android.widget.TextView B;
    private android.widget.LinearLayout B0;
    private android.widget.Switch C;
    private android.widget.TextView C0;
    private android.widget.TextView D;
    private android.widget.TextView D0;
    private android.widget.TextView E;
    private android.widget.TextView E0;
    private android.widget.TextView F;
    private android.widget.TextView F0;
    private android.widget.TextView G;
    private android.widget.TextView G0;
    private android.widget.SeekBar H;
    private android.widget.TextView H0;
    private android.widget.TextView I;
    private android.widget.TextView I0;
    private android.widget.SeekBar J;
    private android.widget.TextView J0;
    private android.widget.TextView K0;
    private dev.duo.hookprobe.U.e L;
    private android.widget.EditText L0;
    private android.widget.TextView M;
    private android.widget.Switch M0;
    private android.widget.TextView N;
    private android.widget.Switch N0;
    private android.widget.TextView O;
    private android.widget.TextView O0;
    private android.widget.TextView P;
    private dev.duo.hookprobe.U.e P0;
    private android.widget.Switch Q;
    private int Q0;
    private android.widget.TextView R;
    private dev.duo.hookprobe.MainActivity.f R0;
    private boolean S;
    private android.widget.ListView S0;
    private android.widget.Switch T;
    private android.widget.LinearLayout T0;
    private android.widget.Switch U;
    private android.view.View U0;
    private android.widget.LinearLayout V;
    private dev.duo.hookprobe.MainActivity.h V0;
    private android.widget.TextView W;
    private boolean W0;
    private android.widget.SeekBar X;
    private boolean X0;
    private android.widget.Switch Y;
    private boolean Y0;
    private android.widget.Switch Z;
    private java.lang.String Z0;
    private android.widget.Switch a0;
    private java.lang.String[] a1;
    private android.widget.Switch b0;
    private java.util.Set<java.lang.String> b1;
    private android.widget.Switch c0;
    private java.lang.String c1;
    private android.widget.Switch d0;
    private int d1;
    private android.widget.Switch e0;
    private boolean e1;
    private android.widget.Switch f0;
    private boolean f1;
    private dev.duo.hookprobe.U.e g0;
    private final java.lang.Runnable g1;
    private dev.duo.hookprobe.U.e h0;
    private dev.duo.hookprobe.MainActivity.i h1;
    private dev.duo.hookprobe.U.e i0;
    private boolean i1;
    private final android.widget.SeekBar[] j0;
    private android.widget.TextView j1;
    private final android.widget.TextView[] k0;
    private java.lang.String k1;
    private final java.lang.Runnable[] l0;
    private float l1;
    private android.widget.TextView m0;
    private boolean m1;
    private android.widget.FrameLayout n0;
    private android.view.View o0;
    private dev.duo.hookprobe.C0026o p;
    private android.view.View p0;
    private dev.duo.hookprobe.U.d q;
    private dev.duo.hookprobe.U.e q0;
    private dev.duo.hookprobe.U.e r0;
    private float s0;
    private boolean t;
    private android.animation.ValueAnimator t0;
    private android.widget.FrameLayout u;
    private android.view.View u0;
    private java.lang.String v;
    private android.widget.TextView v0;
    private java.lang.String w;
    private android.widget.TextView w0;
    private int x;
    private android.widget.TextView x0;
    private android.widget.LinearLayout y;
    private android.widget.TextView y0;
    private android.widget.FrameLayout z;
    private android.widget.TextView z0;
    private final java.util.concurrent.atomic.AtomicBoolean l = new java.util.concurrent.atomic.AtomicBoolean();
    private final android.os.Handler m = new android.os.Handler(android.os.Looper.getMainLooper());
    private final java.util.List<dev.duo.hookprobe.MainActivity.g> n = new java.util.ArrayList();
    private final java.util.List<dev.duo.hookprobe.MainActivity.g> o = new java.util.ArrayList();
    private final android.view.View[] r = new android.view.View[5];
    private int s = 0;
    private final java.util.List<android.widget.TextView> K = new java.util.ArrayList();

    class a implements android.widget.SeekBar.OnSeekBarChangeListener {
        final /* synthetic */ android.widget.TextView a;
        final /* synthetic */ int b;
        final /* synthetic */ java.util.function.IntConsumer c;

        a(android.widget.TextView textView, int i, java.util.function.IntConsumer intConsumer) {
            this.a = textView;
            this.b = i;
            this.c = intConsumer;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(android.widget.SeekBar seekBar, int i, boolean z) {
            this.a.setText(java.lang.String.valueOf(i + this.b));
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(android.widget.SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(android.widget.SeekBar seekBar) {
            this.c.accept(seekBar.getProgress() + this.b);
        }
    }

    class b implements android.text.TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(android.text.Editable editable) {
            dev.duo.hookprobe.MainActivity.this.o();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(java.lang.CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(java.lang.CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    class c extends android.widget.ListView {
        c(android.content.Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i, int i2) {
            setSelectionFromTop(i, i2);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            final int firstVisiblePosition = getFirstVisiblePosition();
            android.view.View childAt = getChildAt(0);
            final int top = childAt != null ? childAt.getTop() : 0;
            super.onSizeChanged(i, i2, i3, i4);
            if (dev.duo.hookprobe.MainActivity.this.L0 == null || !dev.duo.hookprobe.MainActivity.this.L0.hasFocus()) {
                return;
            }
            if (firstVisiblePosition == 0) {
                android.view.View view = (android.view.View) dev.duo.hookprobe.MainActivity.this.L0.getParent();
                top = java.lang.Math.max(java.lang.Math.min(top, (i2 - getPaddingBottom()) - view.getBottom()), getPaddingTop() - view.getTop());
            }
            post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$c$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MainActivity.c.this.a(firstVisiblePosition, top);
                }
            });
        }

        @Override // android.widget.ListView, android.view.ViewGroup, android.view.ViewParent
        public boolean requestChildRectangleOnScreen(android.view.View view, android.graphics.Rect rect, boolean z) {
            if (dev.duo.hookprobe.MainActivity.this.L0 == null || !dev.duo.hookprobe.MainActivity.this.L0.hasFocus()) {
                return super.requestChildRectangleOnScreen(view, rect, z);
            }
            return false;
        }
    }

    class d implements android.widget.SeekBar.OnSeekBarChangeListener {
        final /* synthetic */ android.widget.TextView a;
        final /* synthetic */ int b;

        d(android.widget.TextView textView, int i) {
            this.a = textView;
            this.b = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i, int i2) {
            dev.duo.hookprobe.MainActivity.this.l0[i] = null;
            if (dev.duo.hookprobe.MainActivity.this.p.a(i, i2)) {
                return;
            }
            android.widget.Toast.makeText(dev.duo.hookprobe.MainActivity.this, "时钟模块位置保存失败", 0).show();
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(android.widget.SeekBar seekBar, int i, boolean z) {
            final int i2 = i - 60;
            this.a.setText(dev.duo.hookprobe.MainActivity.c(i2));
            dev.duo.hookprobe.MainActivity.this.Z();
            if (!z || dev.duo.hookprobe.MainActivity.this.p == null || dev.duo.hookprobe.MainActivity.f) {
                return;
            }
            if (dev.duo.hookprobe.MainActivity.this.l0[this.b] != null) {
                dev.duo.hookprobe.MainActivity.this.m.removeCallbacks(dev.duo.hookprobe.MainActivity.this.l0[this.b]);
            }
            java.lang.Runnable[] runnableArr = dev.duo.hookprobe.MainActivity.this.l0;
            final int i3 = this.b;
            runnableArr[i3] = new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$d$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MainActivity.d.this.a(i3, i2);
                }
            };
            dev.duo.hookprobe.MainActivity.this.m.postDelayed(dev.duo.hookprobe.MainActivity.this.l0[this.b], 80L);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(android.widget.SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(android.widget.SeekBar seekBar) {
        }
    }

    private final class f extends android.widget.BaseAdapter {
        private f() {
        }

        private java.lang.String a(java.lang.String str, boolean z) {
            if (!z) {
                return "未开启 Duo";
            }
            java.lang.String str2 = (dev.duo.hookprobe.MainActivity.this.p.b(str, "inner") || dev.duo.hookprobe.MainActivity.this.p.b(str, "outer")) ? dev.duo.hookprobe.MainActivity.this.p.d(str, "inner") == dev.duo.hookprobe.MainActivity.this.p.d(str, "outer") ? "高度 " + dev.duo.hookprobe.MainActivity.this.p.d(str, "inner") + "px" : "内屏 " + dev.duo.hookprobe.MainActivity.this.p.d(str, "inner") + " / 外屏 " + dev.duo.hookprobe.MainActivity.this.p.d(str, "outer") : "高度跟随全局";
            java.lang.String n = dev.duo.hookprobe.MainActivity.this.p.n(str);
            return str2 + " · " + (n == null ? "侧栏跟随全局" : "black".equals(n) ? "侧栏黑色" : "侧栏白色") + (((dev.duo.hookprobe.P.o.contains(str) || dev.duo.hookprobe.P.p.contains(str)) && dev.duo.hookprobe.MainActivity.this.c1 == null && !dev.duo.hookprobe.MainActivity.this.b1.contains(str)) ? " · 等待授权" : "");
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return dev.duo.hookprobe.MainActivity.this.o.size();
        }

        @Override // android.widget.Adapter
        public java.lang.Object getItem(int i) {
            return dev.duo.hookprobe.MainActivity.this.o.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public android.view.View getView(int i, android.view.View view, android.view.ViewGroup viewGroup) {
            dev.duo.hookprobe.MainActivity.j jVar = view == null ? dev.duo.hookprobe.MainActivity.this.new j() : (dev.duo.hookprobe.MainActivity.j) view.getTag();
            dev.duo.hookprobe.MainActivity.g gVar = (dev.duo.hookprobe.MainActivity.g) dev.duo.hookprobe.MainActivity.this.o.get(i);
            boolean z = i == 0;
            boolean z2 = i == dev.duo.hookprobe.MainActivity.this.o.size() - 1;
            float a = dev.duo.hookprobe.MainActivity.this.a(24.0f);
            android.graphics.drawable.GradientDrawable gradientDrawable = new android.graphics.drawable.GradientDrawable();
            gradientDrawable.setColor((dev.duo.hookprobe.MainActivity.this.t && gVar.a.equals(dev.duo.hookprobe.MainActivity.this.v)) ? dev.duo.hookprobe.U.w : dev.duo.hookprobe.U.i);
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
                android.graphics.drawable.GradientDrawable a2 = dev.duo.hookprobe.U.a(0, dev.duo.hookprobe.MainActivity.this.a(11.0f));
                a2.setStroke(java.lang.Math.max(1, dev.duo.hookprobe.MainActivity.this.a(1.0f)), 1198945920);
                jVar.f.setBackground(a2);
                jVar.f.setTextColor(dev.duo.hookprobe.U.e);
                jVar.f.setVisibility(0);
                return jVar.a;
            }
            boolean z3 = dev.duo.hookprobe.MainActivity.this.p != null && dev.duo.hookprobe.MainActivity.this.p.g(gVar.a);
            jVar.e.setText(dev.duo.hookprobe.MainActivity.this.p == null ? gVar.a : a(gVar.a, z3));
            boolean z4 = dev.duo.hookprobe.MainActivity.this.p != null && dev.duo.hookprobe.MainActivity.this.b(gVar.a);
            jVar.f.setText(!z3 ? "关" : z4 ? "单独" : "开");
            android.graphics.drawable.GradientDrawable a3 = dev.duo.hookprobe.U.a((!z3 || z4) ? 0 : dev.duo.hookprobe.U.f, dev.duo.hookprobe.MainActivity.this.a(11.0f));
            if (!z3 || z4) {
                a3.setStroke(java.lang.Math.max(1, dev.duo.hookprobe.MainActivity.this.a(1.0f)), z3 ? (dev.duo.hookprobe.U.b & 16777215) | (-1946157056) : 1198945920);
            }
            jVar.f.setBackground(a3);
            jVar.f.setTextColor(z3 ? dev.duo.hookprobe.U.b : dev.duo.hookprobe.U.e);
            jVar.f.setVisibility(dev.duo.hookprobe.MainActivity.this.p == null ? 8 : 0);
            return jVar.a;
        }

        /* synthetic */ f(dev.duo.hookprobe.MainActivity mainActivity, dev.duo.hookprobe.MainActivity.a aVar) {
            this();
        }
    }

    static final class g {
        java.lang.String a;
        java.lang.String b;
        android.graphics.drawable.Drawable c;
        boolean d;
        java.lang.String e;

        g() {
        }
    }

    static final class h {
        boolean a;
        boolean b;
        boolean c = true;
        java.lang.String d;
        int e;
        float f;
        java.lang.String g;

        h() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class i {
        java.util.List<dev.duo.hookprobe.MainActivity.g> a;
        dev.duo.hookprobe.C0026o b;
        dev.duo.hookprobe.MainActivity.h c;
        java.util.Set<java.lang.String> d;
        java.lang.String e;
        boolean f;
        java.lang.String g;
        int h;
        java.lang.String[] i;
        dev.duo.hookprobe.r.a j;

        private i() {
        }

        /* synthetic */ i(dev.duo.hookprobe.MainActivity.a aVar) {
            this();
        }
    }

    private final class j {
        final android.widget.LinearLayout a;
        final android.widget.LinearLayout b;
        final android.widget.ImageView c;
        final android.widget.TextView d;
        final android.widget.TextView e;
        final android.widget.TextView f;
        final android.view.View g;

        j() {
            android.widget.LinearLayout c = dev.duo.hookprobe.U.c(dev.duo.hookprobe.MainActivity.this);
            this.a = c;
            android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(dev.duo.hookprobe.MainActivity.this);
            this.b = c2;
            android.widget.ImageView imageView = new android.widget.ImageView(dev.duo.hookprobe.MainActivity.this);
            this.c = imageView;
            android.widget.TextView a = dev.duo.hookprobe.U.a(dev.duo.hookprobe.MainActivity.this, 16.0f, dev.duo.hookprobe.U.b, 600);
            this.d = a;
            android.widget.TextView a2 = dev.duo.hookprobe.U.a(dev.duo.hookprobe.MainActivity.this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
            this.e = a2;
            android.widget.TextView a3 = dev.duo.hookprobe.U.a(dev.duo.hookprobe.MainActivity.this, 11.0f, dev.duo.hookprobe.U.b, 600);
            this.f = a3;
            android.view.View view = new android.view.View(dev.duo.hookprobe.MainActivity.this);
            this.g = view;
            c.setPadding(dev.duo.hookprobe.MainActivity.this.x, 0, dev.duo.hookprobe.MainActivity.this.x, 0);
            c.setTag(this);
            c.addView(c2, dev.duo.hookprobe.U.a());
            c2.addView(imageView, dev.duo.hookprobe.U.a(dev.duo.hookprobe.MainActivity.this, 42.0f, 42.0f));
            android.widget.LinearLayout a4 = dev.duo.hookprobe.U.a((android.content.Context) dev.duo.hookprobe.MainActivity.this);
            android.widget.LinearLayout c3 = dev.duo.hookprobe.U.c(dev.duo.hookprobe.MainActivity.this);
            c3.setPadding(0, dev.duo.hookprobe.MainActivity.this.a(12.0f), dev.duo.hookprobe.MainActivity.this.a(14.0f), dev.duo.hookprobe.MainActivity.this.a(12.0f));
            android.widget.LinearLayout a5 = dev.duo.hookprobe.U.a((android.content.Context) dev.duo.hookprobe.MainActivity.this);
            a.setSingleLine(true);
            android.text.TextUtils.TruncateAt truncateAt = android.text.TextUtils.TruncateAt.END;
            a.setEllipsize(truncateAt);
            a5.addView(a);
            a2.setSingleLine(true);
            a2.setEllipsize(truncateAt);
            a2.setPadding(0, dev.duo.hookprobe.MainActivity.this.a(4.0f), 0, 0);
            a5.addView(a2);
            c3.addView(a5, dev.duo.hookprobe.U.b());
            a3.setGravity(17);
            a3.setPadding(dev.duo.hookprobe.MainActivity.this.a(9.0f), 0, dev.duo.hookprobe.MainActivity.this.a(9.0f), 0);
            android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(-2, dev.duo.hookprobe.MainActivity.this.a(22.0f));
            layoutParams.leftMargin = dev.duo.hookprobe.MainActivity.this.a(8.0f);
            c3.addView(a3, layoutParams);
            android.widget.LinearLayout.LayoutParams a6 = dev.duo.hookprobe.U.a(dev.duo.hookprobe.MainActivity.this, 13.0f, 13.0f);
            a6.leftMargin = dev.duo.hookprobe.MainActivity.this.a(8.0f);
            c3.addView(dev.duo.hookprobe.U.a(dev.duo.hookprobe.MainActivity.this, dev.duo.hookprobe.U.a(dev.duo.hookprobe.MainActivity.this, 4, dev.duo.hookprobe.U.x, 3.0f, false, 13.0f)), a6);
            a4.addView(c3, dev.duo.hookprobe.U.a());
            view.setBackgroundColor(dev.duo.hookprobe.U.h);
            a4.addView(view, new android.widget.LinearLayout.LayoutParams(-1, java.lang.Math.max(1, dev.duo.hookprobe.MainActivity.this.a(0.5f))));
            android.widget.LinearLayout.LayoutParams b = dev.duo.hookprobe.U.b();
            b.leftMargin = dev.duo.hookprobe.MainActivity.this.a(12.0f);
            c2.addView(a4, b);
        }
    }

    private static final class k extends android.view.View {
        private final android.graphics.Paint a;
        private final float b;
        private final int c;

        k(android.content.Context context, float f, int i) {
            super(context);
            this.a = new android.graphics.Paint(1);
            this.b = f;
            this.c = i;
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            android.graphics.Canvas canvas2;
            float a = dev.duo.hookprobe.U.a(getContext(), 8.0f);
            float f = a / 2.0f;
            android.graphics.RectF rectF = new android.graphics.RectF(f, f, getWidth() - f, getHeight() - f);
            this.a.setStyle(android.graphics.Paint.Style.STROKE);
            this.a.setStrokeWidth(a);
            this.a.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            this.a.setColor(695629440);
            canvas.drawOval(rectF, this.a);
            this.a.setColor(dev.duo.hookprobe.U.b);
            float f2 = this.b;
            if (f2 > 0.0f) {
                canvas2 = canvas;
                canvas2.drawArc(rectF, -90.0f, f2 * 360.0f, false, this.a);
            } else {
                canvas2 = canvas;
            }
            this.a.setStyle(android.graphics.Paint.Style.FILL);
            this.a.setTextAlign(android.graphics.Paint.Align.CENTER);
            android.graphics.Paint paint = this.a;
            android.graphics.Typeface typeface = android.graphics.Typeface.DEFAULT;
            paint.setTypeface(android.graphics.Typeface.create(typeface, 800, false));
            this.a.setTextSize(dev.duo.hookprobe.U.a(getContext(), 42.0f));
            canvas2.drawText(java.lang.String.valueOf(this.c), getWidth() / 2.0f, (getHeight() / 2.0f) + dev.duo.hookprobe.U.a(getContext(), 6.0f), this.a);
            this.a.setColor(dev.duo.hookprobe.U.d);
            this.a.setTypeface(android.graphics.Typeface.create(typeface, 600, false));
            this.a.setTextSize(dev.duo.hookprobe.U.a(getContext(), 12.0f));
            canvas2.drawText("分钟剩余", getWidth() / 2.0f, (getHeight() / 2.0f) + dev.duo.hookprobe.U.a(getContext(), 26.0f), this.a);
        }
    }

    static {
        java.util.HashSet hashSet = new java.util.HashSet(java.util.Arrays.asList("android", "com.miui.home", "com.miui.personalassistant", "com.android.systemui", dev.duo.icons.g.a, "dev.duo.workspaceprobe"));
        d = hashSet;
        hashSet.addAll(dev.duo.hookprobe.P.i);
        e = new java.lang.String[]{"全部", "已开", "单独设置", "未开"};
        g = "";
    }

    public MainActivity() {
        java.lang.String[] strArr = dev.duo.hookprobe.P.e0;
        this.j0 = new android.widget.SeekBar[strArr.length];
        this.k0 = new android.widget.TextView[strArr.length];
        this.l0 = new java.lang.Runnable[strArr.length];
        this.X0 = true;
        this.Z0 = "正在连接…";
        this.a1 = new java.lang.String[]{"", "", "", ""};
        this.b1 = java.util.Collections.EMPTY_SET;
        this.g1 = new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda85
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.b0();
            }
        };
    }

    private int A() {
        int i2 = 0;
        if (this.p != null && this.c1 == null) {
            java.util.Iterator<java.lang.String> it = dev.duo.hookprobe.P.o.iterator();
            while (it.hasNext()) {
                if (!this.b1.contains(it.next())) {
                    i2++;
                }
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public java.util.List<java.lang.String> B() {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (this.p != null && this.c1 == null) {
            for (java.lang.String str : dev.duo.hookprobe.P.o) {
                if (!this.b1.contains(str)) {
                    arrayList.add(str);
                }
            }
            for (java.lang.String str2 : dev.duo.hookprobe.P.p) {
                if (!this.b1.contains(str2)) {
                    arrayList.add(str2);
                }
            }
        }
        return arrayList;
    }

    private android.view.View C() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        dev.duo.hookprobe.U.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("通知图标");
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a4.setText("在时间模块下方显示通知 App 图标，点那一块打开通知中心；关掉后两样都没有");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, dev.duo.hookprobe.U.b());
        android.widget.Switch r1 = new android.widget.Switch(this);
        this.Z = r1;
        dev.duo.hookprobe.U.a(r1);
        this.Z.setContentDescription("通知图标");
        this.Z.setEnabled(false);
        this.Z.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda29
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.g(compoundButton, z);
            }
        });
        c2.addView(this.Z);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda30
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.n(view);
            }
        });
        return c2;
    }

    private android.view.View E() {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        dev.duo.hookprobe.U.a(a2, this.q.e ? 26.0f : 28.0f);
        a2.setPadding(a(18.0f), a(12.0f), a(16.0f), a(12.0f));
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        android.widget.LinearLayout a3 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a4.setText("外屏非 Duo 顶栏");
        a3.addView(a4);
        android.widget.TextView a5 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a5.setText("开启后隐藏未开启 Duo 的 App 原生状态栏；单独设置过的 App 优先");
        a5.setPadding(0, a(3.0f), a(8.0f), 0);
        a3.addView(a5);
        c2.addView(a3, dev.duo.hookprobe.U.b());
        android.widget.Switch r2 = new android.widget.Switch(this);
        this.U = r2;
        dev.duo.hookprobe.U.a(r2);
        this.U.setContentDescription("隐藏外屏非 Duo 原生状态栏");
        this.U.setEnabled(false);
        this.U.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda93
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.h(compoundButton, z);
            }
        });
        c2.addView(this.U);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda94
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.o(view);
            }
        });
        a2.addView(c2);
        android.widget.TextView[] textViewArr = new android.widget.TextView[1];
        android.widget.SeekBar[] seekBarArr = new android.widget.SeekBar[1];
        android.widget.LinearLayout a6 = a("顶部留白高度", "px", 1, 126, textViewArr, seekBarArr, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda95
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                dev.duo.hookprobe.MainActivity.this.g(i2);
            }
        });
        this.V = a6;
        a6.setBackground(null);
        this.V.setPadding(0, a(12.0f), 0, 0);
        this.W = textViewArr[0];
        this.X = seekBarArr[0];
        android.widget.TextView a7 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a7.setText("外屏竖屏生效；高度是隐藏状态栏后的顶部留白，单个 App 可单独调整");
        this.V.addView(a7);
        this.V.setVisibility(8);
        a2.addView(this.V);
        return a2;
    }

    private android.view.View F() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        dev.duo.hookprobe.U.a(c2, 26.0f);
        c2.setPadding(a(20.0f), 0, a(12.0f), 0);
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("App 概览");
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        this.w0 = a4;
        a4.setPadding(0, a(4.0f), 0, 0);
        a2.addView(this.w0);
        c2.addView(a2, new android.widget.LinearLayout.LayoutParams(a(112.0f), -2));
        android.widget.LinearLayout c3 = dev.duo.hookprobe.U.c(this);
        this.x0 = a(c3, "已开 Duo", 0.0f);
        this.y0 = a(c3, "单独设置", 8.0f);
        android.widget.TextView a5 = a(c3, "未开", 8.0f);
        this.z0 = a5;
        android.widget.TextView[] textViewArr = {this.x0, this.y0, a5};
        for (int i2 = 0; i2 < 3; i2++) {
            android.widget.TextView textView = textViewArr[i2];
            textView.setTextSize(18.0f);
            textView.setFontFeatureSettings("tnum");
        }
        c2.addView(c3, dev.duo.hookprobe.U.b());
        android.widget.TextView a6 = dev.duo.hookprobe.U.a((android.content.Context) this, "管理 App", true, 40.0f);
        a6.setTextSize(13.0f);
        a6.setCompoundDrawablesRelativeWithIntrinsicBounds((android.graphics.drawable.Drawable) null, (android.graphics.drawable.Drawable) null, dev.duo.hookprobe.U.a(this, 4, dev.duo.hookprobe.U.o, 3.0f, false, 12.0f), (android.graphics.drawable.Drawable) null);
        a6.setCompoundDrawablePadding(a(4.0f));
        a6.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda36
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.p(view);
            }
        });
        android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(-2, a(40.0f));
        layoutParams.leftMargin = a(14.0f);
        c2.addView(a6, layoutParams);
        return c2;
    }

    private android.view.View G() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        dev.duo.hookprobe.U.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        c2.setMinimumHeight(a(76.0f));
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("取色按钮");
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a4.setText("取色按钮贴在 App 侧栏搜索键的头顶，在哪个 App 点它就给哪个 App 取色");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, dev.duo.hookprobe.U.b());
        android.widget.Switch r1 = new android.widget.Switch(this);
        this.b0 = r1;
        dev.duo.hookprobe.U.a(r1);
        this.b0.setContentDescription("取色按钮");
        this.b0.setEnabled(false);
        this.b0.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda52
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.i(compoundButton, z);
            }
        });
        c2.addView(this.b0);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda53
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.q(view);
            }
        });
        return c2;
    }

    private android.widget.LinearLayout H() {
        android.widget.LinearLayout u = u();
        android.widget.LinearLayout i2 = i();
        android.widget.TextView a2 = dev.duo.hookprobe.U.a(this, 16.0f, dev.duo.hookprobe.U.b, 600);
        a2.setText("外屏侧栏颜色");
        i2.addView(a2);
        u.addView(i2);
        dev.duo.hookprobe.U.e eVar = new dev.duo.hookprobe.U.e(this, new java.lang.String[]{"白色", "黑色", "跟随系统"}, new int[]{-1, -14869217, 0}, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda86
            @Override // java.util.function.IntConsumer
            public final void accept(int i3) {
                dev.duo.hookprobe.MainActivity.this.j(i3);
            }
        });
        this.L = eVar;
        eVar.a(false);
        u.addView(this.L.a, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 8.0f));
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        this.M = a3;
        u.addView(a3, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        if (!this.q.e) {
            this.P = a(u, "外屏侧栏颜色", i2);
        }
        return u;
    }

    private android.view.View I() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        dev.duo.hookprobe.U.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        c2.setMinimumHeight(a(76.0f));
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("外屏 App 内侧栏自定义");
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a4.setText("外屏 App 模式右侧 6 格：拖入返回、主页等动作，自己的 App 或 dock");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, dev.duo.hookprobe.U.b());
        android.widget.LinearLayout.LayoutParams a5 = dev.duo.hookprobe.U.a(this, 14.0f, 14.0f);
        a5.leftMargin = a(8.0f);
        c2.addView(dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(this, 4, dev.duo.hookprobe.U.d, 3.0f, false, 14.0f)), a5);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.r(view);
            }
        });
        return c2;
    }

    private void J() {
        final dev.duo.hookprobe.C0026o c0026o = this.p;
        if (c0026o == null) {
            return;
        }
        if (this.l.compareAndSet(false, true)) {
            b.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda87
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MainActivity.this.a(c0026o);
                }
            });
        } else {
            this.m1 = true;
        }
    }

    private void K() {
        float f2;
        int i2;
        float f3;
        this.T0.removeAllViews();
        final dev.duo.hookprobe.MainActivity.h hVar = this.V0;
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        dev.duo.hookprobe.U.a(a2, 28.0f);
        a2.setGravity(1);
        a2.setPadding(a(20.0f), a(28.0f), a(20.0f), a(26.0f));
        this.T0.addView(a2, dev.duo.hookprobe.U.a());
        float f4 = 12.0f;
        if (hVar == null) {
            f2 = 16.0f;
            i2 = 17;
            f3 = 10.0f;
        } else {
            if (!hVar.a) {
                if (hVar.b) {
                    android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(this);
                    frameLayout.setBackground(dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.r, dev.duo.hookprobe.U.s));
                    frameLayout.setElevation(a(6.0f));
                    i2 = 17;
                    frameLayout.addView(dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(this, 6, dev.duo.hookprobe.U.v, 2.6f, false, 30.0f)), new android.widget.FrameLayout.LayoutParams(a(30.0f), a(30.0f), 17));
                    a2.addView(frameLayout, dev.duo.hookprobe.U.a(this, 64.0f, 64.0f));
                    android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 22.0f, dev.duo.hookprobe.U.b, 800);
                    a3.setText("已买断，永久使用");
                    a2.addView(a3, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.c(), this, 16.0f));
                    android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
                    a4.setText("绑定在这台手机上");
                    a2.addView(a4, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.c(), this, 8.0f));
                    if (hVar.d != null) {
                        android.widget.LinearLayout a5 = dev.duo.hookprobe.U.a((android.content.Context) this);
                        dev.duo.hookprobe.U.a(a5, 24.0f);
                        a5.setPadding(a(18.0f), a(16.0f), a(16.0f), a(16.0f));
                        android.widget.TextView a6 = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.c, 600);
                        a6.setText("授权码 · 换手机时要用，请保存好");
                        a5.addView(a6);
                        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
                        c2.setBackground(dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.g, a(16.0f)));
                        c2.setPadding(a(14.0f), a(8.0f), a(6.0f), a(8.0f));
                        android.widget.TextView a7 = dev.duo.hookprobe.U.a(this, 16.0f, dev.duo.hookprobe.U.b, 700);
                        a7.setText(hVar.d);
                        a7.setSingleLine(true);
                        a7.setEllipsize(android.text.TextUtils.TruncateAt.END);
                        a7.setLetterSpacing(0.04f);
                        a7.setTextIsSelectable(true);
                        c2.addView(a7, dev.duo.hookprobe.U.b());
                        android.widget.TextView a8 = dev.duo.hookprobe.U.a((android.content.Context) this, this.W0 ? "已复制" : "复制", true, 34.0f);
                        a8.setTextSize(13.0f);
                        a8.setMinWidth(a(72.0f));
                        a8.setBackground(dev.duo.hookprobe.U.a(this.W0 ? -13326253 : dev.duo.hookprobe.U.n, a(17.0f)));
                        a8.setTextColor(this.W0 ? -1 : dev.duo.hookprobe.U.o);
                        boolean z = this.W0;
                        a8.setCompoundDrawablesRelativeWithIntrinsicBounds(dev.duo.hookprobe.U.a(this, z ? 6 : 9, z ? -1 : dev.duo.hookprobe.U.o, 2.4f, false, 13.0f), (android.graphics.drawable.Drawable) null, (android.graphics.drawable.Drawable) null, (android.graphics.drawable.Drawable) null);
                        a8.setCompoundDrawablePadding(a(5.0f));
                        a8.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda45
                            @Override // android.view.View.OnClickListener
                            public final void onClick(android.view.View view) {
                                dev.duo.hookprobe.MainActivity.this.a(hVar, view);
                            }
                        });
                        android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(-2, a(34.0f));
                        f3 = 10.0f;
                        layoutParams.leftMargin = a(10.0f);
                        c2.addView(a8, layoutParams);
                        a5.addView(c2, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 10.0f));
                        f4 = 12.0f;
                        this.T0.addView(a5, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
                    } else {
                        f4 = 12.0f;
                        f3 = 10.0f;
                    }
                } else {
                    i2 = 17;
                    f3 = 10.0f;
                    a2.addView(new dev.duo.hookprobe.MainActivity.k(this, hVar.f, hVar.e), dev.duo.hookprobe.U.a(this, 140.0f, 140.0f));
                    android.widget.TextView a9 = dev.duo.hookprobe.U.a(this, 20.0f, dev.duo.hookprobe.U.b, 800);
                    a9.setText(hVar.c ? "免费试用中" : "试用已结束");
                    a2.addView(a9, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.c(), this, 14.0f));
                    android.widget.TextView a10 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
                    a10.setGravity(17);
                    a10.setLineSpacing(0.0f, 1.3f);
                    a10.setText(hVar.c ? "只算亮屏且 MiDuo 开着的时间。用完后在下次熄屏时停用，桌面、侧栏、外屏比例恢复小米原装。" : "MiDuo 已停用，桌面、侧栏、外屏比例为小米原装；购买后可继续使用。");
                    a2.addView(a10, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 10.0f));
                    android.widget.LinearLayout a11 = dev.duo.hookprobe.U.a((android.content.Context) this);
                    dev.duo.hookprobe.U.a(a11, 24.0f);
                    a11.setPadding(a(18.0f), a(18.0f), a(18.0f), a(18.0f));
                    android.widget.LinearLayout c3 = dev.duo.hookprobe.U.c(this);
                    c3.setGravity(80);
                    android.widget.TextView a12 = dev.duo.hookprobe.U.a(this, 17.0f, dev.duo.hookprobe.U.b, 700);
                    a12.setText("永久买断");
                    c3.addView(a12, dev.duo.hookprobe.U.b());
                    android.widget.TextView a13 = dev.duo.hookprobe.U.a(this, 24.0f, dev.duo.hookprobe.U.b, 800);
                    a13.setText("¥49.9");
                    c3.addView(a13);
                    a11.addView(c3);
                    android.widget.TextView a14 = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
                    a14.setText("一次付费，这台手机永久使用；每年可换机 2 次。");
                    a11.addView(a14, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 10.0f));
                    android.widget.TextView a15 = dev.duo.hookprobe.U.a((android.content.Context) this, "立即购买", true, 50.0f);
                    a15.setTextSize(16.0f);
                    a15.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda46
                        @Override // android.view.View.OnClickListener
                        public final void onClick(android.view.View view) {
                            dev.duo.hookprobe.MainActivity.this.s(view);
                        }
                    });
                    a11.addView(a15, dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(50.0f)), this, 14.0f));
                    this.T0.addView(a11, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
                }
                android.widget.LinearLayout c4 = dev.duo.hookprobe.U.c(this);
                dev.duo.hookprobe.U.a(c4, 25.0f);
                c4.setGravity(i2);
                float f5 = f4;
                c4.addView(dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(this, 2, dev.duo.hookprobe.U.b, 2.2f, false, 17.0f)), dev.duo.hookprobe.U.a(this, 17.0f, 17.0f));
                android.widget.TextView a16 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
                a16.setText("输入授权码");
                a16.setPadding(a(8.0f), 0, 0, 0);
                c4.addView(a16);
                c4.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda47
                    @Override // android.view.View.OnClickListener
                    public final void onClick(android.view.View view) {
                        dev.duo.hookprobe.MainActivity.this.t(view);
                    }
                });
                this.T0.addView(c4, dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(50.0f)), this, f5));
                android.widget.TextView a17 = dev.duo.hookprobe.U.a(this, f5, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
                a17.setLineSpacing(0.0f, 1.3f);
                a17.setText("在另一台手机买过的，输入授权码即可在这台手机使用；是否已授权以本页和首页显示为准。" + ((hVar != null || hVar.g == null) ? "" : "\n" + hVar.g));
                a17.setPadding(a(f3), 0, a(f3), 0);
                this.T0.addView(a17, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, f5));
                android.widget.LinearLayout a18 = dev.duo.hookprobe.O.a(this);
                this.U0 = a18;
                this.T0.addView(a18, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 20.0f));
                this.T0.addView(dev.duo.hookprobe.O.b(this), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, f5));
            }
            f2 = 16.0f;
            i2 = 17;
            f3 = 10.0f;
        }
        android.widget.TextView a19 = dev.duo.hookprobe.U.a(this, f2, dev.duo.hookprobe.U.c, 600);
        a19.setGravity(i2);
        a19.setText(hVar == null ? "正在读取授权…" : "系统框架还没加载 MiDuo，暂时不能试用和购买。LSPosed 里启用 MiDuo 后，系统框架要到手机下次开机才加载");
        a2.addView(a19);
        android.widget.LinearLayout c42 = dev.duo.hookprobe.U.c(this);
        dev.duo.hookprobe.U.a(c42, 25.0f);
        c42.setGravity(i2);
        float f52 = f4;
        c42.addView(dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(this, 2, dev.duo.hookprobe.U.b, 2.2f, false, 17.0f)), dev.duo.hookprobe.U.a(this, 17.0f, 17.0f));
        android.widget.TextView a162 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a162.setText("输入授权码");
        a162.setPadding(a(8.0f), 0, 0, 0);
        c42.addView(a162);
        c42.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda47
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.t(view);
            }
        });
        this.T0.addView(c42, dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(50.0f)), this, f52));
        android.widget.TextView a172 = dev.duo.hookprobe.U.a(this, f52, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a172.setLineSpacing(0.0f, 1.3f);
        a172.setText("在另一台手机买过的，输入授权码即可在这台手机使用；是否已授权以本页和首页显示为准。" + ((hVar != null || hVar.g == null) ? "" : "\n" + hVar.g));
        a172.setPadding(a(f3), 0, a(f3), 0);
        this.T0.addView(a172, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, f52));
        android.widget.LinearLayout a182 = dev.duo.hookprobe.O.a(this);
        this.U0 = a182;
        this.T0.addView(a182, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 20.0f));
        this.T0.addView(dev.duo.hookprobe.O.b(this), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, f52));
    }

    private void L() {
        io.github.libxposed.service.XposedService c2 = dev.duo.hookprobe.L.c();
        java.util.List<java.lang.String> B = B();
        if (c2 == null || B.isEmpty() || this.f1) {
            return;
        }
        this.f1 = true;
        this.K0.setEnabled(false);
        g += (g.isEmpty() ? "" : "\n") + "已一次申请 " + B.size() + " 个作用域，请在 LSPosed 通知中批准";
        android.widget.Toast.makeText(this, "已申请 " + B.size() + " 个作用域，请在 LSPosed 通知中批准", 1).show();
        R();
        try {
            c2.requestScope(B, new dev.duo.hookprobe.MainActivity.e());
        } catch (java.lang.Throwable th) {
            this.f1 = false;
            g += "\n作用域申请失败：" + th.getMessage();
            R();
        }
    }

    private android.view.View M() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        dev.duo.hookprobe.U.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("旋转建议按钮");
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a4.setText("关闭自动旋转时，转动手机可点按钮旋转屏幕");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, dev.duo.hookprobe.U.b());
        android.widget.Switch r1 = new android.widget.Switch(this);
        this.T = r1;
        dev.duo.hookprobe.U.a(r1);
        this.T.setContentDescription("旋转建议按钮");
        this.T.setEnabled(false);
        this.T.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda34
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.j(compoundButton, z);
            }
        });
        c2.addView(this.T);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda35
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.u(view);
            }
        });
        return c2;
    }

    private android.view.View N() {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        dev.duo.hookprobe.U.a(a2, this.q.e ? 26.0f : 28.0f);
        a2.setPadding(a(16.0f), a(14.0f), a(16.0f), a(14.0f));
        int i2 = 0;
        boolean z = this.q.c >= 600;
        java.lang.String[] strArr = {"左下", "右下"};
        this.q0 = new dev.duo.hookprobe.U.e(this, strArr, null, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda11
            @Override // java.util.function.IntConsumer
            public final void accept(int i3) {
                dev.duo.hookprobe.MainActivity.this.h(i3);
            }
        });
        this.r0 = new dev.duo.hookprobe.U.e(this, strArr, null, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda12
            @Override // java.util.function.IntConsumer
            public final void accept(int i3) {
                dev.duo.hookprobe.MainActivity.this.i(i3);
            }
        });
        this.q0.a(false);
        this.r0.a(false);
        dev.duo.hookprobe.U.e[] eVarArr = {this.q0, this.r0};
        java.lang.String[] strArr2 = {"竖屏", "横屏"};
        while (i2 < 2) {
            android.widget.LinearLayout c2 = z ? dev.duo.hookprobe.U.c(this) : dev.duo.hookprobe.U.a((android.content.Context) this);
            android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.c, 600);
            a3.setText(strArr2[i2]);
            if (z) {
                c2.addView(a3, new android.widget.LinearLayout.LayoutParams(a(44.0f), -2));
                c2.addView(eVarArr[i2].a, dev.duo.hookprobe.U.b());
            } else {
                c2.addView(a3);
                c2.addView(eVarArr[i2].a, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 6.0f));
            }
            a2.addView(c2, i2 == 0 ? dev.duo.hookprobe.U.a() : dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 10.0f));
            i2++;
        }
        return a2;
    }

    private android.view.View O() {
        this.n0 = new android.widget.FrameLayout(this);
        int a2 = a(10.0f);
        this.n0.setPadding(a2, a2, a2, a2);
        this.n0.setClipToPadding(false);
        this.n0.setClipChildren(true);
        this.o0 = M();
        android.view.View N = N();
        this.p0 = N;
        this.n0.addView(N, new android.widget.FrameLayout.LayoutParams(0, -2));
        this.n0.addView(this.o0, new android.widget.FrameLayout.LayoutParams(-1, a(76.0f)));
        this.n0.addOnLayoutChangeListener(new android.view.View.OnLayoutChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda76
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(android.view.View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                dev.duo.hookprobe.MainActivity.this.a(view, i2, i3, i4, i5, i6, i7, i8, i9);
            }
        });
        android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(-1, a(76.0f) + (a2 * 2));
        int i2 = -a2;
        layoutParams.setMargins(i2, a(12.0f) - a2, i2, i2);
        this.n0.setLayoutParams(layoutParams);
        return this.n0;
    }

    private android.widget.LinearLayout P() {
        android.widget.TextView[] textViewArr = new android.widget.TextView[1];
        android.widget.SeekBar[] seekBarArr = new android.widget.SeekBar[1];
        android.widget.LinearLayout a2 = a("外屏页面缩放", "%", 60, 100, textViewArr, seekBarArr, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda70
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                dev.duo.hookprobe.MainActivity.this.m(i2);
            }
        });
        this.I = textViewArr[0];
        this.J = seekBarArr[0];
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a3.setText("全局比例只用于已开启 Duo 且未单独设置的 App；未开 Duo 的 App 可在详情页单独缩放，否则保持原样。内屏不受影响（微信内外屏一起缩）");
        a2.addView(a3, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        if (!this.q.e) {
            this.O = a(a2, "外屏页面缩放", ((android.widget.LinearLayout) a2.getChildAt(0)).getChildAt(0));
        }
        return a2;
    }

    private android.view.View Q() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        dev.duo.hookprobe.U.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("搜索按钮");
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a4.setText("在内外屏桌面和应用侧栏显示右下角圆形搜索按钮");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, dev.duo.hookprobe.U.b());
        android.widget.Switch r1 = new android.widget.Switch(this);
        this.a0 = r1;
        dev.duo.hookprobe.U.a(r1);
        this.a0.setContentDescription("搜索按钮");
        this.a0.setEnabled(false);
        this.a0.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda49
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.k(compoundButton, z);
            }
        });
        c2.addView(this.a0);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda50
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.v(view);
            }
        });
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        int i2;
        int i3;
        dev.duo.hookprobe.C0026o c0026o = this.p;
        boolean z = c0026o == null || c0026o.m();
        this.e1 = true;
        android.widget.Switch r3 = this.M0;
        dev.duo.hookprobe.C0026o c0026o2 = this.p;
        r3.setChecked(c0026o2 != null && c0026o2.a());
        android.widget.Switch r32 = this.N0;
        if (r32 != null) {
            dev.duo.hookprobe.C0026o c0026o3 = this.p;
            r32.setChecked(c0026o3 != null && c0026o3.c());
            this.N0.setEnabled((this.p == null || f) ? false : true);
        }
        this.C.setChecked(z);
        this.e1 = false;
        this.C.setEnabled(this.p != null && this.Y0 && this.X0 && !f);
        this.A.setText(z ? "MiDuo 运行中" : "MiDuo 已关闭");
        java.lang.String str = this.p == null ? "未连接 LSPosed，请在 LSPosed 中启用 MiDuo" : !this.Y0 ? "系统框架还没加载 MiDuo，总开关暂不能用。LSPosed 里启用 MiDuo 后，系统框架要到手机下次开机才加载" : !this.X0 ? "试用已结束，购买后可继续使用" : null;
        this.B.setText(str);
        this.B.setVisibility(str == null ? 8 : 0);
        android.widget.FrameLayout frameLayout = this.z;
        if (z && str == null) {
            i2 = dev.duo.hookprobe.U.r;
            i3 = dev.duo.hookprobe.U.s;
        } else {
            i2 = dev.duo.hookprobe.U.t;
            i3 = dev.duo.hookprobe.U.u;
        }
        frameLayout.setBackground(dev.duo.hookprobe.U.a(i2, i3));
        this.z.setElevation((z && str == null) ? a(4.0f) : 0.0f);
        java.lang.String str2 = "原装";
        this.D.setText(this.p == null ? "—" : z ? "4×6" : "原装");
        android.widget.TextView textView = this.E;
        if (this.p == null) {
            str2 = "—";
        } else if (z) {
            str2 = "9:16";
        }
        textView.setText(str2);
        if (this.p == null) {
            this.F.setText("—");
        }
        this.M0.setEnabled((this.p == null || f) ? false : true);
        this.S0.setEnabled(!f);
        int size = B().size();
        int A = A();
        boolean z2 = this.p != null && this.Y0 && this.c1 == null && A == 0 && !"未安装".equals(this.a1[2]);
        boolean z3 = this.a1[1].isEmpty() || h.equals(this.a1[1]);
        this.u0.setBackground(b((z2 && z3) ? -13326253 : -2543579));
        this.v0.setText(!z2 ? "需要处理" : z3 ? "运行正常" : "版本不对");
        this.C0.setText(this.Z0);
        this.D0.setText(this.c1 != null ? "读取失败（" + this.c1 + "）" : (A == 0 && size == 0) ? "核心五项和附加功能都已勾选" : "核心缺 " + A + " 个，附加功能缺 " + (size - A) + " 个");
        this.K0.setText("补齐缺失作用域（" + size + " 个）");
        this.K0.setVisibility(size == 0 ? 8 : 0);
        this.K0.setEnabled((f || this.f1) ? false : true);
        this.O0.setText(g);
        this.O0.setVisibility(g.isEmpty() ? 8 : 0);
    }

    private void S() {
        dev.duo.hookprobe.MainActivity mainActivity;
        this.u.removeAllViews();
        int firstVisiblePosition = this.S0.getFirstVisiblePosition();
        android.view.View childAt = this.S0.getChildAt(0);
        int top = childAt != null ? childAt.getTop() : 0;
        java.lang.String str = this.v;
        if (str == null) {
            android.widget.TextView a2 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.d, 500);
            a2.setText("选择左侧的 App 查看设置");
            this.u.addView(a2, new android.widget.FrameLayout.LayoutParams(-2, -2, 17));
            mainActivity = this;
        } else {
            mainActivity = this;
            mainActivity.u.addView(new dev.duo.hookprobe.C0016f(mainActivity, str, this.w, null, true, 0, this.q.d(), 0, this.q.b(), new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda92
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MainActivity.this.o();
                }
            }).e, new android.widget.FrameLayout.LayoutParams(-1, -1));
        }
        dev.duo.hookprobe.MainActivity.f fVar = mainActivity.R0;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
        mainActivity.S0.setSelectionFromTop(firstVisiblePosition, top);
    }

    private void T() {
        dev.duo.hookprobe.C0026o c0026o = this.p;
        if (c0026o == null) {
            this.G.setText("—");
            return;
        }
        int j2 = c0026o.j();
        this.H.setEnabled(!f);
        this.H.setProgress(j2 - 1);
        this.G.setText(java.lang.String.valueOf(j2));
        for (int i2 = 0; i2 < this.K.size(); i2++) {
            dev.duo.hookprobe.U.a(this.K.get(i2), dev.duo.hookprobe.P.x[i2] == j2);
            this.K.get(i2).setEnabled(!f);
        }
        this.J.setEnabled(!f);
        this.J.setProgress(this.p.p() - 60);
        this.I.setText(java.lang.String.valueOf(this.p.p()));
        boolean u = this.p.u();
        boolean equals = "black".equals(this.p.k());
        this.L.a(u ? 2 : equals ? 1 : 0);
        this.L.a(!f);
        this.M.setText(u ? "浅色模式白色，深色模式黑色；单独设置过的 App 不受影响" : "单独设置过颜色的 App 不受影响");
        java.lang.String str = "黑色";
        this.F.setText(u ? "跟随" : equals ? "黑色" : "白色");
        android.widget.TextView textView = this.N;
        if (textView != null) {
            textView.setText("当前 " + j2 + "px");
            this.O.setText("当前 " + this.p.p() + "%");
            android.widget.TextView textView2 = this.P;
            java.lang.StringBuilder append = new java.lang.StringBuilder().append("当前 ");
            if (u) {
                str = "跟随系统";
            } else if (!equals) {
                str = "白色";
            }
            textView2.setText(append.append(str).toString());
        }
        this.e1 = true;
        this.T.setChecked(this.p.x());
        this.Y.setChecked(this.p.l());
        this.U.setChecked(this.p.o());
        this.V.setVisibility(this.p.o() ? 0 : 8);
        this.W.setText(java.lang.String.valueOf(this.p.q()));
        this.X.setProgress(this.p.q() - 1);
        this.Z.setChecked(this.p.n());
        this.a0.setChecked(this.p.y());
        this.Q.setChecked(this.p.z());
        this.b0.setChecked(this.p.t());
        this.f0.setChecked(this.p.B());
        boolean d2 = this.p.d();
        this.c0.setChecked(this.p.f() && !d2);
        this.j1.setText(d2 ? "开合动画开启时不可用：两者都靠开合手势，会互相干扰。关闭开合动画后恢复" : j);
        this.d0.setChecked(this.p.d());
        this.e0.setChecked(this.p.b());
        this.e1 = false;
        this.T.setEnabled(!f);
        this.Y.setEnabled(!f);
        this.U.setEnabled(!f);
        this.X.setEnabled(!f && this.p.o());
        this.Z.setEnabled(!f);
        this.a0.setEnabled(!f);
        this.Q.setEnabled((f || this.S) ? false : true);
        this.R.setText(this.S ? "正在开启锁屏显示权限…" : "开启时自动允许锁屏显示（需 Root）；权限被关闭后可重新开启");
        this.b0.setEnabled(!f);
        this.f0.setEnabled(!f);
        this.c0.setEnabled((f || d2) ? false : true);
        this.d0.setEnabled(!f && this.k1 == null);
        this.e0.setEnabled(!f);
        this.g0.a(!this.p.A() ? 1 : 0);
        this.h0.a(this.p.s() ? 1 : 0);
        this.g0.a(!f);
        this.i0.a(this.p.e());
        this.i0.a((f || d2) ? false : true);
        this.h0.a(!f);
        int i3 = 0;
        while (true) {
            android.widget.SeekBar[] seekBarArr = this.j0;
            if (i3 >= seekBarArr.length) {
                Z();
                this.q.a(this.p.A());
                this.q0.a(this.p.a(false) ? 1 : 0);
                this.r0.a(this.p.a(true) ? 1 : 0);
                this.q0.a(!f);
                this.r0.a(!f);
                return;
            }
            if (this.l0[i3] == null) {
                seekBarArr[i3].setProgress(this.p.e(i3) + 60);
                this.k0[i3].setText(c(this.p.e(i3)));
                this.j0[i3].setEnabled(!f);
            }
            i3++;
        }
    }

    private void U() {
        int i2;
        if (this.w0 == null) {
            return;
        }
        int i3 = 0;
        if (this.p != null) {
            i2 = 0;
            for (dev.duo.hookprobe.MainActivity.g gVar : this.n) {
                if (this.p.g(gVar.a)) {
                    i3++;
                }
                if (b(gVar.a)) {
                    i2++;
                }
            }
        } else {
            i2 = 0;
        }
        this.w0.setText("共 " + this.n.size() + " 个");
        this.x0.setText(this.p == null ? "—" : java.lang.String.valueOf(i3));
        this.y0.setText(this.p == null ? "—" : java.lang.String.valueOf(i2));
        this.z0.setText(this.p != null ? java.lang.String.valueOf(this.n.size() - i3) : "—");
    }

    private void V() {
        ((android.widget.ScrollView) this.r[2]).smoothScrollTo(0, java.lang.Math.max(0, (this.T0.getTop() + this.U0.getTop()) - a(12.0f)));
    }

    private android.view.View W() {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        dev.duo.hookprobe.U.a(a2, this.q.e ? 26.0f : 28.0f);
        a2.setPadding(a(18.0f), a(6.0f), a(16.0f), a(12.0f));
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        c2.setMinimumHeight(a(76.0f));
        android.widget.LinearLayout a3 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a4.setText("帐篷钟面");
        a3.addView(a4);
        android.widget.TextView a5 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a5.setText("锁屏摆成帐篷姿势时，在外屏显示常亮钟面");
        a5.setPadding(0, a(3.0f), 0, 0);
        a3.addView(a5);
        c2.addView(a3, dev.duo.hookprobe.U.b());
        android.widget.Switch r2 = new android.widget.Switch(this);
        this.Q = r2;
        dev.duo.hookprobe.U.a(r2);
        this.Q.setContentDescription("帐篷钟面");
        this.Q.setEnabled(false);
        this.Q.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda54
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.l(compoundButton, z);
            }
        });
        c2.addView(this.Q);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda55
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.w(view);
            }
        });
        a2.addView(c2);
        android.widget.TextView a6 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        this.R = a6;
        a6.setLineSpacing(0.0f, 1.2f);
        this.R.setText("开启时自动允许锁屏显示（需 Root）；权限被关闭后可重新开启");
        a2.addView(this.R, dev.duo.hookprobe.U.a());
        return a2;
    }

    private android.widget.LinearLayout X() {
        android.widget.LinearLayout u = u();
        android.widget.LinearLayout i2 = i();
        android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(this);
        this.z = frameLayout;
        frameLayout.addView(dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(this, 7, dev.duo.hookprobe.U.v, 2.4f, false, 20.0f)), new android.widget.FrameLayout.LayoutParams(a(20.0f), a(20.0f), 17));
        i2.addView(this.z, dev.duo.hookprobe.U.a(this, 44.0f, 44.0f));
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        a2.setPadding(a(12.0f), 0, a(8.0f), 0);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 18.0f, dev.duo.hookprobe.U.b, 700);
        this.A = a3;
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.c, dev.duo.hookprobe.J.m);
        this.B = a4;
        a4.setPadding(0, a(4.0f), 0, 0);
        a2.addView(this.B);
        i2.addView(a2, dev.duo.hookprobe.U.b());
        android.widget.Switch r2 = new android.widget.Switch(this);
        this.C = r2;
        dev.duo.hookprobe.U.a(r2);
        this.C.setContentDescription("MiDuo 总开关");
        this.C.setEnabled(false);
        this.C.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.m(compoundButton, z);
            }
        });
        i2.addView(this.C);
        u.addView(i2);
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        this.D = a(c2, "桌面", 0.0f);
        this.E = a(c2, "外屏比例", 8.0f);
        this.F = a(c2, "侧栏", 8.0f);
        u.addView(c2, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 14.0f));
        return u;
    }

    private android.view.View Y() {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        dev.duo.hookprobe.U.a(a2, this.q.e ? 26.0f : 28.0f);
        int i2 = 0;
        a2.setPadding(a(18.0f), 0, a(16.0f), 0);
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        c2.setGravity(16);
        c2.setMinimumHeight(a(64.0f));
        android.widget.LinearLayout a3 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a4.setText("时钟模块位置");
        a3.addView(a4);
        android.widget.TextView a5 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a5.setText("时间、电量环和通知图标一起上下移动");
        a5.setPadding(0, a(3.0f), 0, 0);
        a3.addView(a5);
        c2.addView(a3, dev.duo.hookprobe.U.b());
        android.widget.TextView a6 = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.d, 500);
        this.m0 = a6;
        c2.addView(a6);
        final android.widget.ImageView a7 = dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(this, 5, dev.duo.hookprobe.U.e, 2.6f, false, 14.0f));
        android.widget.LinearLayout.LayoutParams a8 = dev.duo.hookprobe.U.a(this, 14.0f, 14.0f);
        a8.leftMargin = a(10.0f);
        c2.addView(a7, a8);
        a2.addView(c2);
        final android.widget.LinearLayout a9 = dev.duo.hookprobe.U.a((android.content.Context) this);
        java.lang.String[] strArr = {"外屏桌面", "外屏应用", "内屏横屏桌面", "内屏竖屏桌面", "外屏锁屏", "内屏横屏锁屏", "内屏竖屏锁屏"};
        while (i2 < 7) {
            a9.addView(a(i2, strArr[i2]), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, i2 == 0 ? 2.0f : 14.0f));
            i2++;
        }
        a9.addView(new android.view.View(this), new android.widget.LinearLayout.LayoutParams(-1, a(16.0f)));
        a9.setVisibility(8);
        a2.addView(a9);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda88
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.c(a9, a7, view);
            }
        });
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z() {
        int i2 = 0;
        for (android.widget.SeekBar seekBar : this.j0) {
            if (seekBar.getProgress() != 60) {
                i2++;
            }
        }
        this.m0.setText(i2 == 0 ? "全部默认" : "已调 " + i2 + " 处");
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

    private android.view.View a0() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        dev.duo.hookprobe.U.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("安装教程");
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a4.setText("从零开始：提权、装模块、启用 MiDuo");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, dev.duo.hookprobe.U.b());
        c2.addView(dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(this, 4, dev.duo.hookprobe.U.e, 2.6f, false, 14.0f)), dev.duo.hookprobe.U.a(this, 14.0f, 14.0f));
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda37
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.x(view);
            }
        });
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0() {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        this.m.removeCallbacks(this.g1);
        R();
        o();
        if (f) {
            this.m.postDelayed(this.g1, 500L);
        }
    }

    private android.view.View c0() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        dev.duo.hookprobe.U.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        c2.setMinimumHeight(a(76.0f));
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("小组件");
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a4.setText("预览 MiDuo 的桌面小组件，添加到桌面或换照片");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, dev.duo.hookprobe.U.b());
        android.widget.LinearLayout.LayoutParams a5 = dev.duo.hookprobe.U.a(this, 14.0f, 14.0f);
        a5.leftMargin = a(8.0f);
        c2.addView(dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(this, 4, dev.duo.hookprobe.U.d, 3.0f, false, 14.0f)), a5);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda43
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.y(view);
            }
        });
        return c2;
    }

    private android.view.View d0() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        dev.duo.hookprobe.U.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        c2.setMinimumHeight(a(76.0f));
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("工作台");
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a4.setText("内屏横放或竖拿时，在全屏 App 右下角（或左下角）按住再往里拉，进入工作台。点这里设置第一格信息格的按钮（和外屏侧栏分开）");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, dev.duo.hookprobe.U.b());
        android.widget.Switch r1 = new android.widget.Switch(this);
        this.f0 = r1;
        dev.duo.hookprobe.U.a(r1);
        this.f0.setContentDescription("工作台");
        this.f0.setEnabled(false);
        this.f0.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda20
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.n(compoundButton, z);
            }
        });
        c2.addView(this.f0);
        android.widget.LinearLayout.LayoutParams a5 = dev.duo.hookprobe.U.a(this, 14.0f, 14.0f);
        a5.leftMargin = a(8.0f);
        c2.addView(dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(this, 4, dev.duo.hookprobe.U.d, 3.0f, false, 14.0f)), a5);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda21
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.z(view);
            }
        });
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(android.view.View view) {
        if (this.U.isEnabled()) {
            this.U.performClick();
        }
    }

    private android.view.View p() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        dev.duo.hookprobe.U.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        c2.setMinimumHeight(a(76.0f));
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("开合动画（实验性）");
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        java.lang.String a5 = dev.duo.hookprobe.C0035v.a(this);
        this.k1 = a5;
        if (a5 == null) {
            a5 = "切换后需要软重启一次才可使用";
        }
        a4.setText(a5);
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, dev.duo.hookprobe.U.b());
        android.widget.Switch r1 = new android.widget.Switch(this);
        this.d0 = r1;
        dev.duo.hookprobe.U.a(r1);
        this.d0.setContentDescription("开合动画（实验性）");
        this.d0.setEnabled(false);
        this.d0.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda41
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.d(compoundButton, z);
            }
        });
        c2.addView(this.d0);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda42
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.i(view);
            }
        });
        return c2;
    }

    private android.view.View q() {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        dev.duo.hookprobe.U.a(a2, this.q.e ? 26.0f : 28.0f);
        a2.setPadding(a(18.0f), 0, a(16.0f), 0);
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        c2.setGravity(16);
        c2.setMinimumHeight(a(76.0f));
        android.widget.LinearLayout a3 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a4.setText("轻折分屏");
        a3.addView(a4);
        android.widget.TextView a5 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        this.j1 = a5;
        a5.setText(j);
        a5.setPadding(0, a(3.0f), 0, 0);
        a3.addView(a5);
        c2.addView(a3, dev.duo.hookprobe.U.b());
        android.widget.Switch r1 = new android.widget.Switch(this);
        this.c0 = r1;
        dev.duo.hookprobe.U.a(r1);
        this.c0.setContentDescription("轻折分屏");
        this.c0.setEnabled(false);
        this.c0.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda6
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.e(compoundButton, z);
            }
        });
        c2.addView(this.c0);
        final android.widget.ImageView a6 = dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(this, 5, dev.duo.hookprobe.U.e, 2.6f, false, 14.0f));
        android.widget.LinearLayout.LayoutParams a7 = dev.duo.hookprobe.U.a(this, 14.0f, 14.0f);
        a7.leftMargin = a(10.0f);
        c2.addView(a6, a7);
        a2.addView(c2);
        final android.widget.LinearLayout a8 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a9 = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.c, 600);
        a9.setText("轻折灵敏度");
        a8.addView(a9, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 2.0f));
        dev.duo.hookprobe.U.e eVar = new dev.duo.hookprobe.U.e(this, new java.lang.String[]{"灵敏", "标准", "稳定"}, null, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda7
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                dev.duo.hookprobe.MainActivity.this.k(i2);
            }
        });
        this.i0 = eVar;
        eVar.a(false);
        a8.addView(this.i0.a, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 10.0f));
        android.widget.TextView a10 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a10.setText("灵敏：轻轻一折就触发；稳定：要折得更深、更快，不容易误触。容易误触就选稳定，不好触发就选灵敏");
        a8.addView(a10, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 10.0f));
        a8.addView(new android.view.View(this), new android.widget.LinearLayout.LayoutParams(-1, a(16.0f)));
        a8.setVisibility(8);
        a2.addView(a8);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.b(a8, a6, view);
            }
        });
        return a2;
    }

    private void r() throws java.io.IOException, java.lang.InterruptedException {
        int myUid = android.os.Process.myUid() / 100000;
        java.lang.Process start = new java.lang.ProcessBuilder("su", "-c", "cmd appops set --user " + myUid + " dev.duo.hookprobe 10020 allow && cmd appops get --user " + myUid + " dev.duo.hookprobe 10020").redirectErrorStream(true).start();
        try {
            if (!start.waitFor(30L, java.util.concurrent.TimeUnit.SECONDS)) {
                start.destroyForcibly();
                throw new java.io.IOException("Lockscreen permission request timed out");
            }
            java.io.InputStream inputStream = start.getInputStream();
            try {
                java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
                byte[] bArr = new byte[256];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read < 0) {
                        break;
                    } else {
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                }
                java.lang.String byteArrayOutputStream2 = byteArrayOutputStream.toString("UTF-8");
                inputStream.close();
                if (start.exitValue() != 0 || !java.util.regex.Pattern.compile("(?m)^\\s*MIUIOP\\(10020\\): allow(?:;[^\\r\\n]*)?\\s*$").matcher(byteArrayOutputStream2).find()) {
                    throw new java.io.IOException("Lockscreen permission was not allowed: " + byteArrayOutputStream2.trim());
                }
            } catch (java.lang.Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (java.lang.Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (java.lang.InterruptedException e2) {
            start.destroyForcibly();
            throw e2;
        }
    }

    private android.view.View s() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        dev.duo.hookprobe.U.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("使用说明");
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a4.setText("安装要求、注意事项和免责声明");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, dev.duo.hookprobe.U.b());
        c2.addView(dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(this, 4, dev.duo.hookprobe.U.e, 2.6f, false, 14.0f)), dev.duo.hookprobe.U.a(this, 14.0f, 14.0f));
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda62
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.j(view);
            }
        });
        return c2;
    }

    private android.widget.LinearLayout t() {
        android.widget.TextView[] textViewArr = new android.widget.TextView[1];
        android.widget.SeekBar[] seekBarArr = new android.widget.SeekBar[1];
        android.widget.LinearLayout a2 = a("顶部避让高度", "px", 1, 126, textViewArr, seekBarArr, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda83
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                dev.duo.hookprobe.MainActivity.this.l(i2);
            }
        });
        this.G = textViewArr[0];
        this.H = seekBarArr[0];
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        int i2 = 0;
        while (true) {
            int[] iArr = dev.duo.hookprobe.P.x;
            if (i2 >= iArr.length) {
                break;
            }
            final int i3 = iArr[i2];
            android.widget.TextView a3 = dev.duo.hookprobe.U.a((android.content.Context) this, i3 + "px", false, 36.0f);
            a3.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda84
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.hookprobe.MainActivity.this.a(i3, view);
                }
            });
            this.K.add(a3);
            android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(0, a(36.0f), 1.0f);
            if (i2 > 0) {
                layoutParams.leftMargin = a(8.0f);
            }
            c2.addView(a3, layoutParams);
            i2++;
        }
        a2.addView(c2);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a4.setText("单独设置过的 App 不受影响，App 下次打开时生效");
        a2.addView(a4, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        if (!this.q.e) {
            this.N = a(a2, "顶部避让高度", ((android.widget.LinearLayout) a2.getChildAt(0)).getChildAt(0));
        }
        return a2;
    }

    private android.widget.LinearLayout u() {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        dev.duo.hookprobe.U.a(a2, this.q.e ? 26.0f : 28.0f);
        a2.setPadding(a(18.0f), a(18.0f), a(18.0f), a(18.0f));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(android.view.View view) {
        if (this.a0.isEnabled()) {
            this.a0.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(android.view.View view) {
        if (this.Q.isEnabled()) {
            this.Q.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x() {
        b(this.s0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(android.view.View view) {
        startActivity(new android.content.Intent(this, (java.lang.Class<?>) dev.duo.hookprobe.WidgetCenterActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z(android.view.View view) {
        startActivity(new android.content.Intent(this, (java.lang.Class<?>) dev.duo.hookprobe.RailCustomActivity.class).putExtra("workbench", true));
    }

    void D() {
        if (this.i1 || isDestroyed()) {
            return;
        }
        this.i1 = true;
        java.util.concurrent.ExecutorService executorService = a;
        executorService.execute(new dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda13(this));
        executorService.execute(new dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda14());
    }

    @Override // android.app.Activity
    protected void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        dev.duo.hookprobe.L.d();
        dev.duo.hookprobe.U.d dVar = new dev.duo.hookprobe.U.d(this);
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
        for (android.view.View view : this.r) {
            this.q.b.addView(view, new android.widget.FrameLayout.LayoutParams(-1, -1));
        }
        android.content.Intent intent = getIntent();
        int intExtra = intent.getIntExtra("tab", 0);
        this.v = intent.getStringExtra("pkg");
        this.w = intent.getStringExtra("label");
        if (bundle != null) {
            intExtra = bundle.getInt("tab", intExtra);
            this.Q0 = bundle.getInt("appTab", 0);
            this.v = bundle.getString("pkg");
            this.w = bundle.getString("label");
        }
        this.P0.a(this.Q0);
        a((dev.duo.hookprobe.MainActivity.h) null);
        n(intExtra);
        setContentView(this.q.a);
        this.q.a();
        dev.duo.hookprobe.MainActivity.i iVar = (dev.duo.hookprobe.MainActivity.i) getLastNonConfigurationInstance();
        if (iVar != null) {
            a(iVar);
        } else if (dev.duo.hookprobe.y.a((android.content.Context) this)) {
            a.execute(new dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda13(this));
        }
        if (bundle == null && dev.duo.hookprobe.y.a((android.content.Context) this)) {
            a.execute(new dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda14());
        }
        if (iVar != null || dev.duo.hookprobe.y.a((android.content.Context) this)) {
            this.i1 = true;
        }
        if (this.t) {
            S();
        }
        dev.duo.hookprobe.y.b((android.app.Activity) this);
    }

    @Override // android.app.Activity
    protected void onNewIntent(android.content.Intent intent) {
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
        if (this.p == null || !this.i1) {
            return;
        }
        a.execute(new dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda13(this));
    }

    @Override // android.app.Activity
    public java.lang.Object onRetainNonConfigurationInstance() {
        return this.h1;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(android.os.Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("tab", this.s);
        bundle.putInt("appTab", this.Q0);
        bundle.putString("pkg", this.v);
        bundle.putString("label", this.w);
    }

    private android.widget.TextView c(java.lang.String str) {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        c2.setPadding(0, a(10.0f), 0, 0);
        android.widget.TextView a2 = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a2.setText(str);
        c2.addView(a2);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.b, 500);
        a3.setGravity(8388613);
        a3.setPadding(a(16.0f), 0, 0, 0);
        c2.addView(a3, dev.duo.hookprobe.U.b());
        this.B0.addView(c2);
        return a3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(android.widget.CompoundButton compoundButton, boolean z) {
        if (this.e1 || this.p == null) {
            return;
        }
        if (!z) {
            i(false);
            return;
        }
        this.e1 = true;
        compoundButton.setChecked(false);
        this.e1 = false;
        k();
    }

    private android.view.View e() {
        dev.duo.hookprobe.MainActivity mainActivity;
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        if (this.q.e) {
            mainActivity = this;
        } else {
            c2.setPadding(a(6.0f), 0, a(6.0f) + this.q.c(), a(4.0f));
            android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(this);
            dev.duo.hookprobe.U.a(frameLayout, 14.0f);
            mainActivity = this;
            frameLayout.addView(dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(mainActivity, 10, dev.duo.hookprobe.U.b, 0.0f, true, 26.0f)), new android.widget.FrameLayout.LayoutParams(a(26.0f), a(26.0f), 17));
            c2.addView(frameLayout, dev.duo.hookprobe.U.a(this, 46.0f, 46.0f));
        }
        android.widget.TextView g2 = g("MiDuo");
        if (mainActivity.q.e) {
            g2.setTextSize(28.0f);
        } else {
            g2.setPadding(a(12.0f), 0, 0, 0);
        }
        c2.addView(g2, dev.duo.hookprobe.U.b());
        android.widget.LinearLayout c3 = dev.duo.hookprobe.U.c(this);
        mainActivity.y = c3;
        dev.duo.hookprobe.U.a(c3, 16.0f);
        mainActivity.y.setPadding(a(7.0f), 0, a(12.0f), 0);
        mainActivity.y.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda48
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.a(view);
            }
        });
        c2.addView(mainActivity.y, new android.widget.LinearLayout.LayoutParams(-2, a(32.0f)));
        a2.addView(c2, new android.widget.LinearLayout.LayoutParams(-1, mainActivity.q.e ? a(40.0f) : -2));
        android.view.View X = X();
        android.view.View t = t();
        android.view.View P = P();
        android.view.View H = H();
        android.view.View b2 = b(!mainActivity.q.e);
        if (!mainActivity.q.e) {
            a2.addView(X, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
            a2.addView(dev.duo.hookprobe.U.a((android.content.Context) this, "常用设置"));
            a2.addView(t, dev.duo.hookprobe.U.a());
            a2.addView(P, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
            a2.addView(H, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
            a2.addView(b2, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
            a2.addView(v(), dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(64.0f)), this, 12.0f));
            a2.addView(a0(), dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(64.0f)), this, 12.0f));
            a2.addView(s(), dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(64.0f)), this, 12.0f));
            return a(a2);
        }
        android.widget.LinearLayout a3 = dev.duo.hookprobe.U.a((android.content.Context) this);
        a3.addView(a(X, t), new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0f));
        android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0f);
        layoutParams.topMargin = a(14.0f);
        a3.addView(a(b2, H), layoutParams);
        a2.addView(a3, dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0f), this, 14.0f));
        a2.addView(P, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 14.0f));
        a2.addView(F(), dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(84.0f)), this, 14.0f));
        a2.addView(v(), dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(64.0f)), this, 14.0f));
        a2.addView(a(a0(), s()), dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(64.0f)), this, 14.0f));
        android.widget.ScrollView a4 = a(a2);
        a4.setFillViewport(true);
        return a4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(android.view.View view) {
        boolean z = this.B0.getVisibility() != 0;
        this.B0.setVisibility(z ? 0 : 8);
        this.A0.setRotation(z ? 180.0f : 0.0f);
    }

    private android.widget.TextView g(java.lang.String str) {
        android.widget.TextView a2 = dev.duo.hookprobe.U.a(this, 32.0f, dev.duo.hookprobe.U.b, 800);
        a2.setText(str);
        a2.setLetterSpacing(-0.02f);
        return a2;
    }

    static java.lang.String h(java.lang.String str) {
        return "com.android.camera".equals(str) ? "相机不能开 Duo" : "com.android.quicksearchbox".equals(str) ? "系统搜索不能开 Duo" : "miui.systemui.plugin".equals(str) ? "系统界面插件不能开 Duo" : "这个应用不能开 Duo";
    }

    private android.widget.LinearLayout i() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        c2.setMinimumHeight(a(44.0f));
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(android.widget.CompoundButton compoundButton, boolean z) {
        if (this.e1 || this.p == null) {
            return;
        }
        n(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(android.widget.CompoundButton compoundButton, boolean z) {
        if (this.e1 || this.p == null) {
            return;
        }
        o(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(android.widget.CompoundButton compoundButton, boolean z) {
        if (this.e1 || this.p == null) {
            return;
        }
        p(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(android.widget.CompoundButton compoundButton, boolean z) {
        if (this.e1 || this.p == null) {
            return;
        }
        a(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(int i2) {
        this.s = i2;
        int i3 = 0;
        while (true) {
            android.view.View[] viewArr = this.r;
            if (i3 >= viewArr.length) {
                this.q.a(i2, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda71
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
            android.widget.Toast.makeText(this, z ? "已开启搜索按钮" : "已关闭搜索按钮", 0).show();
        } else {
            android.widget.Toast.makeText(this, "搜索按钮保存失败", 0).show();
            T();
        }
    }

    private android.view.View v() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        dev.duo.hookprobe.U.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("图标");
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a4.setText("从 MTZ 导入图标，或恢复原备份");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, dev.duo.hookprobe.U.b());
        c2.addView(dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(this, 4, dev.duo.hookprobe.U.e, 2.6f, false, 14.0f)), dev.duo.hookprobe.U.a(this, 14.0f, 14.0f));
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda25
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.k(view);
            }
        });
        return c2;
    }

    private android.view.View w() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        dev.duo.hookprobe.U.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), a(12.0f), a(16.0f), a(12.0f));
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("内屏原生顶栏");
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a4.setText("开启后内屏显示小米原厂顶栏（时间、电量、通知），往下拉交给系统；每个 App 可在详情里单独设置");
        a4.setPadding(0, a(3.0f), a(8.0f), 0);
        a2.addView(a4);
        c2.addView(a2, dev.duo.hookprobe.U.b());
        android.widget.Switch r1 = new android.widget.Switch(this);
        this.Y = r1;
        dev.duo.hookprobe.U.a(r1);
        this.Y.setContentDescription("内屏原生顶栏");
        this.Y.setEnabled(false);
        this.Y.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda64
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.f(compoundButton, z);
            }
        });
        c2.addView(this.Y);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda65
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.l(view);
            }
        });
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(android.view.View view) {
        dev.duo.hookprobe.T.a(this);
    }

    private android.view.View y() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        dev.duo.hookprobe.U.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        c2.setMinimumHeight(a(76.0f));
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("桌面布局备份");
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a4.setText("掉 root 后桌面被打乱，root 回来自动换回；也可以手动备份");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, dev.duo.hookprobe.U.b());
        android.widget.LinearLayout.LayoutParams a5 = dev.duo.hookprobe.U.a(this, 14.0f, 14.0f);
        a5.leftMargin = a(8.0f);
        c2.addView(dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(this, 4, dev.duo.hookprobe.U.d, 3.0f, false, 14.0f)), a5);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda38
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.m(view);
            }
        });
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        java.lang.String valueOf;
        final dev.duo.hookprobe.C0026o c0026o;
        java.lang.String valueOf2;
        android.content.pm.PackageManager packageManager = getPackageManager();
        final java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.HashSet hashSet = new java.util.HashSet();
        java.util.Iterator<java.lang.String> it = d.iterator();
        boolean z = false;
        int i2 = 0;
        while (it.hasNext()) {
            try {
                packageManager.getApplicationInfo(it.next(), 0);
                i2++;
            } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
            }
        }
        for (android.content.pm.PackageInfo packageInfo : packageManager.getInstalledPackages(1)) {
            java.lang.String str = packageInfo.packageName;
            if (!d.contains(str)) {
                android.content.pm.ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                if (applicationInfo.enabled && packageInfo.activities != null && !"system".equals(applicationInfo.processName)) {
                    android.content.pm.ActivityInfo[] activityInfoArr = packageInfo.activities;
                    int length = activityInfoArr.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 < length) {
                            android.content.pm.ActivityInfo activityInfo = activityInfoArr[i3];
                            if (activityInfo.enabled && !"system".equals(activityInfo.processName) && !"com.android.systemui".equals(activityInfo.processName)) {
                                dev.duo.hookprobe.MainActivity.g gVar = new dev.duo.hookprobe.MainActivity.g();
                                gVar.a = str;
                                gVar.b = java.lang.String.valueOf(packageInfo.applicationInfo.loadLabel(packageManager));
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
        final java.text.Collator collator = java.text.Collator.getInstance(java.util.Locale.CHINA);
        java.util.Collections.sort(arrayList, new java.util.Comparator() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda66
            @Override // java.util.Comparator
            public final int compare(java.lang.Object obj, java.lang.Object obj2) {
                int a2;
                a2 = dev.duo.hookprobe.MainActivity.a(collator, (dev.duo.hookprobe.MainActivity.g) obj, (dev.duo.hookprobe.MainActivity.g) obj2);
                return a2;
            }
        });
        for (java.lang.String str2 : dev.duo.hookprobe.P.i) {
            try {
                android.content.pm.ApplicationInfo applicationInfo2 = packageManager.getApplicationInfo(str2, 0);
                dev.duo.hookprobe.MainActivity.g gVar2 = new dev.duo.hookprobe.MainActivity.g();
                gVar2.a = str2;
                gVar2.b = java.lang.String.valueOf(applicationInfo2.loadLabel(packageManager));
                gVar2.c = applicationInfo2.loadIcon(packageManager);
                gVar2.d = true;
                gVar2.e = h(str2);
                arrayList.add(gVar2);
                hashSet.add(str2);
            } catch (android.content.pm.PackageManager.NameNotFoundException e3) {
            }
        }
        for (java.lang.String str3 : dev.duo.hookprobe.P.j) {
            if (!hashSet.contains(str3)) {
                try {
                    android.content.pm.ApplicationInfo applicationInfo3 = packageManager.getApplicationInfo(str3, 0);
                    dev.duo.hookprobe.MainActivity.g gVar3 = new dev.duo.hookprobe.MainActivity.g();
                    gVar3.a = str3;
                    gVar3.b = java.lang.String.valueOf(applicationInfo3.loadLabel(packageManager));
                    gVar3.c = applicationInfo3.loadIcon(packageManager);
                    arrayList.add(gVar3);
                } catch (android.content.pm.PackageManager.NameNotFoundException e4) {
                }
            }
        }
        java.util.Collections.sort(arrayList, new java.util.Comparator() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda67
            @Override // java.util.Comparator
            public final int compare(java.lang.Object obj, java.lang.Object obj2) {
                int b2;
                b2 = dev.duo.hookprobe.MainActivity.b(collator, (dev.duo.hookprobe.MainActivity.g) obj, (dev.duo.hookprobe.MainActivity.g) obj2);
                return b2;
            }
        });
        boolean z2 = !i("debug.duo.master").isEmpty();
        io.github.libxposed.service.XposedService a2 = dev.duo.hookprobe.L.a(8000L);
        dev.duo.hookprobe.MainActivity.a aVar = null;
        if (a2 != null) {
            try {
                c0026o = new dev.duo.hookprobe.C0026o(a2);
                valueOf = null;
            } catch (java.lang.Throwable th) {
                valueOf = java.lang.String.valueOf(th);
                c0026o = null;
            }
        } else {
            c0026o = null;
            valueOf = null;
        }
        java.util.HashSet hashSet2 = new java.util.HashSet();
        if (a2 != null) {
            try {
                hashSet2.addAll(a2.getScope());
            } catch (java.lang.Throwable th2) {
                valueOf2 = java.lang.String.valueOf(th2);
            }
        }
        valueOf2 = null;
        final dev.duo.hookprobe.MainActivity.i iVar = new dev.duo.hookprobe.MainActivity.i(aVar);
        iVar.a = arrayList;
        iVar.b = c0026o;
        iVar.c = null;
        iVar.d = hashSet2;
        iVar.e = valueOf2;
        iVar.f = z2;
        iVar.h = i2;
        iVar.g = c0026o != null ? "已连接 · " + a2.getFrameworkVersion() : "未连接" + (valueOf == null ? "：请在 LSPosed 中启用 MiDuo" : "（" + valueOf + "）");
        iVar.i = new java.lang.String[]{android.os.Build.VERSION.INCREMENTAL, a(packageManager, "com.miui.home"), a(packageManager, "com.miui.personalassistant"), a(packageManager, getPackageName())};
        if (c0026o != null && c0026o.d()) {
            z = true;
        }
        iVar.j = dev.duo.hookprobe.r.a(z);
        this.m.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda68
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.a(iVar, c0026o, arrayList);
            }
        });
    }

    private android.widget.LinearLayout b(boolean z) {
        dev.duo.hookprobe.MainActivity mainActivity;
        android.widget.LinearLayout u = u();
        if (z) {
            u.setPadding(a(18.0f), 0, a(18.0f), 0);
        }
        android.widget.LinearLayout i2 = i();
        if (z) {
            i2.setMinimumHeight(a(52.0f));
        }
        android.view.View view = new android.view.View(this);
        this.u0 = view;
        i2.addView(view, dev.duo.hookprobe.U.a(this, 7.0f, 7.0f));
        android.widget.TextView a2 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a2.setText("诊断信息");
        a2.setPadding(a(10.0f), 0, 0, 0);
        i2.addView(a2, dev.duo.hookprobe.U.b());
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.d, 500);
        this.v0 = a3;
        i2.addView(a3);
        u.addView(i2);
        this.B0 = dev.duo.hookprobe.U.a((android.content.Context) this);
        if (!z) {
            mainActivity = this;
        } else {
            mainActivity = this;
            mainActivity.A0 = dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(mainActivity, 5, dev.duo.hookprobe.U.e, 2.6f, false, 14.0f));
            android.widget.LinearLayout.LayoutParams a4 = dev.duo.hookprobe.U.a(this, 14.0f, 14.0f);
            a4.leftMargin = a(10.0f);
            i2.addView(mainActivity.A0, a4);
            i2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda72
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view2) {
                    dev.duo.hookprobe.MainActivity.this.f(view2);
                }
            });
            mainActivity.B0.setVisibility(8);
        }
        android.view.View view2 = new android.view.View(this);
        view2.setBackgroundColor(dev.duo.hookprobe.U.h);
        mainActivity.B0.addView(view2, new android.widget.LinearLayout.LayoutParams(-1, java.lang.Math.max(1, a(0.5f))));
        mainActivity.C0 = c("LSPosed");
        mainActivity.D0 = c("作用域");
        mainActivity.E0 = c("系统");
        mainActivity.F0 = c("小米桌面");
        mainActivity.G0 = c("智能助理");
        mainActivity.H0 = c("MiDuo");
        mainActivity.I0 = c("开合动画");
        android.widget.TextView a5 = dev.duo.hookprobe.U.a(this, 12.0f, -2543579, 500);
        mainActivity.J0 = a5;
        a5.setPadding(0, a(10.0f), 0, 0);
        mainActivity.J0.setVisibility(8);
        mainActivity.B0.addView(mainActivity.J0);
        android.widget.TextView a6 = dev.duo.hookprobe.U.a((android.content.Context) this, "", false, 40.0f);
        mainActivity.K0 = a6;
        a6.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda73
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view3) {
                dev.duo.hookprobe.MainActivity.this.g(view3);
            }
        });
        mainActivity.B0.addView(mainActivity.K0, dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(40.0f)), this, 10.0f));
        android.widget.TextView a7 = dev.duo.hookprobe.U.a((android.content.Context) this, "Bug 抓取与导出", false, 40.0f);
        a7.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda74
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view3) {
                dev.duo.hookprobe.MainActivity.this.h(view3);
            }
        });
        mainActivity.B0.addView(a7, dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(40.0f)), this, 8.0f));
        if (z) {
            mainActivity.B0.addView(new android.view.View(this), new android.widget.LinearLayout.LayoutParams(-1, a(14.0f)));
        }
        u.addView(mainActivity.B0);
        return u;
    }

    private android.view.View j() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        dev.duo.hookprobe.U.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("5G 新样式");
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a4.setText("用流量时圆环中间显示信号格，缺口处写网络类型");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, dev.duo.hookprobe.U.b());
        android.widget.Switch r1 = new android.widget.Switch(this);
        this.e0 = r1;
        dev.duo.hookprobe.U.a(r1);
        this.e0.setContentDescription("5G 新样式");
        this.e0.setEnabled(false);
        this.e0.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda32
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.b(compoundButton, z);
            }
        });
        c2.addView(this.e0);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda33
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.b(view);
            }
        });
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(android.view.View view) {
        startActivity(new android.content.Intent(this, (java.lang.Class<?>) dev.duo.icons.MainActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(android.view.View view) {
        if (this.Y.isEnabled()) {
            this.Y.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(int i2) {
        dev.duo.hookprobe.C0026o c0026o = this.p;
        if (c0026o == null) {
            return;
        }
        if (!c0026o.c(i2)) {
            android.widget.Toast.makeText(this, "外屏缩放保存失败", 0).show();
            return;
        }
        android.widget.TextView textView = this.O;
        if (textView != null) {
            textView.setText("当前 " + i2 + "%");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(android.view.View view) {
        if (this.d0.isEnabled()) {
            this.d0.performClick();
        }
    }

    private void k(boolean z) {
        if (this.p.i(z)) {
            android.widget.Toast.makeText(this, z ? "已开启通知图标" : "已关闭通知图标", 0).show();
        } else {
            android.widget.Toast.makeText(this, "通知图标保存失败", 0).show();
            T();
        }
    }

    private void l() {
        final long j2;
        final int i2;
        final java.lang.String str;
        final android.app.Dialog dialog = new android.app.Dialog(this);
        dialog.requestWindowFeature(1);
        android.widget.ScrollView scrollView = new android.widget.ScrollView(this);
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        a2.setPadding(a(22.0f), a(22.0f), a(22.0f), a(18.0f));
        scrollView.addView(a2);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 20.0f, dev.duo.hookprobe.U.b, 700);
        a3.setText("打开前检查");
        a2.addView(a3);
        final android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.c, dev.duo.hookprobe.J.m);
        a4.setText("正在检查…");
        a4.setLineSpacing(a(2.0f), 1.0f);
        a2.addView(a4, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 8.0f));
        final android.widget.LinearLayout a5 = dev.duo.hookprobe.U.a((android.content.Context) this);
        a5.setBackground(dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.g, a(16.0f)));
        a5.setPadding(a(14.0f), 0, a(14.0f), 0);
        a5.setVisibility(8);
        a2.addView(a5, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 14.0f));
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        c2.setGravity(8388629);
        final android.widget.TextView a6 = dev.duo.hookprobe.U.a((android.content.Context) this, "取消", false, 38.0f);
        a6.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dialog.dismiss();
            }
        });
        c2.addView(a6);
        a2.addView(c2, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 18.0f));
        dialog.setContentView(scrollView);
        dialog.show();
        dialog.getWindow().setBackgroundDrawable(dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.i, a(24.0f)));
        dialog.getWindow().setLayout(java.lang.Math.min(getResources().getDisplayMetrics().widthPixels - a(32.0f), a(560.0f)), -2);
        io.github.libxposed.service.XposedService c3 = dev.duo.hookprobe.L.c();
        final boolean z = (this.p == null || c3 == null) ? false : true;
        if (!z) {
            j2 = 0;
            i2 = 0;
            str = "";
        } else {
            java.lang.String frameworkVersion = c3.getFrameworkVersion();
            int apiVersion = c3.getApiVersion();
            j2 = c3.getFrameworkVersionCode();
            i2 = apiVersion;
            str = frameworkVersion;
        }
        final java.util.Set<java.lang.String> set = this.b1;
        final java.lang.String str2 = this.c1;
        final java.util.concurrent.Future<?> submit = c.submit(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.a(z, str, i2, j2, set, str2, dialog, a5, a4, a6);
            }
        });
        dialog.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(android.content.DialogInterface dialogInterface) {
                dev.duo.hookprobe.MainActivity.this.b(submit, dialogInterface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(android.view.View view) {
        f(this.l1 == 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(android.widget.CompoundButton compoundButton, boolean z) {
        dev.duo.hookprobe.C0026o c0026o;
        if (this.e1 || (c0026o = this.p) == null) {
            return;
        }
        if (!c0026o.g(z)) {
            android.widget.Toast.makeText(this, "内屏原生顶栏保存失败", 0).show();
            T();
        } else {
            android.widget.Toast.makeText(this, "已保存，切回 App 或开合一下即生效；个别 App 要重新打开", 1).show();
            if (this.u != null) {
                S();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(android.view.View view) {
        L();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(android.widget.CompoundButton compoundButton, boolean z) {
        if (this.e1 || this.p == null) {
            return;
        }
        m(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(android.view.View view) {
        if (this.Z.isEnabled()) {
            this.Z.performClick();
        }
    }

    static /* synthetic */ java.lang.String a(java.lang.Object obj) {
        java.lang.String str = g + obj;
        g = str;
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(android.widget.CompoundButton compoundButton, boolean z) {
        if (this.e1 || this.p == null) {
            return;
        }
        k(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(android.view.View view) {
        startActivity(new android.content.Intent(this, (java.lang.Class<?>) dev.duo.hookprobe.BugCaptureActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(int i2) {
        a(true, i2 == 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(android.view.View view) {
        startActivity(new android.content.Intent(this, (java.lang.Class<?>) dev.duo.hookprobe.LayoutBackupActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(android.widget.CompoundButton compoundButton, boolean z) {
        if (this.e1 || this.p == null) {
            return;
        }
        r(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(int i2) {
        if (!this.p.d(i2)) {
            android.widget.Toast.makeText(this, "顶部留白保存失败", 0).show();
        }
        T();
        if (this.u != null) {
            S();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(android.widget.CompoundButton compoundButton, boolean z) {
        dev.duo.hookprobe.C0026o c0026o;
        if (this.e1 || (c0026o = this.p) == null) {
            return;
        }
        if (!c0026o.j(z)) {
            android.widget.Toast.makeText(this, "外屏顶栏保存失败", 0).show();
            T();
            return;
        }
        T();
        android.widget.Toast.makeText(this, "已保存，切回 App 后生效；个别 App 要重新打开", 1).show();
        if (this.u != null) {
            S();
        }
    }

    static java.lang.String i(java.lang.String str) {
        try {
            java.lang.Process start = new java.lang.ProcessBuilder("getprop", str).start();
            byte[] bArr = new byte[16];
            int read = start.getInputStream().read(bArr);
            start.waitFor();
            if (read <= 0) {
                return "";
            }
            return new java.lang.String(bArr, 0, read).trim();
        } catch (java.lang.Throwable th) {
            return "";
        }
    }

    private android.view.View m() {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        dev.duo.hookprobe.U.a(a2, this.q.e ? 26.0f : 28.0f);
        a2.setPadding(a(18.0f), a(6.0f), a(18.0f), a(6.0f));
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        c2.setMinimumHeight(a(76.0f));
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("颜色配置");
        c2.addView(a3, dev.duo.hookprobe.U.b());
        final android.widget.ImageView a4 = dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(this, 5, dev.duo.hookprobe.U.d, 3.0f, false, 12.0f));
        c2.addView(a4, dev.duo.hookprobe.U.a(this, 12.0f, 12.0f));
        a2.addView(c2);
        final android.widget.LinearLayout a5 = dev.duo.hookprobe.U.a((android.content.Context) this);
        a5.setPadding(0, 0, 0, a(12.0f));
        android.widget.TextView a6 = dev.duo.hookprobe.U.a((android.content.Context) this, "导出全部 App 颜色配置", false, 48.0f);
        a6.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda80
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.c(view);
            }
        });
        a5.addView(a6, dev.duo.hookprobe.U.a());
        android.widget.TextView a7 = dev.duo.hookprobe.U.a((android.content.Context) this, "导入颜色配置", false, 48.0f);
        a7.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda81
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.d(view);
            }
        });
        a5.addView(a7, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 8.0f));
        a5.setVisibility(8);
        a2.addView(a5);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda82
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.a(a5, a4, view);
            }
        });
        return a2;
    }

    private android.view.View n() {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        dev.duo.hookprobe.U.a(a2, this.q.e ? 26.0f : 28.0f);
        a2.setPadding(a(18.0f), a(12.0f), a(16.0f), a(12.0f));
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        android.widget.LinearLayout a3 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a4.setText("新应用默认开 Duo");
        a3.addView(a4);
        android.widget.TextView a5 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a5.setText("只影响还没单独设过的应用。打开时会把它们打开；关掉后，已经打开的不变");
        a5.setPadding(0, a(3.0f), a(8.0f), 0);
        a3.addView(a5);
        c2.addView(a3, dev.duo.hookprobe.U.b());
        android.widget.Switch r2 = new android.widget.Switch(this);
        this.N0 = r2;
        dev.duo.hookprobe.U.a(r2);
        this.N0.setContentDescription("新应用默认开 Duo");
        this.N0.setEnabled(false);
        this.N0.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda39
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.c(compoundButton, z);
            }
        });
        c2.addView(this.N0);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda40
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.MainActivity.this.e(view);
            }
        });
        a2.addView(c2);
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        int i2;
        dev.duo.hookprobe.C0026o c0026o;
        java.lang.String lowerCase = this.L0.getText().toString().trim().toLowerCase(java.util.Locale.ROOT);
        this.o.clear();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.Iterator<dev.duo.hookprobe.MainActivity.g> it = this.n.iterator();
        while (true) {
            boolean z = false;
            if (it.hasNext()) {
                dev.duo.hookprobe.MainActivity.g next = it.next();
                if (!lowerCase.isEmpty()) {
                    java.lang.String str = next.b;
                    java.util.Locale locale = java.util.Locale.ROOT;
                    if (!str.toLowerCase(locale).contains(lowerCase) && !next.a.toLowerCase(locale).contains(lowerCase)) {
                    }
                }
                if (!next.d && (c0026o = this.p) != null && c0026o.g(next.a)) {
                    z = true;
                }
                if (!next.d || ((i2 = this.Q0) != 1 && i2 != 2)) {
                    int i3 = this.Q0;
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
                this.R0.notifyDataSetChanged();
                U();
                return;
            }
        }
    }

    class e implements io.github.libxposed.service.XposedService.OnScopeEventListener {
        e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(java.util.List list) {
            dev.duo.hookprobe.MainActivity.this.f1 = false;
            dev.duo.hookprobe.MainActivity.this.b1 = new java.util.HashSet(dev.duo.hookprobe.MainActivity.this.b1);
            dev.duo.hookprobe.MainActivity.this.b1.addAll(list);
            java.lang.String unused = dev.duo.hookprobe.MainActivity.g = dev.duo.hookprobe.MainActivity.g.replaceFirst("\\d+ 个等待 LSPosed 授权", dev.duo.hookprobe.MainActivity.this.B().size() + " 个等待 LSPosed 授权");
            dev.duo.hookprobe.MainActivity.this.R();
            dev.duo.hookprobe.MainActivity.this.o();
        }

        @Override // io.github.libxposed.service.XposedService.OnScopeEventListener
        public void onScopeRequestApproved(final java.util.List<java.lang.String> list) {
            dev.duo.hookprobe.MainActivity.this.m.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$e$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MainActivity.e.this.a(list);
                }
            });
        }

        @Override // io.github.libxposed.service.XposedService.OnScopeEventListener
        public void onScopeRequestFailed(final java.lang.String str) {
            dev.duo.hookprobe.MainActivity.this.m.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$e$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MainActivity.e.this.a(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(java.lang.String str) {
            dev.duo.hookprobe.MainActivity.this.f1 = false;
            dev.duo.hookprobe.MainActivity.a((java.lang.Object) ("\n作用域申请未完成：" + str));
            dev.duo.hookprobe.MainActivity.this.R();
        }
    }

    private android.view.View g() {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView g2 = g("UI");
        g2.setPadding(a(6.0f), 0, 0, a(10.0f));
        a2.addView(g2, new android.widget.LinearLayout.LayoutParams(-1, a(56.0f)));
        dev.duo.hookprobe.U.e eVar = new dev.duo.hookprobe.U.e(this, new java.lang.String[]{"细", "粗"}, null, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda60
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                dev.duo.hookprobe.MainActivity.this.e(i2);
            }
        });
        this.g0 = eVar;
        a2.addView(a("时钟线条", "圆环、时间和数字一起变粗或变细", eVar), dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(64.0f)), this, 12.0f));
        dev.duo.hookprobe.U.e eVar2 = new dev.duo.hookprobe.U.e(this, new java.lang.String[]{"下方", "顶部"}, null, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda61
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                dev.duo.hookprobe.MainActivity.this.f(i2);
            }
        });
        this.h0 = eVar2;
        a2.addView(a("电量百分比位置", "系统电量百分比打开时，显示在圆环下方或顶部", eVar2), dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(72.0f)), this, 12.0f));
        a2.addView(j(), dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(72.0f)), this, 12.0f));
        a2.addView(C(), dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(64.0f)), this, 12.0f));
        a2.addView(Q(), dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(72.0f)), this, 12.0f));
        a2.addView(Y(), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        return a(a2);
    }

    private void k() {
        final android.app.Dialog dialog = new android.app.Dialog(this);
        dialog.requestWindowFeature(1);
        android.widget.ScrollView scrollView = new android.widget.ScrollView(this);
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        a2.setPadding(a(22.0f), a(22.0f), a(22.0f), a(18.0f));
        scrollView.addView(a2);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 20.0f, dev.duo.hookprobe.U.b, 700);
        a3.setText("开合动画检查");
        a2.addView(a3);
        final android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.c, dev.duo.hookprobe.J.m);
        a4.setText("正在检查接口和传感器数据，请稍候…");
        a4.setLineSpacing(a(2.0f), 1.0f);
        a2.addView(a4, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 8.0f));
        final android.widget.LinearLayout a5 = dev.duo.hookprobe.U.a((android.content.Context) this);
        a5.setBackground(dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.g, a(16.0f)));
        a5.setPadding(a(14.0f), 0, a(14.0f), 0);
        a5.setVisibility(8);
        a2.addView(a5, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 14.0f));
        final android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        c2.setGravity(8388629);
        final android.widget.TextView a6 = dev.duo.hookprobe.U.a((android.content.Context) this, "取消", false, 38.0f);
        a6.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dialog.dismiss();
            }
        });
        c2.addView(a6);
        a2.addView(c2, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 18.0f));
        dialog.setContentView(scrollView);
        dialog.show();
        dialog.getWindow().setBackgroundDrawable(dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.i, a(24.0f)));
        dialog.getWindow().setLayout(java.lang.Math.min(getResources().getDisplayMetrics().widthPixels - a(32.0f), a(560.0f)), -2);
        final dev.duo.hookprobe.C0026o c0026o = this.p;
        final boolean z = this.Y0;
        final boolean z2 = this.X0;
        final boolean z3 = c0026o.m() && z && z2;
        final java.util.Set<java.lang.String> set = this.b1;
        final java.lang.String str = this.c1;
        final java.lang.String str2 = this.a1[2];
        final java.util.concurrent.Future<?> submit = c.submit(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.a(c0026o, z, z2, set, str, str2, dialog, a5, z3, a4, a6, c2);
            }
        });
        dialog.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda19
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(android.content.DialogInterface dialogInterface) {
                submit.cancel(true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(float f2) {
        return dev.duo.hookprobe.U.a(this, f2);
    }

    private android.view.View d() {
        dev.duo.hookprobe.U.d dVar = this.q;
        this.x = dVar.a(dVar.e());
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        a2.setPadding(this.x, this.q.d(), this.x, a(12.0f));
        android.widget.TextView g2 = g("App");
        if (!this.q.e) {
            g2.setPadding(a(6.0f), 0, 0, a(10.0f));
            a2.addView(g2, new android.widget.LinearLayout.LayoutParams(-1, a(56.0f)));
        } else {
            g2.setTextSize(28.0f);
            g2.setGravity(16);
            a2.addView(g2, new android.widget.LinearLayout.LayoutParams(-1, a(40.0f)));
        }
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        dev.duo.hookprobe.U.a(c2, 23.0f);
        c2.setPadding(a(16.0f), 0, a(16.0f), 0);
        c2.addView(dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(this, 8, dev.duo.hookprobe.U.d, 2.4f, false, 17.0f)), dev.duo.hookprobe.U.a(this, 17.0f, 17.0f));
        android.widget.EditText editText = new android.widget.EditText(this);
        this.L0 = editText;
        editText.setId(1004);
        this.L0.setHint("搜索 App 名称或包名");
        this.L0.setHintTextColor(dev.duo.hookprobe.U.d);
        this.L0.setTextColor(dev.duo.hookprobe.U.b);
        this.L0.setTextSize(15.0f);
        this.L0.setSingleLine(true);
        dev.duo.hookprobe.MainActivity.a aVar = null;
        this.L0.setBackground(null);
        this.L0.setPadding(a(10.0f), 0, 0, 0);
        this.L0.addTextChangedListener(new dev.duo.hookprobe.MainActivity.b());
        c2.addView(this.L0, new android.widget.LinearLayout.LayoutParams(0, -1, 1.0f));
        android.widget.LinearLayout a3 = dev.duo.hookprobe.U.a((android.content.Context) this);
        dev.duo.hookprobe.U.a(a3, 24.0f);
        a3.setPadding(a(18.0f), 0, a(14.0f), 0);
        android.widget.LinearLayout c3 = dev.duo.hookprobe.U.c(this);
        c3.setMinimumHeight(a(58.0f));
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 16.0f, dev.duo.hookprobe.U.b, 600);
        a4.setText("全部 App 开启 Duo");
        c3.addView(a4, dev.duo.hookprobe.U.b());
        android.widget.Switch r13 = new android.widget.Switch(this);
        this.M0 = r13;
        dev.duo.hookprobe.U.a(r13);
        this.M0.setContentDescription("全部 App 开启 Duo");
        this.M0.setEnabled(false);
        this.M0.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda89
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.MainActivity.this.a(compoundButton, z);
            }
        });
        c3.addView(this.M0);
        a3.addView(c3);
        android.widget.TextView a5 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.c, dev.duo.hookprobe.J.m);
        this.O0 = a5;
        a5.setLineSpacing(0.0f, 1.3f);
        this.O0.setPadding(0, 0, 0, a(14.0f));
        this.O0.setVisibility(8);
        a3.addView(this.O0);
        a2.addView(c2, dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(46.0f)), this, 12.0f));
        a2.addView(a3, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        a2.addView(n(), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        a2.addView(E(), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        a2.addView(w(), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        dev.duo.hookprobe.U.e eVar = new dev.duo.hookprobe.U.e(this, e, null, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda90
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                dev.duo.hookprobe.MainActivity.this.d(i2);
            }
        });
        this.P0 = eVar;
        for (android.widget.TextView textView : eVar.c) {
            textView.setTextSize(13.0f);
        }
        this.P0.a(0);
        a2.addView(this.P0.a, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 16.0f));
        dev.duo.hookprobe.MainActivity.c cVar = new dev.duo.hookprobe.MainActivity.c(this);
        this.S0 = cVar;
        cVar.setId(1002);
        this.S0.setDivider(null);
        this.S0.setSelector(android.R.color.transparent);
        this.S0.setClipToPadding(false);
        this.S0.setVerticalScrollBarEnabled(false);
        this.S0.setPadding(0, a(18.0f), 0, this.q.b());
        this.S0.addHeaderView(a2, null, false);
        dev.duo.hookprobe.MainActivity.f fVar = new dev.duo.hookprobe.MainActivity.f(this, aVar);
        this.R0 = fVar;
        this.S0.setAdapter((android.widget.ListAdapter) fVar);
        this.S0.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda91
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(android.widget.AdapterView adapterView, android.view.View view, int i2, long j2) {
                dev.duo.hookprobe.MainActivity.this.a(adapterView, view, i2, j2);
            }
        });
        if (!this.t) {
            return this.S0;
        }
        android.widget.LinearLayout c4 = dev.duo.hookprobe.U.c(this);
        c4.setGravity(48);
        c4.addView(this.S0, new android.widget.LinearLayout.LayoutParams(a(316.0f), -1));
        this.u = new android.widget.FrameLayout(this);
        android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(0, -1, 1.0f);
        layoutParams.leftMargin = a(14.0f);
        c4.addView(this.u, layoutParams);
        return c4;
    }

    private android.widget.ScrollView a(android.widget.LinearLayout linearLayout) {
        android.widget.ScrollView scrollView = new android.widget.ScrollView(this);
        scrollView.setClipToPadding(false);
        scrollView.setVerticalScrollBarEnabled(false);
        dev.duo.hookprobe.U.d dVar = this.q;
        int a2 = dVar.a(dVar.e());
        linearLayout.setPadding(a2, this.q.d(), a2, this.q.b());
        scrollView.addView(linearLayout);
        return scrollView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(android.widget.CompoundButton compoundButton, boolean z) {
        if (this.e1 || this.p == null || f) {
            return;
        }
        if (!this.p.d(z)) {
            android.widget.Toast.makeText(this, "默认开关保存失败", 0).show();
            R();
            return;
        }
        if (z) {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            for (dev.duo.hookprobe.MainActivity.g gVar : this.n) {
                if (!gVar.d && !dev.duo.hookprobe.P.k.contains(gVar.a) && this.p.k(gVar.a)) {
                    arrayList.add(gVar);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            a((java.util.List<dev.duo.hookprobe.MainActivity.g>) arrayList, true, false);
        }
    }

    private void f(boolean z) {
        this.l1 = z ? 1.0f : 0.0f;
        android.animation.ValueAnimator valueAnimator = this.t0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        android.animation.ValueAnimator ofFloat = android.animation.ValueAnimator.ofFloat(this.s0, this.l1);
        this.t0 = ofFloat;
        ofFloat.setDuration(java.lang.Math.max(1, java.lang.Math.round(java.lang.Math.abs(this.l1 - r6) * 460.0f)));
        this.t0.setInterpolator(new android.view.animation.PathInterpolator(0.2f, 0.0f, 0.0f, 1.0f));
        this.t0.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda78
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator2) {
                dev.duo.hookprobe.MainActivity.this.a(valueAnimator2);
            }
        });
        this.t0.start();
    }

    private void i(final boolean z) {
        if (!this.p.e(z)) {
            android.widget.Toast.makeText(this, "开合动画保存失败", 0).show();
            T();
        } else {
            android.widget.Toast.makeText(this, "已保存，需要软重启一次才可使用", 1).show();
            T();
            a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MainActivity.this.d(z);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s(android.view.View view) {
        V();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(int i2) {
        a(false, i2 == 1);
    }

    private android.view.View h() {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView g2 = g("小功能");
        g2.setPadding(a(6.0f), 0, 0, a(10.0f));
        a2.addView(g2, new android.widget.LinearLayout.LayoutParams(-1, a(56.0f)));
        a2.addView(c0(), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        a2.addView(y(), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        a2.addView(I(), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        a2.addView(O());
        a2.addView(G(), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        a2.addView(m(), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        a2.addView(d0(), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        a2.addView(q(), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        a2.addView(W(), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        a2.addView(p(), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 12.0f));
        return a(a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.view.View view) {
        n(2);
    }

    private android.widget.LinearLayout a(android.view.View view, android.view.View view2) {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        c2.setBaselineAligned(false);
        c2.addView(view, new android.widget.LinearLayout.LayoutParams(0, -1, 1.0f));
        android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(0, -1, 1.0f);
        layoutParams.leftMargin = a(14.0f);
        c2.addView(view2, layoutParams);
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(int i2) {
        l(i2 == 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(android.view.View view) {
        dev.duo.hookprobe.ColorConfigActivity.a((android.app.Activity) this, (java.lang.String) null, true);
    }

    private android.view.View f() {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView g2 = g("授权");
        g2.setPadding(a(6.0f), 0, 0, a(10.0f));
        a2.addView(g2, new android.widget.LinearLayout.LayoutParams(-1, a(56.0f)));
        android.widget.LinearLayout a3 = dev.duo.hookprobe.U.a((android.content.Context) this);
        this.T0 = a3;
        a2.addView(a3);
        return a(a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(android.view.View view) {
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(android.widget.LinearLayout linearLayout, android.widget.ImageView imageView, android.view.View view) {
        boolean z = linearLayout.getVisibility() != 0;
        linearLayout.setVisibility(z ? 0 : 8);
        imageView.setRotation(z ? 180.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(android.view.View view) {
        dev.duo.hookprobe.y.a((android.app.Activity) this);
    }

    private android.widget.TextView a(android.widget.LinearLayout linearLayout, java.lang.String str, android.view.View view) {
        final android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        while (linearLayout.getChildCount() > 0) {
            android.view.View childAt = linearLayout.getChildAt(0);
            linearLayout.removeViewAt(0);
            a2.addView(childAt);
        }
        view.setVisibility(8);
        a2.setPadding(a(18.0f), 0, a(18.0f), a(18.0f));
        a2.setVisibility(8);
        linearLayout.setPadding(0, 0, 0, 0);
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        c2.setMinimumHeight(a(64.0f));
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        android.widget.LinearLayout a3 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a4.setText(str);
        a3.addView(a4);
        android.widget.TextView a5 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a5.setText("—");
        a5.setPadding(0, a(3.0f), 0, 0);
        a3.addView(a5);
        c2.addView(a3, dev.duo.hookprobe.U.b());
        final android.view.View a6 = dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(this, 4, dev.duo.hookprobe.U.e, 2.6f, false, 14.0f));
        c2.addView(a6, dev.duo.hookprobe.U.a(this, 14.0f, 14.0f));
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda31
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view2) {
                dev.duo.hookprobe.MainActivity.a(a2, a6, view2);
            }
        });
        linearLayout.addView(c2);
        linearLayout.addView(a2);
        return a5;
    }

    private void j(final java.lang.String str) {
        final dev.duo.hookprobe.C0026o c0026o = this.p;
        if (c0026o == null) {
            return;
        }
        b.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.a(str, c0026o);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static java.lang.String c(int i2) {
        if (i2 == 0) {
            return "默认";
        }
        return (i2 < 0 ? "上移 " : "下移 ") + java.lang.Math.abs(i2);
    }

    private dev.duo.hookprobe.MainActivity.h c(dev.duo.hookprobe.C0026o c0026o) {
        dev.duo.hookprobe.MainActivity.h hVar = new dev.duo.hookprobe.MainActivity.h();
        java.lang.String a2 = dev.duo.hookprobe.B.a();
        if (a2.isEmpty()) {
            hVar.a = true;
            return hVar;
        }
        android.content.SharedPreferences sharedPreferences = getSharedPreferences("billing", 0);
        android.content.SharedPreferences sharedPreferences2 = c0026o.a;
        try {
            java.lang.String string = sharedPreferences.getString("order", null);
            if (string != null) {
                org.json.JSONObject a3 = dev.duo.hookprobe.B.a(string, a2);
                if ("paid".equals(a3.optString("status"))) {
                    dev.duo.hookprobe.B.a(sharedPreferences2, a2, a3.getJSONObject("license"));
                    sharedPreferences.edit().remove("order").apply();
                } else if (a3.has("error")) {
                    sharedPreferences.edit().remove("order").apply();
                }
            }
            org.json.JSONObject jSONObject = dev.duo.hookprobe.B.a(sharedPreferences2, a2).getJSONObject("license");
            if ("active".equals(jSONObject.getString("state"))) {
                sharedPreferences.edit().putString("key", jSONObject.getString("license_key")).apply();
            }
        } catch (java.lang.Throwable th) {
            android.util.Log.w("MiDuoLicense", "server sync failed", th);
            hVar.g = "未连上授权服务器，显示的是本机记录";
        }
        int min = java.lang.Math.min(1800, sharedPreferences2.getInt("_global/trialUsedSec", 0));
        if (dev.duo.hookprobe.C0020i.a(sharedPreferences2.getString("_global/licenseToken", null), a2)) {
            hVar.b = true;
            hVar.d = sharedPreferences.getString("key", null);
        } else {
            hVar.c = min < 1800;
            hVar.e = (1859 - min) / 60;
            hVar.f = (1800 - min) / 1800.0f;
        }
        return hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(int i2) {
        boolean z;
        java.lang.String str;
        if (this.p == null || f) {
            return;
        }
        if (i2 == 2) {
            z = this.p.m(true);
        } else {
            if (this.p.m(false)) {
                if (this.p.r(i2 == 1 ? "black" : "white")) {
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
        android.widget.Toast.makeText(this, str, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(java.lang.String str) {
        this.S = false;
        if (isDestroyed() || isFinishing()) {
            return;
        }
        T();
        android.widget.Toast.makeText(this, str, 1).show();
    }

    private void g(final boolean z) {
        c.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.c(z);
            }
        });
    }

    private void m(boolean z) {
        if (this.p.l(z)) {
            android.widget.Toast.makeText(this, z ? "已开启取色按钮" : "已关闭取色按钮", 0).show();
        } else {
            android.widget.Toast.makeText(this, "取色按钮保存失败", 0).show();
            T();
        }
    }

    private void h(boolean z) {
        if (this.p.c(z)) {
            android.widget.Toast.makeText(this, z ? "已开启 5G 新样式" : "已关闭 5G 新样式", 0).show();
        } else {
            android.widget.Toast.makeText(this, "5G 新样式保存失败", 0).show();
            T();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(android.view.View view) {
        n(1);
    }

    private void r(boolean z) {
        if (this.p.t(z) && this.p.B() == z) {
            android.widget.Toast.makeText(this, (z ? "已保存为开启" : "已保存为关闭") + "，系统界面读到后生效", 0).show();
        } else {
            android.widget.Toast.makeText(this, "工作台开关保存失败，仍是" + (this.p.B() ? "开启" : "关闭"), 0).show();
            T();
        }
    }

    private void p(boolean z) {
        java.lang.String message;
        if (this.S) {
            return;
        }
        if (!z) {
            try {
                message = this.p.r(false) ? "已关闭帐篷钟面" : "帐篷钟面保存失败";
            } catch (java.lang.IllegalStateException e2) {
                android.util.Log.e("DuoStandby", "Clock switch state unconfirmed", e2);
                message = e2.getMessage();
            }
            T();
            android.widget.Toast.makeText(this, message, 0).show();
            return;
        }
        this.S = true;
        T();
        final dev.duo.hookprobe.C0026o c0026o = this.p;
        c.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda79
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.b(c0026o);
            }
        });
    }

    private void j(boolean z) {
        if (this.p.f(z)) {
            android.widget.Toast.makeText(this, z ? "已开启轻折分屏" : "已关闭轻折分屏", 0).show();
        } else {
            android.widget.Toast.makeText(this, "轻折分屏保存失败", 0).show();
            T();
        }
    }

    private void n(boolean z) {
        if (this.p.p(z)) {
            android.widget.Toast.makeText(this, z ? "已开启旋转建议按钮" : "已关闭旋转建议按钮", 0).show();
        } else {
            android.widget.Toast.makeText(this, "旋转建议按钮保存失败", 0).show();
            T();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(android.view.View view) {
        startActivity(new android.content.Intent(this, (java.lang.Class<?>) dev.duo.hookprobe.RailCustomActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(android.view.View view) {
        if (this.b0.isEnabled()) {
            this.b0.performClick();
        }
    }

    private void q(boolean z) {
        if (this.p == null || f) {
            return;
        }
        if (!this.p.s(z)) {
            android.widget.Toast.makeText(this, "时钟线条保存失败", 0).show();
        }
        T();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(android.widget.LinearLayout linearLayout, android.widget.ImageView imageView, android.view.View view) {
        boolean z = linearLayout.getVisibility() != 0;
        linearLayout.setVisibility(z ? 0 : 8);
        imageView.setRotation(z ? 180.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(android.widget.CompoundButton compoundButton, boolean z) {
        if (this.e1 || this.p == null) {
            return;
        }
        h(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(android.view.View view) {
        if (this.e0.isEnabled()) {
            this.e0.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.widget.LinearLayout linearLayout, android.view.View view, android.view.View view2) {
        boolean z = linearLayout.getVisibility() != 0;
        linearLayout.setVisibility(z ? 0 : 8);
        view.setRotation(z ? 90.0f : 0.0f);
    }

    private void b(float f2) {
        this.s0 = f2;
        int a2 = a(10.0f) * 2;
        int width = this.n0.getWidth() - a2;
        if (width <= 0) {
            return;
        }
        int a3 = (width - a(this.q.e ? 14.0f : 12.0f)) / 2;
        int a4 = a(76.0f);
        this.p0.measure(android.view.View.MeasureSpec.makeMeasureSpec(a3, 1073741824), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
        int max = java.lang.Math.max(a4, this.p0.getMeasuredHeight());
        int round = a4 + java.lang.Math.round((max - a4) * f2);
        int i2 = width - a3;
        int round2 = width - java.lang.Math.round(i2 * f2);
        android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) this.p0.getLayoutParams();
        layoutParams.width = a3;
        layoutParams.height = max;
        layoutParams.leftMargin = i2;
        android.widget.FrameLayout.LayoutParams layoutParams2 = (android.widget.FrameLayout.LayoutParams) this.o0.getLayoutParams();
        layoutParams2.width = round2;
        layoutParams2.height = round;
        this.p0.setTranslationX((round2 + r2) - i2);
        this.p0.setAlpha(java.lang.Math.min(1.0f, f2 * 2.0f));
        this.n0.getLayoutParams().height = round + a2;
        this.n0.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(android.widget.CompoundButton compoundButton, boolean z) {
        if (this.e1 || this.p == null) {
            return;
        }
        j(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(android.view.View view) {
        if (this.N0.isEnabled()) {
            this.N0.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(int i2) {
        q(i2 == 0);
    }

    private android.widget.LinearLayout a(java.lang.String str, java.lang.String str2, int i2, int i3, android.widget.TextView[] textViewArr, android.widget.SeekBar[] seekBarArr, java.util.function.IntConsumer intConsumer) {
        android.widget.LinearLayout u = u();
        android.widget.LinearLayout i4 = i();
        android.widget.TextView a2 = dev.duo.hookprobe.U.a(this, 16.0f, dev.duo.hookprobe.U.b, 600);
        a2.setText(str);
        i4.addView(a2, dev.duo.hookprobe.U.b());
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 26.0f, dev.duo.hookprobe.U.b, 800);
        a3.setFontFeatureSettings("tnum");
        i4.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 14.0f, dev.duo.hookprobe.U.c, 600);
        a4.setText(str2);
        a4.setPadding(a(2.0f), a(8.0f), 0, 0);
        i4.addView(a4);
        u.addView(i4);
        android.widget.SeekBar seekBar = new android.widget.SeekBar(this);
        dev.duo.hookprobe.U.a(seekBar);
        seekBar.setMax(i3 - i2);
        seekBar.setEnabled(false);
        seekBar.setContentDescription(str);
        seekBar.setOnSeekBarChangeListener(new dev.duo.hookprobe.MainActivity.a(a3, i2, intConsumer));
        android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(-1, a(44.0f));
        layoutParams.leftMargin = -a(17.0f);
        layoutParams.rightMargin = -a(17.0f);
        u.addView(seekBar, layoutParams);
        textViewArr[0] = a3;
        seekBarArr[0] = seekBar;
        return u;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(java.lang.String str) {
        android.widget.Toast.makeText(this, str, 1).show();
        R();
    }

    private void c() {
        final android.widget.EditText editText = new android.widget.EditText(this);
        editText.setHint("MD-XXXX-XXXX-XXXX-XXXX");
        editText.setSingleLine(true);
        new android.app.AlertDialog.Builder(this).setTitle("输入授权码").setMessage("在另一台手机买过的，输入授权码即可在这台手机使用。").setView(editText).setPositiveButton("确定", new android.content.DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(android.content.DialogInterface dialogInterface, int i2) {
                dev.duo.hookprobe.MainActivity.this.a(editText, dialogInterface, i2);
            }
        }).setNegativeButton("取消", (android.content.DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(boolean z) {
        io.github.libxposed.service.XposedService c2 = dev.duo.hookprobe.L.c();
        if (c2 != null) {
            try {
                this.b1 = new java.util.HashSet(c2.getScope());
                this.c1 = null;
            } catch (java.lang.Throwable th) {
                this.c1 = java.lang.String.valueOf(th);
            }
        }
        g += (this.c1 != null ? " · 作用域读取失败，未刷新" : " · " + B().size() + " 个等待 LSPosed 授权");
        T();
        R();
        o();
        if (z) {
            L();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(boolean z) {
        java.lang.String str;
        final java.lang.String str2;
        dev.duo.hookprobe.C0026o c0026o = this.p;
        boolean z2 = c0026o != null && c0026o.h(z) && c0026o.m() == z;
        if (!z2) {
            str = "";
        } else {
            try {
                java.lang.Thread.sleep(1500L);
            } catch (java.lang.InterruptedException e2) {
                java.lang.Thread.currentThread().interrupt();
            }
            java.lang.String i2 = i("debug.duo.master");
            if ((z ? "1" : "0").equals(i2)) {
                str = "系统框架已读取；";
            } else {
                java.lang.StringBuilder append = new java.lang.StringBuilder().append("系统框架还没读到（当前 ");
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
        this.m.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda63
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.e(str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(java.text.Collator collator, dev.duo.hookprobe.MainActivity.g gVar, dev.duo.hookprobe.MainActivity.g gVar2) {
        return collator.compare(gVar.b, gVar2.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(int i2) {
        if (this.p == null || f) {
            return;
        }
        if (!this.p.a(i2)) {
            android.widget.Toast.makeText(this, "轻折灵敏度保存失败", 0).show();
        }
        T();
    }

    private android.graphics.drawable.Drawable b(int i2) {
        android.graphics.drawable.GradientDrawable gradientDrawable = new android.graphics.drawable.GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(i2);
        return gradientDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(android.content.DialogInterface dialogInterface, int i2) {
        R();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(android.content.DialogInterface dialogInterface) {
        R();
    }

    private void c(dev.duo.hookprobe.r.a aVar) {
        this.I0.setText(aVar.b);
        this.I0.setTextColor(a(aVar.c, dev.duo.hookprobe.U.b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(java.util.concurrent.Future future, android.content.DialogInterface dialogInterface) {
        future.cancel(true);
        if (isDestroyed()) {
            return;
        }
        R();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i2) {
        dev.duo.hookprobe.C0026o c0026o = this.p;
        if (c0026o == null) {
            return;
        }
        if (!c0026o.b(i2)) {
            android.widget.Toast.makeText(this, "全局默认保存失败", 0).show();
            return;
        }
        T();
        o();
        android.widget.Toast.makeText(this, "已设为 " + i2 + "px，App 下次打开时生效", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(dev.duo.hookprobe.C0026o c0026o) {
        final java.lang.String str;
        try {
            try {
                r();
                try {
                    str = c0026o.r(true) ? "已开启帐篷钟面和锁屏显示权限" : "帐篷钟面保存失败";
                } catch (java.lang.IllegalStateException e2) {
                    android.util.Log.e("DuoStandby", "Clock switch state unconfirmed", e2);
                    str = e2.getMessage();
                }
            } catch (java.lang.InterruptedException e3) {
                java.lang.Thread.currentThread().interrupt();
                android.util.Log.e("DuoStandby", "Lockscreen permission request interrupted", e3);
                str = "开启已中断，请重试";
            }
        } catch (java.io.IOException | java.lang.RuntimeException e4) {
            android.util.Log.e("DuoStandby", "Lockscreen permission request failed", e4);
            str = "未能开启帐篷钟面，请检查 Root 授权或锁屏显示权限";
        }
        this.m.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda77
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.f(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, android.view.View view) {
        l(i2);
    }

    private void l(boolean z) {
        if (this.p == null || f) {
            return;
        }
        if (!this.p.k(z)) {
            android.widget.Toast.makeText(this, "电量百分比位置保存失败", 0).show();
        }
        T();
    }

    private android.view.View a(java.lang.String str, java.lang.String str2, dev.duo.hookprobe.U.e eVar) {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        dev.duo.hookprobe.U.a(c2, this.q.e ? 26.0f : 28.0f);
        c2.setPadding(a(18.0f), 0, a(16.0f), 0);
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText(str);
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a4.setText(str2);
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, dev.duo.hookprobe.U.b());
        eVar.a(false);
        android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(a(124.0f), -2);
        layoutParams.leftMargin = a(12.0f);
        c2.addView(eVar.a, layoutParams);
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.view.View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        if (i4 - i2 != i8 - i6) {
            view.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MainActivity.this.x();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(dev.duo.hookprobe.r.a aVar) {
        if (isDestroyed()) {
            return;
        }
        c(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.animation.ValueAnimator valueAnimator) {
        b(((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(android.app.Dialog dialog, android.view.View view) {
        dialog.dismiss();
        i(true);
    }

    private android.widget.TextView a(android.widget.LinearLayout linearLayout, java.lang.String str, float f2) {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        a2.setBackground(dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.g, a(16.0f)));
        a2.setPadding(a(12.0f), a(10.0f), a(12.0f), a(10.0f));
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 11.0f, dev.duo.hookprobe.U.c, dev.duo.hookprobe.J.m);
        a3.setText(str);
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 700);
        a4.setPadding(0, a(4.0f), 0, 0);
        a2.addView(a4);
        android.widget.LinearLayout.LayoutParams b2 = dev.duo.hookprobe.U.b();
        b2.leftMargin = a(f2);
        linearLayout.addView(a2, b2);
        return a4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(java.lang.String str) {
        return this.p.c(str) || this.p.b(str, "inner") || this.p.b(str, "outer") || this.p.n(str) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.widget.CompoundButton compoundButton, boolean z) {
        if (this.e1 || this.p == null || f) {
            return;
        }
        a((java.util.List<dev.duo.hookprobe.MainActivity.g>) new java.util.ArrayList(this.n), z, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.widget.AdapterView adapterView, android.view.View view, int i2, long j2) {
        dev.duo.hookprobe.MainActivity.g gVar = (dev.duo.hookprobe.MainActivity.g) adapterView.getItemAtPosition(i2);
        if (gVar == null) {
            return;
        }
        if (this.t) {
            this.v = gVar.a;
            this.w = gVar.b;
            S();
            return;
        }
        startActivity(new android.content.Intent(this, (java.lang.Class<?>) dev.duo.hookprobe.DetailActivity.class).putExtra("pkg", gVar.a).putExtra("label", gVar.b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(int i2) {
        this.Q0 = i2;
        this.P0.a(i2);
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.widget.LinearLayout linearLayout, android.widget.ImageView imageView, android.view.View view) {
        boolean z = linearLayout.getVisibility() != 0;
        linearLayout.setVisibility(z ? 0 : 8);
        imageView.setRotation(z ? 180.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(android.view.View view) {
        dev.duo.hookprobe.ColorConfigActivity.a((android.app.Activity) this, (java.lang.String) null, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(java.lang.String str) {
        android.widget.Toast.makeText(this, str, 1).show();
    }

    private android.view.View a(int i2, java.lang.String str) {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.c, 600);
        a3.setText(str);
        c2.addView(a3, dev.duo.hookprobe.U.b());
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.d, 500);
        c2.addView(a4);
        a2.addView(c2);
        android.widget.SeekBar seekBar = new android.widget.SeekBar(this);
        dev.duo.hookprobe.U.a(seekBar);
        seekBar.setMax(120);
        seekBar.setEnabled(false);
        a2.addView(seekBar, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 4.0f));
        this.j0[i2] = seekBar;
        this.k0[i2] = a4;
        seekBar.setOnSeekBarChangeListener(new dev.duo.hookprobe.MainActivity.d(a4, i2));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(boolean z) {
        final dev.duo.hookprobe.r.a a2 = dev.duo.hookprobe.r.a(z);
        this.m.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.b(a2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.hookprobe.MainActivity.h hVar, android.view.View view) {
        ((android.content.ClipboardManager) getSystemService(android.content.ClipboardManager.class)).setPrimaryClip(android.content.ClipData.newPlainText("MiDuo 授权码", hVar.d));
        this.W0 = true;
        K();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(java.text.Collator collator, dev.duo.hookprobe.MainActivity.g gVar, dev.duo.hookprobe.MainActivity.g gVar2) {
        return collator.compare(gVar.b, gVar2.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.hookprobe.MainActivity.i iVar, dev.duo.hookprobe.C0026o c0026o, java.util.List list) {
        if (isDestroyed()) {
            return;
        }
        a(iVar);
        if (f) {
            b0();
        }
        if (c0026o == null || f) {
            return;
        }
        if (c0026o.a() || c0026o.c()) {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            java.util.Iterator it = list.iterator();
            while (it.hasNext()) {
                dev.duo.hookprobe.MainActivity.g gVar = (dev.duo.hookprobe.MainActivity.g) it.next();
                if (!gVar.d && !dev.duo.hookprobe.P.k.contains(gVar.a) && c0026o.k(gVar.a)) {
                    arrayList.add(gVar);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            a((java.util.List<dev.duo.hookprobe.MainActivity.g>) arrayList, true, false);
        }
    }

    private void a(dev.duo.hookprobe.MainActivity.i iVar) {
        this.h1 = iVar;
        this.n.clear();
        this.n.addAll(iVar.a);
        this.p = iVar.b;
        this.Y0 = iVar.f;
        this.d1 = iVar.h;
        this.b1 = iVar.d;
        this.c1 = iVar.e;
        this.Z0 = iVar.g;
        java.lang.String[] strArr = iVar.i;
        this.a1 = strArr;
        this.E0.setText(strArr[0]);
        boolean equals = h.equals(this.a1[1]);
        boolean equals2 = "未安装".equals(this.a1[2]);
        this.F0.setText(equals ? this.a1[1] : this.a1[1] + " · 需 " + h);
        this.F0.setTextColor(equals ? dev.duo.hookprobe.U.b : -2543579);
        this.G0.setText(this.a1[2]);
        this.G0.setTextColor(equals2 ? -2543579 : dev.duo.hookprobe.U.b);
        this.J0.setText("小米桌面的版本与 MiDuo 适配的版本不同，桌面相关功能可能出错。请用下方 Bug 抓取导出报告，再到“授权”页联系作者。");
        this.J0.setVisibility(equals ? 8 : 0);
        this.H0.setText(this.a1[3]);
        c(iVar.j);
        dev.duo.hookprobe.MainActivity.h hVar = iVar.c;
        if (hVar != null) {
            a(hVar);
        }
        T();
        R();
        o();
        J();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final dev.duo.hookprobe.C0026o c0026o) {
        try {
            final dev.duo.hookprobe.MainActivity.h c2 = c(c0026o);
            this.l.set(false);
            this.m.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda51
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MainActivity.this.a(c0026o, c2);
                }
            });
        } catch (java.lang.Throwable th) {
            this.l.set(false);
            final dev.duo.hookprobe.MainActivity.h hVar = null;
            this.m.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda51
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.MainActivity.this.a(c0026o, hVar);
                }
            });
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.hookprobe.C0026o c0026o, dev.duo.hookprobe.MainActivity.h hVar) {
        if (isDestroyed()) {
            return;
        }
        if (this.p == c0026o && hVar != null) {
            a(hVar);
            R();
        }
        if (this.m1 || this.p != c0026o) {
            this.m1 = false;
            J();
        }
    }

    private static java.lang.String a(android.content.pm.PackageManager packageManager, java.lang.String str) {
        try {
            java.lang.String str2 = packageManager.getPackageInfo(str, 0).versionName;
            java.util.regex.Matcher matcher = java.util.regex.Pattern.compile("\\d+(\\.\\d+){2,}").matcher(str2 == null ? "" : str2);
            return matcher.find() ? matcher.group() : java.lang.String.valueOf(str2);
        } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
            return "未安装";
        }
    }

    private void a(dev.duo.hookprobe.MainActivity.h hVar) {
        dev.duo.hookprobe.MainActivity mainActivity;
        java.lang.String str;
        this.V0 = hVar;
        this.X0 = hVar == null || hVar.c;
        this.y.removeAllViews();
        if (hVar == null) {
            mainActivity = this;
        } else if (!hVar.b) {
            mainActivity = this;
        } else {
            android.graphics.drawable.GradientDrawable gradientDrawable = new android.graphics.drawable.GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setColor(dev.duo.hookprobe.U.n);
            android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(this);
            frameLayout.setBackground(gradientDrawable);
            mainActivity = this;
            frameLayout.addView(dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(mainActivity, 6, dev.duo.hookprobe.U.o, 3.0f, false, 12.0f)), new android.widget.FrameLayout.LayoutParams(a(12.0f), a(12.0f), 17));
            android.widget.LinearLayout.LayoutParams a2 = dev.duo.hookprobe.U.a(this, 18.0f, 18.0f);
            a2.rightMargin = a(6.0f);
            mainActivity.y.addView(frameLayout, a2);
        }
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.b, 600);
        if (hVar == null || hVar.a) {
            str = "授权";
        } else if (hVar.b) {
            str = "已买断";
        } else {
            str = hVar.c ? "试用 " + hVar.e + " 分钟" : "试用已结束";
        }
        a3.setText(str);
        if (hVar == null || !hVar.b) {
            a3.setPadding(a(5.0f), 0, 0, 0);
        }
        mainActivity.y.addView(a3);
        K();
    }

    private void a(final android.widget.TextView textView) {
        final dev.duo.hookprobe.C0026o c0026o = this.p;
        if (c0026o == null) {
            return;
        }
        textView.setEnabled(false);
        b.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda75
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.a(c0026o, textView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.hookprobe.C0026o c0026o, final android.widget.TextView textView) {
        final java.lang.String str;
        final java.lang.String str2 = null;
        try {
            java.lang.String a2 = dev.duo.hookprobe.B.a();
            org.json.JSONObject a3 = dev.duo.hookprobe.B.a(a2);
            if (a3.has("license")) {
                dev.duo.hookprobe.B.a(c0026o.a, a2, a3.getJSONObject("license"));
                str = "这台手机已经买过，授权已恢复";
            } else if (a3.has("error")) {
                str = "下单失败：" + a3.optString("message", a3.getString("error"));
            } else {
                getSharedPreferences("billing", 0).edit().putString("order", a3.getString("order_id")).apply();
                str2 = a3.getString("pay_url");
                str = "已打开付款页面，付款后回到 MiDuo 即可";
            }
        } catch (java.lang.Throwable th) {
            str = "连不上授权服务器：" + th.getMessage();
        }
        this.m.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.a(textView, str, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.widget.TextView textView, java.lang.String str, java.lang.String str2) {
        textView.setEnabled(true);
        android.widget.Toast.makeText(this, str, 1).show();
        if (str2 != null) {
            startActivity(new android.content.Intent("android.intent.action.VIEW", android.net.Uri.parse(str2)));
        } else {
            a.execute(new dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda13(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.widget.EditText editText, android.content.DialogInterface dialogInterface, int i2) {
        j(editText.getText().toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.String str, dev.duo.hookprobe.C0026o c0026o) {
        final java.lang.String str2;
        try {
            java.lang.String a2 = dev.duo.hookprobe.B.a();
            org.json.JSONObject b2 = dev.duo.hookprobe.B.b(a2, str);
            java.lang.String optString = b2.optString("error", "");
            if (optString.isEmpty()) {
                dev.duo.hookprobe.B.a(c0026o.a, a2, b2.getJSONObject("license"));
                str2 = "授权已恢复";
            } else if ("license_not_found".equals(optString)) {
                str2 = "授权码不对，请检查后再试";
            } else if ("license_revoked".equals(optString)) {
                str2 = "这个授权码已失效";
            } else if ("rate_limited".equals(optString)) {
                str2 = "尝试次数太多，请一小时后再试";
            } else {
                str2 = "恢复失败：" + b2.optString("message", optString);
            }
        } catch (java.lang.Throwable th) {
            str2 = "连不上授权服务器：" + th.getMessage();
        }
        this.m.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.d(str2);
            }
        });
        z();
    }

    private void a(boolean z) {
        if (z) {
            this.e1 = true;
            this.C.setChecked(false);
            this.e1 = false;
            l();
            return;
        }
        new android.app.AlertDialog.Builder(this).setTitle("关闭 MiDuo？").setMessage("关闭后变回小米原装：桌面会自动重开一次并换成原装布局（你的 4×6 布局另存，打开时原样回来）；已打开的 App 需要重开；状态栏在开合或转屏一次后恢复。在 LSPosed 里停用 MiDuo 之前，请先关闭此开关。").setPositiveButton("关闭", new android.content.DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda56
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(android.content.DialogInterface dialogInterface, int i2) {
                dev.duo.hookprobe.MainActivity.this.a(dialogInterface, i2);
            }
        }).setNegativeButton("取消", new android.content.DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda57
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(android.content.DialogInterface dialogInterface, int i2) {
                dev.duo.hookprobe.MainActivity.this.b(dialogInterface, i2);
            }
        }).setOnCancelListener(new android.content.DialogInterface.OnCancelListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda58
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(android.content.DialogInterface dialogInterface) {
                dev.duo.hookprobe.MainActivity.this.b(dialogInterface);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.content.DialogInterface dialogInterface, int i2) {
        g(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, java.lang.String str, int i2, long j2, java.util.Set set, java.lang.String str2, final android.app.Dialog dialog, final android.widget.LinearLayout linearLayout, final android.widget.TextView textView, final android.widget.TextView textView2) {
        final java.util.List<dev.duo.hookprobe.C.a> a2 = dev.duo.hookprobe.C.a(this, z, str, i2, j2, set, str2);
        this.m.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.a(dialog, a2, linearLayout, textView, textView2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.app.Dialog dialog, java.util.List list, android.widget.LinearLayout linearLayout, android.widget.TextView textView, android.widget.TextView textView2) {
        if (isDestroyed() || !dialog.isShowing()) {
            return;
        }
        java.util.Iterator it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            dev.duo.hookprobe.C.a aVar = (dev.duo.hookprobe.C.a) it.next();
            if (aVar.c == 2) {
                i2++;
            }
            if (linearLayout.getChildCount() > 0) {
                android.view.View view = new android.view.View(this);
                view.setBackgroundColor(dev.duo.hookprobe.U.h);
                linearLayout.addView(view, new android.widget.LinearLayout.LayoutParams(-1, java.lang.Math.max(1, a(0.5f))));
            }
            linearLayout.addView(a(aVar));
        }
        linearLayout.setVisibility(0);
        if (i2 > 0) {
            textView.setText("有 " + i2 + " 项没通过，没有打开。按红字处理好后再点一次开关。");
            textView.setTextColor(-2543579);
            textView2.setText("知道了");
            dev.duo.hookprobe.U.a(textView2, true);
            return;
        }
        java.util.Iterator it2 = list.iterator();
        int i3 = 0;
        while (it2.hasNext()) {
            if (((dev.duo.hookprobe.C.a) it2.next()).c == 1) {
                i3++;
            }
        }
        textView.setText(i3 == 0 ? "全部通过，正在打开。" : "必需项全部通过，正在打开；黄色的 " + i3 + " 项只影响对应功能。");
        g(true);
        if (i3 > 0) {
            dialog.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda44
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(android.content.DialogInterface dialogInterface) {
                    dev.duo.hookprobe.MainActivity.this.a(dialogInterface);
                }
            });
            textView2.setText("知道了");
            dev.duo.hookprobe.U.a(textView2, true);
        } else {
            textView2.setEnabled(false);
            dialog.setOnDismissListener(null);
            dialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.content.DialogInterface dialogInterface) {
        if (isDestroyed()) {
            return;
        }
        R();
    }

    private android.view.View a(dev.duo.hookprobe.C.a aVar) {
        int i2 = aVar.c;
        boolean z = i2 == 2;
        boolean z2 = i2 == 1;
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        c2.setGravity(48);
        c2.setPadding(0, a(12.0f), 0, a(12.0f));
        android.view.View view = new android.view.View(this);
        view.setBackground(b(z ? -2543579 : z2 ? -878336 : -13326253));
        android.widget.LinearLayout.LayoutParams a2 = dev.duo.hookprobe.U.a(this, 7.0f, 7.0f);
        a2.topMargin = a(5.0f);
        a2.rightMargin = a(12.0f);
        c2.addView(view, a2);
        android.widget.LinearLayout a3 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 14.0f, z ? -2543579 : dev.duo.hookprobe.U.b, 500);
        a4.setText(aVar.a);
        a3.addView(a4);
        android.widget.TextView a5 = dev.duo.hookprobe.U.a(this, 12.0f, z ? -2543579 : dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a5.setText(aVar.b);
        a5.setLineSpacing(a(2.0f), 1.0f);
        a3.addView(a5, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 4.0f));
        c2.addView(a3, dev.duo.hookprobe.U.b());
        return c2;
    }

    private void a(final java.util.List<dev.duo.hookprobe.MainActivity.g> list, final boolean z, final boolean z2) {
        if (f || this.p == null) {
            return;
        }
        f = true;
        g = "正在" + (z ? "开启" : "关闭") + " 0/" + list.size();
        R();
        b0();
        final dev.duo.hookprobe.C0026o c0026o = this.p;
        a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.a(z2, c0026o, z, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, dev.duo.hookprobe.C0026o c0026o, final boolean z2, java.util.List list) {
        if (z) {
            try {
                if (!c0026o.b(z2)) {
                    throw new java.lang.IllegalStateException("总开关保存失败");
                }
            } catch (java.lang.Throwable th) {
                try {
                    g = "批量操作失败：" + th.getMessage();
                    return;
                } finally {
                    f = false;
                    this.m.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda27
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.hookprobe.MainActivity.this.e(z2);
                        }
                    });
                }
            }
        }
        java.lang.String str = "";
        java.lang.String str2 = "";
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < list.size()) {
            dev.duo.hookprobe.MainActivity.g gVar = (dev.duo.hookprobe.MainActivity.g) list.get(i2);
            i2++;
            g = "正在" + (z2 ? "开启" : "关闭") + " " + i2 + "/" + list.size() + " · " + gVar.b;
            try {
            } catch (java.lang.Throwable th2) {
                i4++;
                if (str2.isEmpty()) {
                    str2 = gVar.b + "：" + th2.getMessage();
                }
            }
            if (!c0026o.d(gVar.a, z2)) {
                throw new java.lang.IllegalStateException("启用状态保存失败");
            }
            i3++;
        }
        java.lang.StringBuilder append = new java.lang.StringBuilder().append("已").append(z2 ? "开启 " : "关闭 ").append(i3).append(" 个 · 跳过 ").append(this.d1).append(" 个组件 · ").append(i4).append(" 个应用失败");
        if (!str2.isEmpty()) {
            str = "\n" + str2;
        }
        g = append.append(str).toString();
        g += "\n现有窗口由系统服务自动刷新；顶部留白在应用进程下次启动时生效";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.hookprobe.C0026o c0026o, boolean z, boolean z2, java.util.Set set, java.lang.String str, java.lang.String str2, final android.app.Dialog dialog, final android.widget.LinearLayout linearLayout, final boolean z3, final android.widget.TextView textView, final android.widget.TextView textView2, final android.widget.LinearLayout linearLayout2) {
        final java.util.List<dev.duo.hookprobe.r.a> a2 = dev.duo.hookprobe.r.a(this, c0026o, z, z2, set, str, str2);
        this.m.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda69
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.MainActivity.this.a(dialog, a2, linearLayout, z3, textView, textView2, linearLayout2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final android.app.Dialog dialog, java.util.List list, android.widget.LinearLayout linearLayout, boolean z, android.widget.TextView textView, android.widget.TextView textView2, android.widget.LinearLayout linearLayout2) {
        java.lang.String str;
        if (isDestroyed() || !dialog.isShowing()) {
            return;
        }
        java.util.Iterator it = list.iterator();
        int i2 = 0;
        int i3 = 0;
        while (it.hasNext()) {
            dev.duo.hookprobe.r.a aVar = (dev.duo.hookprobe.r.a) it.next();
            int i4 = aVar.c;
            if (i4 == 2) {
                i2++;
            }
            if (i4 == 1) {
                i3++;
            }
            if (linearLayout.getChildCount() > 0) {
                android.view.View view = new android.view.View(this);
                view.setBackgroundColor(dev.duo.hookprobe.U.h);
                linearLayout.addView(view, new android.widget.LinearLayout.LayoutParams(-1, java.lang.Math.max(1, a(0.5f))));
            }
            linearLayout.addView(a(aVar));
        }
        linearLayout.setVisibility(0);
        if (!z) {
            textView.setText("MiDuo 总开关没有运行，暂时不能打开开合动画。");
            textView2.setText("知道了");
            dev.duo.hookprobe.U.a(textView2, true);
            return;
        }
        if (i2 > 0) {
            str = "有 " + i2 + " 项没通过。仍可打开，但开合动画可能无法正常运行；打开后需要软重启一次才可使用。";
        } else if (i3 > 0) {
            str = "可以打开，有 " + i3 + " 项需要留意。打开后需要软重启一次才可使用。";
        } else {
            str = "全部通过。打开后需要软重启一次才可使用。";
        }
        textView.setText(str);
        android.view.View a2 = dev.duo.hookprobe.U.a((android.content.Context) this, (i2 > 0 || i3 > 0) ? "仍然打开" : "打开", true, 38.0f);
        a2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view2) {
                dev.duo.hookprobe.MainActivity.this.b(dialog, view2);
            }
        });
        android.widget.LinearLayout.LayoutParams c2 = dev.duo.hookprobe.U.c();
        c2.leftMargin = a(10.0f);
        linearLayout2.addView(a2, c2);
    }

    private android.view.View a(dev.duo.hookprobe.r.a aVar) {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        c2.setGravity(48);
        c2.setPadding(0, a(12.0f), 0, a(12.0f));
        android.view.View view = new android.view.View(this);
        view.setBackground(b(a(aVar.c, -13326253)));
        android.widget.LinearLayout.LayoutParams a2 = dev.duo.hookprobe.U.a(this, 7.0f, 7.0f);
        a2.topMargin = a(5.0f);
        a2.rightMargin = a(12.0f);
        c2.addView(view, a2);
        android.widget.LinearLayout a3 = dev.duo.hookprobe.U.a((android.content.Context) this);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 14.0f, dev.duo.hookprobe.U.b, 500);
        a4.setText(aVar.a);
        a3.addView(a4);
        android.widget.TextView a5 = dev.duo.hookprobe.U.a(this, 12.0f, aVar.c == 2 ? -2543579 : dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a5.setText(aVar.b);
        a5.setLineSpacing(a(2.0f), 1.0f);
        a3.addView(a5, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 4.0f));
        c2.addView(a3, dev.duo.hookprobe.U.b());
        return c2;
    }

    private void a(boolean z, boolean z2) {
        if (this.p == null || f) {
            return;
        }
        if (!this.p.a(z, z2)) {
            android.widget.Toast.makeText(this, "旋转按钮位置保存失败", 0).show();
        }
        T();
    }
}
