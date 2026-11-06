package btm.p000m.os4.systemuihook.newnotificationcenter;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.RenderEffect;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.SystemClock;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import btm.p000m.os4.systemuihook.hypermusiccover.C0007h;
import btm.p000m.os4.systemuihook.hypermusiccover.C0009j;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0014e;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.WeakHashMap;

/* renamed from: btm.m.os4.systemuihook.newnotificationcenter.e */
/* loaded from: classes.dex */
public final class C0014e {

    /* renamed from: A */
    private static boolean f252A = false;

    /* renamed from: A0 */
    private static boolean f253A0 = false;

    /* renamed from: B */
    private static boolean f254B = false;

    /* renamed from: B0 */
    private static boolean f255B0 = false;

    /* renamed from: C */
    private static int f256C = -1;

    /* renamed from: D */
    private static View f258D = null;

    /* renamed from: D0 */
    private static ValueAnimator f259D0 = null;

    /* renamed from: E */
    private static View f260E = null;

    /* renamed from: E0 */
    private static ValueAnimator f261E0 = null;

    /* renamed from: F */
    private static float f262F = 0.0f;

    /* renamed from: F0 */
    private static boolean f263F0 = false;

    /* renamed from: G */
    private static View f264G = null;

    /* renamed from: G0 */
    private static h f265G0 = null;

    /* renamed from: H */
    private static View f266H = null;

    /* renamed from: H0 */
    private static boolean f267H0 = false;

    /* renamed from: I */
    private static float f268I = 1.0f;

    /* renamed from: I0 */
    private static int f269I0 = 0;

    /* renamed from: J */
    private static View f270J = null;

    /* renamed from: K */
    private static int f272K = 0;

    /* renamed from: L */
    private static View f274L = null;

    /* renamed from: M */
    private static int f276M = 0;

    /* renamed from: N */
    private static View f278N = null;

    /* renamed from: O */
    private static int f280O = 0;

    /* renamed from: P */
    private static View[] f282P = null;

    /* renamed from: P0 */
    private static int f283P0 = 0;

    /* renamed from: Q */
    private static float[] f284Q = null;

    /* renamed from: Q0 */
    private static View.OnClickListener f285Q0 = null;

    /* renamed from: R */
    private static float f286R = 0.0f;

    /* renamed from: R0 */
    private static View f287R0 = null;

    /* renamed from: S */
    private static float f288S = 0.0f;

    /* renamed from: S0 */
    private static int f289S0 = 0;

    /* renamed from: T */
    private static float f290T = Float.NaN;

    /* renamed from: T0 */
    static final int f291T0 = 3;

    /* renamed from: U */
    private static int f292U = 0;

    /* renamed from: U0 */
    private static final float f293U0 = 860.0f;

    /* renamed from: V */
    private static float f294V = Float.NaN;

    /* renamed from: V0 */
    private static final float f295V0 = 84.0f;

    /* renamed from: W0 */
    private static final float f297W0 = 53.0f;

    /* renamed from: X0 */
    private static final float f299X0 = 23.0f;

    /* renamed from: Z0 */
    private static final float f303Z0 = 55.5f;

    /* renamed from: a */
    private static final String f304a = "[IOSShade] ";

    /* renamed from: a0 */
    private static long f305a0 = 0;

    /* renamed from: a1 */
    private static final float f306a1 = 72.0f;

    /* renamed from: b */
    private static ViewGroup f307b = null;

    /* renamed from: b0 */
    private static Drawable f308b0 = null;

    /* renamed from: b1 */
    private static final float f309b1 = 106.0f;

    /* renamed from: c */
    private static FrameLayout f310c = null;

    /* renamed from: c0 */
    private static ViewTreeObserver f311c0 = null;

    /* renamed from: c1 */
    private static final float f312c1 = 23.0f;

    /* renamed from: d */
    private static FrameLayout f313d = null;

    /* renamed from: d0 */
    private static ViewTreeObserver f314d0 = null;

    /* renamed from: d1 */
    private static final float f315d1 = 3.2f;

    /* renamed from: e */
    private static View f316e = null;

    /* renamed from: e0 */
    private static boolean f317e0 = false;

    /* renamed from: e1 */
    private static final float f318e1 = 25.5f;

    /* renamed from: f */
    private static View f319f = null;

    /* renamed from: f0 */
    private static View f320f0 = null;

    /* renamed from: f1 */
    private static final long f321f1 = 420;

    /* renamed from: g */
    private static View f322g = null;

    /* renamed from: g0 */
    private static boolean f323g0 = false;

    /* renamed from: g1 */
    private static final long f324g1 = 4000;

    /* renamed from: h */
    private static float f325h = 0.0f;

    /* renamed from: h0 */
    private static int f326h0 = 0;

    /* renamed from: h1 */
    private static int f327h1 = 0;

    /* renamed from: i */
    private static float f328i = 0.0f;

    /* renamed from: i0 */
    private static int f329i0 = 0;

    /* renamed from: j */
    private static long f331j = -1;

    /* renamed from: j0 */
    private static boolean f332j0;

    /* renamed from: k */
    private static long f334k;

    /* renamed from: k0 */
    private static View f335k0;

    /* renamed from: l */
    private static ArrayList<View> f337l;

    /* renamed from: m */
    private static ImageView f340m;

    /* renamed from: n */
    private static g f343n;

    /* renamed from: n0 */
    private static boolean f344n0;

    /* renamed from: n1 */
    private static boolean f345n1;

    /* renamed from: o */
    private static View f346o;

    /* renamed from: o0 */
    private static View f347o0;

    /* renamed from: p */
    private static View f349p;

    /* renamed from: q */
    private static float f352q;

    /* renamed from: q0 */
    private static Boolean f353q0;

    /* renamed from: r */
    private static float f355r;

    /* renamed from: s */
    private static float f358s;

    /* renamed from: t */
    private static ViewGroup.LayoutParams f361t;

    /* renamed from: t1 */
    private static int f363t1;

    /* renamed from: u */
    private static int f364u;

    /* renamed from: u1 */
    private static String f366u1;

    /* renamed from: v */
    private static int f367v;

    /* renamed from: v1 */
    private static int f369v1;

    /* renamed from: w */
    private static int f370w;

    /* renamed from: w1 */
    private static Bitmap f372w1;

    /* renamed from: x */
    private static int f373x;

    /* renamed from: y */
    private static int f376y;

    /* renamed from: y0 */
    private static boolean f377y0;

    /* renamed from: z */
    private static int f379z;

    /* renamed from: z1 */
    private static Method f381z1;

    /* renamed from: W */
    private static final ThreadLocal<Boolean> f296W = new ThreadLocal<>();

    /* renamed from: X */
    private static final ViewTreeObserver.OnPreDrawListener f298X = new ViewTreeObserver.OnPreDrawListener() { // from class: btm.m.os4.systemuihook.newnotificationcenter.e$$ExternalSyntheticLambda2
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            boolean m294R;
            m294R = C0014e.m294R();
            return m294R;
        }
    };

    /* renamed from: Y */
    private static final ViewTreeObserver.OnGlobalLayoutListener f300Y = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: btm.m.os4.systemuihook.newnotificationcenter.e$$ExternalSyntheticLambda3
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            C0014e.m295S();
        }
    };

    /* renamed from: Z */
    private static boolean f302Z = true;

    /* renamed from: l0 */
    private static int f338l0 = 0;

    /* renamed from: Y0 */
    private static final float f301Y0 = 1.0f;

    /* renamed from: m0 */
    private static float f341m0 = f301Y0;

    /* renamed from: p0 */
    private static final WeakHashMap<View, int[]> f350p0 = new WeakHashMap<>();

    /* renamed from: r0 */
    private static int f356r0 = -1;

    /* renamed from: s0 */
    private static int f359s0 = -1;

    /* renamed from: t0 */
    private static final int[] f362t0 = new int[2];

    /* renamed from: u0 */
    private static final int[] f365u0 = new int[2];

    /* renamed from: v0 */
    private static final int[] f368v0 = new int[2];

    /* renamed from: w0 */
    private static final int[] f371w0 = new int[2];

    /* renamed from: x0 */
    private static final int[] f374x0 = new int[2];

    /* renamed from: z0 */
    private static int f380z0 = -1;

    /* renamed from: C0 */
    private static boolean f257C0 = true;

    /* renamed from: J0 */
    private static String f271J0 = "";

    /* renamed from: K0 */
    private static String f273K0 = "";

    /* renamed from: L0 */
    private static String f275L0 = "";

    /* renamed from: M0 */
    private static int f277M0 = 100;

    /* renamed from: N0 */
    private static int f279N0 = 100;

    /* renamed from: O0 */
    private static int f281O0 = 8;

    /* renamed from: i1 */
    private static float f330i1 = 22.0f;

    /* renamed from: j1 */
    private static int f333j1 = 1728053247;

    /* renamed from: k1 */
    private static int f336k1 = -1;

    /* renamed from: l1 */
    private static int f339l1 = 14;

    /* renamed from: m1 */
    private static int f342m1 = 36;

    /* renamed from: o1 */
    private static int f348o1 = -1;

    /* renamed from: p1 */
    private static int f351p1 = 10;

    /* renamed from: q1 */
    private static int f354q1 = 80;

    /* renamed from: r1 */
    private static int f357r1 = 36;

    /* renamed from: s1 */
    private static float f360s1 = 0.14f;

    /* renamed from: x1 */
    private static final HashMap<Class<?>, Method> f375x1 = new HashMap<>();

    /* renamed from: y1 */
    private static final ViewTreeObserver.OnPreDrawListener f378y1 = new ViewTreeObserver.OnPreDrawListener() { // from class: btm.m.os4.systemuihook.newnotificationcenter.e$$ExternalSyntheticLambda4
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            boolean m296T;
            m296T = C0014e.m296T();
            return m296T;
        }
    };

    /* renamed from: btm.m.os4.systemuihook.newnotificationcenter.e$a */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (C0014e.f259D0 != animator) {
                return;
            }
            ValueAnimator unused = C0014e.f259D0 = null;
            C0014e.m301Y();
        }
    }

    /* renamed from: btm.m.os4.systemuihook.newnotificationcenter.e$b */
    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (C0014e.f261E0 == animator) {
                ValueAnimator unused = C0014e.f261E0 = null;
            }
        }
    }

    /* renamed from: btm.m.os4.systemuihook.newnotificationcenter.e$c */
    private static final class c extends LinearLayout {

        /* renamed from: a */
        private final d f382a;

        /* renamed from: b */
        private final TextView f383b;

        c(Context context) {
            super(context);
            setOrientation(0);
            setGravity(17);
            setClipChildren(false);
            d dVar = new d(context);
            this.f382a = dVar;
            TextView textView = new TextView(context);
            this.f383b = textView;
            textView.setTextColor(-1);
            textView.setTypeface(Typeface.DEFAULT, 1);
            textView.setGravity(17);
            addView(dVar, new LinearLayout.LayoutParams(1, 1));
            addView(textView, new LinearLayout.LayoutParams(-2, -1));
        }

        /* renamed from: a */
        void m399a(int i, String str, float f) {
            this.f383b.setText(str);
            this.f383b.setTextSize(2, f);
            int i2 = 0;
            boolean z = i == 1;
            boolean z2 = i == 2;
            this.f382a.setVisibility(z2 ? 8 : 0);
            this.f383b.setVisibility(z ? 8 : 0);
            int max = Math.max(1, Math.round(this.f383b.getTextSize() * 0.95f));
            this.f382a.m400a(max);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f382a.getLayoutParams();
            layoutParams.width = max;
            layoutParams.height = max;
            if (!z2 && !z) {
                i2 = Math.round(max * 0.28f);
            }
            layoutParams.rightMargin = i2;
            this.f382a.setLayoutParams(layoutParams);
        }
    }

    /* renamed from: btm.m.os4.systemuihook.newnotificationcenter.e$d */
    private static final class d extends View {

        /* renamed from: a */
        private final Paint f384a;

        /* renamed from: b */
        private int f385b;

        /* renamed from: c */
        private float f386c;

        d(Context context) {
            super(context);
            Paint paint = new Paint(1);
            this.f384a = paint;
            this.f385b = 1;
            paint.setColor(-1);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap(Paint.Cap.ROUND);
        }

        /* renamed from: a */
        void m400a(int i) {
            m401a(i, Math.max(1, i) * 0.14f, Math.max(1, i) * 0.14f);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float f = this.f386c;
            float f2 = this.f385b - f;
            canvas.drawLine(f, f, f2, f2, this.f384a);
            float f3 = this.f385b - f;
            canvas.drawLine(f3, f, f, f3, this.f384a);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int i3 = this.f385b;
            setMeasuredDimension(i3, i3);
        }

        /* renamed from: a */
        void m401a(int i, float f, float f2) {
            this.f385b = Math.max(1, i);
            this.f386c = f2;
            this.f384a.setStrokeWidth(f);
            requestLayout();
            invalidate();
        }
    }

    /* renamed from: btm.m.os4.systemuihook.newnotificationcenter.e$e */
    private static final class e extends FrameLayout {
        e(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }
    }

    /* renamed from: btm.m.os4.systemuihook.newnotificationcenter.e$f */
    private static final class f extends FrameLayout {

        /* renamed from: a */
        final d f387a;

        /* renamed from: b */
        final TextView f388b;

        f(Context context) {
            super(context);
            setClipChildren(false);
            d dVar = new d(context);
            this.f387a = dVar;
            addView(dVar, new FrameLayout.LayoutParams(1, 1, 8388629));
            TextView textView = new TextView(context);
            this.f388b = textView;
            textView.setTextColor(-1);
            textView.setTypeface(Typeface.DEFAULT, 0);
            textView.setIncludeFontPadding(false);
            textView.setSingleLine(true);
            textView.setGravity(17);
            textView.setImportantForAccessibility(2);
            addView(textView, new FrameLayout.LayoutParams(-1, -2, 17));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: btm.m.os4.systemuihook.newnotificationcenter.e$g */
    static final class g extends View {

        /* renamed from: a */
        View f389a;

        /* renamed from: b */
        private boolean f390b;

        /* renamed from: c */
        private final Runnable f391c;

        g(Context context) {
            super(context);
            this.f391c = new Runnable() { // from class: btm.m.os4.systemuihook.newnotificationcenter.e$g$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C0014e.g.this.m402a();
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m402a() {
            this.f390b = false;
            if (C0014e.f286R > 0.0f && isShown() && getWindowVisibility() == 0) {
                invalidate();
            }
        }

        /* renamed from: b */
        void m403b() {
            removeCallbacks(this.f391c);
            this.f390b = false;
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            m403b();
            super.onDetachedFromWindow();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            View view;
            if (C0014e.f286R <= 0.0f || (view = this.f389a) == null || view.getWidth() <= 0 || this.f389a.getHeight() <= 0) {
                return;
            }
            this.f389a.draw(canvas);
            if (isShown() && getWindowVisibility() == 0 && !this.f390b) {
                this.f390b = postDelayed(this.f391c, 2000L);
            }
        }

        @Override // android.view.View
        protected void onWindowVisibilityChanged(int i) {
            super.onWindowVisibilityChanged(i);
            if (i != 0) {
                m403b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: btm.m.os4.systemuihook.newnotificationcenter.e$h */
    static final class h extends FrameLayout {

        /* renamed from: a */
        private final TextView f392a;

        /* renamed from: b */
        private final ImageView f393b;

        /* renamed from: c */
        private final c f394c;

        /* renamed from: d */
        private final f f395d;

        /* renamed from: e */
        private final View f396e;

        /* renamed from: f */
        private final GradientDrawable f397f;

        /* renamed from: g */
        private final Rect f398g;

        /* renamed from: h */
        private final Rect f399h;

        /* renamed from: i */
        private final Runnable f400i;

        /* renamed from: j */
        private ValueAnimator f401j;

        /* renamed from: k */
        private boolean f402k;

        /* renamed from: l */
        private boolean f403l;

        /* renamed from: m */
        private int f404m;

        /* renamed from: n */
        private int f405n;

        h(Context context) {
            super(context);
            this.f397f = new GradientDrawable();
            this.f398g = new Rect();
            this.f399h = new Rect();
            this.f400i = new Runnable() { // from class: btm.m.os4.systemuihook.newnotificationcenter.e$h$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    C0014e.h.this.m424e();
                }
            };
            setClipChildren(false);
            setClipToPadding(false);
            TextView textView = new TextView(context);
            this.f392a = textView;
            textView.setText(m407a(context, "通知中心", "Notification Center", "通知センター"));
            textView.setTextColor(-1);
            textView.setTextSize(20.0f);
            textView.setTypeface(Typeface.DEFAULT, 1);
            textView.setGravity(8388627);
            textView.setPadding(Math.round(getResources().getDisplayMetrics().density * 24.5f), 0, m405a(12), 0);
            textView.setImportantForAccessibility(1);
            addView(textView, new FrameLayout.LayoutParams(-2, -1, 8388611));
            ImageView imageView = new ImageView(context);
            this.f393b = imageView;
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView.setVisibility(8);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(m405a(24), m405a(24), 8388627);
            layoutParams.leftMargin = m405a(24);
            addView(imageView, layoutParams);
            View view = new View(context);
            this.f396e = view;
            view.setClickable(false);
            view.setImportantForAccessibility(2);
            view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: btm.m.os4.systemuihook.newnotificationcenter.e$h$$ExternalSyntheticLambda3
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    C0014e.h.this.m413a(view2, i, i2, i3, i4, i5, i6, i7, i8);
                }
            });
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(m419b(84), m419b(40), 8388629);
            layoutParams2.rightMargin = m405a(23);
            addView(view, layoutParams2);
            c cVar = new c(context);
            this.f394c = cVar;
            cVar.setOnClickListener(new View.OnClickListener() { // from class: btm.m.os4.systemuihook.newnotificationcenter.e$h$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    C0014e.m396x();
                }
            });
            cVar.setContentDescription(m407a(context, "清除", "Clear", "消去"));
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(m405a(84), m419b(40), 8388629);
            layoutParams3.rightMargin = m405a(23);
            addView(cVar, layoutParams3);
            f fVar = new f(context);
            this.f395d = fVar;
            fVar.setOnClickListener(new View.OnClickListener() { // from class: btm.m.os4.systemuihook.newnotificationcenter.e$h$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    C0014e.h.this.m422c(view2);
                }
            });
            fVar.setContentDescription(m407a(context, "清除", "Clear", "消去"));
            fVar.f388b.setText(m407a(context, "清除", "Clear", "消去"));
            fVar.setVisibility(8);
            addView(fVar, new FrameLayout.LayoutParams(1, 1, 8388629));
            setOnTouchListener(new View.OnTouchListener() { // from class: btm.m.os4.systemuihook.newnotificationcenter.e$h$$ExternalSyntheticLambda6
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    boolean m417a;
                    m417a = C0014e.h.this.m417a(view2, motionEvent);
                    return m417a;
                }
            });
            m429b(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m413a(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (i3 - i == i7 - i5 && i4 - i2 == i8 - i6) {
                return;
            }
            m411a(view);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m422c(View view) {
            m426g();
        }

        /* renamed from: d */
        private float m423d() {
            return C0014e.f289S0 == 1 ? C0014e.f301Y0 : C0014e.f289S0 == 2 ? 1.7f : 2.1f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: e */
        public /* synthetic */ void m424e() {
            m427a(true);
        }

        /* renamed from: f */
        private int m425f() {
            Paint.FontMetrics fontMetrics = this.f392a.getPaint().getFontMetrics();
            float f = fontMetrics.descent - fontMetrics.ascent;
            int m405a = m405a(1);
            if (f <= 0.0f) {
                f = m405a(20);
            }
            return Math.max(m405a, Math.round(f));
        }

        /* renamed from: g */
        private void m426g() {
            if (this.f395d.isEnabled()) {
                removeCallbacks(this.f400i);
                if (this.f402k) {
                    m415a(false, false);
                    C0014e.m299W();
                } else {
                    m415a(true, true);
                    postDelayed(this.f400i, C0014e.f324g1);
                }
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            m427a(false);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (C0014e.f289S0 != 3 || getWidth() == 0) {
                this.f392a.setTranslationY(0.0f);
                return;
            }
            if (!this.f403l) {
                this.f392a.setTranslationY(0.0f);
            }
            float width = getWidth() / C0014e.f293U0;
            if (this.f403l) {
                float top = this.f392a.getTop() + this.f392a.getBaseline();
                Rect rect = this.f398g;
                this.f392a.setTranslationY(((getHeight() / 2.0f) + (width * C0014e.f301Y0)) - (top + ((rect.top + rect.bottom) / 2.0f)));
            }
            TextView textView = this.f395d.f388b;
            float top2 = textView.getTop() + textView.getBaseline();
            Rect rect2 = this.f399h;
            textView.setTranslationY((this.f395d.getHeight() / 2.0f) - (top2 + ((rect2.top + rect2.bottom) / 2.0f)));
        }

        @Override // android.view.View
        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            super.onSizeChanged(i, i2, i3, i4);
            if (C0014e.f289S0 != 3 || i == i3) {
                return;
            }
            post(new Runnable() { // from class: btm.m.os4.systemuihook.newnotificationcenter.e$h$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C0014e.h.this.m430c();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ boolean m417a(View view, MotionEvent motionEvent) {
            boolean z = C0014e.f289S0 == 3;
            if (!m416a(z ? this.f395d : this.f394c, motionEvent.getX(), motionEvent.getY())) {
                return false;
            }
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0 && actionMasked == 1) {
                if (z) {
                    m426g();
                } else {
                    C0014e.m299W();
                }
            }
            return true;
        }

        /* renamed from: b */
        void m429b(boolean z) {
            this.f394c.setEnabled(z);
            c cVar = this.f394c;
            float f = C0014e.f301Y0;
            cVar.setAlpha(z ? 1.0f : 0.45f);
            this.f395d.setEnabled(z);
            f fVar = this.f395d;
            if (!z) {
                f = 0.45f;
            }
            fVar.setAlpha(f);
        }

        /* renamed from: c */
        void m430c() {
            int i;
            int round;
            m420b();
            boolean z = C0014e.f289S0 == 3;
            this.f394c.setVisibility(z ? 8 : 0);
            this.f395d.setVisibility(z ? 0 : 8);
            if (z) {
                m408a();
                return;
            }
            m427a(false);
            this.f394c.m399a(C0014e.f289S0, m407a(getContext(), "清除", "Clear", "消去"), 12.42f);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f394c.getLayoutParams();
            int m425f = m425f();
            if (C0014e.f289S0 == 1) {
                round = Math.round(m425f * 1.18f);
                i = round;
            } else {
                i = m425f;
                round = Math.round(m425f * m423d() * 1.22f);
            }
            layoutParams.width = round;
            layoutParams.height = m419b(40);
            layoutParams.rightMargin = m405a(23);
            this.f394c.setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f396e.getLayoutParams();
            layoutParams2.height = i;
            layoutParams2.width = round;
            layoutParams2.rightMargin = layoutParams.rightMargin;
            this.f396e.setLayoutParams(layoutParams2);
            this.f397f.setCornerRadius(m418b(C0014e.f330i1 * 0.92f * (C0014e.f289S0 != 1 ? C0014e.f301Y0 : 1.18f)));
            this.f397f.setColor(C0014e.f327h1 == 2 ? C0014e.f333j1 : Color.argb(1, 255, 255, 255));
            if (C0014e.f345n1 && C0014e.f327h1 == 1) {
                this.f397f.setStroke(m405a(1), Color.argb(90, 255, 255, 255));
            } else {
                this.f397f.setStroke(0, 0);
            }
            this.f396e.setBackground(this.f397f);
            this.f394c.setBackgroundColor(0);
            m411a(this.f396e);
        }

        /* JADX WARN: Removed duplicated region for block: B:47:0x00b9 A[Catch: IllegalArgumentException -> 0x00df, TryCatch #0 {IllegalArgumentException -> 0x00df, blocks: (B:39:0x009c, B:41:0x00a2, B:44:0x00a9, B:45:0x00b2, B:47:0x00b9, B:48:0x00bd, B:50:0x00cd, B:52:0x00d9, B:55:0x00ae), top: B:38:0x009c }] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00cd A[Catch: IllegalArgumentException -> 0x00df, TryCatch #0 {IllegalArgumentException -> 0x00df, blocks: (B:39:0x009c, B:41:0x00a2, B:44:0x00a9, B:45:0x00b2, B:47:0x00b9, B:48:0x00bd, B:50:0x00cd, B:52:0x00d9, B:55:0x00ae), top: B:38:0x009c }] */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void m420b() {
            String str;
            Bitmap m327b;
            this.f392a.setText(m407a(getContext(), "通知中心", "Notification Center", "通知センター"));
            this.f392a.setVisibility(0);
            this.f393b.setVisibility(8);
            this.f392a.setTextSize(20.0f);
            this.f392a.setTypeface(Typeface.DEFAULT, 1);
            this.f403l = false;
            this.f392a.setPadding(Math.round(getResources().getDisplayMetrics().density * 24.5f), 0, m405a(12), 0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f393b.getLayoutParams();
            layoutParams.width = m405a(24);
            layoutParams.height = m405a(24);
            layoutParams.leftMargin = m405a(24);
            this.f393b.setLayoutParams(layoutParams);
            if (C0014e.f269I0 != 1) {
                boolean z = C0014e.f269I0 == 5 || C0014e.f269I0 == 6;
                if (C0014e.f269I0 == 2 || C0014e.f269I0 == 4 || z) {
                    try {
                        if (C0014e.f269I0 != 4 && C0014e.f269I0 != 6) {
                            str = C0014e.f275L0;
                            if (str.isEmpty()) {
                                str = C0014e.f275L0;
                            }
                            m327b = C0014e.m327b(str, getResources().getDisplayMetrics().density);
                            if (m327b != null) {
                                this.f393b.setImageBitmap(m327b);
                                this.f393b.setVisibility(0);
                                if (!z) {
                                    this.f392a.setVisibility(8);
                                    return;
                                }
                            }
                        }
                        str = C0014e.f273K0;
                        if (str.isEmpty()) {
                        }
                        m327b = C0014e.m327b(str, getResources().getDisplayMetrics().density);
                        if (m327b != null) {
                        }
                    } catch (IllegalArgumentException e) {
                        C0009j.m209a("[IOSShade] header icon unreadable: " + e);
                    }
                }
                if (z) {
                    if (C0014e.f269I0 == 6 && !C0014e.f271J0.trim().isEmpty()) {
                        this.f392a.setText(C0014e.f271J0.trim());
                    }
                    this.f392a.setTextSize(((C0014e.f279N0 + 100) * 20.0f) / 100.0f);
                    int m405a = m405a(Math.round(((C0014e.f277M0 + 100) * 24.0f) / 100.0f));
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f393b.getLayoutParams();
                    layoutParams2.width = m405a;
                    layoutParams2.height = m405a;
                    layoutParams2.leftMargin = m405a(24);
                    this.f393b.setLayoutParams(layoutParams2);
                    this.f392a.setPadding(m405a(24) + m405a + m405a(C0014e.f281O0), 0, m405a(12), 0);
                } else if (C0014e.f269I0 == 3 && !C0014e.f271J0.trim().isEmpty()) {
                    this.f392a.setText(C0014e.f271J0.trim());
                }
                if (C0014e.f289S0 == 3 && !z && getWidth() > 0) {
                    float width = getWidth() / C0014e.f293U0;
                    this.f392a.setTypeface(Typeface.DEFAULT, 0);
                    this.f392a.setTextSize(0, C0014e.f303Z0 * width);
                    this.f392a.setIncludeFontPadding(false);
                    CharSequence text = this.f392a.getText();
                    this.f392a.getPaint().getTextBounds(text.toString(), 0, text.length(), this.f398g);
                    this.f392a.setPadding(Math.round((width * 23.0f) - this.f398g.left), 0, m405a(12), 0);
                    this.f403l = true;
                    return;
                }
                this.f392a.setIncludeFontPadding(true);
                return;
            }
            this.f392a.setVisibility(8);
        }

        /* renamed from: a */
        private boolean m416a(View view, float f, float f2) {
            return view.getVisibility() == 0 && f >= ((float) view.getLeft()) && f < ((float) view.getRight()) && f2 >= ((float) view.getTop()) && f2 < ((float) view.getBottom());
        }

        /* renamed from: a */
        boolean m428a(MotionEvent motionEvent) {
            View view = C0014e.f289S0 == 3 ? this.f395d : this.f394c;
            if (getAlpha() >= 0.999f && view.isShown()) {
                view.getLocationOnScreen(C0014e.f374x0);
                float rawX = motionEvent.getRawX() - C0014e.f374x0[0];
                float rawY = motionEvent.getRawY() - C0014e.f374x0[1];
                if (rawX >= 0.0f && rawY >= 0.0f && rawX < view.getWidth() && rawY < view.getHeight()) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: a */
        void m427a(boolean z) {
            removeCallbacks(this.f400i);
            if (this.f402k) {
                m415a(false, z);
            }
        }

        /* renamed from: a */
        private void m415a(final boolean z, boolean z2) {
            boolean z3;
            final TimeInterpolator decelerateInterpolator;
            this.f402k = z;
            ValueAnimator valueAnimator = this.f401j;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.f401j = null;
            final int i = z ? this.f405n : this.f404m;
            if (!z2) {
                z3 = z;
            } else {
                if (this.f404m != 0) {
                    final int i2 = ((FrameLayout.LayoutParams) this.f396e.getLayoutParams()).width;
                    if (z) {
                        decelerateInterpolator = new OvershootInterpolator(1.4f);
                    } else {
                        decelerateInterpolator = new DecelerateInterpolator(1.6f);
                    }
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, C0014e.f301Y0);
                    ofFloat.setDuration(C0014e.f321f1);
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: btm.m.os4.systemuihook.newnotificationcenter.e$h$$ExternalSyntheticLambda1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            C0014e.h.this.m410a(i2, i, decelerateInterpolator, z, valueAnimator2);
                        }
                    });
                    this.f401j = ofFloat;
                    ofFloat.start();
                    return;
                }
                z3 = z;
            }
            m409a(i, z3 ? C0014e.f301Y0 : 0.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m410a(int i, int i2, TimeInterpolator timeInterpolator, boolean z, ValueAnimator valueAnimator) {
            float animatedFraction = valueAnimator.getAnimatedFraction();
            int max = Math.max(this.f404m, Math.round(i + ((i2 - i) * timeInterpolator.getInterpolation(animatedFraction))));
            if (!z) {
                animatedFraction = C0014e.f301Y0 - animatedFraction;
            }
            m409a(max, animatedFraction);
        }

        /* renamed from: a */
        private void m409a(int i, float f) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f396e.getLayoutParams();
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f395d.getLayoutParams();
            if (layoutParams.width != i || layoutParams2.width != i) {
                layoutParams.width = i;
                layoutParams2.width = i;
                this.f396e.setLayoutParams(layoutParams);
                this.f395d.setLayoutParams(layoutParams2);
            }
            float m404a = C0014e.f301Y0 - m404a(f / 0.4f);
            float m404a2 = m404a((f - 0.2f) / 0.45f);
            this.f395d.f387a.setAlpha(m404a);
            float f2 = (m404a * 0.5f) + 0.5f;
            this.f395d.f387a.setScaleX(f2);
            this.f395d.f387a.setScaleY(f2);
            this.f395d.f388b.setAlpha(m404a2);
            float f3 = (m404a2 * 0.3f) + 0.7f;
            this.f395d.f388b.setScaleX(f3);
            this.f395d.f388b.setScaleY(f3);
        }

        /* renamed from: a */
        private float m404a(float f) {
            return Math.max(0.0f, Math.min(C0014e.f301Y0, f));
        }

        /* renamed from: a */
        private void m408a() {
            float width = getWidth() / C0014e.f293U0;
            if (width <= 0.0f) {
                return;
            }
            this.f404m = Math.round(C0014e.f306a1 * width);
            this.f405n = Math.round(C0014e.f309b1 * width);
            int round = Math.round(23.0f * width);
            float f = C0014e.f315d1 * width;
            this.f395d.f387a.m401a(round, f, f / 2.0f);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f395d.f387a.getLayoutParams();
            layoutParams.width = round;
            layoutParams.height = round;
            layoutParams.rightMargin = (this.f404m - round) / 2;
            this.f395d.f387a.setLayoutParams(layoutParams);
            TextView textView = this.f395d.f388b;
            textView.setTextSize(0, width * C0014e.f318e1);
            CharSequence text = textView.getText();
            textView.getPaint().getTextBounds(text.toString(), 0, text.length(), this.f399h);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f395d.getLayoutParams();
            layoutParams2.height = this.f404m;
            layoutParams2.rightMargin = 0;
            this.f395d.setLayoutParams(layoutParams2);
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.f396e.getLayoutParams();
            layoutParams3.height = this.f404m;
            layoutParams3.rightMargin = 0;
            this.f396e.setLayoutParams(layoutParams3);
            ValueAnimator valueAnimator = this.f401j;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.f401j = null;
            boolean z = this.f402k;
            m409a(z ? this.f405n : this.f404m, z ? C0014e.f301Y0 : 0.0f);
            this.f397f.setCornerRadius(this.f404m / 2.0f);
            this.f397f.setColor(C0014e.f327h1 == 2 ? C0014e.f333j1 : Color.argb(1, 255, 255, 255));
            if (!C0014e.f345n1 || C0014e.f327h1 != 1) {
                this.f397f.setStroke(0, 0);
            } else {
                this.f397f.setStroke(m405a(1), Color.argb(90, 255, 255, 255));
            }
            this.f396e.setBackground(this.f397f);
            m411a(this.f396e);
        }

        /* renamed from: b */
        private int m419b(int i) {
            return Math.round(i * getResources().getDisplayMetrics().density * 0.92f);
        }

        /* renamed from: b */
        private float m418b(float f) {
            return f * getResources().getDisplayMetrics().density;
        }

        /* JADX WARN: Type inference failed for: r0v1 */
        /* JADX WARN: Type inference failed for: r0v2, types: [boolean, int] */
        /* JADX WARN: Type inference failed for: r0v4 */
        /* renamed from: a */
        private void m411a(View view) {
            int r0 = C0014e.f327h1 != 2 ? 1 : 0;
            m414a(view, "clearMiBackgroundBlendColor", new Object[0]);
            m414a(view, "setPassWindowBlurEnabled", Boolean.valueOf((boolean) r0));
            m414a(view, "setMiViewBlurMode", Integer.valueOf((int) r0));
            m414a(view, "setMiBackgroundBlurMode", Integer.valueOf((int) r0));
            m414a(view, "setMiBackgroundBlurRadius", Integer.valueOf(C0014e.f327h1 == 0 ? C0014e.f354q1 : C0014e.f342m1));
            if (r0 != 0) {
                int i = C0014e.f357r1;
                if (C0014e.f327h1 != 0) {
                    if (C0014e.f345n1) {
                        m414a(view, "setMiBloomStroke", new float[]{3.0f, 180.0f, C0014e.f301Y0, C0014e.f301Y0, C0014e.f301Y0, 0.05f, 8.0f, 0.5f, 0.5f, -0.5f, C0014e.f301Y0, C0014e.f301Y0, C0014e.f301Y0, 0.6f, 0.5f, 0.95f, -0.5f, C0014e.f301Y0, C0014e.f301Y0, C0014e.f301Y0, 0.35f});
                    }
                } else {
                    m414a(view, "setMiGlassBlurRadius", Integer.valueOf(i), Integer.valueOf(Math.min(500, i * 2)));
                }
                int i2 = C0014e.f327h1 == 0 ? C0014e.f348o1 : C0014e.f336k1;
                int i3 = C0014e.f327h1 == 0 ? C0014e.f351p1 : C0014e.f339l1;
                m414a(view, "clearMiBackgroundBlendColor", new Object[0]);
                m414a(view, "addMiBackgroundBlendColor", Integer.valueOf(m406a(i2, i3)), 101);
                if (C0014e.f327h1 == 0) {
                    m412a(view, i, C0014e.f360s1, C0014e.f363t1);
                }
            }
        }

        /* renamed from: a */
        private void m412a(View view, int i, float f, int i2) {
            Class<?> cls;
            try {
                ClassLoader[] classLoaderArr = {view.getContext().getClassLoader(), view.getClass().getClassLoader(), Thread.currentThread().getContextClassLoader()};
                int i3 = 0;
                while (true) {
                    if (i3 >= 3) {
                        cls = null;
                        break;
                    }
                    ClassLoader classLoader = classLoaderArr[i3];
                    if (classLoader != null) {
                        try {
                            cls = Class.forName("com.miui.systemui.util.MiGlassCompat", false, classLoader);
                            break;
                        } catch (Throwable th) {
                        }
                    }
                    i3++;
                }
                if (cls != null) {
                    int max = Math.max(0, Math.min(100, i));
                    float[] fArr = {0.67f, 0.16f, 0.09f, 0.0f, Math.max(0.0f, Math.min(0.4f, f)), 1.4f, -0.02f, 0.3f, 0.6f, C0014e.f301Y0, 0.03f, C0014e.f301Y0, C0014e.f301Y0, C0014e.f301Y0, 0.1f, 0.2f, 0.3f, C0014e.f301Y0, C0014e.f301Y0, C0014e.f306a1, 3.8f, 80.0f, 800.0f, 1.2f, C0014e.f301Y0, -0.4f, 0.6f, -0.8f, 1.4f, 0.7f, 0.8f, 1.15f, 4.0f, 2.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
                    fArr[32] = (Math.max(-100, Math.min(100, i2)) / 100.0f) + 4.0f;
                    Class cls2 = Integer.TYPE;
                    cls.getMethod("setMiGlassBlurRadius", View.class, cls2, cls2).invoke(null, view, Integer.valueOf(max), Integer.valueOf(Math.min(500, max * 2)));
                    cls.getMethod("setMiViewMaterialTypeCompat", cls2, View.class).invoke(null, 1, view);
                    try {
                        Class cls3 = Float.TYPE;
                        cls.getMethod("setMiGlassSdfMaxSizeCompat", View.class, cls3, cls3).invoke(null, view, Float.valueOf(view.getWidth()), Float.valueOf(view.getHeight()));
                    } catch (Throwable th2) {
                    }
                    cls.getMethod("setMiGlassCompat", View.class, float[].class).invoke(null, view, fArr);
                    return;
                }
                throw new ClassNotFoundException("MiGlassCompat");
            } catch (Throwable th3) {
                C0009j.m209a("[IOSShade] clear button MiGlass unavailable: " + th3);
            }
        }

        /* renamed from: a */
        private void m414a(View view, String str, Object... objArr) {
            try {
                C0009j.m200a((Object) view, str, objArr);
            } catch (Throwable th) {
            }
        }

        /* renamed from: a */
        private int m406a(int i, int i2) {
            return Color.argb(Math.round((i2 * 255.0f) / 100.0f), Color.red(i), Color.green(i), Color.blue(i));
        }

        /* renamed from: a */
        private int m405a(int i) {
            return Math.round(i * getResources().getDisplayMetrics().density);
        }

        /* renamed from: a */
        private String m407a(Context context, String str, String str2, String str3) {
            String language = context.getResources().getConfiguration().getLocales().isEmpty() ? "zh" : context.getResources().getConfiguration().getLocales().get(0).getLanguage();
            return "en".equals(language) ? str2 : "ja".equals(language) ? str3 : str;
        }
    }

    private C0014e() {
    }

    /* renamed from: B */
    private static boolean m278B() {
        View view;
        ViewGroup viewGroup = f307b;
        if (viewGroup == null) {
            return false;
        }
        View view2 = null;
        try {
            View m309a = m309a(viewGroup, "notification_panel");
            if (!(m309a instanceof FrameLayout)) {
                int i = 0;
                while (true) {
                    if (i >= viewGroup.getChildCount()) {
                        break;
                    }
                    View childAt = viewGroup.getChildAt(i);
                    if (childAt.getClass().getName().equals("com.android.systemui.shade.NotificationPanelView")) {
                        m309a = childAt;
                        break;
                    }
                    i++;
                }
            }
            if (!(m309a instanceof FrameLayout)) {
                return false;
            }
            FrameLayout frameLayout = (FrameLayout) m309a;
            Context context = viewGroup.getContext();
            Class<?> cls = Class.forName("com.android.keyguard.clock.KeyguardClockContainer", false, context.getClassLoader());
            View view3 = (View) cls.getConstructor(Context.class).newInstance(context);
            try {
                cls.getMethod("addClockView", null).invoke(view3, null);
                if (!(view3 instanceof FrameLayout) || ((FrameLayout) view3).getChildCount() == 0) {
                    throw new IllegalStateException("keyguard clock has no content");
                }
                e eVar = new e(context);
                eVar.setClipChildren(true);
                eVar.setClipToPadding(true);
                eVar.setClipToOutline(true);
                eVar.setClickable(false);
                eVar.setEnabled(false);
                eVar.setFocusable(false);
                eVar.setFocusableInTouchMode(false);
                eVar.setImportantForAccessibility(2);
                m313a((View) eVar);
                m313a(view3);
                view3.setClickable(false);
                view3.setFocusable(false);
                view3.setFocusableInTouchMode(false);
                view3.setImportantForAccessibility(2);
                eVar.addView(view3, new FrameLayout.LayoutParams(-1, -1));
                ImageView imageView = new ImageView(context);
                imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                imageView.setClickable(false);
                imageView.setEnabled(false);
                imageView.setFocusable(false);
                imageView.setImportantForAccessibility(2);
                eVar.addView(imageView, new FrameLayout.LayoutParams(-1, -1));
                g gVar = new g(context);
                gVar.setClickable(false);
                gVar.setFocusable(false);
                gVar.setEnabled(false);
                gVar.setFocusableInTouchMode(false);
                gVar.setImportantForAccessibility(2);
                f316e = view3;
                f310c = frameLayout;
                f313d = eVar;
                f343n = gVar;
                frameLayout.addView(eVar, 0, new FrameLayout.LayoutParams(-1, -1));
                frameLayout.addView(gVar, 1, new FrameLayout.LayoutParams(-1, Math.round(context.getResources().getDisplayMetrics().density * 80.0f)));
                C0023n.m520f(view3);
                f340m = imageView;
                View m309a2 = m309a(frameLayout, "notification_stack_scroller");
                f346o = m309a2;
                if (m309a2 == null) {
                    f346o = m309a(viewGroup, "notification_stack_scroller");
                }
                if (f346o == null && (view = f258D) != null && view.getRootView() == frameLayout.getRootView()) {
                    f346o = f258D;
                }
                C0009j.m209a("[IOSShade] notification stack " + (f346o == null ? "not found" : "attached"));
                m280D();
                m283G();
                ViewTreeObserver viewTreeObserver = frameLayout.getViewTreeObserver();
                f311c0 = viewTreeObserver;
                viewTreeObserver.addOnPreDrawListener(f378y1);
                C0009j.m209a("[IOSShade] keyguard clock presentation attached");
                return true;
            } catch (Throwable th) {
                th = th;
                view2 = view3;
                C0009j.m209a("[IOSShade] keyguard clock presentation unavailable: " + th);
                f317e0 = true;
                boolean z = view2 != null && view2.isAttachedToWindow();
                try {
                    m301Y();
                    if (view2 != null && !z) {
                        try {
                            C0009j.m200a((Object) view2, "onDetachedFromWindow", new Object[0]);
                        } catch (Throwable th2) {
                            C0009j.m209a("[IOSShade] unattached clock cleanup failed: " + th2);
                        }
                    }
                    return false;
                } catch (Throwable th3) {
                    if (view2 != null && !z) {
                        try {
                            C0009j.m200a((Object) view2, "onDetachedFromWindow", new Object[0]);
                        } catch (Throwable th4) {
                            C0009j.m209a("[IOSShade] unattached clock cleanup failed: " + th4);
                        }
                    }
                    throw th3;
                }
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    /* renamed from: C */
    private static void m279C() {
        View view = f316e;
        if (view == null || f313d == null || f286R <= 0.0f) {
            return;
        }
        if (view.getVisibility() != 0) {
            f316e.setVisibility(0);
        }
        if (f337l == null || m285I()) {
            f337l = new ArrayList<>();
            String[] strArr = {"minute_view", "minute1", "minute2", "time_minute", "time_minute_right", "current_time_minute_style1", "time_below_view_minute1", "time_below_view_minute2", "tv_minute", "hour_view", "hour1", "hour2", "time_hour", "time_hour_left", "time_hour_right", "current_time_hour_style1", "tv_hour"};
            for (int i = 0; i < 17; i++) {
                View m328b = m328b(f316e, strArr[i]);
                if (m328b != null && !f337l.contains(m328b)) {
                    f337l.add(m328b);
                }
            }
        }
        ArrayList<View> arrayList = f337l;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            View view2 = arrayList.get(i2);
            i2++;
            View view3 = view2;
            while (view3 != null) {
                if (view3.getVisibility() != 0) {
                    view3.setVisibility(0);
                }
                if (view3 == f316e) {
                    break;
                }
                Object parent = view3.getParent();
                view3 = parent instanceof View ? (View) parent : null;
            }
        }
    }

    /* renamed from: D */
    private static void m280D() {
        if (!f267H0 || f310c == null) {
            m302Z();
            return;
        }
        h hVar = f265G0;
        if (hVar == null || hVar.getParent() != f310c) {
            m302Z();
            h hVar2 = new h(f310c.getContext());
            f265G0 = hVar2;
            hVar2.m430c();
            f265G0.setAlpha(0.0f);
            f265G0.setClickable(false);
            f265G0.m429b(true);
            f310c.addView(f265G0, new FrameLayout.LayoutParams(-1, m304a(52)));
        }
    }

    /* renamed from: E */
    private static void m281E() {
        if (f307b == null) {
            return;
        }
        View view = f335k0;
        if (view != null && view.getRootView() == f307b.getRootView()) {
            m339c(f335k0);
            return;
        }
        String[] strArr = {"notification_dismiss_view", "clear_all", "clear_all_button", "notification_clear_all", "dismiss_button"};
        for (int i = 0; i < 5; i++) {
            View m309a = m309a(f307b, strArr[i]);
            f335k0 = m309a;
            if (m309a != null) {
                break;
            }
        }
        if (f335k0 == null) {
            f335k0 = m336c(f307b, "NotificationDismissView");
        }
        if (f335k0 == null) {
            f335k0 = m336c(f307b, "DismissView");
        }
        if (f335k0 == null) {
            f335k0 = m336c(f307b, "CircleAndTickAnimView");
        }
        m339c(f335k0);
    }

    /* renamed from: F */
    private static View m282F() {
        Object m211b;
        Object invoke;
        try {
            m211b = C0009j.m211b(C0009j.m211b(f316e, "mMiuiClockController"), "mClockView");
            invoke = m211b.getClass().getMethod("getNotificationClockTopView", null).invoke(m211b, null);
        } catch (Throwable th) {
        }
        if ((invoke instanceof View) && m358h((View) invoke)) {
            return (View) invoke;
        }
        Class<?> cls = Class.forName("com.miui.clock.module.ClockViewType", false, f316e.getClass().getClassLoader());
        Method method = m211b.getClass().getMethod("getIClockView", cls);
        String[] strArr = {"TEXT_AREA", "FULL_DATE_WEEK", "DATE"};
        for (int i = 0; i < 3; i++) {
            Object invoke2 = method.invoke(m211b, cls.getField(strArr[i]).get(null));
            if ((invoke2 instanceof View) && m358h((View) invoke2) && ((View) invoke2).getVisibility() == 0 && (!(invoke2 instanceof TextView) || ((TextView) invoke2).length() > 0)) {
                return (View) invoke2;
            }
        }
        try {
            Object m211b2 = C0009j.m211b(C0009j.m211b(C0009j.m211b(f316e, "mMiuiClockController"), "mClockView"), "mCurrentDate");
            if ((m211b2 instanceof View) && m358h((View) m211b2)) {
                return (View) m211b2;
            }
        } catch (Throwable th2) {
        }
        return null;
    }

    /* renamed from: G */
    private static void m283G() {
        View m309a = m309a(f264G, "normal_notification_header_view");
        if (m309a == null) {
            m309a = m309a(f307b, "normal_notification_header_view");
        }
        if (m309a == null) {
            return;
        }
        if (f266H != m309a) {
            f266H = m309a;
            f268I = m309a.getAlpha();
        }
        m309a.setAlpha(0.0f);
        if (f257C0) {
            m286J();
        } else {
            m334b0();
        }
        View[] viewArr = {m309a(m309a, "big_time"), m309a(m309a, "date_time"), m309a(m309a, "horizontal_time")};
        View[] viewArr2 = f282P;
        if (viewArr2 == null || viewArr2[0] != viewArr[0]) {
            f282P = viewArr;
            f284Q = new float[3];
            for (int i = 0; i < 3; i++) {
                View view = viewArr[i];
                if (view != null) {
                    f284Q[i] = view.getAlpha();
                    viewArr[i].setAlpha(0.0f);
                }
            }
        }
    }

    /* renamed from: H */
    public static void m284H() {
        if (!C0007h.m181w()) {
            m297U();
            return;
        }
        f253A0 = false;
        f255B0 = false;
        if (f282P == null && f266H == null) {
            m301Y();
            return;
        }
        ValueAnimator valueAnimator = f259D0;
        if (valueAnimator != null) {
            f259D0 = null;
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = f261E0;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            f261E0 = null;
        }
        final View[] viewArr = f282P;
        final float[] fArr = f284Q;
        final View view = f266H;
        final float f2 = f268I;
        final h hVar = f265G0;
        final float alpha = hVar == null ? 0.0f : hVar.getAlpha();
        m334b0();
        if (viewArr == null && view == null && hVar == null) {
            m301Y();
            return;
        }
        FrameLayout frameLayout = f310c;
        final float f3 = frameLayout == null ? 18.0f : 18.0f * frameLayout.getResources().getDisplayMetrics().density;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, f301Y0);
        f259D0 = ofFloat;
        ofFloat.setDuration(180L);
        f259D0.setInterpolator(new DecelerateInterpolator(1.5f));
        f259D0.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: btm.m.os4.systemuihook.newnotificationcenter.e$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                C0014e.m314a(view, f2, hVar, alpha, f3, viewArr, fArr, valueAnimator3);
            }
        });
        f259D0.addListener(new a());
        f259D0.start();
    }

    /* renamed from: I */
    private static boolean m285I() {
        ArrayList<View> arrayList = f337l;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            View view = arrayList.get(i);
            i++;
            if (!m358h(view)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: J */
    private static void m286J() {
        ViewGroup viewGroup = f307b;
        if (viewGroup == null) {
            return;
        }
        if (f270J == null) {
            View m309a = m309a(viewGroup, "header_clip");
            f270J = m309a;
            if (m309a == null) {
                f270J = m309a(f307b, "header_gradient_blur");
            }
            View view = f270J;
            if (view != null) {
                f272K = view.getVisibility();
            }
        }
        View view2 = f270J;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        if (f274L == null) {
            View m309a2 = m309a(f307b, "header_foreground");
            f274L = m309a2;
            if (m309a2 != null) {
                f276M = m309a2.getVisibility();
            }
        }
        View view3 = f274L;
        if (view3 != null) {
            view3.setVisibility(8);
        }
        if (f278N == null) {
            View m309a3 = m309a(m309a(f307b, "shade_header_container"), "shadow");
            f278N = m309a3;
            if (m309a3 == null) {
                f278N = m309a(f266H, "shadow");
            }
            View view4 = f278N;
            if (view4 != null) {
                f280O = view4.getVisibility();
            }
        }
        View view5 = f278N;
        if (view5 != null) {
            view5.setVisibility(8);
        }
    }

    /* renamed from: K */
    private static void m287K() {
        View view = f266H;
        if (view != null && view.getAlpha() != 0.0f) {
            f266H.setAlpha(0.0f);
        }
        if (f257C0) {
            m286J();
        } else {
            m334b0();
        }
        int i = 0;
        while (true) {
            View[] viewArr = f282P;
            if (viewArr == null || i >= viewArr.length) {
                return;
            }
            View view2 = viewArr[i];
            if (view2 != null && view2.getAlpha() != 0.0f) {
                f284Q[i] = view2.getAlpha();
                view2.setAlpha(0.0f);
            }
            i++;
        }
    }

    /* renamed from: L */
    public static boolean m288L() {
        return f313d != null && f286R > 0.0f;
    }

    /* renamed from: M */
    public static boolean m289M() {
        return Boolean.TRUE.equals(f296W.get());
    }

    /* renamed from: N */
    static boolean m290N() {
        return f313d != null && f286R >= 0.99f;
    }

    /* renamed from: O */
    private static boolean m291O() {
        return m293Q();
    }

    /* renamed from: P */
    private static boolean m292P() {
        FrameLayout frameLayout = f310c;
        return frameLayout != null && frameLayout.getWidth() > f310c.getHeight();
    }

    /* renamed from: Q */
    public static boolean m293Q() {
        Boolean bool = f353q0;
        return bool != null ? bool.booleanValue() : C0007h.m103C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R */
    public static /* synthetic */ boolean m294R() {
        m356g0();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S */
    public static /* synthetic */ void m295S() {
        f302Z = true;
        f337l = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: T */
    public static /* synthetic */ boolean m296T() {
        m353f0();
        return true;
    }

    /* renamed from: U */
    public static void m297U() {
        m390s0();
        if (!f350p0.isEmpty()) {
            m346d0();
        }
        f253A0 = false;
        f255B0 = false;
        f286R = 0.0f;
        ValueAnimator valueAnimator = f259D0;
        if (valueAnimator != null) {
            f259D0 = null;
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = f261E0;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            f261E0 = null;
        }
        m301Y();
    }

    /* renamed from: V */
    public static void m298V() {
        f317e0 = false;
        f302Z = true;
        m392t0();
        m356g0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W */
    public static void m299W() {
        View view;
        m281E();
        if (f307b != null && f285Q0 != null && (view = f287R0) != null && view.getRootView() == f307b.getRootView()) {
            try {
                f285Q0.onClick(f287R0);
            } catch (Throwable th) {
                C0009j.m209a("[IOSShade] native clear action unavailable: " + th);
            }
        }
        View view2 = f346o;
        if (view2 != null) {
            try {
                Boolean bool = Boolean.TRUE;
                C0009j.m200a((Object) view2, "clearNotifications", 0, bool, bool);
                return;
            } catch (Throwable th2) {
                C0009j.m209a("[IOSShade] notification stack clear unavailable: " + th2);
            }
        }
        View view3 = f335k0;
        if (view3 != null) {
            try {
                view3.performClick();
            } catch (Throwable th3) {
                C0009j.m209a("[IOSShade] clear-all view click unavailable: " + th3);
            }
        }
    }

    /* renamed from: X */
    public static void m300X() {
        f253A0 = false;
        f255B0 = false;
        ValueAnimator valueAnimator = f259D0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = f261E0;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            f261E0 = null;
        }
        m390s0();
        m301Y();
        m346d0();
        f307b = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Y */
    public static void m301Y() {
        C0019j.m462d();
        C0017h.m433a();
        m350e0();
        m342c0();
        C0022m.m480a();
        C0022m.m502g(f346o);
        ViewTreeObserver viewTreeObserver = f311c0;
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            f311c0.removeOnPreDrawListener(f378y1);
        }
        f311c0 = null;
        if (f282P != null) {
            int i = 0;
            while (true) {
                View[] viewArr = f282P;
                if (i >= viewArr.length) {
                    break;
                }
                View view = viewArr[i];
                if (view != null) {
                    view.setAlpha(f284Q[i]);
                    f282P[i].setRenderEffect(null);
                }
                i++;
            }
        }
        f282P = null;
        f284Q = null;
        View view2 = f266H;
        if (view2 != null) {
            view2.setAlpha(f268I);
        }
        f266H = null;
        View view3 = f270J;
        if (view3 != null) {
            view3.setVisibility(f272K);
        }
        f270J = null;
        View view4 = f274L;
        if (view4 != null) {
            view4.setVisibility(f276M);
        }
        f274L = null;
        View view5 = f278N;
        if (view5 != null) {
            view5.setVisibility(f280O);
        }
        f278N = null;
        View view6 = f260E;
        if (view6 != null) {
            view6.setAlpha(f262F);
        }
        f260E = null;
        View view7 = f319f;
        if (view7 != null && f325h != 0.0f) {
            view7.setTranslationY(f328i);
        }
        f319f = null;
        f322g = null;
        f325h = 0.0f;
        f328i = 0.0f;
        f331j = -1L;
        f334k = 0L;
        f337l = null;
        f346o = null;
        f361t = null;
        f254B = false;
        f288S = 0.0f;
        f290T = Float.NaN;
        f294V = Float.NaN;
        f308b0 = null;
        FrameLayout frameLayout = f313d;
        if (frameLayout != null && (frameLayout.getParent() instanceof ViewGroup)) {
            ((ViewGroup) f313d.getParent()).removeView(f313d);
        }
        g gVar = f343n;
        if (gVar != null && (gVar.getParent() instanceof ViewGroup)) {
            ((ViewGroup) f343n.getParent()).removeView(f343n);
        }
        boolean m291O = m291O();
        View view8 = f335k0;
        if (view8 != null) {
            if (m291O) {
                view8.setVisibility(8);
                f335k0.setAlpha(f341m0);
            } else {
                view8.setVisibility(f338l0);
                f335k0.setAlpha(f341m0);
            }
        }
        if (!m291O) {
            f335k0 = null;
            f344n0 = false;
            f347o0 = null;
        }
        m302Z();
        f313d = null;
        f310c = null;
        f316e = null;
        f340m = null;
        f343n = null;
        f320f0 = null;
        f356r0 = -1;
        f380z0 = -1;
    }

    /* renamed from: Z */
    private static void m302Z() {
        ValueAnimator valueAnimator = f261E0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            f261E0 = null;
        }
        h hVar = f265G0;
        if (hVar != null && (hVar.getParent() instanceof ViewGroup)) {
            ((ViewGroup) f265G0.getParent()).removeView(f265G0);
        }
        f265G0 = null;
        f263F0 = false;
        f359s0 = -1;
    }

    /* renamed from: a0 */
    private static float m323a0() {
        View view = f316e;
        float f2 = 0.0f;
        if (view == null || !view.isAttachedToWindow()) {
            return 0.0f;
        }
        float m303a = m303a(f316e, 0.0f);
        if (m303a <= 0.0f) {
            return 0.0f;
        }
        View view2 = f319f;
        if (view2 != null && view2.getVisibility() == 0 && m358h(f319f)) {
            View view3 = f319f;
            while (view3 != null && view3 != f316e) {
                f2 += view3.getTop() + view3.getTranslationY();
                Object parent = view3.getParent();
                view3 = parent instanceof View ? (View) parent : null;
            }
            m303a = Math.max(m303a, f2 + f319f.getHeight());
        }
        int round = Math.round(m303a);
        if (round != f292U) {
            f292U = round;
            C0009j.m209a("[IOSShade] resting clock bottom " + round + " (panel " + f310c.getWidth() + "x" + f310c.getHeight() + ")");
        }
        return m303a;
    }

    /* renamed from: b0 */
    private static void m334b0() {
        View view = f270J;
        if (view != null) {
            view.setVisibility(f272K);
        }
        View view2 = f274L;
        if (view2 != null) {
            view2.setVisibility(f276M);
        }
        View view3 = f278N;
        if (view3 != null) {
            view3.setVisibility(f280O);
        }
    }

    /* renamed from: c0 */
    private static void m342c0() {
        if (f254B) {
            View view = f346o;
            if (view != null) {
                ViewGroup.LayoutParams layoutParams = f361t;
                if (layoutParams != null) {
                    layoutParams.width = f364u;
                    layoutParams.height = f367v;
                    if (f252A && (layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        marginLayoutParams.leftMargin = f370w;
                        marginLayoutParams.topMargin = f373x;
                        marginLayoutParams.rightMargin = f376y;
                        marginLayoutParams.bottomMargin = f379z;
                    }
                    view.setLayoutParams(layoutParams);
                }
                f346o.setTranslationX(f355r);
            }
            f361t = null;
            f254B = false;
        }
    }

    /* renamed from: d0 */
    private static void m346d0() {
        ArrayList arrayList = new ArrayList(f350p0.entrySet());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Map.Entry entry = (Map.Entry) obj;
            View view = (View) entry.getKey();
            int[] iArr = (int[]) entry.getValue();
            if (view != null && iArr != null) {
                view.setVisibility(iArr[0]);
                view.setAlpha(Float.intBitsToFloat(iArr[1]));
            }
        }
        f350p0.clear();
        f344n0 = false;
        f347o0 = null;
        f335k0 = null;
    }

    /* renamed from: e0 */
    private static void m350e0() {
        View view = f349p;
        if (view == null) {
            return;
        }
        f349p = null;
        view.setTranslationY(f352q);
        view.setTranslationX(f355r);
        view.setAlpha(f358s);
        view.setRenderEffect(null);
        f256C = -1;
    }

    /* renamed from: f0 */
    private static void m353f0() {
        RenderEffect createBlurEffect;
        RenderEffect createBlurEffect2;
        if (f313d == null || f310c == null || f286R <= 0.0f) {
            return;
        }
        View view = f320f0;
        if (view != null && view.isAttachedToWindow()) {
            int[] iArr = f362t0;
            view.getLocationInWindow(iArr);
            FrameLayout frameLayout = f310c;
            int[] iArr2 = f365u0;
            frameLayout.getLocationInWindow(iArr2);
            float f2 = iArr[0] - iArr2[0];
            float f3 = iArr[1] - iArr2[1];
            if (f313d.getTranslationX() != f2) {
                f313d.setTranslationX(f2);
            }
            if (f313d.getTranslationY() != f3) {
                f313d.setTranslationY(f3);
            }
        }
        if (f282P == null) {
            m283G();
        }
        m386q0();
        m374m0();
        m279C();
        if (view != null && view.isAttachedToWindow() && f313d.getOutlineProvider() != view.getOutlineProvider()) {
            f313d.setOutlineProvider(view.getOutlineProvider());
            f313d.invalidateOutline();
        }
        m287K();
        m368k0();
        m388r0();
        m356g0();
        m383p0();
        m371l0();
        float f4 = f286R;
        int round = ((Math.round((f310c.getResources().getDisplayMetrics().density * 28.0f) * (f301Y0 - ((f4 * f4) * (3.0f - (f4 * 2.0f))))) + 1) / 2) * 2;
        RenderEffect renderEffect = null;
        if (round != f356r0) {
            FrameLayout frameLayout2 = f313d;
            if (round == 0) {
                createBlurEffect2 = null;
            } else {
                float f5 = round;
                createBlurEffect2 = RenderEffect.createBlurEffect(f5, f5, Shader.TileMode.CLAMP);
            }
            frameLayout2.setRenderEffect(createBlurEffect2);
            f356r0 = round;
        }
        View view2 = f346o;
        if (view2 != null && round != f256C) {
            if (round == 0) {
                createBlurEffect = null;
            } else {
                float f6 = round;
                createBlurEffect = RenderEffect.createBlurEffect(f6, f6, Shader.TileMode.DECAL);
            }
            view2.setRenderEffect(createBlurEffect);
            f256C = round;
        }
        int round2 = ((Math.round((f310c.getResources().getDisplayMetrics().density * 12.0f) * (f301Y0 - f286R)) + 1) / 2) * 2;
        g gVar = f343n;
        if (gVar != null && round2 != f380z0) {
            if (round2 != 0) {
                float f7 = round2;
                renderEffect = RenderEffect.createBlurEffect(f7, f7, Shader.TileMode.CLAMP);
            }
            gVar.setRenderEffect(renderEffect);
            f380z0 = round2;
        }
        m377n0();
        m380o0();
        m359h0();
        m365j0();
    }

    /* renamed from: g0 */
    private static void m356g0() {
        if (f307b == null) {
            return;
        }
        if (!C0007h.m181w()) {
            if (f350p0.isEmpty()) {
                return;
            }
            m346d0();
            return;
        }
        boolean m291O = m291O();
        if (!f267H0 && !f323g0 && !m291O) {
            if (!f350p0.isEmpty()) {
                m346d0();
            }
            f302Z = false;
            return;
        }
        h hVar = f265G0;
        if (hVar != null) {
            hVar.m429b(true);
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        boolean z = f350p0.isEmpty() && uptimeMillis - f305a0 >= 1000;
        if (f302Z || z) {
            f305a0 = uptimeMillis;
            ArrayList arrayList = new ArrayList();
            m315a(f307b, (ArrayList<View>) arrayList);
            View view = f287R0;
            if (view != null && view.getRootView() == f307b.getRootView() && !arrayList.contains(f287R0)) {
                arrayList.add(f287R0);
            }
            View view2 = f335k0;
            if (view2 != null && view2.getRootView() == f307b.getRootView() && !arrayList.contains(f335k0)) {
                arrayList.add(f335k0);
            }
            if (!arrayList.isEmpty()) {
                f335k0 = (View) arrayList.get(0);
            }
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                View view3 = (View) obj;
                WeakHashMap<View, int[]> weakHashMap = f350p0;
                if (weakHashMap.get(view3) == null) {
                    weakHashMap.put(view3, new int[]{view3.getVisibility(), Float.floatToIntBits(view3.getAlpha())});
                }
                m339c(view3);
            }
            f302Z = false;
        }
        for (Map.Entry<View, int[]> entry : f350p0.entrySet()) {
            View key = entry.getKey();
            int[] value = entry.getValue();
            if (key != null && value != null && key.getRootView() == f307b.getRootView()) {
                key.setVisibility(8);
                key.setAlpha(Float.intBitsToFloat(value[1]));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /* renamed from: h0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void m359h0() {
        float f2;
        Object invoke;
        View view = f319f;
        float f3 = 0.0f;
        if (view != null && !m358h(view)) {
            f319f.setTranslationY(f328i);
            f319f = null;
            f322g = null;
            f325h = 0.0f;
        }
        if (f319f == null) {
            View m282F = m282F();
            f319f = m282F;
            if (m282F != null) {
                f328i = m282F.getTranslationY();
                f322g = m354g(f319f);
            }
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        long j = f334k;
        if (j == 0 || uptimeMillis - j >= 250) {
            m362i0();
            f334k = uptimeMillis;
        }
        View view2 = f319f;
        if (view2 == null || view2.getHeight() == 0) {
            return;
        }
        View view3 = f319f;
        if ((view3 instanceof TextView) && ((TextView) view3).length() == 0) {
            long currentTimeMillis = System.currentTimeMillis() / 60000;
            if (f331j != currentTimeMillis) {
                f331j = currentTimeMillis;
                try {
                    f316e.getClass().getMethod("updateTime", null).invoke(f316e, null);
                } catch (Throwable th) {
                }
            }
        }
        if (f319f.getVisibility() != 0) {
            View view4 = f319f;
            if (!(view4 instanceof TextView) || ((TextView) view4).length() == 0) {
                return;
            } else {
                f319f.setVisibility(0);
            }
        }
        if (f322g != null) {
            Object parent = f319f.getParent();
            while (true) {
                if (!(parent instanceof View)) {
                    f3 = f322g.getTranslationY();
                    break;
                } else if (parent == f322g) {
                    break;
                } else {
                    parent = ((View) parent).getParent();
                }
            }
            if (f319f.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                f3 += ((ViewGroup.MarginLayoutParams) r0).topMargin - f319f.getTop();
            }
            if (Math.abs(f3 - f325h) > 0.5f) {
                f325h = f3;
                f319f.setTranslationY(f328i + f3);
                return;
            }
            return;
        }
        try {
            invoke = f316e.getClass().getMethod("getNotificationClockTop", null).invoke(f316e, null);
        } catch (Throwable th2) {
        }
        if (invoke instanceof Number) {
            f2 = ((Number) invoke).floatValue();
            f319f.getLocationInWindow(new int[2]);
            f316e.getLocationInWindow(new int[2]);
            float f4 = f316e.getResources().getDisplayMetrics().density;
            float f5 = (r4[1] - r2[1]) - f325h;
            if (f2 > 0.0f) {
                return;
            }
            float max = Math.max(64.0f * f4, (f2 - f319f.getHeight()) - (f4 * 8.0f)) - f5;
            if (Math.abs(max - f325h) > 0.5f) {
                f325h = max;
                f319f.setTranslationY(f328i + max);
                return;
            }
            return;
        }
        f2 = 0.0f;
        f319f.getLocationInWindow(new int[2]);
        f316e.getLocationInWindow(new int[2]);
        float f42 = f316e.getResources().getDisplayMetrics().density;
        float f52 = (r4[1] - r2[1]) - f325h;
        if (f2 > 0.0f) {
        }
    }

    /* renamed from: i0 */
    private static void m362i0() {
        try {
            Object m211b = C0009j.m211b(C0009j.m211b(f316e, "mMiuiClockController"), "mClockView");
            Class<?> cls = Class.forName("com.miui.clock.module.ClockViewType", false, f316e.getClass().getClassLoader());
            Method method = m211b.getClass().getMethod("getIClockView", cls);
            String[] strArr = {"NOTIFICATION_DATE", "NOTIFICATION_DATA_INFO", "FULL_DATE_WEEK", "DATE", "WEEK", "WEATHER", "MAGAZINE_INFO", "TEXT_AREA", "TEXT_AREA2"};
            for (int i = 0; i < 9; i++) {
                try {
                    Object invoke = method.invoke(m211b, cls.getField(strArr[i]).get(null));
                    if ((invoke instanceof View) && m358h((View) invoke)) {
                        View view = (View) invoke;
                        if (view.getVisibility() != 0 && (!(view instanceof TextView) || ((TextView) view).length() > 0)) {
                            view.setVisibility(0);
                        }
                    }
                } catch (Throwable th) {
                }
            }
            String[] strArr2 = {"mCurrentDate", "mLunarCalendarInfo", "mOwnerInfo"};
            for (int i2 = 0; i2 < 3; i2++) {
                try {
                    Object m211b2 = C0009j.m211b(m211b, strArr2[i2]);
                    if ((m211b2 instanceof View) && m358h((View) m211b2) && (!(m211b2 instanceof TextView) || ((TextView) m211b2).length() > 0)) {
                        ((View) m211b2).setVisibility(0);
                    }
                } catch (Throwable th2) {
                }
            }
        } catch (Throwable th3) {
        }
    }

    /* renamed from: j0 */
    private static void m365j0() {
        if (f316e == null) {
            return;
        }
        float f2 = 0.0f;
        if (f346o != null && m323a0() > 0.0f) {
            try {
                if (f381z1 == null) {
                    f381z1 = f346o.getClass().getMethod("getOwnScrollY", null);
                }
                f2 = -Math.max(0, ((Number) f381z1.invoke(f346o, null)).intValue());
            } catch (Throwable th) {
            }
        }
        if (f316e.getTranslationY() != f2) {
            f316e.setTranslationY(f2);
        }
    }

    /* renamed from: k0 */
    private static void m368k0() {
        FrameLayout frameLayout;
        ImageView imageView;
        Drawable drawable;
        Drawable drawable2 = null;
        if (!f257C0 || ((frameLayout = f310c) != null && frameLayout.getWidth() > f310c.getHeight())) {
            ImageView imageView2 = f340m;
            if (imageView2 != null && imageView2.getVisibility() != 8) {
                f340m.setVisibility(8);
            }
            f308b0 = null;
            return;
        }
        View m309a = m309a(f307b, "deducted_image_view");
        if ((m309a instanceof ImageView) && (drawable = (imageView = (ImageView) m309a).getDrawable()) != f308b0) {
            f308b0 = drawable;
            if (drawable != null && drawable.getConstantState() != null) {
                drawable2 = drawable.getConstantState().newDrawable().mutate();
            }
            f340m.setScaleType(imageView.getScaleType());
            f340m.setImageDrawable(drawable2);
            f340m.setVisibility(drawable2 != null ? 0 : 8);
        }
    }

    /* renamed from: l0 */
    private static void m371l0() {
        View view = f346o;
        if (view == null) {
            return;
        }
        if (f260E == null) {
            View m309a = m309a(view, "empty_shade_view");
            if (m309a == null) {
                View view2 = f346o;
                if (view2 instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view2;
                    int i = 0;
                    while (true) {
                        if (i >= viewGroup.getChildCount()) {
                            break;
                        }
                        View childAt = viewGroup.getChildAt(i);
                        if (childAt.getClass().getName().endsWith(".EmptyShadeView")) {
                            m309a = childAt;
                            break;
                        }
                        i++;
                    }
                }
            }
            if (m309a != null) {
                try {
                    Object m211b = C0009j.m211b(m309a, "mEmptyText");
                    if (m211b instanceof View) {
                        View view3 = (View) m211b;
                        f260E = view3;
                        f262F = view3.getAlpha();
                    }
                } catch (Throwable th) {
                }
            }
        }
        View view4 = f260E;
        if (view4 == null || view4.getAlpha() == 0.0f) {
            return;
        }
        f260E.setAlpha(0.0f);
    }

    /* renamed from: m0 */
    private static void m374m0() {
        ViewGroup.LayoutParams layoutParams;
        FrameLayout frameLayout = f310c;
        if (frameLayout == null || frameLayout.getWidth() <= 0 || f310c.getHeight() <= 0) {
            return;
        }
        int m305a = m305a(f310c.getWidth(), f310c.getHeight());
        if (m305a <= 0) {
            if (f254B) {
                m342c0();
                return;
            }
            return;
        }
        int width = (f310c.getWidth() - m305a) / 2;
        boolean z = true;
        if (!f254B) {
            f254B = true;
            View view = f346o;
            if (view != null && (layoutParams = view.getLayoutParams()) != null) {
                f361t = layoutParams;
                f364u = layoutParams.width;
                f367v = layoutParams.height;
                boolean z2 = layoutParams instanceof ViewGroup.MarginLayoutParams;
                f252A = z2;
                if (z2) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    f370w = marginLayoutParams.leftMargin;
                    f373x = marginLayoutParams.topMargin;
                    f376y = marginLayoutParams.rightMargin;
                    f379z = marginLayoutParams.bottomMargin;
                }
            }
        }
        View view2 = f346o;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
            if (layoutParams2 != null) {
                boolean z3 = layoutParams2.width != m305a;
                layoutParams2.width = m305a;
                if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                    if (marginLayoutParams2.leftMargin == width && marginLayoutParams2.rightMargin == width) {
                        z = false;
                    }
                    z3 |= z;
                    marginLayoutParams2.leftMargin = width;
                    marginLayoutParams2.rightMargin = width;
                }
                if (z3) {
                    f346o.setLayoutParams(layoutParams2);
                }
            }
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            f310c.getLocationInWindow(iArr);
            f346o.getLocationInWindow(iArr2);
            float f2 = (iArr[0] + width) - iArr2[0];
            if (Math.abs(f2) > 0.5f) {
                View view3 = f346o;
                view3.setTranslationX(view3.getTranslationX() + f2);
            }
        }
    }

    /* renamed from: n0 */
    private static void m377n0() {
        int i;
        float f2;
        RenderEffect createBlurEffect;
        if (f310c == null || f346o == null || !f267H0) {
            m302Z();
            return;
        }
        m280D();
        if (f265G0 == null || f346o.getHeight() == 0) {
            return;
        }
        int[] iArr = f365u0;
        f310c.getLocationInWindow(iArr);
        View m310a = m310a(f346o, iArr);
        if (m310a != null) {
            int[] iArr2 = f368v0;
            m310a.getLocationInWindow(iArr2);
            i = m310a.getWidth();
            f2 = (iArr2[0] - iArr[0]) - f265G0.getLeft();
        } else {
            i = -1;
            f2 = 0.0f;
        }
        ViewGroup.LayoutParams layoutParams = f265G0.getLayoutParams();
        if (layoutParams.width != i) {
            layoutParams.width = i;
            f265G0.setLayoutParams(layoutParams);
        }
        if (f265G0.getTranslationX() != f2) {
            f265G0.setTranslationX(f2);
        }
        float m325b = m325b(f346o, iArr);
        if (Float.isNaN(m325b)) {
            m319a(false, 0.0f);
            return;
        }
        float m304a = m325b - m304a(f283P0 + 60);
        int m304a2 = m304a(52);
        if (f289S0 == 3 && f265G0.getWidth() > 0) {
            float width = f265G0.getWidth() / f293U0;
            m304a2 = Math.round(f295V0 * width);
            m304a = ((m325b - (width * f297W0)) - (m304a2 / 2.0f)) - m304a(f283P0);
        }
        if (layoutParams.height != m304a2) {
            layoutParams.height = m304a2;
            f265G0.setLayoutParams(layoutParams);
        }
        f265G0.setTranslationY(m304a);
        float f3 = f286R;
        m319a(true, f3 * f3 * (3.0f - (f3 * 2.0f)));
        float f4 = f286R;
        int round = ((Math.round((f310c.getResources().getDisplayMetrics().density * 28.0f) * (f301Y0 - ((f4 * f4) * (3.0f - (f4 * 2.0f))))) + 1) / 2) * 2;
        if (round != f359s0) {
            h hVar = f265G0;
            if (round == 0) {
                createBlurEffect = null;
            } else {
                float f5 = round;
                createBlurEffect = RenderEffect.createBlurEffect(f5, f5, Shader.TileMode.CLAMP);
            }
            hVar.setRenderEffect(createBlurEffect);
            f359s0 = round;
        }
    }

    /* renamed from: o0 */
    private static void m380o0() {
        h hVar;
        View view = f346o;
        if (view == null || view.getHeight() == 0 || f316e == null) {
            return;
        }
        if (!C0017h.m444b() || Float.isNaN(f290T)) {
            float f2 = 0.0f;
            if (m323a0() > 0.0f) {
                m311a(f316e.getHeight());
                return;
            }
            int[] iArr = new int[2];
            f310c.getLocationInWindow(iArr);
            view.getLocationInWindow(new int[2]);
            int i = 0;
            try {
                f2 = ((Number) C0009j.m200a((Object) view, "getTopPadding", new Object[0])).floatValue();
            } catch (Throwable th) {
            }
            float m335c = (((r4[1] - iArr[1]) + f2) + m335c(view, f2)) - f313d.getTranslationY();
            if (f288S >= 0.95f && f286R >= 0.95f) {
                if (Float.isNaN(f294V)) {
                    f294V = m335c;
                }
                try {
                    i = ((Number) view.getClass().getMethod("getOwnScrollY", null).invoke(view, null)).intValue();
                } catch (Throwable th2) {
                }
                if (i > 0) {
                    float m325b = m325b(view, iArr);
                    if (!Float.isNaN(m325b)) {
                        m325b -= f313d.getTranslationY();
                    }
                    if (!Float.isNaN(m325b)) {
                        m335c = Math.min(f294V, Math.max((f294V - i) - (f310c.getResources().getDisplayMetrics().density * 16.0f), m325b));
                    }
                } else {
                    m335c = f294V;
                }
            }
            if (f267H0 && (hVar = f265G0) != null && f263F0) {
                hVar.getLocationInWindow(new int[2]);
                m335c = Math.min(m335c, (r1[1] - iArr[1]) - f313d.getTranslationY());
            }
            m311a(m335c);
        }
    }

    /* renamed from: p0 */
    static void m383p0() {
        FrameLayout frameLayout = f310c;
        C0019j.m454a(frameLayout, f320f0, f286R, f332j0 && frameLayout != null && m288L() && !m291O());
    }

    /* renamed from: q0 */
    private static void m386q0() {
        View view = f346o;
        if (view == null || f313d == null) {
            return;
        }
        if (f349p != view) {
            m350e0();
            View view2 = f346o;
            f349p = view2;
            f352q = view2.getTranslationY();
            f355r = f346o.getTranslationX();
            f358s = f346o.getAlpha();
        }
        float translationY = f352q + f313d.getTranslationY();
        if (f346o.getTranslationY() != translationY) {
            f346o.setTranslationY(translationY);
        }
        float alpha = f313d.getAlpha();
        if (f346o.getAlpha() != alpha) {
            f346o.setAlpha(alpha);
        }
    }

    /* renamed from: r0 */
    private static void m388r0() {
        View m309a = m309a(f307b, "keyguard_status_bar");
        if (m309a == null || m309a == f343n || m309a.getWidth() <= 0 || m309a.getHeight() <= 0) {
            return;
        }
        g gVar = f343n;
        if (gVar.f389a != m309a) {
            gVar.f389a = m309a;
            gVar.invalidate();
        }
    }

    /* renamed from: s0 */
    private static void m390s0() {
        ViewTreeObserver viewTreeObserver = f314d0;
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            f314d0.removeOnPreDrawListener(f298X);
            f314d0.removeOnGlobalLayoutListener(f300Y);
        }
        f314d0 = null;
    }

    /* renamed from: t0 */
    private static void m392t0() {
        ViewGroup viewGroup = f307b;
        if (viewGroup == null || f314d0 != null) {
            return;
        }
        ViewTreeObserver viewTreeObserver = viewGroup.getViewTreeObserver();
        f314d0 = viewTreeObserver;
        viewTreeObserver.addOnPreDrawListener(f298X);
        f314d0.addOnGlobalLayoutListener(f300Y);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public static /* synthetic */ void m396x() {
        m299W();
    }

    /* renamed from: c */
    public static void m340c(boolean z) {
        if (f323g0 == z) {
            return;
        }
        f323g0 = z;
        f302Z = true;
        m356g0();
    }

    /* renamed from: d */
    public static void m345d(boolean z) {
        if (!C0007h.m181w()) {
            m297U();
            return;
        }
        f253A0 = z;
        if (z) {
            if (f266H == null || f282P == null) {
                m283G();
            }
            m287K();
            return;
        }
        if (f286R <= 0.0f) {
            m284H();
        } else {
            m353f0();
        }
    }

    /* renamed from: e */
    public static void m349e(boolean z) {
        if (f257C0 == z) {
            return;
        }
        f257C0 = z;
        ImageView imageView = f340m;
        if (imageView != null) {
            imageView.setVisibility(8);
            f308b0 = null;
        }
    }

    /* renamed from: f */
    static int m351f(View view) {
        float m378o = m378o(view);
        if (m378o <= 0.5f) {
            return 0;
        }
        try {
            float floatValue = ((Number) C0009j.m211b(view, "mContentHeight")).floatValue();
            float m381p = m381p(view);
            return Math.max(0, (int) Math.ceil(Math.min(m378o, Math.max(0.0f, (floatValue + m378o) - m381p) - Math.max(0.0f, floatValue - m381p))));
        } catch (Throwable th) {
            return Math.max(0, (int) Math.ceil(m378o));
        }
    }

    /* renamed from: g */
    private static View m354g(View view) {
        Object m211b;
        try {
            m211b = C0009j.m211b(C0009j.m211b(f316e, "mMiuiClockController"), "mClockView");
        } catch (Throwable th) {
        }
        if (m211b.getClass().getMethod("getNotificationClockTopView", null).invoke(m211b, null) != view) {
            return null;
        }
        Object invoke = m211b.getClass().getMethod("getAnimationContainer", null).invoke(m211b, null);
        if ((invoke instanceof View) && m358h((View) invoke)) {
            return (View) invoke;
        }
        return null;
    }

    /* renamed from: h */
    private static boolean m358h(View view) {
        View view2 = f316e;
        if (view2 != null && view != view2) {
            Object parent = view.getParent();
            while ((parent instanceof View) && parent != f316e) {
                parent = ((View) parent).getParent();
            }
            if (parent == f316e) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public static boolean m361i(View view) {
        return view != null && view == f316e;
    }

    /* renamed from: j */
    public static boolean m364j(View view) {
        if (f316e != null && view != null) {
            while (view != null) {
                if (view == f316e) {
                    return true;
                }
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
        }
        return false;
    }

    /* renamed from: k */
    static int m367k(View view) {
        FrameLayout frameLayout;
        if (!m373m(view) || (frameLayout = f310c) == null) {
            return 0;
        }
        return m305a(frameLayout.getMeasuredWidth(), f310c.getMeasuredHeight());
    }

    /* renamed from: l */
    static boolean m370l(View view) {
        if (m373m(f346o) && view != null) {
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                if (parent == f346o) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: m */
    static boolean m373m(View view) {
        return view != null && m288L() && view == f346o && C0007h.m182x();
    }

    /* renamed from: n */
    private static void m376n(View view) {
        if (view == null) {
            return;
        }
        try {
            C0009j.m200a((Object) view, "requestChildrenUpdate", new Object[0]);
        } catch (Throwable th) {
        }
    }

    /* renamed from: o */
    private static float m378o(View view) {
        if (m288L() && view == f346o) {
            try {
                return m335c(view, ((Number) view.getClass().getMethod("getTopPadding", null).invoke(view, null)).floatValue());
            } catch (Throwable th) {
            }
        }
        return 0.0f;
    }

    /* renamed from: p */
    static float m381p(View view) {
        float f2 = view.getResources().getDisplayMetrics().density * 16.0f;
        if (view.getRootWindowInsets() != null) {
            f2 = Math.max(f2, r1.getInsetsIgnoringVisibility(WindowInsets.Type.navigationBars()).bottom);
        }
        float f3 = ((!f332j0 || m292P()) ? f326h0 : f329i0) * view.getResources().getDisplayMetrics().density;
        if (m292P()) {
            f2 = view.getResources().getDisplayMetrics().density * 8.0f;
        }
        return Math.max(0.0f, (view.getHeight() - f2) - f3);
    }

    /* renamed from: q */
    static float m384q(View view) {
        float m381p = m381p(view);
        if (view == f349p) {
            m381p -= view.getTranslationY() - f352q;
        }
        return Math.max(0.0f, m381p);
    }

    /* renamed from: b */
    public static void m332b(boolean z) {
        f255B0 = z;
    }

    /* renamed from: a */
    public static void m316a(ViewGroup viewGroup) {
        if (f307b == viewGroup) {
            m356g0();
            return;
        }
        m300X();
        f307b = viewGroup;
        f302Z = true;
        if (C0007h.m181w()) {
            m392t0();
        }
        f317e0 = false;
        m356g0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static Bitmap m327b(String str, float f2) {
        int i;
        int round = Math.round(f2 * f306a1);
        if (str.equals(f366u1) && round == f369v1) {
            return f372w1;
        }
        f366u1 = str;
        f369v1 = round;
        f372w1 = null;
        if (str.length() > 524288) {
            C0009j.m209a("[IOSShade] header icon ignored: " + str.length() + " Base64 chars");
            return null;
        }
        byte[] decode = Base64.decode(str, 0);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(decode, 0, decode.length, options);
        int i2 = options.outWidth;
        if (i2 > 0 && (i = options.outHeight) > 0) {
            options.inSampleSize = C0018i.m448a(i2, i, round);
            options.inJustDecodeBounds = false;
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length, options);
            f372w1 = decodeByteArray;
            return decodeByteArray;
        }
        C0009j.m209a("[IOSShade] header icon is not an image");
        return null;
    }

    /* renamed from: c */
    private static void m339c(View view) {
        if (view == null) {
            return;
        }
        try {
            Object m211b = C0009j.m211b(view, "mListenerInfo");
            Object m211b2 = m211b == null ? null : C0009j.m211b(m211b, "mOnClickListener");
            if (m211b2 instanceof View.OnClickListener) {
                f287R0 = view;
                f285Q0 = (View.OnClickListener) m211b2;
                f335k0 = view;
            }
        } catch (Throwable th) {
            C0009j.m209a("[IOSShade] native clear action lookup unavailable: " + th);
        }
    }

    /* renamed from: e */
    private static float m347e(View view) {
        float m323a0 = m323a0();
        if (m323a0 <= 0.0f) {
            return 0.0f;
        }
        f316e.getLocationInWindow(new int[2]);
        view.getLocationInWindow(new int[2]);
        return ((r2[1] - f316e.getTranslationY()) + m323a0) - r1[1];
    }

    /* renamed from: a */
    public static void m312a(float f2, float f3, boolean z, View view) {
        if (!C0007h.m181w()) {
            m297U();
            return;
        }
        float f4 = f286R;
        float f5 = f288S;
        boolean m444b = C0017h.m444b();
        f286R = z ? Math.max(0.0f, Math.min(f301Y0, f2)) : 0.0f;
        float max = z ? Math.max(0.0f, Math.min(f301Y0, f3)) : 0.0f;
        f288S = max;
        C0017h.m434a(f5, max);
        f320f0 = view;
        if (f286R <= 0.0f) {
            g gVar = f343n;
            if (gVar != null) {
                gVar.m403b();
            }
            C0019j.m462d();
            FrameLayout frameLayout = f313d;
            if (frameLayout != null) {
                frameLayout.setAlpha(0.0f);
            }
            View view2 = f349p;
            if (view2 != null) {
                view2.setAlpha(0.0f);
            } else {
                m350e0();
            }
            C0022m.m480a();
            if (f4 > 0.0f) {
                C0022m.m502g(f346o);
            }
            if (f313d != null) {
                if (f266H == null || f282P == null) {
                    m283G();
                }
                m287K();
                return;
            }
            return;
        }
        ValueAnimator valueAnimator = f259D0;
        if (valueAnimator != null) {
            f259D0 = null;
            valueAnimator.cancel();
        }
        boolean z2 = f313d == null;
        if (!z2 || (!f317e0 && m278B())) {
            f313d.setAlpha(f286R);
            g gVar2 = f343n;
            if (gVar2 != null) {
                float f6 = f286R;
                gVar2.setAlpha(f6 * f6 * (3.0f - (f6 * 2.0f)));
            }
            if (z2) {
                m353f0();
            } else {
                f310c.invalidate();
            }
            if (C0017h.m444b()) {
                return;
            }
            if (f288S != f5 || m444b) {
                m376n(f346o);
            }
        }
    }

    /* renamed from: d */
    static void m344d(View view) {
        f258D = view;
        if (f310c != null && f346o == null && view.getRootView() == f310c.getRootView()) {
            f346o = view;
        }
    }

    /* renamed from: c */
    public static void m337c(int i) {
        int max = Math.max(-40, Math.min(64, i));
        if (f283P0 == max) {
            return;
        }
        f283P0 = max;
        if (f265G0 != null) {
            m377n0();
        }
    }

    /* renamed from: c */
    static float m335c(View view, float f2) {
        View view2;
        if (!m288L() || view != (view2 = f346o) || f310c == null || view2.getHeight() == 0) {
            return 0.0f;
        }
        float m347e = m347e(view);
        if (m347e > 0.0f) {
            float f3 = view.getResources().getDisplayMetrics().density;
            return Math.max(0.0f, (m347e + (f267H0 ? (f283P0 + 60) * f3 : 16.0f * f3)) - f2);
        }
        float m497e = C0022m.m497e(view);
        if (m497e <= 0.0f) {
            m497e = f310c.getResources().getDisplayMetrics().density * 160.0f;
        }
        return Math.max(0.0f, Math.max(f2, m381p(view) - m497e) - f2);
    }

    /* renamed from: b */
    public static void m330b(int i) {
        int max = Math.max(-40, Math.min(120, i));
        if (f326h0 == max) {
            return;
        }
        f326h0 = max;
        f294V = Float.NaN;
        f290T = Float.NaN;
        m376n(f346o);
    }

    /* renamed from: b */
    static float m324b(View view, float f2) {
        FrameLayout frameLayout;
        return (view != f349p || (frameLayout = f313d) == null) ? f2 : frameLayout.getAlpha();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ void m338c(ValueAnimator valueAnimator) {
        f265G0.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* renamed from: b */
    static boolean m333b(MotionEvent motionEvent) {
        if (m288L() && f346o != null && motionEvent != null && motionEvent.getActionMasked() == 0) {
            try {
                Class<?> cls = f346o.getClass();
                Class cls2 = Float.TYPE;
                Object invoke = cls.getMethod("getChildAtRawPosition", cls2, cls2).invoke(f346o, Float.valueOf(motionEvent.getRawX()), Float.valueOf(motionEvent.getRawY()));
                if (invoke instanceof View) {
                    if (((View) invoke).getVisibility() == 0) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
            }
        }
        return false;
    }

    /* renamed from: c */
    private static View m336c(View view, String str) {
        if (view == null) {
            return null;
        }
        if (view.getClass().getName().endsWith(str)) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View m336c = m336c(viewGroup.getChildAt(i), str);
                if (m336c != null) {
                    return m336c;
                }
            }
        }
        return null;
    }

    /* renamed from: b */
    static void m331b(View view) {
        f264G = view;
        if (m288L()) {
            m283G();
        }
    }

    /* renamed from: b */
    private static View m328b(View view, String str) {
        if (view == null) {
            return null;
        }
        try {
            if (view.getId() != -1) {
                if (str.equals(view.getResources().getResourceEntryName(view.getId()))) {
                    return view;
                }
            }
        } catch (Throwable th) {
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View m328b = m328b(viewGroup.getChildAt(i), str);
            if (m328b != null) {
                return m328b;
            }
        }
        return null;
    }

    /* renamed from: b */
    private static float m325b(View view, int[] iArr) {
        View m310a = m310a(view, iArr);
        if (m310a == null) {
            return Float.NaN;
        }
        m310a.getLocationInWindow(f368v0);
        return r0[1] - iArr[1];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m314a(View view, float f2, h hVar, float f3, float f4, View[] viewArr, float[] fArr, ValueAnimator valueAnimator) {
        RenderEffect createBlurEffect;
        RenderEffect createBlurEffect2;
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (view != null) {
            view.setAlpha(f2 * floatValue);
        }
        if (hVar != null) {
            float f5 = f301Y0 - floatValue;
            hVar.setAlpha(f3 * f5);
            if (floatValue >= 0.999f) {
                createBlurEffect2 = null;
            } else {
                float f6 = f5 * f4;
                createBlurEffect2 = RenderEffect.createBlurEffect(f6, f6, Shader.TileMode.CLAMP);
            }
            hVar.setRenderEffect(createBlurEffect2);
        }
        for (int i = 0; viewArr != null && i < viewArr.length; i++) {
            View view2 = viewArr[i];
            if (view2 != null) {
                view2.setAlpha((fArr == null ? 1.0f : fArr[i]) * floatValue);
                if (floatValue >= 0.999f) {
                    createBlurEffect = null;
                } else {
                    float f7 = (f301Y0 - floatValue) * f4;
                    createBlurEffect = RenderEffect.createBlurEffect(f7, f7, Shader.TileMode.CLAMP);
                }
                view2.setRenderEffect(createBlurEffect);
            }
        }
    }

    /* renamed from: a */
    public static void m321a(boolean z, int i, int i2, float f2, int i3, int i4, int i5, int i6, boolean z2, int i7, int i8, int i9, int i10, float f3, int i11, int i12, String str, String str2, String str3, int i13, int i14, int i15) {
        String str4;
        String str5;
        f267H0 = z;
        f289S0 = Math.max(0, Math.min(3, i));
        f327h1 = Math.max(0, Math.min(2, i2));
        f330i1 = Math.max(0.0f, Math.min(60.0f, f2));
        f333j1 = i3;
        f336k1 = i4;
        f339l1 = Math.max(0, Math.min(100, i5));
        f342m1 = Math.max(0, Math.min(120, i6));
        f345n1 = z2;
        f348o1 = i7;
        f351p1 = Math.max(0, Math.min(100, i8));
        f354q1 = Math.max(0, Math.min(120, i9));
        f357r1 = Math.max(0, Math.min(120, i10));
        f360s1 = Math.max(0.0f, Math.min(0.4f, f3));
        f363t1 = Math.max(-100, Math.min(100, i11));
        f269I0 = Math.max(0, Math.min(6, i12));
        if (str != null) {
            str4 = str;
        } else {
            str4 = "";
        }
        f271J0 = str4;
        if (str2 != null) {
            str5 = str2;
        } else {
            str5 = "";
        }
        f273K0 = str5;
        f275L0 = str3 != null ? str3 : "";
        f277M0 = Math.max(-60, Math.min(200, i13));
        f279N0 = Math.max(-60, Math.min(200, i14));
        f281O0 = Math.max(0, Math.min(48, i15));
        f302Z = true;
        h hVar = f265G0;
        if (hVar != null) {
            if (!z) {
                m302Z();
            } else {
                hVar.m430c();
                m377n0();
            }
        }
        m356g0();
    }

    /* renamed from: a */
    static void m317a(Object obj) {
        try {
            Object m211b = C0009j.m211b(obj, "dismissView");
            if (m211b instanceof View) {
                m339c((View) m211b);
                f302Z = true;
                m356g0();
            }
        } catch (Throwable th) {
            C0009j.m209a("[IOSShade] native clear action capture unavailable: " + th);
        }
    }

    /* renamed from: a */
    static void m318a(boolean z) {
        Boolean bool = f353q0;
        if (bool == null || bool.booleanValue() != z) {
            f353q0 = Boolean.valueOf(z);
            C0007h.m138a(z);
            if (z) {
                C0019j.m462d();
                C0007h.m108H();
            } else {
                C0007h.m107G();
            }
            f302Z = true;
            m356g0();
        }
    }

    /* renamed from: a */
    public static void m320a(boolean z, int i) {
        int max = Math.max(-40, Math.min(120, i));
        if (f332j0 == z && f329i0 == max) {
            return;
        }
        f332j0 = z;
        f329i0 = max;
        f294V = Float.NaN;
        f290T = Float.NaN;
        m383p0();
        m376n(f346o);
    }

    /* renamed from: a */
    private static float m303a(View view, float f2) {
        float f3 = 0.0f;
        if (view != null && view.getVisibility() == 0) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    View childAt = viewGroup.getChildAt(i);
                    f3 = Math.max(f3, m303a(childAt, ((childAt.getTop() + f2) + childAt.getTranslationY()) - viewGroup.getScrollY()));
                }
                return f3;
            }
            HashMap<Class<?>, Method> hashMap = f375x1;
            Method method = hashMap.get(view.getClass());
            if (method == null && !hashMap.containsKey(view.getClass())) {
                try {
                    method = view.getClass().getMethod("getTextBoundsWithPosition", null);
                } catch (Throwable th) {
                }
                f375x1.put(view.getClass(), method);
            }
            if (method == null) {
                return 0.0f;
            }
            try {
                Object invoke = method.invoke(view, null);
                if ((invoke instanceof RectF) && ((RectF) invoke).bottom > 0.0f) {
                    return f2 + ((RectF) invoke).bottom;
                }
            } catch (Throwable th2) {
            }
        }
        return 0.0f;
    }

    /* renamed from: a */
    static boolean m322a(MotionEvent motionEvent) {
        h hVar;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            f377y0 = m290N() && (hVar = f265G0) != null && f263F0 && hVar.m428a(motionEvent);
        }
        if (!f377y0) {
            return false;
        }
        if (actionMasked == 1 || actionMasked == 3) {
            f377y0 = false;
        }
        h hVar2 = f265G0;
        if (hVar2 == null) {
            return true;
        }
        hVar2.getLocationOnScreen(f371w0);
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation((motionEvent.getRawX() - motionEvent.getX()) - r3[0], (motionEvent.getRawY() - motionEvent.getY()) - r3[1]);
        hVar2.dispatchTouchEvent(obtain);
        obtain.recycle();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0080 A[ORIG_RETURN, RETURN] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void m315a(View view, ArrayList<View> arrayList) {
        if (view == null) {
            return;
        }
        String name = view.getClass().getName();
        boolean z = true;
        boolean z2 = name.endsWith(".NotificationDismissView") || name.endsWith(".DismissView") || name.endsWith(".CircleAndTickAnimView");
        int id = view.getId();
        if (!z2 && id != -1) {
            try {
                String lowerCase = view.getResources().getResourceEntryName(id).toLowerCase(Locale.ROOT);
                if (!lowerCase.contains("dismiss_view") && !lowerCase.contains("clear_all")) {
                    if (!lowerCase.equals("notification_dismiss_view")) {
                        z = false;
                    }
                }
            } catch (Throwable th) {
            }
            if (z && !arrayList.contains(view)) {
                arrayList.add(view);
            }
            if (view instanceof ViewGroup) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                m315a(viewGroup.getChildAt(i), arrayList);
            }
            return;
        }
        z = z2;
        if (z) {
            arrayList.add(view);
        }
        if (view instanceof ViewGroup) {
        }
    }

    /* renamed from: a */
    private static void m319a(boolean z, float f2) {
        h hVar = f265G0;
        if (hVar == null) {
            return;
        }
        if (f263F0 == z) {
            if (f261E0 == null) {
                if (!z) {
                    f2 = 0.0f;
                }
                hVar.setAlpha(f2);
                return;
            }
            return;
        }
        f263F0 = z;
        if (!z) {
            hVar.m427a(false);
        }
        ValueAnimator valueAnimator = f261E0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        float alpha = f265G0.getAlpha();
        if (!z) {
            f2 = 0.0f;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(alpha, f2);
        f261E0 = ofFloat;
        ofFloat.setDuration(180L);
        f261E0.setInterpolator(new DecelerateInterpolator(1.5f));
        f261E0.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: btm.m.os4.systemuihook.newnotificationcenter.e$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                C0014e.m338c(valueAnimator2);
            }
        });
        f261E0.addListener(new b());
        f261E0.start();
    }

    /* renamed from: a */
    private static int m304a(int i) {
        FrameLayout frameLayout = f310c;
        return frameLayout == null ? i : Math.round(i * frameLayout.getResources().getDisplayMetrics().density);
    }

    /* renamed from: a */
    private static int m305a(int i, int i2) {
        if (i <= i2 || i2 <= 0) {
            return 0;
        }
        float f2 = f310c.getResources().getDisplayMetrics().density;
        return Math.max(Math.round(i * 0.46f), Math.min(i - Math.round(32.0f * f2), Math.round(f2 * 400.0f)));
    }

    /* renamed from: a */
    private static void m311a(float f2) {
        if (Float.isNaN(f290T) || Math.abs(f2 - f290T) > f301Y0) {
            try {
                Class<?> cls = Class.forName("com.miui.systemui.notification.data.repository.NotificationTopChangeType", false, f316e.getClass().getClassLoader());
                Object obj = cls.getField("NOTIFS_CHANGED").get(null);
                Method method = f316e.getClass().getMethod("notifStateChange", Float.TYPE, Boolean.TYPE, cls);
                ThreadLocal<Boolean> threadLocal = f296W;
                Boolean bool = Boolean.TRUE;
                threadLocal.set(bool);
                try {
                    method.invoke(f316e, Float.valueOf(f2), bool, obj);
                    f290T = f2;
                    threadLocal.remove();
                } catch (Throwable th) {
                    f296W.remove();
                    throw th;
                }
            } catch (Throwable th2) {
            }
        }
    }

    /* renamed from: a */
    private static View m310a(View view, int[] iArr) {
        View view2 = null;
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int[] iArr2 = f368v0;
        float f2 = Float.NaN;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            String name = childAt.getClass().getName();
            if (childAt.getVisibility() == 0 && childAt.getHeight() > 0 && (name.endsWith(".ExpandableNotificationRow") || name.endsWith(".MiuiMediaHeaderView"))) {
                childAt.getLocationInWindow(iArr2);
                float f3 = iArr2[1] - iArr[1];
                if (Float.isNaN(f2) || f3 < f2) {
                    view2 = childAt;
                    f2 = f3;
                }
            }
        }
        return view2;
    }

    /* renamed from: a */
    private static void m313a(View view) {
        try {
            Method declaredMethod = View.class.getDeclaredMethod("disableMiBackgroundContainBelow", Boolean.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(view, Boolean.FALSE);
        } catch (Throwable th) {
            C0009j.m209a("[IOSShade] clock backdrop containment unavailable: " + th);
        }
    }

    /* renamed from: a */
    private static View m309a(View view, String str) {
        int identifier;
        if (view == null || (identifier = view.getResources().getIdentifier(str, "id", "com.android.systemui")) == 0) {
            return null;
        }
        return view.findViewById(identifier);
    }
}
