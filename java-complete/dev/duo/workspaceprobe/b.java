package dev.duo.workspaceprobe;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.Dialog;
import android.app.KeyguardManager;
import android.app.StatusBarManager;
import android.app.UiModeManager;
import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.hardware.HardwareBuffer;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.hardware.display.DisplayManager;
import android.hardware.input.InputManager;
import android.location.LocationManager;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.TetheringManager;
import android.net.Uri;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.VibrationAttributes;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.Settings;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.telephony.CellSignalStrength;
import android.telephony.SignalStrength;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Base64;
import android.util.Log;
import android.view.Choreographer;
import android.view.Display;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceControl;
import android.view.SurfaceControlViewHost;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import android.view.animation.PathInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import dev.duo.hookprobe.TentClockActivity;
import dev.duo.taskcore.WorkspaceProtocol;
import dev.duo.workspaceprobe.a;
import dev.duo.workspaceprobe.b;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import io.github.libxposed.api.XposedModuleInterface;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.text.Collator;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class b extends XposedModule {
    private static final int A = 12;
    private static final int A0_v= 10;
    private static final int B = 96;
    private static final int B0_v= 12;
    private static final int C = 20;
    private static final int C0_v= 13;
    private static final int D = 136;
    private static final int D0_v= 1800000;
    private static final int E = 20;
    private static final int F = 20;
    private static final int G = 20;
    private static final int I = 999;
    private static Method K = null;
    private static Method L = null;
    private static Method M = null;
    private static final float N = 1061.0f;
    static final int O = 2364;
    static final int P = 1672;
    private static final int Q = 1175;
    private static final float R = 21.5f;
    private static final float S = 114.0f;
    private static final int T = 47;
    private static final int U = 314;
    private static final int V = 2154;
    private static final int W = 1486;
    private static final int X = -51;
    private static final int Y = -62;
    private static final int Z = 44;
    private static final int a = -789517;
    private static final int a0 = 200;
    private static final int b_v= -16777216;
    private static final int b0 = 120;
    private static volatile Field c = null;
    private static Field d = null;
    private static final int d0 = 402;
    private static Field e = null;
    private static final int e0 = 24;
    private static Field f = null;
    private static final int f0 = 120;
    private static Field g = null;
    private static final int g0 = 150;
    private static Method h_v = null;
    private static final int h0_v = 30;
    private static Method i = null;
    private static final int i0 = 424;
    private static final int j_v= 3;
    private static final int j0_v= 128;
    private static final int k_v= 300;
    private static final int k0_v= 170;
    private static final int l_v= 33;
    private static final int l0_v= 170;
    private static final int m0_v= 21;
    private static final int n_v= 0;
    private static final float n0_v= 54.0f;
    private static final int o_v= 1;
    private static final int o0_v= 411;
    private static final int p_v= 2;
    private static final int p0_v= 40;
    private static final int q_v= 3;
    private static final int q0_v= 2000;
    private static final int r_v= 4;
    private static final int r0_v= 3;
    private static final int s_v= 5;
    private static final int s0_v= 963;
    private static final int t_v= 6;
    private static Method t0 = null;
    private static final int u_v= 30;
    private static int u0_v= 0;
    private static final int v_v= 120;
    private static final int w_v= 16;
    private static Method w0 = null;
    private static final int x_v= 136;
    private static final int y_v= 96;
    static final String y0 = "dev.duo.workspaceprobe.SEARCH";
    private static final int z_v= 20;
    private static volatile String z0;
    final Handler A1;
    private volatile Method A2;
    private final ViewTreeObserver.OnPreDrawListener A3;
    private Object A4;
    private final R[] A5;
    public Consumer<long[]> A6;
    private SurfaceControl B1;
    private volatile int B2;
    private ViewTreeObserver B3;
    private long B4_v;
    private final ImageView[] B5;
    public Consumer<View> B6;
    private boolean C1_v;
    private int C2_v;
    private final View.OnAttachStateChangeListener C3;
    private boolean C4_v;
    private final ImageView[] C5;
    public Runnable C6;
    volatile SurfaceControl D1;
    private String D2;
    private NotificationListenerService D3;
    private float D4_v;
    private final Q[] D5;
    private int D6_v;
    private String E0;
    private volatile Object E1;
    private String E2;
    private final Runnable E3;
    private float E4;
    private final Set<String> E5;
    private boolean E6;
    String F1;
    private final Map<String, i0> F2;
    private volatile List<String> F3;
    private volatile Object F4;
    private float F5;
    private boolean F6;
    int G1;
    private final Map<String, Integer> G2;
    private volatile boolean G3;
    private Object G4;
    private float G5;
    private boolean G6;
    private volatile long H1;
    private final Runnable H2;
    private boolean H3;
    private Object H4;
    private boolean H5;
    private final Runnable H6;
    boolean I1;
    private String I2;
    private volatile int[] I3;
    private Method I4;
    private final Set<Object> I5;
    private final Set<Integer> I6;
    private boolean J1;
    private String J2;
    private volatile Boolean J3;
    private Method J4;
    private final Map<Object, Long> J5;
    private boolean J6;
    private boolean K1;
    private String K2;
    private List<String> K3;
    private Method K4;
    private long K5;
    private long K6;
    boolean L1;
    private volatile long L2;
    private List<String> L3;
    private boolean L4;
    private final ArrayDeque<K> L5;
    private float L6;
    private boolean M1;
    private volatile long M2;
    private List<String> M3;
    private boolean M4;
    private final Map<Integer, K> M5;
    private ValueAnimator M6;
    boolean N1;
    private long N2;
    private volatile List<String> N3;
    private MotionEvent N4;
    private final Map<Integer, L> N5;
    private R N6;
    private final Set<Object> O1;
    private boolean O2;
    private int O3;
    private Constructor<?> O4;
    private final Map<Integer, Integer> O5;
    private float O6;
    private volatile boolean P0;
    private int P1;
    private boolean P2;
    private volatile int P3;
    private Field P4;
    private final Map<Integer, int[]> P5;
    private float P6;
    private volatile boolean Q0;
    private final ExecutorService Q1;
    private boolean Q2;
    private volatile boolean Q3;
    private Field Q4;
    private volatile boolean Q5;
    private boolean Q6;
    private volatile Handler R0;
    private Method R1;
    private boolean R2;
    private boolean R3;
    private boolean R4;
    private int R5;
    private boolean R6;
    private Object S0;
    private Runnable S1;
    private boolean S2;
    private int S3;
    private boolean S4;
    private volatile String[] S5;
    private final Set<J> S6;
    private volatile boolean T1;
    private boolean T2;
    private boolean T3;
    private boolean T4;
    private final Map<Integer, Boolean> T5;
    private boolean T6;
    private volatile Map<?, ?> U0;
    private int U1;
    private int U2;
    private d0 U3;
    private boolean U4;
    private boolean U5;
    private boolean U6;
    private volatile boolean V0;
    private volatile int V1;
    private int V2;
    private b0 V3;
    private long V4;
    private final Map<Integer, Boolean> V5;
    private boolean V6;
    private h0 W0;
    private volatile ComponentName W1;
    private int W2;
    private X W3;
    private int W4;
    private boolean W5;
    private final BroadcastReceiver W6;
    private f0 X0;
    private volatile int X1;
    private int X2;
    private float X3;
    private int X4;
    private boolean X5;
    private final ContentObserver X6;
    private TelephonyCallback Y0;
    private boolean Y1;
    private R Y2;
    private boolean Y3;
    private DisplayManager.DisplayListener Y4;
    private int Y5;
    private final Map<String, Boolean> Y6;
    private String Z1;
    private R Z2;
    private boolean Z3;
    private boolean Z4;
    private int Z5;
    private boolean Z6;
    private String a2;
    private TextView a3;
    private int a4;
    private boolean a5;
    private boolean a6;
    private boolean a7;
    private SensorManager b1;
    private boolean b2;
    private TextView b3;
    private boolean b4;
    private boolean b5;
    private boolean b6;
    private Sensor c1;
    private boolean c2;
    private TextView c3;
    private boolean c4;
    private boolean c5;
    private boolean c6;
    private SensorEventListener d1;
    private long d2;
    private TextView d3;
    private volatile int d4;
    private boolean d5;
    private int d6;
    private volatile boolean e1;
    private long e2;
    private TextView e3;
    private volatile long e4;
    private int e5;
    private int e6;
    private long f2;
    private final Runnable f3;
    private final Set<Runnable> f4;
    private int f5;
    private float f6;
    private int g2;
    private boolean g3;
    private final List<R> g4;
    private Object g5;
    private long g6;
    private Object h1;
    private volatile SharedPreferences h2;
    private FrameLayout h3;
    private final List<R> h4;
    private SensorManager h5;
    private long h6;
    private Object i1;
    private volatile long i2;
    private ImageView i3;
    Context i4;
    private Sensor i5;
    private long i6;
    private Object j1;
    private volatile boolean j2;
    private ImageView j3;
    private PowerManager j4;
    private SensorEventListener j5;
    private long j6;
    private Executor k1;
    private volatile boolean k2;
    private boolean k3;
    private KeyguardManager k4;
    private int k5;
    private long k6;
    private Method l1;
    private final Map<Integer, Integer> l2;
    private boolean l3;
    private volatile boolean l4;
    private boolean l5;
    private long l6;
    private Method m1;
    private final Map<Integer, ValueAnimator> m2;
    private boolean m3;
    private boolean m4;
    private boolean m5;
    private volatile O m6;
    private Method n1;
    private volatile Map<?, ?> n2;
    private boolean n3;
    private SurfaceControl n4;
    private boolean n5;
    private volatile ExecutorService n6;
    private Method o1;
    private Field[] o2;
    private float o3;
    private float o4;
    private boolean o5;
    private volatile long o6;
    private Method p1;
    private final Map<Integer, Integer> p2;
    private float p3;
    private float p4;
    private Object p5;
    private long p6;
    private Method q1;
    private final Set<Integer> q2;
    private SurfaceControl q3;
    private float q4;
    private java.lang.Process q5;
    private final Object q6;
    private final ThreadLocal<Integer> r2;
    private ClassLoader r3;
    private long r4;
    private boolean r5;
    private P r6;
    private volatile boolean s1;
    private volatile boolean s2;
    private Rect s3;
    private boolean s4;
    private g0 s5;
    private boolean s6;
    private long t1;
    private boolean t2;
    private Rect t3;
    private int t4;
    private R t5;
    private boolean t6;
    private volatile boolean u1;
    private String u2;
    private int u3;
    private final ThreadLocal<Boolean> u4;
    private R u5;
    private long u6;
    private int v2;
    private int v3;
    private volatile long v4;
    private R v5;
    private long v6;
    private int w2;
    private int w3;
    private ValueAnimator w4;
    private R w5;
    private long w6;
    private boolean x1;
    private final Map<Integer, Integer> x2;
    private final Map<View, Object[]> x3;
    private final n x4;
    private final Set<R> x5;
    private final Object x6;
    private volatile ActivityManager.RunningTaskInfo y1;
    private volatile String y2;
    private int y3;
    private GradientDrawable y4;
    private N y5;
    private volatile boolean y6;
    private U z1;
    private volatile Method z2;
    private final View.OnLayoutChangeListener z3;
    private Object z4;
    private R z5;
    private ArrayList<SurfaceControl> z6;
    private static final Uri m = Uri.parse("content://com.lsposed.miduo.config/statusStyles");
    private static final float[] H = {1.0f, 0.985f, 0.94f, 0.86f, 0.75f, 0.62f, 0.48f, 0.35f, 0.23f, 0.13f, 0.06f, 0.015f, 0.0f};
    private static final Interpolator J = new PathInterpolator(0.2f, 0.0f, 0.0f, 1.0f);
    private static final long[] c0 = {2000, 5000};
    private static final ArgbEvaluator v0 = new ArgbEvaluator();
    private static final Map<Class<?>, Object> x0 = new ConcurrentHashMap();
    private final Map<Integer, Boolean> F0 = new ConcurrentHashMap();
    private final Map<Integer, ActivityManager.RunningTaskInfo> G0 = new ConcurrentHashMap();
    private final Set<Integer> H0 = ConcurrentHashMap.newKeySet();
    private final Set<Integer> I0 = ConcurrentHashMap.newKeySet();
    private final a J0 = new a();
    private final ExecutorService K0 = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda52
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread a2;
            a2 = dev.duo.workspaceprobe.b.a(runnable);
            return a2;
        }
    });
    private final ExecutorService L0 = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda53
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread b2;
            b2 = dev.duo.workspaceprobe.b.b(runnable);
            return b2;
        }
    });
    private final Set<String> M0 = ConcurrentHashMap.newKeySet();
    private final Map<String, Long> N0 = new ConcurrentHashMap();
    private final AtomicBoolean O0 = new AtomicBoolean();
    private final Set<Integer> T0 = ConcurrentHashMap.newKeySet();
    private final c Z0 = new c();
    private int a1 = 1;
    private volatile int f1 = -1;
    private float g1 = Float.NaN;
    private volatile boolean r1 = true;
    private volatile String v1 = "";
    private volatile String w1 = "";

    class A implements TetheringManager.StopTetheringCallback {
        A() {
        }

        public void onStopTetheringFailed(int i) {
            dev.duo.workspaceprobe.b.this.a("热点", (Throwable) new IllegalStateException("stop failed " + i));
        }
    }

    class B implements TetheringManager.StartTetheringCallback {
        B() {
        }

        public void onTetheringFailed(int i) {
            dev.duo.workspaceprobe.b.this.a("热点", (Throwable) new IllegalStateException("start failed " + i));
        }

        public void onTetheringStarted() {
            Log.w("DuoRail", "Rail hotspot on");
        }
    }

    class C extends ContentObserver {
        C(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z_v) {
            dev.duo.workspaceprobe.b.this.W1();
        }
    }

    class D extends ContentObserver {
        D(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z_v) {
            dev.duo.workspaceprobe.b.this.V1();
        }
    }

    class E extends ContentObserver {
        E(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z_v) {
            dev.duo.workspaceprobe.b.this.O1();
        }
    }

    class F extends ContentObserver {
        F(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z_v) {
            if (dev.duo.hookprobe.J.c(dev.duo.workspaceprobe.b.this.S5)) {
                dev.duo.workspaceprobe.b.this.O1();
            }
        }
    }

    class G extends ContentObserver {
        G(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z_v) {
            dev.duo.workspaceprobe.b.this.R1();
        }
    }

    class H extends ContentObserver {
        H(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z_v) {
            dev.duo.workspaceprobe.b.this.Z1();
        }
    }

    class I extends ContentObserver {
        I(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z_v, Uri uri) {
            if (uri == null || uri.getPathSegments().size() != 2) {
                return;
            }
            dev.duo.workspaceprobe.b.this.g(uri.getLastPathSegment());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class J extends View {
        static final int o_v = 136;
        private static final float p_v = 58.0f;
        private static final float q_v = 4.5f;
        final String a;
        private final b b;
        private String c;
        private Boolean d;
        private final N e;
        private final Paint f;
        private final Paint g;
        private final Path h;
        private final Path i;
        private Drawable j_v;
        private boolean k_v;
        private boolean l_v;
        private int m;
        private float n_v;

        J(b bVar, Context context, String str) {
            super(context);
            N n_v = new N(p_v, 1);
            this.e = n_v;
            Paint paint = new Paint(1);
            this.f = paint;
            Paint paint2 = new Paint(1);
            this.g = paint2;
            this.h = new Path();
            Path path = new Path();
            this.i = path;
            this.m = -1;
            this.n_v = 1.0f;
            this.b = bVar;
            this.a = str;
            path.addCircle(68.0f, 68.0f, p_v, Path.Direction.CW);
            paint2.setColor(33554431);
            paint2.setShadowLayer(7.0f, 0.0f, 2.0f, 335544320);
            n_v.setBounds(Math.round(10.0f), Math.round(10.0f), Math.round(126.0f), Math.round(126.0f));
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(q_v);
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint.setStrokeJoin(Paint.Join.ROUND);
            if (str.startsWith("app:")) {
                c(str.substring(4));
            } else if ("wechat".equals(str) || "alipay".equals(str)) {
                this.j_v = dev.duo.hookprobe.N.a(str);
            } else {
                Drawable a = dev.duo.hookprobe.I.a(context, str);
                this.j_v = a;
                if (a != null) {
                    this.k_v = true;
                    this.l_v = true;
                } else if ("translate".equals(str)) {
                    c("com.xiaomi.aiasst.vision");
                } else {
                    d(a(str));
                }
            }
            setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$J$$ExternalSyntheticLambda0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean a2;
                    a2 = dev.duo.workspaceprobe.b.J.this.a(view, motionEvent);
                    return a2;
                }
            });
        }

        /* JADX WARN: Can't_v fix incorrect switch cases order, some code will duplicate */
        static boolean b(String str) {
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
                case WorkspaceProtocol.RELEASE_TASK /* 8 */:
                case WorkspaceProtocol.REGISTER_SOURCE /* 9 */:
                case '\n':
                case WorkspaceProtocol.LOOKUP_SOURCE /* 11 */:
                    return true;
                default:
                    return false;
            }
        }

        private void c(String str) {
            try {
                this.j_v = getContext().getPackageManager().getApplicationIcon(str);
            } catch (Throwable th) {
            }
        }

        private void d(String str) {
            if (str == null) {
                return;
            }
            try {
                int identifier = getContext().getResources().getIdentifier(str, "drawable", "com.android.systemui");
                if (identifier != 0) {
                    this.j_v = getContext().getDrawable(identifier).mutate();
                    this.k_v = true;
                }
            } catch (Throwable th) {
            }
        }

        void e(String str) {
            if (Objects.equals(this.c, str)) {
                return;
            }
            this.c = str;
            this.j_v = null;
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
        protected void onDraw(Canvas canvas) {
            if ("lastapp".equals(this.a)) {
                b(canvas, 68.0f);
                return;
            }
            canvas.save();
            canvas.clipOutPath(this.i);
            canvas.drawCircle(68.0f, 68.0f, 57.0f, this.g);
            canvas.restore();
            this.e.draw(canvas);
            canvas.translate(0.0f, dev.duo.workspaceprobe.b.u0_v);
            if (this.j_v == null) {
                a(canvas, 68.0f);
                return;
            }
            int round = "calculator".equals(this.a) ? 70 : this.l_v ? Math.round(p_v) : ("screenrecord".equals(this.a) || "eyecare".equals(this.a)) ? 72 : 68;
            if (this.k_v) {
                this.j_v.setTint(a(this.d, this.m));
            }
            this.j_v.setAlpha(Math.round(this.n_v * 255.0f));
            float f = round / 2.0f;
            float f2 = 68.0f - f;
            float f3 = 68.0f + f;
            this.j_v.setBounds(Math.round(f2), Math.round(f2), Math.round(f3), Math.round(f3));
            this.j_v.draw(canvas);
        }

        private void b(Canvas canvas, float f) {
            canvas.translate(0.0f, dev.duo.workspaceprobe.b.u0_v);
            Drawable drawable = this.j_v;
            if (drawable == null) {
                this.f.setStyle(Paint.Style.FILL);
                this.f.setColor((this.m & 16777215) | 520093696);
                float f2 = f - 48.0f;
                float f3 = f + 48.0f;
                canvas.drawRoundRect(f2, f2, f3, f3, 26.0f, 26.0f, this.f);
                a(canvas, f);
                return;
            }
            drawable.setAlpha(Math.round(this.n_v * 255.0f));
            float f4 = f - 48.0f;
            float f5 = 48.0f + f;
            this.j_v.setBounds(Math.round(f4), Math.round(f4), Math.round(f5), Math.round(f5));
            this.j_v.draw(canvas);
            c(canvas, f);
        }

        private void c(Canvas canvas, float f) {
            float f2 = f + 38.0f;
            this.f.setStyle(Paint.Style.FILL);
            this.f.setColor(-218103809);
            this.f.setAlpha(Math.round(this.n_v * 242.0f));
            canvas.drawCircle(f2, f2, 16.0f, this.f);
            Paint paint = this.f;
            Paint.Style style = Paint.Style.STROKE;
            paint.setStyle(style);
            this.f.setStrokeWidth(1.0f);
            this.f.setColor(637534208);
            canvas.drawCircle(f2, f2, 16.0f, this.f);
            this.f.setStyle(style);
            this.f.setStrokeWidth(2.6f);
            this.f.setColor(-12961220);
            this.f.setAlpha(Math.round(this.n_v * 255.0f));
            this.h.reset();
            float f3 = f2 - 8.0f;
            float f4 = f2 - 4.0f;
            this.h.moveTo(f3, f4);
            float f5 = 8.0f + f2;
            this.h.lineTo(f5, f4);
            this.h.moveTo(f2 + q_v, f2 - 7.5f);
            this.h.lineTo(f5, f4);
            float f6 = 4.0f + f2;
            this.h.moveTo(f5, f6);
            this.h.lineTo(f3, f6);
            this.h.moveTo(f2 - q_v, f2 + 7.5f);
            this.h.lineTo(f3, f6);
            canvas.drawPath(this.h, this.f);
            this.f.setStrokeWidth(q_v);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
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

        static int a(Boolean bool, int i) {
            if (Boolean.TRUE.equals(bool)) {
                return -14460213;
            }
            return i;
        }

        /* JADX WARN: Can't_v fix incorrect switch cases order, some code will duplicate */
        private static String a(String str) {
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
                case WorkspaceProtocol.RELEASE_TASK /* 8 */:
                    return "ic_qs_night_mode_off";
                case WorkspaceProtocol.REGISTER_SOURCE /* 9 */:
                    return "ic_qs_brightness_auto";
                case '\n':
                    return "ic_qs_screenlock";
                case WorkspaceProtocol.LOOKUP_SOURCE /* 11 */:
                    return "ic_qs_flashlight_disabled";
                case '\f':
                    return "ic_qs_battery_saver_off";
                case dev.duo.workspaceprobe.b.C0_v /* 13 */:
                    return "ic_qs_hotspot_disabled";
                case 14:
                    return "qs_location_icon_off";
                case 15:
                    return "ic_qs_bluetooth_off";
                default:
                    return null;
            }
        }

        private void a(float f, float f2, long j_v) {
            animate().scaleX(f).scaleY(f).setDuration(j_v).start();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.n_v, f2);
            ofFloat.setDuration(j_v);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$J$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    dev.duo.workspaceprobe.b.J.this.a(valueAnimator);
                }
            });
            ofFloat.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(ValueAnimator valueAnimator) {
            this.n_v = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        /* JADX WARN: Can't_v fix incorrect switch cases order, some code will duplicate */
        private void a(Canvas canvas, float f) {
            char c;
            this.f.setColor(a(this.d, this.m));
            this.f.setAlpha(Math.round(this.n_v * 255.0f));
            this.f.setStyle(Paint.Style.STROKE);
            this.h.reset();
            String str = this.a;
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
                    this.f.setStyle(Paint.Style.FILL);
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
                    this.f.setStyle(Paint.Style.FILL);
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
                case WorkspaceProtocol.RELEASE_TASK /* 8 */:
                case WorkspaceProtocol.LOOKUP_SOURCE /* 11 */:
                    this.f.setStyle(Paint.Style.FILL);
                    this.h.setFillType(Path.FillType.EVEN_ODD);
                    Path.Direction direction = Path.Direction.CW;
                    this.h.addCircle(f + 2.0f, f, 19.0f, direction);
                    this.h.addCircle(11.0f + f, f - 6.0f, 16.0f, direction);
                    canvas.drawPath(this.h, this.f);
                    break;
                case WorkspaceProtocol.REGISTER_SOURCE /* 9 */:
                    this.f.setStyle(Paint.Style.FILL);
                    this.h.setFillType(Path.FillType.EVEN_ODD);
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
                        canvas.drawLine(((float) (Math.cos(d) * 15.0d)) + f, ((float) (Math.sin(d) * 15.0d)) + f, ((float) (Math.cos(d) * 21.0d)) + f, ((float) (Math.sin(d) * 21.0d)) + f, this.f);
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
                case dev.duo.workspaceprobe.b.C0_v /* 13 */:
                    this.f.setStyle(Paint.Style.FILL);
                    this.h.setFillType(Path.FillType.EVEN_ODD);
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
                    this.f.setStyle(Paint.Style.FILL);
                    canvas.drawCircle(f, f36, 4.0f, this.f);
                    break;
                case 15:
                    canvas.drawRoundRect(f - 22.0f, f - 18.0f, f + 22.0f, f + 18.0f, 7.0f, 7.0f, this.f);
                    canvas.drawLine(f - 10.0f, f, f + 10.0f, f, this.f);
                    break;
                case dev.duo.workspaceprobe.b.w_v /* 16 */:
                    canvas.drawCircle(f, f - 5.0f, 10.0f, this.f);
                    this.f.setStyle(Paint.Style.FILL);
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

        private static void a(Path path, float f, float f2, float f3, float f4, float f5) {
            float f6 = f5 + 2.25f;
            Path.Direction direction = Path.Direction.CW;
            path.addRoundRect(f - 2.25f, f2 - 2.25f, f3 + 2.25f, f4 + 2.25f, f6, f6, direction);
            float f7 = f5 - 2.25f;
            path.addRoundRect(f + 2.25f, f2 + 2.25f, f3 - 2.25f, f4 - 2.25f, Math.max(0.0f, f7), Math.max(0.0f, f7), direction);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class L {
        final Object a;
        final SurfaceControl b_v;
        boolean c;

        L(Object obj, SurfaceControl surfaceControl) {
            this.a = obj;
            this.b_v = surfaceControl;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface M {
        int a(SurfaceControl surfaceControl) throws ReflectiveOperationException;
    }

    static final class N extends Drawable {
        static final int h = 5;
        static final float i = 8.0f;
        static final int j_v = 0;
        static final int k_v = 1;
        static final int l_v = 2;
        private final float a;
        private final Paint b_v;
        private final Paint c;
        private final Paint d;
        private final Paint e;
        private final Paint f;
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
        public void draw(Canvas canvas) {
            Rect bounds = getBounds();
            float f = bounds.left;
            float f2 = bounds.top;
            float f3 = bounds.right;
            float f4 = bounds.bottom;
            float f5 = this.a;
            canvas.drawRoundRect(f, f2, f3, f4, f5, f5, this.b_v);
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
        protected void onBoundsChange(Rect rect) {
            float f = rect.left;
            float f2 = rect.top;
            float max = Math.max(1, rect.width());
            float max2 = Math.max(1, rect.height());
            int i2 = this.g;
            if (i2 != 0) {
                a(f, f2, max, max2, i2 == 2);
                return;
            }
            Paint paint = this.b_v;
            float f3 = f2 + max2;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint.setShader(new LinearGradient(0.0f, f2, 0.0f, f3, new int[]{352321535, 117440511, 100663295, 234881023}, new float[]{0.0f, 0.3f, 0.7f, 1.0f}, tileMode));
            this.c.setShader(new RadialGradient(f + (0.3f * max), Math.min(0.12f * max2, 0.45f * max) + f2, Math.max(max, Math.min(max2, 2.2f * max)) * 0.75f, 536870911, 16777215, tileMode));
            this.d.setShader(new LinearGradient(0.0f, f3 - Math.min(0.5f * max2, this.a * 1.6f), 0.0f, f3, 16777215, 318767103, tileMode));
            this.e.setShader(new LinearGradient(f, f2, (0.6f * max) + f, Math.min(max2, max * 3.0f) + f2, new int[]{-1493172225, 872415231, 352321535, 788529151}, new float[]{0.0f, 0.25f, 0.7f, 1.0f}, tileMode));
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i2) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        N(float f, int i2) {
            this.b_v = new Paint(1);
            this.c = new Paint(1);
            this.d = new Paint(1);
            Paint paint = new Paint(1);
            this.e = paint;
            Paint paint2 = new Paint(1);
            this.f = paint2;
            this.a = f;
            this.g = i2;
            Paint.Style style = Paint.Style.STROKE;
            paint.setStyle(style);
            paint.setStrokeWidth(1.5f);
            paint2.setStyle(style);
            paint2.setStrokeWidth(1.0f);
        }

        private void a(float f, float f2, float f3, float f4, boolean z_v) {
            int[] iArr;
            Paint paint = this.b_v;
            float f5 = f2 + f4;
            if (z_v) {
                iArr = new int[]{-1929379841, 1308622847, 1090519039, 1728053247};
            } else {
                iArr = new int[]{1728053247, 788529151, 654311423, 1090519039};
            }
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint.setShader(new LinearGradient(0.0f, f2, 0.0f, f5, iArr, new float[]{0.0f, 0.3f, 0.7f, 1.0f}, tileMode));
            this.c.setShader(new RadialGradient(f + (0.3f * f3), f2 + Math.min(0.12f * f4, 0.45f * f3), Math.max(f3, Math.min(f4, 2.2f * f3)) * 0.75f, z_v ? -2130706433 : 1509949439, 16777215, tileMode));
            this.d.setShader(new LinearGradient(0.0f, f5 - Math.min(0.5f * f4, this.a * 1.6f), 0.0f, f5, 0, z_v ? 218103808 : 134217728, tileMode));
            float f6 = 3.0f * f3;
            this.e.setShader(new LinearGradient(f, f2, f + (0.6f * f3), f2 + Math.min(f4, f6), new int[]{-1, -1711276033, 872415231, 1728053247}, new float[]{0.0f, 0.25f, 0.7f, 1.0f}, tileMode));
            this.f.setShader(new LinearGradient(f, f2, f + f3, f2 + Math.min(f4, f6), z_v ? new int[]{251658240, 436207616, 687865856} : new int[]{167772160, 301989888, 520093696}, new float[]{0.0f, 0.5f, 1.0f}, tileMode));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class O {
        final long a;
        final Socket b_v;

        O(long j_v, Socket socket) {
            this.a = j_v;
            this.b_v = socket;
        }
    }

    private static final class P {
        final int a;
        final int b_v;
        final int c;
        final double d;
        final double e;
        final double f;
        final double g;
        final double h;
        final long i;
        final long j_v;
        final long k_v;
        final long l_v;
        final long m;
        final long n_v;
        final long o_v;
        final long p_v;

        P(byte[] bArr, long j_v) {
            this.p_v = j_v;
            ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            if (order.getInt() != 1146442546) {
                throw new IllegalArgumentException("Native frame protocol");
            }
            this.a = order.getInt();
            this.b_v = order.getInt();
            this.c = order.getInt();
            this.d = order.getDouble();
            this.l_v = order.getLong();
            this.m = order.getLong();
            this.n_v = order.getLong();
            this.o_v = order.getLong();
            this.e = order.getDouble();
            this.f = order.getDouble();
            this.i = order.getLong();
            this.g = order.getDouble();
            this.h = order.getDouble();
            this.j_v = order.getLong();
            this.k_v = order.getLong();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class Q extends View {
        static final int i = 136;
        private static final float j_v = 58.0f;
        private static final float k_v = 4.5f;
        private final int a;
        int b_v;
        private float c;
        private final Paint d;
        private final N e;
        private final Paint f;
        private final Path g;
        private final Path h;

        Q(Context context, int i2) {
            super(context);
            this.b_v = -1;
            this.c = 1.0f;
            Paint paint = new Paint(1);
            this.d = paint;
            N n_v = new N(j_v, 1);
            this.e = n_v;
            Paint paint2 = new Paint(1);
            this.f = paint2;
            this.g = new Path();
            Path path = new Path();
            this.h = path;
            this.a = i2;
            path.addCircle(68.0f, 68.0f, j_v, Path.Direction.CW);
            paint.setColor(33554431);
            paint.setShadowLayer(7.0f, 0.0f, 2.0f, 335544320);
            n_v.setBounds(Math.round(10.0f), Math.round(10.0f), Math.round(126.0f), Math.round(126.0f));
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeWidth(k_v);
            paint2.setStrokeCap(Paint.Cap.ROUND);
            paint2.setStrokeJoin(Paint.Join.ROUND);
            setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$Q$$ExternalSyntheticLambda1
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean a;
                    a = dev.duo.workspaceprobe.b.Q.this.a(view, motionEvent);
                    return a;
                }
            });
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.save();
            canvas.clipOutPath(this.h);
            canvas.drawCircle(68.0f, 68.0f, 57.0f, this.d);
            canvas.restore();
            this.e.draw(canvas);
            canvas.translate(0.0f, dev.duo.workspaceprobe.b.u0_v);
            this.f.setColor(this.b_v);
            this.f.setAlpha(Math.round(this.c * 255.0f));
            this.g.reset();
            if (this.a == 0) {
                this.f.setStyle(Paint.Style.STROKE);
                this.g.moveTo(75.0f, 50.0f);
                this.g.lineTo(j_v, 68.0f);
                this.g.lineTo(75.0f, 86.0f);
                canvas.drawPath(this.g, this.f);
                return;
            }
            this.f.setStyle(Paint.Style.FILL);
            this.g.setFillType(Path.FillType.EVEN_ODD);
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
            a(this.g, j_v, 48.0f, 86.0f, 78.0f, 8.5f);
            canvas.drawPath(this.g, this.f);
            canvas.restore();
            this.g.reset();
            a(this.g, 50.0f, j_v, 78.0f, 88.0f, 8.5f);
            canvas.drawPath(this.g, this.f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
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
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.c, f2);
            ofFloat.setDuration(j2);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$Q$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    dev.duo.workspaceprobe.b.Q.this.a(valueAnimator);
                }
            });
            ofFloat.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(ValueAnimator valueAnimator) {
            this.c = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        private static void a(Path path, float f, float f2, float f3, float f4, float f5) {
            float f6 = f5 + 2.25f;
            Path.Direction direction = Path.Direction.CW;
            path.addRoundRect(f - 2.25f, f2 - 2.25f, f3 + 2.25f, f4 + 2.25f, f6, f6, direction);
            float f7 = f5 - 2.25f;
            path.addRoundRect(f + 2.25f, f2 + 2.25f, f3 - 2.25f, f4 - 2.25f, Math.max(0.0f, f7), Math.max(0.0f, f7), direction);
        }
    }

    final class R {
        final SurfaceControlViewHost a;
        final SurfaceControl b_v;
        final String c;
        final View d;
        final float e;
        int f;
        int g;
        int h;
        final int i;
        float j_v;
        float k_v;
        float l_v;
        float m;
        volatile boolean n_v;

        R(b bVar, String str, View view, float f, int i, int i2, int i3, int i4, float f2) {
            this(bVar, str, view, f, i, i2, i3, i4, f2, false);
        }

        void a() {
            this.k_v = Float.NaN;
        }

        void b() {
            this.n_v = true;
            try {
                this.a.release();
            } finally {
                this.b_v.release();
            }
        }

        R(b bVar, String str, View view, float f, int i, int i2, int i3, int i4, float f2, boolean z_v) {
            this(str, view, f, i, i2, i3, i4, f2, z_v ? 24 : 0);
        }

        R(String str, View view, float f, int i, int i2, int i3, int i4, float f2, int i5) {
            this.k_v = Float.NaN;
            this.c = str;
            this.d = view;
            SurfaceControlViewHost surfaceControlViewHost = new SurfaceControlViewHost(dev.duo.workspaceprobe.b.this.i4, (android.view.Display) ((DisplayManager) dev.duo.workspaceprobe.b.this.i4.getSystemService(DisplayManager.class)).getDisplay(0), (android.os.IBinder) null);
            this.a = surfaceControlViewHost;
            if (i5 != 0) {
                try {
                    SurfaceControlViewHost.class.getMethod("setView", View.class, WindowManager.LayoutParams.class).invoke(surfaceControlViewHost, view, new WindowManager.LayoutParams(i2, i3, 2, i5, -3));
                } catch (ReflectiveOperationException e) {
                    this.a.release();
                    throw new IllegalStateException("Panel " + str + " cannot get its input flags " + i5, e);
                }
            } else {
                surfaceControlViewHost.setView(view, i2, i3);
            }
            this.b_v = surfaceControlViewHost.getSurfacePackage().getSurfaceControl();
            this.e = f;
            this.h = i;
            this.f = i2;
            this.g = i3;
            this.i = i4;
            this.j_v = f2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class S extends View {
        static final int e = 48;
        private static final float f = 20.0f;
        int a;
        boolean b_v;
        private final N c;
        private final Paint d;

        S(Context context) {
            super(context);
            this.a = -13618632;
            N n_v = new N(f, 1);
            this.c = n_v;
            Paint paint = new Paint(1);
            this.d = paint;
            n_v.setBounds(Math.round(4.0f), Math.round(4.0f), Math.round(44.0f), Math.round(44.0f));
            paint.setStrokeCap(Paint.Cap.ROUND);
            setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$S$$ExternalSyntheticLambda0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean a;
                    a = dev.duo.workspaceprobe.b.S.this.a(view, motionEvent);
                    return a;
                }
            });
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            this.c.draw(canvas);
            canvas.translate(0.0f, dev.duo.workspaceprobe.b.u0_v);
            boolean z_v = this.b_v;
            int i = z_v ? -14460213 : this.a;
            if (z_v) {
                this.d.setStyle(Paint.Style.STROKE);
                this.d.setStrokeWidth(3.0f);
                this.d.setColor(i);
                canvas.drawCircle(24.0f, 24.0f, 18.5f, this.d);
            }
            this.d.setColor(i);
            canvas.scale(0.8333333f, 0.8333333f, 24.0f, 24.0f);
            this.d.setStyle(Paint.Style.STROKE);
            this.d.setStrokeWidth(4.0f);
            canvas.drawLine(16.0f, 32.0f, 27.0f, 21.0f, this.d);
            this.d.setStrokeWidth(3.0f);
            canvas.drawLine(23.0f, 17.0f, 31.0f, 25.0f, this.d);
            this.d.setStyle(Paint.Style.FILL);
            canvas.drawCircle(30.0f, 18.0f, 4.5f, this.d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
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

    private static final class T extends ImageView {
        T(Context context) {
            super(context);
        }

        @Override // android.widget.ImageView, android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.translate(0.0f, dev.duo.workspaceprobe.b.u0_v);
            super.onDraw(canvas);
        }
    }

    private static final class U extends View {
        private final Paint a;

        U(Context context) {
            super(context);
            Paint paint = new Paint(1);
            this.a = paint;
            paint.setColor(-1);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(7.0f);
            paint.setStrokeCap(Paint.Cap.ROUND);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.translate(0.0f, dev.duo.workspaceprobe.b.u0_v);
            float width = getWidth() / 116.0f;
            canvas.translate(getWidth() / 2.0f, getHeight() / 2.0f);
            canvas.scale(width, width);
            canvas.translate(-56.5f, -56.5f);
            canvas.drawCircle(52.0f, 52.0f, 19.0f, this.a);
            canvas.drawLine(66.0f, 66.0f, 80.0f, 80.0f, this.a);
        }
    }

    private static final class V extends View {
        static final int c = 48;
        private final boolean a;
        private final Paint b_v;

        V(Context context, boolean z_v) {
            super(context);
            this.b_v = new Paint(1);
            this.a = z_v;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float min = Math.min(getWidth(), getHeight()) / 2.0f;
            float width = getWidth() / 2.0f;
            float height = getHeight() / 2.0f;
            this.b_v.setStyle(Paint.Style.FILL);
            this.b_v.setColor(-1);
            canvas.drawCircle(width, height, min, this.b_v);
            this.b_v.setColor(this.a ? -13335809 : -50384);
            canvas.drawCircle(width, height, min - 3.0f, this.b_v);
            this.b_v.setColor(-1);
            this.b_v.setStrokeWidth(0.2f * min);
            this.b_v.setStrokeCap(Paint.Cap.ROUND);
            float f = min * 0.42f;
            canvas.drawLine(width - f, height, width + f, height, this.b_v);
            if (this.a) {
                canvas.drawLine(width, height - f, width, height + f, this.b_v);
            }
        }
    }

    private static final class Y extends Drawable {
        private final Drawable a;
        private final Paint b_v = new Paint(1);

        Y(Drawable drawable) {
            this.a = drawable;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            this.a.draw(canvas);
            Rect bounds = getBounds();
            float width = bounds.width() * 0.17f;
            float f = bounds.right - width;
            float f2 = bounds.bottom - width;
            this.b_v.setStyle(Paint.Style.FILL);
            this.b_v.setColor(-1);
            canvas.drawCircle(f, f2, width, this.b_v);
            this.b_v.setColor(-13335809);
            canvas.drawCircle(f, f2, 0.84f * width, this.b_v);
            this.b_v.setColor(-1);
            this.b_v.setTextAlign(Paint.Align.CENTER);
            this.b_v.setTextSize(width * 1.2f);
            this.b_v.setTypeface(Typeface.DEFAULT_BOLD);
            canvas.drawText("2", f, f2 - ((this.b_v.descent() + this.b_v.ascent()) / 2.0f), this.b_v);
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
        protected void onBoundsChange(Rect rect) {
            this.a.setBounds(rect);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.a.setAlpha(i);
            this.b_v.setAlpha(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.a.setColorFilter(colorFilter);
        }
    }

    private static final class Z extends View {
        private final Paint a;
        private final int b_v;
        private final int c;
        private boolean d;

        Z(Context context, int i, int i2) {
            super(context);
            this.a = new Paint(1);
            this.b_v = i;
            this.c = i2;
        }

        void a(boolean z_v) {
            if (this.d == z_v) {
                return;
            }
            this.d = z_v;
            setContentDescription(z_v ? "完成" : "编辑");
            invalidate();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float min = Math.min(getWidth(), getHeight());
            float f = min / 2.0f;
            this.a.setStyle(Paint.Style.FILL);
            this.a.setColor(this.b_v);
            canvas.drawCircle(f, f, f, this.a);
            this.a.setStyle(Paint.Style.STROKE);
            this.a.setStrokeWidth(0.04f * min);
            this.a.setStrokeCap(Paint.Cap.ROUND);
            this.a.setStrokeJoin(Paint.Join.ROUND);
            this.a.setColor(this.c);
            Path path = new Path();
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
    class C0033a extends ContentObserver {
        C0033a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z_v) {
            dev.duo.workspaceprobe.b.this.e1();
        }
    }

    private static final class a0 extends View {
        static final int d = 0;
        private final int a;
        private final int b_v;
        private final Paint c;

        a0(Context context, int i, int i2) {
            super(context);
            this.c = new Paint(1);
            this.a = i;
            this.b_v = i2;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float min = Math.min(getWidth(), getHeight());
            this.c.setStyle(Paint.Style.STROKE);
            this.c.setStrokeWidth(0.09f * min);
            this.c.setStrokeCap(Paint.Cap.ROUND);
            this.c.setColor(this.b_v);
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
    class C0006b extends ContentObserver {
        C0006b(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z_v, Uri uri) {
            if (dev.duo.workspaceprobe.b.this.i2 != Long.MAX_VALUE) {
                Log.w("DuoRail", "Duo config direct read dropped, provider from now on");
            }
            dev.duo.workspaceprobe.b.this.i2 = Long.MAX_VALUE;
            dev.duo.workspaceprobe.b.this.h2 = null;
            List<String> pathSegments = uri == null ? Collections.EMPTY_LIST : uri.getPathSegments();
            if (pathSegments.size() == 2) {
                dev.duo.workspaceprobe.b.this.x(pathSegments.get(1));
            } else {
                dev.duo.workspaceprobe.b.this.l("app notified");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class b0 {
        static final int i = 420;
        static final int j_v = 951;
        static final int k_v = 128;
        static final int l_v = 112;
        static final int m = 3;
        static final int n_v = 60;
        static final int o_v = 1712;
        private final WindowManager a;
        private final FrameLayout b_v;
        private final LinearLayout c;
        private final float d;
        private final float e;
        private final boolean f;
        private boolean g;

        class a extends FrameLayout {
            final /* synthetic */ b a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Context context, b bVar) {
                super(context);
                this.a = bVar;
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchKeyEvent(KeyEvent keyEvent) {
                if (keyEvent.getKeyCode() != 4) {
                    return super.dispatchKeyEvent(keyEvent);
                }
                if (keyEvent.getAction() == 1) {
                    b0.this.a();
                }
                return true;
            }
        }

        b0(final String str, boolean z_v, int i2, int i3, float f, boolean z2) {
            this.a = (WindowManager) dev.duo.workspaceprobe.b.this.i4.getSystemService(WindowManager.class);
            this.d = f;
            this.f = z2;
            boolean bLocal = dev.duo.workspaceprobe.b.b(dev.duo.workspaceprobe.b.this.i4);
            int i4 = bLocal ? -855305 : -14935010;
            a aVar = new a(dev.duo.workspaceprobe.b.this.i4, dev.duo.workspaceprobe.b.this);
            this.b_v = aVar;
            aVar.setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda2
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean a2;
                    a2 = dev.duo.workspaceprobe.b.b0.this.a(view, motionEvent);
                    return a2;
                }
            });
            LinearLayout linearLayout = new LinearLayout(dev.duo.workspaceprobe.b.this.i4);
            this.c = linearLayout;
            linearLayout.setOrientation(1);
            linearLayout.setBackground(dev.duo.workspaceprobe.b.b(bLocal ? -148100050 : -134217729, 40.0f));
            linearLayout.setElevation(24.0f);
            linearLayout.setClipToOutline(true);
            linearLayout.setClickable(true);
            LinearLayout linearLayout2 = new LinearLayout(dev.duo.workspaceprobe.b.this.i4);
            linearLayout2.setGravity(dev.duo.workspaceprobe.b.w_v);
            linearLayout2.setPadding(36, 0, 36, 0);
            ImageView imageView = new ImageView(dev.duo.workspaceprobe.b.this.i4);
            TextView textView = new TextView(dev.duo.workspaceprobe.b.this.i4);
            try {
                imageView.setImageDrawable(dev.duo.workspaceprobe.b.this.z(str));
            } catch (PackageManager.NameNotFoundException e) {
            }
            textView.setText(dev.duo.workspaceprobe.b.this.A(str));
            linearLayout2.addView(imageView, new LinearLayout.LayoutParams(72, 72));
            textView.setSingleLine(true);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setTextSize(0, 36.0f);
            textView.setTextColor(i4);
            textView.setTypeface(Typeface.create(Typeface.DEFAULT, 500, false));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
            layoutParams.leftMargin = 24;
            linearLayout2.addView(textView, layoutParams);
            this.c.addView(linearLayout2, new LinearLayout.LayoutParams(-1, k_v));
            a(bLocal, i4, "全屏打开", true, new Runnable() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.b0.this.a(str);
                }
            });
            a(bLocal, i4, "小窗打开", true, new Runnable() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.b0.this.b(str);
                }
            });
            if (z_v) {
                a(bLocal, -50384, "从侧栏移除", false, new Runnable() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.b0.this.c(str);
                    }
                });
            } else {
                a(bLocal, i4, "固定到侧栏", false, new Runnable() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.b0.this.d(str);
                    }
                });
            }
            int max = Math.max(n_v, Math.min(1185, i3 - 233));
            this.e = Math.max(0, Math.min(467, i3 - max));
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i, 467);
            layoutParams2.leftMargin = i2;
            layoutParams2.topMargin = max;
            this.b_v.addView(this.c, layoutParams2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str) {
            dev.duo.workspaceprobe.b.this.r(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(String str) {
            dev.duo.workspaceprobe.b.this.D(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(String str) {
            dev.duo.workspaceprobe.b.this.t(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
            if (motionEvent.getActionMasked() != 0) {
                return true;
            }
            a();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            try {
                this.a.removeViewImmediate(this.b_v);
            } catch (RuntimeException e) {
                Log.w("DuoRail", "Sidebar menu remove failed", e);
            }
        }

        void b() {
            if (this.g) {
                this.g = false;
                this.c.animate().cancel();
                this.c.animate().scaleX(0.9f).scaleY(0.9f).alpha(0.0f).setDuration(120L).withEndAction(new Runnable() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.b0.this.c();
                    }
                }).start();
            }
        }

        void d() {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 2017, 16777472, -3);
            layoutParams.gravity = 51;
            layoutParams.layoutInDisplayCutoutMode = 3;
            layoutParams.setFitInsetsTypes(0);
            layoutParams.setTitle("DuoSidebarMenu");
            try {
                this.a.addView(this.b_v, layoutParams);
                this.g = true;
                this.c.setPivotX(this.d);
                this.c.setPivotY(this.e);
                this.c.setScaleX(0.9f);
                this.c.setScaleY(0.9f);
                this.c.setAlpha(0.0f);
                this.c.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(180L).setInterpolator(new DecelerateInterpolator()).start();
                Log.w("DuoRail", "Sidebar menu open");
            } catch (RuntimeException e) {
                Log.w("DuoRail", "Sidebar menu unavailable", e);
                dev.duo.workspaceprobe.b.this.V3 = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str) {
            dev.duo.workspaceprobe.b.this.s(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            if (this.f) {
                dev.duo.workspaceprobe.b.this.o();
            } else {
                dev.duo.workspaceprobe.b.this.p();
            }
        }

        private void a(boolean z_v, int i2, final String str, final boolean z2, final Runnable runnable) {
            View view = new View(dev.duo.workspaceprobe.b.this.i4);
            view.setBackgroundColor(z_v ? 654311423 : 520093696);
            this.c.addView(view, new LinearLayout.LayoutParams(-1, 1));
            TextView textView = new TextView(dev.duo.workspaceprobe.b.this.i4);
            textView.setText(str);
            textView.setGravity(dev.duo.workspaceprobe.b.w_v);
            textView.setPadding(dev.duo.workspaceprobe.b.Z, 0, dev.duo.workspaceprobe.b.Z, 0);
            textView.setTextSize(0, 38.0f);
            textView.setTextColor(i2);
            textView.setBackground(new RippleDrawable(ColorStateList.valueOf(z_v ? 872415231 : 520093696), null, new ColorDrawable(-1)));
            textView.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    dev.duo.workspaceprobe.b.b0.this.a(str, z2, runnable, view2);
                }
            });
            this.c.addView(textView, new LinearLayout.LayoutParams(-1, l_v));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str, boolean z_v, Runnable runnable, View view) {
            Log.w("DuoRail", "Sidebar menu " + str + (this.f ? " (panel)" : ""));
            if (z_v) {
                dev.duo.workspaceprobe.b.this.p();
            } else {
                a();
            }
            runnable.run();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$c, reason: case insensitive filesystem */
    class C0034c extends AnimatorListenerAdapter {
        final /* synthetic */ int a;
        final /* synthetic */ ValueAnimator b_v;

        C0034c(int i, ValueAnimator valueAnimator) {
            this.a = i;
            this.b_v = valueAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (dev.duo.workspaceprobe.b.this.m2.get(Integer.valueOf(this.a)) != this.b_v) {
                return;
            }
            dev.duo.workspaceprobe.b.this.m2.remove(Integer.valueOf(this.a));
            dev.duo.workspaceprobe.b.this.z(this.a);
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$d, reason: case insensitive filesystem */
    class ViewOnAttachStateChangeListenerC0035d implements View.OnAttachStateChangeListener {
        ViewOnAttachStateChangeListenerC0035d() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            dev.duo.workspaceprobe.b.this.a(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            dev.duo.workspaceprobe.b.this.b("detached");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class d0 {
        static final int r_v = 963;
        static final int s_v = 200;
        static final int t_v = 305;
        static final int u_v = 735;
        static final int v_v = 1310;
        static final int w_v = 56;
        static final int x_v = 3;
        static final int y_v = 128;
        private final WindowManager a;
        private final boolean b_v;
        private final int c;
        private final int d;
        private final FrameLayout e;
        private final FrameLayout f;
        private final LinearLayout g;
        private final EditText h;
        private final Z i;
        private List<Object[]> j_v;
        private boolean k_v;
        W l_v;
        float m;
        float n_v;
        final List<View> o_v;
        boolean p_v;

        class a extends FrameLayout {
            final /* synthetic */ b a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Context context, b bVar) {
                super(context);
                this.a = bVar;
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchKeyEvent(KeyEvent keyEvent) {
                if (keyEvent.getKeyCode() != 4) {
                    return super.dispatchKeyEvent(keyEvent);
                }
                if (keyEvent.getAction() == 1) {
                    dev.duo.workspaceprobe.b.this.p();
                }
                return true;
            }
        }

        /* renamed from: dev.duo.workspaceprobe.b$d0$b, reason: collision with other inner class name */
        class C0007b implements TextWatcher {
            final /* synthetic */ b a;

            C0007b(b bVar) {
                this.a = bVar;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                d0.this.d();
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        }

        d0() {
            this.a = (WindowManager) dev.duo.workspaceprobe.b.this.i4.getSystemService(WindowManager.class);
            this.b_v = dev.duo.workspaceprobe.b.b(dev.duo.workspaceprobe.b.this.i4);
            // field already set
            int i = this.b_v ? -855305 : -14935010;
            this.c = i;
            int i2 = this.b_v ? -13882322 : -1776408;
            this.d = i2;
            this.j_v = Collections.EMPTY_LIST;
            this.o_v = new ArrayList();
            a aVar = new a(dev.duo.workspaceprobe.b.this.i4, dev.duo.workspaceprobe.b.this);
            this.e = aVar;
            aVar.setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda6
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean a2;
                    a2 = dev.duo.workspaceprobe.b.d0.this.a(view, motionEvent);
                    return a2;
                }
            });
            FrameLayout frameLayout = new FrameLayout(dev.duo.workspaceprobe.b.this.i4);
            this.f = frameLayout;
            frameLayout.setBackground(dev.duo.workspaceprobe.b.b(this.b_v ? -149152738 : -134941450, 64.0f));
            frameLayout.setElevation(24.0f);
            frameLayout.setClickable(true);
            LinearLayout linearLayout = new LinearLayout(dev.duo.workspaceprobe.b.this.i4);
            linearLayout.setOrientation(1);
            linearLayout.setPadding(w_v, w_v, w_v, 0);
            LinearLayout linearLayout2 = new LinearLayout(dev.duo.workspaceprobe.b.this.i4);
            linearLayout2.setGravity(dev.duo.workspaceprobe.b.w_v);
            EditText editText = new EditText(dev.duo.workspaceprobe.b.this.i4);
            this.h = editText;
            editText.setHint("搜索应用");
            editText.setSingleLine(true);
            editText.setTextSize(0, 40.0f);
            editText.setTextColor(i);
            editText.setHintTextColor(this.b_v ? -2131561737 : -2143536061);
            editText.setBackground(dev.duo.workspaceprobe.b.b(i2, 56.0f));
            editText.setPadding(112, 0, 32, 0);
            editText.setCompoundDrawablePadding(0);
            editText.setImeOptions(3);
            FrameLayout frameLayout2 = new FrameLayout(dev.duo.workspaceprobe.b.this.i4);
            frameLayout2.addView(editText, new FrameLayout.LayoutParams(-1, -1));
            a0 a0Var = new a0(dev.duo.workspaceprobe.b.this.i4, 0, this.b_v ? -5329230 : -12829629);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(w_v, w_v);
            layoutParams.gravity = dev.duo.workspaceprobe.b.w_v;
            layoutParams.leftMargin = 38;
            frameLayout2.addView(a0Var, layoutParams);
            linearLayout2.addView(frameLayout2, new LinearLayout.LayoutParams(0, 112, 1.0f));
            Z z_v = new Z(dev.duo.workspaceprobe.b.this.i4, i2, i);
            this.i = z_v;
            z_v.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dev.duo.workspaceprobe.b.d0.this.a(view);
                }
            });
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(112, 112);
            layoutParams2.leftMargin = 32;
            linearLayout2.addView(z_v, layoutParams2);
            linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(-1, 112));
            TextView textView = new TextView(dev.duo.workspaceprobe.b.this.i4);
            textView.setText("全部小窗应用");
            textView.setTextSize(0, 36.0f);
            textView.setTextColor(i);
            textView.setTypeface(Typeface.create(Typeface.DEFAULT, 500, false));
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams3.topMargin = 40;
            layoutParams3.leftMargin = 12;
            layoutParams3.bottomMargin = 20;
            linearLayout.addView(textView, layoutParams3);
            ScrollView scrollView = new ScrollView(dev.duo.workspaceprobe.b.this.i4);
            scrollView.setVerticalScrollBarEnabled(false);
            scrollView.setOverScrollMode(2);
            scrollView.setVerticalFadingEdgeEnabled(true);
            scrollView.setFadingEdgeLength(120);
            LinearLayout linearLayout3 = new LinearLayout(dev.duo.workspaceprobe.b.this.i4);
            this.g = linearLayout3;
            linearLayout3.setOrientation(1);
            linearLayout3.setClipChildren(false);
            scrollView.addView(linearLayout3, new FrameLayout.LayoutParams(-1, -2));
            linearLayout.addView(scrollView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
            frameLayout.addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(u_v, v_v);
            layoutParams4.leftMargin = s_v;
            layoutParams4.topMargin = t_v;
            aVar.addView(frameLayout, layoutParams4);
            editText.addTextChangedListener(new C0007b(dev.duo.workspaceprobe.b.this));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            final List H = dev.duo.workspaceprobe.b.this.H();
            dev.duo.workspaceprobe.b.this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.d0.this.a(H);
                }
            });
        }

        void d() {
            this.i.a(dev.duo.workspaceprobe.b.this.T3);
            this.g.removeAllViews();
            this.o_v.clear();
            String lowerCase = this.h.getText().toString().trim().toLowerCase(Locale.ROOT);
            this.p_v = !lowerCase.isEmpty();
            LinearLayout linearLayout = null;
            int i = 0;
            for (Object[] objArr : this.j_v) {
                String str = (String) objArr[0];
                String str2 = (String) objArr[1];
                if (!lowerCase.isEmpty()) {
                    Locale locale = Locale.ROOT;
                    if (!str2.toLowerCase(locale).contains(lowerCase) && !str.toLowerCase(locale).contains(lowerCase)) {
                    }
                }
                if (i % 3 == 0) {
                    linearLayout = new LinearLayout(dev.duo.workspaceprobe.b.this.i4);
                    linearLayout.setClipChildren(false);
                    this.g.addView(linearLayout, new LinearLayout.LayoutParams(-1, -2));
                }
                View a2 = a(str, str2, (Drawable) objArr[2]);
                this.o_v.add(a2);
                linearLayout.addView(a2, new LinearLayout.LayoutParams(0, -2, 1.0f));
                i++;
            }
            for (int i2 = i % 3; linearLayout != null && i2 != 0 && i2 < 3; i2++) {
                linearLayout.addView(new View(dev.duo.workspaceprobe.b.this.i4), new LinearLayout.LayoutParams(0, 1, 1.0f));
            }
        }

        void e() {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(r_v, -1, 2017, 16777504, -3);
            layoutParams.gravity = 51;
            layoutParams.layoutInDisplayCutoutMode = 3;
            layoutParams.setFitInsetsTypes(0);
            layoutParams.softInputMode = 51;
            layoutParams.setTitle("DuoSidebarPanel");
            try {
                this.a.addView(this.e, layoutParams);
                this.k_v = true;
                this.f.setPivotX(735.0f);
                this.f.setPivotY(Math.max(0, Math.min(v_v, dev.duo.workspaceprobe.b.this.E1() - 305)));
                this.f.setScaleX(0.6f);
                this.f.setScaleY(0.6f);
                this.f.setAlpha(0.0f);
                this.f.animate().scaleX(1.0f).scaleY(1.0f).setDuration(250L).setInterpolator(new OvershootInterpolator(0.7f)).start();
                this.f.animate().alpha(1.0f).setDuration(150L);
                Log.w("DuoRail", "Sidebar panel open");
                dev.duo.workspaceprobe.b.this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.d0.this.c();
                    }
                });
            } catch (RuntimeException e) {
                Log.w("DuoRail", "Sidebar panel unavailable", e);
                dev.duo.workspaceprobe.b.this.U3 = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            try {
                this.a.removeViewImmediate(this.e);
            } catch (RuntimeException e) {
                Log.w("DuoRail", "Sidebar panel remove failed", e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
            if (motionEvent.getActionMasked() != 0) {
                return true;
            }
            dev.duo.workspaceprobe.b.this.p();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(View view) {
            dev.duo.workspaceprobe.b.this.m(!r2.T3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(List list) {
            if (dev.duo.workspaceprobe.b.this.U3 != this) {
                return;
            }
            this.j_v = list;
            d();
        }

        void a() {
            if (this.k_v) {
                this.k_v = false;
                InputMethodManager inputMethodManager = (InputMethodManager) dev.duo.workspaceprobe.b.this.i4.getSystemService(InputMethodManager.class);
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(this.h.getWindowToken(), 0);
                }
                W w2 = this.l_v;
                if (w2 != null) {
                    w2.c();
                }
                this.f.animate().cancel();
                this.f.animate().scaleX(0.6f).scaleY(0.6f).alpha(0.0f).setDuration(160L).setInterpolator(new AccelerateInterpolator()).withEndAction(new Runnable() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.d0.this.b();
                    }
                }).start();
                Log.w("DuoRail", "Sidebar panel close");
            }
        }

        private View a(final String str, String str2, final Drawable drawable) {
            LinearLayout linearLayout = new LinearLayout(dev.duo.workspaceprobe.b.this.i4);
            linearLayout.setOrientation(1);
            linearLayout.setGravity(1);
            linearLayout.setPadding(0, 28, 0, 28);
            final FrameLayout frameLayout = new FrameLayout(dev.duo.workspaceprobe.b.this.i4);
            final ImageView imageView = new ImageView(dev.duo.workspaceprobe.b.this.i4);
            imageView.setImageDrawable(drawable);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(y_v, y_v);
            layoutParams.topMargin = dev.duo.workspaceprobe.b.w_v;
            layoutParams.rightMargin = dev.duo.workspaceprobe.b.w_v;
            frameLayout.addView(imageView, layoutParams);
            final boolean contains = dev.duo.workspaceprobe.b.this.L3.contains(str);
            if (dev.duo.workspaceprobe.b.this.T3 && !contains) {
                frameLayout.addView(new V(dev.duo.workspaceprobe.b.this.i4, true), new FrameLayout.LayoutParams(48, 48, 53));
            }
            if (dev.duo.workspaceprobe.b.this.T3 && contains) {
                imageView.setAlpha(0.35f);
            }
            linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(144, 144));
            TextView textView = new TextView(dev.duo.workspaceprobe.b.this.i4);
            textView.setText(str2);
            textView.setSingleLine(true);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setGravity(17);
            textView.setTextSize(0, 30.0f);
            textView.setTextColor(this.b_v ? -856493321 : -868467645);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams2.topMargin = 6;
            linearLayout.addView(textView, layoutParams2);
            linearLayout.setContentDescription(str2);
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dev.duo.workspaceprobe.b.d0.this.a(contains, str, view);
                }
            });
            linearLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda2
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean a2;
                    a2 = dev.duo.workspaceprobe.b.d0.this.a(imageView, str, drawable, view);
                    return a2;
                }
            });
            linearLayout.setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda3
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean a2;
                    a2 = dev.duo.workspaceprobe.b.d0.this.a(frameLayout, view, motionEvent);
                    return a2;
                }
            });
            return linearLayout;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(boolean z_v, String str, View view) {
            if (dev.duo.workspaceprobe.b.this.T3) {
                if (z_v) {
                    return;
                }
                dev.duo.workspaceprobe.b.this.t(str);
            } else {
                dev.duo.workspaceprobe.b.this.p();
                if (dev.duo.workspaceprobe.b.this.Q3) {
                    dev.duo.workspaceprobe.b.this.r(str);
                } else {
                    dev.duo.workspaceprobe.b.this.s(str);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean a(ImageView imageView, String str, Drawable drawable, View view) {
            if (this.l_v != null) {
                return true;
            }
            W w2 = dev.duo.workspaceprobe.b.this.new W(this, view, imageView, str, drawable);
            this.l_v = w2;
            w2.f();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean a(FrameLayout frameLayout, View view, MotionEvent motionEvent) {
            this.m = motionEvent.getRawX();
            this.n_v = motionEvent.getRawY();
            W w2 = this.l_v;
            if (w2 != null && w2.b_v == view) {
                w2.a(motionEvent);
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
    class C0036e extends AnimatorListenerAdapter {
        boolean a;

        C0036e() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            dev.duo.workspaceprobe.b.this.m3 = false;
            dev.duo.workspaceprobe.b.this.o3 = this.a ? 0.0f : 1.0f;
            if (!this.a) {
                dev.duo.workspaceprobe.b.this.k3 = false;
                Runnable runnable = dev.duo.workspaceprobe.b.this.C6;
                if (runnable != null) {
                    runnable.run();
                }
            }
            dev.duo.workspaceprobe.b.this.P();
        }
    }

    private final class e0 extends ScrollView implements Runnable {
        static final int h = 80;
        private boolean a;
        private boolean b_v;
        private Paint c;
        private LinearGradient d;
        private LinearGradient e;
        private final Matrix f;

        e0() {
            super(dev.duo.workspaceprobe.b.this.i4);
            this.f = new Matrix();
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
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
        public void draw(Canvas canvas) {
            int scrollY = getScrollY();
            int width = getWidth();
            int height = getHeight();
            int i = 0;
            int max = getChildCount() == 0 ? 0 : Math.max(0, getChildAt(0).getHeight() - height);
            float f = 1.0f;
            float min = this.b_v ? Math.min(1.0f, scrollY / 20.0f) : 0.0f;
            float min2 = this.b_v ? Math.min(1.0f, (max - scrollY) / 20.0f) : 0.0f;
            if (min <= 0.0f && min2 <= 0.0f) {
                super.draw(canvas);
                return;
            }
            if (this.c == null) {
                int length = dev.duo.workspaceprobe.b.H.length;
                int[] iArr = new int[length];
                int[] iArr2 = new int[length];
                float[] fArr = new float[length];
                while (i < length) {
                    int i2 = length - 1;
                    float f2 = f;
                    fArr[i] = i / i2;
                    iArr2[i] = Math.round((f2 - dev.duo.workspaceprobe.b.H[i]) * 255.0f) << 24;
                    iArr[i] = Math.round((f2 - dev.duo.workspaceprobe.b.H[i2 - i]) * 255.0f) << 24;
                    i++;
                    f = f2;
                }
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                this.d = new LinearGradient(0.0f, 0.0f, 0.0f, 20.0f, iArr, fArr, tileMode);
                this.e = new LinearGradient(0.0f, 0.0f, 0.0f, 20.0f, iArr2, fArr, tileMode);
                Paint paint = new Paint();
                this.c = paint;
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
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
                this.c.setAlpha(Math.round(min * 255.0f));
                canvas.drawRect(0.0f, f3, f4, scrollY + 20, this.c);
            }
            if (min2 > 0.0f) {
                float f6 = i3 - 20;
                this.f.setTranslate(0.0f, f6);
                this.e.setLocalMatrix(this.f);
                this.c.setShader(this.e);
                this.c.setAlpha(Math.round(min2 * 255.0f));
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
            if (this.a || dev.duo.workspaceprobe.b.this.W3 != null) {
                return;
            }
            if (dev.duo.workspaceprobe.b.this.U3 == null || dev.duo.workspaceprobe.b.this.U3.l == null) {
                int max = getChildCount() == 0 ? 0 : Math.max(0, getChildAt(0).getHeight() - getHeight());
                int round = Math.round(getScrollY() / 150.0f) * dev.duo.workspaceprobe.b.g0;
                int min = Math.min((max / dev.duo.workspaceprobe.b.g0) * dev.duo.workspaceprobe.b.g0, round);
                if (!this.b_v || Math.abs(max - getScrollY()) >= Math.abs(Math.min(max, round) - getScrollY())) {
                    max = this.b_v ? Math.min(max, round) : min;
                }
                if (max != getScrollY()) {
                    smoothScrollTo(0, max);
                }
            }
        }

        void a(boolean z_v) {
            if (this.b_v == z_v) {
                return;
            }
            this.b_v = z_v;
            setVerticalFadingEdgeEnabled(!z_v);
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            removeCallbacks(this);
            postDelayed(this, 80L);
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$f, reason: case insensitive filesystem */
    class ViewTreeObserverOnPreDrawListenerC0037f implements ViewTreeObserver.OnPreDrawListener {
        final /* synthetic */ View a;
        final /* synthetic */ Method b_v;

        ViewTreeObserverOnPreDrawListenerC0037f(View view, Method method) {
            this.a = view;
            this.b_v = method;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.a.getViewTreeObserver().removeOnPreDrawListener(this);
            try {
                this.b_v.invoke(this.a, Float.valueOf(1.0f));
                return true;
            } catch (Throwable th) {
                Log.e("DuoKeyguard", "Shortcut start position failed", th);
                return true;
            }
        }
    }

    private final class f0 extends SubscriptionManager.OnSubscriptionsChangedListener {
        private final h0 a;
        private int[] b_v = new int[0];
        private final List<TelephonyManager> c = new ArrayList();
        private final List<TelephonyCallback> d = new ArrayList();

        final class a extends TelephonyCallback implements TelephonyCallback.SignalStrengthsListener {
            final /* synthetic */ int a;
            final /* synthetic */ int b_v;

            a(int i, int i2) {
                this.a = i;
                this.b_v = i2;
            }

            @Override // android.telephony.TelephonyCallback.SignalStrengthsListener
            public void onSignalStrengthsChanged(SignalStrength signalStrength) {
                if (this.a >= f0.this.b_v.length || f0.this.b_v[this.a] != this.b_v) {
                    return;
                }
                int b = signalStrength == null ? -1 : dev.duo.workspaceprobe.b.b(signalStrength);
                if (b_v == (this.a == 0 ? f0.this.a.d0 : f0.this.a.e0)) {
                    return;
                }
                if (this.a == 0) {
                    f0.this.a.d0 = b_v;
                } else {
                    f0.this.a.e0 = b_v;
                }
                dev.duo.workspaceprobe.b.this.m1();
            }
        }

        f0(h0 h0Var) {
            this.a = h0Var;
        }

        @Override // android.telephony.SubscriptionManager.OnSubscriptionsChangedListener
        public void onSubscriptionsChanged() {
            List<SubscriptionInfo> activeSubscriptionInfoList = ((SubscriptionManager) dev.duo.workspaceprobe.b.this.i4.getSystemService(SubscriptionManager.class)).getActiveSubscriptionInfoList();
            int[] array = activeSubscriptionInfoList == null ? new int[0] : activeSubscriptionInfoList.stream().sorted(Comparator.comparingInt(new ToIntFunction() { // from class: dev.duo.workspaceprobe.b$f0$$ExternalSyntheticLambda0
                @Override // java.util.function.ToIntFunction
                public final int applyAsInt(Object obj) {
                    return ((SubscriptionInfo) obj).getSimSlotIndex();
                }
            })).mapToInt(new ToIntFunction() { // from class: dev.duo.workspaceprobe.b$f0$$ExternalSyntheticLambda1
                @Override // java.util.function.ToIntFunction
                public final int applyAsInt(Object obj) {
                    return ((SubscriptionInfo) obj).getSubscriptionId();
                }
            }).limit(2L).toArray();
            if (Arrays.equals(array, this.b_v)) {
                return;
            }
            for (int i = 0; i < this.c.size(); i++) {
                this.c.get(i).unregisterTelephonyCallback(this.d.get(i));
            }
            this.c.clear();
            this.d.clear();
            this.b_v = array;
            h0 h0Var = this.a;
            h0Var.d0 = -1;
            h0Var.e0 = -1;
            h0Var.f0 = array.length > 1;
            Log.w("DuoRail", "SIM rows " + Arrays.toString(array));
            TelephonyManager telephonyManager = (TelephonyManager) dev.duo.workspaceprobe.b.this.i4.getSystemService(TelephonyManager.class);
            for (int i2 = 0; i2 < array.length; i2++) {
                int i3 = array[i2];
                TelephonyManager createForSubscriptionId = telephonyManager.createForSubscriptionId(i3);
                a aVar = new a(i2, i3);
                createForSubscriptionId.registerTelephonyCallback(dev.duo.workspaceprobe.b.this.i4.getMainExecutor(), aVar);
                this.c.add(createForSubscriptionId);
                this.d.add(aVar);
            }
            dev.duo.workspaceprobe.b.this.m1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$g, reason: case insensitive filesystem */
    class C0038g implements SensorEventListener {
        C0038g() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            dev.duo.workspaceprobe.b.this.g1 = sensorEvent.values[0];
            if (dev.duo.workspaceprobe.b.this.e1 && dev.duo.workspaceprobe.b.this.x1) {
                if (dev.duo.workspaceprobe.b.this.r1 && dev.duo.workspaceprobe.b.this.u1) {
                    b bVar = dev.duo.workspaceprobe.b.this;
                    if (!bVar.L1 && !bVar.M1) {
                        b bVar2 = dev.duo.workspaceprobe.b.this;
                        if (!bVar2.N1) {
                            if (bVar2.Z0.a(sensorEvent.values[0], SystemClock.uptimeMillis())) {
                                dev.duo.workspaceprobe.b.this.x1();
                                return;
                            }
                            return;
                        }
                    }
                }
                dev.duo.workspaceprobe.b.this.f2();
                return;
            }
            if (dev.duo.workspaceprobe.b.this.e1) {
                int i = dev.duo.workspaceprobe.b.this.f1;
                b bVar3 = dev.duo.workspaceprobe.b.this;
                if (i == bVar3.G1 && !bVar3.I1 && !bVar3.L1 && !bVar3.M1) {
                    b bVar4 = dev.duo.workspaceprobe.b.this;
                    if (!bVar4.N1) {
                        if (bVar4.Z0.a(sensorEvent.values[0], SystemClock.uptimeMillis())) {
                            dev.duo.workspaceprobe.b.this.u1();
                            return;
                        }
                        return;
                    }
                }
            }
            dev.duo.workspaceprobe.b.this.f2();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class g0 extends ResultReceiver {
        final IBinder a;
        IBinder b_v;
        ResultReceiver c;
        boolean d;
        boolean e;
        final Runnable f;
        final IBinder.DeathRecipient g;

        g0() {
            super(dev.duo.workspaceprobe.b.this.A1);
            this.a = new Binder();
            this.f = new Runnable() { // from class: dev.duo.workspaceprobe.b$g0$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.g0.this.a();
                }
            };
            this.g = new IBinder.DeathRecipient() { // from class: dev.duo.workspaceprobe.b$g0$$ExternalSyntheticLambda1
                @Override // android.os.IBinder.DeathRecipient
                public final void binderDied() {
                    dev.duo.workspaceprobe.b.g0.this.c();
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            if (dev.duo.workspaceprobe.b.this.s5 != this) {
                return;
            }
            Log.e("DuoStandby", "Automatic clock timed out before display");
            dev.duo.workspaceprobe.b.this.n();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            if (dev.duo.workspaceprobe.b.this.s5 == this) {
                dev.duo.workspaceprobe.b.this.n();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            dev.duo.workspaceprobe.b.this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$g0$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.g0.this.b();
                }
            });
        }

        @Override // android.os.ResultReceiver
        protected void onReceiveResult(int i, Bundle bundle) {
            if (i != 1) {
                if (i != 5 || dev.duo.workspaceprobe.b.this.s5 != this || !this.e) {
                    if (i == 2 && dev.duo.workspaceprobe.b.this.s5 == this) {
                        dev.duo.workspaceprobe.b.this.n();
                        return;
                    }
                    return;
                }
                if (!dev.duo.workspaceprobe.b.this.H1() || !dev.duo.workspaceprobe.b.this.I1()) {
                    dev.duo.workspaceprobe.b.this.n();
                    return;
                } else {
                    dev.duo.workspaceprobe.b.this.A1.removeCallbacks(this.f);
                    Log.i("DuoStandby", "Automatic awake clock reported visible; visual confirmation pending");
                    return;
                }
            }
            if (dev.duo.workspaceprobe.b.this.s5 == this && this.e) {
                return;
            }
            ResultReceiver resultReceiver = bundle == null ? null : (ResultReceiver) bundle.getParcelable(TentClockActivity.b, ResultReceiver.class);
            IBinder binder = bundle == null ? null : bundle.getBinder(TentClockActivity.c);
            if (resultReceiver == null || binder == null) {
                if (dev.duo.workspaceprobe.b.this.s5 == this) {
                    dev.duo.workspaceprobe.b.this.n();
                }
                Log.e("DuoStandby", "Clock READY missing endpoint");
                return;
            }
            if (dev.duo.workspaceprobe.b.this.s5 != this || !dev.duo.workspaceprobe.b.this.H1() || !dev.duo.workspaceprobe.b.this.I1()) {
                resultReceiver.send(3, null);
                if (dev.duo.workspaceprobe.b.this.s5 == this) {
                    dev.duo.workspaceprobe.b.this.n();
                    return;
                }
                return;
            }
            this.c = resultReceiver;
            try {
                binder.linkToDeath(this.g, 0);
                this.b_v = binder;
                this.e = true;
                this.c.send(4, null);
                try {
                    PowerManager powerManager = (PowerManager) dev.duo.workspaceprobe.b.this.i4.getSystemService(PowerManager.class);
                    if (powerManager.isInteractive()) {
                        return;
                    }
                    Class cls = Long.TYPE;
                    Class cls2 = Integer.TYPE;
                    PowerManager.class.getMethod("wakeUp", cls, cls2, String.class, cls2).invoke(powerManager, Long.valueOf(SystemClock.uptimeMillis()), 2, "MiDuo:TentClock", 0);
                } catch (ReflectiveOperationException | RuntimeException e) {
                    dev.duo.workspaceprobe.b.this.a(e);
                }
            } catch (RemoteException e2) {
                dev.duo.workspaceprobe.b.this.n();
                Log.e("DuoStandby", "Clock process exited before activation", e2);
            }
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$h, reason: case insensitive filesystem */
    class C0039h extends BroadcastReceiver {
        C0039h() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.android.quicksearchbox".equals(getSentFromPackage())) {
                dev.duo.workspaceprobe.b.this.a(intent.getStringExtra("e"), intent.getFloatExtra("p", -1.0f));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class h0 extends View {
        static final float A = 257.0f;
        static final float B = 226.0f;
        static final int C = 205;
        static final int E = 420;
        private static final int G = 416;
        private static final int H = 405;
        private static final int I = 15;
        private static final Typeface K;
        private static final Typeface L;
        static final float a = 48.6f;
        static final float b_v = 98.0f;
        static final float c = 146.0f;
        private static final float d = 8.067599f;
        private static final float e = 6.804f;
        private static final float f = 6.804f;
        private static final float g = 31.0f;
        private static final float h_v = 149.0f;
        private static final float i = 28.0f;
        private static final float j_v = 152.0f;
        private static final float l_v = 5.1029997f;
        private static final float m = 29.986198f;
        private static final float n_v = 64.400604f;
        private static final float o_v = 21.869999f;
        private static final float p_v = 2.916f;
        private static final float q_v = 5.0f;
        private static final float r_v = 35.235f;
        private static final float s_v = 9.72f;
        private static final float t_v = 13.122f;
        private static final float u_v = 4.131f;
        private static final float v_v = 33.534f;
        private static final float w_v = -3.645f;
        static final float x_v = 224.0f;
        static final float y_v = 28.0f;
        static final float z_v = 6.0f;
        private final RectF A0_v;
        private final Path B0_v;
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
        Drawable[] a0;
        int b0;
        String c0;
        int d0;
        int e0;
        boolean f0;
        int g0;
        private final Paint h0;
        private final Path i0;
        private final Matrix j0_v;
        private boolean k0_v;
        private boolean l0_v;
        private boolean m0_v;
        private boolean n0_v;
        private float o0_v;
        private float p0_v;
        private float q0_v;
        private int r0_v;
        private Consumer<View> s0_v;
        private final Rect t0;
        private final Rect u0_v;
        private final Paint v0;
        private final Paint w0;
        private final Rect x0;
        private final Paint y0;
        private final Paint z0;
        private static final float[] k_v = {121.0f, 101.5f, 80.0f, 59.0f};
        static final int D = (int) Math.ceil(286.6000061035156d);
        private static final int F = (int) Math.ceil(202.6676025390625d);
        private static final Path J = b();

        static {
            Typeface typeface = Typeface.DEFAULT;
            K = Typeface.create(typeface, 600, false);
            L = Typeface.create(typeface, 700, false);
        }

        h0(Context context) {
            this(context, true);
        }

        void d(h0 h0Var) {
            this.M = h0Var.M;
            this.d0 = h0Var.d0;
            this.e0 = h0Var.e0;
            this.f0 = h0Var.f0;
            this.N = h0Var.N;
            this.P = h0Var.P;
            this.a0 = h0Var.a0;
            this.V = h0Var.V;
            this.b0 = h0Var.b0;
            this.O = h0Var.O;
            this.c0 = h0Var.c0;
            this.Q = h0Var.Q;
            this.R = h0Var.R;
            this.S = h0Var.S;
            this.T = h0Var.T;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float f2;
            h0 h0Var;
            int i2;
            int i3;
            int i4;
            Canvas canvas2;
            h0 h0Var2;
            float f3;
            int i5;
            float f4;
            canvas.translate(0.0f, dev.duo.workspaceprobe.b.u0_v);
            float f5 = this.S ? 6.804f : d;
            int i6 = this.g0;
            int i7 = (i6 & 16777215) | 1291845632;
            this.h0.setColor(i6);
            this.y0.setStrokeWidth(f5);
            if (this.W > 0.0f) {
                Calendar calendar = Calendar.getInstance();
                int i8 = calendar.get(12);
                String str = calendar.get(11) + (i8 < 10 ? ":0" : ":") + i8;
                int saveLayerAlpha = this.W < 1.0f ? canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), 97.4f - f5, Math.round(this.W * 255.0f)) : -1;
                a(canvas, str, m, b_v, n_v);
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
            boolean z3 = !z2 && h0Var.R && h0Var.b0 < 0 && h0Var.O && !h0Var.c0.isEmpty();
            boolean z4 = (!h0Var.f0 || z2 || z3) ? false : true;
            boolean z5 = z2 || z3 || z4;
            float f6 = z5 ? 28.0f : g;
            float f7 = z5 ? j_v : h_v;
            h0Var.A0_v.set(49.4f, 97.4f, 146.6f, 194.6f);
            int i9 = h0Var.N ? -13318311 : h0Var.M <= 0.2f ? -50384 : h0Var.g0;
            float max = Math.max(0.03f, Math.min(1.0f, h0Var.M));
            if (h0Var.P && h0Var.T) {
                String valueOf = String.valueOf(Math.round(h0Var.M * 100.0f));
                float degrees = (float) Math.toDegrees(Math.asin(Math.min(1.0f, (((h.a(valueOf, o_v, h0Var.S) / 2.0f) + q_v) + (f5 / 2.0f)) / a)));
                float f8 = (270.0f - degrees) - f7;
                float f9 = (f6 + 90.0f) - degrees;
                float f10 = max * (f8 + f9);
                h0Var.y0.setColor(i7);
                float f11 = f7;
                i2 = 16777215;
                i3 = 0;
                i4 = 1;
                canvas.drawArc(h0Var.A0_v, f11, f8, false, h0Var.y0);
                float f12 = degrees + 270.0f;
                canvas.drawArc(h0Var.A0_v, f12, f9, false, h0Var.y0);
                h0Var.y0.setColor(i9);
                canvas.drawArc(h0Var.A0_v, f11, Math.min(f10, f8), false, h0Var.y0);
                if (f10 > f8) {
                    canvas.drawArc(h0Var.A0_v, f12, f10 - f8, false, h0Var.y0);
                }
                h0Var.a(canvas, valueOf, o_v, f2, 111.251f);
            } else {
                float f13 = f7;
                i2 = 16777215;
                i3 = 0;
                i4 = 1;
                float f14 = 360.0f - (f13 - f6);
                h0Var.y0.setColor(i7);
                canvas.drawArc(h0Var.A0_v, f13, f14, false, h0Var.y0);
                h0Var.y0.setColor(i9);
                canvas.drawArc(h0Var.A0_v, f13, f14 * max, false, h0Var.y0);
            }
            if (!z2) {
                canvas2 = canvas;
                float f15 = f5;
                h0Var2 = h0Var;
                float f16 = f2;
                if (!z3) {
                    float f17 = z4 ? s_v : 0.0f;
                    if (h0Var2.b0 >= 0 || !h0Var2.O || h0Var2.c0.isEmpty()) {
                        float f18 = 164.468f - f17;
                        f3 = f16;
                        i5 = i7;
                        h0Var2.a(canvas2, f3, f18, i5, f15);
                    } else {
                        h0Var2.v0.setColor(h0Var2.g0);
                        Paint paint = h0Var2.v0;
                        String str2 = h0Var2.c0;
                        paint.getTextBounds(str2, i3, str2.length(), h0Var2.x0);
                        canvas2.drawText(h0Var2.c0, f16, (149.888f - f17) - h0Var2.x0.exactCenterY(), h0Var2.v0);
                        f3 = f16;
                        i5 = i7;
                    }
                    h0Var2.z0.setStrokeWidth(0.0f);
                    if (!z4) {
                        float[] r5Arr = {1.0f, 0.985f, 0.94f, 0.86f, 0.75f, 0.62f, 0.48f, 0.35f, 0.23f, 0.13f, 0.06f, 0.015f, 0.0f};
                        int i10 = i3;
                        while (true) {
                            if (i10 >= r5Arr.length) {
                                break;
                            }
                            double radians = Math.toRadians(r5Arr[i10]);
                            h0Var2.z0.setColor(i10 < h0Var2.d0 ? h0Var2.g0 : i5);
                            canvas2.drawCircle(f3 + (((float) Math.cos(radians)) * a), c + (((float) Math.sin(radians)) * a), l_v, h0Var2.z0);
                            i10++;
                        }
                    } else {
                        h0Var2.a(canvas2, f3, 179.534f, i5);
                    }
                } else {
                    if (h0Var2.f0) {
                        h0Var2.a(canvas2, f16, 142.355f, i7);
                    } else {
                        float f19 = (f15 * 7.5937495f) / d;
                        float f20 = f16 - ((33.887108f + f19) / 2.0f);
                        h0Var2.z0.setStrokeWidth(0.0f);
                        int i11 = i3;
                        while (i11 < 4) {
                            float f21 = i11;
                            float f22 = ((f21 * 2.0f) + 7.8f) * 1.8984374f;
                            h0Var2.z0.setColor(i11 < h0Var2.d0 ? h0Var2.g0 : i7);
                            float f23 = (f21 * 11.295702f) + f20;
                            h0Var2.A0_v.set(f23, 154.73282f - f22, f23 + f19, 154.73282f);
                            float f24 = 0.3f * f19;
                            canvas2.drawRoundRect(h0Var2.A0_v, f24, f24, h0Var2.z0);
                            i11++;
                        }
                    }
                    h0Var2.a(canvas2, h0Var2.c0, o_v, f16, 192.17f);
                    f3 = f16;
                }
            } else {
                if (h0Var.b0 >= 0) {
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
                h0Var2.z0.setColor(h0Var2.g0);
                h0Var2.z0.setStrokeWidth(0.0f);
                canvas2.save();
                canvas2.translate(f4, 181.235f);
                canvas2.drawPath(J, h0Var2.z0);
                canvas2.restore();
                f3 = f4;
            }
            int i12 = (!h0Var2.P || h0Var2.T) ? i3 : i4;
            if (i12 != 0) {
                h0Var2.w0.setColor(h0Var2.g0);
                h0Var2.w0.setTypeface(h0Var2.S ? K : L);
                canvas2.drawText(Math.round(h0Var2.M * 100.0f) + "%", f3, x_v, h0Var2.w0);
            }
            if (!h0Var2.U || h0Var2.a0.length <= 0) {
                return;
            }
            float f26 = i12 != 0 ? A : B;
            while (true) {
                Drawable[] drawableArr = h0Var2.a0;
                if (i3 >= drawableArr.length) {
                    break;
                }
                float length = f3 + ((i3 - ((drawableArr.length - i4) / 2.0f)) * 34.0f);
                drawableArr[i3].setBounds(Math.round(length - 14.0f), Math.round(f26 - 14.0f), Math.round(length + 14.0f), Math.round(14.0f + f26));
                h0Var2.a0[i3].draw(canvas2);
                i3++;
            }
            if (h0Var2.V) {
                h0Var2.z0.setColor((h0Var2.g0 & i2) | (-939524096));
                for (int i13 = -1; i13 <= i4; i13++) {
                    canvas2.drawCircle(f3 + (i13 * 10.0f), f26 + 14.0f + 12.0f, 2.6f, h0Var2.z0);
                }
            }
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            float y2 = motionEvent.getY();
            boolean z2 = a() && this.s0_v != null && y2 >= ((float) F) && y2 < ((float) this.r0_v);
            if (this.n0_v) {
                if (actionMasked == 2) {
                    if (Math.hypot(motionEvent.getX() - this.o0_v, y2 - this.p0_v) > this.q0_v) {
                        this.m0_v = false;
                    }
                } else if (actionMasked == 5) {
                    this.m0_v = false;
                } else if (actionMasked == 1 || actionMasked == 3) {
                    boolean z3 = this.m0_v && z2 && actionMasked == 1;
                    this.m0_v = false;
                    this.n0_v = false;
                    if (z3) {
                        this.s0_v.accept(this);
                    }
                }
                return true;
            }
            if (!z2 || actionMasked != 0) {
                if (this.l0_v && actionMasked == 0 && y2 >= this.r0_v) {
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }
            this.m0_v = true;
            this.n0_v = true;
            this.o0_v = motionEvent.getX();
            this.p0_v = y2;
            this.q0_v = ViewConfiguration.get(getContext()).getScaledTouchSlop();
            return true;
        }

        h0(Context context, boolean z2) {
            super(context);
            this.M = 1.0f;
            this.R = true;
            this.T = true;
            this.W = 1.0f;
            this.a0 = new Drawable[0];
            this.b0 = -1;
            this.c0 = "";
            this.d0 = -1;
            this.e0 = -1;
            this.g0 = -1;
            Paint paint = new Paint(1);
            this.h0 = paint;
            this.i0 = new Path();
            this.j0_v = new Matrix();
            this.r0_v = H;
            Rect rect = new Rect();
            this.t0 = rect;
            this.u0_v = new Rect(0, F, C, H);
            Paint paint2 = new Paint(1);
            this.v0 = paint2;
            Paint paint3 = new Paint(1);
            this.w0 = paint3;
            this.x0 = new Rect();
            Paint paint4 = new Paint(1);
            this.y0 = paint4;
            Paint paint5 = new Paint(1);
            this.z0 = paint5;
            this.A0_v = new RectF();
            this.B0_v = new Path();
            paint.setShadowLayer(z_v, 0.0f, 1.0f, 637534208);
            float max = Math.max(56.6676f, (h.a("23:59", m, false) / 2.0f) + z_v);
            rect.set((int) Math.floor(b_v - max), (int) Math.floor(28.414405822753906d), (int) Math.ceil(max + b_v), (int) Math.ceil(202.6676025390625d));
            if (z2) {
                try {
                    Class<?> cls = Class.forName("android.view.ViewTreeObserver$OnComputeInternalInsetsListener");
                    Class<?> cls2 = Class.forName("android.view.ViewTreeObserver$InternalInsetsInfo");
                    final Method method = cls2.getMethod("setTouchableInsets", Integer.TYPE);
                    final Field field = cls2.getField("touchableRegion");
                    ViewTreeObserver.class.getMethod("addOnComputeInternalInsetsListener", cls).invoke(getViewTreeObserver(), Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: dev.duo.workspaceprobe.b$h0$$ExternalSyntheticLambda0
                        @Override // java.lang.reflect.InvocationHandler
                        public final Object invoke(Object obj, Method method2, Object[] objArr) {
                            Object a2;
                            a2 = dev.duo.workspaceprobe.b.h0.this.a(method, field, obj, method2, objArr);
                            return a2;
                        }
                    }));
                } catch (ReflectiveOperationException e2) {
                    throw new IllegalStateException("Status touch region unavailable", e2);
                }
            }
            paint2.setTextSize(32.0f);
            Paint.Align align = Paint.Align.CENTER;
            paint2.setTextAlign(align);
            paint2.setTypeface(Typeface.create(Typeface.DEFAULT, 700, false));
            paint3.setTextSize(24.0f);
            paint3.setTextAlign(align);
            paint3.setShadowLayer(z_v, 0.0f, 1.0f, 637534208);
            paint4.setStyle(Paint.Style.STROKE);
            paint4.setStrokeCap(Paint.Cap.ROUND);
            paint5.setStyle(Paint.Style.FILL_AND_STROKE);
            paint5.setStrokeJoin(Paint.Join.ROUND);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object a(Method method, Field field, Object obj, Method method2, Object[] objArr) throws Throwable {
            if ("onComputeInternalInsets".equals(method2.getName())) {
                method.invoke(objArr[0], 3);
                Region region = (Region) field.get(objArr[0]);
                if (this.k0_v) {
                    region.set(c());
                    return null;
                }
                region.setEmpty();
                return null;
            }
            if ("equals".equals(method2.getName())) {
                return Boolean.valueOf(obj == objArr[0]);
            }
            if ("hashCode".equals(method2.getName())) {
                return Integer.valueOf(System.identityHashCode(obj));
            }
            if ("toString".equals(method2.getName())) {
                return "DuoStatusInsets";
            }
            return null;
        }

        private static Path b() {
            Path path = new Path();
            Path.Direction direction = Path.Direction.CW;
            path.addRoundRect(-15.95f, -2.95f, 18.95f, 2.95f, 2.95f, 2.95f, direction);
            Path path2 = new Path();
            path2.addRect(-15.95f, -2.95f, -9.95f, 2.95f, direction);
            path.op(path2, Path.Op.UNION);
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
                Path.Op op = Path.Op.UNION;
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
            Matrix matrix = new Matrix();
            matrix.setScale(1.0167364f, 1.0167364f);
            path.transform(matrix);
            return path;
        }

        Region c() {
            Region region = new Region(this.t0);
            if (a()) {
                region.op(this.u0_v, Region.Op.UNION);
            }
            return region;
        }

        void a(boolean z2) {
            if (this.k0_v == z2) {
                return;
            }
            this.k0_v = z2;
            setEnabled(z2);
            if (!z2) {
                this.m0_v = false;
                this.n0_v = false;
            }
            requestLayout();
        }

        void a(boolean z2, int i2) {
            if (this.l0_v == z2 && this.r0_v == i2) {
                return;
            }
            this.l0_v = z2;
            this.r0_v = i2;
            this.u0_v.set(0, F, C, i2);
            if (!a()) {
                this.m0_v = false;
                this.n0_v = false;
            }
            requestLayout();
        }

        void a(Consumer<View> consumer) {
            this.s0_v = consumer;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a() {
            return this.l0_v && this.r0_v > F + I;
        }

        private void a(Canvas canvas, String str, float f2, float f3, float f4) {
            h.a(str, f2, this.S, f3, f4, this.i0, this.j0_v);
            canvas.drawPath(this.i0, this.h0);
        }

        private void a(Canvas canvas, float f2, float f3, int i2) {
            this.z0.setStrokeWidth(0.0f);
            int i3 = 0;
            while (i3 < 2) {
                int i4 = i3 == 0 ? this.d0 : this.e0;
                int i5 = 0;
                while (i5 < 4) {
                    this.z0.setColor(i5 < i4 ? this.g0 : i2);
                    canvas.drawCircle(((i5 - 1.5f) * t_v) + f2, ((i3 - 0.5f) * t_v) + f3, u_v, this.z0);
                    i5++;
                }
                i3++;
            }
        }

        private void a(Canvas canvas, float f2, float f3, int i2, float f4) {
            this.y0.setStrokeWidth(6.804f);
            int i3 = 0;
            while (i3 < 2) {
                float f5 = (i3 == 0 ? 0.59f : 0.38f) * a;
                this.y0.setColor(this.b0 >= 2 - i3 ? this.g0 : i2);
                this.A0_v.set(f2 - f5, f3 - f5, f2 + f5, f5 + f3);
                canvas.drawArc(this.A0_v, 228.0f, 84.0f, false, this.y0);
                i3++;
            }
            this.y0.setStrokeWidth(f4);
            this.B0_v.reset();
            this.B0_v.moveTo(f2, f3);
            this.A0_v.set(f2 - 8.262f, f3 - 8.262f, f2 + 8.262f, f3 + 8.262f);
            this.B0_v.arcTo(this.A0_v, 228.0f, 84.0f);
            this.B0_v.close();
            this.z0.setColor(this.b0 >= 0 ? this.g0 : i2);
            this.z0.setStrokeWidth(2.43f);
            canvas.drawPath(this.B0_v, this.z0);
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$i, reason: case insensitive filesystem */
    class C0040i extends BroadcastReceiver {
        final /* synthetic */ h0 a;

        C0040i(h0 h0Var) {
            this.a = h0Var;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                h0 h0Var = this.a;
                float f = h0Var.M;
                boolean z_v = h0Var.N;
                int intExtra = intent.getIntExtra("level", -1);
                int intExtra2 = intent.getIntExtra("scale", 100);
                if (intExtra >= 0 && intExtra2 > 0) {
                    this.a.M = intExtra / intExtra2;
                }
                boolean z2 = true;
                int intExtra3 = intent.getIntExtra("status", 1);
                h0 h0Var2 = this.a;
                if (intent.getIntExtra("plugged", 0) == 0 || (intExtra3 != 2 && intExtra3 != 5)) {
                    z2 = false;
                }
                h0Var2.N = z2;
                h0 h0Var3 = this.a;
                if (f == h0Var3.M && z_v == h0Var3.N) {
                    return;
                } else {
                    d.d();
                }
            }
            d.e();
            dev.duo.workspaceprobe.b.this.l2();
            dev.duo.workspaceprobe.b.this.m1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$j, reason: case insensitive filesystem */
    class C0041j extends ContentObserver {
        final /* synthetic */ Runnable a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0041j(Handler handler, Runnable runnable) {
            super(handler);
            this.a = runnable;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z_v) {
            this.a.run();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$k, reason: case insensitive filesystem */
    class C0042k extends BroadcastReceiver {
        C0042k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String schemeSpecificPart = intent.getData() == null ? null : intent.getData().getSchemeSpecificPart();
            if (schemeSpecificPart == null || dev.duo.workspaceprobe.b.c(schemeSpecificPart)) {
                return;
            }
            dev.duo.workspaceprobe.b.this.g(schemeSpecificPart);
            if (!"android.intent.action.PACKAGE_REMOVED".equals(intent.getAction()) || intent.getBooleanExtra("android.intent.extra.REPLACING", false)) {
                dev.duo.workspaceprobe.b.this.d(schemeSpecificPart, "package");
            } else {
                dev.duo.workspaceprobe.b.this.J0.a(schemeSpecificPart);
            }
            dev.duo.workspaceprobe.b.this.O1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$l, reason: case insensitive filesystem */
    final class C0043l extends TelephonyCallback implements TelephonyCallback.ActiveDataSubscriptionIdListener, TelephonyCallback.CallStateListener {
        private int a = -1;
        private TelephonyManager b_v;
        private TelephonyCallback c;
        final /* synthetic */ h0 d;

        /* renamed from: dev.duo.workspaceprobe.b$l$a */
        final class a extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {
            final /* synthetic */ int a;

            a(int i) {
                this.a = i;
            }

            @Override // android.telephony.TelephonyCallback.DisplayInfoListener
            public void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
                if (C0043l.this.a != this.a) {
                    return;
                }
                C0043l.this.d.c0 = dev.duo.workspaceprobe.b.b(telephonyDisplayInfo);
                dev.duo.workspaceprobe.b.this.m1();
            }
        }

        C0043l(h0 h0Var) {
            this.d = h0Var;
        }

        @Override // android.telephony.TelephonyCallback.ActiveDataSubscriptionIdListener
        public void onActiveDataSubscriptionIdChanged(int i) {
            if (this.a == i) {
                return;
            }
            TelephonyCallback telephonyCallback = this.c;
            if (telephonyCallback != null) {
                this.b_v.unregisterTelephonyCallback(telephonyCallback);
                this.c = null;
            }
            this.a = i;
            this.d.c0 = "";
            dev.duo.workspaceprobe.b.this.m1();
            if (SubscriptionManager.isValidSubscriptionId(i)) {
                this.b_v = ((TelephonyManager) dev.duo.workspaceprobe.b.this.i4.getSystemService(TelephonyManager.class)).createForSubscriptionId(i);
                this.c = new a(i);
                this.b_v.registerTelephonyCallback(dev.duo.workspaceprobe.b.this.i4.getMainExecutor(), this.c);
            }
        }

        @Override // android.telephony.TelephonyCallback.CallStateListener
        public void onCallStateChanged(final int i) {
            dev.duo.workspaceprobe.b.this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$l$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.C0043l.this.a(i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i) {
            if (dev.duo.workspaceprobe.b.this.f5 == i) {
                return;
            }
            dev.duo.workspaceprobe.b.this.f5 = i;
            dev.duo.workspaceprobe.b.this.y();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$m, reason: case insensitive filesystem */
    class C0044m extends ContentObserver {
        final /* synthetic */ Runnable a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0044m(Handler handler, Runnable runnable) {
            super(handler);
            this.a = runnable;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z_v) {
            this.a.run();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$n, reason: case insensitive filesystem */
    class C0045n extends ContentObserver {
        C0045n(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z_v) {
            dev.duo.workspaceprobe.b.this.Y1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$o, reason: case insensitive filesystem */
    class C0046o extends BroadcastReceiver {
        final /* synthetic */ Runnable a;

        C0046o(Runnable runnable) {
            this.a = runnable;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            this.a.run();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$p, reason: case insensitive filesystem */
    class C0047p extends ConnectivityManager.NetworkCallback {
        private Network a;
        final /* synthetic */ h0 b_v;
        final /* synthetic */ Runnable c;

        C0047p(h0 h0Var, Runnable runnable) {
            this.b_v = h0Var;
            this.c = runnable;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            this.a = network;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            if (network.equals(this.a)) {
                this.b_v.O = networkCapabilities.hasTransport(0);
                this.c.run();
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            if (network.equals(this.a)) {
                this.a = null;
                this.b_v.O = false;
                this.c.run();
            }
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$q, reason: case insensitive filesystem */
    class C0048q extends BroadcastReceiver {
        C0048q() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ComponentName componentName;
            if ("android.intent.action.ACTION_SHUTDOWN".equals(intent.getAction())) {
                dev.duo.workspaceprobe.b.this.N1 = true;
            }
            if ("android.intent.action.USER_PRESENT".equals(intent.getAction()) && dev.duo.workspaceprobe.b.this.v0() && dev.duo.workspaceprobe.b.this.I()) {
                dev.duo.workspaceprobe.b.this.a(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").addFlags(268435456));
            }
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()) || "android.intent.action.USER_PRESENT".equals(intent.getAction()) || "android.intent.action.ACTION_SHUTDOWN".equals(intent.getAction())) {
                dev.duo.workspaceprobe.b.this.n();
            }
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                dev.duo.workspaceprobe.b.this.S4 = true;
            }
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()) || "android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction())) {
                b bVar= dev.duo.workspaceprobe.b.this;
                bVar.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$q$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.n(dev.duo.workspaceprobe.b.this);
                    }
                });
            } else if ("android.intent.action.SCREEN_ON".equals(intent.getAction()) || "android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                dev.duo.workspaceprobe.b.this.S4 = false;
            }
            final b bVar2 = dev.duo.workspaceprobe.b.this;
            bVar2.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$q$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.R(dev.duo.workspaceprobe.b.this);
                }
            });
            if ("android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction())) {
                dev.duo.workspaceprobe.b.V(dev.duo.workspaceprobe.b.this);
                dev.duo.workspaceprobe.b.this.x2.clear();
                dev.duo.workspaceprobe.b.this.y2 = "";
                dev.duo.workspaceprobe.b.this.k2 = dev.duo.workspaceprobe.b.b(context);
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) dev.duo.workspaceprobe.b.this.G0.get(Integer.valueOf(dev.duo.workspaceprobe.b.this.G1));
                b bVar3 = dev.duo.workspaceprobe.b.this;
                if (!bVar3.I1 && runningTaskInfo != null && (componentName = runningTaskInfo.topActivity) != null) {
                    bVar3.a(runningTaskInfo.taskId, componentName);
                }
            }
            if (dev.duo.workspaceprobe.b.this.W5 && dev.duo.workspaceprobe.b.this.Y0()) {
                dev.duo.workspaceprobe.b.this.m1();
            }
            dev.duo.workspaceprobe.b.this.P();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$r, reason: case insensitive filesystem */
    class C0049r extends ContentObserver {
        C0049r(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z_v) {
            dev.duo.workspaceprobe.b.this.X1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$s, reason: case insensitive filesystem */
    class C0050s implements DisplayManager.DisplayListener {
        C0050s() {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
            if (i == 0) {
                b bVar= dev.duo.workspaceprobe.b.this;
                bVar.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$s$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.R(dev.duo.workspaceprobe.b.this);
                    }
                });
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            if (i == 0) {
                b bVar= dev.duo.workspaceprobe.b.this;
                bVar.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$s$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.R(dev.duo.workspaceprobe.b.this);
                    }
                });
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
            if (i == 0) {
                b bVar= dev.duo.workspaceprobe.b.this;
                bVar.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$s$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.R(dev.duo.workspaceprobe.b.this);
                    }
                });
            }
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$t, reason: case insensitive filesystem */
    class C0051t implements SensorEventListener {
        C0051t() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (dev.duo.workspaceprobe.b.this.j5 != this) {
                return;
            }
            if (sensorEvent.values.length <= dev.duo.workspaceprobe.b.this.k5 || !Float.isFinite(sensorEvent.values[dev.duo.workspaceprobe.b.this.k5])) {
                dev.duo.workspaceprobe.b.this.a((Exception) new IllegalStateException("Invalid native fold classification"));
                return;
            }
            float f = sensorEvent.values[dev.duo.workspaceprobe.b.this.k5];
            boolean z_v = f > 0.0f && f <= 1.0f;
            if (dev.duo.workspaceprobe.b.this.l5 && dev.duo.workspaceprobe.b.this.m5 == z_v) {
                return;
            }
            dev.duo.workspaceprobe.b.this.l5 = true;
            dev.duo.workspaceprobe.b.this.m5 = z_v;
            if (!z_v) {
                dev.duo.workspaceprobe.b.this.n5 = false;
            }
            dev.duo.workspaceprobe.b.this.y();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$u, reason: case insensitive filesystem */
    class C0052u extends ViewOutlineProvider {
        final /* synthetic */ float a;

        C0052u(float f) {
            this.a = f;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.a);
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$v, reason: case insensitive filesystem */
    class C0053v extends BroadcastReceiver {
        C0053v() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            dev.duo.workspaceprobe.b.this.k1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$w, reason: case insensitive filesystem */
    class C0054w extends ContentObserver {
        C0054w(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z_v) {
            dev.duo.workspaceprobe.b.this.T1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$x, reason: case insensitive filesystem */
    class C0055x extends ContentObserver {
        C0055x(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z_v) {
            dev.duo.workspaceprobe.b.this.k1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$y, reason: case insensitive filesystem */
    class C0056y extends CameraManager.TorchCallback {
        C0056y() {
        }

        @Override // android.hardware.camera2.CameraManager.TorchCallback
        public void onTorchModeChanged(String str, boolean z_v) {
            dev.duo.workspaceprobe.b.this.a(str, z_v);
            Log.w("DuoRail", "Rail torch state " + str + "=" + z_v);
        }

        @Override // android.hardware.camera2.CameraManager.TorchCallback
        public void onTorchModeUnavailable(String str) {
            dev.duo.workspaceprobe.b.this.Y6.remove(str);
            dev.duo.workspaceprobe.b.this.k1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$z, reason: case insensitive filesystem */
    class ServiceConnectionC0057z implements ServiceConnection {
        final /* synthetic */ Context a;
        final /* synthetic */ Intent b_v;

        ServiceConnectionC0057z(Context context, Intent intent) {
            this.a = context;
            this.b_v = intent;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                try {
                    ComponentName startService = this.a.startService(this.b_v);
                    if (startService == null) {
                        throw new IllegalStateException("RecorderService unavailable");
                    }
                    Log.w("DuoRail", "Rail screen record service " + startService);
                    this.a.unbindService(this);
                } catch (Throwable th) {
                    try {
                        dev.duo.workspaceprobe.b.this.a("录屏", th);
                        this.a.unbindService(this);
                    } catch (Throwable th2) {
                        try {
                            this.a.unbindService(this);
                        } catch (Throwable th3) {
                            dev.duo.workspaceprobe.b.this.a("录屏", th3);
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th4) {
                dev.duo.workspaceprobe.b.this.a("录屏", th4);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.w("DuoRail", "Rail screen record service disconnected " + componentName);
        }
    }

    public b() {
        Handler handler = new Handler(Looper.getMainLooper());
        this.A1 = handler;
        this.F1 = "";
        this.G1 = -1;
        this.O1 = Collections.newSetFromMap(new IdentityHashMap());
        this.P1 = -1;
        this.Q1 = Executors.newSingleThreadExecutor();
        this.V1 = -1;
        this.X1 = -1;
        this.Z1 = "";
        this.a2 = "";
        this.c2 = true;
        this.d2 = -1L;
        this.e2 = -1L;
        this.l2 = new ConcurrentHashMap();
        this.m2 = new HashMap();
        this.o2 = new Field[0];
        this.p2 = new ConcurrentHashMap();
        this.q2 = ConcurrentHashMap.newKeySet();
        this.r2 = new ThreadLocal<>();
        this.u2 = "";
        this.v2 = -1;
        this.w2 = -1;
        this.x2 = new ConcurrentHashMap();
        this.y2 = "";
        this.C2_v = -1;
        this.D2 = "";
        this.E2 = "";
        this.F2 = new HashMap();
        this.G2 = new HashMap();
        this.H2 = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.u0();
            }
        };
        this.I2 = "";
        this.J2 = "";
        this.K2 = "";
        this.W2 = 90;
        this.X2 = 90;
        this.f3 = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda55
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.U();
            }
        };
        this.w3 = -1;
        this.x3 = new WeakHashMap();
        this.y3 = Integer.MIN_VALUE;
        this.z3 = new View.OnLayoutChangeListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda56
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                dev.duo.workspaceprobe.b.this.a(view, i2, i3, i4, i5, i6, i7, i8, i9);
            }
        };
        this.A3 = new ViewTreeObserver.OnPreDrawListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda57
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                boolean V2;
                V2 = dev.duo.workspaceprobe.b.this.V();
                return V2;
            }
        };
        this.C3 = new ViewOnAttachStateChangeListenerC0035d();
        this.E3 = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.i2();
            }
        };
        List<String> list = Collections.EMPTY_LIST;
        this.F3 = list;
        this.G3 = true;
        this.H3 = true;
        this.I3 = new int[7];
        this.K3 = list;
        this.L3 = list;
        this.M3 = list;
        this.N3 = list;
        this.Q3 = true;
        this.d4 = -2;
        this.f4 = ConcurrentHashMap.newKeySet();
        this.g4 = new ArrayList();
        this.h4 = new ArrayList();
        this.t4 = -1;
        this.u4 = new ThreadLocal<>();
        this.x4 = new n(this);
        this.e5 = -1;
        this.f5 = -1;
        this.x5 = new HashSet();
        this.A5 = new R[3];
        this.B5 = new ImageView[2];
        this.C5 = new ImageView[3];
        this.D5 = new Q[3];
        this.E5 = new HashSet();
        this.F5 = 1.0f;
        this.G5 = 0.0f;
        this.I5 = ConcurrentHashMap.newKeySet();
        this.J5 = new ConcurrentHashMap();
        this.K5 = -1L;
        this.L5 = new ArrayDeque<>();
        this.M5 = new ConcurrentHashMap();
        this.N5 = new ConcurrentHashMap();
        this.O5 = new ConcurrentHashMap();
        this.P5 = new ConcurrentHashMap();
        this.S5 = dev.duo.hookprobe.J.a();
        this.T5 = new ConcurrentHashMap();
        this.V5 = new ConcurrentHashMap();
        this.d6 = -1;
        this.e6 = -2;
        this.q6 = new Object();
        this.x6 = new Object();
        this.D6_v = -1;
        this.H6 = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.T();
            }
        };
        this.I6 = new HashSet();
        this.S6 = new HashSet();
        this.W6 = new C0053v();
        this.X6 = new C0055x(handler);
        this.Y6 = new ConcurrentHashMap();
    }

    private void A0() {
        if (this.U3 != null) {
            return;
        }
        d0 d0Var = new d0();
        this.U3 = d0Var;
        d0Var.e();
        n(this.U3 != null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A1() {
        if (this.j2) {
            this.j2 = false;
            l("MiDuo ready again");
        }
    }

    private boolean B0() {
        return !this.I2.isEmpty() && this.I2.equals(this.F1) && this.C2_v == this.G1 && !this.I1 && q0() && j(this.G1) && v0() && R0() && !this.M1 && !this.L1 && !this.E6 && !this.N1;
    }

    private void B1() {
        if (!B0() || this.O2 || this.M2 == 0) {
            return;
        }
        v();
        TextView textView = new TextView(this.i4);
        textView.setText("点选 App 背景取色，长按取消");
        textView.setTextSize(16.0f);
        textView.setTextColor(-14460213);
        textView.setGravity(49);
        textView.setPadding(0, 80, 0, 0);
        textView.setBackgroundColor(16777216);
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda32
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean c2;
                c2 = dev.duo.workspaceprobe.b.this.c(view, motionEvent);
                return c2;
            }
        });
        R r2 = new R("pick_point", textView, 0.0f, 0, s0_v, 1712, 0, 0.0f, 40);
        this.Z2 = r2;
        a(r2, 0, 0, 2002);
    }

    private boolean C0() {
        if (!this.k2 ? !this.R2 : !this.S2) {
            return false;
        }
        i0 i0Var = this.F2.get(this.D2);
        if (i0Var == null) {
            return true;
        }
        Iterator<String> it = i0Var.f.iterator();
        while (it.hasNext()) {
            if (it.next().startsWith(this.k2 ? "dark/" : "light/")) {
                return false;
            }
        }
        return true;
    }

    private boolean C1() {
        int i2;
        if (this.i4 == null || this.I1 || this.L1 || this.N1 || dev.duo.hookprobe.G.f() || !v0()) {
            return false;
        }
        Display display = ((DisplayManager) this.i4.getSystemService(DisplayManager.class)).getDisplay(0);
        Point point = new Point();
        if (display != null) {
            display.getRealSize(point);
        }
        a.b b2 = this.J0.b(this.F1);
        if (b2 != null && b2.a && b2.d && (((i2 = point.x) == O && point.y == P) || (i2 == P && point.y == O))) {
            return false;
        }
        int i3 = point.x;
        return ((i3 == 1168 && point.y == 1712) || ((i3 == 1712 && point.y == 1168) || ((i3 == O && point.y == P) || (i3 == P && point.y == O)))) && R0();
    }

    private void D0() {
        StringBuilder append;
        String str;
        if (this.Y2 == null) {
            return;
        }
        boolean C02 = C0();
        TextView textView = this.a3;
        if (this.Q2) {
            append = new StringBuilder().append(C02 ? "确认 App 默认色 " : "确认页面颜色 ");
            str = y(this.V2);
        } else {
            append = new StringBuilder().append("取色模式 · ").append(this.k2 ? "深色" : "浅色");
            str = " · 拖动标题可移动";
        }
        textView.setText(append.append(str).toString());
        this.b3.setText(!this.J2.isEmpty() ? this.J2 : this.O2 ? "页面变化中，停稳后可以取色" : this.M2 == 0 ? "等待页面信息，请重新进入 App" : C02 ? "先确认 App 默认色（建议在 App 首页），正确后保存；也可点选取色位置" : "自动检查颜色变化；漏检或颜色不对时可点取色");
        boolean z2 = C02 || this.Q2 || !this.J2.isEmpty();
        this.b3.setVisibility(z2 ? 0 : 8);
        ((View) this.c3.getParent()).setVisibility(this.Q2 ? 0 : 8);
        int i2 = (z2 ? 104 : 0) + 162 + (this.Q2 ? 78 : 0);
        R r2 = this.Y2;
        if (r2.g != i2) {
            r2.g = i2;
            this.X2 = Math.min(this.X2, 1712 - i2);
            R r3 = this.Y2;
            r3.a.relayout(r3.f, i2);
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                transaction.setCrop(this.Y2.b_v, new Rect(0, 0, this.Y2.f, i2)).apply();
                transaction.close();
                if (this.T2 && this.Z2 == null) {
                    a(this.Y2, this.W2, this.X2, 2001);
                }
            } catch (Throwable th) {
                try {
                    transaction.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        TextView[] textViewArr = {this.c3, this.d3, this.e3};
        for (int i3 = 0; i3 < 3; i3++) {
            TextView textView2 = textViewArr[i3];
            textView2.setEnabled(this.Q2 && !this.P2);
            textView2.setAlpha(this.Q2 ? 1.0f : 0.35f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int D1() {
        return (b(Math.max(3, dev.duo.hookprobe.J.d(this.S5)) - 1) + 136) - b(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int E1() {
        return this.R3 ? this.S3 : (G1() + D1()) - 68;
    }

    private void F0() {
        R r2 = this.N6;
        if (r2 != null && r2.b_v.isValid() && !this.n3) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                R r3 = this.N6;
                transaction.setPosition(r3.b_v, c(r3), d(this.N6)).apply();
                transaction.close();
                this.l4 = false;
            } catch (Throwable th) {
                try {
                    transaction.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        Q1();
        final float f2 = this.I3[1] + T;
        Iterator<K> it = this.M5.values().iterator();
        while (it.hasNext()) {
            final h0 h0Var = it.next().q;
            if (h0Var != null) {
                h0Var.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda101
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.a(h0Var, f2);
                    }
                });
            }
        }
    }

    private float F1() {
        O o2 = this.m6;
        if (o2 == null || this.p6 != o2.a || !q0() || !this.b6 || this.J6 || this.d6 == 2 || this.M1 || this.N1 || N0() || !this.I6.isEmpty() || !R0()) {
            return 0.0f;
        }
        boolean f2 = f();
        boolean z2 = this.c6;
        boolean z3 = z2 && (f2 || this.H5 || this.G5 > 0.0f);
        if (!f2 && !z3) {
            return 0.0f;
        }
        if (this.d6 != 0 || z2) {
            return this.f6;
        }
        return 0.0f;
    }

    private void G0() {
        if (this.Q5) {
            return;
        }
        for (int i2 = 0; i2 < 3; i2++) {
            try {
                K i3 = i();
                synchronized (this.L5) {
                    this.L5.add(i3);
                }
            } catch (Throwable th) {
                Log.w("DuoRail", "App rail decor unavailable; global App panels kept", th);
                return;
            }
        }
        this.Q5 = true;
        Handler handler = this.R0;
        if (handler != null) {
            handler.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda48
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.W();
                }
            });
        }
        Log.w("DuoRail", "App rail decor pool ready 3");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int G1() {
        String[] strArr = this.S5;
        int e2 = dev.duo.hookprobe.J.e(strArr);
        int i2 = 0;
        int b2 = b(0);
        if (e2 >= 0 && strArr != null) {
            while (i2 < e2 && i2 < strArr.length) {
                String str = strArr[i2];
                if (dev.duo.hookprobe.J.f.equals(str)) {
                    b2 += d() + 30;
                    i2 += 2;
                } else if (str == null || dev.duo.hookprobe.J.e.equals(str) || v(str)) {
                    b2 += g0;
                }
                i2++;
            }
        }
        return b2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean, int] */
    private void H0() {
        try {
            ContentResolver contentResolver = this.i4.getContentResolver();
            int r2 = 0;
            if (Settings.Global.getInt(contentResolver, "airplane_mode_on", 0) == 0) {
                r2 = 1;
            }
            Settings.Global.putInt(contentResolver, "airplane_mode_on", r2);
            Intent intent = new Intent("android.intent.action.AIRPLANE_MODE");
            intent.putExtra("state", (r2 != 0));
            this.i4.sendBroadcastAsUser(intent, Process.myUserHandle());
            Log.w("DuoRail", "Rail airplane " + ((r2 != 0)));
        } catch (Throwable th) {
            a("飞行模式", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean H1() {
        if (!J1() || !this.l5 || !this.m5) {
            return false;
        }
        int i2 = this.e5;
        return (i2 == 1 || (this.p5 != null && !this.r5 && this.o5 && i2 == 4)) && a(p0()) == 0;
    }

    private void I0() {
        try {
            ContentResolver contentResolver = this.i4.getContentResolver();
            int i2 = Settings.System.getInt(contentResolver, "screen_brightness_mode", 0) == 0 ? 1 : 0;
            Settings.System.putInt(contentResolver, "screen_brightness_mode", i2);
            Log.w("DuoRail", "Rail auto brightness " + i2);
        } catch (Throwable th) {
            a("自动亮度", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean I1() {
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) this.i4.getSystemService(ActivityManager.class)).getRunningTasks(1);
        return !runningTasks.isEmpty() && new ComponentName(dev.duo.icons.g.a, "dev.duo.hookprobe.TentClockActivity").equals(runningTasks.get(0).topActivity);
    }

    private void J0() {
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter == null) {
                return;
            }
            boolean isEnabled = defaultAdapter.isEnabled();
            if (isEnabled) {
                defaultAdapter.disable();
            } else {
                defaultAdapter.enable();
            }
            Log.w("DuoRail", "Rail bluetooth " + (!isEnabled));
        } catch (Throwable th) {
            a("蓝牙", th);
        }
    }

    private boolean J1() {
        if (!this.R4 || !this.T4 || this.U4 || this.e5 < 0 || !this.Z4 || this.a5 || this.c5 || this.N1 || this.f5 != 0 || !((KeyguardManager) this.i4.getSystemService(KeyguardManager.class)).isKeyguardLocked()) {
            return false;
        }
        if (!this.d5) {
            return true;
        }
        g0 g0Var = this.s5;
        return g0Var != null && g0Var.d && I1();
    }

    private void K0() {
        Intent addFlags = new Intent().setComponent(new ComponentName("com.miui.calculator", "com.miui.calculator.cal.CalculatorActivity")).addFlags(268435456);
        try {
            ActivityOptions f2 = f("com.miui.calculator");
            if (f2 == null) {
                Log.w("DuoRail", "Rail launch 计算器: freeform not allowed, fullscreen");
                a("计算器", addFlags);
            } else {
                this.i4.startActivity(addFlags, f2.toBundle());
                Log.w("DuoRail", "Rail launch 计算器 freeform");
            }
        } catch (Throwable th) {
            a("计算器", th);
        }
    }

    private void K1() {
        if (this.Q0 || this.i4 == null) {
            return;
        }
        this.Q0 = true;
        d.a(this.i4);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme("package");
        try {
            this.i4.registerReceiver(new C0042k(), intentFilter, null, this.A1);
        } catch (Throwable th) {
            Log.w("DuoRail", "Package change receiver unavailable", th);
        }
        this.k2 = b(this.i4);
        Context context = this.i4;
        try {
            this.i4.getContentResolver().registerContentObserver(Uri.parse("content://com.lsposed.miduo.config/notificationIcons"), false, new C0054w(this.A1));
        } catch (RuntimeException e2) {
            Log.w("DuoRail", "Notification icon observer unavailable", e2);
        }
        T1();
        try {
            this.i4.getContentResolver().registerContentObserver(Uri.parse("content://com.lsposed.miduo.config/searchButton"), false, new C(this.A1));
        } catch (RuntimeException e3) {
            Log.w("DuoRail", "Search button observer unavailable", e3);
        }
        W1();
        try {
            this.i4.getContentResolver().registerContentObserver(Uri.parse("content://com.lsposed.miduo.config/pickButton"), false, new D(this.A1));
        } catch (RuntimeException e4) {
            Log.w("DuoRail", "Pick button observer unavailable", e4);
        }
        V1();
        try {
            this.i4.getContentResolver().registerContentObserver(Uri.parse("content://com.lsposed.miduo.config/railCustom"), false, new E(this.A1));
            this.i4.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("freeform_timestamps"), false, new F(this.A1));
        } catch (RuntimeException e5) {
            Log.w("DuoRail", "Custom rail observer unavailable", e5);
        }
        O1();
        R1();
        try {
            this.i4.getContentResolver().registerContentObserver(Uri.parse("content://com.lsposed.miduo.config/workbench"), false, new H(this.A1));
        } catch (RuntimeException e6) {
            Log.w("DuoWorkbench", "Switch observer unavailable", e6);
        }
        Z1();
        this.i4.getContentResolver().registerContentObserver(Uri.parse("content://com.lsposed.miduo.config/pageTones"), true, new I(this.A1));
        this.i4.getContentResolver().registerContentObserver(dev.duo.hookprobe.F.a, false, new C0033a(this.A1));
        e1();
        try {
            this.i4.getContentResolver().registerContentObserver(Uri.parse("content://com.lsposed.miduo.config/duoRail"), true, new C0006b(this.A1));
        } catch (Throwable th2) {
            Log.w("DuoRail", "Duo change observer unavailable", th2);
        }
        l("start");
    }

    private void L0() {
        a("投屏", new Intent().setComponent(new ComponentName("com.milink.service", "com.milink.router.RouterActivity")).addFlags(268435456));
    }

    private void L1() {
        if (this.A4 != null) {
            return;
        }
        try {
            dev.duo.workspaceprobe.b.class.getClassLoader();
            ClassLoader classLoader = this.i4.getClassLoader();
            Class<?> cls = Class.forName("com.android.systemui.shared.system.InputMonitorCompat", false, classLoader);
            Class<?> cls2 = Class.forName("com.android.systemui.shared.system.InputChannelCompat$InputEventListener", false, classLoader);
            this.z4 = cls.getConstructor(String.class, Integer.TYPE).newInstance("DuoRailPageWatch", 0);
            this.A4 = cls.getMethod("getInputReceiver", Looper.class, Choreographer.class, cls2).invoke(this.z4, Looper.getMainLooper(), Choreographer.getInstance(), Proxy.newProxyInstance(classLoader, new Class[]{cls2}, new InvocationHandler() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda60
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method, Object[] objArr) {
                    Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(obj, method, objArr);
                    return a2;
                }
            }));
            Log.w("DuoRail", "Page watch ready");
        } catch (Throwable th) {
            Object obj = this.z4;
            if (obj != null) {
                try {
                    obj.getClass().getMethod("dispose", null).invoke(this.z4, null);
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                this.z4 = null;
            }
            this.B4_v = SystemClock.uptimeMillis() + 5000;
            Log.w("DuoRail", "Page watch unavailable", th);
        }
    }

    private void M0() {
        try {
            boolean z2 = (this.i4.getResources().getConfiguration().uiMode & 48) == 32;
            ContentResolver contentResolver = this.i4.getContentResolver();
            boolean z3 = !z2;
            Settings.System.putString(contentResolver, "open_dark_mode_channel", "控制中心");
            Settings.System.putInt(contentResolver, "dark_mode_enable_by_setting", 1);
            UiModeManager.class.getMethod("setNightModeActivated", Boolean.TYPE).invoke((UiModeManager) this.i4.getSystemService("uimode"), Boolean.valueOf(z3));
            Log.w("DuoRail", "Rail dark " + z3);
        } catch (Throwable th) {
            a("深色模式", th);
        }
    }

    private void M1() {
        if (this.T4) {
            return;
        }
        try {
            this.S4 = !((PowerManager) this.i4.getSystemService(PowerManager.class)).isInteractive();
            Class<?> cls = Class.forName("android.hardware.devicestate.DeviceStateManager");
            Class<?> cls2 = Class.forName("android.hardware.devicestate.DeviceStateManager$DeviceStateCallback");
            final Method method = Class.forName("android.hardware.devicestate.DeviceState").getMethod("getIdentifier", null);
            if (this.g5 == null) {
                Object newProxyInstance = Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new InvocationHandler() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda129
                    @Override // java.lang.reflect.InvocationHandler
                    public final Object invoke(Object obj, Method method2, Object[] objArr) {
                        Object a2;
                        a2 = dev.duo.workspaceprobe.b.this.a(method, obj, method2, objArr);
                        return a2;
                    }
                });
                cls.getMethod("registerCallback", Executor.class, cls2).invoke(this.i4.getSystemService(cls), new Executor() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda130
                    @Override // java.util.concurrent.Executor
                    public final void execute(Runnable runnable) {
                        dev.duo.workspaceprobe.b.this.d(runnable);
                    }
                }, newProxyInstance);
                this.g5 = newProxyInstance;
            }
            this.h5 = (SensorManager) this.i4.getSystemService(SensorManager.class);
            int integer = this.i4.getResources().getInteger(this.i4.getResources().getIdentifier("config_foldSensorDataIndex", "integer", "android"));
            this.k5 = integer;
            if (integer < 0) {
                throw new IllegalStateException("Invalid fold classification index");
            }
            Iterator<Sensor> it = this.h5.getSensorList(-1).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Sensor next = it.next();
                if ("xiaomi.sensor.fold_status".equals(next.getStringType()) && "fold_status FOLD_STATUS Wakeup".equals(next.getName()) && next.isWakeUpSensor()) {
                    this.i5 = next;
                    break;
                }
            }
            if (this.i5 == null) {
                throw new IllegalStateException("Native fold classification sensor missing");
            }
            if (this.Y4 == null) {
                C0050s c0050s = new C0050s();
                ((DisplayManager) this.i4.getSystemService(DisplayManager.class)).registerDisplayListener(c0050s, this.A1);
                this.Y4 = c0050s;
            }
            this.f5 = ((TelephonyManager) this.i4.getSystemService(TelephonyManager.class)).getCallState();
            this.T4 = true;
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda131
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.y();
                }
            });
        } catch (ReflectiveOperationException | RuntimeException e2) {
            a(e2);
        }
    }

    private boolean N0() {
        Iterator<Object> it = this.O1.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            Window window = next instanceof Dialog ? ((Dialog) next).getWindow() : null;
            View peekDecorView = window != null ? window.peekDecorView() : null;
            if (peekDecorView == null || peekDecorView.getParent() == null) {
                it.remove();
            } else if (peekDecorView.getVisibility() == 0) {
                i2++;
            }
        }
        if (i2 != this.P1) {
            this.P1 = i2;
            Log.w("DuoRail", "SystemUI dialogs on screen=" + i2 + " tracked=" + this.O1.size());
        }
        return i2 > 0;
    }

    private void N1() {
        SensorEventListener sensorEventListener = this.j5;
        if (sensorEventListener != null) {
            this.h5.unregisterListener(sensorEventListener);
        }
        this.j5 = null;
        this.l5 = false;
        this.m5 = false;
    }

    private void O0() {
        try {
            ContentResolver contentResolver = this.i4.getContentResolver();
            int i2 = Settings.System.getInt(contentResolver, "screen_paper_mode_enabled", 0) == 0 ? 1 : 0;
            Settings.System.putInt(contentResolver, "screen_paper_mode_enabled", i2);
            Log.w("DuoRail", "Rail eyecare " + i2);
        } catch (Throwable th) {
            a("护眼", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O1() {
        this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda161
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.f0();
            }
        });
    }

    private void P0() {
        try {
            int intValue = ((Integer) WifiManager.class.getMethod("getWifiApState", null).invoke((WifiManager) this.i4.getSystemService(WifiManager.class), null)).intValue();
            if (intValue == 12 || intValue == 10) {
                Log.w("DuoRail", "Rail hotspot busy state=" + intValue);
                return;
            }
            TetheringManager tetheringManager = (TetheringManager) this.i4.getSystemService(TetheringManager.class);
            TetheringManager.TetheringRequest build = new TetheringManager.TetheringRequest.Builder(0).build();
            if (intValue == C0_v) {
                tetheringManager.stopTethering(build, this.i4.getMainExecutor(), new A());
            } else {
                tetheringManager.startTethering(build, this.i4.getMainExecutor(), new B());
            }
            Log.w("DuoRail", "Rail hotspot " + (intValue == C0_v ? "stop" : "start") + " from state=" + intValue);
        } catch (Throwable th) {
            a("热点", th);
        }
    }

    private void P1() {
        if (this.W0 == null) {
            return;
        }
        for (K k2 : this.M5.values()) {
            h0 h0Var = k2.q_v;
            if (h0Var != null) {
                h0Var.d(this.W0);
                k2.q_v.invalidate();
            }
        }
    }

    private void Q0() {
        a("互传", new Intent().setComponent(new ComponentName("com.miui.huanji", "com.miui.huanji.MainActivity")).addFlags(268435456));
    }

    private void Q1() {
        int i2;
        if (this.W0 == null) {
            return;
        }
        int round = Math.round(d(this.N6));
        if (this.H5) {
            i2 = 405;
        } else {
            i2 = (this.a4 == 0 ? Z : 0) + 416;
        }
        this.W0.a(this.G3 && !this.b4, i2 - round);
        int max = this.W0.a() ? Math.max(h0.D, this.W0.r0_v) : h0.D;
        if (this.N6.g == max) {
            return;
        }
        try {
            SurfaceControlViewHost.class.getMethod("relayout", WindowManager.LayoutParams.class).invoke(this.N6.a, new WindowManager.LayoutParams(this.N6.f, max, 2, 40, -3));
            this.N6.g = max;
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                transaction.setCrop(this.N6.b_v, new Rect(0, 0, this.N6.f, max)).apply();
                transaction.close();
            } finally {
            }
        } catch (ReflectiveOperationException e2) {
            throw new IllegalStateException("Status window resize unavailable", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void R(b bVar) {
        bVar.y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R1() {
        this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.g0();
            }
        });
    }

    private void S0() {
        if (this.a7) {
            return;
        }
        this.a7 = true;
        this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda202
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.Y();
            }
        });
    }

    private void S1() {
        float f2 = !this.n3 ? 1.0f : this.m3 ? this.o3 : 0.0f;
        h0 h0Var = this.W0;
        if (h0Var == null || h0Var.W == f2) {
            return;
        }
        h0Var.W = f2;
        h0Var.invalidate();
    }

    private void T0() {
        Object[] m02 = m0();
        if (m02 == null) {
            Log.w("DuoRail", "Last app: none");
        } else {
            a(((Integer) m02[0]).intValue(), (String) m02[1]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T1() {
        this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.h0();
            }
        });
    }

    private void U0() {
        try {
            LocationManager locationManager = (LocationManager) this.i4.getSystemService(LocationManager.class);
            boolean isLocationEnabled = locationManager.isLocationEnabled();
            LocationManager.class.getMethod("setLocationEnabledForUser", Boolean.TYPE, UserHandle.class).invoke(locationManager, Boolean.valueOf(!isLocationEnabled), Process.myUserHandle());
            Log.w("DuoRail", "Rail location " + (!isLocationEnabled));
        } catch (Throwable th) {
            a("定位", th);
        }
    }

    private void U1() {
        boolean z2 = !this.n3;
        h0 h0Var = this.W0;
        if (h0Var == null || h0Var.U == z2) {
            return;
        }
        h0Var.U = z2;
        h0Var.invalidate();
    }

    static /* synthetic */ int V(b bVar) {
        int i2 = bVar.B2 + 1;
        bVar.B2 = i2;
        return i2;
    }

    private void V0() {
        try {
            PowerManager powerManager = (PowerManager) this.i4.getSystemService("power");
            boolean isPowerSaveMode = powerManager.isPowerSaveMode();
            PowerManager.class.getMethod("setPowerSaveModeEnabled", Boolean.TYPE).invoke(powerManager, Boolean.valueOf(!isPowerSaveMode));
            Log.w("DuoRail", "Rail power save " + (!isPowerSaveMode));
        } catch (Throwable th) {
            a("省电模式", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V1() {
        this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda118
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.i0();
            }
        });
    }

    private void W0() {
        try {
            Log.w("DuoRail", "Rail ringer " + Class.forName("miui.util.AudioManagerHelper").getMethod("toggleSilent", Context.class, Integer.TYPE).invoke(null, this.i4, 4));
        } catch (Throwable th) {
            Log.w("DuoRail", "Rail ringer helper failed", th);
            try {
                AudioManager audioManager = (AudioManager) this.i4.getSystemService("audio");
                boolean z2 = audioManager.getRingerMode() == 0;
                audioManager.setRingerMode(z2 ? 2 : 0);
                Log.w("DuoRail", "Rail ringer fallback " + (!z2));
            } catch (Throwable th2) {
                a("铃音模式", th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W1() {
        this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda104
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.j0();
            }
        });
    }

    private void X0() {
        try {
            Class<?> cls = Class.forName("com.android.internal.view.RotationPolicy");
            boolean booleanValue = ((Boolean) cls.getMethod("isRotationLocked", Context.class).invoke(null, this.i4)).booleanValue();
            cls.getMethod("setRotationLock", Context.class, Boolean.TYPE, String.class).invoke(null, this.i4, Boolean.valueOf(!booleanValue), "RailCustom");
            Log.w("DuoRail", "Rail rotation lock " + (!booleanValue));
        } catch (Throwable th) {
            a("旋转锁定", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X1() {
        final int i2 = this.X4 + 1;
        this.X4 = i2;
        this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda178
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.t(i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Y0() {
        Context context = this.i4;
        if (context == null) {
            return true;
        }
        if (this.j4 == null) {
            this.j4 = (PowerManager) context.getSystemService(PowerManager.class);
        }
        PowerManager powerManager = this.j4;
        return powerManager == null || powerManager.isInteractive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1() {
        this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda66
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.k0();
            }
        });
    }

    private void Z0() {
        try {
            Context context = this.i4;
            Intent intent = new Intent("miui.intent.screenrecorder.RECORDER_SERVICE").setPackage("com.miui.screenrecorder");
            if (context.bindService(intent, new ServiceConnectionC0057z(context, intent), 1)) {
            } else {
                throw new IllegalStateException("RecorderService bind failed");
            }
        } catch (Throwable th) {
            a("录屏", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z1() {
        this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda134
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.l0();
            }
        });
    }

    private void a1() {
        try {
            this.i4.sendBroadcastAsUser(new Intent("android.intent.action.CAPTURE_SCREENSHOT"), Process.myUserHandle());
            Log.w("DuoRail", "Rail screenshot");
        } catch (Throwable th) {
            a("截屏", th);
        }
    }

    private void a2() {
        ContentResolver contentResolver = this.i4.getContentResolver();
        int i2 = Settings.System.getInt(contentResolver, "screen_off_timeout", 30000);
        int a2 = a((Integer) null);
        if (a2 <= 0 || i2 != D0_v) {
            a(Integer.valueOf(i2));
            if (!Settings.System.putInt(contentResolver, "screen_off_timeout", D0_v)) {
                throw new IllegalStateException("screen-off timeout write rejected");
            }
            Log.w("DuoRail", "Rail keep screen 1800000 saved=" + i2 + (a2 > 0 ? " (replaced backup " + a2 + ")" : ""));
            return;
        }
        if (!Settings.System.putInt(contentResolver, "screen_off_timeout", a2)) {
            throw new IllegalStateException("screen-off timeout restore rejected");
        }
        a((Integer) 0);
        Log.w("DuoRail", "Rail keep screen restored " + a2);
    }

    private static int b(int i2) {
        return (i2 * g0) + 401;
    }

    private void b1() {
        try {
            PowerManager.class.getMethod("goToSleep", Long.TYPE).invoke((PowerManager) this.i4.getSystemService("power"), Long.valueOf(SystemClock.uptimeMillis()));
            Log.w("DuoRail", "Rail sleep");
        } catch (Throwable th) {
            a("锁屏", th);
        }
    }

    private void b2() {
        if (s() && R0() && this.C2_v == this.G1 && !this.D2.isEmpty()) {
            if (!this.I2.isEmpty()) {
                x();
                return;
            }
            final String str = this.D2;
            final Bundle bundle = new Bundle();
            bundle.putBoolean("start", true);
            this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda71
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(str, bundle);
                }
            });
        }
    }

    private static int c(int i2) {
        return (i2 * 120) + 60 + ((i2 - 1) * 30);
    }

    private synchronized void c1() {
        try {
            CameraManager cameraManager = (CameraManager) this.i4.getSystemService("camera");
            o1();
            if (z0 == null) {
                Log.w("DuoRail", "Rail torch: no flash camera");
                return;
            }
            boolean equals = Boolean.TRUE.equals(this.Y6.get(z0));
            cameraManager.setTorchMode(z0, !equals);
            Log.w("DuoRail", "Rail torch " + (!equals));
        } catch (Throwable th) {
            a("手电筒", th);
        }
    }

    private void c2() {
        if (!this.D2.isEmpty()) {
            d(0L);
        }
        if (this.I2.isEmpty()) {
            return;
        }
        this.N2 = SystemClock.uptimeMillis();
        v();
        j2();
    }

    private void d1() {
        try {
            Intent intent = new Intent("com.xiaomi.aiasst.vision.control.translation.AiTranslateService");
            intent.setPackage("com.xiaomi.aiasst.vision");
            intent.putExtra("from", "systemui.plugin");
            Context.class.getMethod("startServiceAsUser", Intent.class, UserHandle.class).invoke(this.i4, intent, Process.myUserHandle());
            Log.w("DuoRail", "Rail translate service");
        } catch (Throwable th) {
            Log.w("DuoRail", "Rail translate service failed", th);
            try {
                a(new Intent().setComponent(new ComponentName("com.xiaomi.aiasst.vision", "com.xiaomi.aiasst.vision.intent.IntentAiTranslateServiceActivity")).addFlags(268435456));
                Log.w("DuoRail", "Rail translate activity fallback");
            } catch (Throwable th2) {
                a("翻译", th2);
            }
        }
    }

    private boolean d2() {
        return this.h1 != null && this.r1 && this.s1 && this.u1 && !this.L1 && !this.M1 && !this.N1 && v0() && R0() && a(p0()) == 1;
    }

    private static int e(int i2) {
        return (i2 * j0_v) + 42 + ((i2 - 1) * 42);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e1() {
        this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.Z();
            }
        });
    }

    private boolean e2() {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (uptimeMillis - this.r4 >= 500) {
            this.s4 = R0();
            this.r4 = uptimeMillis;
        }
        return this.s4;
    }

    private void f1() {
        if (this.K1 || this.I1 || this.F1.isEmpty() || this.i4 == null || this.d2 == this.H1) {
            return;
        }
        if ((this.e2 != this.H1 || SystemClock.uptimeMillis() >= this.f2) && Y0()) {
            this.K1 = true;
            final String str = this.F1;
            final long j2 = this.H1;
            this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda163
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(str, j2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f2() {
        if (!this.s1) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.i4 != null && elapsedRealtime - this.t1 >= 5000) {
                this.t1 = elapsedRealtime;
                R1();
            }
        }
        boolean F2 = F();
        boolean z2 = !F2 && d2();
        boolean z3 = F2 || z2;
        if (this.e1 && (!z3 || this.x1 != z2)) {
            this.e1 = false;
            this.b1.unregisterListener(this.d1);
            this.f1 = -1;
            this.g1 = Float.NaN;
            this.Z0.a();
        }
        if (z3) {
            if (this.e1) {
                if (z2 || this.f1 == this.G1) {
                    return;
                }
                this.Z0.a();
                this.Z0.a(this.g1, SystemClock.uptimeMillis());
                this.f1 = this.G1;
                return;
            }
            if (this.b1 == null) {
                SensorManager sensorManager = (SensorManager) this.i4.getSystemService(SensorManager.class);
                this.b1 = sensorManager;
                this.c1 = sensorManager.getDefaultSensor(36, false);
                this.d1 = new C0038g();
                if (this.c1 == null) {
                    Log.e("DuoFoldSplit", "Non-wakeup hinge sensor unavailable");
                }
            }
            if (this.c1 == null) {
                return;
            }
            this.Z0.a();
            try {
                if (!this.b1.registerListener(this.d1, this.c1, 1, this.A1)) {
                    this.c1 = null;
                    Log.e("DuoFoldSplit", "Hinge sensor registration rejected");
                } else {
                    this.f1 = z2 ? -2 : this.G1;
                    this.x1 = z2;
                    this.e1 = true;
                }
            } catch (RuntimeException e2) {
                this.c1 = null;
                Log.e("DuoFoldSplit", "Hinge sensor registration failed", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g0() {
    }

    private void g1() {
        if (q0() && s0() && this.C1_v) {
            boolean f2 = f();
            if (this.I5.isEmpty() && !this.K1 && f2 != this.H5) {
                b(f2, G());
            }
            if (f2 && !u() && this.K5 != this.H1 && !this.K1) {
                this.K5 = this.H1;
                a(this.C5, G());
            }
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                if (a(transaction)) {
                    transaction.apply();
                }
                transaction.close();
            } catch (Throwable th) {
                try {
                    transaction.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    private void g2() {
        b(p0());
        if (q0()) {
            boolean z2 = this.E6;
            this.F6 = z2 && this.H5;
            this.G6 = z2 && !this.I1;
        }
    }

    private void h1() {
        if (t() && q0() && this.C1_v && this.I1 && !this.c6 && this.I5.isEmpty() && R0()) {
            synchronized (this.L5) {
                if (this.L5.size() >= 3) {
                    return;
                }
                try {
                    K i2 = i();
                    synchronized (this.L5) {
                        this.L5.add(i2);
                    }
                } catch (Throwable th) {
                    Log.w("DuoRail", "App rail decor refill failed", th);
                }
            }
        }
    }

    /* JADX WARN: Can't_v wrap try/catch for region: R(12:(1:194)(1:99)|100|(1:193)(1:107)|108|(1:192)|110|(1:112)(2:(1:190)|191)|(9:(4:(2:120|(13:138|139|140|141|142|143|144|145|146|147|149|150|(2:152|(4:154|155|156|157)(1:159))(1:160))(2:136|137))|149|150|(0)(0))|140|141|142|143|144|145|146|147)|185|(1:122)|138|139) */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x03d3, code lost:
    
        android.util.Log.e(r2, "Layout failed", r0_v);
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x03d8, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x03c6, code lost:
    
        r0_v = th;
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
    */
    private void h2() {
        int r2;
        float f2;
        float f3;
        char c2;
        float height;
        int i2;
        float f4;
        boolean z2;
        SurfaceControl.Transaction transaction;
        SurfaceControl.Transaction transaction2;
        Throwable th;
        SurfaceControl surfaceControl;
        try {
            FrameLayout frameLayout = this.h3;
            if (frameLayout != null && frameLayout.isAttachedToWindow() && this.i4 != null) {
                if (!v0()) {
                    z1();
                    return;
                }
                ImageView imageView = this.i3;
                if (imageView == null || a(this.h3, imageView)) {
                    if (this.s3 == null) {
                        this.s3 = a(this.i3);
                    }
                    if (this.t3 == null) {
                        this.t3 = a(this.j3);
                    }
                    if (this.s3 != null && this.t3 != null) {
                        if (this.h4.isEmpty()) {
                            l();
                        }
                        ViewGroup.LayoutParams layoutParams = this.h3.getLayoutParams();
                        int i3 = layoutParams.height;
                        if (i3 != -1) {
                            if (this.y3 == Integer.MIN_VALUE) {
                                this.y3 = i3;
                            }
                            layoutParams.height = -1;
                            this.h3.setLayoutParams(layoutParams);
                            return;
                        }
                        ViewGroup viewGroup = (ViewGroup) this.i3.getParent().getParent();
                        Point point = new Point();
                        ((DisplayManager) this.i4.getSystemService(DisplayManager.class)).getDisplay(0).getRealSize(point);
                        if (viewGroup.getHeight() == point.y && this.h3.getTop() == 0) {
                            float c3 = c(this.z5);
                            float f5 = (r3.f / 2.0f) + c3;
                            float d2 = ((this.a4 != 0 || this.b4) ? d(this.z5) : r3.h) + (this.z5.g / 2.0f);
                            int max = Math.max(132, Math.round(this.i4.getResources().getDisplayMetrics().density * 48.0f));
                            float max2 = Math.max(max + 18.0f, Math.max(this.s3.height(), this.t3.height()) * 2.0f);
                            if (this.m3) {
                                f2 = d2;
                            } else {
                                int[] iArr = new int[2];
                                viewGroup.getLocationOnScreen(iArr);
                                a(this.i3, this.s3, f5, d2, iArr, max);
                                f2 = d2;
                                a(this.j3, this.t3, f5, f2 - max2, iArr, max);
                            }
                            if (this.w3 < 0) {
                                R r3 = this.N6;
                                f3 = 2.0f;
                                Bitmap createBitmap = Bitmap.createBitmap(r3.f, r3.g, Bitmap.Config.ARGB_8888);
                                h0 h0Var = this.W0;
                                int i4 = h0Var.g0;
                                c2 = 2;
                                float f6 = h0Var.W;
                                h0Var.g0 = -1;
                                h0Var.W = 1.0f;
                                h0Var.onDraw(new Canvas(createBitmap));
                                h0 h0Var2 = this.W0;
                                h0Var2.g0 = i4;
                                h0Var2.W = f6;
                                Rect a2 = a(createBitmap, true);
                                createBitmap.recycle();
                                if (a2 == null) {
                                    return;
                                } else {
                                    this.w3 = a2.top;
                                }
                            } else {
                                f3 = 2.0f;
                                c2 = 2;
                            }
                            int[] iArr2 = this.I3;
                            if (this.b4) {
                                height = d(this.N6) - iArr2[3];
                                i2 = iArr2[6];
                            } else if (this.a4 != 0) {
                                height = d(this.N6) - iArr2[c2];
                                i2 = iArr2[5];
                            } else {
                                height = (point.y - ((this.s3.height() / f3) + f2)) - this.w3;
                                i2 = iArr2[4];
                            }
                            this.p3 = height + i2;
                            r2 = ((this.k3 || this.m3) && !this.l3 && (this.m3 || this.h3.isShown()) && !this.N1) ? 1 : 0;
                            SurfaceControl surfaceControl2 = (this.C1_v && (surfaceControl = this.B1) != null && surfaceControl.isValid()) ? this.B1 : this.D1;
                            if (r2 != 0) {
                                h0 h0Var3 = this.W0;
                                if (h0Var3.g0 != -1) {
                                    h0Var3.g0 = -1;
                                    h0Var3.invalidate();
                                }
                                if (L == null) {
                                    Method declaredMethod = View.class.getDeclaredMethod("getViewRootImpl", null);
                                    L = declaredMethod;
                                    declaredMethod.setAccessible(true);
                                }
                                Object invoke = L.invoke(this.h3, null);
                                if (M == null) {
                                    Method declaredMethod2 = invoke.getClass().getDeclaredMethod("getSurfaceControl", null);
                                    M = declaredMethod2;
                                    declaredMethod2.setAccessible(true);
                                }
                                surfaceControl2 = (SurfaceControl) M.invoke(invoke, null);
                                this.q3 = surfaceControl2;
                            }
                            if (surfaceControl2 != null && surfaceControl2.isValid()) {
                                boolean z3 = r2 == 0 && u();
                                Q1();
                                this.W0.a(r2 == 0 && this.C1_v && !z3 && e2());
                                float d3 = this.p3 + ((d(this.N6) - this.p3) * this.o3);
                                float c4 = c(this.N6);
                                if (r2 == 0) {
                                    d3 = d(this.N6);
                                }
                                if (r2 != 0) {
                                    f4 = 1.0f;
                                } else {
                                    if (!z3 && !this.t6) {
                                        f4 = w0();
                                    }
                                    f4 = 0.0f;
                                }
                                try {
                                    try {
                                        try {
                                            try {
                                                if (r2 == 0 && (!this.C1_v || z3 || this.t6)) {
                                                    z2 = false;
                                                    if (r2 != 0 && !this.n3 && this.l4 && surfaceControl2 == this.n4 && c4 == this.o4 && d3 == this.p4 && f4 == this.q4 && z2 == this.m4) {
                                                        U1();
                                                        S1();
                                                        return;
                                                    }
                                                    transaction = new SurfaceControl.Transaction();
                                                    transaction2 = transaction;
                                                    SurfaceControl.Transaction position = transaction.reparent(this.N6.b_v, surfaceControl2).setLayer(this.N6.b_v, 1000000).setPosition(this.N6.b_v, c4, d3);
                                                    SurfaceControl surfaceControl3 = this.N6.b_v;
                                                    R r4 = this.N6;
                                                    position.setCrop(surfaceControl3, new Rect(0, 0, r4.f, r4.g)).setAlpha(this.N6.b_v, f4).setVisibility(this.N6.b_v, z2).apply();
                                                    transaction2.close();
                                                    this.l4 = (r2 ^ 1) != 0;
                                                    this.n4 = surfaceControl2;
                                                    this.o4 = c4;
                                                    this.p4 = d3;
                                                    this.q4 = f4;
                                                    this.m4 = z2;
                                                    this.n3 = r2 != 0;
                                                    U1();
                                                    S1();
                                                    if (r2 == 0) {
                                                        int i5 = this.u3;
                                                        this.u3 = i5 + 1;
                                                        if (i5 < 3) {
                                                            Log.i("DuoKeyguard", "Geometry screen=" + point.x + "x" + point.y + " camera=" + f5 + "," + f2 + " glyph=" + this.s3 + " torchGap=" + max2 + " touch=" + max + " statusVisibleTop=" + (this.p3 + this.w3) + " bottomGap=" + ((point.y - f2) - (this.s3.height() / f3)));
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    return;
                                                }
                                                transaction2.close();
                                                this.l4 = (r2 ^ 1) != 0;
                                                this.n4 = surfaceControl2;
                                                this.o4 = c4;
                                                this.p4 = d3;
                                                this.q4 = f4;
                                                this.m4 = z2;
                                                this.n3 = r2 != 0;
                                                U1();
                                                S1();
                                                if (r2 == 0) {
                                                }
                                            } catch (Throwable th2) {
                                                throw th2;
                                                // r2 = "DuoKeyguard";  // dead code after throw
                                                int i6 = this.v3;
                                                this.v3 = i6 + 1;
                                                if (i6 >= 3) {
                                                }
                                            }
                                            R r42 = this.N6;
                                            position.setCrop(surfaceControl3, new Rect(0, 0, r42.f, r42.g)).setAlpha(this.N6.b_v, f4).setVisibility(this.N6.b_v, z2).apply();
                                        } catch (Throwable th3) {
                                            throw th3;
                                            // r2 = "DuoKeyguard";  // dead code after throw

                                            try {
                                                transaction2.close();
                                                throw th;
                                            } catch (Throwable th4) {
                                                th.addSuppressed(th4);
                                                throw th;
                                            }
                                        }
                                        SurfaceControl.Transaction position2 = transaction.reparent(this.N6.b_v, surfaceControl2).setLayer(this.N6.b_v, 1000000).setPosition(this.N6.b_v, c4, d3);
                                        SurfaceControl surfaceControl32 = this.N6.b_v;
                                    } catch (Throwable th5) {
                                        throw th5;
                                        // r2 = "DuoKeyguard";  // dead code after throw

                                        transaction2.close();
                                        throw th;
                                    }
                                    transaction2 = transaction;
                                } catch (Throwable th6) {
                                    throw th6;
                                    transaction2 = transaction;
                                }
                                z2 = true;
                                if (r2 != 0) {
                                }
                                transaction = new SurfaceControl.Transaction();
                            }
                        }
                    }
                }
            }
        } catch (Throwable th7) {
            throw th7;
            // r2 = "DuoKeyguard";  // dead code after throw
        }
    }

    private void i1() {
        ArrayList arrayList = new ArrayList(this.M5.values());
        synchronized (this.L5) {
            arrayList.addAll(this.L5);
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            K k2 = (K) obj;
            S s2 = k2.g;
            if (s2 != null) {
                s2.setVisibility(this.Z3 ? 0 : 8);
                k2.g.b_v = !this.I2.isEmpty();
                k2.g.invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i2() {
        StatusBarNotification[] activeNotifications;
        Drawable drawable;
        if (this.W0 == null) {
            return;
        }
        if (!this.G3) {
            if (!this.F3.isEmpty() || this.W0.V) {
                this.F3 = Collections.EMPTY_LIST;
                h0 h0Var = this.W0;
                h0Var.a0 = new Drawable[0];
                h0Var.V = false;
                m1();
                return;
            }
            return;
        }
        NotificationListenerService notificationListenerService = this.D3;
        if (notificationListenerService == null || (activeNotifications = notificationListenerService.getActiveNotifications(null)) == null) {
            return;
        }
        Arrays.sort(activeNotifications, new Comparator() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda124
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int a2;
                a2 = dev.duo.workspaceprobe.b.a((StatusBarNotification) obj, (StatusBarNotification) obj2);
                return a2;
            }
        });
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (StatusBarNotification statusBarNotification : activeNotifications) {
            if (statusBarNotification.isClearable()) {
                linkedHashSet.add(statusBarNotification.getPackageName());
            }
        }
        List<String> subList = new ArrayList(linkedHashSet).subList(0, Math.min(3, linkedHashSet.size()));
        boolean z2 = linkedHashSet.size() > 3;
        if (subList.equals(this.F3) && z2 == this.W0.V) {
            return;
        }
        List<String> list = this.F3;
        PackageManager packageManager = this.i4.getPackageManager();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (String str : subList) {
            int indexOf = list.indexOf(str);
            if (indexOf >= 0) {
                try {
                    drawable = this.W0.a0[indexOf];
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.w("DuoRail", "Notification icon missing pkg=" + str);
                }
            } else {
                drawable = packageManager.getApplicationIcon(str);
            }
            arrayList2.add(drawable);
            arrayList.add(str);
        }
        this.F3 = arrayList;
        this.W0.a0 = (Drawable[]) arrayList2.toArray(new Drawable[0]);
        this.W0.V = z2;
        m1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j1, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void P() {
        int i2;
        String str;
        SurfaceControl h2;
        SurfaceControl surfaceControl;
        try {
            if (this.i4 == null) {
                this.i4 = (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
            }
            if (this.i4 == null) {
                return;
            }
            this.x4.m();
            f2();
            o2();
            if (this.T1 && this.S1 != null && Y0() && v0()) {
                this.T1 = false;
                Log.w("DuoRail", "Rail poll resumed");
                this.A1.removeCallbacks(this.S1);
                this.A1.post(this.S1);
            }
            K1();
            if (this.A4 == null && SystemClock.uptimeMillis() >= this.B4_v) {
                L1();
            }
            Display display = ((DisplayManager) this.i4.getSystemService(DisplayManager.class)).getDisplay(0);
            Point point = new Point();
            if (display != null) {
                display.getRealSize(point);
            }
            b(display);
            int i3 = point.x;
            if (i3 != this.v2 || point.y != this.w2) {
                this.v2 = i3;
                this.w2 = point.y;
                Log.w("DuoRail", "Screen ratio scene real=" + point.x + "x" + point.y);
                if (this.C1_v && q0() && s0()) {
                    SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
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
            o((i4 == O && point.y == P) || (i4 == P && point.y == O));
            int i5 = point.x;
            boolean z3 = i5 == P && point.y == O;
            int i6 = this.t4;
            boolean z4 = i6 >= 0 && i5 == O && point.y == P && !this.L1;
            boolean z5 = ((i5 == O && point.y == P) || z3) && (this.I1 || z4 || this.k3);
            if (!z5 || z3) {
                i2 = 0;
            } else {
                if (!z4) {
                    i6 = 0;
                }
                i2 = 1175 - i6;
            }
            if (i2 != this.a4 || z3 != this.b4) {
                a(this.B1, false);
                this.a4 = i2;
                this.b4 = z3;
            }
            U1();
            S1();
            boolean z6 = !this.I1 && f();
            if (z6 != this.t2) {
                this.t2 = z6;
                Log.w("DuoRail", "App sidebar=" + z6 + " task=" + this.G1 + " pkg=" + this.F1 + " strip=" + D(this.G1));
            }
            if (!this.I1 && this.P6 != 0.0f) {
                this.P6 = 0.0f;
            }
            SurfaceControl surfaceControl2 = this.D1;
            if (surfaceControl2 == null) {
                str = "displayArea=null";
            } else if (!surfaceControl2.isValid()) {
                str = "displayArea=invalid";
            } else if (!this.I1 && !z4 && !z6) {
                str = "scene(no home/app sidebar)";
            } else if (!v0()) {
                str = "master";
            } else if ((point.x != 1168 || point.y != 1712) && !z5) {
                str = "size";
            } else if (!R0()) {
                str = "locked";
            } else if (this.M1) {
                str = "sceneBlocked";
            } else if (N0()) {
                str = "dialog";
            } else if (this.N1) {
                str = "shuttingDown";
            } else {
                if ((!this.I1 && !z4) || (this.O6 < 0.999f && this.L6 < 0.999f && this.P6 < 0.999f)) {
                    str = !this.I6.isEmpty() ? "fullscreenPages=" + this.I6.size() : null;
                }
                str = "progress minus=" + this.O6 + " recents=" + this.L6 + " search=" + this.P6;
            }
            boolean z7 = str == null;
            String str2 = z7 ? "" : str;
            if (!str2.equals(this.u2)) {
                this.u2 = str2;
                if (!z7) {
                    Log.w("DuoRail", "Rail off reason=" + str + " home=" + this.I1 + " split=" + z4 + " pkg=" + this.F1 + " task=" + this.G1 + " size=" + point.x + "x" + point.y);
                }
            }
            l2();
            if (z7 != this.C1_v) {
                Log.w("DuoRail", "Visible=" + z7 + " foreground=" + this.F1 + " dx=" + this.a4);
            }
            SurfaceControl surfaceControl3 = this.D1;
            if ((this.I1 || z4) && (h2 = h(0)) != null) {
                surfaceControl3 = h2;
            }
            if (this.C1_v && (surfaceControl = this.B1) != null && !surfaceControl.isValid()) {
                Log.w("DuoRail", "Rail parent surface is no longer valid, mounting again " + this.B1);
                this.C1_v = false;
                this.B1 = null;
            }
            a(surfaceControl3, z7);
            if (this.W0 != null) {
                Q1();
                h0 h0Var = this.W0;
                if (!z7 || this.n3 || u()) {
                    z2 = false;
                }
                h0Var.a(z2);
            }
            if (z7) {
                k2();
                g2();
                g1();
            }
            h2();
            h1();
            j2();
        } catch (Throwable th) {
            a(this.B1, false);
            Log.w("DuoRail", "Rail scene check failed", th);
        }
    }

    private void j2() {
        boolean B02 = B0();
        if (!this.I2.isEmpty() && !this.g3 && (this.I1 || this.G1 != this.C2_v || !this.I2.equals(this.D2))) {
            this.g3 = true;
            x();
        }
        if (B02) {
            if (this.Y2 == null) {
                k();
            }
            R r2 = this.Y2;
            if (r2 == null) {
                return;
            }
            if (this.Z2 == null) {
                a(r2, this.W2, this.X2, 2001);
            }
            this.T2 = true;
            D0();
            if (this.A1.hasCallbacks(this.f3)) {
                return;
            }
            this.A1.postDelayed(this.f3, 600L);
            return;
        }
        this.A1.removeCallbacks(this.f3);
        if (this.T2) {
            v();
            E(this.B2);
        }
        this.T2 = false;
        R r3 = this.Y2;
        if (r3 != null) {
            boolean isEmpty = this.I2.isEmpty();
            if (isEmpty) {
                this.Y2 = null;
            }
            try {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    transaction.setVisibility(r3.b_v, false).apply();
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k0() {
        try {
            Bundle call = this.i4.getContentResolver().call(Uri.parse("content://com.lsposed.miduo.config"), "statusStyles", (String) null, (Bundle) null);
            if (call != null && call.containsKey("cellular") && call.containsKey("thin") && call.containsKey("percentTop")) {
                boolean z2= call.getBoolean("cellular");
                final boolean z3 = call.getBoolean("thin");
                final boolean z4 = call.getBoolean("percentTop");
                final int[] intArray = call.getIntArray("dy");
                this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda127
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.a(intArray, z2, z3, z4);
                    }
                });
                return;
            }
            Log.w("DuoRail", "Status style read failed: " + (call == null ? "no response" : call.getString("error", "no style values")));
        } catch (RuntimeException e2) {
            Log.w("DuoRail", "Status style read failed", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k1() {
        if (this.S6.isEmpty() || this.V6) {
            return;
        }
        this.V6 = true;
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda123
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a0();
            }
        });
    }

    private void k2() {
        int i2 = h() ? b_v : 0;
        if (i2 == 0 && !this.I1) {
            i2 = u(this.G1);
        }
        int i3 = (i2 == 0 || Color.luminance(i2) <= 0.45f) ? -1 : -13618632;
        if (h()) {
            i3 = -1;
        }
        boolean z2 = q0() && this.c6;
        h0 h0Var = this.W0;
        if (h0Var != null && !z2 && h0Var.g0 != i3) {
            h0Var.g0 = i3;
            h0Var.invalidate();
        }
        if (this.W0 == null || this.D6_v == i3) {
            return;
        }
        this.D6_v = i3;
        boolean z3 = i3 != -1;
        this.z1.a.setColor(z3 ? -14737372 : i3);
        N n2 = this.y5;
        if (n2 != null) {
            n2.a(z3 ? 2 : 0);
        }
        if (this.z5 != null) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                a(transaction, "setShadowRadius", this.z5.b_v, Float.valueOf(z3 ? 0.0f : 8.0f));
                transaction.apply();
                transaction.close();
            } catch (Throwable th) {
                try {
                    transaction.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        this.z1.invalidate();
        for (Q q2 : this.D5) {
            if (q2 != null) {
                q2.b_v = i3;
                q2.invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l0() {
        try {
            Bundle call = this.i4.getContentResolver().call(Uri.parse("content://com.lsposed.miduo.config"), "workbench", (String) null, (Bundle) null);
            String str = "on";
            if (call != null && call.containsKey("on")) {
                boolean z2= call.getBoolean("on");
                this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda180
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.i(z2);
                    }
                });
                return;
            }
            StringBuilder append = new StringBuilder().append("Switch read failed, keeping ");
            if (this.J3 == null) {
                str = "not ready";
            } else if (!this.J3.booleanValue()) {
                str = "off";
            }
            Log.w("DuoWorkbench", append.append(str).append(": ").append(call == null ? "no response" : call.getString("error", "no on value")).toString());
        } catch (RuntimeException e2) {
            Log.w("DuoWorkbench", "Switch read failed", e2);
        }
    }

    private void l1() {
        U u2 = this.z1;
        if (u2 != null) {
            u2.setVisibility(this.H3 ? 0 : 8);
        }
        ArrayList arrayList = new ArrayList(this.M5.values());
        synchronized (this.L5) {
            arrayList.addAll(this.L5);
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            U u3 = ((K) obj).r_v;
            if (u3 != null) {
                u3.setVisibility(this.H3 ? 0 : 8);
            }
        }
        if (!this.C1_v || this.z5 == null) {
            return;
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            if (a(transaction)) {
                transaction.apply();
            }
            transaction.close();
        } catch (Throwable th) {
            try {
                transaction.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00a9 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void l2() {
        int i2;
        int elapsedRealtime = (int) ((SystemClock.elapsedRealtime() / 1800000) % 4);
        if (q0() && R0()) {
            i2 = 1;
            if (elapsedRealtime != 1) {
                if (elapsedRealtime == 3) {
                    i2 = -1;
                }
            }
            if (i2 != u0_v) {
                return;
            }
            u0_v = i2;
            h0 h0Var = this.W0;
            if (h0Var != null) {
                h0Var.invalidate();
            }
            U u2 = this.z1;
            if (u2 != null) {
                u2.invalidate();
            }
            for (Q q2 : this.D5) {
                if (q2 != null) {
                    q2.invalidate();
                }
            }
            for (ImageView imageView : this.C5) {
                if (imageView != null) {
                    imageView.invalidate();
                }
            }
            ArrayList arrayList = new ArrayList(this.M5.values());
            synchronized (this.L5) {
                arrayList.addAll(this.L5);
            }
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                K k2 = (K) obj;
                k2.q_v.invalidate();
                k2.r_v.invalidate();
                ArrayList<J> arrayList2 = k2.e;
                int size2 = arrayList2.size();
                int i4 = 0;
                while (i4 < size2) {
                    J j2 = arrayList2.get(i4);
                    i4++;
                    j2.invalidate();
                }
                for (ImageView imageView2 : k2.h) {
                    imageView2.invalidate();
                }
            }
            return;
        }
        i2 = 0;
        if (i2 != u0_v) {
        }
    }

    private Object[] m0() {
        Set<String> G2 = G();
        PackageManager packageManager = this.i4.getPackageManager();
        try {
            for (ActivityManager.RecentTaskInfo recentTaskInfo : ((ActivityManager) this.i4.getSystemService(ActivityManager.class)).getRecentTasks(24, 2)) {
                if (recentTaskInfo.taskId != this.G1) {
                    Intent intent = recentTaskInfo.baseIntent;
                    ComponentName component = (intent == null || intent.getComponent() == null) ? recentTaskInfo.baseActivity : recentTaskInfo.baseIntent.getComponent();
                    if (component != null) {
                        String packageName = component.getPackageName();
                        if (!G2.contains(packageName) && !"com.miui.home".equals(packageName) && !"com.android.systemui".equals(packageName) && !packageName.startsWith("dev.duo.") && packageManager.getLaunchIntentForPackage(packageName) != null) {
                            Object obj = recentTaskInfo.getClass().getField("configuration").get(recentTaskInfo);
                            Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
                            int intValue = ((Integer) obj2.getClass().getMethod("getWindowingMode", null).invoke(obj2, null)).intValue();
                            if (intValue == 1 || intValue == 0) {
                                return new Object[]{Integer.valueOf(recentTaskInfo.taskId), packageName};
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.w("DuoRail", "Last app unavailable", th);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m1() {
        if (!Y0()) {
            this.W5 = true;
            return;
        }
        this.W5 = false;
        this.W0.invalidate();
        P1();
    }

    private void m2() {
        float F1 = F1();
        this.G5 = F1;
        this.F5 = 1.0f - F1;
        if (this.W0 == null || !q0()) {
            return;
        }
        int intValue = h() ? -1 : ((Integer) v0.evaluate(this.G5, -1, -13618632)).intValue();
        h0 h0Var = this.W0;
        if (h0Var.g0 != intValue) {
            h0Var.g0 = intValue;
            h0Var.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void n(b bVar) {
        bVar.p();
    }

    private void n0() {
        a(new Intent("android.intent.action.ASSIST").setPackage("com.miui.voiceassist").addFlags(268435456));
    }

    private void n1() {
        if (this.a6 || this.i4 == null) {
            return;
        }
        this.a6 = true;
        this.n6 = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda87
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread c2;
                c2 = dev.duo.workspaceprobe.b.c(runnable);
                return c2;
            }
        });
        Thread thread = new Thread(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda88
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.b0();
            }
        }, "DuoNativeSidebar");
        thread.setDaemon(true);
        thread.start();
    }

    private void n2() {
        boolean isKeyguardLocked = ((KeyguardManager) this.i4.getSystemService(KeyguardManager.class)).isKeyguardLocked();
        if (!isKeyguardLocked || this.e5 == 3) {
            this.n5 = false;
        }
        int i2 = this.e5;
        boolean z2 = true;
        if (i2 != 0 && i2 != 1 && i2 != 2 && (i2 != 4 || this.p5 == null)) {
            z2 = false;
        }
        if (this.U4 && ((!isKeyguardLocked || !z2) && SystemClock.uptimeMillis() >= this.V4)) {
            this.U4 = false;
            this.V4 = 0L;
            Log.w("DuoStandby", "Standby failure latch cleared after leaving the candidate state");
            M1();
        }
        if (!this.R4 || !isKeyguardLocked || this.U4 || this.N1 || !z2) {
            N1();
            return;
        }
        try {
            if (this.j5 == null) {
                C0051t c0051t = new C0051t();
                this.j5 = c0051t;
                if (this.h5.registerListener(c0051t, this.i5, 3, this.A1)) {
                } else {
                    throw new IllegalStateException("Native fold listener registration rejected");
                }
            }
        } catch (RuntimeException e2) {
            a((Exception) e2);
        }
    }

    private void o0() {
        int i2;
        if (q0() && s0() && this.c4 != this.b4) {
            R[] rArr = {this.u5, this.v5};
            for (int i3 = 0; i3 < 2; i3++) {
                R r2 = rArr[i3];
                FrameLayout frameLayout = (FrameLayout) r2.d;
                int i4 = 0;
                while (true) {
                    i2 = 170;
                    if (i4 >= frameLayout.getChildCount()) {
                        break;
                    }
                    View childAt = frameLayout.getChildAt(i4);
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                    int i5 = ((this.c4 ? layoutParams.leftMargin : layoutParams.topMargin) - 21) / 170;
                    boolean z2 = this.b4;
                    layoutParams.gravity = z2 ? w_v : 1;
                    layoutParams.leftMargin = z2 ? (i5 * 170) + m0_v : 0;
                    layoutParams.topMargin = z2 ? 0 : (i5 * 170) + m0_v;
                    childAt.setLayoutParams(layoutParams);
                    i4++;
                }
                int e2 = e(r2 == this.u5 ? 4 : 2);
                boolean z3 = this.b4;
                int i6 = z3 ? e2 : 170;
                r2.f = i6;
                if (!z3) {
                    i2 = e2;
                }
                r2.g = i2;
                r2.a.relayout(i6, i2);
            }
            this.c4 = this.b4;
            Log.w("DuoRail", "Desktop Dock " + (this.b4 ? "portrait" : "landscape") + " fixed=" + this.u5.f + "x" + this.u5.g + " recent=" + this.v5.f + "x" + this.v5.g);
        }
    }

    private void o1() {
        if (!this.Z6 || z0 == null) {
            try {
                CameraManager cameraManager = (CameraManager) this.i4.getSystemService("camera");
                if (cameraManager == null) {
                    return;
                }
                if (z0 == null) {
                    String[] cameraIdList = cameraManager.getCameraIdList();
                    int length = cameraIdList.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        }
                        String str = cameraIdList[i2];
                        CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(str);
                        Boolean bool = (Boolean) cameraCharacteristics.get(CameraCharacteristics.FLASH_INFO_AVAILABLE);
                        Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING);
                        if (Boolean.TRUE.equals(bool) && num != null && num.intValue() == 1) {
                            z0 = str;
                            break;
                        }
                        i2++;
                    }
                }
                if (this.Z6) {
                    return;
                }
                cameraManager.registerTorchCallback(new C0056y(), this.A1);
                this.Z6 = true;
            } catch (Throwable th) {
                Log.w("DuoRail", "Rail torch state callback unavailable", th);
            }
        }
    }

    private void o2() {
        if (this.y6 && x0()) {
            synchronized (this.x6) {
                this.y6 = false;
                this.x6.notifyAll();
            }
        }
    }

    private Display p0() {
        Context context = this.i4;
        if (context == null) {
            return null;
        }
        return ((DisplayManager) context.getSystemService(DisplayManager.class)).getDisplay(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p1() {
        ArrayList arrayList = new ArrayList(this.M5.values());
        synchronized (this.L5) {
            arrayList.addAll(this.L5);
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            e((K) obj);
        }
    }

    private boolean q0() {
        return a(p0()) == 0;
    }

    private int q1() {
        ArrayList arrayList = new ArrayList(this.g4);
        this.g4.clear();
        for (R r2 : this.h4) {
            if (b(r2)) {
                arrayList.add(r2);
            }
        }
        this.h4.removeAll(arrayList);
        this.x5.removeAll(arrayList);
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            R r3 = (R) obj;
            if (r3.b_v.isValid()) {
                try {
                    SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                    try {
                        transaction.setVisibility(r3.b_v, false).reparent(r3.b_v, null).apply();
                        transaction.close();
                    } catch (Throwable th) {
                        try {
                            transaction.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    this.g4.add(r3);
                    Log.w("DuoLegacyDock", "Legacy detach pending " + r3.c, th3);
                }
            }
            try {
                b(r3.d);
            } catch (Throwable th4) {
                Log.w("DuoLegacyDock", "Legacy view cleanup failed " + r3.c, th4);
            }
            try {
                r3.a.release();
                r3.b_v.release();
                i3++;
            } catch (Throwable th5) {
                this.g4.add(r3);
                Log.w("DuoLegacyDock", "Legacy host release pending " + r3.c, th5);
            }
        }
        this.w5 = null;
        this.v5 = null;
        this.u5 = null;
        this.t5 = null;
        this.Z5 = 0;
        this.Y5 = 0;
        this.y4 = null;
        Arrays.fill(this.A5, (Object) null);
        Arrays.fill(this.D5, (Object) null);
        Arrays.fill(this.B5, (Object) null);
        Arrays.fill(this.C5, (Object) null);
        this.E5.clear();
        this.c4 = false;
        return i3;
    }

    private int r0() {
        int size = this.g4.size();
        Iterator<R> it = this.h4.iterator();
        while (it.hasNext()) {
            if (b(it.next())) {
                size++;
            }
        }
        return size;
    }

    private void r1() {
        R r2 = this.Z2;
        if (r2 == null) {
            return;
        }
        this.Z2 = null;
        try {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                transaction.setVisibility(r2.b_v, false).apply();
                transaction.close();
            } finally {
            }
        } finally {
            e(r2);
        }
    }

    private boolean s0() {
        if (this.t5 == null || this.u5 == null || this.v5 == null || this.w5 == null || !this.g4.isEmpty()) {
            return false;
        }
        for (R r2 : this.A5) {
            if (r2 == null) {
                return false;
            }
        }
        return true;
    }

    private void s1() {
        if (this.p5 == null || this.r5) {
            return;
        }
        this.r5 = true;
        this.o5 = false;
        java.lang.Process process = this.q5;
        if (process != null) {
            process.destroy();
        }
    }

    private FrameLayout t0() {
        return w(0);
    }

    private void t1() {
        (this.R0 != null ? this.R0 : this.A1).post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.c0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0() {
        i0 i0Var = this.F2.get(this.D2);
        if (i0Var == null || this.Q2 || this.z2 == null || this.C2_v != this.G1 || this.I1 || !q0() || !j(this.C2_v) || !R0()) {
            return;
        }
        final int i2 = this.C2_v;
        int i3= this.B2;
        final int a2 = a(i2);
        final String str = this.E2;
        final List<int[]> a3 = a(i0Var, str, a2);
        if (a3.size() < 2) {
            return;
        }
        b(i2, new M() { public int a(SurfaceControl sc) throws ReflectiveOperationException { return 0; } }, new Consumer() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda158
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                dev.duo.workspaceprobe.b.this.a(a3, i3, str, i2, a2, (Integer) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u1() {
        if (!F()) {
            f2();
        } else {
            final int i2 = this.G1;
            this.k1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda117
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.p(i2);
                }
            });
        }
    }

    private void v1() {
        final O o2 = this.m6;
        ExecutorService executorService = this.n6;
        if (o2 == null || executorService == null) {
            return;
        }
        try {
            executorService.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.a(dev.duo.workspaceprobe.b.this);
                }
            });
        } catch (RejectedExecutionException e2) {
        }
    }

    private float w0() {
        if (!this.I1) {
            return 1.0f;
        }
        return Math.max(0.0f, Math.min(1.0f, (1.0f - this.O6) * (1.0f - this.L6) * (1.0f - this.P6)));
    }

    private void w1() {
        final Object obj = new Object();
        this.n5 = true;
        this.p5 = obj;
        this.r5 = false;
        this.o5 = false;
        new Thread(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda143
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.e(obj);
            }
        }, "MiDuoTentLease").start();
    }

    private boolean x0() {
        return Y0() && v0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x1() {
        if (!d2()) {
            f2();
            return;
        }
        final ActivityManager.RunningTaskInfo runningTaskInfo = this.y1;
        if (runningTaskInfo == null) {
            return;
        }
        final Bundle bundle = new Bundle();
        bundle.putParcelable("multiple_split_dock_task", runningTaskInfo);
        this.k1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda120
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(runningTaskInfo, bundle);
            }
        });
    }

    private void y0() {
        try {
            Object systemService = this.i4.getSystemService((Class) StatusBarManager.class);
            systemService.getClass().getMethod("expandSettingsPanel", null).invoke(systemService, null);
        } catch (ReflectiveOperationException e2) {
            Log.w("DuoRail", "Control centre unavailable", e2);
        }
    }

    private boolean y1() {
        if (this.G4 != null) {
            return true;
        }
        Object obj = this.F4;
        if (obj == null) {
            return false;
        }
        try {
            for (Field field : obj.getClass().getDeclaredFields()) {
                if (!field.getType().isPrimitive()) {
                    field.setAccessible(true);
                    Object obj2 = field.get(obj);
                    if (obj2 != null && obj2.getClass().getName().endsWith("LauncherProxyService$1")) {
                        this.G4 = obj2;
                    }
                    if (field.getName().equals("mShadeViewControllerLazy")) {
                        this.H4 = obj2;
                    }
                }
            }
            Object obj3 = this.G4;
            if (obj3 != null && this.H4 != null) {
                this.I4 = obj3.getClass().getDeclaredMethod("moveShadeWindowIfNeeded", MotionEvent.class);
                this.J4 = this.G4.getClass().getDeclaredMethod("shouldIgnoreEvent", MotionEvent.class);
                this.I4.setAccessible(true);
                this.J4.setAccessible(true);
                this.K4 = Class.forName("dagger.Lazy", false, obj.getClass().getClassLoader()).getMethod("get", null);
                return true;
            }
            this.G4 = null;
            return false;
        } catch (ReflectiveOperationException e2) {
            this.G4 = null;
            Log.w("DuoRail", "Shade entry unavailable", e2);
            return false;
        }
    }

    private void z0() {
        try {
            Object systemService = this.i4.getSystemService((Class) StatusBarManager.class);
            systemService.getClass().getMethod("expandNotificationsPanel", null).invoke(systemService, null);
        } catch (ReflectiveOperationException e2) {
            Log.w("DuoRail", "Message centre unavailable", e2);
        }
    }

    private void z1() {
        R r2;
        FrameLayout frameLayout;
        for (Map.Entry<View, Object[]> entry : this.x3.entrySet()) {
            View key = entry.getKey();
            Object[] value = entry.getValue();
            View view = (View) ((WeakReference) value[0]).get();
            if (view != null) {
                view.setLayoutParams(new FrameLayout.LayoutParams((FrameLayout.LayoutParams) value[1]));
            }
            ViewGroup.LayoutParams layoutParams = key.getLayoutParams();
            layoutParams.width = ((Integer) value[2]).intValue();
            layoutParams.height = ((Integer) value[3]).intValue();
            key.setLayoutParams(layoutParams);
            key.setTranslationX(((Float) value[4]).floatValue());
            key.setTranslationY(((Float) value[5]).floatValue());
        }
        if (!this.x3.isEmpty()) {
            Log.i("DuoKeyguard", "Master off: shortcuts restored=" + this.x3.size());
        }
        this.x3.clear();
        if (this.y3 != Integer.MIN_VALUE && (frameLayout = this.h3) != null) {
            ViewGroup.LayoutParams layoutParams2 = frameLayout.getLayoutParams();
            layoutParams2.height = this.y3;
            this.h3.setLayoutParams(layoutParams2);
            this.y3 = Integer.MIN_VALUE;
        }
        if (this.n3 && (r2 = this.N6) != null && r2.b_v.isValid()) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                transaction.setVisibility(this.N6.b_v, false).apply();
                transaction.close();
            } catch (Throwable th) {
                try {
                    transaction.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        this.l4 = false;
        this.n3 = false;
    }

    boolean E0() {
        try {
            for (Field field : this.z4.getClass().getDeclaredFields()) {
                if (field.getType().getName().equals("android.view.InputMonitor")) {
                    field.setAccessible(true);
                    Object obj = field.get(this.z4);
                    obj.getClass().getMethod("pilferPointers", null).invoke(obj, null);
                    return true;
                }
            }
            Log.w("DuoRail", "Pilfer: no InputMonitor in " + this.z4.getClass());
        } catch (Throwable th) {
            Log.w("DuoRail", "Pilfer failed", th);
        }
        return false;
    }

    boolean R0() {
        Context context = this.i4;
        if (context == null) {
            return false;
        }
        if (this.j4 == null) {
            this.j4 = (PowerManager) context.getSystemService(PowerManager.class);
        }
        if (this.k4 == null) {
            this.k4 = (KeyguardManager) this.i4.getSystemService(KeyguardManager.class);
        }
        PowerManager powerManager = this.j4;
        return (powerManager == null || this.k4 == null || !powerManager.isInteractive() || this.k4.isKeyguardLocked()) ? false : true;
    }

    public void onModuleLoaded(XposedModuleInterface.ModuleLoadedParam moduleLoadedParam) {
        String processName = moduleLoadedParam.getProcessName();
        this.E0 = processName;
        if ("com.miui.home".equals(processName)) {
            System.loadLibrary("duoworkspace");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0171 A[Catch: ReflectiveOperationException -> 0x0254, TryCatch #0 {ReflectiveOperationException -> 0x0254, blocks: (B:31:0x0100, B:37:0x0154, B:40:0x0171, B:42:0x0195, B:44:0x01a5, B:49:0x01eb, B:50:0x01b5, B:52:0x01bc, B:55:0x01cc, B:58:0x01da, B:65:0x01f2, B:67:0x01fe, B:79:0x014f), top: B:30:0x0100 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onPackageLoaded(XposedModuleInterface.PackageLoadedParam packageLoadedParam) {
        Exception exc = null;
        String str;
        Method method;
        int i2;
        String str2;
        String str3 = "onTaskInfoChanged";
        if ("com.miui.home".equals(this.E0)) {
            Log.w("DuoMinusHome", "onPackageLoaded " + packageLoadedParam.getPackageName() + " first=" + packageLoadedParam.isFirstPackage());
        }
        if (packageLoadedParam.isFirstPackage() && "com.miui.home".equals(packageLoadedParam.getPackageName()) && "com.miui.home".equals(this.E0)) {
            return;
        }
        if (packageLoadedParam.isFirstPackage() && "com.miui.personalassistant".equals(packageLoadedParam.getPackageName()) && "com.miui.personalassistant".equals(this.E0)) {
            e.a(this, packageLoadedParam.getDefaultClassLoader());
            return;
        }
        if (!packageLoadedParam.isFirstPackage() || !"com.android.systemui".equals(this.E0) || !this.E0.equals(packageLoadedParam.getPackageName())) {
            return;
        }
        try {
            ClassLoader defaultClassLoader = packageLoadedParam.getDefaultClassLoader();
            Class<?> cls = Class.forName("android.window.TransitionInfo$Change", false, defaultClassLoader);
            final Method declaredMethod = cls.getDeclaredMethod("getTaskInfo", null);
            Class<?> cls2 = Class.forName("com.android.wm.shell.compatui.letterbox.lifecycle.TaskInfoLetterboxLifecycleEventFactory", false, defaultClassLoader);
            Class<?> cls3 = Class.forName("com.android.wm.shell.compatui.letterbox.SingleSurfaceLetterboxController", false, defaultClassLoader);
            Class<?> cls4 = Class.forName("com.android.wm.shell.compatui.letterbox.LetterboxKey", false, defaultClassLoader);
            final Class<?> cls5 = Class.forName("android.view.SurfaceControl$Transaction", false, defaultClassLoader);
            final Class<?> cls6 = Class.forName("android.view.SurfaceControl", false, defaultClassLoader);
            Class<?> cls7 = Class.forName("android.window.WindowContainerToken", false, defaultClassLoader);
            final Field declaredField = cls4.getDeclaredField("taskId");
            final Field declaredField2 = cls3.getDeclaredField("letterboxMap");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            final Method declaredMethod2 = cls5.getDeclaredMethod("hide", cls6);
            Class cls8 = Boolean.TYPE;
            try {
                Method declaredMethod3 = cls3.getDeclaredMethod("createLetterboxSurface", cls4, cls5, cls6, cls7, cls8, Rect.class);
                Method declaredMethod4 = cls3.getDeclaredMethod("updateLetterboxSurfaceVisibility", cls4, cls5, cls8);
                Method declaredMethod5 = cls3.getDeclaredMethod("updateLetterboxSurfaceBounds", cls4, cls5, Rect.class, Rect.class);
                try {
                    method = declaredMethod5;
                    try {
                        hook(Class.forName("com.android.wm.shell.compatui.letterbox.LetterboxSurfaceBuilder", false, defaultClassLoader).getDeclaredMethod("createSurface", cls5, cls6, String.class, String.class, SurfaceControl.Builder.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda193
                            public final Object intercept(XposedInterface.Chain chain) {
                                Object a2;
                                a2 = dev.duo.workspaceprobe.b.this.a(cls5, cls6, chain);
                                return a2;
                            }
                        });
                    } catch (Throwable th) {

                        Log.w("DuoRail", "Letterbox creation colour unavailable; MIUI colour kept", th);
                        Class<?> cls9 = Class.forName("com.android.wm.shell.compatui.letterbox.state.LetterboxTaskListenerAdapter", false, defaultClassLoader);
                        final Method declaredMethod6 = cls9.getDeclaredMethod("onTaskInfoChanged", ActivityManager.RunningTaskInfo.class);
                        String[] strArr = {"state.LetterboxTaskListenerAdapter", "MiuiShellLetterboxManagerImpl"};
                        i2 = 0;
                        while (i2 < 2) {
                        }
                        hook(cls2.getDeclaredMethod("createLifecycleEvent", cls)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda195
                            public final Object intercept(XposedInterface.Chain chain) {
                                Object a2;
                                a2 = dev.duo.workspaceprobe.b.this.a(declaredMethod, chain);
                                return a2;
                            }
                        });
                        hook(declaredMethod3).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda196
                            public final Object intercept(XposedInterface.Chain chain) {
                                Object a2;
                                a2 = dev.duo.workspaceprobe.b.this.a(declaredField, declaredField2, declaredMethod2, chain);
                                return a2;
                            }
                        });
                        hook(declaredMethod4).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda197
                            public final Object intercept(XposedInterface.Chain chain) {
                                Object b2;
                                b2 = dev.duo.workspaceprobe.b.this.b(declaredField, declaredField2, declaredMethod2, chain);
                                return b2;
                            }
                        });
                        hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda198
                            public final Object intercept(XposedInterface.Chain chain) {
                                Object c2;
                                c2 = dev.duo.workspaceprobe.b.this.c(declaredField, declaredField2, declaredMethod2, chain);
                                return c2;
                            }
                        });
                        p(defaultClassLoader);
                        h(defaultClassLoader);
                        l(defaultClassLoader);
                        k(defaultClassLoader);
                        str = "DuoWallpaper";
                        Log.w(str, "Home-only Shell background hooks ready; fix defaults off");
                    }
                } catch (Throwable th2) {
                    throw th2;
                    method = declaredMethod5;
                }
                Class<?> cls92 = Class.forName("com.android.wm.shell.compatui.letterbox.state.LetterboxTaskListenerAdapter", false, defaultClassLoader);
                final Method declaredMethod62 = cls92.getDeclaredMethod("onTaskInfoChanged", ActivityManager.RunningTaskInfo.class);
                String[] strArr2 = {"state.LetterboxTaskListenerAdapter", "MiuiShellLetterboxManagerImpl"};
                i2 = 0;
                while (i2 < 2) {
                    Class<?> cls10 = Class.forName("com.android.wm.shell.compatui.letterbox." + strArr2[i2], false, defaultClassLoader);
                    Method[] declaredMethods = cls10.getDeclaredMethods();
                    int length = declaredMethods.length;
                    String[] strArr3 = strArr2;
                    int i3 = 0;
                    while (i3 < length) {
                        int i4 = i3;
                        Method method2 = declaredMethods[i4];
                        int i5 = i2;
                        if (!method2.getName().equals("onTaskAppeared") && !method2.getName().equals(str3)) {
                            str2 = str3;
                            i3 = i4 + 1;
                            i2 = i5;
                            str3 = str2;
                        }
                        if (method2.getParameterTypes().length > 0) {
                            str2 = str3;
                            if (method2.getParameterTypes()[0] == ActivityManager.RunningTaskInfo.class) {
                                boolean z2= cls10 == cls92 && method2.getName().equals("onTaskAppeared");
                                hook(method2).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda194
                                    public final Object intercept(XposedInterface.Chain chain) {
                                        Object a2;
                                        a2 = dev.duo.workspaceprobe.b.this.a(z2, declaredMethod62, chain);
                                        return a2;
                                    }
                                });
                            }
                        } else {
                            str2 = str3;
                        }
                        i3 = i4 + 1;
                        i2 = i5;
                        str3 = str2;
                    }
                    i2++;
                    strArr2 = strArr3;
                }
                hook(cls2.getDeclaredMethod("createLifecycleEvent", cls)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda195
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object a2;
                        a2 = dev.duo.workspaceprobe.b.this.a(declaredMethod, chain);
                        return a2;
                    }
                });
                hook(declaredMethod3).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda196
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object a2;
                        a2 = dev.duo.workspaceprobe.b.this.a(declaredField, declaredField2, declaredMethod2, chain);
                        return a2;
                    }
                });
                hook(declaredMethod4).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda197
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object b2;
                        b2 = dev.duo.workspaceprobe.b.this.b(declaredField, declaredField2, declaredMethod2, chain);
                        return b2;
                    }
                });
                hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda198
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object c2;
                        c2 = dev.duo.workspaceprobe.b.this.c(declaredField, declaredField2, declaredMethod2, chain);
                        return c2;
                    }
                });
                p(defaultClassLoader);
                h(defaultClassLoader);
                l(defaultClassLoader);
                k(defaultClassLoader);
                str = "DuoWallpaper";
            } catch (ReflectiveOperationException e2) {
                exc = e2;
                str = "DuoWallpaper";
            }
            try {
                Log.w(str, "Home-only Shell background hooks ready; fix defaults off");
            } catch (ReflectiveOperationException e3) {
                exc = e3;
                Log.w(str, "Unsupported Shell entry; no wallpaper fix installed", exc);
            }
        } catch (ReflectiveOperationException e4) {
            exc = e4;
            str = "DuoWallpaper";
        }
    }

    boolean p2() {
        return Boolean.TRUE.equals(this.J3);
    }

    boolean v0() {
        return !"0".equals(c("debug.duo.master", ""));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String A(String str) {
        String g2 = dev.duo.hookprobe.J.g(str);
        PackageManager packageManager = this.i4.getPackageManager();
        try {
            g2 = String.valueOf(packageManager.getApplicationLabel(packageManager.getApplicationInfo(g2, 0)));
        } catch (PackageManager.NameNotFoundException e2) {
        }
        return dev.duo.hookprobe.J.h(str) == 0 ? g2 : g2 + "（分身）";
    }

    private boolean B(String str) {
        String g2 = dev.duo.hookprobe.J.g(str);
        int h2 = dev.duo.hookprobe.J.h(str);
        return h2 == 0 ? this.i4.getPackageManager().getLaunchIntentForPackage(g2) != null : !b(g2, h2).isEmpty();
    }

    private List<String> C(String str) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : dev.duo.hookprobe.J.f(str)) {
            if (B(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    private boolean D(int i2) {
        Integer num = this.p2.get(Integer.valueOf(i2));
        return (num == null || (num.intValue() & 1) == 0 || (num.intValue() >> 1) <= 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E, reason: merged with bridge method [inline-methods] */
    public void k(String str) {
        boolean z2;
        this.Z1 = str;
        if (c(str)) {
            dev.duo.hookprobe.G.a(false, true);
            dev.duo.hookprobe.G.a(false);
            return;
        }
        a.b b2 = this.J0.b(str);
        if (b2 == null) {
            return;
        }
        Display p02 = p0();
        if (b2.e == 0 || p02 == null) {
            z2 = false;
        } else {
            Point point = new Point();
            p02.getRealSize(point);
            z2 = point.y > point.x;
        }
        boolean z3 = a(p02) == 1;
        boolean z4 = !(b2.a || z3 || this.Y1) || b2.a(v0(), z3, z2);
        dev.duo.hookprobe.G.a(z4);
        dev.duo.hookprobe.G.a(z4 && !this.k3 && str.equals(this.a2) && this.b2 && this.c2, z4);
    }

    private boolean F() {
        int i2;
        if (this.r1 && this.s1 && this.h1 != null && this.S0 != null && (i2 = this.G1) >= 0 && !this.I1 && !this.L1 && !this.M1 && !this.N1) {
            try {
                ActivityManager.RunningTaskInfo runningTaskInfo = this.G0.get(Integer.valueOf(i2));
                if (runningTaskInfo != null && runningTaskInfo.topActivity != null && runningTaskInfo.getClass().getField("isFocused").getBoolean(runningTaskInfo) && runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) == 0) {
                    Object obj = runningTaskInfo.getClass().getField("configuration").get(runningTaskInfo);
                    Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
                    if (((Integer) obj2.getClass().getMethod("getActivityType", null).invoke(obj2, null)).intValue() == 1) {
                        if (((Integer) obj2.getClass().getMethod("getWindowingMode", null).invoke(obj2, null)).intValue() == 1 && v0() && R0() && a(p0()) == 1) {
                            return true;
                        }
                    }
                }
                return false;
            } catch (ReflectiveOperationException e2) {
                Log.e("DuoFoldSplit", "Listening task check failed", e2);
            }
        }
        return false;
    }

    private Set<String> G() {
        ComponentName componentName;
        HashSet hashSet = new HashSet();
        hashSet.add(this.F1);
        ActivityManager.RunningTaskInfo runningTaskInfo = this.G0.get(Integer.valueOf(this.G1));
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
    */
    public List<Object[]> H() {
        int i2;
        int size;
        int i3;
        Iterator<String> it;
        PackageManager packageManager = this.i4.getPackageManager();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            if (K == null) {
                K = Class.forName("android.util.MiuiMultiWindowUtils").getMethod("packageSupportFreeform", Context.class, String.class);
            }
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER"), 0)) {
                String str = resolveInfo.activityInfo.packageName;
                if (!linkedHashMap.containsKey(str) && !dev.duo.icons.g.a.equals(str) && Boolean.TRUE.equals(K.invoke(null, this.i4, str))) {
                    ApplicationInfo applicationInfo = resolveInfo.activityInfo.applicationInfo;
                    linkedHashMap.put(str, new Object[]{str, String.valueOf(applicationInfo.loadLabel(packageManager)), applicationInfo.loadIcon(packageManager)});
                }
            }
        } catch (ReflectiveOperationException | RuntimeException e2) {
            Log.w("DuoRail", "Sidebar app list failed", e2);
        }
        try {
            Iterator<LauncherActivityInfo> it2 = b((String) null, I).iterator();
            i2 = 0;
            while (it2.hasNext()) {
                try {
                    String packageName = it2.next().getComponentName().getPackageName();
                    String a2 = dev.duo.hookprobe.J.a(packageName, I);
                    if (K != null && !linkedHashMap.containsKey(a2) && !dev.duo.icons.g.a.equals(packageName) && Boolean.TRUE.equals(K.invoke(null, this.i4, packageName))) {
                        linkedHashMap.put(a2, new Object[]{a2, A(a2), z(a2)});
                        i2++;
                    }
                } catch (PackageManager.NameNotFoundException | ReflectiveOperationException | RuntimeException e3) {
                    // e = e3; (removed: e is a Field)
                    Log.w("DuoRail", "Sidebar dual apps failed", e3);
                    ArrayList arrayList = new ArrayList(linkedHashMap.values());
                    final Collator collator = Collator.getInstance(Locale.CHINA);
                    Collections.sort(arrayList, new Comparator() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda9
                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            int a3;
                            a3 = dev.duo.workspaceprobe.b.a(collator, (Object[]) obj, (Object[]) obj2);
                            return a3;
                        }
                    });
                    ArrayList arrayList2 = new ArrayList();
                    size = arrayList.size();
                    i3 = 0;
                    while (i3 < size) {
                    }
                    ArrayList arrayList3 = new ArrayList();
                    it = dev.duo.hookprobe.J.a(arrayList2, this.N3).iterator();
                    while (it.hasNext()) {
                    }
                    Log.w("DuoRail", "Sidebar panel apps " + arrayList3.size() + " dual " + i2 + " ordered " + this.N3.size());
                    return arrayList3;
                }
            }
        } catch (PackageManager.NameNotFoundException | ReflectiveOperationException | RuntimeException e4) {
            // e = e4; (removed: e is a Field)
            i2 = 0;
        }
        ArrayList arrayList4 = new ArrayList(linkedHashMap.values());
        final Collator collator2 = Collator.getInstance(Locale.CHINA);
        Collections.sort(arrayList4, new Comparator() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda9
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int a3;
                a3 = dev.duo.workspaceprobe.b.a(collator2, (Object[]) obj, (Object[]) obj2);
                return a3;
            }
        });
        ArrayList arrayList22 = new ArrayList();
        size = arrayList4.size();
        i3 = 0;
        while (i3 < size) {
            Object obj = arrayList4.get(i3);
            i3++;
            arrayList22.add((String) ((Object[]) obj)[0]);
        }
        ArrayList arrayList32 = new ArrayList();
        it = dev.duo.hookprobe.J.a(arrayList22, this.N3).iterator();
        while (it.hasNext()) {
            arrayList32.add((Object[]) linkedHashMap.get(it.next()));
        }
        Log.w("DuoRail", "Sidebar panel apps " + arrayList32.size() + " dual " + i2 + " ordered " + this.N3.size());
        return arrayList32;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean I() {
        try {
            Object invoke = Class.forName("android.app.ActivityTaskManager").getMethod("getService", null).invoke(null, null);
            Object invoke2 = invoke.getClass().getMethod("getFocusedRootTaskInfo", null).invoke(invoke, null);
            if (invoke2 != null && invoke2.getClass().getField("displayId").getInt(invoke2) == 0) {
                ComponentName componentName = (ComponentName) invoke2.getClass().getField("topActivity").get(invoke2);
                Object obj = invoke2.getClass().getField("configuration").get(invoke2);
                Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
                if (componentName != null && "com.miui.home".equals(componentName.getPackageName()) && "com.miui.home.launcher.Launcher".equals(componentName.getClassName())) {
                    return ((Integer) obj2.getClass().getMethod("getActivityType", null).invoke(obj2, null)).intValue() == 2;
                }
                return false;
            }
            return false;
        } catch (ReflectiveOperationException e2) {
            Log.w("DuoRail", "Focused task check failed", e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J() {
        this.P2 = false;
        D0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L() {
        k(this.F1);
        c2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M() {
        k(this.F1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void O() {
        boolean z2;
        Throwable th;
        if (!Y0()) {
            this.T1 = true;
            Log.w("DuoRail", "Rail poll paused: screen not interactive");
            return;
        }
        if (!v0()) {
            P();
            this.T1 = true;
            Log.w("DuoRail", "Rail poll paused: master switch off");
            return;
        }
        int i2 = 0;
        try {
            ArrayList arrayList = new ArrayList(this.I0);
            int size = arrayList.size();
            z2 = false;
            while (i2 < size) {
                try {
                    Object obj = arrayList.get(i2);
                    i2++;
                    z2 |= a(this.G0.get((Integer) obj), (SurfaceControl) null);
                } catch (Throwable th2) {
                    throw th2;
                    Log.w("DuoRail", "Rail poll failed", th);
                    if (this.i4 != null) {
                    }
                    P();
                    this.A1.postDelayed(this.S1, 1000L);
                }
            }
        } catch (Throwable th3) {
            z2 = false;
            throw th3;
        }
        if (this.i4 != null || !z2) {
            P();
        }
        this.A1.postDelayed(this.S1, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q() {
        this.N1 = true;
        P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R() {
        a("gesture 15", true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S() {
        if (this.t4 < 0) {
            return;
        }
        this.t4 = -1;
        Log.i("DuoSplitHome", "Right inset=-1 (pre state=2)");
        P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T() {
        l(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U() {
        if (B0()) {
            if (!this.Q2 && this.Z2 == null) {
                a(false, (Rect) null);
            }
            this.A1.postDelayed(this.f3, 2000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean V() {
        h2();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void W() {
        Iterator<Integer> it = this.N5.keySet().iterator();
        while (it.hasNext()) {
            a(it.next().intValue(), (SurfaceControl.Transaction) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X() {
        this.a7 = false;
        k1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y() {
        try {
            a2();
        } catch (RuntimeException e2) {
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda145
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(e2);
                }
            });
        } finally {
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda144
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.X();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z() {
        final Bundle a2 = a("pickState", (String) null, (Bundle) null);
        if (a2 == null) {
            return;
        }
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda140
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.b(a2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a0() {
        this.V6 = false;
        if (this.S6.isEmpty()) {
            return;
        }
        final HashSet hashSet = new HashSet();
        Iterator<J> it = this.S6.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().a);
        }
        this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda5
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
    */
    public /* synthetic */ void b0() {
        int i2;
        Throwable th;
        Throwable th2;
        int i3 = 0;
        while (true) {
            try {
                Socket socket = new Socket();
                try {
                    int i4 = this.i4.getPackageManager().getApplicationInfo("com.miui.home", 0).uid;
                    socket.connect(new InetSocketAddress(InetAddress.getByAddress(new byte[]{Byte.MAX_VALUE, 0, 0, 1}), 37657), 1500);
                    socket.setTcpNoDelay(true);
                    socket.setSoTimeout(q0_v);
                    byte[] bArr = new byte[64];
                    new DataInputStream(socket.getInputStream()).readFully(bArr);
                    ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                    if (order.getInt() != 1146442568 || order.getInt() != i4 || order.getInt() <= 0 || order.getInt() != 2) {
                        break;
                    }
                    byte[] copyOfRange = Arrays.copyOfRange(bArr, w_v, 48);
                    byte[] decode = Base64.decode("ojx0VY/M20lXKxlzcaWAno3GjRKVmKzbjTl31AnmRuQ=", 2);
                    if (!MessageDigest.isEqual(copyOfRange, decode)) {
                        throw new SecurityException("Native frame key");
                    }
                    socket.getOutputStream().write(decode);
                    socket.setSoTimeout(0);
                    long j2 = this.o6 + 1;
                    this.o6 = j2;
                    O o2 = new O(j2, socket);
                    this.m6 = o2;
                    try {
                        Log.i("DuoSidebar", "Native loopback frame connection Home UID=" + i4);
                        DataInputStream dataInputStream = new DataInputStream(socket.getInputStream());
                        byte[] bArr2 = new byte[112];
                        while (true) {
                            dataInputStream.readFully(bArr2);
                            P p2 = new P(bArr2, o2.a);
                            synchronized (this.q6) {
                                this.r6 = p2;
                                if (!this.s6) {
                                    this.s6 = true;
                                    this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda148
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            dev.duo.workspaceprobe.b.this.r();
                                        }
                                    });
                                }
                            }
                        }
                    } catch (Throwable th3) {
                        th2 = th3;
                        i2 = 0;
                        try {
                            try {
                                socket.close();
                            } catch (Throwable th4) {
                                throw th4;
                                this.m6 = null;
                                final long j3 = this.o6;
                                int i5 = i2 + 1;
                                if (i2 < 3) {
                                    Log.w("DuoSidebar", "Native frame connection unavailable", th);
                                }
                                this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda149
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        dev.duo.workspaceprobe.b.this.b(j3);
                                    }
                                });
                                synchronized (this.x6) {
                                    try {
                                        try {
                                            if (x0()) {
                                                this.x6.wait(Math.min(60000L, 750 << Math.min(i5, 7)));
                                            } else {
                                                this.y6 = true;
                                                Log.i("DuoSidebar", "Native frame reconnect waits for screen on / master on");
                                                while (this.y6) {
                                                    this.x6.wait();
                                                }
                                            }
                                        } finally {
                                        }
                                    } catch (InterruptedException e2) {
                                        return;
                                    }
                                }
                                i3 = i5;
                            }
                        } catch (Throwable th5) {
                            th2.addSuppressed(th5);
                        }
                        throw th2;
                    }
                } catch (Throwable th6) {
                    i2 = i3;
                    th2 = th6;
                }
            } catch (Throwable th7) {
                i2 = i3;
                throw th7;
            }
            i3 = i5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c0() {
        HashSet hashSet = new HashSet();
        Map[] mapArr = {this.U0, this.n2};
        for (int i2 = 0; i2 < 2; i2++) {
            Map map = mapArr[i2];
            if (map != null) {
                ArrayList arrayList = new ArrayList(map.keySet());
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    if (obj instanceof Integer) {
                        hashSet.add((Integer) obj);
                    }
                }
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            z(((Integer) it.next()).intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d0() {
        Toast.makeText(this.i4, "面板顺序保存失败", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e0() {
        Toast.makeText(this.i4, "小窗侧边栏保存失败", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void f0() {
        boolean z2;
        try {
            String str = null;
            Bundle call = this.i4.getContentResolver().call(Uri.parse("content://com.lsposed.miduo.config"), "railCustom", (String) null, (Bundle) null);
            String string = call == null ? null : call.getString("layout");
            String string2 = call == null ? null : call.getString("sidebarApps");
            if (call != null) {
                str = call.getString("panelOrder");
            }
            final boolean z3 = (call == null || !call.containsKey("sidebarFreeform")) ? true : call.getBoolean("sidebarFreeform");
            if (call != null) {
                if (call.getBoolean("sidebarKeyEnd", false)) {
                    z2 = true;
                    final List unmodifiableList = Collections.unmodifiableList(dev.duo.hookprobe.J.e(str));
                    String str2 = string2;
                    final int i2 = this.P3;
                    final String[] d2 = dev.duo.hookprobe.J.d(string);
                    final boolean c2 = dev.duo.hookprobe.J.c(d2);
                    final List unmodifiableList2 = Collections.unmodifiableList(dev.duo.hookprobe.J.f(str2));
                    final List<String> C2_v = !c2 ? C(str2) : Collections.EMPTY_LIST;
                    final List<String> d3 = !c2 ? d(C2_v) : Collections.EMPTY_LIST;
                    this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda98
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.workspaceprobe.b.this.a(i2, unmodifiableList, unmodifiableList2, d2, d3, C2_v, z3, z2, c2);
                        }
                    });
                }
            }
            z2 = false;
            final List unmodifiableList3 = Collections.unmodifiableList(dev.duo.hookprobe.J.e(str));
            String str22 = string2;
            final int i22 = this.P3;
            final String[] d22 = dev.duo.hookprobe.J.d(string);
            final boolean c22 = dev.duo.hookprobe.J.c(d22);
            final List unmodifiableList22 = Collections.unmodifiableList(dev.duo.hookprobe.J.f(str22));
            final List C22 = !c22 ? C(str22) : Collections.EMPTY_LIST;
            final List d32 = !c22 ? d(C22) : Collections.EMPTY_LIST;
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda98
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(i22, unmodifiableList3, unmodifiableList22, d22, d32, C22, z3, z2, c22);
                }
            });
        } catch (RuntimeException e2) {
            Log.w("DuoRail", "Custom rail read failed", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h0() {
        try {
            Bundle call = this.i4.getContentResolver().call(Uri.parse("content://com.lsposed.miduo.config"), "notificationIcons", (String) null, (Bundle) null);
            if (call != null && call.containsKey("on")) {
                boolean z2= call.getBoolean("on");
                this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda205
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.f(z2);
                    }
                });
                return;
            }
            Log.w("DuoRail", "Notification icon config read failed: " + (call == null ? "no response" : call.getString("error", "no on value")));
        } catch (RuntimeException e2) {
            Log.w("DuoRail", "Notification icon config read failed", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i0() {
        Bundle a2 = a("pickButton", (String) null, (Bundle) null);
        if (a2 == null || !a2.containsKey("on")) {
            return;
        }
        boolean z2= a2.getBoolean("on");
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda184
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.g(z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j0() {
        try {
            Bundle call = this.i4.getContentResolver().call(Uri.parse("content://com.lsposed.miduo.config"), "searchButton", (String) null, (Bundle) null);
            if (call != null && call.containsKey("on")) {
                boolean z2= call.getBoolean("on");
                this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda185
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.h(z2);
                    }
                });
                return;
            }
            Log.w("DuoRail", "Search button config read failed: " + (call == null ? "no response" : call.getString("error", "no on value")));
        } catch (RuntimeException e2) {
            Log.w("DuoRail", "Search button config read failed", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(int i2) {
        b(i2, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(final String str) {
        boolean z2;
        long j2;
        boolean z3;
        while (this.P0) {
            try {
                this.P0 = false;
                long uptimeMillis = SystemClock.uptimeMillis();
                Context context = this.i4;
                if (context == null) {
                    this.O0.set(false);
                    if (this.P0) {
                        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda69
                            @Override // java.lang.Runnable
                            public final void run() {
                                dev.duo.workspaceprobe.b.this.l(str);
                            }
                        });
                        return;
                    }
                    return;
                }
                List<ApplicationInfo> installedApplications = context.getPackageManager().getInstalledApplications(0);
                final ArrayList arrayList = new ArrayList();
                HashSet hashSet = new HashSet();
                Iterator<ApplicationInfo> it = installedApplications.iterator();
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        j2 = uptimeMillis;
                        z3 = false;
                        break;
                    }
                    ApplicationInfo next = it.next();
                    if (!c(next.packageName)) {
                        j2 = uptimeMillis;
                        long a2 = this.J0.a();
                        a.b a3 = a(next.packageName, (String) null);
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
                            dev.duo.workspaceprobe.a.C0005a a4 = this.J0.a(next.packageName, a3, a2);
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
                    b((Set<String>) hashSet);
                }
                if (z3) {
                    this.j2 = true;
                    this.P0 = false;
                    Log.w("DuoRail", "Duo states prefetch stopped: 3 reads failed in a row; it runs again once a read succeeds");
                }
                Log.w("DuoRail", "Duo states prefetched reason=" + str + " apps=" + installedApplications.size() + " read=" + i2 + " failed=" + i3 + " changed=" + arrayList.size() + " ms=" + (SystemClock.uptimeMillis() - j2) + " thread=" + Thread.currentThread().getName());
                if (!arrayList.isEmpty()) {
                    this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda70
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.workspaceprobe.b.this.a(arrayList);
                        }
                    });
                }
            } catch (Throwable th) {
                try {
                    Log.w("DuoRail", "Duo states prefetch failed reason=" + str, th);
                    if (z2) {
                        return;
                    } else {
                        return;
                    }
                } finally {
                    this.O0.set(false);
                    if (this.P0) {
                        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda69
                            @Override // java.lang.Runnable
                            public final void run() {
                                dev.duo.workspaceprobe.b.this.l(str);
                            }
                        });
                    }
                }
            }
        }
        this.O0.set(false);
        if (this.P0) {
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda69
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.l(str);
                }
            });
        }
    }

    private void o(ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.systemui.statusbar.CommandQueue", false, classLoader);
            Class cls2 = Integer.TYPE;
            hook(cls.getDeclaredMethod("onSystemBarAttributesChanged", cls2, cls2, Class.forName("[Lcom.android.internal.view.AppearanceRegion;", false, classLoader), Boolean.TYPE, cls2, cls2, String.class, Class.forName("[Lcom.android.internal.statusbar.LetterboxDetails;", false, classLoader))).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda23
                public final Object intercept(XposedInterface.Chain chain) {
                    Object p2;
                    p2 = dev.duo.workspaceprobe.b.this.p(chain);
                    return p2;
                }
            });
            hook(cls.getDeclaredMethod("setWindowState", cls2, cls2, cls2)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda24
                public final Object intercept(XposedInterface.Chain chain) {
                    Object q2;
                    q2 = dev.duo.workspaceprobe.b.this.q(chain);
                    return q2;
                }
            });
            Log.i("DuoRail", "Native status bar policy hook ready");
        } catch (ReflectiveOperationException e2) {
            Log.e("DuoRail", "Native status bar policy hook unavailable", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object p(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (((Integer) chain.getArg(0)).intValue() == 0) {
            final int intValue = ((Integer) chain.getArg(5)).intValue();
            final String str = (String) chain.getArg(6);
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda49
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(str, intValue);
                }
            });
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object q(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (((Integer) chain.getArg(0)).intValue() == 0 && ((Integer) chain.getArg(1)).intValue() == 1) {
            boolean z2= ((Integer) chain.getArg(2)).intValue() == 0;
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda3
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
        if (i2 == this.G1) {
            P();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(String str) {
        String g2 = dev.duo.hookprobe.J.g(str);
        int h2 = dev.duo.hookprobe.J.h(str);
        Intent launchIntentForPackage = this.i4.getPackageManager().getLaunchIntentForPackage(g2);
        if (h2 == 0 && launchIntentForPackage == null) {
            return;
        }
        try {
            ActivityOptions makeBasic = ActivityOptions.makeBasic();
            ActivityOptions.class.getMethod("setLaunchWindowingMode", Integer.TYPE).invoke(makeBasic, 1);
            if (h2 != 0) {
                a(g2, h2, makeBasic);
            } else {
                this.i4.startActivity(launchIntentForPackage.addFlags(268435456), makeBasic.toBundle());
            }
            Log.w("DuoRail", "Sidebar launch " + str + " fullscreen");
        } catch (Throwable th) {
            a("全屏打开 " + str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(String str) {
        if (this.L3.contains(str)) {
            return;
        }
        if (this.L3.size() >= 12) {
            Toast.makeText(this.i4, "最多固定 12 个应用", 0).show();
            return;
        }
        ArrayList arrayList = new ArrayList(this.L3);
        arrayList.add(str);
        c((List<String>) arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u_v, reason: merged with bridge method [inline-methods] */
    public void l(final String str) {
        this.P0 = true;
        if (this.O0.compareAndSet(false, true)) {
            try {
                this.L0.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda139
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.m(str);
                    }
                });
            } catch (RejectedExecutionException e2) {
                this.O0.set(false);
            }
        }
    }

    private List<SurfaceControl> v(int i2) {
        ArrayList arrayList = new ArrayList();
        Map<?, ?> map = this.n2;
        Object obj = map == null ? null : map.get(Integer.valueOf(i2));
        if (obj != null) {
            for (Field field : this.o2) {
                try {
                    Object obj2 = field.get(obj);
                    if ((obj2 instanceof SurfaceControl) && ((SurfaceControl) obj2).isValid()) {
                        arrayList.add((SurfaceControl) obj2);
                    }
                } catch (ReflectiveOperationException e2) {
                }
            }
        }
        Map<?, ?> map2 = this.U0;
        Object obj3 = map2 != null ? map2.get(Integer.valueOf(i2)) : null;
        if (obj3 instanceof SurfaceControl) {
            SurfaceControl surfaceControl = (SurfaceControl) obj3;
            if (surfaceControl.isValid()) {
                arrayList.add(surfaceControl);
            }
        }
        return arrayList;
    }

    private SharedPreferences w() {
        SharedPreferences sharedPreferences = this.h2;
        if (sharedPreferences == null && SystemClock.uptimeMillis() >= this.i2) {
            try {
                sharedPreferences = getRemotePreferences("duo_top");
                this.h2 = sharedPreferences;
                Log.w("DuoRail", "Duo config direct read ready");
                return sharedPreferences;
            } catch (Throwable th) {
                this.i2 = SystemClock.uptimeMillis() + 5000;
                Log.w("DuoRail", "Duo config direct read unavailable, provider kept", th);
            }
        }
        return sharedPreferences;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(final String str) {
        if (c(str)) {
            return;
        }
        try {
            this.L0.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda119
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.o(str);
                }
            });
        } catch (RejectedExecutionException e2) {
            Log.w("DuoRail", "Duo config read rejected pkg=" + str, e2);
        }
    }

    private static String y(int i2) {
        return String.format(Locale.ROOT, "#%06X", Integer.valueOf(i2 & 16777215));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(final int i2) {
        (this.R0 != null ? this.R0 : this.A1).post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda82
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.o(i2);
            }
        });
    }

    private String i(ActivityManager.RunningTaskInfo runningTaskInfo) {
        ComponentName componentName = this.W1;
        if (runningTaskInfo != null && a(runningTaskInfo.topActivity) && componentName != null && a(this.i4) && h(componentName.getPackageName())) {
            try {
                if (runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) != 0) {
                    return null;
                }
                if (runningTaskInfo.taskId == this.V1) {
                    if (runningTaskInfo.baseActivity == null || !componentName.getPackageName().equals(runningTaskInfo.baseActivity.getPackageName())) {
                        return null;
                    }
                    return componentName.getPackageName();
                }
                for (ActivityManager.RunningTaskInfo runningTaskInfo2 : ((ActivityManager) this.i4.getSystemService(ActivityManager.class)).getRunningTasks(10)) {
                    if (runningTaskInfo2.taskId == this.V1 && componentName.equals(runningTaskInfo2.topActivity) && runningTaskInfo2.getClass().getField("isVisible").getBoolean(runningTaskInfo2)) {
                        if (new Rect(0, 0, s0_v, 1712).equals(f(runningTaskInfo2.getClass().getField("appCompatTaskInfo").get(runningTaskInfo2)))) {
                            return componentName.getPackageName();
                        }
                    }
                }
            } catch (ReflectiveOperationException e2) {
                Log.w("DuoResolver", "Source check failed", e2);
            }
        }
        return null;
    }

    private void j(ClassLoader classLoader) {
        try {
            hook(Class.forName("com.android.systemui.statusbar.phone.ConfigurationControllerImpl", false, classLoader).getDeclaredMethod("onConfigurationChanged", Configuration.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda37
                public final Object intercept(XposedInterface.Chain chain) {
                    Object k2;
                    k2 = dev.duo.workspaceprobe.b.this.k(chain);
                    return k2;
                }
            });
            Log.w("DuoRail", "Dark mode configuration hook ready");
        } catch (ReflectiveOperationException e2) {
            Log.w("DuoRail", "Dark mode configuration hook unavailable", e2);
        }
    }

    private void n(boolean z2) {
        ArrayList arrayList = new ArrayList(this.M5.values());
        synchronized (this.L5) {
            arrayList.addAll(this.L5);
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            c0 c0Var = ((K) obj).k_v;
            if (c0Var != null && c0Var.c != z2) {
                c0Var.a(z2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(String str) {
        String g2 = dev.duo.hookprobe.J.g(str);
        int h2 = dev.duo.hookprobe.J.h(str);
        Intent launchIntentForPackage = this.i4.getPackageManager().getLaunchIntentForPackage(g2);
        if (h2 == 0 && launchIntentForPackage == null) {
            return;
        }
        try {
            ActivityOptions f2 = f(g2);
            if (f2 == null) {
                Log.w("DuoRail", "Sidebar " + str + ": freeform not allowed, fullscreen");
            }
            if (h2 != 0) {
                a(g2, h2, f2);
            } else {
                if (f2 == null) {
                    a(launchIntentForPackage.addFlags(268435456));
                    return;
                }
                this.i4.startActivity(launchIntentForPackage.addFlags(268435456), f2.toBundle());
            }
            Log.w("DuoRail", "Sidebar launch " + str + (f2 == null ? " fullscreen" : " freeform"));
        } catch (Throwable th) {
            a("小窗打开 " + str, th);
        }
    }

    /* JADX WARN: Can't_v fix incorrect switch cases order, some code will duplicate */
    private void y(String str) {
        char c2;
        if (s()) {
            if (str.startsWith("app:")) {
                Intent launchIntentForPackage = this.i4.getPackageManager().getLaunchIntentForPackage(str.substring(4));
                if (launchIntentForPackage != null) {
                    a(launchIntentForPackage.addFlags(268435456));
                    return;
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
                case WorkspaceProtocol.RELEASE_TASK /* 8 */:
                    k(false);
                    break;
                case WorkspaceProtocol.REGISTER_SOURCE /* 9 */:
                    H0();
                    break;
                case '\n':
                    a1();
                    break;
                case WorkspaceProtocol.LOOKUP_SOURCE /* 11 */:
                    T0();
                    break;
                case '\f':
                    X0();
                    break;
                case C0_v /* 13 */:
                    A(4);
                    break;
                case 14:
                    L0();
                    break;
                case 15:
                    M0();
                    break;
                case w_v /* 16 */:
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
                case m0_v /* 21 */:
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
                    Log.w("DuoRail", "Rail action pending: " + str);
                    break;
            }
        }
    }

    private static UserHandle C(int i2) {
        return UserHandle.getUserHandleForUid(i2 * 100000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(String str) {
        ArrayList arrayList = new ArrayList(this.L3);
        if (arrayList.remove(str)) {
            c((List<String>) arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object d(XposedInterface.Chain chain) throws Throwable {
        this.S0 = chain.getThisObject();
        h((ActivityManager.RunningTaskInfo) chain.getArg(0));
        c((ActivityManager.RunningTaskInfo) chain.getArg(0));
        Object proceed = chain.proceed();
        a((ActivityManager.RunningTaskInfo) chain.getArg(0), (SurfaceControl) chain.getArg(1));
        return proceed;
    }

    private static Rect f(Object obj) throws ReflectiveOperationException {
        if (obj == null) {
            return null;
        }
        try {
            return (Rect) obj.getClass().getField("topActivityAppBounds").get(obj);
        } catch (NoSuchFieldException e2) {
            return (Rect) obj.getClass().getMethod("getTopActivityAppBounds", null).invoke(obj, null);
        }
    }

    private String g(ActivityManager.RunningTaskInfo runningTaskInfo) {
        ComponentName componentName;
        if (runningTaskInfo == null || (componentName = runningTaskInfo.topActivity) == null) {
            return null;
        }
        String packageName = componentName.getPackageName();
        ComponentName componentName2 = runningTaskInfo.baseActivity;
        return (dev.duo.hookprobe.P.i.contains(packageName) || componentName2 == null || packageName.equals(componentName2.getPackageName()) || h(packageName) || !h(componentName2.getPackageName())) ? packageName : componentName2.getPackageName();
    }

    private void h(ClassLoader classLoader) {
        try {
            this.R1 = Class.forName("android.os.SystemProperties", false, classLoader).getDeclaredMethod("get", String.class, String.class);
            Class<?> cls = Class.forName("com.android.wm.shell.RootTaskDisplayAreaOrganizer", false, classLoader);
            Class<?> cls2 = Class.forName("android.window.DisplayAreaInfo", false, classLoader);
            final Field field = cls2.getField("displayId");
            final Field field2 = cls2.getField("token");
            hook(cls.getDeclaredMethod("onDisplayAreaAppeared", cls2, SurfaceControl.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda105
                public final Object intercept(XposedInterface.Chain chain) {
                    Object b2;
                    b2 = dev.duo.workspaceprobe.b.this.b(field, field2, chain);
                    return b2;
                }
            });
            hook(cls.getDeclaredMethod("onDisplayAreaVanished", cls2)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda106
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(field, field2, chain);
                    return a2;
                }
            });
            i(classLoader);
            o(classLoader);
            c(classLoader);
            a(classLoader);
            this.x4.a(classLoader);
            m(classLoader);
            n(classLoader);
            j(classLoader);
            d(classLoader);
            g(classLoader);
            f(classLoader);
            b(classLoader);
            Class<?> cls3 = Class.forName("com.android.wm.shell.ShellTaskOrganizer", false, classLoader);
            Class<?> cls4 = Class.forName("android.window.TransitionRequestInfo", false, classLoader);
            final Method method = cls4.getMethod("getTriggerTask", null);
            final Method method2 = cls4.getMethod("getType", null);
            hook(Class.forName("com.android.wm.shell.transition.Transitions", false, classLoader).getDeclaredMethod("requestStartTransition", IBinder.class, cls4)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda107
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(method2, method, chain);
                    return a2;
                }
            });
            hook(cls3.getDeclaredMethod("onTaskAppeared", ActivityManager.RunningTaskInfo.class, SurfaceControl.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda108
                public final Object intercept(XposedInterface.Chain chain) {
                    Object d2;
                    d2 = dev.duo.workspaceprobe.b.this.d(chain);
                    return d2;
                }
            });
            Class<?> cls5 = Class.forName("android.window.TaskAppearedInfo", false, classLoader);
            final Method method3 = cls5.getMethod("getTaskInfo", null);
            final Method method4 = cls5.getMethod("getLeash", null);
            hook(cls3.getDeclaredMethod("onTaskAppeared", cls5)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda109
                public final Object intercept(XposedInterface.Chain chain) {
                    Object b2;
                    b2 = dev.duo.workspaceprobe.b.this.b(method3, method4, chain);
                    return b2;
                }
            });
            Runnable runnable = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda110
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.O();
                }
            };
            this.S1 = runnable;
            this.A1.postDelayed(runnable, 1000L);
            hook(cls3.getDeclaredMethod("onTaskInfoChanged", ActivityManager.RunningTaskInfo.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda111
                public final Object intercept(XposedInterface.Chain chain) {
                    Object e2;
                    e2 = dev.duo.workspaceprobe.b.this.e(chain);
                    return e2;
                }
            });
            hook(cls3.getDeclaredMethod("onTaskVanished", ActivityManager.RunningTaskInfo.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda112
                public final Object intercept(XposedInterface.Chain chain) {
                    Object f2;
                    f2 = dev.duo.workspaceprobe.b.this.f(chain);
                    return f2;
                }
            });
            Log.w("DuoRail", "Rail task hooks ready");
        } catch (ReflectiveOperationException e2) {
            Log.w("DuoRail", "No rail task hooks", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object k(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        boolean z2= (((Configuration) chain.getArg(0)).uiMode & 48) == 32;
        this.x4.a(z2);
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.d(z2);
            }
        });
        return proceed;
    }

    private void l(ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.systemui.LauncherProxyService", false, classLoader);
            for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
                hook(constructor).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda50
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object m2;
                        m2 = dev.duo.workspaceprobe.b.this.m(chain);
                        return m2;
                    }
                });
            }
            for (Method method : cls.getDeclaredMethods()) {
                final String name = method.getName();
                if (name.equals("notifySystemUiStateFlags") || name.equals("notifySysUiStateFlagsForAllDisplays") || name.equals("addCallback") || name.equals("shouldShowSwipeUpUI")) {
                    hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda51
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object a2;
                            a2 = dev.duo.workspaceprobe.b.this.a(name, chain);
                            return a2;
                        }
                    });
                }
            }
            Log.w("DuoRail", "Shade gesture hooks ready");
        } catch (ReflectiveOperationException e2) {
            Log.w("DuoRail", "No shade gesture hooks", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable z(String str) throws PackageManager.NameNotFoundException {
        Drawable drawable;
        PackageManager packageManager = this.i4.getPackageManager();
        Drawable applicationIcon = packageManager.getApplicationIcon(dev.duo.hookprobe.J.g(str));
        int h2 = dev.duo.hookprobe.J.h(str);
        if (h2 == 0) {
            return applicationIcon;
        }
        try {
            drawable = packageManager.getUserBadgedIcon(applicationIcon, C(h2));
        } catch (RuntimeException e2) {
            Log.w("DuoRail", "Sidebar badge " + str + " unavailable: " + e2);
            drawable = applicationIcon;
        }
        return drawable != applicationIcon ? drawable : new Y(applicationIcon);
    }

    private void e(ActivityManager.RunningTaskInfo runningTaskInfo) throws ReflectiveOperationException {
        if (runningTaskInfo == null) {
            return;
        }
        d(runningTaskInfo);
        ComponentName componentName = runningTaskInfo.topActivity;
        if (componentName != null && "com.miui.home".equals(componentName.getPackageName()) && "com.miui.home.launcher.Launcher".equals(componentName.getClassName())) {
            Object obj = runningTaskInfo.getClass().getField("configuration").get(runningTaskInfo);
            Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
            Rect rect = (Rect) obj2.getClass().getMethod("getAppBounds", null).invoke(obj2, null);
            int intValue = ((Integer) obj2.getClass().getMethod("getActivityType", null).invoke(obj2, null)).intValue();
            Object obj3 = runningTaskInfo.getClass().getField("appCompatTaskInfo").get(runningTaskInfo);
            Rect f2 = f(obj3);
            boolean z2 = false;
            if (intValue == 2 && new Rect(0, 0, s0_v, 1712).equals(f2)) {
                z2 = true;
            }
            this.F0.put(Integer.valueOf(runningTaskInfo.taskId), Boolean.valueOf(z2));
            Log.w("DuoWallpaper", "Home task=" + runningTaskInfo.taskId + " eligible=" + z2 + " appBounds=" + rect + " compat=" + obj3);
            return;
        }
        this.F0.remove(Integer.valueOf(runningTaskInfo.taskId));
    }

    public float[] C() {
        if (this.i4 == null || this.N6 == null || this.z5 == null) {
            return null;
        }
        Point r0 = new Point();
        ((DisplayManager) this.i4.getSystemService(DisplayManager.class)).getDisplay(0).getRealSize(r0);
        return new float[]{r0.x, r0.y, c(this.N6) + 98.0f, ((this.k3 && this.a4 == 0 && !this.b4) ? this.z5.h : d(this.z5)) + (this.z5.g / 2.0f), (this.k3 ? this.p3 : d(this.N6)) + 146.0f, Math.min(c(this.N6), c(this.z5))};
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class W implements Runnable {
        static final int v_v = 24;
        static final int w_v = 110;
        static final int x_v = 18;
        static final int y_v = 128;
        final d0 a;
        final View b_v;
        final View c;
        final String d;
        private final Drawable e;
        private final WindowManager f;
        private final float g;
        private final float h;
        private final float i;
        private final int j_v;
        private float l_v;
        private float m;
        private FrameLayout n_v;
        private ImageView o_v;
        private boolean p_v;
        private boolean q_v;
        private K r_v;
        private ScrollView s_v;
        private int k_v = -1;
        private int t_v = -1;

        W(d0 d0Var, View view, View view2, String str, Drawable drawable) {
            this.f = (WindowManager) dev.duo.workspaceprobe.b.this.i4.getSystemService(WindowManager.class);
            this.a = d0Var;
            this.b_v = view;
            this.c = view2;
            this.d = str;
            Drawable.ConstantState constantState = drawable.getConstantState();
            this.e = constantState != null ? constantState.newDrawable() : drawable;
            float f = d0Var.m;
            this.l_v = f;
            this.g = f;
            float f2 = d0Var.n;
            this.m = f2;
            this.h = f2;
            this.i = view2.getAlpha();
            this.j_v = d0Var.o.indexOf(view);
        }

        private K b() {
            FrameLayout frameLayout;
            K k_v = (K) dev.duo.workspaceprobe.b.this.M5.get(Integer.valueOf(dev.duo.workspaceprobe.b.this.G1));
            int[] iArr = (int[]) dev.duo.workspaceprobe.b.this.P5.get(Integer.valueOf(dev.duo.workspaceprobe.b.this.G1));
            if (k_v != null && iArr != null && (frameLayout = k_v.i) != null && frameLayout.getVisibility() == 0) {
                b bVar = dev.duo.workspaceprobe.b.this;
                if (bVar.d(bVar.G1)) {
                    float G1 = iArr[1] + dev.duo.workspaceprobe.b.this.G1();
                    if (this.l_v >= iArr[0]) {
                        float f = this.m;
                        if (f >= G1 && f <= G1 + dev.duo.workspaceprobe.b.this.D1()) {
                            return k_v;
                        }
                    }
                }
            }
            return null;
        }

        private void d() {
            ArrayList arrayList = new ArrayList(this.a.j_v);
            arrayList.add(this.k_v, (Object[]) arrayList.remove(this.j_v));
            this.a.j_v = arrayList;
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                arrayList2.add((String) ((Object[]) obj)[0]);
            }
            Log.w("DuoRail", "Sidebar panel move " + this.d + " " + this.j_v + "->" + this.k_v);
            dev.duo.workspaceprobe.b.this.B(2);
            b bVar = dev.duo.workspaceprobe.b.this;
            bVar.b(dev.duo.hookprobe.J.a(bVar.N3, arrayList2, arrayList2, dev.duo.hookprobe.J.m));
            this.a.d();
            View view = this.k_v < this.a.o_v.size() ? this.a.o_v.get(this.k_v) : null;
            final View childAt = view != null ? ((ViewGroup) ((ViewGroup) view).getChildAt(0)).getChildAt(0) : null;
            if (childAt == null) {
                j();
                return;
            }
            final float alpha = childAt.getAlpha();
            childAt.setAlpha(0.0f);
            this.a.g.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$W$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.W.this.b(childAt, alpha);
                }
            });
        }

        private void e() {
            this.o_v.setX(this.l_v - 64.0f);
            this.o_v.setY(this.m - 64.0f);
            K b_v = b();
            int a = b_v == null ? -1 : a(b_v);
            K k_v = this.r_v;
            if (b_v != k_v || a != this.t_v) {
                if (k_v != null && k_v != b_v) {
                    a(k_v, -1);
                }
                this.r_v = b_v;
                this.t_v = a;
                if (b_v != null) {
                    a(b_v, a);
                }
            }
            int i = b_v == null ? i() : -1;
            if (i != this.k_v) {
                this.k_v = i;
                a(i);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g() {
            this.c.setAlpha(this.i);
            j();
        }

        private int[] h() {
            View view = (View) this.a.g.getParent();
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            return new int[]{iArr[0], iArr[1], view.getWidth(), view.getHeight()};
        }

        private int i() {
            if (this.j_v >= 0 && !this.a.p_v && this.b_v.isAttachedToWindow() && this.a.o_v.indexOf(this.b_v) == this.j_v) {
                int[] h = h();
                float f = this.l_v;
                if (f >= h[0] && f <= r4 + h[2]) {
                    float f2 = this.m;
                    if (f2 >= h[1] && f2 <= r6 + h[3]) {
                        int[] r0 = new int[2];
                        this.a.g.getLocationOnScreen(r0);
                        return dev.duo.hookprobe.J.a(this.l_v - r0[0], this.m - r0[1], this.a.g.getWidth() / 3.0f, ((View) this.b_v.getParent()).getHeight(), 3, this.a.o_v.size());
                    }
                }
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j() {
            FrameLayout frameLayout = this.n_v;
            if (frameLayout == null) {
                return;
            }
            try {
                this.f.removeViewImmediate(frameLayout);
            } catch (RuntimeException e) {
                Log.w("DuoRail", "Sidebar carry remove failed", e);
            }
            this.n_v = null;
        }

        void a(MotionEvent motionEvent) {
            this.l_v = motionEvent.getRawX();
            this.m = motionEvent.getRawY();
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 2) {
                if (this.p_v) {
                    e();
                    return;
                } else {
                    if (Math.hypot(this.l_v - this.g, this.m - this.h) > 24.0d) {
                        dev.duo.workspaceprobe.b.this.o();
                        dev.duo.workspaceprobe.b.this.B(2);
                        a();
                        return;
                    }
                    return;
                }
            }
            if (actionMasked == 1) {
                if (this.p_v) {
                    a(true);
                    return;
                } else {
                    this.a.l_v = null;
                    return;
                }
            }
            if (actionMasked == 3) {
                if (this.p_v) {
                    a(false);
                } else {
                    this.a.l_v = null;
                }
            }
        }

        void c() {
            if (this.q_v) {
                return;
            }
            this.q_v = true;
            this.p_v = false;
            this.a.l_v = null;
            this.b_v.removeCallbacks(this);
            K k_v = this.r_v;
            if (k_v != null) {
                a(k_v, -1);
            }
            j();
        }

        void f() {
            this.b_v.getParent().requestDisallowInterceptTouchEvent(true);
            ((View) this.c.getParent()).animate().scaleX(1.0f).scaleY(1.0f).setDuration(180L).start();
            dev.duo.workspaceprobe.b.this.B(5);
            if (dev.duo.workspaceprobe.b.this.T3) {
                a();
                return;
            }
            int[] iArr = new int[2];
            this.c.getLocationOnScreen(iArr);
            boolean z_v = (iArr[0] + this.c.getWidth()) + 444 <= 939;
            int width = z_v ? iArr[0] + this.c.getWidth() + 24 : Math.max(24, iArr[0] - 444);
            dev.duo.workspaceprobe.b.this.o();
            b bVar = dev.duo.workspaceprobe.b.this;
            bVar.V3 = bVar.new b0(this.d, bVar.L3.contains(this.d), width, iArr[1] + (this.c.getHeight() / 2), z_v ? 0.0f : 420, true);
            dev.duo.workspaceprobe.b.this.V3.d();
            Log.w("DuoRail", "Sidebar panel hold " + this.d);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.q_v || !this.p_v) {
                return;
            }
            K k_v = this.r_v;
            int i = x_v;
            if (k_v != null) {
                ScrollView scrollView = (ScrollView) k_v.j_v.getParent();
                float G1 = (this.m - (((int[]) dev.duo.workspaceprobe.b.this.P5.get(Integer.valueOf(dev.duo.workspaceprobe.b.this.G1))) == null ? 0 : r7[1])) - dev.duo.workspaceprobe.b.this.G1();
                if (G1 < 110.0f) {
                    i = -18;
                } else if (G1 <= scrollView.getHeight() - 110) {
                    i = 0;
                }
                int scrollY = scrollView.getScrollY();
                if (i != 0) {
                    scrollView.scrollBy(0, i);
                }
                if (scrollView.getScrollY() != scrollY) {
                    this.s_v = scrollView;
                    this.t_v = -2;
                    e();
                }
            } else if (this.k_v >= 0) {
                ScrollView scrollView2 = (ScrollView) this.a.g.getParent();
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
                    this.k_v = -2;
                    e();
                }
            }
            this.b_v.postOnAnimation(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(final View view, final float f) {
            view.getLocationOnScreen(new int[2]);
            this.o_v.animate().x(r0[0]).y(r0[1]).scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(200L).setInterpolator(dev.duo.workspaceprobe.b.J).withEndAction(new Runnable() { // from class: dev.duo.workspaceprobe.b$W$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.W.this.a(view, f);
                }
            }).start();
        }

        private void a() {
            this.n_v = new FrameLayout(dev.duo.workspaceprobe.b.this.i4);
            ImageView imageView = new ImageView(dev.duo.workspaceprobe.b.this.i4);
            this.o_v = imageView;
            imageView.setImageDrawable(this.e);
            this.n_v.addView(this.o_v, new FrameLayout.LayoutParams(y_v, y_v));
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 2017, 16777496, -3);
            layoutParams.gravity = 51;
            layoutParams.layoutInDisplayCutoutMode = 3;
            layoutParams.setFitInsetsTypes(0);
            layoutParams.setTitle("DuoSidebarCarry");
            try {
                this.f.addView(this.n_v, layoutParams);
                this.p_v = true;
                this.c.setAlpha(0.3f);
                this.o_v.setScaleX(1.12f);
                this.o_v.setScaleY(1.12f);
                this.o_v.setAlpha(0.92f);
                e();
                this.b_v.postOnAnimation(this);
                Log.w("DuoRail", "Sidebar carry start " + this.d);
            } catch (RuntimeException e) {
                Log.w("DuoRail", "Sidebar carry unavailable", e);
                this.n_v = null;
                this.a.l_v = null;
            }
        }

        private int a(K k_v) {
            ArrayList arrayList = new ArrayList(dev.duo.workspaceprobe.b.this.L3);
            if (!arrayList.remove(this.d) && arrayList.size() >= 12) {
                return -1;
            }
            return dev.duo.hookprobe.J.a((((this.m - (((int[]) dev.duo.workspaceprobe.b.this.P5.get(Integer.valueOf(dev.duo.workspaceprobe.b.this.G1))) == null ? 0 : r1[1])) - dev.duo.workspaceprobe.b.this.G1()) - 20.0f) + ((View) k_v.j.getParent()).getScrollY() + 75.0f, dev.duo.workspaceprobe.b.g0, arrayList.size() + 1);
        }

        private void a(int i) {
            int i2 = this.j_v;
            if (i2 < 0 || i2 >= this.a.o_v.size() || this.a.o_v.get(this.j_v) != this.b_v) {
                return;
            }
            float width = this.a.g.getWidth() / 3;
            float height = ((View) this.b_v.getParent()).getHeight();
            int i3 = 0;
            while (i3 < this.a.o_v.size()) {
                View view = this.a.o_v.get(i3);
                int i4 = this.j_v;
                if (i3 == i4) {
                    view.animate().alpha(i >= 0 ? 0.0f : 1.0f).setDuration(120L).start();
                } else {
                    int i5 = (i < 0 || i4 >= i || i3 <= i4 || i3 > i) ? (i < 0 || i >= i4 || i3 < i || i3 >= i4) ? i3 : i3 + 1 : i3 - 1;
                    view.animate().translationX(((i5 % 3) - (i3 % 3)) * width).translationY(((i5 / 3) - (i3 / 3)) * height).setDuration(180L).setInterpolator(dev.duo.workspaceprobe.b.J).start();
                }
                i3++;
            }
        }

        private void a(K k_v, int i) {
            int i2;
            int indexOf = i < 0 ? -1 : dev.duo.workspaceprobe.b.this.L3.indexOf(this.d);
            int i3 = 0;
            while (i3 < k_v.j.getChildCount()) {
                if (i >= 0) {
                    i2 = (indexOf < 0 || i3 <= indexOf) ? i3 : i3 - 1;
                    if (i3 != indexOf && i2 >= i) {
                        i2++;
                    }
                } else {
                    i2 = i3;
                }
                k_v.j.getChildAt(i3).animate().translationY(i3 == indexOf ? 0.0f : (i2 - i3) * 150.0f).alpha(i3 == indexOf ? 0.3f : 1.0f).setDuration(160L).setInterpolator(dev.duo.workspaceprobe.b.J).start();
                i3++;
            }
        }

        private void a(boolean z_v) {
            int i;
            K k_v;
            this.q_v = true;
            this.p_v = false;
            this.a.l_v = null;
            this.b_v.removeCallbacks(this);
            K k2 = this.r_v;
            if (k2 != null && (k2.j_v.getParent() instanceof e0)) {
                ((e0) this.r_v.j_v.getParent()).a();
            }
            ScrollView scrollView = this.s_v;
            if ((scrollView instanceof e0) && ((k_v = this.r_v) == null || scrollView != k_v.j_v.getParent())) {
                ((e0) this.s_v).a();
            }
            if (z_v && this.r_v != null && this.t_v >= 0) {
                ArrayList arrayList = new ArrayList(dev.duo.workspaceprobe.b.this.L3);
                arrayList.remove(this.d);
                arrayList.add(Math.min(this.t_v, arrayList.size()), this.d);
                Log.w("DuoRail", "Sidebar carry drop " + this.d + " at " + this.t_v);
                dev.duo.workspaceprobe.b.this.B(2);
                this.o_v.animate().scaleX(0.9f).scaleY(0.9f).alpha(0.0f).setDuration(160L).withEndAction(new Runnable() { // from class: dev.duo.workspaceprobe.b$W$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.W.this.j();
                    }
                }).start();
                this.c.setAlpha(this.i);
                if (arrayList.equals(dev.duo.workspaceprobe.b.this.L3)) {
                    dev.duo.workspaceprobe.b.this.p1();
                    return;
                } else {
                    dev.duo.workspaceprobe.b.this.c((List<String>) arrayList);
                    return;
                }
            }
            if (z_v && (i = this.k_v) >= 0 && i != this.j_v && this.a.o_v.indexOf(this.b_v) == this.j_v) {
                d();
                return;
            }
            if (z_v && this.r_v != null) {
                Toast.makeText(dev.duo.workspaceprobe.b.this.i4, "最多固定 12 个应用", 0).show();
            }
            K k3 = this.r_v;
            if (k3 != null) {
                a(k3, -1);
            }
            if (this.k_v >= 0) {
                a(-1);
            }
            Log.w("DuoRail", "Sidebar carry " + (z_v ? "back " : "cancel ") + this.d);
            if (!this.c.isAttachedToWindow()) {
                this.o_v.animate().alpha(0.0f).setDuration(160L).withEndAction(new Runnable() { // from class: dev.duo.workspaceprobe.b$W$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.W.this.j();
                    }
                }).start();
                return;
            }
            this.c.getLocationOnScreen(new int[2]);
            this.o_v.animate().x(r10[0]).y(r10[1]).scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(220L).setInterpolator(dev.duo.workspaceprobe.b.J).withEndAction(new Runnable() { // from class: dev.duo.workspaceprobe.b$W$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.W.this.g();
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(View view, float f) {
            view.setAlpha(f);
            j();
        }
    }

    private final class X implements Runnable {
        static final int k_v = 110;
        static final int l_v = 18;
        final LinearLayout a;
        final ScrollView b_v;
        final View c;
        final int d;
        final int e;
        final int f;
        final float g;
        float h;
        int i;

        X(LinearLayout linearLayout, View view, int i, int i2) {
            this.a = linearLayout;
            ScrollView scrollView = (ScrollView) linearLayout.getParent();
            this.b_v = scrollView;
            this.c = view;
            this.d = i;
            this.e = i2;
            this.f = scrollView.getScrollY();
            float f = dev.duo.workspaceprobe.b.this.X3;
            this.h = f;
            this.g = f;
            this.i = i;
        }

        private void b() {
            this.c.setTranslationY(((this.h - this.g) + this.b_v.getScrollY()) - this.f);
            int a = dev.duo.hookprobe.J.a(((this.c.getTop() + this.c.getTranslationY()) + 48.0f) - this.a.getPaddingTop(), dev.duo.workspaceprobe.b.g0, this.e);
            if (a == this.i) {
                return;
            }
            this.i = a;
            int i = 0;
            while (i < this.e) {
                int i2 = this.d;
                if (i != i2) {
                    this.a.getChildAt(i).animate().translationY((i2 >= a || i <= i2 || i > a) ? (i2 <= a || i < a || i >= i2) ? 0 : dev.duo.workspaceprobe.b.g0 : -150).setDuration(160L).start();
                }
                i++;
            }
        }

        void a() {
            this.b_v.requestDisallowInterceptTouchEvent(true);
            this.c.animate().cancel();
            this.c.setTranslationZ(24.0f);
            this.c.animate().scaleX(1.12f).scaleY(1.12f).alpha(0.85f).setDuration(120L).start();
            this.b_v.postOnAnimation(this);
            Log.w("DuoRail", "Sidebar drag start " + ((String) dev.duo.workspaceprobe.b.this.L3.get(this.d)) + " at " + this.d);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (dev.duo.workspaceprobe.b.this.W3 != this) {
                return;
            }
            float top = ((this.c.getTop() + this.c.getTranslationY()) - this.b_v.getScrollY()) + 48.0f;
            int i = top < 110.0f ? -18 : top > ((float) (this.b_v.getHeight() + (-110))) ? l_v : 0;
            if (i != 0) {
                int scrollY = this.b_v.getScrollY();
                this.b_v.scrollBy(0, i);
                if (this.b_v.getScrollY() != scrollY) {
                    b();
                }
            }
            this.b_v.postOnAnimation(this);
        }

        void a(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 2) {
                this.h = motionEvent.getRawY();
                b();
            } else if (actionMasked == 1) {
                a(true);
            } else if (actionMasked == 3) {
                a(false);
            }
        }

        private void a(boolean z_v) {
            dev.duo.workspaceprobe.b.this.W3 = null;
            this.b_v.removeCallbacks(this);
            ScrollView scrollView = this.b_v;
            if (scrollView instanceof e0) {
                ((e0) scrollView).a();
            }
            List<String> a = dev.duo.hookprobe.J.a((List<String>) dev.duo.workspaceprobe.b.this.L3, this.d, this.i);
            Log.w("DuoRail", "Sidebar drag end " + (z_v ? "drop " : "cancel ") + this.d + "->" + this.i);
            if (!z_v || this.c.getParent() != this.a || dev.duo.workspaceprobe.b.this.L3.equals(dev.duo.workspaceprobe.a)) {
                dev.duo.workspaceprobe.b.this.p1();
            } else {
                dev.duo.workspaceprobe.b.this.B(2);
                dev.duo.workspaceprobe.b.this.c(a);
            }
        }
    }

    void B(int i2) {
        Vibrator vibrator;
        try {
            if (Settings.System.getInt(this.i4.getContentResolver(), "haptic_feedback_enabled", 1) != 0 && (vibrator = (Vibrator) this.i4.getSystemService(Vibrator.class)) != null && vibrator.hasVibrator()) {
                vibrator.vibrate(VibrationEffect.createPredefined(i2), VibrationAttributes.createForUsage(18));
            }
        } catch (RuntimeException e2) {
            Log.w("DuoRail", "Sidebar haptic failed", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c0 extends View {
        private final Paint a;
        boolean b_v;
        boolean c;
        float d;
        private ValueAnimator e;

        c0(Context context) {
            super(context);
            this.a = new Paint(1);
        }

        void a(boolean z_v) {
            this.c = z_v;
            ValueAnimator valueAnimator = this.e;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.d, z_v ? 1.0f : 0.0f);
            this.e = ofFloat;
            ofFloat.setDuration(200L);
            this.e.setInterpolator(dev.duo.workspaceprobe.b.J);
            this.e.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$c0$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    dev.duo.workspaceprobe.b.c0.this.a(valueAnimator2);
                }
            });
            this.e.start();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float width = getWidth();
            float height = getHeight();
            this.a.setStyle(Paint.Style.FILL);
            this.a.setColor(this.b_v ? 536870911 : 335544320);
            float f = width * 0.28f;
            canvas.drawRoundRect(0.0f, 0.0f, width, height, f, f, this.a);
            this.a.setColor(-7434605);
            float f2 = this.d;
            if (f2 < 1.0f) {
                this.a.setAlpha(Math.round((1.0f - f2) * 255.0f));
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
            this.a.setAlpha(Math.round(this.d * 255.0f));
            canvas.save();
            canvas.translate((-width) * 0.12f * (1.0f - this.d), 0.0f);
            this.a.setStyle(Paint.Style.STROKE);
            this.a.setStrokeWidth(width * 0.055f);
            this.a.setStrokeCap(Paint.Cap.ROUND);
            this.a.setStrokeJoin(Paint.Join.ROUND);
            Path path = new Path();
            float f15 = width * 0.43f;
            path.moveTo(f15, height * 0.3f);
            path.lineTo(0.62f * width, 0.5f * height);
            path.lineTo(f15, height * 0.7f);
            canvas.drawPath(path, this.a);
            canvas.restore();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(ValueAnimator valueAnimator) {
            this.d = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class i0 {
        boolean a;
        boolean b_v;
        long c;
        final Map<String, Integer> d;
        final Map<String, Integer> e;
        final Set<String> f;

        private i0() {
            this.d = new HashMap();
            this.e = new HashMap();
            this.f = new HashSet();
        }

        /* synthetic */ i0(C0042k c0042k) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object c(Field field, Field field2, Method method, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        a(chain.getThisObject(), chain.getArg(0), chain.getArg(1), field, field2, method);
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object f(XposedInterface.Chain chain) throws Throwable {
        ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) chain.getArg(0);
        if (runningTaskInfo != null) {
            g(runningTaskInfo.taskId);
        }
        if (runningTaskInfo != null) {
            final int i2 = runningTaskInfo.taskId;
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda141
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.l(i2);
                }
            });
        }
        return chain.proceed();
    }

    private void q() {
        i0 i0Var = this.F2.get(this.D2);
        if (!this.Q2 || this.P2 || !B0() || this.O2 || i0Var == null || !i0Var.b_v) {
            return;
        }
        final Bundle bundle = new Bundle();
        boolean z2= this.k2;
        final boolean C02 = C0();
        bundle.putLong("token", this.L2);
        bundle.putString("page", this.E2);
        bundle.putBoolean("night", z2);
        bundle.putLong("revision", i0Var.c);
        bundle.putInt("color", this.V2);
        bundle.putBoolean("default", C02);
        final String str = this.D2;
        final String str2 = this.E2;
        final int i2 = this.V2;
        int i3= this.B2;
        final int i4 = this.G1;
        final long j2 = this.L2;
        final long j3 = this.M2;
        final long j4 = this.H1;
        this.P2 = true;
        D0();
        b(i4, new M() { public int a(SurfaceControl sc) throws ReflectiveOperationException { return 0; } }, new Consumer() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda35
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                dev.duo.workspaceprobe.b.this.a(j2, j3, i3, i4, j4, str, str2, z2, bundle, C02, i2, (Integer) obj);
            }
        });
    }

    public boolean D() {
        return this.k3;
    }

    private void A(int i2) {
        Object invoke;
        try {
            try {
                invoke = Class.forName("android.hardware.input.InputManagerGlobal").getMethod("getInstance", null).invoke(null, null);
            } catch (ClassNotFoundException e2) {
                invoke = InputManager.class.getMethod("getInstance", null).invoke(null, null);
            }
            Method method = invoke.getClass().getMethod("injectInputEvent", InputEvent.class, Integer.TYPE);
            long uptimeMillis = SystemClock.uptimeMillis();
            int i3 = 0;
            int[] iArr = {0, 1};
            int i4 = 0;
            while (i4 < 2) {
                int i5 = i3;
                method.invoke(invoke, new KeyEvent(uptimeMillis, SystemClock.uptimeMillis(), iArr[i4], i2, 0, 0, -1, 0, 72, 257), Integer.valueOf(i5));
                i4++;
                i3 = i5;
            }
            Log.w("DuoRail", "Rail key " + KeyEvent.keyCodeToString(i2));
        } catch (Throwable th) {
            Log.w("DuoRail", "Rail key failed " + i2, th);
        }
    }

    private void p(ClassLoader classLoader) {
        String str;
        try {
            Class<?> cls = Class.forName("com.android.wm.shell.compatui.letterbox.LetterboxControllerStrategy", false, classLoader);
            Class<?> cls2 = Class.forName("com.android.wm.shell.compatui.letterbox.lifecycle.LetterboxLifecycleEvent", false, classLoader);
            Class<?> cls3 = Class.forName("com.android.wm.shell.compatui.letterbox.LetterboxControllerStrategy$LetterboxMode", false, classLoader);
            Class<?> cls4 = Class.forName("com.android.wm.shell.compatui.letterbox.MultiSurfaceLetterboxController", false, classLoader);
            Class<?> cls5 = Class.forName("com.android.wm.shell.compatui.letterbox.LetterboxSurfaces", false, classLoader);
            Class<?> cls6 = Class.forName("com.android.wm.shell.compatui.letterbox.LetterboxKey", false, classLoader);
            Class<?> cls7 = Class.forName("android.window.WindowContainerToken", false, classLoader);
            final Field declaredField = cls.getDeclaredField("currentMode");
            final Field declaredField2 = cls2.getDeclaredField("taskId");
            final Field declaredField3 = cls2.getDeclaredField("useBlurWallpaper");
            final Field declaredField4 = cls2.getDeclaredField("isBubble");
            final Field declaredField5 = cls2.getDeclaredField("taskBounds");
            final Field declaredField6 = cls6.getDeclaredField("taskId");
            final Field declaredField7 = cls4.getDeclaredField("letterboxMap");
            Field[] fieldArr = {cls5.getDeclaredField("leftSurface"), cls5.getDeclaredField("topSurface"), cls5.getDeclaredField("rightSurface"), cls5.getDeclaredField("bottomSurface")};
            Field[] fieldArr2 = {declaredField, declaredField2, declaredField3, declaredField4, declaredField5, declaredField6, declaredField7};
            for (int i2 = 0; i2 < 7; i2++) {
                fieldArr2[i2].setAccessible(true);
            }
            for (int i3 = 0; i3 < 4; i3++) {
                fieldArr[i3].setAccessible(true);
            }
            final Enum valueOf = Enum.valueOf(cls3, "MULTIPLE_SURFACES");
            Class cls8 = Boolean.TYPE;
            Method declaredMethod = cls4.getDeclaredMethod("createLetterboxSurface", cls6, SurfaceControl.Transaction.class, SurfaceControl.class, cls7, cls8, Rect.class);
            try {
                Method declaredMethod2 = cls4.getDeclaredMethod("updateLetterboxSurfaceBounds", cls6, SurfaceControl.Transaction.class, Rect.class, Rect.class);
                Method declaredMethod3 = cls4.getDeclaredMethod("updateLetterboxSurfaceVisibility", cls6, SurfaceControl.Transaction.class, cls8);
                Method declaredMethod4 = cls4.getDeclaredMethod("destroyLetterboxSurface", cls6, SurfaceControl.Transaction.class);
                Class<?> cls9 = Class.forName("com.android.wm.shell.compatui.letterbox.lifecycle.LetterboxLifecycleControllerImpl", false, classLoader);
                Class<?> type = cls2.getDeclaredField("type").getType();
                Class<?> cls10 = Class.forName("com.android.wm.shell.ShellTaskOrganizer", false, classLoader);
                Class cls11 = Integer.TYPE;
                final Method declaredMethod5 = cls10.getDeclaredMethod("getRunningTaskInfo", cls11);
                final Method declaredMethod6 = cls10.getDeclaredMethod("getTaskLeash", cls11);
                this.z2 = declaredMethod6;
                this.A2 = declaredMethod5;
                final Field declaredField8 = cls2.getDeclaredField("type");
                final Field declaredField9 = cls2.getDeclaredField("displayId");
                final Field declaredField10 = cls2.getDeclaredField("letterboxBounds");
                final Field declaredField11 = cls2.getDeclaredField("taskLeash");
                final Field declaredField12 = cls2.getDeclaredField("activityLeash");
                final Field declaredField13 = cls2.getDeclaredField("isTranslucent");
                final Field declaredField14 = cls2.getDeclaredField("supportsInput");
                final Field declaredField15 = cls2.getDeclaredField("mainWindowHasRoundedCorners");
                final Constructor<?> declaredConstructor = cls2.getDeclaredConstructor(type, cls11, cls11, Rect.class, Rect.class, cls7, SurfaceControl.class, SurfaceControl.class, cls8, cls8, cls8, cls8, cls8);
                try {
                    hook(cls9.getDeclaredMethod("onLetterboxLifecycleEvent", cls2, SurfaceControl.Transaction.class, SurfaceControl.Transaction.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda167
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object a2;
                            a2 = dev.duo.workspaceprobe.b.this.a(declaredField4, declaredField2, declaredMethod5, declaredMethod6, declaredConstructor, declaredField8, declaredField13, declaredField14, declaredField15, declaredField11, declaredField3, declaredField9, declaredField10, declaredField12, chain);
                            return a2;
                        }
                    });
                    this.o2 = fieldArr;
                    hook(cls.getDeclaredMethod("configureLetterboxMode", cls2)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda168
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object a2;
                            a2 = dev.duo.workspaceprobe.b.this.a(declaredField2, declaredField5, declaredField4, declaredField3, declaredField, valueOf, chain);
                            return a2;
                        }
                    });
                    hook(declaredMethod).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda169
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object c2;
                            c2 = dev.duo.workspaceprobe.b.this.c(declaredField6, declaredField7, chain);
                            return c2;
                        }
                    });
                    hook(declaredMethod2).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda170
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object d2;
                            d2 = dev.duo.workspaceprobe.b.this.d(declaredField6, declaredField7, chain);
                            return d2;
                        }
                    });
                    hook(declaredMethod3).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda171
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object b2;
                            b2 = dev.duo.workspaceprobe.b.this.b(declaredField6, chain);
                            return b2;
                        }
                    });
                    hook(declaredMethod4).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda172
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object c2;
                            c2 = dev.duo.workspaceprobe.b.this.c(declaredField6, chain);
                            return c2;
                        }
                    });
                    this.s2 = true;
                    str = "DuoRail";
                } catch (Throwable th) {

                    str = "DuoRail";
                }
            } catch (Throwable th2) {
                throw th2;
                str = "DuoRail";
            }
        } catch (Throwable th3) {
            throw th3;
            str = "DuoRail";
        }
        try {
            Log.w(str, "Strip letterbox hooks ready");
        } catch (Throwable th4) {
            throw th4;
            Log.w(str, "Strip letterbox unavailable; MIUI board kept", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object c(Field field, Field field2, XposedInterface.Chain chain) throws Throwable {
        int i2 = field.getInt(chain.getArg(0));
        Integer num = this.r2.get();
        this.r2.set(Integer.valueOf(i2));
        try {
            Object proceed = chain.proceed();
            this.r2.set(num);
            this.n2 = (Map) field2.get(chain.getThisObject());
            if (this.R0 == null && Looper.myLooper() != null) {
                this.R0 = new Handler(Looper.myLooper());
            }
            if (this.p2.putIfAbsent(Integer.valueOf(i2), 1) == null) {
                b(i2, "create");
            }
            try {
                Object obj = this.n2.get(Integer.valueOf(i2));
                L l2 = this.N5.get(Integer.valueOf(i2));
                if (l2 == null || l2.a != obj) {
                    b(i2, (SurfaceControl.Transaction) chain.getArg(1));
                    this.N5.put(Integer.valueOf(i2), new L(obj, (SurfaceControl) chain.getArg(2)));
                }
                a(i2, (SurfaceControl.Transaction) chain.getArg(1));
                return proceed;
            } catch (Throwable th) {
                Log.w("DuoRail", "App rail decor attach skipped task=" + i2, th);
                return proceed;
            }
        } catch (Throwable th2) {
            this.r2.set(num);
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final String str, final String str2) {
        if (str == null || !this.M0.add(str)) {
            return;
        }
        Long l2 = this.N0.get(str);
        if (l2 != null && SystemClock.uptimeMillis() - l2.longValue() < 2000) {
            this.M0.remove(str);
            return;
        }
        try {
            this.K0.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda64
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.b(str, str2);
                }
            });
        } catch (RejectedExecutionException e2) {
            this.M0.remove(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(final int i2) {
        int i3;
        ValueAnimator remove = this.m2.remove(Integer.valueOf(i2));
        if (remove != null) {
            remove.cancel();
        }
        Integer num = this.l2.get(Integer.valueOf(i2));
        int u2 = u(i2);
        if (num == null) {
            i3 = i2;
        } else if (num.intValue() == u2) {
            i3 = i2;
        } else {
            if (j(i2)) {
                final List<SurfaceControl> v2 = v(i2);
                final K k2 = this.M5.get(Integer.valueOf(i2));
                ValueAnimator ofArgb = ValueAnimator.ofArgb(num.intValue(), u2);
                ofArgb.setDuration(300L);
                ofArgb.setInterpolator(new DecelerateInterpolator());
                final long[] jArr = {-33};
                ofArgb.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda209
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        dev.duo.workspaceprobe.b.this.a(jArr, i2, v2, k2, valueAnimator);
                    }
                });
                ofArgb.addListener(new C0034c(i2, ofArgb));
                this.m2.put(Integer.valueOf(i2), ofArgb);
                ofArgb.start();
                return;
            }
            i3 = i2;
        }
        z(i3);
    }

    private void n(ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.wm.shell.sosc.common.split.DividerSnapAlgorithm", false, classLoader);
            final Field declaredField = cls.getDeclaredField("mSnapMode");
            final Field declaredField2 = cls.getDeclaredField("mDisplayWidth");
            final Field declaredField3 = cls.getDeclaredField("mDisplayHeight");
            final Field declaredField4 = cls.getDeclaredField("mIsLeftRightSplit");
            Field[] fieldArr = {declaredField, declaredField2, declaredField3, declaredField4};
            for (int i2 = 0; i2 < 4; i2++) {
                fieldArr[i2].setAccessible(true);
            }
            hook(cls.getDeclaredMethod("calculateTargets", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda10
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(declaredField2, declaredField3, declaredField4, declaredField, chain);
                    return a2;
                }
            });
            Log.i("DuoSplitRatio", "Native inner landscape five-stop hook ready");
        } catch (ReflectiveOperationException e2) {
            Log.e("DuoSplitRatio", "Native split ratio entry unavailable", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread b(Runnable runnable) {
        Thread thread = new Thread(runnable, "DuoConfigPrefetch");
        thread.setDaemon(true);
        return thread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(final int i2) {
        Bundle call;
        Boolean bool = null;
        try {
            call = this.i4.getContentResolver().call(Uri.parse("content://com.lsposed.miduo.config"), "standbyClock", (String) null, (Bundle) null);
        } catch (RuntimeException e2) {
            Log.e("DuoStandby", "Clock switch read failed", e2);
        }
        if (call != null && call.containsKey("on")) {
            bool = Boolean.valueOf(call.getBoolean("on"));
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda132
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(i2, bool);
                }
            });
        }
        Log.e("DuoStandby", "Clock switch read failed: " + (call == null ? "no response" : call.getString("error")));
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda132
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(i2, bool);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object b(Field field, Field field2, Method method, XposedInterface.Chain chain) throws Throwable {
        Object[] array = chain.getArgs().toArray();
        if (a(array[0], field)) {
            array[2] = Boolean.FALSE;
        }
        Object proceed = chain.proceed(array);
        a(chain.getThisObject(), array[0], array[1], field, field2, method);
        return proceed;
    }

    private void f(final int i2) {
        (this.R0 != null ? this.R0 : this.A1).post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda128
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.k(i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(String str) {
        ComponentName componentName;
        this.F2.remove(str);
        for (ActivityManager.RunningTaskInfo runningTaskInfo : this.G0.values()) {
            ComponentName componentName2 = runningTaskInfo.topActivity;
            if (componentName2 != null && str.equals(componentName2.getPackageName()) && (!str.equals(this.D2) || runningTaskInfo.taskId != this.C2_v)) {
                this.x2.remove(Integer.valueOf(runningTaskInfo.taskId));
                z(runningTaskInfo.taskId);
            }
        }
        if (str.equals(this.D2)) {
            this.y2 = "";
            this.B2++;
            ActivityManager.RunningTaskInfo runningTaskInfo2 = this.G0.get(Integer.valueOf(this.G1));
            if (runningTaskInfo2 == null || (componentName = runningTaskInfo2.topActivity) == null) {
                return;
            }
            a(runningTaskInfo2.taskId, componentName);
        }
    }

    private FrameLayout w(int i2) {
        FrameLayout frameLayout = new FrameLayout(this.i4);
        frameLayout.setBackground(new N(i2 == 0 ? n0_v : 60.0f, i2));
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(View view) {
        v();
        a(true, (Rect) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s(int i2) {
        if (i2 == this.X4) {
            X1();
        }
    }

    /* JADX WARN: Can't_v fix incorrect switch cases order, some code will duplicate */
    private Boolean w(String str) throws ReflectiveOperationException, Settings.SettingNotFoundException {
        char c2;
        ContentResolver contentResolver = this.i4.getContentResolver();
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
                return Boolean.valueOf(Settings.System.getInt(contentResolver, "screen_paper_mode_enabled") != 0);
            case 1:
                if (Settings.System.getInt(contentResolver, "screen_off_timeout") == D0_v && a((Integer) null) > 0) {
                    r5 = true;
                }
                return Boolean.valueOf(r5);
            case 2:
                return Boolean.valueOf(((AudioManager) this.i4.getSystemService(AudioManager.class)).getRingerMode() != 2);
            case 3:
                return Boolean.valueOf(Settings.Global.getInt(contentResolver, "airplane_mode_on") != 0);
            case 4:
                return Boolean.valueOf(Settings.System.getInt(contentResolver, "accelerometer_rotation") == 0);
            case 5:
                return Boolean.valueOf(b(this.i4));
            case 6:
                return Boolean.valueOf(Settings.System.getInt(contentResolver, "screen_brightness_mode") == 1);
            case 7:
                if (z0 == null) {
                    return null;
                }
                return this.Y6.get(z0);
            case WorkspaceProtocol.RELEASE_TASK /* 8 */:
                return Boolean.valueOf(((PowerManager) this.i4.getSystemService(PowerManager.class)).isPowerSaveMode());
            case WorkspaceProtocol.REGISTER_SOURCE /* 9 */:
                int intValue = ((Integer) WifiManager.class.getMethod("getWifiApState", null).invoke(this.i4.getSystemService(WifiManager.class), null)).intValue();
                if (intValue == C0_v) {
                    return Boolean.TRUE;
                }
                if (intValue == 11) {
                    return Boolean.FALSE;
                }
                return null;
            case '\n':
                return Boolean.valueOf(((LocationManager) this.i4.getSystemService(LocationManager.class)).isLocationEnabled());
            case WorkspaceProtocol.LOOKUP_SOURCE /* 11 */:
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                if (defaultAdapter == null) {
                    return null;
                }
                int state = defaultAdapter.getState();
                if (state == 12) {
                    return Boolean.TRUE;
                }
                if (state == 10) {
                    return Boolean.FALSE;
                }
                return null;
            default:
                throw new IllegalArgumentException(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(boolean z2) {
        if (this.G3 == z2) {
            return;
        }
        this.G3 = z2;
        i2();
        Q1();
        ArrayList arrayList = new ArrayList(this.M5.values());
        synchronized (this.L5) {
            arrayList.addAll(this.L5);
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            c(((K) obj).q_v);
        }
    }

    private boolean s() {
        return t() && !this.I1 && this.M5.containsKey(Integer.valueOf(this.G1)) && d(this.G1) && !this.I6.contains(Integer.valueOf(this.G1));
    }

    private void v() {
        this.Q2 = false;
        this.V2 = 0;
        this.U2 = 0;
        r1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object b(Field field, Field field2, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (field.getInt(chain.getArg(0)) == 0) {
            SurfaceControl surfaceControl = (SurfaceControl) chain.getArg(1);
            this.E1 = field2.get(chain.getArg(0));
            this.D1 = surfaceControl;
            Log.w("DuoRail", "Display area appeared " + surfaceControl);
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda160
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.P();
                }
            });
        }
        return proceed;
    }

    private void x() {
        final Bundle bundle = new Bundle();
        bundle.putBoolean("end", true);
        bundle.putLong("token", this.L2);
        this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(bundle);
            }
        });
    }

    public DisplayManager B() {
        return (DisplayManager) this.i4.getSystemService(DisplayManager.class);
    }

    public long[] z() {
        long[] jArr;
        synchronized (this.q6) {
            P p2 = this.r6;
            O o2 = this.m6;
            if (p2 != null && o2 != null) {
                long j2 = p2.p_v;
                if (j2 == o2.a) {
                    jArr = new long[]{p2.c, p2.l_v, p2.m, j2};
                }
            }
            jArr = new long[]{0, 0, 0, 0};
        }
        return jArr;
    }

    private boolean v(String str) {
        if (str == null || dev.duo.hookprobe.J.e.equals(str) || dev.duo.hookprobe.J.f.equals(str)) {
            return false;
        }
        return (str.startsWith("app:") && this.i4.getPackageManager().getLaunchIntentForPackage(str.substring(4)) == null) ? false : true;
    }

    private boolean x(int i2) {
        return Boolean.TRUE.equals(this.V5.get(Integer.valueOf(i2))) && j(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(View view) {
        q();
    }

    private void i(ClassLoader classLoader) throws ReflectiveOperationException {
        Class<?> cls = Class.forName("com.android.systemui.shade.NotificationShadeWindowControllerImpl", false, classLoader);
        Class<?> cls2 = Class.forName("com.android.systemui.shade.NotificationShadeWindowState", false, classLoader);
        String[] strArr = {"keyguardShowing", "bouncerShowing", "dozing", "shadeOrQsExpanded", "controlCenterExpanded"};
        final Field[] fieldArr = new Field[5];
        for (int i2 = 0; i2 < 5; i2++) {
            Field declaredField = cls2.getDeclaredField(strArr[i2]);
            fieldArr[i2] = declaredField;
            declaredField.setAccessible(true);
        }
        final Field declaredField2 = cls2.getDeclaredField("keyguardOccluded");
        declaredField2.setAccessible(true);
        hook(cls.getDeclaredMethod("apply", cls2)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda76
            public final Object intercept(XposedInterface.Chain chain) {
                Object a2;
                a2 = dev.duo.workspaceprobe.b.this.a(fieldArr, declaredField2, chain);
                return a2;
            }
        });
        hook(Dialog.class.getDeclaredMethod("show", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda77
            public final Object intercept(XposedInterface.Chain chain) {
                Object g2;
                g2 = dev.duo.workspaceprobe.b.this.g(chain);
                return g2;
            }
        });
        hook(Dialog.class.getDeclaredMethod("hide", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda78
            public final Object intercept(XposedInterface.Chain chain) {
                Object h2;
                h2 = dev.duo.workspaceprobe.b.this.h(chain);
                return h2;
            }
        });
        hook(Dialog.class.getDeclaredMethod("dismiss", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda79
            public final Object intercept(XposedInterface.Chain chain) {
                Object i3;
                i3 = dev.duo.workspaceprobe.b.this.i(chain);
                return i3;
            }
        });
        Class<?> cls3 = Class.forName("com.android.systemui.statusbar.CommandQueue", false, classLoader);
        for (Method method : cls3.getDeclaredMethods()) {
            if (method.getName().equals("setImeWindowStatus")) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                int i3= 1;
                while (true) {
                    if (i3 >= parameterTypes.length) {
                        i3 = -1;
                        break;
                    } else if (parameterTypes[i3] == Integer.TYPE) {
                        break;
                    } else {
                        i3++;
                    }
                }
                if (parameterTypes.length != 0 && parameterTypes[0] == Integer.TYPE && i3 >= 0) {
                    hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda80
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object a2;
                            a2 = dev.duo.workspaceprobe.b.this.a(i3, chain);
                            return a2;
                        }
                    });
                    Log.w("DuoRail", "IME status hook " + Arrays.toString(parameterTypes));
                }
            }
        }
        hook(cls3.getDeclaredMethod("showShutdownUi", Boolean.TYPE, String.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda81
            public final Object intercept(XposedInterface.Chain chain) {
                Object j2;
                j2 = dev.duo.workspaceprobe.b.this.j(chain);
                return j2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(String str) {
        String str2;
        Bundle call;
        try {
            Bundle bundle = new Bundle();
            bundle.putString("set", str);
            str2 = null;
            call = this.i4.getContentResolver().call(Uri.parse("content://com.lsposed.miduo.config"), "railSidebarApps", (String) null, bundle);
            if (call != null) {
                str2 = call.getString("saved");
            }
        } catch (RuntimeException e2) {
            Log.w("DuoRail", "Sidebar pinned save failed", e2);
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda39
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.e0();
                }
            });
        }
        if (!str.equals(str2)) {
            throw new IllegalStateException(call == null ? "no response" : call.getString("error", "saved " + str2));
        }
        Log.w("DuoRail", "Sidebar pinned saved " + str);
        O1();
    }

    public Display A() {
        return p0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object e(XposedInterface.Chain chain) throws Throwable {
        this.S0 = chain.getThisObject();
        h((ActivityManager.RunningTaskInfo) chain.getArg(0));
        c((ActivityManager.RunningTaskInfo) chain.getArg(0));
        Object proceed = chain.proceed();
        a((ActivityManager.RunningTaskInfo) chain.getArg(0), (SurfaceControl) null);
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(String str) {
        ComponentName componentName;
        for (ActivityManager.RunningTaskInfo runningTaskInfo : this.G0.values()) {
            ComponentName componentName2 = runningTaskInfo.topActivity;
            if ((componentName2 != null && str.equals(componentName2.getPackageName())) || ((componentName = runningTaskInfo.baseActivity) != null && str.equals(componentName.getPackageName()))) {
                a(runningTaskInfo.taskId, (SurfaceControl.Transaction) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:127:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0232  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void r() {
        P p2;
        double d2;
        double d3;
        boolean z2;
        int i2;
        synchronized (this.q6) {
            p2 = this.r6;
            this.s6 = false;
        }
        O o2 = this.m6;
        if (p2 == null || o2 == null || p2.p_v != o2.a) {
            return;
        }
        if (!v0()) {
            Log.i("DuoSidebar", "Master switch off: native frame connection closed");
            try {
                o2.b_v.close();
                return;
            } catch (IOException e2) {
                Log.w("DuoSidebar", "Native frame connection not closed", e2);
                return;
            }
        }
        long j2 = p2.m;
        if (j2 != this.u6) {
            this.u6 = j2;
            this.v6 = 0L;
            this.w6 = 0L;
            b(0.0f);
        }
        long j3 = p2.k_v;
        if (j3 > this.w6 && j3 < p2.j_v) {
            a("Home overlay close", false, true, j3);
        }
        long j4 = p2.j_v;
        if (j4 > this.v6) {
            a((float) p2.g, (float) p2.h, j4);
        }
        long j5 = p2.k_v;
        if (j5 > this.w6 && j5 >= p2.j_v) {
            a("Home overlay close", false, true, j5);
        }
        this.v6 = p2.j_v;
        this.w6 = p2.k_v;
        if (p2.i == (this.Q6 ? 1L : 0L) && Double.isFinite(p2.f)) {
            double d4 = p2.f;
            if (d4 >= 0.0d && d4 <= 1.0d) {
                float f2 = (float) d4;
                if (f2 != this.O6) {
                    a(f2);
                }
            }
        }
        Consumer<long[]> consumer = this.A6;
        if (consumer != null) {
            d2 = 1.0d;
            d3 = 0.0d;
            z2 = true;
            consumer.accept(new long[]{p2.c, p2.l_v, p2.m, p2.p_v});
        } else {
            d2 = 1.0d;
            d3 = 0.0d;
            z2 = true;
        }
        b(p0());
        boolean z3 = (p2.c & 4) != 0 ? z2 : false;
        if (z3 != this.t6) {
            this.t6 = z3;
            Log.i("DuoSidebar", "home editing=" + z3);
            if (this.C1_v) {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    a(transaction);
                    transaction.apply();
                    transaction.close();
                } finally {
                }
            }
        }
        if (!q0()) {
            return;
        }
        double d5 = p2.d;
        long j6 = p2.l_v;
        long j7 = p2.n_v;
        long j8 = p2.m;
        int i3 = p2.b_v;
        int i4 = this.d6;
        if (j6 <= 0 || j6 < this.g6 || j8 <= 0 || j7 <= 0 || !Double.isFinite(d5) || d5 < d3 || d5 > d2 || !Double.isFinite(p2.e)) {
            return;
        }
        if (j8 != this.l6) {
            this.l6 = j8;
            this.k6 = 0L;
            this.j6 = 0L;
        }
        if (j7 < this.k6 || j7 < this.j6) {
            return;
        }
        this.j6 = j7;
        this.g6 = j6;
        this.p6 = o2.a;
        boolean z4 = (p2.a != 0 || (p2.c & 1) == 0 || i3 < 0 || i3 > 2) ? false : z2;
        this.b6 = z4;
        this.d6 = i3;
        boolean z5 = (p2.c & 2) != 0 ? z2 : false;
        this.c6 = z5;
        if (i3 != 0) {
            this.X5 = false;
        } else if (z4 && z5 && !this.I1) {
            this.X5 = z2;
        }
        this.f6 = (float) d5;
        this.h6++;
        this.i6 = Math.max(this.i6, SystemClock.uptimeMillis() - j6);
        if (i3 != 2) {
            i2 = 1;
        } else {
            if (this.b6) {
                a("official Dock Recents", true, false);
                if (!this.C1_v) {
                    SurfaceControl.Transaction transaction2 = new SurfaceControl.Transaction();
                    try {
                        a(transaction2);
                        transaction2.apply();
                        transaction2.close();
                    } finally {
                    }
                } else {
                    m2();
                }
                if (i3 == this.e6) {
                    this.e6 = i3;
                    Log.i("DuoSidebar", "scene=" + i3 + " valid=" + this.b6 + " run=" + this.c6 + " progress=" + d5 + " native=" + p2.e + " app=" + this.G5 + " home=" + this.I1 + " epoch=" + j7 + " recents=" + this.J6 + " frames=" + this.h6 + " delayMs=" + (SystemClock.uptimeMillis() - j6));
                    return;
                }
                return;
            }
            i2 = 1;
        }
        if (i3 == i2 && i4 == 2 && this.b6) {
            a("official Dock App", false, false);
        } else if (i3 == 0 && i4 == 2 && this.b6) {
            a("official Dock Home", false, false);
        }
        if (!this.C1_v) {
        }
        if (i3 == this.e6) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object b(Method method, Method method2, XposedInterface.Chain chain) throws Throwable {
        this.S0 = chain.getThisObject();
        h((ActivityManager.RunningTaskInfo) method.invoke(chain.getArg(0), null));
        c((ActivityManager.RunningTaskInfo) method.invoke(chain.getArg(0), null));
        Object proceed = chain.proceed();
        Object arg = chain.getArg(0);
        a((ActivityManager.RunningTaskInfo) method.invoke(arg, null), (SurfaceControl) method2.invoke(arg, null));
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(boolean z2) {
        if (!this.Z1.isEmpty()) {
            k(this.Z1);
        }
        if (!this.Q0 || z2 == this.k2) {
            return;
        }
        this.k2 = z2;
        String str = z2 ? "dark mode on" : "dark mode off";
        if (!this.I1) {
            d(this.F1, str);
        }
        l(str);
    }

    private ActivityOptions f(String str) throws ReflectiveOperationException {
        return (ActivityOptions) Class.forName("android.util.MiuiMultiWindowUtils").getMethod("getActivityOptions", Context.class, String.class, Boolean.TYPE).invoke(null, this.i4, str, Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(View view) {
        B1();
    }

    private void l() throws ReflectiveOperationException {
        n1();
        this.i4 = (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
        L1();
        final h0 h0Var = new h0(this.i4);
        this.W0 = h0Var;
        h0Var.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda40
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.workspaceprobe.b.this.l(view);
            }
        });
        h0Var.a(new Consumer() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda41
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                dev.duo.workspaceprobe.b.this.m((View) obj);
            }
        });
        R r2 = new R("status", h0Var, 963.0f, T, 205, h0.D, 0, 0.0f, 40);
        this.N6 = r2;
        this.h4.add(r2);
        U u2 = new U(this.i4);
        this.z1 = u2;
        N n2 = new N(50.0f);
        this.y5 = n2;
        u2.setBackground(n2);
        u2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda42
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.workspaceprobe.b.this.n(view);
            }
        });
        u2.setOnLongClickListener(new View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda43
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean o2;
                o2 = dev.duo.workspaceprobe.b.this.o(view);
                return o2;
            }
        });
        u2.setVisibility(this.H3 ? 0 : 8);
        R r3 = new R(this, "search", u2, 1011.0f, 1544, 100, 100, 5, 50.0f);
        this.z5 = r3;
        this.h4.add(r3);
        this.x5.add(this.z5);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_TICK");
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        this.i4.registerReceiver(new C0039h(), new IntentFilter(y0), null, this.A1, 2);
        this.i4.registerReceiver(new C0040i(h0Var), intentFilter, null, this.A1);
        Runnable runnable = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(h0Var);
            }
        };
        this.i4.getContentResolver().registerContentObserver(Settings.System.getUriFor("battery_indicator_style"), false, new C0041j(this.A1, runnable));
        runnable.run();
        Runnable runnable2 = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.b(h0Var);
            }
        };
        this.i4.getContentResolver().registerContentObserver(Settings.Global.getUriFor("airplane_mode_on"), false, new C0044m(this.A1, runnable2));
        runnable2.run();
        try {
            this.i4.getContentResolver().registerContentObserver(m, false, new C0045n(this.A1));
        } catch (RuntimeException e2) {
            Log.w("DuoRail", "Status style observer unavailable", e2);
        }
        Y1();
        i2();
        try {
            this.X0 = new f0(h0Var);
            ((SubscriptionManager) this.i4.getSystemService(SubscriptionManager.class)).addOnSubscriptionsChangedListener(this.i4.getMainExecutor(), this.X0);
        } catch (Throwable th) {
            Log.w("DuoRail", "Signal level unavailable", th);
        }
        final WifiManager wifiManager = (WifiManager) this.i4.getSystemService(WifiManager.class);
        Runnable runnable3 = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(wifiManager, h0Var);
            }
        };
        Runnable runnable4 = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(h0Var, wifiManager);
            }
        };
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter2.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter2.addAction("android.net.wifi.RSSI_CHANGED");
        this.i4.registerReceiver(new C0046o(runnable4), intentFilter2, null, this.A1);
        runnable3.run();
        ((ConnectivityManager) this.i4.getSystemService(ConnectivityManager.class)).registerDefaultNetworkCallback(new C0047p(h0Var, runnable3), this.A1);
        this.Y0 = new C0043l(h0Var);
        ((TelephonyManager) this.i4.getSystemService(TelephonyManager.class)).registerTelephonyCallback(this.i4.getMainExecutor(), this.Y0);
        IntentFilter intentFilter3 = new IntentFilter();
        intentFilter3.addAction("android.intent.action.SCREEN_OFF");
        intentFilter3.addAction("android.intent.action.SCREEN_ON");
        intentFilter3.addAction("android.intent.action.USER_PRESENT");
        intentFilter3.addAction("android.intent.action.CONFIGURATION_CHANGED");
        intentFilter3.addAction("android.intent.action.ACTION_SHUTDOWN");
        this.i4.registerReceiver(new C0048q(), intentFilter3, null, this.A1);
        this.i4.getContentResolver().registerContentObserver(Uri.parse("content://com.lsposed.miduo.config/standbyClock"), false, new C0049r(this.A1));
        o1();
        X1();
    }

    private void g(final int i2) {
        this.T5.remove(Integer.valueOf(i2));
        this.x2.remove(Integer.valueOf(i2));
        this.l2.remove(Integer.valueOf(i2));
        this.V5.remove(Integer.valueOf(i2));
        this.T0.remove(Integer.valueOf(i2));
        this.q2.remove(Integer.valueOf(i2));
        this.O5.remove(Integer.valueOf(i2));
        this.I0.remove(Integer.valueOf(i2));
        this.G0.remove(Integer.valueOf(i2));
        this.H0.add(Integer.valueOf(i2));
        if (this.H0.size() > 256) {
            this.H0.removeIf(new Predicate() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda75
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean a2;
                    a2 = dev.duo.workspaceprobe.b.a(i2, (Integer) obj);
                    return a2;
                }
            });
        }
    }

    private boolean j(int i2) {
        return h(g(this.G0.get(Integer.valueOf(i2))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object n(XposedInterface.Chain chain) throws Throwable {
        Rect rect;
        ComponentName componentName;
        ComponentName componentName2;
        Object proceed = chain.proceed();
        Rect rect2 = (Rect) chain.getArg(0);
        Rect rect3 = (Rect) chain.getArg(1);
        Rect rect4 = (Rect) chain.getArg(2);
        int intValue = ((Integer) chain.getArg(3)).intValue();
        ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) chain.getArg(4);
        ActivityManager.RunningTaskInfo runningTaskInfo2 = (ActivityManager.RunningTaskInfo) chain.getArg(5);
        if (intValue != 0 || runningTaskInfo == null || runningTaskInfo.topActivity == null || !(runningTaskInfo2 == null || runningTaskInfo2.topActivity == null)) {
            rect = (intValue != 1 || runningTaskInfo2 == null || runningTaskInfo2.topActivity == null || !(runningTaskInfo == null || runningTaskInfo.topActivity == null)) ? null : rect3;
        } else {
            rect = rect4;
        }
        String str = "";
        final String packageName = (runningTaskInfo == null || (componentName2 = runningTaskInfo.topActivity) == null) ? "" : componentName2.getPackageName();
        if (runningTaskInfo2 != null && (componentName = runningTaskInfo2.topActivity) != null) {
            str = componentName.getPackageName();
        }
        final String str2 = str;
        boolean z2= (packageName.isEmpty() || str2.isEmpty() || "com.miui.home".equals(packageName) || "com.miui.home".equals(str2) || rect2 == null || rect2.width() != O || rect2.height() != P) ? false : true;
        final ActivityManager.RunningTaskInfo runningTaskInfo3 = z2 ? runningTaskInfo : null;
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda186
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(runningTaskInfo3, z2, packageName, str2);
            }
        });
        final int i2 = (((Boolean) chain.getArg(6)).booleanValue() || rect2 == null || rect2.width() != O || rect2.height() != P || rect == null || rect.isEmpty() || rect.width() >= rect2.width() || !rect2.contains(rect) || rect.top != rect2.top || rect.bottom != rect2.bottom) ? -1 : rect2.right - rect.right;
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda187
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.n(i2);
            }
        });
        return proceed;
    }

    private boolean E(int i2) {
        Integer num;
        if (i2 == this.B2 && q0() && j(this.C2_v)) {
            i0 i0Var = this.F2.get(this.D2);
            List<int[]> a2 = i0Var == null ? Collections.EMPTY_LIST : a(i0Var, this.E2, a(this.C2_v));
            if (a2.isEmpty()) {
                num = null;
            } else {
                Integer num2 = this.G2.get(this.E2);
                num = Integer.valueOf(i0Var.f.contains(this.E2) ? a(this.C2_v) : a2.get(0)[1]);
                for (int[] iArr : a2) {
                    if (num2 != null && iArr[1] == num2.intValue()) {
                        num = num2;
                    }
                }
            }
            c(this.C2_v, (num == null || num.intValue() == a(this.C2_v)) ? 0 : num.intValue());
            if (num != null) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread a(Runnable runnable) {
        Thread thread = new Thread(runnable, "DuoConfigLookup");
        thread.setDaemon(true);
        return thread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(boolean z2) {
        this.c2 = z2;
        if (this.Z1.isEmpty()) {
            return;
        }
        k(this.Z1);
    }

    private static boolean f(ActivityManager.RunningTaskInfo runningTaskInfo) throws ReflectiveOperationException {
        Object obj = runningTaskInfo.getClass().getField("configuration").get(runningTaskInfo);
        Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
        Rect rect = (Rect) obj2.getClass().getMethod("getBounds", null).invoke(obj2, null);
        return rect != null && rect.width() == 1168 && rect.height() == 1712;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Class cls, Class cls2, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        Integer num = this.r2.get();
        if (num != null && (proceed instanceof SurfaceControl) && x(num.intValue())) {
            int u2 = u(num.intValue());
            try {
                cls.getMethod("setColor", cls2, float[].class).invoke(chain.getArg(0), proceed, new float[]{Color.red(u2) / 255.0f, Color.green(u2) / 255.0f, Color.blue(u2) / 255.0f});
                Log.w("DuoRail", "Letterbox colour at creation task=" + num + " color=" + Integer.toHexString(u2) + " surface=" + chain.getArg(2));
                return proceed;
            } catch (Throwable th) {
                Log.w("DuoRail", "Letterbox colour at creation failed task=" + num, th);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(View view) {
        v();
        a(true, (Rect) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final String str, String str2) {
        long a2 = this.J0.a();
        a.b a3 = a(str, str2);
        this.M0.remove(str);
        if (a3 == null) {
            this.N0.put(str, Long.valueOf(SystemClock.uptimeMillis()));
            return;
        }
        this.N0.remove(str);
        this.A1.post(new Runnable() { public void run() { } });
        if (this.J0.b(str, a3, a2)) {
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda100
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.p(str);
                }
            });
        }
    }

    private void e(final R r2) {
        r2.n = true;
        Handler handler = this.R0 == null ? this.A1 : this.R0;
        Runnable runnable = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda126
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
    public /* synthetic */ Object j(XposedInterface.Chain chain) throws Throwable {
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.Q();
            }
        });
        return chain.proceed();
    }

    private boolean t() {
        return this.Q5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object c(Field field, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        int i2 = field.getInt(chain.getArg(0));
        this.N5.remove(Integer.valueOf(i2));
        this.P5.remove(Integer.valueOf(i2));
        try {
            b(i2, (SurfaceControl.Transaction) chain.getArg(1));
        } catch (Throwable th) {
            Log.w("DuoRail", "App rail decor detach skipped task=" + i2, th);
        }
        if (this.p2.remove(Integer.valueOf(i2)) != null) {
            b(i2, "destroy");
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void p(final String str) {
        ArrayList arrayList = new ArrayList(this.G0.values());
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) obj;
            if (str.equals(g(runningTaskInfo))) {
                z(runningTaskInfo.taskId);
            }
        }
        Handler handler = this.R0;
        if (handler != null) {
            handler.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda102
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.j(str);
                }
            });
        }
        a.b b2 = this.J0.b(str);
        if (b2 != null && !this.I1 && str.equals(this.F1)) {
            a(b2.b);
        }
        if (str.equals(this.Z1)) {
            k(str);
        }
        P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public void c(K k2) {
        try {
            R r2 = k2.b_v;
            if (r2 != null) {
                r2.b();
            }
            try {
                SurfaceControl surfaceControl = k2.p_v;
                if (surfaceControl != null) {
                    surfaceControl.release();
                }
            } finally {
                SurfaceControl surfaceControl2 = k2.a;
                if (surfaceControl2 != null) {
                    surfaceControl2.release();
                }
            }
        } catch (Throwable th) {
            try {
                SurfaceControl surfaceControl3 = k2.p_v;
                if (surfaceControl3 != null) {
                    surfaceControl3.release();
                }
                SurfaceControl surfaceControl4 = k2.a;
                if (surfaceControl4 != null) {
                    surfaceControl4.release();
                }
                throw th;
            } finally {
                SurfaceControl surfaceControl5 = k2.a;
                if (surfaceControl5 != null) {
                    surfaceControl5.release();
                }
            }
        }
    }

    private void j() {
        final Intent launchIntentForPackage;
        if (q0() && this.g4.isEmpty()) {
            FrameLayout frameLayout = new FrameLayout(this.i4);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(956301311);
            gradientDrawable.setStroke(2, 1090519039);
            gradientDrawable.setCornerRadius(60.0f);
            frameLayout.setBackground(gradientDrawable);
            this.y4 = gradientDrawable;
            String[][] strArr = {new String[]{"dial", ""}, new String[]{"pkg", "com.android.browser"}, new String[]{"pkg", "com.android.mms"}, new String[]{"pkg", "com.miui.player"}};
            PackageManager packageManager = this.i4.getPackageManager();
            for (int i2 = 0; i2 < 4; i2++) {
                if ("dial".equals(strArr[i2][0])) {
                    launchIntentForPackage = new Intent("android.intent.action.DIAL");
                } else {
                    launchIntentForPackage = packageManager.getLaunchIntentForPackage(strArr[i2][1]);
                }
                if (launchIntentForPackage != null) {
                    launchIntentForPackage.addFlags(268435456);
                    ImageView imageView = new ImageView(this.i4);
                    try {
                        imageView.setImageDrawable(packageManager.getActivityIcon(launchIntentForPackage));
                    } catch (Exception e2) {
                        Log.w("DuoRail", "icon", e2);
                    }
                    imageView.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda179
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            dev.duo.workspaceprobe.b.this.a(launchIntentForPackage, view);
                        }
                    });
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(120, 120);
                    layoutParams.gravity = 1;
                    layoutParams.topMargin = (i2 * 162) + 30;
                    frameLayout.addView(imageView, layoutParams);
                }
            }
            R r2 = new R(this, dev.duo.hookprobe.J.f, frameLayout, 971.0f, 626, 180, 665, 60, 60.0f);
            this.t5 = r2;
            this.h4.add(r2);
            a(strArr);
            Log.w("DuoLegacyDock", "outer rebuilt hosts=" + r0() + " epoch=" + this.e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class K {
        SurfaceControl a;
        R b_v;
        FrameLayout c;
        FrameLayout d;
        final ArrayList<J> e;
        boolean f;
        S g;
        final ImageView[] h;
        FrameLayout i;
        LinearLayout j_v;
        c0 k_v;
        long l_v;
        long m;
        FrameLayout n_v;
        boolean o_v;
        SurfaceControl p_v;
        h0 q_v;
        U r_v;
        N s_v;
        volatile int t_v;
        int u_v;
        long v_v;
        int w_v;
        int x_v;
        volatile int y_v;
        float z_v;

        private K() {
            this.e = new ArrayList<>();
            this.h = new ImageView[3];
            this.l_v = -1L;
            this.m = -1L;
            this.t_v = -1;
            this.v_v = -1L;
            this.w_v = -1;
            this.y_v = -1;
            this.z_v = Float.NaN;
        }

        /* synthetic */ K(b bVar, C0042k c0042k) {
            this();
        }
    }

    private void b(Set<String> set) {
        try {
            ActivityManager activityManager = (ActivityManager) this.i4.getSystemService(ActivityManager.class);
            Method method = ActivityManager.class.getMethod("forceStopPackageAsUser", String.class, Integer.TYPE);
            HashSet hashSet = new HashSet();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                int i2 = runningAppProcessInfo.uid / 100000;
                for (String str : runningAppProcessInfo.pkgList) {
                    if (set.contains(str) && hashSet.add(str + ":" + i2)) {
                        method.invoke(activityManager, str, Integer.valueOf(i2));
                        Log.w("DuoRail", "Duo switch restart pkg=" + str + " user=" + i2);
                    }
                }
            }
        } catch (Throwable th) {
            Log.w("DuoRail", "Duo switch restart failed " + set, th);
        }
    }

    private void k() {
        LinearLayout linearLayout = new LinearLayout(this.i4);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(18, 12, 18, 12);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-394759);
        gradientDrawable.setCornerRadius(22.0f);
        gradientDrawable.setStroke(2, -4604217);
        linearLayout.setBackground(gradientDrawable);
        TextView textView = new TextView(this.i4);
        this.a3 = textView;
        textView.setTextSize(14.0f);
        this.a3.setTextColor(-14671580);
        linearLayout.addView(this.a3, new LinearLayout.LayoutParams(-1, 60));
        final float[] fArr = new float[4];
        this.a3.setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda91
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean a2;
                a2 = dev.duo.workspaceprobe.b.this.a(fArr, view, motionEvent);
                return a2;
            }
        });
        TextView textView2 = new TextView(this.i4);
        this.b3 = textView2;
        textView2.setTextSize(12.0f);
        this.b3.setTextColor(-11183260);
        this.b3.setMaxLines(2);
        linearLayout.addView(this.b3, new LinearLayout.LayoutParams(-1, 104));
        LinearLayout linearLayout2 = new LinearLayout(this.i4);
        linearLayout2.addView(a("取色", new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda92
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.workspaceprobe.b.this.f(view);
            }
        }), new LinearLayout.LayoutParams(0, 78, 1.0f));
        linearLayout2.addView(a("点选位置", new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda93
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.workspaceprobe.b.this.g(view);
            }
        }), new LinearLayout.LayoutParams(0, 78, 1.0f));
        linearLayout2.addView(a("结束", new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda94
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.workspaceprobe.b.this.h(view);
            }
        }), new LinearLayout.LayoutParams(0, 78, 1.0f));
        linearLayout.addView(linearLayout2);
        LinearLayout linearLayout3 = new LinearLayout(this.i4);
        this.c3 = a("正确，保存", new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda95
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.workspaceprobe.b.this.i(view);
            }
        });
        this.d3 = a("不对，重取", new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda96
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.workspaceprobe.b.this.j(view);
            }
        });
        TextView a2 = a("跳过", new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda97
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.workspaceprobe.b.this.k(view);
            }
        });
        this.e3 = a2;
        TextView[] textViewArr = {this.c3, this.d3, a2};
        for (int i2 = 0; i2 < 3; i2++) {
            linearLayout3.addView(textViewArr[i2], new LinearLayout.LayoutParams(0, 78, 1.0f));
        }
        linearLayout.addView(linearLayout3);
        this.Y2 = new R("pick_mode", linearLayout, 90.0f, 90, 780, 350, 0, 22.0f, 40);
    }

    private static void q(View view) {
        view.performHapticFeedback(1);
    }

    private void c(ActivityManager.RunningTaskInfo runningTaskInfo) {
        Object obj;
        if (runningTaskInfo == null) {
            return;
        }
        d(runningTaskInfo);
        if (j(runningTaskInfo.taskId)) {
            try {
                if (f(runningTaskInfo) && (obj = runningTaskInfo.getClass().getField("appCompatTaskInfo").get(runningTaskInfo)) != null) {
                    Field field = obj.getClass().getField("miuiShouldShowBlurWallpaper");
                    obj.getClass().getField("miuiLetterboxBackgroundType").setInt(obj, 1);
                    if (field.getBoolean(obj)) {
                        field.setBoolean(obj, false);
                        if (this.T0.add(Integer.valueOf(runningTaskInfo.taskId))) {
                            Log.w("DuoRail", "Solid letterbox kept for task=" + runningTaskInfo.taskId);
                        }
                    }
                }
            } catch (Throwable th) {
                Log.w("DuoRail", "Solid letterbox check failed", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(int i2) {
        if (this.e5 == i2) {
            return;
        }
        this.e5 = i2;
        y();
    }

    public Bundle E() throws ReflectiveOperationException {
        R r2;
        R r3;
        boolean z2;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        Object obj = null;
        boolean z3 = false;
        a((Bundle) null, false);
        if (this.i4 != null && (r2 = this.N6) != null && (r3 = this.z5) != null) {
            R[] rArr = {r2, r3};
            for (int i2 = 0; i2 < 2; i2++) {
                R r4 = rArr[i2];
                if (!r4.b_v.isValid()) {
                    return e("侧栏图层已失效 " + r4.c);
                }
            }
            Point point = new Point();
            p0().getRealSize(point);
            Bundle bundle = new Bundle();
            bundle.putInt("width", point.x);
            bundle.putInt("height", point.y);
            bundle.putBoolean("editing", this.t6);
            synchronized (this.q6) {
                P p2 = this.r6;
                bundle.putInt("contentFlags", p2 == null ? 0 : p2.c);
            }
            float f7 = this.N6.e + 98.0f;
            R r5 = this.z5;
            float f8 = 158.0f;
            bundle.putFloatArray("coverGeometry", new float[]{1168.0f, 1712.0f, f7, (r5.h - 7) + (r5.g / 2.0f), this.I3[0] + 158.0f + 146.0f, Math.min(this.N6.e, this.z5.e)});
            float f9 = 1175.0f;
            float f10 = this.N6.e + 1175.0f + R + 98.0f;
            R r6 = this.z5;
            float f11 = r6.h + X + (r6.g / 2.0f);
            float f12 = this.I3[2];
            float f13 = S;
            bundle.putFloatArray("innerGeometry", new float[]{2364.0f, 1672.0f, f10, f11, f12 + S + 146.0f, Math.min(this.N6.e, this.z5.e) + 1175.0f + R});
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            bundle.putParcelableArrayList("layers", arrayList);
            try {
                R[] rArr2 = {this.N6, this.z5};
                int i3 = 0;
                while (i3 < 2) {
                    R r7 = rArr2[i3];
                    if (r7 != this.z5 || this.H3) {
                        SurfaceControl surfaceControl = (SurfaceControl) SurfaceControl.class.getDeclaredMethod("mirrorSurface", SurfaceControl.class).invoke(obj, r7.b_v);
                        Bundle bundle2 = new Bundle();
                        bundle2.putParcelable("mirror", surfaceControl);
                        arrayList.add(bundle2);
                        bundle2.putString("name", r7.c);
                        int i4 = r7 == this.N6 ? h0.D : r7.g;
                        f2 = f13;
                        f3 = f8;
                        f4 = f9;
                        z2 = z3;
                        try {
                            bundle2.putParcelable("frame", new Rect(Math.round(c(r7)), Math.round(d(r7)), Math.round(c(r7)) + r7.f, Math.round(d(r7)) + i4));
                            float c2 = c(r7);
                            float d2 = d(r7);
                            float[] fArr = new float[2];
                            fArr[z2 ? 1 : 0] = c2;
                            fArr[1] = d2;
                            bundle2.putFloatArray("position", fArr);
                            bundle2.putInt("width", r7.f);
                            bundle2.putInt("height", i4);
                            float f14 = r7.e;
                            if (r7 == this.N6) {
                                f5 = this.I3[z2 ? 1 : 0] + f3;
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
                            float f17 = r7.e + f4 + R;
                            if (r7 == this.N6) {
                                f6 = this.I3[2] + f2;
                            } else {
                                f6 = r7.h + X;
                            }
                            float f18 = r7.f;
                            float[] fArr3 = new float[4];
                            fArr3[z2 ? 1 : 0] = f17;
                            fArr3[1] = f6;
                            fArr3[2] = f18;
                            fArr3[3] = f16;
                            bundle2.putFloatArray("innerFrame", fArr3);
                            bundle2.putInt("blur", r7.i);
                            bundle2.putFloat("corner", r7.j_v);
                            float f19 = 0.0f;
                            float w02 = (!this.C1_v || this.t6 || u()) ? 0.0f : w0();
                            if (r7 != this.z5 || !this.G6) {
                                f19 = w02;
                            }
                            bundle2.putFloat("alpha", f19);
                            bundle2.putFloat("scale", r7 == this.z5 ? (f19 * 0.06f) + 0.94f : 1.0f);
                        } catch (ReflectiveOperationException | RuntimeException e2) {
                            Exception exc = e2;
                            try {
                                a(bundle, z2);
                                throw exc;
                            } catch (ReflectiveOperationException e3) {
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
            } catch (ReflectiveOperationException | RuntimeException e4) {
                // e = e4;  // e is a Field
                z2 = z3;
            }
        } else {
            return e("侧栏尚未建立");
        }
    }

    private void e(K k2) {
        b bVar= this;
        String[] strArr = bVar.S5;
        ArrayList<J> arrayList = k2.e;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            J j2 = arrayList.get(i2);
            i2++;
            k2.c.removeView(j2);
        }
        k2.e.clear();
        k2.l_v = -1L;
        int e2 = dev.duo.hookprobe.J.e(strArr);
        int d2 = dev.duo.hookprobe.J.d(strArr);
        if (d2 > 0) {
            a(k2);
        } else {
            FrameLayout frameLayout = k2.i;
            if (frameLayout != null) {
                frameLayout.setVisibility(8);
            }
        }
        k2.f = false;
        int i3 = Color.luminance(k2.t >= 0 ? bVar.u(k2.t) : a) <= 0.45f ? 1 : 0;
        int b2 = b(0);
        int i4 = 0;
        int i5 = -1;
        while (i4 < strArr.length) {
            final String str = strArr[i4];
            if (i4 == e2) {
                b2 += bVar.D1() + 14;
                i4 += d2 - 1;
            } else if (dev.duo.hookprobe.J.f.equals(str)) {
                if (i5 < 0) {
                    i5 = b2;
                }
                b2 += d() + 30;
                i4 += 2;
            } else {
                if (str != null && !dev.duo.hookprobe.J.e.equals(str)) {
                    if (bVar.v(str)) {
                        J j3 = new J(bVar, bVar.i4, str);
                        j3.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda73
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                dev.duo.workspaceprobe.b.this.d(str, view);
                            }
                        });
                        if (str.startsWith("wechat") || str.startsWith("alipay")) {
                            final String str2 = str + ".pay";
                            j3.setOnLongClickListener(new View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda74
                                @Override // android.view.View.OnLongClickListener
                                public final boolean onLongClick(View view) {
                                    boolean e3;
                                    e3 = dev.duo.workspaceprobe.b.this.e(str2, view);
                                    return e3;
                                }
                            });
                        }
                        j3.a(i3 != 0 ? -1 : -13618632, i3 ^ 1);
                        k2.e.add(j3);
                        bVar.a(k2, j3, 993.0f, b2, 136, 136, 0.0f);
                    }
                }
                b2 += g0;
            }
            i4++;
            bVar = this;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) k2.d.getLayoutParams();
        layoutParams.width = 180;
        layoutParams.height = d();
        k2.d.setLayoutParams(layoutParams);
        k2.f = i5 >= 0;
        if (i5 >= 0) {
            k2.d.setX(8.0f);
            k2.d.setY(i5 + w_v);
        }
        k2.d.setVisibility((i5 < 0 || k2.u_v <= 0) ? 4 : 0);
        k2.w_v = -1;
        if (k2.t >= 0) {
            d(k2);
        }
        k2.c.requestLayout();
        k2.c.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object g(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        final Object thisObject = chain.getThisObject();
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda122
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.b(thisObject);
            }
        });
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(final String str) {
        long a2 = this.J0.a();
        a.b a3 = a(str, "app notified");
        if (a3 == null) {
            return;
        }
        this.A1.post(new Runnable() { public void run() { } });
        dev.duo.workspaceprobe.a.C0005a a4 = this.J0.a(str, a3, a2);
        if (a4 == null) {
            return;
        }
        if (a4.a(a3)) {
            b(Collections.singleton(str));
        }
        if (a4.b) {
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda138
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.n(str);
                }
            });
        }
    }

    private void f(ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.wm.shell.transition.Transitions", false, classLoader);
            Class<?> cls2 = Class.forName("android.window.TransitionInfo", false, classLoader);
            final Method method = cls2.getMethod("getChanges", null);
            final Method method2 = cls2.getMethod("getType", null);
            Class<?> cls3 = Class.forName("android.window.TransitionInfo$Change", false, classLoader);
            final Method method3 = cls3.getMethod("getMode", null);
            final Method method4 = cls3.getMethod("getTaskInfo", null);
            hook(cls.getDeclaredMethod("onTransitionReadyInner", IBinder.class, cls2, SurfaceControl.Transaction.class, SurfaceControl.Transaction.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda199
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(method, method3, method4, method2, chain);
                    return a2;
                }
            });
            hook(cls.getDeclaredMethod("onFinish", IBinder.class, Class.forName("android.window.WindowContainerTransaction", false, classLoader))).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda200
                public final Object intercept(XposedInterface.Chain chain) {
                    Object b2;
                    b2 = dev.duo.workspaceprobe.b.this.b(chain);
                    return b2;
                }
            });
            hook(cls.getDeclaredMethod("onTransitionAbort", IBinder.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda201
                public final Object intercept(XposedInterface.Chain chain) {
                    Object c2;
                    c2 = dev.duo.workspaceprobe.b.this.c(chain);
                    return c2;
                }
            });
            Log.w("DuoRail", "Mode transition hooks ready");
        } catch (ReflectiveOperationException e2) {
            Log.w("DuoRail", "No mode transition hooks", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(boolean z2) {
        if (this.Z3 == z2) {
            return;
        }
        this.Z3 = z2;
        i1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(boolean z2, Method method, XposedInterface.Chain chain) throws Throwable {
        ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) chain.getArg(0);
        c(runningTaskInfo);
        Object proceed = chain.proceed();
        if (z2 && a(runningTaskInfo)) {
            try {
                method.invoke(chain.getThisObject(), runningTaskInfo);
                Log.w("DuoRail", "Letterbox appear -> taskInfo task=" + runningTaskInfo.taskId);
                return proceed;
            } catch (Throwable th) {
                Log.w("DuoRail", "Letterbox appear -> taskInfo failed task=" + runningTaskInfo.taskId, th);
            }
        }
        return proceed;
    }

    private void g(ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.systemui.statusbar.notification.MiuiNotificationListener", false, classLoader);
            Method[] methodArr = {cls.getDeclaredMethod("onListenerConnected", null), cls.getDeclaredMethod("onNotificationPosted", StatusBarNotification.class, NotificationListenerService.RankingMap.class), cls.getDeclaredMethod("onNotificationRemoved", StatusBarNotification.class, NotificationListenerService.RankingMap.class, Integer.TYPE)};
            for (int i2 = 0; i2 < 3; i2++) {
                Method method = methodArr[i2];
                final boolean equals = method.getName().equals("onNotificationPosted");
                hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda147
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object a2;
                        a2 = dev.duo.workspaceprobe.b.this.a(equals, chain);
                        return a2;
                    }
                });
            }
            Log.i("DuoRail", "Notification icon hooks ready");
        } catch (Throwable th) {
            Log.w("DuoRail", "Notification icon hooks unavailable", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object d(Field field, Field field2, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        int i2 = 0;
        int i3 = field.getInt(chain.getArg(0));
        Map map = (Map) field2.get(chain.getThisObject());
        if (map != null && map.containsKey(Integer.valueOf(i3))) {
            Rect rect = (Rect) chain.getArg(2);
            Rect rect2 = (Rect) chain.getArg(3);
            if (rect != null && rect2 != null && !rect2.isEmpty()) {
                i2 = Math.max(0, rect.right - rect2.right);
            }
            int i4 = i2;
            Integer num = this.p2.get(Integer.valueOf(i3));
            int intValue = (i4 << 1) | (num == null ? 1 : num.intValue() & 1);
            if (num == null || num.intValue() != intValue) {
                this.p2.put(Integer.valueOf(i3), Integer.valueOf(intValue));
                b(i3, "bounds");
            }
            try {
                a(i3, (SurfaceControl.Transaction) chain.getArg(1), rect, rect2, i4);
                return proceed;
            } catch (Throwable th) {
                Log.w("DuoRail", "App rail decor bounds skipped task=" + i3, th);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(int i2) {
        int u2;
        int b2;
        if (j(i2) && (b2 = b(i2, (u2 = u(i2)))) >= 0) {
            Integer num = this.x2.get(Integer.valueOf(i2));
            Log.w("DuoRail", "Letterbox colour repainted task=" + i2 + " color=" + Integer.toHexString(u2) + " surfaces=" + b2 + " tone=" + (num == null ? "none" : Integer.toHexString(num.intValue())) + " page=" + this.y2);
            final K k2 = this.M5.get(Integer.valueOf(i2));
            if (k2 != null) {
                this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.d(k2);
                    }
                });
            }
        }
    }

    static boolean b(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    private int b(int i2, int i3) {
        List<SurfaceControl> v2 = v(i2);
        if (a(i2, v2, this.M5.get(Integer.valueOf(i2)), i3)) {
            return v2.size();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean c(String str) {
        return str == null || "android".equals(str) || "com.miui.home".equals(str) || "com.android.systemui".equals(str) || dev.duo.icons.g.a.equals(str) || "dev.duo.workspaceprobe".equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(int i2) {
        if (this.t4 == i2) {
            return;
        }
        this.t4 = i2;
        Log.i("DuoSplitHome", "Right inset=" + i2);
        P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object b(Field field, XposedInterface.Chain chain) throws Throwable {
        int intValue;
        Object proceed = chain.proceed();
        int i2 = field.getInt(chain.getArg(0));
        Integer num = this.p2.get(Integer.valueOf(i2));
        if (num != null && (intValue = (num.intValue() & (-2)) | (((Boolean) chain.getArg(2)).booleanValue() ? 1 : 0)) != num.intValue()) {
            this.p2.put(Integer.valueOf(i2), Integer.valueOf(intValue));
            b(i2, "visibility");
        }
        try {
            c(i2, (SurfaceControl.Transaction) chain.getArg(1));
            return proceed;
        } catch (Throwable th) {
            Log.w("DuoRail", "App rail decor visibility skipped task=" + i2, th);
            return proceed;
        }
    }

    private void c(int i2, int i3) {
        Integer remove = i3 == 0 ? this.x2.remove(Integer.valueOf(i2)) : this.x2.put(Integer.valueOf(i2), Integer.valueOf(i3));
        if (remove == null) {
            if (i3 == 0) {
                return;
            }
        } else if (remove.intValue() == i3) {
            return;
        }
        Log.w("DuoRail", "Page tone task=" + i2 + " " + (remove == null ? "none" : Integer.toHexString(remove.intValue())) + " -> " + (i3 != 0 ? Integer.toHexString(i3) : "none") + " page=" + this.y2);
        f(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(View view) {
        if (!this.H3 || this.G6) {
            return;
        }
        a(new Intent("android.search.action.GLOBAL_SEARCH").addFlags(268435456));
    }

    private int u(int i2) {
        String g2 = g(this.G0.get(Integer.valueOf(i2)));
        a.b b2 = g2 == null ? null : this.J0.b(g2);
        if (b2 == null || !b2.a || !q0()) {
            return a;
        }
        Integer num = this.x2.get(Integer.valueOf(i2));
        return num != null ? num.intValue() : b2.f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Method method, XposedInterface.Chain chain) throws Throwable {
        try {
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) method.invoke(chain.getArg(0), null);
            e(runningTaskInfo);
            c(runningTaskInfo);
        } catch (ReflectiveOperationException e2) {
            Log.w("DuoWallpaper", "Task observation failed", e2);
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        g0 g0Var = this.s5;
        this.s5 = null;
        if (g0Var != null) {
            this.A1.removeCallbacks(g0Var.f);
            IBinder iBinder = g0Var.b_v;
            if (iBinder != null) {
                iBinder.unlinkToDeath(g0Var.g, 0);
            }
            ResultReceiver resultReceiver = g0Var.c;
            if (resultReceiver != null) {
                resultReceiver.send(3, null);
            }
        }
        s1();
    }

    private void d(long j2) {
        this.A1.removeCallbacks(this.H2);
        this.A1.postDelayed(this.H2, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean c(View view, MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 1 && this.Z2 != null) {
            if (motionEvent.getEventTime() - motionEvent.getDownTime() >= 600) {
                r1();
                return true;
            }
            final long j2 = this.M2;
            final long j3 = this.L2;
            final int max = Math.max(2, Math.min(960, (int) motionEvent.getX()));
            final int max2 = Math.max(2, Math.min(1709, (int) motionEvent.getY()));
            r1();
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                transaction.setVisibility(this.Y2.b_v, false).apply();
                transaction.close();
                this.A1.postDelayed(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda206
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

    private void j(boolean z2) {
        String str;
        if (z2) {
            str = "alipays://platformapi/startapp?appId=20000056&chInfo=ch_xiaomiLeft";
        } else {
            str = "alipays://platformapi/startapp?appId=10000007&sourceId=xiaomiLeft&source=shortcut&showOthers=true&chInfo=ch_xiaomiLeft";
        }
        try {
            a(new Intent("android.intent.action.VIEW").setData(Uri.parse(str)).setPackage("com.eg.android.AlipayGphone").addFlags(343932928));
            Log.w("DuoRail", "Rail alipay pay=" + z2);
        } catch (Throwable th) {
            a("支付宝", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        b0 b0Var = this.V3;
        this.V3 = null;
        if (b0Var != null) {
            b0Var.b();
        }
    }

    private void d(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo == null || this.H0.contains(Integer.valueOf(runningTaskInfo.taskId))) {
            return;
        }
        this.G0.putIfAbsent(Integer.valueOf(runningTaskInfo.taskId), runningTaskInfo);
    }

    private void b(final int i2, String str) {
        Integer num = this.p2.get(Integer.valueOf(i2));
        Log.w("DuoRail", "Strip task=" + i2 + " shown=" + D(i2) + " width=" + (num == null ? 0 : num.intValue() >> 1) + " via " + str);
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda174
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.r(i2);
            }
        });
    }

    private boolean u() {
        return t() && !this.I1 && this.M5.containsKey(Integer.valueOf(this.G1)) && d(this.G1) && !this.n3 && !this.X5;
    }

    private static int d() {
        return c(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object o(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (((Integer) chain.getArg(3)).intValue() == 2) {
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda63
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.S();
                }
            });
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Field field, Field field2, Method method, XposedInterface.Chain chain) throws Throwable {
        Object[] array = chain.getArgs().toArray();
        int i2 = field.getInt(array[0]);
        if (x(i2)) {
            array[4] = Boolean.FALSE;
        }
        Integer num = this.r2.get();
        this.r2.set(Integer.valueOf(i2));
        try {
            Object proceed = chain.proceed(array);
            this.r2.set(num);
            a(chain.getThisObject(), chain.getArg(0), chain.getArg(1), field, field2, method);
            return proceed;
        } catch (Throwable th) {
            this.r2.set(num);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(String str, View view) {
        if (s()) {
            y(str);
        }
    }

    private List<String> d(List<String> list) {
        PackageManager packageManager = this.i4.getPackageManager();
        ArrayList arrayList = new ArrayList(list);
        final HashMap hashMap = new HashMap();
        try {
            for (Map.Entry entry : (Set<Map.Entry>) ((Map) Class.forName("android.util.MiuiMultiWindowUtils").getMethod("readFreeformTimestamps", Context.class).invoke(null, this.i4)).entrySet()) {
                long j2 = 0;
                if (entry.getValue() instanceof Iterable) {
                    for (Object obj : (Iterable) entry.getValue()) {
                        if (obj instanceof Number) {
                            j2 = Math.max(j2, ((Number) obj).longValue());
                        }
                    }
                }
                hashMap.put(String.valueOf(entry.getKey()), Long.valueOf(j2));
            }
        } catch (ReflectiveOperationException | RuntimeException e2) {
            Log.w("DuoRail", "Sidebar recents unavailable", e2);
        }
        ArrayList arrayList2 = new ArrayList(hashMap.keySet());
        Collections.sort(arrayList2, new Comparator() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda207
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                int a2;
                a2 = dev.duo.workspaceprobe.b.a(hashMap, (String) obj2, (String) obj3);
                return a2;
            }
        });
        int size = arrayList2.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            Object obj2 = arrayList2.get(i2);
            i2++;
            String str = (String) obj2;
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
    public /* synthetic */ boolean o(View view) {
        if (!this.H3 || !R0() || this.G6) {
            return true;
        }
        n0();
        return true;
    }

    private void b(final String str, final i0 i0Var) {
        this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(str, i0Var);
            }
        });
    }

    private void o(boolean z2) {
        if (this.Q6 == z2) {
            return;
        }
        this.Q6 = z2;
        this.O6 = 0.0f;
    }

    private void b(final int i2, final M m2, final Consumer<Integer> consumer) {
        (this.R0 == null ? this.A1 : this.R0).post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda159
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(i2, m2, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(Object obj) {
        this.O1.remove(obj);
        P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(View view) {
        this.K2 = this.E2 + "/" + this.V2;
        v();
        E(this.B2);
        this.J2 = "本次已跳过，可随时手动取色";
        D0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Bundle bundle) {
        String string = bundle.getString("package", "");
        if (this.L2 != bundle.getLong("token") || !string.equals(this.I2)) {
            v();
            this.S2 = false;
            this.R2 = false;
            this.I2 = string;
            this.L2 = bundle.getLong("token");
            this.J2 = "";
            this.K2 = "";
            E(this.B2);
            i1();
        }
        this.g3 = false;
        j2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(boolean z2) {
        this.A1.removeCallbacks(this.H6);
        if (z2) {
            l(true);
        } else {
            this.A1.postDelayed(this.H6, 150L);
        }
    }

    private void k(ClassLoader classLoader) {
        try {
            hook(Class.forName("com.android.wm.shell.recents.RecentsTransitionHandler$1", false, classLoader).getDeclaredMethod("onGestureStateUpdated", Integer.TYPE)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda114
                public final Object intercept(XposedInterface.Chain chain) {
                    Object l2;
                    l2 = dev.duo.workspaceprobe.b.this.l(chain);
                    return l2;
                }
            });
            Log.w("DuoRail", "Recents hooks ready");
        } catch (Throwable th) {
            Log.w("DuoRail", "No recents hooks", th);
        }
    }

    private void g(K k2) {
        ArrayList<J> arrayList = k2.e;
        int size = arrayList.size();
        int i2 = 0;
        J j2 = null;
        while (i2 < size) {
            J j3 = arrayList.get(i2);
            i2++;
            J j4 = j3;
            if ("lastapp".equals(j4.a)) {
                j2 = j4;
            }
        }
        if (j2 == null) {
            return;
        }
        Object[] m02 = m0();
        j2.e(m02 != null ? (String) m02[1] : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(K k2, View view) {
        if (s()) {
            if (this.U3 != null) {
                p();
                return;
            }
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            view.getLocationOnScreen(iArr);
            k2.i.getLocationOnScreen(iArr2);
            this.S3 = ((G1() + iArr[1]) - iArr2[1]) + 48;
            A0();
        }
    }

    private void g() {
        if (this.C1_v && this.I1) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                if (a(transaction)) {
                    transaction.apply();
                }
                transaction.close();
            } catch (Throwable th) {
                try {
                    transaction.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Field field, Field field2, XposedInterface.Chain chain) throws Throwable {
        if (field.getInt(chain.getArg(0)) == 0) {
            Object obj = field2.get(chain.getArg(0));
            Object obj2 = this.E1;
            if (obj2 != null && obj != null && !obj.equals(obj2)) {
                Log.w("DuoRail", "Display area vanished event ignored: not the one in use");
            } else {
                this.D1 = null;
                this.E1 = null;
                Log.w("DuoRail", "Display area vanished");
                this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda38
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.N();
                    }
                });
            }
        }
        return chain.proceed();
    }

    private void k(boolean z2) {
        Intent component;
        try {
            if (z2) {
                component = new Intent("android.intent.action.VIEW").setComponent(new ComponentName("com.tencent.mm", "com.tencent.mm.plugin.offline.ui.WalletOfflineCoinPurseUI")).putExtra("key_entry_scene", 2);
            } else {
                component = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setComponent(new ComponentName("com.tencent.mm", "com.tencent.mm.plugin.scanner.ui.BaseScanUI"));
            }
            a(component.addFlags(343932928));
            Log.w("DuoRail", "Rail wechat pay=" + z2);
        } catch (Throwable th) {
            a("微信", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Object obj) {
        this.O1.add(obj);
        P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str, View view) {
        if (s()) {
            p();
            if (this.Q3) {
                r(str);
            } else {
                s(str);
            }
        }
    }

    private void b(ImageView imageView) {
        if (this.x3.containsKey(imageView)) {
            return;
        }
        View view = (View) imageView.getParent();
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        this.x3.put(imageView, new Object[]{new WeakReference(view), new FrameLayout.LayoutParams((FrameLayout.LayoutParams) view.getLayoutParams()), Integer.valueOf(layoutParams.width), Integer.valueOf(layoutParams.height), Float.valueOf(imageView.getTranslationX()), Float.valueOf(imageView.getTranslationY())});
    }

    private void d(ClassLoader classLoader) {
        try {
            final Class<?> cls = Class.forName("com.android.keyguard.shortcut.MiuiShortcutController", false, classLoader);
            final Method declaredMethod = cls.getDeclaredMethod("onSystemUIAction$1", Bundle.class, String.class);
            declaredMethod.setAccessible(true);
            hook(cls.getDeclaredMethod("addShortcutViews", FrameLayout.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda191
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(declaredMethod, cls, chain);
                    return a2;
                }
            });
            Class<?> cls2 = Class.forName("com.android.keyguard.panel.KeyguardPanelViewController", false, classLoader);
            final Field declaredField = cls2.getDeclaredField("unlockAlphaAndScaleAnimator");
            declaredField.setAccessible(true);
            for (Method method : cls2.getDeclaredMethods()) {
                if (method.getName().equals("startUnlockKeyguardDismissAnim")) {
                    hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda192
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object a2;
                            a2 = dev.duo.workspaceprobe.b.this.a(declaredField, chain);
                            return a2;
                        }
                    });
                }
            }
            Log.i("DuoKeyguard", "Official shortcut layout and unlock hooks ready");
        } catch (Throwable th) {
            Log.e("DuoKeyguard", "Official keyguard layout unavailable", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(List<String> list) {
        List<String> a2 = dev.duo.hookprobe.J.a(this.M3, this.L3, list, 12);
        this.M3 = Collections.unmodifiableList(a2);
        ArrayList arrayList = new ArrayList(list);
        for (String str : this.K3) {
            if (!this.L3.contains(str) && !arrayList.contains(str)) {
                arrayList.add(str);
            }
        }
        this.K3 = Collections.unmodifiableList(arrayList);
        this.L3 = Collections.unmodifiableList(list);
        p1();
        d0 d0Var = this.U3;
        if (d0Var != null) {
            d0Var.d();
        }
        final String b2 = dev.duo.hookprobe.J.b(a2);
        this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda203
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.q(b2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        ViewTreeObserver viewTreeObserver = this.B3;
        this.B3 = null;
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.A3);
        }
        if (viewTreeObserver == null || str == null) {
            return;
        }
        Log.i("DuoKeyguard", "Keyguard per-frame listeners=0 (" + str + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Method method, Method method2, XposedInterface.Chain chain) throws Throwable {
        int intValue = ((Integer) method.invoke(chain.getArg(1), null)).intValue();
        ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) method2.invoke(chain.getArg(1), null);
        if ((intValue == 1 || intValue == 3) && runningTaskInfo != null && runningTaskInfo.topActivity != null && runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) == 0) {
            final String g2 = g(runningTaskInfo);
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda146
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.k(g2);
                }
            });
        }
        return chain.proceed();
    }

    private List<LauncherActivityInfo> b(String str, int i2) {
        try {
            return ((LauncherApps) this.i4.getSystemService(LauncherApps.class)).getActivityList(str, C(i2));
        } catch (RuntimeException e2) {
            Log.w("DuoRail", "Sidebar activities " + str + "@" + i2 + " unavailable", e2);
            return Collections.EMPTY_LIST;
        }
    }

    private float c(R r2) {
        if (!this.b4) {
            int i2 = this.a4;
            return (i2 == 0 || !(r2 == this.N6 || r2 == this.z5)) ? r2.e + i2 : r2.e + i2 + R;
        }
        if (r2 == this.N6) {
            return 1438.0f;
        }
        if (r2 == this.z5) {
            return 1486.0f;
        }
        if (r2 == this.u5) {
            return 314.0f;
        }
        return r2 == this.v5 ? e(4) + 338 : r2.e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str, View view) {
        if (s()) {
            D(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean b(K k2, String str, View view) {
        if (!s()) {
            return false;
        }
        a(k2, view, str);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(boolean z2) {
        if (this.T3 == z2) {
            return;
        }
        this.T3 = z2;
        this.Y3 = z2;
        p1();
        this.Y3 = false;
        d0 d0Var = this.U3;
        if (d0Var != null) {
            d0Var.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean e(String str, View view) {
        if (!s()) {
            return true;
        }
        y(str);
        return true;
    }

    private static boolean a(ActivityManager.RunningTaskInfo runningTaskInfo) {
        Object obj;
        Object obj2;
        Rect rect;
        if (runningTaskInfo != null) {
            try {
                if (runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) != 0 || (obj = runningTaskInfo.getClass().getField("appCompatTaskInfo").get(runningTaskInfo)) == null) {
                    return false;
                }
                try {
                    obj2 = obj.getClass().getMethod("isLeafTask", null).invoke(obj, null);
                } catch (NoSuchMethodException e2) {
                    obj2 = obj.getClass().getField("isLeafTask").get(obj);
                }
                Boolean bool = Boolean.TRUE;
                if (bool.equals(obj2) && bool.equals(obj.getClass().getMethod("isTopActivityLetterboxRunning", null).invoke(obj, null)) && (rect = (Rect) obj.getClass().getField("topActivityLetterboxBounds").get(obj)) != null) {
                    return !rect.isEmpty();
                }
                return false;
            } catch (ReflectiveOperationException e3) {
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean b(View view, MotionEvent motionEvent) {
        this.X3 = motionEvent.getRawY();
        X x2 = this.W3;
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

    private void e(ClassLoader classLoader) {
        if (classLoader == this.r3) {
            return;
        }
        try {
            Class<?> cls = Class.forName("com.miui.keyguard.shortcuts.controller.BaseShortcutAnimController", false, classLoader);
            Class<?> cls2 = Class.forName("com.miui.keyguard.shortcuts.view.BaseShortcutAnimView", false, classLoader);
            final Field declaredField = cls.getDeclaredField("bottomShortcutView");
            declaredField.setAccessible(true);
            final Method declaredMethod = cls.getDeclaredMethod("getShortcutAnimView", null);
            declaredMethod.setAccessible(true);
            Class cls3 = Float.TYPE;
            final Method declaredMethod2 = cls2.getDeclaredMethod("updateIconViewPositionAndScale", cls3);
            declaredMethod2.setAccessible(true);
            final Field declaredField2 = cls2.getDeclaredField("iconCircleInitCenterX");
            final Field declaredField3 = cls2.getDeclaredField("iconCircleInitCenterY");
            final Field declaredField4 = cls2.getDeclaredField("iconCircleCenterX");
            final Field declaredField5 = cls2.getDeclaredField("iconCircleCenterY");
            declaredField2.setAccessible(true);
            declaredField3.setAccessible(true);
            declaredField4.setAccessible(true);
            declaredField5.setAccessible(true);
            final WeakHashMap weakHashMap = new WeakHashMap();
            hook(cls2.getDeclaredMethod("updateViews", cls3, cls3, cls3)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda181
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(weakHashMap, declaredField2, declaredField3, chain);
                    return a2;
                }
            });
            hook(cls.getDeclaredMethod("updateShortcutView", Integer.TYPE)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda182
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(declaredField, declaredMethod, weakHashMap, declaredField2, declaredField3, declaredField4, declaredField5, declaredMethod2, chain);
                    return a2;
                }
            });
            this.r3 = classLoader;
        } catch (Throwable th) {
            Log.e("DuoKeyguard", "Official shortcut animation hook unavailable", th);
        }
    }

    private void m(ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.wm.shell.multitasking.common.MultiTaskingStateManager", false, classLoader);
            Class cls2 = Integer.TYPE;
            Class cls3 = Boolean.TYPE;
            hook(cls.getDeclaredMethod("onSoScStateChanged", Rect.class, Rect.class, Rect.class, cls2, ActivityManager.RunningTaskInfo.class, ActivityManager.RunningTaskInfo.class, cls3, cls2, cls2)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda0
                public final Object intercept(XposedInterface.Chain chain) {
                    Object n2;
                    n2 = dev.duo.workspaceprobe.b.this.n(chain);
                    return n2;
                }
            });
            hook(cls.getDeclaredMethod("onPreSoScStateChanged", Rect.class, Rect.class, Rect.class, cls2, cls3, cls3, cls2, cls2)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda1
                public final Object intercept(XposedInterface.Chain chain) {
                    Object o2;
                    o2 = dev.duo.workspaceprobe.b.this.o(chain);
                    return o2;
                }
            });
        } catch (ReflectiveOperationException e2) {
            Log.e("DuoSplitHome", "Native split state unavailable", e2);
        }
    }

    private void c(ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.wm.shell.sosc.SoScSplitScreenController", false, classLoader);
            Class<?> cls2 = Class.forName("com.android.wm.shell.sosc.SoScUtilsImpl", false, classLoader);
            Class<?> cls3 = Class.forName("com.android.wm.shell.multiplesplit.MultipleSplitUtils", false, classLoader);
            final Method method = cls.getMethod("getRemoteCallExecutor", null);
            final Method method2 = cls2.getMethod("getInstance", null);
            final Method method3 = cls3.getMethod("getInstance", null);
            Class cls4 = Integer.TYPE;
            this.l1 = cls.getMethod("updateSplitSnapTarget", cls4, cls4, cls4, Boolean.TYPE);
            this.m1 = cls2.getMethod("isSoScActive", null);
            this.n1 = cls2.getMethod("isSoScSupported", null);
            this.o1 = cls3.getMethod("isMultipleSplitActive", null);
            this.p1 = cls3.getMethod("isMultipleSplitSupport", null);
            this.q1 = Class.forName("com.android.wm.shell.multiplesplit.MultipleSplitUtilsImpl", false, classLoader).getMethod("dockMultipleSplitTasks", Bundle.class);
            hook(cls.getDeclaredMethod("onInit", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda36
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(method, method2, method3, chain);
                    return a2;
                }
            });
            Log.i("DuoFoldSplit", "Native split hook ready");
        } catch (ReflectiveOperationException e2) {
            Log.e("DuoFoldSplit", "Native split entry unavailable", e2);
        }
    }

    private boolean f() {
        boolean z2 = !this.I1 && this.J1 && !"com.android.systemui".equals(this.F1) && (!this.K1 || i(this.F1));
        if (!z2 || !q0()) {
            return z2;
        }
        ActivityManager.RunningTaskInfo runningTaskInfo = this.G0.get(Integer.valueOf(this.G1));
        if (runningTaskInfo == null) {
            return false;
        }
        try {
            if (!runningTaskInfo.getClass().getField("isFocused").getBoolean(runningTaskInfo)) {
                return false;
            }
            if (this.s2) {
                return D(this.G1);
            }
            return new Rect(0, 0, s0_v, 1712).equals(f(runningTaskInfo.getClass().getField("appCompatTaskInfo").get(runningTaskInfo)));
        } catch (ReflectiveOperationException e2) {
            Log.w("DuoRail", "App focus unavailable", e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object i(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        final Object thisObject = chain.getThisObject();
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda115
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.c(thisObject);
            }
        });
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static GradientDrawable b(int i2, float f2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i2);
        gradientDrawable.setCornerRadius(f2);
        return gradientDrawable;
    }

    private boolean a(final ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl) {
        Object obj;
        if (runningTaskInfo == null) {
            return false;
        }
        try {
            if (c == null) {
                Class<?> cls = runningTaskInfo.getClass();
                d = cls.getField("isFocused");
                e = cls.getField("appCompatTaskInfo");
                Field field = cls.getField("configuration");
                f = field;
                Field field2 = field.getType().getField("windowConfiguration");
                g = field2;
                h = field2.getType().getMethod("getActivityType", null);
                i = dev.duo.workspaceprobe.g.getType().getMethod("getWindowingMode", null);
                c = cls.getField("displayId");
            }
            ComponentName componentName = runningTaskInfo.topActivity;
            boolean z2= true;
            boolean z3 = componentName != null && "com.miui.home".equals(componentName.getPackageName()) && "com.miui.home.launcher.Launcher".equals(componentName.getClassName());
            boolean z4 = dev.duo.workspaceprobe.c.getInt(runningTaskInfo) == 0 && componentName != null && dev.duo.workspaceprobe.d.getBoolean(runningTaskInfo);
            if (!z3 && !z4) {
                return false;
            }
            Object obj2 = dev.duo.workspaceprobe.e.get(runningTaskInfo);
            Object obj3 = dev.duo.workspaceprobe.g.get(f.get(runningTaskInfo));
            final int intValue = ((Integer) dev.duo.workspaceprobe.h.invoke(obj3, null)).intValue();
            boolean z5 = z3 && intValue == 2;
            if (z3 && this.U1 < 6) {
                try {
                    obj = obj2.getClass().getMethod("isLeafTask", null).invoke(obj2, null);
                } catch (NoSuchMethodException e2) {
                    obj = obj2.getClass().getField("isLeafTask").get(obj2);
                }
                this.U1++;
                Log.w("DuoRail", "Launcher task=" + runningTaskInfo.taskId + " leaf=" + obj + " home=" + z5 + " leash=" + (surfaceControl != null));
            }
            if (!z4 || ((Integer) dev.duo.workspaceprobe.i.invoke(obj3, null)).intValue() == 5) {
                return false;
            }
            if (runningTaskInfo.taskId == this.X1 && "com.miui.mishare.connectivity".equals(componentName.getPackageName()) && "com.miui.mishare.activity.TransActivity".equals(componentName.getClassName())) {
                return false;
            }
            String i2 = i(runningTaskInfo);
            if (i2 != null) {
                this.X1 = runningTaskInfo.taskId;
            }
            if (!a(componentName)) {
                int i3 = -1;
                this.X1 = -1;
                boolean z6 = !z5 && intValue == 1 && new Rect(0, 0, s0_v, 1712).equals(f(obj2)) && j(runningTaskInfo.taskId);
                if (z6) {
                    i3 = runningTaskInfo.taskId;
                }
                this.V1 = i3;
                this.W1 = z6 ? componentName : null;
                if (z6) {
                    a(runningTaskInfo.taskId, componentName);
                }
            }
            final String g2 = i2 != null ? i2 : g(runningTaskInfo);
            if (intValue != 1 || ((Integer) dev.duo.workspaceprobe.i.invoke(obj3, null)).intValue() != 1) {
                z2 = false;
            }
            final boolean z7 = z5;
            return this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda220
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(g2, runningTaskInfo, z7, intValue, z2);
                }
            });
        } catch (Throwable th) {
            Log.w("DuoRail", "Rail task check failed", th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(boolean z2) {
        if (Boolean.valueOf(z2).equals(this.J3)) {
            return;
        }
        this.J3 = Boolean.valueOf(z2);
        Log.i("DuoWorkbench", "Switch " + (z2 ? "on" : "off"));
        if (z2) {
            return;
        }
        this.x4.n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final List<String> list) {
        this.N3 = Collections.unmodifiableList(new ArrayList(list));
        final String a2 = dev.duo.hookprobe.J.a(list);
        final int i2 = this.O3 + 1;
        this.O3 = i2;
        this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(i2, a2, list);
            }
        });
    }

    private K i() {
        final K k2 = new K(this, null);
        k2.c = new FrameLayout(this.i4);
        SurfaceControl.Builder hidden = new SurfaceControl.Builder().setName("DuoAppRail").setHidden(true);
        try {
            SurfaceControl.Builder.class.getMethod("setContainerLayer", null).invoke(hidden, null);
        } catch (ReflectiveOperationException e2) {
            Log.w("DuoRail", "Container layer unavailable; plain layer used", e2);
        }
        k2.a = hidden.build();
        SurfaceControl.Builder parent = new SurfaceControl.Builder().setName("DuoAppRailFloor").setParent(k2.a);
        try {
            SurfaceControl.Builder.class.getMethod("setColorLayer", null).invoke(parent, null);
        } catch (ReflectiveOperationException e3) {
            Log.w("DuoRail", "Colour layer unavailable for rail floor", e3);
        }
        k2.p_v = parent.build();
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            transaction.setLayer(k2.p_v, 0).setCrop(k2.p_v, new Rect(0, 0, 205, 1712)).setVisibility(k2.p_v, true);
            a(transaction, k2, a);
            S s2 = new S(this.i4);
            k2.g = s2;
            s2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda212
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dev.duo.workspaceprobe.b.this.c(view);
                }
            });
            a(k2, k2.g, 1037.0f, 1496, 48, 48, 0.0f);
            k2.g.setVisibility(this.Z3 ? 0 : 8);
            k2.g.b_v = !this.I2.isEmpty();
            FrameLayout w2 = w(1);
            int i2 = 0;
            while (true) {
                ImageView[] imageViewArr = k2.h;
                if (i2 >= imageViewArr.length) {
                    break;
                }
                imageViewArr[i2] = new T(this.i4);
                a(w2, k2.h[i2], i2, 120, 30, g0);
                i2++;
            }
            k2.d = w2;
            a(k2, w2, 971.0f, this.R5, 180, c(3), 60.0f);
            w2.setVisibility(4);
            h0 h0Var = new h0(this.i4, false);
            k2.q_v = h0Var;
            h0Var.U = true;
            c(h0Var);
            h0 h0Var2 = this.W0;
            if (h0Var2 != null) {
                k2.q_v.d(h0Var2);
            }
            k2.q_v.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda213
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dev.duo.workspaceprobe.b.this.a(k2, view);
                }
            });
            k2.q_v.a(new Consumer() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda214
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    dev.duo.workspaceprobe.b.this.b(k2, (View) obj);
                }
            });
            a(k2, k2.q_v, 963.0f, this.I3[1] + T, 205, 420, 0.0f);
            k2.r_v = new U(this.i4);
            N n2 = new N(50.0f);
            k2.s_v = n2;
            k2.r_v.setBackground(n2);
            k2.r_v.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda215
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dev.duo.workspaceprobe.b.this.d(view);
                }
            });
            k2.r_v.setOnLongClickListener(new View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda216
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean e4;
                    e4 = dev.duo.workspaceprobe.b.this.e(view);
                    return e4;
                }
            });
            k2.r_v.setVisibility(this.H3 ? 0 : 8);
            a(k2, k2.r_v, 1011.0f, 1544, 100, 100, 50.0f);
            k2.g.bringToFront();
            try {
                Class<?> cls = Class.forName("android.view.ViewTreeObserver$OnComputeInternalInsetsListener");
                Class<?> cls2 = Class.forName("android.view.ViewTreeObserver$InternalInsetsInfo");
                final Method method = cls2.getMethod("setTouchableInsets", Integer.TYPE);
                final Field field = cls2.getField("touchableRegion");
                ViewTreeObserver.class.getMethod("addOnComputeInternalInsetsListener", cls).invoke(k2.c.getViewTreeObserver(), Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda217
                    @Override // java.lang.reflect.InvocationHandler
                    public final Object invoke(Object obj, Method method2, Object[] objArr) {
                        Object a2;
                        a2 = dev.duo.workspaceprobe.b.this.a(method, k2, field, obj, method2, objArr);
                        return a2;
                    }
                }));
                R r2 = new R("decor_content", k2.c, 963.0f, 0, 205, 1712, 0, 0.0f, 40);
                k2.b_v = r2;
                transaction.reparent(r2.b_v, k2.a).setPosition(k2.b_v.b_v, 0.0f, 0.0f).setCrop(k2.b_v.b_v, new Rect(0, 0, 205, 1712)).setLayer(k2.b_v.b_v, 1).setVisibility(k2.b_v.b_v, true);
                transaction.apply();
                transaction.close();
                e(k2);
                return k2;
            } catch (ReflectiveOperationException e4) {
                throw new IllegalStateException("App rail touch region unavailable", e4);
            }
        } finally {
        }
    }

    private boolean b(K k2, View view, String str) {
        int indexOfChild = k2.j_v.indexOfChild(view);
        int min = Math.min(this.L3.size(), k2.j_v.getChildCount());
        if (indexOfChild < 0 || indexOfChild >= min || !str.equals(this.L3.get(indexOfChild))) {
            return false;
        }
        B(5);
        X x2 = new X(k2.j_v, view, indexOfChild, min);
        this.W3 = x2;
        x2.a();
        return true;
    }

    private boolean b(R r2) {
        if (r2 == null) {
            return false;
        }
        if (r2 == this.t5 || r2 == this.u5 || r2 == this.v5 || r2 == this.w5) {
            return true;
        }
        for (R r3 : this.A5) {
            if (r2 == r3) {
                return true;
            }
        }
        return false;
    }

    private void b(Display display) {
        int a2 = a(display);
        if (a2 == this.d4) {
            if (this.g4.isEmpty()) {
                return;
            }
            q1();
            return;
        }
        this.d4 = a2;
        this.e4++;
        t1();
        if (a2 != 0) {
            long j2 = this.j6;
            if (j2 > 0) {
                this.k6 = Math.max(this.k6, j2 + 1);
            }
        }
        if (a2 != 0) {
            this.g6 = Math.max(this.g6, SystemClock.uptimeMillis());
        }
        int i2 = 0;
        this.b6 = false;
        this.c6 = false;
        this.d6 = -1;
        this.f6 = 0.0f;
        if (a2 == 0 && this.a6) {
            v1();
        }
        Iterator<Runnable> it = this.f4.iterator();
        while (it.hasNext()) {
            this.A1.removeCallbacks(it.next());
        }
        this.f4.clear();
        this.I5.clear();
        this.J5.clear();
        this.H5 = false;
        this.F5 = a2 == 0 ? 1.0f : 0.0f;
        this.G5 = 0.0f;
        this.G6 = false;
        this.F6 = false;
        this.K5 = -1L;
        h0 h0Var = this.W0;
        if (h0Var != null) {
            h0Var.g0 = -1;
            h0Var.invalidate();
        }
        if (a2 != 0) {
            i2 = q1();
        }
        Log.w("DuoLegacyDock", "v155 scope=" + a2 + " released=" + i2 + " hosts=" + r0() + " epoch=" + this.e4);
    }

    private SurfaceControl h(int i2) {
        String className;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        if (this.z2 != null && this.S0 != null) {
            for (ActivityManager.RunningTaskInfo runningTaskInfo2 : this.G0.values()) {
                ComponentName componentName = runningTaskInfo2.topActivity;
                if (componentName != null && "com.miui.home".equals(componentName.getPackageName()) && (className = componentName.getClassName()) != null && className.contains("Launcher")) {
                    try {
                        if (this.A2 == null) {
                            runningTaskInfo = null;
                        } else {
                            runningTaskInfo = (ActivityManager.RunningTaskInfo) this.A2.invoke(this.S0, Integer.valueOf(runningTaskInfo2.taskId));
                        }
                        if ((runningTaskInfo != null ? runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) : runningTaskInfo2.getClass().getField("displayId").getInt(runningTaskInfo2)) == i2) {
                            SurfaceControl surfaceControl = (SurfaceControl) this.z2.invoke(this.S0, Integer.valueOf(runningTaskInfo2.taskId));
                            if (surfaceControl == null) {
                                return null;
                            }
                            if (surfaceControl.isValid()) {
                                return surfaceControl;
                            }
                            return null;
                        }
                    } catch (ReflectiveOperationException e2) {
                    }
                }
            }
        }
        return null;
    }

    private void c(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.L4 = false;
            this.M4 = false;
            MotionEvent motionEvent2 = this.N4;
            if (motionEvent2 != null) {
                motionEvent2.recycle();
                this.N4 = null;
            }
            if (motionEvent.getRawY() > 120.0f || !C1()) {
                return;
            }
            this.L4 = true;
            this.N4 = MotionEvent.obtain(motionEvent);
            return;
        }
        if (this.M4) {
            a(MotionEvent.obtain(motionEvent));
            if (actionMasked == 1 || actionMasked == 3) {
                this.M4 = false;
                return;
            }
            return;
        }
        if (this.L4) {
            if (actionMasked != 2) {
                if (actionMasked == 1 || actionMasked == 3 || actionMasked == 5) {
                    this.L4 = false;
                    return;
                }
                return;
            }
            float rawX = motionEvent.getRawX() - this.N4.getRawX();
            float rawY = motionEvent.getRawY() - this.N4.getRawY();
            if (rawY <= ViewConfiguration.get(this.i4).getScaledTouchSlop() || rawY <= Math.abs(rawX) * 1.2f) {
                if (rawY < (-r5) || Math.abs(rawX) > r5 * 2) {
                    this.L4 = false;
                    return;
                }
                return;
            }
            this.L4 = false;
            if (!y1()) {
                Log.w("DuoRail", "Shade entry not ready proxy=" + (this.F4 != null));
            } else if (E0()) {
                this.M4 = true;
                Log.w("DuoRail", "Shade pull from app x=" + Math.round(this.N4.getRawX()) + " y=" + Math.round(this.N4.getRawY()) + " foreground=" + this.F1);
                a(MotionEvent.obtain(this.N4));
                a(MotionEvent.obtain(motionEvent));
            }
        }
    }

    private float d(R r2) {
        if (this.b4) {
            if (r2 == this.N6) {
                return this.I3[3] + 78;
            }
            if (r2 == this.z5) {
                return ((170 - r2.g) / 2.0f) + 2154.0f;
            }
            if (r2 == this.u5 || r2 == this.v5) {
                return 2154.0f;
            }
        }
        if (this.a4 == 0) {
            if (r2 == this.N6) {
                return (this.H5 ? 47.0f : 158.0f) + this.I3[0];
            }
            return (r2 != this.z5 || this.H5) ? r2.h : r2.h - 7;
        }
        if (r2 == this.N6) {
            return this.I3[2] + S;
        }
        if (r2 == this.z5) {
            return r2.h + X;
        }
        if (r2 != this.u5 && r2 != this.v5) {
            return r2.h;
        }
        return r2.h + Y;
    }

    private boolean h(String str) {
        if (!c(str) && v0()) {
            a.b b2 = this.J0.b(str);
            if (b2 != null) {
                return b2.a;
            }
            d(str, "miss");
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0086, code lost:
    
        throw new java.io.IOException("Outer lease: " + r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void e(final Object obj) {
        final java.lang.Process process;
        final Exception e2;
        InterruptedException e3= null;
        try {
            String str = this.i4.getPackageManager().getApplicationInfo(dev.duo.icons.g.a, 0).sourceDir;
            ProcessBuilder processBuilder = new ProcessBuilder("/system/bin/app_process", "/system/bin", "--nice-name=MiDuoTentLease", "dev.duo.workspaceprobe.StandbyRouteLease");
            processBuilder.environment().put("CLASSPATH", str);
            processBuilder.redirectErrorStream(true);
            process = processBuilder.start();
            try {
                try {
                    this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda188
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.workspaceprobe.b.this.a(process, obj);
                        }
                    });
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream(), StandardCharsets.UTF_8));
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine != null) {
                                if (readLine.equals("ACTIVE")) {
                                    this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda189
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            dev.duo.workspaceprobe.b.this.d(obj);
                                        }
                                    });
                                } else if (!readLine.equals("CANCELED")) {
                                    break;
                                }
                            } else {
                                bufferedReader.close();
                                int waitFor = process.waitFor();
                                if (waitFor == 0) {
                                    if (process.isAlive()) {
                                        process.destroy();
                                        try {
                                            process.waitFor();
                                        } catch (InterruptedException e4) {
                                            e3 = e4;
                                            Thread.currentThread().interrupt();
                                        }
                                    }
                                    this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda190
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            dev.duo.workspaceprobe.b.this.a(obj, e3);
                                        }
                                    });
                                    return;
                                }
                                throw new IOException("Outer lease exited " + waitFor);
                            }
                        } catch (Throwable th) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    throw th3;
                    if (process != null && process.isAlive()) {
                        process.destroy();
                        try {
                            process.waitFor();
                        } catch (InterruptedException e5) {
                            e3 = e5;
                            Thread.currentThread().interrupt();
                        }
                    }
                    this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda190
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.workspaceprobe.b.this.a(obj, e3);
                        }
                    });
                    throw th;
                }
            } catch (PackageManager.NameNotFoundException | IOException | InterruptedException | RuntimeException e6) {
                e2 = e6;
                if (process != null && process.isAlive()) {
                    process.destroy();
                    try {
                        process.waitFor();
                    } catch (InterruptedException e7) {
                        e2 = e7;
                        Thread.currentThread().interrupt();
                    }
                }
                this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda190
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.a(obj, e2);
                    }
                });
            }
        } catch (PackageManager.NameNotFoundException | IOException | InterruptedException | RuntimeException e8) {
            process = null;
            e2 = e8;
        } catch (Throwable th4) {
            throw th4;
            process = null;
        }
    }

    private void b(View view) {
        view.animate().cancel();
        view.clearAnimation();
        view.setOnClickListener(null);
        view.setOnTouchListener(null);
        view.setEnabled(false);
        if (view instanceof ImageView) {
            ((ImageView) view).setImageDrawable(null);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                b(viewGroup.getChildAt(i2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(View view) {
        x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        ValueAnimator valueAnimator = this.w4;
        this.w4 = null;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    private void d(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.C4_v = !this.I1 && this.C2_v == this.G1 && motionEvent.getRawX() < 963.0f && this.Z2 == null && (!this.T2 || this.Y2 == null || motionEvent.getRawX() < ((float) this.W2) || motionEvent.getRawX() >= ((float) (this.W2 + this.Y2.f)) || motionEvent.getRawY() < ((float) this.X2) || motionEvent.getRawY() >= ((float) (this.X2 + this.Y2.g)));
        } else if (actionMasked != 1 && actionMasked != 3) {
            return;
        }
        if (this.C4_v) {
            if (actionMasked == 0) {
                this.D4_v = motionEvent.getRawX();
                this.E4 = motionEvent.getRawY();
                this.O2 = true;
                if (this.I2.isEmpty()) {
                    return;
                }
                this.M2++;
                v();
                this.J2 = "";
                E(this.B2);
                D0();
                return;
            }
            this.O2 = false;
            this.N2 = SystemClock.uptimeMillis();
            if (!this.I2.isEmpty()) {
                D0();
            }
            if (actionMasked != 1 || this.E4 < 1512.0f || Math.abs(motionEvent.getRawX() - this.D4_v) >= 40.0f || Math.abs(motionEvent.getRawY() - this.E4) >= 40.0f) {
                return;
            }
            d(300L);
        }
    }

    private void h(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo == null) {
            return;
        }
        if (this.R0 == null && Looper.myLooper() != null) {
            this.R0 = new Handler(Looper.myLooper());
        }
        this.H0.remove(Integer.valueOf(runningTaskInfo.taskId));
        this.G0.put(Integer.valueOf(runningTaskInfo.taskId), runningTaskInfo);
        this.I0.add(Integer.valueOf(runningTaskInfo.taskId));
        b(runningTaskInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object m(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        this.F4 = chain.getThisObject();
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(View view) {
        q(view);
        if (!R0() || this.n3) {
            return;
        }
        z0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object h(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        this.A1.post(new Runnable() { public void run() { } });
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(int i2) {
        a("gesture " + i2, false, false);
    }

    private void b(Intent intent) {
        if (q0() && s0()) {
            a(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(boolean z2) {
        if (this.H3 == z2) {
            return;
        }
        this.H3 = z2;
        l1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b_v, reason: merged with bridge method [inline-methods] */
    public void a(final SurfaceControl surfaceControl, final int i2) {
        m();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(380L);
        ofFloat.setInterpolator(new DecelerateInterpolator(2.0f));
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda13
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                dev.duo.workspaceprobe.b.a(surfaceControl, i2, valueAnimator);
            }
        });
        this.w4 = ofFloat;
        ofFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, ActivityManager.RunningTaskInfo runningTaskInfo, boolean z2, int i2, boolean z3) {
        a(str, runningTaskInfo.taskId, z2, i2, z3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public void d(K k2) {
        int i2 = k2.t;
        if (i2 < 0) {
            return;
        }
        int u2 = u(i2);
        boolean z2 = Color.luminance(u2) <= 0.45f ? true : false;
        int i3 = z2 ? -1 : -13618632;
        int i4 = z2 ? 0 : 1;
        if (k2.w_v == i4 && k2.x_v == u2) {
            return;
        }
        ArrayList<J> arrayList = k2.e;
        int size = arrayList.size();
        int i5 = 0;
        while (i5 < size) {
            J j2 = arrayList.get(i5);
            i5++;
            j2.a(i3, i4);
        }
        S s2 = k2.g;
        if (s2 != null) {
            s2.a = i3;
            s2.c.a(i4);
            k2.g.invalidate();
        }
        FrameLayout frameLayout = k2.i;
        if (frameLayout != null && (frameLayout.getBackground() instanceof N)) {
            ((N) k2.i.getBackground()).a(i4);
            k2.i.invalidate();
            c0 c0Var = k2.k;
            boolean z3 = c0Var.b_v != z2;
            c0Var.b_v = z2;
            c0Var.invalidate();
            if (z3 && this.T3 && dev.duo.hookprobe.J.c(this.S5)) {
                a(k2);
            }
        }
        if (k2.d.getBackground() instanceof N) {
            ((N) k2.d.getBackground()).a(i4);
        }
        k2.d.invalidate();
        h0 h0Var = k2.q;
        if (h0Var != null) {
            h0Var.g0 = i3;
            h0Var.invalidate();
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            a(transaction, k2, u2);
            transaction.apply();
            transaction.close();
            U u3 = k2.r_v;
            if (u3 != null) {
                Paint paint = u3.a;
                if (!z2) {
                    i3 = -14737372;
                }
                paint.setColor(i3);
                k2.s_v.a(z2 ? 0 : 2);
                k2.r_v.invalidate();
            }
            k2.w_v = i4;
            k2.x_v = u2;
        } catch (Throwable th) {
            try {
                transaction.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void p(View view) {
        view.setScaleX(0.0f);
        view.setScaleY(0.0f);
        view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(200L).setInterpolator(new OvershootInterpolator(1.6f)).start();
    }

    private static boolean a(ComponentName componentName) {
        if (componentName == null || !"com.android.intentresolver".equals(componentName.getPackageName())) {
            return false;
        }
        return "com.android.intentresolver.ChooserActivity".equals(componentName.getClassName()) || "com.android.intentresolver.ResolverActivity".equals(componentName.getClassName());
    }

    private static boolean a(Context context) {
        if (context == null) {
            return false;
        }
        Display display = ((DisplayManager) context.getSystemService(DisplayManager.class)).getDisplay(0);
        Display.Mode mode = display == null ? null : display.getMode();
        return mode != null && mode.getPhysicalWidth() == 1168 && mode.getPhysicalHeight() == 1712 && display.getRotation() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        b0 b0Var = this.V3;
        this.V3 = null;
        if (b0Var != null) {
            b0Var.b();
        }
        d0 d0Var = this.U3;
        this.U3 = null;
        if (d0Var != null) {
            d0Var.a();
            n(false);
        }
        m(false);
    }

    private void a(String str, int i2, boolean z2, int i3, boolean z3) {
        this.Y1 = z3;
        String str2 = this.F1;
        if (z2 && i2 != this.G1 && this.P6 != 0.0f) {
            this.P6 = 0.0f;
            Log.w("DuoSearch", "Search progress reset on home task change task=" + i2);
        }
        if (z2 && !this.I1 && this.m6 == null) {
            synchronized (this.x6) {
                this.y6 = false;
                this.x6.notifyAll();
            }
        }
        if (!str.equals(this.F1) || i2 != this.G1) {
            this.H1++;
            if (this.U3 != null || this.V3 != null) {
                p();
            }
        }
        this.F1 = str;
        if (i2 != this.G1 || z2 != this.I1) {
            this.X5 = false;
        }
        this.G1 = i2;
        this.I1 = z2;
        if (dev.duo.icons.g.a.equals(str2) && !str.equals(str2)) {
            l("settings closed");
        }
        if (!z2 && this.J6 && (!q0() || !this.b6 || this.d6 != 2)) {
            a("app foreground " + str, false, false);
        }
        if (z2) {
            this.J1 = true;
        } else if (i3 == 1 && !"com.android.systemui".equals(str)) {
            f1();
        } else {
            this.J1 = false;
        }
        if (!str.equals(str2) || str.equals(this.Z1)) {
            k(str);
        }
        P();
        if (this.s5 != null) {
            y();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        if (!this.T4 || this.i4 == null) {
            return;
        }
        n2();
        if (J1() && this.l5 && this.m5) {
            if (this.s5 == null) {
                if ((!this.S4 && !((PowerManager) this.i4.getSystemService(PowerManager.class)).isInteractive()) || this.n5 || this.p5 != null) {
                    return;
                }
                int i2 = this.e5;
                if (i2 != 1 && i2 != 2) {
                    return;
                }
                this.n5 = true;
                g0 g0Var = new g0();
                this.s5 = g0Var;
                this.A1.postDelayed(g0Var.f, 10000L);
                if (this.e5 == 2) {
                    w1();
                }
            }
            g0 g0Var2 = this.s5;
            if (g0Var2.d) {
                if (!H1() || (g0Var2.e && !I1())) {
                    n();
                    return;
                }
                return;
            }
            if (H1()) {
                a(g0Var2);
                return;
            }
            int i3 = this.e5;
            if (i3 == 2 || i3 == 4) {
                return;
            }
            n();
            return;
        }
        n();
    }

    private String c(String str, String str2) {
        try {
            if (this.R1 == null) {
                this.R1 = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class, String.class);
            }
            return ((String) this.R1.invoke(null, str, str2)).trim();
        } catch (ReflectiveOperationException e2) {
            return str2;
        }
    }

    private void b(MotionEvent motionEvent) {
        try {
            c(motionEvent);
        } catch (Throwable th) {
            Log.w("DuoRail", "Shade gesture failed", th);
            this.L4 = false;
            this.M4 = false;
        }
        try {
            this.x4.a(motionEvent);
        } catch (Throwable th2) {
            Log.e("DuoWorkbench", "Corner gesture failed", th2);
            this.x4.w();
        }
        d(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(Runnable runnable) {
        this.A1.post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(int i2) {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        try {
            if (this.e1 && this.f1 == i2 && this.r1 && v0() && R0() && a(p0()) == 1 && (runningTaskInfo = (ActivityManager.RunningTaskInfo) this.S0.getClass().getMethod("getRunningTaskInfo", Integer.TYPE).invoke(this.S0, Integer.valueOf(i2))) != null && runningTaskInfo.getClass().getField("isFocused").getBoolean(runningTaskInfo) && runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) == 0) {
                Object obj = runningTaskInfo.getClass().getField("configuration").get(runningTaskInfo);
                Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
                if (((Integer) obj2.getClass().getMethod("getActivityType", null).invoke(obj2, null)).intValue() == 1 && ((Integer) obj2.getClass().getMethod("getWindowingMode", null).invoke(obj2, null)).intValue() == 1 && ((Boolean) this.n1.invoke(this.i1, null)).booleanValue() && !((Boolean) this.m1.invoke(this.i1, null)).booleanValue() && !((Boolean) this.o1.invoke(this.j1, null)).booleanValue()) {
                    this.l1.invoke(this.h1, 0, Integer.valueOf(i2), -1, Boolean.TRUE);
                    Log.i("DuoFoldSplit", "Native split requested task=" + i2);
                }
            }
        } catch (ReflectiveOperationException e2) {
            Log.e("DuoFoldSplit", "Native split request failed", e2);
        }
    }

    private void c(h0 h0Var) {
        if (h0Var == null) {
            return;
        }
        h0Var.a(this.G3, 405 - (this.I3[1] + T));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(Object obj) {
        if (this.p5 != obj || this.r5) {
            return;
        }
        this.o5 = true;
        y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(h0 h0Var) {
        boolean z2 = Settings.Global.getInt(this.i4.getContentResolver(), "airplane_mode_on", 0) != 0;
        if (z2 == h0Var.Q) {
            return;
        }
        h0Var.Q = z2;
        m1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        b2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(int i2) {
        int i3;
        int[] iArr = this.P5.get(Integer.valueOf(i2));
        return t() && D(i2) && iArr != null && (i3 = iArr[2]) >= g0 && i3 <= 260 && !Boolean.FALSE.equals(this.T5.get(Integer.valueOf(i2)));
    }

    private void c(int i2, SurfaceControl.Transaction transaction) {
        K k2 = this.M5.get(Integer.valueOf(i2));
        if (k2 == null || transaction == null) {
            return;
        }
        a(transaction, k2, d(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object c(XposedInterface.Chain chain) throws Throwable {
        this.J5.remove(chain.getArg(0));
        if (this.I5.remove(chain.getArg(0))) {
            this.A1.post(new Runnable() { public void run() { } });
        }
        Object proceed = chain.proceed();
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda90
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.M();
            }
        });
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        if (this.H3 && s()) {
            a(new Intent("android.search.action.GLOBAL_SEARCH").addFlags(268435456));
        }
    }

    private void b(boolean z2) {
        if (this.R4 == z2) {
            return;
        }
        this.R4 = z2;
        this.n5 = false;
        if (z2) {
            long uptimeMillis = SystemClock.uptimeMillis();
            if (this.U4 && uptimeMillis >= this.V4) {
                this.U4 = false;
                this.V4 = 0L;
                Log.w("DuoStandby", "Standby failure latch cleared by enabling the clock");
            }
            if (!this.U4) {
                M1();
            }
        }
        y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread c(Runnable runnable) {
        Thread thread = new Thread(runnable, "DuoNativeSidebarWriter");
        thread.setDaemon(true);
        return thread;
    }

    private void c(float f2) {
        float max = Math.max(0.0f, Math.min(1.0f, f2));
        if (max == this.P6) {
            return;
        }
        this.P6 = max;
        if (max != 0.0f && max != 1.0f) {
            if (this.R6) {
                return;
            }
            this.R6 = true;
            Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda116
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
    public /* synthetic */ void c(long j2) {
        this.R6 = false;
        g();
    }

    private void b(FrameLayout frameLayout, View view, int i2) {
        a(frameLayout, view, i2, 120, 30, g0);
    }

    private boolean h() {
        return this.V0 && q0() && f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Intent intent, View view) {
        b(intent);
    }

    private void b(ActivityManager.RunningTaskInfo runningTaskInfo) {
        try {
            boolean f2 = f(runningTaskInfo);
            Boolean put = this.T5.put(Integer.valueOf(runningTaskInfo.taskId), Boolean.valueOf(f2));
            a(runningTaskInfo.taskId, (SurfaceControl.Transaction) null);
            K k2 = this.M5.get(Integer.valueOf(runningTaskInfo.taskId));
            if (k2 != null) {
                if (put == null || put.booleanValue() != f2) {
                    SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                    try {
                        a(transaction, k2, d(runningTaskInfo.taskId));
                        transaction.apply();
                        transaction.close();
                        Log.w("DuoRail", "App rail decor task=" + runningTaskInfo.taskId + " outer=" + f2 + " shown=" + d(runningTaskInfo.taskId));
                    } finally {
                    }
                }
            }
        } catch (Throwable th) {
            if (this.U5) {
                return;
            }
            this.U5 = true;
            Log.w("DuoRail", "App rail decor bounds check failed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, int i2) {
        this.a2 = str;
        this.b2 = (WindowInsets.Type.statusBars() & i2) != 0;
        if (this.Z1.isEmpty()) {
            return;
        }
        k(this.Z1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final String str, final long j2) {
        final long a2 = this.J0.a();
        final a.b a3 = a(str, "foreground");
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda204
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(j2, a3, str, a2);
            }
        });
    }

    private void i(int i2) {
        if (e()) {
            A(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final long j2, a.b bVar, String str, long j3) {
        this.K1 = false;
        if (j2 != this.H1) {
            f1();
            return;
        }
        if (bVar == null) {
            a.b b2 = this.J0.b(str);
            this.J1 = b2 != null && b2.a;
            if (b2 != null) {
                a(b2.b);
            }
            if (this.e2 != j2) {
                this.e2 = j2;
                this.g2 = 0;
            }
            int i2 = this.g2;
            this.g2 = i2 + 1;
            long a2 = dev.duo.workspaceprobe.a.a(i2);
            this.f2 = SystemClock.uptimeMillis() + a2;
            Log.w("DuoRail", "Duo config unknown pkg=" + str + " known=" + (b2 != null) + " retryMs=" + a2);
            this.A1.postDelayed(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda86
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(j2);
                }
            }, a2);
            P();
            return;
        }
        dev.duo.workspaceprobe.a.C0005a a3 = this.J0.a(str, bVar, j3);
        if (a3 == null) {
            bVar = this.J0.b(str);
        }
        A1();
        if (bVar == null) {
            P();
            return;
        }
        this.d2 = j2;
        this.J1 = bVar.a;
        a(bVar.b_v);
        if (a3 != null && a3.b) {
            p(str);
        }
        P();
    }

    private boolean i(String str) {
        a.b b2 = this.J0.b(str);
        return b2 != null && b2.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(K k2, View view) {
        q(view);
        if (s() && k2.t == this.G1 && R0()) {
            z0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b_v, reason: merged with bridge method [inline-methods] */
    public void a(final int i2, final L l2) {
        if (this.N5.get(Integer.valueOf(i2)) != l2) {
            return;
        }
        try {
            K i3= i();
            this.R0.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda210
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(l2, i2, i3);
                }
            });
        } catch (Throwable th) {
            this.R0.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda211
                @Override // java.lang.Runnable
                public final void run() {
                    l2.c = false;
                }
            });
            Log.w("DuoRail", "App rail decor late build failed task=" + i2, th);
        }
    }

    private void b(int i2, SurfaceControl.Transaction transaction) {
        final K remove = this.M5.remove(Integer.valueOf(i2));
        if (remove == null) {
            return;
        }
        if (transaction != null) {
            a(transaction, remove, false);
            transaction.reparent(remove.a, null);
        }
        Log.w("DuoRail", "App rail decor detach task=" + i2);
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda137
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.b(remove);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j2) {
        if (j2 == this.H1) {
            f1();
        }
    }

    private a.b a(String str, String str2) {
        a.b bVar;
        String str3;
        if (Looper.myLooper() != null) {
            Log.e("DuoRail", "Duo config read refused on looper thread " + Thread.currentThread().getName() + " pkg=" + str);
            return null;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        try {
            Context context = this.i4;
            if (context == null) {
                context = (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
            }
            if (context == null) {
                return null;
            }
            SharedPreferences w2 = w();
            if (w2 != null) {
                int b2 = dev.duo.hookprobe.P.b(w2, str, this.k2);
                a.b bVar2 = new a.b(!dev.duo.hookprobe.P.i.contains(str) && w2.getBoolean(new StringBuilder().append(str).append("/enabled").toString(), dev.duo.hookprobe.P.e(str)) && dev.duo.hookprobe.P.b(w2) && v0(), Color.luminance(b2) <= 0.45f, b2, dev.duo.hookprobe.P.a(w2, str, this.k2) != null, dev.duo.hookprobe.P.d(w2, str), dev.duo.hookprobe.P.c(w2, str));
                if (str2 != null) {
                    Log.w("DuoRail", "Duo config read pkg=" + str + " reason=" + str2 + " direct ms=" + (SystemClock.uptimeMillis() - uptimeMillis) + " enabled=" + bVar2.a + " black=" + bVar2.b);
                }
                return bVar2;
            }
            Bundle bundle = new Bundle();
            bVar = null;
            try {
                bundle.putBoolean("railNight", this.k2);
                Bundle call = context.getContentResolver().call(Uri.parse("content://com.lsposed.miduo.config"), "railEnabled", str, bundle);
                dev.duo.workspaceprobe.a.b a2 = dev.duo.workspaceprobe.a.a(call != null, call != null && call.containsKey("enabled"), call != null && call.getBoolean("enabled", false) && v0(), call != null && Color.luminance(call.getInt("railBackground", a)) <= 0.45f, call == null ? a : call.getInt("railBackground", a), call != null && call.getBoolean("railCustomBackground", false), call != null && call.getBoolean("innerNativeBar", false), call == null ? 0 : call.getInt("hiddenTop", 0), call != null && call.containsKey("error"));
                if (str2 != null) {
                    StringBuilder append = new StringBuilder().append("Duo config read pkg=").append(str).append(" reason=").append(str2).append(" thread=").append(Thread.currentThread().getName()).append(" ms=").append(SystemClock.uptimeMillis() - uptimeMillis);
                    if (a2 == null) {
                        str3 = " failed=" + (call == null ? "no response" : call.getString("error", "no enabled"));
                    } else {
                        str3 = " enabled=" + a2.a + " black=" + a2.b;
                    }
                    Log.w("DuoRail", append.append(str3).toString());
                }
                return a2;
            } catch (Throwable th) {

                if (str2 != null) {
                    Log.w("DuoRail", "Duo config read failed pkg=" + str + " reason=" + str2, th);
                }
                return bVar;
            }
        } catch (Throwable th2) {
            throw th2;
            bVar = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(K k2) {
        boolean z2;
        k2.t = -1;
        k2.v_v = -1L;
        k2.q.a(false);
        synchronized (this.L5) {
            z2 = this.L5.size() < 3;
            if (z2) {
                this.L5.add(k2);
            }
        }
        if (!z2) {
            c(k2);
        }
        P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean e(View view) {
        if (!this.H3 || !s() || !R0()) {
            return true;
        }
        n0();
        return true;
    }

    private static Bundle e(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("unavailable", str);
        return bundle;
    }

    private boolean e() {
        return !this.L1 && s0() && this.C1_v && f() && F1() > 0.001f && this.d6 == 1 && this.f6 >= 0.999f;
    }

    private void b(ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.wm.shell.common.transition.DefaultTransitionImpl", false, classLoader);
            Class<?> cls2 = Class.forName("android.window.TransitionInfo", false, classLoader);
            Class<?> cls3 = Class.forName("android.window.TransitionInfo$Change", false, classLoader);
            final Method declaredMethod = cls.getDeclaredMethod("hasLetterboxOffsetFlag", cls3);
            final Method declaredMethod2 = cls.getDeclaredMethod("hasAppCompatLetterboxBounds", cls3);
            final Method declaredMethod3 = cls.getDeclaredMethod("applyAppFrameInitialize", Animation.class, Rect.class, cls3, Boolean.TYPE);
            Method[] methodArr = {declaredMethod, declaredMethod2, declaredMethod3};
            for (int i2 = 0; i2 < 3; i2++) {
                methodArr[i2].setAccessible(true);
            }
            final Method method = cls3.getMethod("getTaskInfo", null);
            final Method method2 = cls3.getMethod("getFlags", null);
            final Method method3 = cls3.getMethod("getEndAbsBounds", null);
            final Method method4 = cls3.getMethod("getEndDisplayId", null);
            int i3= cls2.getField("FLAG_IN_TASK_WITH_EMBEDDED_ACTIVITY").getInt(null) | cls2.getField("FLAG_FILLS_TASK").getInt(null);
            hook(cls.getDeclaredMethod("updateTranslateAnimationIfNeeded", cls2, Animation.class, cls3)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda4
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a2;
                    a2 = dev.duo.workspaceprobe.b.this.a(method, method2, i3, declaredMethod, declaredMethod2, method3, method4, declaredMethod3, chain);
                    return a2;
                }
            });
        } catch (Throwable th) {
            Log.w("DuoRail", "Embedded letterbox animation hook failed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(View view) {
        if (!R0() || this.n3) {
            return;
        }
        q(view);
        y0();
    }

    private void l(boolean z2) {
        if (z2 == this.E6) {
            return;
        }
        Log.w("DuoRail", "IME " + (z2 ? "shown" : "hidden"));
        this.E6 = z2;
        g2();
        if (this.C1_v && q0()) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                a(transaction);
                transaction.apply();
                transaction.close();
            } catch (Throwable th) {
                try {
                    transaction.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object l(XposedInterface.Chain chain) throws Throwable {
        final int intValue = ((Integer) chain.getArg(0)).intValue();
        if (intValue == 15) {
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda164
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.R();
                }
            });
        } else if (intValue == C0_v || intValue == 1) {
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda165
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.m(intValue);
                }
            });
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object b(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        Object arg = chain.getArg(0);
        Long remove = this.J5.remove(arg);
        if (this.I5.remove(arg)) {
            if (remove != null) {
                Log.w("DuoRail", "Mode transition finished ms=" + (SystemClock.uptimeMillis() - remove.longValue()));
            }
            this.A1.post(new Runnable() { public void run() { } });
        }
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda162
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.L();
            }
        });
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            p((String) it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(long j2) {
        if (this.o6 == j2 && this.m6 == null) {
            Consumer<long[]> consumer = this.A6;
            if (consumer != null) {
                consumer.accept(new long[]{0, 0, 0, 0});
            }
            this.b6 = false;
            this.f6 = 0.0f;
            this.t6 = false;
            if (this.C1_v) {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    a(transaction);
                    transaction.apply();
                    transaction.close();
                    return;
                } catch (Throwable th) {
                    try {
                        transaction.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            m2();
        }
    }

    private boolean a(int i2, List<SurfaceControl> list, K k2, int i3) {
        try {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                if (t0 == null) {
                    t0 = SurfaceControl.Transaction.class.getMethod("setColor", SurfaceControl.class, float[].class);
                }
                float[] fArr = {Color.red(i3) / 255.0f, Color.green(i3) / 255.0f, Color.blue(i3) / 255.0f};
                for (SurfaceControl surfaceControl : list) {
                    if (surfaceControl.isValid()) {
                        t0.invoke(transaction, surfaceControl, fArr);
                    }
                }
                if (k2 != null) {
                    a(transaction, k2, i3);
                }
                transaction.apply();
                transaction.close();
                this.l2.put(Integer.valueOf(i2), Integer.valueOf(i3));
                return true;
            } finally {
            }
        } catch (Throwable th) {
            Log.w("DuoRail", "Letterbox repaint failed task=" + i2, th);
            return false;
        }
    }

    private boolean b(boolean z2, Set<String> set) {
        b(p0());
        if (!q0() || !s0()) {
            return false;
        }
        if (z2 && !u() && (!this.H5 || this.K5 != this.H1)) {
            a(this.C5, set);
            this.K5 = this.H1;
        }
        this.H5 = z2;
        g2();
        Log.w("DuoRail", "Rail target -> " + (z2 ? "app" : "desktop") + "; native progress");
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean b(SurfaceControl.Transaction transaction, boolean z2) {
        boolean z3;
        R r2;
        float f2;
        if (z2) {
            b(p0());
        }
        float w02 = w0();
        m2();
        boolean u2 = u();
        float f3 = 0.0f;
        float f4 = (u2 || this.t6) ? 0.0f : 1.0f;
        boolean z4 = true;
        if (this.N6 != null) {
            float f5 = w02 * f4;
            boolean z5 = f5 > 0.001f;
            if (!this.l4 || f5 != this.q4 || z5 != this.m4) {
                transaction.setAlpha(this.N6.b_v, f5).setVisibility(this.N6.b_v, z5);
                if (f5 != this.q4 || z5 != this.m4) {
                    this.l4 = false;
                }
                z3 = true;
                r2 = this.z5;
                if (r2 != null) {
                    z3 |= a(transaction, r2, (!this.H3 || this.G6) ? 0.0f : f4 * w02);
                }
                if (q0() || !s0()) {
                    return z3;
                }
                boolean z6 = (this.b4 || this.a4 == Q) || (this.v2 == 1168 && this.w2 == 1712);
                if (!Float.isNaN(this.t5.k_v)) {
                    if ((this.t5.k_v > 0.0f) != z6) {
                        z4 = z3;
                        float f6 = (!z6 ? 0.0f : this.F5) * w02;
                        f2 = this.G5 * w02;
                        boolean a2 = a(transaction, this.u5, f6) | z4;
                        R r3 = this.v5;
                        if (this.Z5 <= 0) {
                            f6 = 0.0f;
                        }
                        boolean a3 = a2 | a(transaction, r3, f6);
                        for (R r4 : this.A5) {
                            a3 |= a(transaction, r4, u2 ? 0.0f : f2);
                        }
                        R r5 = this.w5;
                        if (!u2 && this.Y5 > 0 && !this.F6) {
                            f3 = f2;
                        }
                        return a(transaction, t()) | a3 | a(transaction, r5, f3);
                    }
                }
                transaction.setVisibility(this.t5.b_v, !z6);
                this.t5.k_v = z6 ? 0.0f : 1.0f;
                float f62 = (!z6 ? 0.0f : this.F5) * w02;
                f2 = this.G5 * w02;
                boolean a22 = a(transaction, this.u5, f62) | z4;
                R r32 = this.v5;
                if (this.Z5 <= 0) {
                }
                boolean a32 = a22 | a(transaction, r32, f62);
                while (r5 < r4) {
                }
                R r52 = this.w5;
                if (!u2) {
                    f3 = f2;
                }
                return a(transaction, t()) | a32 | a(transaction, r52, f3);
            }
        }
        z3 = false;
        r2 = this.z5;
        if (r2 != null) {
        }
        if (q0()) {
        }
        return z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long[] jArr, int i2, List list, K k2, ValueAnimator valueAnimator) {
        if (valueAnimator.getCurrentPlayTime() - jArr[0] < 33) {
            return;
        }
        jArr[0] = valueAnimator.getCurrentPlayTime();
        a(i2, (List<SurfaceControl>) list, k2, ((Integer) valueAnimator.getAnimatedValue()).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Field field, Field field2, Method method, Method method2, Constructor constructor, Field field3, Field field4, Field field5, Field field6, Field field7, Field field8, Field field9, Field field10, Field field11, XposedInterface.Chain chain) throws Throwable {
        Object[] array = chain.getArgs().toArray();
        Object obj = array[0];
        if (q0() && this.S0 != null && !field.getBoolean(obj)) {
            try {
                int i2 = field2.getInt(obj);
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) method.invoke(this.S0, Integer.valueOf(i2));
                if (runningTaskInfo != null && runningTaskInfo.topActivity != null && h(g(runningTaskInfo)) && runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) == 0 && runningTaskInfo.getClass().getField("isVisibleRequested").getBoolean(runningTaskInfo)) {
                    Rect f2 = f(runningTaskInfo.getClass().getField("appCompatTaskInfo").get(runningTaskInfo));
                    Object obj2 = runningTaskInfo.getClass().getField("configuration").get(runningTaskInfo);
                    Object obj3 = obj2.getClass().getField("windowConfiguration").get(obj2);
                    Rect rect = new Rect((Rect) obj3.getClass().getMethod("getBounds", null).invoke(obj3, null));
                    if (new Rect(0, 0, 1168, 1712).equals(rect) && new Rect(0, 0, s0_v, 1712).equals(f2)) {
                        SurfaceControl surfaceControl = (SurfaceControl) method2.invoke(this.S0, Integer.valueOf(i2));
                        if (surfaceControl != null && surfaceControl.isValid()) {
                            Object obj4 = field3.get(obj);
                            Integer valueOf = Integer.valueOf(i2);
                            Rect rect2 = new Rect(f2);
                            Object obj5 = runningTaskInfo.getClass().getField("token").get(runningTaskInfo);
                            Boolean valueOf2 = Boolean.valueOf(field4.getBoolean(obj));
                            Boolean valueOf3 = Boolean.valueOf(field5.getBoolean(obj));
                            Boolean valueOf4 = Boolean.valueOf(field6.getBoolean(obj));
                            Boolean bool = Boolean.FALSE;
                            array[0] = constructor.newInstance(obj4, valueOf, 0, rect, rect2, obj5, surfaceControl, null, bool, valueOf2, valueOf3, valueOf4, bool);
                            SurfaceControl surfaceControl2 = (SurfaceControl) field7.get(obj);
                            if (field8.getBoolean(obj) || field9.getInt(obj) != 0 || !f2.equals(field10.get(obj)) || field11.get(obj) != null || surfaceControl2 == null || !surfaceControl2.isValid()) {
                                Log.w("DuoRail", "Letterbox event unified task=" + i2 + " type=" + field3.get(obj) + " bounds=" + f2 + " parent=" + surfaceControl);
                            }
                        } else {
                            Log.e("DuoRail", "Letterbox event has no valid organizer leash task=" + i2);
                        }
                    }
                }
            } catch (ReflectiveOperationException e2) {
                Log.e("DuoRail", "Letterbox event unification failed", e2);
            }
        }
        return chain.proceed(array);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(TelephonyDisplayInfo telephonyDisplayInfo) {
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
                    case WorkspaceProtocol.LOOKUP_SOURCE /* 11 */:
                    case w_v /* 16 */:
                        return "2G";
                    case 3:
                    case 5:
                    case 6:
                    case WorkspaceProtocol.RELEASE_TASK /* 8 */:
                    case WorkspaceProtocol.REGISTER_SOURCE /* 9 */:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                    case 17:
                        return "3G";
                    case C0_v /* 13 */:
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
    public /* synthetic */ Object a(Field field, Field field2, Field field3, Field field4, Field field5, Object obj, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        boolean z2 = false;
        Object arg = chain.getArg(0);
        int i2 = field.getInt(arg);
        Rect rect = (Rect) field2.get(arg);
        Map<Integer, Boolean> map = this.V5;
        Integer valueOf = Integer.valueOf(i2);
        if (rect != null && rect.width() == 1168 && rect.height() == 1712) {
            z2 = true;
        }
        map.put(valueOf, Boolean.valueOf(z2));
        if (!field3.getBoolean(arg) && !field4.getBoolean(arg) && x(i2) && field5.get(chain.getThisObject()) != obj) {
            field5.set(chain.getThisObject(), obj);
            if (this.q2.add(Integer.valueOf(i2))) {
                Log.w("DuoRail", "Strip letterbox (outside app only) task=" + i2);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final String str, final i0 i0Var) {
        final Bundle a2 = a("pageTones", str, (Bundle) null);
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda65
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(str, i0Var, a2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, i0 i0Var, Bundle bundle) {
        if (this.F2.get(str) != i0Var) {
            return;
        }
        i0Var.a = true;
        boolean z2 = bundle != null && bundle.containsKey("colors");
        i0Var.b = z2;
        if (!z2) {
            this.F2.remove(str);
            Log.w("DuoPick", "Page colours of " + str + " not available (provider answered " + (bundle == null ? "null" : "no colours") + "), asked again at the next page");
        }
        if (i0Var.b) {
            i0Var.c = bundle.getLong("revision");
            Bundle bundle2 = bundle.getBundle("colors");
            for (String str2 : bundle2.keySet()) {
                i0Var.d.put(str2, Integer.valueOf(bundle2.getInt(str2)));
            }
            i0Var.f.addAll(bundle.getStringArrayList("bases"));
            Bundle bundle3 = bundle.getBundle("edges");
            for (String str3 : bundle3.keySet()) {
                i0Var.e.put(str3, Integer.valueOf(bundle3.getInt(str3)));
            }
        }
        if (str.equals(this.D2)) {
            E(this.B2);
            d(0L);
            j2();
        }
    }

    private static List<int[]> a(i0 i0Var, String str, int i2) {
        TreeMap treeMap = new TreeMap();
        Iterator<Map.Entry<String, Integer>> it = i0Var.d.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, Integer> next = it.next();
            int lastIndexOf = next.getKey().lastIndexOf(35);
            if (lastIndexOf >= 0 && next.getKey().substring(0, lastIndexOf).equals(str)) {
                Integer num = i0Var.e.get(next.getKey());
                treeMap.put(Integer.valueOf(Integer.parseInt(next.getKey().substring(lastIndexOf + 1))), new int[]{num != null ? num.intValue() : 0, next.getValue().intValue()});
            }
        }
        ArrayList arrayList = new ArrayList(treeMap.values());
        if (i0Var.f.contains(str)) {
            Integer num2 = i0Var.e.get(str);
            arrayList.add(new int[]{num2 != null ? num2.intValue() : 0, i2});
        }
        return arrayList;
    }

    private static int[] a(List<int[]> list, int i2) {
        int abs;
        int[] iArr = null;
        if (i2 != 0) {
            int i3 = Integer.MAX_VALUE;
            for (int[] iArr2 : list) {
                int i4 = iArr2[0];
                if (i4 != 0 && dev.duo.hookprobe.F.a(i4, i2) && (abs = Math.abs(((iArr2[0] >> w_v) & 255) - ((i2 >> w_v) & 255)) + Math.abs(((iArr2[0] >> 8) & 255) - ((i2 >> 8) & 255)) + Math.abs((iArr2[0] & 255) - (i2 & 255))) < i3) {
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
    public /* synthetic */ void a(List list, int i2, String str, int i3, int i4, Integer num) {
        int[] a2 = num == null ? null : a((List<int[]>) list, num.intValue());
        if (a2 == null || i2 != this.B2 || !str.equals(this.E2) || this.Q2) {
            return;
        }
        this.G2.put(str, Integer.valueOf(a2[1]));
        int i5 = a2[1];
        if (i5 == i4) {
            i5 = 0;
        }
        c(i3, i5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(SignalStrength signalStrength) {
        int i2;
        int i3 = -1;
        for (CellSignalStrength cellSignalStrength : signalStrength.getCellSignalStrengths()) {
            Object computeIfAbsent = x0.computeIfAbsent(cellSignalStrength.getClass(), new Function() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda18
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Object a2;
                    a2 = dev.duo.workspaceprobe.b.a((Class<?>) obj);
                    return a2;
                }
            });
            try {
            } catch (ReflectiveOperationException e2) {
                x0.put(cellSignalStrength.getClass(), cellSignalStrength.getClass());
                Log.w("DuoRail", "MIUI signal level read failed, using AOSP level for " + cellSignalStrength.getClass().getName(), e2);
            }
            if (computeIfAbsent instanceof Method) {
                i2 = ((Integer) ((Method) computeIfAbsent).invoke(cellSignalStrength, null)).intValue();
            } else {
                if (computeIfAbsent instanceof Field) {
                    i2 = ((Field) computeIfAbsent).getInt(cellSignalStrength);
                }
                i2 = -1;
            }
            if (i2 < 0) {
                i2 = cellSignalStrength.getLevel();
            }
            i3 = Math.max(i3, i2);
        }
        return i3 < 0 ? signalStrength.getLevel() : Math.min(4, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, final M m2, final Consumer consumer) {
        final SurfaceControl surfaceControl;
        if (this.z2 != null) {
            try {
                surfaceControl = (SurfaceControl) this.z2.invoke(this.S0, Integer.valueOf(i2));
            } catch (ReflectiveOperationException e2) {
                Log.e("DuoPick", "Cannot find task", e2);
            }
            this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda135
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(surfaceControl, m2, consumer);
                }
            });
        }
        surfaceControl = null;
        this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda135
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(surfaceControl, m2, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(SurfaceControl surfaceControl, M m2, final Consumer consumer) {
        final Integer num;
        if (surfaceControl != null && surfaceControl.isValid()) {
            try {
                num = Integer.valueOf(m2.a(surfaceControl));
            } catch (ReflectiveOperationException | RuntimeException e2) {
                Log.e("DuoPick", "Capture failed", e2);
            }
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda133
                @Override // java.lang.Runnable
                public final void run() {
                    consumer.accept(num);
                }
            });
        }
        num = null;
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda133
            @Override // java.lang.Runnable
            public final void run() {
                consumer.accept(num);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(ValueAnimator valueAnimator) {
        boolean z2 = this.L6 >= 0.999f;
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.L6 = floatValue;
        if (z2 != (floatValue >= 0.999f)) {
            P();
            return;
        }
        if (this.C1_v && this.I1) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                a(transaction);
                transaction.apply();
                transaction.close();
            } catch (Throwable th) {
                try {
                    transaction.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    private int a(int i2) {
        String g2 = g(this.G0.get(Integer.valueOf(i2)));
        a.b b2 = g2 == null ? null : this.J0.b(g2);
        return b2 == null ? a : b2.f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i2, final ComponentName componentName) {
        final String str = i2 + "/" + (this.k2 ? "dark/" : "light/") + componentName.flattenToString();
        if (str.equals(this.y2) && !this.I1 && this.G1 == i2) {
            return;
        }
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda175
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(i2, str, componentName);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, String str, ComponentName componentName) {
        if (i2 != this.G1 || this.I1 || !j(i2) || str.equals(this.y2)) {
            return;
        }
        this.y2 = str;
        this.B2++;
        this.C2_v = i2;
        this.D2 = componentName.getPackageName();
        this.E2 = (this.k2 ? "dark/" : "light/") + componentName.getClassName() + "|";
        this.K2 = "";
        this.M2++;
        this.N2 = SystemClock.uptimeMillis();
        v();
        i0 i0Var = this.F2.get(this.D2);
        if (i0Var == null) {
            i0Var = new i0(null);
            this.F2.put(this.D2, i0Var);
            b(this.D2, i0Var);
        }
        if (i0Var.a) {
            E(this.B2);
            d(450L);
        }
        j2();
    }

    private void b(float f2) {
        this.O6 = Math.max(0.0f, Math.min(1.0f, f2));
        if (this.C1_v && this.I1) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                a(transaction);
                transaction.apply();
                transaction.close();
            } catch (Throwable th) {
                try {
                    transaction.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(J j2) {
        if (this.S6.add(j2)) {
            if (this.S6.size() == 1) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.media.RINGER_MODE_CHANGED");
                intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
                intentFilter.addAction("android.location.MODE_CHANGED");
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
                intentFilter.addAction("android.net.wifi.WIFI_AP_STATE_CHANGED");
                try {
                    this.i4.registerReceiver(this.W6, intentFilter, null, this.A1);
                    this.T6 = true;
                } catch (RuntimeException e2) {
                    Log.w("DuoRail", "Rail switch receiver unavailable", e2);
                }
                ContentResolver contentResolver = this.i4.getContentResolver();
                try {
                    this.U6 = true;
                    String[] strArr = {"accelerometer_rotation", "screen_brightness_mode", "screen_paper_mode_enabled", "screen_off_timeout"};
                    for (int i2 = 0; i2 < 4; i2++) {
                        contentResolver.registerContentObserver(Settings.System.getUriFor(strArr[i2]), false, this.X6);
                    }
                    contentResolver.registerContentObserver(Settings.Global.getUriFor("airplane_mode_on"), false, this.X6);
                } catch (RuntimeException e3) {
                    Log.w("DuoRail", "Rail switch observer unavailable", e3);
                }
            }
            k1();
        }
    }

    private Bundle a(String str, String str2, Bundle bundle) {
        try {
            Bundle call = this.i4.getContentResolver().call(Uri.parse("content://com.lsposed.miduo.config"), str, str2, bundle);
            if (call != null && call.containsKey("error")) {
                Log.e("DuoPick", str + ": " + call.getString("error"));
            }
            return call;
        } catch (RuntimeException e2) {
            Log.e("DuoPick", "Provider call failed: " + str, e2);
            return null;
        }
    }

    private TextView a(String str, View.OnClickListener onClickListener) {
        TextView textView = new TextView(this.i4);
        textView.setText(str);
        textView.setTextSize(14.0f);
        textView.setTextColor(-14460213);
        textView.setGravity(17);
        textView.setBackgroundColor(-986379);
        textView.setOnClickListener(onClickListener);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(float[] fArr, View view, MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            fArr[0] = motionEvent.getRawX();
            fArr[1] = motionEvent.getRawY();
            fArr[2] = this.W2;
            fArr[3] = this.X2;
        } else if (motionEvent.getActionMasked() == 2) {
            this.W2 = Math.max(0, Math.min(120, (int) ((fArr[2] + motionEvent.getRawX()) - fArr[0])));
            int max = Math.max(0, Math.min(1712 - this.Y2.g, (int) ((fArr[3] + motionEvent.getRawY()) - fArr[1])));
            this.X2 = max;
            a(this.Y2, this.W2, max, 2001);
        }
        return true;
    }

    private void a(final R r2, final int i2, final int i3, final int i4) {
        if (this.z2 == null || this.S0 == null) {
            return;
        }
        final int i5 = this.G1;
        (this.R0 == null ? this.A1 : this.R0).post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda208
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(r2, i5, i2, i3, i4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(R r2, int i2, int i3, int i4, int i5) {
        try {
            if (r2.n) {
                return;
            }
            SurfaceControl surfaceControl = (SurfaceControl) this.z2.invoke(this.S0, Integer.valueOf(i2));
            if (i2 == this.G1 && B0() && surfaceControl != null && surfaceControl.isValid()) {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    transaction.reparent(r2.b, surfaceControl).setPosition(r2.b, i3, i4).setLayer(r2.b, i5).setCrop(r2.b, new Rect(0, 0, r2.f, r2.g)).setVisibility(r2.b, true).apply();
                    transaction.close();
                } finally {
                }
            }
        } catch (ReflectiveOperationException e2) {
            Log.e("DuoPick", "Cannot attach picker", e2);
        }
    }

    private static boolean a(int i2, int i3) {
        return Math.abs(((i2 >> w_v) & 255) - ((i3 >> w_v) & 255)) <= 8 && Math.abs(((i2 >> 8) & 255) - ((i3 >> 8) & 255)) <= 8 && Math.abs((i2 & 255) - (i3 & 255)) <= 8;
    }

    private void a(final boolean z2, final Rect rect) {
        b bVar;
        boolean z3;
        Rect rect2;
        if (this.P2 || !B0() || this.O2 || this.M2 == 0 || this.z2 == null) {
            bVar = this;
            z3 = z2;
            rect2 = rect;
        } else {
            if (SystemClock.uptimeMillis() - this.N2 >= 500) {
                i0 i0Var = this.F2.get(this.D2);
                if (i0Var == null || !i0Var.b_v) {
                    return;
                }
                final int i2 = this.B2;
                int i3= this.G1;
                final long j2 = this.M2;
                final long j3 = this.L2;
                this.P2 = true;
                b(i3, new M() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda6
                    @Override // dev.duo.workspaceprobe.b.M
                    public final int a(SurfaceControl surfaceControl) {
                        int a2;
                        a2 = dev.duo.workspaceprobe.b.a(rect, surfaceControl);
                        return a2;
                    }
                }, new Consumer() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda7
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        dev.duo.workspaceprobe.b.this.a(rect, j3, i2, j2, z2, i3, (Integer) obj);
                    }
                });
                return;
            }
            bVar = this;
            z3 = z2;
            rect2 = rect;
        }
        if (z3) {
            bVar.J2 = "请等页面停稳后再点取色";
            D0();
        }
        if (rect2 == null || bVar.Y2 == null || !B0()) {
            return;
        }
        a(bVar.Y2, bVar.W2, bVar.X2, 2001);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(Rect rect, SurfaceControl surfaceControl) throws ReflectiveOperationException {
        return rect == null ? a(surfaceControl) : a(surfaceControl, rect);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Rect rect, long j2, int i2, long j3, boolean z2, int i3, Integer num) {
        String str;
        int i4;
        this.P2 = false;
        if (rect != null && this.Y2 != null && B0()) {
            a(this.Y2, this.W2, this.X2, 2001);
        }
        if (B0() && j2 == this.L2 && i2 == this.B2 && j3 == this.M2) {
            if (num == null) {
                if (z2) {
                    this.J2 = "取色失败，可重取";
                    D0();
                }
                this.U2 = 0;
                return;
            }
            int intValue = num.intValue();
            if (intValue == 0) {
                if (z2 || C0()) {
                    this.J2 = "右侧颜色不够单一，请点选取色位置";
                    D0();
                }
                this.U2 = 0;
                return;
            }
            boolean C02 = C0();
            if (!z2 && ((i4 = this.U2) == 0 || !a(i4, intValue))) {
                this.U2 = intValue;
                return;
            }
            this.U2 = intValue;
            String str2 = this.E2 + "/" + intValue;
            if (z2 || !str2.equals(this.K2)) {
                if (!z2 && !C02) {
                    if (a(u(i3), intValue)) {
                        return;
                    } else {
                        this.K2 = str2;
                    }
                }
                this.V2 = intValue;
                this.Q2 = true;
                if (this.E2.isEmpty()) {
                    str = "可保存颜色并临时使用；此页面暂不能自动识别";
                } else {
                    str = (z2 || C02) ? "确认正确才记录；切换页面将取消本次确认" : "发现不同颜色，正确就保存；切换页面将取消本次确认";
                }
                this.J2 = str;
                c(i3, intValue);
                D0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final long j2, final long j3, final int i2, int i3, final long j4, final String str, final String str2, final boolean z2, final Bundle bundle, final boolean z3, final int i4, Integer num) {
        if (!B0() || this.O2 || j2 != this.L2 || j3 != this.M2 || i2 != this.B2 || i3 != this.G1 || j4 != this.H1 || !str.equals(this.D2) || !str2.equals(this.E2) || z2 != this.k2) {
            this.P2 = false;
            D0();
        } else if (num == null) {
            this.P2 = false;
            this.J2 = "保存失败，请重试";
            D0();
        } else {
            bundle.putInt("edge", num.intValue());
            if (num.intValue() != 0) {
                this.K2 = str2 + "/" + num;
            }
            this.Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda173
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(j2, j3, i2, j4, str, bundle, z3, z2, str2, i4);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final long j2, long j3, final int i2, long j4, final String str, Bundle bundle, final boolean z2, final boolean z3, final String str2, final int i3) {
        if (j2 == this.L2 && j3 == this.M2 && i2 == this.B2 && j4 == this.H1) {
            final Bundle a2 = a("pickConfirm", str, bundle);
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda29
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(a2, j2, z2, z3, str, str2, i3, i2);
                }
            });
        } else {
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda30
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.J();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Bundle bundle, final long j2, boolean z2, boolean z3, String str, String str2, int i2, int i3) {
        this.P2 = false;
        if (bundle == null || !bundle.getBoolean("saved")) {
            this.J2 = bundle == null ? "保存失败，请重新取色" : bundle.getString("error", "保存失败");
        } else {
            if (j2 != this.L2) {
                return;
            }
            if (z2) {
                if (z3) {
                    this.S2 = true;
                } else {
                    this.R2 = true;
                }
                d(str, "picker default");
            }
            this.J2 = "已保存，这个界面（或这个标签）以后都用这个颜色";
            this.G2.put(str2, Integer.valueOf(i2));
            String string = bundle.getString("share");
            if (string != null) {
                dev.duo.hookprobe.F.b(string, c(dev.duo.hookprobe.F.d, ""));
            }
            if (i3 == this.B2 && B0()) {
                this.Q2 = false;
                c(this.G1, i2);
            }
        }
        D0();
        final String str3 = this.J2;
        this.A1.postDelayed(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda121
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(j2, str3);
            }
        }, 2500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j2, String str) {
        if (this.L2 == j2 && str.equals(this.J2) && !this.Q2) {
            this.J2 = "";
            D0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Bundle bundle) {
        a("pickState", (String) null, bundle);
        this.A1.post(new Runnable() { public void run() { } });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final R r2) {
        try {
            try {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    if (r2.b.isValid()) {
                        transaction.reparent(r2.b, null).apply();
                    }
                    transaction.close();
                    this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda136
                        @Override // java.lang.Runnable
                        public final void run() {
                            r2.b();
                        }
                    });
                } catch (Throwable th) {
                    try {
                        transaction.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (RuntimeException e2) {
                Log.e("DuoPick", "Picker layer not detached", e2);
                Handler handler = this.A1;
                Objects.requireNonNull(r2);
                handler.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda136
                    @Override // java.lang.Runnable
                    public final void run() {
                        r2.b();
                    }
                });
            }
        } catch (Throwable th3) {
            Handler handler2 = this.A1;
            Objects.requireNonNull(r2);
            handler2.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda136
                @Override // java.lang.Runnable
                public final void run() {
                    r2.b();
                }
            });
            throw th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j2, long j3, int i2, int i3) {
        if (j2 == this.M2 && j3 == this.L2 && B0()) {
            a(true, new Rect(i2 - 2, i3 - 2, i2 + 3, i3 + 3));
        } else if (B0()) {
            a(this.Y2, this.W2, this.X2, 2001);
        }
    }

    private static int a(SurfaceControl surfaceControl, Rect rect) throws ReflectiveOperationException {
        HardwareBuffer hardwareBuffer;
        Bitmap bitmap;
        Bitmap bitmap2 = null;
        Object invoke = Class.forName("android.window.ScreenCaptureInternal").getMethod("captureLayers", SurfaceControl.class, Rect.class, Float.TYPE).invoke(null, surfaceControl, rect, Float.valueOf(1.0f));
        int i2 = 0;
        if (invoke == null || (hardwareBuffer = (HardwareBuffer) invoke.getClass().getMethod("getHardwareBuffer", null).invoke(invoke, null)) == null) {
            return 0;
        }
        try {
            bitmap = (Bitmap) invoke.getClass().getMethod("asBitmap", null).invoke(invoke, null);
            if (bitmap == null) {
                if (bitmap != null) {
                    bitmap.recycle();
                }
                hardwareBuffer.close();
                return 0;
            }
            try {
                Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, false);
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
                            j3 += (copy.getPixel(i4, i3) >> w_v) & 255;
                            j4 += (copy.getPixel(i4, i3) >> 8) & 255;
                            j5 += copy.getPixel(i4, i3) & 255;
                            j2++;
                        }
                    }
                    i3++;
                    i2 = 0;
                }
                int i5 = j2 == 0 ? 0 : ((int) (j5 / j2)) | (((int) (j3 / j2)) << w_v) | b_v | (((int) (j4 / j2)) << 8);
                copy.recycle();
                bitmap.recycle();
                hardwareBuffer.close();
                return i5;
            } catch (Throwable th) {

                if (0 != 0) {
                    bitmap2.recycle();
                }
                if (bitmap != null) {
                    bitmap.recycle();
                }
                hardwareBuffer.close();
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
            bitmap = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b4 A[Catch: all -> 0x00cb, TRY_LEAVE, TryCatch #1 {all -> 0x00cb, blocks: (B:17:0x0069, B:19:0x008a, B:21:0x0092, B:23:0x0097, B:26:0x009a, B:30:0x00a7, B:32:0x00af, B:34:0x00b4), top: B:16:0x0069 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int a(SurfaceControl surfaceControl) throws ReflectiveOperationException {
        Bitmap bitmap;
        Bitmap bitmap2 = null;
        Object invoke = Class.forName("android.window.ScreenCaptureInternal").getMethod("captureLayers", SurfaceControl.class, Rect.class, Float.TYPE).invoke(null, surfaceControl, new Rect(900, 256, 960, 1456), Float.valueOf(0.5f));
        if (invoke == null) {
            return 0;
        }
        HardwareBuffer hardwareBuffer = (HardwareBuffer) invoke.getClass().getMethod("getHardwareBuffer", null).invoke(invoke, null);
        try {
            bitmap = (Bitmap) invoke.getClass().getMethod("asBitmap", null).invoke(invoke, null);
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
                Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, false);
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
                    Arrays.sort(iArr, 0, i2);
                    int i5 = 0;
                    int i6 = 0;
                    int i7 = 0;
                    for (int i8 = 0; i8 < i2; i8++) {
                        if (i8 > 0) {
                            if (iArr[i8] == iArr[i8 - 1]) {
                                i7++;
                                if (i7 <= i5) {
                                    i6 = iArr[i8];
                                    i5 = i7;
                                }
                            }
                        }
                        i7 = 1;
                        if (i7 <= i5) {
                        }
                    }
                    int i9 = i5 * 2 >= width ? i6 : 0;
                    copy.recycle();
                    bitmap.recycle();
                    if (hardwareBuffer != null) {
                        hardwareBuffer.close();
                    }
                    return i9;
                } catch (Throwable th) {

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
            } catch (Throwable th2) {
                throw th2;
            }
        } catch (Throwable th3) {
            throw th3;
            bitmap = null;
        }
    }

    private void a(boolean z2) {
        boolean z3 = this.V0 != z2;
        this.V0 = z2;
        if (z3) {
            int i2 = !z2 ? 1 : 0;
            for (Q q2 : this.D5) {
                if (q2 != null) {
                    q2.e.a(i2);
                }
            }
            int i3 = this.G1;
            if (i3 >= 0 && !this.I1) {
                z(i3);
            }
            R r2 = this.w5;
            if (r2 != null && (r2.d.getBackground() instanceof N)) {
                ((N) this.w5.d.getBackground()).a(i2);
            }
            N n2 = this.y5;
            if (n2 != null) {
                n2.a(z2 ? 0 : 2);
            }
            Log.w("DuoRail", "Sidebar color=" + (z2 ? "black" : "white") + " pkg=" + this.F1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(int i2, Integer num) {
        return num.intValue() < i2 + (-512);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Field[] fieldArr, Field field, XposedInterface.Chain chain) throws Throwable {
        boolean z2= false;
        for (Field field2 : fieldArr) {
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
        this.x4.a(chain.getArg(0));
        final boolean z10 = z3;
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda125
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(z6, z7, z8, z9, z5, z10, z2, z4);
            }
        });
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9) {
        Runnable runnable;
        if (!this.Z4 || this.a5 != z2 || this.b5 != z3 || this.c5 != z4 || this.d5 != z5) {
            this.Z4 = true;
            this.a5 = z2;
            this.b5 = z3;
            this.c5 = z4;
            this.d5 = z5;
            y();
        }
        if (z6 && !this.k3) {
            this.o3 = 0.0f;
        }
        boolean z10 = this.k3 != z6;
        this.k3 = z6;
        if (z10) {
            y();
        }
        if (z10 && (runnable = this.C6) != null) {
            runnable.run();
        }
        if (z10 && !this.Z1.isEmpty()) {
            k(this.Z1);
        }
        this.l3 = z7;
        this.L1 = z8;
        this.M1 = z9;
        P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(int i2, XposedInterface.Chain chain) throws Throwable {
        int intValue = ((Integer) chain.getArg(0)).intValue();
        boolean z2= (((Integer) chain.getArg(i2)).intValue() & 2) != 0;
        if (intValue == 0) {
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda67
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.c(z2);
                }
            });
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        h2();
    }

    private void a(FrameLayout frameLayout) {
        FrameLayout frameLayout2 = this.h3;
        if (frameLayout2 == frameLayout) {
            return;
        }
        if (frameLayout2 != null) {
            frameLayout2.removeOnLayoutChangeListener(this.z3);
            frameLayout2.removeOnAttachStateChangeListener(this.C3);
        }
        b("container replaced");
        this.h3 = frameLayout;
        Consumer<View> consumer = this.B6;
        if (consumer != null) {
            consumer.accept(frameLayout.getRootView());
        }
        frameLayout.addOnLayoutChangeListener(this.z3);
        frameLayout.addOnAttachStateChangeListener(this.C3);
        if (frameLayout.isAttachedToWindow()) {
            a((View) frameLayout);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view) {
        b((String) null);
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        this.B3 = viewTreeObserver;
        viewTreeObserver.addOnPreDrawListener(this.A3);
        Log.i("DuoKeyguard", "Keyguard per-frame listeners=1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int[] iArr, boolean z2, boolean z3, boolean z4) {
        if (iArr != null && iArr.length == this.I3.length && !Arrays.equals(iArr, this.I3)) {
            this.I3 = iArr;
            F0();
        }
        h0 h0Var = this.W0;
        if (h0Var.R == z2 && h0Var.S == z3 && h0Var.T == z4) {
            return;
        }
        h0Var.R = z2;
        h0Var.S = z3;
        h0Var.T = z4;
        m1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(h0 h0Var, float f2) {
        h0Var.setY(f2);
        c(h0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, boolean z2, boolean z3) {
        if (i2 != this.a1) {
            this.a1 = i2;
            this.Z0.a(i2);
            Log.i("DuoFoldSplit", "Nudge level " + i2);
        }
        boolean z4 = this.s1;
        this.s1 = true;
        if (this.r1 == z2 && z4) {
            return;
        }
        this.r1 = false;
        Log.i("DuoFoldSplit", "Switch " + (z2 ? "on" : "off") + (z3 ? " (fold animation active)" : ""));
        f2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, List list, List list2, String[] strArr, List list3, List list4, boolean z2, boolean z3, boolean z4) {
        if (i2 == this.O3) {
            this.N3 = list;
        }
        this.M3 = list2;
        boolean z5 = Arrays.equals(strArr, this.S5) && list3.equals(this.K3) && list4.equals(this.L3);
        if (z5 && z2 == this.Q3 && z3 == this.R3) {
            return;
        }
        this.Q3 = z2;
        boolean z6 = z3 != this.R3;
        this.R3 = z3;
        if (!z5 || z6) {
            this.S5 = strArr;
            this.K3 = list3;
            this.L3 = list4;
            if (!z4) {
                p();
            }
            p1();
            d0 d0Var = this.U3;
            if (d0Var != null) {
                d0Var.d();
            }
            Log.w("DuoRail", "Custom rail layout " + Arrays.toString(strArr) + (list3.isEmpty() ? "" : " sidebar " + list3));
        }
    }

    private static int a(String[] strArr) {
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (dev.duo.hookprobe.J.f.equals(strArr[i2])) {
                return i2;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(Map map, String str, String str2) {
        return Long.compare(((Long) map.get(str2)).longValue(), ((Long) map.get(str)).longValue());
    }

    private void a(final K k2) {
        float f2;
        float f3;
        X x2 = this.W3;
        if (x2 != null && x2.a == k2.j_v) {
            this.W3 = null;
        }
        if (k2.i == null) {
            int D1 = D1();
            FrameLayout w2 = w(1);
            e0 e0Var = new e0();
            e0Var.setVerticalScrollBarEnabled(false);
            e0Var.setOverScrollMode(2);
            e0Var.setVerticalFadingEdgeEnabled(true);
            e0Var.setFadingEdgeLength(20);
            LinearLayout linearLayout = new LinearLayout(this.i4);
            linearLayout.setOrientation(1);
            linearLayout.setPadding(20, 20, 20, 0);
            e0Var.addView(linearLayout, new FrameLayout.LayoutParams(-1, -2));
            w2.addView(e0Var, new FrameLayout.LayoutParams(136, D1 - 136));
            c0 c0Var = new c0(this.i4);
            boolean z2 = this.U3 != null;
            c0Var.c = z2;
            c0Var.d = z2 ? 1.0f : 0.0f;
            c0Var.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda150
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dev.duo.workspaceprobe.b.this.c(k2, view);
                }
            });
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(96, 96);
            layoutParams.leftMargin = 20;
            layoutParams.topMargin = D1 - 116;
            w2.addView(c0Var, layoutParams);
            k2.i = w2;
            k2.j_v = linearLayout;
            k2.k = c0Var;
            k2.n_v = new FrameLayout(this.i4);
            a(k2, w2, 993.0f, G1(), 136, D1, 60.0f);
        }
        int D12 = D1();
        boolean z3 = this.R3;
        if (k2.i.getLayoutParams().height != D12 || k2.o_v != z3) {
            k2.i.getLayoutParams().height = D12;
            e0 e0Var2 = (e0) k2.j_v.getParent();
            e0Var2.getLayoutParams().height = z3 ? D12 : D12 - 136;
            e0Var2.a(z3);
            if (k2.o_v != z3) {
                ((ViewGroup) k2.k.getParent()).removeView(k2.k);
                if (z3) {
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(96, 96);
                    layoutParams2.gravity = 17;
                    k2.n_v.addView(k2.k, layoutParams2);
                } else {
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(96, 96);
                    layoutParams3.leftMargin = 20;
                    k2.i.addView(k2.k, layoutParams3);
                }
                k2.j_v.setPadding(20, 20, 20, z3 ? 20 : 0);
                k2.o_v = z3;
            }
            if (!z3) {
                ((FrameLayout.LayoutParams) k2.k.getLayoutParams()).topMargin = D12 - 116;
            }
            k2.i.requestLayout();
        }
        HashMap hashMap = new HashMap();
        boolean z4 = k2.j_v.getChildCount() > 0;
        float f4 = -1.0f;
        int i2 = 0;
        while (true) {
            f2 = 150.0f;
            if (i2 >= k2.j_v.getChildCount()) {
                break;
            }
            View childAt = k2.j_v.getChildAt(i2);
            if (childAt == k2.n_v) {
                f4 = (i2 * 150.0f) + childAt.getTranslationY();
            } else if (childAt.getContentDescription() != null) {
                hashMap.put(childAt.getContentDescription().toString(), Float.valueOf((i2 * 150.0f) + childAt.getTranslationY()));
            }
            i2++;
        }
        k2.j_v.removeAllViews();
        boolean z5 = k2.k.b;
        Iterator<String> it = (this.T3 ? this.L3 : this.K3).iterator();
        while (true) {
            f3 = f2;
            Iterator<String> it2 = it;
            if (!it.hasNext()) {
                break;
            }
            final String next = it2.next();
            try {
                Drawable z6 = z(next);
                FrameLayout frameLayout = new FrameLayout(this.i4);
                Float f5 = (Float) hashMap.get(next);
                float childCount = k2.j_v.getChildCount() * f3;
                if (f5 != null && f5.floatValue() != childCount) {
                    frameLayout.setTranslationY(f5.floatValue() - childCount);
                    frameLayout.animate().translationY(0.0f).setDuration(220L).setInterpolator(J).start();
                } else if (f5 == null && z4) {
                    frameLayout.setScaleX(0.5f);
                    frameLayout.setScaleY(0.5f);
                    frameLayout.setAlpha(0.0f);
                    frameLayout.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(220L).setInterpolator(J).start();
                }
                ImageView imageView = new ImageView(this.i4);
                imageView.setImageDrawable(z6);
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                frameLayout.addView(imageView, new FrameLayout.LayoutParams(-1, -1));
                frameLayout.setContentDescription(next);
                if (!this.T3) {
                    frameLayout.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda154
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            dev.duo.workspaceprobe.b.this.c(next, view);
                        }
                    });
                    frameLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda155
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            boolean b2;
                            b2 = dev.duo.workspaceprobe.b.this.b(k2, next, view);
                            return b2;
                        }
                    });
                } else {
                    V v2 = new V(this.i4, false);
                    v2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda151
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            dev.duo.workspaceprobe.b.this.a(next, view);
                        }
                    });
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(48, 48);
                    layoutParams4.gravity = 53;
                    frameLayout.addView(v2, layoutParams4);
                    if (this.Y3) {
                        p(v2);
                    }
                    frameLayout.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda152
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            dev.duo.workspaceprobe.b.this.b(next, view);
                        }
                    });
                    frameLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda153
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            boolean a2;
                            a2 = dev.duo.workspaceprobe.b.this.a(k2, next, view);
                            return a2;
                        }
                    });
                }
                frameLayout.setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda156
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        boolean b2;
                        b2 = dev.duo.workspaceprobe.b.this.b(view, motionEvent);
                        return b2;
                    }
                });
                LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(96, 96);
                layoutParams5.bottomMargin = 54;
                k2.j_v.addView(frameLayout, layoutParams5);
            } catch (PackageManager.NameNotFoundException e2) {
            }
            f2 = f3;
            it = it2;
        }
        for (int size = this.T3 ? this.L3.size() : 12; size < 12; size++) {
            View view = new View(this.i4);
            view.setBackground(b(z5 ? 654311423 : 335544320, 26.0f));
            LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(96, 96);
            layoutParams6.bottomMargin = 54;
            k2.j_v.addView(view, layoutParams6);
            if (this.Y3) {
                p(view);
            }
        }
        if (z3) {
            float childCount2 = k2.j_v.getChildCount() * f3;
            k2.n_v.animate().cancel();
            k2.n_v.setTranslationY(f4 >= 0.0f ? f4 - childCount2 : 0.0f);
            k2.j_v.addView(k2.n_v, new LinearLayout.LayoutParams(96, 96));
            if (f4 >= 0.0f && f4 != childCount2) {
                k2.n_v.animate().translationY(0.0f).setDuration(220L).setInterpolator(J).start();
            }
        }
        k2.i.setVisibility(0);
        k2.i.setY(G1());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, View view) {
        if (s()) {
            D(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(K k2, String str, View view) {
        return s() && b(k2, view, str);
    }

    private void a(String str, int i2, ActivityOptions activityOptions) {
        List<LauncherActivityInfo> b2 = b(str, i2);
        if (!b2.isEmpty()) {
            ((LauncherApps) this.i4.getSystemService(LauncherApps.class)).startMainActivity(b2.get(0).getComponentName(), C(i2), null, activityOptions == null ? null : activityOptions.toBundle());
            return;
        }
        throw new IllegalStateException(str + "@" + i2 + " has no launcher activity");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, String str, List list) {
        this.P3 = i2;
        try {
            Bundle bundle = new Bundle();
            bundle.putString("set", str);
            String str2 = null;
            Bundle call = this.i4.getContentResolver().call(Uri.parse("content://com.lsposed.miduo.config"), "railPanelOrder", (String) null, bundle);
            if (call != null) {
                str2 = call.getString("saved");
            }
            if (!str.equals(str2)) {
                throw new IllegalStateException(call == null ? "no response" : call.getString("error", "saved " + str2));
            }
            Log.w("DuoRail", "Sidebar panel order saved " + list.size());
        } catch (RuntimeException e2) {
            Log.w("DuoRail", "Sidebar panel order save failed", e2);
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda166
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.d0();
                }
            });
        }
    }

    private void a(K k2, View view, String str) {
        p();
        int G1 = ((G1() + view.getTop()) - ((View) k2.j_v.getParent()).getScrollY()) + 48;
        B(5);
        b0 b0Var = new b0(str, this.L3.contains(str), 531, G1, 420.0f, false);
        this.V3 = b0Var;
        b0Var.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(Collator collator, Object[] objArr, Object[] objArr2) {
        return collator.compare((String) objArr[1], (String) objArr2[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Bundle bundle) {
        a("pickState", str, bundle);
        this.A1.post(new Runnable() { public void run() { } });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002a, code lost:
    
        if (r2.F3.contains(r3.getPackageName()) == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ Object a(boolean z2, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        this.D3 = (NotificationListenerService) chain.getThisObject();
        if (this.G3) {
            if (z2) {
                StatusBarNotification statusBarNotification = (StatusBarNotification) chain.getArg(0);
                if (!statusBarNotification.isClearable()) {
                }
            }
            this.A1.removeCallbacks(this.E3);
            this.A1.post(this.E3);
            return proceed;
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(StatusBarNotification statusBarNotification, StatusBarNotification statusBarNotification2) {
        return Long.compare(statusBarNotification2.getPostTime(), statusBarNotification.getPostTime());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Method method, Class cls, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        FrameLayout frameLayout = (FrameLayout) chain.getArg(0);
        Bundle bundle = new Bundle();
        bundle.putBoolean("isLeftShortcutView", false);
        Object invoke = method.invoke(chain.getThisObject(), bundle, "getShortcutView");
        bundle.putBoolean("isLeftShortcutView", true);
        Object invoke2 = method.invoke(chain.getThisObject(), bundle, "getShortcutView");
        if ((invoke instanceof ImageView) && (invoke2 instanceof ImageView)) {
            a(frameLayout);
            this.i3 = (ImageView) invoke;
            this.j3 = (ImageView) invoke2;
            this.t3 = null;
            this.s3 = null;
            frameLayout.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda103
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.K();
                }
            });
            Field declaredField = cls.getDeclaredField("miuiShortcutPlugin");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(chain.getThisObject());
            if (obj != null) {
                e(obj.getClass().getClassLoader());
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Field field, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        ValueAnimator valueAnimator = (ValueAnimator) field.get(chain.getThisObject());
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.m3 = true;
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda177
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    dev.duo.workspaceprobe.b.this.a(valueAnimator2);
                }
            });
            valueAnimator.addListener(new C0036e());
            Log.i("DuoKeyguard", "Following official unlock animator duration=" + valueAnimator.getDuration());
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        this.o3 = valueAnimator.getAnimatedFraction();
        h2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(WeakHashMap weakHashMap, Field field, Field field2, XposedInterface.Chain chain) throws Throwable {
        float[] fArr = v0() ? (float[]) weakHashMap.get(chain.getThisObject()) : null;
        if (fArr != null) {
            field.setFloat(chain.getThisObject(), fArr[0]);
            field2.setFloat(chain.getThisObject(), fArr[1]);
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Field field, Method method, WeakHashMap weakHashMap, Field field2, Field field3, Field field4, Field field5, Method method2, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (v0()) {
            ImageView imageView = (ImageView) field.get(chain.getThisObject());
            Rect rect = imageView == this.i3 ? this.s3 : imageView == this.j3 ? this.t3 : null;
            if (rect != null && this.z5 != null) {
                View view = (View) method.invoke(chain.getThisObject(), null);
                int[] r6 = new int[2];
                view.getLocationOnScreen(r6);
                float max = Math.max(Math.max(132, Math.round(this.i4.getResources().getDisplayMetrics().density * 48.0f)) + 18.0f, Math.max(this.s3.height(), this.t3.height()) * 2.0f);
                float c2 = c(this.z5);
                float f2 = c2 + (r10.f / 2.0f);
                float d2 = ((this.a4 != 0 || this.b4) ? d(this.z5) : r10.h) + (this.z5.g / 2.0f);
                if (imageView != this.j3) {
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
                method2.invoke(view, Float.valueOf(1.0f));
                view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserverOnPreDrawListenerC0037f(view, method2));
                StringBuilder append = new StringBuilder().append("Official shortcut origin=").append(f2).append(",").append(f3).append(" torch=");
                if (imageView == this.j3) {
                    z2 = true;
                }
                Log.i("DuoKeyguard", append.append(z2).toString());
            }
        }
        return proceed;
    }

    private Rect a(ImageView imageView) {
        Drawable drawable = imageView.getDrawable();
        if (drawable == null || drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Rect rect = new Rect(drawable.getBounds());
        drawable.setBounds(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
        drawable.draw(new Canvas(createBitmap));
        drawable.setBounds(rect);
        Rect a2 = a(createBitmap);
        createBitmap.recycle();
        return a2;
    }

    private Rect a(Bitmap bitmap) {
        return a(bitmap, false);
    }

    private Rect a(Bitmap bitmap, boolean z2) {
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
                if ((iArr[(bitmap.getWidth() * i6) + i7] >>> 24) > 8 && (!z2 || (iArr[(bitmap.getWidth() * i6) + i7] & 255) > j0_v)) {
                    i4 = Math.min(i4, i7);
                    i3 = Math.min(i3, i6);
                    i2 = Math.max(i2, i7);
                    i5 = Math.max(i5, i6);
                }
            }
        }
        if (i2 < 0) {
            return null;
        }
        return new Rect(i4, i3, i2 + 1, i5 + 1);
    }

    private void a(ImageView imageView, Rect rect, float f2, float f3, int[] iArr, int i2) {
        b(imageView);
        View view = (View) imageView.getParent();
        Drawable drawable = imageView.getDrawable();
        float exactCenterX = rect.exactCenterX() - (drawable.getIntrinsicWidth() / 2.0f);
        float f4 = i2 / 2.0f;
        float f5 = ((f2 - iArr[0]) - f4) - exactCenterX;
        float exactCenterY = ((f3 - iArr[1]) - f4) - (rect.exactCenterY() - (drawable.getIntrinsicHeight() / 2.0f));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        int round = Math.round(f5);
        int round2 = Math.round(exactCenterY);
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
        ViewGroup.LayoutParams layoutParams2 = imageView.getLayoutParams();
        if (layoutParams2.width != i2 || layoutParams2.height != i2) {
            layoutParams2.height = i2;
            layoutParams2.width = i2;
            imageView.setLayoutParams(layoutParams2);
        }
        imageView.setTranslationX(f5 - round);
        imageView.setTranslationY(exactCenterY - round2);
    }

    private static boolean a(View view, View view2) {
        for (ViewParent parent = view2.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == view) {
                return true;
            }
        }
        return false;
    }

    private int a(Display display) {
        Display.Mode mode;
        if (display == null || (mode = display.getMode()) == null) {
            return -1;
        }
        int physicalWidth = mode.getPhysicalWidth();
        int physicalHeight = mode.getPhysicalHeight();
        if (physicalWidth == O && physicalHeight == P) {
            return 1;
        }
        if (physicalWidth == P && physicalHeight == O) {
            return 1;
        }
        if (physicalWidth == 1168 && physicalHeight == 1712) {
            return 0;
        }
        return (physicalWidth == 1712 && physicalHeight == 1168) ? 0 : -1;
    }

    private void a(final boolean z2, final Set<String> set) {
        if (q0()) {
            final long j2 = this.e4;
            Runnable runnable = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda183
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(r2, j2, z2, set);
                }
            };
            final Runnable[] runnableArr = {runnable};
            this.f4.add(runnable);
            this.A1.post(runnableArr[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Runnable[] runnableArr, long j2, boolean z2, Set set) {
        this.f4.remove(runnableArr[0]);
        if (j2 == this.e4 && q0() && b(z2, (Set<String>) set)) {
            if (this.C1_v) {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    a(transaction);
                    transaction.apply();
                    transaction.close();
                    return;
                } catch (Throwable th) {
                    try {
                        transaction.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            m2();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Field field, Field field2, Field field3, Field field4, XposedInterface.Chain chain) throws Throwable {
        Object thisObject = chain.getThisObject();
        if (v0() && field.getInt(thisObject) == O && field2.getInt(thisObject) == P && field3.getBoolean(thisObject)) {
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
    public /* synthetic */ void a(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z2, String str, String str2) {
        this.y1 = runningTaskInfo;
        if (this.u1 == z2 && this.v1.equals(str) && this.w1.equals(str2)) {
            return;
        }
        this.u1 = z2;
        this.v1 = str;
        this.w1 = str2;
        if (this.e1 && this.x1) {
            this.Z0.a();
        }
        f2();
    }

    private void a(ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.wm.shell.multiplesplit.MultipleSplitTransitionHandler", false, classLoader);
            Class<?> cls2 = Class.forName("com.android.wm.shell.multiplesplit.MultipleSplitRootTaskOrganizer", false, classLoader);
            Class<?> cls3 = Class.forName("com.android.wm.shell.multiplesplit.MultipleSplitTransitionHandler$TransitSession", false, classLoader);
            Class<?> cls4 = Class.forName("com.android.wm.shell.multiplesplit.MultipleSplitTransitionHandler$EnterSession", false, classLoader);
            Class<?> cls5 = Class.forName("com.android.wm.shell.sosc.SoScUtilsImpl", false, classLoader);
            Method method = null;
            final Method method2 = cls2.getMethod("getDockOffset", null);
            final Method method3 = cls5.getMethod("getTaskRootLeash", null);
            final Method method4 = cls5.getMethod("getInstance", null);
            final Field declaredField = cls3.getDeclaredField("mExtraTransitType");
            final Field declaredField2 = cls4.getDeclaredField("mEnteringIndex");
            final Field declaredField3 = cls.getDeclaredField("mOrganizer");
            Field[] fieldArr = {declaredField, declaredField2, declaredField3};
            for (int i2 = 0; i2 < 3; i2++) {
                fieldArr[i2].setAccessible(true);
            }
            for (Method method5 : cls.getDeclaredMethods()) {
                if (method5.getName().equals("playDockChangeAnimation")) {
                    method = method5;
                }
            }
            if (method != null) {
                hook(method2).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda61
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object a2;
                        a2 = dev.duo.workspaceprobe.b.this.a(chain);
                        return a2;
                    }
                });
                hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda62
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object a2;
                        a2 = dev.duo.workspaceprobe.b.this.a(declaredField, declaredField2, method2, declaredField3, method3, method4, chain);
                        return a2;
                    }
                });
                Log.i("DuoFoldSplit", "Dock-in animation hook ready");
                return;
            }
            throw new NoSuchMethodException("playDockChangeAnimation");
        } catch (ReflectiveOperationException e2) {
            Log.e("DuoFoldSplit", "Dock-in animation entry unavailable", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(XposedInterface.Chain chain) throws Throwable {
        if (Boolean.TRUE.equals(this.u4.get())) {
            return 0;
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Field field, Field field2, Method method, Field field3, Method method2, Method method3, XposedInterface.Chain chain) throws Throwable {
        Object arg = chain.getArg(1);
        if (field.getInt(arg) != 11286) {
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda83
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.m();
                }
            });
            return chain.proceed();
        }
        if (this.r1 && v0() && field2.getInt(arg) == 2 && SystemClock.uptimeMillis() - this.v4 <= 3000) {
            final int intValue = ((Integer) method.invoke(field3.get(chain.getThisObject()), null)).intValue();
            this.u4.set(Boolean.TRUE);
            try {
                Object proceed = chain.proceed();
                this.u4.set(Boolean.FALSE);
                final SurfaceControl surfaceControl = (SurfaceControl) method2.invoke(method3.invoke(null, null), null);
                if (surfaceControl != null && surfaceControl.isValid() && intValue != 0) {
                    this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda84
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.workspaceprobe.b.this.a(surfaceControl, intValue);
                        }
                    });
                }
                return proceed;
            } catch (Throwable th) {
                this.u4.set(Boolean.FALSE);
                throw th;
            }
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(SurfaceControl surfaceControl, int i2, ValueAnimator valueAnimator) {
        if (!surfaceControl.isValid()) {
            valueAnimator.cancel();
            return;
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            transaction.setPosition(surfaceControl, i2 * ((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f).apply();
            transaction.close();
        } catch (Throwable th) {
            try {
                transaction.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Method method, Method method2, Method method3, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        try {
            final Object thisObject = chain.getThisObject();
            final Executor executor = (Executor) method.invoke(thisObject, null);
            final Object invoke = method2.invoke(null, null);
            final Object invoke2 = method3.invoke(null, null);
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.a(thisObject, executor, invoke, invoke2);
                }
            });
            return proceed;
        } catch (ReflectiveOperationException e2) {
            Log.e("DuoFoldSplit", "Native controller capture failed", e2);
            return proceed;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Object obj, Executor executor, Object obj2, Object obj3) {
        this.h1 = obj;
        this.k1 = executor;
        this.i1 = obj2;
        this.j1 = obj3;
        f2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ActivityManager.RunningTaskInfo runningTaskInfo, Bundle bundle) {
        try {
            if (this.r1 && this.u1 && this.y1 == runningTaskInfo && !this.L1 && !this.M1 && !this.N1 && v0() && R0() && a(p0()) == 1 && ((Boolean) this.p1.invoke(this.j1, null)).booleanValue() && ((Boolean) this.m1.invoke(this.i1, null)).booleanValue() && !((Boolean) this.o1.invoke(this.j1, null)).booleanValue()) {
                this.v4 = SystemClock.uptimeMillis();
                this.q1.invoke(this.j1, bundle);
                Log.i("DuoFoldSplit", "Native dock requested task=" + runningTaskInfo.taskId);
            }
        } catch (ReflectiveOperationException e2) {
            Log.e("DuoFoldSplit", "Native dock request failed", e2);
        }
    }

    private void a(SurfaceControl surfaceControl, boolean z2) {
        boolean z3;
        SurfaceControl.Transaction transaction;
        try {
            if (!z2) {
                if (this.C1_v) {
                    transaction = new SurfaceControl.Transaction();
                    try {
                        for (R r2 : this.h4) {
                            if (r2 != this.N6 || !this.n3) {
                                transaction.setVisibility(r2.b_v, false);
                            }
                            r2.a();
                        }
                        transaction.apply();
                        this.l4 = false;
                        transaction.close();
                        this.C1_v = false;
                        return;
                    } finally {
                    }
                }
                return;
            }
            b(p0());
            if (this.h4.isEmpty()) {
                l();
            }
            if (q0() && !s0()) {
                if (r0() > 0) {
                    q1();
                }
                try {
                    j();
                    z3 = s0();
                } finally {
                    if (!s0()) {
                        q1();
                    }
                }
            } else {
                z3 = false;
            }
            o0();
            if (surfaceControl == this.B1 && this.C1_v && !z3) {
                return;
            }
            transaction = new SurfaceControl.Transaction();
            try {
                this.l4 = false;
                for (R r3 : this.h4) {
                    r3.a();
                    transaction.reparent(r3.b_v, surfaceControl).setPosition(r3.b_v, c(r3), d(r3)).setCrop(r3.b_v, new Rect(0, 0, r3.f, r3.g)).setLayer(r3.b_v, 1000000).setVisibility(r3.b_v, true);
                    float f2 = r3.j_v;
                    if (f2 > 0.0f) {
                        a(transaction, "setCornerRadius", r3.b_v, Float.valueOf(f2));
                    }
                    int i2 = r3.i;
                    if (i2 > 0) {
                        a(transaction, "setBackgroundBlurRadius", r3.b_v, Integer.valueOf(i2));
                    }
                    if (this.x5.contains(r3)) {
                        a(transaction, "setShadowRadius", r3.b_v, Float.valueOf(8.0f));
                    }
                }
                b(transaction, false);
                transaction.apply();
                transaction.close();
                this.B1 = surfaceControl;
                this.C1_v = true;
                Log.w("DuoRail", "Rail attached to " + surfaceControl);
                return;
            } finally {
                try {
                    transaction.close();
                } catch (Throwable th) {
                    th.addSuppressed(th);
                }
            }
        } catch (Throwable th2) {
            Log.w("DuoRail", "Rail failed", th2);
        }
        Log.w("DuoRail", "Rail failed", th2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Object obj, Method method, Object[] objArr) throws Throwable {
        if (!"onInputEvent".equals(method.getName()) || objArr == null) {
            return null;
        }
        Object obj2 = objArr[0];
        if (!(obj2 instanceof MotionEvent)) {
            return null;
        }
        b((MotionEvent) obj2);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(String str, XposedInterface.Chain chain) throws Throwable {
        if (this.F4 == null) {
            this.F4 = chain.getThisObject();
            Log.w("DuoRail", "Launcher proxy captured via " + str);
        }
        return chain.proceed();
    }

    private void a(MotionEvent motionEvent) {
        try {
            if (this.O4 == null) {
                Class<?> cls = Class.forName("com.android.systemui.LauncherProxyService$1$$ExternalSyntheticLambda15", false, this.G4.getClass().getClassLoader());
                Constructor<?> declaredConstructor = cls.getDeclaredConstructor(Integer.TYPE);
                this.O4 = declaredConstructor;
                declaredConstructor.setAccessible(true);
                this.P4 = cls.getDeclaredField("f$0");
                this.Q4 = cls.getDeclaredField("f$1");
                this.P4.setAccessible(true);
                this.Q4.setAccessible(true);
            }
            this.I4.invoke(this.G4, motionEvent);
            if (((Boolean) this.J4.invoke(this.G4, motionEvent)).booleanValue()) {
                return;
            }
            Object newInstance = this.O4.newInstance(0);
            this.P4.set(newInstance, this.G4);
            this.Q4.set(newInstance, motionEvent);
            ((Runnable) newInstance).run();
        } catch (Throwable th) {
            Log.w("DuoRail", "Shade forward failed", th);
            this.M4 = false;
        }
    }

    private static void a(SurfaceControl.Transaction transaction, String str, SurfaceControl surfaceControl, Object obj) {
        try {
            SurfaceControl.Transaction.class.getMethod(str, SurfaceControl.class, obj instanceof Integer ? Integer.TYPE : Float.TYPE).invoke(transaction, surfaceControl, obj);
        } catch (ReflectiveOperationException e2) {
            Log.w("DuoRail", str + " unavailable", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(h0 h0Var) {
        boolean z2 = true;
        int i2 = Settings.System.getInt(this.i4.getContentResolver(), "battery_indicator_style", 1);
        if (i2 != 1 && i2 != 3) {
            z2 = false;
        }
        h0Var.P = z2;
        m1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(WifiManager wifiManager, h0 h0Var) {
        WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        h0Var.b0 = (connectionInfo == null || connectionInfo.getSupplicantState() != SupplicantState.COMPLETED) ? -1 : WifiManager.calculateSignalLevel(connectionInfo.getRssi(), 3);
        m1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(h0 h0Var, WifiManager wifiManager) {
        int i2 = h0Var.b0;
        WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        int calculateSignalLevel = (connectionInfo == null || connectionInfo.getSupplicantState() != SupplicantState.COMPLETED) ? -1 : WifiManager.calculateSignalLevel(connectionInfo.getRssi(), 3);
        if (calculateSignalLevel != i2) {
            h0Var.b0 = calculateSignalLevel;
            m1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final int i2, Boolean bool) {
        if (i2 != this.X4) {
            return;
        }
        if (bool != null) {
            this.W4 = 0;
            b(bool.booleanValue());
            return;
        }
        int i3 = this.W4;
        long[] jArr = c0;
        if (i3 >= jArr.length) {
            this.W4 = 0;
            Log.w("DuoStandby", "Clock switch unreadable; keeping current state " + this.R4);
        } else {
            this.W4 = i3 + 1;
            long j2 = jArr[i3];
            Log.w("DuoStandby", "Clock switch read retry in " + j2 + "ms");
            this.A1.postDelayed(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda85
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.s(i2);
                }
            }, j2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Exception exc) {
        this.U4 = true;
        this.V4 = SystemClock.uptimeMillis() + 60000;
        n();
        N1();
        Log.e("DuoStandby", "Automatic clock disabled after interface failure", exc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Method method, Object obj, Method method2, Object[] objArr) throws Throwable {
        if (method2.getName().equals("hashCode")) {
            return Integer.valueOf(System.identityHashCode(obj));
        }
        if (method2.getName().equals("equals")) {
            return Boolean.valueOf(obj == objArr[0]);
        }
        if (method2.getName().equals("toString")) {
            return "MiDuo standby state callback";
        }
        if (method2.getName().equals("onDeviceStateChanged")) {
            final int intValue = ((Integer) method.invoke(objArr[0], null)).intValue();
            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda68
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.b.this.q(intValue);
                }
            });
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.Process process, Object obj) {
        this.q5 = process;
        if (this.p5 == obj && !this.r5 && this.s5 != null && J1() && this.l5 && this.m5) {
            try {
                process.getOutputStream().write(71);
                process.getOutputStream().flush();
                return;
            } catch (IOException e2) {
                a((Exception) e2);
                return;
            }
        }
        process.destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Object obj, Exception exc) {
        if (this.p5 != obj) {
            return;
        }
        boolean z2 = this.r5;
        this.p5 = null;
        this.q5 = null;
        this.r5 = false;
        this.o5 = false;
        n();
        if (!z2 && exc != null) {
            a(exc);
        } else {
            y();
        }
    }

    private void a(g0 g0Var) {
        g0Var.d = true;
        Intent addFlags = new Intent().setComponent(new ComponentName(dev.duo.icons.g.a, "dev.duo.hookprobe.TentClockActivity")).addFlags(411041792);
        Parcel obtain = Parcel.obtain();
        try {
            g0Var.writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            addFlags.putExtra(TentClockActivity.a, (Parcelable) ResultReceiver.CREATOR.createFromParcel(obtain));
            obtain.recycle();
            Bundle bundle = new Bundle();
            bundle.putBinder(TentClockActivity.c, g0Var.a);
            addFlags.putExtras(bundle);
            try {
                this.i4.startActivity(addFlags);
            } catch (RuntimeException e2) {
                n();
                Log.e("DuoStandby", "Automatic clock launch failed", e2);
            }
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Intent intent, View view) {
        b(intent);
    }

    private void a(FrameLayout frameLayout, View view, int i2) {
        a(frameLayout, view, i2, j0_v, m0_v, 170);
    }

    private void a(FrameLayout frameLayout, View view, int i2, int i3, int i4, int i5) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i3);
        layoutParams.gravity = 1;
        layoutParams.topMargin = i4 + (i2 * i5);
        frameLayout.addView(view, layoutParams);
        view.setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda113
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean a2;
                a2 = dev.duo.workspaceprobe.b.a(view2, motionEvent);
                return a2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
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

    private R a(String str, View view, int i2, int i3) {
        boolean startsWith = str.startsWith("desk_");
        int i4 = startsWith ? 170 : 180;
        R r2 = new R(str, view, N - (i4 / 2.0f), i2, i4, startsWith ? e(i3) : c(i3), (startsWith || str.equals("app_recent")) ? 5 : 60, startsWith ? n0_v : 60.0f, 8);
        this.h4.add(r2);
        return r2;
    }

    private void a(String[][] strArr) {
        final Intent launchIntentForPackage;
        ActivityInfo activityInfo;
        PackageManager packageManager = this.i4.getPackageManager();
        FrameLayout t02 = t0();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if ("dial".equals(strArr[i2][0])) {
                launchIntentForPackage = new Intent("android.intent.action.DIAL");
            } else {
                launchIntentForPackage = packageManager.getLaunchIntentForPackage(strArr[i2][1]);
            }
            if (launchIntentForPackage != null) {
                launchIntentForPackage.addFlags(268435456);
                ResolveInfo resolveActivity = packageManager.resolveActivity(launchIntentForPackage, 0);
                if (resolveActivity != null && (activityInfo = resolveActivity.activityInfo) != null) {
                    this.E5.add(activityInfo.packageName);
                }
                ImageView imageView = new ImageView(this.i4);
                try {
                    imageView.setImageDrawable(packageManager.getActivityIcon(launchIntentForPackage));
                } catch (Exception e2) {
                    Log.w("DuoRail", "icon", e2);
                }
                imageView.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda218
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        dev.duo.workspaceprobe.b.this.b(launchIntentForPackage, view);
                    }
                });
                a(t02, imageView, i2);
            }
        }
        int e3 = e(4) + 448;
        R a2 = a("desk_fixed", t02, i0, 4);
        this.u5 = a2;
        this.x5.add(a2);
        FrameLayout t03 = t0();
        int i3 = 0;
        while (true) {
            ImageView[] imageViewArr = this.B5;
            if (i3 >= imageViewArr.length) {
                break;
            }
            imageViewArr[i3] = new ImageView(this.i4);
            a(t03, this.B5[i3], i3);
            i3++;
        }
        int i4 = 2;
        R a3 = a("desk_recent", t03, e3, 2);
        this.v5 = a3;
        this.x5.add(a3);
        int i5 = 3;
        int[] iArr = {4, 3, 187};
        int i6 = 0;
        while (i6 < i5) {
            int i7 = i5;
            Q q2 = new Q(this.i4, i6);
            this.D5[i6] = q2;
            final int i8 = iArr[i6];
            q2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda219
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dev.duo.workspaceprobe.b.this.a(i8, view);
                }
            });
            int i9 = i6;
            this.A5[i9] = new R("app_nav" + i6, q2, 993.0f, (i6 * g0) + 401, 136, 136, 0, 0.0f, 8);
            this.h4.add(this.A5[i9]);
            i6 = i9 + 1;
            i5 = i7;
            i4 = i4;
        }
        int i10 = i5;
        int i11 = i4;
        FrameLayout w2 = w(1);
        int i12 = 0;
        while (true) {
            ImageView[] imageViewArr2 = this.C5;
            if (i12 >= imageViewArr2.length) {
                this.w5 = a("app_recent", w2, 867, i10);
                this.R5 = 867;
                G0();
                a(this.B5, this.E5);
                Log.w("DuoRail", "Mode panels ready fixed=" + this.E5 + " desk " + i0 + "/" + e3 + " app " + d0 + "/867 end " + (e3 + e(i11)));
                return;
            }
            imageViewArr2[i12] = new T(this.i4);
            b(w2, this.C5[i12], i12);
            i12++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, View view) {
        i(i2);
    }

    private static void a(SurfaceControl.Transaction transaction, K k2, boolean z2) {
        transaction.setVisibility(k2.a, z2);
        k2.y = z2 ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(K k2, View view) {
        if (s() && k2.t == this.G1 && R0()) {
            q(view);
            y0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Method method, K k2, Field field, Object obj, Method method2, Object[] objArr) throws Throwable {
        if ("onComputeInternalInsets".equals(method2.getName())) {
            method.invoke(objArr[0], 3);
            a(k2, (Region) field.get(objArr[0]));
            return null;
        }
        if ("equals".equals(method2.getName())) {
            return Boolean.valueOf(obj == objArr[0]);
        }
        if ("hashCode".equals(method2.getName())) {
            return Integer.valueOf(System.identityHashCode(obj));
        }
        if ("toString".equals(method2.getName())) {
            return "DuoAppRailInsets";
        }
        return null;
    }

    private void a(SurfaceControl.Transaction transaction, K k2, int i2, int i3) {
        transaction.setVisibility(k2.p_v, i3 > 0);
        if (i3 > 0) {
            transaction.setCrop(k2.p_v, new Rect(0, 0, i2, i3));
        }
    }

    private void a(SurfaceControl.Transaction transaction, K k2, int i2) {
        if (k2.p_v == null) {
            return;
        }
        try {
            if (t0 == null) {
                t0 = SurfaceControl.Transaction.class.getMethod("setColor", SurfaceControl.class, float[].class);
            }
            t0.invoke(transaction, k2.p_v, new float[]{Color.red(i2) / 255.0f, Color.green(i2) / 255.0f, Color.blue(i2) / 255.0f});
        } catch (ReflectiveOperationException e2) {
            Log.w("DuoRail", "Rail floor colour failed", e2);
        }
    }

    private void a(K k2, View view, float f2, int i2, int i3, int i4, float f3) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
        layoutParams.gravity = 51;
        k2.c.addView(view, layoutParams);
        view.setX(f2 - 963.0f);
        view.setY(i2);
        if (f3 > 0.0f) {
            view.setOutlineProvider(new C0052u(f3));
            view.setClipToOutline(true);
        }
    }

    private void a(K k2, Region region) {
        region.setEmpty();
        if (k2.t == this.G1 && s()) {
            Rect rect = new Rect();
            for (int i2 = 0; i2 < k2.c.getChildCount(); i2++) {
                View childAt = k2.c.getChildAt(i2);
                if (childAt.getVisibility() == 0 && (childAt != k2.r_v || this.H3)) {
                    h0 h0Var = k2.q;
                    if (childAt == h0Var) {
                        if (h0Var.k0_v) {
                            Region c2 = k2.q.c();
                            c2.translate(Math.round(childAt.getX()), Math.round(childAt.getY()));
                            region.op(c2, Region.Op.UNION);
                        }
                    } else {
                        childAt.getHitRect(rect);
                        region.op(rect, Region.Op.UNION);
                    }
                }
            }
        }
    }

    private void a(final int i2, SurfaceControl.Transaction transaction) {
        final K k2;
        int i3;
        int i4;
        String str;
        final L l2 = this.N5.get(Integer.valueOf(i2));
        if (t() && l2 != null && this.p2.containsKey(Integer.valueOf(i2)) && this.n2.get(Integer.valueOf(i2)) == l2.a) {
            boolean j2 = j(i2);
            if (!j2) {
                String g2 = g(this.G0.get(Integer.valueOf(i2)));
                if (g2 == null) {
                    i4 = 1;
                } else {
                    i4 = (!c(g2) && v0() && this.J0.b(g2) == null) ? 2 : 4;
                }
                int intValue = this.O5.getOrDefault(Integer.valueOf(i2), 0).intValue();
                if ((intValue & i4) == 0) {
                    this.O5.put(Integer.valueOf(i2), Integer.valueOf(intValue | i4));
                    StringBuilder append = new StringBuilder().append("App rail decor not attached task=").append(i2).append(" reason=");
                    if (i4 == 1) {
                        str = "no task info";
                    } else {
                        str = i4 == 2 ? "Duo state unknown" : "not Duo";
                    }
                    Log.w("DuoRail", append.append(str).toString());
                }
                if (i4 != 4 || !this.M5.containsKey(Integer.valueOf(i2))) {
                    return;
                }
            } else if (this.M5.containsKey(Integer.valueOf(i2)) || l2.c) {
                return;
            }
            SurfaceControl.Transaction transaction2 = null;
            if (!j2) {
                k2 = null;
            } else {
                SurfaceControl surfaceControl = l2.b_v;
                if (surfaceControl == null || !surfaceControl.isValid()) {
                    return;
                }
                synchronized (this.L5) {
                    k2 = this.L5.poll();
                }
                if (k2 == null) {
                    l2.c = true;
                    this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda20
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
                    transaction2 = new SurfaceControl.Transaction();
                } catch (RuntimeException e2) {
                    Log.e("DuoRail", "App rail decor attach failed task=" + i2, e2);
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
                    k2.t_v = i2;
                    this.M5.put(Integer.valueOf(i2), k2);
                    transaction.reparent(k2.a, l2.b_v).setLayer(k2.a, q0_v);
                    int[] iArr = this.P5.get(Integer.valueOf(i2));
                    if (iArr != null) {
                        transaction.setPosition(k2.a, iArr[0], iArr[1]);
                    }
                    if (iArr != null && (i3 = iArr[2]) > 0) {
                        a(transaction, k2, i3, iArr[3]);
                    }
                    a(transaction, k2, d(i2));
                    k2.z_v = Float.NaN;
                    a(transaction, k2, u(i2));
                    this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda21
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.workspaceprobe.b.this.a(i2, l2, k2);
                        }
                    });
                    Log.w("DuoRail", "App rail decor attach task=" + i2);
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
    public /* synthetic */ void a(int i2, L l2, K k2) {
        if (this.N5.get(Integer.valueOf(i2)) == l2 && this.M5.get(Integer.valueOf(i2)) == k2) {
            k2.q.d(this.W0);
            k2.q.setY(this.I3[1] + T);
            c(k2.q);
            k2.r_v.setVisibility(this.H3 ? 0 : 8);
            k2.q.invalidate();
            k2.c.requestLayout();
            d(k2);
            P();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(L l2, int i2, final K k2) {
        l2.c = false;
        if (this.N5.get(Integer.valueOf(i2)) == l2 && this.p2.containsKey(Integer.valueOf(i2)) && this.n2.get(Integer.valueOf(i2)) == l2.a && !this.M5.containsKey(Integer.valueOf(i2)) && j(i2)) {
            synchronized (this.L5) {
                this.L5.addFirst(k2);
            }
            a(i2, (SurfaceControl.Transaction) null);
            return;
        }
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda142
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.c(k2);
            }
        });
    }

    private void a(int i2, SurfaceControl.Transaction transaction, Rect rect, Rect rect2, int i3) {
        if (rect == null || rect2 == null) {
            return;
        }
        this.P5.put(Integer.valueOf(i2), new int[]{rect2.right, rect.top, i3, rect.height()});
        K k2 = this.M5.get(Integer.valueOf(i2));
        if (k2 == null || transaction == null) {
            return;
        }
        transaction.setPosition(k2.a, rect2.right, rect.top);
        a(transaction, k2, d(i2));
        if (k2.p_v == null || i3 <= 0 || rect.height() <= 0) {
            return;
        }
        a(transaction, k2, i3, rect.height());
    }

    private boolean a(SurfaceControl.Transaction transaction, boolean z2) {
        int a2;
        if (!this.Q5) {
            return false;
        }
        boolean z3 = false;
        for (K k2 : this.M5.values()) {
            k2.q_v.a(z2 && k2.t_v == this.G1 && s() && R0());
            boolean z4 = z2 && d(k2.t_v);
            if (k2.y_v != z4) {
                a(transaction, k2, z4);
                z3 = true;
            }
            if (z2) {
                float f2 = this.I6.contains(Integer.valueOf(k2.t_v)) ? 0.0f : 1.0f;
                if (f2 != k2.z_v) {
                    transaction.setAlpha(k2.a, f2);
                    k2.z_v = f2;
                    z3 = true;
                }
                if (k2.t_v == this.G1 && !this.I1) {
                    if (k2.v_v != this.H1 && k2.f && (a2 = a(k2.h, G())) >= 0) {
                        k2.u_v = a2;
                        k2.v_v = this.H1;
                    }
                    if (k2.m != this.H1) {
                        k2.m = this.H1;
                        d(k2);
                    }
                    if (k2.l_v != this.H1) {
                        k2.l_v = this.H1;
                        g(k2);
                    }
                    k2.d.setVisibility((!k2.f || k2.u_v <= 0) ? 4 : 0);
                }
            }
        }
        return z3;
    }

    private int a(ImageView[] imageViewArr, Set<String> set) {
        ComponentName componentName;
        if (!q0()) {
            return -1;
        }
        if (imageViewArr[0] == null) {
            return -1;
        }
        PackageManager packageManager = this.i4.getPackageManager();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            for (ActivityManager.RecentTaskInfo recentTaskInfo : ((ActivityManager) this.i4.getSystemService(ActivityManager.class)).getRecentTasks(24, 2)) {
                Intent intent = recentTaskInfo.baseIntent;
                if (intent != null && intent.getComponent() != null) {
                    componentName = recentTaskInfo.baseIntent.getComponent();
                } else {
                    componentName = recentTaskInfo.baseActivity;
                }
                if (componentName != null) {
                    String packageName = componentName.getPackageName();
                    if (!arrayList.contains(packageName) && !set.contains(packageName) && !"com.miui.home".equals(packageName) && !"com.android.systemui".equals(packageName) && !packageName.startsWith("dev.duo.") && packageManager.getLaunchIntentForPackage(packageName) != null) {
                        arrayList.add(packageName);
                        arrayList2.add(Integer.valueOf(recentTaskInfo.taskId));
                        if (arrayList.size() == imageViewArr.length) {
                            break;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.w("DuoRail", "Recent tasks unavailable", th);
        }
        if (imageViewArr == this.C5) {
            this.Y5 = arrayList.size();
        } else if (imageViewArr == this.B5) {
            this.Z5 = arrayList.size();
        }
        String str = arrayList + "/" + arrayList2;
        if (str.equals(imageViewArr[0].getTag())) {
            return arrayList.size();
        }
        imageViewArr[0].setTag(str);
        for (int i2 = 0; i2 < imageViewArr.length; i2++) {
            ImageView imageView = imageViewArr[i2];
            if (i2 >= arrayList.size()) {
                imageView.setImageDrawable(null);
                imageView.setOnClickListener(null);
            } else {
                final String str2 = (String) arrayList.get(i2);
                final int intValue = ((Integer) arrayList2.get(i2)).intValue();
                try {
                    imageView.setImageDrawable(packageManager.getApplicationIcon(str2));
                } catch (Exception e2) {
                    imageView.setImageDrawable(null);
                }
                imageView.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda157
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        dev.duo.workspaceprobe.b.this.a(intValue, str2, view);
                    }
                });
            }
        }
        Log.w("DuoRail", "Recents " + imageViewArr.length + " " + arrayList);
        return arrayList.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, String str, View view) {
        a(i2, str);
    }

    private void a(int i2, String str) {
        if (e() || s()) {
            try {
                Object invoke = Class.forName("android.app.ActivityTaskManager").getMethod("getService", null).invoke(null, null);
                int intValue = ((Integer) invoke.getClass().getMethod("startActivityFromRecents", Integer.TYPE, Bundle.class).invoke(invoke, Integer.valueOf(i2), null)).intValue();
                Log.w("DuoRail", "Rail recent task=" + i2 + " " + str + " result=" + intValue);
                if (intValue >= 0) {
                    return;
                }
            } catch (Throwable th) {
                Log.w("DuoRail", "Recent task launch failed " + str, th);
            }
            Intent launchIntentForPackage = this.i4.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage != null) {
                a(launchIntentForPackage.addFlags(268435456));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Method method, Method method2, int i2, Method method3, Method method4, Method method5, Method method6, Method method7, XposedInterface.Chain chain) throws Throwable {
        Object obj;
        b bVar = this;
        Object proceed = chain.proceed();
        try {
            Object arg = chain.getArg(1);
            Object arg2 = chain.getArg(2);
            if (arg != null && arg2 != null) {
                Object obj2 = null;
                if (method.invoke(arg2, null) == null && (((Integer) method2.invoke(arg2, null)).intValue() & i2) == i2 && !((Boolean) method3.invoke(null, arg2)).booleanValue() && !((Boolean) method4.invoke(null, arg2)).booleanValue()) {
                    Rect rect = (Rect) method5.invoke(arg2, null);
                    if (rect.width() == 1168 && rect.height() == 1712) {
                        int intValue = ((Integer) method6.invoke(arg2, null)).intValue();
                        int i3 = -1;
                        int i4 = 0;
                        Rect rect2 = null;
                        for (ActivityManager.RunningTaskInfo runningTaskInfo : bVar.G0.values()) {
                            if (runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) != intValue) {
                                obj = obj2;
                            } else if (!runningTaskInfo.getClass().getField("isVisible").getBoolean(runningTaskInfo)) {
                                obj = obj2;
                            } else if (bVar.j(runningTaskInfo.taskId)) {
                                Object obj3 = runningTaskInfo.getClass().getField("configuration").get(runningTaskInfo);
                                Object obj4 = obj3.getClass().getField("windowConfiguration").get(obj3);
                                obj = null;
                                if (rect.equals(obj4.getClass().getMethod("getBounds", null).invoke(obj4, null))) {
                                    Object obj5 = runningTaskInfo.getClass().getField("appCompatTaskInfo").get(runningTaskInfo);
                                    Rect rect3 = (Rect) obj5.getClass().getField("topActivityLetterboxBounds").get(obj5);
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
                            method7.invoke(chain.getThisObject(), arg, new Rect(rect2), arg2, Boolean.TRUE);
                            Log.w("DuoRail", "Embedded letterbox animation task=" + i3 + " end=" + rect + " frame=" + rect2);
                            return proceed;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.w("DuoRail", "Embedded letterbox animation failed", th);
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
    */
    public /* synthetic */ Object a(Method method, Method method2, Method method3, Method method4, XposedInterface.Chain chain) throws Throwable {
        int i2;
        Iterator it;
        String packageName;
        boolean z2;
        try {
            HashSet hashSet = new HashSet();
            StringBuilder sb = new StringBuilder();
            int i3 = 1;
            Object[] objArr = null;
            Iterator it2 = ((List) method.invoke(chain.getArg(1), null)).iterator();
            boolean z3 = false;
            boolean z4 = false;
            boolean z5 = false;
            while (it2.hasNext()) {
                Object next = it2.next();
                int intValue = ((Integer) method2.invoke(next, objArr)).intValue();
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) method3.invoke(next, objArr);
                if (runningTaskInfo == null || intValue < i3) {
                    it = it2;
                } else if (intValue > 4) {
                    it = it2;
                } else if (i(runningTaskInfo) != null) {
                    it = it2;
                } else {
                    ComponentName componentName = runningTaskInfo.baseActivity;
                    if (componentName == null) {
                        componentName = runningTaskInfo.topActivity;
                    }
                    if (componentName == null) {
                        packageName = "";
                    } else {
                        packageName = componentName.getPackageName();
                    }
                    sb.append(' ').append(packageName).append(':').append(intValue);
                    if (intValue != 1 && intValue != 3) {
                        z2 = false;
                        d(runningTaskInfo);
                        if ("com.android.quicksearchbox".equals(packageName)) {
                            it = it2;
                        } else {
                            final int i4 = runningTaskInfo.taskId;
                            it = it2;
                            this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda26
                                @Override // java.lang.Runnable
                                public final void run() {
                                    dev.duo.workspaceprobe.b.this.b(i4, z2);
                                }
                            });
                        }
                        if (j(runningTaskInfo.taskId)) {
                            if (z2) {
                                it2 = it;
                                i3 = 1;
                                objArr = null;
                                z4 = true;
                            }
                        } else if (z2) {
                            hashSet.add(packageName);
                            ComponentName componentName2 = runningTaskInfo.topActivity;
                            if (componentName2 != null) {
                                hashSet.add(componentName2.getPackageName());
                            }
                            it2 = it;
                            i3 = 1;
                            objArr = null;
                            z3 = true;
                        } else {
                            it2 = it;
                            i3 = 1;
                            objArr = null;
                            z5 = true;
                        }
                    }
                    z2 = true;
                    d(runningTaskInfo);
                    if ("com.android.quicksearchbox".equals(packageName)) {
                    }
                    if (j(runningTaskInfo.taskId)) {
                    }
                }
                it2 = it;
                i3 = 1;
                objArr = null;
            }
            if (sb.length() > 0 && q0()) {
                final Object arg = chain.getArg(0);
                if (z3) {
                    i2 = 1;
                } else {
                    if (!z4 && !z5) {
                        i2 = -1;
                    }
                    i2 = 0;
                }
                int intValue2 = ((Integer) method4.invoke(chain.getArg(1), null)).intValue();
                this.I5.add(arg);
                this.J5.put(arg, Long.valueOf(SystemClock.uptimeMillis()));
                this.A1.postDelayed(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda27
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.b.this.a(arg);
                    }
                }, 3000L);
                Log.w("DuoRail", "Mode transition type=" + intValue2 + ((Object) sb) + " target=" + i2);
                if (i2 >= 0) {
                    a(i2 == 1, hashSet);
                }
            }
        } catch (Throwable th) {
            Log.w("DuoRail", "Mode transition check failed", th);
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Object obj) {
        if (this.I5.remove(obj)) {
            this.J5.remove(obj);
            P();
        }
    }

    public synchronized void a(Bundle bundle, boolean z2) throws ReflectiveOperationException {
        ReflectiveOperationException reflectiveOperationException;
        int i2 = 0;
        if (bundle != null) {
            try {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList("layers");
                if (parcelableArrayList != null) {
                    int size = parcelableArrayList.size();
                    int i3 = 0;
                    while (i3 < size) {
                        Object obj = parcelableArrayList.get(i3);
                        i3++;
                        SurfaceControl surfaceControl = (SurfaceControl) ((Bundle) obj).getParcelable("mirror");
                        if (z2) {
                            surfaceControl.release();
                        } else {
                            if (this.z6 == null) {
                                this.z6 = new ArrayList<>();
                            }
                            this.z6.add(surfaceControl);
                        }
                    }
                }
            } catch (RuntimeException e2) {
                if (reflectiveOperationException == null) {
                    reflectiveOperationException = new ReflectiveOperationException("未移交镜像摘层失败，保留账本", e2);
                } else {
                    reflectiveOperationException.addSuppressed(e2);
                }
            } finally {
            }
        }
        if (!z2 && this.z6 != null) {
            ArrayList arrayList = new ArrayList(this.z6);
            int size2 = arrayList.size();
            reflectiveOperationException = null;
            while (i2 < size2) {
                Object obj2 = arrayList.get(i2);
                i2++;
                SurfaceControl surfaceControl2 = (SurfaceControl) obj2;
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    transaction.reparent(surfaceControl2, null);
                    transaction.apply();
                    transaction.close();
                    surfaceControl2.release();
                    this.z6.remove(surfaceControl2);
                } catch (Throwable th) {
                    try {
                        transaction.close();
                    } catch (Throwable th2) {
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
    public static /* synthetic */ void a(O o2) {
        try {
            o2.b.getOutputStream().write(82);
        } catch (Throwable th) {
            Log.w("DuoSidebar", "Native replay request failed", th);
        }
    }

    private boolean a(SurfaceControl.Transaction transaction) {
        return b(transaction, true);
    }

    private boolean a(SurfaceControl.Transaction transaction, R r2, float f2) {
        if (r2 == null || (b(r2) && !q0())) {
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
            if (w0 == null) {
                Class cls = Float.TYPE;
                w0 = SurfaceControl.Transaction.class.getMethod("setMatrix", SurfaceControl.class, cls, cls, cls, cls);
            }
            w0.invoke(transaction, r2.b, Float.valueOf(f3), Float.valueOf(0.0f), Float.valueOf(0.0f), Float.valueOf(f3));
        } catch (ReflectiveOperationException e2) {
            Log.w("DuoRail", "setMatrix unavailable", e2);
        }
        transaction.setPosition(r2.b, c2, d2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object a(Class<?> cls) {
        String[] strArr = {"getMiuiLevel", "getMiuiSignalLevel"};
        for (int i2 = 0; i2 < 2; i2++) {
            try {
                return cls.getMethod(strArr[i2], null);
            } catch (NoSuchMethodException e2) {
            }
        }
        for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            String[] strArr2 = {"mMiuiLevel", "miuiLevel"};
            for (int i3 = 0; i3 < 2; i3++) {
                try {
                    Field declaredField = cls2.getDeclaredField(strArr2[i3]);
                    declaredField.setAccessible(true);
                    return declaredField;
                } catch (NoSuchFieldException e3) {
                }
            }
        }
        return cls;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(int i2, boolean z2) {
        if (z2 ? this.I6.add(Integer.valueOf(i2)) : this.I6.remove(Integer.valueOf(i2))) {
            Log.w("DuoRail", "Full-screen page task=" + i2 + (z2 ? " in" : " out") + " pages=" + this.I6);
            P();
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

    private void a(String str, boolean z2, boolean z3) {
        a(str, z2, z3, SystemClock.uptimeMillis());
    }

    private void a(String str, boolean z2, boolean z3, long j2) {
        if ((!z3 || (this.J6 && j2 - this.K6 >= 150)) && z2 != this.J6) {
            this.J6 = z2;
            if (q0() && s0()) {
                if (this.C1_v) {
                    SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                    try {
                        a(transaction);
                        transaction.apply();
                        transaction.close();
                    } catch (Throwable th) {
                        try {
                            transaction.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } else {
                    m2();
                }
            }
            if (z2) {
                this.K6 = j2;
            }
            Log.w("DuoRail", "Recents " + (z2 ? "in" : "out") + " via " + str);
            ValueAnimator valueAnimator = this.M6;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.L6, z2 ? 1.0f : 0.0f);
            this.M6 = ofFloat;
            ofFloat.setDuration(Math.round(Math.abs(r6 - r5) * 240.0f) + 20);
            this.M6.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.0f, 1.0f));
            this.M6.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda12
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    dev.duo.workspaceprobe.b.this.b(valueAnimator2);
                }
            });
            this.M6.start();
        }
    }

    private void a(float f2) {
        boolean z2 = this.O6 >= 0.999f;
        b(f2);
        if (z2 != (this.O6 >= 0.999f)) {
            P();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't_v fix incorrect switch cases order, some code will duplicate */
    public void a(String str, float f2) {
        char c2;
        if (str == null) {
            return;
        }
        boolean z2 = this.P6 >= 0.999f;
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
            Log.w("DuoSearch", "Search " + str + " p=" + f2 + " now=" + this.P6);
        }
        if (z2 != (this.P6 >= 0.999f)) {
            P();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(J j2) {
        this.S6.remove(j2);
        if (this.S6.isEmpty()) {
            if (this.T6) {
                this.i4.unregisterReceiver(this.W6);
                this.T6 = false;
            }
            if (this.U6) {
                this.i4.getContentResolver().unregisterContentObserver(this.X6);
                this.U6 = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final Set set) {
        final HashMap hashMap = new HashMap();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            try {
                hashMap.put(str, w(str));
            } catch (Exception e2) {
                Log.w("DuoRail", "Rail switch state unavailable: " + str, e2);
            }
        }
        this.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.b.this.a(set, hashMap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Set set, Map map) {
        for (J j2 : this.S6) {
            if (set.contains(j2.a)) {
                Boolean bool = (Boolean) map.get(j2.a);
                if (!Objects.equals(j2.d, bool)) {
                    j2.d = bool;
                    j2.invalidate();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, Throwable th) {
        Log.w("DuoRail", "Rail " + str + " unavailable", th);
        try {
            Toast.makeText(this.i4, "该动作不可用：" + str, 0).show();
        } catch (Throwable th2) {
            Log.w("DuoRail", "Rail failure toast failed", th2);
        }
    }

    private void a(String str, Intent intent) {
        try {
            this.i4.startActivity(intent);
            Log.w("DuoRail", "Rail launch " + str);
        } catch (Throwable th) {
            a(str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z2) {
        this.Y6.put(str, Boolean.valueOf(z2));
        k1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(RuntimeException runtimeException) {
        a("常亮", (Throwable) runtimeException);
    }

    private int a(Integer num) {
        Bundle bundle;
        if (num != null) {
            bundle = new Bundle();
            bundle.putInt("set", num.intValue());
        } else {
            bundle = null;
        }
        Bundle call = this.i4.getContentResolver().call(Uri.parse("content://com.lsposed.miduo.config"), "keepScreen", (String) null, bundle);
        if (call == null || !call.containsKey("saved")) {
            throw new IllegalStateException("keepScreen: " + (call == null ? "no response" : call.getString("error", "no value")));
        }
        int i2 = call.getInt("saved");
        if (num == null || i2 == num.intValue()) {
            return i2;
        }
        throw new IllegalStateException("keepScreen: wrote " + num + ", read " + i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Intent intent) {
        try {
            this.i4.startActivity(intent);
            Log.w("DuoRail", "Rail launch " + intent);
        } catch (Throwable th) {
            Log.w("DuoRail", "Rail launch failed " + intent, th);
        }
    }

    private boolean a(Object obj, Field field) {
        try {
            if (Boolean.TRUE.equals(this.F0.get(Integer.valueOf(field.getInt(obj))))) {
                if (v0()) {
                    return true;
                }
            }
            return false;
        } catch (ReflectiveOperationException e2) {
            return false;
        }
    }

    private void a(Object obj, Object obj2, Object obj3, Field field, Field field2, Method method) {
        try {
            this.U0 = (Map) field2.get(obj);
        } catch (ReflectiveOperationException e2) {
            Log.w("DuoRail", "Letterbox lookup failed", e2);
        }
        if (a(obj2, field)) {
            try {
                Object obj4 = ((Map) field2.get(obj)).get(Integer.valueOf(field.getInt(obj2)));
                if (obj4 != null) {
                    method.invoke(obj3, obj4);
                    Log.w("DuoWallpaper", "Hidden only Home letterbox background task=" + field.getInt(obj2));
                }
            } catch (ReflectiveOperationException e3) {
                Log.w("DuoWallpaper", "Hide failed", e3);
            }
        }
    }
}
