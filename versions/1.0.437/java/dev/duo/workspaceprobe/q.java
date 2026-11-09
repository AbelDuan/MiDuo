package dev.duo.workspaceprobe;

/* loaded from: classes.dex */
final class q extends android.widget.FrameLayout {
    static final float a = 0.775f;
    private static final float b = 116.25f;
    private static final float c = 89.899994f;
    private static final float d = 150.0f;
    private static final float e = 28.0f;
    private static final float f = 34.0f;
    private static final float g = 98.0f;
    private static final float h = 118.0f;
    private static final float i = 56.0f;
    private static final float j = 88.0f;
    private static final float k = 78.0f;
    private static final int l = 205;
    private static final int m = 260;
    private static final float[] n;
    private static final float[] o;
    private static final dev.duo.workspaceprobe.q.d p;
    private static final dev.duo.workspaceprobe.q.d q;
    private static final dev.duo.workspaceprobe.q.d r;
    private static final dev.duo.workspaceprobe.q.d s;
    private float A;
    private dev.duo.taskcore.b B;
    private final android.graphics.Rect C;
    private dev.duo.workspaceprobe.b.K D;
    private boolean E;
    private final android.graphics.RectF F;
    private boolean G;
    private boolean H;
    private java.lang.String[] I;
    private final dev.duo.workspaceprobe.b t;
    private final dev.duo.workspaceprobe.b.h0 u;
    private final android.widget.FrameLayout v;
    private final dev.duo.workspaceprobe.q.b w;
    private final java.util.List<dev.duo.workspaceprobe.b.J> x;
    private dev.duo.workspaceprobe.q.d y;
    private float z;

    private static final class a extends android.widget.FrameLayout {
        a(android.content.Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(android.view.MotionEvent motionEvent) {
            android.view.View childAt = getChildCount() > 0 ? getChildAt(0) : null;
            if (childAt == null) {
                return false;
            }
            android.view.MotionEvent obtain = android.view.MotionEvent.obtain(motionEvent);
            obtain.setLocation(java.lang.Math.max(0.0f, java.lang.Math.min(childAt.getWidth() - 1.0f, motionEvent.getX() - childAt.getLeft())), java.lang.Math.max(0.0f, java.lang.Math.min(childAt.getHeight() - 1.0f, motionEvent.getY() - childAt.getTop())));
            try {
                return childAt.dispatchTouchEvent(obtain);
            } finally {
                obtain.recycle();
            }
        }
    }

    static final class b extends android.view.View {
        static final int h = 0;
        static final int i = 1;
        static final int j = 2;
        static final float k = 104.0f;
        static final float l = 36.0f;
        static final float m = 22.0f;
        static final float n = 96.0f;
        static final float o = 8.0f;
        static final float p = 6.0f;
        static final float q = 37.0f;
        android.graphics.drawable.Drawable[] a;
        boolean b;
        int c;
        int d;
        int e;
        private final android.graphics.Paint f;
        private final android.graphics.Paint g;

        b(android.content.Context context) {
            super(context);
            this.a = new android.graphics.drawable.Drawable[0];
            this.e = -1;
            this.f = new android.graphics.Paint(1);
            android.graphics.Paint paint = new android.graphics.Paint(1);
            this.g = paint;
            paint.setTextAlign(android.graphics.Paint.Align.CENTER);
            paint.setTypeface(android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, 600, false));
        }

        private void a(android.graphics.Canvas canvas) {
            int max = java.lang.Math.max(this.d, this.a.length);
            int min = java.lang.Math.min(max > 4 ? 3 : 4, this.a.length);
            for (int i2 = 0; i2 < min; i2++) {
                float f = ((i2 % 2) * 43.0f) + o;
                float f2 = ((i2 / 2) * 43.0f) + o;
                this.a[i2].setBounds(java.lang.Math.round(f), java.lang.Math.round(f2), java.lang.Math.round(f + q), java.lang.Math.round(f2 + q));
                this.a[i2].draw(canvas);
            }
            if (max > 4) {
                this.g.setColor((this.e & 16777215) | (-654311424));
                int i3 = max - 3;
                this.g.setTextSize(i3 > 9 ? 17.0f : 20.0f);
                android.graphics.Paint.FontMetrics fontMetrics = this.g.getFontMetrics();
                canvas.drawText("+" + i3, 69.5f, 69.5f - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.g);
            }
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            canvas.translate(0.0f, dev.duo.workspaceprobe.b.m());
            int i2 = this.c;
            if (i2 == 2) {
                a(canvas);
                return;
            }
            boolean z = i2 == 1;
            int min = java.lang.Math.min(3, this.a.length);
            float width = getWidth() / 2.0f;
            float f = 18.0f;
            for (int i3 = 0; i3 < min; i3++) {
                float f2 = z ? width : ((i3 - ((min - 1) / 2.0f)) * dev.duo.workspaceprobe.q.f) + width;
                f = z ? (i3 * dev.duo.workspaceprobe.q.f) + 18.0f : 18.0f;
                android.graphics.drawable.Drawable drawable = this.a[i3];
                drawable.setBounds(java.lang.Math.round(f2 - 14.0f), java.lang.Math.round(f - 14.0f), java.lang.Math.round(f2 + 14.0f), java.lang.Math.round(14.0f + f));
                drawable.draw(canvas);
            }
            if (!this.b || min <= 0) {
                return;
            }
            this.f.setColor((this.e & 16777215) | (-939524096));
            for (int i4 = -1; i4 <= 1; i4++) {
                canvas.drawCircle((i4 * 10.0f) + width, f + 14.0f + 12.0f, 2.6f, this.f);
            }
        }
    }

    static final class c extends android.view.View {
        private final java.lang.String a;
        int b;
        private final android.graphics.Paint c;
        private final android.graphics.Paint d;
        private final android.graphics.RectF e;
        private final android.graphics.Path f;
        private final android.graphics.Path g;

        c(android.content.Context context, java.lang.String str) {
            super(context);
            this.b = -1;
            android.graphics.Paint paint = new android.graphics.Paint(1);
            this.c = paint;
            android.graphics.Paint paint2 = new android.graphics.Paint(1);
            this.d = paint2;
            this.e = new android.graphics.RectF();
            this.f = new android.graphics.Path();
            this.g = new android.graphics.Path();
            this.a = str;
            paint.setStyle(android.graphics.Paint.Style.STROKE);
            paint.setStrokeWidth(2.3249998f);
            paint.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            paint2.setTextAlign(android.graphics.Paint.Align.CENTER);
            paint2.setTextSize(18.599998f);
            paint2.setTypeface(android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, 600, false));
            setImportantForAccessibility(2);
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            canvas.translate(0.0f, dev.duo.workspaceprobe.b.m());
            int i = (this.b & 16777215) | 1929379840;
            this.c.setColor(i);
            this.d.setColor(i);
            float strokeWidth = (this.c.getStrokeWidth() / 2.0f) + 2.0f;
            this.e.set(strokeWidth, strokeWidth, getWidth() - strokeWidth, getHeight() - strokeWidth);
            this.f.rewind();
            this.f.addRoundRect(this.e, 39.524998f, 39.524998f, android.graphics.Path.Direction.CW);
            int i2 = 0;
            android.graphics.PathMeasure pathMeasure = new android.graphics.PathMeasure(this.f, false);
            this.g.rewind();
            float length = pathMeasure.getLength();
            for (float f = 0.0f; f < length; f += 12.4f) {
                pathMeasure.getSegment(f, java.lang.Math.min(length, 6.975f + f), this.g, true);
            }
            this.c.setStyle(android.graphics.Paint.Style.STROKE);
            canvas.drawPath(this.g, this.c);
            float height = getHeight() / 2.0f;
            android.graphics.Paint.FontMetrics fontMetrics = this.d.getFontMetrics();
            while (i2 < this.a.length()) {
                int i3 = i2 + 1;
                canvas.drawText(this.a.substring(i2, i3), getWidth() / 2.0f, (((i2 - ((this.a.length() - 1) / 2.0f)) * 23.25f) + height) - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.d);
                i2 = i3;
            }
        }
    }

    private static final class d {
        final java.lang.String a;
        final float b;
        final float c;
        final float d;
        final float e;
        final float f;
        final int g;
        final float[] h;
        final float[] i;

        d(java.lang.String str, float f, float f2, int i, float f3, float f4, float f5, float f6, float f7, float[] fArr) {
            this.a = str;
            this.b = f;
            this.c = f2;
            this.g = i;
            this.d = f3;
            this.e = f4;
            this.f = f5;
            this.h = new float[]{f6, f7};
            this.i = fArr;
        }
    }

    static {
        float[] fArr = {73.25f, 189.5f, 305.75f};
        n = fArr;
        float[] fArr2 = {251.33f, 367.58f, 483.83f};
        o = fArr2;
        p = new dev.duo.workspaceprobe.q.d("land-left", 81.0f, 125.0f, 2, 81.0f, 270.0f, a, 245.5f, 361.75f, fArr);
        q = new dev.duo.workspaceprobe.q.d("land-right", 362.0f, 205.0f, 0, 362.0f, 320.0f, 1.0f, 189.5f, 73.25f, fArr);
        r = new dev.duo.workspaceprobe.q.d("port-left", 229.15f, 107.8f, 0, 77.0f, 148.0f, 1.0f, 76.85f, 229.15f, fArr2);
        s = new dev.duo.workspaceprobe.q.d("port-right", 229.15f, 107.8f, 2, 77.0f, 110.0f, a, 76.85f, 229.15f, fArr2);
    }

    q(final dev.duo.workspaceprobe.b bVar, android.content.Context context, boolean z) {
        super(context);
        this.x = new java.util.ArrayList();
        this.C = new android.graphics.Rect();
        this.F = new android.graphics.RectF();
        this.t = bVar;
        this.G = z;
        setClipChildren(true);
        dev.duo.workspaceprobe.b.h0 h0Var = new dev.duo.workspaceprobe.b.h0(context, false);
        this.u = h0Var;
        h0Var.U = false;
        android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(context);
        this.v = frameLayout;
        frameLayout.addView(h0Var, new android.widget.FrameLayout.LayoutParams(l, m));
        frameLayout.setContentDescription("控制中心");
        frameLayout.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.q$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.workspaceprobe.q.this.a(bVar, view);
            }
        });
        dev.duo.workspaceprobe.q.b bVar2 = new dev.duo.workspaceprobe.q.b(context);
        this.w = bVar2;
        bVar2.setContentDescription("通知中心");
        bVar2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.q$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.workspaceprobe.q.this.b(bVar, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.workspaceprobe.b bVar, android.view.View view) {
        if (this.H) {
            return;
        }
        dev.duo.workspaceprobe.b.q(view);
        bVar.z0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(dev.duo.workspaceprobe.b bVar, android.view.View view) {
        if (this.H) {
            return;
        }
        dev.duo.workspaceprobe.b.q(view);
        bVar.A0();
    }

    private int d() {
        return this.G ? -1 : -13618632;
    }

    void c() {
        this.u.invalidate();
        this.w.invalidate();
        java.util.Iterator<dev.duo.workspaceprobe.b.J> it = this.x.iterator();
        while (it.hasNext()) {
            it.next().invalidate();
        }
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof dev.duo.workspaceprobe.q.c) {
                getChildAt(i2).invalidate();
            }
        }
        if (this.E) {
            this.t.i(this.D);
        }
    }

    java.lang.String e() {
        dev.duo.workspaceprobe.q.d dVar = this.y;
        return dVar == null ? dev.duo.hookprobe.J.e : dVar.a;
    }

    boolean f() {
        dev.duo.taskcore.b bVar = this.B;
        return bVar == null || !bVar.c;
    }

    void g() {
        if (this.y == null) {
            return;
        }
        java.lang.String[] strArr = this.t.a6;
        removeAllViews();
        this.x.clear();
        this.E = false;
        android.view.View view = this.v;
        dev.duo.workspaceprobe.q.d dVar = this.y;
        a(view, dVar.b - i, dVar.c - j, 112.0f, 166.0f);
        dev.duo.workspaceprobe.b.h0 h0Var = this.u;
        float f2 = this.y.b;
        h0Var.setX((f2 - g) - (f2 - i));
        dev.duo.workspaceprobe.b.h0 h0Var2 = this.u;
        float f3 = this.y.c;
        h0Var2.setY((f3 - h) - (f3 - j));
        dev.duo.workspaceprobe.q.b bVar = this.w;
        dev.duo.workspaceprobe.q.d dVar2 = this.y;
        int i2 = dVar2.g;
        bVar.c = i2;
        boolean z = i2 == 2;
        boolean z2 = i2 == 1;
        float f4 = z ? 96.0f : z2 ? 36.0f : 104.0f;
        float f5 = z ? 96.0f : z2 ? 126.0f : 58.0f;
        float f6 = z ? 48.0f : z2 ? 52.0f : 18.0f;
        float f7 = f4 / 2.0f;
        a(bVar, dVar2.d - f7, dVar2.e - f6, f4, f5);
        this.w.setPivotX(f7);
        this.w.setPivotY(f6);
        this.w.setScaleX(this.y.f);
        this.w.setScaleY(this.y.f);
        for (int i3 = 0; i3 < 2; i3++) {
            java.lang.String c2 = dev.duo.hookprobe.J.c(strArr, i3);
            float f8 = this.y.h[i3];
            if (dev.duo.hookprobe.J.c.equals(c2)) {
                b(f8);
            } else if (c2 != null) {
                a(new dev.duo.workspaceprobe.q.c(getContext(), "Dock"), (f8 - 44.949997f) - 2.0f, (this.y.i[0] - 44.949997f) - 2.0f, 93.899994f, 326.4f);
            } else {
                for (int i4 = 0; i4 < 3; i4++) {
                    java.lang.String str = strArr[dev.duo.hookprobe.J.a(i3, i4)];
                    if (str != null && !dev.duo.hookprobe.J.e.equals(str) && (!str.startsWith("app:") || getContext().getPackageManager().getLaunchIntentForPackage(str.substring(4)) != null)) {
                        a(str, f8, this.y.i[i4]);
                    }
                }
            }
        }
        this.I = strArr;
        a();
        h();
    }

    void h() {
        dev.duo.workspaceprobe.b.h0 h0Var = this.t.Z0;
        if (h0Var != null) {
            this.u.d(h0Var);
            dev.duo.workspaceprobe.q.b bVar = this.w;
            bVar.a = h0Var.a0;
            bVar.b = h0Var.V;
            bVar.d = h0Var.b0;
        }
        this.u.invalidate();
        this.w.invalidate();
        for (dev.duo.workspaceprobe.b.J j2 : this.x) {
            if ("lastapp".equals(j2.a)) {
                j2.e(this.t.q2());
            }
        }
    }

    int i() {
        dev.duo.taskcore.b bVar = this.B;
        return (bVar == null ? this.C : bVar.b).bottom;
    }

    dev.duo.workspaceprobe.b.K j() {
        if (this.E) {
            return this.D;
        }
        return null;
    }

    android.graphics.Rect k() {
        return new android.graphics.Rect(this.C.left + java.lang.Math.round(this.F.left), this.C.top + java.lang.Math.round(this.F.top), this.C.left + java.lang.Math.round(this.F.right), this.C.top + java.lang.Math.round(this.F.bottom));
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(android.view.MotionEvent motionEvent) {
        return this.H || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        return this.H || super.onTouchEvent(motionEvent);
    }

    private void b(float f2) {
        if (this.D == null) {
            this.D = this.t.b(this);
        }
        int u2 = dev.duo.workspaceprobe.b.u2();
        int t2 = dev.duo.workspaceprobe.b.t2();
        android.widget.FrameLayout frameLayout = this.D.d;
        frameLayout.setPivotX(0.0f);
        frameLayout.setPivotY(0.0f);
        frameLayout.setScaleX(a);
        frameLayout.setScaleY(a);
        float f3 = u2;
        float f4 = f3 * a;
        float f5 = t2;
        a(frameLayout, f2 - (f4 / 2.0f), this.y.i[0] - 52.699997f, f3, f5);
        this.F.set(java.lang.Math.round(this.z + r5), java.lang.Math.round(this.A + r6), java.lang.Math.round(r5 + this.z) + f4, java.lang.Math.round(r6 + this.A) + (f5 * a));
        this.E = true;
        this.t.b(this.D);
    }

    void a(dev.duo.taskcore.b bVar, android.graphics.Rect rect) {
        dev.duo.workspaceprobe.q.d dVar = bVar.b.height() > bVar.b.width() ? bVar.c ? s : r : bVar.c ? q : p;
        android.graphics.Rect rect2 = bVar.e;
        float f2 = rect2.left - rect.left;
        float f3 = rect2.top - rect.top;
        this.B = bVar;
        boolean z = dVar == this.y && f2 == this.z && f3 == this.A && rect.equals(this.C);
        this.C.set(rect);
        if (z) {
            return;
        }
        this.t.a(this, false);
        this.y = dVar;
        this.z = f2;
        this.A = f3;
        this.I = null;
        g();
    }

    int a(int i2, int i3) {
        int b2 = this.B.b();
        return f() ? b2 + i3 : (b2 - i3) - i2;
    }

    boolean a(float f2) {
        return f() ? f2 < ((float) this.B.b()) : f2 > ((float) this.B.b());
    }

    int[] b() {
        int b2 = this.B.b();
        return f() ? new int[]{b2, this.B.b.right} : new int[]{this.B.b.left, b2};
    }

    private void a(final java.lang.String str, float f2, float f3) {
        dev.duo.workspaceprobe.b.J j2 = new dev.duo.workspaceprobe.b.J(this.t, getContext(), str);
        j2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.q$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.workspaceprobe.q.this.a(str, view);
            }
        });
        if (str.startsWith("wechat") || str.startsWith("alipay")) {
            final java.lang.String str2 = str + ".pay";
            j2.setOnLongClickListener(new android.view.View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.q$$ExternalSyntheticLambda3
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(android.view.View view) {
                    boolean b2;
                    b2 = dev.duo.workspaceprobe.q.this.b(str2, view);
                    return b2;
                }
            });
        }
        j2.setContentDescription(str);
        dev.duo.workspaceprobe.q.a aVar = new dev.duo.workspaceprobe.q.a(getContext());
        int round = java.lang.Math.round(7.0f);
        android.widget.FrameLayout.LayoutParams layoutParams = new android.widget.FrameLayout.LayoutParams(136, 136);
        layoutParams.leftMargin = round;
        layoutParams.topMargin = round;
        aVar.addView(j2, layoutParams);
        aVar.setPivotX(75.0f);
        aVar.setPivotY(75.0f);
        aVar.setScaleX(a);
        aVar.setScaleY(a);
        a(aVar, f2 - 75.0f, f3 - 75.0f, d, d);
        this.x.add(j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean b(java.lang.String str, android.view.View view) {
        if (this.H) {
            return true;
        }
        this.t.A(str);
        return true;
    }

    void b(boolean z) {
        if (this.G == z) {
            return;
        }
        this.G = z;
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.String str, android.view.View view) {
        if (this.H) {
            return;
        }
        this.t.A(str);
    }

    private void a(android.view.View view, float f2, float f3, float f4, float f5) {
        android.widget.FrameLayout.LayoutParams layoutParams = new android.widget.FrameLayout.LayoutParams(java.lang.Math.round(f4), java.lang.Math.round(f5));
        layoutParams.leftMargin = java.lang.Math.round(f2 + this.z);
        layoutParams.topMargin = java.lang.Math.round(f3 + this.A);
        addView(view, layoutParams);
    }

    private void a() {
        int d2 = d();
        dev.duo.workspaceprobe.b.h0 h0Var = this.u;
        h0Var.h0 = d2;
        h0Var.invalidate();
        dev.duo.workspaceprobe.q.b bVar = this.w;
        bVar.e = d2;
        bVar.invalidate();
        java.util.Iterator<dev.duo.workspaceprobe.b.J> it = this.x.iterator();
        while (it.hasNext()) {
            it.next().a(d2, !this.G ? 1 : 0);
        }
        if (this.E) {
            this.t.a(this.D, this.G);
        }
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof dev.duo.workspaceprobe.q.c) {
                ((dev.duo.workspaceprobe.q.c) getChildAt(i2)).b = d2;
                getChildAt(i2).invalidate();
            }
        }
    }

    void a(boolean z) {
        this.H = z;
    }

    android.graphics.Bitmap a(android.graphics.Rect rect) {
        measure(android.view.View.MeasureSpec.makeMeasureSpec(rect.width(), 1073741824), android.view.View.MeasureSpec.makeMeasureSpec(rect.height(), 1073741824));
        layout(0, 0, rect.width(), rect.height());
        android.graphics.Bitmap createBitmap = android.graphics.Bitmap.createBitmap(rect.width(), rect.height(), android.graphics.Bitmap.Config.ARGB_8888);
        draw(new android.graphics.Canvas(createBitmap));
        return createBitmap;
    }
}
