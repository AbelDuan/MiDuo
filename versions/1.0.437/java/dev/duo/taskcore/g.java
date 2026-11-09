package dev.duo.taskcore;

/* loaded from: classes.dex */
public final class g {
    private static final int a = 16777216;
    private static final int b = 0;
    private static final int c = 1000;
    private static final int d = 30;
    private static final long e = 300;
    private static final long f = 300;
    private static final long g = 180;
    private static final float h = 32.0f;
    private static final float i = 1.05f;
    private static final float j = 0.35f;
    private static final float k = 0.35f;
    private static final int l = 6;
    private static final int m = 220;
    private static final int n = 30;
    private static final int o = 6;
    private static android.os.Handler p;
    private boolean A;
    private volatile boolean B;
    private volatile dev.duo.taskcore.d D;
    private boolean E;
    private boolean F;
    private android.view.SurfaceControl G;
    private volatile float K;
    private volatile float L;
    private volatile boolean M;
    private dev.duo.taskcore.a.AbstractC0005a N;
    private volatile boolean O;
    private volatile boolean P;
    private int Q;
    private final android.content.Context q;
    private volatile dev.duo.taskcore.b r;
    private final android.view.SurfaceControl s;
    private dev.duo.taskcore.g.i v;
    private dev.duo.taskcore.g.i w;
    private android.view.View x;
    private dev.duo.taskcore.g.h y;
    private dev.duo.taskcore.g.f z;
    private final android.os.Handler t = new android.os.Handler(android.os.Looper.getMainLooper());
    private final java.util.Map<dev.duo.taskcore.d, dev.duo.taskcore.g.C0006g> u = java.util.Collections.synchronizedMap(new java.util.HashMap());
    private dev.duo.taskcore.d[] C = new dev.duo.taskcore.d[3];
    private final dev.duo.taskcore.a H = new dev.duo.taskcore.a(new dev.duo.taskcore.g.b());
    private volatile int I = -1;
    private volatile int J = -1;
    private int R = -1;

    class a extends android.view.View {
        final android.graphics.Paint a;
        boolean b;

        a(android.content.Context context) {
            super(context);
            this.a = new android.graphics.Paint(1);
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            if (dev.duo.taskcore.g.this.D != null || dev.duo.taskcore.g.this.E) {
                return;
            }
            android.graphics.Rect rect = dev.duo.taskcore.g.this.r.a;
            this.a.setColor(dev.duo.taskcore.g.this.A ? -8947849 : -6710887);
            this.a.setStrokeWidth(5.0f);
            canvas.drawLine(rect.centerX() - 24, rect.centerY(), rect.centerX() + 24, rect.centerY(), this.a);
            canvas.drawLine(rect.centerX(), rect.centerY() - 24, rect.centerX(), rect.centerY() + 24, this.a);
        }

        @Override // android.view.View
        public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
            if (motionEvent.getActionMasked() == 0) {
                this.b = dev.duo.taskcore.g.this.D == null && dev.duo.taskcore.g.this.r.a.contains((int) motionEvent.getX(), (int) motionEvent.getY());
            }
            if (motionEvent.getActionMasked() == 1 && this.b && dev.duo.taskcore.g.this.D == null && dev.duo.taskcore.g.this.r.a.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                performClick();
            }
            if (motionEvent.getActionMasked() == 3) {
                this.b = false;
            }
            return true;
        }

        @Override // android.view.View
        public boolean performClick() {
            super.performClick();
            if (dev.duo.taskcore.g.this.D != null || dev.duo.taskcore.g.this.y == null || !dev.duo.taskcore.g.this.y.e() || dev.duo.taskcore.g.this.z == null) {
                return true;
            }
            dev.duo.taskcore.g.this.z.a(-1);
            return true;
        }
    }

    class b implements dev.duo.taskcore.a.b {
        b() {
        }

        @Override // dev.duo.taskcore.a.b
        public void a(final dev.duo.taskcore.a.AbstractC0005a abstractC0005a) {
            if (abstractC0005a.b == null) {
                abstractC0005a.b = new android.view.Choreographer.FrameCallback() { // from class: dev.duo.taskcore.g$b$$ExternalSyntheticLambda0
                    @Override // android.view.Choreographer.FrameCallback
                    public final void doFrame(long j) {
                        dev.duo.taskcore.a.AbstractC0005a.this.a(j);
                    }
                };
            }
            android.view.Choreographer.getInstance().postFrameCallback((android.view.Choreographer.FrameCallback) abstractC0005a.b);
        }

        @Override // dev.duo.taskcore.a.b
        public void b(dev.duo.taskcore.a.AbstractC0005a abstractC0005a) {
            if (abstractC0005a.b != null) {
                android.view.Choreographer.getInstance().removeFrameCallback((android.view.Choreographer.FrameCallback) abstractC0005a.b);
            }
        }
    }

    class c extends dev.duo.taskcore.a.AbstractC0005a {
        final /* synthetic */ long[] c;
        final /* synthetic */ float d;
        final /* synthetic */ java.util.Map e;
        final /* synthetic */ java.util.Map f;
        final /* synthetic */ android.graphics.Rect g;
        final /* synthetic */ java.util.Map h;

        c(long[] jArr, float f, java.util.Map map, java.util.Map map2, android.graphics.Rect rect, java.util.Map map3) {
            this.c = jArr;
            this.d = f;
            this.e = map;
            this.f = map2;
            this.g = rect;
            this.h = map3;
        }

        @Override // dev.duo.taskcore.a.AbstractC0005a
        void a(long j) {
            if (!dev.duo.taskcore.g.this.H.a(this)) {
                return;
            }
            long[] jArr = this.c;
            if (jArr[0] < 0) {
                jArr[0] = j;
            }
            float min = java.lang.Math.min(1.0f, (j - jArr[0]) / this.d);
            float f = 1.0f - min;
            float f2 = 1.0f - (f * f);
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                for (java.util.Map.Entry entry : this.e.entrySet()) {
                    dev.duo.taskcore.g gVar = dev.duo.taskcore.g.this;
                    dev.duo.taskcore.g.C0006g c0006g = (dev.duo.taskcore.g.C0006g) entry.getKey();
                    android.graphics.Rect a = dev.duo.taskcore.b.a((android.graphics.Rect) this.f.get(entry.getKey()), (android.graphics.Rect) entry.getValue(), f2, this.g);
                    java.util.Map map = this.h;
                    gVar.a(transaction, c0006g, a, 1.0f, map == null ? ((dev.duo.taskcore.g.C0006g) entry.getKey()).e : ((java.lang.Integer) map.get(entry.getKey())).intValue());
                }
                transaction.apply();
                transaction.close();
                if (min >= 1.0f || dev.duo.taskcore.g.this.B) {
                    dev.duo.taskcore.g.this.H.b(this);
                } else {
                    dev.duo.taskcore.g.this.H.c(this);
                }
            } finally {
            }
        }
    }

    class d extends dev.duo.taskcore.a.AbstractC0005a {
        int c = -2;
        int d = -2;
        float e = Float.NaN;
        final /* synthetic */ dev.duo.taskcore.d[] f;

        d(dev.duo.taskcore.d[] dVarArr) {
            this.f = dVarArr;
        }

        @Override // dev.duo.taskcore.a.AbstractC0005a
        void a(long j) {
            if (!dev.duo.taskcore.g.this.H.a(this) || dev.duo.taskcore.g.this.B) {
                return;
            }
            int i = dev.duo.taskcore.g.this.I;
            int i2 = dev.duo.taskcore.g.this.J;
            float f = dev.duo.taskcore.g.this.K;
            if (i < 0) {
                dev.duo.taskcore.g.this.H.b(this);
                return;
            }
            boolean z = i == this.c && i2 == this.d && f == this.e;
            this.c = i;
            this.d = i2;
            this.e = f;
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            boolean z2 = false;
            int i3 = 0;
            while (true) {
                try {
                    dev.duo.taskcore.d[] dVarArr = this.f;
                    if (i3 >= dVarArr.length) {
                        break;
                    }
                    dev.duo.taskcore.g.C0006g a = dev.duo.taskcore.g.this.a(dVarArr[i3]);
                    if (a != null) {
                        if (i3 == i) {
                            android.graphics.Rect rect = new android.graphics.Rect(a.d);
                            rect.offset(0, java.lang.Math.round(f));
                            if (!z || !rect.equals(a.c)) {
                                dev.duo.taskcore.g.this.a(transaction, a, rect, dev.duo.taskcore.g.i, 30);
                                z2 = true;
                            }
                        } else {
                            android.graphics.Rect a2 = dev.duo.taskcore.b.a(a.c, dev.duo.taskcore.g.this.r.d[(i >= i2 || i3 <= i || i3 > i2) ? (i <= i2 || i3 < i2 || i3 >= i) ? i3 : i3 + 1 : i3 - 1], dev.duo.taskcore.g.f() <= 0.0f ? 1.0f : 0.35f, new android.graphics.Rect());
                            if (!z || !a2.equals(a.c)) {
                                dev.duo.taskcore.g.this.a(transaction, a, a2, 1.0f, a.e);
                                z2 = true;
                            }
                        }
                    }
                    i3++;
                } finally {
                }
            }
            if (z2) {
                transaction.apply();
            }
            transaction.close();
            if (z2) {
                dev.duo.taskcore.g.this.H.c(this);
            } else {
                dev.duo.taskcore.g.this.N = this;
            }
        }
    }

    class e extends dev.duo.taskcore.a.AbstractC0005a {
        float c = Float.NaN;
        final /* synthetic */ dev.duo.taskcore.d[] d;

        e(dev.duo.taskcore.d[] dVarArr) {
            this.d = dVarArr;
        }

        @Override // dev.duo.taskcore.a.AbstractC0005a
        void a(long j) {
            if (!dev.duo.taskcore.g.this.H.a(this) || dev.duo.taskcore.g.this.B) {
                return;
            }
            if (!dev.duo.taskcore.g.this.M) {
                dev.duo.taskcore.g.this.H.b(this);
                return;
            }
            float f = dev.duo.taskcore.g.this.L;
            if (f == this.c) {
                dev.duo.taskcore.g.this.N = this;
                return;
            }
            this.c = f;
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                for (dev.duo.taskcore.d dVar : this.d) {
                    dev.duo.taskcore.g.C0006g a = dev.duo.taskcore.g.this.a(dVar);
                    if (a != null) {
                        android.graphics.Rect rect = new android.graphics.Rect(a.d);
                        rect.offset(dev.duo.taskcore.g.this.r.c() * java.lang.Math.round(f), 0);
                        dev.duo.taskcore.g.this.a(transaction, a, rect, 1.0f, a.e);
                    }
                }
                dev.duo.taskcore.g gVar = dev.duo.taskcore.g.this;
                dev.duo.taskcore.g.C0006g a2 = gVar.a(gVar.D);
                if (a2 != null) {
                    dev.duo.taskcore.g gVar2 = dev.duo.taskcore.g.this;
                    gVar2.a(transaction, a2, gVar2.r.a(f), 1.0f, a2.e);
                }
                transaction.apply();
                transaction.close();
                dev.duo.taskcore.g.this.H.c(this);
            } finally {
            }
        }
    }

    public interface f {
        default void a() {
        }

        void a(int i);

        void a(int i, int i2);

        void b();

        default void d() {
        }

        void f(int i);

        void g(int i);

        default void j() {
        }

        default void a(float f) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.taskcore.g$g, reason: collision with other inner class name */
    static final class C0006g {
        final dev.duo.taskcore.g.i a;
        final android.view.SurfaceControl b;
        final android.graphics.Rect c = new android.graphics.Rect();
        final android.graphics.Rect d = new android.graphics.Rect();
        int e = 10;

        C0006g(dev.duo.taskcore.g.i iVar, android.view.SurfaceControl surfaceControl) {
            this.a = iVar;
            this.b = surfaceControl;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class h extends android.view.View {
        private static final int s = 3;
        private static final int t = 2131427329;
        private static final int u = 2131427330;
        private final android.graphics.Paint a;
        private final android.graphics.Paint b;
        private final android.graphics.Paint c;
        private float d;
        private android.animation.ValueAnimator e;
        private final android.view.accessibility.AccessibilityManager f;
        private final dev.duo.taskcore.f g;
        private int h;
        private float i;
        private float j;
        private int k;
        private boolean l;
        private boolean m;
        private final int n;
        private final java.lang.Runnable o;
        private final java.util.Map<java.lang.String, java.lang.CharSequence> p;
        private final android.view.accessibility.AccessibilityNodeProvider q;

        class a extends android.view.accessibility.AccessibilityNodeProvider {
            a() {
            }

            @Override // android.view.accessibility.AccessibilityNodeProvider
            public android.view.accessibility.AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
                if (i == -1) {
                    android.view.accessibility.AccessibilityNodeInfo accessibilityNodeInfo = new android.view.accessibility.AccessibilityNodeInfo(dev.duo.taskcore.g.h.this);
                    dev.duo.taskcore.g.h.this.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                    accessibilityNodeInfo.setContentDescription("工作台副窗列");
                    for (int i2 = 0; i2 <= 3; i2++) {
                        accessibilityNodeInfo.addChild(dev.duo.taskcore.g.h.this, i2);
                    }
                    return accessibilityNodeInfo;
                }
                if (i < 0 || i > 3) {
                    return null;
                }
                android.view.accessibility.AccessibilityNodeInfo accessibilityNodeInfo2 = new android.view.accessibility.AccessibilityNodeInfo(dev.duo.taskcore.g.h.this, i);
                accessibilityNodeInfo2.setParent(dev.duo.taskcore.g.h.this);
                accessibilityNodeInfo2.setPackageName(dev.duo.taskcore.g.this.q.getPackageName());
                accessibilityNodeInfo2.setClassName(android.widget.Button.class.getName());
                android.graphics.Rect b = i == 3 ? dev.duo.taskcore.g.h.this.b() : dev.duo.taskcore.g.this.r.d[i];
                int[] iArr = new int[2];
                dev.duo.taskcore.g.h.this.getLocationOnScreen(iArr);
                android.graphics.Rect rect = new android.graphics.Rect(b);
                rect.offset(iArr[0] - dev.duo.taskcore.g.h.this.k, iArr[1]);
                accessibilityNodeInfo2.setBoundsInScreen(rect);
                accessibilityNodeInfo2.setVisibleToUser(true);
                boolean e = dev.duo.taskcore.g.h.this.e();
                accessibilityNodeInfo2.setEnabled(e);
                accessibilityNodeInfo2.setClickable(true);
                accessibilityNodeInfo2.addAction(android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
                boolean z = dev.duo.taskcore.g.h.this.g.a == i;
                accessibilityNodeInfo2.setAccessibilityFocused(z);
                if (z) {
                    accessibilityNodeInfo2.addAction(android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                } else if (e) {
                    accessibilityNodeInfo2.addAction(android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction.ACTION_ACCESSIBILITY_FOCUS);
                }
                accessibilityNodeInfo2.setContentDescription(dev.duo.taskcore.g.h.this.a(i));
                if (i != 3 && dev.duo.taskcore.g.this.C[i] != null) {
                    accessibilityNodeInfo2.setLongClickable(true);
                    accessibilityNodeInfo2.addAction(new android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction(32, "管理（更换/移除）"));
                    if (i > 0) {
                        accessibilityNodeInfo2.addAction(new android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction(dev.duo.taskcore.g.h.t, "上移"));
                    }
                    if (i < 2) {
                        accessibilityNodeInfo2.addAction(new android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction(dev.duo.taskcore.g.h.u, "下移"));
                    }
                }
                return accessibilityNodeInfo2;
            }

            @Override // android.view.accessibility.AccessibilityNodeProvider
            public android.view.accessibility.AccessibilityNodeInfo findFocus(int i) {
                if (i != 2 || dev.duo.taskcore.g.h.this.g.a == Integer.MIN_VALUE) {
                    return null;
                }
                return createAccessibilityNodeInfo(dev.duo.taskcore.g.h.this.g.a);
            }

            @Override // android.view.accessibility.AccessibilityNodeProvider
            public boolean performAction(int i, int i2, android.os.Bundle bundle) {
                if (i == -1) {
                    return dev.duo.taskcore.g.h.this.performAccessibilityAction(i2, bundle);
                }
                if (i >= 0 && i <= 3) {
                    if (i2 == 128) {
                        if (!dev.duo.taskcore.g.h.this.g.a(i)) {
                            return false;
                        }
                        dev.duo.taskcore.g.h.this.invalidate();
                        dev.duo.taskcore.g.h.this.a(i, 65536);
                        return true;
                    }
                    if (dev.duo.taskcore.g.this.z != null && dev.duo.taskcore.g.h.this.e()) {
                        if (i2 == 64) {
                            int[] b = dev.duo.taskcore.g.h.this.g.b(i);
                            if (b == null) {
                                return false;
                            }
                            dev.duo.taskcore.g.h.this.invalidate();
                            dev.duo.taskcore.g.h.this.a(b[0], 65536);
                            dev.duo.taskcore.g.h.this.a(b[1], 32768);
                            return true;
                        }
                        if (i == 3) {
                            if (i2 != 16) {
                                return false;
                            }
                            dev.duo.taskcore.g.this.z.b();
                            return true;
                        }
                        dev.duo.taskcore.d dVar = dev.duo.taskcore.g.this.C[i];
                        if (i2 == 16) {
                            if (dVar != null) {
                                dev.duo.taskcore.g.this.z.g(i);
                            } else {
                                dev.duo.taskcore.g.this.z.a(i);
                            }
                            return true;
                        }
                        if (dVar == null) {
                            return false;
                        }
                        if (i2 == 32) {
                            dev.duo.taskcore.g.this.z.f(i);
                            return true;
                        }
                        if (i2 == dev.duo.taskcore.g.h.t && i > 0) {
                            dev.duo.taskcore.g.this.z.a(i, i - 1);
                            return true;
                        }
                        if (i2 == dev.duo.taskcore.g.h.u && i < 2) {
                            dev.duo.taskcore.g.this.z.a(i, i + 1);
                            return true;
                        }
                    }
                }
                return false;
            }
        }

        h(android.content.Context context) {
            super(context);
            android.graphics.Paint paint = new android.graphics.Paint(1);
            this.a = paint;
            this.b = new android.graphics.Paint(1);
            android.graphics.Paint paint2 = new android.graphics.Paint(1);
            this.c = paint2;
            this.d = 1.0f;
            this.g = new dev.duo.taskcore.f();
            this.h = -2;
            this.k = dev.duo.taskcore.g.this.r.a().left;
            this.o = new java.lang.Runnable() { // from class: dev.duo.taskcore.g$h$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.g.h.this.d();
                }
            };
            this.p = new java.util.HashMap();
            this.q = new dev.duo.taskcore.g.h.a();
            android.graphics.Paint.Style style = android.graphics.Paint.Style.STROKE;
            paint.setStyle(style);
            paint.setStrokeWidth(3.0f);
            paint2.setStyle(style);
            paint2.setStrokeWidth(6.0f);
            setImportantForAccessibility(1);
            this.f = (android.view.accessibility.AccessibilityManager) context.getSystemService(android.view.accessibility.AccessibilityManager.class);
            this.n = android.view.ViewConfiguration.get(context).getScaledTouchSlop();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d() {
            if (this.h < 0 || dev.duo.taskcore.g.this.C[this.h] == null) {
                return;
            }
            this.l = true;
            performHapticFeedback(0);
            dev.duo.taskcore.g gVar = dev.duo.taskcore.g.this;
            gVar.I = gVar.J = this.h;
            dev.duo.taskcore.g.this.K = 0.0f;
            dev.duo.taskcore.g.this.x();
            if (dev.duo.taskcore.g.this.z != null) {
                dev.duo.taskcore.g.this.z.f(this.h);
            }
        }

        @Override // android.view.View
        protected boolean dispatchHoverEvent(android.view.MotionEvent motionEvent) {
            if (this.f.isEnabled() && this.f.isTouchExplorationEnabled()) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 9 || actionMasked == 7) {
                    int a2 = a(motionEvent.getX() + this.k, motionEvent.getY());
                    b(a2);
                    if (a2 != Integer.MIN_VALUE) {
                        return true;
                    }
                } else if (actionMasked == 10 && this.g.b != Integer.MIN_VALUE) {
                    b(Integer.MIN_VALUE);
                    return true;
                }
            }
            return super.dispatchHoverEvent(motionEvent);
        }

        boolean e() {
            return dev.duo.taskcore.a.a(dev.duo.taskcore.g.this.O, dev.duo.taskcore.g.this.P, dev.duo.taskcore.g.this.Q);
        }

        @Override // android.view.View
        public android.view.accessibility.AccessibilityNodeProvider getAccessibilityNodeProvider() {
            return this.q;
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            android.graphics.Canvas canvas2;
            canvas.translate(-this.k, 0.0f);
            int i = 0;
            while (i < 3) {
                if (dev.duo.taskcore.g.this.C[i] != null) {
                    canvas2 = canvas;
                } else if (dev.duo.taskcore.g.this.E) {
                    canvas2 = canvas;
                } else {
                    android.graphics.Rect rect = new android.graphics.Rect(dev.duo.taskcore.g.this.r.d[i]);
                    if (dev.duo.taskcore.g.this.M) {
                        rect.offset(dev.duo.taskcore.g.this.r.c() * java.lang.Math.round(dev.duo.taskcore.g.this.L), 0);
                    }
                    canvas.drawRoundRect(new android.graphics.RectF(rect), dev.duo.taskcore.g.h, dev.duo.taskcore.g.h, this.a);
                    float centerX = rect.centerX();
                    float centerY = rect.centerY();
                    android.graphics.Canvas canvas3 = canvas;
                    canvas3.drawLine(centerX - 30.0f, centerY, centerX + 30.0f, centerY, this.a);
                    canvas2 = canvas3;
                    canvas2.drawLine(centerX, centerY - 30.0f, centerX, centerY + 30.0f, this.a);
                }
                i++;
                canvas = canvas2;
            }
            android.graphics.Canvas canvas4 = canvas;
            if (dev.duo.taskcore.g.this.R >= 0 && !dev.duo.taskcore.g.this.E) {
                android.graphics.RectF rectF = new android.graphics.RectF(dev.duo.taskcore.g.this.r.d[dev.duo.taskcore.g.this.R]);
                rectF.inset(3.0f, 3.0f);
                canvas4.drawRoundRect(rectF, 29.0f, 29.0f, this.c);
            }
            android.graphics.RectF rectF2 = new android.graphics.RectF(b());
            rectF2.offset(dev.duo.taskcore.g.this.r.c() * dev.duo.taskcore.g.this.L, 0.0f);
            if (this.d > 0.0f) {
                int alpha = this.b.getAlpha();
                this.b.setAlpha(java.lang.Math.round(alpha * this.d));
                canvas4.drawRoundRect(rectF2, 3.0f, 3.0f, this.b);
                this.b.setAlpha(alpha);
            }
        }

        @Override // android.view.View
        public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
            motionEvent.offsetLocation(this.k, 0.0f);
            try {
                return a(motionEvent);
            } finally {
                motionEvent.offsetLocation(-r0, 0.0f);
            }
        }

        void c() {
            b(Integer.MIN_VALUE);
            a(this.g.a(), 65536);
        }

        void b(boolean z) {
            float f = z ? 1.0f : 0.0f;
            android.animation.ValueAnimator valueAnimator = this.e;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.e = null;
            }
            float f2 = this.d;
            if (f2 == f) {
                return;
            }
            android.animation.ValueAnimator ofFloat = android.animation.ValueAnimator.ofFloat(f2, f);
            ofFloat.setDuration(z ? 160L : 100L);
            ofFloat.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.taskcore.g$h$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator2) {
                    dev.duo.taskcore.g.h.this.a(valueAnimator2);
                }
            });
            this.e = ofFloat;
            ofFloat.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(android.animation.ValueAnimator valueAnimator) {
            this.d = ((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        private java.lang.CharSequence a(dev.duo.taskcore.d dVar) {
            java.lang.String str = dVar.a.h;
            java.lang.CharSequence charSequence = this.p.get(str);
            if (charSequence == null) {
                try {
                    charSequence = dev.duo.taskcore.g.this.q.getPackageManager().getApplicationLabel(dev.duo.taskcore.g.this.q.getPackageManager().getApplicationInfo(str, 0));
                } catch (android.content.pm.PackageManager.NameNotFoundException e) {
                    charSequence = str;
                }
                this.p.put(str, charSequence);
            }
            return charSequence;
        }

        private void b(int i) {
            int[] c = this.g.c(i);
            if (c == null) {
                return;
            }
            a(c[1], 128);
            a(c[0], 256);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public java.lang.CharSequence a(int i) {
            if (i == 3) {
                return "退出工作台";
            }
            return dev.duo.taskcore.g.this.C[i] == null ? "空位 " + (i + 1) + "，添加应用" : "副窗 " + (i + 1) + "：" + ((java.lang.Object) a(dev.duo.taskcore.g.this.C[i])) + "，点按换到主区";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i, int i2) {
            if (i == Integer.MIN_VALUE || !this.f.isEnabled() || getParent() == null) {
                return;
            }
            android.view.accessibility.AccessibilityEvent accessibilityEvent = new android.view.accessibility.AccessibilityEvent(i2);
            accessibilityEvent.setPackageName(dev.duo.taskcore.g.this.q.getPackageName());
            accessibilityEvent.setClassName(android.widget.Button.class.getName());
            accessibilityEvent.setSource(this, i);
            accessibilityEvent.setContentDescription(a(i));
            getParent().requestSendAccessibilityEvent(this, accessibilityEvent);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public android.graphics.Rect b() {
            int b = dev.duo.taskcore.g.this.r.b();
            int centerY = dev.duo.taskcore.g.this.r.a.centerY();
            return new android.graphics.Rect(b - 3, centerY - 110, b + 3, centerY + 110);
        }

        private int b(float f, float f2) {
            android.graphics.Rect b = b();
            if (f >= b.left - 30 && f <= b.right + 30 && f2 >= b.top && f2 <= b.bottom) {
                return -1;
            }
            for (int i = 0; i < 3; i++) {
                if (dev.duo.taskcore.g.this.r.d[i].contains((int) f, (int) f2)) {
                    return i;
                }
            }
            return -2;
        }

        void a(dev.duo.taskcore.d[] dVarArr) {
            if (a(this.g.a, dVarArr) || a(this.g.b, dVarArr)) {
                c();
            }
        }

        private boolean a(int i, dev.duo.taskcore.d[] dVarArr) {
            return i >= 0 && i < 3 && dVarArr[i] != dev.duo.taskcore.g.this.C[i];
        }

        private int a(float f, float f2) {
            int b;
            if (!e() || (b = b(f, f2)) == -2) {
                return Integer.MIN_VALUE;
            }
            if (b == -1) {
                return 3;
            }
            return b;
        }

        void a(boolean z) {
            this.a.setColor(z ? 1728053247 : 1140850688);
            this.b.setColor(z ? -2130706433 : 1426063360);
            this.c.setColor(z ? -419430401 : -1291845632);
        }

        private int a(float f) {
            int i = 0;
            for (int i2 = 1; i2 < 3; i2++) {
                if (java.lang.Math.abs(dev.duo.taskcore.g.this.r.d[i2].centerY() - f) < java.lang.Math.abs(dev.duo.taskcore.g.this.r.d[i].centerY() - f)) {
                    i = i2;
                }
            }
            return i;
        }

        void a() {
            dev.duo.taskcore.g.this.t.removeCallbacks(this.o);
            if (this.h == -1 && dev.duo.taskcore.g.this.z != null) {
                dev.duo.taskcore.g.this.z.a();
            }
            if (this.h == -1 || this.l) {
                dev.duo.taskcore.g.this.v();
            }
            this.h = -2;
            this.l = false;
            dev.duo.taskcore.g.this.M = false;
            dev.duo.taskcore.g.this.L = 0.0f;
            dev.duo.taskcore.g gVar = dev.duo.taskcore.g.this;
            gVar.I = gVar.J = -1;
            dev.duo.taskcore.g.this.y();
            invalidate();
            dev.duo.taskcore.g.this.x.invalidate();
        }

        private boolean a(android.view.MotionEvent motionEvent) {
            if ((motionEvent.getFlags() & 2048) != 0 && motionEvent.getActionMasked() == 0) {
                this.h = -2;
                return true;
            }
            if (motionEvent.getActionMasked() == 0 && !dev.duo.taskcore.a.a(dev.duo.taskcore.g.this.O, dev.duo.taskcore.g.this.P, dev.duo.taskcore.g.this.Q)) {
                this.h = -2;
                return true;
            }
            if (this.h == -2 && !this.l && motionEvent.getActionMasked() != 0) {
                return true;
            }
            switch (motionEvent.getActionMasked()) {
                case 0:
                    this.m = false;
                    this.l = false;
                    this.i = motionEvent.getX();
                    float y = motionEvent.getY();
                    this.j = y;
                    int b = b(this.i, y);
                    this.h = b;
                    if (b != -1) {
                        if (b >= 0 && dev.duo.taskcore.g.this.C[this.h] != null) {
                            dev.duo.taskcore.g.this.t.postDelayed(this.o, 300L);
                            break;
                        }
                    } else {
                        dev.duo.taskcore.g.this.M = true;
                        dev.duo.taskcore.g.this.L = 0.0f;
                        dev.duo.taskcore.g.this.w();
                        break;
                    }
                    break;
                case 1:
                    dev.duo.taskcore.g.this.t.removeCallbacks(this.o);
                    int i = this.h;
                    int b2 = b(motionEvent.getX(), motionEvent.getY());
                    this.h = -2;
                    if (i == -1) {
                        boolean z = dev.duo.taskcore.g.this.L >= ((float) dev.duo.taskcore.g.this.r.a().width()) * 0.35f;
                        dev.duo.taskcore.g.this.M = false;
                        dev.duo.taskcore.g.this.L = 0.0f;
                        dev.duo.taskcore.g.this.y();
                        invalidate();
                        dev.duo.taskcore.g.this.x.invalidate();
                        if (!z || dev.duo.taskcore.g.this.z == null) {
                            dev.duo.taskcore.g.this.v();
                            if (dev.duo.taskcore.g.this.z != null) {
                                dev.duo.taskcore.g.this.z.a();
                            }
                            if (!this.m && dev.duo.taskcore.g.this.z != null) {
                                dev.duo.taskcore.g.this.z.j();
                                break;
                            }
                        } else {
                            dev.duo.taskcore.g.this.u();
                            dev.duo.taskcore.g.this.z.b();
                            break;
                        }
                    } else if (!this.l) {
                        if (dev.duo.taskcore.g.this.z != null && i != -2 && b2 == i) {
                            if (dev.duo.taskcore.g.this.C[i] != null) {
                                dev.duo.taskcore.g.this.z.g(i);
                                break;
                            } else {
                                dev.duo.taskcore.g.this.z.a(i);
                                break;
                            }
                        }
                    } else {
                        this.l = false;
                        int i2 = dev.duo.taskcore.g.this.I;
                        int i3 = dev.duo.taskcore.g.this.J;
                        dev.duo.taskcore.g gVar = dev.duo.taskcore.g.this;
                        gVar.I = gVar.J = -1;
                        dev.duo.taskcore.g.this.y();
                        if (dev.duo.taskcore.g.this.z == null || i2 == i3) {
                            dev.duo.taskcore.g.this.v();
                            break;
                        } else {
                            dev.duo.taskcore.g.this.z.a(i2, i3);
                            break;
                        }
                    }
                    break;
                case 2:
                    int i4 = this.h;
                    if (i4 == -1) {
                        dev.duo.taskcore.g.this.L = java.lang.Math.max(0.0f, r0.r.c() * (motionEvent.getX() - this.i));
                        if (!this.m && java.lang.Math.hypot(motionEvent.getX() - this.i, motionEvent.getY() - this.j) > this.n) {
                            this.m = true;
                        }
                        dev.duo.taskcore.g.this.y();
                        invalidate();
                        dev.duo.taskcore.g.this.x.invalidate();
                        if (dev.duo.taskcore.g.this.z != null) {
                            dev.duo.taskcore.g.this.z.a(dev.duo.taskcore.g.this.L);
                            break;
                        }
                    } else if (this.l) {
                        if (!this.m && java.lang.Math.hypot(motionEvent.getX() - this.i, motionEvent.getY() - this.j) > this.n) {
                            this.m = true;
                            if (dev.duo.taskcore.g.this.z != null) {
                                dev.duo.taskcore.g.this.z.d();
                            }
                        }
                        dev.duo.taskcore.g.this.K = motionEvent.getY() - this.j;
                        dev.duo.taskcore.g.this.J = a(r8.r.d[dev.duo.taskcore.g.this.I].centerY() + dev.duo.taskcore.g.this.K);
                        dev.duo.taskcore.g.this.y();
                        break;
                    } else if (i4 != -2 && b(motionEvent.getX(), motionEvent.getY()) != this.h) {
                        dev.duo.taskcore.g.this.t.removeCallbacks(this.o);
                        this.h = -2;
                        break;
                    }
                    break;
                case 3:
                    a();
                    break;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class i {
        final android.view.SurfaceControlViewHost a;
        final android.view.SurfaceControlViewHost.SurfacePackage b;
        final android.view.SurfaceControl c;
        private boolean d;

        i(android.view.SurfaceControlViewHost surfaceControlViewHost) {
            this.a = surfaceControlViewHost;
            android.view.SurfaceControlViewHost.SurfacePackage surfacePackage = surfaceControlViewHost.getSurfacePackage();
            this.b = surfacePackage;
            this.c = surfacePackage.getSurfaceControl();
        }

        void a() {
            if (this.d) {
                return;
            }
            this.d = true;
            try {
                this.a.release();
            } finally {
                this.b.release();
            }
        }
    }

    g(android.content.Context context, android.view.SurfaceControl surfaceControl, dev.duo.taskcore.b bVar) {
        this.q = context;
        this.r = bVar;
        this.s = new android.view.SurfaceControl.Builder().setName("TaskCore root").setParent(surfaceControl).setHidden(true).build();
    }

    private static int a(boolean z) {
        return z ? -15724528 : -986894;
    }

    static synchronized android.os.Handler c() {
        android.os.Handler handler;
        synchronized (dev.duo.taskcore.g.class) {
            if (p == null) {
                android.os.HandlerThread handlerThread = new android.os.HandlerThread("TaskCoreAnim", -8);
                handlerThread.start();
                p = new android.os.Handler(handlerThread.getLooper());
            }
            handler = p;
        }
        return handler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float f() {
        return android.animation.ValueAnimator.getDurationScale();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h() {
        dev.duo.taskcore.g.h hVar = this.y;
        if (hVar != null) {
            hVar.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        a((dev.duo.taskcore.a.AbstractC0005a) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            if (this.s.isValid()) {
                transaction.reparent(this.s, null).apply();
            }
            transaction.close();
        } catch (java.lang.Throwable th) {
            try {
                transaction.close();
            } catch (java.lang.Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        dev.duo.taskcore.g.i iVar = this.v;
        if (iVar != null) {
            iVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        dev.duo.taskcore.g.i iVar = this.w;
        if (iVar != null) {
            iVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m() {
        a("detach root", new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.j();
            }
        });
        final android.view.SurfaceControl surfaceControl = this.s;
        java.util.Objects.requireNonNull(surfaceControl);
        a("release root", new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                surfaceControl.release();
            }
        });
        a("release backdrop", new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.k();
            }
        });
        a("release overlay", new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.l();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n() {
        a("stop animation", new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.i();
            }
        });
        this.t.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.m();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        dev.duo.taskcore.a.AbstractC0005a abstractC0005a = this.N;
        this.N = null;
        if (abstractC0005a != null) {
            this.H.c(abstractC0005a);
        }
    }

    private void q() {
        dev.duo.taskcore.g.h hVar = this.y;
        if (hVar == null) {
            return;
        }
        hVar.invalidate();
        this.x.invalidate();
        if (!this.y.e()) {
            this.y.c();
        }
        this.y.sendAccessibilityEvent(2048);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        this.E = true;
        android.view.View view = this.x;
        if (view != null) {
            view.invalidate();
        }
        dev.duo.taskcore.g.h hVar = this.y;
        if (hVar != null) {
            hVar.b(false);
        }
        final dev.duo.taskcore.d[] dVarArr = (dev.duo.taskcore.d[]) this.C.clone();
        c().post(new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.a(dVarArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        final dev.duo.taskcore.d[] dVarArr = (dev.duo.taskcore.d[]) this.C.clone();
        final dev.duo.taskcore.d dVar = this.D;
        c().post(new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.a(dVarArr, dVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        final dev.duo.taskcore.d[] dVarArr = (dev.duo.taskcore.d[]) this.C.clone();
        c().post(new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.b(dVarArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        final dev.duo.taskcore.d[] dVarArr = (dev.duo.taskcore.d[]) this.C.clone();
        c().post(new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.c(dVarArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        c().post(new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.o();
            }
        });
    }

    synchronized void d() {
        this.F = true;
    }

    public synchronized void e(boolean z) {
        if (!this.B && !this.F) {
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                if (this.s.isValid()) {
                    transaction.setVisibility(this.s, z).apply();
                }
                transaction.close();
                dev.duo.taskcore.g.h hVar = this.y;
                if (hVar != null) {
                    if (!z) {
                        hVar.c();
                    }
                    this.y.b(z && !this.E);
                }
            } finally {
            }
        }
    }

    public dev.duo.taskcore.b g() {
        return this.r;
    }

    public void p() {
        this.A = b(this.q);
        android.graphics.Rect a2 = a(this.q);
        dev.duo.taskcore.g.a aVar = new dev.duo.taskcore.g.a(this.q);
        this.x = aVar;
        aVar.setContentDescription("选择大窗应用");
        this.x.setBackgroundColor(a(this.A));
        this.v = a(this.x, a2.width(), a2.height(), 8);
        dev.duo.taskcore.g.h hVar = new dev.duo.taskcore.g.h(this.q);
        this.y = hVar;
        hVar.a(this.A);
        this.w = a(this.y, this.r.a().width(), a2.height(), 8);
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            a(transaction);
            transaction.setVisibility(this.s, true);
            transaction.reparent(this.v.c, this.s).setLayer(this.v.c, 0).setVisibility(this.v.c, true);
            transaction.reparent(this.w.c, this.s).setLayer(this.w.c, c).setPosition(this.w.c, r1.left, 0.0f).setVisibility(this.w.c, true);
            transaction.apply();
            transaction.close();
        } catch (java.lang.Throwable th) {
            try {
                transaction.close();
            } catch (java.lang.Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public void r() {
        v();
    }

    public void s() {
        dev.duo.taskcore.g.h hVar = this.y;
        if (hVar != null) {
            hVar.c();
        }
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            dev.duo.taskcore.g.i iVar = this.v;
            if (iVar != null && iVar.c.isValid()) {
                transaction.setVisibility(this.v.c, false);
            }
            dev.duo.taskcore.g.i iVar2 = this.w;
            if (iVar2 != null && iVar2.c.isValid()) {
                transaction.setVisibility(this.w.c, false);
            }
            transaction.apply();
            transaction.close();
        } catch (java.lang.Throwable th) {
            try {
                transaction.close();
            } catch (java.lang.Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public android.view.SurfaceControl t() {
        return this.s;
    }

    public void d(boolean z) {
        android.view.View view = this.x;
        if (view == null || z == this.A) {
            return;
        }
        this.A = z;
        view.setBackgroundColor(a(z));
        this.y.a(this.A);
        this.y.invalidate();
    }

    public void b(android.view.SurfaceControl surfaceControl) throws java.lang.ReflectiveOperationException {
        if (this.B) {
            return;
        }
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            if (surfaceControl == null) {
                a(transaction);
            } else {
                android.view.SurfaceControl.Transaction.class.getMethod("setRelativeLayer", android.view.SurfaceControl.class, android.view.SurfaceControl.class, java.lang.Integer.TYPE).invoke(transaction, this.s, surfaceControl, -1);
            }
            transaction.apply();
            transaction.close();
        } catch (java.lang.Throwable th) {
            try {
                transaction.close();
            } catch (java.lang.Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(dev.duo.taskcore.d[] dVarArr) {
        a(new dev.duo.taskcore.g.d(dVarArr));
    }

    public void d(dev.duo.taskcore.d dVar) {
        this.D = dVar;
        android.view.View view = this.x;
        if (view != null) {
            view.setImportantForAccessibility(dVar == null ? 1 : 2);
            this.x.invalidate();
        }
    }

    synchronized void a() {
        this.F = false;
    }

    public void c(boolean z) {
        dev.duo.taskcore.g.h hVar;
        if (this.P == z) {
            return;
        }
        this.P = z;
        if (!z && (hVar = this.y) != null) {
            hVar.a();
        }
        q();
    }

    synchronized void a(android.view.SurfaceControl.Transaction transaction, android.view.SurfaceControl surfaceControl, java.lang.Boolean bool) {
        if (!this.B && this.s.isValid()) {
            transaction.reparent(this.s, surfaceControl).setPosition(this.s, 0.0f, 0.0f).setScale(this.s, 1.0f, 1.0f).setAlpha(this.s, 1.0f).setCrop(this.s, null);
            a(transaction);
            if (bool != null) {
                transaction.setVisibility(this.s, bool.booleanValue());
            }
        }
        this.F = false;
    }

    public void e() {
        this.B = true;
        a("drop focus", new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.h();
            }
        });
        java.util.ArrayList arrayList = new java.util.ArrayList(this.u.keySet());
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            java.lang.Object obj = arrayList.get(i2);
            i2++;
            final dev.duo.taskcore.d dVar = (dev.duo.taskcore.d) obj;
            a("remove " + dVar, new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.g.this.b(dVar);
                }
            });
        }
        c().post(new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.n();
            }
        });
    }

    public void d(dev.duo.taskcore.d[] dVarArr) {
        dev.duo.taskcore.d[] dVarArr2 = this.C;
        this.C = (dev.duo.taskcore.d[]) dVarArr.clone();
        dev.duo.taskcore.g.h hVar = this.y;
        if (hVar != null) {
            hVar.a(dVarArr2);
        }
        q();
    }

    private static boolean b(android.content.Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public void b(dev.duo.taskcore.d dVar) {
        final dev.duo.taskcore.g.C0006g remove = this.u.remove(dVar);
        if (remove == null) {
            return;
        }
        c().post(new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.a(remove);
            }
        });
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final java.lang.Runnable runnable) {
        this.t.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.a(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(dev.duo.taskcore.d[] dVarArr) {
        a(new dev.duo.taskcore.g.e(dVarArr));
    }

    public void b(boolean z) {
        dev.duo.taskcore.g.h hVar;
        if (this.O == z) {
            return;
        }
        this.O = z;
        if (z && (hVar = this.y) != null) {
            hVar.a();
        }
        q();
    }

    public void a(dev.duo.taskcore.g.f fVar) {
        this.z = fVar;
    }

    private void a(android.view.SurfaceControl.Transaction transaction) {
        android.view.SurfaceControl surfaceControl = this.G;
        if (surfaceControl != null && surfaceControl.isValid()) {
            try {
                android.view.SurfaceControl.Transaction.class.getMethod("setRelativeLayer", android.view.SurfaceControl.class, android.view.SurfaceControl.class, java.lang.Integer.TYPE).invoke(transaction, this.s, surfaceControl, -1);
                return;
            } catch (java.lang.ReflectiveOperationException e2) {
                android.util.Log.e("DuoWorkbench", "root below floating window unavailable: kept on top", e2);
                transaction.setLayer(this.s, a);
                return;
            }
        }
        transaction.setLayer(this.s, a);
    }

    public void a(android.view.SurfaceControl surfaceControl) {
        if (this.B) {
            return;
        }
        this.G = surfaceControl;
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            a(transaction);
            transaction.apply();
            transaction.close();
        } catch (java.lang.Throwable th) {
            try {
                transaction.close();
            } catch (java.lang.Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    void a(final dev.duo.taskcore.b bVar) {
        if (this.B) {
            return;
        }
        final boolean z = !bVar.b.equals(this.r.b);
        c().post(new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.a(bVar, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final dev.duo.taskcore.b bVar, final boolean z) {
        a((dev.duo.taskcore.a.AbstractC0005a) null);
        this.r = bVar;
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            synchronized (this.u) {
                for (dev.duo.taskcore.g.C0006g c0006g : this.u.values()) {
                    if (c0006g.a.c.isValid()) {
                        android.view.SurfaceControl surfaceControl = c0006g.a.c;
                        android.graphics.Rect rect = bVar.a;
                        transaction.setPosition(surfaceControl, rect.left, rect.top);
                        a(transaction, c0006g, new android.graphics.Rect(c0006g.c), 1.0f, c0006g.e);
                    }
                }
            }
            dev.duo.taskcore.g.i iVar = this.w;
            if (iVar != null && iVar.c.isValid()) {
                transaction.setPosition(this.w.c, bVar.a().left, 0.0f);
            }
            transaction.apply();
            transaction.close();
            this.t.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.g.this.a(z, bVar);
                }
            });
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, dev.duo.taskcore.b bVar) {
        if (z && !this.B) {
            android.graphics.Rect rect = bVar.b;
            android.graphics.Rect rect2 = bVar.a;
            dev.duo.taskcore.g.i iVar = this.v;
            if (iVar != null) {
                iVar.a.relayout(rect.width(), rect.height());
            }
            dev.duo.taskcore.g.i iVar2 = this.w;
            if (iVar2 != null) {
                iVar2.a.relayout(bVar.a().width(), rect.height());
            }
            synchronized (this.u) {
                for (dev.duo.taskcore.g.C0006g c0006g : this.u.values()) {
                    android.view.View view = c0006g.a.a.getView();
                    if ((view instanceof android.widget.FrameLayout) && ((android.widget.FrameLayout) view).getChildCount() > 0) {
                        ((android.widget.FrameLayout) view).getChildAt(0).setLayoutParams(new android.widget.FrameLayout.LayoutParams(rect2.width(), rect2.height()));
                    }
                    c0006g.a.a.relayout(rect2.width(), rect2.height());
                }
            }
        }
        dev.duo.taskcore.g.h hVar = this.y;
        if (hVar != null) {
            hVar.k = bVar.a().left;
        }
        q();
    }

    private dev.duo.taskcore.g.i a(android.view.View view, int i2, int i3, int i4) {
        return a(view, i2, i3, i4, true);
    }

    private dev.duo.taskcore.g.i a(android.view.View view, int i2, int i3, int i4, boolean z) {
        android.view.SurfaceControlViewHost surfaceControlViewHost = new android.view.SurfaceControlViewHost(this.q, ((android.hardware.display.DisplayManager) this.q.getSystemService(android.hardware.display.DisplayManager.class)).getDisplay(0), null);
        android.view.WindowManager.LayoutParams layoutParams = new android.view.WindowManager.LayoutParams(i2, i3, 2, i4, -3);
        if (!z) {
            try {
                java.lang.reflect.Field field = android.view.WindowManager.LayoutParams.class.getField("inputFeatures");
                field.setInt(layoutParams, android.view.WindowManager.LayoutParams.class.getField("INPUT_FEATURE_NO_INPUT_CHANNEL").getInt(null) | field.getInt(layoutParams));
            } catch (java.lang.ReflectiveOperationException e2) {
                surfaceControlViewHost.release();
                throw new java.lang.IllegalStateException("panel flags " + i4, e2);
            }
        }
        android.view.SurfaceControlViewHost.class.getMethod("setView", android.view.View.class, android.view.WindowManager.LayoutParams.class).invoke(surfaceControlViewHost, view, layoutParams);
        return new dev.duo.taskcore.g.i(surfaceControlViewHost);
    }

    static android.graphics.Rect a(android.content.Context context) {
        android.graphics.Point point = new android.graphics.Point();
        ((android.hardware.display.DisplayManager) context.getSystemService(android.hardware.display.DisplayManager.class)).getDisplay(0).getRealSize(point);
        return new android.graphics.Rect(0, 0, point.x, point.y);
    }

    void a(dev.duo.taskcore.d dVar, android.view.View view) {
        final android.graphics.Rect rect = this.r.a;
        android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(this.q);
        if (view instanceof android.view.SurfaceView) {
            ((android.view.SurfaceView) view).setZOrderOnTop(true);
        }
        frameLayout.addView(view, new android.widget.FrameLayout.LayoutParams(rect.width(), rect.height()));
        final dev.duo.taskcore.g.i a2 = a((android.view.View) frameLayout, rect.width(), rect.height(), 24, false);
        final android.view.SurfaceControl build = new android.view.SurfaceControl.Builder().setName("TaskCore motion #" + dVar.a.a).setParent(this.s).setHidden(false).build();
        final dev.duo.taskcore.g.C0006g c0006g = new dev.duo.taskcore.g.C0006g(a2, build);
        dVar.h = a2;
        dVar.i = build;
        this.u.put(dVar, c0006g);
        final android.graphics.Rect rect2 = new android.graphics.Rect(dVar.m);
        c().post(new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.a(a2, build, rect, c0006g, rect2);
            }
        });
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.taskcore.g.i iVar, android.view.SurfaceControl surfaceControl, android.graphics.Rect rect, dev.duo.taskcore.g.C0006g c0006g, android.graphics.Rect rect2) {
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            android.view.SurfaceControl surfaceControl2 = iVar.c;
            transaction.reparent(surfaceControl2, surfaceControl).setPosition(surfaceControl2, rect.left, rect.top).setVisibility(surfaceControl2, true);
            a(transaction, c0006g, rect2, 1.0f, c0006g.e);
            transaction.apply();
            transaction.close();
            c0006g.d.set(rect2);
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(android.view.SurfaceControl.Transaction transaction, dev.duo.taskcore.g.C0006g c0006g, android.graphics.Rect rect, float f2, int i2) {
        android.graphics.Rect rect2;
        if (c0006g.b.isValid()) {
            if (f2 != 1.0f) {
                float f3 = f2 - 1.0f;
                int round = java.lang.Math.round((rect.width() * f3) / 2.0f);
                int round2 = java.lang.Math.round((rect.height() * f3) / 2.0f);
                rect2 = new android.graphics.Rect(rect.left - round, rect.top - round2, rect.right + round, rect.bottom + round2);
            } else {
                rect2 = rect;
            }
            float[] a2 = this.r.a(rect2);
            android.view.SurfaceControl surfaceControl = c0006g.b;
            float f4 = a2[0];
            transaction.setScale(surfaceControl, f4, f4).setPosition(c0006g.b, a2[1], a2[2]).setCrop(c0006g.b, this.r.a).setLayer(c0006g.b, i2);
            dev.duo.taskcore.e.a(transaction, c0006g.b, h / a2[0]);
            c0006g.c.set(rect);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public dev.duo.taskcore.g.C0006g a(dev.duo.taskcore.d dVar) {
        if (dVar == null) {
            return null;
        }
        return this.u.get(dVar);
    }

    private void a(dev.duo.taskcore.a.AbstractC0005a abstractC0005a) {
        this.H.d(abstractC0005a);
    }

    private void a(java.util.Map<dev.duo.taskcore.g.C0006g, android.graphics.Rect> map, java.util.Map<dev.duo.taskcore.g.C0006g, java.lang.Integer> map2, long j2, java.lang.Runnable runnable) {
        float f2 = f();
        if (f2 > 0.0f && !this.B) {
            float f3 = j2 * f2 * 1000000.0f;
            java.util.HashMap hashMap = new java.util.HashMap();
            for (dev.duo.taskcore.g.C0006g c0006g : map.keySet()) {
                hashMap.put(c0006g, new android.graphics.Rect(c0006g.c));
            }
            dev.duo.taskcore.g.c cVar = new dev.duo.taskcore.g.c(new long[]{-1}, f3, map, hashMap, new android.graphics.Rect(), map2);
            cVar.a = runnable;
            a(cVar);
            return;
        }
        a((dev.duo.taskcore.a.AbstractC0005a) null);
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            for (java.util.Map.Entry<dev.duo.taskcore.g.C0006g, android.graphics.Rect> entry : map.entrySet()) {
                a(transaction, entry.getKey(), entry.getValue(), 1.0f, map2 == null ? entry.getKey().e : map2.get(entry.getKey()).intValue());
            }
            transaction.apply();
            transaction.close();
            if (runnable != null) {
                runnable.run();
            }
        } finally {
        }
    }

    void a(dev.duo.taskcore.d dVar, dev.duo.taskcore.d[] dVarArr, final boolean z, final java.lang.Runnable runnable) {
        dev.duo.taskcore.g.h hVar;
        final java.util.HashMap hashMap = new java.util.HashMap();
        final java.util.HashMap hashMap2 = new java.util.HashMap();
        dev.duo.taskcore.g.C0006g a2 = a(dVar);
        this.D = dVar;
        if (a2 != null) {
            hashMap.put(a2, new android.graphics.Rect(dVar.m));
            hashMap2.put(a2, 20);
        }
        for (int i2 = 0; i2 < dVarArr.length; i2++) {
            dev.duo.taskcore.g.C0006g a3 = a(dVarArr[i2]);
            if (a3 != null) {
                hashMap.put(a3, new android.graphics.Rect(dVarArr[i2].m));
                hashMap2.put(a3, java.lang.Integer.valueOf(i2 + 10));
            }
        }
        this.Q++;
        dev.duo.taskcore.g.h hVar2 = this.y;
        if (hVar2 != null) {
            hVar2.a();
        }
        if (z && (hVar = this.y) != null) {
            hVar.b(false);
        }
        q();
        c().post(new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.a(hashMap, hashMap2, runnable, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.util.Map map, java.util.Map map2, final java.lang.Runnable runnable, boolean z) {
        dev.duo.taskcore.g gVar;
        java.util.Map map3;
        java.util.Map map4;
        for (java.util.Map.Entry entry : map.entrySet()) {
            ((dev.duo.taskcore.g.C0006g) entry.getKey()).d.set((android.graphics.Rect) entry.getValue());
            ((dev.duo.taskcore.g.C0006g) entry.getKey()).e = ((java.lang.Integer) map2.get(entry.getKey())).intValue();
        }
        java.lang.Runnable runnable2 = new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.b(runnable);
            }
        };
        if (!z) {
            gVar = this;
            map3 = map;
            map4 = map2;
        } else if (!map.isEmpty()) {
            a((java.util.Map<dev.duo.taskcore.g.C0006g, android.graphics.Rect>) map, (java.util.Map<dev.duo.taskcore.g.C0006g, java.lang.Integer>) map2, 300L, runnable2);
            return;
        } else {
            gVar = this;
            map3 = map;
            map4 = map2;
        }
        a((dev.duo.taskcore.a.AbstractC0005a) null);
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            for (java.util.Map.Entry entry2 : map3.entrySet()) {
                gVar.a(transaction, (dev.duo.taskcore.g.C0006g) entry2.getKey(), (android.graphics.Rect) entry2.getValue(), 1.0f, ((java.lang.Integer) map4.get(entry2.getKey())).intValue());
                gVar = this;
            }
            transaction.apply();
            transaction.close();
            runnable2.run();
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.Runnable runnable) {
        dev.duo.taskcore.g.h hVar;
        int i2 = this.Q - 1;
        this.Q = i2;
        if (i2 == 0 && (hVar = this.y) != null && !this.E) {
            hVar.b(true);
        }
        q();
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.taskcore.d[] dVarArr, dev.duo.taskcore.d dVar) {
        java.util.HashMap hashMap = new java.util.HashMap();
        for (dev.duo.taskcore.d dVar2 : dVarArr) {
            dev.duo.taskcore.g.C0006g a2 = a(dVar2);
            if (a2 != null) {
                hashMap.put(a2, new android.graphics.Rect(a2.d));
            }
        }
        dev.duo.taskcore.g.C0006g a3 = a(dVar);
        if (a3 != null) {
            hashMap.put(a3, new android.graphics.Rect(a3.d));
        }
        a(hashMap, (java.util.Map<dev.duo.taskcore.g.C0006g, java.lang.Integer>) null, g, (java.lang.Runnable) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.taskcore.d[] dVarArr) {
        java.util.HashMap hashMap = new java.util.HashMap();
        for (dev.duo.taskcore.d dVar : dVarArr) {
            dev.duo.taskcore.g.C0006g a2 = a(dVar);
            if (a2 != null) {
                android.graphics.Rect rect = new android.graphics.Rect(a2.d);
                this.r.b(rect);
                hashMap.put(a2, rect);
            }
        }
        a(hashMap, (java.util.Map<dev.duo.taskcore.g.C0006g, java.lang.Integer>) null, g, (java.lang.Runnable) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.taskcore.g.C0006g c0006g) {
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            if (c0006g.b.isValid()) {
                transaction.reparent(c0006g.b, null).apply();
            }
            transaction.close();
            c0006g.b.release();
            android.os.Handler handler = this.t;
            final dev.duo.taskcore.g.i iVar = c0006g.a;
            java.util.Objects.requireNonNull(iVar);
            handler.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.g$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.g.i.this.a();
                }
            });
        } catch (java.lang.Throwable th) {
            try {
                transaction.close();
            } catch (java.lang.Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void a(java.lang.String str, java.lang.Runnable runnable) {
        try {
            runnable.run();
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.e("DuoWorkbench", "host close step failed: " + str, e2);
        }
    }

    public boolean a(int i2) {
        dev.duo.taskcore.g.h hVar = this.y;
        if (hVar == null) {
            return false;
        }
        if (i2 < 0 || this.C[i2] == null || this.E || !hVar.e()) {
            i2 = -1;
        }
        if (i2 != this.R) {
            this.R = i2;
            this.y.invalidate();
            if (i2 >= 0) {
                this.y.performHapticFeedback(3);
            }
        }
        return i2 >= 0;
    }
}
