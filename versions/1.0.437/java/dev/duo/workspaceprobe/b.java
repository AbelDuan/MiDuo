package dev.duo.workspaceprobe;

/* loaded from: classes.dex */
public final class b extends io.github.libxposed.api.XposedModule {
    private static final int A = 136;
    private static final int B = 96;
    static final java.lang.String B0 = "dev.duo.workspaceprobe.SEARCH";
    private static final int C = 20;
    private static volatile java.lang.String C0 = null;
    private static final int D = 12;
    private static final int D0 = 10;
    private static final int E = 96;
    private static final int E0 = 12;
    private static final int F = 20;
    private static final int F0 = 13;
    private static final int G = 136;
    private static final int G0 = 1800000;
    private static final int H = 20;
    private static final int I = 20;
    private static final int J = 20;
    private static final int L = 999;
    private static java.lang.reflect.Method N = null;
    private static java.lang.reflect.Method O = null;
    private static java.lang.reflect.Method P = null;
    private static final float Q = 1061.0f;
    static final int R = 2364;
    static final int S = 1672;
    private static final int T = 1175;
    private static final float U = 21.5f;
    private static final float V = 114.0f;
    private static final int W = 47;
    private static final int X = 314;
    private static final int Y = 2154;
    private static final int Z = 1486;
    private static final int a = -789517;
    private static final int a0 = -51;
    private static final int b = -16777216;
    private static final int b0 = -62;
    private static volatile java.lang.reflect.Field c = null;
    private static final int c0 = 44;
    private static java.lang.reflect.Field d = null;
    private static final int d0 = 200;
    private static java.lang.reflect.Field e = null;
    private static final int e0 = 120;
    private static java.lang.reflect.Field f = null;
    private static java.lang.reflect.Field g = null;
    private static final int g0 = 402;
    private static java.lang.reflect.Method h = null;
    private static final int h0 = 24;
    private static java.lang.reflect.Method i = null;
    private static final int i0 = 120;
    private static final int j = 3;
    private static final int j0 = 150;
    private static final int k = 300;
    private static final int k0 = 30;
    private static final int l = 33;
    private static final int l0 = 424;
    private static final int m = 30;
    private static final int m0 = 128;
    private static volatile int n = 0;
    private static final int n0 = 170;
    private static volatile int o = 0;
    private static final int o0 = 170;
    private static final int p0 = 21;
    private static final int q = 0;
    private static final float q0 = 54.0f;
    private static final int r = 1;
    private static final int r0 = 411;
    private static final int s = 2;
    private static final int s0 = 40;
    private static final int t = 3;
    private static final int t0 = 2000;
    private static final int u = 4;
    private static final int u0 = 3;
    private static final int v = 5;
    private static final int v0 = 963;
    private static final int w = 6;
    private static java.lang.reflect.Method w0 = null;
    private static final int x = 30;
    private static int x0 = 0;
    private static final int y = 120;
    private static final int z = 16;
    private static java.lang.reflect.Method z0;
    private boolean A1;
    private final java.util.Map<java.lang.Integer, java.lang.Integer> A2;
    private int A3;
    private int A4;
    private dev.duo.workspaceprobe.b.R A5;
    private boolean A6;
    private volatile android.app.ActivityManager.RunningTaskInfo B1;
    private volatile java.lang.String B2;
    private int B3;
    private final java.lang.ThreadLocal<java.lang.Boolean> B4;
    private dev.duo.workspaceprobe.b.R B5;
    private boolean B6;
    private dev.duo.workspaceprobe.b.U C1;
    private volatile java.lang.reflect.Method C2;
    private final java.util.Map<android.view.View, java.lang.Object[]> C3;
    private volatile long C4;
    private dev.duo.workspaceprobe.b.R C5;
    private long C6;
    final android.os.Handler D1;
    private volatile java.lang.reflect.Method D2;
    private int D3;
    private android.animation.ValueAnimator D4;
    private dev.duo.workspaceprobe.b.R D5;
    private long D6;
    private android.view.SurfaceControl E1;
    private volatile int E2;
    private final android.view.View.OnLayoutChangeListener E3;
    private final dev.duo.workspaceprobe.o E4;
    private final java.util.Set<dev.duo.workspaceprobe.b.R> E5;
    private long E6;
    private boolean F1;
    private int F2;
    private final android.view.ViewTreeObserver.OnPreDrawListener F3;
    private android.graphics.drawable.GradientDrawable F4;
    private dev.duo.workspaceprobe.b.N F5;
    private final java.lang.Object F6;
    volatile android.view.SurfaceControl G1;
    private java.lang.String G2;
    private android.view.ViewTreeObserver G3;
    private java.lang.Object G4;
    private dev.duo.workspaceprobe.b.R G5;
    private volatile boolean G6;
    private java.lang.String H0;
    private volatile java.lang.Object H1;
    private java.lang.String H2;
    private final android.view.View.OnAttachStateChangeListener H3;
    private java.lang.Object H4;
    private final dev.duo.workspaceprobe.b.R[] H5;
    private java.util.ArrayList<android.view.SurfaceControl> H6;
    java.lang.String I1;
    private final java.util.Map<java.lang.String, dev.duo.workspaceprobe.b.i0> I2;
    private android.service.notification.NotificationListenerService I3;
    private long I4;
    private final android.widget.ImageView[] I5;
    public java.util.function.Consumer<long[]> I6;
    int J1;
    private final java.util.Map<java.lang.String, java.lang.Integer> J2;
    private final java.lang.Runnable J3;
    private boolean J4;
    private final android.widget.ImageView[] J5;
    public java.util.function.Consumer<android.view.View> J6;
    private volatile long K1;
    private final java.lang.Runnable K2;
    private volatile java.util.List<java.lang.String> K3;
    private float K4;
    private final dev.duo.workspaceprobe.b.Q[] K5;
    public java.lang.Runnable K6;
    boolean L1;
    private java.lang.String L2;
    private volatile boolean L3;
    private float L4;
    private final java.util.Set<java.lang.String> L5;
    private int L6;
    private boolean M1;
    private int M2;
    private boolean M3;
    private volatile java.lang.Object M4;
    private float M5;
    private boolean M6;
    private boolean N1;
    private java.lang.String N2;
    private volatile int[] N3;
    private java.lang.Object N4;
    private float N5;
    private boolean N6;
    boolean O1;
    private java.lang.String O2;
    private volatile java.lang.Boolean O3;
    private java.lang.Object O4;
    private boolean O5;
    private boolean O6;
    private boolean P1;
    private java.lang.String P2;
    private java.util.List<java.lang.String> P3;
    private java.lang.reflect.Method P4;
    private final java.util.Set<java.lang.Object> P5;
    private final java.lang.Runnable P6;
    boolean Q1;
    private volatile long Q2;
    private java.util.List<java.lang.String> Q3;
    private java.lang.reflect.Method Q4;
    private final java.util.Map<java.lang.Object, java.lang.Long> Q5;
    private final java.util.Set<java.lang.Integer> Q6;
    private final java.util.Set<java.lang.Object> R1;
    private volatile long R2;
    private java.util.List<java.lang.String> R3;
    private java.lang.reflect.Method R4;
    private long R5;
    private boolean R6;
    private volatile boolean S0;
    private int S1;
    private long S2;
    private volatile java.util.List<java.lang.String> S3;
    private boolean S4;
    private final java.util.ArrayDeque<dev.duo.workspaceprobe.b.K> S5;
    private long S6;
    private volatile boolean T0;
    private final java.util.concurrent.ExecutorService T1;
    private boolean T2;
    private int T3;
    private boolean T4;
    private final java.util.Map<java.lang.Integer, dev.duo.workspaceprobe.b.K> T5;
    private float T6;
    private volatile android.os.Handler U0;
    private java.lang.reflect.Method U1;
    private boolean U2;
    private volatile int U3;
    private android.view.MotionEvent U4;
    private final java.util.Map<java.lang.Integer, dev.duo.workspaceprobe.b.L> U5;
    private android.animation.ValueAnimator U6;
    private java.lang.Object V0;
    private java.lang.Runnable V1;
    private boolean V2;
    private volatile boolean V3;
    private java.lang.reflect.Constructor<?> V4;
    private final java.util.Map<java.lang.Integer, java.lang.Integer> V5;
    private dev.duo.workspaceprobe.b.R V6;
    private volatile boolean W1;
    private boolean W2;
    private boolean W3;
    private java.lang.reflect.Field W4;
    private final java.util.Map<java.lang.Integer, int[]> W5;
    private float W6;
    private volatile java.util.Map<?, ?> X0;
    private int X1;
    private boolean X2;
    private int X3;
    private java.lang.reflect.Field X4;
    private volatile boolean X5;
    private float X6;
    private volatile boolean Y0;
    private volatile int Y1;
    private boolean Y2;
    private boolean Y3;
    private boolean Y4;
    private int Y5;
    private boolean Y6;
    dev.duo.workspaceprobe.b.h0 Z0;
    private volatile android.content.ComponentName Z1;
    private int Z2;
    private dev.duo.workspaceprobe.b.d0 Z3;
    private boolean Z4;
    private volatile java.lang.String[] Z5;
    private boolean Z6;
    private dev.duo.workspaceprobe.b.f0 a1;
    private volatile int a2;
    private int a3;
    private dev.duo.workspaceprobe.b.b0 a4;
    private boolean a5;
    volatile java.lang.String[] a6;
    private final java.util.Set<dev.duo.workspaceprobe.b.J> a7;
    private android.telephony.TelephonyCallback b1;
    private boolean b2;
    private int b3;
    private dev.duo.workspaceprobe.b.X b4;
    private boolean b5;
    private final java.util.Map<java.lang.Integer, java.lang.Boolean> b6;
    private boolean b7;
    private java.lang.String c2;
    private int c3;
    private float c4;
    private long c5;
    private boolean c6;
    private boolean c7;
    private java.lang.String d2;
    private dev.duo.workspaceprobe.b.R d3;
    private dev.duo.workspaceprobe.q d4;
    private int d5;
    private final java.util.Map<java.lang.Integer, java.lang.Boolean> d6;
    private boolean d7;
    private android.hardware.SensorManager e1;
    private boolean e2;
    private dev.duo.workspaceprobe.b.R e3;
    private boolean e4;
    private int e5;
    private boolean e6;
    private final android.content.BroadcastReceiver e7;
    private android.hardware.Sensor f1;
    private boolean f2;
    private android.widget.TextView f3;
    private boolean f4;
    private android.hardware.display.DisplayManager.DisplayListener f5;
    private boolean f6;
    private final android.database.ContentObserver f7;
    private android.hardware.SensorEventListener g1;
    private long g2;
    private android.widget.TextView g3;
    private boolean g4;
    private boolean g5;
    private int g6;
    private final java.util.Map<java.lang.String, java.lang.Boolean> g7;
    private volatile boolean h1;
    private long h2;
    private android.widget.TextView h3;
    private int h4;
    private boolean h5;
    private int h6;
    private boolean h7;
    private long i2;
    private android.widget.TextView i3;
    private boolean i4;
    private boolean i5;
    private boolean i6;
    private boolean i7;
    private int j2;
    private android.widget.TextView j3;
    private boolean j4;
    private boolean j5;
    private boolean j6;
    private java.lang.Object k1;
    private volatile android.content.SharedPreferences k2;
    private final java.lang.Runnable k3;
    private volatile int k4;
    private boolean k5;
    private boolean k6;
    private java.lang.Object l1;
    private volatile long l2;
    private boolean l3;
    private volatile long l4;
    private int l5;
    private int l6;
    private java.lang.Object m1;
    private volatile boolean m2;
    private android.widget.FrameLayout m3;
    private final java.util.Set<java.lang.Runnable> m4;
    private int m5;
    private int m6;
    private java.util.concurrent.Executor n1;
    private volatile boolean n2;
    private android.widget.ImageView n3;
    private final java.util.List<dev.duo.workspaceprobe.b.R> n4;
    private java.lang.Object n5;
    private float n6;
    private java.lang.reflect.Method o1;
    private final java.util.Map<java.lang.Integer, java.lang.Integer> o2;
    private android.widget.ImageView o3;
    private final java.util.List<dev.duo.workspaceprobe.b.R> o4;
    private android.hardware.SensorManager o5;
    private long o6;
    private java.lang.reflect.Method p1;
    private final java.util.Map<java.lang.Integer, android.animation.ValueAnimator> p2;
    private boolean p3;
    android.content.Context p4;
    private android.hardware.Sensor p5;
    private long p6;
    private java.lang.reflect.Method q1;
    private volatile java.util.Map<?, ?> q2;
    private boolean q3;
    private android.os.PowerManager q4;
    private android.hardware.SensorEventListener q5;
    private long q6;
    private java.lang.reflect.Method r1;
    private java.lang.reflect.Field[] r2;
    private boolean r3;
    private android.app.KeyguardManager r4;
    private int r5;
    private long r6;
    private java.lang.reflect.Method s1;
    private final java.util.Map<java.lang.Integer, java.lang.Integer> s2;
    private boolean s3;
    private volatile boolean s4;
    private boolean s5;
    private long s6;
    private java.lang.reflect.Method t1;
    private final java.util.Set<java.lang.Integer> t2;
    private float t3;
    private boolean t4;
    private boolean t5;
    private long t6;
    private final java.lang.ThreadLocal<java.lang.Integer> u2;
    private float u3;
    private android.view.SurfaceControl u4;
    private boolean u5;
    private volatile dev.duo.workspaceprobe.b.O u6;
    private volatile boolean v1;
    private volatile boolean v2;
    private android.view.SurfaceControl v3;
    private float v4;
    private boolean v5;
    private volatile java.util.concurrent.ExecutorService v6;
    private long w1;
    private boolean w2;
    private java.lang.ClassLoader w3;
    private float w4;
    private java.lang.Object w5;
    private volatile long w6;
    private volatile boolean x1;
    private java.lang.String x2;
    private android.graphics.Rect x3;
    private float x4;
    private java.lang.Process x5;
    private long x6;
    private int y2;
    private android.graphics.Rect y3;
    private long y4;
    private boolean y5;
    private final java.lang.Object y6;
    private int z2;
    private int z3;
    private boolean z4;
    private dev.duo.workspaceprobe.b.g0 z5;
    private dev.duo.workspaceprobe.b.P z6;
    private static final android.net.Uri p = android.net.Uri.parse("content://dev.duo.hookprobe.config/statusStyles");
    private static final float[] K = {1.0f, 0.985f, 0.94f, 0.86f, 0.75f, 0.62f, 0.48f, 0.35f, 0.23f, 0.13f, 0.06f, 0.015f, 0.0f};
    private static final android.view.animation.Interpolator M = new android.view.animation.PathInterpolator(0.2f, 0.0f, 0.0f, 1.0f);
    private static final long[] f0 = {2000, 5000};
    private static final android.animation.ArgbEvaluator y0 = new android.animation.ArgbEvaluator();
    private static final java.util.Map<java.lang.Class<?>, java.lang.Object> A0 = new java.util.concurrent.ConcurrentHashMap();
    private final java.util.Map<java.lang.Integer, java.lang.Boolean> I0 = new java.util.concurrent.ConcurrentHashMap();
    private final java.util.Map<java.lang.Integer, android.app.ActivityManager.RunningTaskInfo> J0 = new java.util.concurrent.ConcurrentHashMap();
    private final java.util.Set<java.lang.Integer> K0 = java.util.concurrent.ConcurrentHashMap.newKeySet();
    private final java.util.Set<java.lang.Integer> L0 = java.util.concurrent.ConcurrentHashMap.newKeySet();
    private final dev.duo.workspaceprobe.a M0 = new dev.duo.workspaceprobe.a();
    private final java.util.concurrent.ExecutorService N0 = java.util.concurrent.Executors.newSingleThreadExecutor(new java.util.concurrent.ThreadFactory() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda49
        @Override // java.util.concurrent.ThreadFactory
        public final java.lang.Thread newThread(java.lang.Runnable runnable) {
            java.lang.Thread a2;
            a2 = dev.duo.workspaceprobe.b.a(runnable);
            return a2;
        }
    });
    private final java.util.concurrent.ExecutorService O0 = java.util.concurrent.Executors.newSingleThreadExecutor(new java.util.concurrent.ThreadFactory() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda50
        @Override // java.util.concurrent.ThreadFactory
        public final java.lang.Thread newThread(java.lang.Runnable runnable) {
            java.lang.Thread b2;
            b2 = dev.duo.workspaceprobe.b.b(runnable);
            return b2;
        }
    });
    private final java.util.Set<java.lang.String> P0 = java.util.concurrent.ConcurrentHashMap.newKeySet();
    private final java.util.Map<java.lang.String, java.lang.Long> Q0 = new java.util.concurrent.ConcurrentHashMap();
    private final java.util.concurrent.atomic.AtomicBoolean R0 = new java.util.concurrent.atomic.AtomicBoolean();
    private final java.util.Set<java.lang.Integer> W0 = java.util.concurrent.ConcurrentHashMap.newKeySet();
    private final dev.duo.workspaceprobe.c c1 = new dev.duo.workspaceprobe.c();
    private int d1 = 1;
    private volatile int i1 = -1;
    private float j1 = Float.NaN;
    private volatile boolean u1 = true;
    private volatile java.lang.String y1 = "";
    private volatile java.lang.String z1 = "";

    class A implements android.net.TetheringManager.StopTetheringCallback {
        A() {
        }

        public void onStopTetheringFailed(int i) {
            dev.duo.workspaceprobe.b.this.a("热点", (java.lang.Throwable) new java.lang.IllegalStateException("stop failed " + i));
        }
    }

    class B implements android.net.TetheringManager.StartTetheringCallback {
        B() {
        }

        public void onTetheringFailed(int i) {
            dev.duo.workspaceprobe.b.this.a("热点", (java.lang.Throwable) new java.lang.IllegalStateException("start failed " + i));
        }

        public void onTetheringStarted() {
            android.util.Log.w("DuoRail", "Rail hotspot on");
        }
    }

    class C extends android.database.ContentObserver {
        C(android.os.Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            dev.duo.workspaceprobe.b.this.X1();
        }
    }

    class D extends android.database.ContentObserver {
        D(android.os.Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            dev.duo.workspaceprobe.b.this.W1();
        }
    }

    class E extends android.database.ContentObserver {
        E(android.os.Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            dev.duo.workspaceprobe.b.this.P1();
        }
    }

    class F extends android.database.ContentObserver {
        F(android.os.Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            if (dev.duo.hookprobe.J.d(dev.duo.workspaceprobe.b.this.Z5) || dev.duo.hookprobe.J.g(dev.duo.workspaceprobe.b.this.a6)) {
                dev.duo.workspaceprobe.b.this.P1();
            }
        }
    }

    class G extends android.database.ContentObserver {
        G(android.os.Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            dev.duo.workspaceprobe.b.this.S1();
        }
    }

    class H extends android.database.ContentObserver {
        H(android.os.Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            dev.duo.workspaceprobe.b.this.a2();
        }
    }

    class I extends android.database.ContentObserver {
        I(android.os.Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, android.net.Uri uri) {
            if (uri == null || uri.getPathSegments().size() != 2) {
                return;
            }
            dev.duo.workspaceprobe.b.this.h(uri.getLastPathSegment());
        }
    }

    static final class J extends android.view.View {
        static final int o = 136;
        private static final float p = 58.0f;
        private static final float q = 4.5f;
        final java.lang.String a;
        private final dev.duo.workspaceprobe.b b;
        private java.lang.String c;
        private java.lang.Boolean d;
        private final dev.duo.workspaceprobe.b.N e;
        private final android.graphics.Paint f;
        private final android.graphics.Paint g;
        private final android.graphics.Path h;
        private final android.graphics.Path i;
        private android.graphics.drawable.Drawable j;
        private boolean k;
        private boolean l;
        private int m;
        private float n;

        J(dev.duo.workspaceprobe.b bVar, android.content.Context context, java.lang.String str) {
            super(context);
            dev.duo.workspaceprobe.b.N n = new dev.duo.workspaceprobe.b.N(p, 1);
            this.e = n;
            android.graphics.Paint paint = new android.graphics.Paint(1);
            this.f = paint;
            android.graphics.Paint paint2 = new android.graphics.Paint(1);
            this.g = paint2;
            this.h = new android.graphics.Path();
            android.graphics.Path path = new android.graphics.Path();
            this.i = path;
            this.m = -1;
            this.n = 1.0f;
            this.b = bVar;
            this.a = str;
            path.addCircle(68.0f, 68.0f, p, android.graphics.Path.Direction.CW);
            paint2.setColor(33554431);
            paint2.setShadowLayer(7.0f, 0.0f, 2.0f, 335544320);
            n.setBounds(java.lang.Math.round(10.0f), java.lang.Math.round(10.0f), java.lang.Math.round(126.0f), java.lang.Math.round(126.0f));
            paint.setStyle(android.graphics.Paint.Style.STROKE);
            paint.setStrokeWidth(q);
            paint.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            paint.setStrokeJoin(android.graphics.Paint.Join.ROUND);
            if (str.startsWith("app:")) {
                c(str.substring(4));
            } else if ("wechat".equals(str) || "alipay".equals(str)) {
                this.j = dev.duo.hookprobe.N.a(str);
            } else {
                android.graphics.drawable.Drawable a = dev.duo.hookprobe.I.a(context, str);
                this.j = a;
                if (a != null) {
                    this.k = true;
                    this.l = true;
                } else if ("translate".equals(str)) {
                    c("com.xiaomi.aiasst.vision");
                } else {
                    d(a(str));
                }
            }
            setOnTouchListener(new android.view.View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$J$$ExternalSyntheticLambda0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
                    boolean a2;
                    a2 = dev.duo.workspaceprobe.b.J.this.a(view, motionEvent);
                    return a2;
                }
            });
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        static boolean b(java.lang.String str) {
            char c;
            str.getClass();
            switch (str.hashCode()) {
                case -1290959678:
                    if (str.equals("eyecare")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -1135252444:
                    if (str.equals("keepon")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -930895139:
                    if (str.equals("ringer")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -677011630:
                    if (str.equals("airplane")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -40300674:
                    if (str.equals("rotation")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 3075958:
                    if (str.equals("dark")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 44649833:
                    if (str.equals("autobright")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 110547964:
                    if (str.equals("torch")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case 846086146:
                    if (str.equals("powersave")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case 1099603663:
                    if (str.equals("hotspot")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case 1901043637:
                    if (str.equals("location")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case 1968882350:
                    if (str.equals("bluetooth")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case dev.duo.taskcore.h.k /* 8 */:
                case dev.duo.taskcore.h.l /* 9 */:
                case '\n':
                case dev.duo.taskcore.h.n /* 11 */:
                    return true;
                default:
                    return false;
            }
        }

        private void c(java.lang.String str) {
            try {
                this.j = getContext().getPackageManager().getApplicationIcon(str);
            } catch (java.lang.Throwable th) {
            }
        }

        private void d(java.lang.String str) {
            if (str == null) {
                return;
            }
            try {
                int identifier = getContext().getResources().getIdentifier(str, "drawable", "com.android.systemui");
                if (identifier != 0) {
                    this.j = getContext().getDrawable(identifier).mutate();
                    this.k = true;
                }
            } catch (java.lang.Throwable th) {
            }
        }

        void e(java.lang.String str) {
            if (java.util.Objects.equals(this.c, str)) {
                return;
            }
            this.c = str;
            this.j = null;
            if (str != null) {
                c(str);
            }
            invalidate();
        }

        @Override // android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (b(this.a)) {
                this.b.b(this);
            }
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            if (b(this.a)) {
                this.b.a(this);
            }
            super.onDetachedFromWindow();
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            if ("lastapp".equals(this.a)) {
                b(canvas, 68.0f);
                return;
            }
            canvas.save();
            canvas.clipOutPath(this.i);
            canvas.drawCircle(68.0f, 68.0f, 57.0f, this.g);
            canvas.restore();
            this.e.draw(canvas);
            canvas.translate(0.0f, dev.duo.workspaceprobe.b.x0);
            if (this.j == null) {
                a(canvas, 68.0f);
                return;
            }
            int round = "calculator".equals(this.a) ? 70 : this.l ? java.lang.Math.round(p) : ("screenrecord".equals(this.a) || "eyecare".equals(this.a)) ? 72 : 68;
            if (this.k) {
                this.j.setTint(a(this.d, this.m));
            }
            this.j.setAlpha(java.lang.Math.round(this.n * 255.0f));
            float f = round / 2.0f;
            float f2 = 68.0f - f;
            float f3 = 68.0f + f;
            this.j.setBounds(java.lang.Math.round(f2), java.lang.Math.round(f2), java.lang.Math.round(f3), java.lang.Math.round(f3));
            this.j.draw(canvas);
        }

        private void b(android.graphics.Canvas canvas, float f) {
            canvas.translate(0.0f, dev.duo.workspaceprobe.b.x0);
            android.graphics.drawable.Drawable drawable = this.j;
            if (drawable == null) {
                this.f.setStyle(android.graphics.Paint.Style.FILL);
                this.f.setColor((this.m & 16777215) | 520093696);
                float f2 = f - 48.0f;
                float f3 = f + 48.0f;
                canvas.drawRoundRect(f2, f2, f3, f3, 26.0f, 26.0f, this.f);
                a(canvas, f);
                return;
            }
            drawable.setAlpha(java.lang.Math.round(this.n * 255.0f));
            float f4 = f - 48.0f;
            float f5 = 48.0f + f;
            this.j.setBounds(java.lang.Math.round(f4), java.lang.Math.round(f4), java.lang.Math.round(f5), java.lang.Math.round(f5));
            this.j.draw(canvas);
            c(canvas, f);
        }

        private void c(android.graphics.Canvas canvas, float f) {
            float f2 = f + 38.0f;
            this.f.setStyle(android.graphics.Paint.Style.FILL);
            this.f.setColor(-218103809);
            this.f.setAlpha(java.lang.Math.round(this.n * 242.0f));
            canvas.drawCircle(f2, f2, 16.0f, this.f);
            android.graphics.Paint paint = this.f;
            android.graphics.Paint.Style style = android.graphics.Paint.Style.STROKE;
            paint.setStyle(style);
            this.f.setStrokeWidth(1.0f);
            this.f.setColor(637534208);
            canvas.drawCircle(f2, f2, 16.0f, this.f);
            this.f.setStyle(style);
            this.f.setStrokeWidth(2.6f);
            this.f.setColor(-12961220);
            this.f.setAlpha(java.lang.Math.round(this.n * 255.0f));
            this.h.reset();
            float f3 = f2 - 8.0f;
            float f4 = f2 - 4.0f;
            this.h.moveTo(f3, f4);
            float f5 = 8.0f + f2;
            this.h.lineTo(f5, f4);
            this.h.moveTo(f2 + q, f2 - 7.5f);
            this.h.lineTo(f5, f4);
            float f6 = 4.0f + f2;
            this.h.moveTo(f5, f6);
            this.h.lineTo(f3, f6);
            this.h.moveTo(f2 - q, f2 + 7.5f);
            this.h.lineTo(f3, f6);
            canvas.drawPath(this.h, this.f);
            this.f.setStrokeWidth(q);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean a(android.view.View view, android.view.MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                a(0.95f, 0.55f, 90L);
                return false;
            }
            if (actionMasked != 1 && actionMasked != 3) {
                return false;
            }
            a(1.0f, 1.0f, 180L);
            return false;
        }

        void a(int i, int i2) {
            this.m = i;
            this.e.a(i2);
            invalidate();
        }

        static int a(java.lang.Boolean bool, int i) {
            if (java.lang.Boolean.TRUE.equals(bool)) {
                return -14460213;
            }
            return i;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private static java.lang.String a(java.lang.String str) {
            char c;
            str.getClass();
            switch (str.hashCode()) {
                case -1290959678:
                    if (str.equals("eyecare")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -1135252444:
                    if (str.equals("keepon")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -930895139:
                    if (str.equals("ringer")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -805491779:
                    if (str.equals("screenrecord")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -677011630:
                    if (str.equals("airplane")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case -416447130:
                    if (str.equals("screenshot")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case -40300674:
                    if (str.equals("rotation")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 3046207:
                    if (str.equals("cast")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case 3075958:
                    if (str.equals("dark")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case 44649833:
                    if (str.equals("autobright")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case 109522647:
                    if (str.equals("sleep")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case 110547964:
                    if (str.equals("torch")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                case 846086146:
                    if (str.equals("powersave")) {
                        c = '\f';
                        break;
                    }
                    c = 65535;
                    break;
                case 1099603663:
                    if (str.equals("hotspot")) {
                        c = '\r';
                        break;
                    }
                    c = 65535;
                    break;
                case 1901043637:
                    if (str.equals("location")) {
                        c = 14;
                        break;
                    }
                    c = 65535;
                    break;
                case 1968882350:
                    if (str.equals("bluetooth")) {
                        c = 15;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    return "ic_qs_paper_mode_off";
                case 1:
                    return "ic_keep_off";
                case 2:
                    return "ic_qs_mute_off";
                case 3:
                    return "qs_screen_record_icon_off";
                case 4:
                    return "ic_qs_lite_airplane";
                case 5:
                    return "ic_qs_screenshot";
                case 6:
                    return "ic_qs_auto_rotate_disabled";
                case 7:
                    return "ic_cast";
                case dev.duo.taskcore.h.k /* 8 */:
                    return "ic_qs_night_mode_off";
                case dev.duo.taskcore.h.l /* 9 */:
                    return "ic_qs_brightness_auto";
                case '\n':
                    return "ic_qs_screenlock";
                case dev.duo.taskcore.h.n /* 11 */:
                    return "ic_qs_flashlight_disabled";
                case '\f':
                    return "ic_qs_battery_saver_off";
                case dev.duo.workspaceprobe.b.F0 /* 13 */:
                    return "ic_qs_hotspot_disabled";
                case 14:
                    return "qs_location_icon_off";
                case 15:
                    return "ic_qs_bluetooth_off";
                default:
                    return null;
            }
        }

        private void a(float f, float f2, long j) {
            animate().scaleX(f).scaleY(f).setDuration(j).start();
            android.animation.ValueAnimator ofFloat = android.animation.ValueAnimator.ofFloat(this.n, f2);
            ofFloat.setDuration(j);
            ofFloat.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$J$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
                    dev.duo.workspaceprobe.b.J.this.a(valueAnimator);
                }
            });
            ofFloat.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(android.animation.ValueAnimator valueAnimator) {
            this.n = ((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private void a(android.graphics.Canvas canvas, float f) {
            char c;
            this.f.setColor(a(this.d, this.m));
            this.f.setAlpha(java.lang.Math.round(this.n * 255.0f));
            this.f.setStyle(android.graphics.Paint.Style.STROKE);
            this.h.reset();
            java.lang.String str = this.a;
            str.getClass();
            switch (str.hashCode()) {
                case -1290959678:
                    if (str.equals("eyecare")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -930895139:
                    if (str.equals("ringer")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -906336856:
                    if (str.equals("search")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -805491779:
                    if (str.equals("screenrecord")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -416447130:
                    if (str.equals("screenshot")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case -47065141:
                    if (str.equals("lastapp")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case -40300674:
                    if (str.equals("rotation")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 3015911:
                    if (str.equals("back")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case 3075958:
                    if (str.equals("dark")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case 3208415:
                    if (str.equals("home")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case 44649833:
                    if (str.equals("autobright")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case 109522647:
                    if (str.equals("sleep")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                case 110547964:
                    if (str.equals("torch")) {
                        c = '\f';
                        break;
                    }
                    c = 65535;
                    break;
                case 1082295672:
                    if (str.equals("recents")) {
                        c = '\r';
                        break;
                    }
                    c = 65535;
                    break;
                case 1099603663:
                    if (str.equals("hotspot")) {
                        c = 14;
                        break;
                    }
                    c = 65535;
                    break;
                case 1429828318:
                    if (str.equals("assistant")) {
                        c = 15;
                        break;
                    }
                    c = 65535;
                    break;
                case 1901043637:
                    if (str.equals("location")) {
                        c = 16;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    float f2 = f - 20.0f;
                    this.h.moveTo(f2, f);
                    this.h.quadTo(f, f - 16.0f, f + 20.0f, f);
                    this.h.quadTo(f, 16.0f + f, f2, f);
                    canvas.drawPath(this.h, this.f);
                    canvas.drawCircle(f, f, 5.0f, this.f);
                    break;
                case 1:
                    float f3 = f - 13.0f;
                    float f4 = f + 8.0f;
                    this.h.moveTo(f3, f4);
                    float f5 = f - 2.0f;
                    this.h.lineTo(f3, f5);
                    float f6 = f - 16.0f;
                    this.h.quadTo(f3, f6, f, f6);
                    float f7 = 13.0f + f;
                    this.h.quadTo(f7, f6, f7, f5);
                    this.h.lineTo(f7, f4);
                    canvas.drawPath(this.h, this.f);
                    canvas.drawLine(f - 18.0f, f4, f + 18.0f, f4, this.f);
                    float f8 = f + 14.0f;
                    canvas.drawLine(f - 4.0f, f8, f + 4.0f, f8, this.f);
                    break;
                case 2:
                    float f9 = f - 3.0f;
                    canvas.drawCircle(f9, f9, 14.0f, this.f);
                    float f10 = f + 8.0f;
                    float f11 = f + 20.0f;
                    canvas.drawLine(f10, f10, f11, f11, this.f);
                    break;
                case 3:
                    canvas.drawCircle(f, f, 17.0f, this.f);
                    this.f.setStyle(android.graphics.Paint.Style.FILL);
                    canvas.drawCircle(f, f, 8.0f, this.f);
                    break;
                case 4:
                    canvas.drawRoundRect(f - 21.0f, f - 15.0f, f + 21.0f, 15.0f + f, 5.0f, 5.0f, this.f);
                    canvas.drawCircle(f, f, 7.0f, this.f);
                    break;
                case 5:
                    float f12 = f - 18.0f;
                    float f13 = f - 8.0f;
                    this.h.moveTo(f12, f13);
                    float f14 = f + 18.0f;
                    this.h.lineTo(f14, f13);
                    float f15 = f + 10.0f;
                    this.h.moveTo(f15, f - 16.0f);
                    this.h.lineTo(f14, f13);
                    this.h.lineTo(f15, f);
                    float f16 = f + 8.0f;
                    this.h.moveTo(f14, f16);
                    this.h.lineTo(f12, f16);
                    float f17 = f - 10.0f;
                    this.h.moveTo(f17, f);
                    this.h.lineTo(f12, f16);
                    this.h.lineTo(f17, f + 16.0f);
                    canvas.drawPath(this.h, this.f);
                    break;
                case 6:
                    float f18 = f - 17.0f;
                    float f19 = f + 17.0f;
                    canvas.drawArc(f18, f18, f19, f19, 40.0f, 250.0f, false, this.f);
                    this.f.setStyle(android.graphics.Paint.Style.FILL);
                    this.h.moveTo(f + 12.0f, f - 20.0f);
                    this.h.lineTo(f + 22.0f, f - 10.0f);
                    this.h.lineTo(f + 8.0f, f - 6.0f);
                    this.h.close();
                    canvas.drawPath(this.h, this.f);
                    break;
                case 7:
                    float f20 = f + 7.0f;
                    this.h.moveTo(f20, f - 18.0f);
                    this.h.lineTo(f - 10.0f, f);
                    this.h.lineTo(f20, f + 18.0f);
                    canvas.drawPath(this.h, this.f);
                    break;
                case dev.duo.taskcore.h.k /* 8 */:
                case dev.duo.taskcore.h.n /* 11 */:
                    this.f.setStyle(android.graphics.Paint.Style.FILL);
                    this.h.setFillType(android.graphics.Path.FillType.EVEN_ODD);
                    android.graphics.Path.Direction direction = android.graphics.Path.Direction.CW;
                    this.h.addCircle(f + 2.0f, f, 19.0f, direction);
                    this.h.addCircle(11.0f + f, f - 6.0f, 16.0f, direction);
                    canvas.drawPath(this.h, this.f);
                    break;
                case dev.duo.taskcore.h.l /* 9 */:
                    this.f.setStyle(android.graphics.Paint.Style.FILL);
                    this.h.setFillType(android.graphics.Path.FillType.EVEN_ODD);
                    float f21 = f - 21.0f;
                    float f22 = f - 3.0f;
                    a(this.h, f21, f21, f22, f22, 6.5f);
                    float f23 = f + 3.0f;
                    float f24 = f + 21.0f;
                    a(this.h, f23, f21, f24, f22, 6.5f);
                    a(this.h, f21, f23, f22, f24, 6.5f);
                    a(this.h, f23, f23, f24, f24, 6.5f);
                    canvas.drawPath(this.h, this.f);
                    break;
                case '\n':
                    canvas.drawCircle(f, f, 10.0f, this.f);
                    for (int i = 0; i < 8; i++) {
                        double d = (i * 3.141592653589793d) / 4.0d;
                        canvas.drawLine(((float) (java.lang.Math.cos(d) * 15.0d)) + f, ((float) (java.lang.Math.sin(d) * 15.0d)) + f, ((float) (java.lang.Math.cos(d) * 21.0d)) + f, ((float) (java.lang.Math.sin(d) * 21.0d)) + f, this.f);
                    }
                    break;
                case '\f':
                    canvas.drawCircle(f, f - 4.0f, 12.0f, this.f);
                    float f25 = f - 7.0f;
                    float f26 = 9.0f + f;
                    float f27 = f + 17.0f;
                    canvas.drawLine(f25, f26, f25, f27, this.f);
                    canvas.drawLine(f, f26, f, f + 19.0f, this.f);
                    float f28 = f + 7.0f;
                    canvas.drawLine(f28, f26, f28, f27, this.f);
                    break;
                case dev.duo.workspaceprobe.b.F0 /* 13 */:
                    this.f.setStyle(android.graphics.Paint.Style.FILL);
                    this.h.setFillType(android.graphics.Path.FillType.EVEN_ODD);
                    canvas.save();
                    float f29 = f - 18.0f;
                    float f30 = f - 10.0f;
                    float f31 = f + 10.0f;
                    float f32 = f + 20.0f;
                    canvas.clipOutRect(f29 - 5.0f, f30 - 5.0f, f31 + 5.0f, 5.0f + f32);
                    a(this.h, f30, f - 20.0f, f + 18.0f, f31, 8.5f);
                    canvas.drawPath(this.h, this.f);
                    canvas.restore();
                    this.h.reset();
                    a(this.h, f29, f30, f31, f32, 8.5f);
                    canvas.drawPath(this.h, this.f);
                    break;
                case 14:
                    float f33 = f - 20.0f;
                    float f34 = f + 20.0f;
                    canvas.drawArc(f33, f33, f34, f34, 205.0f, 130.0f, false, this.f);
                    float f35 = f - 12.0f;
                    float f36 = f + 12.0f;
                    canvas.drawArc(f35, f35, f36, f36, 205.0f, 130.0f, false, this.f);
                    this.f.setStyle(android.graphics.Paint.Style.FILL);
                    canvas.drawCircle(f, f36, 4.0f, this.f);
                    break;
                case 15:
                    canvas.drawRoundRect(f - 22.0f, f - 18.0f, f + 22.0f, f + 18.0f, 7.0f, 7.0f, this.f);
                    canvas.drawLine(f - 10.0f, f, f + 10.0f, f, this.f);
                    break;
                case dev.duo.workspaceprobe.b.z /* 16 */:
                    canvas.drawCircle(f, f - 5.0f, 10.0f, this.f);
                    this.f.setStyle(android.graphics.Paint.Style.FILL);
                    float f37 = f + 2.0f;
                    this.h.moveTo(f - 8.0f, f37);
                    this.h.lineTo(f + 8.0f, f37);
                    this.h.lineTo(f, f + 20.0f);
                    this.h.close();
                    canvas.drawPath(this.h, this.f);
                    break;
                default:
                    canvas.drawCircle(f, f, 4.0f, this.f);
                    break;
            }
        }

        private static void a(android.graphics.Path path, float f, float f2, float f3, float f4, float f5) {
            float f6 = f5 + 2.25f;
            android.graphics.Path.Direction direction = android.graphics.Path.Direction.CW;
            path.addRoundRect(f - 2.25f, f2 - 2.25f, f3 + 2.25f, f4 + 2.25f, f6, f6, direction);
            float f7 = f5 - 2.25f;
            path.addRoundRect(f + 2.25f, f2 + 2.25f, f3 - 2.25f, f4 - 2.25f, java.lang.Math.max(0.0f, f7), java.lang.Math.max(0.0f, f7), direction);
        }
    }

    final class K {
        dev.duo.workspaceprobe.q a;
        android.view.SurfaceControl b;
        dev.duo.workspaceprobe.b.R c;
        android.widget.FrameLayout d;
        android.widget.FrameLayout e;
        boolean g;
        dev.duo.workspaceprobe.b.S h;
        android.widget.FrameLayout j;
        android.widget.LinearLayout k;
        dev.duo.workspaceprobe.b.c0 l;
        android.widget.FrameLayout o;
        boolean p;
        android.view.SurfaceControl q;
        dev.duo.workspaceprobe.b.h0 r;
        dev.duo.workspaceprobe.b.U s;
        dev.duo.workspaceprobe.b.N t;
        int v;
        int y;
        final java.util.ArrayList<dev.duo.workspaceprobe.b.J> f = new java.util.ArrayList<>();
        final android.widget.ImageView[] i = new android.widget.ImageView[3];
        long m = -1;
        long n = -1;
        volatile int u = -1;
        long w = -1;
        int x = -1;
        volatile int z = -1;
        float A = Float.NaN;

        K() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class L {
        final java.lang.Object a;
        final android.view.SurfaceControl b;
        boolean c;

        L(java.lang.Object obj, android.view.SurfaceControl surfaceControl) {
            this.a = obj;
            this.b = surfaceControl;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface M {
        int a(android.view.SurfaceControl surfaceControl) throws java.lang.ReflectiveOperationException;
    }

    static final class N extends android.graphics.drawable.Drawable {
        static final int h = 5;
        static final float i = 8.0f;
        static final int j = 0;
        static final int k = 1;
        static final int l = 2;
        private final float a;
        private final android.graphics.Paint b;
        private final android.graphics.Paint c;
        private final android.graphics.Paint d;
        private final android.graphics.Paint e;
        private final android.graphics.Paint f;
        private int g;

        N(float f) {
            this(f, 0);
        }

        void a(int i2) {
            if (i2 == this.g) {
                return;
            }
            this.g = i2;
            onBoundsChange(getBounds());
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(android.graphics.Canvas canvas) {
            android.graphics.Rect bounds = getBounds();
            float f = bounds.left;
            float f2 = bounds.top;
            float f3 = bounds.right;
            float f4 = bounds.bottom;
            float f5 = this.a;
            canvas.drawRoundRect(f, f2, f3, f4, f5, f5, this.b);
            float f6 = this.a;
            canvas.drawRoundRect(f, f2, f3, f4, f6, f6, this.c);
            float f7 = this.a;
            canvas.drawRoundRect(f, f2, f3, f4, f7, f7, this.d);
            if (this.g == 0) {
                float f8 = this.a - 0.75f;
                canvas.drawRoundRect(f + 0.75f, f2 + 0.75f, f3 - 0.75f, f4 - 0.75f, f8, f8, this.e);
            } else {
                float f9 = this.a - 0.5f;
                canvas.drawRoundRect(f + 0.5f, f2 + 0.5f, f3 - 0.5f, f4 - 0.5f, f9, f9, this.f);
                float f10 = this.a - 1.75f;
                canvas.drawRoundRect(f + 1.75f, f2 + 1.75f, f3 - 1.75f, f4 - 1.75f, f10, f10, this.e);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        protected void onBoundsChange(android.graphics.Rect rect) {
            float f = rect.left;
            float f2 = rect.top;
            float max = java.lang.Math.max(1, rect.width());
            float max2 = java.lang.Math.max(1, rect.height());
            int i2 = this.g;
            if (i2 != 0) {
                a(f, f2, max, max2, i2 == 2);
                return;
            }
            android.graphics.Paint paint = this.b;
            float f3 = f2 + max2;
            android.graphics.Shader.TileMode tileMode = android.graphics.Shader.TileMode.CLAMP;
            paint.setShader(new android.graphics.LinearGradient(0.0f, f2, 0.0f, f3, new int[]{352321535, 117440511, 100663295, 234881023}, new float[]{0.0f, 0.3f, 0.7f, 1.0f}, tileMode));
            this.c.setShader(new android.graphics.RadialGradient(f + (0.3f * max), java.lang.Math.min(0.12f * max2, 0.45f * max) + f2, java.lang.Math.max(max, java.lang.Math.min(max2, 2.2f * max)) * 0.75f, 536870911, 16777215, tileMode));
            this.d.setShader(new android.graphics.LinearGradient(0.0f, f3 - java.lang.Math.min(0.5f * max2, this.a * 1.6f), 0.0f, f3, 16777215, 318767103, tileMode));
            this.e.setShader(new android.graphics.LinearGradient(f, f2, (0.6f * max) + f, java.lang.Math.min(max2, max * 3.0f) + f2, new int[]{-1493172225, 872415231, 352321535, 788529151}, new float[]{0.0f, 0.25f, 0.7f, 1.0f}, tileMode));
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i2) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(android.graphics.ColorFilter colorFilter) {
        }

        N(float f, int i2) {
            this.b = new android.graphics.Paint(1);
            this.c = new android.graphics.Paint(1);
            this.d = new android.graphics.Paint(1);
            android.graphics.Paint paint = new android.graphics.Paint(1);
            this.e = paint;
            android.graphics.Paint paint2 = new android.graphics.Paint(1);
            this.f = paint2;
            this.a = f;
            this.g = i2;
            android.graphics.Paint.Style style = android.graphics.Paint.Style.STROKE;
            paint.setStyle(style);
            paint.setStrokeWidth(1.5f);
            paint2.setStyle(style);
            paint2.setStrokeWidth(1.0f);
        }

        private void a(float f, float f2, float f3, float f4, boolean z) {
            int[] iArr;
            android.graphics.Paint paint = this.b;
            float f5 = f2 + f4;
            if (z) {
                iArr = new int[]{-1929379841, 1308622847, 1090519039, 1728053247};
            } else {
                iArr = new int[]{1728053247, 788529151, 654311423, 1090519039};
            }
            android.graphics.Shader.TileMode tileMode = android.graphics.Shader.TileMode.CLAMP;
            paint.setShader(new android.graphics.LinearGradient(0.0f, f2, 0.0f, f5, iArr, new float[]{0.0f, 0.3f, 0.7f, 1.0f}, tileMode));
            this.c.setShader(new android.graphics.RadialGradient(f + (0.3f * f3), f2 + java.lang.Math.min(0.12f * f4, 0.45f * f3), java.lang.Math.max(f3, java.lang.Math.min(f4, 2.2f * f3)) * 0.75f, z ? -2130706433 : 1509949439, 16777215, tileMode));
            this.d.setShader(new android.graphics.LinearGradient(0.0f, f5 - java.lang.Math.min(0.5f * f4, this.a * 1.6f), 0.0f, f5, 0, z ? 218103808 : 134217728, tileMode));
            float f6 = 3.0f * f3;
            this.e.setShader(new android.graphics.LinearGradient(f, f2, f + (0.6f * f3), f2 + java.lang.Math.min(f4, f6), new int[]{-1, -1711276033, 872415231, 1728053247}, new float[]{0.0f, 0.25f, 0.7f, 1.0f}, tileMode));
            this.f.setShader(new android.graphics.LinearGradient(f, f2, f + f3, f2 + java.lang.Math.min(f4, f6), z ? new int[]{251658240, 436207616, 687865856} : new int[]{167772160, 301989888, 520093696}, new float[]{0.0f, 0.5f, 1.0f}, tileMode));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class O {
        final long a;
        final java.net.Socket b;

        O(long j, java.net.Socket socket) {
            this.a = j;
            this.b = socket;
        }
    }

    private static final class P {
        final int a;
        final int b;
        final int c;
        final double d;
        final double e;
        final double f;
        final double g;
        final double h;
        final long i;
        final long j;
        final long k;
        final long l;
        final long m;
        final long n;
        final long o;
        final long p;

        P(byte[] bArr, long j) {
            this.p = j;
            java.nio.ByteBuffer order = java.nio.ByteBuffer.wrap(bArr).order(java.nio.ByteOrder.LITTLE_ENDIAN);
            if (order.getInt() != 1146442546) {
                throw new java.lang.IllegalArgumentException("Native frame protocol");
            }
            this.a = order.getInt();
            this.b = order.getInt();
            this.c = order.getInt();
            this.d = order.getDouble();
            this.l = order.getLong();
            this.m = order.getLong();
            this.n = order.getLong();
            this.o = order.getLong();
            this.e = order.getDouble();
            this.f = order.getDouble();
            this.i = order.getLong();
            this.g = order.getDouble();
            this.h = order.getDouble();
            this.j = order.getLong();
            this.k = order.getLong();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class Q extends android.view.View {
        static final int i = 136;
        private static final float j = 58.0f;
        private static final float k = 4.5f;
        private final int a;
        int b;
        private float c;
        private final android.graphics.Paint d;
        private final dev.duo.workspaceprobe.b.N e;
        private final android.graphics.Paint f;
        private final android.graphics.Path g;
        private final android.graphics.Path h;

        Q(android.content.Context context, int i2) {
            super(context);
            this.b = -1;
            this.c = 1.0f;
            android.graphics.Paint paint = new android.graphics.Paint(1);
            this.d = paint;
            dev.duo.workspaceprobe.b.N n = new dev.duo.workspaceprobe.b.N(j, 1);
            this.e = n;
            android.graphics.Paint paint2 = new android.graphics.Paint(1);
            this.f = paint2;
            this.g = new android.graphics.Path();
            android.graphics.Path path = new android.graphics.Path();
            this.h = path;
            this.a = i2;
            path.addCircle(68.0f, 68.0f, j, android.graphics.Path.Direction.CW);
            paint.setColor(33554431);
            paint.setShadowLayer(7.0f, 0.0f, 2.0f, 335544320);
            n.setBounds(java.lang.Math.round(10.0f), java.lang.Math.round(10.0f), java.lang.Math.round(126.0f), java.lang.Math.round(126.0f));
            paint2.setStyle(android.graphics.Paint.Style.STROKE);
            paint2.setStrokeWidth(k);
            paint2.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            paint2.setStrokeJoin(android.graphics.Paint.Join.ROUND);
            setOnTouchListener(new android.view.View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$Q$$ExternalSyntheticLambda1
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
                    boolean a;
                    a = dev.duo.workspaceprobe.b.Q.this.a(view, motionEvent);
                    return a;
                }
            });
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            canvas.save();
            canvas.clipOutPath(this.h);
            canvas.drawCircle(68.0f, 68.0f, 57.0f, this.d);
            canvas.restore();
            this.e.draw(canvas);
            canvas.translate(0.0f, dev.duo.workspaceprobe.b.x0);
            this.f.setColor(this.b);
            this.f.setAlpha(java.lang.Math.round(this.c * 255.0f));
            this.g.reset();
            if (this.a == 0) {
                this.f.setStyle(android.graphics.Paint.Style.STROKE);
                this.g.moveTo(75.0f, 50.0f);
                this.g.lineTo(j, 68.0f);
                this.g.lineTo(75.0f, 86.0f);
                canvas.drawPath(this.g, this.f);
                return;
            }
            this.f.setStyle(android.graphics.Paint.Style.FILL);
            this.g.setFillType(android.graphics.Path.FillType.EVEN_ODD);
            if (this.a == 1) {
                for (int i2 = 0; i2 < 4; i2++) {
                    float f = ((i2 % 2) * 24.0f) + 47.0f;
                    float f2 = ((i2 / 2) * 24.0f) + 47.0f;
                    a(this.g, f, f2, f + 18.0f, f2 + 18.0f, 6.5f);
                }
                canvas.drawPath(this.g, this.f);
                return;
            }
            canvas.save();
            canvas.clipOutRect(45.0f, 53.0f, 83.0f, 93.0f);
            a(this.g, j, 48.0f, 86.0f, 78.0f, 8.5f);
            canvas.drawPath(this.g, this.f);
            canvas.restore();
            this.g.reset();
            a(this.g, 50.0f, j, 78.0f, 88.0f, 8.5f);
            canvas.drawPath(this.g, this.f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean a(android.view.View view, android.view.MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                a(0.95f, 0.55f, 90L);
                return false;
            }
            if (actionMasked != 1 && actionMasked != 3) {
                return false;
            }
            a(1.0f, 1.0f, 180L);
            return false;
        }

        private void a(float f, float f2, long j2) {
            animate().scaleX(f).scaleY(f).setDuration(j2).start();
            android.animation.ValueAnimator ofFloat = android.animation.ValueAnimator.ofFloat(this.c, f2);
            ofFloat.setDuration(j2);
            ofFloat.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$Q$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
                    dev.duo.workspaceprobe.b.Q.this.a(valueAnimator);
                }
            });
            ofFloat.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(android.animation.ValueAnimator valueAnimator) {
            this.c = ((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        private static void a(android.graphics.Path path, float f, float f2, float f3, float f4, float f5) {
            float f6 = f5 + 2.25f;
            android.graphics.Path.Direction direction = android.graphics.Path.Direction.CW;
            path.addRoundRect(f - 2.25f, f2 - 2.25f, f3 + 2.25f, f4 + 2.25f, f6, f6, direction);
            float f7 = f5 - 2.25f;
            path.addRoundRect(f + 2.25f, f2 + 2.25f, f3 - 2.25f, f4 - 2.25f, java.lang.Math.max(0.0f, f7), java.lang.Math.max(0.0f, f7), direction);
        }
    }

    final class R {
        final android.view.SurfaceControlViewHost a;
        final android.view.SurfaceControl b;
        final java.lang.String c;
        final android.view.View d;
        final float e;
        int f;
        int g;
        int h;
        final int i;
        float j;
        float k;
        float l;
        float m;
        volatile boolean n;

        /* JADX INFO: Added by JADX */
        public static final class drawable {

            /* JADX INFO: Added by JADX */
            public static final int album_widget_placeholder = 0x7f010000;

            /* JADX INFO: Added by JADX */
            public static final int album_widget_preview = 0x7f010001;

            /* JADX INFO: Added by JADX */
            public static final int battery_medium_preview = 0x7f010002;

            /* JADX INFO: Added by JADX */
            public static final int battery_small_preview = 0x7f010003;

            /* JADX INFO: Added by JADX */
            public static final int calendar_medium_preview = 0x7f010004;

            /* JADX INFO: Added by JADX */
            public static final int calendar_small_preview = 0x7f010005;

            /* JADX INFO: Added by JADX */
            public static final int weather_medium_preview = 0x7f010006;

            /* JADX INFO: Added by JADX */
            public static final int weather_small_preview = 0x7f010007;

            /* JADX INFO: Added by JADX */
            public static final int ic_launcher = 0x7f010008;

            /* JADX INFO: Added by JADX */
            public static final int ic_launcher_fg = 0x7f010009;

            /* JADX INFO: Added by JADX */
            public static final int ic_launcher_mono = 0x7f01000a;
        }

        /* JADX INFO: Added by JADX */
        public static final class id {

            /* JADX INFO: Added by JADX */
            public static final int album_hint = 0x7f020000;

            /* JADX INFO: Added by JADX */
            public static final int album_image = 0x7f020001;

            /* JADX INFO: Added by JADX */
            public static final int album_placeholder = 0x7f020002;

            /* JADX INFO: Added by JADX */
            public static final int info_image = 0x7f020003;
        }

        /* JADX INFO: Added by JADX */
        public static final class layout {

            /* JADX INFO: Added by JADX */
            public static final int album_widget = 0x7f030000;

            /* JADX INFO: Added by JADX */
            public static final int album_widget_b = 0x7f030001;

            /* JADX INFO: Added by JADX */
            public static final int info_widget = 0x7f030002;

            /* JADX INFO: Added by JADX */
            public static final int info_widget_b = 0x7f030003;
        }

        /* JADX INFO: Added by JADX */
        public static final class string {

            /* JADX INFO: Added by JADX */
            public static final int album_widget_description = 0x7f040000;

            /* JADX INFO: Added by JADX */
            public static final int album_widget_hint = 0x7f040001;

            /* JADX INFO: Added by JADX */
            public static final int album_widget_label = 0x7f040002;

            /* JADX INFO: Added by JADX */
            public static final int battery_medium_label = 0x7f040003;

            /* JADX INFO: Added by JADX */
            public static final int battery_small_label = 0x7f040004;

            /* JADX INFO: Added by JADX */
            public static final int calendar_medium_label = 0x7f040005;

            /* JADX INFO: Added by JADX */
            public static final int calendar_small_label = 0x7f040006;

            /* JADX INFO: Added by JADX */
            public static final int info_widget_description = 0x7f040007;

            /* JADX INFO: Added by JADX */
            public static final int weather_medium_label = 0x7f040008;

            /* JADX INFO: Added by JADX */
            public static final int weather_small_label = 0x7f040009;
        }

        /* JADX INFO: Added by JADX */
        public static final class xml {

            /* JADX INFO: Added by JADX */
            public static final int album_widget_info = 0x7f050000;

            /* JADX INFO: Added by JADX */
            public static final int battery_medium_info = 0x7f050001;

            /* JADX INFO: Added by JADX */
            public static final int battery_small_info = 0x7f050002;

            /* JADX INFO: Added by JADX */
            public static final int calendar_medium_info = 0x7f050003;

            /* JADX INFO: Added by JADX */
            public static final int calendar_small_info = 0x7f050004;

            /* JADX INFO: Added by JADX */
            public static final int weather_medium_info = 0x7f050005;

            /* JADX INFO: Added by JADX */
            public static final int weather_small_info = 0x7f050006;
        }

        /* JADX INFO: Added by JADX */
        public static final class color {

            /* JADX INFO: Added by JADX */
            public static final int ic_launcher_bg = 0x7f060000;

            /* JADX INFO: Added by JADX */
            public static final int ic_launcher_ink = 0x7f060001;
        }

        R(dev.duo.workspaceprobe.b bVar, java.lang.String str, android.view.View view, float f, int i, int i2, int i3, int i4, float f2) {
            this(bVar, str, view, f, i, i2, i3, i4, f2, false);
        }

        void a() {
            this.k = Float.NaN;
        }

        void b() {
            this.n = true;
            try {
                this.a.release();
            } finally {
                this.b.release();
            }
        }

        R(dev.duo.workspaceprobe.b bVar, java.lang.String str, android.view.View view, float f, int i, int i2, int i3, int i4, float f2, boolean z) {
            this(str, view, f, i, i2, i3, i4, f2, z ? 24 : 0);
        }

        R(java.lang.String str, android.view.View view, float f, int i, int i2, int i3, int i4, float f2, int i5) {
            this.k = Float.NaN;
            this.c = str;
            this.d = view;
            android.view.SurfaceControlViewHost surfaceControlViewHost = new android.view.SurfaceControlViewHost(dev.duo.workspaceprobe.b.this.p4, ((android.hardware.display.DisplayManager) dev.duo.workspaceprobe.b.this.p4.getSystemService(android.hardware.display.DisplayManager.class)).getDisplay(0), null);
            this.a = surfaceControlViewHost;
            if (i5 != 0) {
                try {
                    android.view.SurfaceControlViewHost.class.getMethod("setView", android.view.View.class, android.view.WindowManager.LayoutParams.class).invoke(surfaceControlViewHost, view, new android.view.WindowManager.LayoutParams(i2, i3, 2, i5, -3));
                } catch (java.lang.ReflectiveOperationException e) {
                    this.a.release();
                    throw new java.lang.IllegalStateException("Panel " + str + " cannot get its input flags " + i5, e);
                }
            } else {
                surfaceControlViewHost.setView(view, i2, i3);
            }
            this.b = surfaceControlViewHost.getSurfacePackage().getSurfaceControl();
            this.e = f;
            this.h = i;
            this.f = i2;
            this.g = i3;
            this.i = i4;
            this.j = f2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class S extends android.view.View {
        static final int e = 48;
        private static final float f = 20.0f;
        int a;
        boolean b;
        private final dev.duo.workspaceprobe.b.N c;
        private final android.graphics.Paint d;

        S(android.content.Context context) {
            super(context);
            this.a = -13618632;
            dev.duo.workspaceprobe.b.N n = new dev.duo.workspaceprobe.b.N(f, 1);
            this.c = n;
            android.graphics.Paint paint = new android.graphics.Paint(1);
            this.d = paint;
            n.setBounds(java.lang.Math.round(4.0f), java.lang.Math.round(4.0f), java.lang.Math.round(44.0f), java.lang.Math.round(44.0f));
            paint.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            setOnTouchListener(new android.view.View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$S$$ExternalSyntheticLambda0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
                    boolean a;
                    a = dev.duo.workspaceprobe.b.S.this.a(view, motionEvent);
                    return a;
                }
            });
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            this.c.draw(canvas);
            canvas.translate(0.0f, dev.duo.workspaceprobe.b.x0);
            boolean z = this.b;
            int i = z ? -14460213 : this.a;
            if (z) {
                this.d.setStyle(android.graphics.Paint.Style.STROKE);
                this.d.setStrokeWidth(3.0f);
                this.d.setColor(i);
                canvas.drawCircle(24.0f, 24.0f, 18.5f, this.d);
            }
            this.d.setColor(i);
            canvas.scale(0.8333333f, 0.8333333f, 24.0f, 24.0f);
            this.d.setStyle(android.graphics.Paint.Style.STROKE);
            this.d.setStrokeWidth(4.0f);
            canvas.drawLine(16.0f, 32.0f, 27.0f, 21.0f, this.d);
            this.d.setStrokeWidth(3.0f);
            canvas.drawLine(23.0f, 17.0f, 31.0f, 25.0f, this.d);
            this.d.setStyle(android.graphics.Paint.Style.FILL);
            canvas.drawCircle(30.0f, 18.0f, 4.5f, this.d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean a(android.view.View view, android.view.MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                animate().scaleX(0.9f).scaleY(0.9f).setDuration(90L).start();
                return false;
            }
            if (actionMasked != 1 && actionMasked != 3) {
                return false;
            }
            animate().scaleX(1.0f).scaleY(1.0f).setDuration(180L).start();
            return false;
        }
    }

    private static final class T extends android.widget.ImageView {
        T(android.content.Context context) {
            super(context);
        }

        @Override // android.widget.ImageView, android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            canvas.translate(0.0f, dev.duo.workspaceprobe.b.x0);
            super.onDraw(canvas);
        }
    }

    private static final class U extends android.view.View {
        private final android.graphics.Paint a;

        U(android.content.Context context) {
            super(context);
            android.graphics.Paint paint = new android.graphics.Paint(1);
            this.a = paint;
            paint.setColor(-1);
            paint.setStyle(android.graphics.Paint.Style.STROKE);
            paint.setStrokeWidth(7.0f);
            paint.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            canvas.translate(0.0f, dev.duo.workspaceprobe.b.x0);
            float width = getWidth() / 116.0f;
            canvas.translate(getWidth() / 2.0f, getHeight() / 2.0f);
            canvas.scale(width, width);
            canvas.translate(-56.5f, -56.5f);
            canvas.drawCircle(52.0f, 52.0f, 19.0f, this.a);
            canvas.drawLine(66.0f, 66.0f, 80.0f, 80.0f, this.a);
        }
    }

    private static final class V extends android.view.View {
        static final int c = 48;
        private final boolean a;
        private final android.graphics.Paint b;

        V(android.content.Context context, boolean z) {
            super(context);
            this.b = new android.graphics.Paint(1);
            this.a = z;
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            float min = java.lang.Math.min(getWidth(), getHeight()) / 2.0f;
            float width = getWidth() / 2.0f;
            float height = getHeight() / 2.0f;
            this.b.setStyle(android.graphics.Paint.Style.FILL);
            this.b.setColor(-1);
            canvas.drawCircle(width, height, min, this.b);
            this.b.setColor(this.a ? -13335809 : -50384);
            canvas.drawCircle(width, height, min - 3.0f, this.b);
            this.b.setColor(-1);
            this.b.setStrokeWidth(0.2f * min);
            this.b.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            float f = min * 0.42f;
            canvas.drawLine(width - f, height, width + f, height, this.b);
            if (this.a) {
                canvas.drawLine(width, height - f, width, height + f, this.b);
            }
        }
    }

    private static final class Y extends android.graphics.drawable.Drawable {
        private final android.graphics.drawable.Drawable a;
        private final android.graphics.Paint b = new android.graphics.Paint(1);

        Y(android.graphics.drawable.Drawable drawable) {
            this.a = drawable;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(android.graphics.Canvas canvas) {
            this.a.draw(canvas);
            android.graphics.Rect bounds = getBounds();
            float width = bounds.width() * 0.17f;
            float f = bounds.right - width;
            float f2 = bounds.bottom - width;
            this.b.setStyle(android.graphics.Paint.Style.FILL);
            this.b.setColor(-1);
            canvas.drawCircle(f, f2, width, this.b);
            this.b.setColor(-13335809);
            canvas.drawCircle(f, f2, 0.84f * width, this.b);
            this.b.setColor(-1);
            this.b.setTextAlign(android.graphics.Paint.Align.CENTER);
            this.b.setTextSize(width * 1.2f);
            this.b.setTypeface(android.graphics.Typeface.DEFAULT_BOLD);
            canvas.drawText("2", f, f2 - ((this.b.descent() + this.b.ascent()) / 2.0f), this.b);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return this.a.getIntrinsicHeight();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return this.a.getIntrinsicWidth();
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        protected void onBoundsChange(android.graphics.Rect rect) {
            this.a.setBounds(rect);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.a.setAlpha(i);
            this.b.setAlpha(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(android.graphics.ColorFilter colorFilter) {
            this.a.setColorFilter(colorFilter);
        }
    }

    private static final class Z extends android.view.View {
        private final android.graphics.Paint a;
        private final int b;
        private final int c;
        private boolean d;

        Z(android.content.Context context, int i, int i2) {
            super(context);
            this.a = new android.graphics.Paint(1);
            this.b = i;
            this.c = i2;
        }

        void a(boolean z) {
            if (this.d == z) {
                return;
            }
            this.d = z;
            setContentDescription(z ? "完成" : "编辑");
            invalidate();
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            float min = java.lang.Math.min(getWidth(), getHeight());
            float f = min / 2.0f;
            this.a.setStyle(android.graphics.Paint.Style.FILL);
            this.a.setColor(this.b);
            canvas.drawCircle(f, f, f, this.a);
            this.a.setStyle(android.graphics.Paint.Style.STROKE);
            this.a.setStrokeWidth(0.04f * min);
            this.a.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            this.a.setStrokeJoin(android.graphics.Paint.Join.ROUND);
            this.a.setColor(this.c);
            android.graphics.Path path = new android.graphics.Path();
            if (this.d) {
                path.moveTo(0.32f * min, 0.52f * min);
                path.lineTo(0.45f * min, 0.65f * min);
                path.lineTo(0.7f * min, min * 0.37f);
            } else {
                float f2 = 0.31f * min;
                path.moveTo(0.52f * min, f2);
                float f3 = 0.36f * min;
                path.lineTo(f3, f2);
                path.quadTo(f2, f2, f2, f3);
                float f4 = 0.64f * min;
                path.lineTo(f2, f4);
                float f5 = 0.69f * min;
                path.quadTo(f2, f5, f3, f5);
                path.lineTo(f4, f5);
                path.quadTo(f5, f5, f5, f4);
                path.lineTo(f5, 0.48f * min);
                path.moveTo(0.46f * min, 0.54f * min);
                path.lineTo(0.7f * min, min * 0.3f);
            }
            canvas.drawPath(path, this.a);
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$a, reason: case insensitive filesystem */
    class C0040a extends android.database.ContentObserver {
        C0040a(android.os.Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            dev.duo.workspaceprobe.b.this.e1();
        }
    }

    private static final class a0 extends android.view.View {
        static final int d = 0;
        private final int a;
        private final int b;
        private final android.graphics.Paint c;

        a0(android.content.Context context, int i, int i2) {
            super(context);
            this.c = new android.graphics.Paint(1);
            this.a = i;
            this.b = i2;
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            float min = java.lang.Math.min(getWidth(), getHeight());
            this.c.setStyle(android.graphics.Paint.Style.STROKE);
            this.c.setStrokeWidth(0.09f * min);
            this.c.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            this.c.setColor(this.b);
            if (this.a == 0) {
                float f = 0.42f * min;
                canvas.drawCircle(f, f, 0.28f * min, this.c);
                float f2 = min * 0.63f;
                float f3 = min * 0.86f;
                canvas.drawLine(f2, f2, f3, f3, this.c);
            }
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$b, reason: collision with other inner class name */
    class C0009b extends android.database.ContentObserver {
        C0009b(android.os.Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, android.net.Uri uri) {
            if (dev.duo.workspaceprobe.b.this.l2 != Long.MAX_VALUE) {
                android.util.Log.w("DuoRail", "Duo config direct read dropped, provider from now on");
            }
            dev.duo.workspaceprobe.b.this.l2 = Long.MAX_VALUE;
            dev.duo.workspaceprobe.b.this.k2 = null;
            java.util.List<java.lang.String> pathSegments = uri == null ? java.util.Collections.EMPTY_LIST : uri.getPathSegments();
            if (pathSegments.size() == 2) {
                dev.duo.workspaceprobe.b.this.y(pathSegments.get(1));
            } else {
                dev.duo.workspaceprobe.b.this.m("app notified");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class b0 {
        static final int i = 420;
        static final int j = 951;
        static final int k = 128;
        static final int l = 112;
        static final int m = 3;
        static final int n = 60;
        static final int o = 1712;
        private final android.view.WindowManager a;
        private final android.widget.FrameLayout b;
        private final android.widget.LinearLayout c;
        private final float d;
        private final float e;
        private final boolean f;
        private boolean g;

        class a extends android.widget.FrameLayout {
            final /* synthetic */ dev.duo.workspaceprobe.b a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(android.content.Context context, dev.duo.workspaceprobe.b bVar) {
                super(context);
                this.a = bVar;
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchKeyEvent(android.view.KeyEvent keyEvent) {
                if (keyEvent.getKeyCode() != 4) {
                    return super.dispatchKeyEvent(keyEvent);
                }
                if (keyEvent.getAction() == 1) {
                    dev.duo.workspaceprobe.b.b0.this.a();
                }
                return true;
            }
        }

        b0(final java.lang.String str, boolean z, int i2, int i3, float f, boolean z2, int i4) {
            this.a = (android.view.WindowManager) dev.duo.workspaceprobe.b.this.p4.getSystemService(android.view.WindowManager.class);
            this.d = f;
            this.f = z2;
            boolean b = dev.duo.workspaceprobe.b.b(dev.duo.workspaceprobe.b.this.p4);
            int i5 = b ? -855305 : -14935010;
            dev.duo.workspaceprobe.b.b0.a aVar = new dev.duo.workspaceprobe.b.b0.a(dev.duo.workspaceprobe.b.this.p4, dev.duo.workspaceprobe.b.this);
            this.b = aVar;
            aVar.setOnTouchListener(new android.view.View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda2
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
                    boolean a2;
                    a2 = dev.duo.workspaceprobe.b.b0.this.a(view, motionEvent);
                    return a2;
                }
            });
            android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(dev.duo.workspaceprobe.b.this.p4);
            this.c = linearLayout;
            linearLayout.setOrientation(1);
            linearLayout.setBackground(dev.duo.workspaceprobe.b.b(b ? -148100050 : -134217729, 40.0f));
            linearLayout.setElevation(24.0f);
            linearLayout.setClipToOutline(true);
            linearLayout.setClickable(true);
            android.widget.LinearLayout linearLayout2 = new android.widget.LinearLayout(dev.duo.workspaceprobe.b.this.p4);
            linearLayout2.setGravity(dev.duo.workspaceprobe.b.z);
            linearLayout2.setPadding(36, 0, 36, 0);
            android.widget.ImageView imageView = new android.widget.ImageView(dev.duo.workspaceprobe.b.this.p4);
            android.widget.TextView textView = new android.widget.TextView(dev.duo.workspaceprobe.b.this.p4);
            try {
                imageView.setImageDrawable(dev.duo.workspaceprobe.b.this.B(str));
            } catch (android.content.pm.PackageManager.NameNotFoundException e) {
            }
            textView.setText(dev.duo.workspaceprobe.b.this.C(str));
            linearLayout2.addView(imageView, new android.widget.LinearLayout.LayoutParams(72, 72));
            textView.setSingleLine(true);
            textView.setEllipsize(android.text.TextUtils.TruncateAt.END);
            textView.setTextSize(0, 36.0f);
            textView.setTextColor(i5);
            textView.setTypeface(android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, 500, false));
            android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(0, -2, 1.0f);
            layoutParams.leftMargin = 24;
            linearLayout2.addView(textView, layoutParams);
            this.c.addView(linearLayout2, new android.widget.LinearLayout.LayoutParams(-1, k));
            a(b, i5, "全屏打开", true, new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.b0.this.a(str);
                }
            });
            a(b, i5, "小窗打开", true, new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.b0.this.b(str);
                }
            });
            if (z) {
                a(b, -50384, "从侧栏移除", false, new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.b0.this.c(str);
                    }
                });
            } else {
                a(b, i5, "固定到侧栏", false, new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.b0.this.d(str);
                    }
                });
            }
            int max = java.lang.Math.max(n, java.lang.Math.min(i4 - 527, i3 - 233));
            this.e = java.lang.Math.max(0, java.lang.Math.min(467, i3 - max));
            android.widget.FrameLayout.LayoutParams layoutParams2 = new android.widget.FrameLayout.LayoutParams(i, 467);
            layoutParams2.leftMargin = i2;
            layoutParams2.topMargin = max;
            this.b.addView(this.c, layoutParams2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(java.lang.String str) {
            dev.duo.workspaceprobe.b.this.s(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(java.lang.String str) {
            dev.duo.workspaceprobe.b.this.F(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(java.lang.String str) {
            dev.duo.workspaceprobe.b.this.u(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean a(android.view.View view, android.view.MotionEvent motionEvent) {
            if (motionEvent.getActionMasked() != 0) {
                return true;
            }
            a();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            try {
                this.a.removeViewImmediate(this.b);
            } catch (java.lang.RuntimeException e) {
                android.util.Log.w("DuoRail", "Sidebar menu remove failed", e);
            }
        }

        void b() {
            if (this.g) {
                this.g = false;
                this.c.animate().cancel();
                this.c.animate().scaleX(0.9f).scaleY(0.9f).alpha(0.0f).setDuration(120L).withEndAction(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.b0.this.c();
                    }
                }).start();
            }
        }

        void d() {
            android.view.WindowManager.LayoutParams layoutParams = new android.view.WindowManager.LayoutParams(-1, -1, 2017, 16777472, -3);
            layoutParams.gravity = 51;
            layoutParams.layoutInDisplayCutoutMode = 3;
            layoutParams.setFitInsetsTypes(0);
            layoutParams.setTitle("DuoSidebarMenu");
            try {
                this.a.addView(this.b, layoutParams);
                this.g = true;
                this.c.setPivotX(this.d);
                this.c.setPivotY(this.e);
                this.c.setScaleX(0.9f);
                this.c.setScaleY(0.9f);
                this.c.setAlpha(0.0f);
                this.c.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(180L).setInterpolator(new android.view.animation.DecelerateInterpolator()).start();
                android.util.Log.w("DuoRail", "Sidebar menu open");
            } catch (java.lang.RuntimeException e) {
                android.util.Log.w("DuoRail", "Sidebar menu unavailable", e);
                dev.duo.workspaceprobe.b.this.a4 = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(java.lang.String str) {
            dev.duo.workspaceprobe.b.this.t(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            if (this.f) {
                dev.duo.workspaceprobe.b.this.p();
            } else {
                dev.duo.workspaceprobe.b.this.q();
            }
        }

        private void a(boolean z, int i2, final java.lang.String str, final boolean z2, final java.lang.Runnable runnable) {
            android.view.View view = new android.view.View(dev.duo.workspaceprobe.b.this.p4);
            view.setBackgroundColor(z ? 654311423 : 520093696);
            this.c.addView(view, new android.widget.LinearLayout.LayoutParams(-1, 1));
            android.widget.TextView textView = new android.widget.TextView(dev.duo.workspaceprobe.b.this.p4);
            textView.setText(str);
            textView.setGravity(dev.duo.workspaceprobe.b.z);
            textView.setPadding(dev.duo.workspaceprobe.b.c0, 0, dev.duo.workspaceprobe.b.c0, 0);
            textView.setTextSize(0, 38.0f);
            textView.setTextColor(i2);
            textView.setBackground(new android.graphics.drawable.RippleDrawable(android.content.res.ColorStateList.valueOf(z ? 872415231 : 520093696), null, new android.graphics.drawable.ColorDrawable(-1)));
            textView.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view2) {
                    dev.duo.workspaceprobe.b.b0.this.a(str, z2, runnable, view2);
                }
            });
            this.c.addView(textView, new android.widget.LinearLayout.LayoutParams(-1, l));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(java.lang.String str, boolean z, java.lang.Runnable runnable, android.view.View view) {
            android.util.Log.w("DuoRail", "Sidebar menu " + str + (this.f ? " (panel)" : ""));
            if (z) {
                dev.duo.workspaceprobe.b.this.q();
            } else {
                a();
            }
            runnable.run();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$c, reason: case insensitive filesystem */
    class C0041c extends android.animation.AnimatorListenerAdapter {
        final /* synthetic */ int a;
        final /* synthetic */ android.animation.ValueAnimator b;

        C0041c(int i, android.animation.ValueAnimator valueAnimator) {
            this.a = i;
            this.b = valueAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            if (dev.duo.workspaceprobe.b.this.p2.get(java.lang.Integer.valueOf(this.a)) != this.b) {
                return;
            }
            dev.duo.workspaceprobe.b.this.p2.remove(java.lang.Integer.valueOf(this.a));
            dev.duo.workspaceprobe.b.this.z(this.a);
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$d, reason: case insensitive filesystem */
    class ViewOnAttachStateChangeListenerC0042d implements android.view.View.OnAttachStateChangeListener {
        ViewOnAttachStateChangeListenerC0042d() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(android.view.View view) {
            dev.duo.workspaceprobe.b.this.a(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(android.view.View view) {
            dev.duo.workspaceprobe.b.this.b("detached");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class d0 {
        static final int a = 963;
        static final int b = 200;
        static final int c = 305;
        static final int d = 735;
        static final int e = 1310;
        static final int f = 56;
        static final int g = 3;
        static final int h = 128;
        static final int i = 28;
        private boolean A;
        dev.duo.workspaceprobe.b.W B;
        float C;
        float D;
        final java.util.List<android.view.View> E;
        boolean F;
        final dev.duo.workspaceprobe.b.K j;
        final int k;
        final int l;
        final int m;
        final int n;
        final int o;
        final float p;
        private final android.view.WindowManager q;
        private final boolean r;
        private final int s;
        private final int t;
        private final android.widget.FrameLayout u;
        private final android.widget.FrameLayout v;
        private final android.widget.LinearLayout w;
        private final android.widget.EditText x;
        private final dev.duo.workspaceprobe.b.Z y;
        private java.util.List<java.lang.Object[]> z;

        class a extends android.widget.FrameLayout {
            final /* synthetic */ dev.duo.workspaceprobe.b a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(android.content.Context context, dev.duo.workspaceprobe.b bVar) {
                super(context);
                this.a = bVar;
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchKeyEvent(android.view.KeyEvent keyEvent) {
                if (keyEvent.getKeyCode() != 4) {
                    return super.dispatchKeyEvent(keyEvent);
                }
                if (keyEvent.getAction() == 1) {
                    dev.duo.workspaceprobe.b.this.q();
                }
                return true;
            }
        }

        /* renamed from: dev.duo.workspaceprobe.b$d0$b, reason: collision with other inner class name */
        class C0010b implements android.text.TextWatcher {
            final /* synthetic */ dev.duo.workspaceprobe.b a;

            C0010b(dev.duo.workspaceprobe.b bVar) {
                this.a = bVar;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(android.text.Editable editable) {
                dev.duo.workspaceprobe.b.d0.this.d();
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(java.lang.CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(java.lang.CharSequence charSequence, int i, int i2, int i3) {
            }
        }

        d0(dev.duo.workspaceprobe.b.K k) {
            this.q = (android.view.WindowManager) dev.duo.workspaceprobe.b.this.p4.getSystemService(android.view.WindowManager.class);
            boolean b2 = dev.duo.workspaceprobe.b.b(dev.duo.workspaceprobe.b.this.p4);
            this.r = b2;
            int i2 = b2 ? -855305 : -14935010;
            this.s = i2;
            int i3 = b2 ? -13882322 : -1776408;
            this.t = i3;
            this.z = java.util.Collections.EMPTY_LIST;
            this.E = new java.util.ArrayList();
            this.j = k;
            dev.duo.workspaceprobe.q qVar = k == null ? null : k.a;
            if (qVar == null) {
                this.k = 0;
                this.l = a;
                this.m = 1712;
                this.n = b;
                this.o = c;
                this.p = 735.0f;
            } else {
                int[] b3 = qVar.b();
                int i4 = b3[0];
                this.k = i4;
                this.l = b3[1];
                int i5 = qVar.i();
                this.m = i5;
                this.n = qVar.a(d, i) - i4;
                this.o = java.lang.Math.max(40, java.lang.Math.min(i5 - 1350, qVar.k().centerY() - 655));
                this.p = qVar.f() ? 0.0f : 735.0f;
            }
            dev.duo.workspaceprobe.b.d0.a aVar = new dev.duo.workspaceprobe.b.d0.a(dev.duo.workspaceprobe.b.this.p4, dev.duo.workspaceprobe.b.this);
            this.u = aVar;
            aVar.setOnTouchListener(new android.view.View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda1
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
                    boolean a2;
                    a2 = dev.duo.workspaceprobe.b.d0.this.a(view, motionEvent);
                    return a2;
                }
            });
            android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(dev.duo.workspaceprobe.b.this.p4);
            this.v = frameLayout;
            frameLayout.setBackground(dev.duo.workspaceprobe.b.b(b2 ? -149152738 : -134941450, 64.0f));
            frameLayout.setElevation(24.0f);
            frameLayout.setClickable(true);
            android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(dev.duo.workspaceprobe.b.this.p4);
            linearLayout.setOrientation(1);
            linearLayout.setPadding(f, f, f, 0);
            android.widget.LinearLayout linearLayout2 = new android.widget.LinearLayout(dev.duo.workspaceprobe.b.this.p4);
            linearLayout2.setGravity(dev.duo.workspaceprobe.b.z);
            android.widget.EditText editText = new android.widget.EditText(dev.duo.workspaceprobe.b.this.p4);
            this.x = editText;
            editText.setHint("搜索应用");
            editText.setSingleLine(true);
            editText.setTextSize(0, 40.0f);
            editText.setTextColor(i2);
            editText.setHintTextColor(b2 ? -2131561737 : -2143536061);
            editText.setBackground(dev.duo.workspaceprobe.b.b(i3, 56.0f));
            editText.setPadding(112, 0, 32, 0);
            editText.setCompoundDrawablePadding(0);
            editText.setImeOptions(3);
            android.widget.FrameLayout frameLayout2 = new android.widget.FrameLayout(dev.duo.workspaceprobe.b.this.p4);
            frameLayout2.addView(editText, new android.widget.FrameLayout.LayoutParams(-1, -1));
            dev.duo.workspaceprobe.b.a0 a0Var = new dev.duo.workspaceprobe.b.a0(dev.duo.workspaceprobe.b.this.p4, 0, b2 ? -5329230 : -12829629);
            android.widget.FrameLayout.LayoutParams layoutParams = new android.widget.FrameLayout.LayoutParams(f, f);
            layoutParams.gravity = dev.duo.workspaceprobe.b.z;
            layoutParams.leftMargin = 38;
            frameLayout2.addView(a0Var, layoutParams);
            linearLayout2.addView(frameLayout2, new android.widget.LinearLayout.LayoutParams(0, 112, 1.0f));
            dev.duo.workspaceprobe.b.Z z = new dev.duo.workspaceprobe.b.Z(dev.duo.workspaceprobe.b.this.p4, i3, i2);
            this.y = z;
            z.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.workspaceprobe.b.d0.this.a(view);
                }
            });
            android.widget.LinearLayout.LayoutParams layoutParams2 = new android.widget.LinearLayout.LayoutParams(112, 112);
            layoutParams2.leftMargin = 32;
            linearLayout2.addView(z, layoutParams2);
            linearLayout.addView(linearLayout2, new android.widget.LinearLayout.LayoutParams(-1, 112));
            android.widget.TextView textView = new android.widget.TextView(dev.duo.workspaceprobe.b.this.p4);
            textView.setText("全部小窗应用");
            textView.setTextSize(0, 36.0f);
            textView.setTextColor(i2);
            textView.setTypeface(android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, 500, false));
            android.widget.LinearLayout.LayoutParams layoutParams3 = new android.widget.LinearLayout.LayoutParams(-2, -2);
            layoutParams3.topMargin = 40;
            layoutParams3.leftMargin = 12;
            layoutParams3.bottomMargin = 20;
            linearLayout.addView(textView, layoutParams3);
            android.widget.ScrollView scrollView = new android.widget.ScrollView(dev.duo.workspaceprobe.b.this.p4);
            scrollView.setVerticalScrollBarEnabled(false);
            scrollView.setOverScrollMode(2);
            scrollView.setVerticalFadingEdgeEnabled(true);
            scrollView.setFadingEdgeLength(120);
            android.widget.LinearLayout linearLayout3 = new android.widget.LinearLayout(dev.duo.workspaceprobe.b.this.p4);
            this.w = linearLayout3;
            linearLayout3.setOrientation(1);
            linearLayout3.setClipChildren(false);
            scrollView.addView(linearLayout3, new android.widget.FrameLayout.LayoutParams(-1, -2));
            linearLayout.addView(scrollView, new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0f));
            frameLayout.addView(linearLayout, new android.widget.FrameLayout.LayoutParams(-1, -1));
            android.widget.FrameLayout.LayoutParams layoutParams4 = new android.widget.FrameLayout.LayoutParams(d, e);
            layoutParams4.leftMargin = this.n;
            layoutParams4.topMargin = this.o;
            aVar.addView(frameLayout, layoutParams4);
            editText.addTextChangedListener(new dev.duo.workspaceprobe.b.d0.C0010b(dev.duo.workspaceprobe.b.this));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            final java.util.List I = dev.duo.workspaceprobe.b.this.I();
            dev.duo.workspaceprobe.b.this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.d0.this.a(I);
                }
            });
        }

        void d() {
            this.y.a(dev.duo.workspaceprobe.b.this.Y3);
            this.w.removeAllViews();
            this.E.clear();
            java.lang.String lowerCase = this.x.getText().toString().trim().toLowerCase(java.util.Locale.ROOT);
            this.F = !lowerCase.isEmpty();
            android.widget.LinearLayout linearLayout = null;
            int i2 = 0;
            for (java.lang.Object[] objArr : this.z) {
                java.lang.String str = (java.lang.String) objArr[0];
                java.lang.String str2 = (java.lang.String) objArr[1];
                if (!lowerCase.isEmpty()) {
                    java.util.Locale locale = java.util.Locale.ROOT;
                    if (!str2.toLowerCase(locale).contains(lowerCase) && !str.toLowerCase(locale).contains(lowerCase)) {
                    }
                }
                if (i2 % 3 == 0) {
                    linearLayout = new android.widget.LinearLayout(dev.duo.workspaceprobe.b.this.p4);
                    linearLayout.setClipChildren(false);
                    this.w.addView(linearLayout, new android.widget.LinearLayout.LayoutParams(-1, -2));
                }
                android.view.View a2 = a(str, str2, (android.graphics.drawable.Drawable) objArr[2]);
                this.E.add(a2);
                linearLayout.addView(a2, new android.widget.LinearLayout.LayoutParams(0, -2, 1.0f));
                i2++;
            }
            for (int i3 = i2 % 3; linearLayout != null && i3 != 0 && i3 < 3; i3++) {
                linearLayout.addView(new android.view.View(dev.duo.workspaceprobe.b.this.p4), new android.widget.LinearLayout.LayoutParams(0, 1, 1.0f));
            }
        }

        void e() {
            android.view.WindowManager.LayoutParams layoutParams = new android.view.WindowManager.LayoutParams(this.l - this.k, -1, 2017, 16777504, -3);
            layoutParams.gravity = 51;
            layoutParams.layoutInDisplayCutoutMode = 3;
            layoutParams.setFitInsetsTypes(0);
            layoutParams.softInputMode = 51;
            layoutParams.x = this.k;
            layoutParams.setTitle("DuoSidebarPanel");
            try {
                this.q.addView(this.u, layoutParams);
                this.A = true;
                dev.duo.workspaceprobe.b.K k = this.j;
                int F1 = (k == null || k.a == null) ? dev.duo.workspaceprobe.b.this.F1() : dev.duo.workspaceprobe.b.this.X3;
                this.v.setPivotX(this.p);
                this.v.setPivotY(java.lang.Math.max(0, java.lang.Math.min(e, F1 - this.o)));
                this.v.setScaleX(0.6f);
                this.v.setScaleY(0.6f);
                this.v.setAlpha(0.0f);
                this.v.animate().scaleX(1.0f).scaleY(1.0f).setDuration(250L).setInterpolator(new android.view.animation.OvershootInterpolator(0.7f)).start();
                this.v.animate().alpha(1.0f).setDuration(150L);
                android.util.Log.w("DuoRail", "Sidebar panel open");
                dev.duo.workspaceprobe.b.this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.d0.this.c();
                    }
                });
            } catch (java.lang.RuntimeException e2) {
                android.util.Log.w("DuoRail", "Sidebar panel unavailable", e2);
                dev.duo.workspaceprobe.b.this.Z3 = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            try {
                this.q.removeViewImmediate(this.u);
            } catch (java.lang.RuntimeException e2) {
                android.util.Log.w("DuoRail", "Sidebar panel remove failed", e2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean a(android.view.View view, android.view.MotionEvent motionEvent) {
            if (motionEvent.getActionMasked() != 0) {
                return true;
            }
            dev.duo.workspaceprobe.b.this.q();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(android.view.View view) {
            dev.duo.workspaceprobe.b.this.m(!r2.Y3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(java.util.List list) {
            if (dev.duo.workspaceprobe.b.this.Z3 != this) {
                return;
            }
            this.z = list;
            d();
        }

        void a() {
            if (this.A) {
                this.A = false;
                android.view.inputmethod.InputMethodManager inputMethodManager = (android.view.inputmethod.InputMethodManager) dev.duo.workspaceprobe.b.this.p4.getSystemService(android.view.inputmethod.InputMethodManager.class);
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(this.x.getWindowToken(), 0);
                }
                dev.duo.workspaceprobe.b.W w = this.B;
                if (w != null) {
                    w.c();
                }
                this.v.animate().cancel();
                this.v.animate().scaleX(0.6f).scaleY(0.6f).alpha(0.0f).setDuration(160L).setInterpolator(new android.view.animation.AccelerateInterpolator()).withEndAction(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.d0.this.b();
                    }
                }).start();
                android.util.Log.w("DuoRail", "Sidebar panel close");
            }
        }

        private android.view.View a(final java.lang.String str, java.lang.String str2, final android.graphics.drawable.Drawable drawable) {
            android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(dev.duo.workspaceprobe.b.this.p4);
            linearLayout.setOrientation(1);
            linearLayout.setGravity(1);
            linearLayout.setPadding(0, i, 0, i);
            final android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(dev.duo.workspaceprobe.b.this.p4);
            final android.widget.ImageView imageView = new android.widget.ImageView(dev.duo.workspaceprobe.b.this.p4);
            imageView.setImageDrawable(drawable);
            android.widget.FrameLayout.LayoutParams layoutParams = new android.widget.FrameLayout.LayoutParams(h, h);
            layoutParams.topMargin = dev.duo.workspaceprobe.b.z;
            layoutParams.rightMargin = dev.duo.workspaceprobe.b.z;
            frameLayout.addView(imageView, layoutParams);
            final boolean contains = dev.duo.workspaceprobe.b.this.Q3.contains(str);
            if (dev.duo.workspaceprobe.b.this.Y3 && !contains) {
                frameLayout.addView(new dev.duo.workspaceprobe.b.V(dev.duo.workspaceprobe.b.this.p4, true), new android.widget.FrameLayout.LayoutParams(48, 48, 53));
            }
            if (dev.duo.workspaceprobe.b.this.Y3 && contains) {
                imageView.setAlpha(0.35f);
            }
            linearLayout.addView(frameLayout, new android.widget.LinearLayout.LayoutParams(144, 144));
            android.widget.TextView textView = new android.widget.TextView(dev.duo.workspaceprobe.b.this.p4);
            textView.setText(str2);
            textView.setSingleLine(true);
            textView.setEllipsize(android.text.TextUtils.TruncateAt.END);
            textView.setGravity(17);
            textView.setTextSize(0, 30.0f);
            textView.setTextColor(this.r ? -856493321 : -868467645);
            android.widget.LinearLayout.LayoutParams layoutParams2 = new android.widget.LinearLayout.LayoutParams(-1, -2);
            layoutParams2.topMargin = 6;
            linearLayout.addView(textView, layoutParams2);
            linearLayout.setContentDescription(str2);
            linearLayout.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.workspaceprobe.b.d0.this.a(contains, str, view);
                }
            });
            linearLayout.setOnLongClickListener(new android.view.View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda4
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(android.view.View view) {
                    boolean a2;
                    a2 = dev.duo.workspaceprobe.b.d0.this.a(imageView, str, drawable, view);
                    return a2;
                }
            });
            linearLayout.setOnTouchListener(new android.view.View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda5
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
                    boolean a2;
                    a2 = dev.duo.workspaceprobe.b.d0.this.a(frameLayout, view, motionEvent);
                    return a2;
                }
            });
            return linearLayout;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(boolean z, java.lang.String str, android.view.View view) {
            if (dev.duo.workspaceprobe.b.this.Y3) {
                if (z) {
                    return;
                }
                dev.duo.workspaceprobe.b.this.u(str);
            } else {
                dev.duo.workspaceprobe.b.this.q();
                if (dev.duo.workspaceprobe.b.this.V3) {
                    dev.duo.workspaceprobe.b.this.s(str);
                } else {
                    dev.duo.workspaceprobe.b.this.t(str);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean a(android.widget.ImageView imageView, java.lang.String str, android.graphics.drawable.Drawable drawable, android.view.View view) {
            if (this.B != null) {
                return true;
            }
            dev.duo.workspaceprobe.b.W w = dev.duo.workspaceprobe.b.this.new W(this, view, imageView, str, drawable);
            this.B = w;
            w.f();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean a(android.widget.FrameLayout frameLayout, android.view.View view, android.view.MotionEvent motionEvent) {
            this.C = motionEvent.getRawX();
            this.D = motionEvent.getRawY();
            dev.duo.workspaceprobe.b.W w = this.B;
            if (w != null && w.b == view) {
                w.a(motionEvent);
                return false;
            }
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                frameLayout.animate().scaleX(0.92f).scaleY(0.92f).setDuration(90L).start();
            } else if (actionMasked == 1 || actionMasked == 3) {
                frameLayout.animate().scaleX(1.0f).scaleY(1.0f).setDuration(180L).start();
            }
            return false;
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$e, reason: case insensitive filesystem */
    class C0043e extends android.animation.AnimatorListenerAdapter {
        boolean a;

        C0043e() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(android.animation.Animator animator) {
            this.a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            dev.duo.workspaceprobe.b.this.r3 = false;
            dev.duo.workspaceprobe.b.this.t3 = this.a ? 0.0f : 1.0f;
            if (!this.a) {
                dev.duo.workspaceprobe.b.this.p3 = false;
                java.lang.Runnable runnable = dev.duo.workspaceprobe.b.this.K6;
                if (runnable != null) {
                    runnable.run();
                }
            }
            dev.duo.workspaceprobe.b.this.Q();
        }
    }

    private final class e0 extends android.widget.ScrollView implements java.lang.Runnable {
        static final int h = 80;
        private boolean a;
        private boolean b;
        private android.graphics.Paint c;
        private android.graphics.LinearGradient d;
        private android.graphics.LinearGradient e;
        private final android.graphics.Matrix f;

        e0() {
            super(dev.duo.workspaceprobe.b.this.p4);
            this.f = new android.graphics.Matrix();
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(android.view.MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.a = true;
            } else if (actionMasked == 1 || actionMasked == 3) {
                this.a = false;
                a();
            }
            return super.dispatchTouchEvent(motionEvent);
        }

        @Override // android.widget.ScrollView, android.view.View
        public void draw(android.graphics.Canvas canvas) {
            int scrollY = getScrollY();
            int width = getWidth();
            int height = getHeight();
            int i = 0;
            int max = getChildCount() == 0 ? 0 : java.lang.Math.max(0, getChildAt(0).getHeight() - height);
            float f = 1.0f;
            float min = this.b ? java.lang.Math.min(1.0f, scrollY / 20.0f) : 0.0f;
            float min2 = this.b ? java.lang.Math.min(1.0f, (max - scrollY) / 20.0f) : 0.0f;
            if (min <= 0.0f && min2 <= 0.0f) {
                super.draw(canvas);
                return;
            }
            if (this.c == null) {
                int length = dev.duo.workspaceprobe.b.K.length;
                int[] iArr = new int[length];
                int[] iArr2 = new int[length];
                float[] fArr = new float[length];
                while (i < length) {
                    int i2 = length - 1;
                    float f2 = f;
                    fArr[i] = i / i2;
                    iArr2[i] = java.lang.Math.round((f2 - dev.duo.workspaceprobe.b.K[i]) * 255.0f) << 24;
                    iArr[i] = java.lang.Math.round((f2 - dev.duo.workspaceprobe.b.K[i2 - i]) * 255.0f) << 24;
                    i++;
                    f = f2;
                }
                android.graphics.Shader.TileMode tileMode = android.graphics.Shader.TileMode.CLAMP;
                this.d = new android.graphics.LinearGradient(0.0f, 0.0f, 0.0f, 20.0f, iArr, fArr, tileMode);
                this.e = new android.graphics.LinearGradient(0.0f, 0.0f, 0.0f, 20.0f, iArr2, fArr, tileMode);
                android.graphics.Paint paint = new android.graphics.Paint();
                this.c = paint;
                paint.setXfermode(new android.graphics.PorterDuffXfermode(android.graphics.PorterDuff.Mode.DST_OUT));
            }
            float f3 = scrollY;
            float f4 = width;
            int i3 = height + scrollY;
            float f5 = i3;
            int saveLayer = canvas.saveLayer(0.0f, f3, f4, f5, null);
            super.draw(canvas);
            if (min > 0.0f) {
                this.f.setTranslate(0.0f, f3);
                this.d.setLocalMatrix(this.f);
                this.c.setShader(this.d);
                this.c.setAlpha(java.lang.Math.round(min * 255.0f));
                canvas.drawRect(0.0f, f3, f4, scrollY + 20, this.c);
            }
            if (min2 > 0.0f) {
                float f6 = i3 - 20;
                this.f.setTranslate(0.0f, f6);
                this.e.setLocalMatrix(this.f);
                this.c.setShader(this.e);
                this.c.setAlpha(java.lang.Math.round(min2 * 255.0f));
                canvas.drawRect(0.0f, f6, f4, f5, this.c);
            }
            canvas.restoreToCount(saveLayer);
        }

        @Override // android.view.View
        protected void onScrollChanged(int i, int i2, int i3, int i4) {
            super.onScrollChanged(i, i2, i3, i4);
            a();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.a || dev.duo.workspaceprobe.b.this.b4 != null) {
                return;
            }
            if (dev.duo.workspaceprobe.b.this.Z3 == null || dev.duo.workspaceprobe.b.this.Z3.B == null) {
                int max = getChildCount() == 0 ? 0 : java.lang.Math.max(0, getChildAt(0).getHeight() - getHeight());
                int round = java.lang.Math.round(getScrollY() / 150.0f) * dev.duo.workspaceprobe.b.j0;
                int min = java.lang.Math.min((max / dev.duo.workspaceprobe.b.j0) * dev.duo.workspaceprobe.b.j0, round);
                if (!this.b || java.lang.Math.abs(max - getScrollY()) >= java.lang.Math.abs(java.lang.Math.min(max, round) - getScrollY())) {
                    max = this.b ? java.lang.Math.min(max, round) : min;
                }
                if (max != getScrollY()) {
                    smoothScrollTo(0, max);
                }
            }
        }

        void a(boolean z) {
            if (this.b == z) {
                return;
            }
            this.b = z;
            setVerticalFadingEdgeEnabled(!z);
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            removeCallbacks(this);
            postDelayed(this, 80L);
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$f, reason: case insensitive filesystem */
    class ViewTreeObserverOnPreDrawListenerC0044f implements android.view.ViewTreeObserver.OnPreDrawListener {
        final /* synthetic */ android.view.View a;
        final /* synthetic */ java.lang.reflect.Method b;

        ViewTreeObserverOnPreDrawListenerC0044f(android.view.View view, java.lang.reflect.Method method) {
            this.a = view;
            this.b = method;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.a.getViewTreeObserver().removeOnPreDrawListener(this);
            try {
                this.b.invoke(this.a, java.lang.Float.valueOf(1.0f));
                return true;
            } catch (java.lang.Throwable th) {
                android.util.Log.e("DuoKeyguard", "Shortcut start position failed", th);
                return true;
            }
        }
    }

    private final class f0 extends android.telephony.SubscriptionManager.OnSubscriptionsChangedListener {
        private final dev.duo.workspaceprobe.b.h0 a;
        private int[] b = new int[0];
        private final java.util.List<android.telephony.TelephonyManager> c = new java.util.ArrayList();
        private final java.util.List<android.telephony.TelephonyCallback> d = new java.util.ArrayList();

        final class a extends android.telephony.TelephonyCallback implements android.telephony.TelephonyCallback.SignalStrengthsListener {
            final /* synthetic */ int a;
            final /* synthetic */ int b;

            a(int i, int i2) {
                this.a = i;
                this.b = i2;
            }

            @Override // android.telephony.TelephonyCallback.SignalStrengthsListener
            public void onSignalStrengthsChanged(android.telephony.SignalStrength signalStrength) {
                if (this.a >= dev.duo.workspaceprobe.b.f0.this.b.length || dev.duo.workspaceprobe.b.f0.this.b[this.a] != this.b) {
                    return;
                }
                int b = signalStrength == null ? -1 : dev.duo.workspaceprobe.b.b(signalStrength);
                if (b == (this.a == 0 ? dev.duo.workspaceprobe.b.f0.this.a.e0 : dev.duo.workspaceprobe.b.f0.this.a.f0)) {
                    return;
                }
                if (this.a == 0) {
                    dev.duo.workspaceprobe.b.f0.this.a.e0 = b;
                } else {
                    dev.duo.workspaceprobe.b.f0.this.a.f0 = b;
                }
                dev.duo.workspaceprobe.b.this.m1();
            }
        }

        f0(dev.duo.workspaceprobe.b.h0 h0Var) {
            this.a = h0Var;
        }

        @Override // android.telephony.SubscriptionManager.OnSubscriptionsChangedListener
        public void onSubscriptionsChanged() {
            java.util.List<android.telephony.SubscriptionInfo> activeSubscriptionInfoList = ((android.telephony.SubscriptionManager) dev.duo.workspaceprobe.b.this.p4.getSystemService(android.telephony.SubscriptionManager.class)).getActiveSubscriptionInfoList();
            int[] array = activeSubscriptionInfoList == null ? new int[0] : activeSubscriptionInfoList.stream().sorted(java.util.Comparator.comparingInt(new java.util.function.ToIntFunction() { // from class: dev.duo.workspaceprobe.b$f0$$ExternalSyntheticLambda0
                @Override // java.util.function.ToIntFunction
                public final int applyAsInt(java.lang.Object obj) {
                    return ((android.telephony.SubscriptionInfo) obj).getSimSlotIndex();
                }
            })).mapToInt(new java.util.function.ToIntFunction() { // from class: dev.duo.workspaceprobe.b$f0$$ExternalSyntheticLambda1
                @Override // java.util.function.ToIntFunction
                public final int applyAsInt(java.lang.Object obj) {
                    return ((android.telephony.SubscriptionInfo) obj).getSubscriptionId();
                }
            }).limit(2L).toArray();
            if (java.util.Arrays.equals(array, this.b)) {
                return;
            }
            for (int i = 0; i < this.c.size(); i++) {
                this.c.get(i).unregisterTelephonyCallback(this.d.get(i));
            }
            this.c.clear();
            this.d.clear();
            this.b = array;
            dev.duo.workspaceprobe.b.h0 h0Var = this.a;
            h0Var.e0 = -1;
            h0Var.f0 = -1;
            h0Var.g0 = array.length > 1;
            android.util.Log.w("DuoRail", "SIM rows " + java.util.Arrays.toString(array));
            android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) dev.duo.workspaceprobe.b.this.p4.getSystemService(android.telephony.TelephonyManager.class);
            for (int i2 = 0; i2 < array.length; i2++) {
                int i3 = array[i2];
                android.telephony.TelephonyManager createForSubscriptionId = telephonyManager.createForSubscriptionId(i3);
                dev.duo.workspaceprobe.b.f0.a aVar = new dev.duo.workspaceprobe.b.f0.a(i2, i3);
                createForSubscriptionId.registerTelephonyCallback(dev.duo.workspaceprobe.b.this.p4.getMainExecutor(), aVar);
                this.c.add(createForSubscriptionId);
                this.d.add(aVar);
            }
            dev.duo.workspaceprobe.b.this.m1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$g, reason: case insensitive filesystem */
    class C0045g implements android.hardware.SensorEventListener {
        C0045g() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(android.hardware.Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(android.hardware.SensorEvent sensorEvent) {
            dev.duo.workspaceprobe.b.this.j1 = sensorEvent.values[0];
            if (dev.duo.workspaceprobe.b.this.h1 && dev.duo.workspaceprobe.b.this.A1) {
                if (dev.duo.workspaceprobe.b.this.u1 && dev.duo.workspaceprobe.b.this.x1) {
                    dev.duo.workspaceprobe.b bVar = dev.duo.workspaceprobe.b.this;
                    if (!bVar.O1 && !bVar.P1) {
                        dev.duo.workspaceprobe.b bVar2 = dev.duo.workspaceprobe.b.this;
                        if (!bVar2.Q1) {
                            if (bVar2.c1.a(sensorEvent.values[0], android.os.SystemClock.uptimeMillis())) {
                                dev.duo.workspaceprobe.b.this.x1();
                                return;
                            }
                            return;
                        }
                    }
                }
                dev.duo.workspaceprobe.b.this.g2();
                return;
            }
            if (dev.duo.workspaceprobe.b.this.h1) {
                int i = dev.duo.workspaceprobe.b.this.i1;
                dev.duo.workspaceprobe.b bVar3 = dev.duo.workspaceprobe.b.this;
                if (i == bVar3.J1 && !bVar3.L1 && !bVar3.O1 && !bVar3.P1) {
                    dev.duo.workspaceprobe.b bVar4 = dev.duo.workspaceprobe.b.this;
                    if (!bVar4.Q1) {
                        if (bVar4.c1.a(sensorEvent.values[0], android.os.SystemClock.uptimeMillis())) {
                            dev.duo.workspaceprobe.b.this.u1();
                            return;
                        }
                        return;
                    }
                }
            }
            dev.duo.workspaceprobe.b.this.g2();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class g0 extends android.os.ResultReceiver {
        final android.os.IBinder a;
        android.os.IBinder b;
        android.os.ResultReceiver c;
        boolean d;
        boolean e;
        final java.lang.Runnable f;
        final android.os.IBinder.DeathRecipient g;

        g0() {
            super(dev.duo.workspaceprobe.b.this.D1);
            this.a = new android.os.Binder();
            this.f = new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$g0$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.g0.this.a();
                }
            };
            this.g = new android.os.IBinder.DeathRecipient() { // from class: dev.duo.workspaceprobe.b$g0$$ExternalSyntheticLambda1
                @Override // android.os.IBinder.DeathRecipient
                public final void binderDied() {
                    dev.duo.workspaceprobe.b.g0.this.c();
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            if (dev.duo.workspaceprobe.b.this.z5 != this) {
                return;
            }
            android.util.Log.e("DuoStandby", "Automatic clock timed out before display");
            dev.duo.workspaceprobe.b.this.o();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            if (dev.duo.workspaceprobe.b.this.z5 == this) {
                dev.duo.workspaceprobe.b.this.o();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            dev.duo.workspaceprobe.b.this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$g0$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.g0.this.b();
                }
            });
        }

        @Override // android.os.ResultReceiver
        protected void onReceiveResult(int i, android.os.Bundle bundle) {
            if (i != 1) {
                if (i != 5 || dev.duo.workspaceprobe.b.this.z5 != this || !this.e) {
                    if (i == 2 && dev.duo.workspaceprobe.b.this.z5 == this) {
                        dev.duo.workspaceprobe.b.this.o();
                        return;
                    }
                    return;
                }
                if (!dev.duo.workspaceprobe.b.this.I1() || !dev.duo.workspaceprobe.b.this.J1()) {
                    dev.duo.workspaceprobe.b.this.o();
                    return;
                } else {
                    dev.duo.workspaceprobe.b.this.D1.removeCallbacks(this.f);
                    android.util.Log.i("DuoStandby", "Automatic awake clock reported visible; visual confirmation pending");
                    return;
                }
            }
            if (dev.duo.workspaceprobe.b.this.z5 == this && this.e) {
                return;
            }
            android.os.ResultReceiver resultReceiver = bundle == null ? null : (android.os.ResultReceiver) bundle.getParcelable(dev.duo.hookprobe.TentClockActivity.b, android.os.ResultReceiver.class);
            android.os.IBinder binder = bundle == null ? null : bundle.getBinder(dev.duo.hookprobe.TentClockActivity.c);
            if (resultReceiver == null || binder == null) {
                if (dev.duo.workspaceprobe.b.this.z5 == this) {
                    dev.duo.workspaceprobe.b.this.o();
                }
                android.util.Log.e("DuoStandby", "Clock READY missing endpoint");
                return;
            }
            if (dev.duo.workspaceprobe.b.this.z5 != this || !dev.duo.workspaceprobe.b.this.I1() || !dev.duo.workspaceprobe.b.this.J1()) {
                resultReceiver.send(3, null);
                if (dev.duo.workspaceprobe.b.this.z5 == this) {
                    dev.duo.workspaceprobe.b.this.o();
                    return;
                }
                return;
            }
            this.c = resultReceiver;
            try {
                binder.linkToDeath(this.g, 0);
                this.b = binder;
                this.e = true;
                this.c.send(4, null);
                try {
                    android.os.PowerManager powerManager = (android.os.PowerManager) dev.duo.workspaceprobe.b.this.p4.getSystemService(android.os.PowerManager.class);
                    if (powerManager.isInteractive()) {
                        return;
                    }
                    java.lang.Class cls = java.lang.Long.TYPE;
                    java.lang.Class cls2 = java.lang.Integer.TYPE;
                    android.os.PowerManager.class.getMethod("wakeUp", cls, cls2, java.lang.String.class, cls2).invoke(powerManager, java.lang.Long.valueOf(android.os.SystemClock.uptimeMillis()), 2, "MiDuo:TentClock", 0);
                } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e) {
                    dev.duo.workspaceprobe.b.this.a(e);
                }
            } catch (android.os.RemoteException e2) {
                dev.duo.workspaceprobe.b.this.o();
                android.util.Log.e("DuoStandby", "Clock process exited before activation", e2);
            }
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$h, reason: case insensitive filesystem */
    class C0046h extends android.content.BroadcastReceiver {
        C0046h() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            if ("com.android.quicksearchbox".equals(getSentFromPackage())) {
                dev.duo.workspaceprobe.b.this.a(intent.getStringExtra("e"), intent.getFloatExtra("p", -1.0f));
            }
        }
    }

    static final class h0 extends android.view.View {
        static final float A = 257.0f;
        static final float B = 226.0f;
        static final int C = 205;
        static final int E = 420;
        private static final int G = 416;
        private static final int H = 405;
        private static final int I = 15;
        private static final android.graphics.Typeface K;
        private static final android.graphics.Typeface L;
        static final float a = 48.6f;
        static final float b = 98.0f;
        static final float c = 146.0f;
        private static final float d = 8.067599f;
        private static final float e = 6.804f;
        private static final float f = 6.804f;
        private static final float g = 31.0f;
        private static final float h = 149.0f;
        private static final float i = 28.0f;
        private static final float j = 152.0f;
        private static final float l = 5.1029997f;
        private static final float m = 29.986198f;
        private static final float n = 64.400604f;
        private static final float o = 21.869999f;
        private static final float p = 2.916f;
        private static final float q = 5.0f;
        private static final float r = 35.235f;
        private static final float s = 9.72f;
        private static final float t = 13.122f;
        private static final float u = 4.131f;
        private static final float v = 33.534f;
        private static final float w = -3.645f;
        static final float x = 224.0f;
        static final float y = 28.0f;
        static final float z = 6.0f;
        private final android.graphics.Paint A0;
        private final android.graphics.RectF B0;
        private final android.graphics.Path C0;
        float M;
        boolean N;
        boolean O;
        boolean P;
        boolean Q;
        boolean R;
        boolean S;
        boolean T;
        boolean U;
        boolean V;
        float W;
        android.graphics.drawable.Drawable[] a0;
        int b0;
        int c0;
        java.lang.String d0;
        int e0;
        int f0;
        boolean g0;
        int h0;
        private final android.graphics.Paint i0;
        private final android.graphics.Path j0;
        private final android.graphics.Matrix k0;
        private boolean l0;
        private boolean m0;
        private boolean n0;
        private boolean o0;
        private float p0;
        private float q0;
        private float r0;
        private int s0;
        private java.util.function.Consumer<android.view.View> t0;
        private final android.graphics.Rect u0;
        private final android.graphics.Rect v0;
        private final android.graphics.Paint w0;
        private final android.graphics.Paint x0;
        private final android.graphics.Rect y0;
        private final android.graphics.Paint z0;
        private static final float[] k = {121.0f, 101.5f, 80.0f, 59.0f};
        static final int D = (int) java.lang.Math.ceil(286.6000061035156d);
        private static final int F = (int) java.lang.Math.ceil(202.6676025390625d);
        private static final android.graphics.Path J = b();

        static {
            android.graphics.Typeface typeface = android.graphics.Typeface.DEFAULT;
            K = android.graphics.Typeface.create(typeface, 600, false);
            L = android.graphics.Typeface.create(typeface, 700, false);
        }

        h0(android.content.Context context) {
            this(context, true);
        }

        void d(dev.duo.workspaceprobe.b.h0 h0Var) {
            this.M = h0Var.M;
            this.e0 = h0Var.e0;
            this.f0 = h0Var.f0;
            this.g0 = h0Var.g0;
            this.N = h0Var.N;
            this.P = h0Var.P;
            this.a0 = h0Var.a0;
            this.V = h0Var.V;
            this.b0 = h0Var.b0;
            this.c0 = h0Var.c0;
            this.O = h0Var.O;
            this.d0 = h0Var.d0;
            this.Q = h0Var.Q;
            this.R = h0Var.R;
            this.S = h0Var.S;
            this.T = h0Var.T;
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            float f2;
            dev.duo.workspaceprobe.b.h0 h0Var;
            int i2;
            int i3;
            int i4;
            android.graphics.Canvas canvas2;
            dev.duo.workspaceprobe.b.h0 h0Var2;
            float f3;
            int i5;
            float f4;
            canvas.translate(0.0f, dev.duo.workspaceprobe.b.x0);
            float f5 = this.S ? 6.804f : d;
            int i6 = this.h0;
            int i7 = (i6 & 16777215) | 1291845632;
            this.i0.setColor(i6);
            this.z0.setStrokeWidth(f5);
            if (this.W > 0.0f) {
                java.util.Calendar calendar = java.util.Calendar.getInstance();
                int i8 = calendar.get(12);
                java.lang.String str = calendar.get(11) + (i8 < 10 ? ":0" : ":") + i8;
                int saveLayerAlpha = this.W < 1.0f ? canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), 97.4f - f5, java.lang.Math.round(this.W * 255.0f)) : -1;
                a(canvas, str, m, b, n);
                h0Var = this;
                f2 = 98.0f;
                if (saveLayerAlpha >= 0) {
                    canvas.restoreToCount(saveLayerAlpha);
                }
            } else {
                f2 = 98.0f;
                h0Var = this;
            }
            boolean z2 = h0Var.Q;
            boolean z3 = !z2 && h0Var.R && h0Var.c0 < 0 && h0Var.O && !h0Var.d0.isEmpty();
            boolean z4 = (!h0Var.g0 || z2 || z3) ? false : true;
            boolean z5 = z2 || z3 || z4;
            float f6 = z5 ? 28.0f : g;
            float f7 = z5 ? j : h;
            h0Var.B0.set(49.4f, 97.4f, 146.6f, 194.6f);
            int i9 = h0Var.N ? -13318311 : h0Var.M <= 0.2f ? -50384 : h0Var.h0;
            float max = java.lang.Math.max(0.03f, java.lang.Math.min(1.0f, h0Var.M));
            if (h0Var.P && h0Var.T) {
                java.lang.String valueOf = java.lang.String.valueOf(java.lang.Math.round(h0Var.M * 100.0f));
                float degrees = (float) java.lang.Math.toDegrees(java.lang.Math.asin(java.lang.Math.min(1.0f, (((dev.duo.workspaceprobe.h.a(valueOf, o, h0Var.S) / 2.0f) + q) + (f5 / 2.0f)) / a)));
                float f8 = (270.0f - degrees) - f7;
                float f9 = (f6 + 90.0f) - degrees;
                float f10 = max * (f8 + f9);
                h0Var.z0.setColor(i7);
                float f11 = f7;
                i2 = 16777215;
                i3 = 0;
                i4 = 1;
                canvas.drawArc(h0Var.B0, f11, f8, false, h0Var.z0);
                float f12 = degrees + 270.0f;
                canvas.drawArc(h0Var.B0, f12, f9, false, h0Var.z0);
                h0Var.z0.setColor(i9);
                canvas.drawArc(h0Var.B0, f11, java.lang.Math.min(f10, f8), false, h0Var.z0);
                if (f10 > f8) {
                    canvas.drawArc(h0Var.B0, f12, f10 - f8, false, h0Var.z0);
                }
                h0Var.a(canvas, valueOf, o, f2, 111.251f);
            } else {
                float f13 = f7;
                i2 = 16777215;
                i3 = 0;
                i4 = 1;
                float f14 = 360.0f - (f13 - f6);
                h0Var.z0.setColor(i7);
                canvas.drawArc(h0Var.B0, f13, f14, false, h0Var.z0);
                h0Var.z0.setColor(i9);
                canvas.drawArc(h0Var.B0, f13, f14 * max, false, h0Var.z0);
            }
            if (!z2) {
                canvas2 = canvas;
                float f15 = f5;
                h0Var2 = h0Var;
                float f16 = f2;
                if (!z3) {
                    float f17 = z4 ? s : 0.0f;
                    if (h0Var2.c0 >= 0 || !h0Var2.O || h0Var2.d0.isEmpty()) {
                        float f18 = 164.468f - f17;
                        f3 = f16;
                        i5 = i7;
                        h0Var2.a(canvas2, f3, f18, i5, f15);
                    } else {
                        h0Var2.w0.setColor(h0Var2.h0);
                        android.graphics.Paint paint = h0Var2.w0;
                        java.lang.String str2 = h0Var2.d0;
                        paint.getTextBounds(str2, i3, str2.length(), h0Var2.y0);
                        canvas2.drawText(h0Var2.d0, f16, (149.888f - f17) - h0Var2.y0.exactCenterY(), h0Var2.w0);
                        f3 = f16;
                        i5 = i7;
                    }
                    h0Var2.A0.setStrokeWidth(0.0f);
                    if (!z4) {
                        int i10 = i3;
                        while (true) {
                            if (i10 >= k.length) {
                                break;
                            }
                            double radians = java.lang.Math.toRadians(r5[i10]);
                            h0Var2.A0.setColor(i10 < h0Var2.e0 ? h0Var2.h0 : i5);
                            canvas2.drawCircle(f3 + (((float) java.lang.Math.cos(radians)) * a), c + (((float) java.lang.Math.sin(radians)) * a), l, h0Var2.A0);
                            i10++;
                        }
                    } else {
                        h0Var2.a(canvas2, f3, 179.534f, i5);
                    }
                } else {
                    if (h0Var2.g0) {
                        h0Var2.a(canvas2, f16, 142.355f, i7);
                    } else {
                        float f19 = (f15 * 7.5937495f) / d;
                        float f20 = f16 - ((33.887108f + f19) / 2.0f);
                        h0Var2.A0.setStrokeWidth(0.0f);
                        int i11 = i3;
                        while (i11 < 4) {
                            float f21 = i11;
                            float f22 = ((f21 * 2.0f) + 7.8f) * 1.8984374f;
                            h0Var2.A0.setColor(i11 < h0Var2.e0 ? h0Var2.h0 : i7);
                            float f23 = (f21 * 11.295702f) + f20;
                            h0Var2.B0.set(f23, 154.73282f - f22, f23 + f19, 154.73282f);
                            float f24 = 0.3f * f19;
                            canvas2.drawRoundRect(h0Var2.B0, f24, f24, h0Var2.A0);
                            i11++;
                        }
                    }
                    h0Var2.a(canvas2, h0Var2.d0, o, f16, 192.17f);
                    f3 = f16;
                }
            } else {
                if (h0Var.c0 >= 0) {
                    canvas2 = canvas;
                    h0Var2 = h0Var;
                    float f25 = f2;
                    h0Var2.a(canvas2, f25, 154.748f, i7, f5);
                    f4 = f25;
                } else {
                    canvas2 = canvas;
                    h0Var2 = h0Var;
                    f4 = f2;
                }
                h0Var2.A0.setColor(h0Var2.h0);
                h0Var2.A0.setStrokeWidth(0.0f);
                canvas2.save();
                canvas2.translate(f4, 181.235f);
                canvas2.drawPath(J, h0Var2.A0);
                canvas2.restore();
                f3 = f4;
            }
            int i12 = (!h0Var2.P || h0Var2.T) ? i3 : i4;
            if (i12 != 0) {
                h0Var2.x0.setColor(h0Var2.h0);
                h0Var2.x0.setTypeface(h0Var2.S ? K : L);
                canvas2.drawText(java.lang.Math.round(h0Var2.M * 100.0f) + "%", f3, x, h0Var2.x0);
            }
            if (h0Var2.U) {
                android.graphics.drawable.Drawable[] drawableArr = h0Var2.a0;
                if (drawableArr.length > 0) {
                    float f26 = i12 != 0 ? A : B;
                    int min = java.lang.Math.min(3, drawableArr.length);
                    while (i3 < min) {
                        float f27 = f3 + ((i3 - ((min - 1) / 2.0f)) * 34.0f);
                        h0Var2.a0[i3].setBounds(java.lang.Math.round(f27 - 14.0f), java.lang.Math.round(f26 - 14.0f), java.lang.Math.round(f27 + 14.0f), java.lang.Math.round(14.0f + f26));
                        h0Var2.a0[i3].draw(canvas2);
                        i3++;
                    }
                    if (h0Var2.V) {
                        h0Var2.A0.setColor((h0Var2.h0 & i2) | (-939524096));
                        for (int i13 = -1; i13 <= i4; i13++) {
                            canvas2.drawCircle(f3 + (i13 * 10.0f), f26 + 14.0f + 12.0f, 2.6f, h0Var2.A0);
                        }
                    }
                }
            }
        }

        @Override // android.view.View
        public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            float y2 = motionEvent.getY();
            boolean z2 = a() && this.t0 != null && y2 >= ((float) F) && y2 < ((float) this.s0);
            if (this.o0) {
                if (actionMasked == 2) {
                    if (java.lang.Math.hypot(motionEvent.getX() - this.p0, y2 - this.q0) > this.r0) {
                        this.n0 = false;
                    }
                } else if (actionMasked == 5) {
                    this.n0 = false;
                } else if (actionMasked == 1 || actionMasked == 3) {
                    boolean z3 = this.n0 && z2 && actionMasked == 1;
                    this.n0 = false;
                    this.o0 = false;
                    if (z3) {
                        this.t0.accept(this);
                    }
                }
                return true;
            }
            if (!z2 || actionMasked != 0) {
                if (this.m0 && actionMasked == 0 && y2 >= this.s0) {
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }
            this.n0 = true;
            this.o0 = true;
            this.p0 = motionEvent.getX();
            this.q0 = y2;
            this.r0 = android.view.ViewConfiguration.get(getContext()).getScaledTouchSlop();
            return true;
        }

        h0(android.content.Context context, boolean z2) {
            super(context);
            this.M = 1.0f;
            this.R = true;
            this.T = true;
            this.W = 1.0f;
            this.a0 = new android.graphics.drawable.Drawable[0];
            this.c0 = -1;
            this.d0 = "";
            this.e0 = -1;
            this.f0 = -1;
            this.h0 = -1;
            android.graphics.Paint paint = new android.graphics.Paint(1);
            this.i0 = paint;
            this.j0 = new android.graphics.Path();
            this.k0 = new android.graphics.Matrix();
            this.s0 = H;
            android.graphics.Rect rect = new android.graphics.Rect();
            this.u0 = rect;
            this.v0 = new android.graphics.Rect(0, F, C, H);
            android.graphics.Paint paint2 = new android.graphics.Paint(1);
            this.w0 = paint2;
            android.graphics.Paint paint3 = new android.graphics.Paint(1);
            this.x0 = paint3;
            this.y0 = new android.graphics.Rect();
            android.graphics.Paint paint4 = new android.graphics.Paint(1);
            this.z0 = paint4;
            android.graphics.Paint paint5 = new android.graphics.Paint(1);
            this.A0 = paint5;
            this.B0 = new android.graphics.RectF();
            this.C0 = new android.graphics.Path();
            paint.setShadowLayer(z, 0.0f, 1.0f, 637534208);
            float max = java.lang.Math.max(56.6676f, (dev.duo.workspaceprobe.h.a("23:59", m, false) / 2.0f) + z);
            rect.set((int) java.lang.Math.floor(b - max), (int) java.lang.Math.floor(28.414405822753906d), (int) java.lang.Math.ceil(max + b), (int) java.lang.Math.ceil(202.6676025390625d));
            if (z2) {
                try {
                    java.lang.Class<?> cls = java.lang.Class.forName("android.view.ViewTreeObserver$OnComputeInternalInsetsListener");
                    java.lang.Class<?> cls2 = java.lang.Class.forName("android.view.ViewTreeObserver$InternalInsetsInfo");
                    final java.lang.reflect.Method method = cls2.getMethod("setTouchableInsets", java.lang.Integer.TYPE);
                    final java.lang.reflect.Field field = cls2.getField("touchableRegion");
                    android.view.ViewTreeObserver.class.getMethod("addOnComputeInternalInsetsListener", cls).invoke(getViewTreeObserver(), java.lang.reflect.Proxy.newProxyInstance(cls.getClassLoader(), new java.lang.Class[]{cls}, new java.lang.reflect.InvocationHandler() { // from class: dev.duo.workspaceprobe.b$h0$$ExternalSyntheticLambda0
                        @Override // java.lang.reflect.InvocationHandler
                        public final java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method2, java.lang.Object[] objArr) {
                            java.lang.Object a2;
                            a2 = dev.duo.workspaceprobe.b.h0.this.a(method, field, obj, method2, objArr);
                            return a2;
                        }
                    }));
                } catch (java.lang.ReflectiveOperationException e2) {
                    throw new java.lang.IllegalStateException("Status touch region unavailable", e2);
                }
            }
            paint2.setTextSize(32.0f);
            android.graphics.Paint.Align align = android.graphics.Paint.Align.CENTER;
            paint2.setTextAlign(align);
            paint2.setTypeface(android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, 700, false));
            paint3.setTextSize(24.0f);
            paint3.setTextAlign(align);
            paint3.setShadowLayer(z, 0.0f, 1.0f, 637534208);
            paint4.setStyle(android.graphics.Paint.Style.STROKE);
            paint4.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            paint5.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
            paint5.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, java.lang.reflect.Field field, java.lang.Object obj, java.lang.reflect.Method method2, java.lang.Object[] objArr) throws java.lang.Throwable {
            if ("onComputeInternalInsets".equals(method2.getName())) {
                method.invoke(objArr[0], 3);
                android.graphics.Region region = (android.graphics.Region) field.get(objArr[0]);
                if (this.l0) {
                    region.set(c());
                    return null;
                }
                region.setEmpty();
                return null;
            }
            if ("equals".equals(method2.getName())) {
                return java.lang.Boolean.valueOf(obj == objArr[0]);
            }
            if ("hashCode".equals(method2.getName())) {
                return java.lang.Integer.valueOf(java.lang.System.identityHashCode(obj));
            }
            if ("toString".equals(method2.getName())) {
                return "DuoStatusInsets";
            }
            return null;
        }

        private static android.graphics.Path b() {
            android.graphics.Path path = new android.graphics.Path();
            android.graphics.Path.Direction direction = android.graphics.Path.Direction.CW;
            path.addRoundRect(-15.95f, -2.95f, 18.95f, 2.95f, 2.95f, 2.95f, direction);
            android.graphics.Path path2 = new android.graphics.Path();
            path2.addRect(-15.95f, -2.95f, -9.95f, 2.95f, direction);
            path.op(path2, android.graphics.Path.Op.UNION);
            for (int i2 = -1; i2 <= 1; i2 += 2) {
                path2.rewind();
                float f2 = i2;
                float f3 = (-2.5f) * f2;
                path2.moveTo(-15.95f, f3);
                path2.lineTo(-15.95f, (-7.25f) * f2);
                float f4 = (-7.75f) * f2;
                path2.quadTo(-15.95f, f4, -15.4f, f4);
                path2.lineTo(-13.4f, f4);
                path2.quadTo(-12.9f, f4, -12.65f, (-7.3f) * f2);
                path2.lineTo(-10.2f, f3);
                path2.close();
                android.graphics.Path.Op op = android.graphics.Path.Op.UNION;
                path.op(path2, op);
                path2.rewind();
                path2.moveTo(-3.7f, f3);
                float f5 = (-15.3f) * f2;
                path2.lineTo(-7.45f, f5);
                path2.quadTo(-6.3f, (-16.5f) * f2, -5.15f, f5);
                path2.lineTo(5.85f, (-4.35f) * f2);
                path2.quadTo(7.6f, (-3.05f) * f2, 14.5f, f2 * (-2.95f));
                path2.lineTo(14.5f, f3);
                path2.close();
                path.op(path2, op);
            }
            android.graphics.Matrix matrix = new android.graphics.Matrix();
            matrix.setScale(1.0167364f, 1.0167364f);
            path.transform(matrix);
            return path;
        }

        android.graphics.Region c() {
            android.graphics.Region region = new android.graphics.Region(this.u0);
            if (a()) {
                region.op(this.v0, android.graphics.Region.Op.UNION);
            }
            return region;
        }

        void a(boolean z2) {
            if (this.l0 == z2) {
                return;
            }
            this.l0 = z2;
            setEnabled(z2);
            if (!z2) {
                this.n0 = false;
                this.o0 = false;
            }
            requestLayout();
        }

        void a(boolean z2, int i2) {
            if (this.m0 == z2 && this.s0 == i2) {
                return;
            }
            this.m0 = z2;
            this.s0 = i2;
            this.v0.set(0, F, C, i2);
            if (!a()) {
                this.n0 = false;
                this.o0 = false;
            }
            requestLayout();
        }

        void a(java.util.function.Consumer<android.view.View> consumer) {
            this.t0 = consumer;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a() {
            return this.m0 && this.s0 > F + I;
        }

        private void a(android.graphics.Canvas canvas, java.lang.String str, float f2, float f3, float f4) {
            dev.duo.workspaceprobe.h.a(str, f2, this.S, f3, f4, this.j0, this.k0);
            canvas.drawPath(this.j0, this.i0);
        }

        private void a(android.graphics.Canvas canvas, float f2, float f3, int i2) {
            this.A0.setStrokeWidth(0.0f);
            int i3 = 0;
            while (i3 < 2) {
                int i4 = i3 == 0 ? this.e0 : this.f0;
                int i5 = 0;
                while (i5 < 4) {
                    this.A0.setColor(i5 < i4 ? this.h0 : i2);
                    canvas.drawCircle(((i5 - 1.5f) * t) + f2, ((i3 - 0.5f) * t) + f3, u, this.A0);
                    i5++;
                }
                i3++;
            }
        }

        private void a(android.graphics.Canvas canvas, float f2, float f3, int i2, float f4) {
            this.z0.setStrokeWidth(6.804f);
            int i3 = 0;
            while (i3 < 2) {
                float f5 = (i3 == 0 ? 0.59f : 0.38f) * a;
                this.z0.setColor(this.c0 >= 2 - i3 ? this.h0 : i2);
                this.B0.set(f2 - f5, f3 - f5, f2 + f5, f5 + f3);
                canvas.drawArc(this.B0, 228.0f, 84.0f, false, this.z0);
                i3++;
            }
            this.z0.setStrokeWidth(f4);
            this.C0.reset();
            this.C0.moveTo(f2, f3);
            this.B0.set(f2 - 8.262f, f3 - 8.262f, f2 + 8.262f, f3 + 8.262f);
            this.C0.arcTo(this.B0, 228.0f, 84.0f);
            this.C0.close();
            this.A0.setColor(this.c0 >= 0 ? this.h0 : i2);
            this.A0.setStrokeWidth(2.43f);
            canvas.drawPath(this.C0, this.A0);
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$i, reason: case insensitive filesystem */
    class C0047i extends android.content.BroadcastReceiver {
        final /* synthetic */ dev.duo.workspaceprobe.b.h0 a;

        C0047i(dev.duo.workspaceprobe.b.h0 h0Var) {
            this.a = h0Var;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                dev.duo.workspaceprobe.b.h0 h0Var = this.a;
                float f = h0Var.M;
                boolean z = h0Var.N;
                int intExtra = intent.getIntExtra("level", -1);
                int intExtra2 = intent.getIntExtra("scale", 100);
                if (intExtra >= 0 && intExtra2 > 0) {
                    this.a.M = intExtra / intExtra2;
                }
                boolean z2 = true;
                int intExtra3 = intent.getIntExtra("status", 1);
                dev.duo.workspaceprobe.b.h0 h0Var2 = this.a;
                if (intent.getIntExtra("plugged", 0) == 0 || (intExtra3 != 2 && intExtra3 != 5)) {
                    z2 = false;
                }
                h0Var2.N = z2;
                dev.duo.workspaceprobe.b.h0 h0Var3 = this.a;
                if (f == h0Var3.M && z == h0Var3.N) {
                    return;
                } else {
                    dev.duo.workspaceprobe.d.g();
                }
            }
            dev.duo.workspaceprobe.d.h();
            dev.duo.workspaceprobe.b.this.m2();
            dev.duo.workspaceprobe.b.this.m1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$j, reason: case insensitive filesystem */
    class C0048j extends android.database.ContentObserver {
        final /* synthetic */ java.lang.Runnable a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0048j(android.os.Handler handler, java.lang.Runnable runnable) {
            super(handler);
            this.a = runnable;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            this.a.run();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$k, reason: case insensitive filesystem */
    class C0049k extends android.content.BroadcastReceiver {
        C0049k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            java.lang.String schemeSpecificPart = intent.getData() == null ? null : intent.getData().getSchemeSpecificPart();
            if (schemeSpecificPart == null || dev.duo.workspaceprobe.b.d(schemeSpecificPart)) {
                return;
            }
            dev.duo.workspaceprobe.b.this.h(schemeSpecificPart);
            if (!"android.intent.action.PACKAGE_REMOVED".equals(intent.getAction()) || intent.getBooleanExtra("android.intent.extra.REPLACING", false)) {
                dev.duo.workspaceprobe.b.this.d(schemeSpecificPart, "package");
            } else {
                dev.duo.workspaceprobe.b.this.M0.a(schemeSpecificPart);
            }
            dev.duo.workspaceprobe.b.this.P1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$l, reason: case insensitive filesystem */
    final class C0050l extends android.telephony.TelephonyCallback implements android.telephony.TelephonyCallback.ActiveDataSubscriptionIdListener, android.telephony.TelephonyCallback.CallStateListener {
        private int a = -1;
        private android.telephony.TelephonyManager b;
        private android.telephony.TelephonyCallback c;
        final /* synthetic */ dev.duo.workspaceprobe.b.h0 d;

        /* renamed from: dev.duo.workspaceprobe.b$l$a */
        final class a extends android.telephony.TelephonyCallback implements android.telephony.TelephonyCallback.DisplayInfoListener {
            final /* synthetic */ int a;

            a(int i) {
                this.a = i;
            }

            @Override // android.telephony.TelephonyCallback.DisplayInfoListener
            public void onDisplayInfoChanged(android.telephony.TelephonyDisplayInfo telephonyDisplayInfo) {
                if (dev.duo.workspaceprobe.b.C0050l.this.a != this.a) {
                    return;
                }
                dev.duo.workspaceprobe.b.C0050l.this.d.d0 = dev.duo.workspaceprobe.b.b(telephonyDisplayInfo);
                dev.duo.workspaceprobe.b.this.m1();
            }
        }

        C0050l(dev.duo.workspaceprobe.b.h0 h0Var) {
            this.d = h0Var;
        }

        @Override // android.telephony.TelephonyCallback.ActiveDataSubscriptionIdListener
        public void onActiveDataSubscriptionIdChanged(int i) {
            if (this.a == i) {
                return;
            }
            android.telephony.TelephonyCallback telephonyCallback = this.c;
            if (telephonyCallback != null) {
                this.b.unregisterTelephonyCallback(telephonyCallback);
                this.c = null;
            }
            this.a = i;
            this.d.d0 = "";
            dev.duo.workspaceprobe.b.this.m1();
            if (android.telephony.SubscriptionManager.isValidSubscriptionId(i)) {
                this.b = ((android.telephony.TelephonyManager) dev.duo.workspaceprobe.b.this.p4.getSystemService(android.telephony.TelephonyManager.class)).createForSubscriptionId(i);
                this.c = new dev.duo.workspaceprobe.b.C0050l.a(i);
                this.b.registerTelephonyCallback(dev.duo.workspaceprobe.b.this.p4.getMainExecutor(), this.c);
            }
        }

        @Override // android.telephony.TelephonyCallback.CallStateListener
        public void onCallStateChanged(final int i) {
            dev.duo.workspaceprobe.b.this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$l$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.C0050l.this.a(i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i) {
            if (dev.duo.workspaceprobe.b.this.m5 == i) {
                return;
            }
            dev.duo.workspaceprobe.b.this.m5 = i;
            dev.duo.workspaceprobe.b.this.z();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$m, reason: case insensitive filesystem */
    class C0051m extends android.database.ContentObserver {
        final /* synthetic */ java.lang.Runnable a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0051m(android.os.Handler handler, java.lang.Runnable runnable) {
            super(handler);
            this.a = runnable;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            this.a.run();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$n, reason: case insensitive filesystem */
    class C0052n extends android.database.ContentObserver {
        C0052n(android.os.Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            dev.duo.workspaceprobe.b.this.Z1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$o, reason: case insensitive filesystem */
    class C0053o extends android.content.BroadcastReceiver {
        final /* synthetic */ java.lang.Runnable a;

        C0053o(java.lang.Runnable runnable) {
            this.a = runnable;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            this.a.run();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$p, reason: case insensitive filesystem */
    class C0054p extends android.net.ConnectivityManager.NetworkCallback {
        private android.net.Network a;
        final /* synthetic */ dev.duo.workspaceprobe.b.h0 b;
        final /* synthetic */ java.lang.Runnable c;

        C0054p(dev.duo.workspaceprobe.b.h0 h0Var, java.lang.Runnable runnable) {
            this.b = h0Var;
            this.c = runnable;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(android.net.Network network) {
            this.a = network;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(android.net.Network network, android.net.NetworkCapabilities networkCapabilities) {
            if (network.equals(this.a)) {
                this.b.O = networkCapabilities.hasTransport(0);
                this.c.run();
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(android.net.Network network) {
            if (network.equals(this.a)) {
                this.a = null;
                this.b.O = false;
                this.c.run();
            }
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$q, reason: case insensitive filesystem */
    class C0055q extends android.content.BroadcastReceiver {
        C0055q() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            android.content.ComponentName componentName;
            if ("android.intent.action.ACTION_SHUTDOWN".equals(intent.getAction())) {
                dev.duo.workspaceprobe.b.this.Q1 = true;
            }
            if ("android.intent.action.USER_PRESENT".equals(intent.getAction()) && dev.duo.workspaceprobe.b.this.w0() && dev.duo.workspaceprobe.b.this.J()) {
                dev.duo.workspaceprobe.b.this.a(new android.content.Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").addFlags(268435456));
            }
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()) || "android.intent.action.USER_PRESENT".equals(intent.getAction()) || "android.intent.action.ACTION_SHUTDOWN".equals(intent.getAction())) {
                dev.duo.workspaceprobe.b.this.o();
            }
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                dev.duo.workspaceprobe.b.this.Z4 = true;
            }
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()) || "android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction())) {
                final dev.duo.workspaceprobe.b bVar = dev.duo.workspaceprobe.b.this;
                bVar.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$q$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.p(dev.duo.workspaceprobe.b.this);
                    }
                });
            } else if ("android.intent.action.SCREEN_ON".equals(intent.getAction()) || "android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                dev.duo.workspaceprobe.b.this.Z4 = false;
            }
            final dev.duo.workspaceprobe.b bVar2 = dev.duo.workspaceprobe.b.this;
            bVar2.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$q$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.V(dev.duo.workspaceprobe.b.this);
                }
            });
            if ("android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction())) {
                dev.duo.workspaceprobe.b.Z(dev.duo.workspaceprobe.b.this);
                dev.duo.workspaceprobe.b.this.A2.clear();
                dev.duo.workspaceprobe.b.this.B2 = "";
                dev.duo.workspaceprobe.b.this.n2 = dev.duo.workspaceprobe.b.b(context);
                android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) dev.duo.workspaceprobe.b.this.J0.get(java.lang.Integer.valueOf(dev.duo.workspaceprobe.b.this.J1));
                dev.duo.workspaceprobe.b bVar3 = dev.duo.workspaceprobe.b.this;
                if (!bVar3.L1 && runningTaskInfo != null && (componentName = runningTaskInfo.topActivity) != null) {
                    bVar3.a(runningTaskInfo.taskId, componentName);
                }
            }
            if (dev.duo.workspaceprobe.b.this.e6 && dev.duo.workspaceprobe.b.this.Y0()) {
                dev.duo.workspaceprobe.b.this.m1();
            }
            dev.duo.workspaceprobe.b.this.Q();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$r, reason: case insensitive filesystem */
    class C0056r extends android.database.ContentObserver {
        C0056r(android.os.Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            dev.duo.workspaceprobe.b.this.Y1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$s, reason: case insensitive filesystem */
    class C0057s implements android.hardware.display.DisplayManager.DisplayListener {
        C0057s() {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
            if (i == 0) {
                final dev.duo.workspaceprobe.b bVar = dev.duo.workspaceprobe.b.this;
                bVar.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$s$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.V(dev.duo.workspaceprobe.b.this);
                    }
                });
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            if (i == 0) {
                final dev.duo.workspaceprobe.b bVar = dev.duo.workspaceprobe.b.this;
                bVar.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$s$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.V(dev.duo.workspaceprobe.b.this);
                    }
                });
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
            if (i == 0) {
                final dev.duo.workspaceprobe.b bVar = dev.duo.workspaceprobe.b.this;
                bVar.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$s$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.V(dev.duo.workspaceprobe.b.this);
                    }
                });
            }
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$t, reason: case insensitive filesystem */
    class C0058t implements android.hardware.SensorEventListener {
        C0058t() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(android.hardware.Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(android.hardware.SensorEvent sensorEvent) {
            if (dev.duo.workspaceprobe.b.this.q5 != this) {
                return;
            }
            if (sensorEvent.values.length <= dev.duo.workspaceprobe.b.this.r5 || !java.lang.Float.isFinite(sensorEvent.values[dev.duo.workspaceprobe.b.this.r5])) {
                dev.duo.workspaceprobe.b.this.a((java.lang.Exception) new java.lang.IllegalStateException("Invalid native fold classification"));
                return;
            }
            float f = sensorEvent.values[dev.duo.workspaceprobe.b.this.r5];
            boolean z = f > 0.0f && f <= 1.0f;
            if (dev.duo.workspaceprobe.b.this.s5 && dev.duo.workspaceprobe.b.this.t5 == z) {
                return;
            }
            dev.duo.workspaceprobe.b.this.s5 = true;
            dev.duo.workspaceprobe.b.this.t5 = z;
            if (!z) {
                dev.duo.workspaceprobe.b.this.u5 = false;
            }
            dev.duo.workspaceprobe.b.this.z();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$u, reason: case insensitive filesystem */
    class C0059u extends android.view.ViewOutlineProvider {
        final /* synthetic */ float a;

        C0059u(float f) {
            this.a = f;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(android.view.View view, android.graphics.Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.a);
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$v, reason: case insensitive filesystem */
    class C0060v extends android.content.BroadcastReceiver {
        C0060v() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            dev.duo.workspaceprobe.b.this.k1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$w, reason: case insensitive filesystem */
    class C0061w extends android.database.ContentObserver {
        C0061w(android.os.Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            dev.duo.workspaceprobe.b.this.U1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$x, reason: case insensitive filesystem */
    class C0062x extends android.database.ContentObserver {
        C0062x(android.os.Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            dev.duo.workspaceprobe.b.this.k1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$y, reason: case insensitive filesystem */
    class C0063y extends android.hardware.camera2.CameraManager.TorchCallback {
        C0063y() {
        }

        @Override // android.hardware.camera2.CameraManager.TorchCallback
        public void onTorchModeChanged(java.lang.String str, boolean z) {
            dev.duo.workspaceprobe.b.this.a(str, z);
            android.util.Log.w("DuoRail", "Rail torch state " + str + "=" + z);
        }

        @Override // android.hardware.camera2.CameraManager.TorchCallback
        public void onTorchModeUnavailable(java.lang.String str) {
            dev.duo.workspaceprobe.b.this.g7.remove(str);
            dev.duo.workspaceprobe.b.this.k1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$z, reason: case insensitive filesystem */
    class ServiceConnectionC0064z implements android.content.ServiceConnection {
        final /* synthetic */ android.content.Context a;
        final /* synthetic */ android.content.Intent b;

        ServiceConnectionC0064z(android.content.Context context, android.content.Intent intent) {
            this.a = context;
            this.b = intent;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(android.content.ComponentName componentName, android.os.IBinder iBinder) {
            try {
                try {
                    android.content.ComponentName startService = this.a.startService(this.b);
                    if (startService == null) {
                        throw new java.lang.IllegalStateException("RecorderService unavailable");
                    }
                    android.util.Log.w("DuoRail", "Rail screen record service " + startService);
                    this.a.unbindService(this);
                } catch (java.lang.Throwable th) {
                    try {
                        dev.duo.workspaceprobe.b.this.a("录屏", th);
                        this.a.unbindService(this);
                    } catch (java.lang.Throwable th2) {
                        try {
                            this.a.unbindService(this);
                        } catch (java.lang.Throwable th3) {
                            dev.duo.workspaceprobe.b.this.a("录屏", th3);
                        }
                        throw th2;
                    }
                }
            } catch (java.lang.Throwable th4) {
                dev.duo.workspaceprobe.b.this.a("录屏", th4);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(android.content.ComponentName componentName) {
            android.util.Log.w("DuoRail", "Rail screen record service disconnected " + componentName);
        }
    }

    public b() {
        android.os.Handler handler = new android.os.Handler(android.os.Looper.getMainLooper());
        this.D1 = handler;
        this.I1 = "";
        this.J1 = -1;
        this.R1 = java.util.Collections.newSetFromMap(new java.util.IdentityHashMap());
        this.S1 = -1;
        this.T1 = java.util.concurrent.Executors.newSingleThreadExecutor();
        this.Y1 = -1;
        this.a2 = -1;
        this.c2 = "";
        this.d2 = "";
        this.f2 = true;
        this.g2 = -1L;
        this.h2 = -1L;
        this.o2 = new java.util.concurrent.ConcurrentHashMap();
        this.p2 = new java.util.HashMap();
        this.r2 = new java.lang.reflect.Field[0];
        this.s2 = new java.util.concurrent.ConcurrentHashMap();
        this.t2 = java.util.concurrent.ConcurrentHashMap.newKeySet();
        this.u2 = new java.lang.ThreadLocal<>();
        this.x2 = "";
        this.y2 = -1;
        this.z2 = -1;
        this.A2 = new java.util.concurrent.ConcurrentHashMap();
        this.B2 = "";
        this.F2 = -1;
        this.G2 = "";
        this.H2 = "";
        this.I2 = new java.util.HashMap();
        this.J2 = new java.util.HashMap();
        this.K2 = new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda51
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.v0();
            }
        };
        this.L2 = "";
        this.N2 = "";
        this.O2 = "";
        this.P2 = "";
        this.b3 = 90;
        this.c3 = 90;
        this.k3 = new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda52
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.V();
            }
        };
        this.B3 = -1;
        this.C3 = new java.util.WeakHashMap();
        this.D3 = Integer.MIN_VALUE;
        this.E3 = new android.view.View.OnLayoutChangeListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda53
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(android.view.View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                dev.duo.workspaceprobe.b.this.a(view, i2, i3, i4, i5, i6, i7, i8, i9);
            }
        };
        this.F3 = new android.view.ViewTreeObserver.OnPreDrawListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda54
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                boolean W2;
                W2 = dev.duo.workspaceprobe.b.this.W();
                return W2;
            }
        };
        this.H3 = new dev.duo.workspaceprobe.b.ViewOnAttachStateChangeListenerC0042d();
        this.J3 = new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda55
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.j2();
            }
        };
        java.util.List<java.lang.String> list = java.util.Collections.EMPTY_LIST;
        this.K3 = list;
        this.L3 = true;
        this.M3 = true;
        this.N3 = new int[7];
        this.P3 = list;
        this.Q3 = list;
        this.R3 = list;
        this.S3 = list;
        this.V3 = true;
        this.k4 = -2;
        this.m4 = java.util.concurrent.ConcurrentHashMap.newKeySet();
        this.n4 = new java.util.ArrayList();
        this.o4 = new java.util.ArrayList();
        this.A4 = -1;
        this.B4 = new java.lang.ThreadLocal<>();
        this.E4 = new dev.duo.workspaceprobe.o(this);
        this.l5 = -1;
        this.m5 = -1;
        this.E5 = new java.util.HashSet();
        this.H5 = new dev.duo.workspaceprobe.b.R[3];
        this.I5 = new android.widget.ImageView[2];
        this.J5 = new android.widget.ImageView[3];
        this.K5 = new dev.duo.workspaceprobe.b.Q[3];
        this.L5 = new java.util.HashSet();
        this.M5 = 1.0f;
        this.N5 = 0.0f;
        this.P5 = java.util.concurrent.ConcurrentHashMap.newKeySet();
        this.Q5 = new java.util.concurrent.ConcurrentHashMap();
        this.R5 = -1L;
        this.S5 = new java.util.ArrayDeque<>();
        this.T5 = new java.util.concurrent.ConcurrentHashMap();
        this.U5 = new java.util.concurrent.ConcurrentHashMap();
        this.V5 = new java.util.concurrent.ConcurrentHashMap();
        this.W5 = new java.util.concurrent.ConcurrentHashMap();
        this.Z5 = dev.duo.hookprobe.J.a();
        this.a6 = dev.duo.hookprobe.J.h(dev.duo.hookprobe.J.a());
        this.b6 = new java.util.concurrent.ConcurrentHashMap();
        this.d6 = new java.util.concurrent.ConcurrentHashMap();
        this.l6 = -1;
        this.m6 = -2;
        this.y6 = new java.lang.Object();
        this.F6 = new java.lang.Object();
        this.L6 = -1;
        this.P6 = new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda56
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.U();
            }
        };
        this.Q6 = new java.util.HashSet();
        this.a7 = new java.util.HashSet();
        this.e7 = new dev.duo.workspaceprobe.b.C0060v();
        this.f7 = new dev.duo.workspaceprobe.b.C0062x(handler);
        this.g7 = new java.util.concurrent.ConcurrentHashMap();
    }

    private void A1() {
        dev.duo.workspaceprobe.b.R r2;
        android.widget.FrameLayout frameLayout;
        for (java.util.Map.Entry<android.view.View, java.lang.Object[]> entry : this.C3.entrySet()) {
            android.view.View key = entry.getKey();
            java.lang.Object[] value = entry.getValue();
            android.view.View view = (android.view.View) ((java.lang.ref.WeakReference) value[0]).get();
            if (view != null) {
                view.setLayoutParams(new android.widget.FrameLayout.LayoutParams((android.widget.FrameLayout.LayoutParams) value[1]));
            }
            android.view.ViewGroup.LayoutParams layoutParams = key.getLayoutParams();
            layoutParams.width = ((java.lang.Integer) value[2]).intValue();
            layoutParams.height = ((java.lang.Integer) value[3]).intValue();
            key.setLayoutParams(layoutParams);
            key.setTranslationX(((java.lang.Float) value[4]).floatValue());
            key.setTranslationY(((java.lang.Float) value[5]).floatValue());
        }
        if (!this.C3.isEmpty()) {
            android.util.Log.i("DuoKeyguard", "Master off: shortcuts restored=" + this.C3.size());
        }
        this.C3.clear();
        if (this.D3 != Integer.MIN_VALUE && (frameLayout = this.m3) != null) {
            android.view.ViewGroup.LayoutParams layoutParams2 = frameLayout.getLayoutParams();
            layoutParams2.height = this.D3;
            this.m3.setLayoutParams(layoutParams2);
            this.D3 = Integer.MIN_VALUE;
        }
        if (this.s3 && (r2 = this.V6) != null && r2.b.isValid()) {
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                transaction.setVisibility(this.V6.b, false).apply();
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
        this.s4 = false;
        this.s3 = false;
    }

    private boolean B0() {
        return !this.N2.isEmpty() && this.N2.equals(this.I1) && this.F2 == this.J1 && !this.L1 && r0() && j(this.J1) && w0() && R0() && !this.P1 && !this.O1 && !this.M6 && !this.Q1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B1() {
        if (this.m2) {
            this.m2 = false;
            m("MiDuo ready again");
        }
    }

    private boolean C0() {
        if (!this.n2 ? !this.W2 : !this.X2) {
            return false;
        }
        dev.duo.workspaceprobe.b.i0 i0Var = this.I2.get(this.G2);
        if (i0Var == null) {
            return true;
        }
        java.util.Iterator<java.lang.String> it = i0Var.f.iterator();
        while (it.hasNext()) {
            if (it.next().startsWith(this.n2 ? "dark/" : "light/")) {
                return false;
            }
        }
        return true;
    }

    private void C1() {
        if (!B0() || this.T2 || this.R2 == 0) {
            return;
        }
        w();
        android.widget.TextView textView = new android.widget.TextView(this.p4);
        textView.setText("点选 App 背景取色，长按取消");
        textView.setTextSize(16.0f);
        textView.setTextColor(-14460213);
        textView.setGravity(49);
        textView.setPadding(0, 80, 0, 0);
        textView.setBackgroundColor(16777216);
        textView.setOnTouchListener(new android.view.View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda122
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
                boolean c2;
                c2 = dev.duo.workspaceprobe.b.this.c(view, motionEvent);
                return c2;
            }
        });
        dev.duo.workspaceprobe.b.R r2 = new dev.duo.workspaceprobe.b.R("pick_point", textView, 0.0f, 0, v0, 1712, 0, 0.0f, 40);
        this.e3 = r2;
        a(r2, 0, 0, 2002);
    }

    private void D0() {
        java.lang.StringBuilder append;
        java.lang.String str;
        if (this.d3 == null) {
            return;
        }
        boolean C02 = C0();
        android.widget.TextView textView = this.f3;
        if (this.V2) {
            append = new java.lang.StringBuilder().append(C02 ? "确认 App 默认色 " : "确认页面颜色 ");
            str = y(this.a3);
        } else {
            append = new java.lang.StringBuilder().append("取色模式 · ").append(this.n2 ? "深色" : "浅色");
            str = " · 拖动标题可移动";
        }
        textView.setText(append.append(str).toString());
        this.g3.setText(!this.O2.isEmpty() ? this.O2 : this.T2 ? "页面变化中，停稳后可以取色" : this.R2 == 0 ? "等待页面信息，请重新进入 App" : C02 ? "先确认 App 默认色（建议在 App 首页），正确后保存；也可点选取色位置" : "自动检查颜色变化；漏检或颜色不对时可点取色");
        boolean z2 = C02 || this.V2 || !this.O2.isEmpty();
        this.g3.setVisibility(z2 ? 0 : 8);
        ((android.view.View) this.h3.getParent()).setVisibility(this.V2 ? 0 : 8);
        int i2 = (z2 ? 104 : 0) + 162 + (this.V2 ? 78 : 0);
        dev.duo.workspaceprobe.b.R r2 = this.d3;
        if (r2.g != i2) {
            r2.g = i2;
            this.c3 = java.lang.Math.min(this.c3, 1712 - i2);
            dev.duo.workspaceprobe.b.R r3 = this.d3;
            r3.a.relayout(r3.f, i2);
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                transaction.setCrop(this.d3.b, new android.graphics.Rect(0, 0, this.d3.f, i2)).apply();
                transaction.close();
                if (this.Y2 && this.e3 == null) {
                    a(this.d3, this.b3, this.c3, 2001);
                }
            } catch (java.lang.Throwable th) {
                try {
                    transaction.close();
                } catch (java.lang.Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        android.widget.TextView[] textViewArr = {this.h3, this.i3, this.j3};
        for (int i3 = 0; i3 < 3; i3++) {
            android.widget.TextView textView2 = textViewArr[i3];
            textView2.setEnabled(this.V2 && !this.U2);
            textView2.setAlpha(this.V2 ? 1.0f : 0.35f);
        }
    }

    private boolean D1() {
        int i2;
        if (this.p4 == null || this.L1 || this.O1 || this.Q1 || dev.duo.hookprobe.G.f() || !w0()) {
            return false;
        }
        android.view.Display display = ((android.hardware.display.DisplayManager) this.p4.getSystemService(android.hardware.display.DisplayManager.class)).getDisplay(0);
        android.graphics.Point point = new android.graphics.Point();
        if (display != null) {
            display.getRealSize(point);
        }
        dev.duo.workspaceprobe.a.b b2 = this.M0.b(this.I1);
        if (b2 != null && b2.a && b2.d && (((i2 = point.x) == R && point.y == S) || (i2 == S && point.y == R))) {
            return false;
        }
        int i3 = point.x;
        return ((i3 == 1168 && point.y == 1712) || ((i3 == 1712 && point.y == 1168) || ((i3 == R && point.y == S) || (i3 == S && point.y == R)))) && R0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int E1() {
        return (b(java.lang.Math.max(3, dev.duo.hookprobe.J.e(this.Z5)) - 1) + 136) - b(0);
    }

    private void F0() {
        dev.duo.workspaceprobe.b.R r2 = this.V6;
        if (r2 != null && r2.b.isValid() && !this.s3) {
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                dev.duo.workspaceprobe.b.R r3 = this.V6;
                transaction.setPosition(r3.b, c(r3), d(this.V6)).apply();
                transaction.close();
                this.s4 = false;
            } catch (java.lang.Throwable th) {
                try {
                    transaction.close();
                } catch (java.lang.Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        R1();
        final float f2 = this.N3[1] + W;
        java.util.Iterator<dev.duo.workspaceprobe.b.K> it = this.T5.values().iterator();
        while (it.hasNext()) {
            final dev.duo.workspaceprobe.b.h0 h0Var = it.next().r;
            if (h0Var != null) {
                h0Var.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda94
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.a(h0Var, f2);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int F1() {
        return this.W3 ? this.X3 : (H1() + E1()) - 68;
    }

    private void G0() {
        if (this.X5) {
            return;
        }
        for (int i2 = 0; i2 < 3; i2++) {
            try {
                dev.duo.workspaceprobe.b.K i3 = i();
                synchronized (this.S5) {
                    this.S5.add(i3);
                }
            } catch (java.lang.Throwable th) {
                android.util.Log.w("DuoRail", "App rail decor unavailable; global App panels kept", th);
                return;
            }
        }
        this.X5 = true;
        android.os.Handler handler = this.U0;
        if (handler != null) {
            handler.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda45
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.X();
                }
            });
        }
        android.util.Log.w("DuoRail", "App rail decor pool ready 3");
    }

    private float G1() {
        dev.duo.workspaceprobe.b.O o2 = this.u6;
        if (o2 == null || this.x6 != o2.a || !r0() || !this.j6 || this.R6 || this.l6 == 2 || this.P1 || this.Q1 || N0() || !this.Q6.isEmpty() || !R0()) {
            return 0.0f;
        }
        boolean f2 = f();
        boolean z2 = this.k6;
        boolean z3 = z2 && (f2 || this.O5 || this.N5 > 0.0f);
        if (!f2 && !z3) {
            return 0.0f;
        }
        if (this.l6 != 0 || z2) {
            return this.n6;
        }
        return 0.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean, int] */
    private void H0() {
        try {
            android.content.ContentResolver contentResolver = this.p4.getContentResolver();
            ?? r2 = 0;
            if (android.provider.Settings.Global.getInt(contentResolver, "airplane_mode_on", 0) == 0) {
                r2 = 1;
            }
            android.provider.Settings.Global.putInt(contentResolver, "airplane_mode_on", r2);
            android.content.Intent intent = new android.content.Intent("android.intent.action.AIRPLANE_MODE");
            intent.putExtra("state", (boolean) r2);
            this.p4.sendBroadcastAsUser(intent, android.os.Process.myUserHandle());
            android.util.Log.w("DuoRail", "Rail airplane " + ((boolean) r2));
        } catch (java.lang.Throwable th) {
            a("飞行模式", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int H1() {
        java.lang.String[] strArr = this.Z5;
        int f2 = dev.duo.hookprobe.J.f(strArr);
        int i2 = 0;
        int b2 = b(0);
        if (f2 >= 0 && strArr != null) {
            while (i2 < f2 && i2 < strArr.length) {
                java.lang.String str = strArr[i2];
                if (dev.duo.hookprobe.J.f.equals(str)) {
                    b2 += d() + 30;
                    i2 += 2;
                } else if (str == null || dev.duo.hookprobe.J.e.equals(str) || w(str)) {
                    b2 += j0;
                }
                i2++;
            }
        }
        return b2;
    }

    private void I0() {
        try {
            android.content.ContentResolver contentResolver = this.p4.getContentResolver();
            int i2 = android.provider.Settings.System.getInt(contentResolver, "screen_brightness_mode", 0) == 0 ? 1 : 0;
            android.provider.Settings.System.putInt(contentResolver, "screen_brightness_mode", i2);
            android.util.Log.w("DuoRail", "Rail auto brightness " + i2);
        } catch (java.lang.Throwable th) {
            a("自动亮度", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean I1() {
        if (!K1() || !this.s5 || !this.t5) {
            return false;
        }
        int i2 = this.l5;
        return (i2 == 1 || (this.w5 != null && !this.y5 && this.v5 && i2 == 4)) && a(q0()) == 0;
    }

    private void J0() {
        try {
            android.bluetooth.BluetoothAdapter defaultAdapter = android.bluetooth.BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter == null) {
                return;
            }
            boolean isEnabled = defaultAdapter.isEnabled();
            if (isEnabled) {
                defaultAdapter.disable();
            } else {
                defaultAdapter.enable();
            }
            android.util.Log.w("DuoRail", "Rail bluetooth " + (!isEnabled));
        } catch (java.lang.Throwable th) {
            a("蓝牙", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean J1() {
        java.util.List<android.app.ActivityManager.RunningTaskInfo> runningTasks = ((android.app.ActivityManager) this.p4.getSystemService(android.app.ActivityManager.class)).getRunningTasks(1);
        return !runningTasks.isEmpty() && new android.content.ComponentName(dev.duo.icons.g.a, "dev.duo.hookprobe.TentClockActivity").equals(runningTasks.get(0).topActivity);
    }

    private void K0() {
        android.content.Intent addFlags = new android.content.Intent().setComponent(new android.content.ComponentName("com.miui.calculator", "com.miui.calculator.cal.CalculatorActivity")).addFlags(268435456);
        try {
            android.app.ActivityOptions g2 = g("com.miui.calculator");
            if (g2 == null) {
                android.util.Log.w("DuoRail", "Rail launch 计算器: freeform not allowed, fullscreen");
                a("计算器", addFlags);
            } else {
                this.p4.startActivity(addFlags, g2.toBundle());
                android.util.Log.w("DuoRail", "Rail launch 计算器 freeform");
            }
        } catch (java.lang.Throwable th) {
            a("计算器", th);
        }
    }

    private boolean K1() {
        if (!this.Y4 || !this.a5 || this.b5 || this.l5 < 0 || !this.g5 || this.h5 || this.j5 || this.Q1 || this.m5 != 0 || !((android.app.KeyguardManager) this.p4.getSystemService(android.app.KeyguardManager.class)).isKeyguardLocked()) {
            return false;
        }
        if (!this.k5) {
            return true;
        }
        dev.duo.workspaceprobe.b.g0 g0Var = this.z5;
        return g0Var != null && g0Var.d && J1();
    }

    private void L0() {
        a("投屏", new android.content.Intent().setComponent(new android.content.ComponentName("com.milink.service", "com.milink.router.RouterActivity")).addFlags(268435456));
    }

    private void L1() {
        if (this.T0 || this.p4 == null) {
            return;
        }
        this.T0 = true;
        dev.duo.workspaceprobe.d.a(this.p4);
        android.content.IntentFilter intentFilter = new android.content.IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme("package");
        try {
            this.p4.registerReceiver(new dev.duo.workspaceprobe.b.C0049k(), intentFilter, null, this.D1);
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "Package change receiver unavailable", th);
        }
        this.n2 = b(this.p4);
        dev.duo.workspaceprobe.f.a(this.p4);
        try {
            this.p4.getContentResolver().registerContentObserver(android.net.Uri.parse("content://dev.duo.hookprobe.config/notificationIcons"), false, new dev.duo.workspaceprobe.b.C0061w(this.D1));
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.w("DuoRail", "Notification icon observer unavailable", e2);
        }
        U1();
        try {
            this.p4.getContentResolver().registerContentObserver(android.net.Uri.parse("content://dev.duo.hookprobe.config/searchButton"), false, new dev.duo.workspaceprobe.b.C(this.D1));
        } catch (java.lang.RuntimeException e3) {
            android.util.Log.w("DuoRail", "Search button observer unavailable", e3);
        }
        X1();
        try {
            this.p4.getContentResolver().registerContentObserver(android.net.Uri.parse("content://dev.duo.hookprobe.config/pickButton"), false, new dev.duo.workspaceprobe.b.D(this.D1));
        } catch (java.lang.RuntimeException e4) {
            android.util.Log.w("DuoRail", "Pick button observer unavailable", e4);
        }
        W1();
        try {
            this.p4.getContentResolver().registerContentObserver(android.net.Uri.parse("content://dev.duo.hookprobe.config/railCustom"), false, new dev.duo.workspaceprobe.b.E(this.D1));
            this.p4.getContentResolver().registerContentObserver(android.provider.Settings.Secure.getUriFor("freeform_timestamps"), false, new dev.duo.workspaceprobe.b.F(this.D1));
        } catch (java.lang.RuntimeException e5) {
            android.util.Log.w("DuoRail", "Custom rail observer unavailable", e5);
        }
        P1();
        try {
            this.p4.getContentResolver().registerContentObserver(android.net.Uri.parse("content://dev.duo.hookprobe.config/foldSplit"), false, new dev.duo.workspaceprobe.b.G(this.D1));
        } catch (java.lang.RuntimeException e6) {
            android.util.Log.w("DuoFoldSplit", "Switch observer unavailable", e6);
        }
        S1();
        try {
            this.p4.getContentResolver().registerContentObserver(android.net.Uri.parse("content://dev.duo.hookprobe.config/workbench"), false, new dev.duo.workspaceprobe.b.H(this.D1));
        } catch (java.lang.RuntimeException e7) {
            android.util.Log.w("DuoWorkbench", "Switch observer unavailable", e7);
        }
        a2();
        this.p4.getContentResolver().registerContentObserver(android.net.Uri.parse("content://dev.duo.hookprobe.config/pageTones"), true, new dev.duo.workspaceprobe.b.I(this.D1));
        this.p4.getContentResolver().registerContentObserver(dev.duo.hookprobe.F.a, false, new dev.duo.workspaceprobe.b.C0040a(this.D1));
        e1();
        try {
            this.p4.getContentResolver().registerContentObserver(android.net.Uri.parse("content://dev.duo.hookprobe.config/duoRail"), true, new dev.duo.workspaceprobe.b.C0009b(this.D1));
        } catch (java.lang.Throwable th2) {
            android.util.Log.w("DuoRail", "Duo change observer unavailable", th2);
        }
        m("start");
    }

    private void M0() {
        try {
            boolean z2 = (this.p4.getResources().getConfiguration().uiMode & 48) == 32;
            android.content.ContentResolver contentResolver = this.p4.getContentResolver();
            boolean z3 = !z2;
            android.provider.Settings.System.putString(contentResolver, "open_dark_mode_channel", "控制中心");
            android.provider.Settings.System.putInt(contentResolver, "dark_mode_enable_by_setting", 1);
            android.app.UiModeManager.class.getMethod("setNightModeActivated", java.lang.Boolean.TYPE).invoke((android.app.UiModeManager) this.p4.getSystemService("uimode"), java.lang.Boolean.valueOf(z3));
            android.util.Log.w("DuoRail", "Rail dark " + z3);
        } catch (java.lang.Throwable th) {
            a("深色模式", th);
        }
    }

    private void M1() {
        if (this.H4 != null) {
            return;
        }
        try {
            dev.duo.workspaceprobe.b.class.getClassLoader();
            java.lang.ClassLoader classLoader = this.p4.getClassLoader();
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.systemui.shared.system.InputMonitorCompat", false, classLoader);
            java.lang.Class<?> cls2 = java.lang.Class.forName("com.android.systemui.shared.system.InputChannelCompat$InputEventListener", false, classLoader);
            this.G4 = cls.getConstructor(java.lang.String.class, java.lang.Integer.TYPE).newInstance("DuoRailPageWatch", 0);
            this.H4 = cls.getMethod("getInputReceiver", android.os.Looper.class, android.view.Choreographer.class, cls2).invoke(this.G4, android.os.Looper.getMainLooper(), android.view.Choreographer.getInstance(), java.lang.reflect.Proxy.newProxyInstance(classLoader, new java.lang.Class[]{cls2}, new java.lang.reflect.InvocationHandler() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda123
                @Override // java.lang.reflect.InvocationHandler
                public final java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) {
                    java.lang.Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(obj, method, objArr);
                    return a2;
                }
            }));
            android.util.Log.w("DuoRail", "Page watch ready");
        } catch (java.lang.Throwable th) {
            java.lang.Object obj = this.G4;
            if (obj != null) {
                try {
                    obj.getClass().getMethod("dispose", null).invoke(this.G4, null);
                } catch (java.lang.Throwable th2) {
                    th.addSuppressed(th2);
                }
                this.G4 = null;
            }
            this.I4 = android.os.SystemClock.uptimeMillis() + 5000;
            android.util.Log.w("DuoRail", "Page watch unavailable", th);
        }
    }

    private boolean N0() {
        java.util.Iterator<java.lang.Object> it = this.R1.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            java.lang.Object next = it.next();
            android.view.Window window = next instanceof android.app.Dialog ? ((android.app.Dialog) next).getWindow() : null;
            android.view.View peekDecorView = window != null ? window.peekDecorView() : null;
            if (peekDecorView == null || peekDecorView.getParent() == null) {
                it.remove();
            } else if (peekDecorView.getVisibility() == 0) {
                i2++;
            }
        }
        if (i2 != this.S1) {
            this.S1 = i2;
            android.util.Log.w("DuoRail", "SystemUI dialogs on screen=" + i2 + " tracked=" + this.R1.size());
        }
        return i2 > 0;
    }

    private void N1() {
        if (this.a5) {
            return;
        }
        try {
            this.Z4 = !((android.os.PowerManager) this.p4.getSystemService(android.os.PowerManager.class)).isInteractive();
            java.lang.Class<?> cls = java.lang.Class.forName("android.hardware.devicestate.DeviceStateManager");
            java.lang.Class<?> cls2 = java.lang.Class.forName("android.hardware.devicestate.DeviceStateManager$DeviceStateCallback");
            final java.lang.reflect.Method method = java.lang.Class.forName("android.hardware.devicestate.DeviceState").getMethod("getIdentifier", null);
            if (this.n5 == null) {
                java.lang.Object newProxyInstance = java.lang.reflect.Proxy.newProxyInstance(cls2.getClassLoader(), new java.lang.Class[]{cls2}, new java.lang.reflect.InvocationHandler() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda29
                    @Override // java.lang.reflect.InvocationHandler
                    public final java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method2, java.lang.Object[] objArr) {
                        java.lang.Object a2;
                        a2 = dev.duo.workspaceprobe.b.this.a(method, obj, method2, objArr);
                        return a2;
                    }
                });
                cls.getMethod("registerCallback", java.util.concurrent.Executor.class, cls2).invoke(this.p4.getSystemService(cls), new java.util.concurrent.Executor() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda30
                    @Override // java.util.concurrent.Executor
                    public final void execute(java.lang.Runnable runnable) {
                        dev.duo.workspaceprobe.b.this.d(runnable);
                    }
                }, newProxyInstance);
                this.n5 = newProxyInstance;
            }
            this.o5 = (android.hardware.SensorManager) this.p4.getSystemService(android.hardware.SensorManager.class);
            int integer = this.p4.getResources().getInteger(this.p4.getResources().getIdentifier("config_foldSensorDataIndex", "integer", "android"));
            this.r5 = integer;
            if (integer < 0) {
                throw new java.lang.IllegalStateException("Invalid fold classification index");
            }
            java.util.Iterator<android.hardware.Sensor> it = this.o5.getSensorList(-1).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                android.hardware.Sensor next = it.next();
                if ("xiaomi.sensor.fold_status".equals(next.getStringType()) && "fold_status FOLD_STATUS Wakeup".equals(next.getName()) && next.isWakeUpSensor()) {
                    this.p5 = next;
                    break;
                }
            }
            if (this.p5 == null) {
                throw new java.lang.IllegalStateException("Native fold classification sensor missing");
            }
            if (this.f5 == null) {
                dev.duo.workspaceprobe.b.C0057s c0057s = new dev.duo.workspaceprobe.b.C0057s();
                ((android.hardware.display.DisplayManager) this.p4.getSystemService(android.hardware.display.DisplayManager.class)).registerDisplayListener(c0057s, this.D1);
                this.f5 = c0057s;
            }
            this.m5 = ((android.telephony.TelephonyManager) this.p4.getSystemService(android.telephony.TelephonyManager.class)).getCallState();
            this.a5 = true;
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda31
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.z();
                }
            });
        } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e2) {
            a(e2);
        }
    }

    private void O0() {
        try {
            android.content.ContentResolver contentResolver = this.p4.getContentResolver();
            int i2 = android.provider.Settings.System.getInt(contentResolver, "screen_paper_mode_enabled", 0) == 0 ? 1 : 0;
            android.provider.Settings.System.putInt(contentResolver, "screen_paper_mode_enabled", i2);
            android.util.Log.w("DuoRail", "Rail eyecare " + i2);
        } catch (java.lang.Throwable th) {
            a("护眼", th);
        }
    }

    private void O1() {
        android.hardware.SensorEventListener sensorEventListener = this.q5;
        if (sensorEventListener != null) {
            this.o5.unregisterListener(sensorEventListener);
        }
        this.q5 = null;
        this.s5 = false;
        this.t5 = false;
    }

    private void P0() {
        try {
            int intValue = ((java.lang.Integer) android.net.wifi.WifiManager.class.getMethod("getWifiApState", null).invoke((android.net.wifi.WifiManager) this.p4.getSystemService(android.net.wifi.WifiManager.class), null)).intValue();
            if (intValue == 12 || intValue == 10) {
                android.util.Log.w("DuoRail", "Rail hotspot busy state=" + intValue);
                return;
            }
            android.net.TetheringManager tetheringManager = (android.net.TetheringManager) this.p4.getSystemService(android.net.TetheringManager.class);
            android.net.TetheringManager.TetheringRequest build = new android.net.TetheringManager.TetheringRequest.Builder(0).build();
            if (intValue == F0) {
                tetheringManager.stopTethering(build, this.p4.getMainExecutor(), new dev.duo.workspaceprobe.b.A());
            } else {
                tetheringManager.startTethering(build, this.p4.getMainExecutor(), new dev.duo.workspaceprobe.b.B());
            }
            android.util.Log.w("DuoRail", "Rail hotspot " + (intValue == F0 ? "stop" : "start") + " from state=" + intValue);
        } catch (java.lang.Throwable th) {
            a("热点", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P1() {
        this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda167
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.g0();
            }
        });
    }

    private void Q0() {
        a("互传", new android.content.Intent().setComponent(new android.content.ComponentName("com.miui.huanji", "com.miui.huanji.MainActivity")).addFlags(268435456));
    }

    private void Q1() {
        if (this.Z0 == null) {
            return;
        }
        this.E4.J();
        for (dev.duo.workspaceprobe.b.K k2 : this.T5.values()) {
            dev.duo.workspaceprobe.b.h0 h0Var = k2.r;
            if (h0Var != null) {
                h0Var.d(this.Z0);
                k2.r.invalidate();
            }
        }
    }

    private void R1() {
        int i2;
        if (this.Z0 == null) {
            return;
        }
        int round = java.lang.Math.round(d(this.V6));
        if (this.O5) {
            i2 = 405;
        } else {
            i2 = (this.h4 == 0 ? c0 : 0) + 416;
        }
        this.Z0.a(this.L3 && !this.i4, i2 - round);
        int max = this.Z0.a() ? java.lang.Math.max(dev.duo.workspaceprobe.b.h0.D, this.Z0.s0) : dev.duo.workspaceprobe.b.h0.D;
        if (this.V6.g == max) {
            return;
        }
        try {
            android.view.SurfaceControlViewHost.class.getMethod("relayout", android.view.WindowManager.LayoutParams.class).invoke(this.V6.a, new android.view.WindowManager.LayoutParams(this.V6.f, max, 2, 40, -3));
            this.V6.g = max;
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                transaction.setCrop(this.V6.b, new android.graphics.Rect(0, 0, this.V6.f, max)).apply();
                transaction.close();
            } finally {
            }
        } catch (java.lang.ReflectiveOperationException e2) {
            throw new java.lang.IllegalStateException("Status window resize unavailable", e2);
        }
    }

    private void S0() {
        if (this.i7) {
            return;
        }
        this.i7 = true;
        this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda199
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.Z();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S1() {
        this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda99
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.h0();
            }
        });
    }

    private void T0() {
        java.lang.Object[] n02 = n0();
        if (n02 == null) {
            android.util.Log.w("DuoRail", "Last app: none");
        } else {
            a(((java.lang.Integer) n02[0]).intValue(), (java.lang.String) n02[1]);
        }
    }

    private void T1() {
        float f2 = !this.s3 ? 1.0f : this.r3 ? this.t3 : 0.0f;
        dev.duo.workspaceprobe.b.h0 h0Var = this.Z0;
        if (h0Var == null || h0Var.W == f2) {
            return;
        }
        h0Var.W = f2;
        h0Var.invalidate();
    }

    private void U0() {
        try {
            android.location.LocationManager locationManager = (android.location.LocationManager) this.p4.getSystemService(android.location.LocationManager.class);
            boolean isLocationEnabled = locationManager.isLocationEnabled();
            android.location.LocationManager.class.getMethod("setLocationEnabledForUser", java.lang.Boolean.TYPE, android.os.UserHandle.class).invoke(locationManager, java.lang.Boolean.valueOf(!isLocationEnabled), android.os.Process.myUserHandle());
            android.util.Log.w("DuoRail", "Rail location " + (!isLocationEnabled));
        } catch (java.lang.Throwable th) {
            a("定位", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U1() {
        this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda77
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.i0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void V(dev.duo.workspaceprobe.b bVar) {
        bVar.z();
    }

    private void V0() {
        try {
            android.os.PowerManager powerManager = (android.os.PowerManager) this.p4.getSystemService("power");
            boolean isPowerSaveMode = powerManager.isPowerSaveMode();
            android.os.PowerManager.class.getMethod("setPowerSaveModeEnabled", java.lang.Boolean.TYPE).invoke(powerManager, java.lang.Boolean.valueOf(!isPowerSaveMode));
            android.util.Log.w("DuoRail", "Rail power save " + (!isPowerSaveMode));
        } catch (java.lang.Throwable th) {
            a("省电模式", th);
        }
    }

    private void V1() {
        boolean z2 = !this.s3;
        dev.duo.workspaceprobe.b.h0 h0Var = this.Z0;
        if (h0Var == null || h0Var.U == z2) {
            return;
        }
        h0Var.U = z2;
        h0Var.invalidate();
    }

    private void W0() {
        try {
            android.util.Log.w("DuoRail", "Rail ringer " + java.lang.Class.forName("miui.util.AudioManagerHelper").getMethod("toggleSilent", android.content.Context.class, java.lang.Integer.TYPE).invoke(null, this.p4, 4));
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "Rail ringer helper failed", th);
            try {
                android.media.AudioManager audioManager = (android.media.AudioManager) this.p4.getSystemService("audio");
                boolean z2 = audioManager.getRingerMode() == 0;
                audioManager.setRingerMode(z2 ? 2 : 0);
                android.util.Log.w("DuoRail", "Rail ringer fallback " + (!z2));
            } catch (java.lang.Throwable th2) {
                a("铃音模式", th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W1() {
        this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda98
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.j0();
            }
        });
    }

    private void X0() {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.internal.view.RotationPolicy");
            boolean booleanValue = ((java.lang.Boolean) cls.getMethod("isRotationLocked", android.content.Context.class).invoke(null, this.p4)).booleanValue();
            cls.getMethod("setRotationLock", android.content.Context.class, java.lang.Boolean.TYPE, java.lang.String.class).invoke(null, this.p4, java.lang.Boolean.valueOf(!booleanValue), "RailCustom");
            android.util.Log.w("DuoRail", "Rail rotation lock " + (!booleanValue));
        } catch (java.lang.Throwable th) {
            a("旋转锁定", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X1() {
        this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda172
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.k0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Y0() {
        android.content.Context context = this.p4;
        if (context == null) {
            return true;
        }
        if (this.q4 == null) {
            this.q4 = (android.os.PowerManager) context.getSystemService(android.os.PowerManager.class);
        }
        android.os.PowerManager powerManager = this.q4;
        return powerManager == null || powerManager.isInteractive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1() {
        final int i2 = this.e5 + 1;
        this.e5 = i2;
        this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda62
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.t(i2);
            }
        });
    }

    static /* synthetic */ int Z(dev.duo.workspaceprobe.b bVar) {
        int i2 = bVar.E2 + 1;
        bVar.E2 = i2;
        return i2;
    }

    private void Z0() {
        try {
            android.content.Context context = this.p4;
            android.content.Intent intent = new android.content.Intent("miui.intent.screenrecorder.RECORDER_SERVICE").setPackage("com.miui.screenrecorder");
            if (context.bindService(intent, new dev.duo.workspaceprobe.b.ServiceConnectionC0064z(context, intent), 1)) {
            } else {
                throw new java.lang.IllegalStateException("RecorderService bind failed");
            }
        } catch (java.lang.Throwable th) {
            a("录屏", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z1() {
        this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda127
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.l0();
            }
        });
    }

    private void a1() {
        try {
            this.p4.sendBroadcastAsUser(new android.content.Intent("android.intent.action.CAPTURE_SCREENSHOT"), android.os.Process.myUserHandle());
            android.util.Log.w("DuoRail", "Rail screenshot");
        } catch (java.lang.Throwable th) {
            a("截屏", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a2() {
        this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda67
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.m0();
            }
        });
    }

    private static int b(int i2) {
        return (i2 * j0) + 401;
    }

    private void b1() {
        try {
            android.os.PowerManager.class.getMethod("goToSleep", java.lang.Long.TYPE).invoke((android.os.PowerManager) this.p4.getSystemService("power"), java.lang.Long.valueOf(android.os.SystemClock.uptimeMillis()));
            android.util.Log.w("DuoRail", "Rail sleep");
        } catch (java.lang.Throwable th) {
            a("锁屏", th);
        }
    }

    private void b2() {
        android.content.ContentResolver contentResolver = this.p4.getContentResolver();
        int i2 = android.provider.Settings.System.getInt(contentResolver, "screen_off_timeout", 30000);
        int a2 = a((java.lang.Integer) null);
        if (a2 <= 0 || i2 != G0) {
            a(java.lang.Integer.valueOf(i2));
            if (!android.provider.Settings.System.putInt(contentResolver, "screen_off_timeout", G0)) {
                throw new java.lang.IllegalStateException("screen-off timeout write rejected");
            }
            android.util.Log.w("DuoRail", "Rail keep screen 1800000 saved=" + i2 + (a2 > 0 ? " (replaced backup " + a2 + ")" : ""));
            return;
        }
        if (!android.provider.Settings.System.putInt(contentResolver, "screen_off_timeout", a2)) {
            throw new java.lang.IllegalStateException("screen-off timeout restore rejected");
        }
        a((java.lang.Integer) 0);
        android.util.Log.w("DuoRail", "Rail keep screen restored " + a2);
    }

    private static int c(int i2) {
        return (i2 * 120) + 60 + ((i2 - 1) * 30);
    }

    private synchronized void c1() {
        try {
            android.hardware.camera2.CameraManager cameraManager = (android.hardware.camera2.CameraManager) this.p4.getSystemService("camera");
            o1();
            if (C0 == null) {
                android.util.Log.w("DuoRail", "Rail torch: no flash camera");
                return;
            }
            boolean equals = java.lang.Boolean.TRUE.equals(this.g7.get(C0));
            cameraManager.setTorchMode(C0, !equals);
            android.util.Log.w("DuoRail", "Rail torch " + (!equals));
        } catch (java.lang.Throwable th) {
            a("手电筒", th);
        }
    }

    private void c2() {
        if (t() && R0() && this.F2 == this.J1 && !this.G2.isEmpty()) {
            if (!this.N2.isEmpty()) {
                y();
                return;
            }
            final java.lang.String str = this.G2;
            final android.os.Bundle bundle = new android.os.Bundle();
            bundle.putBoolean("start", true);
            this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda78
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(str, bundle);
                }
            });
        }
    }

    private void d1() {
        try {
            android.content.Intent intent = new android.content.Intent("com.xiaomi.aiasst.vision.control.translation.AiTranslateService");
            intent.setPackage("com.xiaomi.aiasst.vision");
            intent.putExtra("from", "systemui.plugin");
            android.content.Context.class.getMethod("startServiceAsUser", android.content.Intent.class, android.os.UserHandle.class).invoke(this.p4, intent, android.os.Process.myUserHandle());
            android.util.Log.w("DuoRail", "Rail translate service");
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "Rail translate service failed", th);
            try {
                a(new android.content.Intent().setComponent(new android.content.ComponentName("com.xiaomi.aiasst.vision", "com.xiaomi.aiasst.vision.intent.IntentAiTranslateServiceActivity")).addFlags(268435456));
                android.util.Log.w("DuoRail", "Rail translate activity fallback");
            } catch (java.lang.Throwable th2) {
                a("翻译", th2);
            }
        }
    }

    private void d2() {
        if (!this.G2.isEmpty()) {
            d(0L);
        }
        if (this.N2.isEmpty()) {
            return;
        }
        this.S2 = android.os.SystemClock.uptimeMillis();
        w();
        k2();
    }

    private static int e(int i2) {
        return (i2 * m0) + 42 + ((i2 - 1) * 42);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e1() {
        this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a0();
            }
        });
    }

    private boolean e2() {
        return this.k1 != null && this.u1 && this.v1 && this.x1 && !this.O1 && !this.P1 && !this.Q1 && w0() && R0() && a(q0()) == 1;
    }

    private void f1() {
        if (this.N1 || this.L1 || this.I1.isEmpty() || this.p4 == null || this.g2 == this.K1) {
            return;
        }
        if ((this.h2 != this.K1 || android.os.SystemClock.uptimeMillis() >= this.i2) && Y0()) {
            this.N1 = true;
            final java.lang.String str = this.I1;
            final long j2 = this.K1;
            this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda154
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(str, j2);
                }
            });
        }
    }

    private boolean f2() {
        long uptimeMillis = android.os.SystemClock.uptimeMillis();
        if (uptimeMillis - this.y4 >= 500) {
            this.z4 = R0();
            this.y4 = uptimeMillis;
        }
        return this.z4;
    }

    private void g1() {
        if (r0() && t0() && this.F1) {
            boolean f2 = f();
            if (this.P5.isEmpty() && !this.N1 && f2 != this.O5) {
                b(f2, H());
            }
            if (f2 && !v() && this.R5 != this.K1 && !this.N1) {
                this.R5 = this.K1;
                a(this.J5, H());
            }
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                if (a(transaction)) {
                    transaction.apply();
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g2() {
        if (!this.v1) {
            long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
            if (this.p4 != null && elapsedRealtime - this.w1 >= 5000) {
                this.w1 = elapsedRealtime;
                S1();
            }
        }
        boolean G2 = G();
        boolean z2 = !G2 && e2();
        boolean z3 = G2 || z2;
        if (this.h1 && (!z3 || this.A1 != z2)) {
            this.h1 = false;
            this.e1.unregisterListener(this.g1);
            this.i1 = -1;
            this.j1 = Float.NaN;
            this.c1.a();
        }
        if (z3) {
            if (this.h1) {
                if (z2 || this.i1 == this.J1) {
                    return;
                }
                this.c1.a();
                this.c1.a(this.j1, android.os.SystemClock.uptimeMillis());
                this.i1 = this.J1;
                return;
            }
            if (this.e1 == null) {
                android.hardware.SensorManager sensorManager = (android.hardware.SensorManager) this.p4.getSystemService(android.hardware.SensorManager.class);
                this.e1 = sensorManager;
                this.f1 = sensorManager.getDefaultSensor(36, false);
                this.g1 = new dev.duo.workspaceprobe.b.C0045g();
                if (this.f1 == null) {
                    android.util.Log.e("DuoFoldSplit", "Non-wakeup hinge sensor unavailable");
                }
            }
            if (this.f1 == null) {
                return;
            }
            this.c1.a();
            try {
                if (!this.e1.registerListener(this.g1, this.f1, 1, this.D1)) {
                    this.f1 = null;
                    android.util.Log.e("DuoFoldSplit", "Hinge sensor registration rejected");
                } else {
                    this.i1 = z2 ? -2 : this.J1;
                    this.A1 = z2;
                    this.h1 = true;
                }
            } catch (java.lang.RuntimeException e2) {
                this.f1 = null;
                android.util.Log.e("DuoFoldSplit", "Hinge sensor registration failed", e2);
            }
        }
    }

    private void h1() {
        if (u() && r0() && this.F1 && this.L1 && !this.k6 && this.P5.isEmpty() && R0()) {
            synchronized (this.S5) {
                if (this.S5.size() >= 3) {
                    return;
                }
                try {
                    dev.duo.workspaceprobe.b.K i2 = i();
                    synchronized (this.S5) {
                        this.S5.add(i2);
                    }
                } catch (java.lang.Throwable th) {
                    android.util.Log.w("DuoRail", "App rail decor refill failed", th);
                }
            }
        }
    }

    private void h2() {
        b(q0());
        if (r0()) {
            boolean z2 = this.M6;
            this.N6 = z2 && this.O5;
            this.O6 = z2 && !this.L1;
        }
    }

    private void i1() {
        java.util.ArrayList arrayList = new java.util.ArrayList(this.T5.values());
        synchronized (this.S5) {
            arrayList.addAll(this.S5);
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            java.lang.Object obj = arrayList.get(i2);
            i2++;
            dev.duo.workspaceprobe.b.K k2 = (dev.duo.workspaceprobe.b.K) obj;
            dev.duo.workspaceprobe.b.S s2 = k2.h;
            if (s2 != null) {
                s2.setVisibility(this.g4 ? 0 : 8);
                k2.h.b = !this.N2.isEmpty();
                k2.h.invalidate();
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:(1:194)(1:99)|100|(1:193)(1:107)|108|(1:192)|110|(1:112)(2:(1:190)|191)|(9:(4:(2:120|(13:138|139|140|141|142|143|144|145|146|147|149|150|(2:152|(4:154|155|156|157)(1:159))(1:160))(2:136|137))|149|150|(0)(0))|140|141|142|143|144|145|146|147)|185|(1:122)|138|139) */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x03d3, code lost:
    
        android.util.Log.e(r2, "Layout failed", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x03d8, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x03c6, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:152:0x031e A[Catch: all -> 0x03ae, TryCatch #6 {all -> 0x03ae, blocks: (B:150:0x0303, B:152:0x031e, B:154:0x0327), top: B:149:0x0303 }] */
    /* JADX WARN: Removed duplicated region for block: B:160:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:167:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v37, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v41 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v63 */
    /* JADX WARN: Type inference failed for: r6v23, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void i2() {
        /*
            Method dump skipped, instructions count: 985
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.workspaceprobe.b.i2():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j1, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void Q() {
        int i2;
        java.lang.String str;
        android.view.SurfaceControl h2;
        android.view.SurfaceControl surfaceControl;
        try {
            if (this.p4 == null) {
                this.p4 = (android.content.Context) java.lang.Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
            }
            if (this.p4 == null) {
                return;
            }
            this.E4.I();
            g2();
            p2();
            if (this.W1 && this.V1 != null && Y0() && w0()) {
                this.W1 = false;
                android.util.Log.w("DuoRail", "Rail poll resumed");
                this.D1.removeCallbacks(this.V1);
                this.D1.post(this.V1);
            }
            L1();
            if (this.H4 == null && android.os.SystemClock.uptimeMillis() >= this.I4) {
                M1();
            }
            android.view.Display display = ((android.hardware.display.DisplayManager) this.p4.getSystemService(android.hardware.display.DisplayManager.class)).getDisplay(0);
            android.graphics.Point point = new android.graphics.Point();
            if (display != null) {
                display.getRealSize(point);
            }
            b(display);
            int i3 = point.x;
            if (i3 != this.y2 || point.y != this.z2) {
                this.y2 = i3;
                this.z2 = point.y;
                android.util.Log.w("DuoRail", "Screen ratio scene real=" + point.x + "x" + point.y);
                if (this.F1 && r0() && t0()) {
                    android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                    try {
                        a(transaction);
                        transaction.apply();
                        transaction.close();
                    } finally {
                    }
                }
            }
            int i4 = point.x;
            boolean z2 = true;
            o((i4 == R && point.y == S) || (i4 == S && point.y == R));
            int i5 = point.x;
            boolean z3 = i5 == S && point.y == R;
            int i6 = this.A4;
            boolean z4 = i6 >= 0 && i5 == R && point.y == S && !this.O1;
            boolean z5 = ((i5 == R && point.y == S) || z3) && (this.L1 || z4 || this.p3);
            if (!z5 || z3) {
                i2 = 0;
            } else {
                if (!z4) {
                    i6 = 0;
                }
                i2 = 1175 - i6;
            }
            if (i2 != this.h4 || z3 != this.i4) {
                a(this.E1, false);
                this.h4 = i2;
                this.i4 = z3;
            }
            V1();
            T1();
            boolean z6 = !this.L1 && f();
            if (z6 != this.w2) {
                this.w2 = z6;
                android.util.Log.w("DuoRail", "App sidebar=" + z6 + " task=" + this.J1 + " pkg=" + this.I1 + " strip=" + D(this.J1));
            }
            if (!this.L1 && this.X6 != 0.0f) {
                this.X6 = 0.0f;
            }
            android.view.SurfaceControl surfaceControl2 = this.G1;
            if (surfaceControl2 == null) {
                str = "displayArea=null";
            } else if (!surfaceControl2.isValid()) {
                str = "displayArea=invalid";
            } else if (!this.L1 && !z4 && !z6) {
                str = "scene(no home/app sidebar)";
            } else if (!w0()) {
                str = "master";
            } else if ((point.x != 1168 || point.y != 1712) && !z5) {
                str = "size";
            } else if (!R0()) {
                str = "locked";
            } else if (this.P1) {
                str = "sceneBlocked";
            } else if (N0()) {
                str = "dialog";
            } else if (this.Q1) {
                str = "shuttingDown";
            } else {
                if ((!this.L1 && !z4) || (this.W6 < 0.999f && this.T6 < 0.999f && this.X6 < 0.999f)) {
                    str = !this.Q6.isEmpty() ? "fullscreenPages=" + this.Q6.size() : null;
                }
                str = "progress minus=" + this.W6 + " recents=" + this.T6 + " search=" + this.X6;
            }
            boolean z7 = str == null;
            java.lang.String str2 = z7 ? "" : str;
            if (!str2.equals(this.x2)) {
                this.x2 = str2;
                if (!z7) {
                    android.util.Log.w("DuoRail", "Rail off reason=" + str + " home=" + this.L1 + " split=" + z4 + " pkg=" + this.I1 + " task=" + this.J1 + " size=" + point.x + "x" + point.y);
                }
            }
            m2();
            if (z7 != this.F1) {
                android.util.Log.w("DuoRail", "Visible=" + z7 + " foreground=" + this.I1 + " dx=" + this.h4);
            }
            android.view.SurfaceControl surfaceControl3 = this.G1;
            if ((this.L1 || z4) && (h2 = h(0)) != null) {
                surfaceControl3 = h2;
            }
            if (this.F1 && (surfaceControl = this.E1) != null && !surfaceControl.isValid()) {
                android.util.Log.w("DuoRail", "Rail parent surface is no longer valid, mounting again " + this.E1);
                this.F1 = false;
                this.E1 = null;
            }
            a(surfaceControl3, z7);
            if (this.Z0 != null) {
                R1();
                dev.duo.workspaceprobe.b.h0 h0Var = this.Z0;
                if (!z7 || this.s3 || v()) {
                    z2 = false;
                }
                h0Var.a(z2);
            }
            if (z7) {
                l2();
                h2();
                g1();
            }
            i2();
            h1();
            k2();
        } catch (java.lang.Throwable th) {
            a(this.E1, false);
            android.util.Log.w("DuoRail", "Rail scene check failed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j2() {
        android.service.notification.StatusBarNotification[] activeNotifications;
        android.graphics.drawable.Drawable drawable;
        if (this.Z0 == null) {
            return;
        }
        if (!this.L3) {
            if (!this.K3.isEmpty() || this.Z0.V) {
                this.K3 = java.util.Collections.EMPTY_LIST;
                dev.duo.workspaceprobe.b.h0 h0Var = this.Z0;
                h0Var.a0 = new android.graphics.drawable.Drawable[0];
                h0Var.V = false;
                h0Var.b0 = 0;
                m1();
                return;
            }
            return;
        }
        android.service.notification.NotificationListenerService notificationListenerService = this.I3;
        if (notificationListenerService == null || (activeNotifications = notificationListenerService.getActiveNotifications(null)) == null) {
            return;
        }
        java.util.Arrays.sort(activeNotifications, new java.util.Comparator() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda36
            @Override // java.util.Comparator
            public final int compare(java.lang.Object obj, java.lang.Object obj2) {
                int a2;
                a2 = dev.duo.workspaceprobe.b.a((android.service.notification.StatusBarNotification) obj, (android.service.notification.StatusBarNotification) obj2);
                return a2;
            }
        });
        java.util.LinkedHashSet linkedHashSet = new java.util.LinkedHashSet();
        for (android.service.notification.StatusBarNotification statusBarNotification : activeNotifications) {
            if (statusBarNotification.isClearable()) {
                linkedHashSet.add(statusBarNotification.getPackageName());
            }
        }
        java.util.List<java.lang.String> subList = new java.util.ArrayList(linkedHashSet).subList(0, java.lang.Math.min(4, linkedHashSet.size()));
        boolean z2 = linkedHashSet.size() > 3;
        if (subList.equals(this.K3) && z2 == this.Z0.V && linkedHashSet.size() == this.Z0.b0) {
            return;
        }
        java.util.List<java.lang.String> list = this.K3;
        android.content.pm.PackageManager packageManager = this.p4.getPackageManager();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        for (java.lang.String str : subList) {
            int indexOf = list.indexOf(str);
            if (indexOf >= 0) {
                try {
                    drawable = this.Z0.a0[indexOf];
                } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
                    android.util.Log.w("DuoRail", "Notification icon missing pkg=" + str);
                }
            } else {
                drawable = packageManager.getApplicationIcon(str);
            }
            arrayList2.add(drawable);
            arrayList.add(str);
        }
        this.K3 = arrayList;
        this.Z0.a0 = (android.graphics.drawable.Drawable[]) arrayList2.toArray(new android.graphics.drawable.Drawable[0]);
        dev.duo.workspaceprobe.b.h0 h0Var2 = this.Z0;
        h0Var2.V = z2;
        h0Var2.b0 = linkedHashSet.size();
        m1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k1() {
        if (this.a7.isEmpty() || this.d7) {
            return;
        }
        this.d7 = true;
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda117
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.b0();
            }
        });
    }

    private void k2() {
        boolean B02 = B0();
        if (!this.N2.isEmpty() && !this.l3 && (this.L1 || this.J1 != this.F2 || !this.N2.equals(this.G2))) {
            this.l3 = true;
            y();
        }
        if (B02) {
            if (this.d3 == null) {
                k();
            }
            dev.duo.workspaceprobe.b.R r2 = this.d3;
            if (r2 == null) {
                return;
            }
            if (this.e3 == null) {
                a(r2, this.b3, this.c3, 2001);
            }
            this.Y2 = true;
            D0();
            if (this.D1.hasCallbacks(this.k3)) {
                return;
            }
            this.D1.postDelayed(this.k3, 600L);
            return;
        }
        this.D1.removeCallbacks(this.k3);
        if (this.Y2) {
            w();
            E(this.E2);
        }
        this.Y2 = false;
        dev.duo.workspaceprobe.b.R r3 = this.d3;
        if (r3 != null) {
            boolean isEmpty = this.N2.isEmpty();
            if (isEmpty) {
                this.d3 = null;
            }
            try {
                android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                try {
                    transaction.setVisibility(r3.b, false).apply();
                    transaction.close();
                } finally {
                }
            } finally {
                if (isEmpty) {
                    e(r3);
                }
            }
        }
    }

    private void l1() {
        dev.duo.workspaceprobe.b.U u2 = this.C1;
        if (u2 != null) {
            u2.setVisibility(this.M3 ? 0 : 8);
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(this.T5.values());
        synchronized (this.S5) {
            arrayList.addAll(this.S5);
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            java.lang.Object obj = arrayList.get(i2);
            i2++;
            dev.duo.workspaceprobe.b.U u3 = ((dev.duo.workspaceprobe.b.K) obj).s;
            if (u3 != null) {
                u3.setVisibility(this.M3 ? 0 : 8);
            }
        }
        if (!this.F1 || this.G5 == null) {
            return;
        }
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            if (a(transaction)) {
                transaction.apply();
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

    private void l2() {
        int i2 = h() ? b : 0;
        if (i2 == 0 && !this.L1) {
            i2 = u(this.J1);
        }
        int i3 = (i2 == 0 || android.graphics.Color.luminance(i2) <= 0.45f) ? -1 : -13618632;
        if (h()) {
            i3 = -1;
        }
        boolean z2 = r0() && this.k6;
        dev.duo.workspaceprobe.b.h0 h0Var = this.Z0;
        if (h0Var != null && !z2 && h0Var.h0 != i3) {
            h0Var.h0 = i3;
            h0Var.invalidate();
        }
        if (this.Z0 == null || this.L6 == i3) {
            return;
        }
        this.L6 = i3;
        boolean z3 = i3 != -1;
        this.C1.a.setColor(z3 ? -14737372 : i3);
        dev.duo.workspaceprobe.b.N n2 = this.F5;
        if (n2 != null) {
            n2.a(z3 ? 2 : 0);
        }
        if (this.G5 != null) {
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                a(transaction, "setShadowRadius", this.G5.b, java.lang.Float.valueOf(z3 ? 0.0f : 8.0f));
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
        this.C1.invalidate();
        for (dev.duo.workspaceprobe.b.Q q2 : this.K5) {
            if (q2 != null) {
                q2.b = i3;
                q2.invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m0() {
        try {
            android.os.Bundle call = this.p4.getContentResolver().call(android.net.Uri.parse("content://dev.duo.hookprobe.config"), "workbench", (java.lang.String) null, (android.os.Bundle) null);
            java.lang.String str = "on";
            if (call != null && call.containsKey("on")) {
                final boolean z2 = call.getBoolean("on");
                this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda166
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.i(z2);
                    }
                });
                return;
            }
            java.lang.StringBuilder append = new java.lang.StringBuilder().append("Switch read failed, keeping ");
            if (this.O3 == null) {
                str = "not ready";
            } else if (!this.O3.booleanValue()) {
                str = "off";
            }
            android.util.Log.w("DuoWorkbench", append.append(str).append(": ").append(call == null ? "no response" : call.getString("error", "no on value")).toString());
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.w("DuoWorkbench", "Switch read failed", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m1() {
        if (!Y0()) {
            this.e6 = true;
            return;
        }
        this.e6 = false;
        this.Z0.invalidate();
        Q1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00b4 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2() {
        /*
            r9 = this;
            long r0 = android.os.SystemClock.elapsedRealtime()
            r2 = 1800000(0x1b7740, double:8.89318E-318)
            long r0 = r0 / r2
            r2 = 4
            long r0 = r0 % r2
            int r0 = (int) r0
            boolean r1 = r9.r0()
            r2 = 0
            if (r1 != 0) goto L17
            dev.duo.workspaceprobe.q r1 = r9.d4
            if (r1 == 0) goto L26
        L17:
            boolean r1 = r9.R0()
            if (r1 == 0) goto L26
            r1 = 1
            if (r0 != r1) goto L21
            goto L27
        L21:
            r1 = 3
            if (r0 != r1) goto L26
            r1 = -1
            goto L27
        L26:
            r1 = r2
        L27:
            int r0 = dev.duo.workspaceprobe.b.x0
            if (r1 != r0) goto L2d
            goto Lb4
        L2d:
            dev.duo.workspaceprobe.b.x0 = r1
            dev.duo.workspaceprobe.q r0 = r9.d4
            if (r0 == 0) goto L36
            r0.c()
        L36:
            dev.duo.workspaceprobe.b$h0 r0 = r9.Z0
            if (r0 == 0) goto L3d
            r0.invalidate()
        L3d:
            dev.duo.workspaceprobe.b$U r0 = r9.C1
            if (r0 == 0) goto L44
            r0.invalidate()
        L44:
            dev.duo.workspaceprobe.b$Q[] r0 = r9.K5
            int r1 = r0.length
            r3 = r2
        L48:
            if (r3 >= r1) goto L54
            r4 = r0[r3]
            if (r4 == 0) goto L51
            r4.invalidate()
        L51:
            int r3 = r3 + 1
            goto L48
        L54:
            android.widget.ImageView[] r0 = r9.J5
            int r1 = r0.length
            r3 = r2
        L58:
            if (r3 >= r1) goto L64
            r4 = r0[r3]
            if (r4 == 0) goto L61
            r4.invalidate()
        L61:
            int r3 = r3 + 1
            goto L58
        L64:
            java.util.ArrayList r0 = new java.util.ArrayList
            java.util.Map<java.lang.Integer, dev.duo.workspaceprobe.b$K> r1 = r9.T5
            java.util.Collection r1 = r1.values()
            r0.<init>(r1)
            java.util.ArrayDeque<dev.duo.workspaceprobe.b$K> r1 = r9.S5
            monitor-enter(r1)
            java.util.ArrayDeque<dev.duo.workspaceprobe.b$K> r3 = r9.S5     // Catch: java.lang.Throwable -> Lb5
            r0.addAll(r3)     // Catch: java.lang.Throwable -> Lb5
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lb5
            int r1 = r0.size()
            r3 = r2
        L7d:
            if (r3 >= r1) goto Lb4
            java.lang.Object r4 = r0.get(r3)
            int r3 = r3 + 1
            dev.duo.workspaceprobe.b$K r4 = (dev.duo.workspaceprobe.b.K) r4
            dev.duo.workspaceprobe.b$h0 r5 = r4.r
            r5.invalidate()
            dev.duo.workspaceprobe.b$U r5 = r4.s
            r5.invalidate()
            java.util.ArrayList<dev.duo.workspaceprobe.b$J> r5 = r4.f
            int r6 = r5.size()
            r7 = r2
        L98:
            if (r7 >= r6) goto La6
            java.lang.Object r8 = r5.get(r7)
            int r7 = r7 + 1
            dev.duo.workspaceprobe.b$J r8 = (dev.duo.workspaceprobe.b.J) r8
            r8.invalidate()
            goto L98
        La6:
            android.widget.ImageView[] r4 = r4.i
            int r5 = r4.length
            r6 = r2
        Laa:
            if (r6 >= r5) goto L7d
            r7 = r4[r6]
            r7.invalidate()
            int r6 = r6 + 1
            goto Laa
        Lb4:
            return
        Lb5:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lb5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.workspaceprobe.b.m2():void");
    }

    private java.lang.Object[] n0() {
        java.util.Set<java.lang.String> H2 = H();
        android.content.pm.PackageManager packageManager = this.p4.getPackageManager();
        try {
            for (android.app.ActivityManager.RecentTaskInfo recentTaskInfo : ((android.app.ActivityManager) this.p4.getSystemService(android.app.ActivityManager.class)).getRecentTasks(24, 2)) {
                if (recentTaskInfo.taskId != this.J1) {
                    android.content.Intent intent = recentTaskInfo.baseIntent;
                    android.content.ComponentName component = (intent == null || intent.getComponent() == null) ? recentTaskInfo.baseActivity : recentTaskInfo.baseIntent.getComponent();
                    if (component != null) {
                        java.lang.String packageName = component.getPackageName();
                        if (!H2.contains(packageName) && !"com.miui.home".equals(packageName) && !"com.android.systemui".equals(packageName) && !packageName.startsWith("dev.duo.") && packageManager.getLaunchIntentForPackage(packageName) != null) {
                            java.lang.Object obj = recentTaskInfo.getClass().getField("configuration").get(recentTaskInfo);
                            java.lang.Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
                            int intValue = ((java.lang.Integer) obj2.getClass().getMethod("getWindowingMode", null).invoke(obj2, null)).intValue();
                            if (intValue == 1 || intValue == 0) {
                                return new java.lang.Object[]{java.lang.Integer.valueOf(recentTaskInfo.taskId), packageName};
                            }
                        }
                    }
                }
            }
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "Last app unavailable", th);
        }
        return null;
    }

    private void n1() {
        if (this.i6 || this.p4 == null) {
            return;
        }
        this.i6 = true;
        this.v6 = java.util.concurrent.Executors.newSingleThreadExecutor(new java.util.concurrent.ThreadFactory() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda81
            @Override // java.util.concurrent.ThreadFactory
            public final java.lang.Thread newThread(java.lang.Runnable runnable) {
                java.lang.Thread c2;
                c2 = dev.duo.workspaceprobe.b.c(runnable);
                return c2;
            }
        });
        java.lang.Thread thread = new java.lang.Thread(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda82
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.c0();
            }
        }, "DuoNativeSidebar");
        thread.setDaemon(true);
        thread.start();
    }

    private void n2() {
        float G1 = G1();
        this.N5 = G1;
        this.M5 = 1.0f - G1;
        if (this.Z0 == null || !r0()) {
            return;
        }
        int intValue = h() ? -1 : ((java.lang.Integer) y0.evaluate(this.N5, -1, -13618632)).intValue();
        dev.duo.workspaceprobe.b.h0 h0Var = this.Z0;
        if (h0Var.h0 != intValue) {
            h0Var.h0 = intValue;
            h0Var.invalidate();
        }
    }

    private void o0() {
        a(new android.content.Intent("android.intent.action.ASSIST").setPackage("com.miui.voiceassist").addFlags(268435456));
    }

    private void o1() {
        if (!this.h7 || C0 == null) {
            try {
                android.hardware.camera2.CameraManager cameraManager = (android.hardware.camera2.CameraManager) this.p4.getSystemService("camera");
                if (cameraManager == null) {
                    return;
                }
                if (C0 == null) {
                    java.lang.String[] cameraIdList = cameraManager.getCameraIdList();
                    int length = cameraIdList.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        }
                        java.lang.String str = cameraIdList[i2];
                        android.hardware.camera2.CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(str);
                        java.lang.Boolean bool = (java.lang.Boolean) cameraCharacteristics.get(android.hardware.camera2.CameraCharacteristics.FLASH_INFO_AVAILABLE);
                        java.lang.Integer num = (java.lang.Integer) cameraCharacteristics.get(android.hardware.camera2.CameraCharacteristics.LENS_FACING);
                        if (java.lang.Boolean.TRUE.equals(bool) && num != null && num.intValue() == 1) {
                            C0 = str;
                            break;
                        }
                        i2++;
                    }
                }
                if (this.h7) {
                    return;
                }
                cameraManager.registerTorchCallback(new dev.duo.workspaceprobe.b.C0063y(), this.D1);
                this.h7 = true;
            } catch (java.lang.Throwable th) {
                android.util.Log.w("DuoRail", "Rail torch state callback unavailable", th);
            }
        }
    }

    private void o2() {
        boolean isKeyguardLocked = ((android.app.KeyguardManager) this.p4.getSystemService(android.app.KeyguardManager.class)).isKeyguardLocked();
        if (!isKeyguardLocked || this.l5 == 3) {
            this.u5 = false;
        }
        int i2 = this.l5;
        boolean z2 = true;
        if (i2 != 0 && i2 != 1 && i2 != 2 && (i2 != 4 || this.w5 == null)) {
            z2 = false;
        }
        if (this.b5 && ((!isKeyguardLocked || !z2) && android.os.SystemClock.uptimeMillis() >= this.c5)) {
            this.b5 = false;
            this.c5 = 0L;
            android.util.Log.w("DuoStandby", "Standby failure latch cleared after leaving the candidate state");
            N1();
        }
        if (!this.Y4 || !isKeyguardLocked || this.b5 || this.Q1 || !z2) {
            O1();
            return;
        }
        try {
            if (this.q5 == null) {
                dev.duo.workspaceprobe.b.C0058t c0058t = new dev.duo.workspaceprobe.b.C0058t();
                this.q5 = c0058t;
                if (this.o5.registerListener(c0058t, this.p5, 3, this.D1)) {
                } else {
                    throw new java.lang.IllegalStateException("Native fold listener registration rejected");
                }
            }
        } catch (java.lang.RuntimeException e2) {
            a((java.lang.Exception) e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void p(dev.duo.workspaceprobe.b bVar) {
        bVar.q();
    }

    private void p0() {
        int i2;
        if (r0() && t0() && this.j4 != this.i4) {
            dev.duo.workspaceprobe.b.R[] rArr = {this.B5, this.C5};
            for (int i3 = 0; i3 < 2; i3++) {
                dev.duo.workspaceprobe.b.R r2 = rArr[i3];
                android.widget.FrameLayout frameLayout = (android.widget.FrameLayout) r2.d;
                int i4 = 0;
                while (true) {
                    i2 = 170;
                    if (i4 >= frameLayout.getChildCount()) {
                        break;
                    }
                    android.view.View childAt = frameLayout.getChildAt(i4);
                    android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams();
                    int i5 = ((this.j4 ? layoutParams.leftMargin : layoutParams.topMargin) - 21) / 170;
                    boolean z2 = this.i4;
                    layoutParams.gravity = z2 ? z : 1;
                    layoutParams.leftMargin = z2 ? (i5 * 170) + p0 : 0;
                    layoutParams.topMargin = z2 ? 0 : (i5 * 170) + p0;
                    childAt.setLayoutParams(layoutParams);
                    i4++;
                }
                int e2 = e(r2 == this.B5 ? 4 : 2);
                boolean z3 = this.i4;
                int i6 = z3 ? e2 : 170;
                r2.f = i6;
                if (!z3) {
                    i2 = e2;
                }
                r2.g = i2;
                r2.a.relayout(i6, i2);
            }
            this.j4 = this.i4;
            android.util.Log.w("DuoRail", "Desktop Dock " + (this.i4 ? "portrait" : "landscape") + " fixed=" + this.B5.f + "x" + this.B5.g + " recent=" + this.C5.f + "x" + this.C5.g);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p1() {
        java.util.ArrayList arrayList = new java.util.ArrayList(this.T5.values());
        synchronized (this.S5) {
            arrayList.addAll(this.S5);
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            java.lang.Object obj = arrayList.get(i2);
            i2++;
            f((dev.duo.workspaceprobe.b.K) obj);
        }
        dev.duo.workspaceprobe.b.K s2 = s2();
        if (s2 != null) {
            a(s2);
        }
    }

    private void p2() {
        if (this.G6 && y0()) {
            synchronized (this.F6) {
                this.G6 = false;
                this.F6.notifyAll();
            }
        }
    }

    private android.view.Display q0() {
        android.content.Context context = this.p4;
        if (context == null) {
            return null;
        }
        return ((android.hardware.display.DisplayManager) context.getSystemService(android.hardware.display.DisplayManager.class)).getDisplay(0);
    }

    private int q1() {
        java.util.ArrayList arrayList = new java.util.ArrayList(this.n4);
        this.n4.clear();
        for (dev.duo.workspaceprobe.b.R r2 : this.o4) {
            if (b(r2)) {
                arrayList.add(r2);
            }
        }
        this.o4.removeAll(arrayList);
        this.E5.removeAll(arrayList);
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            java.lang.Object obj = arrayList.get(i2);
            i2++;
            dev.duo.workspaceprobe.b.R r3 = (dev.duo.workspaceprobe.b.R) obj;
            if (r3.b.isValid()) {
                try {
                    android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                    try {
                        transaction.setVisibility(r3.b, false).reparent(r3.b, null).apply();
                        transaction.close();
                    } catch (java.lang.Throwable th) {
                        try {
                            transaction.close();
                        } catch (java.lang.Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (java.lang.Throwable th3) {
                    this.n4.add(r3);
                    android.util.Log.w("DuoLegacyDock", "Legacy detach pending " + r3.c, th3);
                }
            }
            try {
                b(r3.d);
            } catch (java.lang.Throwable th4) {
                android.util.Log.w("DuoLegacyDock", "Legacy view cleanup failed " + r3.c, th4);
            }
            try {
                r3.a.release();
                r3.b.release();
                i3++;
            } catch (java.lang.Throwable th5) {
                this.n4.add(r3);
                android.util.Log.w("DuoLegacyDock", "Legacy host release pending " + r3.c, th5);
            }
        }
        this.D5 = null;
        this.C5 = null;
        this.B5 = null;
        this.A5 = null;
        this.h6 = 0;
        this.g6 = 0;
        this.F4 = null;
        java.util.Arrays.fill(this.H5, (java.lang.Object) null);
        java.util.Arrays.fill(this.K5, (java.lang.Object) null);
        java.util.Arrays.fill(this.I5, (java.lang.Object) null);
        java.util.Arrays.fill(this.J5, (java.lang.Object) null);
        this.L5.clear();
        this.j4 = false;
        return i3;
    }

    private boolean r0() {
        return a(q0()) == 0;
    }

    private void r1() {
        dev.duo.workspaceprobe.b.R r2 = this.e3;
        if (r2 == null) {
            return;
        }
        this.e3 = null;
        try {
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                transaction.setVisibility(r2.b, false).apply();
                transaction.close();
            } finally {
            }
        } finally {
            e(r2);
        }
    }

    private int s0() {
        int size = this.n4.size();
        java.util.Iterator<dev.duo.workspaceprobe.b.R> it = this.o4.iterator();
        while (it.hasNext()) {
            if (b(it.next())) {
                size++;
            }
        }
        return size;
    }

    private void s1() {
        if (this.w5 == null || this.y5) {
            return;
        }
        this.y5 = true;
        this.v5 = false;
        java.lang.Process process = this.x5;
        if (process != null) {
            process.destroy();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public dev.duo.workspaceprobe.b.K s2() {
        dev.duo.workspaceprobe.q qVar = this.d4;
        if (qVar == null) {
            return null;
        }
        return qVar.j();
    }

    private boolean t0() {
        if (this.A5 == null || this.B5 == null || this.C5 == null || this.D5 == null || !this.n4.isEmpty()) {
            return false;
        }
        for (dev.duo.workspaceprobe.b.R r2 : this.H5) {
            if (r2 == null) {
                return false;
            }
        }
        return true;
    }

    private void t1() {
        (this.U0 != null ? this.U0 : this.D1).post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.d0();
            }
        });
    }

    static int t2() {
        return (b(2) + 136) - b(0);
    }

    private android.widget.FrameLayout u0() {
        return w(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u1() {
        if (!G()) {
            g2();
        } else {
            final int i2 = this.J1;
            this.n1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda113
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.p(i2);
                }
            });
        }
    }

    static int u2() {
        return 136;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v0() {
        dev.duo.workspaceprobe.b.i0 i0Var = this.I2.get(this.G2);
        if (i0Var == null || this.V2 || this.C2 == null || this.F2 != this.J1 || this.L1 || !r0() || !j(this.F2) || !R0()) {
            return;
        }
        final int i2 = this.F2;
        final int i3 = this.E2;
        final int a2 = a(i2);
        final java.lang.String str = this.H2;
        final java.util.List<int[]> a3 = a(i0Var, str, a2);
        if (a3.size() < 2) {
            return;
        }
        b(i2, new dev.duo.workspaceprobe.b$$ExternalSyntheticLambda95(), new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda96
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                dev.duo.workspaceprobe.b.this.a(a3, str, i3, i2, a2, (java.lang.Integer) obj);
            }
        });
    }

    private void v1() {
        final dev.duo.workspaceprobe.b.O o2 = this.u6;
        java.util.concurrent.ExecutorService executorService = this.v6;
        if (o2 == null || executorService == null) {
            return;
        }
        try {
            executorService.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.a(dev.duo.workspaceprobe.b.O.this);
                }
            });
        } catch (java.util.concurrent.RejectedExecutionException e2) {
        }
    }

    private void w1() {
        final java.lang.Object obj = new java.lang.Object();
        this.u5 = true;
        this.w5 = obj;
        this.y5 = false;
        this.v5 = false;
        new java.lang.Thread(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda137
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.e(obj);
            }
        }, "MiDuoTentLease").start();
    }

    private float x0() {
        if (!this.L1) {
            return 1.0f;
        }
        return java.lang.Math.max(0.0f, java.lang.Math.min(1.0f, (1.0f - this.W6) * (1.0f - this.T6) * (1.0f - this.X6)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x1() {
        if (!e2()) {
            g2();
            return;
        }
        final android.app.ActivityManager.RunningTaskInfo runningTaskInfo = this.B1;
        if (runningTaskInfo == null) {
            return;
        }
        final android.os.Bundle bundle = new android.os.Bundle();
        bundle.putParcelable("multiple_split_dock_task", runningTaskInfo);
        this.n1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda114
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(runningTaskInfo, bundle);
            }
        });
    }

    private boolean y0() {
        return Y0() && w0();
    }

    private boolean z1() {
        if (this.N4 != null) {
            return true;
        }
        java.lang.Object obj = this.M4;
        if (obj == null) {
            return false;
        }
        try {
            for (java.lang.reflect.Field field : obj.getClass().getDeclaredFields()) {
                if (!field.getType().isPrimitive()) {
                    field.setAccessible(true);
                    java.lang.Object obj2 = field.get(obj);
                    if (obj2 != null && obj2.getClass().getName().endsWith("LauncherProxyService$1")) {
                        this.N4 = obj2;
                    }
                    if (field.getName().equals("mShadeViewControllerLazy")) {
                        this.O4 = obj2;
                    }
                }
            }
            java.lang.Object obj3 = this.N4;
            if (obj3 != null && this.O4 != null) {
                this.P4 = obj3.getClass().getDeclaredMethod("moveShadeWindowIfNeeded", android.view.MotionEvent.class);
                this.Q4 = this.N4.getClass().getDeclaredMethod("shouldIgnoreEvent", android.view.MotionEvent.class);
                this.P4.setAccessible(true);
                this.Q4.setAccessible(true);
                this.R4 = java.lang.Class.forName("dagger.Lazy", false, obj.getClass().getClassLoader()).getMethod("get", null);
                return true;
            }
            this.N4 = null;
            return false;
        } catch (java.lang.ReflectiveOperationException e2) {
            this.N4 = null;
            android.util.Log.w("DuoRail", "Shade entry unavailable", e2);
            return false;
        }
    }

    void A0() {
        try {
            java.lang.Object systemService = this.p4.getSystemService((java.lang.Class<java.lang.Object>) android.app.StatusBarManager.class);
            systemService.getClass().getMethod("expandNotificationsPanel", null).invoke(systemService, null);
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.w("DuoRail", "Message centre unavailable", e2);
        }
    }

    boolean E0() {
        try {
            for (java.lang.reflect.Field field : this.G4.getClass().getDeclaredFields()) {
                if (field.getType().getName().equals("android.view.InputMonitor")) {
                    field.setAccessible(true);
                    java.lang.Object obj = field.get(this.G4);
                    obj.getClass().getMethod("pilferPointers", null).invoke(obj, null);
                    return true;
                }
            }
            android.util.Log.w("DuoRail", "Pilfer: no InputMonitor in " + this.G4.getClass());
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "Pilfer failed", th);
        }
        return false;
    }

    boolean R0() {
        android.content.Context context = this.p4;
        if (context == null) {
            return false;
        }
        if (this.q4 == null) {
            this.q4 = (android.os.PowerManager) context.getSystemService(android.os.PowerManager.class);
        }
        if (this.r4 == null) {
            this.r4 = (android.app.KeyguardManager) this.p4.getSystemService(android.app.KeyguardManager.class);
        }
        android.os.PowerManager powerManager = this.q4;
        return (powerManager == null || this.r4 == null || !powerManager.isInteractive() || this.r4.isKeyguardLocked()) ? false : true;
    }

    public void onModuleLoaded(io.github.libxposed.api.XposedModuleInterface.ModuleLoadedParam moduleLoadedParam) {
        java.lang.String processName = moduleLoadedParam.getProcessName();
        this.H0 = processName;
        if ("com.miui.home".equals(processName)) {
            java.lang.System.loadLibrary("duoworkspace");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0166 A[Catch: ReflectiveOperationException -> 0x0249, TryCatch #1 {ReflectiveOperationException -> 0x0249, blocks: (B:30:0x00f9, B:36:0x0149, B:39:0x0166, B:41:0x018c, B:43:0x019c, B:48:0x01e2, B:49:0x01ac, B:51:0x01b3, B:54:0x01c3, B:57:0x01d1, B:64:0x01e9, B:66:0x01f5, B:78:0x0142), top: B:29:0x00f9 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPackageLoaded(io.github.libxposed.api.XposedModuleInterface.PackageLoadedParam r27) {
        /*
            Method dump skipped, instructions count: 597
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.workspaceprobe.b.onPackageLoaded(io.github.libxposed.api.XposedModuleInterface$PackageLoadedParam):void");
    }

    java.lang.String q2() {
        java.lang.Object[] n02 = n0();
        if (n02 == null) {
            return null;
        }
        return (java.lang.String) n02[1];
    }

    boolean r2() {
        return java.lang.Boolean.TRUE.equals(this.O3);
    }

    boolean v2() {
        return this.O3 != null;
    }

    boolean w0() {
        return !"0".equals(c("debug.duo.master", ""));
    }

    void y1() {
        a2();
    }

    void z0() {
        try {
            java.lang.Object systemService = this.p4.getSystemService((java.lang.Class<java.lang.Object>) android.app.StatusBarManager.class);
            systemService.getClass().getMethod("expandSettingsPanel", null).invoke(systemService, null);
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.w("DuoRail", "Control centre unavailable", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public android.graphics.drawable.Drawable B(java.lang.String str) throws android.content.pm.PackageManager.NameNotFoundException {
        android.graphics.drawable.Drawable drawable;
        android.content.pm.PackageManager packageManager = this.p4.getPackageManager();
        android.graphics.drawable.Drawable applicationIcon = packageManager.getApplicationIcon(dev.duo.hookprobe.J.h(str));
        int i2 = dev.duo.hookprobe.J.i(str);
        if (i2 == 0) {
            return applicationIcon;
        }
        try {
            drawable = packageManager.getUserBadgedIcon(applicationIcon, C(i2));
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.w("DuoRail", "Sidebar badge " + str + " unavailable: " + e2);
            drawable = applicationIcon;
        }
        return drawable != applicationIcon ? drawable : new dev.duo.workspaceprobe.b.Y(applicationIcon);
    }

    private static android.os.UserHandle C(int i2) {
        return android.os.UserHandle.getUserHandleForUid(i2 * 100000);
    }

    private boolean D(int i2) {
        java.lang.Integer num = this.s2.get(java.lang.Integer.valueOf(i2));
        return (num == null || (num.intValue() & 1) == 0 || (num.intValue() >> 1) <= 0) ? false : true;
    }

    private boolean E(int i2) {
        java.lang.Integer num;
        if (i2 == this.E2 && r0() && j(this.F2)) {
            dev.duo.workspaceprobe.b.i0 i0Var = this.I2.get(this.G2);
            java.util.List<int[]> a2 = i0Var == null ? java.util.Collections.EMPTY_LIST : a(i0Var, this.H2, a(this.F2));
            if (a2.isEmpty()) {
                num = null;
            } else {
                java.lang.Integer num2 = this.J2.get(this.H2);
                num = java.lang.Integer.valueOf(i0Var.f.contains(this.H2) ? a(this.F2) : a2.get(0)[1]);
                for (int[] iArr : a2) {
                    if (num2 != null && iArr[1] == num2.intValue()) {
                        num = num2;
                    }
                }
            }
            c(this.F2, (num == null || num.intValue() == a(this.F2)) ? 0 : num.intValue());
            if (num != null) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F(java.lang.String str) {
        java.util.ArrayList arrayList = new java.util.ArrayList(this.Q3);
        if (arrayList.remove(str)) {
            c((java.util.List<java.lang.String>) arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G, reason: merged with bridge method [inline-methods] */
    public void l(java.lang.String str) {
        boolean z2;
        this.c2 = str;
        if (d(str)) {
            dev.duo.hookprobe.G.a(false, true);
            dev.duo.hookprobe.G.a(false);
            return;
        }
        dev.duo.workspaceprobe.a.b b2 = this.M0.b(str);
        if (b2 == null) {
            return;
        }
        android.view.Display q02 = q0();
        if (b2.e == 0 || q02 == null) {
            z2 = false;
        } else {
            android.graphics.Point point = new android.graphics.Point();
            q02.getRealSize(point);
            z2 = point.y > point.x;
        }
        boolean z3 = a(q02) == 1;
        boolean z4 = !(b2.a || z3 || this.b2) || b2.a(w0(), z3, z2);
        dev.duo.hookprobe.G.a(z4);
        dev.duo.hookprobe.G.a(z4 && !this.p3 && str.equals(this.d2) && this.e2 && this.f2, z4);
    }

    private java.util.Set<java.lang.String> H() {
        android.content.ComponentName componentName;
        java.util.HashSet hashSet = new java.util.HashSet();
        hashSet.add(this.I1);
        android.app.ActivityManager.RunningTaskInfo runningTaskInfo = this.J0.get(java.lang.Integer.valueOf(this.J1));
        if (runningTaskInfo != null && (componentName = runningTaskInfo.baseActivity) != null) {
            hashSet.add(componentName.getPackageName());
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0118 A[LOOP:2: B:62:0x0116->B:63:0x0118, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x013d A[LOOP:3: B:66:0x0137->B:68:0x013d, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.Object[]> I() {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.workspaceprobe.b.I():java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean J() {
        try {
            java.lang.Object invoke = java.lang.Class.forName("android.app.ActivityTaskManager").getMethod("getService", null).invoke(null, null);
            java.lang.Object invoke2 = invoke.getClass().getMethod("getFocusedRootTaskInfo", null).invoke(invoke, null);
            if (invoke2 != null && invoke2.getClass().getField("displayId").getInt(invoke2) == 0) {
                android.content.ComponentName componentName = (android.content.ComponentName) invoke2.getClass().getField("topActivity").get(invoke2);
                java.lang.Object obj = invoke2.getClass().getField("configuration").get(invoke2);
                java.lang.Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
                if (componentName != null && "com.miui.home".equals(componentName.getPackageName()) && "com.miui.home.launcher.Launcher".equals(componentName.getClassName())) {
                    return ((java.lang.Integer) obj2.getClass().getMethod("getActivityType", null).invoke(obj2, null)).intValue() == 2;
                }
                return false;
            }
            return false;
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.w("DuoRail", "Focused task check failed", e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K() {
        this.U2 = false;
        D0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M() {
        l(this.I1);
        d2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N() {
        l(this.I1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void P() {
        boolean z2;
        java.lang.Throwable th;
        if (!Y0()) {
            this.W1 = true;
            android.util.Log.w("DuoRail", "Rail poll paused: screen not interactive");
            return;
        }
        if (!w0()) {
            Q();
            this.W1 = true;
            android.util.Log.w("DuoRail", "Rail poll paused: master switch off");
            return;
        }
        int i2 = 0;
        try {
            java.util.ArrayList arrayList = new java.util.ArrayList(this.L0);
            int size = arrayList.size();
            z2 = false;
            while (i2 < size) {
                try {
                    java.lang.Object obj = arrayList.get(i2);
                    i2++;
                    z2 |= a(this.J0.get((java.lang.Integer) obj), (android.view.SurfaceControl) null);
                } catch (java.lang.Throwable th2) {
                    th = th2;
                    android.util.Log.w("DuoRail", "Rail poll failed", th);
                    if (this.p4 != null) {
                    }
                    Q();
                    this.D1.postDelayed(this.V1, 1000L);
                }
            }
        } catch (java.lang.Throwable th3) {
            z2 = false;
            th = th3;
        }
        if (this.p4 != null || !z2) {
            Q();
        }
        this.D1.postDelayed(this.V1, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R() {
        this.Q1 = true;
        Q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S() {
        a("gesture 15", true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T() {
        if (this.A4 < 0) {
            return;
        }
        this.A4 = -1;
        android.util.Log.i("DuoSplitHome", "Right inset=-1 (pre state=2)");
        Q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U() {
        l(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V() {
        if (B0()) {
            if (!this.V2 && this.e3 == null) {
                a(false, (android.graphics.Rect) null);
            }
            this.D1.postDelayed(this.k3, 2000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean W() {
        i2();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X() {
        java.util.Iterator<java.lang.Integer> it = this.U5.keySet().iterator();
        while (it.hasNext()) {
            a(it.next().intValue(), (android.view.SurfaceControl.Transaction) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y() {
        this.i7 = false;
        k1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z() {
        try {
            b2();
        } catch (java.lang.RuntimeException e2) {
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda132
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(e2);
                }
            });
        } finally {
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda131
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.Y();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a0() {
        final android.os.Bundle a2 = a("pickState", (java.lang.String) null, (android.os.Bundle) null);
        if (a2 == null) {
            return;
        }
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.b(a2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b0() {
        this.d7 = false;
        if (this.a7.isEmpty()) {
            return;
        }
        final java.util.HashSet hashSet = new java.util.HashSet();
        java.util.Iterator<dev.duo.workspaceprobe.b.J> it = this.a7.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().a);
        }
        this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda141
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(hashSet);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00f2, code lost:
    
        throw new java.lang.SecurityException("Native Home handshake");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void c0() {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.workspaceprobe.b.c0():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d0() {
        java.util.HashSet hashSet = new java.util.HashSet();
        java.util.Map[] mapArr = {this.X0, this.q2};
        for (int i2 = 0; i2 < 2; i2++) {
            java.util.Map map = mapArr[i2];
            if (map != null) {
                java.util.ArrayList arrayList = new java.util.ArrayList(map.keySet());
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    java.lang.Object obj = arrayList.get(i3);
                    i3++;
                    if (obj instanceof java.lang.Integer) {
                        hashSet.add((java.lang.Integer) obj);
                    }
                }
            }
        }
        java.util.Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            z(((java.lang.Integer) it.next()).intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e0() {
        android.widget.Toast.makeText(this.p4, "面板顺序保存失败", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f0() {
        android.widget.Toast.makeText(this.p4, "小窗侧边栏保存失败", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void g0() {
        /*
            r14 = this;
            java.lang.String r0 = "sidebarFreeform"
            android.content.Context r2 = r14.p4     // Catch: java.lang.RuntimeException -> Laa
            android.content.ContentResolver r2 = r2.getContentResolver()     // Catch: java.lang.RuntimeException -> Laa
            java.lang.String r3 = "content://dev.duo.hookprobe.config"
            android.net.Uri r3 = android.net.Uri.parse(r3)     // Catch: java.lang.RuntimeException -> Laa
            java.lang.String r4 = "railCustom"
            r5 = 0
            android.os.Bundle r2 = r2.call(r3, r4, r5, r5)     // Catch: java.lang.RuntimeException -> Laa
            if (r2 != 0) goto L19
            r3 = r5
            goto L1f
        L19:
            java.lang.String r3 = "layout"
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.RuntimeException -> Laa
        L1f:
            if (r2 != 0) goto L23
            r4 = r5
            goto L29
        L23:
            java.lang.String r4 = "sidebarApps"
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.RuntimeException -> Laa
        L29:
            if (r2 != 0) goto L2d
            r6 = r5
            goto L33
        L2d:
            java.lang.String r6 = "panelOrder"
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.RuntimeException -> Laa
        L33:
            if (r2 != 0) goto L36
            goto L3c
        L36:
            java.lang.String r5 = "workbenchLayout"
            java.lang.String r5 = r2.getString(r5)     // Catch: java.lang.RuntimeException -> Laa
        L3c:
            r7 = 1
            if (r2 == 0) goto L4b
            boolean r8 = r2.containsKey(r0)     // Catch: java.lang.RuntimeException -> Laa
            if (r8 == 0) goto L4b
            boolean r0 = r2.getBoolean(r0)     // Catch: java.lang.RuntimeException -> Laa
            r10 = r0
            goto L4c
        L4b:
            r10 = r7
        L4c:
            r0 = 0
            if (r2 == 0) goto L59
            java.lang.String r8 = "sidebarKeyEnd"
            boolean r2 = r2.getBoolean(r8, r0)     // Catch: java.lang.RuntimeException -> Laa
            if (r2 == 0) goto L59
            r11 = r7
            goto L5a
        L59:
            r11 = r0
        L5a:
            java.util.List r2 = dev.duo.hookprobe.J.e(r6)
            java.util.List r2 = java.util.Collections.unmodifiableList(r2)
            int r6 = r14.U3
            java.lang.String[] r3 = dev.duo.hookprobe.J.d(r3)
            r8 = r2
            java.lang.String[] r2 = dev.duo.hookprobe.J.a(r5, r3)
            boolean r9 = dev.duo.hookprobe.J.d(r3)
            if (r9 != 0) goto L7c
            boolean r9 = dev.duo.hookprobe.J.g(r2)
            if (r9 == 0) goto L7a
            goto L7c
        L7a:
            r12 = r0
            goto L7d
        L7c:
            r12 = r7
        L7d:
            java.util.List r0 = dev.duo.hookprobe.J.f(r4)
            java.util.List r0 = java.util.Collections.unmodifiableList(r0)
            if (r12 == 0) goto L8c
            java.util.List r4 = r14.E(r4)
            goto L8e
        L8c:
            java.util.List r4 = java.util.Collections.EMPTY_LIST
        L8e:
            r9 = r4
            if (r12 == 0) goto L96
            java.util.List r4 = r14.d(r9)
            goto L98
        L96:
            java.util.List r4 = java.util.Collections.EMPTY_LIST
        L98:
            android.os.Handler r13 = r14.D1
            r7 = r3
            r3 = r5
            r5 = r8
            r8 = r4
            r4 = r6
            r6 = r0
            dev.duo.workspaceprobe.b$$ExternalSyntheticLambda169 r0 = new dev.duo.workspaceprobe.b$$ExternalSyntheticLambda169
            r1 = r14
            r0.<init>()
            r13.post(r0)
            return
        Laa:
            r0 = move-exception
            java.lang.String r1 = "DuoRail"
            java.lang.String r2 = "Custom rail read failed"
            android.util.Log.w(r1, r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.workspaceprobe.b.g0():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h0() {
        try {
            android.os.Bundle call = this.p4.getContentResolver().call(android.net.Uri.parse("content://dev.duo.hookprobe.config"), "foldSplit", (java.lang.String) null, (android.os.Bundle) null);
            if (call != null && call.containsKey("on")) {
                final boolean equals = "247".equals(c("debug.duo.foldanim", "0"));
                final boolean z2 = call.getBoolean("on") && !equals;
                final int i2 = call.getInt("nudge", 1);
                this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda202
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.a(i2, z2, equals);
                    }
                });
                return;
            }
            android.util.Log.w("DuoFoldSplit", "Switch read failed: " + (call == null ? "no response" : call.getString("error", "no on value")));
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.w("DuoFoldSplit", "Switch read failed", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i0() {
        try {
            android.os.Bundle call = this.p4.getContentResolver().call(android.net.Uri.parse("content://dev.duo.hookprobe.config"), "notificationIcons", (java.lang.String) null, (android.os.Bundle) null);
            if (call != null && call.containsKey("on")) {
                final boolean z2 = call.getBoolean("on");
                this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda181
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.f(z2);
                    }
                });
                return;
            }
            android.util.Log.w("DuoRail", "Notification icon config read failed: " + (call == null ? "no response" : call.getString("error", "no on value")));
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.w("DuoRail", "Notification icon config read failed", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j0() {
        android.os.Bundle a2 = a("pickButton", (java.lang.String) null, (android.os.Bundle) null);
        if (a2 == null || !a2.containsKey("on")) {
            return;
        }
        final boolean z2 = a2.getBoolean("on");
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda182
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.g(z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k0() {
        try {
            android.os.Bundle call = this.p4.getContentResolver().call(android.net.Uri.parse("content://dev.duo.hookprobe.config"), "searchButton", (java.lang.String) null, (android.os.Bundle) null);
            if (call != null && call.containsKey("on")) {
                final boolean z2 = call.getBoolean("on");
                this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda120
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.h(z2);
                    }
                });
                return;
            }
            android.util.Log.w("DuoRail", "Search button config read failed: " + (call == null ? "no response" : call.getString("error", "no on value")));
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.w("DuoRail", "Search button config read failed", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l0() {
        try {
            android.os.Bundle call = this.p4.getContentResolver().call(android.net.Uri.parse("content://dev.duo.hookprobe.config"), "statusStyles", (java.lang.String) null, (android.os.Bundle) null);
            if (call != null && call.containsKey("cellular") && call.containsKey("thin") && call.containsKey("percentTop")) {
                final boolean z2 = call.getBoolean("cellular");
                final boolean z3 = call.getBoolean("thin");
                final boolean z4 = call.getBoolean("percentTop");
                final int[] intArray = call.getIntArray("dy");
                this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda176
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.a(intArray, z2, z3, z4);
                    }
                });
                return;
            }
            android.util.Log.w("DuoRail", "Status style read failed: " + (call == null ? "no response" : call.getString("error", "no style values")));
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.w("DuoRail", "Status style read failed", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(final java.lang.String str) {
        boolean z2;
        long j2;
        boolean z3;
        while (this.S0) {
            try {
                this.S0 = false;
                long uptimeMillis = android.os.SystemClock.uptimeMillis();
                android.content.Context context = this.p4;
                if (context == null) {
                    this.R0.set(false);
                    if (this.S0) {
                        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda135
                            @Override // java.lang.Runnable
                            public final void run() {
                                dev.duo.workspaceprobe.b.this.m(str);
                            }
                        });
                        return;
                    }
                    return;
                }
                java.util.List<android.content.pm.ApplicationInfo> installedApplications = context.getPackageManager().getInstalledApplications(0);
                final java.util.ArrayList arrayList = new java.util.ArrayList();
                java.util.HashSet hashSet = new java.util.HashSet();
                java.util.Iterator<android.content.pm.ApplicationInfo> it = installedApplications.iterator();
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        j2 = uptimeMillis;
                        z3 = false;
                        break;
                    }
                    android.content.pm.ApplicationInfo next = it.next();
                    if (!d(next.packageName)) {
                        j2 = uptimeMillis;
                        long a2 = this.M0.a();
                        dev.duo.workspaceprobe.a.b a3 = a(next.packageName, (java.lang.String) null);
                        if (a3 == null) {
                            i3++;
                            i4++;
                            if (i4 >= 3) {
                                z3 = true;
                                break;
                            }
                            uptimeMillis = j2;
                        } else {
                            i2++;
                            dev.duo.workspaceprobe.a.C0008a a4 = this.M0.a(next.packageName, a3, a2);
                            if (a4 != null) {
                                if (a4.b) {
                                    arrayList.add(next.packageName);
                                }
                                if (a4.a(a3)) {
                                    hashSet.add(next.packageName);
                                }
                            }
                            uptimeMillis = j2;
                            i4 = 0;
                        }
                    }
                }
                if (!hashSet.isEmpty()) {
                    b((java.util.Set<java.lang.String>) hashSet);
                }
                if (z3) {
                    this.m2 = true;
                    this.S0 = false;
                    android.util.Log.w("DuoRail", "Duo states prefetch stopped: 3 reads failed in a row; it runs again once a read succeeds");
                }
                android.util.Log.w("DuoRail", "Duo states prefetched reason=" + str + " apps=" + installedApplications.size() + " read=" + i2 + " failed=" + i3 + " changed=" + arrayList.size() + " ms=" + (android.os.SystemClock.uptimeMillis() - j2) + " thread=" + java.lang.Thread.currentThread().getName());
                if (!arrayList.isEmpty()) {
                    this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda136
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.workspaceprobe.b.this.a(arrayList);
                        }
                    });
                }
            } catch (java.lang.Throwable th) {
                try {
                    android.util.Log.w("DuoRail", "Duo states prefetch failed reason=" + str, th);
                    if (z2) {
                        return;
                    } else {
                        return;
                    }
                } finally {
                    this.R0.set(false);
                    if (this.S0) {
                        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda135
                            @Override // java.lang.Runnable
                            public final void run() {
                                dev.duo.workspaceprobe.b.this.m(str);
                            }
                        });
                    }
                }
            }
        }
        this.R0.set(false);
        if (this.S0) {
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda135
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.m(str);
                }
            });
        }
    }

    private void o(java.lang.ClassLoader classLoader) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.systemui.statusbar.CommandQueue", false, classLoader);
            java.lang.Class cls2 = java.lang.Integer.TYPE;
            hook(cls.getDeclaredMethod("onSystemBarAttributesChanged", cls2, cls2, java.lang.Class.forName("[Lcom.android.internal.view.AppearanceRegion;", false, classLoader), java.lang.Boolean.TYPE, cls2, cls2, java.lang.String.class, java.lang.Class.forName("[Lcom.android.internal.statusbar.LetterboxDetails;", false, classLoader))).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda20
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object p2;
                    p2 = dev.duo.workspaceprobe.b.this.p(chain);
                    return p2;
                }
            });
            hook(cls.getDeclaredMethod("setWindowState", cls2, cls2, cls2)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda21
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object q2;
                    q2 = dev.duo.workspaceprobe.b.this.q(chain);
                    return q2;
                }
            });
            android.util.Log.i("DuoRail", "Native status bar policy hook ready");
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e("DuoRail", "Native status bar policy hook unavailable", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object p(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        if (((java.lang.Integer) chain.getArg(0)).intValue() == 0) {
            final int intValue = ((java.lang.Integer) chain.getArg(5)).intValue();
            final java.lang.String str = (java.lang.String) chain.getArg(6);
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda46
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(str, intValue);
                }
            });
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object q(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        if (((java.lang.Integer) chain.getArg(0)).intValue() == 0 && ((java.lang.Integer) chain.getArg(1)).intValue() == 1) {
            final boolean z2 = ((java.lang.Integer) chain.getArg(2)).intValue() == 0;
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.e(z2);
                }
            });
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(int i2) {
        if (i2 == this.J1) {
            Q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(java.lang.String str) {
        java.lang.String h2 = dev.duo.hookprobe.J.h(str);
        int i2 = dev.duo.hookprobe.J.i(str);
        android.content.Intent launchIntentForPackage = this.p4.getPackageManager().getLaunchIntentForPackage(h2);
        if (i2 == 0 && launchIntentForPackage == null) {
            return;
        }
        try {
            android.app.ActivityOptions g2 = g(h2);
            if (g2 == null) {
                android.util.Log.w("DuoRail", "Sidebar " + str + ": freeform not allowed, fullscreen");
            }
            if (i2 != 0) {
                a(h2, i2, g2);
            } else {
                if (g2 == null) {
                    a(launchIntentForPackage.addFlags(268435456));
                    return;
                }
                this.p4.startActivity(launchIntentForPackage.addFlags(268435456), g2.toBundle());
            }
            android.util.Log.w("DuoRail", "Sidebar launch " + str + (g2 == null ? " fullscreen" : " freeform"));
        } catch (java.lang.Throwable th) {
            a("小窗打开 " + str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(java.lang.String str) {
        java.lang.String h2 = dev.duo.hookprobe.J.h(str);
        int i2 = dev.duo.hookprobe.J.i(str);
        android.content.Intent launchIntentForPackage = this.p4.getPackageManager().getLaunchIntentForPackage(h2);
        if (i2 == 0 && launchIntentForPackage == null) {
            return;
        }
        try {
            android.app.ActivityOptions makeBasic = android.app.ActivityOptions.makeBasic();
            android.app.ActivityOptions.class.getMethod("setLaunchWindowingMode", java.lang.Integer.TYPE).invoke(makeBasic, 1);
            if (i2 != 0) {
                a(h2, i2, makeBasic);
            } else {
                this.p4.startActivity(launchIntentForPackage.addFlags(268435456), makeBasic.toBundle());
            }
            android.util.Log.w("DuoRail", "Sidebar launch " + str + " fullscreen");
        } catch (java.lang.Throwable th) {
            a("全屏打开 " + str, th);
        }
    }

    private int u(int i2) {
        java.lang.String g2 = g(this.J0.get(java.lang.Integer.valueOf(i2)));
        dev.duo.workspaceprobe.a.b b2 = g2 == null ? null : this.M0.b(g2);
        if (b2 == null || !b2.a || !r0()) {
            return a;
        }
        java.lang.Integer num = this.A2.get(java.lang.Integer.valueOf(i2));
        return num != null ? num.intValue() : b2.f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public void m(final java.lang.String str) {
        this.S0 = true;
        if (this.R0.compareAndSet(false, true)) {
            try {
                this.O0.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda138
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.n(str);
                    }
                });
            } catch (java.util.concurrent.RejectedExecutionException e2) {
                this.R0.set(false);
            }
        }
    }

    private void w() {
        this.V2 = false;
        this.a3 = 0;
        this.Z2 = 0;
        r1();
    }

    private android.content.SharedPreferences x() {
        android.content.SharedPreferences sharedPreferences = this.k2;
        if (sharedPreferences == null && android.os.SystemClock.uptimeMillis() >= this.l2) {
            try {
                sharedPreferences = getRemotePreferences("duo_top");
                this.k2 = sharedPreferences;
                android.util.Log.w("DuoRail", "Duo config direct read ready");
                return sharedPreferences;
            } catch (java.lang.Throwable th) {
                this.l2 = android.os.SystemClock.uptimeMillis() + 5000;
                android.util.Log.w("DuoRail", "Duo config direct read unavailable, provider kept", th);
            }
        }
        return sharedPreferences;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(final java.lang.String str) {
        if (d(str)) {
            return;
        }
        try {
            this.O0.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda180
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.p(str);
                }
            });
        } catch (java.util.concurrent.RejectedExecutionException e2) {
            android.util.Log.w("DuoRail", "Duo config read rejected pkg=" + str, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(final int i2) {
        (this.U0 != null ? this.U0 : this.D1).post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda74
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.o(i2);
            }
        });
    }

    void A(java.lang.String str) {
        if (R0()) {
            this.f4 = true;
            try {
                c(str);
            } finally {
                this.f4 = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public java.lang.String C(java.lang.String str) {
        java.lang.String h2 = dev.duo.hookprobe.J.h(str);
        android.content.pm.PackageManager packageManager = this.p4.getPackageManager();
        try {
            h2 = java.lang.String.valueOf(packageManager.getApplicationLabel(packageManager.getApplicationInfo(h2, 0)));
        } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
        }
        return dev.duo.hookprobe.J.i(str) == 0 ? h2 : h2 + "（分身）";
    }

    private java.lang.String i(android.app.ActivityManager.RunningTaskInfo runningTaskInfo) {
        android.content.ComponentName componentName = this.Z1;
        if (runningTaskInfo != null && a(runningTaskInfo.topActivity) && componentName != null && a(this.p4) && i(componentName.getPackageName())) {
            try {
                if (runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) != 0) {
                    return null;
                }
                if (runningTaskInfo.taskId == this.Y1) {
                    if (runningTaskInfo.baseActivity == null || !componentName.getPackageName().equals(runningTaskInfo.baseActivity.getPackageName())) {
                        return null;
                    }
                    return componentName.getPackageName();
                }
                for (android.app.ActivityManager.RunningTaskInfo runningTaskInfo2 : ((android.app.ActivityManager) this.p4.getSystemService(android.app.ActivityManager.class)).getRunningTasks(10)) {
                    if (runningTaskInfo2.taskId == this.Y1 && componentName.equals(runningTaskInfo2.topActivity) && runningTaskInfo2.getClass().getField("isVisible").getBoolean(runningTaskInfo2)) {
                        if (new android.graphics.Rect(0, 0, v0, 1712).equals(f(runningTaskInfo2.getClass().getField("appCompatTaskInfo").get(runningTaskInfo2)))) {
                            return componentName.getPackageName();
                        }
                    }
                }
            } catch (java.lang.ReflectiveOperationException e2) {
                android.util.Log.w("DuoResolver", "Source check failed", e2);
            }
        }
        return null;
    }

    private void j(java.lang.ClassLoader classLoader) {
        try {
            hook(java.lang.Class.forName("com.android.systemui.statusbar.phone.ConfigurationControllerImpl", false, classLoader).getDeclaredMethod("onConfigurationChanged", android.content.res.Configuration.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda34
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object k2;
                    k2 = dev.duo.workspaceprobe.b.this.k(chain);
                    return k2;
                }
            });
            android.util.Log.w("DuoRail", "Dark mode configuration hook ready");
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.w("DuoRail", "Dark mode configuration hook unavailable", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object k(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        final boolean z2 = (((android.content.res.Configuration) chain.getArg(0)).uiMode & 48) == 32;
        this.E4.a(z2);
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.d(z2);
            }
        });
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(int i2) {
        b(i2, false);
    }

    private int m(dev.duo.workspaceprobe.b.K k2) {
        if (k2.a != null) {
            return 0;
        }
        return H1();
    }

    private void r() {
        dev.duo.workspaceprobe.b.i0 i0Var = this.I2.get(this.G2);
        if (!this.V2 || this.U2 || !B0() || this.T2 || i0Var == null || !i0Var.b) {
            return;
        }
        final android.os.Bundle bundle = new android.os.Bundle();
        final boolean z2 = this.n2;
        final boolean C02 = C0();
        bundle.putLong("token", this.Q2);
        bundle.putString("page", this.H2);
        bundle.putBoolean("night", z2);
        bundle.putLong("revision", i0Var.c);
        bundle.putInt("color", this.a3);
        bundle.putBoolean("default", C02);
        final java.lang.String str = this.G2;
        final java.lang.String str2 = this.H2;
        final int i2 = this.a3;
        final int i3 = this.E2;
        final int i4 = this.J1;
        final long j2 = this.Q2;
        final long j3 = this.R2;
        final long j4 = this.K1;
        this.U2 = true;
        D0();
        b(i4, new dev.duo.workspaceprobe.b$$ExternalSyntheticLambda95(), new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda171
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                dev.duo.workspaceprobe.b.this.a(j2, j3, i3, i4, j4, str, str2, z2, bundle, C02, i2, (java.lang.Integer) obj);
            }
        });
    }

    private boolean D(java.lang.String str) {
        java.lang.String h2 = dev.duo.hookprobe.J.h(str);
        int i2 = dev.duo.hookprobe.J.i(str);
        return i2 == 0 ? this.p4.getPackageManager().getLaunchIntentForPackage(h2) != null : !b(h2, i2).isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object d(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        this.V0 = chain.getThisObject();
        h((android.app.ActivityManager.RunningTaskInfo) chain.getArg(0));
        c((android.app.ActivityManager.RunningTaskInfo) chain.getArg(0));
        java.lang.Object proceed = chain.proceed();
        a((android.app.ActivityManager.RunningTaskInfo) chain.getArg(0), (android.view.SurfaceControl) chain.getArg(1));
        return proceed;
    }

    private static android.graphics.Rect f(java.lang.Object obj) throws java.lang.ReflectiveOperationException {
        if (obj == null) {
            return null;
        }
        try {
            return (android.graphics.Rect) obj.getClass().getField("topActivityAppBounds").get(obj);
        } catch (java.lang.NoSuchFieldException e2) {
            return (android.graphics.Rect) obj.getClass().getMethod("getTopActivityAppBounds", null).invoke(obj, null);
        }
    }

    private java.lang.String g(android.app.ActivityManager.RunningTaskInfo runningTaskInfo) {
        android.content.ComponentName componentName;
        if (runningTaskInfo == null || (componentName = runningTaskInfo.topActivity) == null) {
            return null;
        }
        java.lang.String packageName = componentName.getPackageName();
        android.content.ComponentName componentName2 = runningTaskInfo.baseActivity;
        return (dev.duo.hookprobe.P.i.contains(packageName) || componentName2 == null || packageName.equals(componentName2.getPackageName()) || i(packageName) || !i(componentName2.getPackageName())) ? packageName : componentName2.getPackageName();
    }

    private void h(java.lang.ClassLoader classLoader) {
        try {
            this.U1 = java.lang.Class.forName("android.os.SystemProperties", false, classLoader).getDeclaredMethod("get", java.lang.String.class, java.lang.String.class);
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.wm.shell.RootTaskDisplayAreaOrganizer", false, classLoader);
            java.lang.Class<?> cls2 = java.lang.Class.forName("android.window.DisplayAreaInfo", false, classLoader);
            final java.lang.reflect.Field field = cls2.getField("displayId");
            final java.lang.reflect.Field field2 = cls2.getField("token");
            hook(cls.getDeclaredMethod("onDisplayAreaAppeared", cls2, android.view.SurfaceControl.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda100
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object b2;
                    b2 = dev.duo.workspaceprobe.b.this.b(field, field2, chain);
                    return b2;
                }
            });
            hook(cls.getDeclaredMethod("onDisplayAreaVanished", cls2)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda101
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(field, field2, chain);
                    return a2;
                }
            });
            i(classLoader);
            o(classLoader);
            dev.duo.workspaceprobe.f.a(this, classLoader);
            c(classLoader);
            a(classLoader);
            this.E4.a(classLoader);
            m(classLoader);
            n(classLoader);
            j(classLoader);
            d(classLoader);
            g(classLoader);
            f(classLoader);
            b(classLoader);
            java.lang.Class<?> cls3 = java.lang.Class.forName("com.android.wm.shell.ShellTaskOrganizer", false, classLoader);
            java.lang.Class<?> cls4 = java.lang.Class.forName("android.window.TransitionRequestInfo", false, classLoader);
            final java.lang.reflect.Method method = cls4.getMethod("getTriggerTask", null);
            final java.lang.reflect.Method method2 = cls4.getMethod("getType", null);
            hook(java.lang.Class.forName("com.android.wm.shell.transition.Transitions", false, classLoader).getDeclaredMethod("requestStartTransition", android.os.IBinder.class, cls4)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda102
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(method2, method, chain);
                    return a2;
                }
            });
            hook(cls3.getDeclaredMethod("onTaskAppeared", android.app.ActivityManager.RunningTaskInfo.class, android.view.SurfaceControl.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda103
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object d2;
                    d2 = dev.duo.workspaceprobe.b.this.d(chain);
                    return d2;
                }
            });
            java.lang.Class<?> cls5 = java.lang.Class.forName("android.window.TaskAppearedInfo", false, classLoader);
            final java.lang.reflect.Method method3 = cls5.getMethod("getTaskInfo", null);
            final java.lang.reflect.Method method4 = cls5.getMethod("getLeash", null);
            hook(cls3.getDeclaredMethod("onTaskAppeared", cls5)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda104
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object b2;
                    b2 = dev.duo.workspaceprobe.b.this.b(method3, method4, chain);
                    return b2;
                }
            });
            java.lang.Runnable runnable = new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda105
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.P();
                }
            };
            this.V1 = runnable;
            this.D1.postDelayed(runnable, 1000L);
            hook(cls3.getDeclaredMethod("onTaskInfoChanged", android.app.ActivityManager.RunningTaskInfo.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda106
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object e2;
                    e2 = dev.duo.workspaceprobe.b.this.e(chain);
                    return e2;
                }
            });
            hook(cls3.getDeclaredMethod("onTaskVanished", android.app.ActivityManager.RunningTaskInfo.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda107
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object f2;
                    f2 = dev.duo.workspaceprobe.b.this.f(chain);
                    return f2;
                }
            });
            android.util.Log.w("DuoRail", "Rail task hooks ready");
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.w("DuoRail", "No rail task hooks", e2);
        }
    }

    private float l(dev.duo.workspaceprobe.b.K k2) {
        return k2.a != null ? 963.0f : 993.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(boolean z2) {
        if (this.Y3 == z2) {
            return;
        }
        this.Y3 = z2;
        this.e4 = z2;
        p1();
        this.e4 = false;
        dev.duo.workspaceprobe.b.d0 d0Var = this.Z3;
        if (d0Var != null) {
            d0Var.d();
        }
    }

    private void z(java.lang.String str) {
        if (t()) {
            c(str);
        }
    }

    private void e(android.app.ActivityManager.RunningTaskInfo runningTaskInfo) throws java.lang.ReflectiveOperationException {
        if (runningTaskInfo == null) {
            return;
        }
        d(runningTaskInfo);
        android.content.ComponentName componentName = runningTaskInfo.topActivity;
        if (componentName != null && "com.miui.home".equals(componentName.getPackageName()) && "com.miui.home.launcher.Launcher".equals(componentName.getClassName())) {
            java.lang.Object obj = runningTaskInfo.getClass().getField("configuration").get(runningTaskInfo);
            java.lang.Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
            android.graphics.Rect rect = (android.graphics.Rect) obj2.getClass().getMethod("getAppBounds", null).invoke(obj2, null);
            int intValue = ((java.lang.Integer) obj2.getClass().getMethod("getActivityType", null).invoke(obj2, null)).intValue();
            java.lang.Object obj3 = runningTaskInfo.getClass().getField("appCompatTaskInfo").get(runningTaskInfo);
            android.graphics.Rect f2 = f(obj3);
            boolean z2 = false;
            if (intValue == 2 && new android.graphics.Rect(0, 0, v0, 1712).equals(f2)) {
                z2 = true;
            }
            this.I0.put(java.lang.Integer.valueOf(runningTaskInfo.taskId), java.lang.Boolean.valueOf(z2));
            android.util.Log.w("DuoWallpaper", "Home task=" + runningTaskInfo.taskId + " eligible=" + z2 + " appBounds=" + rect + " compat=" + obj3);
            return;
        }
        this.I0.remove(java.lang.Integer.valueOf(runningTaskInfo.taskId));
    }

    private void l(java.lang.ClassLoader classLoader) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.systemui.LauncherProxyService", false, classLoader);
            for (java.lang.reflect.Constructor<?> constructor : cls.getDeclaredConstructors()) {
                hook(constructor).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda47
                    public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                        java.lang.Object m2;
                        m2 = dev.duo.workspaceprobe.b.this.m(chain);
                        return m2;
                    }
                });
            }
            for (java.lang.reflect.Method method : cls.getDeclaredMethods()) {
                final java.lang.String name = method.getName();
                if (name.equals("notifySystemUiStateFlags") || name.equals("notifySysUiStateFlagsForAllDisplays") || name.equals("addCallback") || name.equals("shouldShowSwipeUpUI")) {
                    hook(method).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda48
                        public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                            java.lang.Object a2;
                            a2 = dev.duo.workspaceprobe.b.this.a(name, chain);
                            return a2;
                        }
                    });
                }
            }
            android.util.Log.w("DuoRail", "Shade gesture hooks ready");
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.w("DuoRail", "No shade gesture hooks", e2);
        }
    }

    private boolean w(java.lang.String str) {
        if (str == null || dev.duo.hookprobe.J.e.equals(str) || dev.duo.hookprobe.J.f.equals(str)) {
            return false;
        }
        return (str.startsWith("app:") && this.p4.getPackageManager().getLaunchIntentForPackage(str.substring(4)) == null) ? false : true;
    }

    public android.os.Bundle F() throws java.lang.ReflectiveOperationException {
        dev.duo.workspaceprobe.b.R r2;
        dev.duo.workspaceprobe.b.R r3;
        boolean z2;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        java.lang.Object obj = null;
        boolean z3 = false;
        a((android.os.Bundle) null, false);
        if (this.p4 != null && (r2 = this.V6) != null && (r3 = this.G5) != null) {
            dev.duo.workspaceprobe.b.R[] rArr = {r2, r3};
            for (int i2 = 0; i2 < 2; i2++) {
                dev.duo.workspaceprobe.b.R r4 = rArr[i2];
                if (!r4.b.isValid()) {
                    return f("侧栏图层已失效 " + r4.c);
                }
            }
            android.graphics.Point point = new android.graphics.Point();
            q0().getRealSize(point);
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putInt("width", point.x);
            bundle.putInt("height", point.y);
            bundle.putBoolean("editing", this.B6);
            synchronized (this.y6) {
                dev.duo.workspaceprobe.b.P p2 = this.z6;
                bundle.putInt("contentFlags", p2 == null ? 0 : p2.c);
            }
            float f7 = this.V6.e + 98.0f;
            dev.duo.workspaceprobe.b.R r5 = this.G5;
            float f8 = 158.0f;
            bundle.putFloatArray("coverGeometry", new float[]{1168.0f, 1712.0f, f7, (r5.h - 7) + (r5.g / 2.0f), this.N3[0] + 158.0f + 146.0f, java.lang.Math.min(this.V6.e, this.G5.e)});
            float f9 = 1175.0f;
            float f10 = this.V6.e + 1175.0f + U + 98.0f;
            dev.duo.workspaceprobe.b.R r6 = this.G5;
            float f11 = r6.h + a0 + (r6.g / 2.0f);
            float f12 = this.N3[2];
            float f13 = V;
            bundle.putFloatArray("innerGeometry", new float[]{2364.0f, 1672.0f, f10, f11, f12 + V + 146.0f, java.lang.Math.min(this.V6.e, this.G5.e) + 1175.0f + U});
            java.util.ArrayList<? extends android.os.Parcelable> arrayList = new java.util.ArrayList<>();
            bundle.putParcelableArrayList("layers", arrayList);
            try {
                dev.duo.workspaceprobe.b.R[] rArr2 = {this.V6, this.G5};
                int i3 = 0;
                while (i3 < 2) {
                    dev.duo.workspaceprobe.b.R r7 = rArr2[i3];
                    if (r7 != this.G5 || this.M3) {
                        android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) android.view.SurfaceControl.class.getDeclaredMethod("mirrorSurface", android.view.SurfaceControl.class).invoke(obj, r7.b);
                        android.os.Bundle bundle2 = new android.os.Bundle();
                        bundle2.putParcelable("mirror", surfaceControl);
                        arrayList.add(bundle2);
                        bundle2.putString("name", r7.c);
                        int i4 = r7 == this.V6 ? dev.duo.workspaceprobe.b.h0.D : r7.g;
                        f2 = f13;
                        f3 = f8;
                        f4 = f9;
                        z2 = z3;
                        try {
                            bundle2.putParcelable("frame", new android.graphics.Rect(java.lang.Math.round(c(r7)), java.lang.Math.round(d(r7)), java.lang.Math.round(c(r7)) + r7.f, java.lang.Math.round(d(r7)) + i4));
                            float c2 = c(r7);
                            float d2 = d(r7);
                            float[] fArr = new float[2];
                            fArr[z2 ? 1 : 0] = c2;
                            fArr[1] = d2;
                            bundle2.putFloatArray("position", fArr);
                            bundle2.putInt("width", r7.f);
                            bundle2.putInt("height", i4);
                            float f14 = r7.e;
                            if (r7 == this.V6) {
                                f5 = this.N3[z2 ? 1 : 0] + f3;
                            } else {
                                f5 = r7.h - 7;
                            }
                            float f15 = r7.f;
                            float f16 = i4;
                            float[] fArr2 = new float[4];
                            fArr2[z2 ? 1 : 0] = f14;
                            fArr2[1] = f5;
                            fArr2[2] = f15;
                            fArr2[3] = f16;
                            bundle2.putFloatArray("coverFrame", fArr2);
                            float f17 = r7.e + f4 + U;
                            if (r7 == this.V6) {
                                f6 = this.N3[2] + f2;
                            } else {
                                f6 = r7.h + a0;
                            }
                            float f18 = r7.f;
                            float[] fArr3 = new float[4];
                            fArr3[z2 ? 1 : 0] = f17;
                            fArr3[1] = f6;
                            fArr3[2] = f18;
                            fArr3[3] = f16;
                            bundle2.putFloatArray("innerFrame", fArr3);
                            bundle2.putInt("blur", r7.i);
                            bundle2.putFloat("corner", r7.j);
                            float f19 = 0.0f;
                            float x02 = (!this.F1 || this.B6 || v()) ? 0.0f : x0();
                            if (r7 != this.G5 || !this.O6) {
                                f19 = x02;
                            }
                            bundle2.putFloat("alpha", f19);
                            bundle2.putFloat("scale", r7 == this.G5 ? (f19 * 0.06f) + 0.94f : 1.0f);
                        } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e2) {
                            e = e2;
                            java.lang.Exception exc = e;
                            try {
                                a(bundle, z2);
                                throw exc;
                            } catch (java.lang.ReflectiveOperationException e3) {
                                exc.addSuppressed(e3);
                                throw exc;
                            }
                        }
                    } else {
                        z2 = z3;
                        f2 = f13;
                        f3 = f8;
                        f4 = f9;
                    }
                    i3++;
                    f13 = f2;
                    f8 = f3;
                    f9 = f4;
                    z3 = z2;
                    obj = null;
                }
                return bundle;
            } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e4) {
                e = e4;
                z2 = z3;
            }
        } else {
            return f("侧栏尚未建立");
        }
    }

    private final class X implements java.lang.Runnable {
        static final int l = 110;
        static final int m = 18;
        final android.widget.LinearLayout a;
        final android.widget.ScrollView b;
        final android.view.View c;
        final int d;
        final int e;
        final int f;
        final float g;
        final float h;
        float i;
        int j;

        X(android.widget.LinearLayout linearLayout, android.view.View view, int i, int i2, float f) {
            this.a = linearLayout;
            this.h = f;
            android.widget.ScrollView scrollView = (android.widget.ScrollView) linearLayout.getParent();
            this.b = scrollView;
            this.c = view;
            this.d = i;
            this.e = i2;
            this.f = scrollView.getScrollY();
            float f2 = dev.duo.workspaceprobe.b.this.c4;
            this.i = f2;
            this.g = f2;
            this.j = i;
        }

        private void b() {
            this.c.setTranslationY((((this.i - this.g) / this.h) + this.b.getScrollY()) - this.f);
            int a = dev.duo.hookprobe.J.a(((this.c.getTop() + this.c.getTranslationY()) + 48.0f) - this.a.getPaddingTop(), dev.duo.workspaceprobe.b.j0, this.e);
            if (a == this.j) {
                return;
            }
            this.j = a;
            int i = 0;
            while (i < this.e) {
                int i2 = this.d;
                if (i != i2) {
                    this.a.getChildAt(i).animate().translationY((i2 >= a || i <= i2 || i > a) ? (i2 <= a || i < a || i >= i2) ? 0 : dev.duo.workspaceprobe.b.j0 : -150).setDuration(160L).start();
                }
                i++;
            }
        }

        void a() {
            this.b.requestDisallowInterceptTouchEvent(true);
            this.c.animate().cancel();
            this.c.setTranslationZ(24.0f);
            this.c.animate().scaleX(1.12f).scaleY(1.12f).alpha(0.85f).setDuration(120L).start();
            this.b.postOnAnimation(this);
            android.util.Log.w("DuoRail", "Sidebar drag start " + ((java.lang.String) dev.duo.workspaceprobe.b.this.Q3.get(this.d)) + " at " + this.d);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (dev.duo.workspaceprobe.b.this.b4 != this) {
                return;
            }
            float top = ((this.c.getTop() + this.c.getTranslationY()) - this.b.getScrollY()) + 48.0f;
            int i = top < 110.0f ? -18 : top > ((float) (this.b.getHeight() + (-110))) ? m : 0;
            if (i != 0) {
                int scrollY = this.b.getScrollY();
                this.b.scrollBy(0, i);
                if (this.b.getScrollY() != scrollY) {
                    b();
                }
            }
            this.b.postOnAnimation(this);
        }

        void a(android.view.MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 2) {
                this.i = motionEvent.getRawY();
                b();
            } else if (actionMasked == 1) {
                a(true);
            } else if (actionMasked == 3) {
                a(false);
            }
        }

        private void a(boolean z) {
            dev.duo.workspaceprobe.b.this.b4 = null;
            this.b.removeCallbacks(this);
            android.widget.ScrollView scrollView = this.b;
            if (scrollView instanceof dev.duo.workspaceprobe.b.e0) {
                ((dev.duo.workspaceprobe.b.e0) scrollView).a();
            }
            java.util.List<java.lang.String> a = dev.duo.hookprobe.J.a((java.util.List<java.lang.String>) dev.duo.workspaceprobe.b.this.Q3, this.d, this.j);
            android.util.Log.w("DuoRail", "Sidebar drag end " + (z ? "drop " : "cancel ") + this.d + "->" + this.j);
            if (!z || this.c.getParent() != this.a || a.equals(dev.duo.workspaceprobe.b.this.Q3)) {
                dev.duo.workspaceprobe.b.this.p1();
            } else {
                dev.duo.workspaceprobe.b.this.B(2);
                dev.duo.workspaceprobe.b.this.c(a);
            }
        }
    }

    private void A(int i2) {
        java.lang.Object invoke;
        try {
            try {
                invoke = java.lang.Class.forName("android.hardware.input.InputManagerGlobal").getMethod("getInstance", null).invoke(null, null);
            } catch (java.lang.ClassNotFoundException e2) {
                invoke = android.hardware.input.InputManager.class.getMethod("getInstance", null).invoke(null, null);
            }
            java.lang.reflect.Method method = invoke.getClass().getMethod("injectInputEvent", android.view.InputEvent.class, java.lang.Integer.TYPE);
            long uptimeMillis = android.os.SystemClock.uptimeMillis();
            int i3 = 0;
            int[] iArr = {0, 1};
            int i4 = 0;
            while (i4 < 2) {
                int i5 = i3;
                method.invoke(invoke, new android.view.KeyEvent(uptimeMillis, android.os.SystemClock.uptimeMillis(), iArr[i4], i2, 0, 0, -1, 0, 72, 257), java.lang.Integer.valueOf(i5));
                i4++;
                i3 = i5;
            }
            android.util.Log.w("DuoRail", "Rail key " + android.view.KeyEvent.keyCodeToString(i2));
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "Rail key failed " + i2, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        if (!this.a5 || this.p4 == null) {
            return;
        }
        o2();
        if (K1() && this.s5 && this.t5) {
            if (this.z5 == null) {
                if ((!this.Z4 && !((android.os.PowerManager) this.p4.getSystemService(android.os.PowerManager.class)).isInteractive()) || this.u5 || this.w5 != null) {
                    return;
                }
                int i2 = this.l5;
                if (i2 != 1 && i2 != 2) {
                    return;
                }
                this.u5 = true;
                dev.duo.workspaceprobe.b.g0 g0Var = new dev.duo.workspaceprobe.b.g0();
                this.z5 = g0Var;
                this.D1.postDelayed(g0Var.f, 10000L);
                if (this.l5 == 2) {
                    w1();
                }
            }
            dev.duo.workspaceprobe.b.g0 g0Var2 = this.z5;
            if (g0Var2.d) {
                if (!I1() || (g0Var2.e && !J1())) {
                    o();
                    return;
                }
                return;
            }
            if (I1()) {
                a(g0Var2);
                return;
            }
            int i3 = this.l5;
            if (i3 == 2 || i3 == 4) {
                return;
            }
            o();
            return;
        }
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c0 extends android.view.View {
        private final android.graphics.Paint a;
        boolean b;
        boolean c;
        float d;
        private android.animation.ValueAnimator e;

        c0(android.content.Context context) {
            super(context);
            this.a = new android.graphics.Paint(1);
        }

        void a(boolean z) {
            this.c = z;
            android.animation.ValueAnimator valueAnimator = this.e;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            android.animation.ValueAnimator ofFloat = android.animation.ValueAnimator.ofFloat(this.d, z ? 1.0f : 0.0f);
            this.e = ofFloat;
            ofFloat.setDuration(200L);
            this.e.setInterpolator(dev.duo.workspaceprobe.b.M);
            this.e.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$c0$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator2) {
                    dev.duo.workspaceprobe.b.c0.this.a(valueAnimator2);
                }
            });
            this.e.start();
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            float width = getWidth();
            float height = getHeight();
            this.a.setStyle(android.graphics.Paint.Style.FILL);
            this.a.setColor(this.b ? 536870911 : 335544320);
            float f = width * 0.28f;
            canvas.drawRoundRect(0.0f, 0.0f, width, height, f, f, this.a);
            this.a.setColor(-7434605);
            float f2 = this.d;
            if (f2 < 1.0f) {
                this.a.setAlpha(java.lang.Math.round((1.0f - f2) * 255.0f));
                canvas.save();
                float f3 = width / 2.0f;
                float f4 = height / 2.0f;
                canvas.rotate(this.d * 90.0f, f3, f4);
                float f5 = 1.0f - (this.d * 0.3f);
                canvas.scale(f5, f5, f3, f4);
                float f6 = width * 0.29f;
                float f7 = width * 0.075f;
                float f8 = f6 * 2.0f;
                float f9 = ((width - f8) - f7) / 2.0f;
                float f10 = ((height - f8) - f7) / 2.0f;
                for (int i = 0; i < 4; i++) {
                    float f11 = f6 + f7;
                    float f12 = f9 + ((i % 2) * f11);
                    float f13 = f10 + ((i / 2) * f11);
                    float f14 = f6 * 0.3f;
                    canvas.drawRoundRect(f12, f13, f12 + f6, f13 + f6, f14, f14, this.a);
                }
                canvas.restore();
            }
            if (this.d <= 0.0f) {
                return;
            }
            this.a.setColor(-7434605);
            this.a.setAlpha(java.lang.Math.round(this.d * 255.0f));
            canvas.save();
            canvas.translate((-width) * 0.12f * (1.0f - this.d), 0.0f);
            this.a.setStyle(android.graphics.Paint.Style.STROKE);
            this.a.setStrokeWidth(width * 0.055f);
            this.a.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            this.a.setStrokeJoin(android.graphics.Paint.Join.ROUND);
            android.graphics.Path path = new android.graphics.Path();
            float f15 = width * 0.43f;
            path.moveTo(f15, height * 0.3f);
            path.lineTo(0.62f * width, 0.5f * height);
            path.lineTo(f15, height * 0.7f);
            canvas.drawPath(path, this.a);
            canvas.restore();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(android.animation.ValueAnimator valueAnimator) {
            this.d = ((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class i0 {
        boolean a;
        boolean b;
        long c;
        final java.util.Map<java.lang.String, java.lang.Integer> d;
        final java.util.Map<java.lang.String, java.lang.Integer> e;
        final java.util.Set<java.lang.String> f;

        private i0() {
            this.d = new java.util.HashMap();
            this.e = new java.util.HashMap();
            this.f = new java.util.HashSet();
        }

        /* synthetic */ i0(dev.duo.workspaceprobe.b.C0049k c0049k) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object c(java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.reflect.Method method, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        a(chain.getThisObject(), chain.getArg(0), chain.getArg(1), field, field2, method);
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object f(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) chain.getArg(0);
        if (runningTaskInfo != null) {
            g(runningTaskInfo.taskId);
        }
        if (runningTaskInfo != null) {
            final int i2 = runningTaskInfo.taskId;
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda133
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.l(i2);
                }
            });
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(final java.lang.String str) {
        long a2 = this.M0.a();
        dev.duo.workspaceprobe.a.b a3 = a(str, "app notified");
        if (a3 == null) {
            return;
        }
        this.D1.post(new dev.duo.workspaceprobe.b$$ExternalSyntheticLambda92(this));
        dev.duo.workspaceprobe.a.C0008a a4 = this.M0.a(str, a3, a2);
        if (a4 == null) {
            return;
        }
        if (a4.a(a3)) {
            b(java.util.Collections.singleton(str));
        }
        if (a4.b) {
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda152
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.o(str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(java.lang.String str) {
        android.content.ComponentName componentName;
        for (android.app.ActivityManager.RunningTaskInfo runningTaskInfo : this.J0.values()) {
            android.content.ComponentName componentName2 = runningTaskInfo.topActivity;
            if ((componentName2 != null && str.equals(componentName2.getPackageName())) || ((componentName = runningTaskInfo.baseActivity) != null && str.equals(componentName.getPackageName()))) {
                a(runningTaskInfo.taskId, (android.view.SurfaceControl.Transaction) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        dev.duo.workspaceprobe.b.b0 b0Var = this.a4;
        this.a4 = null;
        if (b0Var != null) {
            b0Var.b();
        }
        dev.duo.workspaceprobe.b.d0 d0Var = this.Z3;
        this.Z3 = null;
        if (d0Var != null) {
            d0Var.a();
            n(false);
        }
        m(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(java.lang.String str) {
        if (this.Q3.contains(str)) {
            return;
        }
        if (this.Q3.size() >= 12) {
            android.widget.Toast.makeText(this.p4, "最多固定 12 个应用", 0).show();
            return;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(this.Q3);
        arrayList.add(str);
        c((java.util.List<java.lang.String>) arrayList);
    }

    private android.widget.FrameLayout w(int i2) {
        android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(this.p4);
        frameLayout.setBackground(new dev.duo.workspaceprobe.b.N(i2 == 0 ? q0 : 60.0f, i2));
        return frameLayout;
    }

    public float[] D() {
        if (this.p4 == null || this.V6 == null || this.G5 == null) {
            return null;
        }
        ((android.hardware.display.DisplayManager) this.p4.getSystemService(android.hardware.display.DisplayManager.class)).getDisplay(0).getRealSize(new android.graphics.Point());
        return new float[]{r0.x, r0.y, c(this.V6) + 98.0f, ((this.p3 && this.h4 == 0 && !this.i4) ? this.G5.h : d(this.G5)) + (this.G5.g / 2.0f), (this.p3 ? this.u3 : d(this.V6)) + 146.0f, java.lang.Math.min(c(this.V6), c(this.G5))};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object c(java.lang.reflect.Field field, java.lang.reflect.Field field2, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        int i2 = field.getInt(chain.getArg(0));
        java.lang.Integer num = this.u2.get();
        this.u2.set(java.lang.Integer.valueOf(i2));
        try {
            java.lang.Object proceed = chain.proceed();
            this.u2.set(num);
            this.q2 = (java.util.Map) field2.get(chain.getThisObject());
            if (this.U0 == null && android.os.Looper.myLooper() != null) {
                this.U0 = new android.os.Handler(android.os.Looper.myLooper());
            }
            if (this.s2.putIfAbsent(java.lang.Integer.valueOf(i2), 1) == null) {
                b(i2, "create");
            }
            try {
                java.lang.Object obj = this.q2.get(java.lang.Integer.valueOf(i2));
                dev.duo.workspaceprobe.b.L l2 = this.U5.get(java.lang.Integer.valueOf(i2));
                if (l2 == null || l2.a != obj) {
                    b(i2, (android.view.SurfaceControl.Transaction) chain.getArg(1));
                    this.U5.put(java.lang.Integer.valueOf(i2), new dev.duo.workspaceprobe.b.L(obj, (android.view.SurfaceControl) chain.getArg(2)));
                }
                a(i2, (android.view.SurfaceControl.Transaction) chain.getArg(1));
                return proceed;
            } catch (java.lang.Throwable th) {
                android.util.Log.w("DuoRail", "App rail decor attach skipped task=" + i2, th);
                return proceed;
            }
        } catch (java.lang.Throwable th2) {
            this.u2.set(num);
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final java.lang.String str, final java.lang.String str2) {
        if (str == null || !this.P0.add(str)) {
            return;
        }
        java.lang.Long l2 = this.Q0.get(str);
        if (l2 != null && android.os.SystemClock.uptimeMillis() - l2.longValue() < 2000) {
            this.P0.remove(str);
            return;
        }
        try {
            this.N0.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda60
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.b(str, str2);
                }
            });
        } catch (java.util.concurrent.RejectedExecutionException e2) {
            this.P0.remove(str);
        }
    }

    public android.hardware.display.DisplayManager C() {
        return (android.hardware.display.DisplayManager) this.p4.getSystemService(android.hardware.display.DisplayManager.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Thread b(java.lang.Runnable runnable) {
        java.lang.Thread thread = new java.lang.Thread(runnable, "DuoConfigPrefetch");
        thread.setDaemon(true);
        return thread;
    }

    private void m(java.lang.ClassLoader classLoader) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.wm.shell.multitasking.common.MultiTaskingStateManager", false, classLoader);
            java.lang.Class cls2 = java.lang.Integer.TYPE;
            java.lang.Class cls3 = java.lang.Boolean.TYPE;
            hook(cls.getDeclaredMethod("onSoScStateChanged", android.graphics.Rect.class, android.graphics.Rect.class, android.graphics.Rect.class, cls2, android.app.ActivityManager.RunningTaskInfo.class, android.app.ActivityManager.RunningTaskInfo.class, cls3, cls2, cls2)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda0
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object n2;
                    n2 = dev.duo.workspaceprobe.b.this.n(chain);
                    return n2;
                }
            });
            hook(cls.getDeclaredMethod("onPreSoScStateChanged", android.graphics.Rect.class, android.graphics.Rect.class, android.graphics.Rect.class, cls2, cls3, cls3, cls2, cls2)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda1
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object o2;
                    o2 = dev.duo.workspaceprobe.b.this.o(chain);
                    return o2;
                }
            });
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e("DuoSplitHome", "Native split state unavailable", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object b(java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.reflect.Method method, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object[] array = chain.getArgs().toArray();
        if (a(array[0], field)) {
            array[2] = java.lang.Boolean.FALSE;
        }
        java.lang.Object proceed = chain.proceed(array);
        a(chain.getThisObject(), array[0], array[1], field, field2, method);
        return proceed;
    }

    private void f(final int i2) {
        (this.U0 != null ? this.U0 : this.D1).post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda121
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.k(i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(android.view.View view) {
        C1();
    }

    private boolean x(int i2) {
        return java.lang.Boolean.TRUE.equals(this.d6.get(java.lang.Integer.valueOf(i2))) && j(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class W implements java.lang.Runnable {
        static final int v = 24;
        static final int w = 110;
        static final int x = 18;
        static final int y = 128;
        final dev.duo.workspaceprobe.b.d0 a;
        final android.view.View b;
        final android.view.View c;
        final java.lang.String d;
        private final android.graphics.drawable.Drawable e;
        private final android.view.WindowManager f;
        private final float g;
        private final float h;
        private final float i;
        private final int j;
        private float l;
        private float m;
        private android.widget.FrameLayout n;
        private android.widget.ImageView o;
        private boolean p;
        private boolean q;
        private dev.duo.workspaceprobe.b.K r;
        private android.widget.ScrollView s;
        private int k = -1;
        private int t = -1;

        W(dev.duo.workspaceprobe.b.d0 d0Var, android.view.View view, android.view.View view2, java.lang.String str, android.graphics.drawable.Drawable drawable) {
            this.f = (android.view.WindowManager) dev.duo.workspaceprobe.b.this.p4.getSystemService(android.view.WindowManager.class);
            this.a = d0Var;
            this.b = view;
            this.c = view2;
            this.d = str;
            android.graphics.drawable.Drawable.ConstantState constantState = drawable.getConstantState();
            this.e = constantState != null ? constantState.newDrawable() : drawable;
            float f = d0Var.C;
            this.l = f;
            this.g = f;
            float f2 = d0Var.D;
            this.m = f2;
            this.h = f2;
            this.i = view2.getAlpha();
            this.j = d0Var.E.indexOf(view);
        }

        private dev.duo.workspaceprobe.b.K b() {
            android.widget.FrameLayout frameLayout;
            dev.duo.workspaceprobe.b.K k = this.a.j;
            if (k != null && k.a != null) {
                dev.duo.workspaceprobe.b.K s2 = dev.duo.workspaceprobe.b.this.s2();
                if (s2 == this.a.j && s2.j != null) {
                    android.graphics.Rect k2 = s2.a.k();
                    if (s2.a.a(this.l)) {
                        float f = this.m;
                        if (f >= k2.top && f <= k2.bottom) {
                            return s2;
                        }
                    }
                }
                return null;
            }
            dev.duo.workspaceprobe.b.K k3 = (dev.duo.workspaceprobe.b.K) dev.duo.workspaceprobe.b.this.T5.get(java.lang.Integer.valueOf(dev.duo.workspaceprobe.b.this.J1));
            int[] iArr = (int[]) dev.duo.workspaceprobe.b.this.W5.get(java.lang.Integer.valueOf(dev.duo.workspaceprobe.b.this.J1));
            if (k3 != null && iArr != null && (frameLayout = k3.j) != null && frameLayout.getVisibility() == 0) {
                dev.duo.workspaceprobe.b bVar = dev.duo.workspaceprobe.b.this;
                if (bVar.d(bVar.J1)) {
                    float H1 = iArr[1] + dev.duo.workspaceprobe.b.this.H1();
                    if (this.l >= iArr[0]) {
                        float f2 = this.m;
                        if (f2 >= H1 && f2 <= H1 + dev.duo.workspaceprobe.b.this.E1()) {
                            return k3;
                        }
                    }
                }
            }
            return null;
        }

        private void d() {
            java.util.ArrayList arrayList = new java.util.ArrayList(this.a.z);
            arrayList.add(this.k, (java.lang.Object[]) arrayList.remove(this.j));
            this.a.z = arrayList;
            java.util.ArrayList arrayList2 = new java.util.ArrayList();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                java.lang.Object obj = arrayList.get(i);
                i++;
                arrayList2.add((java.lang.String) ((java.lang.Object[]) obj)[0]);
            }
            android.util.Log.w("DuoRail", "Sidebar panel move " + this.d + " " + this.j + "->" + this.k);
            dev.duo.workspaceprobe.b.this.B(2);
            dev.duo.workspaceprobe.b bVar = dev.duo.workspaceprobe.b.this;
            bVar.b(dev.duo.hookprobe.J.a(bVar.S3, arrayList2, arrayList2, dev.duo.hookprobe.J.m));
            this.a.d();
            android.view.View view = this.k < this.a.E.size() ? this.a.E.get(this.k) : null;
            final android.view.View childAt = view != null ? ((android.view.ViewGroup) ((android.view.ViewGroup) view).getChildAt(0)).getChildAt(0) : null;
            if (childAt == null) {
                j();
                return;
            }
            final float alpha = childAt.getAlpha();
            childAt.setAlpha(0.0f);
            this.a.w.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$W$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.W.this.b(childAt, alpha);
                }
            });
        }

        private void e() {
            this.o.setX(this.l - 64.0f);
            this.o.setY(this.m - 64.0f);
            dev.duo.workspaceprobe.b.K b = b();
            int a = b == null ? -1 : a(b);
            dev.duo.workspaceprobe.b.K k = this.r;
            if (b != k || a != this.t) {
                if (k != null && k != b) {
                    a(k, -1);
                }
                this.r = b;
                this.t = a;
                if (b != null) {
                    a(b, a);
                }
            }
            int i = b == null ? i() : -1;
            if (i != this.k) {
                this.k = i;
                a(i);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g() {
            this.c.setAlpha(this.i);
            j();
        }

        private int[] h() {
            android.view.View view = (android.view.View) this.a.w.getParent();
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            return new int[]{iArr[0], iArr[1], view.getWidth(), view.getHeight()};
        }

        private int i() {
            if (this.j >= 0 && !this.a.F && this.b.isAttachedToWindow() && this.a.E.indexOf(this.b) == this.j) {
                int[] h = h();
                float f = this.l;
                if (f >= h[0] && f <= r4 + h[2]) {
                    float f2 = this.m;
                    if (f2 >= h[1] && f2 <= r6 + h[3]) {
                        this.a.w.getLocationOnScreen(new int[2]);
                        return dev.duo.hookprobe.J.a(this.l - r0[0], this.m - r0[1], this.a.w.getWidth() / 3.0f, ((android.view.View) this.b.getParent()).getHeight(), 3, this.a.E.size());
                    }
                }
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j() {
            android.widget.FrameLayout frameLayout = this.n;
            if (frameLayout == null) {
                return;
            }
            try {
                this.f.removeViewImmediate(frameLayout);
            } catch (java.lang.RuntimeException e) {
                android.util.Log.w("DuoRail", "Sidebar carry remove failed", e);
            }
            this.n = null;
        }

        void a(android.view.MotionEvent motionEvent) {
            this.l = motionEvent.getRawX();
            this.m = motionEvent.getRawY();
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 2) {
                if (this.p) {
                    e();
                    return;
                } else {
                    if (java.lang.Math.hypot(this.l - this.g, this.m - this.h) > 24.0d) {
                        dev.duo.workspaceprobe.b.this.p();
                        dev.duo.workspaceprobe.b.this.B(2);
                        a();
                        return;
                    }
                    return;
                }
            }
            if (actionMasked == 1) {
                if (this.p) {
                    a(true);
                    return;
                } else {
                    this.a.B = null;
                    return;
                }
            }
            if (actionMasked == 3) {
                if (this.p) {
                    a(false);
                } else {
                    this.a.B = null;
                }
            }
        }

        void c() {
            if (this.q) {
                return;
            }
            this.q = true;
            this.p = false;
            this.a.B = null;
            this.b.removeCallbacks(this);
            dev.duo.workspaceprobe.b.K k = this.r;
            if (k != null) {
                a(k, -1);
            }
            j();
        }

        void f() {
            this.b.getParent().requestDisallowInterceptTouchEvent(true);
            ((android.view.View) this.c.getParent()).animate().scaleX(1.0f).scaleY(1.0f).setDuration(180L).start();
            dev.duo.workspaceprobe.b.this.B(5);
            if (dev.duo.workspaceprobe.b.this.Y3) {
                a();
                return;
            }
            int[] iArr = new int[2];
            this.c.getLocationOnScreen(iArr);
            int width = iArr[0] + this.c.getWidth() + 444;
            dev.duo.workspaceprobe.b.d0 d0Var = this.a;
            boolean z = width <= d0Var.l + (-24);
            int width2 = z ? iArr[0] + this.c.getWidth() + 24 : java.lang.Math.max(d0Var.k + 24, iArr[0] - 444);
            dev.duo.workspaceprobe.b.this.p();
            dev.duo.workspaceprobe.b bVar = dev.duo.workspaceprobe.b.this;
            bVar.a4 = bVar.new b0(this.d, bVar.Q3.contains(this.d), width2, iArr[1] + (this.c.getHeight() / 2), z ? 0.0f : 420, true, this.a.m);
            dev.duo.workspaceprobe.b.this.a4.d();
            android.util.Log.w("DuoRail", "Sidebar panel hold " + this.d);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.q || !this.p) {
                return;
            }
            dev.duo.workspaceprobe.b.K k = this.r;
            int i = x;
            if (k != null) {
                android.widget.ScrollView scrollView = (android.widget.ScrollView) k.k.getParent();
                float a = dev.duo.workspaceprobe.b.this.a(this.r, this.m);
                if (a < 110.0f) {
                    i = -18;
                } else if (a <= scrollView.getHeight() - 110) {
                    i = 0;
                }
                int scrollY = scrollView.getScrollY();
                if (i != 0) {
                    scrollView.scrollBy(0, i);
                }
                if (scrollView.getScrollY() != scrollY) {
                    this.s = scrollView;
                    this.t = -2;
                    e();
                }
            } else if (this.k >= 0) {
                android.widget.ScrollView scrollView2 = (android.widget.ScrollView) this.a.w.getParent();
                float f = this.m - h()[1];
                if (f < 110.0f) {
                    i = -18;
                } else if (f <= scrollView2.getHeight() - 110) {
                    i = 0;
                }
                int scrollY2 = scrollView2.getScrollY();
                if (i != 0) {
                    scrollView2.scrollBy(0, i);
                }
                if (scrollView2.getScrollY() != scrollY2) {
                    this.k = -2;
                    e();
                }
            }
            this.b.postOnAnimation(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(final android.view.View view, final float f) {
            view.getLocationOnScreen(new int[2]);
            this.o.animate().x(r0[0]).y(r0[1]).scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(200L).setInterpolator(dev.duo.workspaceprobe.b.M).withEndAction(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$W$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.W.this.a(view, f);
                }
            }).start();
        }

        private void a() {
            this.n = new android.widget.FrameLayout(dev.duo.workspaceprobe.b.this.p4);
            android.widget.ImageView imageView = new android.widget.ImageView(dev.duo.workspaceprobe.b.this.p4);
            this.o = imageView;
            imageView.setImageDrawable(this.e);
            this.n.addView(this.o, new android.widget.FrameLayout.LayoutParams(y, y));
            android.view.WindowManager.LayoutParams layoutParams = new android.view.WindowManager.LayoutParams(-1, -1, 2017, 16777496, -3);
            layoutParams.gravity = 51;
            layoutParams.layoutInDisplayCutoutMode = 3;
            layoutParams.setFitInsetsTypes(0);
            layoutParams.setTitle("DuoSidebarCarry");
            try {
                this.f.addView(this.n, layoutParams);
                this.p = true;
                this.c.setAlpha(0.3f);
                this.o.setScaleX(1.12f);
                this.o.setScaleY(1.12f);
                this.o.setAlpha(0.92f);
                e();
                this.b.postOnAnimation(this);
                android.util.Log.w("DuoRail", "Sidebar carry start " + this.d);
            } catch (java.lang.RuntimeException e) {
                android.util.Log.w("DuoRail", "Sidebar carry unavailable", e);
                this.n = null;
                this.a.B = null;
            }
        }

        private int a(dev.duo.workspaceprobe.b.K k) {
            java.util.ArrayList arrayList = new java.util.ArrayList(dev.duo.workspaceprobe.b.this.Q3);
            if (arrayList.remove(this.d) || arrayList.size() < 12) {
                return dev.duo.hookprobe.J.a((dev.duo.workspaceprobe.b.this.a(k, this.m) - 20.0f) + ((android.view.View) k.k.getParent()).getScrollY() + 75.0f, dev.duo.workspaceprobe.b.j0, arrayList.size() + 1);
            }
            return -1;
        }

        private void a(int i) {
            int i2 = this.j;
            if (i2 < 0 || i2 >= this.a.E.size() || this.a.E.get(this.j) != this.b) {
                return;
            }
            float width = this.a.w.getWidth() / 3;
            float height = ((android.view.View) this.b.getParent()).getHeight();
            int i3 = 0;
            while (i3 < this.a.E.size()) {
                android.view.View view = this.a.E.get(i3);
                int i4 = this.j;
                if (i3 == i4) {
                    view.animate().alpha(i >= 0 ? 0.0f : 1.0f).setDuration(120L).start();
                } else {
                    int i5 = (i < 0 || i4 >= i || i3 <= i4 || i3 > i) ? (i < 0 || i >= i4 || i3 < i || i3 >= i4) ? i3 : i3 + 1 : i3 - 1;
                    view.animate().translationX(((i5 % 3) - (i3 % 3)) * width).translationY(((i5 / 3) - (i3 / 3)) * height).setDuration(180L).setInterpolator(dev.duo.workspaceprobe.b.M).start();
                }
                i3++;
            }
        }

        private void a(dev.duo.workspaceprobe.b.K k, int i) {
            int i2;
            int indexOf = i < 0 ? -1 : dev.duo.workspaceprobe.b.this.Q3.indexOf(this.d);
            int i3 = 0;
            while (i3 < k.k.getChildCount()) {
                if (i >= 0) {
                    i2 = (indexOf < 0 || i3 <= indexOf) ? i3 : i3 - 1;
                    if (i3 != indexOf && i2 >= i) {
                        i2++;
                    }
                } else {
                    i2 = i3;
                }
                k.k.getChildAt(i3).animate().translationY(i3 == indexOf ? 0.0f : (i2 - i3) * 150.0f).alpha(i3 == indexOf ? 0.3f : 1.0f).setDuration(160L).setInterpolator(dev.duo.workspaceprobe.b.M).start();
                i3++;
            }
        }

        private void a(boolean z) {
            int i;
            dev.duo.workspaceprobe.b.K k;
            this.q = true;
            this.p = false;
            this.a.B = null;
            this.b.removeCallbacks(this);
            dev.duo.workspaceprobe.b.K k2 = this.r;
            if (k2 != null && (k2.k.getParent() instanceof dev.duo.workspaceprobe.b.e0)) {
                ((dev.duo.workspaceprobe.b.e0) this.r.k.getParent()).a();
            }
            android.widget.ScrollView scrollView = this.s;
            if ((scrollView instanceof dev.duo.workspaceprobe.b.e0) && ((k = this.r) == null || scrollView != k.k.getParent())) {
                ((dev.duo.workspaceprobe.b.e0) this.s).a();
            }
            if (z && this.r != null && this.t >= 0) {
                java.util.ArrayList arrayList = new java.util.ArrayList(dev.duo.workspaceprobe.b.this.Q3);
                arrayList.remove(this.d);
                arrayList.add(java.lang.Math.min(this.t, arrayList.size()), this.d);
                android.util.Log.w("DuoRail", "Sidebar carry drop " + this.d + " at " + this.t);
                dev.duo.workspaceprobe.b.this.B(2);
                this.o.animate().scaleX(0.9f).scaleY(0.9f).alpha(0.0f).setDuration(160L).withEndAction(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$W$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.W.this.j();
                    }
                }).start();
                this.c.setAlpha(this.i);
                if (arrayList.equals(dev.duo.workspaceprobe.b.this.Q3)) {
                    dev.duo.workspaceprobe.b.this.p1();
                    return;
                } else {
                    dev.duo.workspaceprobe.b.this.c((java.util.List<java.lang.String>) arrayList);
                    return;
                }
            }
            if (z && (i = this.k) >= 0 && i != this.j && this.a.E.indexOf(this.b) == this.j) {
                d();
                return;
            }
            if (z && this.r != null) {
                android.widget.Toast.makeText(dev.duo.workspaceprobe.b.this.p4, "最多固定 12 个应用", 0).show();
            }
            dev.duo.workspaceprobe.b.K k3 = this.r;
            if (k3 != null) {
                a(k3, -1);
            }
            if (this.k >= 0) {
                a(-1);
            }
            android.util.Log.w("DuoRail", "Sidebar carry " + (z ? "back " : "cancel ") + this.d);
            if (!this.c.isAttachedToWindow()) {
                this.o.animate().alpha(0.0f).setDuration(160L).withEndAction(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$W$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.W.this.j();
                    }
                }).start();
                return;
            }
            this.c.getLocationOnScreen(new int[2]);
            this.o.animate().x(r10[0]).y(r10[1]).scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(220L).setInterpolator(dev.duo.workspaceprobe.b.M).withEndAction(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$W$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.W.this.g();
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(android.view.View view, float f) {
            view.setAlpha(f);
            j();
        }
    }

    private java.util.List<java.lang.String> E(java.lang.String str) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.String str2 : dev.duo.hookprobe.J.f(str)) {
            if (D(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    private void g(final int i2) {
        this.b6.remove(java.lang.Integer.valueOf(i2));
        this.A2.remove(java.lang.Integer.valueOf(i2));
        this.o2.remove(java.lang.Integer.valueOf(i2));
        this.d6.remove(java.lang.Integer.valueOf(i2));
        this.W0.remove(java.lang.Integer.valueOf(i2));
        this.t2.remove(java.lang.Integer.valueOf(i2));
        this.V5.remove(java.lang.Integer.valueOf(i2));
        this.L0.remove(java.lang.Integer.valueOf(i2));
        this.J0.remove(java.lang.Integer.valueOf(i2));
        this.K0.add(java.lang.Integer.valueOf(i2));
        if (this.K0.size() > 256) {
            this.K0.removeIf(new java.util.function.Predicate() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda66
                @Override // java.util.function.Predicate
                public final boolean test(java.lang.Object obj) {
                    boolean a2;
                    a2 = dev.duo.workspaceprobe.b.a(i2, (java.lang.Integer) obj);
                    return a2;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(final int i2) {
        int i3;
        android.animation.ValueAnimator remove = this.p2.remove(java.lang.Integer.valueOf(i2));
        if (remove != null) {
            remove.cancel();
        }
        java.lang.Integer num = this.o2.get(java.lang.Integer.valueOf(i2));
        int u2 = u(i2);
        if (num == null) {
            i3 = i2;
        } else if (num.intValue() == u2) {
            i3 = i2;
        } else {
            if (j(i2)) {
                final java.util.List<android.view.SurfaceControl> v2 = v(i2);
                final dev.duo.workspaceprobe.b.K k2 = this.T5.get(java.lang.Integer.valueOf(i2));
                android.animation.ValueAnimator ofArgb = android.animation.ValueAnimator.ofArgb(num.intValue(), u2);
                ofArgb.setDuration(300L);
                ofArgb.setInterpolator(new android.view.animation.DecelerateInterpolator());
                final long[] jArr = {-33};
                ofArgb.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda208
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
                        dev.duo.workspaceprobe.b.this.a(jArr, i2, v2, k2, valueAnimator);
                    }
                });
                ofArgb.addListener(new dev.duo.workspaceprobe.b.C0041c(i2, ofArgb));
                this.p2.put(java.lang.Integer.valueOf(i2), ofArgb);
                ofArgb.start();
                return;
            }
            i3 = i2;
        }
        z(i3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private java.lang.Boolean x(java.lang.String str) throws java.lang.ReflectiveOperationException, android.provider.Settings.SettingNotFoundException {
        char c2;
        android.content.ContentResolver contentResolver = this.p4.getContentResolver();
        str.getClass();
        switch (str.hashCode()) {
            case -1290959678:
                if (str.equals("eyecare")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1135252444:
                if (str.equals("keepon")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -930895139:
                if (str.equals("ringer")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -677011630:
                if (str.equals("airplane")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 3075958:
                if (str.equals("dark")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 44649833:
                if (str.equals("autobright")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 110547964:
                if (str.equals("torch")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 846086146:
                if (str.equals("powersave")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case 1099603663:
                if (str.equals("hotspot")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case 1901043637:
                if (str.equals("location")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case 1968882350:
                if (str.equals("bluetooth")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                return java.lang.Boolean.valueOf(android.provider.Settings.System.getInt(contentResolver, "screen_paper_mode_enabled") != 0);
            case 1:
                if (android.provider.Settings.System.getInt(contentResolver, "screen_off_timeout") == G0 && a((java.lang.Integer) null) > 0) {
                    r5 = true;
                }
                return java.lang.Boolean.valueOf(r5);
            case 2:
                return java.lang.Boolean.valueOf(((android.media.AudioManager) this.p4.getSystemService(android.media.AudioManager.class)).getRingerMode() != 2);
            case 3:
                return java.lang.Boolean.valueOf(android.provider.Settings.Global.getInt(contentResolver, "airplane_mode_on") != 0);
            case 4:
                return java.lang.Boolean.valueOf(android.provider.Settings.System.getInt(contentResolver, "accelerometer_rotation") == 0);
            case 5:
                return java.lang.Boolean.valueOf(b(this.p4));
            case 6:
                return java.lang.Boolean.valueOf(android.provider.Settings.System.getInt(contentResolver, "screen_brightness_mode") == 1);
            case 7:
                if (C0 == null) {
                    return null;
                }
                return this.g7.get(C0);
            case dev.duo.taskcore.h.k /* 8 */:
                return java.lang.Boolean.valueOf(((android.os.PowerManager) this.p4.getSystemService(android.os.PowerManager.class)).isPowerSaveMode());
            case dev.duo.taskcore.h.l /* 9 */:
                int intValue = ((java.lang.Integer) android.net.wifi.WifiManager.class.getMethod("getWifiApState", null).invoke(this.p4.getSystemService(android.net.wifi.WifiManager.class), null)).intValue();
                if (intValue == F0) {
                    return java.lang.Boolean.TRUE;
                }
                if (intValue == 11) {
                    return java.lang.Boolean.FALSE;
                }
                return null;
            case '\n':
                return java.lang.Boolean.valueOf(((android.location.LocationManager) this.p4.getSystemService(android.location.LocationManager.class)).isLocationEnabled());
            case dev.duo.taskcore.h.n /* 11 */:
                android.bluetooth.BluetoothAdapter defaultAdapter = android.bluetooth.BluetoothAdapter.getDefaultAdapter();
                if (defaultAdapter == null) {
                    return null;
                }
                int state = defaultAdapter.getState();
                if (state == 12) {
                    return java.lang.Boolean.TRUE;
                }
                if (state == 10) {
                    return java.lang.Boolean.FALSE;
                }
                return null;
            default:
                throw new java.lang.IllegalArgumentException(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(android.view.View view) {
        w();
        a(true, (android.graphics.Rect) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(final int i2) {
        android.os.Bundle call;
        final java.lang.Boolean bool = null;
        try {
            call = this.p4.getContentResolver().call(android.net.Uri.parse("content://dev.duo.hookprobe.config"), "standbyClock", (java.lang.String) null, (android.os.Bundle) null);
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.e("DuoStandby", "Clock switch read failed", e2);
        }
        if (call != null && call.containsKey("on")) {
            bool = java.lang.Boolean.valueOf(call.getBoolean("on"));
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda125
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(i2, bool);
                }
            });
        }
        android.util.Log.e("DuoStandby", "Clock switch read failed: " + (call == null ? "no response" : call.getString("error")));
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda125
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(i2, bool);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(boolean z2) {
        if (this.L3 == z2) {
            return;
        }
        this.L3 = z2;
        j2();
        R1();
        java.util.ArrayList arrayList = new java.util.ArrayList(this.T5.values());
        synchronized (this.S5) {
            arrayList.addAll(this.S5);
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            java.lang.Object obj = arrayList.get(i2);
            i2++;
            c(((dev.duo.workspaceprobe.b.K) obj).r);
        }
    }

    void B(int i2) {
        android.os.Vibrator vibrator;
        try {
            if (android.provider.Settings.System.getInt(this.p4.getContentResolver(), "haptic_feedback_enabled", 1) != 0 && (vibrator = (android.os.Vibrator) this.p4.getSystemService(android.os.Vibrator.class)) != null && vibrator.hasVibrator()) {
                vibrator.vibrate(android.os.VibrationEffect.createPredefined(i2), android.os.VibrationAttributes.createForUsage(18));
            }
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.w("DuoRail", "Sidebar haptic failed", e2);
        }
    }

    public boolean E() {
        return this.p3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object b(java.lang.reflect.Field field, java.lang.reflect.Field field2, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        if (field.getInt(chain.getArg(0)) == 0) {
            android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) chain.getArg(1);
            this.H1 = field2.get(chain.getArg(0));
            this.G1 = surfaceControl;
            android.util.Log.w("DuoRail", "Display area appeared " + surfaceControl);
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda151
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.Q();
                }
            });
        }
        return proceed;
    }

    private void p(java.lang.ClassLoader classLoader) {
        java.lang.String str;
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.wm.shell.compatui.letterbox.LetterboxControllerStrategy", false, classLoader);
            java.lang.Class<?> cls2 = java.lang.Class.forName("com.android.wm.shell.compatui.letterbox.lifecycle.LetterboxLifecycleEvent", false, classLoader);
            java.lang.Class<?> cls3 = java.lang.Class.forName("com.android.wm.shell.compatui.letterbox.LetterboxControllerStrategy$LetterboxMode", false, classLoader);
            java.lang.Class<?> cls4 = java.lang.Class.forName("com.android.wm.shell.compatui.letterbox.MultiSurfaceLetterboxController", false, classLoader);
            java.lang.Class<?> cls5 = java.lang.Class.forName("com.android.wm.shell.compatui.letterbox.LetterboxSurfaces", false, classLoader);
            java.lang.Class<?> cls6 = java.lang.Class.forName("com.android.wm.shell.compatui.letterbox.LetterboxKey", false, classLoader);
            java.lang.Class<?> cls7 = java.lang.Class.forName("android.window.WindowContainerToken", false, classLoader);
            final java.lang.reflect.Field declaredField = cls.getDeclaredField("currentMode");
            final java.lang.reflect.Field declaredField2 = cls2.getDeclaredField("taskId");
            final java.lang.reflect.Field declaredField3 = cls2.getDeclaredField("useBlurWallpaper");
            final java.lang.reflect.Field declaredField4 = cls2.getDeclaredField("isBubble");
            final java.lang.reflect.Field declaredField5 = cls2.getDeclaredField("taskBounds");
            final java.lang.reflect.Field declaredField6 = cls6.getDeclaredField("taskId");
            final java.lang.reflect.Field declaredField7 = cls4.getDeclaredField("letterboxMap");
            java.lang.reflect.Field[] fieldArr = {cls5.getDeclaredField("leftSurface"), cls5.getDeclaredField("topSurface"), cls5.getDeclaredField("rightSurface"), cls5.getDeclaredField("bottomSurface")};
            java.lang.reflect.Field[] fieldArr2 = {declaredField, declaredField2, declaredField3, declaredField4, declaredField5, declaredField6, declaredField7};
            for (int i2 = 0; i2 < 7; i2++) {
                fieldArr2[i2].setAccessible(true);
            }
            for (int i3 = 0; i3 < 4; i3++) {
                fieldArr[i3].setAccessible(true);
            }
            final java.lang.Enum valueOf = java.lang.Enum.valueOf(cls3, "MULTIPLE_SURFACES");
            java.lang.Class cls8 = java.lang.Boolean.TYPE;
            java.lang.reflect.Method declaredMethod = cls4.getDeclaredMethod("createLetterboxSurface", cls6, android.view.SurfaceControl.Transaction.class, android.view.SurfaceControl.class, cls7, cls8, android.graphics.Rect.class);
            try {
                java.lang.reflect.Method declaredMethod2 = cls4.getDeclaredMethod("updateLetterboxSurfaceBounds", cls6, android.view.SurfaceControl.Transaction.class, android.graphics.Rect.class, android.graphics.Rect.class);
                java.lang.reflect.Method declaredMethod3 = cls4.getDeclaredMethod("updateLetterboxSurfaceVisibility", cls6, android.view.SurfaceControl.Transaction.class, cls8);
                java.lang.reflect.Method declaredMethod4 = cls4.getDeclaredMethod("destroyLetterboxSurface", cls6, android.view.SurfaceControl.Transaction.class);
                java.lang.Class<?> cls9 = java.lang.Class.forName("com.android.wm.shell.compatui.letterbox.lifecycle.LetterboxLifecycleControllerImpl", false, classLoader);
                java.lang.Class<?> type = cls2.getDeclaredField("type").getType();
                java.lang.Class<?> cls10 = java.lang.Class.forName("com.android.wm.shell.ShellTaskOrganizer", false, classLoader);
                java.lang.Class cls11 = java.lang.Integer.TYPE;
                final java.lang.reflect.Method declaredMethod5 = cls10.getDeclaredMethod("getRunningTaskInfo", cls11);
                final java.lang.reflect.Method declaredMethod6 = cls10.getDeclaredMethod("getTaskLeash", cls11);
                this.C2 = declaredMethod6;
                this.D2 = declaredMethod5;
                final java.lang.reflect.Field declaredField8 = cls2.getDeclaredField("type");
                final java.lang.reflect.Field declaredField9 = cls2.getDeclaredField("displayId");
                final java.lang.reflect.Field declaredField10 = cls2.getDeclaredField("letterboxBounds");
                final java.lang.reflect.Field declaredField11 = cls2.getDeclaredField("taskLeash");
                final java.lang.reflect.Field declaredField12 = cls2.getDeclaredField("activityLeash");
                final java.lang.reflect.Field declaredField13 = cls2.getDeclaredField("isTranslucent");
                final java.lang.reflect.Field declaredField14 = cls2.getDeclaredField("supportsInput");
                final java.lang.reflect.Field declaredField15 = cls2.getDeclaredField("mainWindowHasRoundedCorners");
                final java.lang.reflect.Constructor<?> declaredConstructor = cls2.getDeclaredConstructor(type, cls11, cls11, android.graphics.Rect.class, android.graphics.Rect.class, cls7, android.view.SurfaceControl.class, android.view.SurfaceControl.class, cls8, cls8, cls8, cls8, cls8);
                try {
                    hook(cls9.getDeclaredMethod("onLetterboxLifecycleEvent", cls2, android.view.SurfaceControl.Transaction.class, android.view.SurfaceControl.Transaction.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda158
                        public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                            java.lang.Object a2;
                            a2 = dev.duo.workspaceprobe.b.this.a(declaredField4, declaredField2, declaredMethod5, declaredMethod6, declaredConstructor, declaredField8, declaredField13, declaredField14, declaredField15, declaredField11, declaredField3, declaredField9, declaredField10, declaredField12, chain);
                            return a2;
                        }
                    });
                    this.r2 = fieldArr;
                    hook(cls.getDeclaredMethod("configureLetterboxMode", cls2)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda159
                        public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                            java.lang.Object a2;
                            a2 = dev.duo.workspaceprobe.b.this.a(declaredField2, declaredField5, declaredField4, declaredField3, declaredField, valueOf, chain);
                            return a2;
                        }
                    });
                    hook(declaredMethod).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda160
                        public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                            java.lang.Object c2;
                            c2 = dev.duo.workspaceprobe.b.this.c(declaredField6, declaredField7, chain);
                            return c2;
                        }
                    });
                    hook(declaredMethod2).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda161
                        public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                            java.lang.Object d2;
                            d2 = dev.duo.workspaceprobe.b.this.d(declaredField6, declaredField7, chain);
                            return d2;
                        }
                    });
                    hook(declaredMethod3).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda162
                        public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                            java.lang.Object b2;
                            b2 = dev.duo.workspaceprobe.b.this.b(declaredField6, chain);
                            return b2;
                        }
                    });
                    hook(declaredMethod4).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda163
                        public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                            java.lang.Object c2;
                            c2 = dev.duo.workspaceprobe.b.this.c(declaredField6, chain);
                            return c2;
                        }
                    });
                    this.v2 = true;
                    str = "DuoRail";
                } catch (java.lang.Throwable th) {
                    th = th;
                    str = "DuoRail";
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
                str = "DuoRail";
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
            str = "DuoRail";
        }
        try {
            android.util.Log.w(str, "Strip letterbox hooks ready");
        } catch (java.lang.Throwable th4) {
            th = th4;
            android.util.Log.w(str, "Strip letterbox unavailable; MIUI board kept", th);
        }
    }

    static void q(android.view.View view) {
        view.performHapticFeedback(1);
    }

    private static java.lang.String y(int i2) {
        return java.lang.String.format(java.util.Locale.ROOT, "#%06X", java.lang.Integer.valueOf(i2 & 16777215));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(int i2) {
        if (this.l5 == i2) {
            return;
        }
        this.l5 = i2;
        z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(java.lang.String str) {
        java.lang.String str2;
        android.os.Bundle call;
        try {
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putString("set", str);
            str2 = null;
            call = this.p4.getContentResolver().call(android.net.Uri.parse("content://dev.duo.hookprobe.config"), "railSidebarApps", (java.lang.String) null, bundle);
            if (call != null) {
                str2 = call.getString("saved");
            }
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.w("DuoRail", "Sidebar pinned save failed", e2);
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda124
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.f0();
                }
            });
        }
        if (!str.equals(str2)) {
            throw new java.lang.IllegalStateException(call == null ? "no response" : call.getString("error", "saved " + str2));
        }
        android.util.Log.w("DuoRail", "Sidebar pinned saved " + str);
        P1();
    }

    private boolean u() {
        return this.X5;
    }

    private void y() {
        final android.os.Bundle bundle = new android.os.Bundle();
        bundle.putBoolean("end", true);
        bundle.putLong("token", this.Q2);
        this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(bundle);
            }
        });
    }

    private boolean i(java.lang.String str) {
        if (!d(str) && w0()) {
            dev.duo.workspaceprobe.a.b b2 = this.M0.b(str);
            if (b2 != null) {
                return b2.a;
            }
            d(str, "miss");
        }
        return false;
    }

    public long[] A() {
        long[] jArr;
        synchronized (this.y6) {
            dev.duo.workspaceprobe.b.P p2 = this.z6;
            dev.duo.workspaceprobe.b.O o2 = this.u6;
            if (p2 != null && o2 != null) {
                long j2 = p2.p;
                if (j2 == o2.a) {
                    jArr = new long[]{p2.c, p2.l, p2.m, j2};
                }
            }
            jArr = new long[]{0, 0, 0, 0};
        }
        return jArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: q, reason: merged with bridge method [inline-methods] */
    public void e(dev.duo.workspaceprobe.b.K k2) {
        int i2 = k2.u;
        if (i2 < 0) {
            return;
        }
        int u2 = u(i2);
        boolean z2 = android.graphics.Color.luminance(u2) <= 0.45f ? 1 : 0;
        int i3 = z2 != 0 ? -1 : -13618632;
        int i4 = !z2;
        if (k2.x == i4 && k2.y == u2) {
            return;
        }
        java.util.ArrayList<dev.duo.workspaceprobe.b.J> arrayList = k2.f;
        int size = arrayList.size();
        int i5 = 0;
        while (i5 < size) {
            dev.duo.workspaceprobe.b.J j2 = arrayList.get(i5);
            i5++;
            j2.a(i3, i4);
        }
        dev.duo.workspaceprobe.b.S s2 = k2.h;
        if (s2 != null) {
            s2.a = i3;
            s2.c.a(i4);
            k2.h.invalidate();
        }
        a(k2, z2);
        if (k2.e.getBackground() instanceof dev.duo.workspaceprobe.b.N) {
            ((dev.duo.workspaceprobe.b.N) k2.e.getBackground()).a(i4);
        }
        k2.e.invalidate();
        dev.duo.workspaceprobe.b.h0 h0Var = k2.r;
        if (h0Var != null) {
            h0Var.h0 = i3;
            h0Var.invalidate();
        }
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            a(transaction, k2, u2);
            transaction.apply();
            transaction.close();
            dev.duo.workspaceprobe.b.U u3 = k2.s;
            if (u3 != null) {
                android.graphics.Paint paint = u3.a;
                if (z2 == 0) {
                    i3 = -14737372;
                }
                paint.setColor(i3);
                k2.t.a(z2 == 0 ? 2 : 0);
                k2.s.invalidate();
            }
            k2.x = i4;
            k2.y = u2;
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
    public /* synthetic */ void s(int i2) {
        if (i2 == this.e5) {
            Y1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object e(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        this.V0 = chain.getThisObject();
        h((android.app.ActivityManager.RunningTaskInfo) chain.getArg(0));
        c((android.app.ActivityManager.RunningTaskInfo) chain.getArg(0));
        java.lang.Object proceed = chain.proceed();
        a((android.app.ActivityManager.RunningTaskInfo) chain.getArg(0), (android.view.SurfaceControl) null);
        return proceed;
    }

    private boolean j(int i2) {
        return i(g(this.J0.get(java.lang.Integer.valueOf(i2))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:127:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0232  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void s() {
        /*
            Method dump skipped, instructions count: 718
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.workspaceprobe.b.s():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object b(java.lang.reflect.Method method, java.lang.reflect.Method method2, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        this.V0 = chain.getThisObject();
        h((android.app.ActivityManager.RunningTaskInfo) method.invoke(chain.getArg(0), null));
        c((android.app.ActivityManager.RunningTaskInfo) method.invoke(chain.getArg(0), null));
        java.lang.Object proceed = chain.proceed();
        java.lang.Object arg = chain.getArg(0);
        a((android.app.ActivityManager.RunningTaskInfo) method.invoke(arg, null), (android.view.SurfaceControl) method2.invoke(arg, null));
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(android.view.View view) {
        r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(boolean z2) {
        if (!this.c2.isEmpty()) {
            l(this.c2);
        }
        if (!this.T0 || z2 == this.n2) {
            return;
        }
        this.n2 = z2;
        java.lang.String str = z2 ? "dark mode on" : "dark mode off";
        if (!this.L1) {
            d(this.I1, str);
        }
        m(str);
    }

    private void f(dev.duo.workspaceprobe.b.K k2) {
        final dev.duo.workspaceprobe.b bVar = this;
        java.lang.String[] strArr = bVar.Z5;
        java.util.ArrayList<dev.duo.workspaceprobe.b.J> arrayList = k2.f;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            dev.duo.workspaceprobe.b.J j2 = arrayList.get(i2);
            i2++;
            k2.d.removeView(j2);
        }
        k2.f.clear();
        k2.m = -1L;
        int f2 = dev.duo.hookprobe.J.f(strArr);
        int e2 = dev.duo.hookprobe.J.e(strArr);
        if (e2 > 0) {
            a(k2);
        } else {
            android.widget.FrameLayout frameLayout = k2.j;
            if (frameLayout != null) {
                frameLayout.setVisibility(8);
            }
        }
        k2.g = false;
        int i3 = android.graphics.Color.luminance(k2.u >= 0 ? bVar.u(k2.u) : a) <= 0.45f ? 1 : 0;
        int b2 = b(0);
        int i4 = 0;
        int i5 = -1;
        while (i4 < strArr.length) {
            final java.lang.String str = strArr[i4];
            if (i4 == f2) {
                b2 += bVar.E1() + 14;
                i4 += e2 - 1;
            } else if (dev.duo.hookprobe.J.f.equals(str)) {
                if (i5 < 0) {
                    i5 = b2;
                }
                b2 += d() + 30;
                i4 += 2;
            } else {
                if (str != null && !dev.duo.hookprobe.J.e.equals(str)) {
                    if (bVar.w(str)) {
                        dev.duo.workspaceprobe.b.J j3 = new dev.duo.workspaceprobe.b.J(bVar, bVar.p4, str);
                        j3.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda203
                            @Override // android.view.View.OnClickListener
                            public final void onClick(android.view.View view) {
                                dev.duo.workspaceprobe.b.this.a(str, view);
                            }
                        });
                        if (str.startsWith("wechat") || str.startsWith("alipay")) {
                            final java.lang.String str2 = str + ".pay";
                            j3.setOnLongClickListener(new android.view.View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda204
                                @Override // android.view.View.OnLongClickListener
                                public final boolean onLongClick(android.view.View view) {
                                    boolean b3;
                                    b3 = dev.duo.workspaceprobe.b.this.b(str2, view);
                                    return b3;
                                }
                            });
                        }
                        j3.a(i3 != 0 ? -1 : -13618632, i3 ^ 1);
                        k2.f.add(j3);
                        bVar.a(k2, j3, 993.0f, b2, 136, 136, 0.0f);
                    }
                }
                b2 += j0;
            }
            i4++;
            bVar = this;
        }
        android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) k2.e.getLayoutParams();
        layoutParams.width = 180;
        layoutParams.height = d();
        k2.e.setLayoutParams(layoutParams);
        k2.g = i5 >= 0;
        if (i5 >= 0) {
            k2.e.setX(8.0f);
            k2.e.setY(i5 + z);
        }
        k2.e.setVisibility((i5 < 0 || k2.v <= 0) ? 4 : 0);
        k2.x = -1;
        if (k2.u >= 0) {
            e(k2);
        }
        k2.d.requestLayout();
        k2.d.invalidate();
    }

    private void i(java.lang.ClassLoader classLoader) throws java.lang.ReflectiveOperationException {
        java.lang.Class<?> cls = java.lang.Class.forName("com.android.systemui.shade.NotificationShadeWindowControllerImpl", false, classLoader);
        java.lang.Class<?> cls2 = java.lang.Class.forName("com.android.systemui.shade.NotificationShadeWindowState", false, classLoader);
        java.lang.String[] strArr = {"keyguardShowing", "bouncerShowing", "dozing", "shadeOrQsExpanded", "controlCenterExpanded"};
        final java.lang.reflect.Field[] fieldArr = new java.lang.reflect.Field[5];
        for (int i2 = 0; i2 < 5; i2++) {
            java.lang.reflect.Field declaredField = cls2.getDeclaredField(strArr[i2]);
            fieldArr[i2] = declaredField;
            declaredField.setAccessible(true);
        }
        final java.lang.reflect.Field declaredField2 = cls2.getDeclaredField("keyguardOccluded");
        declaredField2.setAccessible(true);
        hook(cls.getDeclaredMethod("apply", cls2)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda68
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object a2;
                a2 = dev.duo.workspaceprobe.b.this.a(fieldArr, declaredField2, chain);
                return a2;
            }
        });
        hook(android.app.Dialog.class.getDeclaredMethod("show", null)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda69
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object g2;
                g2 = dev.duo.workspaceprobe.b.this.g(chain);
                return g2;
            }
        });
        hook(android.app.Dialog.class.getDeclaredMethod("hide", null)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda70
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object h2;
                h2 = dev.duo.workspaceprobe.b.this.h(chain);
                return h2;
            }
        });
        hook(android.app.Dialog.class.getDeclaredMethod("dismiss", null)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda71
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object i3;
                i3 = dev.duo.workspaceprobe.b.this.i(chain);
                return i3;
            }
        });
        java.lang.Class<?> cls3 = java.lang.Class.forName("com.android.systemui.statusbar.CommandQueue", false, classLoader);
        for (java.lang.reflect.Method method : cls3.getDeclaredMethods()) {
            if (method.getName().equals("setImeWindowStatus")) {
                java.lang.Class<?>[] parameterTypes = method.getParameterTypes();
                final int i3 = 1;
                while (true) {
                    if (i3 >= parameterTypes.length) {
                        i3 = -1;
                        break;
                    } else if (parameterTypes[i3] == java.lang.Integer.TYPE) {
                        break;
                    } else {
                        i3++;
                    }
                }
                if (parameterTypes.length != 0 && parameterTypes[0] == java.lang.Integer.TYPE && i3 >= 0) {
                    hook(method).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda72
                        public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                            java.lang.Object a2;
                            a2 = dev.duo.workspaceprobe.b.this.a(i3, chain);
                            return a2;
                        }
                    });
                    android.util.Log.w("DuoRail", "IME status hook " + java.util.Arrays.toString(parameterTypes));
                }
            }
        }
        hook(cls3.getDeclaredMethod("showShutdownUi", java.lang.Boolean.TYPE, java.lang.String.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda73
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object j2;
                j2 = dev.duo.workspaceprobe.b.this.j(chain);
                return j2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(android.view.View view) {
        w();
        a(true, (android.graphics.Rect) null);
    }

    public android.view.Display B() {
        return q0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object g(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        final java.lang.Object thisObject = chain.getThisObject();
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda116
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.b(thisObject);
            }
        });
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object j(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.R();
            }
        });
        return chain.proceed();
    }

    private void l() throws java.lang.ReflectiveOperationException {
        n1();
        this.p4 = (android.content.Context) java.lang.Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
        M1();
        final dev.duo.workspaceprobe.b.h0 h0Var = new dev.duo.workspaceprobe.b.h0(this.p4);
        this.Z0 = h0Var;
        h0Var.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda37
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.workspaceprobe.b.this.l(view);
            }
        });
        h0Var.a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda38
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                dev.duo.workspaceprobe.b.this.m((android.view.View) obj);
            }
        });
        dev.duo.workspaceprobe.b.R r2 = new dev.duo.workspaceprobe.b.R("status", h0Var, 963.0f, W, 205, dev.duo.workspaceprobe.b.h0.D, 0, 0.0f, 40);
        this.V6 = r2;
        this.o4.add(r2);
        dev.duo.workspaceprobe.b.U u2 = new dev.duo.workspaceprobe.b.U(this.p4);
        this.C1 = u2;
        dev.duo.workspaceprobe.b.N n2 = new dev.duo.workspaceprobe.b.N(50.0f);
        this.F5 = n2;
        u2.setBackground(n2);
        u2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda39
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.workspaceprobe.b.this.n(view);
            }
        });
        u2.setOnLongClickListener(new android.view.View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda40
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(android.view.View view) {
                boolean o2;
                o2 = dev.duo.workspaceprobe.b.this.o(view);
                return o2;
            }
        });
        u2.setVisibility(this.M3 ? 0 : 8);
        dev.duo.workspaceprobe.b.R r3 = new dev.duo.workspaceprobe.b.R(this, "search", u2, 1011.0f, 1544, 100, 100, 5, 50.0f);
        this.G5 = r3;
        this.o4.add(r3);
        this.E5.add(this.G5);
        android.content.IntentFilter intentFilter = new android.content.IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_TICK");
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        this.p4.registerReceiver(new dev.duo.workspaceprobe.b.C0046h(), new android.content.IntentFilter(B0), null, this.D1, 2);
        this.p4.registerReceiver(new dev.duo.workspaceprobe.b.C0047i(h0Var), intentFilter, null, this.D1);
        java.lang.Runnable runnable = new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(h0Var);
            }
        };
        this.p4.getContentResolver().registerContentObserver(android.provider.Settings.System.getUriFor("battery_indicator_style"), false, new dev.duo.workspaceprobe.b.C0048j(this.D1, runnable));
        runnable.run();
        java.lang.Runnable runnable2 = new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda42
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.b(h0Var);
            }
        };
        this.p4.getContentResolver().registerContentObserver(android.provider.Settings.Global.getUriFor("airplane_mode_on"), false, new dev.duo.workspaceprobe.b.C0051m(this.D1, runnable2));
        runnable2.run();
        try {
            this.p4.getContentResolver().registerContentObserver(p, false, new dev.duo.workspaceprobe.b.C0052n(this.D1));
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.w("DuoRail", "Status style observer unavailable", e2);
        }
        Z1();
        j2();
        try {
            this.a1 = new dev.duo.workspaceprobe.b.f0(h0Var);
            ((android.telephony.SubscriptionManager) this.p4.getSystemService(android.telephony.SubscriptionManager.class)).addOnSubscriptionsChangedListener(this.p4.getMainExecutor(), this.a1);
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "Signal level unavailable", th);
        }
        final android.net.wifi.WifiManager wifiManager = (android.net.wifi.WifiManager) this.p4.getSystemService(android.net.wifi.WifiManager.class);
        java.lang.Runnable runnable3 = new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(wifiManager, h0Var);
            }
        };
        java.lang.Runnable runnable4 = new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(h0Var, wifiManager);
            }
        };
        android.content.IntentFilter intentFilter2 = new android.content.IntentFilter();
        intentFilter2.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter2.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter2.addAction("android.net.wifi.RSSI_CHANGED");
        this.p4.registerReceiver(new dev.duo.workspaceprobe.b.C0053o(runnable4), intentFilter2, null, this.D1);
        runnable3.run();
        ((android.net.ConnectivityManager) this.p4.getSystemService(android.net.ConnectivityManager.class)).registerDefaultNetworkCallback(new dev.duo.workspaceprobe.b.C0054p(h0Var, runnable3), this.D1);
        this.b1 = new dev.duo.workspaceprobe.b.C0050l(h0Var);
        ((android.telephony.TelephonyManager) this.p4.getSystemService(android.telephony.TelephonyManager.class)).registerTelephonyCallback(this.p4.getMainExecutor(), this.b1);
        android.content.IntentFilter intentFilter3 = new android.content.IntentFilter();
        intentFilter3.addAction("android.intent.action.SCREEN_OFF");
        intentFilter3.addAction("android.intent.action.SCREEN_ON");
        intentFilter3.addAction("android.intent.action.USER_PRESENT");
        intentFilter3.addAction("android.intent.action.CONFIGURATION_CHANGED");
        intentFilter3.addAction("android.intent.action.ACTION_SHUTDOWN");
        this.p4.registerReceiver(new dev.duo.workspaceprobe.b.C0055q(), intentFilter3, null, this.D1);
        this.p4.getContentResolver().registerContentObserver(android.net.Uri.parse("content://dev.duo.hookprobe.config/standbyClock"), false, new dev.duo.workspaceprobe.b.C0056r(this.D1));
        o1();
        Y1();
    }

    private boolean G() {
        int i2;
        if (this.u1 && this.v1 && this.k1 != null && this.V0 != null && (i2 = this.J1) >= 0 && !this.L1 && !this.O1 && !this.P1 && !this.Q1) {
            try {
                android.app.ActivityManager.RunningTaskInfo runningTaskInfo = this.J0.get(java.lang.Integer.valueOf(i2));
                if (runningTaskInfo != null && runningTaskInfo.topActivity != null && runningTaskInfo.getClass().getField("isFocused").getBoolean(runningTaskInfo) && runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) == 0) {
                    java.lang.Object obj = runningTaskInfo.getClass().getField("configuration").get(runningTaskInfo);
                    java.lang.Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
                    if (((java.lang.Integer) obj2.getClass().getMethod("getActivityType", null).invoke(obj2, null)).intValue() == 1) {
                        if (((java.lang.Integer) obj2.getClass().getMethod("getWindowingMode", null).invoke(obj2, null)).intValue() == 1 && w0() && R0() && a(q0()) == 1) {
                            return true;
                        }
                    }
                }
                return false;
            } catch (java.lang.ReflectiveOperationException e2) {
                android.util.Log.e("DuoFoldSplit", "Listening task check failed", e2);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(boolean z2) {
        this.f2 = z2;
        if (this.c2.isEmpty()) {
            return;
        }
        l(this.c2);
    }

    private void j() {
        final android.content.Intent launchIntentForPackage;
        if (r0() && this.n4.isEmpty()) {
            android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(this.p4);
            android.graphics.drawable.GradientDrawable gradientDrawable = new android.graphics.drawable.GradientDrawable();
            gradientDrawable.setColor(956301311);
            gradientDrawable.setStroke(2, 1090519039);
            gradientDrawable.setCornerRadius(60.0f);
            frameLayout.setBackground(gradientDrawable);
            this.F4 = gradientDrawable;
            java.lang.String[][] strArr = {new java.lang.String[]{"dial", ""}, new java.lang.String[]{"pkg", "com.android.browser"}, new java.lang.String[]{"pkg", "com.android.mms"}, new java.lang.String[]{"pkg", "com.miui.player"}};
            android.content.pm.PackageManager packageManager = this.p4.getPackageManager();
            for (int i2 = 0; i2 < 4; i2++) {
                if ("dial".equals(strArr[i2][0])) {
                    launchIntentForPackage = new android.content.Intent("android.intent.action.DIAL");
                } else {
                    launchIntentForPackage = packageManager.getLaunchIntentForPackage(strArr[i2][1]);
                }
                if (launchIntentForPackage != null) {
                    launchIntentForPackage.addFlags(268435456);
                    android.widget.ImageView imageView = new android.widget.ImageView(this.p4);
                    try {
                        imageView.setImageDrawable(packageManager.getActivityIcon(launchIntentForPackage));
                    } catch (java.lang.Exception e2) {
                        android.util.Log.w("DuoRail", "icon", e2);
                    }
                    imageView.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda175
                        @Override // android.view.View.OnClickListener
                        public final void onClick(android.view.View view) {
                            dev.duo.workspaceprobe.b.this.a(launchIntentForPackage, view);
                        }
                    });
                    android.widget.FrameLayout.LayoutParams layoutParams = new android.widget.FrameLayout.LayoutParams(120, 120);
                    layoutParams.gravity = 1;
                    layoutParams.topMargin = (i2 * 162) + 30;
                    frameLayout.addView(imageView, layoutParams);
                }
            }
            dev.duo.workspaceprobe.b.R r2 = new dev.duo.workspaceprobe.b.R(this, dev.duo.hookprobe.J.f, frameLayout, 971.0f, 626, 180, 665, 60, 60.0f);
            this.A5 = r2;
            this.o4.add(r2);
            a(strArr);
            android.util.Log.w("DuoLegacyDock", "outer rebuilt hosts=" + s0() + " epoch=" + this.l4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Thread a(java.lang.Runnable runnable) {
        java.lang.Thread thread = new java.lang.Thread(runnable, "DuoConfigLookup");
        thread.setDaemon(true);
        return thread;
    }

    private android.app.ActivityOptions g(java.lang.String str) throws java.lang.ReflectiveOperationException {
        return (android.app.ActivityOptions) java.lang.Class.forName("android.util.MiuiMultiWindowUtils").getMethod("getActivityOptions", android.content.Context.class, java.lang.String.class, java.lang.Boolean.TYPE).invoke(null, this.p4, str, java.lang.Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.Class cls, java.lang.Class cls2, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        java.lang.Integer num = this.u2.get();
        if (num != null && (proceed instanceof android.view.SurfaceControl) && x(num.intValue())) {
            int u2 = u(num.intValue());
            try {
                cls.getMethod("setColor", cls2, float[].class).invoke(chain.getArg(0), proceed, new float[]{android.graphics.Color.red(u2) / 255.0f, android.graphics.Color.green(u2) / 255.0f, android.graphics.Color.blue(u2) / 255.0f});
                android.util.Log.w("DuoRail", "Letterbox colour at creation task=" + num + " color=" + java.lang.Integer.toHexString(u2) + " surface=" + chain.getArg(2));
                return proceed;
            } catch (java.lang.Throwable th) {
                android.util.Log.w("DuoRail", "Letterbox colour at creation failed task=" + num, th);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final java.lang.String str, java.lang.String str2) {
        long a2 = this.M0.a();
        dev.duo.workspaceprobe.a.b a3 = a(str, str2);
        this.P0.remove(str);
        if (a3 == null) {
            this.Q0.put(str, java.lang.Long.valueOf(android.os.SystemClock.uptimeMillis()));
            return;
        }
        this.Q0.remove(str);
        this.D1.post(new dev.duo.workspaceprobe.b$$ExternalSyntheticLambda92(this));
        if (this.M0.b(str, a3, a2)) {
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda93
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.q(str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void q(final java.lang.String str) {
        java.util.ArrayList arrayList = new java.util.ArrayList(this.J0.values());
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            java.lang.Object obj = arrayList.get(i2);
            i2++;
            android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) obj;
            if (str.equals(g(runningTaskInfo))) {
                z(runningTaskInfo.taskId);
            }
        }
        android.os.Handler handler = this.U0;
        if (handler != null) {
            handler.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda209
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.k(str);
                }
            });
        }
        dev.duo.workspaceprobe.a.b b2 = this.M0.b(str);
        if (b2 != null && !this.L1 && str.equals(this.I1)) {
            a(b2.b);
        }
        if (str.equals(this.c2)) {
            l(str);
        }
        Q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object c(java.lang.reflect.Field field, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        int i2 = field.getInt(chain.getArg(0));
        this.U5.remove(java.lang.Integer.valueOf(i2));
        this.W5.remove(java.lang.Integer.valueOf(i2));
        try {
            b(i2, (android.view.SurfaceControl.Transaction) chain.getArg(1));
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "App rail decor detach skipped task=" + i2, th);
        }
        if (this.s2.remove(java.lang.Integer.valueOf(i2)) != null) {
            b(i2, "destroy");
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object d(java.lang.reflect.Field field, java.lang.reflect.Field field2, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        int i2 = 0;
        int i3 = field.getInt(chain.getArg(0));
        java.util.Map map = (java.util.Map) field2.get(chain.getThisObject());
        if (map != null && map.containsKey(java.lang.Integer.valueOf(i3))) {
            android.graphics.Rect rect = (android.graphics.Rect) chain.getArg(2);
            android.graphics.Rect rect2 = (android.graphics.Rect) chain.getArg(3);
            if (rect != null && rect2 != null && !rect2.isEmpty()) {
                i2 = java.lang.Math.max(0, rect.right - rect2.right);
            }
            int i4 = i2;
            java.lang.Integer num = this.s2.get(java.lang.Integer.valueOf(i3));
            int intValue = (i4 << 1) | (num == null ? 1 : num.intValue() & 1);
            if (num == null || num.intValue() != intValue) {
                this.s2.put(java.lang.Integer.valueOf(i3), java.lang.Integer.valueOf(intValue));
                b(i3, "bounds");
            }
            try {
                a(i3, (android.view.SurfaceControl.Transaction) chain.getArg(1), rect, rect2, i4);
                return proceed;
            } catch (java.lang.Throwable th) {
                android.util.Log.w("DuoRail", "App rail decor bounds skipped task=" + i3, th);
            }
        }
        return proceed;
    }

    private void g(dev.duo.workspaceprobe.b.K k2) {
        if (this.Z3 != null) {
            return;
        }
        dev.duo.workspaceprobe.b.d0 d0Var = new dev.duo.workspaceprobe.b.d0(k2);
        this.Z3 = d0Var;
        d0Var.e();
        n(this.Z3 != null);
    }

    private boolean t() {
        return u() && !this.L1 && this.T5.containsKey(java.lang.Integer.valueOf(this.J1)) && d(this.J1) && !this.Q6.contains(java.lang.Integer.valueOf(this.J1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(boolean z2) {
        if (this.g4 == z2) {
            return;
        }
        this.g4 = z2;
        i1();
    }

    private void b(java.util.Set<java.lang.String> set) {
        try {
            android.app.ActivityManager activityManager = (android.app.ActivityManager) this.p4.getSystemService(android.app.ActivityManager.class);
            java.lang.reflect.Method method = android.app.ActivityManager.class.getMethod("forceStopPackageAsUser", java.lang.String.class, java.lang.Integer.TYPE);
            java.util.HashSet hashSet = new java.util.HashSet();
            for (android.app.ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                int i2 = runningAppProcessInfo.uid / 100000;
                for (java.lang.String str : runningAppProcessInfo.pkgList) {
                    if (set.contains(str) && hashSet.add(str + ":" + i2)) {
                        method.invoke(activityManager, str, java.lang.Integer.valueOf(i2));
                        android.util.Log.w("DuoRail", "Duo switch restart pkg=" + str + " user=" + i2);
                    }
                }
            }
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "Duo switch restart failed " + set, th);
        }
    }

    private void c(android.app.ActivityManager.RunningTaskInfo runningTaskInfo) {
        java.lang.Object obj;
        if (runningTaskInfo == null) {
            return;
        }
        d(runningTaskInfo);
        if (j(runningTaskInfo.taskId)) {
            try {
                if (f(runningTaskInfo) && (obj = runningTaskInfo.getClass().getField("appCompatTaskInfo").get(runningTaskInfo)) != null) {
                    java.lang.reflect.Field field = obj.getClass().getField("miuiShouldShowBlurWallpaper");
                    obj.getClass().getField("miuiLetterboxBackgroundType").setInt(obj, 1);
                    if (field.getBoolean(obj)) {
                        field.setBoolean(obj, false);
                        if (this.W0.add(java.lang.Integer.valueOf(runningTaskInfo.taskId))) {
                            android.util.Log.w("DuoRail", "Solid letterbox kept for task=" + runningTaskInfo.taskId);
                        }
                    }
                }
            } catch (java.lang.Throwable th) {
                android.util.Log.w("DuoRail", "Solid letterbox check failed", th);
            }
        }
    }

    private void g(java.lang.ClassLoader classLoader) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.systemui.statusbar.notification.MiuiNotificationListener", false, classLoader);
            java.lang.reflect.Method[] methodArr = {cls.getDeclaredMethod("onListenerConnected", null), cls.getDeclaredMethod("onNotificationPosted", android.service.notification.StatusBarNotification.class, android.service.notification.NotificationListenerService.RankingMap.class), cls.getDeclaredMethod("onNotificationRemoved", android.service.notification.StatusBarNotification.class, android.service.notification.NotificationListenerService.RankingMap.class, java.lang.Integer.TYPE)};
            for (int i2 = 0; i2 < 3; i2++) {
                java.lang.reflect.Method method = methodArr[i2];
                final boolean equals = method.getName().equals("onNotificationPosted");
                hook(method).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda140
                    public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                        java.lang.Object a2;
                        a2 = dev.duo.workspaceprobe.b.this.a(equals, chain);
                        return a2;
                    }
                });
            }
            android.util.Log.i("DuoRail", "Notification icon hooks ready");
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "Notification icon hooks unavailable", th);
        }
    }

    private void k() {
        android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(this.p4);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(18, 12, 18, 12);
        android.graphics.drawable.GradientDrawable gradientDrawable = new android.graphics.drawable.GradientDrawable();
        gradientDrawable.setColor(-394759);
        gradientDrawable.setCornerRadius(22.0f);
        gradientDrawable.setStroke(2, -4604217);
        linearLayout.setBackground(gradientDrawable);
        android.widget.TextView textView = new android.widget.TextView(this.p4);
        this.f3 = textView;
        textView.setTextSize(14.0f);
        this.f3.setTextColor(-14671580);
        linearLayout.addView(this.f3, new android.widget.LinearLayout.LayoutParams(-1, 60));
        final float[] fArr = new float[4];
        this.f3.setOnTouchListener(new android.view.View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda85
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
                boolean a2;
                a2 = dev.duo.workspaceprobe.b.this.a(fArr, view, motionEvent);
                return a2;
            }
        });
        android.widget.TextView textView2 = new android.widget.TextView(this.p4);
        this.g3 = textView2;
        textView2.setTextSize(12.0f);
        this.g3.setTextColor(-11183260);
        this.g3.setMaxLines(2);
        linearLayout.addView(this.g3, new android.widget.LinearLayout.LayoutParams(-1, 104));
        android.widget.LinearLayout linearLayout2 = new android.widget.LinearLayout(this.p4);
        linearLayout2.addView(a("取色", new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda86
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.workspaceprobe.b.this.f(view);
            }
        }), new android.widget.LinearLayout.LayoutParams(0, 78, 1.0f));
        linearLayout2.addView(a("点选位置", new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda87
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.workspaceprobe.b.this.g(view);
            }
        }), new android.widget.LinearLayout.LayoutParams(0, 78, 1.0f));
        linearLayout2.addView(a("结束", new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda88
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.workspaceprobe.b.this.h(view);
            }
        }), new android.widget.LinearLayout.LayoutParams(0, 78, 1.0f));
        linearLayout.addView(linearLayout2);
        android.widget.LinearLayout linearLayout3 = new android.widget.LinearLayout(this.p4);
        this.h3 = a("正确，保存", new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda89
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.workspaceprobe.b.this.i(view);
            }
        });
        this.i3 = a("不对，重取", new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda90
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.workspaceprobe.b.this.j(view);
            }
        });
        android.widget.TextView a2 = a("跳过", new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda91
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.workspaceprobe.b.this.k(view);
            }
        });
        this.j3 = a2;
        android.widget.TextView[] textViewArr = {this.h3, this.i3, a2};
        for (int i2 = 0; i2 < 3; i2++) {
            linearLayout3.addView(textViewArr[i2], new android.widget.LinearLayout.LayoutParams(0, 78, 1.0f));
        }
        linearLayout.addView(linearLayout3);
        this.d3 = new dev.duo.workspaceprobe.b.R("pick_mode", linearLayout, 90.0f, 90, 780, 350, 0, 22.0f, 40);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(int i2) {
        int u2;
        int b2;
        if (j(i2) && (b2 = b(i2, (u2 = u(i2)))) >= 0) {
            java.lang.Integer num = this.A2.get(java.lang.Integer.valueOf(i2));
            android.util.Log.w("DuoRail", "Letterbox colour repainted task=" + i2 + " color=" + java.lang.Integer.toHexString(u2) + " surfaces=" + b2 + " tone=" + (num == null ? "none" : java.lang.Integer.toHexString(num.intValue())) + " page=" + this.B2);
            final dev.duo.workspaceprobe.b.K k2 = this.T5.get(java.lang.Integer.valueOf(i2));
            if (k2 != null) {
                this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.e(k2);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(java.lang.String str) {
        return str == null || "android".equals(str) || "com.miui.home".equals(str) || "com.android.systemui".equals(str) || dev.duo.icons.g.a.equals(str) || "dev.duo.workspaceprobe".equals(str);
    }

    private void e(final dev.duo.workspaceprobe.b.R r2) {
        r2.n = true;
        android.os.Handler handler = this.U0 == null ? this.D1 : this.U0;
        java.lang.Runnable runnable = new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda119
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(r2);
            }
        };
        if (handler.post(runnable)) {
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(boolean z2, java.lang.reflect.Method method, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) chain.getArg(0);
        c(runningTaskInfo);
        java.lang.Object proceed = chain.proceed();
        if (z2 && a(runningTaskInfo)) {
            try {
                method.invoke(chain.getThisObject(), runningTaskInfo);
                android.util.Log.w("DuoRail", "Letterbox appear -> taskInfo task=" + runningTaskInfo.taskId);
                return proceed;
            } catch (java.lang.Throwable th) {
                android.util.Log.w("DuoRail", "Letterbox appear -> taskInfo failed task=" + runningTaskInfo.taskId, th);
            }
        }
        return proceed;
    }

    private void d(long j2) {
        this.D1.removeCallbacks(this.K2);
        this.D1.postDelayed(this.K2, j2);
    }

    private void d(android.app.ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo == null || this.K0.contains(java.lang.Integer.valueOf(runningTaskInfo.taskId))) {
            return;
        }
        this.J0.putIfAbsent(java.lang.Integer.valueOf(runningTaskInfo.taskId), runningTaskInfo);
    }

    static boolean b(android.content.Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    private static int d() {
        return c(3);
    }

    private int b(int i2, int i3) {
        java.util.List<android.view.SurfaceControl> v2 = v(i2);
        if (a(i2, v2, this.T5.get(java.lang.Integer.valueOf(i2)), i3)) {
            return v2.size();
        }
        return -1;
    }

    private void c(int i2, int i3) {
        java.lang.Integer remove = i3 == 0 ? this.A2.remove(java.lang.Integer.valueOf(i2)) : this.A2.put(java.lang.Integer.valueOf(i2), java.lang.Integer.valueOf(i3));
        if (remove == null) {
            if (i3 == 0) {
                return;
            }
        } else if (remove.intValue() == i3) {
            return;
        }
        android.util.Log.w("DuoRail", "Page tone task=" + i2 + " " + (remove == null ? "none" : java.lang.Integer.toHexString(remove.intValue())) + " -> " + (i3 != 0 ? java.lang.Integer.toHexString(i3) : "none") + " page=" + this.B2);
        f(i2);
    }

    private java.util.List<java.lang.String> d(java.util.List<java.lang.String> list) {
        android.content.pm.PackageManager packageManager = this.p4.getPackageManager();
        java.util.ArrayList arrayList = new java.util.ArrayList(list);
        final java.util.HashMap hashMap = new java.util.HashMap();
        try {
            for (java.util.Map.Entry entry : ((java.util.Map) java.lang.Class.forName("android.util.MiuiMultiWindowUtils").getMethod("readFreeformTimestamps", android.content.Context.class).invoke(null, this.p4)).entrySet()) {
                long j2 = 0;
                if (entry.getValue() instanceof java.lang.Iterable) {
                    for (java.lang.Object obj : (java.lang.Iterable) entry.getValue()) {
                        if (obj instanceof java.lang.Number) {
                            j2 = java.lang.Math.max(j2, ((java.lang.Number) obj).longValue());
                        }
                    }
                }
                hashMap.put(java.lang.String.valueOf(entry.getKey()), java.lang.Long.valueOf(j2));
            }
        } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e2) {
            android.util.Log.w("DuoRail", "Sidebar recents unavailable", e2);
        }
        java.util.ArrayList arrayList2 = new java.util.ArrayList(hashMap.keySet());
        java.util.Collections.sort(arrayList2, new java.util.Comparator() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda206
            @Override // java.util.Comparator
            public final int compare(java.lang.Object obj2, java.lang.Object obj3) {
                int a2;
                a2 = dev.duo.workspaceprobe.b.a(hashMap, (java.lang.String) obj2, (java.lang.String) obj3);
                return a2;
            }
        });
        int size = arrayList2.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            java.lang.Object obj2 = arrayList2.get(i2);
            i2++;
            java.lang.String str = (java.lang.String) obj2;
            if (i3 >= 12) {
                break;
            }
            if (!arrayList.contains(str) && !str.equals(dev.duo.icons.g.a) && packageManager.getLaunchIntentForPackage(str) != null) {
                arrayList.add(str);
                i3++;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object b(java.lang.reflect.Field field, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        int intValue;
        java.lang.Object proceed = chain.proceed();
        int i2 = field.getInt(chain.getArg(0));
        java.lang.Integer num = this.s2.get(java.lang.Integer.valueOf(i2));
        if (num != null && (intValue = (num.intValue() & (-2)) | (((java.lang.Boolean) chain.getArg(2)).booleanValue() ? 1 : 0)) != num.intValue()) {
            this.s2.put(java.lang.Integer.valueOf(i2), java.lang.Integer.valueOf(intValue));
            b(i2, "visibility");
        }
        try {
            c(i2, (android.view.SurfaceControl.Transaction) chain.getArg(1));
            return proceed;
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "App rail decor visibility skipped task=" + i2, th);
            return proceed;
        }
    }

    private static float o(dev.duo.workspaceprobe.b.K k2) {
        return k2.a != null ? 0.775f : 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean e(dev.duo.workspaceprobe.b.K k2, java.lang.String str, android.view.View view) {
        if (!k(k2)) {
            return false;
        }
        a(k2, view, str);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object o(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        if (((java.lang.Integer) chain.getArg(3)).intValue() == 2) {
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda59
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.T();
                }
            });
        }
        return proceed;
    }

    private void e(java.lang.ClassLoader classLoader) {
        if (classLoader == this.w3) {
            return;
        }
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.miui.keyguard.shortcuts.controller.BaseShortcutAnimController", false, classLoader);
            java.lang.Class<?> cls2 = java.lang.Class.forName("com.miui.keyguard.shortcuts.view.BaseShortcutAnimView", false, classLoader);
            final java.lang.reflect.Field declaredField = cls.getDeclaredField("bottomShortcutView");
            declaredField.setAccessible(true);
            final java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod("getShortcutAnimView", null);
            declaredMethod.setAccessible(true);
            java.lang.Class cls3 = java.lang.Float.TYPE;
            final java.lang.reflect.Method declaredMethod2 = cls2.getDeclaredMethod("updateIconViewPositionAndScale", cls3);
            declaredMethod2.setAccessible(true);
            final java.lang.reflect.Field declaredField2 = cls2.getDeclaredField("iconCircleInitCenterX");
            final java.lang.reflect.Field declaredField3 = cls2.getDeclaredField("iconCircleInitCenterY");
            final java.lang.reflect.Field declaredField4 = cls2.getDeclaredField("iconCircleCenterX");
            final java.lang.reflect.Field declaredField5 = cls2.getDeclaredField("iconCircleCenterY");
            declaredField2.setAccessible(true);
            declaredField3.setAccessible(true);
            declaredField4.setAccessible(true);
            declaredField5.setAccessible(true);
            final java.util.WeakHashMap weakHashMap = new java.util.WeakHashMap();
            hook(cls2.getDeclaredMethod("updateViews", cls3, cls3, cls3)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda177
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(weakHashMap, declaredField2, declaredField3, chain);
                    return a2;
                }
            });
            hook(cls.getDeclaredMethod("updateShortcutView", java.lang.Integer.TYPE)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda178
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(declaredField, declaredMethod, weakHashMap, declaredField2, declaredField3, declaredField4, declaredField5, declaredMethod2, chain);
                    return a2;
                }
            });
            this.w3 = classLoader;
        } catch (java.lang.Throwable th) {
            android.util.Log.e("DuoKeyguard", "Official shortcut animation hook unavailable", th);
        }
    }

    private void j(dev.duo.workspaceprobe.b.K k2) {
        java.util.ArrayList<dev.duo.workspaceprobe.b.J> arrayList = k2.f;
        int size = arrayList.size();
        int i2 = 0;
        dev.duo.workspaceprobe.b.J j2 = null;
        while (i2 < size) {
            dev.duo.workspaceprobe.b.J j3 = arrayList.get(i2);
            i2++;
            dev.duo.workspaceprobe.b.J j4 = j3;
            if ("lastapp".equals(j4.a)) {
                j2 = j4;
            }
        }
        if (j2 == null) {
            return;
        }
        java.lang.Object[] n02 = n0();
        j2.e(n02 != null ? (java.lang.String) n02[1] : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean o(android.view.View view) {
        if (!this.M3 || !R0() || this.O6) {
            return true;
        }
        o0();
        return true;
    }

    private java.util.List<android.view.SurfaceControl> v(int i2) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.Map<?, ?> map = this.q2;
        java.lang.Object obj = map == null ? null : map.get(java.lang.Integer.valueOf(i2));
        if (obj != null) {
            for (java.lang.reflect.Field field : this.r2) {
                try {
                    java.lang.Object obj2 = field.get(obj);
                    if ((obj2 instanceof android.view.SurfaceControl) && ((android.view.SurfaceControl) obj2).isValid()) {
                        arrayList.add((android.view.SurfaceControl) obj2);
                    }
                } catch (java.lang.ReflectiveOperationException e2) {
                }
            }
        }
        java.util.Map<?, ?> map2 = this.X0;
        java.lang.Object obj3 = map2 != null ? map2.get(java.lang.Integer.valueOf(i2)) : null;
        if (obj3 instanceof android.view.SurfaceControl) {
            android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) obj3;
            if (surfaceControl.isValid()) {
                arrayList.add(surfaceControl);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        dev.duo.workspaceprobe.b.g0 g0Var = this.z5;
        this.z5 = null;
        if (g0Var != null) {
            this.D1.removeCallbacks(g0Var.f);
            android.os.IBinder iBinder = g0Var.b;
            if (iBinder != null) {
                iBinder.unlinkToDeath(g0Var.g, 0);
            }
            android.os.ResultReceiver resultReceiver = g0Var.c;
            if (resultReceiver != null) {
                resultReceiver.send(3, null);
            }
        }
        s1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean c(android.view.View view, android.view.MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 1 && this.e3 != null) {
            if (motionEvent.getEventTime() - motionEvent.getDownTime() >= 600) {
                r1();
                return true;
            }
            final long j2 = this.R2;
            final long j3 = this.Q2;
            final int max = java.lang.Math.max(2, java.lang.Math.min(960, (int) motionEvent.getX()));
            final int max2 = java.lang.Math.max(2, java.lang.Math.min(1709, (int) motionEvent.getY()));
            r1();
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                transaction.setVisibility(this.d3.b, false).apply();
                transaction.close();
                this.D1.postDelayed(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda205
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.a(j2, j3, max, max2);
                    }
                }, 80L);
            } finally {
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        try {
            android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) method.invoke(chain.getArg(0), null);
            e(runningTaskInfo);
            c(runningTaskInfo);
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.w("DuoWallpaper", "Task observation failed", e2);
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object m(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        this.M4 = chain.getThisObject();
        return proceed;
    }

    private boolean j(java.lang.String str) {
        dev.duo.workspaceprobe.a.b b2 = this.M0.b(str);
        return b2 != null && b2.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(android.view.View view) {
        q(view);
        if (!R0() || this.s3) {
            return;
        }
        A0();
    }

    private void b(final int i2, java.lang.String str) {
        java.lang.Integer num = this.s2.get(java.lang.Integer.valueOf(i2));
        android.util.Log.w("DuoRail", "Strip task=" + i2 + " shown=" + D(i2) + " width=" + (num == null ? 0 : num.intValue() >> 1) + " via " + str);
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda165
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.r(i2);
            }
        });
    }

    private void j(boolean z2) {
        java.lang.String str;
        if (z2) {
            str = "alipays://platformapi/startapp?appId=20000056&chInfo=ch_xiaomiLeft";
        } else {
            str = "alipays://platformapi/startapp?appId=10000007&sourceId=xiaomiLeft&source=shortcut&showOthers=true&chInfo=ch_xiaomiLeft";
        }
        try {
            a(new android.content.Intent("android.intent.action.VIEW").setData(android.net.Uri.parse(str)).setPackage("com.eg.android.AlipayGphone").addFlags(343932928));
            android.util.Log.w("DuoRail", "Rail alipay pay=" + z2);
        } catch (java.lang.Throwable th) {
            a("支付宝", th);
        }
    }

    static int m() {
        return x0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(int i2) {
        a("gesture " + i2, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.reflect.Method method, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object[] array = chain.getArgs().toArray();
        int i2 = field.getInt(array[0]);
        if (x(i2)) {
            array[4] = java.lang.Boolean.FALSE;
        }
        java.lang.Integer num = this.u2.get();
        this.u2.set(java.lang.Integer.valueOf(i2));
        try {
            java.lang.Object proceed = chain.proceed(array);
            this.u2.set(num);
            a(chain.getThisObject(), chain.getArg(0), chain.getArg(1), field, field2, method);
            return proceed;
        } catch (java.lang.Throwable th) {
            this.u2.set(num);
            throw th;
        }
    }

    private void g() {
        if (this.F1 && this.L1) {
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                if (a(transaction)) {
                    transaction.apply();
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
    }

    private void o(boolean z2) {
        if (this.Y6 == z2) {
            return;
        }
        this.Y6 = z2;
        this.W6 = 0.0f;
    }

    private void b(final java.lang.String str, final dev.duo.workspaceprobe.b.i0 i0Var) {
        this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(str, i0Var);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(java.lang.Object obj) {
        this.R1.remove(obj);
        Q();
    }

    private void b(final int i2, final dev.duo.workspaceprobe.b.M m2, final java.util.function.Consumer<java.lang.Integer> consumer) {
        (this.U0 == null ? this.D1 : this.U0).post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda150
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(i2, m2, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(boolean z2) {
        this.D1.removeCallbacks(this.P6);
        if (z2) {
            l(true);
        } else {
            this.D1.postDelayed(this.P6, 150L);
        }
    }

    private boolean v() {
        return u() && !this.L1 && this.T5.containsKey(java.lang.Integer.valueOf(this.J1)) && d(this.J1) && !this.s3 && !this.f6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(android.os.Bundle bundle) {
        java.lang.String string = bundle.getString("package", "");
        if (this.Q2 != bundle.getLong("token") || !string.equals(this.N2)) {
            w();
            this.X2 = false;
            this.W2 = false;
            this.N2 = string;
            this.Q2 = bundle.getLong("token");
            this.O2 = "";
            this.P2 = "";
            E(this.E2);
            i1();
        }
        this.l3 = false;
        k2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(dev.duo.workspaceprobe.b.K k2, android.view.View view) {
        if (k(k2)) {
            if (this.Z3 != null) {
                q();
                return;
            }
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            view.getLocationOnScreen(iArr);
            k2.j.getLocationOnScreen(iArr2);
            this.X3 = ((p(k2) + iArr[1]) - iArr2[1]) + java.lang.Math.round((o(k2) * 96.0f) / 2.0f);
            g(k2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(dev.duo.workspaceprobe.b.K k2, java.lang.String str, android.view.View view) {
        if (k(k2)) {
            q();
            if (this.V3) {
                s(str);
            } else {
                t(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(android.view.View view) {
        this.P2 = this.H2 + "/" + this.a3;
        w();
        E(this.E2);
        this.O2 = "本次已跳过，可随时手动取色";
        D0();
    }

    private boolean k(dev.duo.workspaceprobe.b.K k2) {
        return k2.a != null ? k2 == s2() && R0() : t();
    }

    private void k(java.lang.ClassLoader classLoader) {
        try {
            hook(java.lang.Class.forName("com.android.wm.shell.recents.RecentsTransitionHandler$1", false, classLoader).getDeclaredMethod("onGestureStateUpdated", java.lang.Integer.TYPE)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda110
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object l2;
                    l2 = dev.duo.workspaceprobe.b.this.l(chain);
                    return l2;
                }
            });
            android.util.Log.w("DuoRail", "Recents hooks ready");
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "No recents hooks", th);
        }
    }

    private void d(java.lang.ClassLoader classLoader) {
        try {
            final java.lang.Class<?> cls = java.lang.Class.forName("com.android.keyguard.shortcut.MiuiShortcutController", false, classLoader);
            final java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod("onSystemUIAction$1", android.os.Bundle.class, java.lang.String.class);
            declaredMethod.setAccessible(true);
            hook(cls.getDeclaredMethod("addShortcutViews", android.widget.FrameLayout.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda188
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(declaredMethod, cls, chain);
                    return a2;
                }
            });
            java.lang.Class<?> cls2 = java.lang.Class.forName("com.android.keyguard.panel.KeyguardPanelViewController", false, classLoader);
            final java.lang.reflect.Field declaredField = cls2.getDeclaredField("unlockAlphaAndScaleAnimator");
            declaredField.setAccessible(true);
            for (java.lang.reflect.Method method : cls2.getDeclaredMethods()) {
                if (method.getName().equals("startUnlockKeyguardDismissAnim")) {
                    hook(method).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda189
                        public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                            java.lang.Object a2;
                            a2 = dev.duo.workspaceprobe.b.this.a(declaredField, chain);
                            return a2;
                        }
                    });
                }
            }
            android.util.Log.i("DuoKeyguard", "Official shortcut layout and unlock hooks ready");
        } catch (java.lang.Throwable th) {
            android.util.Log.e("DuoKeyguard", "Official keyguard layout unavailable", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, java.lang.reflect.Field field2, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        if (field.getInt(chain.getArg(0)) == 0) {
            java.lang.Object obj = field2.get(chain.getArg(0));
            java.lang.Object obj2 = this.H1;
            if (obj2 != null && obj != null && !obj.equals(obj2)) {
                android.util.Log.w("DuoRail", "Display area vanished event ignored: not the one in use");
            } else {
                this.G1 = null;
                this.H1 = null;
                android.util.Log.w("DuoRail", "Display area vanished");
                this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda35
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.O();
                    }
                });
            }
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean c(dev.duo.workspaceprobe.b.K k2, java.lang.String str, android.view.View view) {
        return k(k2) && b(k2, view, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(java.util.List<java.lang.String> list) {
        java.util.List<java.lang.String> a2 = dev.duo.hookprobe.J.a(this.R3, this.Q3, list, 12);
        this.R3 = java.util.Collections.unmodifiableList(a2);
        java.util.ArrayList arrayList = new java.util.ArrayList(list);
        for (java.lang.String str : this.P3) {
            if (!this.Q3.contains(str) && !arrayList.contains(str)) {
                arrayList.add(str);
            }
        }
        this.P3 = java.util.Collections.unmodifiableList(arrayList);
        this.Q3 = java.util.Collections.unmodifiableList(list);
        p1();
        dev.duo.workspaceprobe.b.d0 d0Var = this.Z3;
        if (d0Var != null) {
            d0Var.d();
        }
        final java.lang.String b2 = dev.duo.hookprobe.J.b(a2);
        this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda200
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.r(b2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(java.lang.Object obj) {
        this.R1.add(obj);
        Q();
    }

    private void k(boolean z2) {
        android.content.Intent component;
        try {
            if (z2) {
                component = new android.content.Intent("android.intent.action.VIEW").setComponent(new android.content.ComponentName("com.tencent.mm", "com.tencent.mm.plugin.offline.ui.WalletOfflineCoinPurseUI")).putExtra("key_entry_scene", 2);
            } else {
                component = new android.content.Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setComponent(new android.content.ComponentName("com.tencent.mm", "com.tencent.mm.plugin.scanner.ui.BaseScanUI"));
            }
            a(component.addFlags(343932928));
            android.util.Log.w("DuoRail", "Rail wechat pay=" + z2);
        } catch (java.lang.Throwable th) {
            a("微信", th);
        }
    }

    private void b(android.widget.ImageView imageView) {
        if (this.C3.containsKey(imageView)) {
            return;
        }
        android.view.View view = (android.view.View) imageView.getParent();
        android.view.ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        this.C3.put(imageView, new java.lang.Object[]{new java.lang.ref.WeakReference(view), new android.widget.FrameLayout.LayoutParams((android.widget.FrameLayout.LayoutParams) view.getLayoutParams()), java.lang.Integer.valueOf(layoutParams.width), java.lang.Integer.valueOf(layoutParams.height), java.lang.Float.valueOf(imageView.getTranslationX()), java.lang.Float.valueOf(imageView.getTranslationY())});
    }

    private static boolean f(android.app.ActivityManager.RunningTaskInfo runningTaskInfo) throws java.lang.ReflectiveOperationException {
        java.lang.Object obj = runningTaskInfo.getClass().getField("configuration").get(runningTaskInfo);
        java.lang.Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
        android.graphics.Rect rect = (android.graphics.Rect) obj2.getClass().getMethod("getBounds", null).invoke(obj2, null);
        return rect != null && rect.width() == 1168 && rect.height() == 1712;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(java.lang.String str) {
        android.view.ViewTreeObserver viewTreeObserver = this.G3;
        this.G3 = null;
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.F3);
        }
        if (viewTreeObserver == null || str == null) {
            return;
        }
        android.util.Log.i("DuoKeyguard", "Keyguard per-frame listeners=0 (" + str + ")");
    }

    private void f(java.lang.ClassLoader classLoader) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.wm.shell.transition.Transitions", false, classLoader);
            java.lang.Class<?> cls2 = java.lang.Class.forName("android.window.TransitionInfo", false, classLoader);
            final java.lang.reflect.Method method = cls2.getMethod("getChanges", null);
            final java.lang.reflect.Method method2 = cls2.getMethod("getType", null);
            java.lang.Class<?> cls3 = java.lang.Class.forName("android.window.TransitionInfo$Change", false, classLoader);
            final java.lang.reflect.Method method3 = cls3.getMethod("getMode", null);
            final java.lang.reflect.Method method4 = cls3.getMethod("getTaskInfo", null);
            hook(cls.getDeclaredMethod("onTransitionReadyInner", android.os.IBinder.class, cls2, android.view.SurfaceControl.Transaction.class, android.view.SurfaceControl.Transaction.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda196
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(method, method3, method4, method2, chain);
                    return a2;
                }
            });
            hook(cls.getDeclaredMethod("onFinish", android.os.IBinder.class, java.lang.Class.forName("android.window.WindowContainerTransaction", false, classLoader))).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda197
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object b2;
                    b2 = dev.duo.workspaceprobe.b.this.b(chain);
                    return b2;
                }
            });
            hook(cls.getDeclaredMethod("onTransitionAbort", android.os.IBinder.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda198
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object c2;
                    c2 = dev.duo.workspaceprobe.b.this.c(chain);
                    return c2;
                }
            });
            android.util.Log.w("DuoRail", "Mode transition hooks ready");
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.w("DuoRail", "No mode transition hooks", e2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void c(java.lang.String str) {
        char c2;
        if (str.startsWith("app:")) {
            android.content.Intent launchIntentForPackage = this.p4.getPackageManager().getLaunchIntentForPackage(str.substring(4));
            if (launchIntentForPackage != null) {
                a(launchIntentForPackage.addFlags(268435456));
            }
            return;
        }
        switch (str.hashCode()) {
            case -1995583740:
                if (str.equals("alipay.pay")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1414960566:
                if (str.equals("alipay")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1290959678:
                if (str.equals("eyecare")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1206484807:
                if (str.equals("huanji")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -1138529534:
                if (str.equals("calculator")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -1135252444:
                if (str.equals("keepon")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -930895139:
                if (str.equals("ringer")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -805491779:
                if (str.equals("screenrecord")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case -791770330:
                if (str.equals("wechat")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case -677011630:
                if (str.equals("airplane")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case -416447130:
                if (str.equals("screenshot")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case -47065141:
                if (str.equals("lastapp")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case 3015911:
                if (str.equals("back")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case 3046207:
                if (str.equals("cast")) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case 3075958:
                if (str.equals("dark")) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case 3208415:
                if (str.equals("home")) {
                    c2 = 16;
                    break;
                }
                c2 = 65535;
                break;
            case 44649833:
                if (str.equals("autobright")) {
                    c2 = 17;
                    break;
                }
                c2 = 65535;
                break;
            case 109522647:
                if (str.equals("sleep")) {
                    c2 = 18;
                    break;
                }
                c2 = 65535;
                break;
            case 110547964:
                if (str.equals("torch")) {
                    c2 = 19;
                    break;
                }
                c2 = 65535;
                break;
            case 846086146:
                if (str.equals("powersave")) {
                    c2 = 20;
                    break;
                }
                c2 = 65535;
                break;
            case 1052832078:
                if (str.equals("translate")) {
                    c2 = 21;
                    break;
                }
                c2 = 65535;
                break;
            case 1082295672:
                if (str.equals("recents")) {
                    c2 = 22;
                    break;
                }
                c2 = 65535;
                break;
            case 1099603663:
                if (str.equals("hotspot")) {
                    c2 = 23;
                    break;
                }
                c2 = 65535;
                break;
            case 1656693216:
                if (str.equals("wechat.pay")) {
                    c2 = 24;
                    break;
                }
                c2 = 65535;
                break;
            case 1901043637:
                if (str.equals("location")) {
                    c2 = 25;
                    break;
                }
                c2 = 65535;
                break;
            case 1968882350:
                if (str.equals("bluetooth")) {
                    c2 = 26;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                j(true);
                break;
            case 1:
                j(false);
                break;
            case 2:
                O0();
                break;
            case 3:
                Q0();
                break;
            case 4:
                K0();
                break;
            case 5:
                S0();
                break;
            case 6:
                W0();
                break;
            case 7:
                Z0();
                break;
            case dev.duo.taskcore.h.k /* 8 */:
                k(false);
                break;
            case dev.duo.taskcore.h.l /* 9 */:
                H0();
                break;
            case '\n':
                a1();
                break;
            case dev.duo.taskcore.h.n /* 11 */:
                T0();
                break;
            case '\f':
                X0();
                break;
            case F0 /* 13 */:
                A(4);
                break;
            case 14:
                L0();
                break;
            case 15:
                M0();
                break;
            case z /* 16 */:
                A(3);
                break;
            case 17:
                I0();
                break;
            case 18:
                b1();
                break;
            case 19:
                c1();
                break;
            case 20:
                V0();
                break;
            case p0 /* 21 */:
                d1();
                break;
            case 22:
                A(187);
                break;
            case 23:
                P0();
                break;
            case 24:
                k(true);
                break;
            case 25:
                U0();
                break;
            case 26:
                J0();
                break;
            default:
                android.util.Log.w("DuoRail", "Rail action pending: " + str);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, java.lang.reflect.Method method2, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        int intValue = ((java.lang.Integer) method.invoke(chain.getArg(1), null)).intValue();
        android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) method2.invoke(chain.getArg(1), null);
        if ((intValue == 1 || intValue == 3) && runningTaskInfo != null && runningTaskInfo.topActivity != null && runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) == 0) {
            final java.lang.String g2 = g(runningTaskInfo);
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda139
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.l(g2);
                }
            });
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean b(java.lang.String str, android.view.View view) {
        if (!t()) {
            return true;
        }
        z(str);
        return true;
    }

    dev.duo.workspaceprobe.b.K b(dev.duo.workspaceprobe.q qVar) {
        dev.duo.workspaceprobe.b.K k2 = new dev.duo.workspaceprobe.b.K();
        k2.d = new android.widget.FrameLayout(this.p4);
        k2.a = qVar;
        return k2;
    }

    void b(dev.duo.workspaceprobe.b.K k2) {
        a(k2);
        i(k2);
    }

    private java.util.List<android.content.pm.LauncherActivityInfo> b(java.lang.String str, int i2) {
        try {
            return ((android.content.pm.LauncherApps) this.p4.getSystemService(android.content.pm.LauncherApps.class)).getActivityList(str, C(i2));
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.w("DuoRail", "Sidebar activities " + str + "@" + i2 + " unavailable", e2);
            return java.util.Collections.EMPTY_LIST;
        }
    }

    private int n(dev.duo.workspaceprobe.b.K k2) {
        return k2.a != null ? t2() : E1();
    }

    private void n(boolean z2) {
        java.util.ArrayList arrayList = new java.util.ArrayList(this.T5.values());
        synchronized (this.S5) {
            arrayList.addAll(this.S5);
        }
        dev.duo.workspaceprobe.b.K s2 = s2();
        if (s2 != null) {
            arrayList.add(s2);
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            java.lang.Object obj = arrayList.get(i2);
            i2++;
            dev.duo.workspaceprobe.b.c0 c0Var = ((dev.duo.workspaceprobe.b.K) obj).l;
            if (c0Var != null && c0Var.c != z2) {
                c0Var.a(z2);
            }
        }
    }

    private static boolean a(android.app.ActivityManager.RunningTaskInfo runningTaskInfo) {
        java.lang.Object obj;
        java.lang.Object obj2;
        android.graphics.Rect rect;
        if (runningTaskInfo != null) {
            try {
                if (runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) != 0 || (obj = runningTaskInfo.getClass().getField("appCompatTaskInfo").get(runningTaskInfo)) == null) {
                    return false;
                }
                try {
                    obj2 = obj.getClass().getMethod("isLeafTask", null).invoke(obj, null);
                } catch (java.lang.NoSuchMethodException e2) {
                    obj2 = obj.getClass().getField("isLeafTask").get(obj);
                }
                java.lang.Boolean bool = java.lang.Boolean.TRUE;
                if (bool.equals(obj2) && bool.equals(obj.getClass().getMethod("isTopActivityLetterboxRunning", null).invoke(obj, null)) && (rect = (android.graphics.Rect) obj.getClass().getField("topActivityLetterboxBounds").get(obj)) != null) {
                    return !rect.isEmpty();
                }
                return false;
            } catch (java.lang.ReflectiveOperationException e3) {
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(dev.duo.workspaceprobe.b.K k2, java.lang.String str, android.view.View view) {
        if (k(k2)) {
            F(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean b(android.view.View view, android.view.MotionEvent motionEvent) {
        this.c4 = motionEvent.getRawY();
        dev.duo.workspaceprobe.b.X x2 = this.b4;
        if (x2 != null && x2.c == view) {
            x2.a(motionEvent);
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            view.animate().scaleX(0.92f).scaleY(0.92f).setDuration(90L).start();
        } else if (actionMasked == 1 || actionMasked == 3) {
            view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(180L).start();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0086, code lost:
    
        throw new java.io.IOException("Outer lease: " + r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void e(final java.lang.Object r9) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.workspaceprobe.b.e(java.lang.Object):void");
    }

    private void n(java.lang.ClassLoader classLoader) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.wm.shell.sosc.common.split.DividerSnapAlgorithm", false, classLoader);
            final java.lang.reflect.Field declaredField = cls.getDeclaredField("mSnapMode");
            final java.lang.reflect.Field declaredField2 = cls.getDeclaredField("mDisplayWidth");
            final java.lang.reflect.Field declaredField3 = cls.getDeclaredField("mDisplayHeight");
            final java.lang.reflect.Field declaredField4 = cls.getDeclaredField("mIsLeftRightSplit");
            java.lang.reflect.Field[] fieldArr = {declaredField, declaredField2, declaredField3, declaredField4};
            for (int i2 = 0; i2 < 4; i2++) {
                fieldArr[i2].setAccessible(true);
            }
            hook(cls.getDeclaredMethod("calculateTargets", null)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda9
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(declaredField2, declaredField3, declaredField4, declaredField, chain);
                    return a2;
                }
            });
            android.util.Log.i("DuoSplitRatio", "Native inner landscape five-stop hook ready");
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e("DuoSplitRatio", "Native split ratio entry unavailable", e2);
        }
    }

    private boolean a(final android.app.ActivityManager.RunningTaskInfo runningTaskInfo, android.view.SurfaceControl surfaceControl) {
        java.lang.Object obj;
        if (runningTaskInfo == null) {
            return false;
        }
        try {
            if (c == null) {
                java.lang.Class<?> cls = runningTaskInfo.getClass();
                d = cls.getField("isFocused");
                e = cls.getField("appCompatTaskInfo");
                java.lang.reflect.Field field = cls.getField("configuration");
                f = field;
                java.lang.reflect.Field field2 = field.getType().getField("windowConfiguration");
                g = field2;
                h = field2.getType().getMethod("getActivityType", null);
                i = g.getType().getMethod("getWindowingMode", null);
                c = cls.getField("displayId");
            }
            android.content.ComponentName componentName = runningTaskInfo.topActivity;
            final boolean z2 = true;
            boolean z3 = componentName != null && "com.miui.home".equals(componentName.getPackageName()) && "com.miui.home.launcher.Launcher".equals(componentName.getClassName());
            boolean z4 = c.getInt(runningTaskInfo) == 0 && componentName != null && d.getBoolean(runningTaskInfo);
            if (!z3 && !z4) {
                return false;
            }
            java.lang.Object obj2 = e.get(runningTaskInfo);
            java.lang.Object obj3 = g.get(f.get(runningTaskInfo));
            final int intValue = ((java.lang.Integer) h.invoke(obj3, null)).intValue();
            boolean z5 = z3 && intValue == 2;
            if (z3 && this.X1 < 6) {
                try {
                    obj = obj2.getClass().getMethod("isLeafTask", null).invoke(obj2, null);
                } catch (java.lang.NoSuchMethodException e2) {
                    obj = obj2.getClass().getField("isLeafTask").get(obj2);
                }
                this.X1++;
                android.util.Log.w("DuoRail", "Launcher task=" + runningTaskInfo.taskId + " leaf=" + obj + " home=" + z5 + " leash=" + (surfaceControl != null));
            }
            if (!z4 || ((java.lang.Integer) i.invoke(obj3, null)).intValue() == 5) {
                return false;
            }
            if (runningTaskInfo.taskId == this.a2 && "com.miui.mishare.connectivity".equals(componentName.getPackageName()) && "com.miui.mishare.activity.TransActivity".equals(componentName.getClassName())) {
                return false;
            }
            java.lang.String i2 = i(runningTaskInfo);
            if (i2 != null) {
                this.a2 = runningTaskInfo.taskId;
            }
            if (!a(componentName)) {
                int i3 = -1;
                this.a2 = -1;
                boolean z6 = !z5 && intValue == 1 && new android.graphics.Rect(0, 0, v0, 1712).equals(f(obj2)) && j(runningTaskInfo.taskId);
                if (z6) {
                    i3 = runningTaskInfo.taskId;
                }
                this.Y1 = i3;
                this.Z1 = z6 ? componentName : null;
                if (z6) {
                    a(runningTaskInfo.taskId, componentName);
                }
            }
            final java.lang.String g2 = i2 != null ? i2 : g(runningTaskInfo);
            if (intValue != 1 || ((java.lang.Integer) i.invoke(obj3, null)).intValue() != 1) {
                z2 = false;
            }
            final boolean z7 = z5;
            return this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda220
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(g2, runningTaskInfo, z7, intValue, z2);
                }
            });
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "Rail task check failed", th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object i(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        final java.lang.Object thisObject = chain.getThisObject();
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda111
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.c(thisObject);
            }
        });
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static android.graphics.drawable.GradientDrawable b(int i2, float f2) {
        android.graphics.drawable.GradientDrawable gradientDrawable = new android.graphics.drawable.GradientDrawable();
        gradientDrawable.setColor(i2);
        gradientDrawable.setCornerRadius(f2);
        return gradientDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(boolean z2) {
        if (java.lang.Boolean.valueOf(z2).equals(this.O3)) {
            return;
        }
        this.O3 = java.lang.Boolean.valueOf(z2);
        android.util.Log.i("DuoWorkbench", "Switch " + (z2 ? "on" : "off"));
        if (z2) {
            return;
        }
        this.E4.K();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final java.util.List<java.lang.String> list) {
        this.S3 = java.util.Collections.unmodifiableList(new java.util.ArrayList(list));
        final java.lang.String a2 = dev.duo.hookprobe.J.a(list);
        final int i2 = this.T3 + 1;
        this.T3 = i2;
        this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(i2, a2, list);
            }
        });
    }

    void i(dev.duo.workspaceprobe.b.K k2) {
        android.widget.LinearLayout linearLayout = k2.k;
        if (linearLayout != null) {
            linearLayout.setTranslationY(x0);
        }
        dev.duo.workspaceprobe.b.c0 c0Var = k2.l;
        if (c0Var != null) {
            c0Var.setTranslationY(k2.p ? 0.0f : x0);
        }
    }

    private boolean b(dev.duo.workspaceprobe.b.K k2, android.view.View view, java.lang.String str) {
        int indexOfChild = k2.k.indexOfChild(view);
        int min = java.lang.Math.min(this.Q3.size(), k2.k.getChildCount());
        if (indexOfChild < 0 || indexOfChild >= min || !str.equals(this.Q3.get(indexOfChild))) {
            return false;
        }
        B(5);
        dev.duo.workspaceprobe.b.X x2 = new dev.duo.workspaceprobe.b.X(k2.k, view, indexOfChild, min, o(k2));
        this.b4 = x2;
        x2.a();
        return true;
    }

    private dev.duo.workspaceprobe.b.K i() {
        final dev.duo.workspaceprobe.b.K k2 = new dev.duo.workspaceprobe.b.K();
        k2.d = new android.widget.FrameLayout(this.p4);
        android.view.SurfaceControl.Builder hidden = new android.view.SurfaceControl.Builder().setName("DuoAppRail").setHidden(true);
        try {
            android.view.SurfaceControl.Builder.class.getMethod("setContainerLayer", null).invoke(hidden, null);
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.w("DuoRail", "Container layer unavailable; plain layer used", e2);
        }
        k2.b = hidden.build();
        android.view.SurfaceControl.Builder parent = new android.view.SurfaceControl.Builder().setName("DuoAppRailFloor").setParent(k2.b);
        try {
            android.view.SurfaceControl.Builder.class.getMethod("setColorLayer", null).invoke(parent, null);
        } catch (java.lang.ReflectiveOperationException e3) {
            android.util.Log.w("DuoRail", "Colour layer unavailable for rail floor", e3);
        }
        k2.q = parent.build();
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            transaction.setLayer(k2.q, 0).setCrop(k2.q, new android.graphics.Rect(0, 0, 205, 1712)).setVisibility(k2.q, true);
            a(transaction, k2, a);
            dev.duo.workspaceprobe.b.S s2 = new dev.duo.workspaceprobe.b.S(this.p4);
            k2.h = s2;
            s2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda212
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.workspaceprobe.b.this.c(view);
                }
            });
            a(k2, k2.h, 1037.0f, 1496, 48, 48, 0.0f);
            k2.h.setVisibility(this.g4 ? 0 : 8);
            k2.h.b = !this.N2.isEmpty();
            android.widget.FrameLayout w2 = w(1);
            int i2 = 0;
            while (true) {
                android.widget.ImageView[] imageViewArr = k2.i;
                if (i2 >= imageViewArr.length) {
                    break;
                }
                imageViewArr[i2] = new dev.duo.workspaceprobe.b.T(this.p4);
                a(w2, k2.i[i2], i2, 120, 30, j0);
                i2++;
            }
            k2.e = w2;
            a(k2, w2, 971.0f, this.Y5, 180, c(3), 60.0f);
            w2.setVisibility(4);
            dev.duo.workspaceprobe.b.h0 h0Var = new dev.duo.workspaceprobe.b.h0(this.p4, false);
            k2.r = h0Var;
            h0Var.U = true;
            c(h0Var);
            dev.duo.workspaceprobe.b.h0 h0Var2 = this.Z0;
            if (h0Var2 != null) {
                k2.r.d(h0Var2);
            }
            k2.r.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda213
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.workspaceprobe.b.this.a(k2, view);
                }
            });
            k2.r.a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda214
                @Override // java.util.function.Consumer
                public final void accept(java.lang.Object obj) {
                    dev.duo.workspaceprobe.b.this.b(k2, (android.view.View) obj);
                }
            });
            a(k2, k2.r, 963.0f, this.N3[1] + W, 205, 420, 0.0f);
            k2.s = new dev.duo.workspaceprobe.b.U(this.p4);
            dev.duo.workspaceprobe.b.N n2 = new dev.duo.workspaceprobe.b.N(50.0f);
            k2.t = n2;
            k2.s.setBackground(n2);
            k2.s.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda215
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.workspaceprobe.b.this.d(view);
                }
            });
            k2.s.setOnLongClickListener(new android.view.View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda216
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(android.view.View view) {
                    boolean e4;
                    e4 = dev.duo.workspaceprobe.b.this.e(view);
                    return e4;
                }
            });
            k2.s.setVisibility(this.M3 ? 0 : 8);
            a(k2, k2.s, 1011.0f, 1544, 100, 100, 50.0f);
            k2.h.bringToFront();
            try {
                java.lang.Class<?> cls = java.lang.Class.forName("android.view.ViewTreeObserver$OnComputeInternalInsetsListener");
                java.lang.Class<?> cls2 = java.lang.Class.forName("android.view.ViewTreeObserver$InternalInsetsInfo");
                final java.lang.reflect.Method method = cls2.getMethod("setTouchableInsets", java.lang.Integer.TYPE);
                final java.lang.reflect.Field field = cls2.getField("touchableRegion");
                android.view.ViewTreeObserver.class.getMethod("addOnComputeInternalInsetsListener", cls).invoke(k2.d.getViewTreeObserver(), java.lang.reflect.Proxy.newProxyInstance(cls.getClassLoader(), new java.lang.Class[]{cls}, new java.lang.reflect.InvocationHandler() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda217
                    @Override // java.lang.reflect.InvocationHandler
                    public final java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method2, java.lang.Object[] objArr) {
                        java.lang.Object a2;
                        a2 = dev.duo.workspaceprobe.b.this.a(method, k2, field, obj, method2, objArr);
                        return a2;
                    }
                }));
                dev.duo.workspaceprobe.b.R r2 = new dev.duo.workspaceprobe.b.R("decor_content", k2.d, 963.0f, 0, 205, 1712, 0, 0.0f, 40);
                k2.c = r2;
                transaction.reparent(r2.b, k2.b).setPosition(k2.c.b, 0.0f, 0.0f).setCrop(k2.c.b, new android.graphics.Rect(0, 0, 205, 1712)).setLayer(k2.c.b, 1).setVisibility(k2.c.b, true);
                transaction.apply();
                transaction.close();
                f(k2);
                return k2;
            } catch (java.lang.ReflectiveOperationException e4) {
                throw new java.lang.IllegalStateException("App rail touch region unavailable", e4);
            }
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object n(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        android.graphics.Rect rect;
        android.content.ComponentName componentName;
        android.content.ComponentName componentName2;
        java.lang.Object proceed = chain.proceed();
        android.graphics.Rect rect2 = (android.graphics.Rect) chain.getArg(0);
        android.graphics.Rect rect3 = (android.graphics.Rect) chain.getArg(1);
        android.graphics.Rect rect4 = (android.graphics.Rect) chain.getArg(2);
        int intValue = ((java.lang.Integer) chain.getArg(3)).intValue();
        android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) chain.getArg(4);
        android.app.ActivityManager.RunningTaskInfo runningTaskInfo2 = (android.app.ActivityManager.RunningTaskInfo) chain.getArg(5);
        if (intValue != 0 || runningTaskInfo == null || runningTaskInfo.topActivity == null || !(runningTaskInfo2 == null || runningTaskInfo2.topActivity == null)) {
            rect = (intValue != 1 || runningTaskInfo2 == null || runningTaskInfo2.topActivity == null || !(runningTaskInfo == null || runningTaskInfo.topActivity == null)) ? null : rect3;
        } else {
            rect = rect4;
        }
        java.lang.String str = "";
        final java.lang.String packageName = (runningTaskInfo == null || (componentName2 = runningTaskInfo.topActivity) == null) ? "" : componentName2.getPackageName();
        if (runningTaskInfo2 != null && (componentName = runningTaskInfo2.topActivity) != null) {
            str = componentName.getPackageName();
        }
        final java.lang.String str2 = str;
        final boolean z2 = (packageName.isEmpty() || str2.isEmpty() || "com.miui.home".equals(packageName) || "com.miui.home".equals(str2) || rect2 == null || rect2.width() != R || rect2.height() != S) ? false : true;
        final android.app.ActivityManager.RunningTaskInfo runningTaskInfo3 = z2 ? runningTaskInfo : null;
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda183
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(runningTaskInfo3, z2, packageName, str2);
            }
        });
        final int i2 = (((java.lang.Boolean) chain.getArg(6)).booleanValue() || rect2 == null || rect2.width() != R || rect2.height() != S || rect == null || rect.isEmpty() || rect.width() >= rect2.width() || !rect2.contains(rect) || rect.top != rect2.top || rect.bottom != rect2.bottom) ? -1 : rect2.right - rect.right;
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda184
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.n(i2);
            }
        });
        return proceed;
    }

    private boolean b(dev.duo.workspaceprobe.b.R r2) {
        if (r2 == null) {
            return false;
        }
        if (r2 == this.A5 || r2 == this.B5 || r2 == this.C5 || r2 == this.D5) {
            return true;
        }
        for (dev.duo.workspaceprobe.b.R r3 : this.H5) {
            if (r2 == r3) {
                return true;
            }
        }
        return false;
    }

    private void b(android.view.Display display) {
        int a2 = a(display);
        if (a2 == this.k4) {
            if (this.n4.isEmpty()) {
                return;
            }
            q1();
            return;
        }
        this.k4 = a2;
        this.l4++;
        t1();
        if (a2 != 0) {
            long j2 = this.r6;
            if (j2 > 0) {
                this.s6 = java.lang.Math.max(this.s6, j2 + 1);
            }
        }
        if (a2 != 0) {
            this.o6 = java.lang.Math.max(this.o6, android.os.SystemClock.uptimeMillis());
        }
        int i2 = 0;
        this.j6 = false;
        this.k6 = false;
        this.l6 = -1;
        this.n6 = 0.0f;
        if (a2 == 0 && this.i6) {
            v1();
        }
        java.util.Iterator<java.lang.Runnable> it = this.m4.iterator();
        while (it.hasNext()) {
            this.D1.removeCallbacks(it.next());
        }
        this.m4.clear();
        this.P5.clear();
        this.Q5.clear();
        this.O5 = false;
        this.M5 = a2 == 0 ? 1.0f : 0.0f;
        this.N5 = 0.0f;
        this.O6 = false;
        this.N6 = false;
        this.R5 = -1L;
        dev.duo.workspaceprobe.b.h0 h0Var = this.Z0;
        if (h0Var != null) {
            h0Var.h0 = -1;
            h0Var.invalidate();
        }
        if (a2 != 0) {
            i2 = q1();
        }
        android.util.Log.w("DuoLegacyDock", "v155 scope=" + a2 + " released=" + i2 + " hosts=" + s0() + " epoch=" + this.l4);
    }

    private float d(dev.duo.workspaceprobe.b.R r2) {
        if (this.i4) {
            if (r2 == this.V6) {
                return this.N3[3] + 78;
            }
            if (r2 == this.G5) {
                return ((170 - r2.g) / 2.0f) + 2154.0f;
            }
            if (r2 == this.B5 || r2 == this.C5) {
                return 2154.0f;
            }
        }
        if (this.h4 == 0) {
            if (r2 == this.V6) {
                return (this.O5 ? 47.0f : 158.0f) + this.N3[0];
            }
            return (r2 != this.G5 || this.O5) ? r2.h : r2.h - 7;
        }
        if (r2 == this.V6) {
            return this.N3[2] + V;
        }
        if (r2 == this.G5) {
            return r2.h + a0;
        }
        if (r2 != this.B5 && r2 != this.C5) {
            return r2.h;
        }
        return r2.h + b0;
    }

    private android.view.SurfaceControl h(int i2) {
        java.lang.String className;
        android.app.ActivityManager.RunningTaskInfo runningTaskInfo;
        if (this.C2 != null && this.V0 != null) {
            for (android.app.ActivityManager.RunningTaskInfo runningTaskInfo2 : this.J0.values()) {
                android.content.ComponentName componentName = runningTaskInfo2.topActivity;
                if (componentName != null && "com.miui.home".equals(componentName.getPackageName()) && (className = componentName.getClassName()) != null && className.contains("Launcher")) {
                    try {
                        if (this.D2 == null) {
                            runningTaskInfo = null;
                        } else {
                            runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.D2.invoke(this.V0, java.lang.Integer.valueOf(runningTaskInfo2.taskId));
                        }
                        if ((runningTaskInfo != null ? runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) : runningTaskInfo2.getClass().getField("displayId").getInt(runningTaskInfo2)) == i2) {
                            android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) this.C2.invoke(this.V0, java.lang.Integer.valueOf(runningTaskInfo2.taskId));
                            if (surfaceControl == null) {
                                return null;
                            }
                            if (surfaceControl.isValid()) {
                                return surfaceControl;
                            }
                            return null;
                        }
                    } catch (java.lang.ReflectiveOperationException e2) {
                    }
                }
            }
        }
        return null;
    }

    private void d(android.view.MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.J4 = !this.L1 && this.F2 == this.J1 && motionEvent.getRawX() < 963.0f && this.e3 == null && (!this.Y2 || this.d3 == null || motionEvent.getRawX() < ((float) this.b3) || motionEvent.getRawX() >= ((float) (this.b3 + this.d3.f)) || motionEvent.getRawY() < ((float) this.c3) || motionEvent.getRawY() >= ((float) (this.c3 + this.d3.g)));
        } else if (actionMasked != 1 && actionMasked != 3) {
            return;
        }
        if (this.J4) {
            if (actionMasked == 0) {
                this.K4 = motionEvent.getRawX();
                this.L4 = motionEvent.getRawY();
                this.T2 = true;
                if (this.N2.isEmpty()) {
                    return;
                }
                this.R2++;
                w();
                this.O2 = "";
                E(this.E2);
                D0();
                return;
            }
            this.T2 = false;
            this.S2 = android.os.SystemClock.uptimeMillis();
            if (!this.N2.isEmpty()) {
                D0();
            }
            if (actionMasked != 1 || this.L4 < 1512.0f || java.lang.Math.abs(motionEvent.getRawX() - this.K4) >= 40.0f || java.lang.Math.abs(motionEvent.getRawY() - this.L4) >= 40.0f) {
                return;
            }
            d(300L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(java.lang.String str) {
        android.content.ComponentName componentName;
        this.I2.remove(str);
        for (android.app.ActivityManager.RunningTaskInfo runningTaskInfo : this.J0.values()) {
            android.content.ComponentName componentName2 = runningTaskInfo.topActivity;
            if (componentName2 != null && str.equals(componentName2.getPackageName()) && (!str.equals(this.G2) || runningTaskInfo.taskId != this.F2)) {
                this.A2.remove(java.lang.Integer.valueOf(runningTaskInfo.taskId));
                z(runningTaskInfo.taskId);
            }
        }
        if (str.equals(this.G2)) {
            this.B2 = "";
            this.E2++;
            android.app.ActivityManager.RunningTaskInfo runningTaskInfo2 = this.J0.get(java.lang.Integer.valueOf(this.J1));
            if (runningTaskInfo2 == null || (componentName = runningTaskInfo2.topActivity) == null) {
                return;
            }
            a(runningTaskInfo2.taskId, componentName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(int i2) {
        if (this.A4 == i2) {
            return;
        }
        this.A4 = i2;
        android.util.Log.i("DuoSplitHome", "Right inset=" + i2);
        Q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        android.animation.ValueAnimator valueAnimator = this.D4;
        this.D4 = null;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    private void b(android.view.View view) {
        view.animate().cancel();
        view.clearAnimation();
        view.setOnClickListener(null);
        view.setOnTouchListener(null);
        view.setEnabled(false);
        if (view instanceof android.widget.ImageView) {
            ((android.widget.ImageView) view).setImageDrawable(null);
        }
        if (view instanceof android.view.ViewGroup) {
            android.view.ViewGroup viewGroup = (android.view.ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                b(viewGroup.getChildAt(i2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(android.view.View view) {
        if (!this.M3 || this.O6) {
            return;
        }
        a(new android.content.Intent("android.search.action.GLOBAL_SEARCH").addFlags(268435456));
    }

    private static android.os.Bundle f(java.lang.String str) {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putString("unavailable", str);
        return bundle;
    }

    private boolean f() {
        boolean z2 = !this.L1 && this.M1 && !"com.android.systemui".equals(this.I1) && (!this.N1 || j(this.I1));
        if (!z2 || !r0()) {
            return z2;
        }
        android.app.ActivityManager.RunningTaskInfo runningTaskInfo = this.J0.get(java.lang.Integer.valueOf(this.J1));
        if (runningTaskInfo == null) {
            return false;
        }
        try {
            if (!runningTaskInfo.getClass().getField("isFocused").getBoolean(runningTaskInfo)) {
                return false;
            }
            if (this.v2) {
                return D(this.J1);
            }
            return new android.graphics.Rect(0, 0, v0, 1712).equals(f(runningTaskInfo.getClass().getField("appCompatTaskInfo").get(runningTaskInfo)));
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.w("DuoRail", "App focus unavailable", e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(android.view.View view) {
        y();
    }

    private void h(android.app.ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo == null) {
            return;
        }
        if (this.U0 == null && android.os.Looper.myLooper() != null) {
            this.U0 = new android.os.Handler(android.os.Looper.myLooper());
        }
        this.K0.remove(java.lang.Integer.valueOf(runningTaskInfo.taskId));
        this.J0.put(java.lang.Integer.valueOf(runningTaskInfo.taskId), runningTaskInfo);
        this.L0.add(java.lang.Integer.valueOf(runningTaskInfo.taskId));
        b(runningTaskInfo);
    }

    private void b(android.content.Intent intent) {
        if (r0() && t0()) {
            a(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.String str, android.app.ActivityManager.RunningTaskInfo runningTaskInfo, boolean z2, int i2, boolean z3) {
        a(str, runningTaskInfo.taskId, z2, i2, z3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(java.lang.Runnable runnable) {
        this.D1.post(runnable);
    }

    private static boolean a(android.content.ComponentName componentName) {
        if (componentName == null || !"com.android.intentresolver".equals(componentName.getPackageName())) {
            return false;
        }
        return "com.android.intentresolver.ChooserActivity".equals(componentName.getClassName()) || "com.android.intentresolver.ResolverActivity".equals(componentName.getClassName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(final android.view.SurfaceControl surfaceControl, final int i2) {
        n();
        android.animation.ValueAnimator ofFloat = android.animation.ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(380L);
        ofFloat.setInterpolator(new android.view.animation.DecelerateInterpolator(2.0f));
        ofFloat.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda12
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
                dev.duo.workspaceprobe.b.a(surfaceControl, i2, valueAnimator);
            }
        });
        this.D4 = ofFloat;
        ofFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(java.lang.Object obj) {
        if (this.w5 != obj || this.y5) {
            return;
        }
        this.v5 = true;
        z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object h(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        this.D1.post(new dev.duo.workspaceprobe.b$$ExternalSyntheticLambda65(this));
        return proceed;
    }

    private static boolean a(android.content.Context context) {
        if (context == null) {
            return false;
        }
        android.view.Display display = ((android.hardware.display.DisplayManager) context.getSystemService(android.hardware.display.DisplayManager.class)).getDisplay(0);
        android.view.Display.Mode mode = display == null ? null : display.getMode();
        return mode != null && mode.getPhysicalWidth() == 1168 && mode.getPhysicalHeight() == 1712 && display.getRotation() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(int i2) {
        int i3;
        int[] iArr = this.W5.get(java.lang.Integer.valueOf(i2));
        return u() && D(i2) && iArr != null && (i3 = iArr[2]) >= j0 && i3 <= 260 && !java.lang.Boolean.FALSE.equals(this.b6.get(java.lang.Integer.valueOf(i2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(boolean z2) {
        if (this.M3 == z2) {
            return;
        }
        this.M3 = z2;
        l1();
    }

    private int p(dev.duo.workspaceprobe.b.K k2) {
        dev.duo.workspaceprobe.q qVar = k2.a;
        return qVar != null ? qVar.k().top : H1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(android.view.View view) {
        if (this.M3 && t()) {
            a(new android.content.Intent("android.search.action.GLOBAL_SEARCH").addFlags(268435456));
        }
    }

    private static void p(android.view.View view) {
        view.setScaleX(0.0f);
        view.setScaleY(0.0f);
        view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(200L).setInterpolator(new android.view.animation.OvershootInterpolator(1.6f)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public void d(dev.duo.workspaceprobe.b.K k2) {
        try {
            dev.duo.workspaceprobe.b.R r2 = k2.c;
            if (r2 != null) {
                r2.b();
            }
            try {
                android.view.SurfaceControl surfaceControl = k2.q;
                if (surfaceControl != null) {
                    surfaceControl.release();
                }
            } finally {
                android.view.SurfaceControl surfaceControl2 = k2.b;
                if (surfaceControl2 != null) {
                    surfaceControl2.release();
                }
            }
        } catch (java.lang.Throwable th) {
            try {
                android.view.SurfaceControl surfaceControl3 = k2.q;
                if (surfaceControl3 != null) {
                    surfaceControl3.release();
                }
                android.view.SurfaceControl surfaceControl4 = k2.b;
                if (surfaceControl4 != null) {
                    surfaceControl4.release();
                }
                throw th;
            } finally {
                android.view.SurfaceControl surfaceControl5 = k2.b;
                if (surfaceControl5 != null) {
                    surfaceControl5.release();
                }
            }
        }
    }

    private void a(java.lang.String str, int i2, boolean z2, int i3, boolean z3) {
        this.b2 = z3;
        java.lang.String str2 = this.I1;
        if (z2 && i2 != this.J1 && this.X6 != 0.0f) {
            this.X6 = 0.0f;
            android.util.Log.w("DuoSearch", "Search progress reset on home task change task=" + i2);
        }
        if (z2 && !this.L1 && this.u6 == null) {
            synchronized (this.F6) {
                this.G6 = false;
                this.F6.notifyAll();
            }
        }
        if (!str.equals(this.I1) || i2 != this.J1) {
            this.K1++;
            if (this.Z3 != null || this.a4 != null) {
                q();
            }
        }
        this.I1 = str;
        if (i2 != this.J1 || z2 != this.L1) {
            this.f6 = false;
        }
        this.J1 = i2;
        this.L1 = z2;
        if (dev.duo.icons.g.a.equals(str2) && !str.equals(str2)) {
            m("settings closed");
        }
        if (!z2 && this.R6 && (!r0() || !this.j6 || this.l6 != 2)) {
            a("app foreground " + str, false, false);
        }
        if (z2) {
            this.M1 = true;
        } else if (i3 == 1 && !"com.android.systemui".equals(str)) {
            f1();
        } else {
            this.M1 = false;
        }
        if (!str.equals(str2) || str.equals(this.c2)) {
            l(str);
        }
        Q();
        if (this.z5 != null) {
            z();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        dev.duo.workspaceprobe.b.b0 b0Var = this.a4;
        this.a4 = null;
        if (b0Var != null) {
            b0Var.b();
        }
    }

    private void b(android.view.MotionEvent motionEvent) {
        try {
            c(motionEvent);
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "Shade gesture failed", th);
            this.S4 = false;
            this.T4 = false;
        }
        try {
            this.E4.d(motionEvent);
        } catch (java.lang.Throwable th2) {
            android.util.Log.e("DuoWorkbench", "Corner gesture failed", th2);
            this.E4.V();
        }
        d(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(int i2) {
        android.app.ActivityManager.RunningTaskInfo runningTaskInfo;
        try {
            if (this.h1 && this.i1 == i2 && this.u1 && w0() && R0() && a(q0()) == 1 && (runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.V0.getClass().getMethod("getRunningTaskInfo", java.lang.Integer.TYPE).invoke(this.V0, java.lang.Integer.valueOf(i2))) != null && runningTaskInfo.getClass().getField("isFocused").getBoolean(runningTaskInfo) && runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) == 0) {
                java.lang.Object obj = runningTaskInfo.getClass().getField("configuration").get(runningTaskInfo);
                java.lang.Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
                if (((java.lang.Integer) obj2.getClass().getMethod("getActivityType", null).invoke(obj2, null)).intValue() == 1 && ((java.lang.Integer) obj2.getClass().getMethod("getWindowingMode", null).invoke(obj2, null)).intValue() == 1 && ((java.lang.Boolean) this.q1.invoke(this.l1, null)).booleanValue() && !((java.lang.Boolean) this.p1.invoke(this.l1, null)).booleanValue() && !((java.lang.Boolean) this.r1.invoke(this.m1, null)).booleanValue()) {
                    this.o1.invoke(this.k1, 0, java.lang.Integer.valueOf(i2), -1, java.lang.Boolean.TRUE);
                    android.util.Log.i("DuoFoldSplit", "Native split requested task=" + i2);
                }
            }
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e("DuoFoldSplit", "Native split request failed", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(dev.duo.workspaceprobe.b.h0 h0Var) {
        boolean z2 = android.provider.Settings.Global.getInt(this.p4.getContentResolver(), "airplane_mode_on", 0) != 0;
        if (z2 == h0Var.Q) {
            return;
        }
        h0Var.Q = z2;
        m1();
    }

    private boolean h() {
        return this.Y0 && r0() && f();
    }

    private void b(boolean z2) {
        if (this.Y4 == z2) {
            return;
        }
        this.Y4 = z2;
        this.u5 = false;
        if (z2) {
            long uptimeMillis = android.os.SystemClock.uptimeMillis();
            if (this.b5 && uptimeMillis >= this.c5) {
                this.b5 = false;
                this.c5 = 0L;
                android.util.Log.w("DuoStandby", "Standby failure latch cleared by enabling the clock");
            }
            if (!this.b5) {
                N1();
            }
        }
        z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean e(android.view.View view) {
        if (!this.M3 || !t() || !R0()) {
            return true;
        }
        o0();
        return true;
    }

    private boolean e() {
        return !this.O1 && t0() && this.F1 && f() && G1() > 0.001f && this.l6 == 1 && this.n6 >= 0.999f;
    }

    private void b(android.widget.FrameLayout frameLayout, android.view.View view, int i2) {
        a(frameLayout, view, i2, 120, 30, j0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(android.content.Intent intent, android.view.View view) {
        b(intent);
    }

    private void b(android.app.ActivityManager.RunningTaskInfo runningTaskInfo) {
        try {
            boolean f2 = f(runningTaskInfo);
            java.lang.Boolean put = this.b6.put(java.lang.Integer.valueOf(runningTaskInfo.taskId), java.lang.Boolean.valueOf(f2));
            a(runningTaskInfo.taskId, (android.view.SurfaceControl.Transaction) null);
            dev.duo.workspaceprobe.b.K k2 = this.T5.get(java.lang.Integer.valueOf(runningTaskInfo.taskId));
            if (k2 != null) {
                if (put == null || put.booleanValue() != f2) {
                    android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                    try {
                        a(transaction, k2, d(runningTaskInfo.taskId));
                        transaction.apply();
                        transaction.close();
                        android.util.Log.w("DuoRail", "App rail decor task=" + runningTaskInfo.taskId + " outer=" + f2 + " shown=" + d(runningTaskInfo.taskId));
                    } finally {
                    }
                }
            }
        } catch (java.lang.Throwable th) {
            if (this.c6) {
                return;
            }
            this.c6 = true;
            android.util.Log.w("DuoRail", "App rail decor bounds check failed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.String str, int i2) {
        this.d2 = str;
        this.e2 = (android.view.WindowInsets.Type.statusBars() & i2) != 0;
        if (this.c2.isEmpty()) {
            return;
        }
        l(this.c2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final java.lang.String str, final long j2) {
        final long a2 = this.M0.a();
        final dev.duo.workspaceprobe.a.b a3 = a(str, "foreground");
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda201
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(j2, a3, str, a2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final long j2, dev.duo.workspaceprobe.a.b bVar, java.lang.String str, long j3) {
        this.N1 = false;
        if (j2 != this.K1) {
            f1();
            return;
        }
        if (bVar == null) {
            dev.duo.workspaceprobe.a.b b2 = this.M0.b(str);
            this.M1 = b2 != null && b2.a;
            if (b2 != null) {
                a(b2.b);
            }
            if (this.h2 != j2) {
                this.h2 = j2;
                this.j2 = 0;
            }
            int i2 = this.j2;
            this.j2 = i2 + 1;
            long a2 = dev.duo.workspaceprobe.a.a(i2);
            this.i2 = android.os.SystemClock.uptimeMillis() + a2;
            android.util.Log.w("DuoRail", "Duo config unknown pkg=" + str + " known=" + (b2 != null) + " retryMs=" + a2);
            this.D1.postDelayed(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda80
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(j2);
                }
            }, a2);
            Q();
            return;
        }
        dev.duo.workspaceprobe.a.C0008a a3 = this.M0.a(str, bVar, j3);
        if (a3 == null) {
            bVar = this.M0.b(str);
        }
        B1();
        if (bVar == null) {
            Q();
            return;
        }
        this.g2 = j2;
        this.M1 = bVar.a;
        a(bVar.b);
        if (a3 != null && a3.b) {
            q(str);
        }
        Q();
    }

    private void i(int i2) {
        if (e()) {
            A(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(dev.duo.workspaceprobe.b.K k2, android.view.View view) {
        q(view);
        if (t() && k2.u == this.J1 && R0()) {
            A0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(final int i2, final dev.duo.workspaceprobe.b.L l2) {
        if (this.U5.get(java.lang.Integer.valueOf(i2)) != l2) {
            return;
        }
        try {
            final dev.duo.workspaceprobe.b.K i3 = i();
            this.U0.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda210
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(l2, i2, i3);
                }
            });
        } catch (java.lang.Throwable th) {
            this.U0.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda211
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.L.this.c = false;
                }
            });
            android.util.Log.w("DuoRail", "App rail decor late build failed task=" + i2, th);
        }
    }

    private void b(int i2, android.view.SurfaceControl.Transaction transaction) {
        final dev.duo.workspaceprobe.b.K remove = this.T5.remove(java.lang.Integer.valueOf(i2));
        if (remove == null) {
            return;
        }
        if (transaction != null) {
            a(transaction, remove, false);
            transaction.reparent(remove.b, null);
        }
        android.util.Log.w("DuoRail", "App rail decor detach task=" + i2);
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda130
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.c(remove);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j2) {
        if (j2 == this.K1) {
            f1();
        }
    }

    private dev.duo.workspaceprobe.a.b a(java.lang.String str, java.lang.String str2) {
        dev.duo.workspaceprobe.a.b bVar;
        java.lang.String str3;
        if (android.os.Looper.myLooper() != null) {
            android.util.Log.e("DuoRail", "Duo config read refused on looper thread " + java.lang.Thread.currentThread().getName() + " pkg=" + str);
            return null;
        }
        long uptimeMillis = android.os.SystemClock.uptimeMillis();
        try {
            android.content.Context context = this.p4;
            if (context == null) {
                context = (android.content.Context) java.lang.Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
            }
            if (context == null) {
                return null;
            }
            android.content.SharedPreferences x2 = x();
            if (x2 != null) {
                int b2 = dev.duo.hookprobe.P.b(x2, str, this.n2);
                dev.duo.workspaceprobe.a.b bVar2 = new dev.duo.workspaceprobe.a.b(!dev.duo.hookprobe.P.i.contains(str) && x2.getBoolean(new java.lang.StringBuilder().append(str).append("/enabled").toString(), dev.duo.hookprobe.P.e(str)) && dev.duo.hookprobe.P.b(x2) && w0(), android.graphics.Color.luminance(b2) <= 0.45f, b2, dev.duo.hookprobe.P.a(x2, str, this.n2) != null, dev.duo.hookprobe.P.d(x2, str), dev.duo.hookprobe.P.c(x2, str));
                if (str2 != null) {
                    android.util.Log.w("DuoRail", "Duo config read pkg=" + str + " reason=" + str2 + " direct ms=" + (android.os.SystemClock.uptimeMillis() - uptimeMillis) + " enabled=" + bVar2.a + " black=" + bVar2.b);
                }
                return bVar2;
            }
            android.os.Bundle bundle = new android.os.Bundle();
            bVar = null;
            try {
                bundle.putBoolean("railNight", this.n2);
                android.os.Bundle call = context.getContentResolver().call(android.net.Uri.parse("content://dev.duo.hookprobe.config"), "railEnabled", str, bundle);
                dev.duo.workspaceprobe.a.b a2 = dev.duo.workspaceprobe.a.a(call != null, call != null && call.containsKey("enabled"), call != null && call.getBoolean("enabled", false) && w0(), call != null && android.graphics.Color.luminance(call.getInt("railBackground", a)) <= 0.45f, call == null ? a : call.getInt("railBackground", a), call != null && call.getBoolean("railCustomBackground", false), call != null && call.getBoolean("innerNativeBar", false), call == null ? 0 : call.getInt("hiddenTop", 0), call != null && call.containsKey("error"));
                if (str2 != null) {
                    java.lang.StringBuilder append = new java.lang.StringBuilder().append("Duo config read pkg=").append(str).append(" reason=").append(str2).append(" thread=").append(java.lang.Thread.currentThread().getName()).append(" ms=").append(android.os.SystemClock.uptimeMillis() - uptimeMillis);
                    if (a2 == null) {
                        str3 = " failed=" + (call == null ? "no response" : call.getString("error", "no enabled"));
                    } else {
                        str3 = " enabled=" + a2.a + " black=" + a2.b;
                    }
                    android.util.Log.w("DuoRail", append.append(str3).toString());
                }
                return a2;
            } catch (java.lang.Throwable th) {
                th = th;
                if (str2 != null) {
                    android.util.Log.w("DuoRail", "Duo config read failed pkg=" + str + " reason=" + str2, th);
                }
                return bVar;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            bVar = null;
        }
    }

    private void b(java.lang.ClassLoader classLoader) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.wm.shell.common.transition.DefaultTransitionImpl", false, classLoader);
            java.lang.Class<?> cls2 = java.lang.Class.forName("android.window.TransitionInfo", false, classLoader);
            java.lang.Class<?> cls3 = java.lang.Class.forName("android.window.TransitionInfo$Change", false, classLoader);
            final java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod("hasLetterboxOffsetFlag", cls3);
            final java.lang.reflect.Method declaredMethod2 = cls.getDeclaredMethod("hasAppCompatLetterboxBounds", cls3);
            final java.lang.reflect.Method declaredMethod3 = cls.getDeclaredMethod("applyAppFrameInitialize", android.view.animation.Animation.class, android.graphics.Rect.class, cls3, java.lang.Boolean.TYPE);
            java.lang.reflect.Method[] methodArr = {declaredMethod, declaredMethod2, declaredMethod3};
            for (int i2 = 0; i2 < 3; i2++) {
                methodArr[i2].setAccessible(true);
            }
            final java.lang.reflect.Method method = cls3.getMethod("getTaskInfo", null);
            final java.lang.reflect.Method method2 = cls3.getMethod("getFlags", null);
            final java.lang.reflect.Method method3 = cls3.getMethod("getEndAbsBounds", null);
            final java.lang.reflect.Method method4 = cls3.getMethod("getEndDisplayId", null);
            final int i3 = cls2.getField("FLAG_IN_TASK_WITH_EMBEDDED_ACTIVITY").getInt(null) | cls2.getField("FLAG_FILLS_TASK").getInt(null);
            hook(cls.getDeclaredMethod("updateTranslateAnimationIfNeeded", cls2, android.view.animation.Animation.class, cls3)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda4
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(method, method2, i3, declaredMethod, declaredMethod2, method3, method4, declaredMethod3, chain);
                    return a2;
                }
            });
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "Embedded letterbox animation hook failed", th);
        }
    }

    private float c(dev.duo.workspaceprobe.b.R r2) {
        if (!this.i4) {
            int i2 = this.h4;
            return (i2 == 0 || !(r2 == this.V6 || r2 == this.G5)) ? r2.e + i2 : r2.e + i2 + U;
        }
        if (r2 == this.V6) {
            return 1438.0f;
        }
        if (r2 == this.G5) {
            return 1486.0f;
        }
        if (r2 == this.B5) {
            return 314.0f;
        }
        return r2 == this.C5 ? e(4) + 338 : r2.e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(android.view.View view) {
        if (!R0() || this.s3) {
            return;
        }
        q(view);
        z0();
    }

    private void l(boolean z2) {
        if (z2 == this.M6) {
            return;
        }
        android.util.Log.w("DuoRail", "IME " + (z2 ? "shown" : "hidden"));
        this.M6 = z2;
        h2();
        if (this.F1 && r0()) {
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
    }

    private void c(java.lang.ClassLoader classLoader) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.wm.shell.sosc.SoScSplitScreenController", false, classLoader);
            java.lang.Class<?> cls2 = java.lang.Class.forName("com.android.wm.shell.sosc.SoScUtilsImpl", false, classLoader);
            java.lang.Class<?> cls3 = java.lang.Class.forName("com.android.wm.shell.multiplesplit.MultipleSplitUtils", false, classLoader);
            final java.lang.reflect.Method method = cls.getMethod("getRemoteCallExecutor", null);
            final java.lang.reflect.Method method2 = cls2.getMethod("getInstance", null);
            final java.lang.reflect.Method method3 = cls3.getMethod("getInstance", null);
            java.lang.Class cls4 = java.lang.Integer.TYPE;
            this.o1 = cls.getMethod("updateSplitSnapTarget", cls4, cls4, cls4, java.lang.Boolean.TYPE);
            this.p1 = cls2.getMethod("isSoScActive", null);
            this.q1 = cls2.getMethod("isSoScSupported", null);
            this.r1 = cls3.getMethod("isMultipleSplitActive", null);
            this.s1 = cls3.getMethod("isMultipleSplitSupport", null);
            this.t1 = java.lang.Class.forName("com.android.wm.shell.multiplesplit.MultipleSplitUtilsImpl", false, classLoader).getMethod("dockMultipleSplitTasks", android.os.Bundle.class);
            hook(cls.getDeclaredMethod("onInit", null)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda33
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(method, method2, method3, chain);
                    return a2;
                }
            });
            android.util.Log.i("DuoFoldSplit", "Native split hook ready");
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e("DuoFoldSplit", "Native split entry unavailable", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object l(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        final int intValue = ((java.lang.Integer) chain.getArg(0)).intValue();
        if (intValue == 15) {
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda155
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.S();
                }
            });
        } else if (intValue == F0 || intValue == 1) {
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda156
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.m(intValue);
                }
            });
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object b(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        java.lang.Object arg = chain.getArg(0);
        java.lang.Long remove = this.Q5.remove(arg);
        if (this.P5.remove(arg)) {
            if (remove != null) {
                android.util.Log.w("DuoRail", "Mode transition finished ms=" + (android.os.SystemClock.uptimeMillis() - remove.longValue()));
            }
            this.D1.post(new dev.duo.workspaceprobe.b$$ExternalSyntheticLambda65(this));
        }
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda153
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.M();
            }
        });
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(long j2) {
        if (this.w6 == j2 && this.u6 == null) {
            java.util.function.Consumer<long[]> consumer = this.I6;
            if (consumer != null) {
                consumer.accept(new long[]{0, 0, 0, 0});
            }
            this.j6 = false;
            this.n6 = 0.0f;
            this.B6 = false;
            if (this.F1) {
                android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                try {
                    a(transaction);
                    transaction.apply();
                    transaction.close();
                    return;
                } catch (java.lang.Throwable th) {
                    try {
                        transaction.close();
                    } catch (java.lang.Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            n2();
        }
    }

    private void c(android.view.MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.S4 = false;
            this.T4 = false;
            android.view.MotionEvent motionEvent2 = this.U4;
            if (motionEvent2 != null) {
                motionEvent2.recycle();
                this.U4 = null;
            }
            if (motionEvent.getRawY() > 120.0f || !D1()) {
                return;
            }
            this.S4 = true;
            this.U4 = android.view.MotionEvent.obtain(motionEvent);
            return;
        }
        if (this.T4) {
            a(android.view.MotionEvent.obtain(motionEvent));
            if (actionMasked == 1 || actionMasked == 3) {
                this.T4 = false;
                return;
            }
            return;
        }
        if (this.S4) {
            if (actionMasked != 2) {
                if (actionMasked == 1 || actionMasked == 3 || actionMasked == 5) {
                    this.S4 = false;
                    return;
                }
                return;
            }
            float rawX = motionEvent.getRawX() - this.U4.getRawX();
            float rawY = motionEvent.getRawY() - this.U4.getRawY();
            if (rawY <= android.view.ViewConfiguration.get(this.p4).getScaledTouchSlop() || rawY <= java.lang.Math.abs(rawX) * 1.2f) {
                if (rawY < (-r5) || java.lang.Math.abs(rawX) > r5 * 2) {
                    this.S4 = false;
                    return;
                }
                return;
            }
            this.S4 = false;
            if (!z1()) {
                android.util.Log.w("DuoRail", "Shade entry not ready proxy=" + (this.M4 != null));
            } else if (E0()) {
                this.T4 = true;
                android.util.Log.w("DuoRail", "Shade pull from app x=" + java.lang.Math.round(this.U4.getRawX()) + " y=" + java.lang.Math.round(this.U4.getRawY()) + " foreground=" + this.I1);
                a(android.view.MotionEvent.obtain(this.U4));
                a(android.view.MotionEvent.obtain(motionEvent));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.util.List list) {
        java.util.Iterator it = list.iterator();
        while (it.hasNext()) {
            q((java.lang.String) it.next());
        }
    }

    private boolean b(boolean z2, java.util.Set<java.lang.String> set) {
        b(q0());
        if (!r0() || !t0()) {
            return false;
        }
        if (z2 && !v() && (!this.O5 || this.R5 != this.K1)) {
            a(this.J5, set);
            this.R5 = this.K1;
        }
        this.O5 = z2;
        h2();
        android.util.Log.w("DuoRail", "Rail target -> " + (z2 ? "app" : "desktop") + "; native progress");
        return true;
    }

    private boolean a(int i2, java.util.List<android.view.SurfaceControl> list, dev.duo.workspaceprobe.b.K k2, int i3) {
        try {
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                if (w0 == null) {
                    w0 = android.view.SurfaceControl.Transaction.class.getMethod("setColor", android.view.SurfaceControl.class, float[].class);
                }
                float[] fArr = {android.graphics.Color.red(i3) / 255.0f, android.graphics.Color.green(i3) / 255.0f, android.graphics.Color.blue(i3) / 255.0f};
                for (android.view.SurfaceControl surfaceControl : list) {
                    if (surfaceControl.isValid()) {
                        w0.invoke(transaction, surfaceControl, fArr);
                    }
                }
                if (k2 != null) {
                    a(transaction, k2, i3);
                }
                transaction.apply();
                transaction.close();
                this.o2.put(java.lang.Integer.valueOf(i2), java.lang.Integer.valueOf(i3));
                return true;
            } finally {
            }
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "Letterbox repaint failed task=" + i2, th);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(android.view.SurfaceControl.Transaction r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.workspaceprobe.b.b(android.view.SurfaceControl$Transaction, boolean):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long[] jArr, int i2, java.util.List list, dev.duo.workspaceprobe.b.K k2, android.animation.ValueAnimator valueAnimator) {
        if (valueAnimator.getCurrentPlayTime() - jArr[0] < 33) {
            return;
        }
        jArr[0] = valueAnimator.getCurrentPlayTime();
        a(i2, (java.util.List<android.view.SurfaceControl>) list, k2, ((java.lang.Integer) valueAnimator.getAnimatedValue()).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.reflect.Method method, java.lang.reflect.Method method2, java.lang.reflect.Constructor constructor, java.lang.reflect.Field field3, java.lang.reflect.Field field4, java.lang.reflect.Field field5, java.lang.reflect.Field field6, java.lang.reflect.Field field7, java.lang.reflect.Field field8, java.lang.reflect.Field field9, java.lang.reflect.Field field10, java.lang.reflect.Field field11, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object[] array = chain.getArgs().toArray();
        java.lang.Object obj = array[0];
        if (r0() && this.V0 != null && !field.getBoolean(obj)) {
            try {
                int i2 = field2.getInt(obj);
                android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) method.invoke(this.V0, java.lang.Integer.valueOf(i2));
                if (runningTaskInfo != null && runningTaskInfo.topActivity != null && i(g(runningTaskInfo)) && runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) == 0 && runningTaskInfo.getClass().getField("isVisibleRequested").getBoolean(runningTaskInfo)) {
                    android.graphics.Rect f2 = f(runningTaskInfo.getClass().getField("appCompatTaskInfo").get(runningTaskInfo));
                    java.lang.Object obj2 = runningTaskInfo.getClass().getField("configuration").get(runningTaskInfo);
                    java.lang.Object obj3 = obj2.getClass().getField("windowConfiguration").get(obj2);
                    android.graphics.Rect rect = new android.graphics.Rect((android.graphics.Rect) obj3.getClass().getMethod("getBounds", null).invoke(obj3, null));
                    if (new android.graphics.Rect(0, 0, 1168, 1712).equals(rect) && new android.graphics.Rect(0, 0, v0, 1712).equals(f2)) {
                        android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) method2.invoke(this.V0, java.lang.Integer.valueOf(i2));
                        if (surfaceControl != null && surfaceControl.isValid()) {
                            java.lang.Object obj4 = field3.get(obj);
                            java.lang.Integer valueOf = java.lang.Integer.valueOf(i2);
                            android.graphics.Rect rect2 = new android.graphics.Rect(f2);
                            java.lang.Object obj5 = runningTaskInfo.getClass().getField("token").get(runningTaskInfo);
                            java.lang.Boolean valueOf2 = java.lang.Boolean.valueOf(field4.getBoolean(obj));
                            java.lang.Boolean valueOf3 = java.lang.Boolean.valueOf(field5.getBoolean(obj));
                            java.lang.Boolean valueOf4 = java.lang.Boolean.valueOf(field6.getBoolean(obj));
                            java.lang.Boolean bool = java.lang.Boolean.FALSE;
                            array[0] = constructor.newInstance(obj4, valueOf, 0, rect, rect2, obj5, surfaceControl, null, bool, valueOf2, valueOf3, valueOf4, bool);
                            android.view.SurfaceControl surfaceControl2 = (android.view.SurfaceControl) field7.get(obj);
                            if (field8.getBoolean(obj) || field9.getInt(obj) != 0 || !f2.equals(field10.get(obj)) || field11.get(obj) != null || surfaceControl2 == null || !surfaceControl2.isValid()) {
                                android.util.Log.w("DuoRail", "Letterbox event unified task=" + i2 + " type=" + field3.get(obj) + " bounds=" + f2 + " parent=" + surfaceControl);
                            }
                        } else {
                            android.util.Log.e("DuoRail", "Letterbox event has no valid organizer leash task=" + i2);
                        }
                    }
                }
            } catch (java.lang.ReflectiveOperationException e2) {
                android.util.Log.e("DuoRail", "Letterbox event unification failed", e2);
            }
        }
        return chain.proceed(array);
    }

    private java.lang.String c(java.lang.String str, java.lang.String str2) {
        try {
            if (this.U1 == null) {
                this.U1 = java.lang.Class.forName("android.os.SystemProperties").getDeclaredMethod("get", java.lang.String.class, java.lang.String.class);
            }
            return ((java.lang.String) this.U1.invoke(null, str, str2)).trim();
        } catch (java.lang.ReflectiveOperationException e2) {
            return str2;
        }
    }

    private void c(dev.duo.workspaceprobe.b.h0 h0Var) {
        if (h0Var == null) {
            return;
        }
        h0Var.a(this.L3, 405 - (this.N3[1] + W));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(android.view.View view) {
        c2();
    }

    private void c(int i2, android.view.SurfaceControl.Transaction transaction) {
        dev.duo.workspaceprobe.b.K k2 = this.T5.get(java.lang.Integer.valueOf(i2));
        if (k2 == null || transaction == null) {
            return;
        }
        a(transaction, k2, d(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(dev.duo.workspaceprobe.b.K k2) {
        boolean z2;
        k2.u = -1;
        k2.w = -1L;
        k2.r.a(false);
        synchronized (this.S5) {
            z2 = this.S5.size() < 3;
            if (z2) {
                this.S5.add(k2);
            }
        }
        if (!z2) {
            d(k2);
        }
        Q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static java.lang.String b(android.telephony.TelephonyDisplayInfo telephonyDisplayInfo) {
        switch (telephonyDisplayInfo.getOverrideNetworkType()) {
            case 1:
            case 2:
                return "4G";
            case 3:
            case 4:
            case 5:
                return "5G";
            default:
                switch (telephonyDisplayInfo.getNetworkType()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case dev.duo.taskcore.h.n /* 11 */:
                    case z /* 16 */:
                        return "2G";
                    case 3:
                    case 5:
                    case 6:
                    case dev.duo.taskcore.h.k /* 8 */:
                    case dev.duo.taskcore.h.l /* 9 */:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                    case 17:
                        return "3G";
                    case F0 /* 13 */:
                        return "4G";
                    case 18:
                    case 19:
                    default:
                        return "";
                    case 20:
                        return "5G";
                }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object c(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        this.Q5.remove(chain.getArg(0));
        if (this.P5.remove(chain.getArg(0))) {
            this.D1.post(new dev.duo.workspaceprobe.b$$ExternalSyntheticLambda65(this));
        }
        java.lang.Object proceed = chain.proceed();
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda84
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.N();
            }
        });
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Thread c(java.lang.Runnable runnable) {
        java.lang.Thread thread = new java.lang.Thread(runnable, "DuoNativeSidebarWriter");
        thread.setDaemon(true);
        return thread;
    }

    private void c(float f2) {
        float max = java.lang.Math.max(0.0f, java.lang.Math.min(1.0f, f2));
        if (max == this.X6) {
            return;
        }
        this.X6 = max;
        if (max != 0.0f && max != 1.0f) {
            if (this.Z6) {
                return;
            }
            this.Z6 = true;
            android.view.Choreographer.getInstance().postFrameCallback(new android.view.Choreographer.FrameCallback() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda112
                @Override // android.view.Choreographer.FrameCallback
                public final void doFrame(long j2) {
                    dev.duo.workspaceprobe.b.this.c(j2);
                }
            });
            return;
        }
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.reflect.Field field3, java.lang.reflect.Field field4, java.lang.reflect.Field field5, java.lang.Object obj, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        boolean z2 = false;
        java.lang.Object arg = chain.getArg(0);
        int i2 = field.getInt(arg);
        android.graphics.Rect rect = (android.graphics.Rect) field2.get(arg);
        java.util.Map<java.lang.Integer, java.lang.Boolean> map = this.d6;
        java.lang.Integer valueOf = java.lang.Integer.valueOf(i2);
        if (rect != null && rect.width() == 1168 && rect.height() == 1712) {
            z2 = true;
        }
        map.put(valueOf, java.lang.Boolean.valueOf(z2));
        if (!field3.getBoolean(arg) && !field4.getBoolean(arg) && x(i2) && field5.get(chain.getThisObject()) != obj) {
            field5.set(chain.getThisObject(), obj);
            if (this.t2.add(java.lang.Integer.valueOf(i2))) {
                android.util.Log.w("DuoRail", "Strip letterbox (outside app only) task=" + i2);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(long j2) {
        this.Z6 = false;
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final java.lang.String str, final dev.duo.workspaceprobe.b.i0 i0Var) {
        final android.os.Bundle a2 = a("pageTones", str, (android.os.Bundle) null);
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda61
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(str, i0Var, a2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.String str, dev.duo.workspaceprobe.b.i0 i0Var, android.os.Bundle bundle) {
        if (this.I2.get(str) != i0Var) {
            return;
        }
        i0Var.a = true;
        boolean z2 = bundle != null && bundle.containsKey("colors");
        i0Var.b = z2;
        if (!z2) {
            this.I2.remove(str);
            android.util.Log.w("DuoPick", "Page colours of " + str + " not available (provider answered " + (bundle == null ? "null" : "no colours") + "), asked again at the next page");
        }
        if (i0Var.b) {
            i0Var.c = bundle.getLong("revision");
            android.os.Bundle bundle2 = bundle.getBundle("colors");
            for (java.lang.String str2 : bundle2.keySet()) {
                i0Var.d.put(str2, java.lang.Integer.valueOf(bundle2.getInt(str2)));
            }
            i0Var.f.addAll(bundle.getStringArrayList("bases"));
            android.os.Bundle bundle3 = bundle.getBundle("edges");
            for (java.lang.String str3 : bundle3.keySet()) {
                i0Var.e.put(str3, java.lang.Integer.valueOf(bundle3.getInt(str3)));
            }
        }
        if (str.equals(this.G2)) {
            E(this.E2);
            d(0L);
            k2();
        }
    }

    private static java.util.List<int[]> a(dev.duo.workspaceprobe.b.i0 i0Var, java.lang.String str, int i2) {
        java.util.TreeMap treeMap = new java.util.TreeMap();
        java.util.Iterator<java.util.Map.Entry<java.lang.String, java.lang.Integer>> it = i0Var.d.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            java.util.Map.Entry<java.lang.String, java.lang.Integer> next = it.next();
            int lastIndexOf = next.getKey().lastIndexOf(35);
            if (lastIndexOf >= 0 && next.getKey().substring(0, lastIndexOf).equals(str)) {
                java.lang.Integer num = i0Var.e.get(next.getKey());
                treeMap.put(java.lang.Integer.valueOf(java.lang.Integer.parseInt(next.getKey().substring(lastIndexOf + 1))), new int[]{num != null ? num.intValue() : 0, next.getValue().intValue()});
            }
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(treeMap.values());
        if (i0Var.f.contains(str)) {
            java.lang.Integer num2 = i0Var.e.get(str);
            arrayList.add(new int[]{num2 != null ? num2.intValue() : 0, i2});
        }
        return arrayList;
    }

    private static int[] a(java.util.List<int[]> list, int i2) {
        int abs;
        int[] iArr = null;
        if (i2 != 0) {
            int i3 = Integer.MAX_VALUE;
            for (int[] iArr2 : list) {
                int i4 = iArr2[0];
                if (i4 != 0 && dev.duo.hookprobe.F.a(i4, i2) && (abs = java.lang.Math.abs(((iArr2[0] >> z) & 255) - ((i2 >> z) & 255)) + java.lang.Math.abs(((iArr2[0] >> 8) & 255) - ((i2 >> 8) & 255)) + java.lang.Math.abs((iArr2[0] & 255) - (i2 & 255))) < i3) {
                    iArr = iArr2;
                    i3 = abs;
                }
            }
        }
        if (i2 == 0) {
            for (int[] iArr3 : list) {
                if (iArr3[0] == 0) {
                    return iArr3;
                }
            }
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(android.telephony.SignalStrength signalStrength) {
        int i2;
        int i3 = -1;
        for (android.telephony.CellSignalStrength cellSignalStrength : signalStrength.getCellSignalStrengths()) {
            java.lang.Object computeIfAbsent = A0.computeIfAbsent(cellSignalStrength.getClass(), new java.util.function.Function() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda15
                @Override // java.util.function.Function
                public final java.lang.Object apply(java.lang.Object obj) {
                    java.lang.Object a2;
                    a2 = dev.duo.workspaceprobe.b.a((java.lang.Class<?>) obj);
                    return a2;
                }
            });
            try {
            } catch (java.lang.ReflectiveOperationException e2) {
                A0.put(cellSignalStrength.getClass(), cellSignalStrength.getClass());
                android.util.Log.w("DuoRail", "MIUI signal level read failed, using AOSP level for " + cellSignalStrength.getClass().getName(), e2);
            }
            if (computeIfAbsent instanceof java.lang.reflect.Method) {
                i2 = ((java.lang.Integer) ((java.lang.reflect.Method) computeIfAbsent).invoke(cellSignalStrength, null)).intValue();
            } else {
                if (computeIfAbsent instanceof java.lang.reflect.Field) {
                    i2 = ((java.lang.reflect.Field) computeIfAbsent).getInt(cellSignalStrength);
                }
                i2 = -1;
            }
            if (i2 < 0) {
                i2 = cellSignalStrength.getLevel();
            }
            i3 = java.lang.Math.max(i3, i2);
        }
        return i3 < 0 ? signalStrength.getLevel() : java.lang.Math.min(4, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.util.List list, java.lang.String str, int i2, int i3, int i4, java.lang.Integer num) {
        java.lang.String str2;
        int[] a2;
        int[] a3 = num == null ? null : a((java.util.List<int[]>) list, num.intValue());
        int i5 = n;
        int i6 = o;
        if (num == null || num.intValue() != 0 || i5 == 0 || (a2 = a((java.util.List<int[]>) list, i5)) == null) {
            str2 = "strict";
        } else {
            str2 = "soft";
            a3 = a2;
        }
        if (num != null && a3 != null && a3[0] == 0 && num.intValue() == 0 && a(str, (java.util.List<int[]>) list)) {
            if (!str.equals(this.L2)) {
                this.L2 = str;
                this.M2 = 0;
            }
            int i7 = this.M2 + 1;
            this.M2 = i7;
            if (i7 < 2) {
                android.util.Log.i("DuoPick", "edge look page=" + str + " not one colour (share " + i6 + "%): looking once more");
                d(400L);
                return;
            }
        } else if (a3 != null && a3[0] != 0) {
            this.M2 = 0;
        }
        if (num != null) {
            android.util.Log.i("DuoPick", "edge look page=" + str + " edge=" + java.lang.Integer.toHexString(num.intValue()) + " soft=" + java.lang.Integer.toHexString(i5) + "(" + i6 + "%) -> " + str2 + " " + (a3 == null ? "none" : java.lang.Integer.toHexString(a3[1])));
        }
        if (a3 == null || i2 != this.E2 || !str.equals(this.H2) || this.V2) {
            return;
        }
        this.J2.put(str, java.lang.Integer.valueOf(a3[1]));
        int i8 = a3[1];
        c(i3, i8 != i4 ? i8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(android.animation.ValueAnimator valueAnimator) {
        boolean z2 = this.T6 >= 0.999f;
        float floatValue = ((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue();
        this.T6 = floatValue;
        if (z2 != (floatValue >= 0.999f)) {
            Q();
            return;
        }
        if (this.F1 && this.L1) {
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
    }

    private void b(float f2) {
        this.W6 = java.lang.Math.max(0.0f, java.lang.Math.min(1.0f, f2));
        if (this.F1 && this.L1) {
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(dev.duo.workspaceprobe.b.J j2) {
        if (this.a7.add(j2)) {
            if (this.a7.size() == 1) {
                android.content.IntentFilter intentFilter = new android.content.IntentFilter();
                intentFilter.addAction("android.media.RINGER_MODE_CHANGED");
                intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
                intentFilter.addAction("android.location.MODE_CHANGED");
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
                intentFilter.addAction("android.net.wifi.WIFI_AP_STATE_CHANGED");
                try {
                    this.p4.registerReceiver(this.e7, intentFilter, null, this.D1);
                    this.b7 = true;
                } catch (java.lang.RuntimeException e2) {
                    android.util.Log.w("DuoRail", "Rail switch receiver unavailable", e2);
                }
                android.content.ContentResolver contentResolver = this.p4.getContentResolver();
                try {
                    this.c7 = true;
                    java.lang.String[] strArr = {"accelerometer_rotation", "screen_brightness_mode", "screen_paper_mode_enabled", "screen_off_timeout"};
                    for (int i2 = 0; i2 < 4; i2++) {
                        contentResolver.registerContentObserver(android.provider.Settings.System.getUriFor(strArr[i2]), false, this.f7);
                    }
                    contentResolver.registerContentObserver(android.provider.Settings.Global.getUriFor("airplane_mode_on"), false, this.f7);
                } catch (java.lang.RuntimeException e3) {
                    android.util.Log.w("DuoRail", "Rail switch observer unavailable", e3);
                }
            }
            k1();
        }
    }

    private boolean a(java.lang.String str, java.util.List<int[]> list) {
        java.lang.Integer num = this.J2.get(str);
        if (num == null) {
            return false;
        }
        for (int[] iArr : list) {
            if (iArr[0] != 0 && iArr[1] == num.intValue()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, final dev.duo.workspaceprobe.b.M m2, final java.util.function.Consumer consumer) {
        final android.view.SurfaceControl surfaceControl;
        if (this.C2 != null) {
            try {
                surfaceControl = (android.view.SurfaceControl) this.C2.invoke(this.V0, java.lang.Integer.valueOf(i2));
            } catch (java.lang.ReflectiveOperationException e2) {
                android.util.Log.e("DuoPick", "Cannot find task", e2);
            }
            this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda128
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(surfaceControl, m2, consumer);
                }
            });
        }
        surfaceControl = null;
        this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda128
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(surfaceControl, m2, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.view.SurfaceControl surfaceControl, dev.duo.workspaceprobe.b.M m2, final java.util.function.Consumer consumer) {
        final java.lang.Integer num;
        if (surfaceControl != null && surfaceControl.isValid()) {
            try {
                num = java.lang.Integer.valueOf(m2.a(surfaceControl));
            } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e2) {
                android.util.Log.e("DuoPick", "Capture failed", e2);
            }
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda126
                @Override // java.lang.Runnable
                public final void run() {
                    consumer.accept(num);
                }
            });
        }
        num = null;
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda126
            @Override // java.lang.Runnable
            public final void run() {
                consumer.accept(num);
            }
        });
    }

    private int a(int i2) {
        java.lang.String g2 = g(this.J0.get(java.lang.Integer.valueOf(i2)));
        dev.duo.workspaceprobe.a.b b2 = g2 == null ? null : this.M0.b(g2);
        return b2 == null ? a : b2.f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i2, final android.content.ComponentName componentName) {
        final java.lang.String str = i2 + "/" + (this.n2 ? "dark/" : "light/") + componentName.flattenToString();
        if (str.equals(this.B2) && !this.L1 && this.J1 == i2) {
            return;
        }
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda168
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(i2, str, componentName);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, java.lang.String str, android.content.ComponentName componentName) {
        if (i2 != this.J1 || this.L1 || !j(i2) || str.equals(this.B2)) {
            return;
        }
        this.B2 = str;
        this.E2++;
        this.F2 = i2;
        this.G2 = componentName.getPackageName();
        this.H2 = (this.n2 ? "dark/" : "light/") + componentName.getClassName() + "|";
        this.P2 = "";
        this.R2++;
        this.S2 = android.os.SystemClock.uptimeMillis();
        w();
        dev.duo.workspaceprobe.b.i0 i0Var = this.I2.get(this.G2);
        if (i0Var == null) {
            i0Var = new dev.duo.workspaceprobe.b.i0(null);
            this.I2.put(this.G2, i0Var);
            b(this.G2, i0Var);
        }
        if (i0Var.a) {
            E(this.E2);
            d(450L);
        }
        k2();
    }

    private android.os.Bundle a(java.lang.String str, java.lang.String str2, android.os.Bundle bundle) {
        try {
            android.os.Bundle call = this.p4.getContentResolver().call(android.net.Uri.parse("content://dev.duo.hookprobe.config"), str, str2, bundle);
            if (call != null && call.containsKey("error")) {
                android.util.Log.e("DuoPick", str + ": " + call.getString("error"));
            }
            return call;
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.e("DuoPick", "Provider call failed: " + str, e2);
            return null;
        }
    }

    private android.widget.TextView a(java.lang.String str, android.view.View.OnClickListener onClickListener) {
        android.widget.TextView textView = new android.widget.TextView(this.p4);
        textView.setText(str);
        textView.setTextSize(14.0f);
        textView.setTextColor(-14460213);
        textView.setGravity(17);
        textView.setBackgroundColor(-986379);
        textView.setOnClickListener(onClickListener);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(float[] fArr, android.view.View view, android.view.MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            fArr[0] = motionEvent.getRawX();
            fArr[1] = motionEvent.getRawY();
            fArr[2] = this.b3;
            fArr[3] = this.c3;
        } else if (motionEvent.getActionMasked() == 2) {
            this.b3 = java.lang.Math.max(0, java.lang.Math.min(120, (int) ((fArr[2] + motionEvent.getRawX()) - fArr[0])));
            int max = java.lang.Math.max(0, java.lang.Math.min(1712 - this.d3.g, (int) ((fArr[3] + motionEvent.getRawY()) - fArr[1])));
            this.c3 = max;
            a(this.d3, this.b3, max, 2001);
        }
        return true;
    }

    private void a(final dev.duo.workspaceprobe.b.R r2, final int i2, final int i3, final int i4) {
        if (this.C2 == null || this.V0 == null) {
            return;
        }
        final int i5 = this.J1;
        (this.U0 == null ? this.D1 : this.U0).post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda207
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(r2, i5, i2, i3, i4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.workspaceprobe.b.R r2, int i2, int i3, int i4, int i5) {
        try {
            if (r2.n) {
                return;
            }
            android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) this.C2.invoke(this.V0, java.lang.Integer.valueOf(i2));
            if (i2 == this.J1 && B0() && surfaceControl != null && surfaceControl.isValid()) {
                android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                try {
                    transaction.reparent(r2.b, surfaceControl).setPosition(r2.b, i3, i4).setLayer(r2.b, i5).setCrop(r2.b, new android.graphics.Rect(0, 0, r2.f, r2.g)).setVisibility(r2.b, true).apply();
                    transaction.close();
                } finally {
                }
            }
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e("DuoPick", "Cannot attach picker", e2);
        }
    }

    private static boolean a(int i2, int i3) {
        return java.lang.Math.abs(((i2 >> z) & 255) - ((i3 >> z) & 255)) <= 8 && java.lang.Math.abs(((i2 >> 8) & 255) - ((i3 >> 8) & 255)) <= 8 && java.lang.Math.abs((i2 & 255) - (i3 & 255)) <= 8;
    }

    private void a(final boolean z2, final android.graphics.Rect rect) {
        dev.duo.workspaceprobe.b bVar;
        boolean z3;
        android.graphics.Rect rect2;
        if (this.U2 || !B0() || this.T2 || this.R2 == 0 || this.C2 == null) {
            bVar = this;
            z3 = z2;
            rect2 = rect;
        } else {
            if (android.os.SystemClock.uptimeMillis() - this.S2 >= 500) {
                dev.duo.workspaceprobe.b.i0 i0Var = this.I2.get(this.G2);
                if (i0Var == null || !i0Var.b) {
                    return;
                }
                final int i2 = this.E2;
                final int i3 = this.J1;
                final long j2 = this.R2;
                final long j3 = this.Q2;
                this.U2 = true;
                b(i3, new dev.duo.workspaceprobe.b.M() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda6
                    @Override // dev.duo.workspaceprobe.b.M
                    public final int a(android.view.SurfaceControl surfaceControl) {
                        int a2;
                        a2 = dev.duo.workspaceprobe.b.a(rect, surfaceControl);
                        return a2;
                    }
                }, new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda7
                    @Override // java.util.function.Consumer
                    public final void accept(java.lang.Object obj) {
                        dev.duo.workspaceprobe.b.this.a(rect, j3, i2, j2, z2, i3, (java.lang.Integer) obj);
                    }
                });
                return;
            }
            bVar = this;
            z3 = z2;
            rect2 = rect;
        }
        if (z3) {
            bVar.O2 = "请等页面停稳后再点取色";
            D0();
        }
        if (rect2 == null || bVar.d3 == null || !B0()) {
            return;
        }
        a(bVar.d3, bVar.b3, bVar.c3, 2001);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(android.graphics.Rect rect, android.view.SurfaceControl surfaceControl) throws java.lang.ReflectiveOperationException {
        return rect == null ? a(surfaceControl) : a(surfaceControl, rect);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.graphics.Rect rect, long j2, int i2, long j3, boolean z2, int i3, java.lang.Integer num) {
        java.lang.String str;
        int i4;
        this.U2 = false;
        if (rect != null && this.d3 != null && B0()) {
            a(this.d3, this.b3, this.c3, 2001);
        }
        if (B0() && j2 == this.Q2 && i2 == this.E2 && j3 == this.R2) {
            if (num == null) {
                if (z2) {
                    this.O2 = "取色失败，可重取";
                    D0();
                }
                this.Z2 = 0;
                return;
            }
            int intValue = num.intValue();
            if (intValue == 0) {
                if (z2 || C0()) {
                    this.O2 = "右侧颜色不够单一，请点选取色位置";
                    D0();
                }
                this.Z2 = 0;
                return;
            }
            boolean C02 = C0();
            if (!z2 && ((i4 = this.Z2) == 0 || !a(i4, intValue))) {
                this.Z2 = intValue;
                return;
            }
            this.Z2 = intValue;
            java.lang.String str2 = this.H2 + "/" + intValue;
            if (z2 || !str2.equals(this.P2)) {
                if (!z2 && !C02) {
                    if (a(u(i3), intValue)) {
                        return;
                    } else {
                        this.P2 = str2;
                    }
                }
                this.a3 = intValue;
                this.V2 = true;
                if (this.H2.isEmpty()) {
                    str = "可保存颜色并临时使用；此页面暂不能自动识别";
                } else {
                    str = (z2 || C02) ? "确认正确才记录；切换页面将取消本次确认" : "发现不同颜色，正确就保存；切换页面将取消本次确认";
                }
                this.O2 = str;
                c(i3, intValue);
                D0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final long j2, final long j3, final int i2, int i3, final long j4, final java.lang.String str, final java.lang.String str2, final boolean z2, final android.os.Bundle bundle, final boolean z3, final int i4, java.lang.Integer num) {
        if (!B0() || this.T2 || j2 != this.Q2 || j3 != this.R2 || i2 != this.E2 || i3 != this.J1 || j4 != this.K1 || !str.equals(this.G2) || !str2.equals(this.H2) || z2 != this.n2) {
            this.U2 = false;
            D0();
        } else if (num == null) {
            this.U2 = false;
            this.O2 = "保存失败，请重试";
            D0();
        } else {
            bundle.putInt("edge", num.intValue());
            if (num.intValue() != 0) {
                this.P2 = str2 + "/" + num;
            }
            this.T1.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda164
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(j2, j3, i2, j4, str, bundle, z3, z2, str2, i4);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final long j2, long j3, final int i2, long j4, final java.lang.String str, android.os.Bundle bundle, final boolean z2, final boolean z3, final java.lang.String str2, final int i3) {
        if (j2 == this.Q2 && j3 == this.R2 && i2 == this.E2 && j4 == this.K1) {
            final android.os.Bundle a2 = a("pickConfirm", str, bundle);
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(a2, j2, z2, z3, str, str2, i3, i2);
                }
            });
        } else {
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.K();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.os.Bundle bundle, final long j2, boolean z2, boolean z3, java.lang.String str, java.lang.String str2, int i2, int i3) {
        this.U2 = false;
        if (bundle == null || !bundle.getBoolean("saved")) {
            this.O2 = bundle == null ? "保存失败，请重新取色" : bundle.getString("error", "保存失败");
        } else {
            if (j2 != this.Q2) {
                return;
            }
            if (z2) {
                if (z3) {
                    this.X2 = true;
                } else {
                    this.W2 = true;
                }
                d(str, "picker default");
            }
            this.O2 = "已保存，这个界面（或这个标签）以后都用这个颜色";
            this.J2.put(str2, java.lang.Integer.valueOf(i2));
            java.lang.String string = bundle.getString("share");
            if (string != null) {
                dev.duo.hookprobe.F.b(string, c(dev.duo.hookprobe.F.d, ""));
            }
            if (i3 == this.E2 && B0()) {
                this.V2 = false;
                c(this.J1, i2);
            }
        }
        D0();
        final java.lang.String str3 = this.O2;
        this.D1.postDelayed(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda115
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(j2, str3);
            }
        }, 2500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j2, java.lang.String str) {
        if (this.Q2 == j2 && str.equals(this.O2) && !this.V2) {
            this.O2 = "";
            D0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.os.Bundle bundle) {
        a("pickState", (java.lang.String) null, bundle);
        this.D1.post(new dev.duo.workspaceprobe.b$$ExternalSyntheticLambda83(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final dev.duo.workspaceprobe.b.R r2) {
        try {
            try {
                android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                try {
                    if (r2.b.isValid()) {
                        transaction.reparent(r2.b, null).apply();
                    }
                    transaction.close();
                    this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda129
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.workspaceprobe.b.R.this.b();
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
            } catch (java.lang.RuntimeException e2) {
                android.util.Log.e("DuoPick", "Picker layer not detached", e2);
                android.os.Handler handler = this.D1;
                java.util.Objects.requireNonNull(r2);
                handler.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda129
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.R.this.b();
                    }
                });
            }
        } catch (java.lang.Throwable th3) {
            android.os.Handler handler2 = this.D1;
            java.util.Objects.requireNonNull(r2);
            handler2.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda129
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.R.this.b();
                }
            });
            throw th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j2, long j3, int i2, int i3) {
        if (j2 == this.R2 && j3 == this.Q2 && B0()) {
            a(true, new android.graphics.Rect(i2 - 2, i3 - 2, i2 + 3, i3 + 3));
        } else if (B0()) {
            a(this.d3, this.b3, this.c3, 2001);
        }
    }

    private static int a(android.view.SurfaceControl surfaceControl, android.graphics.Rect rect) throws java.lang.ReflectiveOperationException {
        android.hardware.HardwareBuffer hardwareBuffer;
        android.graphics.Bitmap bitmap;
        android.graphics.Bitmap bitmap2 = null;
        java.lang.Object invoke = java.lang.Class.forName("android.window.ScreenCaptureInternal").getMethod("captureLayers", android.view.SurfaceControl.class, android.graphics.Rect.class, java.lang.Float.TYPE).invoke(null, surfaceControl, rect, java.lang.Float.valueOf(1.0f));
        int i2 = 0;
        if (invoke == null || (hardwareBuffer = (android.hardware.HardwareBuffer) invoke.getClass().getMethod("getHardwareBuffer", null).invoke(invoke, null)) == null) {
            return 0;
        }
        try {
            bitmap = (android.graphics.Bitmap) invoke.getClass().getMethod("asBitmap", null).invoke(invoke, null);
            if (bitmap == null) {
                if (bitmap != null) {
                    bitmap.recycle();
                }
                hardwareBuffer.close();
                return 0;
            }
            try {
                android.graphics.Bitmap copy = bitmap.copy(android.graphics.Bitmap.Config.ARGB_8888, false);
                if (copy == null) {
                    if (copy != null) {
                        copy.recycle();
                    }
                    bitmap.recycle();
                    hardwareBuffer.close();
                    return 0;
                }
                int i3 = 0;
                long j2 = 0;
                long j3 = 0;
                long j4 = 0;
                long j5 = 0;
                while (i3 < copy.getHeight()) {
                    for (int i4 = i2; i4 < copy.getWidth(); i4++) {
                        if ((copy.getPixel(i4, i3) >>> 24) == 255) {
                            j3 += (r1 >> z) & 255;
                            j4 += (r1 >> 8) & 255;
                            j5 += r1 & 255;
                            j2++;
                        }
                    }
                    i3++;
                    i2 = 0;
                }
                int i5 = j2 == 0 ? 0 : ((int) (j5 / j2)) | (((int) (j3 / j2)) << z) | b | (((int) (j4 / j2)) << 8);
                copy.recycle();
                bitmap.recycle();
                hardwareBuffer.close();
                return i5;
            } catch (java.lang.Throwable th) {
                th = th;
                if (0 != 0) {
                    bitmap2.recycle();
                }
                if (bitmap != null) {
                    bitmap.recycle();
                }
                hardwareBuffer.close();
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            bitmap = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int a(android.view.SurfaceControl surfaceControl) throws java.lang.ReflectiveOperationException {
        android.graphics.Bitmap bitmap;
        android.graphics.Bitmap bitmap2 = null;
        java.lang.Object invoke = java.lang.Class.forName("android.window.ScreenCaptureInternal").getMethod("captureLayers", android.view.SurfaceControl.class, android.graphics.Rect.class, java.lang.Float.TYPE).invoke(null, surfaceControl, new android.graphics.Rect(900, 256, 960, 1456), java.lang.Float.valueOf(0.5f));
        if (invoke == null) {
            return 0;
        }
        android.hardware.HardwareBuffer hardwareBuffer = (android.hardware.HardwareBuffer) invoke.getClass().getMethod("getHardwareBuffer", null).invoke(invoke, null);
        try {
            bitmap = (android.graphics.Bitmap) invoke.getClass().getMethod("asBitmap", null).invoke(invoke, null);
            if (bitmap == null) {
                if (bitmap != null) {
                    bitmap.recycle();
                }
                if (hardwareBuffer != null) {
                    hardwareBuffer.close();
                }
                return 0;
            }
            try {
                android.graphics.Bitmap copy = bitmap.copy(android.graphics.Bitmap.Config.ARGB_8888, false);
                try {
                    int width = copy.getWidth() * copy.getHeight();
                    int[] iArr = new int[width];
                    copy.getPixels(iArr, 0, copy.getWidth(), 0, 0, copy.getWidth(), copy.getHeight());
                    int i2 = 0;
                    for (int i3 = 0; i3 < width; i3++) {
                        int i4 = iArr[i3];
                        if ((i4 >>> 24) == 255) {
                            iArr[i2] = i4;
                            i2++;
                        }
                    }
                    java.util.Arrays.sort(iArr, 0, i2);
                    int i5 = 0;
                    int i6 = 0;
                    int i7 = 0;
                    int i8 = 0;
                    while (i5 < i2) {
                        i8 = (i5 <= 0 || iArr[i5] != iArr[i5 + (-1)]) ? 1 : i8 + 1;
                        if (i8 > i6) {
                            i7 = iArr[i5];
                            i6 = i8;
                        }
                        i5++;
                    }
                    n = (i2 <= 0 || i6 * 100 < i2 * 30) ? 0 : i7;
                    o = i2 == 0 ? 0 : (i6 * 100) / i2;
                    int i9 = i6 * 2 >= width ? i7 : 0;
                    copy.recycle();
                    bitmap.recycle();
                    if (hardwareBuffer != null) {
                        hardwareBuffer.close();
                    }
                    return i9;
                } catch (java.lang.Throwable th) {
                    th = th;
                    bitmap2 = copy;
                    if (bitmap2 != null) {
                        bitmap2.recycle();
                    }
                    if (bitmap != null) {
                        bitmap.recycle();
                    }
                    if (hardwareBuffer != null) {
                        hardwareBuffer.close();
                    }
                    throw th;
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
            bitmap = null;
        }
    }

    private void a(boolean z2) {
        boolean z3 = this.Y0 != z2;
        this.Y0 = z2;
        if (z3) {
            int i2 = !z2 ? 1 : 0;
            for (dev.duo.workspaceprobe.b.Q q2 : this.K5) {
                if (q2 != null) {
                    q2.e.a(i2);
                }
            }
            int i3 = this.J1;
            if (i3 >= 0 && !this.L1) {
                z(i3);
            }
            dev.duo.workspaceprobe.b.R r2 = this.D5;
            if (r2 != null && (r2.d.getBackground() instanceof dev.duo.workspaceprobe.b.N)) {
                ((dev.duo.workspaceprobe.b.N) this.D5.d.getBackground()).a(i2);
            }
            dev.duo.workspaceprobe.b.N n2 = this.F5;
            if (n2 != null) {
                n2.a(z2 ? 0 : 2);
            }
            android.util.Log.w("DuoRail", "Sidebar color=" + (z2 ? "black" : "white") + " pkg=" + this.I1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(int i2, java.lang.Integer num) {
        return num.intValue() < i2 + (-512);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Field[] fieldArr, java.lang.reflect.Field field, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        final boolean z2 = false;
        for (java.lang.reflect.Field field2 : fieldArr) {
            z2 |= field2.getBoolean(chain.getArg(0));
        }
        boolean z3 = true;
        final boolean z4 = fieldArr[0].getBoolean(chain.getArg(0)) || fieldArr[1].getBoolean(chain.getArg(0)) || fieldArr[2].getBoolean(chain.getArg(0));
        final boolean z5 = fieldArr[0].getBoolean(chain.getArg(0));
        final boolean z6 = fieldArr[1].getBoolean(chain.getArg(0));
        final boolean z7 = fieldArr[2].getBoolean(chain.getArg(0));
        final boolean z8 = fieldArr[4].getBoolean(chain.getArg(0));
        final boolean z9 = field.getBoolean(chain.getArg(0));
        if (!fieldArr[1].getBoolean(chain.getArg(0)) && !fieldArr[2].getBoolean(chain.getArg(0)) && !fieldArr[4].getBoolean(chain.getArg(0))) {
            z3 = false;
        }
        this.E4.a(chain.getArg(0));
        final boolean z10 = z3;
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda118
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(z6, z7, z8, z9, z5, z10, z2, z4);
            }
        });
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9) {
        java.lang.Runnable runnable;
        if (!this.g5 || this.h5 != z2 || this.i5 != z3 || this.j5 != z4 || this.k5 != z5) {
            this.g5 = true;
            this.h5 = z2;
            this.i5 = z3;
            this.j5 = z4;
            this.k5 = z5;
            z();
        }
        if (z6 && !this.p3) {
            this.t3 = 0.0f;
        }
        boolean z10 = this.p3 != z6;
        this.p3 = z6;
        if (z10) {
            z();
        }
        if (z10 && (runnable = this.K6) != null) {
            runnable.run();
        }
        if (z10 && !this.c2.isEmpty()) {
            l(this.c2);
        }
        this.q3 = z7;
        this.O1 = z8;
        this.P1 = z9;
        Q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(int i2, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        int intValue = ((java.lang.Integer) chain.getArg(0)).intValue();
        final boolean z2 = (((java.lang.Integer) chain.getArg(i2)).intValue() & 2) != 0;
        if (intValue == 0) {
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda63
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.c(z2);
                }
            });
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.view.View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        i2();
    }

    private void a(android.widget.FrameLayout frameLayout) {
        android.widget.FrameLayout frameLayout2 = this.m3;
        if (frameLayout2 == frameLayout) {
            return;
        }
        if (frameLayout2 != null) {
            frameLayout2.removeOnLayoutChangeListener(this.E3);
            frameLayout2.removeOnAttachStateChangeListener(this.H3);
        }
        b("container replaced");
        this.m3 = frameLayout;
        java.util.function.Consumer<android.view.View> consumer = this.J6;
        if (consumer != null) {
            consumer.accept(frameLayout.getRootView());
        }
        frameLayout.addOnLayoutChangeListener(this.E3);
        frameLayout.addOnAttachStateChangeListener(this.H3);
        if (frameLayout.isAttachedToWindow()) {
            a((android.view.View) frameLayout);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(android.view.View view) {
        b((java.lang.String) null);
        android.view.ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        this.G3 = viewTreeObserver;
        viewTreeObserver.addOnPreDrawListener(this.F3);
        android.util.Log.i("DuoKeyguard", "Keyguard per-frame listeners=1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int[] iArr, boolean z2, boolean z3, boolean z4) {
        if (iArr != null && iArr.length == this.N3.length && !java.util.Arrays.equals(iArr, this.N3)) {
            this.N3 = iArr;
            F0();
        }
        dev.duo.workspaceprobe.b.h0 h0Var = this.Z0;
        if (h0Var.R == z2 && h0Var.S == z3 && h0Var.T == z4) {
            return;
        }
        h0Var.R = z2;
        h0Var.S = z3;
        h0Var.T = z4;
        m1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.workspaceprobe.b.h0 h0Var, float f2) {
        h0Var.setY(f2);
        c(h0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, boolean z2, boolean z3) {
        if (i2 != this.d1) {
            this.d1 = i2;
            this.c1.a(i2);
            android.util.Log.i("DuoFoldSplit", "Nudge level " + i2);
        }
        boolean z4 = this.v1;
        this.v1 = true;
        if (this.u1 == z2 && z4) {
            return;
        }
        this.u1 = z2;
        android.util.Log.i("DuoFoldSplit", "Switch " + (z2 ? "on" : "off") + (z3 ? " (fold animation active)" : ""));
        g2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.String[] strArr, java.lang.String str, int i2, java.util.List list, java.util.List list2, java.lang.String[] strArr2, java.util.List list3, java.util.List list4, boolean z2, boolean z3, boolean z4) {
        if (!java.util.Arrays.equals(strArr, this.a6)) {
            this.a6 = strArr;
            android.util.Log.w("DuoRail", "Workbench rail layout " + java.util.Arrays.toString(strArr) + (str == null ? " (from outer)" : ""));
            this.E4.H();
        }
        if (i2 == this.T3) {
            this.S3 = list;
        }
        this.R3 = list2;
        boolean z5 = java.util.Arrays.equals(strArr2, this.Z5) && list3.equals(this.P3) && list4.equals(this.Q3);
        if (z5 && z2 == this.V3 && z3 == this.W3) {
            return;
        }
        this.V3 = z2;
        boolean z6 = z3 != this.W3;
        this.W3 = z3;
        if (!z5 || z6) {
            this.Z5 = strArr2;
            this.P3 = list3;
            this.Q3 = list4;
            if (!z4) {
                q();
            }
            p1();
            dev.duo.workspaceprobe.b.d0 d0Var = this.Z3;
            if (d0Var != null) {
                d0Var.d();
            }
            android.util.Log.w("DuoRail", "Custom rail layout " + java.util.Arrays.toString(strArr2) + (list3.isEmpty() ? "" : " sidebar " + list3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.String str, android.view.View view) {
        if (t()) {
            z(str);
        }
    }

    void a(dev.duo.workspaceprobe.q qVar) {
        this.d4 = qVar;
        m2();
    }

    void a(dev.duo.workspaceprobe.q qVar, boolean z2) {
        if (this.d4 != qVar) {
            return;
        }
        if (z2) {
            this.d4 = null;
            m2();
        }
        if (this.Z3 == null && this.a4 == null) {
            return;
        }
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float a(dev.duo.workspaceprobe.b.K k2, float f2) {
        if (k2.a != null) {
            return (f2 - r2.k().top) / 0.775f;
        }
        return (f2 - (this.W5.get(java.lang.Integer.valueOf(this.J1)) == null ? 0 : r2[1])) - H1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(java.util.Map map, java.lang.String str, java.lang.String str2) {
        return java.lang.Long.compare(((java.lang.Long) map.get(str2)).longValue(), ((java.lang.Long) map.get(str)).longValue());
    }

    private void a(final dev.duo.workspaceprobe.b.K k2) {
        float f2;
        float f3;
        dev.duo.workspaceprobe.b.X x2 = this.b4;
        if (x2 != null && x2.a == k2.k) {
            this.b4 = null;
        }
        if (k2.j == null) {
            int n2 = n(k2);
            android.widget.FrameLayout w2 = w(1);
            dev.duo.workspaceprobe.b.e0 e0Var = new dev.duo.workspaceprobe.b.e0();
            e0Var.setVerticalScrollBarEnabled(false);
            e0Var.setOverScrollMode(2);
            e0Var.setVerticalFadingEdgeEnabled(true);
            e0Var.setFadingEdgeLength(20);
            android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(this.p4);
            linearLayout.setOrientation(1);
            linearLayout.setPadding(20, 20, 20, 0);
            e0Var.addView(linearLayout, new android.widget.FrameLayout.LayoutParams(-1, -2));
            w2.addView(e0Var, new android.widget.FrameLayout.LayoutParams(136, n2 - 136));
            dev.duo.workspaceprobe.b.c0 c0Var = new dev.duo.workspaceprobe.b.c0(this.p4);
            boolean z2 = this.Z3 != null;
            c0Var.c = z2;
            c0Var.d = z2 ? 1.0f : 0.0f;
            c0Var.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda142
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.workspaceprobe.b.this.c(k2, view);
                }
            });
            android.widget.FrameLayout.LayoutParams layoutParams = new android.widget.FrameLayout.LayoutParams(96, 96);
            layoutParams.leftMargin = 20;
            layoutParams.topMargin = n2 - 116;
            w2.addView(c0Var, layoutParams);
            k2.j = w2;
            k2.k = linearLayout;
            k2.l = c0Var;
            k2.o = new android.widget.FrameLayout(this.p4);
            a(k2, w2, l(k2), m(k2), 136, n2, 60.0f);
        }
        int n3 = n(k2);
        boolean z3 = this.W3;
        if (k2.j.getLayoutParams().height != n3 || k2.p != z3) {
            k2.j.getLayoutParams().height = n3;
            dev.duo.workspaceprobe.b.e0 e0Var2 = (dev.duo.workspaceprobe.b.e0) k2.k.getParent();
            e0Var2.getLayoutParams().height = z3 ? n3 : n3 - 136;
            e0Var2.a(z3);
            if (k2.p != z3) {
                ((android.view.ViewGroup) k2.l.getParent()).removeView(k2.l);
                if (z3) {
                    android.widget.FrameLayout.LayoutParams layoutParams2 = new android.widget.FrameLayout.LayoutParams(96, 96);
                    layoutParams2.gravity = 17;
                    k2.o.addView(k2.l, layoutParams2);
                } else {
                    android.widget.FrameLayout.LayoutParams layoutParams3 = new android.widget.FrameLayout.LayoutParams(96, 96);
                    layoutParams3.leftMargin = 20;
                    k2.j.addView(k2.l, layoutParams3);
                }
                k2.k.setPadding(20, 20, 20, z3 ? 20 : 0);
                k2.p = z3;
            }
            if (!z3) {
                ((android.widget.FrameLayout.LayoutParams) k2.l.getLayoutParams()).topMargin = n3 - 116;
            }
            k2.j.requestLayout();
        }
        java.util.HashMap hashMap = new java.util.HashMap();
        boolean z4 = k2.k.getChildCount() > 0;
        float f4 = -1.0f;
        int i2 = 0;
        while (true) {
            f2 = 150.0f;
            if (i2 >= k2.k.getChildCount()) {
                break;
            }
            android.view.View childAt = k2.k.getChildAt(i2);
            if (childAt == k2.o) {
                f4 = (i2 * 150.0f) + childAt.getTranslationY();
            } else if (childAt.getContentDescription() != null) {
                hashMap.put(childAt.getContentDescription().toString(), java.lang.Float.valueOf((i2 * 150.0f) + childAt.getTranslationY()));
            }
            i2++;
        }
        k2.k.removeAllViews();
        boolean z5 = k2.l.b;
        java.util.Iterator<java.lang.String> it = (this.Y3 ? this.Q3 : this.P3).iterator();
        while (true) {
            f3 = f2;
            java.util.Iterator<java.lang.String> it2 = it;
            if (!it.hasNext()) {
                break;
            }
            final java.lang.String next = it2.next();
            try {
                android.graphics.drawable.Drawable B2 = B(next);
                android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(this.p4);
                java.lang.Float f5 = (java.lang.Float) hashMap.get(next);
                float childCount = k2.k.getChildCount() * f3;
                if (f5 != null && f5.floatValue() != childCount) {
                    frameLayout.setTranslationY(f5.floatValue() - childCount);
                    frameLayout.animate().translationY(0.0f).setDuration(220L).setInterpolator(M).start();
                } else if (f5 == null && z4) {
                    frameLayout.setScaleX(0.5f);
                    frameLayout.setScaleY(0.5f);
                    frameLayout.setAlpha(0.0f);
                    frameLayout.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(220L).setInterpolator(M).start();
                }
                android.widget.ImageView imageView = new android.widget.ImageView(this.p4);
                imageView.setImageDrawable(B2);
                imageView.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
                frameLayout.addView(imageView, new android.widget.FrameLayout.LayoutParams(-1, -1));
                frameLayout.setContentDescription(next);
                if (!this.Y3) {
                    frameLayout.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda146
                        @Override // android.view.View.OnClickListener
                        public final void onClick(android.view.View view) {
                            dev.duo.workspaceprobe.b.this.d(k2, next, view);
                        }
                    });
                    frameLayout.setOnLongClickListener(new android.view.View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda147
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(android.view.View view) {
                            boolean e2;
                            e2 = dev.duo.workspaceprobe.b.this.e(k2, next, view);
                            return e2;
                        }
                    });
                } else {
                    dev.duo.workspaceprobe.b.V v2 = new dev.duo.workspaceprobe.b.V(this.p4, false);
                    v2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda143
                        @Override // android.view.View.OnClickListener
                        public final void onClick(android.view.View view) {
                            dev.duo.workspaceprobe.b.this.a(k2, next, view);
                        }
                    });
                    android.widget.FrameLayout.LayoutParams layoutParams4 = new android.widget.FrameLayout.LayoutParams(48, 48);
                    layoutParams4.gravity = 53;
                    frameLayout.addView(v2, layoutParams4);
                    if (this.e4) {
                        p(v2);
                    }
                    frameLayout.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda144
                        @Override // android.view.View.OnClickListener
                        public final void onClick(android.view.View view) {
                            dev.duo.workspaceprobe.b.this.b(k2, next, view);
                        }
                    });
                    frameLayout.setOnLongClickListener(new android.view.View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda145
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(android.view.View view) {
                            boolean c2;
                            c2 = dev.duo.workspaceprobe.b.this.c(k2, next, view);
                            return c2;
                        }
                    });
                }
                frameLayout.setOnTouchListener(new android.view.View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda148
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
                        boolean b2;
                        b2 = dev.duo.workspaceprobe.b.this.b(view, motionEvent);
                        return b2;
                    }
                });
                android.widget.LinearLayout.LayoutParams layoutParams5 = new android.widget.LinearLayout.LayoutParams(96, 96);
                layoutParams5.bottomMargin = 54;
                k2.k.addView(frameLayout, layoutParams5);
            } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
            }
            f2 = f3;
            it = it2;
        }
        for (int size = this.Y3 ? this.Q3.size() : 12; size < 12; size++) {
            android.view.View view = new android.view.View(this.p4);
            view.setBackground(b(z5 ? 654311423 : 335544320, 26.0f));
            android.widget.LinearLayout.LayoutParams layoutParams6 = new android.widget.LinearLayout.LayoutParams(96, 96);
            layoutParams6.bottomMargin = 54;
            k2.k.addView(view, layoutParams6);
            if (this.e4) {
                p(view);
            }
        }
        if (z3) {
            float childCount2 = k2.k.getChildCount() * f3;
            k2.o.animate().cancel();
            k2.o.setTranslationY(f4 >= 0.0f ? f4 - childCount2 : 0.0f);
            k2.k.addView(k2.o, new android.widget.LinearLayout.LayoutParams(96, 96));
            if (f4 >= 0.0f && f4 != childCount2) {
                k2.o.animate().translationY(0.0f).setDuration(220L).setInterpolator(M).start();
            }
        }
        k2.j.setVisibility(0);
        k2.j.setY(m(k2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.workspaceprobe.b.K k2, java.lang.String str, android.view.View view) {
        if (k(k2)) {
            F(str);
        }
    }

    private void a(java.lang.String str, int i2, android.app.ActivityOptions activityOptions) {
        java.util.List<android.content.pm.LauncherActivityInfo> b2 = b(str, i2);
        if (!b2.isEmpty()) {
            ((android.content.pm.LauncherApps) this.p4.getSystemService(android.content.pm.LauncherApps.class)).startMainActivity(b2.get(0).getComponentName(), C(i2), null, activityOptions == null ? null : activityOptions.toBundle());
            return;
        }
        throw new java.lang.IllegalStateException(str + "@" + i2 + " has no launcher activity");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, java.lang.String str, java.util.List list) {
        this.U3 = i2;
        try {
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putString("set", str);
            java.lang.String str2 = null;
            android.os.Bundle call = this.p4.getContentResolver().call(android.net.Uri.parse("content://dev.duo.hookprobe.config"), "railPanelOrder", (java.lang.String) null, bundle);
            if (call != null) {
                str2 = call.getString("saved");
            }
            if (!str.equals(str2)) {
                throw new java.lang.IllegalStateException(call == null ? "no response" : call.getString("error", "saved " + str2));
            }
            android.util.Log.w("DuoRail", "Sidebar panel order saved " + list.size());
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.w("DuoRail", "Sidebar panel order save failed", e2);
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda157
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.e0();
                }
            });
        }
    }

    private void a(dev.duo.workspaceprobe.b.K k2, android.view.View view, java.lang.String str) {
        dev.duo.workspaceprobe.b bVar;
        dev.duo.workspaceprobe.b.b0 b0Var;
        q();
        int p2 = p(k2) + java.lang.Math.round(((view.getTop() - ((android.view.View) k2.k.getParent()).getScrollY()) + 48) * o(k2));
        B(5);
        dev.duo.workspaceprobe.q qVar = k2.a;
        if (qVar == null) {
            bVar = this;
            b0Var = bVar.new b0(str, this.Q3.contains(str), 531, p2, 420, false, 1712);
        } else {
            bVar = this;
            b0Var = bVar.new b0(str, bVar.Q3.contains(str), qVar.a(420, 28), p2, qVar.f() ? 0.0f : 420, false, qVar.i());
        }
        bVar.a4 = b0Var;
        b0Var.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(java.text.Collator collator, java.lang.Object[] objArr, java.lang.Object[] objArr2) {
        return collator.compare((java.lang.String) objArr[1], (java.lang.String) objArr2[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.String str, android.os.Bundle bundle) {
        a("pickState", str, bundle);
        this.D1.post(new dev.duo.workspaceprobe.b$$ExternalSyntheticLambda83(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002a, code lost:
    
        if (r2.K3.contains(r3.getPackageName()) == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ java.lang.Object a(boolean r3, io.github.libxposed.api.XposedInterface.Chain r4) throws java.lang.Throwable {
        /*
            r2 = this;
            java.lang.Object r0 = r4.proceed()
            java.lang.Object r1 = r4.getThisObject()
            android.service.notification.NotificationListenerService r1 = (android.service.notification.NotificationListenerService) r1
            r2.I3 = r1
            boolean r1 = r2.L3
            if (r1 != 0) goto L11
            goto L2c
        L11:
            if (r3 == 0) goto L2d
            r3 = 0
            java.lang.Object r3 = r4.getArg(r3)
            android.service.notification.StatusBarNotification r3 = (android.service.notification.StatusBarNotification) r3
            boolean r4 = r3.isClearable()
            if (r4 != 0) goto L2d
            java.util.List<java.lang.String> r4 = r2.K3
            java.lang.String r3 = r3.getPackageName()
            boolean r3 = r4.contains(r3)
            if (r3 != 0) goto L2d
        L2c:
            return r0
        L2d:
            android.os.Handler r3 = r2.D1
            java.lang.Runnable r4 = r2.J3
            r3.removeCallbacks(r4)
            android.os.Handler r3 = r2.D1
            java.lang.Runnable r4 = r2.J3
            r3.post(r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.workspaceprobe.b.a(boolean, io.github.libxposed.api.XposedInterface$Chain):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(android.service.notification.StatusBarNotification statusBarNotification, android.service.notification.StatusBarNotification statusBarNotification2) {
        return java.lang.Long.compare(statusBarNotification2.getPostTime(), statusBarNotification.getPostTime());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, java.lang.Class cls, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        android.widget.FrameLayout frameLayout = (android.widget.FrameLayout) chain.getArg(0);
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putBoolean("isLeftShortcutView", false);
        java.lang.Object invoke = method.invoke(chain.getThisObject(), bundle, "getShortcutView");
        bundle.putBoolean("isLeftShortcutView", true);
        java.lang.Object invoke2 = method.invoke(chain.getThisObject(), bundle, "getShortcutView");
        if ((invoke instanceof android.widget.ImageView) && (invoke2 instanceof android.widget.ImageView)) {
            a(frameLayout);
            this.n3 = (android.widget.ImageView) invoke;
            this.o3 = (android.widget.ImageView) invoke2;
            this.y3 = null;
            this.x3 = null;
            frameLayout.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda97
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.L();
                }
            });
            java.lang.reflect.Field declaredField = cls.getDeclaredField("miuiShortcutPlugin");
            declaredField.setAccessible(true);
            java.lang.Object obj = declaredField.get(chain.getThisObject());
            if (obj != null) {
                e(obj.getClass().getClassLoader());
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        android.animation.ValueAnimator valueAnimator = (android.animation.ValueAnimator) field.get(chain.getThisObject());
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.r3 = true;
            valueAnimator.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda170
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator2) {
                    dev.duo.workspaceprobe.b.this.a(valueAnimator2);
                }
            });
            valueAnimator.addListener(new dev.duo.workspaceprobe.b.C0043e());
            android.util.Log.i("DuoKeyguard", "Following official unlock animator duration=" + valueAnimator.getDuration());
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.animation.ValueAnimator valueAnimator) {
        this.t3 = valueAnimator.getAnimatedFraction();
        i2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.util.WeakHashMap weakHashMap, java.lang.reflect.Field field, java.lang.reflect.Field field2, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        float[] fArr = w0() ? (float[]) weakHashMap.get(chain.getThisObject()) : null;
        if (fArr != null) {
            field.setFloat(chain.getThisObject(), fArr[0]);
            field2.setFloat(chain.getThisObject(), fArr[1]);
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, java.lang.reflect.Method method, java.util.WeakHashMap weakHashMap, java.lang.reflect.Field field2, java.lang.reflect.Field field3, java.lang.reflect.Field field4, java.lang.reflect.Field field5, java.lang.reflect.Method method2, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        if (w0()) {
            android.widget.ImageView imageView = (android.widget.ImageView) field.get(chain.getThisObject());
            android.graphics.Rect rect = imageView == this.n3 ? this.x3 : imageView == this.o3 ? this.y3 : null;
            if (rect != null && this.G5 != null) {
                android.view.View view = (android.view.View) method.invoke(chain.getThisObject(), null);
                view.getLocationOnScreen(new int[2]);
                float max = java.lang.Math.max(java.lang.Math.max(132, java.lang.Math.round(this.p4.getResources().getDisplayMetrics().density * 48.0f)) + 18.0f, java.lang.Math.max(this.x3.height(), this.y3.height()) * 2.0f);
                float c2 = c(this.G5);
                float f2 = c2 + (r10.f / 2.0f);
                float d2 = ((this.h4 != 0 || this.i4) ? d(this.G5) : r10.h) + (this.G5.g / 2.0f);
                if (imageView != this.o3) {
                    max = 0.0f;
                }
                float f3 = d2 - max;
                boolean z2 = false;
                float exactCenterX = (f2 - r6[0]) - (rect.exactCenterX() - (imageView.getDrawable().getIntrinsicWidth() / 2.0f));
                float exactCenterY = (f3 - r6[1]) - (rect.exactCenterY() - (imageView.getDrawable().getIntrinsicHeight() / 2.0f));
                weakHashMap.put(view, new float[]{exactCenterX, exactCenterY});
                field2.setFloat(view, exactCenterX);
                field3.setFloat(view, exactCenterY);
                field4.setFloat(view, exactCenterX);
                field5.setFloat(view, exactCenterY);
                method2.invoke(view, java.lang.Float.valueOf(1.0f));
                view.getViewTreeObserver().addOnPreDrawListener(new dev.duo.workspaceprobe.b.ViewTreeObserverOnPreDrawListenerC0044f(view, method2));
                java.lang.StringBuilder append = new java.lang.StringBuilder().append("Official shortcut origin=").append(f2).append(",").append(f3).append(" torch=");
                if (imageView == this.o3) {
                    z2 = true;
                }
                android.util.Log.i("DuoKeyguard", append.append(z2).toString());
            }
        }
        return proceed;
    }

    private android.graphics.Rect a(android.widget.ImageView imageView) {
        android.graphics.drawable.Drawable drawable = imageView.getDrawable();
        if (drawable == null || drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) {
            return null;
        }
        android.graphics.Bitmap createBitmap = android.graphics.Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        android.graphics.Rect rect = new android.graphics.Rect(drawable.getBounds());
        drawable.setBounds(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
        drawable.draw(new android.graphics.Canvas(createBitmap));
        drawable.setBounds(rect);
        android.graphics.Rect a2 = a(createBitmap);
        createBitmap.recycle();
        return a2;
    }

    private android.graphics.Rect a(android.graphics.Bitmap bitmap) {
        return a(bitmap, false);
    }

    private android.graphics.Rect a(android.graphics.Bitmap bitmap, boolean z2) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[bitmap.getWidth() * bitmap.getHeight()];
        bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
        int i2 = -1;
        int i3 = height;
        int i4 = width;
        int i5 = -1;
        for (int i6 = 0; i6 < bitmap.getHeight(); i6++) {
            for (int i7 = 0; i7 < bitmap.getWidth(); i7++) {
                if ((iArr[(bitmap.getWidth() * i6) + i7] >>> 24) > 8 && (!z2 || (iArr[(bitmap.getWidth() * i6) + i7] & 255) > m0)) {
                    i4 = java.lang.Math.min(i4, i7);
                    i3 = java.lang.Math.min(i3, i6);
                    i2 = java.lang.Math.max(i2, i7);
                    i5 = java.lang.Math.max(i5, i6);
                }
            }
        }
        if (i2 < 0) {
            return null;
        }
        return new android.graphics.Rect(i4, i3, i2 + 1, i5 + 1);
    }

    private void a(android.widget.ImageView imageView, android.graphics.Rect rect, float f2, float f3, int[] iArr, int i2) {
        b(imageView);
        android.view.View view = (android.view.View) imageView.getParent();
        android.graphics.drawable.Drawable drawable = imageView.getDrawable();
        float exactCenterX = rect.exactCenterX() - (drawable.getIntrinsicWidth() / 2.0f);
        float f4 = i2 / 2.0f;
        float f5 = ((f2 - iArr[0]) - f4) - exactCenterX;
        float exactCenterY = ((f3 - iArr[1]) - f4) - (rect.exactCenterY() - (drawable.getIntrinsicHeight() / 2.0f));
        android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) view.getLayoutParams();
        int round = java.lang.Math.round(f5);
        int round2 = java.lang.Math.round(exactCenterY);
        if (layoutParams.width != i2 || layoutParams.height != i2 || layoutParams.leftMargin != round || layoutParams.topMargin != round2 || layoutParams.gravity != 51) {
            layoutParams.height = i2;
            layoutParams.width = i2;
            layoutParams.leftMargin = round;
            layoutParams.topMargin = round2;
            layoutParams.bottomMargin = 0;
            layoutParams.rightMargin = 0;
            layoutParams.setMarginStart(round);
            layoutParams.setMarginEnd(0);
            layoutParams.gravity = 51;
            view.setLayoutParams(layoutParams);
        }
        android.view.ViewGroup.LayoutParams layoutParams2 = imageView.getLayoutParams();
        if (layoutParams2.width != i2 || layoutParams2.height != i2) {
            layoutParams2.height = i2;
            layoutParams2.width = i2;
            imageView.setLayoutParams(layoutParams2);
        }
        imageView.setTranslationX(f5 - round);
        imageView.setTranslationY(exactCenterY - round2);
    }

    private static boolean a(android.view.View view, android.view.View view2) {
        for (android.view.ViewParent parent = view2.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == view) {
                return true;
            }
        }
        return false;
    }

    private int a(android.view.Display display) {
        android.view.Display.Mode mode;
        if (display == null || (mode = display.getMode()) == null) {
            return -1;
        }
        int physicalWidth = mode.getPhysicalWidth();
        int physicalHeight = mode.getPhysicalHeight();
        if (physicalWidth == R && physicalHeight == S) {
            return 1;
        }
        if (physicalWidth == S && physicalHeight == R) {
            return 1;
        }
        if (physicalWidth == 1168 && physicalHeight == 1712) {
            return 0;
        }
        return (physicalWidth == 1712 && physicalHeight == 1168) ? 0 : -1;
    }

    private void a(final boolean z2, final java.util.Set<java.lang.String> set) {
        if (r0()) {
            final long j2 = this.l4;
            java.lang.Runnable runnable = new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda179
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(r2, j2, z2, set);
                }
            };
            final java.lang.Runnable[] runnableArr = {runnable};
            this.m4.add(runnable);
            this.D1.post(runnableArr[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.Runnable[] runnableArr, long j2, boolean z2, java.util.Set set) {
        this.m4.remove(runnableArr[0]);
        if (j2 == this.l4 && r0() && b(z2, (java.util.Set<java.lang.String>) set)) {
            if (this.F1) {
                android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                try {
                    a(transaction);
                    transaction.apply();
                    transaction.close();
                    return;
                } catch (java.lang.Throwable th) {
                    try {
                        transaction.close();
                    } catch (java.lang.Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            n2();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.reflect.Field field3, java.lang.reflect.Field field4, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object thisObject = chain.getThisObject();
        if (w0() && field.getInt(thisObject) == R && field2.getInt(thisObject) == S && field3.getBoolean(thisObject)) {
            if (field4.getInt(thisObject) == 5) {
                field4.setInt(thisObject, 7);
                try {
                    return chain.proceed();
                } finally {
                    field4.setInt(thisObject, 5);
                }
            }
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.app.ActivityManager.RunningTaskInfo runningTaskInfo, boolean z2, java.lang.String str, java.lang.String str2) {
        this.B1 = runningTaskInfo;
        if (this.x1 == z2 && this.y1.equals(str) && this.z1.equals(str2)) {
            return;
        }
        this.x1 = z2;
        this.y1 = str;
        this.z1 = str2;
        if (this.h1 && this.A1) {
            this.c1.a();
        }
        g2();
    }

    private void a(java.lang.ClassLoader classLoader) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.wm.shell.multiplesplit.MultipleSplitTransitionHandler", false, classLoader);
            java.lang.Class<?> cls2 = java.lang.Class.forName("com.android.wm.shell.multiplesplit.MultipleSplitRootTaskOrganizer", false, classLoader);
            java.lang.Class<?> cls3 = java.lang.Class.forName("com.android.wm.shell.multiplesplit.MultipleSplitTransitionHandler$TransitSession", false, classLoader);
            java.lang.Class<?> cls4 = java.lang.Class.forName("com.android.wm.shell.multiplesplit.MultipleSplitTransitionHandler$EnterSession", false, classLoader);
            java.lang.Class<?> cls5 = java.lang.Class.forName("com.android.wm.shell.sosc.SoScUtilsImpl", false, classLoader);
            java.lang.reflect.Method method = null;
            final java.lang.reflect.Method method2 = cls2.getMethod("getDockOffset", null);
            final java.lang.reflect.Method method3 = cls5.getMethod("getTaskRootLeash", null);
            final java.lang.reflect.Method method4 = cls5.getMethod("getInstance", null);
            final java.lang.reflect.Field declaredField = cls3.getDeclaredField("mExtraTransitType");
            final java.lang.reflect.Field declaredField2 = cls4.getDeclaredField("mEnteringIndex");
            final java.lang.reflect.Field declaredField3 = cls.getDeclaredField("mOrganizer");
            java.lang.reflect.Field[] fieldArr = {declaredField, declaredField2, declaredField3};
            for (int i2 = 0; i2 < 3; i2++) {
                fieldArr[i2].setAccessible(true);
            }
            for (java.lang.reflect.Method method5 : cls.getDeclaredMethods()) {
                if (method5.getName().equals("playDockChangeAnimation")) {
                    method = method5;
                }
            }
            if (method != null) {
                hook(method2).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda57
                    public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                        java.lang.Object a2;
                        a2 = dev.duo.workspaceprobe.b.this.a(chain);
                        return a2;
                    }
                });
                hook(method).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda58
                    public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                        java.lang.Object a2;
                        a2 = dev.duo.workspaceprobe.b.this.a(declaredField, declaredField2, method2, declaredField3, method3, method4, chain);
                        return a2;
                    }
                });
                android.util.Log.i("DuoFoldSplit", "Dock-in animation hook ready");
                return;
            }
            throw new java.lang.NoSuchMethodException("playDockChangeAnimation");
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e("DuoFoldSplit", "Dock-in animation entry unavailable", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        if (java.lang.Boolean.TRUE.equals(this.B4.get())) {
            return 0;
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.reflect.Method method, java.lang.reflect.Field field3, java.lang.reflect.Method method2, java.lang.reflect.Method method3, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object arg = chain.getArg(1);
        if (field.getInt(arg) != 11286) {
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda75
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.n();
                }
            });
            return chain.proceed();
        }
        if (this.u1 && w0() && field2.getInt(arg) == 2 && android.os.SystemClock.uptimeMillis() - this.C4 <= 3000) {
            final int intValue = ((java.lang.Integer) method.invoke(field3.get(chain.getThisObject()), null)).intValue();
            this.B4.set(java.lang.Boolean.TRUE);
            try {
                java.lang.Object proceed = chain.proceed();
                this.B4.set(java.lang.Boolean.FALSE);
                final android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) method2.invoke(method3.invoke(null, null), null);
                if (surfaceControl != null && surfaceControl.isValid() && intValue != 0) {
                    this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda76
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.workspaceprobe.b.this.a(surfaceControl, intValue);
                        }
                    });
                }
                return proceed;
            } catch (java.lang.Throwable th) {
                this.B4.set(java.lang.Boolean.FALSE);
                throw th;
            }
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.view.SurfaceControl surfaceControl, int i2, android.animation.ValueAnimator valueAnimator) {
        if (!surfaceControl.isValid()) {
            valueAnimator.cancel();
            return;
        }
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            transaction.setPosition(surfaceControl, i2 * ((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f).apply();
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
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, java.lang.reflect.Method method2, java.lang.reflect.Method method3, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        try {
            final java.lang.Object thisObject = chain.getThisObject();
            final java.util.concurrent.Executor executor = (java.util.concurrent.Executor) method.invoke(thisObject, null);
            final java.lang.Object invoke = method2.invoke(null, null);
            final java.lang.Object invoke2 = method3.invoke(null, null);
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(thisObject, executor, invoke, invoke2);
                }
            });
            return proceed;
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e("DuoFoldSplit", "Native controller capture failed", e2);
            return proceed;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.Object obj, java.util.concurrent.Executor executor, java.lang.Object obj2, java.lang.Object obj3) {
        this.k1 = obj;
        this.n1 = executor;
        this.l1 = obj2;
        this.m1 = obj3;
        g2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.app.ActivityManager.RunningTaskInfo runningTaskInfo, android.os.Bundle bundle) {
        try {
            if (this.u1 && this.x1 && this.B1 == runningTaskInfo && !this.O1 && !this.P1 && !this.Q1 && w0() && R0() && a(q0()) == 1 && ((java.lang.Boolean) this.s1.invoke(this.m1, null)).booleanValue() && ((java.lang.Boolean) this.p1.invoke(this.l1, null)).booleanValue() && !((java.lang.Boolean) this.r1.invoke(this.m1, null)).booleanValue()) {
                this.C4 = android.os.SystemClock.uptimeMillis();
                this.t1.invoke(this.m1, bundle);
                android.util.Log.i("DuoFoldSplit", "Native dock requested task=" + runningTaskInfo.taskId);
            }
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e("DuoFoldSplit", "Native dock request failed", e2);
        }
    }

    private void a(android.view.SurfaceControl surfaceControl, boolean z2) {
        boolean z3;
        android.view.SurfaceControl.Transaction transaction;
        try {
            if (!z2) {
                if (this.F1) {
                    transaction = new android.view.SurfaceControl.Transaction();
                    try {
                        for (dev.duo.workspaceprobe.b.R r2 : this.o4) {
                            if (r2 != this.V6 || !this.s3) {
                                transaction.setVisibility(r2.b, false);
                            }
                            r2.a();
                        }
                        transaction.apply();
                        this.s4 = false;
                        transaction.close();
                        this.F1 = false;
                        return;
                    } finally {
                    }
                }
                return;
            }
            b(q0());
            if (this.o4.isEmpty()) {
                l();
            }
            if (r0() && !t0()) {
                if (s0() > 0) {
                    q1();
                }
                try {
                    j();
                    z3 = t0();
                } finally {
                    if (!t0()) {
                        q1();
                    }
                }
            } else {
                z3 = false;
            }
            p0();
            if (surfaceControl == this.E1 && this.F1 && !z3) {
                return;
            }
            transaction = new android.view.SurfaceControl.Transaction();
            try {
                this.s4 = false;
                for (dev.duo.workspaceprobe.b.R r3 : this.o4) {
                    r3.a();
                    transaction.reparent(r3.b, surfaceControl).setPosition(r3.b, c(r3), d(r3)).setCrop(r3.b, new android.graphics.Rect(0, 0, r3.f, r3.g)).setLayer(r3.b, 1000000).setVisibility(r3.b, true);
                    float f2 = r3.j;
                    if (f2 > 0.0f) {
                        a(transaction, "setCornerRadius", r3.b, java.lang.Float.valueOf(f2));
                    }
                    int i2 = r3.i;
                    if (i2 > 0) {
                        a(transaction, "setBackgroundBlurRadius", r3.b, java.lang.Integer.valueOf(i2));
                    }
                    if (this.E5.contains(r3)) {
                        a(transaction, "setShadowRadius", r3.b, java.lang.Float.valueOf(8.0f));
                    }
                }
                b(transaction, false);
                transaction.apply();
                transaction.close();
                this.E1 = surfaceControl;
                this.F1 = true;
                android.util.Log.w("DuoRail", "Rail attached to " + surfaceControl);
                return;
            } finally {
                try {
                    transaction.close();
                } catch (java.lang.Throwable th) {
                    th.addSuppressed(th);
                }
            }
        } catch (java.lang.Throwable th2) {
            android.util.Log.w("DuoRail", "Rail failed", th2);
        }
        android.util.Log.w("DuoRail", "Rail failed", th2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
        if (!"onInputEvent".equals(method.getName()) || objArr == null) {
            return null;
        }
        java.lang.Object obj2 = objArr[0];
        if (!(obj2 instanceof android.view.MotionEvent)) {
            return null;
        }
        b((android.view.MotionEvent) obj2);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.String str, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        if (this.M4 == null) {
            this.M4 = chain.getThisObject();
            android.util.Log.w("DuoRail", "Launcher proxy captured via " + str);
        }
        return chain.proceed();
    }

    private void a(android.view.MotionEvent motionEvent) {
        try {
            if (this.V4 == null) {
                java.lang.Class<?> cls = java.lang.Class.forName("com.android.systemui.LauncherProxyService$1$$ExternalSyntheticLambda15", false, this.N4.getClass().getClassLoader());
                java.lang.reflect.Constructor<?> declaredConstructor = cls.getDeclaredConstructor(java.lang.Integer.TYPE);
                this.V4 = declaredConstructor;
                declaredConstructor.setAccessible(true);
                this.W4 = cls.getDeclaredField("f$0");
                this.X4 = cls.getDeclaredField("f$1");
                this.W4.setAccessible(true);
                this.X4.setAccessible(true);
            }
            this.P4.invoke(this.N4, motionEvent);
            if (((java.lang.Boolean) this.Q4.invoke(this.N4, motionEvent)).booleanValue()) {
                return;
            }
            java.lang.Object newInstance = this.V4.newInstance(0);
            this.W4.set(newInstance, this.N4);
            this.X4.set(newInstance, motionEvent);
            ((java.lang.Runnable) newInstance).run();
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "Shade forward failed", th);
            this.T4 = false;
        }
    }

    private static void a(android.view.SurfaceControl.Transaction transaction, java.lang.String str, android.view.SurfaceControl surfaceControl, java.lang.Object obj) {
        try {
            android.view.SurfaceControl.Transaction.class.getMethod(str, android.view.SurfaceControl.class, obj instanceof java.lang.Integer ? java.lang.Integer.TYPE : java.lang.Float.TYPE).invoke(transaction, surfaceControl, obj);
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.w("DuoRail", str + " unavailable", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.workspaceprobe.b.h0 h0Var) {
        boolean z2 = true;
        int i2 = android.provider.Settings.System.getInt(this.p4.getContentResolver(), "battery_indicator_style", 1);
        if (i2 != 1 && i2 != 3) {
            z2 = false;
        }
        h0Var.P = z2;
        m1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.net.wifi.WifiManager wifiManager, dev.duo.workspaceprobe.b.h0 h0Var) {
        android.net.wifi.WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        h0Var.c0 = (connectionInfo == null || connectionInfo.getSupplicantState() != android.net.wifi.SupplicantState.COMPLETED) ? -1 : android.net.wifi.WifiManager.calculateSignalLevel(connectionInfo.getRssi(), 3);
        m1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.workspaceprobe.b.h0 h0Var, android.net.wifi.WifiManager wifiManager) {
        int i2 = h0Var.c0;
        android.net.wifi.WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        int calculateSignalLevel = (connectionInfo == null || connectionInfo.getSupplicantState() != android.net.wifi.SupplicantState.COMPLETED) ? -1 : android.net.wifi.WifiManager.calculateSignalLevel(connectionInfo.getRssi(), 3);
        if (calculateSignalLevel != i2) {
            h0Var.c0 = calculateSignalLevel;
            m1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final int i2, java.lang.Boolean bool) {
        if (i2 != this.e5) {
            return;
        }
        if (bool != null) {
            this.d5 = 0;
            b(bool.booleanValue());
            return;
        }
        int i3 = this.d5;
        long[] jArr = f0;
        if (i3 >= jArr.length) {
            this.d5 = 0;
            android.util.Log.w("DuoStandby", "Clock switch unreadable; keeping current state " + this.Y4);
        } else {
            this.d5 = i3 + 1;
            long j2 = jArr[i3];
            android.util.Log.w("DuoStandby", "Clock switch read retry in " + j2 + "ms");
            this.D1.postDelayed(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda79
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.s(i2);
                }
            }, j2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(java.lang.Exception exc) {
        this.b5 = true;
        this.c5 = android.os.SystemClock.uptimeMillis() + 60000;
        o();
        O1();
        android.util.Log.e("DuoStandby", "Automatic clock disabled after interface failure", exc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, java.lang.Object obj, java.lang.reflect.Method method2, java.lang.Object[] objArr) throws java.lang.Throwable {
        if (method2.getName().equals("hashCode")) {
            return java.lang.Integer.valueOf(java.lang.System.identityHashCode(obj));
        }
        if (method2.getName().equals("equals")) {
            return java.lang.Boolean.valueOf(obj == objArr[0]);
        }
        if (method2.getName().equals("toString")) {
            return "MiDuo standby state callback";
        }
        if (method2.getName().equals("onDeviceStateChanged")) {
            final int intValue = ((java.lang.Integer) method.invoke(objArr[0], null)).intValue();
            this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda64
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.q(intValue);
                }
            });
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.Process process, java.lang.Object obj) {
        this.x5 = process;
        if (this.w5 == obj && !this.y5 && this.z5 != null && K1() && this.s5 && this.t5) {
            try {
                process.getOutputStream().write(71);
                process.getOutputStream().flush();
                return;
            } catch (java.io.IOException e2) {
                a((java.lang.Exception) e2);
                return;
            }
        }
        process.destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.Object obj, java.lang.Exception exc) {
        if (this.w5 != obj) {
            return;
        }
        boolean z2 = this.y5;
        this.w5 = null;
        this.x5 = null;
        this.y5 = false;
        this.v5 = false;
        o();
        if (!z2 && exc != null) {
            a(exc);
        } else {
            z();
        }
    }

    private void a(dev.duo.workspaceprobe.b.g0 g0Var) {
        g0Var.d = true;
        android.content.Intent addFlags = new android.content.Intent().setComponent(new android.content.ComponentName(dev.duo.icons.g.a, "dev.duo.hookprobe.TentClockActivity")).addFlags(411041792);
        android.os.Parcel obtain = android.os.Parcel.obtain();
        try {
            g0Var.writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            addFlags.putExtra(dev.duo.hookprobe.TentClockActivity.a, (android.os.Parcelable) android.os.ResultReceiver.CREATOR.createFromParcel(obtain));
            obtain.recycle();
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putBinder(dev.duo.hookprobe.TentClockActivity.c, g0Var.a);
            addFlags.putExtras(bundle);
            try {
                this.p4.startActivity(addFlags);
            } catch (java.lang.RuntimeException e2) {
                o();
                android.util.Log.e("DuoStandby", "Automatic clock launch failed", e2);
            }
        } catch (java.lang.Throwable th) {
            obtain.recycle();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.content.Intent intent, android.view.View view) {
        b(intent);
    }

    private void a(android.widget.FrameLayout frameLayout, android.view.View view, int i2) {
        a(frameLayout, view, i2, m0, p0, 170);
    }

    private void a(android.widget.FrameLayout frameLayout, android.view.View view, int i2, int i3, int i4, int i5) {
        android.widget.FrameLayout.LayoutParams layoutParams = new android.widget.FrameLayout.LayoutParams(i3, i3);
        layoutParams.gravity = 1;
        layoutParams.topMargin = i4 + (i2 * i5);
        frameLayout.addView(view, layoutParams);
        view.setOnTouchListener(new android.view.View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda108
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(android.view.View view2, android.view.MotionEvent motionEvent) {
                boolean a2;
                a2 = dev.duo.workspaceprobe.b.a(view2, motionEvent);
                return a2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(android.view.View view, android.view.MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            view.animate().alpha(0.55f).setDuration(80L).start();
            return false;
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return false;
        }
        view.animate().alpha(1.0f).setDuration(160L).start();
        return false;
    }

    private dev.duo.workspaceprobe.b.R a(java.lang.String str, android.view.View view, int i2, int i3) {
        boolean startsWith = str.startsWith("desk_");
        int i4 = startsWith ? 170 : 180;
        dev.duo.workspaceprobe.b.R r2 = new dev.duo.workspaceprobe.b.R(str, view, Q - (i4 / 2.0f), i2, i4, startsWith ? e(i3) : c(i3), (startsWith || str.equals("app_recent")) ? 5 : 60, startsWith ? q0 : 60.0f, 8);
        this.o4.add(r2);
        return r2;
    }

    private void a(java.lang.String[][] strArr) {
        final android.content.Intent launchIntentForPackage;
        android.content.pm.ActivityInfo activityInfo;
        android.content.pm.PackageManager packageManager = this.p4.getPackageManager();
        android.widget.FrameLayout u02 = u0();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if ("dial".equals(strArr[i2][0])) {
                launchIntentForPackage = new android.content.Intent("android.intent.action.DIAL");
            } else {
                launchIntentForPackage = packageManager.getLaunchIntentForPackage(strArr[i2][1]);
            }
            if (launchIntentForPackage != null) {
                launchIntentForPackage.addFlags(268435456);
                android.content.pm.ResolveInfo resolveActivity = packageManager.resolveActivity(launchIntentForPackage, 0);
                if (resolveActivity != null && (activityInfo = resolveActivity.activityInfo) != null) {
                    this.L5.add(activityInfo.packageName);
                }
                android.widget.ImageView imageView = new android.widget.ImageView(this.p4);
                try {
                    imageView.setImageDrawable(packageManager.getActivityIcon(launchIntentForPackage));
                } catch (java.lang.Exception e2) {
                    android.util.Log.w("DuoRail", "icon", e2);
                }
                imageView.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda218
                    @Override // android.view.View.OnClickListener
                    public final void onClick(android.view.View view) {
                        dev.duo.workspaceprobe.b.this.b(launchIntentForPackage, view);
                    }
                });
                a(u02, imageView, i2);
            }
        }
        int e3 = e(4) + 448;
        dev.duo.workspaceprobe.b.R a2 = a("desk_fixed", u02, l0, 4);
        this.B5 = a2;
        this.E5.add(a2);
        android.widget.FrameLayout u03 = u0();
        int i3 = 0;
        while (true) {
            android.widget.ImageView[] imageViewArr = this.I5;
            if (i3 >= imageViewArr.length) {
                break;
            }
            imageViewArr[i3] = new android.widget.ImageView(this.p4);
            a(u03, this.I5[i3], i3);
            i3++;
        }
        int i4 = 2;
        dev.duo.workspaceprobe.b.R a3 = a("desk_recent", u03, e3, 2);
        this.C5 = a3;
        this.E5.add(a3);
        int i5 = 3;
        int[] iArr = {4, 3, 187};
        int i6 = 0;
        while (i6 < i5) {
            int i7 = i5;
            dev.duo.workspaceprobe.b.Q q2 = new dev.duo.workspaceprobe.b.Q(this.p4, i6);
            this.K5[i6] = q2;
            final int i8 = iArr[i6];
            q2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda219
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.workspaceprobe.b.this.a(i8, view);
                }
            });
            int i9 = i6;
            this.H5[i9] = new dev.duo.workspaceprobe.b.R("app_nav" + i6, q2, 993.0f, (i6 * j0) + 401, 136, 136, 0, 0.0f, 8);
            this.o4.add(this.H5[i9]);
            i6 = i9 + 1;
            i5 = i7;
            i4 = i4;
        }
        int i10 = i5;
        int i11 = i4;
        android.widget.FrameLayout w2 = w(1);
        int i12 = 0;
        while (true) {
            android.widget.ImageView[] imageViewArr2 = this.J5;
            if (i12 >= imageViewArr2.length) {
                this.D5 = a("app_recent", w2, 867, i10);
                this.Y5 = 867;
                G0();
                a(this.I5, this.L5);
                android.util.Log.w("DuoRail", "Mode panels ready fixed=" + this.L5 + " desk " + l0 + "/" + e3 + " app " + g0 + "/867 end " + (e3 + e(i11)));
                return;
            }
            imageViewArr2[i12] = new dev.duo.workspaceprobe.b.T(this.p4);
            b(w2, this.J5[i12], i12);
            i12++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, android.view.View view) {
        i(i2);
    }

    private static void a(android.view.SurfaceControl.Transaction transaction, dev.duo.workspaceprobe.b.K k2, boolean z2) {
        transaction.setVisibility(k2.b, z2);
        k2.z = z2 ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.workspaceprobe.b.K k2, android.view.View view) {
        if (t() && k2.u == this.J1 && R0()) {
            q(view);
            z0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, dev.duo.workspaceprobe.b.K k2, java.lang.reflect.Field field, java.lang.Object obj, java.lang.reflect.Method method2, java.lang.Object[] objArr) throws java.lang.Throwable {
        if ("onComputeInternalInsets".equals(method2.getName())) {
            method.invoke(objArr[0], 3);
            a(k2, (android.graphics.Region) field.get(objArr[0]));
            return null;
        }
        if ("equals".equals(method2.getName())) {
            return java.lang.Boolean.valueOf(obj == objArr[0]);
        }
        if ("hashCode".equals(method2.getName())) {
            return java.lang.Integer.valueOf(java.lang.System.identityHashCode(obj));
        }
        if ("toString".equals(method2.getName())) {
            return "DuoAppRailInsets";
        }
        return null;
    }

    private void a(android.view.SurfaceControl.Transaction transaction, dev.duo.workspaceprobe.b.K k2, int i2, int i3) {
        transaction.setVisibility(k2.q, i3 > 0);
        if (i3 > 0) {
            transaction.setCrop(k2.q, new android.graphics.Rect(0, 0, i2, i3));
        }
    }

    private void a(android.view.SurfaceControl.Transaction transaction, dev.duo.workspaceprobe.b.K k2, int i2) {
        if (k2.q == null) {
            return;
        }
        try {
            if (w0 == null) {
                w0 = android.view.SurfaceControl.Transaction.class.getMethod("setColor", android.view.SurfaceControl.class, float[].class);
            }
            w0.invoke(transaction, k2.q, new float[]{android.graphics.Color.red(i2) / 255.0f, android.graphics.Color.green(i2) / 255.0f, android.graphics.Color.blue(i2) / 255.0f});
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.w("DuoRail", "Rail floor colour failed", e2);
        }
    }

    private void a(dev.duo.workspaceprobe.b.K k2, android.view.View view, float f2, int i2, int i3, int i4, float f3) {
        android.widget.FrameLayout.LayoutParams layoutParams = new android.widget.FrameLayout.LayoutParams(i3, i4);
        layoutParams.gravity = 51;
        k2.d.addView(view, layoutParams);
        view.setX(f2 - 963.0f);
        view.setY(i2);
        if (f3 > 0.0f) {
            view.setOutlineProvider(new dev.duo.workspaceprobe.b.C0059u(f3));
            view.setClipToOutline(true);
        }
    }

    private void a(dev.duo.workspaceprobe.b.K k2, android.graphics.Region region) {
        region.setEmpty();
        if (k2.u == this.J1 && t()) {
            android.graphics.Rect rect = new android.graphics.Rect();
            for (int i2 = 0; i2 < k2.d.getChildCount(); i2++) {
                android.view.View childAt = k2.d.getChildAt(i2);
                if (childAt.getVisibility() == 0 && (childAt != k2.s || this.M3)) {
                    dev.duo.workspaceprobe.b.h0 h0Var = k2.r;
                    if (childAt == h0Var) {
                        if (h0Var.l0) {
                            android.graphics.Region c2 = k2.r.c();
                            c2.translate(java.lang.Math.round(childAt.getX()), java.lang.Math.round(childAt.getY()));
                            region.op(c2, android.graphics.Region.Op.UNION);
                        }
                    } else {
                        childAt.getHitRect(rect);
                        region.op(rect, android.graphics.Region.Op.UNION);
                    }
                }
            }
        }
    }

    private void a(final int i2, android.view.SurfaceControl.Transaction transaction) {
        final dev.duo.workspaceprobe.b.K k2;
        int i3;
        int i4;
        java.lang.String str;
        final dev.duo.workspaceprobe.b.L l2 = this.U5.get(java.lang.Integer.valueOf(i2));
        if (u() && l2 != null && this.s2.containsKey(java.lang.Integer.valueOf(i2)) && this.q2.get(java.lang.Integer.valueOf(i2)) == l2.a) {
            boolean j2 = j(i2);
            if (!j2) {
                java.lang.String g2 = g(this.J0.get(java.lang.Integer.valueOf(i2)));
                if (g2 == null) {
                    i4 = 1;
                } else {
                    i4 = (!d(g2) && w0() && this.M0.b(g2) == null) ? 2 : 4;
                }
                int intValue = this.V5.getOrDefault(java.lang.Integer.valueOf(i2), 0).intValue();
                if ((intValue & i4) == 0) {
                    this.V5.put(java.lang.Integer.valueOf(i2), java.lang.Integer.valueOf(intValue | i4));
                    java.lang.StringBuilder append = new java.lang.StringBuilder().append("App rail decor not attached task=").append(i2).append(" reason=");
                    if (i4 == 1) {
                        str = "no task info";
                    } else {
                        str = i4 == 2 ? "Duo state unknown" : "not Duo";
                    }
                    android.util.Log.w("DuoRail", append.append(str).toString());
                }
                if (i4 != 4 || !this.T5.containsKey(java.lang.Integer.valueOf(i2))) {
                    return;
                }
            } else if (this.T5.containsKey(java.lang.Integer.valueOf(i2)) || l2.c) {
                return;
            }
            android.view.SurfaceControl.Transaction transaction2 = null;
            if (!j2) {
                k2 = null;
            } else {
                android.view.SurfaceControl surfaceControl = l2.b;
                if (surfaceControl == null || !surfaceControl.isValid()) {
                    return;
                }
                synchronized (this.S5) {
                    k2 = this.S5.poll();
                }
                if (k2 == null) {
                    l2.c = true;
                    this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda17
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.workspaceprobe.b.this.a(i2, l2);
                        }
                    });
                    return;
                }
            }
            if (transaction == null) {
                try {
                    transaction2 = new android.view.SurfaceControl.Transaction();
                } catch (java.lang.RuntimeException e2) {
                    android.util.Log.e("DuoRail", "App rail decor attach failed task=" + i2, e2);
                    return;
                }
            }
            if (transaction == null) {
                transaction = transaction2;
            }
            try {
                if (!j2) {
                    b(i2, transaction);
                } else {
                    k2.u = i2;
                    this.T5.put(java.lang.Integer.valueOf(i2), k2);
                    transaction.reparent(k2.b, l2.b).setLayer(k2.b, t0);
                    int[] iArr = this.W5.get(java.lang.Integer.valueOf(i2));
                    if (iArr != null) {
                        transaction.setPosition(k2.b, iArr[0], iArr[1]);
                    }
                    if (iArr != null && (i3 = iArr[2]) > 0) {
                        a(transaction, k2, i3, iArr[3]);
                    }
                    a(transaction, k2, d(i2));
                    k2.A = Float.NaN;
                    a(transaction, k2, u(i2));
                    this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda18
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.workspaceprobe.b.this.a(i2, l2, k2);
                        }
                    });
                    android.util.Log.w("DuoRail", "App rail decor attach task=" + i2);
                }
                if (transaction2 != null) {
                    transaction2.apply();
                }
                if (transaction2 != null) {
                    transaction2.close();
                }
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, dev.duo.workspaceprobe.b.L l2, dev.duo.workspaceprobe.b.K k2) {
        if (this.U5.get(java.lang.Integer.valueOf(i2)) == l2 && this.T5.get(java.lang.Integer.valueOf(i2)) == k2) {
            k2.r.d(this.Z0);
            k2.r.setY(this.N3[1] + W);
            c(k2.r);
            k2.s.setVisibility(this.M3 ? 0 : 8);
            k2.r.invalidate();
            k2.d.requestLayout();
            e(k2);
            Q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.workspaceprobe.b.L l2, int i2, final dev.duo.workspaceprobe.b.K k2) {
        l2.c = false;
        if (this.U5.get(java.lang.Integer.valueOf(i2)) == l2 && this.s2.containsKey(java.lang.Integer.valueOf(i2)) && this.q2.get(java.lang.Integer.valueOf(i2)) == l2.a && !this.T5.containsKey(java.lang.Integer.valueOf(i2)) && j(i2)) {
            synchronized (this.S5) {
                this.S5.addFirst(k2);
            }
            a(i2, (android.view.SurfaceControl.Transaction) null);
            return;
        }
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda134
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.d(k2);
            }
        });
    }

    private void a(int i2, android.view.SurfaceControl.Transaction transaction, android.graphics.Rect rect, android.graphics.Rect rect2, int i3) {
        if (rect == null || rect2 == null) {
            return;
        }
        this.W5.put(java.lang.Integer.valueOf(i2), new int[]{rect2.right, rect.top, i3, rect.height()});
        dev.duo.workspaceprobe.b.K k2 = this.T5.get(java.lang.Integer.valueOf(i2));
        if (k2 == null || transaction == null) {
            return;
        }
        transaction.setPosition(k2.b, rect2.right, rect.top);
        a(transaction, k2, d(i2));
        if (k2.q == null || i3 <= 0 || rect.height() <= 0) {
            return;
        }
        a(transaction, k2, i3, rect.height());
    }

    void a(dev.duo.workspaceprobe.b.K k2, boolean z2) {
        android.widget.FrameLayout frameLayout = k2.j;
        if (frameLayout == null || !(frameLayout.getBackground() instanceof dev.duo.workspaceprobe.b.N)) {
            return;
        }
        ((dev.duo.workspaceprobe.b.N) k2.j.getBackground()).a(!z2 ? 1 : 0);
        k2.j.invalidate();
        dev.duo.workspaceprobe.b.c0 c0Var = k2.l;
        boolean z3 = c0Var.b != z2;
        c0Var.b = z2;
        c0Var.invalidate();
        if (z3 && this.Y3) {
            if (k2.a != null || dev.duo.hookprobe.J.d(this.Z5)) {
                a(k2);
            }
        }
    }

    private boolean a(android.view.SurfaceControl.Transaction transaction, boolean z2) {
        int a2;
        if (!this.X5) {
            return false;
        }
        boolean z3 = false;
        for (dev.duo.workspaceprobe.b.K k2 : this.T5.values()) {
            k2.r.a(z2 && k2.u == this.J1 && t() && R0());
            boolean z4 = z2 && d(k2.u);
            if (k2.z != z4) {
                a(transaction, k2, z4);
                z3 = true;
            }
            if (z2) {
                float f2 = this.Q6.contains(java.lang.Integer.valueOf(k2.u)) ? 0.0f : 1.0f;
                if (f2 != k2.A) {
                    transaction.setAlpha(k2.b, f2);
                    k2.A = f2;
                    z3 = true;
                }
                if (k2.u == this.J1 && !this.L1) {
                    if (k2.w != this.K1 && k2.g && (a2 = a(k2.i, H())) >= 0) {
                        k2.v = a2;
                        k2.w = this.K1;
                    }
                    if (k2.n != this.K1) {
                        k2.n = this.K1;
                        e(k2);
                    }
                    if (k2.m != this.K1) {
                        k2.m = this.K1;
                        j(k2);
                    }
                    k2.e.setVisibility((!k2.g || k2.v <= 0) ? 4 : 0);
                }
            }
        }
        return z3;
    }

    private int a(android.widget.ImageView[] imageViewArr, java.util.Set<java.lang.String> set) {
        android.content.ComponentName componentName;
        if (!r0()) {
            return -1;
        }
        if (imageViewArr[0] == null) {
            return -1;
        }
        android.content.pm.PackageManager packageManager = this.p4.getPackageManager();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        try {
            for (android.app.ActivityManager.RecentTaskInfo recentTaskInfo : ((android.app.ActivityManager) this.p4.getSystemService(android.app.ActivityManager.class)).getRecentTasks(24, 2)) {
                android.content.Intent intent = recentTaskInfo.baseIntent;
                if (intent != null && intent.getComponent() != null) {
                    componentName = recentTaskInfo.baseIntent.getComponent();
                } else {
                    componentName = recentTaskInfo.baseActivity;
                }
                if (componentName != null) {
                    java.lang.String packageName = componentName.getPackageName();
                    if (!arrayList.contains(packageName) && !set.contains(packageName) && !"com.miui.home".equals(packageName) && !"com.android.systemui".equals(packageName) && !packageName.startsWith("dev.duo.") && packageManager.getLaunchIntentForPackage(packageName) != null) {
                        arrayList.add(packageName);
                        arrayList2.add(java.lang.Integer.valueOf(recentTaskInfo.taskId));
                        if (arrayList.size() == imageViewArr.length) {
                            break;
                        }
                    }
                }
            }
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "Recent tasks unavailable", th);
        }
        if (imageViewArr == this.J5) {
            this.g6 = arrayList.size();
        } else if (imageViewArr == this.I5) {
            this.h6 = arrayList.size();
        }
        java.lang.String str = arrayList + "/" + arrayList2;
        if (str.equals(imageViewArr[0].getTag())) {
            return arrayList.size();
        }
        imageViewArr[0].setTag(str);
        for (int i2 = 0; i2 < imageViewArr.length; i2++) {
            android.widget.ImageView imageView = imageViewArr[i2];
            if (i2 >= arrayList.size()) {
                imageView.setImageDrawable(null);
                imageView.setOnClickListener(null);
            } else {
                final java.lang.String str2 = (java.lang.String) arrayList.get(i2);
                final int intValue = ((java.lang.Integer) arrayList2.get(i2)).intValue();
                try {
                    imageView.setImageDrawable(packageManager.getApplicationIcon(str2));
                } catch (java.lang.Exception e2) {
                    imageView.setImageDrawable(null);
                }
                imageView.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda149
                    @Override // android.view.View.OnClickListener
                    public final void onClick(android.view.View view) {
                        dev.duo.workspaceprobe.b.this.a(intValue, str2, view);
                    }
                });
            }
        }
        android.util.Log.w("DuoRail", "Recents " + imageViewArr.length + " " + arrayList);
        return arrayList.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, java.lang.String str, android.view.View view) {
        a(i2, str);
    }

    private void a(int i2, java.lang.String str) {
        if (e() || t() || this.f4) {
            try {
                java.lang.Object invoke = java.lang.Class.forName("android.app.ActivityTaskManager").getMethod("getService", null).invoke(null, null);
                int intValue = ((java.lang.Integer) invoke.getClass().getMethod("startActivityFromRecents", java.lang.Integer.TYPE, android.os.Bundle.class).invoke(invoke, java.lang.Integer.valueOf(i2), null)).intValue();
                android.util.Log.w("DuoRail", "Rail recent task=" + i2 + " " + str + " result=" + intValue);
                if (intValue >= 0) {
                    return;
                }
            } catch (java.lang.Throwable th) {
                android.util.Log.w("DuoRail", "Recent task launch failed " + str, th);
            }
            android.content.Intent launchIntentForPackage = this.p4.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage != null) {
                a(launchIntentForPackage.addFlags(268435456));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, java.lang.reflect.Method method2, int i2, java.lang.reflect.Method method3, java.lang.reflect.Method method4, java.lang.reflect.Method method5, java.lang.reflect.Method method6, java.lang.reflect.Method method7, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object obj;
        dev.duo.workspaceprobe.b bVar = this;
        java.lang.Object proceed = chain.proceed();
        try {
            java.lang.Object arg = chain.getArg(1);
            java.lang.Object arg2 = chain.getArg(2);
            if (arg != null && arg2 != null) {
                java.lang.Object obj2 = null;
                if (method.invoke(arg2, null) == null && (((java.lang.Integer) method2.invoke(arg2, null)).intValue() & i2) == i2 && !((java.lang.Boolean) method3.invoke(null, arg2)).booleanValue() && !((java.lang.Boolean) method4.invoke(null, arg2)).booleanValue()) {
                    android.graphics.Rect rect = (android.graphics.Rect) method5.invoke(arg2, null);
                    if (rect.width() == 1168 && rect.height() == 1712) {
                        int intValue = ((java.lang.Integer) method6.invoke(arg2, null)).intValue();
                        int i3 = -1;
                        int i4 = 0;
                        android.graphics.Rect rect2 = null;
                        for (android.app.ActivityManager.RunningTaskInfo runningTaskInfo : bVar.J0.values()) {
                            if (runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) != intValue) {
                                obj = obj2;
                            } else if (!runningTaskInfo.getClass().getField("isVisible").getBoolean(runningTaskInfo)) {
                                obj = obj2;
                            } else if (bVar.j(runningTaskInfo.taskId)) {
                                java.lang.Object obj3 = runningTaskInfo.getClass().getField("configuration").get(runningTaskInfo);
                                java.lang.Object obj4 = obj3.getClass().getField("windowConfiguration").get(obj3);
                                obj = null;
                                if (rect.equals(obj4.getClass().getMethod("getBounds", null).invoke(obj4, null))) {
                                    java.lang.Object obj5 = runningTaskInfo.getClass().getField("appCompatTaskInfo").get(runningTaskInfo);
                                    android.graphics.Rect rect3 = (android.graphics.Rect) obj5.getClass().getField("topActivityLetterboxBounds").get(obj5);
                                    if (rect3 != null && !rect3.isEmpty() && !rect3.equals(rect)) {
                                        i3 = runningTaskInfo.taskId;
                                        i4++;
                                        obj2 = null;
                                        rect2 = rect3;
                                        bVar = this;
                                    }
                                }
                            } else {
                                obj = obj2;
                            }
                            obj2 = obj;
                            bVar = this;
                        }
                        if (i4 == 1) {
                            method7.invoke(chain.getThisObject(), arg, new android.graphics.Rect(rect2), arg2, java.lang.Boolean.TRUE);
                            android.util.Log.w("DuoRail", "Embedded letterbox animation task=" + i3 + " end=" + rect + " frame=" + rect2);
                            return proceed;
                        }
                    }
                }
            }
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "Embedded letterbox animation failed", th);
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0093 A[Catch: all -> 0x0156, TryCatch #0 {all -> 0x0156, blocks: (B:3:0x0006, B:4:0x0025, B:6:0x002b, B:11:0x004e, B:13:0x0058, B:18:0x0069, B:24:0x0088, B:26:0x0093, B:27:0x00a4, B:36:0x00ae, B:38:0x00b5, B:51:0x0065, B:52:0x005d, B:61:0x00db, B:63:0x00e1, B:65:0x00e7, B:68:0x00f8, B:73:0x0152), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ca A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Method r18, java.lang.reflect.Method r19, java.lang.reflect.Method r20, java.lang.reflect.Method r21, io.github.libxposed.api.XposedInterface.Chain r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.workspaceprobe.b.a(java.lang.reflect.Method, java.lang.reflect.Method, java.lang.reflect.Method, java.lang.reflect.Method, io.github.libxposed.api.XposedInterface$Chain):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.Object obj) {
        if (this.P5.remove(obj)) {
            this.Q5.remove(obj);
            Q();
        }
    }

    public synchronized void a(android.os.Bundle bundle, boolean z2) throws java.lang.ReflectiveOperationException {
        java.lang.ReflectiveOperationException reflectiveOperationException;
        int i2 = 0;
        if (bundle != null) {
            try {
                java.util.ArrayList parcelableArrayList = bundle.getParcelableArrayList("layers");
                if (parcelableArrayList != null) {
                    int size = parcelableArrayList.size();
                    int i3 = 0;
                    while (i3 < size) {
                        java.lang.Object obj = parcelableArrayList.get(i3);
                        i3++;
                        android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) ((android.os.Bundle) obj).getParcelable("mirror");
                        if (z2) {
                            surfaceControl.release();
                        } else {
                            if (this.H6 == null) {
                                this.H6 = new java.util.ArrayList<>();
                            }
                            this.H6.add(surfaceControl);
                        }
                    }
                }
            } catch (java.lang.RuntimeException e2) {
                if (reflectiveOperationException == null) {
                    reflectiveOperationException = new java.lang.ReflectiveOperationException("未移交镜像摘层失败，保留账本", e2);
                } else {
                    reflectiveOperationException.addSuppressed(e2);
                }
            } finally {
            }
        }
        if (!z2 && this.H6 != null) {
            java.util.ArrayList arrayList = new java.util.ArrayList(this.H6);
            int size2 = arrayList.size();
            reflectiveOperationException = null;
            while (i2 < size2) {
                java.lang.Object obj2 = arrayList.get(i2);
                i2++;
                android.view.SurfaceControl surfaceControl2 = (android.view.SurfaceControl) obj2;
                android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                try {
                    transaction.reparent(surfaceControl2, null);
                    transaction.apply();
                    transaction.close();
                    surfaceControl2.release();
                    this.H6.remove(surfaceControl2);
                } catch (java.lang.Throwable th) {
                    try {
                        transaction.close();
                    } catch (java.lang.Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (reflectiveOperationException != null) {
                throw reflectiveOperationException;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(dev.duo.workspaceprobe.b.O o2) {
        try {
            o2.b.getOutputStream().write(82);
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoSidebar", "Native replay request failed", th);
        }
    }

    private boolean a(android.view.SurfaceControl.Transaction transaction) {
        return b(transaction, true);
    }

    private boolean a(android.view.SurfaceControl.Transaction transaction, dev.duo.workspaceprobe.b.R r2, float f2) {
        if (r2 == null || (b(r2) && !r0())) {
            return false;
        }
        float f3 = (0.06f * f2) + 0.94f;
        float f4 = 1.0f - f3;
        float c2 = c(r2) + ((r2.f * f4) / 2.0f);
        float d2 = d(r2) + ((r2.g * f4) / 2.0f);
        if (f2 == r2.k && c2 == r2.l && d2 == r2.m) {
            return false;
        }
        r2.k = f2;
        r2.l = c2;
        r2.m = d2;
        transaction.setVisibility(r2.b, f2 > 0.001f);
        transaction.setAlpha(r2.b, f2);
        try {
            if (z0 == null) {
                java.lang.Class cls = java.lang.Float.TYPE;
                z0 = android.view.SurfaceControl.Transaction.class.getMethod("setMatrix", android.view.SurfaceControl.class, cls, cls, cls, cls);
            }
            z0.invoke(transaction, r2.b, java.lang.Float.valueOf(f3), java.lang.Float.valueOf(0.0f), java.lang.Float.valueOf(0.0f), java.lang.Float.valueOf(f3));
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.w("DuoRail", "setMatrix unavailable", e2);
        }
        transaction.setPosition(r2.b, c2, d2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static java.lang.Object a(java.lang.Class<?> cls) {
        java.lang.String[] strArr = {"getMiuiLevel", "getMiuiSignalLevel"};
        for (int i2 = 0; i2 < 2; i2++) {
            try {
                return cls.getMethod(strArr[i2], null);
            } catch (java.lang.NoSuchMethodException e2) {
            }
        }
        for (java.lang.Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            java.lang.String[] strArr2 = {"mMiuiLevel", "miuiLevel"};
            for (int i3 = 0; i3 < 2; i3++) {
                try {
                    java.lang.reflect.Field declaredField = cls2.getDeclaredField(strArr2[i3]);
                    declaredField.setAccessible(true);
                    return declaredField;
                } catch (java.lang.NoSuchFieldException e3) {
                }
            }
        }
        return cls;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(int i2, boolean z2) {
        if (z2 ? this.Q6.add(java.lang.Integer.valueOf(i2)) : this.Q6.remove(java.lang.Integer.valueOf(i2))) {
            android.util.Log.w("DuoRail", "Full-screen page task=" + i2 + (z2 ? " in" : " out") + " pages=" + this.Q6);
            Q();
        }
    }

    private void a(float f2, float f3, long j2) {
        if (f2 <= 0.01f && f3 < 0.999f) {
            a("overlay alpha " + f2 + "/" + f3, true, false, j2);
        } else {
            if (f2 < 0.99f || f3 < 0.999f) {
                return;
            }
            a("overlay alpha " + f2 + "/" + f3, false, false, j2);
        }
    }

    private void a(java.lang.String str, boolean z2, boolean z3) {
        a(str, z2, z3, android.os.SystemClock.uptimeMillis());
    }

    private void a(java.lang.String str, boolean z2, boolean z3, long j2) {
        if ((!z3 || (this.R6 && j2 - this.S6 >= 150)) && z2 != this.R6) {
            this.R6 = z2;
            if (r0() && t0()) {
                if (this.F1) {
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
                } else {
                    n2();
                }
            }
            if (z2) {
                this.S6 = j2;
            }
            android.util.Log.w("DuoRail", "Recents " + (z2 ? "in" : "out") + " via " + str);
            android.animation.ValueAnimator valueAnimator = this.U6;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            android.animation.ValueAnimator ofFloat = android.animation.ValueAnimator.ofFloat(this.T6, z2 ? 1.0f : 0.0f);
            this.U6 = ofFloat;
            ofFloat.setDuration(java.lang.Math.round(java.lang.Math.abs(r6 - r5) * 240.0f) + 20);
            this.U6.setInterpolator(new android.view.animation.PathInterpolator(0.2f, 0.0f, 0.0f, 1.0f));
            this.U6.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda10
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator2) {
                    dev.duo.workspaceprobe.b.this.b(valueAnimator2);
                }
            });
            this.U6.start();
        }
    }

    private void a(float f2) {
        boolean z2 = this.W6 >= 0.999f;
        b(f2);
        if (z2 != (this.W6 >= 0.999f)) {
            Q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void a(java.lang.String str, float f2) {
        char c2;
        if (str == null) {
            return;
        }
        boolean z2 = this.X6 >= 0.999f;
        switch (str.hashCode()) {
            case -907680051:
                if (str.equals("scroll")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 3417674:
                if (str.equals("open")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 94756344:
                if (str.equals("close")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                if (f2 >= 0.0f) {
                    c(f2);
                    break;
                } else {
                    return;
                }
            case 1:
                c(1.0f);
                break;
            case 2:
                c(0.0f);
                break;
            default:
                return;
        }
        if (!"scroll".equals(str)) {
            android.util.Log.w("DuoSearch", "Search " + str + " p=" + f2 + " now=" + this.X6);
        }
        if (z2 != (this.X6 >= 0.999f)) {
            Q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(dev.duo.workspaceprobe.b.J j2) {
        this.a7.remove(j2);
        if (this.a7.isEmpty()) {
            if (this.b7) {
                this.p4.unregisterReceiver(this.e7);
                this.b7 = false;
            }
            if (this.c7) {
                this.p4.getContentResolver().unregisterContentObserver(this.f7);
                this.c7 = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final java.util.Set set) {
        final java.util.HashMap hashMap = new java.util.HashMap();
        java.util.Iterator it = set.iterator();
        while (it.hasNext()) {
            java.lang.String str = (java.lang.String) it.next();
            try {
                hashMap.put(str, x(str));
            } catch (java.lang.Exception e2) {
                android.util.Log.w("DuoRail", "Rail switch state unavailable: " + str, e2);
            }
        }
        this.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(set, hashMap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.util.Set set, java.util.Map map) {
        for (dev.duo.workspaceprobe.b.J j2 : this.a7) {
            if (set.contains(j2.a)) {
                java.lang.Boolean bool = (java.lang.Boolean) map.get(j2.a);
                if (!java.util.Objects.equals(j2.d, bool)) {
                    j2.d = bool;
                    j2.invalidate();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(java.lang.String str, java.lang.Throwable th) {
        android.util.Log.w("DuoRail", "Rail " + str + " unavailable", th);
        try {
            android.widget.Toast.makeText(this.p4, "该动作不可用：" + str, 0).show();
        } catch (java.lang.Throwable th2) {
            android.util.Log.w("DuoRail", "Rail failure toast failed", th2);
        }
    }

    private void a(java.lang.String str, android.content.Intent intent) {
        try {
            this.p4.startActivity(intent);
            android.util.Log.w("DuoRail", "Rail launch " + str);
        } catch (java.lang.Throwable th) {
            a(str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(java.lang.String str, boolean z2) {
        this.g7.put(str, java.lang.Boolean.valueOf(z2));
        k1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.RuntimeException runtimeException) {
        a("常亮", (java.lang.Throwable) runtimeException);
    }

    private int a(java.lang.Integer num) {
        android.os.Bundle bundle;
        if (num != null) {
            bundle = new android.os.Bundle();
            bundle.putInt("set", num.intValue());
        } else {
            bundle = null;
        }
        android.os.Bundle call = this.p4.getContentResolver().call(android.net.Uri.parse("content://dev.duo.hookprobe.config"), "keepScreen", (java.lang.String) null, bundle);
        if (call == null || !call.containsKey("saved")) {
            throw new java.lang.IllegalStateException("keepScreen: " + (call == null ? "no response" : call.getString("error", "no value")));
        }
        int i2 = call.getInt("saved");
        if (num == null || i2 == num.intValue()) {
            return i2;
        }
        throw new java.lang.IllegalStateException("keepScreen: wrote " + num + ", read " + i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(android.content.Intent intent) {
        try {
            this.p4.startActivity(intent);
            android.util.Log.w("DuoRail", "Rail launch " + intent);
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoRail", "Rail launch failed " + intent, th);
        }
    }

    private boolean a(java.lang.Object obj, java.lang.reflect.Field field) {
        try {
            if (java.lang.Boolean.TRUE.equals(this.I0.get(java.lang.Integer.valueOf(field.getInt(obj))))) {
                if (w0()) {
                    return true;
                }
            }
            return false;
        } catch (java.lang.ReflectiveOperationException e2) {
            return false;
        }
    }

    private void a(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3, java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.reflect.Method method) {
        try {
            this.X0 = (java.util.Map) field2.get(obj);
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.w("DuoRail", "Letterbox lookup failed", e2);
        }
        if (a(obj2, field)) {
            try {
                java.lang.Object obj4 = ((java.util.Map) field2.get(obj)).get(java.lang.Integer.valueOf(field.getInt(obj2)));
                if (obj4 != null) {
                    method.invoke(obj3, obj4);
                    android.util.Log.w("DuoWallpaper", "Hidden only Home letterbox background task=" + field.getInt(obj2));
                }
            } catch (java.lang.ReflectiveOperationException e3) {
                android.util.Log.w("DuoWallpaper", "Hide failed", e3);
            }
        }
    }
}
