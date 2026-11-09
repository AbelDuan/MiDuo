package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
final class C0016f {
    private dev.duo.hookprobe.U.e A;
    private dev.duo.hookprobe.U.e B;
    private android.widget.TextView C;
    private android.widget.TextView D;
    private android.widget.TextView E;
    private android.widget.TextView F;
    private android.widget.TextView G;
    private final android.app.Activity a;
    private final android.os.Handler b = new android.os.Handler(android.os.Looper.getMainLooper());
    private final java.lang.String c;
    private final java.lang.Runnable d;
    final android.widget.ScrollView e;
    private dev.duo.hookprobe.C0026o f;
    private android.widget.Switch g;
    private dev.duo.hookprobe.C0016f.e h;
    private dev.duo.hookprobe.C0016f.e i;
    private dev.duo.hookprobe.C0016f.d j;
    private android.widget.LinearLayout k;
    private android.widget.TextView l;
    private dev.duo.hookprobe.U.e m;
    private android.widget.Switch n;
    private android.widget.TextView o;
    private android.widget.LinearLayout p;
    private android.widget.LinearLayout q;
    private android.widget.LinearLayout r;
    private android.widget.ImageView s;
    private android.widget.TextView t;
    private android.widget.TextView u;
    private android.widget.TextView v;
    private android.widget.TextView w;
    private boolean x;
    private dev.duo.hookprobe.U.e y;
    private dev.duo.hookprobe.U.e z;

    /* renamed from: dev.duo.hookprobe.f$a */
    class a implements android.text.TextWatcher {
        final /* synthetic */ int[] a;
        final /* synthetic */ android.widget.TextView b;
        final /* synthetic */ android.widget.SeekBar[] c;

        a(int[] iArr, android.widget.TextView textView, android.widget.SeekBar[] seekBarArr) {
            this.a = iArr;
            this.b = textView;
            this.c = seekBarArr;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(android.text.Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(java.lang.CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(java.lang.CharSequence charSequence, int i, int i2, int i3) {
            java.lang.String trim = charSequence.toString().trim();
            if (trim.matches("#?[0-9a-fA-F]{6}")) {
                this.a[0] = dev.duo.hookprobe.P.p(trim).intValue();
                this.b.setBackground(dev.duo.hookprobe.U.a(this.a[0], dev.duo.hookprobe.C0016f.this.a(14.0f)));
                this.b.setTextColor(android.graphics.Color.luminance(this.a[0]) > 0.45f ? -13618632 : -1);
                for (int i4 = 0; i4 < 3; i4++) {
                    this.c[i4].setProgress((this.a[0] >> (16 - (i4 * 8))) & 255);
                }
            }
        }
    }

    /* renamed from: dev.duo.hookprobe.f$b */
    class b implements android.widget.SeekBar.OnSeekBarChangeListener {
        final /* synthetic */ android.widget.EditText a;
        final /* synthetic */ int[] b;
        final /* synthetic */ int c;

        b(android.widget.EditText editText, int[] iArr, int i) {
            this.a = editText;
            this.b = iArr;
            this.c = i;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(android.widget.SeekBar seekBar, int i, boolean z) {
            if (z) {
                android.widget.EditText editText = this.a;
                int i2 = this.b[0];
                int i3 = this.c;
                editText.setText(dev.duo.hookprobe.C0016f.b((i << i3) | (i2 & (~(255 << i3)))));
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(android.widget.SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(android.widget.SeekBar seekBar) {
        }
    }

    /* renamed from: dev.duo.hookprobe.f$c */
    class c implements io.github.libxposed.service.XposedService.OnScopeEventListener {
        final /* synthetic */ io.github.libxposed.service.XposedService a;

        c(io.github.libxposed.service.XposedService xposedService) {
            this.a = xposedService;
        }

        @Override // io.github.libxposed.service.XposedService.OnScopeEventListener
        public void onScopeRequestApproved(java.util.List<java.lang.String> list) {
            dev.duo.hookprobe.C0016f.this.h("LSPosed 已批准作用域，该 App 下次打开时生效");
            dev.duo.hookprobe.C0016f c0016f = dev.duo.hookprobe.C0016f.this;
            c0016f.a(this.a, c0016f.f);
        }

        @Override // io.github.libxposed.service.XposedService.OnScopeEventListener
        public void onScopeRequestFailed(java.lang.String str) {
            dev.duo.hookprobe.C0016f.this.c("LSPosed 作用域请求失败：" + str);
        }
    }

    /* renamed from: dev.duo.hookprobe.f$d */
    private final class d extends dev.duo.hookprobe.C0016f.AbstractC0002f {
        d(android.widget.LinearLayout linearLayout, boolean z) {
            super(linearLayout, "com.tencent.mm".equals(dev.duo.hookprobe.C0016f.this.c) ? "内屏和外屏" : "外屏（合上时）", "%", 12, 60, 100, false, z);
        }

        private java.lang.String j() {
            return "com.tencent.mm".equals(dev.duo.hookprobe.C0016f.this.c) ? "微信" : "外屏";
        }

        @Override // dev.duo.hookprobe.C0016f.AbstractC0002f
        void a(int i) {
            if (!dev.duo.hookprobe.C0016f.this.f.b(dev.duo.hookprobe.C0016f.this.c, i)) {
                dev.duo.hookprobe.C0016f.this.c("保存失败");
            } else {
                h();
                dev.duo.hookprobe.C0016f.this.h(j() + "缩放已设为 " + dev.duo.hookprobe.P.b(i) + "%");
            }
        }

        @Override // dev.duo.hookprobe.C0016f.AbstractC0002f
        boolean b() {
            return dev.duo.hookprobe.C0016f.this.f.f(dev.duo.hookprobe.C0016f.this.c);
        }

        @Override // dev.duo.hookprobe.C0016f.AbstractC0002f
        int c() {
            return dev.duo.hookprobe.C0016f.this.f.m(dev.duo.hookprobe.C0016f.this.c);
        }

        @Override // dev.duo.hookprobe.C0016f.AbstractC0002f
        boolean d() {
            return dev.duo.hookprobe.C0016f.this.f.d(dev.duo.hookprobe.C0016f.this.c);
        }

        @Override // dev.duo.hookprobe.C0016f.AbstractC0002f
        java.lang.String e() {
            return dev.duo.hookprobe.C0016f.this.f.g(dev.duo.hookprobe.C0016f.this.c) ? "跟随全局 " + dev.duo.hookprobe.C0016f.this.f.p() + "%" : "原始大小 100%";
        }

        @Override // dev.duo.hookprobe.C0016f.AbstractC0002f
        void f() {
            h();
            dev.duo.hookprobe.C0016f.this.h(j() + "缩放已恢复：" + e());
        }
    }

    /* renamed from: dev.duo.hookprobe.f$e */
    private final class e extends dev.duo.hookprobe.C0016f.AbstractC0002f {
        final java.lang.String i;

        e(android.widget.LinearLayout linearLayout, java.lang.String str, java.lang.String str2, int i, boolean z, boolean z2) {
            super(linearLayout, str, "px", i, 1, 126, !z, z2);
            this.i = str2;
        }

        private int j() {
            return (!"outer".equals(this.i) || dev.duo.hookprobe.C0016f.this.f.g(dev.duo.hookprobe.C0016f.this.c)) ? dev.duo.hookprobe.C0016f.this.f.h(this.i) : dev.duo.hookprobe.C0016f.this.f.q();
        }

        private java.lang.String k() {
            return "inner".equals(this.i) ? "内屏" : "外屏";
        }

        @Override // dev.duo.hookprobe.C0016f.AbstractC0002f
        void a(int i) {
            try {
                int a = dev.duo.hookprobe.C0016f.this.f.a(dev.duo.hookprobe.C0016f.this.c, this.i, i);
                h();
                dev.duo.hookprobe.C0016f.this.a(k() + "已设为 " + a + "px", this.i);
            } catch (java.lang.Throwable th) {
                dev.duo.hookprobe.C0016f.this.c("保存失败：" + th);
            }
        }

        @Override // dev.duo.hookprobe.C0016f.AbstractC0002f
        boolean b() {
            return dev.duo.hookprobe.C0016f.this.f.c(dev.duo.hookprobe.C0016f.this.c, this.i);
        }

        @Override // dev.duo.hookprobe.C0016f.AbstractC0002f
        int c() {
            return (!"outer".equals(this.i) || dev.duo.hookprobe.C0016f.this.f.g(dev.duo.hookprobe.C0016f.this.c)) ? dev.duo.hookprobe.C0016f.this.f.d(dev.duo.hookprobe.C0016f.this.c, this.i) : dev.duo.hookprobe.P.e(dev.duo.hookprobe.C0016f.this.f.a, dev.duo.hookprobe.C0016f.this.c);
        }

        @Override // dev.duo.hookprobe.C0016f.AbstractC0002f
        boolean d() {
            return dev.duo.hookprobe.C0016f.this.f.b(dev.duo.hookprobe.C0016f.this.c, this.i);
        }

        @Override // dev.duo.hookprobe.C0016f.AbstractC0002f
        java.lang.String e() {
            return "跟随全局 " + j() + "px";
        }

        @Override // dev.duo.hookprobe.C0016f.AbstractC0002f
        void f() {
            dev.duo.hookprobe.C0016f.this.h.h();
            dev.duo.hookprobe.C0016f.this.i.h();
            dev.duo.hookprobe.C0016f.this.a(k() + "已跟随全局 " + j() + "px", this.i);
        }

        @Override // dev.duo.hookprobe.C0016f.AbstractC0002f
        void h() {
            super.h();
            boolean z = !"outer".equals(this.i) || dev.duo.hookprobe.C0016f.this.f.g(dev.duo.hookprobe.C0016f.this.c) ? !(!("com.ss.android.ugc.aweme".equals(dev.duo.hookprobe.C0016f.this.c) && !dev.duo.hookprobe.C0016f.this.f.g(dev.duo.hookprobe.C0016f.this.c) && "inner".equals(this.i)) ? "inner".equals(this.i) && dev.duo.hookprobe.C0016f.this.f.i(dev.duo.hookprobe.C0016f.this.c) : !dev.duo.hookprobe.C0016f.this.f.b("inner")) : !dev.duo.hookprobe.C0016f.this.f.l(dev.duo.hookprobe.C0016f.this.c);
            this.f.setEnabled(!z);
            this.f.setAlpha(z ? 0.45f : 1.0f);
            if (z) {
                this.b.setEnabled(false);
                dev.duo.hookprobe.U.a(this.b, dev.duo.hookprobe.U.x);
                this.c.setTextColor(dev.duo.hookprobe.U.e);
                this.d.setText("已用原生顶栏");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.hookprobe.f$f, reason: collision with other inner class name */
    abstract class AbstractC0002f {
        final int a;
        final android.widget.SeekBar b;
        final android.widget.TextView c;
        final android.widget.TextView d;
        final android.widget.ImageView e;
        final android.widget.LinearLayout f;
        final android.widget.LinearLayout g;

        /* renamed from: dev.duo.hookprobe.f$f$a */
        class a implements android.widget.SeekBar.OnSeekBarChangeListener {
            a() {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(android.widget.SeekBar seekBar, int i, boolean z) {
                if (z) {
                    dev.duo.hookprobe.C0016f.AbstractC0002f abstractC0002f = dev.duo.hookprobe.C0016f.AbstractC0002f.this;
                    abstractC0002f.c.setText(java.lang.String.valueOf(i + abstractC0002f.a));
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(android.widget.SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(android.widget.SeekBar seekBar) {
                dev.duo.hookprobe.C0016f.AbstractC0002f.this.a(seekBar.getProgress() + dev.duo.hookprobe.C0016f.AbstractC0002f.this.a);
            }
        }

        AbstractC0002f(android.widget.LinearLayout linearLayout, java.lang.String str, java.lang.String str2, int i, int i2, int i3, boolean z, boolean z2) {
            this.a = i2;
            android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) dev.duo.hookprobe.C0016f.this.a);
            this.g = a2;
            if (!z2) {
                a2.setPadding(0, dev.duo.hookprobe.C0016f.this.a(14.0f), 0, dev.duo.hookprobe.C0016f.this.a(14.0f));
            }
            if (z) {
                android.view.View view = new android.view.View(dev.duo.hookprobe.C0016f.this.a);
                view.setBackgroundColor(dev.duo.hookprobe.U.h);
                linearLayout.addView(view, new android.widget.LinearLayout.LayoutParams(-1, java.lang.Math.max(1, dev.duo.hookprobe.C0016f.this.a(0.5f))));
            }
            android.widget.LinearLayout c = dev.duo.hookprobe.U.c(dev.duo.hookprobe.C0016f.this.a);
            c.addView(dev.duo.hookprobe.U.a(dev.duo.hookprobe.C0016f.this.a, dev.duo.hookprobe.U.a(dev.duo.hookprobe.C0016f.this.a, i, dev.duo.hookprobe.U.d, 1.8f, false, 20.0f)), dev.duo.hookprobe.U.a(dev.duo.hookprobe.C0016f.this.a, 20.0f, 20.0f));
            android.widget.TextView a3 = dev.duo.hookprobe.U.a(dev.duo.hookprobe.C0016f.this.a, z2 ? 14.0f : 15.0f, dev.duo.hookprobe.U.b, 600);
            a3.setText(str);
            a3.setPadding(dev.duo.hookprobe.C0016f.this.a(z2 ? 12.0f : 10.0f), 0, 0, 0);
            c.addView(a3, dev.duo.hookprobe.U.b());
            android.widget.TextView a4 = dev.duo.hookprobe.U.a(dev.duo.hookprobe.C0016f.this.a, 22.0f, dev.duo.hookprobe.U.b, 800);
            this.c = a4;
            a4.setFontFeatureSettings("tnum");
            c.addView(a4);
            android.widget.TextView a5 = dev.duo.hookprobe.U.a(dev.duo.hookprobe.C0016f.this.a, 13.0f, dev.duo.hookprobe.U.d, 600);
            a5.setText(str2);
            a5.setPadding(dev.duo.hookprobe.C0016f.this.a(2.0f), dev.duo.hookprobe.C0016f.this.a(6.0f), 0, 0);
            c.addView(a5);
            a2.addView(c);
            android.widget.SeekBar seekBar = new android.widget.SeekBar(dev.duo.hookprobe.C0016f.this.a);
            this.b = seekBar;
            dev.duo.hookprobe.U.a(seekBar);
            seekBar.setMax(i3 - i2);
            seekBar.setEnabled(false);
            seekBar.setContentDescription(str);
            android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(-1, dev.duo.hookprobe.C0016f.this.a(44.0f));
            layoutParams.leftMargin = -dev.duo.hookprobe.C0016f.this.a(17.0f);
            layoutParams.rightMargin = -dev.duo.hookprobe.C0016f.this.a(17.0f);
            a2.addView(seekBar, layoutParams);
            android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(dev.duo.hookprobe.C0016f.this.a);
            this.f = c2;
            c2.setPadding(dev.duo.hookprobe.C0016f.this.a(7.0f), 0, dev.duo.hookprobe.C0016f.this.a(12.0f), 0);
            android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(dev.duo.hookprobe.C0016f.this.a);
            android.widget.ImageView a6 = dev.duo.hookprobe.U.a(dev.duo.hookprobe.C0016f.this.a, dev.duo.hookprobe.U.a(dev.duo.hookprobe.C0016f.this.a, 6, dev.duo.hookprobe.U.a ? -13882322 : dev.duo.hookprobe.U.b, 4.0f, false, 10.0f));
            this.e = a6;
            frameLayout.addView(a6, new android.widget.FrameLayout.LayoutParams(dev.duo.hookprobe.C0016f.this.a(10.0f), dev.duo.hookprobe.C0016f.this.a(10.0f), 17));
            c2.addView(frameLayout, dev.duo.hookprobe.U.a(dev.duo.hookprobe.C0016f.this.a, 16.0f, 16.0f));
            android.widget.TextView a7 = dev.duo.hookprobe.U.a(dev.duo.hookprobe.C0016f.this.a, 12.0f, dev.duo.hookprobe.U.c, 600);
            this.d = a7;
            a7.setPadding(dev.duo.hookprobe.C0016f.this.a(6.0f), 0, 0, 0);
            c2.addView(a7);
            c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.f$f$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view2) {
                    dev.duo.hookprobe.C0016f.AbstractC0002f.this.a(view2);
                }
            });
            a2.addView(c2, new android.widget.LinearLayout.LayoutParams(-2, dev.duo.hookprobe.C0016f.this.a(32.0f)));
            linearLayout.addView(a2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(android.view.View view) {
            i();
        }

        abstract void a(int i);

        abstract boolean b();

        abstract int c();

        abstract boolean d();

        abstract java.lang.String e();

        abstract void f();

        boolean g() {
            return !d();
        }

        void h() {
            boolean g = g();
            this.b.setProgress(c() - this.a);
            this.b.setEnabled(!g);
            dev.duo.hookprobe.U.a(this.b, g ? dev.duo.hookprobe.U.x : dev.duo.hookprobe.U.k);
            this.c.setText(java.lang.String.valueOf(c()));
            this.c.setTextColor(g ? dev.duo.hookprobe.U.e : dev.duo.hookprobe.U.b);
            this.d.setText(e());
            this.d.setTextColor(g ? dev.duo.hookprobe.U.o : dev.duo.hookprobe.U.c);
            android.graphics.drawable.GradientDrawable a2 = dev.duo.hookprobe.U.a(g ? dev.duo.hookprobe.U.n : 0, dev.duo.hookprobe.C0016f.this.a(16.0f));
            if (!g) {
                a2.setStroke(java.lang.Math.max(1, dev.duo.hookprobe.C0016f.this.a(1.0f)), 1299609216);
            }
            this.f.setBackground(a2);
            android.graphics.drawable.GradientDrawable gradientDrawable = new android.graphics.drawable.GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setColor(g ? dev.duo.hookprobe.U.o : 0);
            if (!g) {
                gradientDrawable.setStroke(java.lang.Math.max(1, dev.duo.hookprobe.C0016f.this.a(1.5f)), 1937143424);
            }
            ((android.view.View) this.e.getParent()).setBackground(gradientDrawable);
            this.e.setVisibility(g ? 0 : 4);
            dev.duo.hookprobe.C0016f.this.l();
        }

        void i() {
            if (dev.duo.hookprobe.C0016f.this.f == null) {
                return;
            }
            if (g()) {
                a(c());
            } else if (b()) {
                f();
            } else {
                dev.duo.hookprobe.C0016f.this.c("写入失败");
            }
        }

        void a() {
            h();
            this.b.setOnSeekBarChangeListener(new dev.duo.hookprobe.C0016f.AbstractC0002f.a());
        }
    }

    C0016f(android.app.Activity activity, java.lang.String str, java.lang.String str2, java.lang.Runnable runnable, boolean z, int i, int i2, int i3, int i4, java.lang.Runnable runnable2) {
        this.a = activity;
        this.c = str;
        this.d = runnable2;
        android.widget.ScrollView scrollView = new android.widget.ScrollView(activity);
        this.e = scrollView;
        scrollView.setClipToPadding(false);
        scrollView.setVerticalScrollBarEnabled(false);
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) activity);
        a2.setPadding(i, i2, i, i4);
        scrollView.addView(a2);
        android.widget.Switch r0 = new android.widget.Switch(activity);
        this.g = r0;
        dev.duo.hookprobe.U.a(r0);
        this.g.setContentDescription("Duo 适配");
        this.g.setEnabled(false);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(activity, z ? 13.0f : 14.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("恢复默认");
        a3.setGravity(17);
        a3.setPadding(a(z ? 14.0f : 16.0f), 0, a(z ? 14.0f : 16.0f), 0);
        a3.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda29
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.C0016f.this.e(view);
            }
        });
        android.widget.ImageView imageView = new android.widget.ImageView(activity);
        try {
            imageView.setImageDrawable(activity.getPackageManager().getApplicationIcon(str));
        } catch (java.lang.Exception e2) {
        }
        java.lang.String str3 = str2 == null ? str : str2;
        if (z) {
            a(a2, imageView, str3, a3);
        } else {
            a(a2, imageView, str3, a3, runnable, i3);
        }
        if ("com.ss.android.ugc.aweme".equals(str)) {
            a2.addView(a(z), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 12.0f));
        }
        android.widget.LinearLayout a4 = dev.duo.hookprobe.U.a((android.content.Context) activity);
        a4.setPadding(a(10.0f), a(14.0f), a(10.0f), 0);
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(activity);
        c2.setMinimumHeight(a(40.0f));
        android.widget.TextView a5 = dev.duo.hookprobe.U.a(activity, 12.0f, dev.duo.hookprobe.U.c, 600);
        a5.setText("技术信息");
        c2.addView(a5);
        final android.widget.ImageView a6 = dev.duo.hookprobe.U.a(activity, dev.duo.hookprobe.U.a(activity, 5, dev.duo.hookprobe.U.e, 3.0f, false, 11.0f));
        android.widget.LinearLayout.LayoutParams a7 = dev.duo.hookprobe.U.a(activity, 11.0f, 11.0f);
        a7.leftMargin = a(4.0f);
        c2.addView(a6, a7);
        a4.addView(c2);
        android.widget.TextView a8 = dev.duo.hookprobe.U.a(activity, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        this.C = a8;
        a8.setLineSpacing(0.0f, 1.4f);
        this.C.setVisibility(8);
        a4.addView(this.C);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda30
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.C0016f.this.a(a6, view);
            }
        });
        a2.addView(a4);
        dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.C0016f.this.d();
            }
        });
    }

    private android.view.View g() {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this.a);
        this.p = a2;
        dev.duo.hookprobe.U.a(a2, 24.0f);
        a2.setPadding(a(16.0f), a(14.0f), a(16.0f), a(14.0f));
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this.a);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this.a, 14.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("隐藏外屏原生状态栏");
        c2.addView(a3, dev.duo.hookprobe.U.b());
        android.widget.Switch r2 = new android.widget.Switch(this.a);
        this.n = r2;
        dev.duo.hookprobe.U.a(r2);
        this.n.setContentDescription("隐藏外屏原生状态栏");
        this.n.setEnabled(false);
        this.n.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda6
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.C0016f.this.b(compoundButton, z);
            }
        });
        c2.addView(this.n);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.C0016f.this.f(view);
            }
        });
        a2.addView(c2);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this.a, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        this.o = a4;
        a4.setPadding(0, a(8.0f), 0, a(4.0f));
        this.o.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.C0016f.this.g(view);
            }
        });
        a2.addView(this.o);
        return a2;
    }

    private void h() {
        dev.duo.hookprobe.C0026o c0026o;
        if (this.k == null || (c0026o = this.f) == null) {
            return;
        }
        boolean g = c0026o.g(this.c);
        this.k.setVisibility(g ? 8 : 0);
        this.z.a.setVisibility(g ? 0 : 8);
        this.l.setText(g ? "内屏原生顶栏" : "抖音内屏顶栏");
        this.m.a(this.f.b("inner") ? 1 : 0);
        this.m.a(!g);
    }

    private void i() {
        java.lang.String str;
        dev.duo.hookprobe.C0026o c0026o = this.f;
        if (c0026o == null) {
            return;
        }
        boolean g = c0026o.g(this.c);
        android.widget.LinearLayout linearLayout = this.p;
        if (linearLayout != null) {
            linearLayout.setVisibility(g ? 8 : 0);
        }
        dev.duo.hookprobe.C0016f.e eVar = this.i;
        if (eVar != null) {
            eVar.g.setVisibility((g || this.f.l(this.c)) ? 0 : 8);
            android.widget.LinearLayout linearLayout2 = this.q;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(this.i.g.getVisibility());
            }
        }
        boolean z = true;
        this.x = true;
        android.widget.Switch r2 = this.n;
        if (!g && !this.f.l(this.c)) {
            z = false;
        }
        r2.setChecked(z);
        this.x = false;
        this.n.setEnabled(!g);
        android.widget.TextView textView = this.o;
        if (g) {
            str = "Duo 已隐藏外屏顶栏，关闭 Duo 后可单独设置";
        } else if (this.f.c(this.c)) {
            str = "已单独设置 · 点此恢复跟随全局";
        } else {
            str = "跟随全局 · 当前" + (this.f.l(this.c) ? "隐藏" : "原生显示");
        }
        textView.setText(str);
        this.o.setTextColor((g || !this.f.c(this.c)) ? dev.duo.hookprobe.U.d : dev.duo.hookprobe.U.b);
    }

    private void j() {
        int i = 0;
        while (i < 2) {
            boolean z = i == 1;
            android.widget.TextView textView = z ? this.F : this.E;
            java.lang.Integer a2 = this.f.a(this.c, z);
            int b2 = dev.duo.hookprobe.P.b(this.f.a, this.c, z);
            textView.setText((z ? "深色模式  " : "浅色模式  ") + b(b2) + (a2 == null ? " · 默认" : " · 自定义"));
            android.graphics.drawable.GradientDrawable a3 = dev.duo.hookprobe.U.a(b2, a(6.0f));
            a3.setStroke(java.lang.Math.max(1, a(1.0f)), dev.duo.hookprobe.U.h);
            a3.setBounds(0, 0, a(22.0f), a(22.0f));
            textView.setCompoundDrawables(a3, null, null, null);
            textView.setCompoundDrawablePadding(a(10.0f));
            textView.setEnabled(true);
            i++;
        }
        this.G.setEnabled(true);
        boolean a4 = dev.duo.hookprobe.P.a(this.a);
        this.D.setText("当前系统：" + (a4 ? "深色" : "浅色") + "；" + (this.f.a(this.c, a4) == null ? "当前沿用原白黑设置。" : "当前自定义优先，原白黑设置暂不生效。") + ((this.f.g(this.c) && this.f.m()) ? "" : " Duo 开启后生效。") + " 仅调整应用右侧栏背景，字色按背景明暗适配；相同深浅配色共用数据，单独修改互不影响。");
        l();
    }

    private void k() {
        dev.duo.hookprobe.C0026o c0026o = this.f;
        if (c0026o == null) {
            return;
        }
        if (this.A != null && (!c0026o.e("outer", true) || !this.f.e("inner", true))) {
            c("写入失败");
            return;
        }
        if ("com.ss.android.ugc.aweme".equals(this.c) && !this.f.f("inner", false)) {
            c("写入失败");
            return;
        }
        if (!this.f.e(this.c) || !this.f.a(this.c, 0) || !this.f.c(this.c, "inner") || !this.f.c(this.c, "outer") || !this.f.f(this.c) || !this.f.e(this.c, "follow") || !this.f.a(this.c, (java.lang.Integer) null, (java.lang.Integer) null)) {
            c("写入失败");
            return;
        }
        this.h.h();
        this.i.h();
        this.j.h();
        this.z.a(0);
        h();
        i();
        dev.duo.hookprobe.U.e eVar = this.A;
        if (eVar != null) {
            eVar.a(this.f.a("outer") ? 1 : 0);
            this.B.a(this.f.a("inner") ? 1 : 0);
        }
        this.y.a(0);
        j();
        if (this.A != null) {
            h("已恢复默认：外屏顶栏跟随全局，内屏顶栏原生显示；顶部高度和侧栏颜色跟随全局，缩放恢复默认，内外屏竖视频完整显示");
        } else {
            d("已恢复默认：顶栏、高度、缩放和侧栏颜色都跟随全局");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        android.widget.TextView textView;
        java.lang.String g;
        if (this.f == null || (textView = this.t) == null) {
            return;
        }
        textView.setText("内 " + this.h.c() + " · 外 " + this.i.c());
        this.u.setText(this.j.c() + "%");
        java.lang.String n = this.f.n(this.c);
        boolean z = (this.f.a(this.c, false) == null && this.f.a(this.c, true) == null) ? false : true;
        android.widget.TextView textView2 = this.v;
        if (z) {
            g = "已自定义";
        } else {
            if (n == null) {
                n = "follow";
            }
            g = g(n);
        }
        textView2.setText(g);
    }

    private android.view.View c() {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this.a);
        dev.duo.hookprobe.U.a(a2, 24.0f);
        a2.setPadding(a(16.0f), a(14.0f), a(16.0f), a(14.0f));
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this.a, 14.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("内屏原生顶栏");
        this.l = a3;
        a2.addView(a3);
        dev.duo.hookprobe.U.e eVar = new dev.duo.hookprobe.U.e(this.a, new java.lang.String[]{"跟随全局", "显示原生顶栏", "隐藏"}, null, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda36
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                dev.duo.hookprobe.C0016f.this.c(i);
            }
        });
        this.z = eVar;
        eVar.a(false);
        a2.addView(this.z.a, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 10.0f));
        if ("com.ss.android.ugc.aweme".equals(this.c)) {
            this.k = dev.duo.hookprobe.U.a((android.content.Context) this.a);
            android.widget.TextView a4 = dev.duo.hookprobe.U.a(this.a, 13.0f, dev.duo.hookprobe.U.c, 600);
            a4.setText("内屏");
            this.k.addView(a4, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 12.0f));
            dev.duo.hookprobe.U.e b2 = b("inner");
            this.m = b2;
            this.k.addView(b2.a, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 8.0f));
            android.widget.TextView a5 = dev.duo.hookprobe.U.a(this.a, 12.0f, dev.duo.hookprobe.U.c, dev.duo.hookprobe.J.m);
            a5.setText("未开启 Duo 时生效：内屏横竖屏共用显隐和顶部空隙设置；隐藏后可调下方高度，修改后需重新打开抖音。顶部三个点保留。");
            this.k.addView(a5, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 10.0f));
            a2.addView(this.k, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 10.0f));
            this.z.a.setVisibility(8);
            a3.setText("抖音内屏顶栏");
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(android.view.View view) {
        dev.duo.hookprobe.ColorConfigActivity.a(this.a, this.c, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(android.view.View view) {
        k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(android.view.View view) {
        if (this.n.isEnabled()) {
            this.n.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(android.widget.CompoundButton compoundButton, boolean z) {
        dev.duo.hookprobe.C0026o c0026o;
        if (this.x || (c0026o = this.f) == null) {
            return;
        }
        if (c0026o.h(this.c, z)) {
            h("已保存，切回 App 后生效；个别 App 要重新打开");
            if (z && !this.f.g(this.c)) {
                f();
            }
        } else {
            c("保存失败");
        }
        i();
        this.i.h();
    }

    private android.widget.TextView d(final boolean z) {
        android.widget.TextView a2 = dev.duo.hookprobe.U.a((android.content.Context) this.a, "", false, 56.0f);
        a2.setGravity(8388627);
        a2.setEnabled(false);
        a2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.C0016f.this.a(z, view);
            }
        });
        return a2;
    }

    private void e() {
        dev.duo.hookprobe.C0026o c0026o = this.f;
        if (c0026o == null) {
            return;
        }
        final android.os.Bundle o = c0026o.o(this.c);
        final android.os.Bundle bundle = o.getBundle("groups");
        final android.os.Bundle bundle2 = o.getBundle("colors");
        final java.util.ArrayList arrayList = new java.util.ArrayList(bundle.keySet());
        java.util.Collections.sort(arrayList);
        if (arrayList.isEmpty()) {
            h("还没有保存的页面颜色：在小功能里打开取色按钮，再到 App 侧栏点它取色");
            return;
        }
        java.lang.String[] strArr = new java.lang.String[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            java.lang.String str = (java.lang.String) arrayList.get(i);
            int i2 = bundle.getInt(str);
            boolean startsWith = str.startsWith("dark/");
            int i3 = 0;
            for (java.lang.String str2 : bundle2.keySet()) {
                if (str2.startsWith(startsWith ? "dark/" : "light/") && bundle2.getInt(str2) == i2) {
                    i3++;
                }
            }
            java.lang.Integer a2 = this.f.a(this.c, startsWith);
            strArr[i] = (startsWith ? "深色  " : "浅色  ") + b(i2) + " · " + i3 + " 个页面" + ((a2 == null || a2.intValue() != i2) ? i3 == 0 ? " · 暂未绑定页面" : "" : " · App 默认色");
        }
        dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(this.a, "已保存的页面颜色", strArr, new android.content.DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda12
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(android.content.DialogInterface dialogInterface, int i4) {
                dev.duo.hookprobe.C0016f.this.a(arrayList, bundle, bundle2, o, dialogInterface, i4);
            }
        }).setNeutralButton("清除全部页面记录", new android.content.DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda13
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(android.content.DialogInterface dialogInterface, int i4) {
                dev.duo.hookprobe.C0016f.this.b(dialogInterface, i4);
            }
        }).setNegativeButton("关闭", (android.content.DialogInterface.OnClickListener) null).create());
    }

    private void f() {
        android.widget.LinearLayout linearLayout = this.r;
        if (linearLayout == null) {
            return;
        }
        linearLayout.setVisibility(0);
        android.widget.ImageView imageView = this.s;
        if (imageView != null) {
            imageView.setRotation(180.0f);
        }
    }

    private void f(final boolean z) {
        if (!this.f.g(this.c, z)) {
            c("写入失败");
            return;
        }
        h();
        i();
        this.h.h();
        this.i.h();
        dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.C0016f.this.c(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(float f) {
        return dev.duo.hookprobe.U.a(this.a, f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i) {
        dev.duo.hookprobe.C0026o c0026o = this.f;
        if (c0026o == null) {
            return;
        }
        java.lang.String str = dev.duo.hookprobe.P.F[i];
        if (c0026o.e(this.c, str)) {
            this.y.a(i);
            j();
            h("原白黑设置已设为" + g(str) + "；未自定义的模式生效");
            return;
        }
        c("写入失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.widget.ImageView imageView, android.view.View view) {
        boolean z = this.C.getVisibility() != 0;
        this.C.setVisibility(z ? 0 : 8);
        imageView.setRotation(z ? 180.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(final java.lang.String str) {
        this.b.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.C0016f.this.f(str);
            }
        });
    }

    private void a(android.widget.LinearLayout linearLayout, android.widget.ImageView imageView, java.lang.String str, android.widget.TextView textView, final java.lang.Runnable runnable, int i) {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this.a);
        c2.setPadding(0, 0, i, 0);
        if (runnable != null) {
            android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(this.a);
            dev.duo.hookprobe.U.a(frameLayout, 21.0f);
            frameLayout.setContentDescription("返回");
            android.app.Activity activity = this.a;
            frameLayout.addView(dev.duo.hookprobe.U.a(activity, dev.duo.hookprobe.U.a(activity, 3, dev.duo.hookprobe.U.b, 2.6f, false, 18.0f)), new android.widget.FrameLayout.LayoutParams(a(18.0f), a(18.0f), 17));
            frameLayout.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda14
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    runnable.run();
                }
            });
            c2.addView(frameLayout, dev.duo.hookprobe.U.a(this.a, 42.0f, 42.0f));
        }
        c2.addView(new android.view.View(this.a), dev.duo.hookprobe.U.b());
        dev.duo.hookprobe.U.a(textView, 21.0f);
        c2.addView(textView, new android.widget.LinearLayout.LayoutParams(-2, a(42.0f)));
        linearLayout.addView(c2);
        android.widget.LinearLayout.LayoutParams a2 = dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(this.a, 80.0f, 80.0f), this.a, 6.0f);
        a2.gravity = 1;
        linearLayout.addView(imageView, a2);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this.a, 24.0f, dev.duo.hookprobe.U.b, 800);
        a3.setText(str);
        a3.setGravity(17);
        linearLayout.addView(a3, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 12.0f));
        android.widget.LinearLayout a4 = a(linearLayout, 24.0f);
        a4.setPadding(a(18.0f), 0, a(14.0f), 0);
        android.widget.LinearLayout c3 = dev.duo.hookprobe.U.c(this.a);
        c3.setMinimumHeight(a(58.0f));
        android.widget.TextView a5 = dev.duo.hookprobe.U.a(this.a, 16.0f, dev.duo.hookprobe.U.b, 600);
        a5.setText("Duo 适配");
        c3.addView(a5, dev.duo.hookprobe.U.b());
        c3.addView(this.g);
        a4.addView(c3);
        a(a4);
        ((android.widget.LinearLayout.LayoutParams) a4.getLayoutParams()).topMargin = a(22.0f);
        linearLayout.addView(g(), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 12.0f));
        linearLayout.addView(c(), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 12.0f));
        this.t = dev.duo.hookprobe.U.a(this.a, 12.0f, dev.duo.hookprobe.U.d, 500);
        android.widget.LinearLayout a6 = dev.duo.hookprobe.U.a((android.content.Context) this.a);
        this.r = a6;
        a6.setPadding(0, 0, 0, a(8.0f));
        this.h = new dev.duo.hookprobe.C0016f.e(this.r, "内屏（展开时）", "inner", 11, true, false);
        this.i = new dev.duo.hookprobe.C0016f.e(this.r, "外屏（合上时）", "outer", 12, true, false);
        linearLayout.addView(a("顶部避让高度", this.t, this.r, true), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 12.0f));
        this.u = dev.duo.hookprobe.U.a(this.a, 12.0f, dev.duo.hookprobe.U.d, 500);
        android.widget.LinearLayout a7 = dev.duo.hookprobe.U.a((android.content.Context) this.a);
        a7.setPadding(a(2.0f), 0, a(2.0f), a(8.0f));
        this.j = new dev.duo.hookprobe.C0016f.d(a7, false);
        linearLayout.addView(a("外屏页面缩放", this.u, (android.view.View) a7, false), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 12.0f));
        this.v = dev.duo.hookprobe.U.a(this.a, 12.0f, dev.duo.hookprobe.U.d, 500);
        android.widget.LinearLayout a8 = dev.duo.hookprobe.U.a((android.content.Context) this.a);
        a8.setPadding(0, 0, 0, a(12.0f));
        a8.addView(a(), dev.duo.hookprobe.U.a());
        linearLayout.addView(a("外屏侧栏颜色", this.v, (android.view.View) a8, false), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 12.0f));
    }

    private dev.duo.hookprobe.U.e b(final java.lang.String str) {
        dev.duo.hookprobe.U.e eVar = new dev.duo.hookprobe.U.e(this.a, new java.lang.String[]{"原生显示", "隐藏"}, null, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda0
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                dev.duo.hookprobe.C0016f.this.b(str, i);
            }
        });
        eVar.a(false);
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        io.github.libxposed.service.XposedService a2 = dev.duo.hookprobe.L.a(8000L);
        final dev.duo.hookprobe.C0026o c0026o = a2 == null ? null : new dev.duo.hookprobe.C0026o(a2);
        this.b.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.C0016f.this.a(c0026o);
            }
        });
        a(a2, c0026o);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(java.lang.String str) {
        if (this.a.isDestroyed()) {
            return;
        }
        android.widget.Toast.makeText(this.a, str, 0).show();
        java.lang.Runnable runnable = this.d;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(java.lang.String str, int i) {
        dev.duo.hookprobe.C0026o c0026o = this.f;
        if (c0026o == null) {
            return;
        }
        if (!c0026o.f(str, i == 1)) {
            c("保存失败");
            h();
        } else {
            h();
            this.h.h();
            this.i.h();
            h("已保存，重新打开抖音后生效");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(android.view.View view) {
        dev.duo.hookprobe.C0026o c0026o = this.f;
        if (c0026o != null) {
            e(c0026o.a(this.c, (java.lang.Integer) null, (java.lang.Integer) null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(android.content.DialogInterface dialogInterface, int i) {
        dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(this.a, "清除页面记录？").setMessage("只清除这个 App 保存的页面颜色和关联，保留 App 默认色。").setPositiveButton("清除", new android.content.DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda21
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(android.content.DialogInterface dialogInterface2, int i2) {
                dev.duo.hookprobe.C0016f.this.a(dialogInterface2, i2);
            }
        }).setNegativeButton("取消", (android.content.DialogInterface.OnClickListener) null).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(int i) {
        dev.duo.hookprobe.C0026o c0026o = this.f;
        if (c0026o == null) {
            return;
        }
        if (!c0026o.a(this.c, i)) {
            this.z.a(this.f.j(this.c));
            c("写入失败");
        } else {
            this.z.a(i);
            this.h.h();
            h("已保存，切回 App 或开合一下即生效；个别 App 要重新打开");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(android.view.View view) {
        dev.duo.hookprobe.C0026o c0026o = this.f;
        if (c0026o == null || c0026o.g(this.c) || !this.f.c(this.c)) {
            return;
        }
        if (this.f.e(this.c)) {
            h("已恢复跟随全局");
        } else {
            c("保存失败");
        }
        i();
        this.i.h();
    }

    private static java.lang.String g(java.lang.String str) {
        return "follow".equals(str) ? "跟随全局" : "black".equals(str) ? "黑色" : "白色";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static java.lang.String b(int i) {
        return java.lang.String.format(java.util.Locale.ROOT, "#%06X", java.lang.Integer.valueOf(i & 16777215));
    }

    private void b(final boolean z) {
        float f;
        float f2;
        int[] iArr;
        if (this.f == null) {
            return;
        }
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this.a);
        a2.setPadding(a(20.0f), a(8.0f), a(20.0f), a(4.0f));
        int i = 600;
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this.a, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setGravity(17);
        a3.setText("背景预览  ·  时间 / 搜索");
        int i2 = -1;
        a2.addView(a3, new android.widget.LinearLayout.LayoutParams(-1, a(96.0f)));
        final android.widget.EditText editText = new android.widget.EditText(this.a);
        dev.duo.hookprobe.U.a(editText);
        int i3 = 1;
        editText.setSingleLine(true);
        editText.setHint("#RRGGBB，例如 #F3F3F3");
        editText.setTextColor(dev.duo.hookprobe.U.b);
        editText.setTextSize(16.0f);
        editText.setInputType(4097);
        a2.addView(editText, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 8.0f));
        int[] iArr2 = {dev.duo.hookprobe.P.b(this.f.a, this.c, z)};
        int i4 = 3;
        android.widget.SeekBar[] seekBarArr = new android.widget.SeekBar[3];
        int i5 = 0;
        int i6 = 0;
        while (true) {
            f = 12.0f;
            f2 = 1.0f;
            if (i6 >= i4) {
                break;
            }
            int i7 = i2;
            android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this.a);
            android.widget.TextView a4 = dev.duo.hookprobe.U.a(this.a, 12.0f, dev.duo.hookprobe.U.c, i);
            a4.setText(new java.lang.String[]{"R", "G", "B"}[i6]);
            c2.addView(a4, dev.duo.hookprobe.U.a(this.a, 22.0f, 40.0f));
            android.widget.SeekBar seekBar = new android.widget.SeekBar(this.a);
            seekBarArr[i6] = seekBar;
            dev.duo.hookprobe.U.a(seekBar);
            seekBarArr[i6].setMax(255);
            seekBarArr[i6].setContentDescription(new java.lang.String[]{"红色", "绿色", "蓝色"}[i6]);
            c2.addView(seekBarArr[i6], new android.widget.LinearLayout.LayoutParams(0, a(40.0f), 1.0f));
            a2.addView(c2, dev.duo.hookprobe.U.a());
            i6++;
            i2 = i7;
            i3 = i3;
            i = 600;
            i4 = 3;
        }
        int i8 = i3;
        int i9 = i2;
        editText.addTextChangedListener(new dev.duo.hookprobe.C0016f.a(iArr2, a3, seekBarArr));
        for (int i10 = 0; i10 < 3; i10++) {
            seekBarArr[i10].setOnSeekBarChangeListener(new dev.duo.hookprobe.C0016f.b(editText, iArr2, 16 - (i10 * 8)));
        }
        if (z) {
            iArr = new int[6];
            iArr[0] = -16777216;
            iArr[i8] = -14869217;
            iArr[2] = -14668742;
            iArr[3] = -14404821;
            iArr[4] = -13292996;
            iArr[5] = -12964827;
        } else {
            iArr = new int[6];
            iArr[0] = -789517;
            iArr[i8] = i9;
            iArr[2] = -1511432;
            iArr[3] = -1445144;
            iArr[4] = -857355;
            iArr[5] = -594465;
        }
        android.widget.LinearLayout c3 = dev.duo.hookprobe.U.c(this.a);
        int length = iArr.length;
        int i11 = 0;
        while (i11 < length) {
            final int i12 = iArr[i11];
            android.widget.TextView a5 = dev.duo.hookprobe.U.a(this.a, f, dev.duo.hookprobe.U.b, 600);
            a5.setContentDescription(b(i12));
            android.graphics.drawable.GradientDrawable a6 = dev.duo.hookprobe.U.a(i12, a(10.0f));
            a6.setStroke(java.lang.Math.max(i8, a(f2)), dev.duo.hookprobe.U.h);
            a5.setBackground(a6);
            a5.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda32
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.hookprobe.C0016f.a(editText, i12, view);
                }
            });
            android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(i5, a(38.0f), f2);
            layoutParams.setMargins(a(3.0f), a(8.0f), a(3.0f), a(8.0f));
            c3.addView(a5, layoutParams);
            i11++;
            i5 = i5;
            f = 12.0f;
            f2 = 1.0f;
            i8 = 1;
        }
        a2.addView(c3, dev.duo.hookprobe.U.a());
        editText.setText(b(iArr2[i5]));
        final android.app.AlertDialog create = dev.duo.hookprobe.U.a(this.a, (z ? "深色" : "浅色") + "模式背景").setView(a2).setNegativeButton("取消", (android.content.DialogInterface.OnClickListener) null).setNeutralButton("此模式恢复默认", new android.content.DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda33
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(android.content.DialogInterface dialogInterface, int i13) {
                dev.duo.hookprobe.C0016f.this.a(z, dialogInterface, i13);
            }
        }).setPositiveButton("保存", (android.content.DialogInterface.OnClickListener) null).create();
        create.setOnShowListener(new android.content.DialogInterface.OnShowListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda34
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(android.content.DialogInterface dialogInterface) {
                dev.duo.hookprobe.C0016f.this.a(create, editText, z, dialogInterface);
            }
        });
        dev.duo.hookprobe.U.a(create);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(android.view.View view) {
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(boolean z) {
        io.github.libxposed.service.XposedService c2 = dev.duo.hookprobe.L.c();
        java.lang.StringBuilder sb = new java.lang.StringBuilder(z ? "Duo 适配已开启" : "Duo 适配已关闭");
        if (z && c2 != null && dev.duo.hookprobe.P.q.contains(this.c) && !c2.getScope().contains(this.c)) {
            c2.requestScope(java.util.Collections.singletonList(this.c), new dev.duo.hookprobe.C0016f.c(c2));
            sb.append("，请在通知栏点「批准」作用域");
        }
        h(sb.toString());
        a(c2, this.f);
    }

    private void e(boolean z) {
        if (!z) {
            c("配色保存失败");
        } else {
            j();
            h("侧栏背景配色已保存，按系统深浅模式生效");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(java.lang.String str) {
        if (this.a.isDestroyed()) {
            return;
        }
        android.widget.Toast.makeText(this.a, str, 1).show();
    }

    private void d(java.lang.String str) {
        a(str, (java.lang.String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final java.lang.String str) {
        this.b.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.C0016f.this.e(str);
            }
        });
    }

    private void a(android.widget.LinearLayout linearLayout, android.widget.ImageView imageView, java.lang.String str, android.widget.TextView textView) {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this.a);
        dev.duo.hookprobe.U.a(c2, 26.0f);
        c2.setPadding(a(18.0f), a(16.0f), a(18.0f), a(16.0f));
        c2.addView(imageView, dev.duo.hookprobe.U.a(this.a, 52.0f, 52.0f));
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this.a);
        a2.setPadding(a(14.0f), 0, a(14.0f), 0);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this.a, 20.0f, dev.duo.hookprobe.U.b, 800);
        a3.setText(str);
        a3.setSingleLine(true);
        a3.setEllipsize(android.text.TextUtils.TruncateAt.END);
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this.a, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a4.setText("Duo 适配");
        a4.setPadding(0, a(4.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, dev.duo.hookprobe.U.b());
        textView.setBackground(dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.f, a(17.0f)));
        c2.addView(textView, new android.widget.LinearLayout.LayoutParams(-2, a(34.0f)));
        android.widget.LinearLayout.LayoutParams c3 = dev.duo.hookprobe.U.c();
        c3.leftMargin = a(14.0f);
        c2.addView(this.g, c3);
        a(c2);
        linearLayout.addView(c2, dev.duo.hookprobe.U.a());
        linearLayout.addView(g(), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 12.0f));
        linearLayout.addView(c(), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 12.0f));
        this.t = dev.duo.hookprobe.U.a(this.a, 12.0f, dev.duo.hookprobe.U.d, 500);
        android.widget.LinearLayout c4 = dev.duo.hookprobe.U.c(this.a);
        c4.setBaselineAligned(false);
        android.widget.LinearLayout a5 = dev.duo.hookprobe.U.a((android.content.Context) this.a);
        android.widget.LinearLayout a6 = dev.duo.hookprobe.U.a((android.content.Context) this.a);
        this.q = a6;
        android.widget.LinearLayout[] linearLayoutArr = {a5, a6};
        for (int i = 0; i < 2; i++) {
            android.widget.LinearLayout linearLayout2 = linearLayoutArr[i];
            dev.duo.hookprobe.U.a(linearLayout2, 24.0f);
            linearLayout2.setPadding(a(16.0f), a(16.0f), a(16.0f), a(16.0f));
        }
        this.h = new dev.duo.hookprobe.C0016f.e(a5, "内屏", "inner", 11, true, true);
        this.i = new dev.duo.hookprobe.C0016f.e(this.q, "外屏", "outer", 12, true, true);
        c4.addView(a5, new android.widget.LinearLayout.LayoutParams(0, -2, 1.0f));
        android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.leftMargin = a(12.0f);
        c4.addView(this.q, layoutParams);
        this.r = c4;
        linearLayout.addView(a("顶部避让高度", this.t, (android.view.View) c4, true), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 12.0f));
        this.u = dev.duo.hookprobe.U.a(this.a, 12.0f, dev.duo.hookprobe.U.d, 500);
        android.widget.LinearLayout a7 = dev.duo.hookprobe.U.a((android.content.Context) this.a);
        dev.duo.hookprobe.U.a(a7, 24.0f);
        a7.setPadding(a(16.0f), a(16.0f), a(16.0f), a(16.0f));
        this.j = new dev.duo.hookprobe.C0016f.d(a7, true);
        linearLayout.addView(a("外屏页面缩放", this.u, (android.view.View) a7, false), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 12.0f));
        this.v = dev.duo.hookprobe.U.a(this.a, 12.0f, dev.duo.hookprobe.U.d, 500);
        android.widget.LinearLayout a8 = dev.duo.hookprobe.U.a((android.content.Context) this.a);
        a8.setPadding(0, a(4.0f), 0, a(8.0f));
        android.widget.TextView a9 = dev.duo.hookprobe.U.a(this.a, 14.0f, dev.duo.hookprobe.U.b, 600);
        a9.setText("配色");
        a8.addView(a9);
        a8.addView(a(), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 10.0f));
        linearLayout.addView(a("外屏侧栏颜色", this.v, (android.view.View) a8, false), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 12.0f));
    }

    private android.view.View a(boolean z) {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this.a);
        dev.duo.hookprobe.U.a(a2, z ? 26.0f : 28.0f);
        a2.setPadding(a(18.0f), a(6.0f), a(18.0f), a(6.0f));
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this.a);
        c2.setMinimumHeight(a(58.0f));
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this.a, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText("画幅切换");
        c2.addView(a3, dev.duo.hookprobe.U.b());
        android.app.Activity activity = this.a;
        final android.widget.ImageView a4 = dev.duo.hookprobe.U.a(activity, dev.duo.hookprobe.U.a(activity, 5, dev.duo.hookprobe.U.d, 3.0f, false, 12.0f));
        c2.addView(a4, dev.duo.hookprobe.U.a(this.a, 12.0f, 12.0f));
        a2.addView(c2);
        final android.widget.LinearLayout a5 = dev.duo.hookprobe.U.a((android.content.Context) this.a);
        a5.setPadding(0, 0, 0, a(12.0f));
        android.widget.TextView a6 = dev.duo.hookprobe.U.a(this.a, 13.0f, dev.duo.hookprobe.U.c, 600);
        a6.setText("外屏");
        a5.addView(a6);
        dev.duo.hookprobe.U.e a7 = a("outer");
        this.A = a7;
        a5.addView(a7.a, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 10.0f));
        android.widget.TextView a8 = dev.duo.hookprobe.U.a(this.a, 13.0f, dev.duo.hookprobe.U.c, 600);
        a8.setText("内屏");
        a5.addView(a8, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 16.0f));
        dev.duo.hookprobe.U.e a9 = a("inner");
        this.B = a9;
        a5.addView(a9.a, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 10.0f));
        android.widget.TextView a10 = dev.duo.hookprobe.U.a(this.a, 12.0f, dev.duo.hookprobe.U.c, dev.duo.hookprobe.J.m);
        a10.setText("仅在竖着拿手机、抖音的 Duo 适配关闭时生效。拉满会裁上下，完整显示会留边；横屏、横视频和直播保持原样。首次需在 LSPosed 的 MiDuo 作用域勾选抖音，再重新打开抖音。");
        a5.addView(a10, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 10.0f));
        a5.setVisibility(8);
        a2.addView(a5);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda35
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.C0016f.a(a5, a4, view);
            }
        });
        return a2;
    }

    private void b() {
        java.lang.String str;
        final java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.String str2 : this.f.a.getAll().keySet()) {
            if (!str2.startsWith("_") && str2.endsWith("/railPalette")) {
                java.lang.String substring = str2.substring(0, str2.length() - 12);
                if (!substring.equals(this.c)) {
                    arrayList.add(substring);
                }
            }
        }
        java.util.Collections.sort(arrayList);
        if (arrayList.isEmpty()) {
            h("还没有其它已配色软件");
            return;
        }
        java.lang.String[] strArr = new java.lang.String[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            java.lang.String str3 = (java.lang.String) arrayList.get(i);
            try {
                str = this.a.getPackageManager().getApplicationLabel(this.a.getPackageManager().getApplicationInfo(str3, 0)).toString();
            } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
                str = str3;
            }
            strArr[i] = str + "\n" + str3;
        }
        dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(this.a, "复制其他 App 的深浅配色", strArr, new android.content.DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(android.content.DialogInterface dialogInterface, int i2) {
                dev.duo.hookprobe.C0016f.this.a(arrayList, dialogInterface, i2);
            }
        }).setNegativeButton("取消", (android.content.DialogInterface.OnClickListener) null).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.widget.LinearLayout linearLayout, android.widget.ImageView imageView, android.view.View view) {
        boolean z = linearLayout.getVisibility() != 0;
        linearLayout.setVisibility(z ? 0 : 8);
        imageView.setRotation(z ? 180.0f : 0.0f);
    }

    private dev.duo.hookprobe.U.e a(final java.lang.String str) {
        dev.duo.hookprobe.U.e eVar = new dev.duo.hookprobe.U.e(this.a, new java.lang.String[]{"裁切拉满", "完整显示"}, null, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda16
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                dev.duo.hookprobe.C0016f.this.a(str, i);
            }
        });
        eVar.a(false);
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.String str, int i) {
        if (this.f == null) {
            return;
        }
        dev.duo.hookprobe.U.e eVar = "inner".equals(str) ? this.B : this.A;
        if (!this.f.e(str, i == 1)) {
            eVar.a(this.f.a(str) ? 1 : 0);
            c("写入失败");
        } else {
            eVar.a(i);
            h("已保存，切回抖音后生效");
        }
    }

    private android.view.View a() {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this.a);
        this.E = d(false);
        this.F = d(true);
        a2.addView(this.E, dev.duo.hookprobe.U.a());
        a2.addView(this.F, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 8.0f));
        android.widget.TextView a3 = dev.duo.hookprobe.U.a((android.content.Context) this.a, "复制其他 App 的深浅配色", false, 48.0f);
        this.G = a3;
        a3.setEnabled(false);
        this.G.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.C0016f.this.a(view);
            }
        });
        a2.addView(this.G, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 8.0f));
        android.widget.TextView a4 = dev.duo.hookprobe.U.a((android.content.Context) this.a, "恢复默认深浅配色", false, 48.0f);
        a4.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda23
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.C0016f.this.b(view);
            }
        });
        a2.addView(a4, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 8.0f));
        android.widget.TextView a5 = dev.duo.hookprobe.U.a((android.content.Context) this.a, "管理已保存的页面颜色", false, 48.0f);
        a5.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda24
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.C0016f.this.c(view);
            }
        });
        a2.addView(a5, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 8.0f));
        android.widget.TextView a6 = dev.duo.hookprobe.U.a((android.content.Context) this.a, "导出这个 App 的颜色配置", false, 48.0f);
        a6.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda25
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.C0016f.this.d(view);
            }
        });
        a2.addView(a6, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 8.0f));
        android.widget.TextView a7 = dev.duo.hookprobe.U.a(this.a, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a7.setText("原白黑设置（仅未自定义的模式生效）");
        a2.addView(a7, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 4.0f));
        dev.duo.hookprobe.U.e eVar = new dev.duo.hookprobe.U.e(this.a, new java.lang.String[]{"跟随全局", "白色", "黑色"}, new int[]{-5329230, -1, -14869217}, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda26
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                dev.duo.hookprobe.C0016f.this.d(i);
            }
        });
        this.y = eVar;
        eVar.a(false);
        a2.addView(this.y.a, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 8.0f));
        android.widget.TextView a8 = dev.duo.hookprobe.U.a(this.a, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        this.D = a8;
        a8.setLineSpacing(0.0f, 1.3f);
        a2.addView(this.D, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 10.0f));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.view.View view) {
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.util.ArrayList arrayList, android.os.Bundle bundle, android.os.Bundle bundle2, android.os.Bundle bundle3, android.content.DialogInterface dialogInterface, int i) {
        java.lang.String str = (java.lang.String) arrayList.get(i);
        final boolean startsWith = str.startsWith("dark/");
        final int i2 = bundle.getInt(str);
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        for (java.lang.String str2 : bundle2.keySet()) {
            if (str2.startsWith(startsWith ? "dark/" : "light/") && bundle2.getInt(str2) == i2) {
                arrayList2.add(str2);
            }
        }
        java.util.Collections.sort(arrayList2);
        java.lang.StringBuilder sb = new java.lang.StringBuilder("修改会同时影响这组颜色关联的 " + arrayList2.size() + " 个页面，仅影响本 App 的" + (startsWith ? "深色" : "浅色") + "模式。");
        int i3 = 0;
        int i4 = 0;
        while (i4 < arrayList2.size()) {
            java.lang.StringBuilder append = sb.append("\n");
            android.os.Bundle bundle4 = bundle3.getBundle("labels");
            java.lang.String str3 = (java.lang.String) arrayList2.get(i4);
            i4++;
            append.append(bundle4.getString(str3, "页面 " + i4));
        }
        java.lang.Integer a2 = this.f.a(this.c, startsWith);
        final boolean z = a2 != null && a2.intValue() == i2;
        if (z) {
            sb.append("\n这也是 App 默认色，修改后默认色一起改变；删除仅移除页面关联，保留默认色。");
        }
        int size = arrayList2.size();
        java.lang.String[] strArr = new java.lang.String[size];
        while (i3 < size) {
            int i5 = i3 + 1;
            strArr[i3] = bundle3.getBundle("labels").getString((java.lang.String) arrayList2.get(i3), "页面 " + i5);
            i3 = i5;
        }
        dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(this.a, b(i2)).setMessage(sb.toString()).setView(a(arrayList2, strArr)).setPositiveButton("修改颜色", new android.content.DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(android.content.DialogInterface dialogInterface2, int i6) {
                dev.duo.hookprobe.C0016f.this.a(startsWith, i2, z, dialogInterface2, i6);
            }
        }).setNeutralButton("删除这组记录", new android.content.DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(android.content.DialogInterface dialogInterface2, int i6) {
                dev.duo.hookprobe.C0016f.this.a(startsWith, i2, dialogInterface2, i6);
            }
        }).setNegativeButton("取消", (android.content.DialogInterface.OnClickListener) null).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, int i, boolean z2, android.content.DialogInterface dialogInterface, int i2) {
        a(z, i, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, int i, android.content.DialogInterface dialogInterface, int i2) {
        if (this.f.a(this.c, z, i, null)) {
            h("记录已删除，这些页面恢复使用 App 默认色");
        } else {
            c("删除失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.content.DialogInterface dialogInterface, int i) {
        if (this.f.q(this.c)) {
            h("已清除页面记录，App 默认色保留");
        } else {
            c("清除失败");
        }
    }

    private android.view.View a(java.util.List<java.lang.String> list, java.lang.String[] strArr) {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this.a);
        a2.setPadding(a(20.0f), 0, a(20.0f), 0);
        final int i = 0;
        while (i < strArr.length) {
            final android.widget.TextView a3 = dev.duo.hookprobe.U.a((android.content.Context) this.a, strArr[i] + " · 修改备注", false, 44.0f);
            a3.setSingleLine(false);
            final java.util.List<java.lang.String> list2 = list;
            final java.lang.String[] strArr2 = strArr;
            a3.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda28
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.hookprobe.C0016f.this.a(strArr2, i, list2, a3, view);
                }
            });
            a2.addView(a3, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 8.0f));
            i++;
            strArr = strArr2;
            list = list2;
        }
        android.widget.ScrollView scrollView = new android.widget.ScrollView(this.a);
        scrollView.addView(a2);
        return scrollView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final java.lang.String[] strArr, final int i, final java.util.List list, final android.widget.TextView textView, android.view.View view) {
        final android.widget.EditText editText = new android.widget.EditText(this.a);
        dev.duo.hookprobe.U.a(editText);
        editText.setText(strArr[i]);
        dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(this.a, "给页面加备注").setView(dev.duo.hookprobe.U.b(editText)).setPositiveButton("保存", new android.content.DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda10
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(android.content.DialogInterface dialogInterface, int i2) {
                dev.duo.hookprobe.C0016f.this.a(editText, list, i, strArr, textView, dialogInterface, i2);
            }
        }).setNegativeButton("取消", (android.content.DialogInterface.OnClickListener) null).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.widget.EditText editText, java.util.List list, int i, java.lang.String[] strArr, android.widget.TextView textView, android.content.DialogInterface dialogInterface, int i2) {
        java.lang.String trim = editText.getText().toString().trim();
        if (trim.isEmpty()) {
            return;
        }
        if (!this.f.a.edit().putString(this.c + "/pageColors/_label/" + ((java.lang.String) list.get(i)), trim).commit()) {
            c("备注保存失败");
        } else {
            strArr[i] = trim;
            textView.setText(trim + " · 修改备注");
        }
    }

    private void a(final boolean z, final int i, final boolean z2) {
        final android.widget.EditText editText = new android.widget.EditText(this.a);
        dev.duo.hookprobe.U.a(editText);
        editText.setSingleLine(true);
        editText.setText(b(i));
        editText.setSelectAllOnFocus(true);
        editText.setInputType(4097);
        final android.app.AlertDialog create = dev.duo.hookprobe.U.a(this.a, "修改这组页面的颜色").setMessage("输入六位颜色，例如 #F3F3F3。相同颜色会合并使用。").setView(dev.duo.hookprobe.U.b(editText)).setPositiveButton("保存", (android.content.DialogInterface.OnClickListener) null).setNegativeButton("取消", (android.content.DialogInterface.OnClickListener) null).create();
        create.setOnShowListener(new android.content.DialogInterface.OnShowListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(android.content.DialogInterface dialogInterface) {
                dev.duo.hookprobe.C0016f.this.a(create, editText, z2, z, i, dialogInterface);
            }
        });
        dev.duo.hookprobe.U.a(create);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final android.app.AlertDialog alertDialog, final android.widget.EditText editText, final boolean z, final boolean z2, final int i, android.content.DialogInterface dialogInterface) {
        alertDialog.getButton(-1).setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda27
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.C0016f.this.a(editText, z, z2, i, alertDialog, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.widget.EditText editText, boolean z, boolean z2, int i, android.app.AlertDialog alertDialog, android.view.View view) {
        try {
            java.lang.Integer p = dev.duo.hookprobe.P.p(editText.getText().toString().trim());
            if (p == null) {
                editText.setError("请输入六位颜色");
                return;
            }
            if (z) {
                java.lang.Integer a2 = this.f.a(this.c, false);
                java.lang.Integer a3 = this.f.a(this.c, true);
                dev.duo.hookprobe.C0026o c0026o = this.f;
                java.lang.String str = this.c;
                if (!z2) {
                    a2 = p;
                }
                if (z2) {
                    a3 = p;
                }
                if (!c0026o.a(str, a2, a3)) {
                    c("默认色保存失败");
                    return;
                }
            }
            if (!this.f.a(this.c, z2, i, p)) {
                c("页面颜色保存失败");
                return;
            }
            j();
            h("这一组页面颜色已修改");
            alertDialog.dismiss();
        } catch (java.lang.IllegalArgumentException e2) {
            editText.setError("请输入六位颜色");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, android.view.View view) {
        b(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.widget.EditText editText, int i, android.view.View view) {
        editText.setText(b(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, android.content.DialogInterface dialogInterface, int i) {
        dev.duo.hookprobe.C0026o c0026o = this.f;
        java.lang.String str = this.c;
        e(c0026o.a(str, z ? c0026o.a(str, false) : null, z ? null : this.f.a(this.c, true)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final android.app.AlertDialog alertDialog, final android.widget.EditText editText, final boolean z, android.content.DialogInterface dialogInterface) {
        alertDialog.getButton(-1).setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda19
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.C0016f.this.a(editText, z, alertDialog, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.widget.EditText editText, boolean z, android.app.AlertDialog alertDialog, android.view.View view) {
        try {
            java.lang.String trim = editText.getText().toString().trim();
            if (trim.matches("#?[0-9a-fA-F]{6}")) {
                java.lang.Integer p = dev.duo.hookprobe.P.p(trim);
                dev.duo.hookprobe.C0026o c0026o = this.f;
                java.lang.String str = this.c;
                java.lang.Integer a2 = z ? c0026o.a(str, false) : p;
                if (!z) {
                    p = this.f.a(this.c, true);
                }
                boolean a3 = c0026o.a(str, a2, p);
                e(a3);
                if (a3) {
                    alertDialog.dismiss();
                    return;
                }
                return;
            }
            throw new java.lang.IllegalArgumentException("请输入六位 HEX");
        } catch (java.lang.IllegalArgumentException e2) {
            editText.setError(e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.util.ArrayList arrayList, android.content.DialogInterface dialogInterface, int i) {
        e(this.f.a(this.c, (java.lang.String) arrayList.get(i)));
    }

    private android.widget.LinearLayout a(android.widget.LinearLayout linearLayout, float f) {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this.a);
        dev.duo.hookprobe.U.a(a2, f);
        linearLayout.addView(a2, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this.a, 12.0f));
        return a2;
    }

    private void a(android.widget.LinearLayout linearLayout) {
        android.widget.TextView a2 = dev.duo.hookprobe.U.a(this.a, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        this.w = a2;
        a2.setPadding(a(18.0f), 0, a(14.0f), a(12.0f));
        this.w.setVisibility(8);
        linearLayout.addView(this.w);
    }

    private android.widget.LinearLayout a(java.lang.String str, android.widget.TextView textView, final android.view.View view, boolean z) {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this.a);
        dev.duo.hookprobe.U.a(a2, 24.0f);
        a2.setPadding(a(16.0f), 0, a(14.0f), 0);
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this.a);
        c2.setGravity(16);
        c2.setMinimumHeight(a(58.0f));
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this.a, 15.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText(str);
        c2.addView(a3);
        textView.setGravity(8388613);
        textView.setSingleLine(true);
        textView.setEllipsize(android.text.TextUtils.TruncateAt.END);
        c2.addView(textView, dev.duo.hookprobe.U.b());
        android.app.Activity activity = this.a;
        final android.widget.ImageView a4 = dev.duo.hookprobe.U.a(activity, dev.duo.hookprobe.U.a(activity, 5, dev.duo.hookprobe.U.d, 3.0f, false, 12.0f));
        c2.addView(a4, dev.duo.hookprobe.U.a(this.a, 12.0f, 12.0f));
        if (z) {
            this.s = a4;
        }
        a2.addView(c2);
        view.setVisibility(8);
        a2.addView(view);
        c2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view2) {
                dev.duo.hookprobe.C0016f.a(view, a4, view2);
            }
        });
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.view.View view, android.widget.ImageView imageView, android.view.View view2) {
        boolean z = view.getVisibility() != 0;
        view.setVisibility(z ? 0 : 8);
        imageView.setRotation(z ? 180.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.hookprobe.C0026o c0026o) {
        if (this.a.isDestroyed()) {
            return;
        }
        this.f = c0026o;
        if (c0026o == null) {
            c("未连接 LSPosed，无法读写配置。请确认模块已在 LSPosed 中启用。");
            return;
        }
        boolean contains = dev.duo.hookprobe.P.i.contains(this.c);
        this.g.setChecked(this.f.g(this.c));
        this.g.setEnabled(!contains);
        android.widget.TextView textView = this.w;
        if (textView != null) {
            textView.setVisibility(contains ? 0 : 8);
            if (contains) {
                this.w.setText(dev.duo.hookprobe.MainActivity.h(this.c));
            }
        }
        this.g.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda15
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.C0016f.this.a(compoundButton, z);
            }
        });
        this.z.a(this.f.j(this.c));
        this.z.a(true);
        dev.duo.hookprobe.U.e eVar = this.A;
        if (eVar != null) {
            eVar.a(this.f.a("outer") ? 1 : 0);
            this.A.a(true);
            this.B.a(this.f.a("inner") ? 1 : 0);
            this.B.a(true);
        }
        h();
        i();
        this.h.a();
        this.i.a();
        this.j.a();
        java.lang.String n = this.f.n(this.c);
        this.y.a(n != null ? "black".equals(n) ? 2 : 1 : 0);
        this.y.a(true);
        j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.widget.CompoundButton compoundButton, boolean z) {
        f(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(java.lang.String str, java.lang.String str2) {
        java.lang.String str3;
        if (this.f.g(this.c)) {
            str3 = "，该 App 下次打开时生效";
        } else if ("outer".equals(str2)) {
            str3 = this.f.l(this.c) ? "；外屏隐藏顶栏时使用，切回 App 后生效，个别 App 要重新打开" : "；Duo 适配开启后生效";
        } else if ("inner".equals(str2)) {
            str3 = "com.ss.android.ugc.aweme".equals(this.c) ? "；隐藏抖音内屏顶栏时使用，重新打开抖音后生效" : "；内屏不受此项影响，需开启 Duo 后生效";
        } else if (this.f.l(this.c)) {
            str3 = "；外屏隐藏顶栏时使用，切回 App 后生效，个别 App 要重新打开";
        } else if ("com.ss.android.ugc.aweme".equals(this.c)) {
            str3 = "；隐藏顶栏时使用，重新打开抖音后生效";
        } else {
            str3 = "；Duo 适配开启后生效";
        }
        h(str + str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(io.github.libxposed.service.XposedService xposedService, dev.duo.hookprobe.C0026o c0026o) {
        java.lang.String str;
        final java.lang.StringBuilder sb = new java.lang.StringBuilder();
        if (xposedService != null) {
            try {
                java.lang.StringBuilder append = sb.append("LSPosed 作用域：");
                if (xposedService.getScope().contains(this.c)) {
                    str = "已包含";
                } else if (dev.duo.hookprobe.P.q.contains(this.c)) {
                    str = "未包含（开启 Duo 时会自动申请）";
                } else {
                    str = "无需单独勾选";
                }
                append.append(str).append('\n');
            } catch (java.lang.Throwable th) {
                sb.append("LSPosed 作用域：读取失败 ").append(th).append('\n');
            }
        }
        if (c0026o != null) {
            sb.append("9:16 比例：").append(c0026o.g(this.c) ? "开启（MiDuo 运行时判断，不写入系统）" : "关闭（原生比例）").append('\n');
        }
        sb.append("包名：").append(this.c);
        this.b.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.C0016f.this.a(sb);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.StringBuilder sb) {
        this.C.setText(sb);
    }
}
