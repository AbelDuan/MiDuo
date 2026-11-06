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
import dev.duo.hookprobe.ColorPickSession;
import dev.duo.hookprobe.GenericProcessHooks;
import dev.duo.hookprobe.QuickTileCatalog;
import dev.duo.hookprobe.RailCodec;
import dev.duo.hookprobe.TrialRingDrawable;
import dev.duo.hookprobe.ConfigKeys;
import dev.duo.hookprobe.TentClockActivity;
import dev.duo.icons.IconConst;
import dev.duo.taskcore.WorkspaceProtocol;
import dev.duo.workspaceprobe.WindowModeCache;
import dev.duo.workspaceprobe.WorkspaceHooks;
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

/* renamed from: dev.duo.workspaceprobe.b */
/* loaded from: classes.dex */
public final class WorkspaceHooks extends XposedModule {

    /* renamed from: A */
    private static final int f1989A = 12;

    /* renamed from: A0 */
    private static final int f1990A0 = 10;

    /* renamed from: B */
    private static final int f1991B = 96;

    /* renamed from: B0 */
    private static final int f1992B0 = 12;

    /* renamed from: C */
    private static final int f1993C = 20;

    /* renamed from: C0 */
    private static final int f1994C0 = 13;

    /* renamed from: D */
    private static final int f1995D = 136;

    /* renamed from: D0 */
    private static final int f1996D0 = 1800000;

    /* renamed from: E */
    private static final int f1997E = 20;

    /* renamed from: F */
    private static final int f1998F = 20;

    /* renamed from: G */
    private static final int f1999G = 20;

    /* renamed from: I */
    private static final int f2001I = 999;

    /* renamed from: K */
    private static Method f2003K = null;

    /* renamed from: L */
    private static Method f2004L = null;

    /* renamed from: M */
    private static Method f2005M = null;

    /* renamed from: N */
    private static final float f2006N = 1061.0f;

    /* renamed from: O */
    static final int f2007O = 2364;

    /* renamed from: P */
    static final int f2008P = 1672;

    /* renamed from: Q */
    private static final int f2009Q = 1175;

    /* renamed from: R */
    private static final float f2010R = 21.5f;

    /* renamed from: S */
    private static final float f2011S = 114.0f;

    /* renamed from: T */
    private static final int f2012T = 47;

    /* renamed from: U */
    private static final int f2013U = 314;

    /* renamed from: V */
    private static final int f2014V = 2154;

    /* renamed from: W */
    private static final int f2015W = 1486;

    /* renamed from: X */
    private static final int f2016X = -51;

    /* renamed from: Y */
    private static final int f2017Y = -62;

    /* renamed from: Z */
    private static final int f2018Z = 44;

    /* renamed from: a */
    private static final int f2019a = -789517;

    /* renamed from: a0 */
    private static final int f2020a0 = 200;

    /* renamed from: b */
    private static final int f2021b = -16777216;

    /* renamed from: b0 */
    private static final int f2022b0 = 120;

    /* renamed from: c */
    private static volatile Field f2023c = null;

    /* renamed from: d */
    private static Field f2025d = null;

    /* renamed from: d0 */
    private static final int f2026d0 = 402;

    /* renamed from: e */
    private static Field f2027e = null;

    /* renamed from: e0 */
    private static final int f2028e0 = 24;

    /* renamed from: f */
    private static Field f2029f = null;

    /* renamed from: f0 */
    private static final int f2030f0 = 120;

    /* renamed from: g */
    private static Field f2031g = null;

    /* renamed from: g0 */
    private static final int f2032g0 = 150;

    /* renamed from: h */
    private static Method f2033h = null;

    /* renamed from: h0 */
    private static final int f2034h0 = 30;

    /* renamed from: i */
    private static Method f2035i = null;

    /* renamed from: i0 */
    private static final int f2036i0 = 424;

    /* renamed from: j */
    private static final int f2037j = 3;

    /* renamed from: j0 */
    private static final int f2038j0 = 128;

    /* renamed from: k */
    private static final int f2039k = 300;

    /* renamed from: k0 */
    private static final int f2040k0 = 170;

    /* renamed from: l */
    private static final int f2041l = 33;

    /* renamed from: l0 */
    private static final int f2042l0 = 170;

    /* renamed from: m0 */
    private static final int f2044m0 = 21;

    /* renamed from: n */
    private static final int f2045n = 0;

    /* renamed from: n0 */
    private static final float f2046n0 = 54.0f;

    /* renamed from: o */
    private static final int f2047o = 1;

    /* renamed from: o0 */
    private static final int f2048o0 = 411;

    /* renamed from: p */
    private static final int f2049p = 2;

    /* renamed from: p0 */
    private static final int f2050p0 = 40;

    /* renamed from: q */
    private static final int f2051q = 3;

    /* renamed from: q0 */
    private static final int f2052q0 = 2000;

    /* renamed from: r */
    private static final int f2053r = 4;

    /* renamed from: r0 */
    private static final int f2054r0 = 3;

    /* renamed from: s */
    private static final int f2055s = 5;

    /* renamed from: s0 */
    private static final int f2056s0 = 963;

    /* renamed from: t */
    private static final int f2057t = 6;

    /* renamed from: t0 */
    private static Method f2058t0 = null;

    /* renamed from: u */
    private static final int f2059u = 30;

    /* renamed from: u0 */
    private static int f2060u0 = 0;

    /* renamed from: v */
    private static final int f2061v = 120;

    /* renamed from: w */
    private static final int f2063w = 16;

    /* renamed from: w0 */
    private static Method f2064w0 = null;

    /* renamed from: x */
    private static final int f2065x = 136;

    /* renamed from: y */
    private static final int f2067y = 96;

    /* renamed from: y0 */
    static final String f2068y0 = "dev.duo.workspaceprobe.SEARCH";

    /* renamed from: z */
    private static final int f2069z = 20;

    /* renamed from: z0 */
    private static volatile String f2070z0;

    /* renamed from: A1 */
    final Handler f2071A1;

    /* renamed from: A2 */
    private volatile Method f2072A2;

    /* renamed from: A3 */
    private final ViewTreeObserver.OnPreDrawListener f2073A3;

    /* renamed from: A4 */
    private Object f2074A4;

    /* renamed from: A5 */
    private final R[] f2075A5;

    /* renamed from: A6 */
    public Consumer<long[]> f2076A6;

    /* renamed from: B1 */
    private SurfaceControl f2077B1;

    /* renamed from: B2 */
    private volatile int f2078B2;

    /* renamed from: B3 */
    private ViewTreeObserver f2079B3;

    /* renamed from: B4 */
    private long f2080B4;

    /* renamed from: B5 */
    private final ImageView[] f2081B5;

    /* renamed from: B6 */
    public Consumer<View> f2082B6;

    /* renamed from: C1 */
    private boolean f2083C1;

    /* renamed from: C2 */
    private int f2084C2;

    /* renamed from: C3 */
    private final View.OnAttachStateChangeListener f2085C3;

    /* renamed from: C4 */
    private boolean f2086C4;

    /* renamed from: C5 */
    private final ImageView[] f2087C5;

    /* renamed from: C6 */
    public Runnable f2088C6;

    /* renamed from: D1 */
    volatile SurfaceControl f2089D1;

    /* renamed from: D2 */
    private String f2090D2;

    /* renamed from: D3 */
    private NotificationListenerService f2091D3;

    /* renamed from: D4 */
    private float f2092D4;

    /* renamed from: D5 */
    private final Q[] f2093D5;

    /* renamed from: D6 */
    private int f2094D6;

    /* renamed from: E0 */
    private String f2095E0;

    /* renamed from: E1 */
    private volatile Object f2096E1;

    /* renamed from: E2 */
    private String f2097E2;

    /* renamed from: E3 */
    private final Runnable f2098E3;

    /* renamed from: E4 */
    private float f2099E4;

    /* renamed from: E5 */
    private final Set<String> f2100E5;

    /* renamed from: E6 */
    private boolean f2101E6;

    /* renamed from: F1 */
    String f2103F1;

    /* renamed from: F2 */
    private final Map<String, i0> f2104F2;

    /* renamed from: F3 */
    private volatile List<String> f2105F3;

    /* renamed from: F4 */
    private volatile Object f2106F4;

    /* renamed from: F5 */
    private float f2107F5;

    /* renamed from: F6 */
    private boolean f2108F6;

    /* renamed from: G1 */
    int f2110G1;

    /* renamed from: G2 */
    private final Map<String, Integer> f2111G2;

    /* renamed from: G3 */
    private volatile boolean f2112G3;

    /* renamed from: G4 */
    private Object f2113G4;

    /* renamed from: G5 */
    private float f2114G5;

    /* renamed from: G6 */
    private boolean f2115G6;

    /* renamed from: H1 */
    private volatile long f2117H1;

    /* renamed from: H2 */
    private final Runnable f2118H2;

    /* renamed from: H3 */
    private boolean f2119H3;

    /* renamed from: H4 */
    private Object f2120H4;

    /* renamed from: H5 */
    private boolean f2121H5;

    /* renamed from: H6 */
    private final Runnable f2122H6;

    /* renamed from: I1 */
    boolean f2124I1;

    /* renamed from: I2 */
    private String f2125I2;

    /* renamed from: I3 */
    private volatile int[] f2126I3;

    /* renamed from: I4 */
    private Method f2127I4;

    /* renamed from: I5 */
    private final Set<Object> f2128I5;

    /* renamed from: I6 */
    private final Set<Integer> f2129I6;

    /* renamed from: J1 */
    private boolean f2131J1;

    /* renamed from: J2 */
    private String f2132J2;

    /* renamed from: J3 */
    private volatile Boolean f2133J3;

    /* renamed from: J4 */
    private Method f2134J4;

    /* renamed from: J5 */
    private final Map<Object, Long> f2135J5;

    /* renamed from: J6 */
    private boolean f2136J6;

    /* renamed from: K1 */
    private boolean f2138K1;

    /* renamed from: K2 */
    private String f2139K2;

    /* renamed from: K3 */
    private List<String> f2140K3;

    /* renamed from: K4 */
    private Method f2141K4;

    /* renamed from: K5 */
    private long f2142K5;

    /* renamed from: K6 */
    private long f2143K6;

    /* renamed from: L1 */
    boolean f2145L1;

    /* renamed from: L2 */
    private volatile long f2146L2;

    /* renamed from: L3 */
    private List<String> f2147L3;

    /* renamed from: L4 */
    private boolean f2148L4;

    /* renamed from: L5 */
    private final ArrayDeque<K> f2149L5;

    /* renamed from: L6 */
    private float f2150L6;

    /* renamed from: M1 */
    private boolean f2152M1;

    /* renamed from: M2 */
    private volatile long f2153M2;

    /* renamed from: M3 */
    private List<String> f2154M3;

    /* renamed from: M4 */
    private boolean f2155M4;

    /* renamed from: M5 */
    private final Map<Integer, K> f2156M5;

    /* renamed from: M6 */
    private ValueAnimator f2157M6;

    /* renamed from: N1 */
    boolean f2159N1;

    /* renamed from: N2 */
    private long f2160N2;

    /* renamed from: N3 */
    private volatile List<String> f2161N3;

    /* renamed from: N4 */
    private MotionEvent f2162N4;

    /* renamed from: N5 */
    private final Map<Integer, L> f2163N5;

    /* renamed from: N6 */
    private R f2164N6;

    /* renamed from: O1 */
    private final Set<Object> f2166O1;

    /* renamed from: O2 */
    private boolean f2167O2;

    /* renamed from: O3 */
    private int f2168O3;

    /* renamed from: O4 */
    private Constructor<?> f2169O4;

    /* renamed from: O5 */
    private final Map<Integer, Integer> f2170O5;

    /* renamed from: O6 */
    private float f2171O6;

    /* renamed from: P0 */
    private volatile boolean f2172P0;

    /* renamed from: P1 */
    private int f2173P1;

    /* renamed from: P2 */
    private boolean f2174P2;

    /* renamed from: P3 */
    private volatile int f2175P3;

    /* renamed from: P4 */
    private Field f2176P4;

    /* renamed from: P5 */
    private final Map<Integer, int[]> f2177P5;

    /* renamed from: P6 */
    private float f2178P6;

    /* renamed from: Q0 */
    private volatile boolean f2179Q0;

    /* renamed from: Q1 */
    private final ExecutorService f2180Q1;

    /* renamed from: Q2 */
    private boolean f2181Q2;

    /* renamed from: Q3 */
    private volatile boolean f2182Q3;

    /* renamed from: Q4 */
    private Field f2183Q4;

    /* renamed from: Q5 */
    private volatile boolean f2184Q5;

    /* renamed from: Q6 */
    private boolean f2185Q6;

    /* renamed from: R0 */
    private volatile Handler f2186R0;

    /* renamed from: R1 */
    private Method f2187R1;

    /* renamed from: R2 */
    private boolean f2188R2;

    /* renamed from: R3 */
    private boolean f2189R3;

    /* renamed from: R4 */
    private boolean f2190R4;

    /* renamed from: R5 */
    private int f2191R5;

    /* renamed from: R6 */
    private boolean f2192R6;

    /* renamed from: S0 */
    private Object f2193S0;

    /* renamed from: S1 */
    private Runnable f2194S1;

    /* renamed from: S2 */
    private boolean f2195S2;

    /* renamed from: S3 */
    private int f2196S3;

    /* renamed from: S4 */
    private boolean f2197S4;

    /* renamed from: S5 */
    private volatile String[] f2198S5;

    /* renamed from: S6 */
    private final Set<J> f2199S6;

    /* renamed from: T1 */
    private volatile boolean f2201T1;

    /* renamed from: T2 */
    private boolean f2202T2;

    /* renamed from: T3 */
    private boolean f2203T3;

    /* renamed from: T4 */
    private boolean f2204T4;

    /* renamed from: T5 */
    private final Map<Integer, Boolean> f2205T5;

    /* renamed from: T6 */
    private boolean f2206T6;

    /* renamed from: U0 */
    private volatile Map<?, ?> f2207U0;

    /* renamed from: U1 */
    private int f2208U1;

    /* renamed from: U2 */
    private int f2209U2;

    /* renamed from: U3 */
    private d0 f2210U3;

    /* renamed from: U4 */
    private boolean f2211U4;

    /* renamed from: U5 */
    private boolean f2212U5;

    /* renamed from: U6 */
    private boolean f2213U6;

    /* renamed from: V0 */
    private volatile boolean f2214V0;

    /* renamed from: V1 */
    private volatile int f2215V1;

    /* renamed from: V2 */
    private int f2216V2;

    /* renamed from: V3 */
    private b0 f2217V3;

    /* renamed from: V4 */
    private long f2218V4;

    /* renamed from: V5 */
    private final Map<Integer, Boolean> f2219V5;

    /* renamed from: V6 */
    private boolean f2220V6;

    /* renamed from: W0 */
    private h0 f2221W0;

    /* renamed from: W1 */
    private volatile ComponentName f2222W1;

    /* renamed from: W2 */
    private int f2223W2;

    /* renamed from: W3 */
    private X f2224W3;

    /* renamed from: W4 */
    private int f2225W4;

    /* renamed from: W5 */
    private boolean f2226W5;

    /* renamed from: W6 */
    private final BroadcastReceiver f2227W6;

    /* renamed from: X0 */
    private f0 f2228X0;

    /* renamed from: X1 */
    private volatile int f2229X1;

    /* renamed from: X2 */
    private int f2230X2;

    /* renamed from: X3 */
    private float f2231X3;

    /* renamed from: X4 */
    private int f2232X4;

    /* renamed from: X5 */
    private boolean f2233X5;

    /* renamed from: X6 */
    private final ContentObserver f2234X6;

    /* renamed from: Y0 */
    private TelephonyCallback f2235Y0;

    /* renamed from: Y1 */
    private boolean f2236Y1;

    /* renamed from: Y2 */
    private R f2237Y2;

    /* renamed from: Y3 */
    private boolean f2238Y3;

    /* renamed from: Y4 */
    private DisplayManager.DisplayListener f2239Y4;

    /* renamed from: Y5 */
    private int f2240Y5;

    /* renamed from: Y6 */
    private final Map<String, Boolean> f2241Y6;

    /* renamed from: Z1 */
    private String f2243Z1;

    /* renamed from: Z2 */
    private R f2244Z2;

    /* renamed from: Z3 */
    private boolean f2245Z3;

    /* renamed from: Z4 */
    private boolean f2246Z4;

    /* renamed from: Z5 */
    private int f2247Z5;

    /* renamed from: Z6 */
    private boolean f2248Z6;

    /* renamed from: a2 */
    private String f2250a2;

    /* renamed from: a3 */
    private TextView f2251a3;

    /* renamed from: a4 */
    private int f2252a4;

    /* renamed from: a5 */
    private boolean f2253a5;

    /* renamed from: a6 */
    private boolean f2254a6;

    /* renamed from: a7 */
    private boolean f2255a7;

    /* renamed from: b1 */
    private SensorManager f2256b1;

    /* renamed from: b2 */
    private boolean f2257b2;

    /* renamed from: b3 */
    private TextView f2258b3;

    /* renamed from: b4 */
    private boolean f2259b4;

    /* renamed from: b5 */
    private boolean f2260b5;

    /* renamed from: b6 */
    private boolean f2261b6;

    /* renamed from: c1 */
    private Sensor f2262c1;

    /* renamed from: c2 */
    private boolean f2263c2;

    /* renamed from: c3 */
    private TextView f2264c3;

    /* renamed from: c4 */
    private boolean f2265c4;

    /* renamed from: c5 */
    private boolean f2266c5;

    /* renamed from: c6 */
    private boolean f2267c6;

    /* renamed from: d1 */
    private SensorEventListener f2268d1;

    /* renamed from: d2 */
    private long f2269d2;

    /* renamed from: d3 */
    private TextView f2270d3;

    /* renamed from: d4 */
    private volatile int f2271d4;

    /* renamed from: d5 */
    private boolean f2272d5;

    /* renamed from: d6 */
    private int f2273d6;

    /* renamed from: e1 */
    private volatile boolean f2274e1;

    /* renamed from: e2 */
    private long f2275e2;

    /* renamed from: e3 */
    private TextView f2276e3;

    /* renamed from: e4 */
    private volatile long f2277e4;

    /* renamed from: e5 */
    private int f2278e5;

    /* renamed from: e6 */
    private int f2279e6;

    /* renamed from: f2 */
    private long f2281f2;

    /* renamed from: f3 */
    private final Runnable f2282f3;

    /* renamed from: f4 */
    private final Set<Runnable> f2283f4;

    /* renamed from: f5 */
    private int f2284f5;

    /* renamed from: f6 */
    private float f2285f6;

    /* renamed from: g2 */
    private int f2287g2;

    /* renamed from: g3 */
    private boolean f2288g3;

    /* renamed from: g4 */
    private final List<R> f2289g4;

    /* renamed from: g5 */
    private Object f2290g5;

    /* renamed from: g6 */
    private long f2291g6;

    /* renamed from: h1 */
    private Object f2292h1;

    /* renamed from: h2 */
    private volatile SharedPreferences f2293h2;

    /* renamed from: h3 */
    private FrameLayout f2294h3;

    /* renamed from: h4 */
    private final List<R> f2295h4;

    /* renamed from: h5 */
    private SensorManager f2296h5;

    /* renamed from: h6 */
    private long f2297h6;

    /* renamed from: i1 */
    private Object f2298i1;

    /* renamed from: i2 */
    private volatile long f2299i2;

    /* renamed from: i3 */
    private ImageView f2300i3;

    /* renamed from: i4 */
    Context f2301i4;

    /* renamed from: i5 */
    private Sensor f2302i5;

    /* renamed from: i6 */
    private long f2303i6;

    /* renamed from: j1 */
    private Object f2304j1;

    /* renamed from: j2 */
    private volatile boolean f2305j2;

    /* renamed from: j3 */
    private ImageView f2306j3;

    /* renamed from: j4 */
    private PowerManager f2307j4;

    /* renamed from: j5 */
    private SensorEventListener f2308j5;

    /* renamed from: j6 */
    private long f2309j6;

    /* renamed from: k1 */
    private Executor f2310k1;

    /* renamed from: k2 */
    private volatile boolean f2311k2;

    /* renamed from: k3 */
    private boolean f2312k3;

    /* renamed from: k4 */
    private KeyguardManager f2313k4;

    /* renamed from: k5 */
    private int f2314k5;

    /* renamed from: k6 */
    private long f2315k6;

    /* renamed from: l1 */
    private Method f2316l1;

    /* renamed from: l2 */
    private final Map<Integer, Integer> f2317l2;

    /* renamed from: l3 */
    private boolean f2318l3;

    /* renamed from: l4 */
    private volatile boolean f2319l4;

    /* renamed from: l5 */
    private boolean f2320l5;

    /* renamed from: l6 */
    private long f2321l6;

    /* renamed from: m1 */
    private Method f2322m1;

    /* renamed from: m2 */
    private final Map<Integer, ValueAnimator> f2323m2;

    /* renamed from: m3 */
    private boolean f2324m3;

    /* renamed from: m4 */
    private boolean f2325m4;

    /* renamed from: m5 */
    private boolean f2326m5;

    /* renamed from: m6 */
    private volatile O f2327m6;

    /* renamed from: n1 */
    private Method f2328n1;

    /* renamed from: n2 */
    private volatile Map<?, ?> f2329n2;

    /* renamed from: n3 */
    private boolean f2330n3;

    /* renamed from: n4 */
    private SurfaceControl f2331n4;

    /* renamed from: n5 */
    private boolean f2332n5;

    /* renamed from: n6 */
    private volatile ExecutorService f2333n6;

    /* renamed from: o1 */
    private Method f2334o1;

    /* renamed from: o2 */
    private Field[] f2335o2;

    /* renamed from: o3 */
    private float f2336o3;

    /* renamed from: o4 */
    private float f2337o4;

    /* renamed from: o5 */
    private boolean f2338o5;

    /* renamed from: o6 */
    private volatile long f2339o6;

    /* renamed from: p1 */
    private Method f2340p1;

    /* renamed from: p2 */
    private final Map<Integer, Integer> f2341p2;

    /* renamed from: p3 */
    private float f2342p3;

    /* renamed from: p4 */
    private float f2343p4;

    /* renamed from: p5 */
    private Object f2344p5;

    /* renamed from: p6 */
    private long f2345p6;

    /* renamed from: q1 */
    private Method f2346q1;

    /* renamed from: q2 */
    private final Set<Integer> f2347q2;

    /* renamed from: q3 */
    private SurfaceControl f2348q3;

    /* renamed from: q4 */
    private float f2349q4;

    /* renamed from: q5 */
    private Process f2350q5;

    /* renamed from: q6 */
    private final Object f2351q6;

    /* renamed from: r2 */
    private final ThreadLocal<Integer> f2353r2;

    /* renamed from: r3 */
    private ClassLoader f2354r3;

    /* renamed from: r4 */
    private long f2355r4;

    /* renamed from: r5 */
    private boolean f2356r5;

    /* renamed from: r6 */
    private P f2357r6;

    /* renamed from: s1 */
    private volatile boolean f2358s1;

    /* renamed from: s2 */
    private volatile boolean f2359s2;

    /* renamed from: s3 */
    private Rect f2360s3;

    /* renamed from: s4 */
    private boolean f2361s4;

    /* renamed from: s5 */
    private g0 f2362s5;

    /* renamed from: s6 */
    private boolean f2363s6;

    /* renamed from: t1 */
    private long f2364t1;

    /* renamed from: t2 */
    private boolean f2365t2;

    /* renamed from: t3 */
    private Rect f2366t3;

    /* renamed from: t4 */
    private int f2367t4;

    /* renamed from: t5 */
    private R f2368t5;

    /* renamed from: t6 */
    private boolean f2369t6;

    /* renamed from: u1 */
    private volatile boolean f2370u1;

    /* renamed from: u2 */
    private String f2371u2;

    /* renamed from: u3 */
    private int f2372u3;

    /* renamed from: u4 */
    private final ThreadLocal<Boolean> f2373u4;

    /* renamed from: u5 */
    private R f2374u5;

    /* renamed from: u6 */
    private long f2375u6;

    /* renamed from: v2 */
    private int f2377v2;

    /* renamed from: v3 */
    private int f2378v3;

    /* renamed from: v4 */
    private volatile long f2379v4;

    /* renamed from: v5 */
    private R f2380v5;

    /* renamed from: v6 */
    private long f2381v6;

    /* renamed from: w2 */
    private int f2383w2;

    /* renamed from: w3 */
    private int f2384w3;

    /* renamed from: w4 */
    private ValueAnimator f2385w4;

    /* renamed from: w5 */
    private R f2386w5;

    /* renamed from: w6 */
    private long f2387w6;

    /* renamed from: x1 */
    private boolean f2388x1;

    /* renamed from: x2 */
    private final Map<Integer, Integer> f2389x2;

    /* renamed from: x3 */
    private final Map<View, Object[]> f2390x3;

    /* renamed from: x4 */
    private final WorkbenchController f2391x4;

    /* renamed from: x5 */
    private final Set<R> f2392x5;

    /* renamed from: x6 */
    private final Object f2393x6;

    /* renamed from: y1 */
    private volatile ActivityManager.RunningTaskInfo f2394y1;

    /* renamed from: y2 */
    private volatile String f2395y2;

    /* renamed from: y3 */
    private int f2396y3;

    /* renamed from: y4 */
    private GradientDrawable f2397y4;

    /* renamed from: y5 */
    private N f2398y5;

    /* renamed from: y6 */
    private volatile boolean f2399y6;

    /* renamed from: z1 */
    private U f2400z1;

    /* renamed from: z2 */
    private volatile Method f2401z2;

    /* renamed from: z3 */
    private final View.OnLayoutChangeListener f2402z3;

    /* renamed from: z4 */
    private Object f2403z4;

    /* renamed from: z5 */
    private R f2404z5;

    /* renamed from: z6 */
    private ArrayList<SurfaceControl> f2405z6;

    /* renamed from: m */
    private static final Uri f2043m = Uri.parse("content://dev.duo.hookprobe.config/statusStyles");

    /* renamed from: H */
    private static final float[] f2000H = {1.0f, 0.985f, 0.94f, 0.86f, 0.75f, 0.62f, 0.48f, 0.35f, 0.23f, 0.13f, 0.06f, 0.015f, 0.0f};

    /* renamed from: J */
    private static final Interpolator f2002J = new PathInterpolator(0.2f, 0.0f, 0.0f, 1.0f);

    /* renamed from: c0 */
    private static final long[] f2024c0 = {2000, 5000};

    /* renamed from: v0 */
    private static final ArgbEvaluator f2062v0 = new ArgbEvaluator();

    /* renamed from: x0 */
    private static final Map<Class<?>, Object> f2066x0 = new ConcurrentHashMap();

    /* renamed from: F0 */
    private final Map<Integer, Boolean> f2102F0 = new ConcurrentHashMap();

    /* renamed from: G0 */
    private final Map<Integer, ActivityManager.RunningTaskInfo> f2109G0 = new ConcurrentHashMap();

    /* renamed from: H0 */
    private final Set<Integer> f2116H0 = ConcurrentHashMap.newKeySet();

    /* renamed from: I0 */
    private final Set<Integer> f2123I0 = ConcurrentHashMap.newKeySet();

    /* renamed from: J0 */
    private final WindowModeCache f2130J0 = new WindowModeCache();

    /* renamed from: K0 */
    private final ExecutorService f2137K0 = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda52
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread m2304a;
            m2304a = WorkspaceHooks.m2304a(runnable);
            return m2304a;
        }
    });

    /* renamed from: L0 */
    private final ExecutorService f2144L0 = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda53
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread m2451b;
            m2451b = WorkspaceHooks.m2451b(runnable);
            return m2451b;
        }
    });

    /* renamed from: M0 */
    private final Set<String> f2151M0 = ConcurrentHashMap.newKeySet();

    /* renamed from: N0 */
    private final Map<String, Long> f2158N0 = new ConcurrentHashMap();

    /* renamed from: O0 */
    private final AtomicBoolean f2165O0 = new AtomicBoolean();

    /* renamed from: T0 */
    private final Set<Integer> f2200T0 = ConcurrentHashMap.newKeySet();

    /* renamed from: Z0 */
    private final ReturnAngleJudge f2242Z0 = new ReturnAngleJudge();

    /* renamed from: a1 */
    private int f2249a1 = 1;

    /* renamed from: f1 */
    private volatile int f2280f1 = -1;

    /* renamed from: g1 */
    private float f2286g1 = Float.NaN;

    /* renamed from: r1 */
    private volatile boolean f2352r1 = true;

    /* renamed from: v1 */
    private volatile String f2376v1 = "";

    /* renamed from: w1 */
    private volatile String f2382w1 = "";

    /* renamed from: dev.duo.workspaceprobe.b$A */
    class A implements TetheringManager.StopTetheringCallback {
        A() {
        }

        public void onStopTetheringFailed(int i) {
            WorkspaceHooks.this.m2401a("热点", (Throwable) new IllegalStateException("stop failed " + i));
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$B */
    class B implements TetheringManager.StartTetheringCallback {
        B() {
        }

        public void onTetheringFailed(int i) {
            WorkspaceHooks.this.m2401a("热点", (Throwable) new IllegalStateException("start failed " + i));
        }

        public void onTetheringStarted() {
            Log.w("DuoRail", "Rail hotspot on");
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$C */
    class C extends ContentObserver {
        C(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            WorkspaceHooks.this.m2237W1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$D */
    class D extends ContentObserver {
        D(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            WorkspaceHooks.this.m2233V1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$E */
    class E extends ContentObserver {
        E(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            WorkspaceHooks.this.m2206O1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$F */
    class F extends ContentObserver {
        F(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            if (RailCodec.m950c(WorkspaceHooks.this.f2198S5)) {
                WorkspaceHooks.this.m2206O1();
            }
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$G */
    class G extends ContentObserver {
        G(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            WorkspaceHooks.this.m2217R1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$H */
    class H extends ContentObserver {
        H(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            WorkspaceHooks.this.m2249Z1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$I */
    class I extends ContentObserver {
        I(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            if (uri == null || uri.getPathSegments().size() != 2) {
                return;
            }
            WorkspaceHooks.this.m2606g(uri.getLastPathSegment());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.workspaceprobe.b$J */
    static final class J extends View {

        /* renamed from: o */
        static final int f2415o = 136;

        /* renamed from: p */
        private static final float f2416p = 58.0f;

        /* renamed from: q */
        private static final float f2417q = 4.5f;

        /* renamed from: a */
        final String f2418a;

        /* renamed from: b */
        private final WorkspaceHooks f2419b;

        /* renamed from: c */
        private String f2420c;

        /* renamed from: d */
        private Boolean f2421d;

        /* renamed from: e */
        private final N f2422e;

        /* renamed from: f */
        private final Paint f2423f;

        /* renamed from: g */
        private final Paint f2424g;

        /* renamed from: h */
        private final Path f2425h;

        /* renamed from: i */
        private final Path f2426i;

        /* renamed from: j */
        private Drawable f2427j;

        /* renamed from: k */
        private boolean f2428k;

        /* renamed from: l */
        private boolean f2429l;

        /* renamed from: m */
        private int f2430m;

        /* renamed from: n */
        private float f2431n;

        J(WorkspaceHooks c0143b, Context context, String str) {
            super(context);
            N n = new N(f2416p, 1);
            this.f2422e = n;
            Paint paint = new Paint(1);
            this.f2423f = paint;
            Paint paint2 = new Paint(1);
            this.f2424g = paint2;
            this.f2425h = new Path();
            Path path = new Path();
            this.f2426i = path;
            this.f2430m = -1;
            this.f2431n = 1.0f;
            this.f2419b = c0143b;
            this.f2418a = str;
            path.addCircle(68.0f, 68.0f, f2416p, Path.Direction.CW);
            paint2.setColor(33554431);
            paint2.setShadowLayer(7.0f, 0.0f, 2.0f, 335544320);
            n.setBounds(Math.round(10.0f), Math.round(10.0f), Math.round(126.0f), Math.round(126.0f));
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(f2417q);
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint.setStrokeJoin(Paint.Join.ROUND);
            if (str.startsWith("app:")) {
                m2806c(str.substring(4));
            } else if ("wechat".equals(str) || "alipay".equals(str)) {
                this.f2427j = TrialRingDrawable.m1198a(str);
            } else {
                Drawable m896a = QuickTileCatalog.m896a(context, str);
                this.f2427j = m896a;
                if (m896a != null) {
                    this.f2428k = true;
                    this.f2429l = true;
                } else if ("translate".equals(str)) {
                    m2806c("com.xiaomi.aiasst.vision");
                } else {
                    m2807d(m2797a(str));
                }
            }
            setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$J$$ExternalSyntheticLambda0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean m2802a;
                    m2802a = WorkspaceHooks.J.this.m2802a(view, motionEvent);
                    return m2802a;
                }
            });
        }

        /* renamed from: b */
        static boolean m2804b(String str) {
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

        /* renamed from: c */
        private void m2806c(String str) {
            try {
                this.f2427j = getContext().getPackageManager().getApplicationIcon(str);
            } catch (Throwable th) {
            }
        }

        /* renamed from: d */
        private void m2807d(String str) {
            if (str == null) {
                return;
            }
            try {
                int identifier = getContext().getResources().getIdentifier(str, "drawable", "com.android.systemui");
                if (identifier != 0) {
                    this.f2427j = getContext().getDrawable(identifier).mutate();
                    this.f2428k = true;
                }
            } catch (Throwable th) {
            }
        }

        /* renamed from: e */
        void m2809e(String str) {
            if (Objects.equals(this.f2420c, str)) {
                return;
            }
            this.f2420c = str;
            this.f2427j = null;
            if (str != null) {
                m2806c(str);
            }
            invalidate();
        }

        @Override // android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (m2804b(this.f2418a)) {
                this.f2419b.m2471b(this);
            }
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            if (m2804b(this.f2418a)) {
                this.f2419b.m2353a(this);
            }
            super.onDetachedFromWindow();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if ("lastapp".equals(this.f2418a)) {
                m2803b(canvas, 68.0f);
                return;
            }
            canvas.save();
            canvas.clipOutPath(this.f2426i);
            canvas.drawCircle(68.0f, 68.0f, 57.0f, this.f2424g);
            canvas.restore();
            this.f2422e.draw(canvas);
            canvas.translate(0.0f, WorkspaceHooks.f2060u0);
            if (this.f2427j == null) {
                m2800a(canvas, 68.0f);
                return;
            }
            int round = "calculator".equals(this.f2418a) ? 70 : this.f2429l ? Math.round(f2416p) : ("screenrecord".equals(this.f2418a) || "eyecare".equals(this.f2418a)) ? 72 : 68;
            if (this.f2428k) {
                this.f2427j.setTint(m2794a(this.f2421d, this.f2430m));
            }
            this.f2427j.setAlpha(Math.round(this.f2431n * 255.0f));
            float f = round / 2.0f;
            float f2 = 68.0f - f;
            float f3 = 68.0f + f;
            this.f2427j.setBounds(Math.round(f2), Math.round(f2), Math.round(f3), Math.round(f3));
            this.f2427j.draw(canvas);
        }

        /* renamed from: b */
        private void m2803b(Canvas canvas, float f) {
            canvas.translate(0.0f, WorkspaceHooks.f2060u0);
            Drawable drawable = this.f2427j;
            if (drawable == null) {
                this.f2423f.setStyle(Paint.Style.FILL);
                this.f2423f.setColor((this.f2430m & 16777215) | 520093696);
                float f2 = f - 48.0f;
                float f3 = f + 48.0f;
                canvas.drawRoundRect(f2, f2, f3, f3, 26.0f, 26.0f, this.f2423f);
                m2800a(canvas, f);
                return;
            }
            drawable.setAlpha(Math.round(this.f2431n * 255.0f));
            float f4 = f - 48.0f;
            float f5 = 48.0f + f;
            this.f2427j.setBounds(Math.round(f4), Math.round(f4), Math.round(f5), Math.round(f5));
            this.f2427j.draw(canvas);
            m2805c(canvas, f);
        }

        /* renamed from: c */
        private void m2805c(Canvas canvas, float f) {
            float f2 = f + 38.0f;
            this.f2423f.setStyle(Paint.Style.FILL);
            this.f2423f.setColor(-218103809);
            this.f2423f.setAlpha(Math.round(this.f2431n * 242.0f));
            canvas.drawCircle(f2, f2, 16.0f, this.f2423f);
            Paint paint = this.f2423f;
            Paint.Style style = Paint.Style.STROKE;
            paint.setStyle(style);
            this.f2423f.setStrokeWidth(1.0f);
            this.f2423f.setColor(637534208);
            canvas.drawCircle(f2, f2, 16.0f, this.f2423f);
            this.f2423f.setStyle(style);
            this.f2423f.setStrokeWidth(2.6f);
            this.f2423f.setColor(-12961220);
            this.f2423f.setAlpha(Math.round(this.f2431n * 255.0f));
            this.f2425h.reset();
            float f3 = f2 - 8.0f;
            float f4 = f2 - 4.0f;
            this.f2425h.moveTo(f3, f4);
            float f5 = 8.0f + f2;
            this.f2425h.lineTo(f5, f4);
            this.f2425h.moveTo(f2 + f2417q, f2 - 7.5f);
            this.f2425h.lineTo(f5, f4);
            float f6 = 4.0f + f2;
            this.f2425h.moveTo(f5, f6);
            this.f2425h.lineTo(f3, f6);
            this.f2425h.moveTo(f2 - f2417q, f2 + 7.5f);
            this.f2425h.lineTo(f3, f6);
            canvas.drawPath(this.f2425h, this.f2423f);
            this.f2423f.setStrokeWidth(f2417q);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ boolean m2802a(View view, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                m2798a(0.95f, 0.55f, 90L);
                return false;
            }
            if (actionMasked != 1 && actionMasked != 3) {
                return false;
            }
            m2798a(1.0f, 1.0f, 180L);
            return false;
        }

        /* renamed from: a */
        void m2808a(int i, int i2) {
            this.f2430m = i;
            this.f2422e.m2811a(i2);
            invalidate();
        }

        /* renamed from: a */
        static int m2794a(Boolean bool, int i) {
            if (Boolean.TRUE.equals(bool)) {
                return -14460213;
            }
            return i;
        }

        /* renamed from: a */
        private static String m2797a(String str) {
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
                case WorkspaceHooks.f1994C0 /* 13 */:
                    return "ic_qs_hotspot_disabled";
                case 14:
                    return "qs_location_icon_off";
                case 15:
                    return "ic_qs_bluetooth_off";
                default:
                    return null;
            }
        }

        /* renamed from: a */
        private void m2798a(float f, float f2, long j) {
            animate().scaleX(f).scaleY(f).setDuration(j).start();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f2431n, f2);
            ofFloat.setDuration(j);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$J$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    WorkspaceHooks.J.this.m2799a(valueAnimator);
                }
            });
            ofFloat.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m2799a(ValueAnimator valueAnimator) {
            this.f2431n = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        /* renamed from: a */
        private void m2800a(Canvas canvas, float f) {
            char c;
            this.f2423f.setColor(m2794a(this.f2421d, this.f2430m));
            this.f2423f.setAlpha(Math.round(this.f2431n * 255.0f));
            this.f2423f.setStyle(Paint.Style.STROKE);
            this.f2425h.reset();
            String str = this.f2418a;
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
                    this.f2425h.moveTo(f2, f);
                    this.f2425h.quadTo(f, f - 16.0f, f + 20.0f, f);
                    this.f2425h.quadTo(f, 16.0f + f, f2, f);
                    canvas.drawPath(this.f2425h, this.f2423f);
                    canvas.drawCircle(f, f, 5.0f, this.f2423f);
                    break;
                case 1:
                    float f3 = f - 13.0f;
                    float f4 = f + 8.0f;
                    this.f2425h.moveTo(f3, f4);
                    float f5 = f - 2.0f;
                    this.f2425h.lineTo(f3, f5);
                    float f6 = f - 16.0f;
                    this.f2425h.quadTo(f3, f6, f, f6);
                    float f7 = 13.0f + f;
                    this.f2425h.quadTo(f7, f6, f7, f5);
                    this.f2425h.lineTo(f7, f4);
                    canvas.drawPath(this.f2425h, this.f2423f);
                    canvas.drawLine(f - 18.0f, f4, f + 18.0f, f4, this.f2423f);
                    float f8 = f + 14.0f;
                    canvas.drawLine(f - 4.0f, f8, f + 4.0f, f8, this.f2423f);
                    break;
                case 2:
                    float f9 = f - 3.0f;
                    canvas.drawCircle(f9, f9, 14.0f, this.f2423f);
                    float f10 = f + 8.0f;
                    float f11 = f + 20.0f;
                    canvas.drawLine(f10, f10, f11, f11, this.f2423f);
                    break;
                case 3:
                    canvas.drawCircle(f, f, 17.0f, this.f2423f);
                    this.f2423f.setStyle(Paint.Style.FILL);
                    canvas.drawCircle(f, f, 8.0f, this.f2423f);
                    break;
                case 4:
                    canvas.drawRoundRect(f - 21.0f, f - 15.0f, f + 21.0f, 15.0f + f, 5.0f, 5.0f, this.f2423f);
                    canvas.drawCircle(f, f, 7.0f, this.f2423f);
                    break;
                case 5:
                    float f12 = f - 18.0f;
                    float f13 = f - 8.0f;
                    this.f2425h.moveTo(f12, f13);
                    float f14 = f + 18.0f;
                    this.f2425h.lineTo(f14, f13);
                    float f15 = f + 10.0f;
                    this.f2425h.moveTo(f15, f - 16.0f);
                    this.f2425h.lineTo(f14, f13);
                    this.f2425h.lineTo(f15, f);
                    float f16 = f + 8.0f;
                    this.f2425h.moveTo(f14, f16);
                    this.f2425h.lineTo(f12, f16);
                    float f17 = f - 10.0f;
                    this.f2425h.moveTo(f17, f);
                    this.f2425h.lineTo(f12, f16);
                    this.f2425h.lineTo(f17, f + 16.0f);
                    canvas.drawPath(this.f2425h, this.f2423f);
                    break;
                case 6:
                    float f18 = f - 17.0f;
                    float f19 = f + 17.0f;
                    canvas.drawArc(f18, f18, f19, f19, 40.0f, 250.0f, false, this.f2423f);
                    this.f2423f.setStyle(Paint.Style.FILL);
                    this.f2425h.moveTo(f + 12.0f, f - 20.0f);
                    this.f2425h.lineTo(f + 22.0f, f - 10.0f);
                    this.f2425h.lineTo(f + 8.0f, f - 6.0f);
                    this.f2425h.close();
                    canvas.drawPath(this.f2425h, this.f2423f);
                    break;
                case 7:
                    float f20 = f + 7.0f;
                    this.f2425h.moveTo(f20, f - 18.0f);
                    this.f2425h.lineTo(f - 10.0f, f);
                    this.f2425h.lineTo(f20, f + 18.0f);
                    canvas.drawPath(this.f2425h, this.f2423f);
                    break;
                case WorkspaceProtocol.RELEASE_TASK /* 8 */:
                case WorkspaceProtocol.LOOKUP_SOURCE /* 11 */:
                    this.f2423f.setStyle(Paint.Style.FILL);
                    this.f2425h.setFillType(Path.FillType.EVEN_ODD);
                    Path.Direction direction = Path.Direction.CW;
                    this.f2425h.addCircle(f + 2.0f, f, 19.0f, direction);
                    this.f2425h.addCircle(11.0f + f, f - 6.0f, 16.0f, direction);
                    canvas.drawPath(this.f2425h, this.f2423f);
                    break;
                case WorkspaceProtocol.REGISTER_SOURCE /* 9 */:
                    this.f2423f.setStyle(Paint.Style.FILL);
                    this.f2425h.setFillType(Path.FillType.EVEN_ODD);
                    float f21 = f - 21.0f;
                    float f22 = f - 3.0f;
                    m2801a(this.f2425h, f21, f21, f22, f22, 6.5f);
                    float f23 = f + 3.0f;
                    float f24 = f + 21.0f;
                    m2801a(this.f2425h, f23, f21, f24, f22, 6.5f);
                    m2801a(this.f2425h, f21, f23, f22, f24, 6.5f);
                    m2801a(this.f2425h, f23, f23, f24, f24, 6.5f);
                    canvas.drawPath(this.f2425h, this.f2423f);
                    break;
                case '\n':
                    canvas.drawCircle(f, f, 10.0f, this.f2423f);
                    for (int i = 0; i < 8; i++) {
                        double d = (i * 3.141592653589793d) / 4.0d;
                        canvas.drawLine(((float) (Math.cos(d) * 15.0d)) + f, ((float) (Math.sin(d) * 15.0d)) + f, ((float) (Math.cos(d) * 21.0d)) + f, ((float) (Math.sin(d) * 21.0d)) + f, this.f2423f);
                    }
                    break;
                case '\f':
                    canvas.drawCircle(f, f - 4.0f, 12.0f, this.f2423f);
                    float f25 = f - 7.0f;
                    float f26 = 9.0f + f;
                    float f27 = f + 17.0f;
                    canvas.drawLine(f25, f26, f25, f27, this.f2423f);
                    canvas.drawLine(f, f26, f, f + 19.0f, this.f2423f);
                    float f28 = f + 7.0f;
                    canvas.drawLine(f28, f26, f28, f27, this.f2423f);
                    break;
                case WorkspaceHooks.f1994C0 /* 13 */:
                    this.f2423f.setStyle(Paint.Style.FILL);
                    this.f2425h.setFillType(Path.FillType.EVEN_ODD);
                    canvas.save();
                    float f29 = f - 18.0f;
                    float f30 = f - 10.0f;
                    float f31 = f + 10.0f;
                    float f32 = f + 20.0f;
                    canvas.clipOutRect(f29 - 5.0f, f30 - 5.0f, f31 + 5.0f, 5.0f + f32);
                    m2801a(this.f2425h, f30, f - 20.0f, f + 18.0f, f31, 8.5f);
                    canvas.drawPath(this.f2425h, this.f2423f);
                    canvas.restore();
                    this.f2425h.reset();
                    m2801a(this.f2425h, f29, f30, f31, f32, 8.5f);
                    canvas.drawPath(this.f2425h, this.f2423f);
                    break;
                case 14:
                    float f33 = f - 20.0f;
                    float f34 = f + 20.0f;
                    canvas.drawArc(f33, f33, f34, f34, 205.0f, 130.0f, false, this.f2423f);
                    float f35 = f - 12.0f;
                    float f36 = f + 12.0f;
                    canvas.drawArc(f35, f35, f36, f36, 205.0f, 130.0f, false, this.f2423f);
                    this.f2423f.setStyle(Paint.Style.FILL);
                    canvas.drawCircle(f, f36, 4.0f, this.f2423f);
                    break;
                case 15:
                    canvas.drawRoundRect(f - 22.0f, f - 18.0f, f + 22.0f, f + 18.0f, 7.0f, 7.0f, this.f2423f);
                    canvas.drawLine(f - 10.0f, f, f + 10.0f, f, this.f2423f);
                    break;
                case WorkspaceHooks.f2063w /* 16 */:
                    canvas.drawCircle(f, f - 5.0f, 10.0f, this.f2423f);
                    this.f2423f.setStyle(Paint.Style.FILL);
                    float f37 = f + 2.0f;
                    this.f2425h.moveTo(f - 8.0f, f37);
                    this.f2425h.lineTo(f + 8.0f, f37);
                    this.f2425h.lineTo(f, f + 20.0f);
                    this.f2425h.close();
                    canvas.drawPath(this.f2425h, this.f2423f);
                    break;
                default:
                    canvas.drawCircle(f, f, 4.0f, this.f2423f);
                    break;
            }
        }

        /* renamed from: a */
        private static void m2801a(Path path, float f, float f2, float f3, float f4, float f5) {
            float f6 = f5 + 2.25f;
            Path.Direction direction = Path.Direction.CW;
            path.addRoundRect(f - 2.25f, f2 - 2.25f, f3 + 2.25f, f4 + 2.25f, f6, f6, direction);
            float f7 = f5 - 2.25f;
            path.addRoundRect(f + 2.25f, f2 + 2.25f, f3 - 2.25f, f4 - 2.25f, Math.max(0.0f, f7), Math.max(0.0f, f7), direction);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.workspaceprobe.b$L */
    static final class L {

        /* renamed from: a */
        final Object f2459a;

        /* renamed from: b */
        final SurfaceControl f2460b;

        /* renamed from: c */
        boolean f2461c;

        L(Object obj, SurfaceControl surfaceControl) {
            this.f2459a = obj;
            this.f2460b = surfaceControl;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.workspaceprobe.b$M */
    interface M {
        /* renamed from: a */
        int mo2793a(SurfaceControl surfaceControl) throws ReflectiveOperationException;
    }

    /* renamed from: dev.duo.workspaceprobe.b$N */
    static final class N extends Drawable {

        /* renamed from: h */
        static final int f2462h = 5;

        /* renamed from: i */
        static final float f2463i = 8.0f;

        /* renamed from: j */
        static final int f2464j = 0;

        /* renamed from: k */
        static final int f2465k = 1;

        /* renamed from: l */
        static final int f2466l = 2;

        /* renamed from: a */
        private final float f2467a;

        /* renamed from: b */
        private final Paint f2468b;

        /* renamed from: c */
        private final Paint f2469c;

        /* renamed from: d */
        private final Paint f2470d;

        /* renamed from: e */
        private final Paint f2471e;

        /* renamed from: f */
        private final Paint f2472f;

        /* renamed from: g */
        private int f2473g;

        N(float f) {
            this(f, 0);
        }

        /* renamed from: a */
        void m2811a(int i) {
            if (i == this.f2473g) {
                return;
            }
            this.f2473g = i;
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
            float f5 = this.f2467a;
            canvas.drawRoundRect(f, f2, f3, f4, f5, f5, this.f2468b);
            float f6 = this.f2467a;
            canvas.drawRoundRect(f, f2, f3, f4, f6, f6, this.f2469c);
            float f7 = this.f2467a;
            canvas.drawRoundRect(f, f2, f3, f4, f7, f7, this.f2470d);
            if (this.f2473g == 0) {
                float f8 = this.f2467a - 0.75f;
                canvas.drawRoundRect(f + 0.75f, f2 + 0.75f, f3 - 0.75f, f4 - 0.75f, f8, f8, this.f2471e);
            } else {
                float f9 = this.f2467a - 0.5f;
                canvas.drawRoundRect(f + 0.5f, f2 + 0.5f, f3 - 0.5f, f4 - 0.5f, f9, f9, this.f2472f);
                float f10 = this.f2467a - 1.75f;
                canvas.drawRoundRect(f + 1.75f, f2 + 1.75f, f3 - 1.75f, f4 - 1.75f, f10, f10, this.f2471e);
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
            int i = this.f2473g;
            if (i != 0) {
                m2810a(f, f2, max, max2, i == 2);
                return;
            }
            Paint paint = this.f2468b;
            float f3 = f2 + max2;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint.setShader(new LinearGradient(0.0f, f2, 0.0f, f3, new int[]{352321535, 117440511, 100663295, 234881023}, new float[]{0.0f, 0.3f, 0.7f, 1.0f}, tileMode));
            this.f2469c.setShader(new RadialGradient(f + (0.3f * max), Math.min(0.12f * max2, 0.45f * max) + f2, Math.max(max, Math.min(max2, 2.2f * max)) * 0.75f, 536870911, 16777215, tileMode));
            this.f2470d.setShader(new LinearGradient(0.0f, f3 - Math.min(0.5f * max2, this.f2467a * 1.6f), 0.0f, f3, 16777215, 318767103, tileMode));
            this.f2471e.setShader(new LinearGradient(f, f2, (0.6f * max) + f, Math.min(max2, max * 3.0f) + f2, new int[]{-1493172225, 872415231, 352321535, 788529151}, new float[]{0.0f, 0.25f, 0.7f, 1.0f}, tileMode));
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        N(float f, int i) {
            this.f2468b = new Paint(1);
            this.f2469c = new Paint(1);
            this.f2470d = new Paint(1);
            Paint paint = new Paint(1);
            this.f2471e = paint;
            Paint paint2 = new Paint(1);
            this.f2472f = paint2;
            this.f2467a = f;
            this.f2473g = i;
            Paint.Style style = Paint.Style.STROKE;
            paint.setStyle(style);
            paint.setStrokeWidth(1.5f);
            paint2.setStyle(style);
            paint2.setStrokeWidth(1.0f);
        }

        /* renamed from: a */
        private void m2810a(float f, float f2, float f3, float f4, boolean z) {
            int[] iArr;
            Paint paint = this.f2468b;
            float f5 = f2 + f4;
            if (z) {
                iArr = new int[]{-1929379841, 1308622847, 1090519039, 1728053247};
            } else {
                iArr = new int[]{1728053247, 788529151, 654311423, 1090519039};
            }
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint.setShader(new LinearGradient(0.0f, f2, 0.0f, f5, iArr, new float[]{0.0f, 0.3f, 0.7f, 1.0f}, tileMode));
            this.f2469c.setShader(new RadialGradient(f + (0.3f * f3), f2 + Math.min(0.12f * f4, 0.45f * f3), Math.max(f3, Math.min(f4, 2.2f * f3)) * 0.75f, z ? -2130706433 : 1509949439, 16777215, tileMode));
            this.f2470d.setShader(new LinearGradient(0.0f, f5 - Math.min(0.5f * f4, this.f2467a * 1.6f), 0.0f, f5, 0, z ? 218103808 : 134217728, tileMode));
            float f6 = 3.0f * f3;
            this.f2471e.setShader(new LinearGradient(f, f2, f + (0.6f * f3), f2 + Math.min(f4, f6), new int[]{-1, -1711276033, 872415231, 1728053247}, new float[]{0.0f, 0.25f, 0.7f, 1.0f}, tileMode));
            this.f2472f.setShader(new LinearGradient(f, f2, f + f3, f2 + Math.min(f4, f6), z ? new int[]{251658240, 436207616, 687865856} : new int[]{167772160, 301989888, 520093696}, new float[]{0.0f, 0.5f, 1.0f}, tileMode));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.workspaceprobe.b$O */
    static final class O {

        /* renamed from: a */
        final long f2474a;

        /* renamed from: b */
        final Socket f2475b;

        O(long j, Socket socket) {
            this.f2474a = j;
            this.f2475b = socket;
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$P */
    private static final class P {

        /* renamed from: a */
        final int f2476a;

        /* renamed from: b */
        final int f2477b;

        /* renamed from: c */
        final int f2478c;

        /* renamed from: d */
        final double f2479d;

        /* renamed from: e */
        final double f2480e;

        /* renamed from: f */
        final double f2481f;

        /* renamed from: g */
        final double f2482g;

        /* renamed from: h */
        final double f2483h;

        /* renamed from: i */
        final long f2484i;

        /* renamed from: j */
        final long f2485j;

        /* renamed from: k */
        final long f2486k;

        /* renamed from: l */
        final long f2487l;

        /* renamed from: m */
        final long f2488m;

        /* renamed from: n */
        final long f2489n;

        /* renamed from: o */
        final long f2490o;

        /* renamed from: p */
        final long f2491p;

        P(byte[] bArr, long j) {
            this.f2491p = j;
            ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            if (order.getInt() != 1146442546) {
                throw new IllegalArgumentException("Native frame protocol");
            }
            this.f2476a = order.getInt();
            this.f2477b = order.getInt();
            this.f2478c = order.getInt();
            this.f2479d = order.getDouble();
            this.f2487l = order.getLong();
            this.f2488m = order.getLong();
            this.f2489n = order.getLong();
            this.f2490o = order.getLong();
            this.f2480e = order.getDouble();
            this.f2481f = order.getDouble();
            this.f2484i = order.getLong();
            this.f2482g = order.getDouble();
            this.f2483h = order.getDouble();
            this.f2485j = order.getLong();
            this.f2486k = order.getLong();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.workspaceprobe.b$Q */
    static final class Q extends View {

        /* renamed from: i */
        static final int f2492i = 136;

        /* renamed from: j */
        private static final float f2493j = 58.0f;

        /* renamed from: k */
        private static final float f2494k = 4.5f;

        /* renamed from: a */
        private final int f2495a;

        /* renamed from: b */
        int f2496b;

        /* renamed from: c */
        private float f2497c;

        /* renamed from: d */
        private final Paint f2498d;

        /* renamed from: e */
        private final N f2499e;

        /* renamed from: f */
        private final Paint f2500f;

        /* renamed from: g */
        private final Path f2501g;

        /* renamed from: h */
        private final Path f2502h;

        Q(Context context, int i) {
            super(context);
            this.f2496b = -1;
            this.f2497c = 1.0f;
            Paint paint = new Paint(1);
            this.f2498d = paint;
            N n = new N(f2493j, 1);
            this.f2499e = n;
            Paint paint2 = new Paint(1);
            this.f2500f = paint2;
            this.f2501g = new Path();
            Path path = new Path();
            this.f2502h = path;
            this.f2495a = i;
            path.addCircle(68.0f, 68.0f, f2493j, Path.Direction.CW);
            paint.setColor(33554431);
            paint.setShadowLayer(7.0f, 0.0f, 2.0f, 335544320);
            n.setBounds(Math.round(10.0f), Math.round(10.0f), Math.round(126.0f), Math.round(126.0f));
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeWidth(f2494k);
            paint2.setStrokeCap(Paint.Cap.ROUND);
            paint2.setStrokeJoin(Paint.Join.ROUND);
            setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$Q$$ExternalSyntheticLambda1
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean m2816a;
                    m2816a = WorkspaceHooks.Q.this.m2816a(view, motionEvent);
                    return m2816a;
                }
            });
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.save();
            canvas.clipOutPath(this.f2502h);
            canvas.drawCircle(68.0f, 68.0f, 57.0f, this.f2498d);
            canvas.restore();
            this.f2499e.draw(canvas);
            canvas.translate(0.0f, WorkspaceHooks.f2060u0);
            this.f2500f.setColor(this.f2496b);
            this.f2500f.setAlpha(Math.round(this.f2497c * 255.0f));
            this.f2501g.reset();
            if (this.f2495a == 0) {
                this.f2500f.setStyle(Paint.Style.STROKE);
                this.f2501g.moveTo(75.0f, 50.0f);
                this.f2501g.lineTo(f2493j, 68.0f);
                this.f2501g.lineTo(75.0f, 86.0f);
                canvas.drawPath(this.f2501g, this.f2500f);
                return;
            }
            this.f2500f.setStyle(Paint.Style.FILL);
            this.f2501g.setFillType(Path.FillType.EVEN_ODD);
            if (this.f2495a == 1) {
                for (int i = 0; i < 4; i++) {
                    float f = ((i % 2) * 24.0f) + 47.0f;
                    float f2 = ((i / 2) * 24.0f) + 47.0f;
                    m2815a(this.f2501g, f, f2, f + 18.0f, f2 + 18.0f, 6.5f);
                }
                canvas.drawPath(this.f2501g, this.f2500f);
                return;
            }
            canvas.save();
            canvas.clipOutRect(45.0f, 53.0f, 83.0f, 93.0f);
            m2815a(this.f2501g, f2493j, 48.0f, 86.0f, 78.0f, 8.5f);
            canvas.drawPath(this.f2501g, this.f2500f);
            canvas.restore();
            this.f2501g.reset();
            m2815a(this.f2501g, 50.0f, f2493j, 78.0f, 88.0f, 8.5f);
            canvas.drawPath(this.f2501g, this.f2500f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ boolean m2816a(View view, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                m2813a(0.95f, 0.55f, 90L);
                return false;
            }
            if (actionMasked != 1 && actionMasked != 3) {
                return false;
            }
            m2813a(1.0f, 1.0f, 180L);
            return false;
        }

        /* renamed from: a */
        private void m2813a(float f, float f2, long j) {
            animate().scaleX(f).scaleY(f).setDuration(j).start();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f2497c, f2);
            ofFloat.setDuration(j);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$Q$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    WorkspaceHooks.Q.this.m2814a(valueAnimator);
                }
            });
            ofFloat.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m2814a(ValueAnimator valueAnimator) {
            this.f2497c = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        /* renamed from: a */
        private static void m2815a(Path path, float f, float f2, float f3, float f4, float f5) {
            float f6 = f5 + 2.25f;
            Path.Direction direction = Path.Direction.CW;
            path.addRoundRect(f - 2.25f, f2 - 2.25f, f3 + 2.25f, f4 + 2.25f, f6, f6, direction);
            float f7 = f5 - 2.25f;
            path.addRoundRect(f + 2.25f, f2 + 2.25f, f3 - 2.25f, f4 - 2.25f, Math.max(0.0f, f7), Math.max(0.0f, f7), direction);
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$R */
    final class R {

        /* renamed from: a */
        final SurfaceControlViewHost f2503a;

        /* renamed from: b */
        final SurfaceControl f2504b;

        /* renamed from: c */
        final String f2505c;

        /* renamed from: d */
        final View f2506d;

        /* renamed from: e */
        final float f2507e;

        /* renamed from: f */
        int f2508f;

        /* renamed from: g */
        int f2509g;

        /* renamed from: h */
        int f2510h;

        /* renamed from: i */
        final int f2511i;

        /* renamed from: j */
        float f2512j;

        /* renamed from: k */
        float f2513k;

        /* renamed from: l */
        float f2514l;

        /* renamed from: m */
        float f2515m;

        /* renamed from: n */
        volatile boolean f2516n;

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
        /* renamed from: dev.duo.workspaceprobe.b.R$id */
        public static final class C0161id {

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

        R(WorkspaceHooks c0143b, String str, View view, float f, int i, int i2, int i3, int i4, float f2) {
            this(c0143b, str, view, f, i, i2, i3, i4, f2, false);
        }

        /* renamed from: a */
        void m2817a() {
            this.f2513k = Float.NaN;
        }

        /* renamed from: b */
        void m2818b() {
            this.f2516n = true;
            try {
                this.f2503a.release();
            } finally {
                this.f2504b.release();
            }
        }

        R(WorkspaceHooks c0143b, String str, View view, float f, int i, int i2, int i3, int i4, float f2, boolean z) {
            this(str, view, f, i, i2, i3, i4, f2, z ? 24 : 0);
        }

        R(String str, View view, float f, int i, int i2, int i3, int i4, float f2, int i5) {
            this.f2513k = Float.NaN;
            this.f2505c = str;
            this.f2506d = view;
            SurfaceControlViewHost surfaceControlViewHost = new SurfaceControlViewHost(WorkspaceHooks.this.f2301i4, ((DisplayManager) WorkspaceHooks.this.f2301i4.getSystemService(DisplayManager.class)).getDisplay(0), null);
            this.f2503a = surfaceControlViewHost;
            if (i5 != 0) {
                try {
                    SurfaceControlViewHost.class.getMethod("setView", View.class, WindowManager.LayoutParams.class).invoke(surfaceControlViewHost, view, new WindowManager.LayoutParams(i2, i3, 2, i5, -3));
                } catch (ReflectiveOperationException e) {
                    this.f2503a.release();
                    throw new IllegalStateException("Panel " + str + " cannot get its input flags " + i5, e);
                }
            } else {
                surfaceControlViewHost.setView(view, i2, i3);
            }
            this.f2504b = surfaceControlViewHost.getSurfacePackage().getSurfaceControl();
            this.f2507e = f;
            this.f2510h = i;
            this.f2508f = i2;
            this.f2509g = i3;
            this.f2511i = i4;
            this.f2512j = f2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.workspaceprobe.b$S */
    static final class S extends View {

        /* renamed from: e */
        static final int f2518e = 48;

        /* renamed from: f */
        private static final float f2519f = 20.0f;

        /* renamed from: a */
        int f2520a;

        /* renamed from: b */
        boolean f2521b;

        /* renamed from: c */
        private final N f2522c;

        /* renamed from: d */
        private final Paint f2523d;

        S(Context context) {
            super(context);
            this.f2520a = -13618632;
            N n = new N(f2519f, 1);
            this.f2522c = n;
            Paint paint = new Paint(1);
            this.f2523d = paint;
            n.setBounds(Math.round(4.0f), Math.round(4.0f), Math.round(44.0f), Math.round(44.0f));
            paint.setStrokeCap(Paint.Cap.ROUND);
            setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$S$$ExternalSyntheticLambda0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean m2820a;
                    m2820a = WorkspaceHooks.S.this.m2820a(view, motionEvent);
                    return m2820a;
                }
            });
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            this.f2522c.draw(canvas);
            canvas.translate(0.0f, WorkspaceHooks.f2060u0);
            boolean z = this.f2521b;
            int i = z ? -14460213 : this.f2520a;
            if (z) {
                this.f2523d.setStyle(Paint.Style.STROKE);
                this.f2523d.setStrokeWidth(3.0f);
                this.f2523d.setColor(i);
                canvas.drawCircle(24.0f, 24.0f, 18.5f, this.f2523d);
            }
            this.f2523d.setColor(i);
            canvas.scale(0.8333333f, 0.8333333f, 24.0f, 24.0f);
            this.f2523d.setStyle(Paint.Style.STROKE);
            this.f2523d.setStrokeWidth(4.0f);
            canvas.drawLine(16.0f, 32.0f, 27.0f, 21.0f, this.f2523d);
            this.f2523d.setStrokeWidth(3.0f);
            canvas.drawLine(23.0f, 17.0f, 31.0f, 25.0f, this.f2523d);
            this.f2523d.setStyle(Paint.Style.FILL);
            canvas.drawCircle(30.0f, 18.0f, 4.5f, this.f2523d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ boolean m2820a(View view, MotionEvent motionEvent) {
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

    /* renamed from: dev.duo.workspaceprobe.b$T */
    private static final class T extends ImageView {
        T(Context context) {
            super(context);
        }

        @Override // android.widget.ImageView, android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.translate(0.0f, WorkspaceHooks.f2060u0);
            super.onDraw(canvas);
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$U */
    private static final class U extends View {

        /* renamed from: a */
        private final Paint f2524a;

        U(Context context) {
            super(context);
            Paint paint = new Paint(1);
            this.f2524a = paint;
            paint.setColor(-1);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(7.0f);
            paint.setStrokeCap(Paint.Cap.ROUND);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.translate(0.0f, WorkspaceHooks.f2060u0);
            float width = getWidth() / 116.0f;
            canvas.translate(getWidth() / 2.0f, getHeight() / 2.0f);
            canvas.scale(width, width);
            canvas.translate(-56.5f, -56.5f);
            canvas.drawCircle(52.0f, 52.0f, 19.0f, this.f2524a);
            canvas.drawLine(66.0f, 66.0f, 80.0f, 80.0f, this.f2524a);
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$V */
    private static final class V extends View {

        /* renamed from: c */
        static final int f2525c = 48;

        /* renamed from: a */
        private final boolean f2526a;

        /* renamed from: b */
        private final Paint f2527b;

        V(Context context, boolean z) {
            super(context);
            this.f2527b = new Paint(1);
            this.f2526a = z;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float min = Math.min(getWidth(), getHeight()) / 2.0f;
            float width = getWidth() / 2.0f;
            float height = getHeight() / 2.0f;
            this.f2527b.setStyle(Paint.Style.FILL);
            this.f2527b.setColor(-1);
            canvas.drawCircle(width, height, min, this.f2527b);
            this.f2527b.setColor(this.f2526a ? -13335809 : -50384);
            canvas.drawCircle(width, height, min - 3.0f, this.f2527b);
            this.f2527b.setColor(-1);
            this.f2527b.setStrokeWidth(0.2f * min);
            this.f2527b.setStrokeCap(Paint.Cap.ROUND);
            float f = min * 0.42f;
            canvas.drawLine(width - f, height, width + f, height, this.f2527b);
            if (this.f2526a) {
                canvas.drawLine(width, height - f, width, height + f, this.f2527b);
            }
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$Y */
    private static final class Y extends Drawable {

        /* renamed from: a */
        private final Drawable f2565a;

        /* renamed from: b */
        private final Paint f2566b = new Paint(1);

        Y(Drawable drawable) {
            this.f2565a = drawable;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            this.f2565a.draw(canvas);
            Rect bounds = getBounds();
            float width = bounds.width() * 0.17f;
            float f = bounds.right - width;
            float f2 = bounds.bottom - width;
            this.f2566b.setStyle(Paint.Style.FILL);
            this.f2566b.setColor(-1);
            canvas.drawCircle(f, f2, width, this.f2566b);
            this.f2566b.setColor(-13335809);
            canvas.drawCircle(f, f2, 0.84f * width, this.f2566b);
            this.f2566b.setColor(-1);
            this.f2566b.setTextAlign(Paint.Align.CENTER);
            this.f2566b.setTextSize(width * 1.2f);
            this.f2566b.setTypeface(Typeface.DEFAULT_BOLD);
            canvas.drawText("2", f, f2 - ((this.f2566b.descent() + this.f2566b.ascent()) / 2.0f), this.f2566b);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return this.f2565a.getIntrinsicHeight();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return this.f2565a.getIntrinsicWidth();
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        protected void onBoundsChange(Rect rect) {
            this.f2565a.setBounds(rect);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.f2565a.setAlpha(i);
            this.f2566b.setAlpha(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.f2565a.setColorFilter(colorFilter);
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$Z */
    private static final class Z extends View {

        /* renamed from: a */
        private final Paint f2567a;

        /* renamed from: b */
        private final int f2568b;

        /* renamed from: c */
        private final int f2569c;

        /* renamed from: d */
        private boolean f2570d;

        Z(Context context, int i, int i2) {
            super(context);
            this.f2567a = new Paint(1);
            this.f2568b = i;
            this.f2569c = i2;
        }

        /* renamed from: a */
        void m2843a(boolean z) {
            if (this.f2570d == z) {
                return;
            }
            this.f2570d = z;
            setContentDescription(z ? "完成" : "编辑");
            invalidate();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float min = Math.min(getWidth(), getHeight());
            float f = min / 2.0f;
            this.f2567a.setStyle(Paint.Style.FILL);
            this.f2567a.setColor(this.f2568b);
            canvas.drawCircle(f, f, f, this.f2567a);
            this.f2567a.setStyle(Paint.Style.STROKE);
            this.f2567a.setStrokeWidth(0.04f * min);
            this.f2567a.setStrokeCap(Paint.Cap.ROUND);
            this.f2567a.setStrokeJoin(Paint.Join.ROUND);
            this.f2567a.setColor(this.f2569c);
            Path path = new Path();
            if (this.f2570d) {
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
            canvas.drawPath(path, this.f2567a);
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$a, reason: case insensitive filesystem */
    class C0171a extends ContentObserver {
        C0171a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            WorkspaceHooks.this.m2578e1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$a0 */
    private static final class a0 extends View {

        /* renamed from: d */
        static final int f2572d = 0;

        /* renamed from: a */
        private final int f2573a;

        /* renamed from: b */
        private final int f2574b;

        /* renamed from: c */
        private final Paint f2575c;

        a0(Context context, int i, int i2) {
            super(context);
            this.f2575c = new Paint(1);
            this.f2573a = i;
            this.f2574b = i2;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float min = Math.min(getWidth(), getHeight());
            this.f2575c.setStyle(Paint.Style.STROKE);
            this.f2575c.setStrokeWidth(0.09f * min);
            this.f2575c.setStrokeCap(Paint.Cap.ROUND);
            this.f2575c.setColor(this.f2574b);
            if (this.f2573a == 0) {
                float f = 0.42f * min;
                canvas.drawCircle(f, f, 0.28f * min, this.f2575c);
                float f2 = min * 0.63f;
                float f3 = min * 0.86f;
                canvas.drawLine(f2, f2, f3, f3, this.f2575c);
            }
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$b, reason: case insensitive filesystem */
    class C0172b extends ContentObserver {
        C0172b(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            if (WorkspaceHooks.this.f2299i2 != Long.MAX_VALUE) {
                Log.w("DuoRail", "Duo config direct read dropped, provider from now on");
            }
            WorkspaceHooks.this.f2299i2 = Long.MAX_VALUE;
            WorkspaceHooks.this.f2293h2 = null;
            List<String> pathSegments = uri == null ? Collections.EMPTY_LIST : uri.getPathSegments();
            if (pathSegments.size() == 2) {
                WorkspaceHooks.this.m2766x(pathSegments.get(1));
            } else {
                WorkspaceHooks.this.m2674l("app notified");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.workspaceprobe.b$b0 */
    final class b0 {

        /* renamed from: i */
        static final int f2577i = 420;

        /* renamed from: j */
        static final int f2578j = 951;

        /* renamed from: k */
        static final int f2579k = 128;

        /* renamed from: l */
        static final int f2580l = 112;

        /* renamed from: m */
        static final int f2581m = 3;

        /* renamed from: n */
        static final int f2582n = 60;

        /* renamed from: o */
        static final int f2583o = 1712;

        /* renamed from: a */
        private final WindowManager f2584a;

        /* renamed from: b */
        private final FrameLayout f2585b;

        /* renamed from: c */
        private final LinearLayout f2586c;

        /* renamed from: d */
        private final float f2587d;

        /* renamed from: e */
        private final float f2588e;

        /* renamed from: f */
        private final boolean f2589f;

        /* renamed from: g */
        private boolean f2590g;

        /* renamed from: dev.duo.workspaceprobe.b$b0$a */
        class a extends FrameLayout {

            /* renamed from: a */
            final /* synthetic */ WorkspaceHooks f2592a;

            a(Context context, WorkspaceHooks c0143b) {
                super(context);
                this.f2592a = c0143b;
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchKeyEvent(KeyEvent keyEvent) {
                if (keyEvent.getKeyCode() != 4) {
                    return super.dispatchKeyEvent(keyEvent);
                }
                if (keyEvent.getAction() == 1) {
                    b0.this.m2844a();
                }
                return true;
            }
        }

        b0(final String str, boolean z, int i, int i2, float f, boolean z2) {
            this.f2584a = (WindowManager) WorkspaceHooks.this.f2301i4.getSystemService(WindowManager.class);
            this.f2587d = f;
            this.f2589f = z2;
            boolean m2488b = WorkspaceHooks.m2488b(WorkspaceHooks.this.f2301i4);
            int i3 = m2488b ? -855305 : -14935010;
            a aVar = new a(WorkspaceHooks.this.f2301i4, WorkspaceHooks.this);
            this.f2585b = aVar;
            aVar.setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda2
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean m2849a;
                    m2849a = WorkspaceHooks.b0.this.m2849a(view, motionEvent);
                    return m2849a;
                }
            });
            LinearLayout linearLayout = new LinearLayout(WorkspaceHooks.this.f2301i4);
            this.f2586c = linearLayout;
            linearLayout.setOrientation(1);
            linearLayout.setBackground(WorkspaceHooks.m2444b(m2488b ? -148100050 : -134217729, 40.0f));
            linearLayout.setElevation(24.0f);
            linearLayout.setClipToOutline(true);
            linearLayout.setClickable(true);
            LinearLayout linearLayout2 = new LinearLayout(WorkspaceHooks.this.f2301i4);
            linearLayout2.setGravity(WorkspaceHooks.f2063w);
            linearLayout2.setPadding(36, 0, 36, 0);
            ImageView imageView = new ImageView(WorkspaceHooks.this.f2301i4);
            TextView textView = new TextView(WorkspaceHooks.this.f2301i4);
            try {
                imageView.setImageDrawable(WorkspaceHooks.this.m2776z(str));
            } catch (PackageManager.NameNotFoundException e) {
            }
            textView.setText(WorkspaceHooks.this.m2144A(str));
            linearLayout2.addView(imageView, new LinearLayout.LayoutParams(72, 72));
            textView.setSingleLine(true);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setTextSize(0, 36.0f);
            textView.setTextColor(i3);
            textView.setTypeface(Typeface.create(Typeface.DEFAULT, 500, false));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
            layoutParams.leftMargin = 24;
            linearLayout2.addView(textView, layoutParams);
            this.f2586c.addView(linearLayout2, new LinearLayout.LayoutParams(-1, f2579k));
            m2848a(m2488b, i3, "全屏打开", true, new Runnable() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.b0.this.m2846a(str);
                }
            });
            m2848a(m2488b, i3, "小窗打开", true, new Runnable() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.b0.this.m2850b(str);
                }
            });
            if (z) {
                m2848a(m2488b, -50384, "从侧栏移除", false, new Runnable() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.b0.this.m2852c(str);
                    }
                });
            } else {
                m2848a(m2488b, i3, "固定到侧栏", false, new Runnable() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.b0.this.m2853d(str);
                    }
                });
            }
            int max = Math.max(f2582n, Math.min(1185, i2 - 233));
            this.f2588e = Math.max(0, Math.min(467, i2 - max));
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(f2577i, 467);
            layoutParams2.leftMargin = i;
            layoutParams2.topMargin = max;
            this.f2585b.addView(this.f2586c, layoutParams2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public /* synthetic */ void m2850b(String str) {
            WorkspaceHooks.this.m2732r(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m2852c(String str) {
            WorkspaceHooks.this.m2158D(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public /* synthetic */ void m2853d(String str) {
            WorkspaceHooks.this.m2742t(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ boolean m2849a(View view, MotionEvent motionEvent) {
            if (motionEvent.getActionMasked() != 0) {
                return true;
            }
            m2844a();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m2851c() {
            try {
                this.f2584a.removeViewImmediate(this.f2585b);
            } catch (RuntimeException e) {
                Log.w("DuoRail", "Sidebar menu remove failed", e);
            }
        }

        /* renamed from: b */
        void m2854b() {
            if (this.f2590g) {
                this.f2590g = false;
                this.f2586c.animate().cancel();
                this.f2586c.animate().scaleX(0.9f).scaleY(0.9f).alpha(0.0f).setDuration(120L).withEndAction(new Runnable() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.b0.this.m2851c();
                    }
                }).start();
            }
        }

        /* renamed from: d */
        void m2855d() {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 2017, 16777472, -3);
            layoutParams.gravity = 51;
            layoutParams.layoutInDisplayCutoutMode = 3;
            layoutParams.setFitInsetsTypes(0);
            layoutParams.setTitle("DuoSidebarMenu");
            try {
                this.f2584a.addView(this.f2585b, layoutParams);
                this.f2590g = true;
                this.f2586c.setPivotX(this.f2587d);
                this.f2586c.setPivotY(this.f2588e);
                this.f2586c.setScaleX(0.9f);
                this.f2586c.setScaleY(0.9f);
                this.f2586c.setAlpha(0.0f);
                this.f2586c.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(180L).setInterpolator(new DecelerateInterpolator()).start();
                Log.w("DuoRail", "Sidebar menu open");
            } catch (RuntimeException e) {
                Log.w("DuoRail", "Sidebar menu unavailable", e);
                WorkspaceHooks.this.f2217V3 = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m2846a(String str) {
            WorkspaceHooks.this.m2736s(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public void m2844a() {
            if (this.f2589f) {
                WorkspaceHooks.this.m2703o();
            } else {
                WorkspaceHooks.this.m2714p();
            }
        }

        /* renamed from: a */
        private void m2848a(boolean z, int i, final String str, final boolean z2, final Runnable runnable) {
            View view = new View(WorkspaceHooks.this.f2301i4);
            view.setBackgroundColor(z ? 654311423 : 520093696);
            this.f2586c.addView(view, new LinearLayout.LayoutParams(-1, 1));
            TextView textView = new TextView(WorkspaceHooks.this.f2301i4);
            textView.setText(str);
            textView.setGravity(WorkspaceHooks.f2063w);
            textView.setPadding(WorkspaceHooks.f2018Z, 0, WorkspaceHooks.f2018Z, 0);
            textView.setTextSize(0, 38.0f);
            textView.setTextColor(i);
            textView.setBackground(new RippleDrawable(ColorStateList.valueOf(z ? 872415231 : 520093696), null, new ColorDrawable(-1)));
            textView.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$b0$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    WorkspaceHooks.b0.this.m2847a(str, z2, runnable, view2);
                }
            });
            this.f2586c.addView(textView, new LinearLayout.LayoutParams(-1, f2580l));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m2847a(String str, boolean z, Runnable runnable, View view) {
            Log.w("DuoRail", "Sidebar menu " + str + (this.f2589f ? " (panel)" : ""));
            if (z) {
                WorkspaceHooks.this.m2714p();
            } else {
                m2844a();
            }
            runnable.run();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$c, reason: case insensitive filesystem */
    class C0173c extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ int f2594a;

        /* renamed from: b */
        final /* synthetic */ ValueAnimator f2595b;

        C0173c(int i, ValueAnimator valueAnimator) {
            this.f2594a = i;
            this.f2595b = valueAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (WorkspaceHooks.this.f2323m2.get(Integer.valueOf(this.f2594a)) != this.f2595b) {
                return;
            }
            WorkspaceHooks.this.f2323m2.remove(Integer.valueOf(this.f2594a));
            WorkspaceHooks.this.m2777z(this.f2594a);
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$d, reason: case insensitive filesystem */
    class ViewOnAttachStateChangeListenerC0174d implements View.OnAttachStateChangeListener {
        ViewOnAttachStateChangeListenerC0174d() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            WorkspaceHooks.this.m2347a(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            WorkspaceHooks.this.m2481b("detached");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.workspaceprobe.b$d0 */
    final class d0 {

        /* renamed from: r */
        static final int f2603r = 963;

        /* renamed from: s */
        static final int f2604s = 200;

        /* renamed from: t */
        static final int f2605t = 305;

        /* renamed from: u */
        static final int f2606u = 735;

        /* renamed from: v */
        static final int f2607v = 1310;

        /* renamed from: w */
        static final int f2608w = 56;

        /* renamed from: x */
        static final int f2609x = 3;

        /* renamed from: y */
        static final int f2610y = 128;

        /* renamed from: a */
        private final WindowManager f2611a;

        /* renamed from: b */
        private final boolean f2612b;

        /* renamed from: c */
        private final int f2613c;

        /* renamed from: d */
        private final int f2614d;

        /* renamed from: e */
        private final FrameLayout f2615e;

        /* renamed from: f */
        private final FrameLayout f2616f;

        /* renamed from: g */
        private final LinearLayout f2617g;

        /* renamed from: h */
        private final EditText f2618h;

        /* renamed from: i */
        private final Z f2619i;

        /* renamed from: j */
        private List<Object[]> f2620j;

        /* renamed from: k */
        private boolean f2621k;

        /* renamed from: l */
        W f2622l;

        /* renamed from: m */
        float f2623m;

        /* renamed from: n */
        float f2624n;

        /* renamed from: o */
        final List<View> f2625o;

        /* renamed from: p */
        boolean f2626p;

        /* renamed from: dev.duo.workspaceprobe.b$d0$a */
        class a extends FrameLayout {

            /* renamed from: a */
            final /* synthetic */ WorkspaceHooks f2628a;

            a(Context context, WorkspaceHooks c0143b) {
                super(context);
                this.f2628a = c0143b;
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchKeyEvent(KeyEvent keyEvent) {
                if (keyEvent.getKeyCode() != 4) {
                    return super.dispatchKeyEvent(keyEvent);
                }
                if (keyEvent.getAction() == 1) {
                    WorkspaceHooks.this.m2714p();
                }
                return true;
            }
        }

        /* renamed from: dev.duo.workspaceprobe.b$d0$b */
        class b implements TextWatcher {

            /* renamed from: a */
            final /* synthetic */ WorkspaceHooks f2630a;

            b(WorkspaceHooks c0143b) {
                this.f2630a = c0143b;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                d0.this.m2871d();
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        }

        d0() {
            this.f2611a = (WindowManager) WorkspaceHooks.this.f2301i4.getSystemService(WindowManager.class);
            boolean m2488b = WorkspaceHooks.m2488b(WorkspaceHooks.this.f2301i4);
            this.f2612b = m2488b;
            int i = m2488b ? -855305 : -14935010;
            this.f2613c = i;
            int i2 = m2488b ? -13882322 : -1776408;
            this.f2614d = i2;
            this.f2620j = Collections.EMPTY_LIST;
            this.f2625o = new ArrayList();
            a aVar = new a(WorkspaceHooks.this.f2301i4, WorkspaceHooks.this);
            this.f2615e = aVar;
            aVar.setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda6
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean m2864a;
                    m2864a = WorkspaceHooks.d0.this.m2864a(view, motionEvent);
                    return m2864a;
                }
            });
            FrameLayout frameLayout = new FrameLayout(WorkspaceHooks.this.f2301i4);
            this.f2616f = frameLayout;
            frameLayout.setBackground(WorkspaceHooks.m2444b(m2488b ? -149152738 : -134941450, 64.0f));
            frameLayout.setElevation(24.0f);
            frameLayout.setClickable(true);
            LinearLayout linearLayout = new LinearLayout(WorkspaceHooks.this.f2301i4);
            linearLayout.setOrientation(1);
            linearLayout.setPadding(f2608w, f2608w, f2608w, 0);
            LinearLayout linearLayout2 = new LinearLayout(WorkspaceHooks.this.f2301i4);
            linearLayout2.setGravity(WorkspaceHooks.f2063w);
            EditText editText = new EditText(WorkspaceHooks.this.f2301i4);
            this.f2618h = editText;
            editText.setHint("搜索应用");
            editText.setSingleLine(true);
            editText.setTextSize(0, 40.0f);
            editText.setTextColor(i);
            editText.setHintTextColor(m2488b ? -2131561737 : -2143536061);
            editText.setBackground(WorkspaceHooks.m2444b(i2, 56.0f));
            editText.setPadding(112, 0, 32, 0);
            editText.setCompoundDrawablePadding(0);
            editText.setImeOptions(3);
            FrameLayout frameLayout2 = new FrameLayout(WorkspaceHooks.this.f2301i4);
            frameLayout2.addView(editText, new FrameLayout.LayoutParams(-1, -1));
            a0 a0Var = new a0(WorkspaceHooks.this.f2301i4, 0, m2488b ? -5329230 : -12829629);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(f2608w, f2608w);
            layoutParams.gravity = WorkspaceHooks.f2063w;
            layoutParams.leftMargin = 38;
            frameLayout2.addView(a0Var, layoutParams);
            linearLayout2.addView(frameLayout2, new LinearLayout.LayoutParams(0, 112, 1.0f));
            Z z = new Z(WorkspaceHooks.this.f2301i4, i2, i);
            this.f2619i = z;
            z.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WorkspaceHooks.d0.this.m2861a(view);
                }
            });
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(112, 112);
            layoutParams2.leftMargin = 32;
            linearLayout2.addView(z, layoutParams2);
            linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(-1, 112));
            TextView textView = new TextView(WorkspaceHooks.this.f2301i4);
            textView.setText("全部小窗应用");
            textView.setTextSize(0, 36.0f);
            textView.setTextColor(i);
            textView.setTypeface(Typeface.create(Typeface.DEFAULT, 500, false));
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams3.topMargin = 40;
            layoutParams3.leftMargin = 12;
            layoutParams3.bottomMargin = 20;
            linearLayout.addView(textView, layoutParams3);
            ScrollView scrollView = new ScrollView(WorkspaceHooks.this.f2301i4);
            scrollView.setVerticalScrollBarEnabled(false);
            scrollView.setOverScrollMode(2);
            scrollView.setVerticalFadingEdgeEnabled(true);
            scrollView.setFadingEdgeLength(120);
            LinearLayout linearLayout3 = new LinearLayout(WorkspaceHooks.this.f2301i4);
            this.f2617g = linearLayout3;
            linearLayout3.setOrientation(1);
            linearLayout3.setClipChildren(false);
            scrollView.addView(linearLayout3, new FrameLayout.LayoutParams(-1, -2));
            linearLayout.addView(scrollView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
            frameLayout.addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(f2606u, f2607v);
            layoutParams4.leftMargin = f2604s;
            layoutParams4.topMargin = f2605t;
            aVar.addView(frameLayout, layoutParams4);
            editText.addTextChangedListener(new b(WorkspaceHooks.this));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m2869c() {
            final List m2175H = WorkspaceHooks.this.m2175H();
            WorkspaceHooks.this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.d0.this.m2862a(m2175H);
                }
            });
        }

        /* renamed from: d */
        void m2871d() {
            this.f2619i.m2843a(WorkspaceHooks.this.f2203T3);
            this.f2617g.removeAllViews();
            this.f2625o.clear();
            String lowerCase = this.f2618h.getText().toString().trim().toLowerCase(Locale.ROOT);
            this.f2626p = !lowerCase.isEmpty();
            LinearLayout linearLayout = null;
            int i = 0;
            for (Object[] objArr : this.f2620j) {
                String str = (String) objArr[0];
                String str2 = (String) objArr[1];
                if (!lowerCase.isEmpty()) {
                    Locale locale = Locale.ROOT;
                    if (!str2.toLowerCase(locale).contains(lowerCase) && !str.toLowerCase(locale).contains(lowerCase)) {
                    }
                }
                if (i % 3 == 0) {
                    linearLayout = new LinearLayout(WorkspaceHooks.this.f2301i4);
                    linearLayout.setClipChildren(false);
                    this.f2617g.addView(linearLayout, new LinearLayout.LayoutParams(-1, -2));
                }
                View m2858a = m2858a(str, str2, (Drawable) objArr[2]);
                this.f2625o.add(m2858a);
                linearLayout.addView(m2858a, new LinearLayout.LayoutParams(0, -2, 1.0f));
                i++;
            }
            for (int i2 = i % 3; linearLayout != null && i2 != 0 && i2 < 3; i2++) {
                linearLayout.addView(new View(WorkspaceHooks.this.f2301i4), new LinearLayout.LayoutParams(0, 1, 1.0f));
            }
        }

        /* renamed from: e */
        void m2872e() {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(f2603r, -1, 2017, 16777504, -3);
            layoutParams.gravity = 51;
            layoutParams.layoutInDisplayCutoutMode = 3;
            layoutParams.setFitInsetsTypes(0);
            layoutParams.softInputMode = 51;
            layoutParams.setTitle("DuoSidebarPanel");
            try {
                this.f2611a.addView(this.f2615e, layoutParams);
                this.f2621k = true;
                this.f2616f.setPivotX(735.0f);
                this.f2616f.setPivotY(Math.max(0, Math.min(f2607v, WorkspaceHooks.this.m2166E1() - 305)));
                this.f2616f.setScaleX(0.6f);
                this.f2616f.setScaleY(0.6f);
                this.f2616f.setAlpha(0.0f);
                this.f2616f.animate().scaleX(1.0f).scaleY(1.0f).setDuration(250L).setInterpolator(new OvershootInterpolator(0.7f)).start();
                this.f2616f.animate().alpha(1.0f).setDuration(150L);
                Log.w("DuoRail", "Sidebar panel open");
                WorkspaceHooks.this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.d0.this.m2869c();
                    }
                });
            } catch (RuntimeException e) {
                Log.w("DuoRail", "Sidebar panel unavailable", e);
                WorkspaceHooks.this.f2210U3 = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public /* synthetic */ void m2868b() {
            try {
                this.f2611a.removeViewImmediate(this.f2615e);
            } catch (RuntimeException e) {
                Log.w("DuoRail", "Sidebar panel remove failed", e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ boolean m2864a(View view, MotionEvent motionEvent) {
            if (motionEvent.getActionMasked() != 0) {
                return true;
            }
            WorkspaceHooks.this.m2714p();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m2861a(View view) {
            WorkspaceHooks.this.m2686m(!r2.f2203T3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m2862a(List list) {
            if (WorkspaceHooks.this.f2210U3 != this) {
                return;
            }
            this.f2620j = list;
            m2871d();
        }

        /* renamed from: a */
        void m2870a() {
            if (this.f2621k) {
                this.f2621k = false;
                InputMethodManager inputMethodManager = (InputMethodManager) WorkspaceHooks.this.f2301i4.getSystemService(InputMethodManager.class);
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(this.f2618h.getWindowToken(), 0);
                }
                W w = this.f2622l;
                if (w != null) {
                    w.m2837c();
                }
                this.f2616f.animate().cancel();
                this.f2616f.animate().scaleX(0.6f).scaleY(0.6f).alpha(0.0f).setDuration(160L).setInterpolator(new AccelerateInterpolator()).withEndAction(new Runnable() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.d0.this.m2868b();
                    }
                }).start();
                Log.w("DuoRail", "Sidebar panel close");
            }
        }

        /* renamed from: a */
        private View m2858a(final String str, String str2, final Drawable drawable) {
            LinearLayout linearLayout = new LinearLayout(WorkspaceHooks.this.f2301i4);
            linearLayout.setOrientation(1);
            linearLayout.setGravity(1);
            linearLayout.setPadding(0, 28, 0, 28);
            final FrameLayout frameLayout = new FrameLayout(WorkspaceHooks.this.f2301i4);
            final ImageView imageView = new ImageView(WorkspaceHooks.this.f2301i4);
            imageView.setImageDrawable(drawable);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(f2610y, f2610y);
            layoutParams.topMargin = WorkspaceHooks.f2063w;
            layoutParams.rightMargin = WorkspaceHooks.f2063w;
            frameLayout.addView(imageView, layoutParams);
            final boolean contains = WorkspaceHooks.this.f2147L3.contains(str);
            if (WorkspaceHooks.this.f2203T3 && !contains) {
                frameLayout.addView(new V(WorkspaceHooks.this.f2301i4, true), new FrameLayout.LayoutParams(48, 48, 53));
            }
            if (WorkspaceHooks.this.f2203T3 && contains) {
                imageView.setAlpha(0.35f);
            }
            linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(144, 144));
            TextView textView = new TextView(WorkspaceHooks.this.f2301i4);
            textView.setText(str2);
            textView.setSingleLine(true);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setGravity(17);
            textView.setTextSize(0, 30.0f);
            textView.setTextColor(this.f2612b ? -856493321 : -868467645);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams2.topMargin = 6;
            linearLayout.addView(textView, layoutParams2);
            linearLayout.setContentDescription(str2);
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WorkspaceHooks.d0.this.m2863a(contains, str, view);
                }
            });
            linearLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda2
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean m2866a;
                    m2866a = WorkspaceHooks.d0.this.m2866a(imageView, str, drawable, view);
                    return m2866a;
                }
            });
            linearLayout.setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$d0$$ExternalSyntheticLambda3
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean m2865a;
                    m2865a = WorkspaceHooks.d0.this.m2865a(frameLayout, view, motionEvent);
                    return m2865a;
                }
            });
            return linearLayout;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m2863a(boolean z, String str, View view) {
            if (WorkspaceHooks.this.f2203T3) {
                if (z) {
                    return;
                }
                WorkspaceHooks.this.m2742t(str);
            } else {
                WorkspaceHooks.this.m2714p();
                if (WorkspaceHooks.this.f2182Q3) {
                    WorkspaceHooks.this.m2732r(str);
                } else {
                    WorkspaceHooks.this.m2736s(str);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ boolean m2866a(ImageView imageView, String str, Drawable drawable, View view) {
            if (this.f2622l != null) {
                return true;
            }
            W w = WorkspaceHooks.this.new W(this, view, imageView, str, drawable);
            this.f2622l = w;
            w.m2838f();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ boolean m2865a(FrameLayout frameLayout, View view, MotionEvent motionEvent) {
            this.f2623m = motionEvent.getRawX();
            this.f2624n = motionEvent.getRawY();
            W w = this.f2622l;
            if (w != null && w.f2533b == view) {
                w.m2836a(motionEvent);
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
    class C0175e extends AnimatorListenerAdapter {

        /* renamed from: a */
        boolean f2632a;

        C0175e() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f2632a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            WorkspaceHooks.this.f2324m3 = false;
            WorkspaceHooks.this.f2336o3 = this.f2632a ? 0.0f : 1.0f;
            if (!this.f2632a) {
                WorkspaceHooks.this.f2312k3 = false;
                Runnable runnable = WorkspaceHooks.this.f2088C6;
                if (runnable != null) {
                    runnable.run();
                }
            }
            WorkspaceHooks.this.m2207P();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$e0 */
    private final class e0 extends ScrollView implements Runnable {

        /* renamed from: h */
        static final int f2634h = 80;

        /* renamed from: a */
        private boolean f2635a;

        /* renamed from: b */
        private boolean f2636b;

        /* renamed from: c */
        private Paint f2637c;

        /* renamed from: d */
        private LinearGradient f2638d;

        /* renamed from: e */
        private LinearGradient f2639e;

        /* renamed from: f */
        private final Matrix f2640f;

        e0() {
            super(WorkspaceHooks.this.f2301i4);
            this.f2640f = new Matrix();
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.f2635a = true;
            } else if (actionMasked == 1 || actionMasked == 3) {
                this.f2635a = false;
                m2873a();
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
            float min = this.f2636b ? Math.min(1.0f, scrollY / 20.0f) : 0.0f;
            float min2 = this.f2636b ? Math.min(1.0f, (max - scrollY) / 20.0f) : 0.0f;
            if (min <= 0.0f && min2 <= 0.0f) {
                super.draw(canvas);
                return;
            }
            if (this.f2637c == null) {
                int length = WorkspaceHooks.f2000H.length;
                int[] iArr = new int[length];
                int[] iArr2 = new int[length];
                float[] fArr = new float[length];
                while (i < length) {
                    int i2 = length - 1;
                    float f2 = f;
                    fArr[i] = i / i2;
                    iArr2[i] = Math.round((f2 - WorkspaceHooks.f2000H[i]) * 255.0f) << 24;
                    iArr[i] = Math.round((f2 - WorkspaceHooks.f2000H[i2 - i]) * 255.0f) << 24;
                    i++;
                    f = f2;
                }
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                this.f2638d = new LinearGradient(0.0f, 0.0f, 0.0f, 20.0f, iArr, fArr, tileMode);
                this.f2639e = new LinearGradient(0.0f, 0.0f, 0.0f, 20.0f, iArr2, fArr, tileMode);
                Paint paint = new Paint();
                this.f2637c = paint;
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            }
            float f3 = scrollY;
            float f4 = width;
            int i3 = height + scrollY;
            float f5 = i3;
            int saveLayer = canvas.saveLayer(0.0f, f3, f4, f5, null);
            super.draw(canvas);
            if (min > 0.0f) {
                this.f2640f.setTranslate(0.0f, f3);
                this.f2638d.setLocalMatrix(this.f2640f);
                this.f2637c.setShader(this.f2638d);
                this.f2637c.setAlpha(Math.round(min * 255.0f));
                canvas.drawRect(0.0f, f3, f4, scrollY + 20, this.f2637c);
            }
            if (min2 > 0.0f) {
                float f6 = i3 - 20;
                this.f2640f.setTranslate(0.0f, f6);
                this.f2639e.setLocalMatrix(this.f2640f);
                this.f2637c.setShader(this.f2639e);
                this.f2637c.setAlpha(Math.round(min2 * 255.0f));
                canvas.drawRect(0.0f, f6, f4, f5, this.f2637c);
            }
            canvas.restoreToCount(saveLayer);
        }

        @Override // android.view.View
        protected void onScrollChanged(int i, int i2, int i3, int i4) {
            super.onScrollChanged(i, i2, i3, i4);
            m2873a();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2635a || WorkspaceHooks.this.f2224W3 != null) {
                return;
            }
            if (WorkspaceHooks.this.f2210U3 == null || WorkspaceHooks.this.f2210U3.f2622l == null) {
                int max = getChildCount() == 0 ? 0 : Math.max(0, getChildAt(0).getHeight() - getHeight());
                int round = Math.round(getScrollY() / 150.0f) * WorkspaceHooks.f2032g0;
                int min = Math.min((max / WorkspaceHooks.f2032g0) * WorkspaceHooks.f2032g0, round);
                if (!this.f2636b || Math.abs(max - getScrollY()) >= Math.abs(Math.min(max, round) - getScrollY())) {
                    max = this.f2636b ? Math.min(max, round) : min;
                }
                if (max != getScrollY()) {
                    smoothScrollTo(0, max);
                }
            }
        }

        /* renamed from: a */
        void m2875a(boolean z) {
            if (this.f2636b == z) {
                return;
            }
            this.f2636b = z;
            setVerticalFadingEdgeEnabled(!z);
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public void m2873a() {
            removeCallbacks(this);
            postDelayed(this, 80L);
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$f, reason: case insensitive filesystem */
    class ViewTreeObserverOnPreDrawListenerC0176f implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a */
        final /* synthetic */ View f2642a;

        /* renamed from: b */
        final /* synthetic */ Method f2643b;

        ViewTreeObserverOnPreDrawListenerC0176f(View view, Method method) {
            this.f2642a = view;
            this.f2643b = method;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.f2642a.getViewTreeObserver().removeOnPreDrawListener(this);
            try {
                this.f2643b.invoke(this.f2642a, Float.valueOf(1.0f));
                return true;
            } catch (Throwable th) {
                Log.e("DuoKeyguard", "Shortcut start position failed", th);
                return true;
            }
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$f0 */
    private final class f0 extends SubscriptionManager.OnSubscriptionsChangedListener {

        /* renamed from: a */
        private final h0 f2645a;

        /* renamed from: b */
        private int[] f2646b = new int[0];

        /* renamed from: c */
        private final List<TelephonyManager> f2647c = new ArrayList();

        /* renamed from: d */
        private final List<TelephonyCallback> f2648d = new ArrayList();

        /* renamed from: dev.duo.workspaceprobe.b$f0$a */
        final class a extends TelephonyCallback implements TelephonyCallback.SignalStrengthsListener {

            /* renamed from: a */
            final /* synthetic */ int f2650a;

            /* renamed from: b */
            final /* synthetic */ int f2651b;

            a(int i, int i2) {
                this.f2650a = i;
                this.f2651b = i2;
            }

            @Override // android.telephony.TelephonyCallback.SignalStrengthsListener
            public void onSignalStrengthsChanged(SignalStrength signalStrength) {
                if (this.f2650a >= f0.this.f2646b.length || f0.this.f2646b[this.f2650a] != this.f2651b) {
                    return;
                }
                int m2443b = signalStrength == null ? -1 : WorkspaceHooks.m2443b(signalStrength);
                if (m2443b == (this.f2650a == 0 ? f0.this.f2645a.f2717d0 : f0.this.f2645a.f2718e0)) {
                    return;
                }
                if (this.f2650a == 0) {
                    f0.this.f2645a.f2717d0 = m2443b;
                } else {
                    f0.this.f2645a.f2718e0 = m2443b;
                }
                WorkspaceHooks.this.m2688m1();
            }
        }

        f0(h0 h0Var) {
            this.f2645a = h0Var;
        }

        @Override // android.telephony.SubscriptionManager.OnSubscriptionsChangedListener
        public void onSubscriptionsChanged() {
            List<SubscriptionInfo> activeSubscriptionInfoList = ((SubscriptionManager) WorkspaceHooks.this.f2301i4.getSystemService(SubscriptionManager.class)).getActiveSubscriptionInfoList();
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
            if (Arrays.equals(array, this.f2646b)) {
                return;
            }
            for (int i = 0; i < this.f2647c.size(); i++) {
                this.f2647c.get(i).unregisterTelephonyCallback(this.f2648d.get(i));
            }
            this.f2647c.clear();
            this.f2648d.clear();
            this.f2646b = array;
            h0 h0Var = this.f2645a;
            h0Var.f2717d0 = -1;
            h0Var.f2718e0 = -1;
            h0Var.f2719f0 = array.length > 1;
            Log.w("DuoRail", "SIM rows " + Arrays.toString(array));
            TelephonyManager telephonyManager = (TelephonyManager) WorkspaceHooks.this.f2301i4.getSystemService(TelephonyManager.class);
            for (int i2 = 0; i2 < array.length; i2++) {
                int i3 = array[i2];
                TelephonyManager createForSubscriptionId = telephonyManager.createForSubscriptionId(i3);
                a aVar = new a(i2, i3);
                createForSubscriptionId.registerTelephonyCallback(WorkspaceHooks.this.f2301i4.getMainExecutor(), aVar);
                this.f2647c.add(createForSubscriptionId);
                this.f2648d.add(aVar);
            }
            WorkspaceHooks.this.m2688m1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$g, reason: case insensitive filesystem */
    class C0177g implements SensorEventListener {
        C0177g() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            WorkspaceHooks.this.f2286g1 = sensorEvent.values[0];
            if (WorkspaceHooks.this.f2274e1 && WorkspaceHooks.this.f2388x1) {
                if (WorkspaceHooks.this.f2352r1 && WorkspaceHooks.this.f2370u1) {
                    WorkspaceHooks c0143b = WorkspaceHooks.this;
                    if (!c0143b.f2145L1 && !c0143b.f2152M1) {
                        WorkspaceHooks c0143b2 = WorkspaceHooks.this;
                        if (!c0143b2.f2159N1) {
                            if (c0143b2.f2242Z0.m2904a(sensorEvent.values[0], SystemClock.uptimeMillis())) {
                                WorkspaceHooks.this.m2769x1();
                                return;
                            }
                            return;
                        }
                    }
                }
                WorkspaceHooks.this.m2596f2();
                return;
            }
            if (WorkspaceHooks.this.f2274e1) {
                int i = WorkspaceHooks.this.f2280f1;
                WorkspaceHooks c0143b3 = WorkspaceHooks.this;
                if (i == c0143b3.f2110G1 && !c0143b3.f2124I1 && !c0143b3.f2145L1 && !c0143b3.f2152M1) {
                    WorkspaceHooks c0143b4 = WorkspaceHooks.this;
                    if (!c0143b4.f2159N1) {
                        if (c0143b4.f2242Z0.m2904a(sensorEvent.values[0], SystemClock.uptimeMillis())) {
                            WorkspaceHooks.this.m2752u1();
                            return;
                        }
                        return;
                    }
                }
            }
            WorkspaceHooks.this.m2596f2();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.workspaceprobe.b$g0 */
    final class g0 extends ResultReceiver {

        /* renamed from: a */
        final IBinder f2654a;

        /* renamed from: b */
        IBinder f2655b;

        /* renamed from: c */
        ResultReceiver f2656c;

        /* renamed from: d */
        boolean f2657d;

        /* renamed from: e */
        boolean f2658e;

        /* renamed from: f */
        final Runnable f2659f;

        /* renamed from: g */
        final IBinder.DeathRecipient f2660g;

        g0() {
            super(WorkspaceHooks.this.f2071A1);
            this.f2654a = new Binder();
            this.f2659f = new Runnable() { // from class: dev.duo.workspaceprobe.b$g0$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.g0.this.m2878a();
                }
            };
            this.f2660g = new IBinder.DeathRecipient() { // from class: dev.duo.workspaceprobe.b$g0$$ExternalSyntheticLambda1
                @Override // android.os.IBinder.DeathRecipient
                public final void binderDied() {
                    WorkspaceHooks.g0.this.m2880c();
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m2878a() {
            if (WorkspaceHooks.this.f2362s5 != this) {
                return;
            }
            Log.e("DuoStandby", "Automatic clock timed out before display");
            WorkspaceHooks.this.m2691n();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public /* synthetic */ void m2879b() {
            if (WorkspaceHooks.this.f2362s5 == this) {
                WorkspaceHooks.this.m2691n();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m2880c() {
            WorkspaceHooks.this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$g0$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.g0.this.m2879b();
                }
            });
        }

        @Override // android.os.ResultReceiver
        protected void onReceiveResult(int i, Bundle bundle) {
            if (i != 1) {
                if (i != 5 || WorkspaceHooks.this.f2362s5 != this || !this.f2658e) {
                    if (i == 2 && WorkspaceHooks.this.f2362s5 == this) {
                        WorkspaceHooks.this.m2691n();
                        return;
                    }
                    return;
                }
                if (!WorkspaceHooks.this.m2178H1() || !WorkspaceHooks.this.m2182I1()) {
                    WorkspaceHooks.this.m2691n();
                    return;
                } else {
                    WorkspaceHooks.this.f2071A1.removeCallbacks(this.f2659f);
                    Log.i("DuoStandby", "Automatic awake clock reported visible; visual confirmation pending");
                    return;
                }
            }
            if (WorkspaceHooks.this.f2362s5 == this && this.f2658e) {
                return;
            }
            ResultReceiver resultReceiver = bundle == null ? null : (ResultReceiver) bundle.getParcelable(TentClockActivity.f1438b, ResultReceiver.class);
            IBinder binder = bundle == null ? null : bundle.getBinder(TentClockActivity.f1439c);
            if (resultReceiver == null || binder == null) {
                if (WorkspaceHooks.this.f2362s5 == this) {
                    WorkspaceHooks.this.m2691n();
                }
                Log.e("DuoStandby", "Clock READY missing endpoint");
                return;
            }
            if (WorkspaceHooks.this.f2362s5 != this || !WorkspaceHooks.this.m2178H1() || !WorkspaceHooks.this.m2182I1()) {
                resultReceiver.send(3, null);
                if (WorkspaceHooks.this.f2362s5 == this) {
                    WorkspaceHooks.this.m2691n();
                    return;
                }
                return;
            }
            this.f2656c = resultReceiver;
            try {
                binder.linkToDeath(this.f2660g, 0);
                this.f2655b = binder;
                this.f2658e = true;
                this.f2656c.send(4, null);
                try {
                    PowerManager powerManager = (PowerManager) WorkspaceHooks.this.f2301i4.getSystemService(PowerManager.class);
                    if (powerManager.isInteractive()) {
                        return;
                    }
                    Class cls = Long.TYPE;
                    Class cls2 = Integer.TYPE;
                    PowerManager.class.getMethod("wakeUp", cls, cls2, String.class, cls2).invoke(powerManager, Long.valueOf(SystemClock.uptimeMillis()), 2, "MiDuo:TentClock", 0);
                } catch (ReflectiveOperationException | RuntimeException e) {
                    WorkspaceHooks.this.m2383a(e);
                }
            } catch (RemoteException e2) {
                WorkspaceHooks.this.m2691n();
                Log.e("DuoStandby", "Clock process exited before activation", e2);
            }
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$h, reason: case insensitive filesystem */
    class C0178h extends BroadcastReceiver {
        C0178h() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.android.quicksearchbox".equals(getSentFromPackage())) {
                WorkspaceHooks.this.m2390a(intent.getStringExtra("e"), intent.getFloatExtra("p", -1.0f));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.workspaceprobe.b$h0 */
    static final class h0 extends View {

        /* renamed from: A */
        static final float f2663A = 257.0f;

        /* renamed from: B */
        static final float f2664B = 226.0f;

        /* renamed from: C */
        static final int f2665C = 205;

        /* renamed from: E */
        static final int f2667E = 420;

        /* renamed from: G */
        private static final int f2669G = 416;

        /* renamed from: H */
        private static final int f2670H = 405;

        /* renamed from: I */
        private static final int f2671I = 15;

        /* renamed from: K */
        private static final Typeface f2673K;

        /* renamed from: L */
        private static final Typeface f2674L;

        /* renamed from: a */
        static final float f2675a = 48.6f;

        /* renamed from: b */
        static final float f2676b = 98.0f;

        /* renamed from: c */
        static final float f2677c = 146.0f;

        /* renamed from: d */
        private static final float f2678d = 8.067599f;

        /* renamed from: e */
        private static final float f2679e = 6.804f;

        /* renamed from: f */
        private static final float f2680f = 6.804f;

        /* renamed from: g */
        private static final float f2681g = 31.0f;

        /* renamed from: h */
        private static final float f2682h = 149.0f;

        /* renamed from: i */
        private static final float f2683i = 28.0f;

        /* renamed from: j */
        private static final float f2684j = 152.0f;

        /* renamed from: l */
        private static final float f2686l = 5.1029997f;

        /* renamed from: m */
        private static final float f2687m = 29.986198f;

        /* renamed from: n */
        private static final float f2688n = 64.400604f;

        /* renamed from: o */
        private static final float f2689o = 21.869999f;

        /* renamed from: p */
        private static final float f2690p = 2.916f;

        /* renamed from: q */
        private static final float f2691q = 5.0f;

        /* renamed from: r */
        private static final float f2692r = 35.235f;

        /* renamed from: s */
        private static final float f2693s = 9.72f;

        /* renamed from: t */
        private static final float f2694t = 13.122f;

        /* renamed from: u */
        private static final float f2695u = 4.131f;

        /* renamed from: v */
        private static final float f2696v = 33.534f;

        /* renamed from: w */
        private static final float f2697w = -3.645f;

        /* renamed from: x */
        static final float f2698x = 224.0f;

        /* renamed from: y */
        static final float f2699y = 28.0f;

        /* renamed from: z */
        static final float f2700z = 6.0f;

        /* renamed from: A0 */
        private final RectF f2701A0;

        /* renamed from: B0 */
        private final Path f2702B0;

        /* renamed from: M */
        float f2703M;

        /* renamed from: N */
        boolean f2704N;

        /* renamed from: O */
        boolean f2705O;

        /* renamed from: P */
        boolean f2706P;

        /* renamed from: Q */
        boolean f2707Q;

        /* renamed from: R */
        boolean f2708R;

        /* renamed from: S */
        boolean f2709S;

        /* renamed from: T */
        boolean f2710T;

        /* renamed from: U */
        boolean f2711U;

        /* renamed from: V */
        boolean f2712V;

        /* renamed from: W */
        float f2713W;

        /* renamed from: a0 */
        Drawable[] f2714a0;

        /* renamed from: b0 */
        int f2715b0;

        /* renamed from: c0 */
        String f2716c0;

        /* renamed from: d0 */
        int f2717d0;

        /* renamed from: e0 */
        int f2718e0;

        /* renamed from: f0 */
        boolean f2719f0;

        /* renamed from: g0 */
        int f2720g0;

        /* renamed from: h0 */
        private final Paint f2721h0;

        /* renamed from: i0 */
        private final Path f2722i0;

        /* renamed from: j0 */
        private final Matrix f2723j0;

        /* renamed from: k0 */
        private boolean f2724k0;

        /* renamed from: l0 */
        private boolean f2725l0;

        /* renamed from: m0 */
        private boolean f2726m0;

        /* renamed from: n0 */
        private boolean f2727n0;

        /* renamed from: o0 */
        private float f2728o0;

        /* renamed from: p0 */
        private float f2729p0;

        /* renamed from: q0 */
        private float f2730q0;

        /* renamed from: r0 */
        private int f2731r0;

        /* renamed from: s0 */
        private Consumer<View> f2732s0;

        /* renamed from: t0 */
        private final Rect f2733t0;

        /* renamed from: u0 */
        private final Rect f2734u0;

        /* renamed from: v0 */
        private final Paint f2735v0;

        /* renamed from: w0 */
        private final Paint f2736w0;

        /* renamed from: x0 */
        private final Rect f2737x0;

        /* renamed from: y0 */
        private final Paint f2738y0;

        /* renamed from: z0 */
        private final Paint f2739z0;

        /* renamed from: k */
        private static final float[] f2685k = {121.0f, 101.5f, 80.0f, 59.0f};

        /* renamed from: D */
        static final int f2666D = (int) Math.ceil(286.6000061035156d);

        /* renamed from: F */
        private static final int f2668F = (int) Math.ceil(202.6676025390625d);

        /* renamed from: J */
        private static final Path f2672J = m2887b();

        static {
            Typeface typeface = Typeface.DEFAULT;
            f2673K = Typeface.create(typeface, 600, false);
            f2674L = Typeface.create(typeface, 700, false);
        }

        h0(Context context) {
            this(context, true);
        }

        /* renamed from: d */
        void m2894d(h0 h0Var) {
            this.f2703M = h0Var.f2703M;
            this.f2717d0 = h0Var.f2717d0;
            this.f2718e0 = h0Var.f2718e0;
            this.f2719f0 = h0Var.f2719f0;
            this.f2704N = h0Var.f2704N;
            this.f2706P = h0Var.f2706P;
            this.f2714a0 = h0Var.f2714a0;
            this.f2712V = h0Var.f2712V;
            this.f2715b0 = h0Var.f2715b0;
            this.f2705O = h0Var.f2705O;
            this.f2716c0 = h0Var.f2716c0;
            this.f2707Q = h0Var.f2707Q;
            this.f2708R = h0Var.f2708R;
            this.f2709S = h0Var.f2709S;
            this.f2710T = h0Var.f2710T;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float f;
            h0 h0Var;
            int i;
            int i2;
            int i3;
            Canvas canvas2;
            h0 h0Var2;
            float f2;
            int i4;
            float f3;
            canvas.translate(0.0f, WorkspaceHooks.f2060u0);
            float f4 = this.f2709S ? 6.804f : f2678d;
            int i5 = this.f2720g0;
            int i6 = (i5 & 16777215) | 1291845632;
            this.f2721h0.setColor(i5);
            this.f2738y0.setStrokeWidth(f4);
            if (this.f2713W > 0.0f) {
                Calendar calendar = Calendar.getInstance();
                int i7 = calendar.get(12);
                String str = calendar.get(11) + (i7 < 10 ? ":0" : ":") + i7;
                int saveLayerAlpha = this.f2713W < 1.0f ? canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), 97.4f - f4, Math.round(this.f2713W * 255.0f)) : -1;
                m2884a(canvas, str, f2687m, f2676b, f2688n);
                h0Var = this;
                f = 98.0f;
                if (saveLayerAlpha >= 0) {
                    canvas.restoreToCount(saveLayerAlpha);
                }
            } else {
                f = 98.0f;
                h0Var = this;
            }
            boolean z = h0Var.f2707Q;
            boolean z2 = !z && h0Var.f2708R && h0Var.f2715b0 < 0 && h0Var.f2705O && !h0Var.f2716c0.isEmpty();
            boolean z3 = (!h0Var.f2719f0 || z || z2) ? false : true;
            boolean z4 = z || z2 || z3;
            float f5 = z4 ? 28.0f : f2681g;
            float f6 = z4 ? f2684j : f2682h;
            h0Var.f2701A0.set(49.4f, 97.4f, 146.6f, 194.6f);
            int i8 = h0Var.f2704N ? -13318311 : h0Var.f2703M <= 0.2f ? -50384 : h0Var.f2720g0;
            float max = Math.max(0.03f, Math.min(1.0f, h0Var.f2703M));
            if (h0Var.f2706P && h0Var.f2710T) {
                String valueOf = String.valueOf(Math.round(h0Var.f2703M * 100.0f));
                float degrees = (float) Math.toDegrees(Math.asin(Math.min(1.0f, (((ClockDigitsPath.m2957a(valueOf, f2689o, h0Var.f2709S) / 2.0f) + f2691q) + (f4 / 2.0f)) / f2675a)));
                float f7 = (270.0f - degrees) - f6;
                float f8 = (f5 + 90.0f) - degrees;
                float f9 = max * (f7 + f8);
                h0Var.f2738y0.setColor(i6);
                float f10 = f6;
                i = 16777215;
                i2 = 0;
                i3 = 1;
                canvas.drawArc(h0Var.f2701A0, f10, f7, false, h0Var.f2738y0);
                float f11 = degrees + 270.0f;
                canvas.drawArc(h0Var.f2701A0, f11, f8, false, h0Var.f2738y0);
                h0Var.f2738y0.setColor(i8);
                canvas.drawArc(h0Var.f2701A0, f10, Math.min(f9, f7), false, h0Var.f2738y0);
                if (f9 > f7) {
                    canvas.drawArc(h0Var.f2701A0, f11, f9 - f7, false, h0Var.f2738y0);
                }
                h0Var.m2884a(canvas, valueOf, f2689o, f, 111.251f);
            } else {
                float f12 = f6;
                i = 16777215;
                i2 = 0;
                i3 = 1;
                float f13 = 360.0f - (f12 - f5);
                h0Var.f2738y0.setColor(i6);
                canvas.drawArc(h0Var.f2701A0, f12, f13, false, h0Var.f2738y0);
                h0Var.f2738y0.setColor(i8);
                canvas.drawArc(h0Var.f2701A0, f12, f13 * max, false, h0Var.f2738y0);
            }
            if (!z) {
                canvas2 = canvas;
                float f14 = f4;
                h0Var2 = h0Var;
                float f15 = f;
                if (!z2) {
                    float f16 = z3 ? f2693s : 0.0f;
                    if (h0Var2.f2715b0 >= 0 || !h0Var2.f2705O || h0Var2.f2716c0.isEmpty()) {
                        float f17 = 164.468f - f16;
                        f2 = f15;
                        i4 = i6;
                        h0Var2.m2883a(canvas2, f2, f17, i4, f14);
                    } else {
                        h0Var2.f2735v0.setColor(h0Var2.f2720g0);
                        Paint paint = h0Var2.f2735v0;
                        String str2 = h0Var2.f2716c0;
                        paint.getTextBounds(str2, i2, str2.length(), h0Var2.f2737x0);
                        canvas2.drawText(h0Var2.f2716c0, f15, (149.888f - f16) - h0Var2.f2737x0.exactCenterY(), h0Var2.f2735v0);
                        f2 = f15;
                        i4 = i6;
                    }
                    h0Var2.f2739z0.setStrokeWidth(0.0f);
                    if (!z3) {
                        int i9 = i2;
                        while (true) {
                            if (i9 >= f2685k.length) {
                                break;
                            }
                            double radians = Math.toRadians(r5[i9]);
                            h0Var2.f2739z0.setColor(i9 < h0Var2.f2717d0 ? h0Var2.f2720g0 : i4);
                            canvas2.drawCircle(f2 + (((float) Math.cos(radians)) * f2675a), f2677c + (((float) Math.sin(radians)) * f2675a), f2686l, h0Var2.f2739z0);
                            i9++;
                        }
                    } else {
                        h0Var2.m2882a(canvas2, f2, 179.534f, i4);
                    }
                } else {
                    if (h0Var2.f2719f0) {
                        h0Var2.m2882a(canvas2, f15, 142.355f, i6);
                    } else {
                        float f18 = (f14 * 7.5937495f) / f2678d;
                        float f19 = f15 - ((33.887108f + f18) / 2.0f);
                        h0Var2.f2739z0.setStrokeWidth(0.0f);
                        int i10 = i2;
                        while (i10 < 4) {
                            float f20 = i10;
                            float f21 = ((f20 * 2.0f) + 7.8f) * 1.8984374f;
                            h0Var2.f2739z0.setColor(i10 < h0Var2.f2717d0 ? h0Var2.f2720g0 : i6);
                            float f22 = (f20 * 11.295702f) + f19;
                            h0Var2.f2701A0.set(f22, 154.73282f - f21, f22 + f18, 154.73282f);
                            float f23 = 0.3f * f18;
                            canvas2.drawRoundRect(h0Var2.f2701A0, f23, f23, h0Var2.f2739z0);
                            i10++;
                        }
                    }
                    h0Var2.m2884a(canvas2, h0Var2.f2716c0, f2689o, f15, 192.17f);
                    f2 = f15;
                }
            } else {
                if (h0Var.f2715b0 >= 0) {
                    canvas2 = canvas;
                    h0Var2 = h0Var;
                    float f24 = f;
                    h0Var2.m2883a(canvas2, f24, 154.748f, i6, f4);
                    f3 = f24;
                } else {
                    canvas2 = canvas;
                    h0Var2 = h0Var;
                    f3 = f;
                }
                h0Var2.f2739z0.setColor(h0Var2.f2720g0);
                h0Var2.f2739z0.setStrokeWidth(0.0f);
                canvas2.save();
                canvas2.translate(f3, 181.235f);
                canvas2.drawPath(f2672J, h0Var2.f2739z0);
                canvas2.restore();
                f2 = f3;
            }
            int i11 = (!h0Var2.f2706P || h0Var2.f2710T) ? i2 : i3;
            if (i11 != 0) {
                h0Var2.f2736w0.setColor(h0Var2.f2720g0);
                h0Var2.f2736w0.setTypeface(h0Var2.f2709S ? f2673K : f2674L);
                canvas2.drawText(Math.round(h0Var2.f2703M * 100.0f) + "%", f2, f2698x, h0Var2.f2736w0);
            }
            if (!h0Var2.f2711U || h0Var2.f2714a0.length <= 0) {
                return;
            }
            float f25 = i11 != 0 ? f2663A : f2664B;
            while (true) {
                Drawable[] drawableArr = h0Var2.f2714a0;
                if (i2 >= drawableArr.length) {
                    break;
                }
                float length = f2 + ((i2 - ((drawableArr.length - i3) / 2.0f)) * 34.0f);
                drawableArr[i2].setBounds(Math.round(length - 14.0f), Math.round(f25 - 14.0f), Math.round(length + 14.0f), Math.round(14.0f + f25));
                h0Var2.f2714a0[i2].draw(canvas2);
                i2++;
            }
            if (h0Var2.f2712V) {
                h0Var2.f2739z0.setColor((h0Var2.f2720g0 & i) | (-939524096));
                for (int i12 = -1; i12 <= i3; i12++) {
                    canvas2.drawCircle(f2 + (i12 * 10.0f), f25 + 14.0f + 12.0f, 2.6f, h0Var2.f2739z0);
                }
            }
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            float y = motionEvent.getY();
            boolean z = m2885a() && this.f2732s0 != null && y >= ((float) f2668F) && y < ((float) this.f2731r0);
            if (this.f2727n0) {
                if (actionMasked == 2) {
                    if (Math.hypot(motionEvent.getX() - this.f2728o0, y - this.f2729p0) > this.f2730q0) {
                        this.f2726m0 = false;
                    }
                } else if (actionMasked == 5) {
                    this.f2726m0 = false;
                } else if (actionMasked == 1 || actionMasked == 3) {
                    boolean z2 = this.f2726m0 && z && actionMasked == 1;
                    this.f2726m0 = false;
                    this.f2727n0 = false;
                    if (z2) {
                        this.f2732s0.accept(this);
                    }
                }
                return true;
            }
            if (!z || actionMasked != 0) {
                if (this.f2725l0 && actionMasked == 0 && y >= this.f2731r0) {
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }
            this.f2726m0 = true;
            this.f2727n0 = true;
            this.f2728o0 = motionEvent.getX();
            this.f2729p0 = y;
            this.f2730q0 = ViewConfiguration.get(getContext()).getScaledTouchSlop();
            return true;
        }

        h0(Context context, boolean z) {
            super(context);
            this.f2703M = 1.0f;
            this.f2708R = true;
            this.f2710T = true;
            this.f2713W = 1.0f;
            this.f2714a0 = new Drawable[0];
            this.f2715b0 = -1;
            this.f2716c0 = "";
            this.f2717d0 = -1;
            this.f2718e0 = -1;
            this.f2720g0 = -1;
            Paint paint = new Paint(1);
            this.f2721h0 = paint;
            this.f2722i0 = new Path();
            this.f2723j0 = new Matrix();
            this.f2731r0 = f2670H;
            Rect rect = new Rect();
            this.f2733t0 = rect;
            this.f2734u0 = new Rect(0, f2668F, f2665C, f2670H);
            Paint paint2 = new Paint(1);
            this.f2735v0 = paint2;
            Paint paint3 = new Paint(1);
            this.f2736w0 = paint3;
            this.f2737x0 = new Rect();
            Paint paint4 = new Paint(1);
            this.f2738y0 = paint4;
            Paint paint5 = new Paint(1);
            this.f2739z0 = paint5;
            this.f2701A0 = new RectF();
            this.f2702B0 = new Path();
            paint.setShadowLayer(f2700z, 0.0f, 1.0f, 637534208);
            float max = Math.max(56.6676f, (ClockDigitsPath.m2957a("23:59", f2687m, false) / 2.0f) + f2700z);
            rect.set((int) Math.floor(f2676b - max), (int) Math.floor(28.414405822753906d), (int) Math.ceil(max + f2676b), (int) Math.ceil(202.6676025390625d));
            if (z) {
                try {
                    Class<?> cls = Class.forName("android.view.ViewTreeObserver$OnComputeInternalInsetsListener");
                    Class<?> cls2 = Class.forName("android.view.ViewTreeObserver$InternalInsetsInfo");
                    final Method method = cls2.getMethod("setTouchableInsets", Integer.TYPE);
                    final Field field = cls2.getField("touchableRegion");
                    ViewTreeObserver.class.getMethod("addOnComputeInternalInsetsListener", cls).invoke(getViewTreeObserver(), Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: dev.duo.workspaceprobe.b$h0$$ExternalSyntheticLambda0
                        @Override // java.lang.reflect.InvocationHandler
                        public final Object invoke(Object obj, Method method2, Object[] objArr) {
                            Object m2881a;
                            m2881a = WorkspaceHooks.h0.this.m2881a(method, field, obj, method2, objArr);
                            return m2881a;
                        }
                    }));
                } catch (ReflectiveOperationException e) {
                    throw new IllegalStateException("Status touch region unavailable", e);
                }
            }
            paint2.setTextSize(32.0f);
            Paint.Align align = Paint.Align.CENTER;
            paint2.setTextAlign(align);
            paint2.setTypeface(Typeface.create(Typeface.DEFAULT, 700, false));
            paint3.setTextSize(24.0f);
            paint3.setTextAlign(align);
            paint3.setShadowLayer(f2700z, 0.0f, 1.0f, 637534208);
            paint4.setStyle(Paint.Style.STROKE);
            paint4.setStrokeCap(Paint.Cap.ROUND);
            paint5.setStyle(Paint.Style.FILL_AND_STROKE);
            paint5.setStrokeJoin(Paint.Join.ROUND);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ Object m2881a(Method method, Field field, Object obj, Method method2, Object[] objArr) throws Throwable {
            if ("onComputeInternalInsets".equals(method2.getName())) {
                method.invoke(objArr[0], 3);
                Region region = (Region) field.get(objArr[0]);
                if (this.f2724k0) {
                    region.set(m2893c());
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

        /* renamed from: b */
        private static Path m2887b() {
            Path path = new Path();
            Path.Direction direction = Path.Direction.CW;
            path.addRoundRect(-15.95f, -2.95f, 18.95f, 2.95f, 2.95f, 2.95f, direction);
            Path path2 = new Path();
            path2.addRect(-15.95f, -2.95f, -9.95f, 2.95f, direction);
            path.op(path2, Path.Op.UNION);
            for (int i = -1; i <= 1; i += 2) {
                path2.rewind();
                float f = i;
                float f2 = (-2.5f) * f;
                path2.moveTo(-15.95f, f2);
                path2.lineTo(-15.95f, (-7.25f) * f);
                float f3 = (-7.75f) * f;
                path2.quadTo(-15.95f, f3, -15.4f, f3);
                path2.lineTo(-13.4f, f3);
                path2.quadTo(-12.9f, f3, -12.65f, (-7.3f) * f);
                path2.lineTo(-10.2f, f2);
                path2.close();
                Path.Op op = Path.Op.UNION;
                path.op(path2, op);
                path2.rewind();
                path2.moveTo(-3.7f, f2);
                float f4 = (-15.3f) * f;
                path2.lineTo(-7.45f, f4);
                path2.quadTo(-6.3f, (-16.5f) * f, -5.15f, f4);
                path2.lineTo(5.85f, (-4.35f) * f);
                path2.quadTo(7.6f, (-3.05f) * f, 14.5f, f * (-2.95f));
                path2.lineTo(14.5f, f2);
                path2.close();
                path.op(path2, op);
            }
            Matrix matrix = new Matrix();
            matrix.setScale(1.0167364f, 1.0167364f);
            path.transform(matrix);
            return path;
        }

        /* renamed from: c */
        Region m2893c() {
            Region region = new Region(this.f2733t0);
            if (m2885a()) {
                region.op(this.f2734u0, Region.Op.UNION);
            }
            return region;
        }

        /* renamed from: a */
        void m2891a(boolean z) {
            if (this.f2724k0 == z) {
                return;
            }
            this.f2724k0 = z;
            setEnabled(z);
            if (!z) {
                this.f2726m0 = false;
                this.f2727n0 = false;
            }
            requestLayout();
        }

        /* renamed from: a */
        void m2892a(boolean z, int i) {
            if (this.f2725l0 == z && this.f2731r0 == i) {
                return;
            }
            this.f2725l0 = z;
            this.f2731r0 = i;
            this.f2734u0.set(0, f2668F, f2665C, i);
            if (!m2885a()) {
                this.f2726m0 = false;
                this.f2727n0 = false;
            }
            requestLayout();
        }

        /* renamed from: a */
        void m2890a(Consumer<View> consumer) {
            this.f2732s0 = consumer;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public boolean m2885a() {
            return this.f2725l0 && this.f2731r0 > f2668F + f2671I;
        }

        /* renamed from: a */
        private void m2884a(Canvas canvas, String str, float f, float f2, float f3) {
            ClockDigitsPath.m2959a(str, f, this.f2709S, f2, f3, this.f2722i0, this.f2723j0);
            canvas.drawPath(this.f2722i0, this.f2721h0);
        }

        /* renamed from: a */
        private void m2882a(Canvas canvas, float f, float f2, int i) {
            this.f2739z0.setStrokeWidth(0.0f);
            int i2 = 0;
            while (i2 < 2) {
                int i3 = i2 == 0 ? this.f2717d0 : this.f2718e0;
                int i4 = 0;
                while (i4 < 4) {
                    this.f2739z0.setColor(i4 < i3 ? this.f2720g0 : i);
                    canvas.drawCircle(((i4 - 1.5f) * f2694t) + f, ((i2 - 0.5f) * f2694t) + f2, f2695u, this.f2739z0);
                    i4++;
                }
                i2++;
            }
        }

        /* renamed from: a */
        private void m2883a(Canvas canvas, float f, float f2, int i, float f3) {
            this.f2738y0.setStrokeWidth(6.804f);
            int i2 = 0;
            while (i2 < 2) {
                float f4 = (i2 == 0 ? 0.59f : 0.38f) * f2675a;
                this.f2738y0.setColor(this.f2715b0 >= 2 - i2 ? this.f2720g0 : i);
                this.f2701A0.set(f - f4, f2 - f4, f + f4, f4 + f2);
                canvas.drawArc(this.f2701A0, 228.0f, 84.0f, false, this.f2738y0);
                i2++;
            }
            this.f2738y0.setStrokeWidth(f3);
            this.f2702B0.reset();
            this.f2702B0.moveTo(f, f2);
            this.f2701A0.set(f - 8.262f, f2 - 8.262f, f + 8.262f, f2 + 8.262f);
            this.f2702B0.arcTo(this.f2701A0, 228.0f, 84.0f);
            this.f2702B0.close();
            this.f2739z0.setColor(this.f2715b0 >= 0 ? this.f2720g0 : i);
            this.f2739z0.setStrokeWidth(2.43f);
            canvas.drawPath(this.f2702B0, this.f2739z0);
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$i, reason: case insensitive filesystem */
    class C0179i extends BroadcastReceiver {

        /* renamed from: a */
        final /* synthetic */ h0 f2740a;

        C0179i(h0 h0Var) {
            this.f2740a = h0Var;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                h0 h0Var = this.f2740a;
                float f = h0Var.f2703M;
                boolean z = h0Var.f2704N;
                int intExtra = intent.getIntExtra("level", -1);
                int intExtra2 = intent.getIntExtra("scale", 100);
                if (intExtra >= 0 && intExtra2 > 0) {
                    this.f2740a.f2703M = intExtra / intExtra2;
                }
                boolean z2 = true;
                int intExtra3 = intent.getIntExtra("status", 1);
                h0 h0Var2 = this.f2740a;
                if (intent.getIntExtra("plugged", 0) == 0 || (intExtra3 != 2 && intExtra3 != 5)) {
                    z2 = false;
                }
                h0Var2.f2704N = z2;
                h0 h0Var3 = this.f2740a;
                if (f == h0Var3.f2703M && z == h0Var3.f2704N) {
                    return;
                } else {
                    InfoWidgetRelay.m2913d();
                }
            }
            InfoWidgetRelay.m2914e();
            WorkspaceHooks.this.m2678l2();
            WorkspaceHooks.this.m2688m1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$j, reason: case insensitive filesystem */
    class C0180j extends ContentObserver {

        /* renamed from: a */
        final /* synthetic */ Runnable f2748a;

        C0180j(Handler handler, Runnable runnable) {
            super(handler);
            this.f2748a = runnable;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            this.f2748a.run();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$k, reason: case insensitive filesystem */
    class C0181k extends BroadcastReceiver {
        C0181k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String schemeSpecificPart = intent.getData() == null ? null : intent.getData().getSchemeSpecificPart();
            if (schemeSpecificPart == null || WorkspaceHooks.m2531c(schemeSpecificPart)) {
                return;
            }
            WorkspaceHooks.this.m2606g(schemeSpecificPart);
            if (!"android.intent.action.PACKAGE_REMOVED".equals(intent.getAction()) || intent.getBooleanExtra("android.intent.extra.REPLACING", false)) {
                WorkspaceHooks.this.m2553d(schemeSpecificPart, "package");
            } else {
                WorkspaceHooks.this.f2130J0.m2138a(schemeSpecificPart);
            }
            WorkspaceHooks.this.m2206O1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$l, reason: case insensitive filesystem */
    final class C0182l extends TelephonyCallback implements TelephonyCallback.ActiveDataSubscriptionIdListener, TelephonyCallback.CallStateListener {

        /* renamed from: a */
        private int f2751a = -1;

        /* renamed from: b */
        private TelephonyManager f2752b;

        /* renamed from: c */
        private TelephonyCallback f2753c;

        /* renamed from: d */
        final /* synthetic */ h0 f2754d;

        /* renamed from: dev.duo.workspaceprobe.b$l$a */
        final class a extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {

            /* renamed from: a */
            final /* synthetic */ int f2756a;

            a(int i) {
                this.f2756a = i;
            }

            @Override // android.telephony.TelephonyCallback.DisplayInfoListener
            public void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
                if (C0182l.this.f2751a != this.f2756a) {
                    return;
                }
                C0182l.this.f2754d.f2716c0 = WorkspaceHooks.m2450b(telephonyDisplayInfo);
                WorkspaceHooks.this.m2688m1();
            }
        }

        C0182l(h0 h0Var) {
            this.f2754d = h0Var;
        }

        @Override // android.telephony.TelephonyCallback.ActiveDataSubscriptionIdListener
        public void onActiveDataSubscriptionIdChanged(int i) {
            if (this.f2751a == i) {
                return;
            }
            TelephonyCallback telephonyCallback = this.f2753c;
            if (telephonyCallback != null) {
                this.f2752b.unregisterTelephonyCallback(telephonyCallback);
                this.f2753c = null;
            }
            this.f2751a = i;
            this.f2754d.f2716c0 = "";
            WorkspaceHooks.this.m2688m1();
            if (SubscriptionManager.isValidSubscriptionId(i)) {
                this.f2752b = ((TelephonyManager) WorkspaceHooks.this.f2301i4.getSystemService(TelephonyManager.class)).createForSubscriptionId(i);
                this.f2753c = new a(i);
                this.f2752b.registerTelephonyCallback(WorkspaceHooks.this.f2301i4.getMainExecutor(), this.f2753c);
            }
        }

        @Override // android.telephony.TelephonyCallback.CallStateListener
        public void onCallStateChanged(final int i) {
            WorkspaceHooks.this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$l$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.C0182l.this.m2896a(i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m2896a(int i) {
            if (WorkspaceHooks.this.f2284f5 == i) {
                return;
            }
            WorkspaceHooks.this.f2284f5 = i;
            WorkspaceHooks.this.m2772y();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$m, reason: case insensitive filesystem */
    class C0183m extends ContentObserver {

        /* renamed from: a */
        final /* synthetic */ Runnable f2758a;

        C0183m(Handler handler, Runnable runnable) {
            super(handler);
            this.f2758a = runnable;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            this.f2758a.run();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$n, reason: case insensitive filesystem */
    class C0184n extends ContentObserver {
        C0184n(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            WorkspaceHooks.this.m2245Y1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$o, reason: case insensitive filesystem */
    class C0185o extends BroadcastReceiver {

        /* renamed from: a */
        final /* synthetic */ Runnable f2761a;

        C0185o(Runnable runnable) {
            this.f2761a = runnable;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            this.f2761a.run();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$p, reason: case insensitive filesystem */
    class C0186p extends ConnectivityManager.NetworkCallback {

        /* renamed from: a */
        private Network f2763a;

        /* renamed from: b */
        final /* synthetic */ h0 f2764b;

        /* renamed from: c */
        final /* synthetic */ Runnable f2765c;

        C0186p(h0 h0Var, Runnable runnable) {
            this.f2764b = h0Var;
            this.f2765c = runnable;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            this.f2763a = network;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            if (network.equals(this.f2763a)) {
                this.f2764b.f2705O = networkCapabilities.hasTransport(0);
                this.f2765c.run();
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            if (network.equals(this.f2763a)) {
                this.f2763a = null;
                this.f2764b.f2705O = false;
                this.f2765c.run();
            }
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$q, reason: case insensitive filesystem */
    class C0187q extends BroadcastReceiver {
        C0187q() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ComponentName componentName;
            if ("android.intent.action.ACTION_SHUTDOWN".equals(intent.getAction())) {
                WorkspaceHooks.this.f2159N1 = true;
            }
            if ("android.intent.action.USER_PRESENT".equals(intent.getAction()) && WorkspaceHooks.this.m2791v0() && WorkspaceHooks.this.m2180I()) {
                WorkspaceHooks.this.m2332a(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").addFlags(268435456));
            }
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()) || "android.intent.action.USER_PRESENT".equals(intent.getAction()) || "android.intent.action.ACTION_SHUTDOWN".equals(intent.getAction())) {
                WorkspaceHooks.this.m2691n();
            }
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                WorkspaceHooks.this.f2197S4 = true;
            }
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()) || "android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction())) {
                final WorkspaceHooks c0143b = WorkspaceHooks.this;
                c0143b.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$q$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.m2694n(WorkspaceHooks.this);
                    }
                });
            } else if ("android.intent.action.SCREEN_ON".equals(intent.getAction()) || "android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                WorkspaceHooks.this.f2197S4 = false;
            }
            final WorkspaceHooks c0143b2 = WorkspaceHooks.this;
            c0143b2.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$q$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.m2216R(WorkspaceHooks.this);
                }
            });
            if ("android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction())) {
                WorkspaceHooks.m2230V(WorkspaceHooks.this);
                WorkspaceHooks.this.f2389x2.clear();
                WorkspaceHooks.this.f2395y2 = "";
                WorkspaceHooks.this.f2311k2 = WorkspaceHooks.m2488b(context);
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) WorkspaceHooks.this.f2109G0.get(Integer.valueOf(WorkspaceHooks.this.f2110G1));
                WorkspaceHooks c0143b3 = WorkspaceHooks.this;
                if (!c0143b3.f2124I1 && runningTaskInfo != null && (componentName = runningTaskInfo.topActivity) != null) {
                    c0143b3.m2308a(runningTaskInfo.taskId, componentName);
                }
            }
            if (WorkspaceHooks.this.f2226W5 && WorkspaceHooks.this.m2244Y0()) {
                WorkspaceHooks.this.m2688m1();
            }
            WorkspaceHooks.this.m2207P();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$r, reason: case insensitive filesystem */
    class C0188r extends ContentObserver {
        C0188r(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            WorkspaceHooks.this.m2241X1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$s, reason: case insensitive filesystem */
    class C0189s implements DisplayManager.DisplayListener {
        C0189s() {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
            if (i == 0) {
                final WorkspaceHooks c0143b = WorkspaceHooks.this;
                c0143b.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$s$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.m2216R(WorkspaceHooks.this);
                    }
                });
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            if (i == 0) {
                final WorkspaceHooks c0143b = WorkspaceHooks.this;
                c0143b.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$s$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.m2216R(WorkspaceHooks.this);
                    }
                });
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
            if (i == 0) {
                final WorkspaceHooks c0143b = WorkspaceHooks.this;
                c0143b.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$s$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.m2216R(WorkspaceHooks.this);
                    }
                });
            }
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$t, reason: case insensitive filesystem */
    class C0190t implements SensorEventListener {
        C0190t() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (WorkspaceHooks.this.f2308j5 != this) {
                return;
            }
            if (sensorEvent.values.length <= WorkspaceHooks.this.f2314k5 || !Float.isFinite(sensorEvent.values[WorkspaceHooks.this.f2314k5])) {
                WorkspaceHooks.this.m2383a((Exception) new IllegalStateException("Invalid native fold classification"));
                return;
            }
            float f = sensorEvent.values[WorkspaceHooks.this.f2314k5];
            boolean z = f > 0.0f && f <= 1.0f;
            if (WorkspaceHooks.this.f2320l5 && WorkspaceHooks.this.f2326m5 == z) {
                return;
            }
            WorkspaceHooks.this.f2320l5 = true;
            WorkspaceHooks.this.f2326m5 = z;
            if (!z) {
                WorkspaceHooks.this.f2332n5 = false;
            }
            WorkspaceHooks.this.m2772y();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$u, reason: case insensitive filesystem */
    class C0191u extends ViewOutlineProvider {

        /* renamed from: a */
        final /* synthetic */ float f2771a;

        C0191u(float f) {
            this.f2771a = f;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.f2771a);
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$v, reason: case insensitive filesystem */
    class C0192v extends BroadcastReceiver {
        C0192v() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            WorkspaceHooks.this.m2666k1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$w, reason: case insensitive filesystem */
    class C0193w extends ContentObserver {
        C0193w(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            WorkspaceHooks.this.m2225T1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$x, reason: case insensitive filesystem */
    class C0194x extends ContentObserver {
        C0194x(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            WorkspaceHooks.this.m2666k1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$y, reason: case insensitive filesystem */
    class C0195y extends CameraManager.TorchCallback {
        C0195y() {
        }

        @Override // android.hardware.camera2.CameraManager.TorchCallback
        public void onTorchModeChanged(String str, boolean z) {
            WorkspaceHooks.this.m2402a(str, z);
            Log.w("DuoRail", "Rail torch state " + str + "=" + z);
        }

        @Override // android.hardware.camera2.CameraManager.TorchCallback
        public void onTorchModeUnavailable(String str) {
            WorkspaceHooks.this.f2241Y6.remove(str);
            WorkspaceHooks.this.m2666k1();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$z, reason: case insensitive filesystem */
    class ServiceConnectionC0196z implements ServiceConnection {

        /* renamed from: a */
        final /* synthetic */ Context f2777a;

        /* renamed from: b */
        final /* synthetic */ Intent f2778b;

        ServiceConnectionC0196z(Context context, Intent intent) {
            this.f2777a = context;
            this.f2778b = intent;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                try {
                    ComponentName startService = this.f2777a.startService(this.f2778b);
                    if (startService == null) {
                        throw new IllegalStateException("RecorderService unavailable");
                    }
                    Log.w("DuoRail", "Rail screen record service " + startService);
                    this.f2777a.unbindService(this);
                } catch (Throwable th) {
                    try {
                        WorkspaceHooks.this.m2401a("录屏", th);
                        this.f2777a.unbindService(this);
                    } catch (Throwable th2) {
                        try {
                            this.f2777a.unbindService(this);
                        } catch (Throwable th3) {
                            WorkspaceHooks.this.m2401a("录屏", th3);
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th4) {
                WorkspaceHooks.this.m2401a("录屏", th4);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.w("DuoRail", "Rail screen record service disconnected " + componentName);
        }
    }

    public WorkspaceHooks() {
        Handler handler = new Handler(Looper.getMainLooper());
        this.f2071A1 = handler;
        this.f2103F1 = "";
        this.f2110G1 = -1;
        this.f2166O1 = Collections.newSetFromMap(new IdentityHashMap());
        this.f2173P1 = -1;
        this.f2180Q1 = Executors.newSingleThreadExecutor();
        this.f2215V1 = -1;
        this.f2229X1 = -1;
        this.f2243Z1 = "";
        this.f2250a2 = "";
        this.f2263c2 = true;
        this.f2269d2 = -1L;
        this.f2275e2 = -1L;
        this.f2317l2 = new ConcurrentHashMap();
        this.f2323m2 = new HashMap();
        this.f2335o2 = new Field[0];
        this.f2341p2 = new ConcurrentHashMap();
        this.f2347q2 = ConcurrentHashMap.newKeySet();
        this.f2353r2 = new ThreadLocal<>();
        this.f2371u2 = "";
        this.f2377v2 = -1;
        this.f2383w2 = -1;
        this.f2389x2 = new ConcurrentHashMap();
        this.f2395y2 = "";
        this.f2084C2 = -1;
        this.f2090D2 = "";
        this.f2097E2 = "";
        this.f2104F2 = new HashMap();
        this.f2111G2 = new HashMap();
        this.f2118H2 = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2751u0();
            }
        };
        this.f2125I2 = "";
        this.f2132J2 = "";
        this.f2139K2 = "";
        this.f2223W2 = 90;
        this.f2230X2 = 90;
        this.f2282f3 = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda55
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2226U();
            }
        };
        this.f2384w3 = -1;
        this.f2390x3 = new WeakHashMap();
        this.f2396y3 = Integer.MIN_VALUE;
        this.f2402z3 = new View.OnLayoutChangeListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda56
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                WorkspaceHooks.this.m2348a(view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        };
        this.f2073A3 = new ViewTreeObserver.OnPreDrawListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda57
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                boolean m2231V;
                m2231V = WorkspaceHooks.this.m2231V();
                return m2231V;
            }
        };
        this.f2085C3 = new ViewOnAttachStateChangeListenerC0174d();
        this.f2098E3 = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2642i2();
            }
        };
        List<String> list = Collections.EMPTY_LIST;
        this.f2105F3 = list;
        this.f2112G3 = true;
        this.f2119H3 = true;
        this.f2126I3 = new int[7];
        this.f2140K3 = list;
        this.f2147L3 = list;
        this.f2154M3 = list;
        this.f2161N3 = list;
        this.f2182Q3 = true;
        this.f2271d4 = -2;
        this.f2283f4 = ConcurrentHashMap.newKeySet();
        this.f2289g4 = new ArrayList();
        this.f2295h4 = new ArrayList();
        this.f2367t4 = -1;
        this.f2373u4 = new ThreadLocal<>();
        this.f2391x4 = new WorkbenchController(this);
        this.f2278e5 = -1;
        this.f2284f5 = -1;
        this.f2392x5 = new HashSet();
        this.f2075A5 = new R[3];
        this.f2081B5 = new ImageView[2];
        this.f2087C5 = new ImageView[3];
        this.f2093D5 = new Q[3];
        this.f2100E5 = new HashSet();
        this.f2107F5 = 1.0f;
        this.f2114G5 = 0.0f;
        this.f2128I5 = ConcurrentHashMap.newKeySet();
        this.f2135J5 = new ConcurrentHashMap();
        this.f2142K5 = -1L;
        this.f2149L5 = new ArrayDeque<>();
        this.f2156M5 = new ConcurrentHashMap();
        this.f2163N5 = new ConcurrentHashMap();
        this.f2170O5 = new ConcurrentHashMap();
        this.f2177P5 = new ConcurrentHashMap();
        this.f2198S5 = RailCodec.m940a();
        this.f2205T5 = new ConcurrentHashMap();
        this.f2219V5 = new ConcurrentHashMap();
        this.f2273d6 = -1;
        this.f2279e6 = -2;
        this.f2351q6 = new Object();
        this.f2393x6 = new Object();
        this.f2094D6 = -1;
        this.f2122H6 = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2222T();
            }
        };
        this.f2129I6 = new HashSet();
        this.f2199S6 = new HashSet();
        this.f2227W6 = new C0192v();
        this.f2234X6 = new C0194x(handler);
        this.f2241Y6 = new ConcurrentHashMap();
    }

    /* renamed from: A0 */
    private void m2147A0() {
        if (this.f2210U3 != null) {
            return;
        }
        d0 d0Var = new d0();
        this.f2210U3 = d0Var;
        d0Var.m2872e();
        m2697n(this.f2210U3 != null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A1 */
    public void m2148A1() {
        if (this.f2305j2) {
            this.f2305j2 = false;
            m2674l("MiDuo ready again");
        }
    }

    /* renamed from: B0 */
    private boolean m2151B0() {
        return !this.f2125I2.isEmpty() && this.f2125I2.equals(this.f2103F1) && this.f2084C2 == this.f2110G1 && !this.f2124I1 && m2727q0() && m2651j(this.f2110G1) && m2791v0() && m2788R0() && !this.f2152M1 && !this.f2145L1 && !this.f2101E6 && !this.f2159N1;
    }

    /* renamed from: B1 */
    private void m2152B1() {
        if (!m2151B0() || this.f2167O2 || this.f2153M2 == 0) {
            return;
        }
        m2755v();
        TextView textView = new TextView(this.f2301i4);
        textView.setText("点选 App 背景取色，长按取消");
        textView.setTextSize(16.0f);
        textView.setTextColor(-14460213);
        textView.setGravity(49);
        textView.setPadding(0, 80, 0, 0);
        textView.setBackgroundColor(16777216);
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda32
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m2530c;
                m2530c = WorkspaceHooks.this.m2530c(view, motionEvent);
                return m2530c;
            }
        });
        R r = new R("pick_point", textView, 0.0f, 0, f2056s0, 1712, 0, 0.0f, 40);
        this.f2244Z2 = r;
        m2363a(r, 0, 0, 2002);
    }

    /* renamed from: C0 */
    private boolean m2156C0() {
        if (!this.f2311k2 ? !this.f2188R2 : !this.f2195S2) {
            return false;
        }
        i0 i0Var = this.f2104F2.get(this.f2090D2);
        if (i0Var == null) {
            return true;
        }
        Iterator<String> it = i0Var.f2747f.iterator();
        while (it.hasNext()) {
            if (it.next().startsWith(this.f2311k2 ? "dark/" : "light/")) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: C1 */
    private boolean m2157C1() {
        int i;
        if (this.f2301i4 == null || this.f2124I1 || this.f2145L1 || this.f2159N1 || GenericProcessHooks.m893f() || !m2791v0()) {
            return false;
        }
        Display display = ((DisplayManager) this.f2301i4.getSystemService(DisplayManager.class)).getDisplay(0);
        Point point = new Point();
        if (display != null) {
            display.getRealSize(point);
        }
        WindowModeCache.b m2139b = this.f2130J0.m2139b(this.f2103F1);
        if (m2139b != null && m2139b.f1983a && m2139b.f1986d && (((i = point.x) == f2007O && point.y == f2008P) || (i == f2008P && point.y == f2007O))) {
            return false;
        }
        int i2 = point.x;
        return ((i2 == 1168 && point.y == 1712) || ((i2 == 1712 && point.y == 1168) || ((i2 == f2007O && point.y == f2008P) || (i2 == f2008P && point.y == f2007O)))) && m2788R0();
    }

    /* renamed from: D0 */
    private void m2161D0() {
        StringBuilder append;
        String str;
        if (this.f2237Y2 == null) {
            return;
        }
        boolean m2156C0 = m2156C0();
        TextView textView = this.f2251a3;
        if (this.f2181Q2) {
            append = new StringBuilder().append(m2156C0 ? "确认 App 默认色 " : "确认页面颜色 ");
            str = m2771y(this.f2216V2);
        } else {
            append = new StringBuilder().append("取色模式 · ").append(this.f2311k2 ? "深色" : "浅色");
            str = " · 拖动标题可移动";
        }
        textView.setText(append.append(str).toString());
        this.f2258b3.setText(!this.f2132J2.isEmpty() ? this.f2132J2 : this.f2167O2 ? "页面变化中，停稳后可以取色" : this.f2153M2 == 0 ? "等待页面信息，请重新进入 App" : m2156C0 ? "先确认 App 默认色（建议在 App 首页），正确后保存；也可点选取色位置" : "自动检查颜色变化；漏检或颜色不对时可点取色");
        boolean z = m2156C0 || this.f2181Q2 || !this.f2132J2.isEmpty();
        this.f2258b3.setVisibility(z ? 0 : 8);
        ((View) this.f2264c3.getParent()).setVisibility(this.f2181Q2 ? 0 : 8);
        int i = (z ? 104 : 0) + 162 + (this.f2181Q2 ? 78 : 0);
        R r = this.f2237Y2;
        if (r.f2509g != i) {
            r.f2509g = i;
            this.f2230X2 = Math.min(this.f2230X2, 1712 - i);
            R r2 = this.f2237Y2;
            r2.f2503a.relayout(r2.f2508f, i);
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                transaction.setCrop(this.f2237Y2.f2504b, new Rect(0, 0, this.f2237Y2.f2508f, i)).apply();
                transaction.close();
                if (this.f2202T2 && this.f2244Z2 == null) {
                    m2363a(this.f2237Y2, this.f2223W2, this.f2230X2, 2001);
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
        TextView[] textViewArr = {this.f2264c3, this.f2270d3, this.f2276e3};
        for (int i2 = 0; i2 < 3; i2++) {
            TextView textView2 = textViewArr[i2];
            textView2.setEnabled(this.f2181Q2 && !this.f2174P2);
            textView2.setAlpha(this.f2181Q2 ? 1.0f : 0.35f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D1 */
    public int m2162D1() {
        return (m2441b(Math.max(3, RailCodec.m953d(this.f2198S5)) - 1) + 136) - m2441b(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E1 */
    public int m2166E1() {
        return this.f2189R3 ? this.f2196S3 : (m2174G1() + m2162D1()) - 68;
    }

    /* renamed from: F0 */
    private void m2169F0() {
        R r = this.f2164N6;
        if (r != null && r.f2504b.isValid() && !this.f2330n3) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                R r2 = this.f2164N6;
                transaction.setPosition(r2.f2504b, m2502c(r2), m2536d(this.f2164N6)).apply();
                transaction.close();
                this.f2319l4 = false;
            } catch (Throwable th) {
                try {
                    transaction.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        m2214Q1();
        final float f = this.f2126I3[1] + f2012T;
        Iterator<K> it = this.f2156M5.values().iterator();
        while (it.hasNext()) {
            final h0 h0Var = it.next().f2449q;
            if (h0Var != null) {
                h0Var.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda101
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.this.m2367a(h0Var, f);
                    }
                });
            }
        }
    }

    /* renamed from: F1 */
    private float m2170F1() {
        O o = this.f2327m6;
        if (o == null || this.f2345p6 != o.f2474a || !m2727q0() || !this.f2261b6 || this.f2136J6 || this.f2273d6 == 2 || this.f2152M1 || this.f2159N1 || m2201N0() || !this.f2129I6.isEmpty() || !m2788R0()) {
            return 0.0f;
        }
        boolean m2590f = m2590f();
        boolean z = this.f2267c6;
        boolean z2 = z && (m2590f || this.f2121H5 || this.f2114G5 > 0.0f);
        if (!m2590f && !z2) {
            return 0.0f;
        }
        if (this.f2273d6 != 0 || z) {
            return this.f2285f6;
        }
        return 0.0f;
    }

    /* renamed from: G0 */
    private void m2173G0() {
        if (this.f2184Q5) {
            return;
        }
        for (int i = 0; i < 3; i++) {
            try {
                K m2629i = m2629i();
                synchronized (this.f2149L5) {
                    this.f2149L5.add(m2629i);
                }
            } catch (Throwable th) {
                Log.w("DuoRail", "App rail decor unavailable; global App panels kept", th);
                return;
            }
        }
        this.f2184Q5 = true;
        Handler handler = this.f2186R0;
        if (handler != null) {
            handler.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda48
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2235W();
                }
            });
        }
        Log.w("DuoRail", "App rail decor pool ready 3");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G1 */
    public int m2174G1() {
        String[] strArr = this.f2198S5;
        int m955e = RailCodec.m955e(strArr);
        int i = 0;
        int m2441b = m2441b(0);
        if (m955e >= 0 && strArr != null) {
            while (i < m955e && i < strArr.length) {
                String str = strArr[i];
                if (RailCodec.f923f.equals(str)) {
                    m2441b += m2537d() + 30;
                    i += 2;
                } else if (str == null || RailCodec.f922e.equals(str) || m2756v(str)) {
                    m2441b += f2032g0;
                }
                i++;
            }
        }
        return m2441b;
    }

    /* renamed from: H0 */
    private void m2177H0() {
        try {
            ContentResolver contentResolver = this.f2301i4.getContentResolver();
            int r2 = 0;
            if (Settings.Global.getInt(contentResolver, "airplane_mode_on", 0) == 0) {
                r2 = 1;
            }
            Settings.Global.putInt(contentResolver, "airplane_mode_on", r2);
            Intent intent = new Intent("android.intent.action.AIRPLANE_MODE");
            intent.putExtra("state", (boolean) r2);
            this.f2301i4.sendBroadcastAsUser(intent, Process.myUserHandle());
            Log.w("DuoRail", "Rail airplane " + ((boolean) r2));
        } catch (Throwable th) {
            m2401a("飞行模式", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H1 */
    public boolean m2178H1() {
        if (!m2186J1() || !this.f2320l5 || !this.f2326m5) {
            return false;
        }
        int i = this.f2278e5;
        return (i == 1 || (this.f2344p5 != null && !this.f2356r5 && this.f2338o5 && i == 4)) && m2256a(m2719p0()) == 0;
    }

    /* renamed from: I0 */
    private void m2181I0() {
        try {
            ContentResolver contentResolver = this.f2301i4.getContentResolver();
            int i = Settings.System.getInt(contentResolver, "screen_brightness_mode", 0) == 0 ? 1 : 0;
            Settings.System.putInt(contentResolver, "screen_brightness_mode", i);
            Log.w("DuoRail", "Rail auto brightness " + i);
        } catch (Throwable th) {
            m2401a("自动亮度", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I1 */
    public boolean m2182I1() {
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) this.f2301i4.getSystemService(ActivityManager.class)).getRunningTasks(1);
        return !runningTasks.isEmpty() && new ComponentName(IconConst.f1963a, "dev.duo.hookprobe.TentClockActivity").equals(runningTasks.get(0).topActivity);
    }

    /* renamed from: J0 */
    private void m2185J0() {
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
            m2401a("蓝牙", th);
        }
    }

    /* renamed from: J1 */
    private boolean m2186J1() {
        if (!this.f2190R4 || !this.f2204T4 || this.f2211U4 || this.f2278e5 < 0 || !this.f2246Z4 || this.f2253a5 || this.f2266c5 || this.f2159N1 || this.f2284f5 != 0 || !((KeyguardManager) this.f2301i4.getSystemService(KeyguardManager.class)).isKeyguardLocked()) {
            return false;
        }
        if (!this.f2272d5) {
            return true;
        }
        g0 g0Var = this.f2362s5;
        return g0Var != null && g0Var.f2657d && m2182I1();
    }

    /* renamed from: K0 */
    private void m2189K0() {
        Intent addFlags = new Intent().setComponent(new ComponentName("com.miui.calculator", "com.miui.calculator.cal.CalculatorActivity")).addFlags(268435456);
        try {
            ActivityOptions m2581f = m2581f("com.miui.calculator");
            if (m2581f == null) {
                Log.w("DuoRail", "Rail launch 计算器: freeform not allowed, fullscreen");
                m2396a("计算器", addFlags);
            } else {
                this.f2301i4.startActivity(addFlags, m2581f.toBundle());
                Log.w("DuoRail", "Rail launch 计算器 freeform");
            }
        } catch (Throwable th) {
            m2401a("计算器", th);
        }
    }

    /* renamed from: K1 */
    private void m2190K1() {
        if (this.f2179Q0 || this.f2301i4 == null) {
            return;
        }
        this.f2179Q0 = true;
        InfoWidgetRelay.m2907a(this.f2301i4);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme("package");
        try {
            this.f2301i4.registerReceiver(new C0181k(), intentFilter, null, this.f2071A1);
        } catch (Throwable th) {
            Log.w("DuoRail", "Package change receiver unavailable", th);
        }
        this.f2311k2 = m2488b(this.f2301i4);
        try {
            this.f2301i4.getContentResolver().registerContentObserver(Uri.parse("content://dev.duo.hookprobe.config/notificationIcons"), false, new C0193w(this.f2071A1));
        } catch (RuntimeException e) {
            Log.w("DuoRail", "Notification icon observer unavailable", e);
        }
        m2225T1();
        try {
            this.f2301i4.getContentResolver().registerContentObserver(Uri.parse("content://dev.duo.hookprobe.config/searchButton"), false, new C(this.f2071A1));
        } catch (RuntimeException e2) {
            Log.w("DuoRail", "Search button observer unavailable", e2);
        }
        m2237W1();
        try {
            this.f2301i4.getContentResolver().registerContentObserver(Uri.parse("content://dev.duo.hookprobe.config/pickButton"), false, new D(this.f2071A1));
        } catch (RuntimeException e3) {
            Log.w("DuoRail", "Pick button observer unavailable", e3);
        }
        m2233V1();
        try {
            this.f2301i4.getContentResolver().registerContentObserver(Uri.parse("content://dev.duo.hookprobe.config/railCustom"), false, new E(this.f2071A1));
            this.f2301i4.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("freeform_timestamps"), false, new F(this.f2071A1));
        } catch (RuntimeException e4) {
            Log.w("DuoRail", "Custom rail observer unavailable", e4);
        }
        m2206O1();
        try {
            this.f2301i4.getContentResolver().registerContentObserver(Uri.parse("content://dev.duo.hookprobe.config/foldSplit"), false, new G(this.f2071A1));
        } catch (RuntimeException e5) {
            Log.w("DuoFoldSplit", "Switch observer unavailable", e5);
        }
        m2217R1();
        try {
            this.f2301i4.getContentResolver().registerContentObserver(Uri.parse("content://dev.duo.hookprobe.config/workbench"), false, new H(this.f2071A1));
        } catch (RuntimeException e6) {
            Log.w("DuoWorkbench", "Switch observer unavailable", e6);
        }
        m2249Z1();
        this.f2301i4.getContentResolver().registerContentObserver(Uri.parse("content://dev.duo.hookprobe.config/pageTones"), true, new I(this.f2071A1));
        this.f2301i4.getContentResolver().registerContentObserver(ColorPickSession.f825a, false, new C0171a(this.f2071A1));
        m2578e1();
        try {
            this.f2301i4.getContentResolver().registerContentObserver(Uri.parse("content://dev.duo.hookprobe.config/duoRail"), true, new C0172b(this.f2071A1));
        } catch (Throwable th2) {
            Log.w("DuoRail", "Duo change observer unavailable", th2);
        }
        m2674l("start");
    }

    /* renamed from: L0 */
    private void m2193L0() {
        m2396a("投屏", new Intent().setComponent(new ComponentName("com.milink.service", "com.milink.router.RouterActivity")).addFlags(268435456));
    }

    /* renamed from: L1 */
    private void m2194L1() {
        if (this.f2074A4 != null) {
            return;
        }
        try {
            WorkspaceHooks.class.getClassLoader();
            ClassLoader classLoader = this.f2301i4.getClassLoader();
            Class<?> cls = Class.forName("com.android.systemui.shared.system.InputMonitorCompat", false, classLoader);
            Class<?> cls2 = Class.forName("com.android.systemui.shared.system.InputChannelCompat$InputEventListener", false, classLoader);
            this.f2403z4 = cls.getConstructor(String.class, Integer.TYPE).newInstance("DuoRailPageWatch", 0);
            this.f2074A4 = cls.getMethod("getInputReceiver", Looper.class, Choreographer.class, cls2).invoke(this.f2403z4, Looper.getMainLooper(), Choreographer.getInstance(), Proxy.newProxyInstance(classLoader, new Class[]{cls2}, new InvocationHandler() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda60
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method, Object[] objArr) {
                    Object m2281a;
                    m2281a = WorkspaceHooks.this.m2281a(obj, method, objArr);
                    return m2281a;
                }
            }));
            Log.w("DuoRail", "Page watch ready");
        } catch (Throwable th) {
            Object obj = this.f2403z4;
            if (obj != null) {
                try {
                    obj.getClass().getMethod("dispose", null).invoke(this.f2403z4, null);
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                this.f2403z4 = null;
            }
            this.f2080B4 = SystemClock.uptimeMillis() + 5000;
            Log.w("DuoRail", "Page watch unavailable", th);
        }
    }

    /* renamed from: M0 */
    private void m2197M0() {
        try {
            boolean z = (this.f2301i4.getResources().getConfiguration().uiMode & 48) == 32;
            ContentResolver contentResolver = this.f2301i4.getContentResolver();
            boolean z2 = !z;
            Settings.System.putString(contentResolver, "open_dark_mode_channel", "控制中心");
            Settings.System.putInt(contentResolver, "dark_mode_enable_by_setting", 1);
            UiModeManager.class.getMethod("setNightModeActivated", Boolean.TYPE).invoke((UiModeManager) this.f2301i4.getSystemService("uimode"), Boolean.valueOf(z2));
            Log.w("DuoRail", "Rail dark " + z2);
        } catch (Throwable th) {
            m2401a("深色模式", th);
        }
    }

    /* renamed from: M1 */
    private void m2198M1() {
        if (this.f2204T4) {
            return;
        }
        try {
            this.f2197S4 = !((PowerManager) this.f2301i4.getSystemService(PowerManager.class)).isInteractive();
            Class<?> cls = Class.forName("android.hardware.devicestate.DeviceStateManager");
            Class<?> cls2 = Class.forName("android.hardware.devicestate.DeviceStateManager$DeviceStateCallback");
            final Method method = Class.forName("android.hardware.devicestate.DeviceState").getMethod("getIdentifier", null);
            if (this.f2290g5 == null) {
                Object newProxyInstance = Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new InvocationHandler() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda129
                    @Override // java.lang.reflect.InvocationHandler
                    public final Object invoke(Object obj, Method method2, Object[] objArr) {
                        Object m2294a;
                        m2294a = WorkspaceHooks.this.m2294a(method, obj, method2, objArr);
                        return m2294a;
                    }
                });
                cls.getMethod("registerCallback", Executor.class, cls2).invoke(this.f2301i4.getSystemService(cls), new Executor() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda130
                    @Override // java.util.concurrent.Executor
                    public final void execute(Runnable runnable) {
                        WorkspaceHooks.this.m2550d(runnable);
                    }
                }, newProxyInstance);
                this.f2290g5 = newProxyInstance;
            }
            this.f2296h5 = (SensorManager) this.f2301i4.getSystemService(SensorManager.class);
            int integer = this.f2301i4.getResources().getInteger(this.f2301i4.getResources().getIdentifier("config_foldSensorDataIndex", "integer", "android"));
            this.f2314k5 = integer;
            if (integer < 0) {
                throw new IllegalStateException("Invalid fold classification index");
            }
            Iterator<Sensor> it = this.f2296h5.getSensorList(-1).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Sensor next = it.next();
                if ("xiaomi.sensor.fold_status".equals(next.getStringType()) && "fold_status FOLD_STATUS Wakeup".equals(next.getName()) && next.isWakeUpSensor()) {
                    this.f2302i5 = next;
                    break;
                }
            }
            if (this.f2302i5 == null) {
                throw new IllegalStateException("Native fold classification sensor missing");
            }
            if (this.f2239Y4 == null) {
                C0189s c0189s = new C0189s();
                ((DisplayManager) this.f2301i4.getSystemService(DisplayManager.class)).registerDisplayListener(c0189s, this.f2071A1);
                this.f2239Y4 = c0189s;
            }
            this.f2284f5 = ((TelephonyManager) this.f2301i4.getSystemService(TelephonyManager.class)).getCallState();
            this.f2204T4 = true;
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda131
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2772y();
                }
            });
        } catch (ReflectiveOperationException | RuntimeException e) {
            m2383a(e);
        }
    }

    /* renamed from: N0 */
    private boolean m2201N0() {
        Iterator<Object> it = this.f2166O1.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            Window window = next instanceof Dialog ? ((Dialog) next).getWindow() : null;
            View peekDecorView = window != null ? window.peekDecorView() : null;
            if (peekDecorView == null || peekDecorView.getParent() == null) {
                it.remove();
            } else if (peekDecorView.getVisibility() == 0) {
                i++;
            }
        }
        if (i != this.f2173P1) {
            this.f2173P1 = i;
            Log.w("DuoRail", "SystemUI dialogs on screen=" + i + " tracked=" + this.f2166O1.size());
        }
        return i > 0;
    }

    /* renamed from: N1 */
    private void m2202N1() {
        SensorEventListener sensorEventListener = this.f2308j5;
        if (sensorEventListener != null) {
            this.f2296h5.unregisterListener(sensorEventListener);
        }
        this.f2308j5 = null;
        this.f2320l5 = false;
        this.f2326m5 = false;
    }

    /* renamed from: O0 */
    private void m2205O0() {
        try {
            ContentResolver contentResolver = this.f2301i4.getContentResolver();
            int i = Settings.System.getInt(contentResolver, "screen_paper_mode_enabled", 0) == 0 ? 1 : 0;
            Settings.System.putInt(contentResolver, "screen_paper_mode_enabled", i);
            Log.w("DuoRail", "Rail eyecare " + i);
        } catch (Throwable th) {
            m2401a("护眼", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O1 */
    public void m2206O1() {
        this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda161
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2593f0();
            }
        });
    }

    /* renamed from: P0 */
    private void m2209P0() {
        try {
            int intValue = ((Integer) WifiManager.class.getMethod("getWifiApState", null).invoke((WifiManager) this.f2301i4.getSystemService(WifiManager.class), null)).intValue();
            if (intValue == 12 || intValue == 10) {
                Log.w("DuoRail", "Rail hotspot busy state=" + intValue);
                return;
            }
            TetheringManager tetheringManager = (TetheringManager) this.f2301i4.getSystemService(TetheringManager.class);
            TetheringManager.TetheringRequest build = new TetheringManager.TetheringRequest.Builder(0).build();
            if (intValue == f1994C0) {
                tetheringManager.stopTethering(build, this.f2301i4.getMainExecutor(), new A());
            } else {
                tetheringManager.startTethering(build, this.f2301i4.getMainExecutor(), new B());
            }
            Log.w("DuoRail", "Rail hotspot " + (intValue == f1994C0 ? "stop" : "start") + " from state=" + intValue);
        } catch (Throwable th) {
            m2401a("热点", th);
        }
    }

    /* renamed from: P1 */
    private void m2210P1() {
        if (this.f2221W0 == null) {
            return;
        }
        for (K k : this.f2156M5.values()) {
            h0 h0Var = k.f2449q;
            if (h0Var != null) {
                h0Var.m2894d(this.f2221W0);
                k.f2449q.invalidate();
            }
        }
    }

    /* renamed from: Q0 */
    private void m2213Q0() {
        m2396a("互传", new Intent().setComponent(new ComponentName("com.miui.huanji", "com.miui.huanji.MainActivity")).addFlags(268435456));
    }

    /* renamed from: Q1 */
    private void m2214Q1() {
        int i;
        if (this.f2221W0 == null) {
            return;
        }
        int round = Math.round(m2536d(this.f2164N6));
        if (this.f2121H5) {
            i = 405;
        } else {
            i = (this.f2252a4 == 0 ? f2018Z : 0) + 416;
        }
        this.f2221W0.m2892a(this.f2112G3 && !this.f2259b4, i - round);
        int max = this.f2221W0.m2885a() ? Math.max(h0.f2666D, this.f2221W0.f2731r0) : h0.f2666D;
        if (this.f2164N6.f2509g == max) {
            return;
        }
        try {
            SurfaceControlViewHost.class.getMethod("relayout", WindowManager.LayoutParams.class).invoke(this.f2164N6.f2503a, new WindowManager.LayoutParams(this.f2164N6.f2508f, max, 2, 40, -3));
            this.f2164N6.f2509g = max;
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                transaction.setCrop(this.f2164N6.f2504b, new Rect(0, 0, this.f2164N6.f2508f, max)).apply();
                transaction.close();
            } finally {
            }
        } catch (ReflectiveOperationException e) {
            throw new IllegalStateException("Status window resize unavailable", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: R */
    public static /* synthetic */ void m2216R(WorkspaceHooks c0143b) {
        c0143b.m2772y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R1 */
    public void m2217R1() {
        this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2609g0();
            }
        });
    }

    /* renamed from: S0 */
    private void m2220S0() {
        if (this.f2255a7) {
            return;
        }
        this.f2255a7 = true;
        this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda202
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2242Y();
            }
        });
    }

    /* renamed from: S1 */
    private void m2221S1() {
        float f = !this.f2330n3 ? 1.0f : this.f2324m3 ? this.f2336o3 : 0.0f;
        h0 h0Var = this.f2221W0;
        if (h0Var == null || h0Var.f2713W == f) {
            return;
        }
        h0Var.f2713W = f;
        h0Var.invalidate();
    }

    /* renamed from: T0 */
    private void m2224T0() {
        Object[] m2687m0 = m2687m0();
        if (m2687m0 == null) {
            Log.w("DuoRail", "Last app: none");
        } else {
            m2316a(((Integer) m2687m0[0]).intValue(), (String) m2687m0[1]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: T1 */
    public void m2225T1() {
        this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2626h0();
            }
        });
    }

    /* renamed from: U0 */
    private void m2228U0() {
        try {
            LocationManager locationManager = (LocationManager) this.f2301i4.getSystemService(LocationManager.class);
            boolean isLocationEnabled = locationManager.isLocationEnabled();
            LocationManager.class.getMethod("setLocationEnabledForUser", Boolean.TYPE, UserHandle.class).invoke(locationManager, Boolean.valueOf(!isLocationEnabled), Process.myUserHandle());
            Log.w("DuoRail", "Rail location " + (!isLocationEnabled));
        } catch (Throwable th) {
            m2401a("定位", th);
        }
    }

    /* renamed from: U1 */
    private void m2229U1() {
        boolean z = !this.f2330n3;
        h0 h0Var = this.f2221W0;
        if (h0Var == null || h0Var.f2711U == z) {
            return;
        }
        h0Var.f2711U = z;
        h0Var.invalidate();
    }

    /* renamed from: V */
    static /* synthetic */ int m2230V(WorkspaceHooks c0143b) {
        int i = c0143b.f2078B2 + 1;
        c0143b.f2078B2 = i;
        return i;
    }

    /* renamed from: V0 */
    private void m2232V0() {
        try {
            PowerManager powerManager = (PowerManager) this.f2301i4.getSystemService("power");
            boolean isPowerSaveMode = powerManager.isPowerSaveMode();
            PowerManager.class.getMethod("setPowerSaveModeEnabled", Boolean.TYPE).invoke(powerManager, Boolean.valueOf(!isPowerSaveMode));
            Log.w("DuoRail", "Rail power save " + (!isPowerSaveMode));
        } catch (Throwable th) {
            m2401a("省电模式", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V1 */
    public void m2233V1() {
        this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda118
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2639i0();
            }
        });
    }

    /* renamed from: W0 */
    private void m2236W0() {
        try {
            Log.w("DuoRail", "Rail ringer " + Class.forName("miui.util.AudioManagerHelper").getMethod("toggleSilent", Context.class, Integer.TYPE).invoke(null, this.f2301i4, 4));
        } catch (Throwable th) {
            Log.w("DuoRail", "Rail ringer helper failed", th);
            try {
                AudioManager audioManager = (AudioManager) this.f2301i4.getSystemService("audio");
                boolean z = audioManager.getRingerMode() == 0;
                audioManager.setRingerMode(z ? 2 : 0);
                Log.w("DuoRail", "Rail ringer fallback " + (!z));
            } catch (Throwable th2) {
                m2401a("铃音模式", th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W1 */
    public void m2237W1() {
        this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda104
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2652j0();
            }
        });
    }

    /* renamed from: X0 */
    private void m2240X0() {
        try {
            Class<?> cls = Class.forName("com.android.internal.view.RotationPolicy");
            boolean booleanValue = ((Boolean) cls.getMethod("isRotationLocked", Context.class).invoke(null, this.f2301i4)).booleanValue();
            cls.getMethod("setRotationLock", Context.class, Boolean.TYPE, String.class).invoke(null, this.f2301i4, Boolean.valueOf(!booleanValue), "RailCustom");
            Log.w("DuoRail", "Rail rotation lock " + (!booleanValue));
        } catch (Throwable th) {
            m2401a("旋转锁定", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: X1 */
    public void m2241X1() {
        final int i = this.f2232X4 + 1;
        this.f2232X4 = i;
        this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda178
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2741t(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Y0 */
    public boolean m2244Y0() {
        Context context = this.f2301i4;
        if (context == null) {
            return true;
        }
        if (this.f2307j4 == null) {
            this.f2307j4 = (PowerManager) context.getSystemService(PowerManager.class);
        }
        PowerManager powerManager = this.f2307j4;
        return powerManager == null || powerManager.isInteractive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Y1 */
    public void m2245Y1() {
        this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda66
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2665k0();
            }
        });
    }

    /* renamed from: Z0 */
    private void m2248Z0() {
        try {
            Context context = this.f2301i4;
            Intent intent = new Intent("miui.intent.screenrecorder.RECORDER_SERVICE").setPackage("com.miui.screenrecorder");
            if (context.bindService(intent, new ServiceConnectionC0196z(context, intent), 1)) {
            } else {
                throw new IllegalStateException("RecorderService bind failed");
            }
        } catch (Throwable th) {
            m2401a("录屏", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z1 */
    public void m2249Z1() {
        this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda134
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2676l0();
            }
        });
    }

    /* renamed from: a1 */
    private void m2438a1() {
        try {
            this.f2301i4.sendBroadcastAsUser(new Intent("android.intent.action.CAPTURE_SCREENSHOT"), Process.myUserHandle());
            Log.w("DuoRail", "Rail screenshot");
        } catch (Throwable th) {
            m2401a("截屏", th);
        }
    }

    /* renamed from: a2 */
    private void m2439a2() {
        ContentResolver contentResolver = this.f2301i4.getContentResolver();
        int i = Settings.System.getInt(contentResolver, "screen_off_timeout", 30000);
        int m2259a = m2259a((Integer) null);
        if (m2259a <= 0 || i != f1996D0) {
            m2259a(Integer.valueOf(i));
            if (!Settings.System.putInt(contentResolver, "screen_off_timeout", f1996D0)) {
                throw new IllegalStateException("screen-off timeout write rejected");
            }
            Log.w("DuoRail", "Rail keep screen 1800000 saved=" + i + (m2259a > 0 ? " (replaced backup " + m2259a + ")" : ""));
            return;
        }
        if (!Settings.System.putInt(contentResolver, "screen_off_timeout", m2259a)) {
            throw new IllegalStateException("screen-off timeout restore rejected");
        }
        m2259a((Integer) 0);
        Log.w("DuoRail", "Rail keep screen restored " + m2259a);
    }

    /* renamed from: b */
    private static int m2441b(int i) {
        return (i * f2032g0) + 401;
    }

    /* renamed from: b1 */
    private void m2500b1() {
        try {
            PowerManager.class.getMethod("goToSleep", Long.TYPE).invoke((PowerManager) this.f2301i4.getSystemService("power"), Long.valueOf(SystemClock.uptimeMillis()));
            Log.w("DuoRail", "Rail sleep");
        } catch (Throwable th) {
            m2401a("锁屏", th);
        }
    }

    /* renamed from: b2 */
    private void m2501b2() {
        if (m2737s() && m2788R0() && this.f2084C2 == this.f2110G1 && !this.f2090D2.isEmpty()) {
            if (!this.f2125I2.isEmpty()) {
                m2765x();
                return;
            }
            final String str = this.f2090D2;
            final Bundle bundle = new Bundle();
            bundle.putBoolean("start", true);
            this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda71
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2397a(str, bundle);
                }
            });
        }
    }

    /* renamed from: c */
    private static int m2503c(int i) {
        return (i * 120) + 60 + ((i - 1) * 30);
    }

    /* renamed from: c1 */
    private synchronized void m2534c1() {
        try {
            CameraManager cameraManager = (CameraManager) this.f2301i4.getSystemService("camera");
            m2710o1();
            if (f2070z0 == null) {
                Log.w("DuoRail", "Rail torch: no flash camera");
                return;
            }
            boolean equals = Boolean.TRUE.equals(this.f2241Y6.get(f2070z0));
            cameraManager.setTorchMode(f2070z0, !equals);
            Log.w("DuoRail", "Rail torch " + (!equals));
        } catch (Throwable th) {
            m2401a("手电筒", th);
        }
    }

    /* renamed from: c2 */
    private void m2535c2() {
        if (!this.f2090D2.isEmpty()) {
            m2542d(0L);
        }
        if (this.f2125I2.isEmpty()) {
            return;
        }
        this.f2160N2 = SystemClock.uptimeMillis();
        m2755v();
        m2655j2();
    }

    /* renamed from: d1 */
    private void m2559d1() {
        try {
            Intent intent = new Intent("com.xiaomi.aiasst.vision.control.translation.AiTranslateService");
            intent.setPackage("com.xiaomi.aiasst.vision");
            intent.putExtra("from", "systemui.plugin");
            Context.class.getMethod("startServiceAsUser", Intent.class, UserHandle.class).invoke(this.f2301i4, intent, Process.myUserHandle());
            Log.w("DuoRail", "Rail translate service");
        } catch (Throwable th) {
            Log.w("DuoRail", "Rail translate service failed", th);
            try {
                m2332a(new Intent().setComponent(new ComponentName("com.xiaomi.aiasst.vision", "com.xiaomi.aiasst.vision.intent.IntentAiTranslateServiceActivity")).addFlags(268435456));
                Log.w("DuoRail", "Rail translate activity fallback");
            } catch (Throwable th2) {
                m2401a("翻译", th2);
            }
        }
    }

    /* renamed from: d2 */
    private boolean m2560d2() {
        return this.f2292h1 != null && this.f2352r1 && this.f2358s1 && this.f2370u1 && !this.f2145L1 && !this.f2152M1 && !this.f2159N1 && m2791v0() && m2788R0() && m2256a(m2719p0()) == 1;
    }

    /* renamed from: e */
    private static int m2561e(int i) {
        return (i * f2038j0) + 42 + ((i - 1) * 42);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e1 */
    public void m2578e1() {
        this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2246Z();
            }
        });
    }

    /* renamed from: e2 */
    private boolean m2579e2() {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (uptimeMillis - this.f2355r4 >= 500) {
            this.f2361s4 = m2788R0();
            this.f2355r4 = uptimeMillis;
        }
        return this.f2361s4;
    }

    /* renamed from: f1 */
    private void m2595f1() {
        if (this.f2138K1 || this.f2124I1 || this.f2103F1.isEmpty() || this.f2301i4 == null || this.f2269d2 == this.f2117H1) {
            return;
        }
        if ((this.f2275e2 != this.f2117H1 || SystemClock.uptimeMillis() >= this.f2281f2) && m2244Y0()) {
            this.f2138K1 = true;
            final String str = this.f2103F1;
            final long j = this.f2117H1;
            this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda163
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2394a(str, j);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f2 */
    public void m2596f2() {
        if (!this.f2358s1) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f2301i4 != null && elapsedRealtime - this.f2364t1 >= 5000) {
                this.f2364t1 = elapsedRealtime;
                m2217R1();
            }
        }
        boolean m2168F = m2168F();
        boolean z = !m2168F && m2560d2();
        boolean z2 = m2168F || z;
        if (this.f2274e1 && (!z2 || this.f2388x1 != z)) {
            this.f2274e1 = false;
            this.f2256b1.unregisterListener(this.f2268d1);
            this.f2280f1 = -1;
            this.f2286g1 = Float.NaN;
            this.f2242Z0.m2902a();
        }
        if (z2) {
            if (this.f2274e1) {
                if (z || this.f2280f1 == this.f2110G1) {
                    return;
                }
                this.f2242Z0.m2902a();
                this.f2242Z0.m2904a(this.f2286g1, SystemClock.uptimeMillis());
                this.f2280f1 = this.f2110G1;
                return;
            }
            if (this.f2256b1 == null) {
                SensorManager sensorManager = (SensorManager) this.f2301i4.getSystemService(SensorManager.class);
                this.f2256b1 = sensorManager;
                this.f2262c1 = sensorManager.getDefaultSensor(36, false);
                this.f2268d1 = new C0177g();
                if (this.f2262c1 == null) {
                    Log.e("DuoFoldSplit", "Non-wakeup hinge sensor unavailable");
                }
            }
            if (this.f2262c1 == null) {
                return;
            }
            this.f2242Z0.m2902a();
            try {
                if (!this.f2256b1.registerListener(this.f2268d1, this.f2262c1, 1, this.f2071A1)) {
                    this.f2262c1 = null;
                    Log.e("DuoFoldSplit", "Hinge sensor registration rejected");
                } else {
                    this.f2280f1 = z ? -2 : this.f2110G1;
                    this.f2388x1 = z;
                    this.f2274e1 = true;
                }
            } catch (RuntimeException e) {
                this.f2262c1 = null;
                Log.e("DuoFoldSplit", "Hinge sensor registration failed", e);
            }
        }
    }

    /* renamed from: g1 */
    private void m2611g1() {
        if (m2727q0() && m2739s0() && this.f2083C1) {
            boolean m2590f = m2590f();
            if (this.f2128I5.isEmpty() && !this.f2138K1 && m2590f != this.f2121H5) {
                m2496b(m2590f, m2171G());
            }
            if (m2590f && !m2750u() && this.f2142K5 != this.f2117H1 && !this.f2138K1) {
                this.f2142K5 = this.f2117H1;
                m2262a(this.f2087C5, m2171G());
            }
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                if (m2425a(transaction)) {
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

    /* renamed from: g2 */
    private void m2612g2() {
        m2465b(m2719p0());
        if (m2727q0()) {
            boolean z = this.f2101E6;
            this.f2108F6 = z && this.f2121H5;
            this.f2115G6 = z && !this.f2124I1;
        }
    }

    /* renamed from: h1 */
    private void m2627h1() {
        if (m2743t() && m2727q0() && this.f2083C1 && this.f2124I1 && !this.f2267c6 && this.f2128I5.isEmpty() && m2788R0()) {
            synchronized (this.f2149L5) {
                if (this.f2149L5.size() >= 3) {
                    return;
                }
                try {
                    K m2629i = m2629i();
                    synchronized (this.f2149L5) {
                        this.f2149L5.add(m2629i);
                    }
                } catch (Throwable th) {
                    Log.w("DuoRail", "App rail decor refill failed", th);
                }
            }
        }
    }

    /* renamed from: h2 */
    /*
    */
    private void m2628h2() {
        boolean r2;
        float f;
        float f2;
        char c;
        float height;
        int i;
        float f3;
        boolean z;
        SurfaceControl.Transaction transaction;
        SurfaceControl.Transaction transaction2;
        Throwable th;
        SurfaceControl surfaceControl;
        try {
            FrameLayout frameLayout = this.f2294h3;
            if (frameLayout != null && frameLayout.isAttachedToWindow() && this.f2301i4 != null) {
                if (!m2791v0()) {
                    m2780z1();
                    return;
                }
                ImageView imageView = this.f2300i3;
                if (imageView == null || m2429a(this.f2294h3, imageView)) {
                    if (this.f2360s3 == null) {
                        this.f2360s3 = m2268a(this.f2300i3);
                    }
                    if (this.f2366t3 == null) {
                        this.f2366t3 = m2268a(this.f2306j3);
                    }
                    if (this.f2360s3 != null && this.f2366t3 != null) {
                        if (this.f2295h4.isEmpty()) {
                            m2669l();
                        }
                        ViewGroup.LayoutParams layoutParams = this.f2294h3.getLayoutParams();
                        int i2 = layoutParams.height;
                        if (i2 != -1) {
                            if (this.f2396y3 == Integer.MIN_VALUE) {
                                this.f2396y3 = i2;
                            }
                            layoutParams.height = -1;
                            this.f2294h3.setLayoutParams(layoutParams);
                            return;
                        }
                        ViewGroup viewGroup = (ViewGroup) this.f2300i3.getParent().getParent();
                        Point point = new Point();
                        ((DisplayManager) this.f2301i4.getSystemService(DisplayManager.class)).getDisplay(0).getRealSize(point);
                        if (viewGroup.getHeight() == point.y && this.f2294h3.getTop() == 0) {
                            float m2502c = m2502c(this.f2404z5);
                            float f4 = (r3.f2508f / 2.0f) + m2502c;
                            float m2536d = ((this.f2252a4 != 0 || this.f2259b4) ? m2536d(this.f2404z5) : r3.f2510h) + (this.f2404z5.f2509g / 2.0f);
                            int max = Math.max(132, Math.round(this.f2301i4.getResources().getDisplayMetrics().density * 48.0f));
                            float max2 = Math.max(max + 18.0f, Math.max(this.f2360s3.height(), this.f2366t3.height()) * 2.0f);
                            if (this.f2324m3) {
                                f = m2536d;
                            } else {
                                int[] iArr = new int[2];
                                viewGroup.getLocationOnScreen(iArr);
                                m2352a(this.f2300i3, this.f2360s3, f4, m2536d, iArr, max);
                                f = m2536d;
                                m2352a(this.f2306j3, this.f2366t3, f4, f - max2, iArr, max);
                            }
                            if (this.f2384w3 < 0) {
                                R r = this.f2164N6;
                                f2 = 2.0f;
                                Bitmap createBitmap = Bitmap.createBitmap(r.f2508f, r.f2509g, Bitmap.Config.ARGB_8888);
                                h0 h0Var = this.f2221W0;
                                int i3 = h0Var.f2720g0;
                                c = 2;
                                float f5 = h0Var.f2713W;
                                h0Var.f2720g0 = -1;
                                h0Var.f2713W = 1.0f;
                                h0Var.onDraw(new Canvas(createBitmap));
                                h0 h0Var2 = this.f2221W0;
                                h0Var2.f2720g0 = i3;
                                h0Var2.f2713W = f5;
                                Rect m2267a = m2267a(createBitmap, true);
                                createBitmap.recycle();
                                if (m2267a == null) {
                                    return;
                                } else {
                                    this.f2384w3 = m2267a.top;
                                }
                            } else {
                                f2 = 2.0f;
                                c = 2;
                            }
                            int[] iArr2 = this.f2126I3;
                            if (this.f2259b4) {
                                height = m2536d(this.f2164N6) - iArr2[3];
                                i = iArr2[6];
                            } else if (this.f2252a4 != 0) {
                                height = m2536d(this.f2164N6) - iArr2[c];
                                i = iArr2[5];
                            } else {
                                height = (point.y - ((this.f2360s3.height() / f2) + f)) - this.f2384w3;
                                i = iArr2[4];
                            }
                            this.f2342p3 = height + i;
                            r2 = ((this.f2312k3 || this.f2324m3) && !this.f2318l3 && (this.f2324m3 || this.f2294h3.isShown()) && !this.f2159N1) ? 1 : 0;
                            SurfaceControl surfaceControl2 = (this.f2083C1 && (surfaceControl = this.f2077B1) != null && surfaceControl.isValid()) ? this.f2077B1 : this.f2089D1;
                            if (r2 != 0) {
                                h0 h0Var3 = this.f2221W0;
                                if (h0Var3.f2720g0 != -1) {
                                    h0Var3.f2720g0 = -1;
                                    h0Var3.invalidate();
                                }
                                if (f2004L == null) {
                                    Method declaredMethod = View.class.getDeclaredMethod("getViewRootImpl", null);
                                    f2004L = declaredMethod;
                                    declaredMethod.setAccessible(true);
                                }
                                Object invoke = f2004L.invoke(this.f2294h3, null);
                                if (f2005M == null) {
                                    Method declaredMethod2 = invoke.getClass().getDeclaredMethod("getSurfaceControl", null);
                                    f2005M = declaredMethod2;
                                    declaredMethod2.setAccessible(true);
                                }
                                surfaceControl2 = (SurfaceControl) f2005M.invoke(invoke, null);
                                this.f2348q3 = surfaceControl2;
                            }
                            if (surfaceControl2 != null && surfaceControl2.isValid()) {
                                boolean z2 = r2 == 0 && m2750u();
                                m2214Q1();
                                this.f2221W0.m2891a(r2 == 0 && this.f2083C1 && !z2 && m2579e2());
                                float m2536d2 = this.f2342p3 + ((m2536d(this.f2164N6) - this.f2342p3) * this.f2336o3);
                                float m2502c2 = m2502c(this.f2164N6);
                                if (r2 == 0) {
                                    m2536d2 = m2536d(this.f2164N6);
                                }
                                if (r2 != 0) {
                                    f3 = 1.0f;
                                } else {
                                    if (!z2 && !this.f2369t6) {
                                        f3 = m2762w0();
                                    }
                                    f3 = 0.0f;
                                }
                                try {
                                    try {
                                        try {
                                            try {
                                                if (r2 == 0 && (!this.f2083C1 || z2 || this.f2369t6)) {
                                                    z = false;
                                                    if (r2 != 0 && !this.f2330n3 && this.f2319l4 && surfaceControl2 == this.f2331n4 && m2502c2 == this.f2337o4 && m2536d2 == this.f2343p4 && f3 == this.f2349q4 && z == this.f2325m4) {
                                                        m2229U1();
                                                        m2221S1();
                                                        return;
                                                    }
                                                    transaction = new SurfaceControl.Transaction();
                                                    transaction2 = transaction;
                                                    SurfaceControl.Transaction position = transaction.reparent(this.f2164N6.f2504b, surfaceControl2).setLayer(this.f2164N6.f2504b, 1000000).setPosition(this.f2164N6.f2504b, m2502c2, m2536d2);
                                                    SurfaceControl surfaceControl3 = this.f2164N6.f2504b;
                                                    R r3 = this.f2164N6;
                                                    position.setCrop(surfaceControl3, new Rect(0, 0, r3.f2508f, r3.f2509g)).setAlpha(this.f2164N6.f2504b, f3).setVisibility(this.f2164N6.f2504b, z).apply();
                                                    transaction2.close();
                                                    this.f2319l4 = r2 ^ 1;
                                                    this.f2331n4 = surfaceControl2;
                                                    this.f2337o4 = m2502c2;
                                                    this.f2343p4 = m2536d2;
                                                    this.f2349q4 = f3;
                                                    this.f2325m4 = z;
                                                    this.f2330n3 = r2;
                                                    m2229U1();
                                                    m2221S1();
                                                    if (r2 == 0) {
                                                        int i4 = this.f2372u3;
                                                        this.f2372u3 = i4 + 1;
                                                        if (i4 < 3) {
                                                            Log.i("DuoKeyguard", "Geometry screen=" + point.x + "x" + point.y + " camera=" + f4 + "," + f + " glyph=" + this.f2360s3 + " torchGap=" + max2 + " touch=" + max + " statusVisibleTop=" + (this.f2342p3 + this.f2384w3) + " bottomGap=" + ((point.y - f) - (this.f2360s3.height() / f2)));
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    return;
                                                }
                                                transaction2.close();
                                                this.f2319l4 = r2 ^ 1;
                                                this.f2331n4 = surfaceControl2;
                                                this.f2337o4 = m2502c2;
                                                this.f2343p4 = m2536d2;
                                                this.f2349q4 = f3;
                                                this.f2325m4 = z;
                                                this.f2330n3 = r2;
                                                m2229U1();
                                                m2221S1();
                                                if (r2 == 0) {
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                                r2 = "DuoKeyguard";
                                                int i5 = this.f2378v3;
                                                this.f2378v3 = i5 + 1;
                                                if (i5 >= 3) {
                                                }
                                            }
                                            R r32 = this.f2164N6;
                                            position.setCrop(surfaceControl3, new Rect(0, 0, r32.f2508f, r32.f2509g)).setAlpha(this.f2164N6.f2504b, f3).setVisibility(this.f2164N6.f2504b, z).apply();
                                        } catch (Throwable th3) {
                                            th = th3;
                                            r2 = "DuoKeyguard";
                                            th = th;
                                            try {
                                                transaction2.close();
                                                throw th;
                                            } catch (Throwable th4) {
                                                th.addSuppressed(th4);
                                                throw th;
                                            }
                                        }
                                        SurfaceControl.Transaction position2 = transaction.reparent(this.f2164N6.f2504b, surfaceControl2).setLayer(this.f2164N6.f2504b, 1000000).setPosition(this.f2164N6.f2504b, m2502c2, m2536d2);
                                        SurfaceControl surfaceControl32 = this.f2164N6.f2504b;
                                    } catch (Throwable th5) {
                                        th = th5;
                                        r2 = "DuoKeyguard";
                                        th = th;
                                        transaction2.close();
                                        throw th;
                                    }
                                    transaction2 = transaction;
                                } catch (Throwable th6) {
                                    th = th6;
                                    transaction2 = transaction;
                                }
                                z = true;
                                if (r2 != 0) {
                                }
                                transaction = new SurfaceControl.Transaction();
                            }
                        }
                    }
                }
            }
        } catch (Throwable th7) {
            th = th7;
            r2 = "DuoKeyguard";
        }
    }

    /* renamed from: i1 */
    private void m2641i1() {
        ArrayList arrayList = new ArrayList(this.f2156M5.values());
        synchronized (this.f2149L5) {
            arrayList.addAll(this.f2149L5);
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            K k = (K) obj;
            S s = k.f2439g;
            if (s != null) {
                s.setVisibility(this.f2245Z3 ? 0 : 8);
                k.f2439g.f2521b = !this.f2125I2.isEmpty();
                k.f2439g.invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i2 */
    public void m2642i2() {
        StatusBarNotification[] activeNotifications;
        Drawable drawable;
        if (this.f2221W0 == null) {
            return;
        }
        if (!this.f2112G3) {
            if (!this.f2105F3.isEmpty() || this.f2221W0.f2712V) {
                this.f2105F3 = Collections.EMPTY_LIST;
                h0 h0Var = this.f2221W0;
                h0Var.f2714a0 = new Drawable[0];
                h0Var.f2712V = false;
                m2688m1();
                return;
            }
            return;
        }
        NotificationListenerService notificationListenerService = this.f2091D3;
        if (notificationListenerService == null || (activeNotifications = notificationListenerService.getActiveNotifications(null)) == null) {
            return;
        }
        Arrays.sort(activeNotifications, new Comparator() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda124
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m2254a;
                m2254a = WorkspaceHooks.m2254a((StatusBarNotification) obj, (StatusBarNotification) obj2);
                return m2254a;
            }
        });
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (StatusBarNotification statusBarNotification : activeNotifications) {
            if (statusBarNotification.isClearable()) {
                linkedHashSet.add(statusBarNotification.getPackageName());
            }
        }
        List<String> subList = new ArrayList(linkedHashSet).subList(0, Math.min(3, linkedHashSet.size()));
        boolean z = linkedHashSet.size() > 3;
        if (subList.equals(this.f2105F3) && z == this.f2221W0.f2712V) {
            return;
        }
        List<String> list = this.f2105F3;
        PackageManager packageManager = this.f2301i4.getPackageManager();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (String str : subList) {
            int indexOf = list.indexOf(str);
            if (indexOf >= 0) {
                try {
                    drawable = this.f2221W0.f2714a0[indexOf];
                } catch (PackageManager.NameNotFoundException e) {
                    Log.w("DuoRail", "Notification icon missing pkg=" + str);
                }
            } else {
                drawable = packageManager.getApplicationIcon(str);
            }
            arrayList2.add(drawable);
            arrayList.add(str);
        }
        this.f2105F3 = arrayList;
        this.f2221W0.f2714a0 = (Drawable[]) arrayList2.toArray(new Drawable[0]);
        this.f2221W0.f2712V = z;
        m2688m1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j1, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void m2207P() {
        int i;
        String str;
        SurfaceControl m2613h;
        SurfaceControl surfaceControl;
        try {
            if (this.f2301i4 == null) {
                this.f2301i4 = (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
            }
            if (this.f2301i4 == null) {
                return;
            }
            this.f2391x4.m3103m();
            m2596f2();
            m2711o2();
            if (this.f2201T1 && this.f2194S1 != null && m2244Y0() && m2791v0()) {
                this.f2201T1 = false;
                Log.w("DuoRail", "Rail poll resumed");
                this.f2071A1.removeCallbacks(this.f2194S1);
                this.f2071A1.post(this.f2194S1);
            }
            m2190K1();
            if (this.f2074A4 == null && SystemClock.uptimeMillis() >= this.f2080B4) {
                m2194L1();
            }
            Display display = ((DisplayManager) this.f2301i4.getSystemService(DisplayManager.class)).getDisplay(0);
            Point point = new Point();
            if (display != null) {
                display.getRealSize(point);
            }
            m2465b(display);
            int i2 = point.x;
            if (i2 != this.f2377v2 || point.y != this.f2383w2) {
                this.f2377v2 = i2;
                this.f2383w2 = point.y;
                Log.w("DuoRail", "Screen ratio scene real=" + point.x + "x" + point.y);
                if (this.f2083C1 && m2727q0() && m2739s0()) {
                    SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                    try {
                        m2425a(transaction);
                        transaction.apply();
                        transaction.close();
                    } finally {
                    }
                }
            }
            int i3 = point.x;
            boolean z = true;
            m2707o((i3 == f2007O && point.y == f2008P) || (i3 == f2008P && point.y == f2007O));
            int i4 = point.x;
            boolean z2 = i4 == f2008P && point.y == f2007O;
            int i5 = this.f2367t4;
            boolean z3 = i5 >= 0 && i4 == f2007O && point.y == f2008P && !this.f2145L1;
            boolean z4 = ((i4 == f2007O && point.y == f2008P) || z2) && (this.f2124I1 || z3 || this.f2312k3);
            if (!z4 || z2) {
                i = 0;
            } else {
                if (!z3) {
                    i5 = 0;
                }
                i = 1175 - i5;
            }
            if (i != this.f2252a4 || z2 != this.f2259b4) {
                m2346a(this.f2077B1, false);
                this.f2252a4 = i;
                this.f2259b4 = z2;
            }
            m2229U1();
            m2221S1();
            boolean z5 = !this.f2124I1 && m2590f();
            if (z5 != this.f2365t2) {
                this.f2365t2 = z5;
                Log.w("DuoRail", "App sidebar=" + z5 + " task=" + this.f2110G1 + " pkg=" + this.f2103F1 + " strip=" + m2159D(this.f2110G1));
            }
            if (!this.f2124I1 && this.f2178P6 != 0.0f) {
                this.f2178P6 = 0.0f;
            }
            SurfaceControl surfaceControl2 = this.f2089D1;
            if (surfaceControl2 == null) {
                str = "displayArea=null";
            } else if (!surfaceControl2.isValid()) {
                str = "displayArea=invalid";
            } else if (!this.f2124I1 && !z3 && !z5) {
                str = "scene(no home/app sidebar)";
            } else if (!m2791v0()) {
                str = "master";
            } else if ((point.x != 1168 || point.y != 1712) && !z4) {
                str = "size";
            } else if (!m2788R0()) {
                str = "locked";
            } else if (this.f2152M1) {
                str = "sceneBlocked";
            } else if (m2201N0()) {
                str = "dialog";
            } else if (this.f2159N1) {
                str = "shuttingDown";
            } else {
                if ((!this.f2124I1 && !z3) || (this.f2171O6 < 0.999f && this.f2150L6 < 0.999f && this.f2178P6 < 0.999f)) {
                    str = !this.f2129I6.isEmpty() ? "fullscreenPages=" + this.f2129I6.size() : null;
                }
                str = "progress minus=" + this.f2171O6 + " recents=" + this.f2150L6 + " search=" + this.f2178P6;
            }
            boolean z6 = str == null;
            String str2 = z6 ? "" : str;
            if (!str2.equals(this.f2371u2)) {
                this.f2371u2 = str2;
                if (!z6) {
                    Log.w("DuoRail", "Rail off reason=" + str + " home=" + this.f2124I1 + " split=" + z3 + " pkg=" + this.f2103F1 + " task=" + this.f2110G1 + " size=" + point.x + "x" + point.y);
                }
            }
            m2678l2();
            if (z6 != this.f2083C1) {
                Log.w("DuoRail", "Visible=" + z6 + " foreground=" + this.f2103F1 + " dx=" + this.f2252a4);
            }
            SurfaceControl surfaceControl3 = this.f2089D1;
            if ((this.f2124I1 || z3) && (m2613h = m2613h(0)) != null) {
                surfaceControl3 = m2613h;
            }
            if (this.f2083C1 && (surfaceControl = this.f2077B1) != null && !surfaceControl.isValid()) {
                Log.w("DuoRail", "Rail parent surface is no longer valid, mounting again " + this.f2077B1);
                this.f2083C1 = false;
                this.f2077B1 = null;
            }
            m2346a(surfaceControl3, z6);
            if (this.f2221W0 != null) {
                m2214Q1();
                h0 h0Var = this.f2221W0;
                if (!z6 || this.f2330n3 || m2750u()) {
                    z = false;
                }
                h0Var.m2891a(z);
            }
            if (z6) {
                m2667k2();
                m2612g2();
                m2611g1();
            }
            m2628h2();
            m2627h1();
            m2655j2();
        } catch (Throwable th) {
            m2346a(this.f2077B1, false);
            Log.w("DuoRail", "Rail scene check failed", th);
        }
    }

    /* renamed from: j2 */
    private void m2655j2() {
        boolean m2151B0 = m2151B0();
        if (!this.f2125I2.isEmpty() && !this.f2288g3 && (this.f2124I1 || this.f2110G1 != this.f2084C2 || !this.f2125I2.equals(this.f2090D2))) {
            this.f2288g3 = true;
            m2765x();
        }
        if (m2151B0) {
            if (this.f2237Y2 == null) {
                m2659k();
            }
            R r = this.f2237Y2;
            if (r == null) {
                return;
            }
            if (this.f2244Z2 == null) {
                m2363a(r, this.f2223W2, this.f2230X2, 2001);
            }
            this.f2202T2 = true;
            m2161D0();
            if (this.f2071A1.hasCallbacks(this.f2282f3)) {
                return;
            }
            this.f2071A1.postDelayed(this.f2282f3, 600L);
            return;
        }
        this.f2071A1.removeCallbacks(this.f2282f3);
        if (this.f2202T2) {
            m2755v();
            m2164E(this.f2078B2);
        }
        this.f2202T2 = false;
        R r2 = this.f2237Y2;
        if (r2 != null) {
            boolean isEmpty = this.f2125I2.isEmpty();
            if (isEmpty) {
                this.f2237Y2 = null;
            }
            try {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    transaction.setVisibility(r2.f2504b, false).apply();
                    transaction.close();
                } finally {
                }
            } finally {
                if (isEmpty) {
                    m2568e(r2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k0 */
    public /* synthetic */ void m2665k0() {
        try {
            Bundle call = this.f2301i4.getContentResolver().call(Uri.parse("content://dev.duo.hookprobe.config"), "statusStyles", (String) null, (Bundle) null);
            if (call != null && call.containsKey("cellular") && call.containsKey("thin") && call.containsKey("percentTop")) {
                final boolean z = call.getBoolean("cellular");
                final boolean z2 = call.getBoolean("thin");
                final boolean z3 = call.getBoolean("percentTop");
                final int[] intArray = call.getIntArray("dy");
                this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda127
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.this.m2414a(intArray, z, z2, z3);
                    }
                });
                return;
            }
            Log.w("DuoRail", "Status style read failed: " + (call == null ? "no response" : call.getString("error", "no style values")));
        } catch (RuntimeException e) {
            Log.w("DuoRail", "Status style read failed", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k1 */
    public void m2666k1() {
        if (this.f2199S6.isEmpty() || this.f2220V6) {
            return;
        }
        this.f2220V6 = true;
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda123
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2436a0();
            }
        });
    }

    /* renamed from: k2 */
    private void m2667k2() {
        int i = m2622h() ? f2021b : 0;
        if (i == 0 && !this.f2124I1) {
            i = m2747u(this.f2110G1);
        }
        int i2 = (i == 0 || Color.luminance(i) <= 0.45f) ? -1 : -13618632;
        if (m2622h()) {
            i2 = -1;
        }
        boolean z = m2727q0() && this.f2267c6;
        h0 h0Var = this.f2221W0;
        if (h0Var != null && !z && h0Var.f2720g0 != i2) {
            h0Var.f2720g0 = i2;
            h0Var.invalidate();
        }
        if (this.f2221W0 == null || this.f2094D6 == i2) {
            return;
        }
        this.f2094D6 = i2;
        boolean z2 = i2 != -1;
        this.f2400z1.f2524a.setColor(z2 ? -14737372 : i2);
        N n = this.f2398y5;
        if (n != null) {
            n.m2811a(z2 ? 2 : 0);
        }
        if (this.f2404z5 != null) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                m2342a(transaction, "setShadowRadius", this.f2404z5.f2504b, Float.valueOf(z2 ? 0.0f : 8.0f));
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
        this.f2400z1.invalidate();
        for (Q q : this.f2093D5) {
            if (q != null) {
                q.f2496b = i2;
                q.invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l0 */
    public /* synthetic */ void m2676l0() {
        try {
            Bundle call = this.f2301i4.getContentResolver().call(Uri.parse("content://dev.duo.hookprobe.config"), "workbench", (String) null, (Bundle) null);
            String str = "on";
            if (call != null && call.containsKey("on")) {
                final boolean z = call.getBoolean("on");
                this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda180
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.this.m2637i(z);
                    }
                });
                return;
            }
            StringBuilder append = new StringBuilder().append("Switch read failed, keeping ");
            if (this.f2133J3 == null) {
                str = "not ready";
            } else if (!this.f2133J3.booleanValue()) {
                str = "off";
            }
            Log.w("DuoWorkbench", append.append(str).append(": ").append(call == null ? "no response" : call.getString("error", "no on value")).toString());
        } catch (RuntimeException e) {
            Log.w("DuoWorkbench", "Switch read failed", e);
        }
    }

    /* renamed from: l1 */
    private void m2677l1() {
        U u = this.f2400z1;
        if (u != null) {
            u.setVisibility(this.f2119H3 ? 0 : 8);
        }
        ArrayList arrayList = new ArrayList(this.f2156M5.values());
        synchronized (this.f2149L5) {
            arrayList.addAll(this.f2149L5);
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            U u2 = ((K) obj).f2450r;
            if (u2 != null) {
                u2.setVisibility(this.f2119H3 ? 0 : 8);
            }
        }
        if (!this.f2083C1 || this.f2404z5 == null) {
            return;
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            if (m2425a(transaction)) {
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
    /* renamed from: l2 */
    /*
    */
    public void m2678l2() {
        int i;
        int elapsedRealtime = (int) ((SystemClock.elapsedRealtime() / 1800000) % 4);
        if (m2727q0() && m2788R0()) {
            i = 1;
            if (elapsedRealtime != 1) {
                if (elapsedRealtime == 3) {
                    i = -1;
                }
            }
            if (i != f2060u0) {
                return;
            }
            f2060u0 = i;
            h0 h0Var = this.f2221W0;
            if (h0Var != null) {
                h0Var.invalidate();
            }
            U u = this.f2400z1;
            if (u != null) {
                u.invalidate();
            }
            for (Q q : this.f2093D5) {
                if (q != null) {
                    q.invalidate();
                }
            }
            for (ImageView imageView : this.f2087C5) {
                if (imageView != null) {
                    imageView.invalidate();
                }
            }
            ArrayList arrayList = new ArrayList(this.f2156M5.values());
            synchronized (this.f2149L5) {
                arrayList.addAll(this.f2149L5);
            }
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                K k = (K) obj;
                k.f2449q.invalidate();
                k.f2450r.invalidate();
                ArrayList<J> arrayList2 = k.f2437e;
                int size2 = arrayList2.size();
                int i3 = 0;
                while (i3 < size2) {
                    J j = arrayList2.get(i3);
                    i3++;
                    j.invalidate();
                }
                for (ImageView imageView2 : k.f2440h) {
                    imageView2.invalidate();
                }
            }
            return;
        }
        i = 0;
        if (i != f2060u0) {
        }
    }

    /* renamed from: m0 */
    private Object[] m2687m0() {
        Set<String> m2171G = m2171G();
        PackageManager packageManager = this.f2301i4.getPackageManager();
        try {
            for (ActivityManager.RecentTaskInfo recentTaskInfo : ((ActivityManager) this.f2301i4.getSystemService(ActivityManager.class)).getRecentTasks(24, 2)) {
                if (recentTaskInfo.taskId != this.f2110G1) {
                    Intent intent = recentTaskInfo.baseIntent;
                    ComponentName component = (intent == null || intent.getComponent() == null) ? recentTaskInfo.baseActivity : recentTaskInfo.baseIntent.getComponent();
                    if (component != null) {
                        String packageName = component.getPackageName();
                        if (!m2171G.contains(packageName) && !"com.miui.home".equals(packageName) && !"com.android.systemui".equals(packageName) && !packageName.startsWith("dev.duo.") && packageManager.getLaunchIntentForPackage(packageName) != null) {
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
    /* renamed from: m1 */
    public void m2688m1() {
        if (!m2244Y0()) {
            this.f2226W5 = true;
            return;
        }
        this.f2226W5 = false;
        this.f2221W0.invalidate();
        m2210P1();
    }

    /* renamed from: m2 */
    private void m2689m2() {
        float m2170F1 = m2170F1();
        this.f2114G5 = m2170F1;
        this.f2107F5 = 1.0f - m2170F1;
        if (this.f2221W0 == null || !m2727q0()) {
            return;
        }
        int intValue = m2622h() ? -1 : ((Integer) f2062v0.evaluate(this.f2114G5, -1, -13618632)).intValue();
        h0 h0Var = this.f2221W0;
        if (h0Var.f2720g0 != intValue) {
            h0Var.f2720g0 = intValue;
            h0Var.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public static /* synthetic */ void m2694n(WorkspaceHooks c0143b) {
        c0143b.m2714p();
    }

    /* renamed from: n0 */
    private void m2698n0() {
        m2332a(new Intent("android.intent.action.ASSIST").setPackage("com.miui.voiceassist").addFlags(268435456));
    }

    /* renamed from: n1 */
    private void m2699n1() {
        if (this.f2254a6 || this.f2301i4 == null) {
            return;
        }
        this.f2254a6 = true;
        this.f2333n6 = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda87
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread m2511c;
                m2511c = WorkspaceHooks.m2511c(runnable);
                return m2511c;
            }
        });
        Thread thread = new Thread(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda88
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2498b0();
            }
        }, "DuoNativeSidebar");
        thread.setDaemon(true);
        thread.start();
    }

    /* renamed from: n2 */
    private void m2700n2() {
        boolean isKeyguardLocked = ((KeyguardManager) this.f2301i4.getSystemService(KeyguardManager.class)).isKeyguardLocked();
        if (!isKeyguardLocked || this.f2278e5 == 3) {
            this.f2332n5 = false;
        }
        int i = this.f2278e5;
        boolean z = true;
        if (i != 0 && i != 1 && i != 2 && (i != 4 || this.f2344p5 == null)) {
            z = false;
        }
        if (this.f2211U4 && ((!isKeyguardLocked || !z) && SystemClock.uptimeMillis() >= this.f2218V4)) {
            this.f2211U4 = false;
            this.f2218V4 = 0L;
            Log.w("DuoStandby", "Standby failure latch cleared after leaving the candidate state");
            m2198M1();
        }
        if (!this.f2190R4 || !isKeyguardLocked || this.f2211U4 || this.f2159N1 || !z) {
            m2202N1();
            return;
        }
        try {
            if (this.f2308j5 == null) {
                C0190t c0190t = new C0190t();
                this.f2308j5 = c0190t;
                if (this.f2296h5.registerListener(c0190t, this.f2302i5, 3, this.f2071A1)) {
                } else {
                    throw new IllegalStateException("Native fold listener registration rejected");
                }
            }
        } catch (RuntimeException e) {
            m2383a((Exception) e);
        }
    }

    /* renamed from: o0 */
    private void m2709o0() {
        int i;
        if (m2727q0() && m2739s0() && this.f2265c4 != this.f2259b4) {
            R[] rArr = {this.f2374u5, this.f2380v5};
            for (int i2 = 0; i2 < 2; i2++) {
                R r = rArr[i2];
                FrameLayout frameLayout = (FrameLayout) r.f2506d;
                int i3 = 0;
                while (true) {
                    i = 170;
                    if (i3 >= frameLayout.getChildCount()) {
                        break;
                    }
                    View childAt = frameLayout.getChildAt(i3);
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                    int i4 = ((this.f2265c4 ? layoutParams.leftMargin : layoutParams.topMargin) - 21) / 170;
                    boolean z = this.f2259b4;
                    layoutParams.gravity = z ? f2063w : 1;
                    layoutParams.leftMargin = z ? (i4 * 170) + f2044m0 : 0;
                    layoutParams.topMargin = z ? 0 : (i4 * 170) + f2044m0;
                    childAt.setLayoutParams(layoutParams);
                    i3++;
                }
                int m2561e = m2561e(r == this.f2374u5 ? 4 : 2);
                boolean z2 = this.f2259b4;
                int i5 = z2 ? m2561e : 170;
                r.f2508f = i5;
                if (!z2) {
                    i = m2561e;
                }
                r.f2509g = i;
                r.f2503a.relayout(i5, i);
            }
            this.f2265c4 = this.f2259b4;
            Log.w("DuoRail", "Desktop Dock " + (this.f2259b4 ? "portrait" : "landscape") + " fixed=" + this.f2374u5.f2508f + "x" + this.f2374u5.f2509g + " recent=" + this.f2380v5.f2508f + "x" + this.f2380v5.f2509g);
        }
    }

    /* renamed from: o1 */
    private void m2710o1() {
        if (!this.f2248Z6 || f2070z0 == null) {
            try {
                CameraManager cameraManager = (CameraManager) this.f2301i4.getSystemService("camera");
                if (cameraManager == null) {
                    return;
                }
                if (f2070z0 == null) {
                    String[] cameraIdList = cameraManager.getCameraIdList();
                    int length = cameraIdList.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        }
                        String str = cameraIdList[i];
                        CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(str);
                        Boolean bool = (Boolean) cameraCharacteristics.get(CameraCharacteristics.FLASH_INFO_AVAILABLE);
                        Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING);
                        if (Boolean.TRUE.equals(bool) && num != null && num.intValue() == 1) {
                            f2070z0 = str;
                            break;
                        }
                        i++;
                    }
                }
                if (this.f2248Z6) {
                    return;
                }
                cameraManager.registerTorchCallback(new C0195y(), this.f2071A1);
                this.f2248Z6 = true;
            } catch (Throwable th) {
                Log.w("DuoRail", "Rail torch state callback unavailable", th);
            }
        }
    }

    /* renamed from: o2 */
    private void m2711o2() {
        if (this.f2399y6 && m2768x0()) {
            synchronized (this.f2393x6) {
                this.f2399y6 = false;
                this.f2393x6.notifyAll();
            }
        }
    }

    /* renamed from: p0 */
    private Display m2719p0() {
        Context context = this.f2301i4;
        if (context == null) {
            return null;
        }
        return ((DisplayManager) context.getSystemService(DisplayManager.class)).getDisplay(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p1 */
    public void m2720p1() {
        ArrayList arrayList = new ArrayList(this.f2156M5.values());
        synchronized (this.f2149L5) {
            arrayList.addAll(this.f2149L5);
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            m2567e((K) obj);
        }
    }

    /* renamed from: q0 */
    private boolean m2727q0() {
        return m2256a(m2719p0()) == 0;
    }

    /* renamed from: q1 */
    private int m2728q1() {
        ArrayList arrayList = new ArrayList(this.f2289g4);
        this.f2289g4.clear();
        for (R r : this.f2295h4) {
            if (m2493b(r)) {
                arrayList.add(r);
            }
        }
        this.f2295h4.removeAll(arrayList);
        this.f2392x5.removeAll(arrayList);
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            R r2 = (R) obj;
            if (r2.f2504b.isValid()) {
                try {
                    SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                    try {
                        transaction.setVisibility(r2.f2504b, false).reparent(r2.f2504b, null).apply();
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
                    this.f2289g4.add(r2);
                    Log.w("DuoLegacyDock", "Legacy detach pending " + r2.f2505c, th3);
                }
            }
            try {
                m2468b(r2.f2506d);
            } catch (Throwable th4) {
                Log.w("DuoLegacyDock", "Legacy view cleanup failed " + r2.f2505c, th4);
            }
            try {
                r2.f2503a.release();
                r2.f2504b.release();
                i2++;
            } catch (Throwable th5) {
                this.f2289g4.add(r2);
                Log.w("DuoLegacyDock", "Legacy host release pending " + r2.f2505c, th5);
            }
        }
        this.f2386w5 = null;
        this.f2380v5 = null;
        this.f2374u5 = null;
        this.f2368t5 = null;
        this.f2247Z5 = 0;
        this.f2240Y5 = 0;
        this.f2397y4 = null;
        Arrays.fill(this.f2075A5, (Object) null);
        Arrays.fill(this.f2093D5, (Object) null);
        Arrays.fill(this.f2081B5, (Object) null);
        Arrays.fill(this.f2087C5, (Object) null);
        this.f2100E5.clear();
        this.f2265c4 = false;
        return i2;
    }

    /* renamed from: r0 */
    private int m2733r0() {
        int size = this.f2289g4.size();
        Iterator<R> it = this.f2295h4.iterator();
        while (it.hasNext()) {
            if (m2493b(it.next())) {
                size++;
            }
        }
        return size;
    }

    /* renamed from: r1 */
    private void m2734r1() {
        R r = this.f2244Z2;
        if (r == null) {
            return;
        }
        this.f2244Z2 = null;
        try {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                transaction.setVisibility(r.f2504b, false).apply();
                transaction.close();
            } finally {
            }
        } finally {
            m2568e(r);
        }
    }

    /* renamed from: s0 */
    private boolean m2739s0() {
        if (this.f2368t5 == null || this.f2374u5 == null || this.f2380v5 == null || this.f2386w5 == null || !this.f2289g4.isEmpty()) {
            return false;
        }
        for (R r : this.f2075A5) {
            if (r == null) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: s1 */
    private void m2740s1() {
        if (this.f2344p5 == null || this.f2356r5) {
            return;
        }
        this.f2356r5 = true;
        this.f2338o5 = false;
        Process process = this.f2350q5;
        if (process != null) {
            process.destroy();
        }
    }

    /* renamed from: t0 */
    private FrameLayout m2745t0() {
        return m2759w(0);
    }

    /* renamed from: t1 */
    private void m2746t1() {
        (this.f2186R0 != null ? this.f2186R0 : this.f2071A1).post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2532c0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u0 */
    public void m2751u0() {
        i0 i0Var = this.f2104F2.get(this.f2090D2);
        if (i0Var == null || this.f2181Q2 || this.f2401z2 == null || this.f2084C2 != this.f2110G1 || this.f2124I1 || !m2727q0() || !m2651j(this.f2084C2) || !m2788R0()) {
            return;
        }
        final int i = this.f2084C2;
        final int i2 = this.f2078B2;
        final int m2252a = m2252a(i);
        final String str = this.f2097E2;
        final List<int[]> m2305a = m2305a(i0Var, str, m2252a);
        if (m2305a.size() < 2) {
            return;
        }
        m2456b(i, new b$$ExternalSyntheticLambda34(), new Consumer() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda158
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WorkspaceHooks.this.m2406a(m2305a, i2, str, i, m2252a, (Integer) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u1 */
    public void m2752u1() {
        if (!m2168F()) {
            m2596f2();
        } else {
            final int i = this.f2110G1;
            this.f2310k1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda117
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2715p(i);
                }
            });
        }
    }

    /* renamed from: v1 */
    private void m2757v1() {
        final O o = this.f2327m6;
        ExecutorService executorService = this.f2333n6;
        if (o == null || executorService == null) {
            return;
        }
        try {
            executorService.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.m2361a(WorkspaceHooks.O.this);
                }
            });
        } catch (RejectedExecutionException e) {
        }
    }

    /* renamed from: w0 */
    private float m2762w0() {
        if (!this.f2124I1) {
            return 1.0f;
        }
        return Math.max(0.0f, Math.min(1.0f, (1.0f - this.f2171O6) * (1.0f - this.f2150L6) * (1.0f - this.f2178P6)));
    }

    /* renamed from: w1 */
    private void m2763w1() {
        final Object obj = new Object();
        this.f2332n5 = true;
        this.f2344p5 = obj;
        this.f2356r5 = false;
        this.f2338o5 = false;
        new Thread(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda143
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2570e(obj);
            }
        }, "MiDuoTentLease").start();
    }

    /* renamed from: x0 */
    private boolean m2768x0() {
        return m2244Y0() && m2791v0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x1 */
    public void m2769x1() {
        if (!m2560d2()) {
            m2596f2();
            return;
        }
        final ActivityManager.RunningTaskInfo runningTaskInfo = this.f2394y1;
        if (runningTaskInfo == null) {
            return;
        }
        final Bundle bundle = new Bundle();
        bundle.putParcelable("multiple_split_dock_task", runningTaskInfo);
        this.f2310k1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda120
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2330a(runningTaskInfo, bundle);
            }
        });
    }

    /* renamed from: y0 */
    private void m2774y0() {
        try {
            Object systemService = this.f2301i4.getSystemService((Class<Object>) StatusBarManager.class);
            systemService.getClass().getMethod("expandSettingsPanel", null).invoke(systemService, null);
        } catch (ReflectiveOperationException e) {
            Log.w("DuoRail", "Control centre unavailable", e);
        }
    }

    /* renamed from: y1 */
    private boolean m2775y1() {
        if (this.f2113G4 != null) {
            return true;
        }
        Object obj = this.f2106F4;
        if (obj == null) {
            return false;
        }
        try {
            for (Field field : obj.getClass().getDeclaredFields()) {
                if (!field.getType().isPrimitive()) {
                    field.setAccessible(true);
                    Object obj2 = field.get(obj);
                    if (obj2 != null && obj2.getClass().getName().endsWith("LauncherProxyService$1")) {
                        this.f2113G4 = obj2;
                    }
                    if (field.getName().equals("mShadeViewControllerLazy")) {
                        this.f2120H4 = obj2;
                    }
                }
            }
            Object obj3 = this.f2113G4;
            if (obj3 != null && this.f2120H4 != null) {
                this.f2127I4 = obj3.getClass().getDeclaredMethod("moveShadeWindowIfNeeded", MotionEvent.class);
                this.f2134J4 = this.f2113G4.getClass().getDeclaredMethod("shouldIgnoreEvent", MotionEvent.class);
                this.f2127I4.setAccessible(true);
                this.f2134J4.setAccessible(true);
                this.f2141K4 = Class.forName("dagger.Lazy", false, obj.getClass().getClassLoader()).getMethod("get", null);
                return true;
            }
            this.f2113G4 = null;
            return false;
        } catch (ReflectiveOperationException e) {
            this.f2113G4 = null;
            Log.w("DuoRail", "Shade entry unavailable", e);
            return false;
        }
    }

    /* renamed from: z0 */
    private void m2779z0() {
        try {
            Object systemService = this.f2301i4.getSystemService((Class<Object>) StatusBarManager.class);
            systemService.getClass().getMethod("expandNotificationsPanel", null).invoke(systemService, null);
        } catch (ReflectiveOperationException e) {
            Log.w("DuoRail", "Message centre unavailable", e);
        }
    }

    /* renamed from: z1 */
    private void m2780z1() {
        R r;
        FrameLayout frameLayout;
        for (Map.Entry<View, Object[]> entry : this.f2390x3.entrySet()) {
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
        if (!this.f2390x3.isEmpty()) {
            Log.i("DuoKeyguard", "Master off: shortcuts restored=" + this.f2390x3.size());
        }
        this.f2390x3.clear();
        if (this.f2396y3 != Integer.MIN_VALUE && (frameLayout = this.f2294h3) != null) {
            ViewGroup.LayoutParams layoutParams2 = frameLayout.getLayoutParams();
            layoutParams2.height = this.f2396y3;
            this.f2294h3.setLayoutParams(layoutParams2);
            this.f2396y3 = Integer.MIN_VALUE;
        }
        if (this.f2330n3 && (r = this.f2164N6) != null && r.f2504b.isValid()) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                transaction.setVisibility(this.f2164N6.f2504b, false).apply();
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
        this.f2319l4 = false;
        this.f2330n3 = false;
    }

    /* renamed from: E0 */
    boolean m2787E0() {
        try {
            for (Field field : this.f2403z4.getClass().getDeclaredFields()) {
                if (field.getType().getName().equals("android.view.InputMonitor")) {
                    field.setAccessible(true);
                    Object obj = field.get(this.f2403z4);
                    obj.getClass().getMethod("pilferPointers", null).invoke(obj, null);
                    return true;
                }
            }
            Log.w("DuoRail", "Pilfer: no InputMonitor in " + this.f2403z4.getClass());
        } catch (Throwable th) {
            Log.w("DuoRail", "Pilfer failed", th);
        }
        return false;
    }

    /* renamed from: R0 */
    boolean m2788R0() {
        Context context = this.f2301i4;
        if (context == null) {
            return false;
        }
        if (this.f2307j4 == null) {
            this.f2307j4 = (PowerManager) context.getSystemService(PowerManager.class);
        }
        if (this.f2313k4 == null) {
            this.f2313k4 = (KeyguardManager) this.f2301i4.getSystemService(KeyguardManager.class);
        }
        PowerManager powerManager = this.f2307j4;
        return (powerManager == null || this.f2313k4 == null || !powerManager.isInteractive() || this.f2313k4.isKeyguardLocked()) ? false : true;
    }

    public void onModuleLoaded(XposedModuleInterface.ModuleLoadedParam moduleLoadedParam) {
        String processName = moduleLoadedParam.getProcessName();
        this.f2095E0 = processName;
        if ("com.miui.home".equals(processName)) {
            System.loadLibrary("duoworkspace");
        }
    }

    /*
    */
    public void onPackageLoaded(XposedModuleInterface.PackageLoadedParam packageLoadedParam) {
        String str;
        Method method;
        int i;
        String str2;
        String str3 = "onTaskInfoChanged";
        if ("com.miui.home".equals(this.f2095E0)) {
            Log.w("DuoMinusHome", "onPackageLoaded " + packageLoadedParam.getPackageName() + " first=" + packageLoadedParam.isFirstPackage());
        }
        if (packageLoadedParam.isFirstPackage() && "com.miui.home".equals(packageLoadedParam.getPackageName()) && "com.miui.home".equals(this.f2095E0)) {
            return;
        }
        if (packageLoadedParam.isFirstPackage() && "com.miui.personalassistant".equals(packageLoadedParam.getPackageName()) && "com.miui.personalassistant".equals(this.f2095E0)) {
            WidgetPickerHooks.m2927a(this, packageLoadedParam.getDefaultClassLoader());
            return;
        }
        if (packageLoadedParam.isFirstPackage() && "com.android.systemui".equals(this.f2095E0) && this.f2095E0.equals(packageLoadedParam.getPackageName())) {
            try {
                ClassLoader defaultClassLoader = packageLoadedParam.getDefaultClassLoader();
                try {
                    C0001b.m11a(this, defaultClassLoader, getRemotePreferences("duo_top"));
                } catch (Throwable th) {
                    Log.w("DuoRail", "iOS notification center not installed", th);
                }
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
                                    Object m2280a;
                                    m2280a = WorkspaceHooks.this.m2280a(cls5, cls6, chain);
                                    return m2280a;
                                }
                            });
                        } catch (Throwable th2) {
                            th = th2;
                            Log.w("DuoRail", "Letterbox creation colour unavailable; MIUI colour kept", th);
                            Class<?> cls9 = Class.forName("com.android.wm.shell.compatui.letterbox.state.LetterboxTaskListenerAdapter", false, defaultClassLoader);
                            final Method declaredMethod6 = cls9.getDeclaredMethod("onTaskInfoChanged", ActivityManager.RunningTaskInfo.class);
                            String[] strArr = {"state.LetterboxTaskListenerAdapter", "MiuiShellLetterboxManagerImpl"};
                            i = 0;
                            while (i < 2) {
                            }
                            hook(cls2.getDeclaredMethod("createLifecycleEvent", cls)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda195
                                public final Object intercept(XposedInterface.Chain chain) {
                                    Object m2292a;
                                    m2292a = WorkspaceHooks.this.m2292a(declaredMethod, chain);
                                    return m2292a;
                                }
                            });
                            hook(declaredMethod3).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda196
                                public final Object intercept(XposedInterface.Chain chain) {
                                    Object m2287a;
                                    m2287a = WorkspaceHooks.this.m2287a(declaredField, declaredField2, declaredMethod2, chain);
                                    return m2287a;
                                }
                            });
                            hook(declaredMethod4).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda197
                                public final Object intercept(XposedInterface.Chain chain) {
                                    Object m2448b;
                                    m2448b = WorkspaceHooks.this.m2448b(declaredField, declaredField2, declaredMethod2, chain);
                                    return m2448b;
                                }
                            });
                            hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda198
                                public final Object intercept(XposedInterface.Chain chain) {
                                    Object m2509c;
                                    m2509c = WorkspaceHooks.this.m2509c(declaredField, declaredField2, declaredMethod2, chain);
                                    return m2509c;
                                }
                            });
                            m2717p(defaultClassLoader);
                            m2620h(defaultClassLoader);
                            m2673l(defaultClassLoader);
                            m2662k(defaultClassLoader);
                            str = "DuoWallpaper";
                            Log.w(str, "Home-only Shell background hooks ready; fix defaults off");
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        method = declaredMethod5;
                    }
                    Class<?> cls92 = Class.forName("com.android.wm.shell.compatui.letterbox.state.LetterboxTaskListenerAdapter", false, defaultClassLoader);
                    final Method declaredMethod62 = cls92.getDeclaredMethod("onTaskInfoChanged", ActivityManager.RunningTaskInfo.class);
                    String[] strArr2 = {"state.LetterboxTaskListenerAdapter", "MiuiShellLetterboxManagerImpl"};
                    i = 0;
                    while (i < 2) {
                        Class<?> cls10 = Class.forName("com.android.wm.shell.compatui.letterbox." + strArr2[i], false, defaultClassLoader);
                        Method[] declaredMethods = cls10.getDeclaredMethods();
                        int length = declaredMethods.length;
                        String[] strArr3 = strArr2;
                        int i2 = 0;
                        while (i2 < length) {
                            int i3 = i2;
                            Method method2 = declaredMethods[i3];
                            int i4 = i;
                            if (!method2.getName().equals("onTaskAppeared") && !method2.getName().equals(str3)) {
                                str2 = str3;
                                i2 = i3 + 1;
                                i = i4;
                                str3 = str2;
                            }
                            if (method2.getParameterTypes().length > 0) {
                                str2 = str3;
                                if (method2.getParameterTypes()[0] == ActivityManager.RunningTaskInfo.class) {
                                    final boolean z = cls10 == cls92 && method2.getName().equals("onTaskAppeared");
                                    hook(method2).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda194
                                        public final Object intercept(XposedInterface.Chain chain) {
                                            Object m2301a;
                                            m2301a = WorkspaceHooks.this.m2301a(z, declaredMethod62, chain);
                                            return m2301a;
                                        }
                                    });
                                }
                            } else {
                                str2 = str3;
                            }
                            i2 = i3 + 1;
                            i = i4;
                            str3 = str2;
                        }
                        i++;
                        strArr2 = strArr3;
                    }
                    hook(cls2.getDeclaredMethod("createLifecycleEvent", cls)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda195
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object m2292a;
                            m2292a = WorkspaceHooks.this.m2292a(declaredMethod, chain);
                            return m2292a;
                        }
                    });
                    hook(declaredMethod3).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda196
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object m2287a;
                            m2287a = WorkspaceHooks.this.m2287a(declaredField, declaredField2, declaredMethod2, chain);
                            return m2287a;
                        }
                    });
                    hook(declaredMethod4).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda197
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object m2448b;
                            m2448b = WorkspaceHooks.this.m2448b(declaredField, declaredField2, declaredMethod2, chain);
                            return m2448b;
                        }
                    });
                    hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda198
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object m2509c;
                            m2509c = WorkspaceHooks.this.m2509c(declaredField, declaredField2, declaredMethod2, chain);
                            return m2509c;
                        }
                    });
                    m2717p(defaultClassLoader);
                    m2620h(defaultClassLoader);
                    m2673l(defaultClassLoader);
                    m2662k(defaultClassLoader);
                    str = "DuoWallpaper";
                } catch (ReflectiveOperationException e) {
                    e = e;
                    str = "DuoWallpaper";
                }
                try {
                    Log.w(str, "Home-only Shell background hooks ready; fix defaults off");
                } catch (ReflectiveOperationException e2) {
                    e = e2;
                    Log.w(str, "Unsupported Shell entry; no wallpaper fix installed", e);
                }
            } catch (ReflectiveOperationException e3) {
                e = e3;
                str = "DuoWallpaper";
                Log.w(str, "Unsupported Shell entry; no wallpaper fix installed", e);
            }
        }
    }

    /* renamed from: p2 */
    boolean m2790p2() {
        return Boolean.TRUE.equals(this.f2133J3);
    }

    /* renamed from: v0 */
    boolean m2791v0() {
        return !"0".equals(m2510c("debug.duo.master", ""));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A */
    public String m2144A(String str) {
        String m959g = RailCodec.m959g(str);
        PackageManager packageManager = this.f2301i4.getPackageManager();
        try {
            m959g = String.valueOf(packageManager.getApplicationLabel(packageManager.getApplicationInfo(m959g, 0)));
        } catch (PackageManager.NameNotFoundException e) {
        }
        return RailCodec.m960h(str) == 0 ? m959g : m959g + "（分身）";
    }

    /* renamed from: B */
    private boolean m2150B(String str) {
        String m959g = RailCodec.m959g(str);
        int m960h = RailCodec.m960h(str);
        return m960h == 0 ? this.f2301i4.getPackageManager().getLaunchIntentForPackage(m959g) != null : !m2452b(m959g, m960h).isEmpty();
    }

    /* renamed from: C */
    private List<String> m2154C(String str) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : RailCodec.m958f(str)) {
            if (m2150B(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    /* renamed from: D */
    private boolean m2159D(int i) {
        Integer num = this.f2341p2.get(Integer.valueOf(i));
        return (num == null || (num.intValue() & 1) == 0 || (num.intValue() >> 1) <= 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E, reason: merged with bridge method [inline-methods] */
    public void m2663k(String str) {
        boolean z;
        this.f2243Z1 = str;
        if (m2531c(str)) {
            GenericProcessHooks.m874a(false, true);
            GenericProcessHooks.m873a(false);
            return;
        }
        WindowModeCache.b m2139b = this.f2130J0.m2139b(str);
        if (m2139b == null) {
            return;
        }
        Display m2719p0 = m2719p0();
        if (m2139b.f1987e == 0 || m2719p0 == null) {
            z = false;
        } else {
            Point point = new Point();
            m2719p0.getRealSize(point);
            z = point.y > point.x;
        }
        boolean z2 = m2256a(m2719p0) == 1;
        boolean z3 = !(m2139b.f1983a || z2 || this.f2236Y1) || m2139b.m2143a(m2791v0(), z2, z);
        GenericProcessHooks.m873a(z3);
        GenericProcessHooks.m874a(z3 && !this.f2312k3 && str.equals(this.f2250a2) && this.f2257b2 && this.f2263c2, z3);
    }

    /* renamed from: F */
    private boolean m2168F() {
        int i;
        if (this.f2352r1 && this.f2358s1 && this.f2292h1 != null && this.f2193S0 != null && (i = this.f2110G1) >= 0 && !this.f2124I1 && !this.f2145L1 && !this.f2152M1 && !this.f2159N1) {
            try {
                ActivityManager.RunningTaskInfo runningTaskInfo = this.f2109G0.get(Integer.valueOf(i));
                if (runningTaskInfo != null && runningTaskInfo.topActivity != null && runningTaskInfo.getClass().getField("isFocused").getBoolean(runningTaskInfo) && runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) == 0) {
                    Object obj = runningTaskInfo.getClass().getField("configuration").get(runningTaskInfo);
                    Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
                    if (((Integer) obj2.getClass().getMethod("getActivityType", null).invoke(obj2, null)).intValue() == 1) {
                        if (((Integer) obj2.getClass().getMethod("getWindowingMode", null).invoke(obj2, null)).intValue() == 1 && m2791v0() && m2788R0() && m2256a(m2719p0()) == 1) {
                            return true;
                        }
                    }
                }
                return false;
            } catch (ReflectiveOperationException e) {
                Log.e("DuoFoldSplit", "Listening task check failed", e);
            }
        }
        return false;
    }

    /* renamed from: G */
    private Set<String> m2171G() {
        ComponentName componentName;
        HashSet hashSet = new HashSet();
        hashSet.add(this.f2103F1);
        ActivityManager.RunningTaskInfo runningTaskInfo = this.f2109G0.get(Integer.valueOf(this.f2110G1));
        if (runningTaskInfo != null && (componentName = runningTaskInfo.baseActivity) != null) {
            hashSet.add(componentName.getPackageName());
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H */
    /*
    */
    public List<Object[]> m2175H() {
        int i;
        int size;
        int i2;
        Iterator<String> it;
        PackageManager packageManager = this.f2301i4.getPackageManager();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            if (f2003K == null) {
                f2003K = Class.forName("android.util.MiuiMultiWindowUtils").getMethod("packageSupportFreeform", Context.class, String.class);
            }
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER"), 0)) {
                String str = resolveInfo.activityInfo.packageName;
                if (!linkedHashMap.containsKey(str) && !IconConst.f1963a.equals(str) && Boolean.TRUE.equals(f2003K.invoke(null, this.f2301i4, str))) {
                    ApplicationInfo applicationInfo = resolveInfo.activityInfo.applicationInfo;
                    linkedHashMap.put(str, new Object[]{str, String.valueOf(applicationInfo.loadLabel(packageManager)), applicationInfo.loadIcon(packageManager)});
                }
            }
        } catch (ReflectiveOperationException | RuntimeException e) {
            Log.w("DuoRail", "Sidebar app list failed", e);
        }
        try {
            Iterator<LauncherActivityInfo> it2 = m2452b((String) null, f2001I).iterator();
            i = 0;
            while (it2.hasNext()) {
                try {
                    String packageName = it2.next().getComponentName().getPackageName();
                    String m934a = RailCodec.m934a(packageName, f2001I);
                    if (f2003K != null && !linkedHashMap.containsKey(m934a) && !IconConst.f1963a.equals(packageName) && Boolean.TRUE.equals(f2003K.invoke(null, this.f2301i4, packageName))) {
                        linkedHashMap.put(m934a, new Object[]{m934a, m2144A(m934a), m2776z(m934a)});
                        i++;
                    }
                } catch (PackageManager.NameNotFoundException | ReflectiveOperationException | RuntimeException e2) {
                    e = e2;
                    Log.w("DuoRail", "Sidebar dual apps failed", e);
                    ArrayList arrayList = new ArrayList(linkedHashMap.values());
                    final Collator collator = Collator.getInstance(Locale.CHINA);
                    Collections.sort(arrayList, new Comparator() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda9
                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            int m2260a;
                            m2260a = WorkspaceHooks.m2260a(collator, (Object[]) obj, (Object[]) obj2);
                            return m2260a;
                        }
                    });
                    ArrayList arrayList2 = new ArrayList();
                    size = arrayList.size();
                    i2 = 0;
                    while (i2 < size) {
                    }
                    ArrayList arrayList3 = new ArrayList();
                    it = RailCodec.m937a(arrayList2, this.f2161N3).iterator();
                    while (it.hasNext()) {
                    }
                    Log.w("DuoRail", "Sidebar panel apps " + arrayList3.size() + " dual " + i + " ordered " + this.f2161N3.size());
                    return arrayList3;
                }
            }
        } catch (PackageManager.NameNotFoundException | ReflectiveOperationException | RuntimeException e3) {
            e = e3;
            i = 0;
        }
        ArrayList arrayList4 = new ArrayList(linkedHashMap.values());
        final Collator collator2 = Collator.getInstance(Locale.CHINA);
        Collections.sort(arrayList4, new Comparator() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda9
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m2260a;
                m2260a = WorkspaceHooks.m2260a(collator2, (Object[]) obj, (Object[]) obj2);
                return m2260a;
            }
        });
        ArrayList arrayList22 = new ArrayList();
        size = arrayList4.size();
        i2 = 0;
        while (i2 < size) {
            Object obj = arrayList4.get(i2);
            i2++;
            arrayList22.add((String) ((Object[]) obj)[0]);
        }
        ArrayList arrayList32 = new ArrayList();
        it = RailCodec.m937a(arrayList22, this.f2161N3).iterator();
        while (it.hasNext()) {
            arrayList32.add((Object[]) linkedHashMap.get(it.next()));
        }
        Log.w("DuoRail", "Sidebar panel apps " + arrayList32.size() + " dual " + i + " ordered " + this.f2161N3.size());
        return arrayList32;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I */
    public boolean m2180I() {
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
        } catch (ReflectiveOperationException e) {
            Log.w("DuoRail", "Focused task check failed", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J */
    public /* synthetic */ void m2183J() {
        this.f2174P2 = false;
        m2161D0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L */
    public /* synthetic */ void m2191L() {
        m2663k(this.f2103F1);
        m2535c2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M */
    public /* synthetic */ void m2195M() {
        m2663k(this.f2103F1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O */
    public /* synthetic */ void m2203O() {
        boolean z;
        Throwable th;
        if (!m2244Y0()) {
            this.f2201T1 = true;
            Log.w("DuoRail", "Rail poll paused: screen not interactive");
            return;
        }
        if (!m2791v0()) {
            m2207P();
            this.f2201T1 = true;
            Log.w("DuoRail", "Rail poll paused: master switch off");
            return;
        }
        int i = 0;
        try {
            ArrayList arrayList = new ArrayList(this.f2123I0);
            int size = arrayList.size();
            z = false;
            while (i < size) {
                try {
                    Object obj = arrayList.get(i);
                    i++;
                    z |= m2422a(this.f2109G0.get((Integer) obj), (SurfaceControl) null);
                } catch (Throwable th2) {
                    th = th2;
                    Log.w("DuoRail", "Rail poll failed", th);
                    if (this.f2301i4 != null) {
                    }
                    m2207P();
                    this.f2071A1.postDelayed(this.f2194S1, 1000L);
                }
            }
        } catch (Throwable th3) {
            z = false;
            th = th3;
        }
        if (this.f2301i4 != null || !z) {
            m2207P();
        }
        this.f2071A1.postDelayed(this.f2194S1, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Q */
    public /* synthetic */ void m2212Q() {
        this.f2159N1 = true;
        m2207P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R */
    public /* synthetic */ void m2215R() {
        m2403a("gesture 15", true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S */
    public /* synthetic */ void m2218S() {
        if (this.f2367t4 < 0) {
            return;
        }
        this.f2367t4 = -1;
        Log.i("DuoSplitHome", "Right inset=-1 (pre state=2)");
        m2207P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: T */
    public /* synthetic */ void m2222T() {
        m2675l(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: U */
    public /* synthetic */ void m2226U() {
        if (m2151B0()) {
            if (!this.f2181Q2 && this.f2244Z2 == null) {
                m2411a(false, (Rect) null);
            }
            this.f2071A1.postDelayed(this.f2282f3, 2000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V */
    public /* synthetic */ boolean m2231V() {
        m2628h2();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W */
    public /* synthetic */ void m2235W() {
        Iterator<Integer> it = this.f2163N5.keySet().iterator();
        while (it.hasNext()) {
            m2309a(it.next().intValue(), (SurfaceControl.Transaction) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: X */
    public /* synthetic */ void m2239X() {
        this.f2255a7 = false;
        m2666k1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Y */
    public /* synthetic */ void m2242Y() {
        try {
            m2439a2();
        } catch (RuntimeException e) {
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda145
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2389a(e);
                }
            });
        } finally {
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda144
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2239X();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z */
    public /* synthetic */ void m2246Z() {
        final Bundle m2270a = m2270a("pickState", (String) null, (Bundle) null);
        if (m2270a == null) {
            return;
        }
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda140
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2464b(m2270a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a0 */
    public /* synthetic */ void m2436a0() {
        this.f2220V6 = false;
        if (this.f2199S6.isEmpty()) {
            return;
        }
        final HashSet hashSet = new HashSet();
        Iterator<J> it = this.f2199S6.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().f2418a);
        }
        this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2407a(hashSet);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b0 */
    /*
    */
    public /* synthetic */ void m2498b0() {
        int i;
        Throwable th;
        Throwable th2;
        int i2 = 0;
        while (true) {
            try {
                Socket socket = new Socket();
                try {
                    int i3 = this.f2301i4.getPackageManager().getApplicationInfo("com.miui.home", 0).uid;
                    socket.connect(new InetSocketAddress(InetAddress.getByAddress(new byte[]{Byte.MAX_VALUE, 0, 0, 1}), 37657), 1500);
                    socket.setTcpNoDelay(true);
                    socket.setSoTimeout(f2052q0);
                    byte[] bArr = new byte[64];
                    new DataInputStream(socket.getInputStream()).readFully(bArr);
                    ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                    if (order.getInt() != 1146442568 || order.getInt() != i3 || order.getInt() <= 0 || order.getInt() != 2) {
                        break;
                    }
                    byte[] copyOfRange = Arrays.copyOfRange(bArr, f2063w, 48);
                    byte[] decode = Base64.decode("ojx0VY/M20lXKxlzcaWAno3GjRKVmKzbjTl31AnmRuQ=", 2);
                    if (!MessageDigest.isEqual(copyOfRange, decode)) {
                        throw new SecurityException("Native frame key");
                    }
                    socket.getOutputStream().write(decode);
                    socket.setSoTimeout(0);
                    long j = this.f2339o6 + 1;
                    this.f2339o6 = j;
                    O o = new O(j, socket);
                    this.f2327m6 = o;
                    try {
                        Log.i("DuoSidebar", "Native loopback frame connection Home UID=" + i3);
                        DataInputStream dataInputStream = new DataInputStream(socket.getInputStream());
                        byte[] bArr2 = new byte[112];
                        while (true) {
                            dataInputStream.readFully(bArr2);
                            P p = new P(bArr2, o.f2474a);
                            synchronized (this.f2351q6) {
                                this.f2357r6 = p;
                                if (!this.f2363s6) {
                                    this.f2363s6 = true;
                                    this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda148
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            WorkspaceHooks.this.m2730r();
                                        }
                                    });
                                }
                            }
                        }
                    } catch (Throwable th3) {
                        th2 = th3;
                        i = 0;
                        try {
                            try {
                                socket.close();
                            } catch (Throwable th4) {
                                th = th4;
                                this.f2327m6 = null;
                                final long j2 = this.f2339o6;
                                int i4 = i + 1;
                                if (i < 3) {
                                    Log.w("DuoSidebar", "Native frame connection unavailable", th);
                                }
                                this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda149
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        WorkspaceHooks.this.m2459b(j2);
                                    }
                                });
                                synchronized (this.f2393x6) {
                                    try {
                                        try {
                                            if (m2768x0()) {
                                                this.f2393x6.wait(Math.min(60000L, 750 << Math.min(i4, 7)));
                                            } else {
                                                this.f2399y6 = true;
                                                Log.i("DuoSidebar", "Native frame reconnect waits for screen on / master on");
                                                while (this.f2399y6) {
                                                    this.f2393x6.wait();
                                                }
                                            }
                                        } finally {
                                        }
                                    } catch (InterruptedException e) {
                                        return;
                                    }
                                }
                                i2 = i4;
                            }
                        } catch (Throwable th5) {
                            th2.addSuppressed(th5);
                        }
                        throw th2;
                    }
                } catch (Throwable th6) {
                    i = i2;
                    th2 = th6;
                }
            } catch (Throwable th7) {
                i = i2;
                th = th7;
            }
            i2 = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c0 */
    public /* synthetic */ void m2532c0() {
        HashSet hashSet = new HashSet();
        Map[] mapArr = {this.f2207U0, this.f2329n2};
        for (int i = 0; i < 2; i++) {
            Map map = mapArr[i];
            if (map != null) {
                ArrayList arrayList = new ArrayList(map.keySet());
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    if (obj instanceof Integer) {
                        hashSet.add((Integer) obj);
                    }
                }
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            m2777z(((Integer) it.next()).intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d0 */
    public /* synthetic */ void m2558d0() {
        Toast.makeText(this.f2301i4, "面板顺序保存失败", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e0 */
    public /* synthetic */ void m2577e0() {
        Toast.makeText(this.f2301i4, "小窗侧边栏保存失败", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f0 */
    /*
    */
    public /* synthetic */ void m2593f0() {
        final boolean z;
        try {
            String str = null;
            Bundle call = this.f2301i4.getContentResolver().call(Uri.parse("content://dev.duo.hookprobe.config"), "railCustom", (String) null, (Bundle) null);
            String string = call == null ? null : call.getString("layout");
            String string2 = call == null ? null : call.getString("sidebarApps");
            if (call != null) {
                str = call.getString("panelOrder");
            }
            final boolean z2 = (call == null || !call.containsKey("sidebarFreeform")) ? true : call.getBoolean("sidebarFreeform");
            if (call != null) {
                if (call.getBoolean("sidebarKeyEnd", false)) {
                    z = true;
                    final List unmodifiableList = Collections.unmodifiableList(RailCodec.m956e(str));
                    String str2 = string2;
                    final int i = this.f2175P3;
                    final String[] m954d = RailCodec.m954d(string);
                    final boolean m950c = RailCodec.m950c(m954d);
                    final List unmodifiableList2 = Collections.unmodifiableList(RailCodec.m958f(str2));
                    final List<String> m2154C = !m950c ? m2154C(str2) : Collections.EMPTY_LIST;
                    final List<String> m2540d = !m950c ? m2540d(m2154C) : Collections.EMPTY_LIST;
                    this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda98
                        @Override // java.lang.Runnable
                        public final void run() {
                            WorkspaceHooks.this.m2320a(i, unmodifiableList, unmodifiableList2, m954d, m2540d, m2154C, z2, z, m950c);
                        }
                    });
                }
            }
            z = false;
            final List unmodifiableList3 = Collections.unmodifiableList(RailCodec.m956e(str));
            String str22 = string2;
            final int i2 = this.f2175P3;
            final String[] m954d2 = RailCodec.m954d(string);
            final boolean m950c2 = RailCodec.m950c(m954d2);
            final List unmodifiableList22 = Collections.unmodifiableList(RailCodec.m958f(str22));
            final List m2154C2 = !m950c2 ? m2154C(str22) : Collections.EMPTY_LIST;
            final List m2540d2 = !m950c2 ? m2540d(m2154C2) : Collections.EMPTY_LIST;
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda98
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2320a(i2, unmodifiableList3, unmodifiableList22, m954d2, m2540d2, m2154C2, z2, z, m950c2);
                }
            });
        } catch (RuntimeException e) {
            Log.w("DuoRail", "Custom rail read failed", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g0 */
    public /* synthetic */ void m2609g0() {
        try {
            Bundle call = this.f2301i4.getContentResolver().call(Uri.parse("content://dev.duo.hookprobe.config"), "foldSplit", (String) null, (Bundle) null);
            if (call != null && call.containsKey("on")) {
                final boolean equals = "247".equals(m2510c("debug.duo.foldanim", "0"));
                final boolean z = call.getBoolean("on") && !equals;
                final int i = call.getInt("nudge", 1);
                this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda176
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.this.m2322a(i, z, equals);
                    }
                });
                return;
            }
            Log.w("DuoFoldSplit", "Switch read failed: " + (call == null ? "no response" : call.getString("error", "no on value")));
        } catch (RuntimeException e) {
            Log.w("DuoFoldSplit", "Switch read failed", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h0 */
    public /* synthetic */ void m2626h0() {
        try {
            Bundle call = this.f2301i4.getContentResolver().call(Uri.parse("content://dev.duo.hookprobe.config"), "notificationIcons", (String) null, (Bundle) null);
            if (call != null && call.containsKey("on")) {
                final boolean z = call.getBoolean("on");
                this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda205
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.this.m2589f(z);
                    }
                });
                return;
            }
            Log.w("DuoRail", "Notification icon config read failed: " + (call == null ? "no response" : call.getString("error", "no on value")));
        } catch (RuntimeException e) {
            Log.w("DuoRail", "Notification icon config read failed", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i0 */
    public /* synthetic */ void m2639i0() {
        Bundle m2270a = m2270a("pickButton", (String) null, (Bundle) null);
        if (m2270a == null || !m2270a.containsKey("on")) {
            return;
        }
        final boolean z = m2270a.getBoolean("on");
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda184
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2607g(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j0 */
    public /* synthetic */ void m2652j0() {
        try {
            Bundle call = this.f2301i4.getContentResolver().call(Uri.parse("content://dev.duo.hookprobe.config"), "searchButton", (String) null, (Bundle) null);
            if (call != null && call.containsKey("on")) {
                final boolean z = call.getBoolean("on");
                this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda185
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.this.m2621h(z);
                    }
                });
                return;
            }
            Log.w("DuoRail", "Search button config read failed: " + (call == null ? "no response" : call.getString("error", "no on value")));
        } catch (RuntimeException e) {
            Log.w("DuoRail", "Search button config read failed", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ void m2670l(int i) {
        m2458b(i, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ void m2685m(final String str) {
        boolean z;
        long j;
        boolean z2;
        while (this.f2172P0) {
            try {
                this.f2172P0 = false;
                long uptimeMillis = SystemClock.uptimeMillis();
                Context context = this.f2301i4;
                if (context == null) {
                    this.f2165O0.set(false);
                    if (this.f2172P0) {
                        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda69
                            @Override // java.lang.Runnable
                            public final void run() {
                                WorkspaceHooks.this.m2674l(str);
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
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        j = uptimeMillis;
                        z2 = false;
                        break;
                    }
                    ApplicationInfo next = it.next();
                    if (!m2531c(next.packageName)) {
                        j = uptimeMillis;
                        long m2136a = this.f2130J0.m2136a();
                        WindowModeCache.b m2272a = m2272a(next.packageName, (String) null);
                        if (m2272a == null) {
                            i2++;
                            i3++;
                            if (i3 >= 3) {
                                z2 = true;
                                break;
                            }
                            uptimeMillis = j;
                        } else {
                            i++;
                            WindowModeCache.a m2137a = this.f2130J0.m2137a(next.packageName, m2272a, m2136a);
                            if (m2137a != null) {
                                if (m2137a.f1982b) {
                                    arrayList.add(next.packageName);
                                }
                                if (m2137a.m2141a(m2272a)) {
                                    hashSet.add(next.packageName);
                                }
                            }
                            uptimeMillis = j;
                            i3 = 0;
                        }
                    }
                }
                if (!hashSet.isEmpty()) {
                    m2486b((Set<String>) hashSet);
                }
                if (z2) {
                    this.f2305j2 = true;
                    this.f2172P0 = false;
                    Log.w("DuoRail", "Duo states prefetch stopped: 3 reads failed in a row; it runs again once a read succeeds");
                }
                Log.w("DuoRail", "Duo states prefetched reason=" + str + " apps=" + installedApplications.size() + " read=" + i + " failed=" + i2 + " changed=" + arrayList.size() + " ms=" + (SystemClock.uptimeMillis() - j) + " thread=" + Thread.currentThread().getName());
                if (!arrayList.isEmpty()) {
                    this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda70
                        @Override // java.lang.Runnable
                        public final void run() {
                            WorkspaceHooks.this.m2405a(arrayList);
                        }
                    });
                }
            } catch (Throwable th) {
                try {
                    Log.w("DuoRail", "Duo states prefetch failed reason=" + str, th);
                    if (z) {
                        return;
                    } else {
                        return;
                    }
                } finally {
                    this.f2165O0.set(false);
                    if (this.f2172P0) {
                        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda69
                            @Override // java.lang.Runnable
                            public final void run() {
                                WorkspaceHooks.this.m2674l(str);
                            }
                        });
                    }
                }
            }
        }
        this.f2165O0.set(false);
        if (this.f2172P0) {
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda69
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2674l(str);
                }
            });
        }
    }

    /* renamed from: o */
    private void m2705o(ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.systemui.statusbar.CommandQueue", false, classLoader);
            Class cls2 = Integer.TYPE;
            hook(cls.getDeclaredMethod("onSystemBarAttributesChanged", cls2, cls2, Class.forName("[Lcom.android.internal.view.AppearanceRegion;", false, classLoader), Boolean.TYPE, cls2, cls2, String.class, Class.forName("[Lcom.android.internal.statusbar.LetterboxDetails;", false, classLoader))).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda23
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2713p;
                    m2713p = WorkspaceHooks.this.m2713p(chain);
                    return m2713p;
                }
            });
            hook(cls.getDeclaredMethod("setWindowState", cls2, cls2, cls2)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda24
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2721q;
                    m2721q = WorkspaceHooks.this.m2721q(chain);
                    return m2721q;
                }
            });
            Log.i("DuoRail", "Native status bar policy hook ready");
        } catch (ReflectiveOperationException e) {
            Log.e("DuoRail", "Native status bar policy hook unavailable", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ Object m2713p(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (((Integer) chain.getArg(0)).intValue() == 0) {
            final int intValue = ((Integer) chain.getArg(5)).intValue();
            final String str = (String) chain.getArg(6);
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda49
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2391a(str, intValue);
                }
            });
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public /* synthetic */ Object m2721q(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (((Integer) chain.getArg(0)).intValue() == 0 && ((Integer) chain.getArg(1)).intValue() == 1) {
            final boolean z = ((Integer) chain.getArg(2)).intValue() == 0;
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2571e(z);
                }
            });
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public /* synthetic */ void m2731r(int i) {
        if (i == this.f2110G1) {
            m2207P();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public void m2736s(String str) {
        String m959g = RailCodec.m959g(str);
        int m960h = RailCodec.m960h(str);
        Intent launchIntentForPackage = this.f2301i4.getPackageManager().getLaunchIntentForPackage(m959g);
        if (m960h == 0 && launchIntentForPackage == null) {
            return;
        }
        try {
            ActivityOptions makeBasic = ActivityOptions.makeBasic();
            ActivityOptions.class.getMethod("setLaunchWindowingMode", Integer.TYPE).invoke(makeBasic, 1);
            if (m960h != 0) {
                m2392a(m959g, m960h, makeBasic);
            } else {
                this.f2301i4.startActivity(launchIntentForPackage.addFlags(268435456), makeBasic.toBundle());
            }
            Log.w("DuoRail", "Sidebar launch " + str + " fullscreen");
        } catch (Throwable th) {
            m2401a("全屏打开 " + str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public void m2742t(String str) {
        if (this.f2147L3.contains(str)) {
            return;
        }
        if (this.f2147L3.size() >= 12) {
            Toast.makeText(this.f2301i4, "最多固定 12 个应用", 0).show();
            return;
        }
        ArrayList arrayList = new ArrayList(this.f2147L3);
        arrayList.add(str);
        m2528c((List<String>) arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public void m2674l(final String str) {
        this.f2172P0 = true;
        if (this.f2165O0.compareAndSet(false, true)) {
            try {
                this.f2144L0.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda139
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.this.m2685m(str);
                    }
                });
            } catch (RejectedExecutionException e) {
                this.f2165O0.set(false);
            }
        }
    }

    /* renamed from: v */
    private List<SurfaceControl> m2753v(int i) {
        ArrayList arrayList = new ArrayList();
        Map<?, ?> map = this.f2329n2;
        Object obj = map == null ? null : map.get(Integer.valueOf(i));
        if (obj != null) {
            for (Field field : this.f2335o2) {
                try {
                    Object obj2 = field.get(obj);
                    if ((obj2 instanceof SurfaceControl) && ((SurfaceControl) obj2).isValid()) {
                        arrayList.add((SurfaceControl) obj2);
                    }
                } catch (ReflectiveOperationException e) {
                }
            }
        }
        Map<?, ?> map2 = this.f2207U0;
        Object obj3 = map2 != null ? map2.get(Integer.valueOf(i)) : null;
        if (obj3 instanceof SurfaceControl) {
            SurfaceControl surfaceControl = (SurfaceControl) obj3;
            if (surfaceControl.isValid()) {
                arrayList.add(surfaceControl);
            }
        }
        return arrayList;
    }

    /* renamed from: w */
    private SharedPreferences m2758w() {
        SharedPreferences sharedPreferences = this.f2293h2;
        if (sharedPreferences == null && SystemClock.uptimeMillis() >= this.f2299i2) {
            try {
                sharedPreferences = getRemotePreferences("duo_top");
                this.f2293h2 = sharedPreferences;
                Log.w("DuoRail", "Duo config direct read ready");
                return sharedPreferences;
            } catch (Throwable th) {
                this.f2299i2 = SystemClock.uptimeMillis() + 5000;
                Log.w("DuoRail", "Duo config direct read unavailable, provider kept", th);
            }
        }
        return sharedPreferences;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public void m2766x(final String str) {
        if (m2531c(str)) {
            return;
        }
        try {
            this.f2144L0.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda119
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2706o(str);
                }
            });
        } catch (RejectedExecutionException e) {
            Log.w("DuoRail", "Duo config read rejected pkg=" + str, e);
        }
    }

    /* renamed from: y */
    private static String m2771y(int i) {
        return String.format(Locale.ROOT, "#%06X", Integer.valueOf(i & 16777215));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public void m2777z(final int i) {
        (this.f2186R0 != null ? this.f2186R0 : this.f2071A1).post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda82
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2704o(i);
            }
        });
    }

    /* renamed from: i */
    private String m2632i(ActivityManager.RunningTaskInfo runningTaskInfo) {
        ComponentName componentName = this.f2222W1;
        if (runningTaskInfo != null && m2423a(runningTaskInfo.topActivity) && componentName != null && m2424a(this.f2301i4) && m2624h(componentName.getPackageName())) {
            try {
                if (runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) != 0) {
                    return null;
                }
                if (runningTaskInfo.taskId == this.f2215V1) {
                    if (runningTaskInfo.baseActivity == null || !componentName.getPackageName().equals(runningTaskInfo.baseActivity.getPackageName())) {
                        return null;
                    }
                    return componentName.getPackageName();
                }
                for (ActivityManager.RunningTaskInfo runningTaskInfo2 : ((ActivityManager) this.f2301i4.getSystemService(ActivityManager.class)).getRunningTasks(10)) {
                    if (runningTaskInfo2.taskId == this.f2215V1 && componentName.equals(runningTaskInfo2.topActivity) && runningTaskInfo2.getClass().getField("isVisible").getBoolean(runningTaskInfo2)) {
                        if (new Rect(0, 0, f2056s0, 1712).equals(m2582f(runningTaskInfo2.getClass().getField("appCompatTaskInfo").get(runningTaskInfo2)))) {
                            return componentName.getPackageName();
                        }
                    }
                }
            } catch (ReflectiveOperationException e) {
                Log.w("DuoResolver", "Source check failed", e);
            }
        }
        return null;
    }

    /* renamed from: j */
    private void m2648j(ClassLoader classLoader) {
        try {
            hook(Class.forName("com.android.systemui.statusbar.phone.ConfigurationControllerImpl", false, classLoader).getDeclaredMethod("onConfigurationChanged", Configuration.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda37
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2656k;
                    m2656k = WorkspaceHooks.this.m2656k(chain);
                    return m2656k;
                }
            });
            Log.w("DuoRail", "Dark mode configuration hook ready");
        } catch (ReflectiveOperationException e) {
            Log.w("DuoRail", "Dark mode configuration hook unavailable", e);
        }
    }

    /* renamed from: n */
    private void m2697n(boolean z) {
        ArrayList arrayList = new ArrayList(this.f2156M5.values());
        synchronized (this.f2149L5) {
            arrayList.addAll(this.f2149L5);
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            c0 c0Var = ((K) obj).f2443k;
            if (c0Var != null && c0Var.f2599c != z) {
                c0Var.m2857a(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m2732r(String str) {
        String m959g = RailCodec.m959g(str);
        int m960h = RailCodec.m960h(str);
        Intent launchIntentForPackage = this.f2301i4.getPackageManager().getLaunchIntentForPackage(m959g);
        if (m960h == 0 && launchIntentForPackage == null) {
            return;
        }
        try {
            ActivityOptions m2581f = m2581f(m959g);
            if (m2581f == null) {
                Log.w("DuoRail", "Sidebar " + str + ": freeform not allowed, fullscreen");
            }
            if (m960h != 0) {
                m2392a(m959g, m960h, m2581f);
            } else {
                if (m2581f == null) {
                    m2332a(launchIntentForPackage.addFlags(268435456));
                    return;
                }
                this.f2301i4.startActivity(launchIntentForPackage.addFlags(268435456), m2581f.toBundle());
            }
            Log.w("DuoRail", "Sidebar launch " + str + (m2581f == null ? " fullscreen" : " freeform"));
        } catch (Throwable th) {
            m2401a("小窗打开 " + str, th);
        }
    }

    /* renamed from: y */
    private void m2773y(String str) {
        char c;
        if (m2737s()) {
            if (str.startsWith("app:")) {
                Intent launchIntentForPackage = this.f2301i4.getPackageManager().getLaunchIntentForPackage(str.substring(4));
                if (launchIntentForPackage != null) {
                    m2332a(launchIntentForPackage.addFlags(268435456));
                    return;
                }
                return;
            }
            switch (str.hashCode()) {
                case -1995583740:
                    if (str.equals("alipay.pay")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -1414960566:
                    if (str.equals("alipay")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -1290959678:
                    if (str.equals("eyecare")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -1206484807:
                    if (str.equals("huanji")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -1138529534:
                    if (str.equals("calculator")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case -1135252444:
                    if (str.equals("keepon")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case -930895139:
                    if (str.equals("ringer")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case -805491779:
                    if (str.equals("screenrecord")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case -791770330:
                    if (str.equals("wechat")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case -677011630:
                    if (str.equals("airplane")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case -416447130:
                    if (str.equals("screenshot")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case -47065141:
                    if (str.equals("lastapp")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                case -40300674:
                    if (str.equals("rotation")) {
                        c = '\f';
                        break;
                    }
                    c = 65535;
                    break;
                case 3015911:
                    if (str.equals("back")) {
                        c = '\r';
                        break;
                    }
                    c = 65535;
                    break;
                case 3046207:
                    if (str.equals("cast")) {
                        c = 14;
                        break;
                    }
                    c = 65535;
                    break;
                case 3075958:
                    if (str.equals("dark")) {
                        c = 15;
                        break;
                    }
                    c = 65535;
                    break;
                case 3208415:
                    if (str.equals("home")) {
                        c = 16;
                        break;
                    }
                    c = 65535;
                    break;
                case 44649833:
                    if (str.equals("autobright")) {
                        c = 17;
                        break;
                    }
                    c = 65535;
                    break;
                case 109522647:
                    if (str.equals("sleep")) {
                        c = 18;
                        break;
                    }
                    c = 65535;
                    break;
                case 110547964:
                    if (str.equals("torch")) {
                        c = 19;
                        break;
                    }
                    c = 65535;
                    break;
                case 846086146:
                    if (str.equals("powersave")) {
                        c = 20;
                        break;
                    }
                    c = 65535;
                    break;
                case 1052832078:
                    if (str.equals("translate")) {
                        c = 21;
                        break;
                    }
                    c = 65535;
                    break;
                case 1082295672:
                    if (str.equals("recents")) {
                        c = 22;
                        break;
                    }
                    c = 65535;
                    break;
                case 1099603663:
                    if (str.equals("hotspot")) {
                        c = 23;
                        break;
                    }
                    c = 65535;
                    break;
                case 1656693216:
                    if (str.equals("wechat.pay")) {
                        c = 24;
                        break;
                    }
                    c = 65535;
                    break;
                case 1901043637:
                    if (str.equals("location")) {
                        c = 25;
                        break;
                    }
                    c = 65535;
                    break;
                case 1968882350:
                    if (str.equals("bluetooth")) {
                        c = 26;
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
                    m2650j(true);
                    break;
                case 1:
                    m2650j(false);
                    break;
                case 2:
                    m2205O0();
                    break;
                case 3:
                    m2213Q0();
                    break;
                case 4:
                    m2189K0();
                    break;
                case 5:
                    m2220S0();
                    break;
                case 6:
                    m2236W0();
                    break;
                case 7:
                    m2248Z0();
                    break;
                case WorkspaceProtocol.RELEASE_TASK /* 8 */:
                    m2664k(false);
                    break;
                case WorkspaceProtocol.REGISTER_SOURCE /* 9 */:
                    m2177H0();
                    break;
                case '\n':
                    m2438a1();
                    break;
                case WorkspaceProtocol.LOOKUP_SOURCE /* 11 */:
                    m2224T0();
                    break;
                case '\f':
                    m2240X0();
                    break;
                case f1994C0 /* 13 */:
                    m2146A(4);
                    break;
                case 14:
                    m2193L0();
                    break;
                case 15:
                    m2197M0();
                    break;
                case f2063w /* 16 */:
                    m2146A(3);
                    break;
                case 17:
                    m2181I0();
                    break;
                case 18:
                    m2500b1();
                    break;
                case 19:
                    m2534c1();
                    break;
                case 20:
                    m2232V0();
                    break;
                case f2044m0 /* 21 */:
                    m2559d1();
                    break;
                case 22:
                    m2146A(187);
                    break;
                case 23:
                    m2209P0();
                    break;
                case 24:
                    m2664k(true);
                    break;
                case 25:
                    m2228U0();
                    break;
                case 26:
                    m2185J0();
                    break;
                default:
                    Log.w("DuoRail", "Rail action pending: " + str);
                    break;
            }
        }
    }

    /* renamed from: C */
    private static UserHandle m2153C(int i) {
        return UserHandle.getUserHandleForUid(i * 100000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D */
    public void m2158D(String str) {
        ArrayList arrayList = new ArrayList(this.f2147L3);
        if (arrayList.remove(str)) {
            m2528c((List<String>) arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ Object m2538d(XposedInterface.Chain chain) throws Throwable {
        this.f2193S0 = chain.getThisObject();
        m2616h((ActivityManager.RunningTaskInfo) chain.getArg(0));
        m2516c((ActivityManager.RunningTaskInfo) chain.getArg(0));
        Object proceed = chain.proceed();
        m2422a((ActivityManager.RunningTaskInfo) chain.getArg(0), (SurfaceControl) chain.getArg(1));
        return proceed;
    }

    /* renamed from: f */
    private static Rect m2582f(Object obj) throws ReflectiveOperationException {
        if (obj == null) {
            return null;
        }
        try {
            return (Rect) obj.getClass().getField("topActivityAppBounds").get(obj);
        } catch (NoSuchFieldException e) {
            return (Rect) obj.getClass().getMethod("getTopActivityAppBounds", null).invoke(obj, null);
        }
    }

    /* renamed from: g */
    private String m2599g(ActivityManager.RunningTaskInfo runningTaskInfo) {
        ComponentName componentName;
        if (runningTaskInfo == null || (componentName = runningTaskInfo.topActivity) == null) {
            return null;
        }
        String packageName = componentName.getPackageName();
        ComponentName componentName2 = runningTaskInfo.baseActivity;
        return (ConfigKeys.f1171i.contains(packageName) || componentName2 == null || packageName.equals(componentName2.getPackageName()) || m2624h(packageName) || !m2624h(componentName2.getPackageName())) ? packageName : componentName2.getPackageName();
    }

    /* renamed from: h */
    private void m2620h(ClassLoader classLoader) {
        try {
            this.f2187R1 = Class.forName("android.os.SystemProperties", false, classLoader).getDeclaredMethod("get", String.class, String.class);
            Class<?> cls = Class.forName("com.android.wm.shell.RootTaskDisplayAreaOrganizer", false, classLoader);
            Class<?> cls2 = Class.forName("android.window.DisplayAreaInfo", false, classLoader);
            final Field field = cls2.getField("displayId");
            final Field field2 = cls2.getField("token");
            hook(cls.getDeclaredMethod("onDisplayAreaAppeared", cls2, SurfaceControl.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda105
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2447b;
                    m2447b = WorkspaceHooks.this.m2447b(field, field2, chain);
                    return m2447b;
                }
            });
            hook(cls.getDeclaredMethod("onDisplayAreaVanished", cls2)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda106
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2284a;
                    m2284a = WorkspaceHooks.this.m2284a(field, field2, chain);
                    return m2284a;
                }
            });
            m2636i(classLoader);
            m2705o(classLoader);
            m2525c(classLoader);
            m2382a(classLoader);
            this.f2391x4.m3100a(classLoader);
            m2684m(classLoader);
            m2695n(classLoader);
            m2648j(classLoader);
            m2548d(classLoader);
            m2605g(classLoader);
            m2588f(classLoader);
            m2479b(classLoader);
            Class<?> cls3 = Class.forName("com.android.wm.shell.ShellTaskOrganizer", false, classLoader);
            Class<?> cls4 = Class.forName("android.window.TransitionRequestInfo", false, classLoader);
            final Method method = cls4.getMethod("getTriggerTask", null);
            final Method method2 = cls4.getMethod("getType", null);
            hook(Class.forName("com.android.wm.shell.transition.Transitions", false, classLoader).getDeclaredMethod("requestStartTransition", IBinder.class, cls4)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda107
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2296a;
                    m2296a = WorkspaceHooks.this.m2296a(method2, method, chain);
                    return m2296a;
                }
            });
            hook(cls3.getDeclaredMethod("onTaskAppeared", ActivityManager.RunningTaskInfo.class, SurfaceControl.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda108
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2538d;
                    m2538d = WorkspaceHooks.this.m2538d(chain);
                    return m2538d;
                }
            });
            Class<?> cls5 = Class.forName("android.window.TaskAppearedInfo", false, classLoader);
            final Method method3 = cls5.getMethod("getTaskInfo", null);
            final Method method4 = cls5.getMethod("getLeash", null);
            hook(cls3.getDeclaredMethod("onTaskAppeared", cls5)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda109
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2449b;
                    m2449b = WorkspaceHooks.this.m2449b(method3, method4, chain);
                    return m2449b;
                }
            });
            Runnable runnable = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda110
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2203O();
                }
            };
            this.f2194S1 = runnable;
            this.f2071A1.postDelayed(runnable, 1000L);
            hook(cls3.getDeclaredMethod("onTaskInfoChanged", ActivityManager.RunningTaskInfo.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda111
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2564e;
                    m2564e = WorkspaceHooks.this.m2564e(chain);
                    return m2564e;
                }
            });
            hook(cls3.getDeclaredMethod("onTaskVanished", ActivityManager.RunningTaskInfo.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda112
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2583f;
                    m2583f = WorkspaceHooks.this.m2583f(chain);
                    return m2583f;
                }
            });
            Log.w("DuoRail", "Rail task hooks ready");
        } catch (ReflectiveOperationException e) {
            Log.w("DuoRail", "No rail task hooks", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ Object m2656k(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        final boolean z = (((Configuration) chain.getArg(0)).uiMode & 48) == 32;
        this.f2391x4.m3102a(z);
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2554d(z);
            }
        });
        return proceed;
    }

    /* renamed from: l */
    private void m2673l(ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.systemui.LauncherProxyService", false, classLoader);
            for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
                hook(constructor).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda50
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object m2679m;
                        m2679m = WorkspaceHooks.this.m2679m(chain);
                        return m2679m;
                    }
                });
            }
            for (Method method : cls.getDeclaredMethods()) {
                final String name = method.getName();
                if (name.equals("notifySystemUiStateFlags") || name.equals("notifySysUiStateFlagsForAllDisplays") || name.equals("addCallback") || name.equals("shouldShowSwipeUpUI")) {
                    hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda51
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object m2282a;
                            m2282a = WorkspaceHooks.this.m2282a(name, chain);
                            return m2282a;
                        }
                    });
                }
            }
            Log.w("DuoRail", "Shade gesture hooks ready");
        } catch (ReflectiveOperationException e) {
            Log.w("DuoRail", "No shade gesture hooks", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public Drawable m2776z(String str) throws PackageManager.NameNotFoundException {
        Drawable drawable;
        PackageManager packageManager = this.f2301i4.getPackageManager();
        Drawable applicationIcon = packageManager.getApplicationIcon(RailCodec.m959g(str));
        int m960h = RailCodec.m960h(str);
        if (m960h == 0) {
            return applicationIcon;
        }
        try {
            drawable = packageManager.getUserBadgedIcon(applicationIcon, m2153C(m960h));
        } catch (RuntimeException e) {
            Log.w("DuoRail", "Sidebar badge " + str + " unavailable: " + e);
            drawable = applicationIcon;
        }
        return drawable != applicationIcon ? drawable : new Y(applicationIcon);
    }

    /* renamed from: e */
    private void m2566e(ActivityManager.RunningTaskInfo runningTaskInfo) throws ReflectiveOperationException {
        if (runningTaskInfo == null) {
            return;
        }
        m2543d(runningTaskInfo);
        ComponentName componentName = runningTaskInfo.topActivity;
        if (componentName != null && "com.miui.home".equals(componentName.getPackageName()) && "com.miui.home.launcher.Launcher".equals(componentName.getClassName())) {
            Object obj = runningTaskInfo.getClass().getField("configuration").get(runningTaskInfo);
            Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
            Rect rect = (Rect) obj2.getClass().getMethod("getAppBounds", null).invoke(obj2, null);
            int intValue = ((Integer) obj2.getClass().getMethod("getActivityType", null).invoke(obj2, null)).intValue();
            Object obj3 = runningTaskInfo.getClass().getField("appCompatTaskInfo").get(runningTaskInfo);
            Rect m2582f = m2582f(obj3);
            boolean z = false;
            if (intValue == 2 && new Rect(0, 0, f2056s0, 1712).equals(m2582f)) {
                z = true;
            }
            this.f2102F0.put(Integer.valueOf(runningTaskInfo.taskId), Boolean.valueOf(z));
            Log.w("DuoWallpaper", "Home task=" + runningTaskInfo.taskId + " eligible=" + z + " appBounds=" + rect + " compat=" + obj3);
            return;
        }
        this.f2102F0.remove(Integer.valueOf(runningTaskInfo.taskId));
    }

    /* renamed from: C */
    public float[] m2784C() {
        if (this.f2301i4 == null || this.f2164N6 == null || this.f2404z5 == null) {
            return null;
        }
        ((DisplayManager) this.f2301i4.getSystemService(DisplayManager.class)).getDisplay(0).getRealSize(new Point());
        return new float[]{r0.x, r0.y, m2502c(this.f2164N6) + 98.0f, ((this.f2312k3 && this.f2252a4 == 0 && !this.f2259b4) ? this.f2404z5.f2510h : m2536d(this.f2404z5)) + (this.f2404z5.f2509g / 2.0f), (this.f2312k3 ? this.f2342p3 : m2536d(this.f2164N6)) + 146.0f, Math.min(m2502c(this.f2164N6), m2502c(this.f2404z5))};
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.workspaceprobe.b$W */
    final class W implements Runnable {

        /* renamed from: v */
        static final int f2528v = 24;

        /* renamed from: w */
        static final int f2529w = 110;

        /* renamed from: x */
        static final int f2530x = 18;

        /* renamed from: y */
        static final int f2531y = 128;

        /* renamed from: a */
        final d0 f2532a;

        /* renamed from: b */
        final View f2533b;

        /* renamed from: c */
        final View f2534c;

        /* renamed from: d */
        final String f2535d;

        /* renamed from: e */
        private final Drawable f2536e;

        /* renamed from: f */
        private final WindowManager f2537f;

        /* renamed from: g */
        private final float f2538g;

        /* renamed from: h */
        private final float f2539h;

        /* renamed from: i */
        private final float f2540i;

        /* renamed from: j */
        private final int f2541j;

        /* renamed from: l */
        private float f2543l;

        /* renamed from: m */
        private float f2544m;

        /* renamed from: n */
        private FrameLayout f2545n;

        /* renamed from: o */
        private ImageView f2546o;

        /* renamed from: p */
        private boolean f2547p;

        /* renamed from: q */
        private boolean f2548q;

        /* renamed from: r */
        private K f2549r;

        /* renamed from: s */
        private ScrollView f2550s;

        /* renamed from: k */
        private int f2542k = -1;

        /* renamed from: t */
        private int f2551t = -1;

        W(d0 d0Var, View view, View view2, String str, Drawable drawable) {
            this.f2537f = (WindowManager) WorkspaceHooks.this.f2301i4.getSystemService(WindowManager.class);
            this.f2532a = d0Var;
            this.f2533b = view;
            this.f2534c = view2;
            this.f2535d = str;
            Drawable.ConstantState constantState = drawable.getConstantState();
            this.f2536e = constantState != null ? constantState.newDrawable() : drawable;
            float f = d0Var.f2623m;
            this.f2543l = f;
            this.f2538g = f;
            float f2 = d0Var.f2624n;
            this.f2544m = f2;
            this.f2539h = f2;
            this.f2540i = view2.getAlpha();
            this.f2541j = d0Var.f2625o.indexOf(view);
        }

        /* renamed from: b */
        private K m2828b() {
            FrameLayout frameLayout;
            K k = (K) WorkspaceHooks.this.f2156M5.get(Integer.valueOf(WorkspaceHooks.this.f2110G1));
            int[] iArr = (int[]) WorkspaceHooks.this.f2177P5.get(Integer.valueOf(WorkspaceHooks.this.f2110G1));
            if (k != null && iArr != null && (frameLayout = k.f2441i) != null && frameLayout.getVisibility() == 0) {
                WorkspaceHooks c0143b = WorkspaceHooks.this;
                if (c0143b.m2555d(c0143b.f2110G1)) {
                    float m2174G1 = iArr[1] + WorkspaceHooks.this.m2174G1();
                    if (this.f2543l >= iArr[0]) {
                        float f = this.f2544m;
                        if (f >= m2174G1 && f <= m2174G1 + WorkspaceHooks.this.m2162D1()) {
                            return k;
                        }
                    }
                }
            }
            return null;
        }

        /* renamed from: d */
        private void m2830d() {
            ArrayList arrayList = new ArrayList(this.f2532a.f2620j);
            arrayList.add(this.f2542k, (Object[]) arrayList.remove(this.f2541j));
            this.f2532a.f2620j = arrayList;
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                arrayList2.add((String) ((Object[]) obj)[0]);
            }
            Log.w("DuoRail", "Sidebar panel move " + this.f2535d + " " + this.f2541j + "->" + this.f2542k);
            WorkspaceHooks.this.m2783B(2);
            WorkspaceHooks c0143b = WorkspaceHooks.this;
            c0143b.m2485b(RailCodec.m938a(c0143b.f2161N3, arrayList2, arrayList2, RailCodec.f930m));
            this.f2532a.m2871d();
            View view = this.f2542k < this.f2532a.f2625o.size() ? this.f2532a.f2625o.get(this.f2542k) : null;
            final View childAt = view != null ? ((ViewGroup) ((ViewGroup) view).getChildAt(0)).getChildAt(0) : null;
            if (childAt == null) {
                m2835j();
                return;
            }
            final float alpha = childAt.getAlpha();
            childAt.setAlpha(0.0f);
            this.f2532a.f2617g.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$W$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.W.this.m2829b(childAt, alpha);
                }
            });
        }

        /* renamed from: e */
        private void m2831e() {
            this.f2546o.setX(this.f2543l - 64.0f);
            this.f2546o.setY(this.f2544m - 64.0f);
            K m2828b = m2828b();
            int m2822a = m2828b == null ? -1 : m2822a(m2828b);
            K k = this.f2549r;
            if (m2828b != k || m2822a != this.f2551t) {
                if (k != null && k != m2828b) {
                    m2826a(k, -1);
                }
                this.f2549r = m2828b;
                this.f2551t = m2822a;
                if (m2828b != null) {
                    m2826a(m2828b, m2822a);
                }
            }
            int m2834i = m2828b == null ? m2834i() : -1;
            if (m2834i != this.f2542k) {
                this.f2542k = m2834i;
                m2824a(m2834i);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g */
        public /* synthetic */ void m2832g() {
            this.f2534c.setAlpha(this.f2540i);
            m2835j();
        }

        /* renamed from: h */
        private int[] m2833h() {
            View view = (View) this.f2532a.f2617g.getParent();
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            return new int[]{iArr[0], iArr[1], view.getWidth(), view.getHeight()};
        }

        /* renamed from: i */
        private int m2834i() {
            if (this.f2541j >= 0 && !this.f2532a.f2626p && this.f2533b.isAttachedToWindow() && this.f2532a.f2625o.indexOf(this.f2533b) == this.f2541j) {
                int[] m2833h = m2833h();
                float f = this.f2543l;
                if (f >= m2833h[0] && f <= r4 + m2833h[2]) {
                    float f2 = this.f2544m;
                    if (f2 >= m2833h[1] && f2 <= r6 + m2833h[3]) {
                        this.f2532a.f2617g.getLocationOnScreen(new int[2]);
                        return RailCodec.m932a(this.f2543l - r0[0], this.f2544m - r0[1], this.f2532a.f2617g.getWidth() / 3.0f, ((View) this.f2533b.getParent()).getHeight(), 3, this.f2532a.f2625o.size());
                    }
                }
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: j */
        public void m2835j() {
            FrameLayout frameLayout = this.f2545n;
            if (frameLayout == null) {
                return;
            }
            try {
                this.f2537f.removeViewImmediate(frameLayout);
            } catch (RuntimeException e) {
                Log.w("DuoRail", "Sidebar carry remove failed", e);
            }
            this.f2545n = null;
        }

        /* renamed from: a */
        void m2836a(MotionEvent motionEvent) {
            this.f2543l = motionEvent.getRawX();
            this.f2544m = motionEvent.getRawY();
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 2) {
                if (this.f2547p) {
                    m2831e();
                    return;
                } else {
                    if (Math.hypot(this.f2543l - this.f2538g, this.f2544m - this.f2539h) > 24.0d) {
                        WorkspaceHooks.this.m2703o();
                        WorkspaceHooks.this.m2783B(2);
                        m2823a();
                        return;
                    }
                    return;
                }
            }
            if (actionMasked == 1) {
                if (this.f2547p) {
                    m2827a(true);
                    return;
                } else {
                    this.f2532a.f2622l = null;
                    return;
                }
            }
            if (actionMasked == 3) {
                if (this.f2547p) {
                    m2827a(false);
                } else {
                    this.f2532a.f2622l = null;
                }
            }
        }

        /* renamed from: c */
        void m2837c() {
            if (this.f2548q) {
                return;
            }
            this.f2548q = true;
            this.f2547p = false;
            this.f2532a.f2622l = null;
            this.f2533b.removeCallbacks(this);
            K k = this.f2549r;
            if (k != null) {
                m2826a(k, -1);
            }
            m2835j();
        }

        /* renamed from: f */
        void m2838f() {
            this.f2533b.getParent().requestDisallowInterceptTouchEvent(true);
            ((View) this.f2534c.getParent()).animate().scaleX(1.0f).scaleY(1.0f).setDuration(180L).start();
            WorkspaceHooks.this.m2783B(5);
            if (WorkspaceHooks.this.f2203T3) {
                m2823a();
                return;
            }
            int[] iArr = new int[2];
            this.f2534c.getLocationOnScreen(iArr);
            boolean z = (iArr[0] + this.f2534c.getWidth()) + 444 <= 939;
            int width = z ? iArr[0] + this.f2534c.getWidth() + 24 : Math.max(24, iArr[0] - 444);
            WorkspaceHooks.this.m2703o();
            WorkspaceHooks c0143b = WorkspaceHooks.this;
            c0143b.f2217V3 = c0143b.new b0(this.f2535d, c0143b.f2147L3.contains(this.f2535d), width, iArr[1] + (this.f2534c.getHeight() / 2), z ? 0.0f : 420, true);
            WorkspaceHooks.this.f2217V3.m2855d();
            Log.w("DuoRail", "Sidebar panel hold " + this.f2535d);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2548q || !this.f2547p) {
                return;
            }
            K k = this.f2549r;
            int i = f2530x;
            if (k != null) {
                ScrollView scrollView = (ScrollView) k.f2442j.getParent();
                float m2174G1 = (this.f2544m - (((int[]) WorkspaceHooks.this.f2177P5.get(Integer.valueOf(WorkspaceHooks.this.f2110G1))) == null ? 0 : r7[1])) - WorkspaceHooks.this.m2174G1();
                if (m2174G1 < 110.0f) {
                    i = -18;
                } else if (m2174G1 <= scrollView.getHeight() - 110) {
                    i = 0;
                }
                int scrollY = scrollView.getScrollY();
                if (i != 0) {
                    scrollView.scrollBy(0, i);
                }
                if (scrollView.getScrollY() != scrollY) {
                    this.f2550s = scrollView;
                    this.f2551t = -2;
                    m2831e();
                }
            } else if (this.f2542k >= 0) {
                ScrollView scrollView2 = (ScrollView) this.f2532a.f2617g.getParent();
                float f = this.f2544m - m2833h()[1];
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
                    this.f2542k = -2;
                    m2831e();
                }
            }
            this.f2533b.postOnAnimation(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public /* synthetic */ void m2829b(final View view, final float f) {
            view.getLocationOnScreen(new int[2]);
            this.f2546o.animate().x(r0[0]).y(r0[1]).scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(200L).setInterpolator(WorkspaceHooks.f2002J).withEndAction(new Runnable() { // from class: dev.duo.workspaceprobe.b$W$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.W.this.m2825a(view, f);
                }
            }).start();
        }

        /* renamed from: a */
        private void m2823a() {
            this.f2545n = new FrameLayout(WorkspaceHooks.this.f2301i4);
            ImageView imageView = new ImageView(WorkspaceHooks.this.f2301i4);
            this.f2546o = imageView;
            imageView.setImageDrawable(this.f2536e);
            this.f2545n.addView(this.f2546o, new FrameLayout.LayoutParams(f2531y, f2531y));
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 2017, 16777496, -3);
            layoutParams.gravity = 51;
            layoutParams.layoutInDisplayCutoutMode = 3;
            layoutParams.setFitInsetsTypes(0);
            layoutParams.setTitle("DuoSidebarCarry");
            try {
                this.f2537f.addView(this.f2545n, layoutParams);
                this.f2547p = true;
                this.f2534c.setAlpha(0.3f);
                this.f2546o.setScaleX(1.12f);
                this.f2546o.setScaleY(1.12f);
                this.f2546o.setAlpha(0.92f);
                m2831e();
                this.f2533b.postOnAnimation(this);
                Log.w("DuoRail", "Sidebar carry start " + this.f2535d);
            } catch (RuntimeException e) {
                Log.w("DuoRail", "Sidebar carry unavailable", e);
                this.f2545n = null;
                this.f2532a.f2622l = null;
            }
        }

        /* renamed from: a */
        private int m2822a(K k) {
            ArrayList arrayList = new ArrayList(WorkspaceHooks.this.f2147L3);
            if (!arrayList.remove(this.f2535d) && arrayList.size() >= 12) {
                return -1;
            }
            return RailCodec.m933a((((this.f2544m - (((int[]) WorkspaceHooks.this.f2177P5.get(Integer.valueOf(WorkspaceHooks.this.f2110G1))) == null ? 0 : r1[1])) - WorkspaceHooks.this.m2174G1()) - 20.0f) + ((View) k.f2442j.getParent()).getScrollY() + 75.0f, WorkspaceHooks.f2032g0, arrayList.size() + 1);
        }

        /* renamed from: a */
        private void m2824a(int i) {
            int i2 = this.f2541j;
            if (i2 < 0 || i2 >= this.f2532a.f2625o.size() || this.f2532a.f2625o.get(this.f2541j) != this.f2533b) {
                return;
            }
            float width = this.f2532a.f2617g.getWidth() / 3;
            float height = ((View) this.f2533b.getParent()).getHeight();
            int i3 = 0;
            while (i3 < this.f2532a.f2625o.size()) {
                View view = this.f2532a.f2625o.get(i3);
                int i4 = this.f2541j;
                if (i3 == i4) {
                    view.animate().alpha(i >= 0 ? 0.0f : 1.0f).setDuration(120L).start();
                } else {
                    int i5 = (i < 0 || i4 >= i || i3 <= i4 || i3 > i) ? (i < 0 || i >= i4 || i3 < i || i3 >= i4) ? i3 : i3 + 1 : i3 - 1;
                    view.animate().translationX(((i5 % 3) - (i3 % 3)) * width).translationY(((i5 / 3) - (i3 / 3)) * height).setDuration(180L).setInterpolator(WorkspaceHooks.f2002J).start();
                }
                i3++;
            }
        }

        /* renamed from: a */
        private void m2826a(K k, int i) {
            int i2;
            int indexOf = i < 0 ? -1 : WorkspaceHooks.this.f2147L3.indexOf(this.f2535d);
            int i3 = 0;
            while (i3 < k.f2442j.getChildCount()) {
                if (i >= 0) {
                    i2 = (indexOf < 0 || i3 <= indexOf) ? i3 : i3 - 1;
                    if (i3 != indexOf && i2 >= i) {
                        i2++;
                    }
                } else {
                    i2 = i3;
                }
                k.f2442j.getChildAt(i3).animate().translationY(i3 == indexOf ? 0.0f : (i2 - i3) * 150.0f).alpha(i3 == indexOf ? 0.3f : 1.0f).setDuration(160L).setInterpolator(WorkspaceHooks.f2002J).start();
                i3++;
            }
        }

        /* renamed from: a */
        private void m2827a(boolean z) {
            int i;
            K k;
            this.f2548q = true;
            this.f2547p = false;
            this.f2532a.f2622l = null;
            this.f2533b.removeCallbacks(this);
            K k2 = this.f2549r;
            if (k2 != null && (k2.f2442j.getParent() instanceof e0)) {
                ((e0) this.f2549r.f2442j.getParent()).m2873a();
            }
            ScrollView scrollView = this.f2550s;
            if ((scrollView instanceof e0) && ((k = this.f2549r) == null || scrollView != k.f2442j.getParent())) {
                ((e0) this.f2550s).m2873a();
            }
            if (z && this.f2549r != null && this.f2551t >= 0) {
                ArrayList arrayList = new ArrayList(WorkspaceHooks.this.f2147L3);
                arrayList.remove(this.f2535d);
                arrayList.add(Math.min(this.f2551t, arrayList.size()), this.f2535d);
                Log.w("DuoRail", "Sidebar carry drop " + this.f2535d + " at " + this.f2551t);
                WorkspaceHooks.this.m2783B(2);
                this.f2546o.animate().scaleX(0.9f).scaleY(0.9f).alpha(0.0f).setDuration(160L).withEndAction(new Runnable() { // from class: dev.duo.workspaceprobe.b$W$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.W.this.m2835j();
                    }
                }).start();
                this.f2534c.setAlpha(this.f2540i);
                if (arrayList.equals(WorkspaceHooks.this.f2147L3)) {
                    WorkspaceHooks.this.m2720p1();
                    return;
                } else {
                    WorkspaceHooks.this.m2528c((List<String>) arrayList);
                    return;
                }
            }
            if (z && (i = this.f2542k) >= 0 && i != this.f2541j && this.f2532a.f2625o.indexOf(this.f2533b) == this.f2541j) {
                m2830d();
                return;
            }
            if (z && this.f2549r != null) {
                Toast.makeText(WorkspaceHooks.this.f2301i4, "最多固定 12 个应用", 0).show();
            }
            K k3 = this.f2549r;
            if (k3 != null) {
                m2826a(k3, -1);
            }
            if (this.f2542k >= 0) {
                m2824a(-1);
            }
            Log.w("DuoRail", "Sidebar carry " + (z ? "back " : "cancel ") + this.f2535d);
            if (!this.f2534c.isAttachedToWindow()) {
                this.f2546o.animate().alpha(0.0f).setDuration(160L).withEndAction(new Runnable() { // from class: dev.duo.workspaceprobe.b$W$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.W.this.m2835j();
                    }
                }).start();
                return;
            }
            this.f2534c.getLocationOnScreen(new int[2]);
            this.f2546o.animate().x(r10[0]).y(r10[1]).scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(220L).setInterpolator(WorkspaceHooks.f2002J).withEndAction(new Runnable() { // from class: dev.duo.workspaceprobe.b$W$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.W.this.m2832g();
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m2825a(View view, float f) {
            view.setAlpha(f);
            m2835j();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.b$X */
    private final class X implements Runnable {

        /* renamed from: k */
        static final int f2553k = 110;

        /* renamed from: l */
        static final int f2554l = 18;

        /* renamed from: a */
        final LinearLayout f2555a;

        /* renamed from: b */
        final ScrollView f2556b;

        /* renamed from: c */
        final View f2557c;

        /* renamed from: d */
        final int f2558d;

        /* renamed from: e */
        final int f2559e;

        /* renamed from: f */
        final int f2560f;

        /* renamed from: g */
        final float f2561g;

        /* renamed from: h */
        float f2562h;

        /* renamed from: i */
        int f2563i;

        X(LinearLayout linearLayout, View view, int i, int i2) {
            this.f2555a = linearLayout;
            ScrollView scrollView = (ScrollView) linearLayout.getParent();
            this.f2556b = scrollView;
            this.f2557c = view;
            this.f2558d = i;
            this.f2559e = i2;
            this.f2560f = scrollView.getScrollY();
            float f = WorkspaceHooks.this.f2231X3;
            this.f2562h = f;
            this.f2561g = f;
            this.f2563i = i;
        }

        /* renamed from: b */
        private void m2840b() {
            this.f2557c.setTranslationY(((this.f2562h - this.f2561g) + this.f2556b.getScrollY()) - this.f2560f);
            int m933a = RailCodec.m933a(((this.f2557c.getTop() + this.f2557c.getTranslationY()) + 48.0f) - this.f2555a.getPaddingTop(), WorkspaceHooks.f2032g0, this.f2559e);
            if (m933a == this.f2563i) {
                return;
            }
            this.f2563i = m933a;
            int i = 0;
            while (i < this.f2559e) {
                int i2 = this.f2558d;
                if (i != i2) {
                    this.f2555a.getChildAt(i).animate().translationY((i2 >= m933a || i <= i2 || i > m933a) ? (i2 <= m933a || i < m933a || i >= i2) ? 0 : WorkspaceHooks.f2032g0 : -150).setDuration(160L).start();
                }
                i++;
            }
        }

        /* renamed from: a */
        void m2841a() {
            this.f2556b.requestDisallowInterceptTouchEvent(true);
            this.f2557c.animate().cancel();
            this.f2557c.setTranslationZ(24.0f);
            this.f2557c.animate().scaleX(1.12f).scaleY(1.12f).alpha(0.85f).setDuration(120L).start();
            this.f2556b.postOnAnimation(this);
            Log.w("DuoRail", "Sidebar drag start " + ((String) WorkspaceHooks.this.f2147L3.get(this.f2558d)) + " at " + this.f2558d);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (WorkspaceHooks.this.f2224W3 != this) {
                return;
            }
            float top = ((this.f2557c.getTop() + this.f2557c.getTranslationY()) - this.f2556b.getScrollY()) + 48.0f;
            int i = top < 110.0f ? -18 : top > ((float) (this.f2556b.getHeight() + (-110))) ? f2554l : 0;
            if (i != 0) {
                int scrollY = this.f2556b.getScrollY();
                this.f2556b.scrollBy(0, i);
                if (this.f2556b.getScrollY() != scrollY) {
                    m2840b();
                }
            }
            this.f2556b.postOnAnimation(this);
        }

        /* renamed from: a */
        void m2842a(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 2) {
                this.f2562h = motionEvent.getRawY();
                m2840b();
            } else if (actionMasked == 1) {
                m2839a(true);
            } else if (actionMasked == 3) {
                m2839a(false);
            }
        }

        /* renamed from: a */
        private void m2839a(boolean z) {
            WorkspaceHooks.this.f2224W3 = null;
            this.f2556b.removeCallbacks(this);
            ScrollView scrollView = this.f2556b;
            if (scrollView instanceof e0) {
                ((e0) scrollView).m2873a();
            }
            List<String> m936a = RailCodec.m936a((List<String>) WorkspaceHooks.this.f2147L3, this.f2558d, this.f2563i);
            Log.w("DuoRail", "Sidebar drag end " + (z ? "drop " : "cancel ") + this.f2558d + "->" + this.f2563i);
            if (!z || this.f2557c.getParent() != this.f2555a || m936a.equals(WorkspaceHooks.this.f2147L3)) {
                WorkspaceHooks.this.m2720p1();
            } else {
                WorkspaceHooks.this.m2783B(2);
                WorkspaceHooks.this.m2528c(m936a);
            }
        }
    }

    /* renamed from: B */
    void m2783B(int i) {
        Vibrator vibrator;
        try {
            if (Settings.System.getInt(this.f2301i4.getContentResolver(), "haptic_feedback_enabled", 1) != 0 && (vibrator = (Vibrator) this.f2301i4.getSystemService(Vibrator.class)) != null && vibrator.hasVibrator()) {
                vibrator.vibrate(VibrationEffect.createPredefined(i), VibrationAttributes.createForUsage(18));
            }
        } catch (RuntimeException e) {
            Log.w("DuoRail", "Sidebar haptic failed", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.workspaceprobe.b$c0 */
    static final class c0 extends View {

        /* renamed from: a */
        private final Paint f2597a;

        /* renamed from: b */
        boolean f2598b;

        /* renamed from: c */
        boolean f2599c;

        /* renamed from: d */
        float f2600d;

        /* renamed from: e */
        private ValueAnimator f2601e;

        c0(Context context) {
            super(context);
            this.f2597a = new Paint(1);
        }

        /* renamed from: a */
        void m2857a(boolean z) {
            this.f2599c = z;
            ValueAnimator valueAnimator = this.f2601e;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f2600d, z ? 1.0f : 0.0f);
            this.f2601e = ofFloat;
            ofFloat.setDuration(200L);
            this.f2601e.setInterpolator(WorkspaceHooks.f2002J);
            this.f2601e.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$c0$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    WorkspaceHooks.c0.this.m2856a(valueAnimator2);
                }
            });
            this.f2601e.start();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float width = getWidth();
            float height = getHeight();
            this.f2597a.setStyle(Paint.Style.FILL);
            this.f2597a.setColor(this.f2598b ? 536870911 : 335544320);
            float f = width * 0.28f;
            canvas.drawRoundRect(0.0f, 0.0f, width, height, f, f, this.f2597a);
            this.f2597a.setColor(-7434605);
            float f2 = this.f2600d;
            if (f2 < 1.0f) {
                this.f2597a.setAlpha(Math.round((1.0f - f2) * 255.0f));
                canvas.save();
                float f3 = width / 2.0f;
                float f4 = height / 2.0f;
                canvas.rotate(this.f2600d * 90.0f, f3, f4);
                float f5 = 1.0f - (this.f2600d * 0.3f);
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
                    canvas.drawRoundRect(f12, f13, f12 + f6, f13 + f6, f14, f14, this.f2597a);
                }
                canvas.restore();
            }
            if (this.f2600d <= 0.0f) {
                return;
            }
            this.f2597a.setColor(-7434605);
            this.f2597a.setAlpha(Math.round(this.f2600d * 255.0f));
            canvas.save();
            canvas.translate((-width) * 0.12f * (1.0f - this.f2600d), 0.0f);
            this.f2597a.setStyle(Paint.Style.STROKE);
            this.f2597a.setStrokeWidth(width * 0.055f);
            this.f2597a.setStrokeCap(Paint.Cap.ROUND);
            this.f2597a.setStrokeJoin(Paint.Join.ROUND);
            Path path = new Path();
            float f15 = width * 0.43f;
            path.moveTo(f15, height * 0.3f);
            path.lineTo(0.62f * width, 0.5f * height);
            path.lineTo(f15, height * 0.7f);
            canvas.drawPath(path, this.f2597a);
            canvas.restore();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m2856a(ValueAnimator valueAnimator) {
            this.f2600d = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.workspaceprobe.b$i0 */
    static final class i0 {

        /* renamed from: a */
        boolean f2742a;

        /* renamed from: b */
        boolean f2743b;

        /* renamed from: c */
        long f2744c;

        /* renamed from: d */
        final Map<String, Integer> f2745d;

        /* renamed from: e */
        final Map<String, Integer> f2746e;

        /* renamed from: f */
        final Set<String> f2747f;

        private i0() {
            this.f2745d = new HashMap();
            this.f2746e = new HashMap();
            this.f2747f = new HashSet();
        }

        /* synthetic */ i0(C0181k c0181k) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ Object m2509c(Field field, Field field2, Method method, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        m2386a(chain.getThisObject(), chain.getArg(0), chain.getArg(1), field, field2, method);
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ Object m2583f(XposedInterface.Chain chain) throws Throwable {
        ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) chain.getArg(0);
        if (runningTaskInfo != null) {
            m2601g(runningTaskInfo.taskId);
        }
        if (runningTaskInfo != null) {
            final int i = runningTaskInfo.taskId;
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda141
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2670l(i);
                }
            });
        }
        return chain.proceed();
    }

    /* renamed from: q */
    private void m2722q() {
        i0 i0Var = this.f2104F2.get(this.f2090D2);
        if (!this.f2181Q2 || this.f2174P2 || !m2151B0() || this.f2167O2 || i0Var == null || !i0Var.f2743b) {
            return;
        }
        final Bundle bundle = new Bundle();
        final boolean z = this.f2311k2;
        final boolean m2156C0 = m2156C0();
        bundle.putLong("token", this.f2146L2);
        bundle.putString("page", this.f2097E2);
        bundle.putBoolean("night", z);
        bundle.putLong("revision", i0Var.f2744c);
        bundle.putInt("color", this.f2216V2);
        bundle.putBoolean("default", m2156C0);
        final String str = this.f2090D2;
        final String str2 = this.f2097E2;
        final int i = this.f2216V2;
        final int i2 = this.f2078B2;
        final int i3 = this.f2110G1;
        final long j = this.f2146L2;
        final long j2 = this.f2153M2;
        final long j3 = this.f2117H1;
        this.f2174P2 = true;
        m2161D0();
        m2456b(i3, new b$$ExternalSyntheticLambda34(), new Consumer() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda35
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WorkspaceHooks.this.m2325a(j, j2, i2, i3, j3, str, str2, z, bundle, m2156C0, i, (Integer) obj);
            }
        });
    }

    /* renamed from: D */
    public boolean m2785D() {
        return this.f2312k3;
    }

    /* renamed from: A */
    private void m2146A(int i) {
        Object invoke;
        try {
            try {
                invoke = Class.forName("android.hardware.input.InputManagerGlobal").getMethod("getInstance", null).invoke(null, null);
            } catch (ClassNotFoundException e) {
                invoke = InputManager.class.getMethod("getInstance", null).invoke(null, null);
            }
            Method method = invoke.getClass().getMethod("injectInputEvent", InputEvent.class, Integer.TYPE);
            long uptimeMillis = SystemClock.uptimeMillis();
            int i2 = 0;
            int[] iArr = {0, 1};
            int i3 = 0;
            while (i3 < 2) {
                int i4 = i2;
                method.invoke(invoke, new KeyEvent(uptimeMillis, SystemClock.uptimeMillis(), iArr[i3], i, 0, 0, -1, 0, 72, 257), Integer.valueOf(i4));
                i3++;
                i2 = i4;
            }
            Log.w("DuoRail", "Rail key " + KeyEvent.keyCodeToString(i));
        } catch (Throwable th) {
            Log.w("DuoRail", "Rail key failed " + i, th);
        }
    }

    /* renamed from: p */
    private void m2717p(ClassLoader classLoader) {
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
            for (int i = 0; i < 7; i++) {
                fieldArr2[i].setAccessible(true);
            }
            for (int i2 = 0; i2 < 4; i2++) {
                fieldArr[i2].setAccessible(true);
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
                this.f2401z2 = declaredMethod6;
                this.f2072A2 = declaredMethod5;
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
                            Object m2289a;
                            m2289a = WorkspaceHooks.this.m2289a(declaredField4, declaredField2, declaredMethod5, declaredMethod6, declaredConstructor, declaredField8, declaredField13, declaredField14, declaredField15, declaredField11, declaredField3, declaredField9, declaredField10, declaredField12, chain);
                            return m2289a;
                        }
                    });
                    this.f2335o2 = fieldArr;
                    hook(cls.getDeclaredMethod("configureLetterboxMode", cls2)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda168
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object m2286a;
                            m2286a = WorkspaceHooks.this.m2286a(declaredField2, declaredField5, declaredField4, declaredField3, declaredField, valueOf, chain);
                            return m2286a;
                        }
                    });
                    hook(declaredMethod).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda169
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object m2508c;
                            m2508c = WorkspaceHooks.this.m2508c(declaredField6, declaredField7, chain);
                            return m2508c;
                        }
                    });
                    hook(declaredMethod2).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda170
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object m2539d;
                            m2539d = WorkspaceHooks.this.m2539d(declaredField6, declaredField7, chain);
                            return m2539d;
                        }
                    });
                    hook(declaredMethod3).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda171
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object m2446b;
                            m2446b = WorkspaceHooks.this.m2446b(declaredField6, chain);
                            return m2446b;
                        }
                    });
                    hook(declaredMethod4).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda172
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object m2507c;
                            m2507c = WorkspaceHooks.this.m2507c(declaredField6, chain);
                            return m2507c;
                        }
                    });
                    this.f2359s2 = true;
                    str = "DuoRail";
                } catch (Throwable th) {
                    th = th;
                    str = "DuoRail";
                }
            } catch (Throwable th2) {
                th = th2;
                str = "DuoRail";
            }
        } catch (Throwable th3) {
            th = th3;
            str = "DuoRail";
        }
        try {
            Log.w(str, "Strip letterbox hooks ready");
        } catch (Throwable th4) {
            th = th4;
            Log.w(str, "Strip letterbox unavailable; MIUI board kept", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ Object m2508c(Field field, Field field2, XposedInterface.Chain chain) throws Throwable {
        int i = field.getInt(chain.getArg(0));
        Integer num = this.f2353r2.get();
        this.f2353r2.set(Integer.valueOf(i));
        try {
            Object proceed = chain.proceed();
            this.f2353r2.set(num);
            this.f2329n2 = (Map) field2.get(chain.getThisObject());
            if (this.f2186R0 == null && Looper.myLooper() != null) {
                this.f2186R0 = new Handler(Looper.myLooper());
            }
            if (this.f2341p2.putIfAbsent(Integer.valueOf(i), 1) == null) {
                m2457b(i, "create");
            }
            try {
                Object obj = this.f2329n2.get(Integer.valueOf(i));
                L l = this.f2163N5.get(Integer.valueOf(i));
                if (l == null || l.f2459a != obj) {
                    m2454b(i, (SurfaceControl.Transaction) chain.getArg(1));
                    this.f2163N5.put(Integer.valueOf(i), new L(obj, (SurfaceControl) chain.getArg(2)));
                }
                m2309a(i, (SurfaceControl.Transaction) chain.getArg(1));
                return proceed;
            } catch (Throwable th) {
                Log.w("DuoRail", "App rail decor attach skipped task=" + i, th);
                return proceed;
            }
        } catch (Throwable th2) {
            this.f2353r2.set(num);
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m2553d(final String str, final String str2) {
        if (str == null || !this.f2151M0.add(str)) {
            return;
        }
        Long l = this.f2158N0.get(str);
        if (l != null && SystemClock.uptimeMillis() - l.longValue() < 2000) {
            this.f2151M0.remove(str);
            return;
        }
        try {
            this.f2137K0.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda64
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2484b(str, str2);
                }
            });
        } catch (RejectedExecutionException e) {
            this.f2151M0.remove(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ void m2660k(final int i) {
        int i2;
        ValueAnimator remove = this.f2323m2.remove(Integer.valueOf(i));
        if (remove != null) {
            remove.cancel();
        }
        Integer num = this.f2317l2.get(Integer.valueOf(i));
        int m2747u = m2747u(i);
        if (num == null) {
            i2 = i;
        } else if (num.intValue() == m2747u) {
            i2 = i;
        } else {
            if (m2651j(i)) {
                final List<SurfaceControl> m2753v = m2753v(i);
                final K k = this.f2156M5.get(Integer.valueOf(i));
                ValueAnimator ofArgb = ValueAnimator.ofArgb(num.intValue(), m2747u);
                ofArgb.setDuration(300L);
                ofArgb.setInterpolator(new DecelerateInterpolator());
                final long[] jArr = {-33};
                ofArgb.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda209
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        WorkspaceHooks.this.m2415a(jArr, i, m2753v, k, valueAnimator);
                    }
                });
                ofArgb.addListener(new C0173c(i, ofArgb));
                this.f2323m2.put(Integer.valueOf(i), ofArgb);
                ofArgb.start();
                return;
            }
            i2 = i;
        }
        m2777z(i2);
    }

    /* renamed from: n */
    private void m2695n(ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.wm.shell.sosc.common.split.DividerSnapAlgorithm", false, classLoader);
            final Field declaredField = cls.getDeclaredField("mSnapMode");
            final Field declaredField2 = cls.getDeclaredField("mDisplayWidth");
            final Field declaredField3 = cls.getDeclaredField("mDisplayHeight");
            final Field declaredField4 = cls.getDeclaredField("mIsLeftRightSplit");
            Field[] fieldArr = {declaredField, declaredField2, declaredField3, declaredField4};
            for (int i = 0; i < 4; i++) {
                fieldArr[i].setAccessible(true);
            }
            hook(cls.getDeclaredMethod("calculateTargets", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda10
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2285a;
                    m2285a = WorkspaceHooks.this.m2285a(declaredField2, declaredField3, declaredField4, declaredField, chain);
                    return m2285a;
                }
            });
            Log.i("DuoSplitRatio", "Native inner landscape five-stop hook ready");
        } catch (ReflectiveOperationException e) {
            Log.e("DuoSplitRatio", "Native split ratio entry unavailable", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ Thread m2451b(Runnable runnable) {
        Thread thread = new Thread(runnable, "DuoConfigPrefetch");
        thread.setDaemon(true);
        return thread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public /* synthetic */ void m2741t(final int i) {
        Bundle call;
        final Boolean bool = null;
        try {
            call = this.f2301i4.getContentResolver().call(Uri.parse("content://dev.duo.hookprobe.config"), "standbyClock", (String) null, (Bundle) null);
        } catch (RuntimeException e) {
            Log.e("DuoStandby", "Clock switch read failed", e);
        }
        if (call != null && call.containsKey("on")) {
            bool = Boolean.valueOf(call.getBoolean("on"));
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda132
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2315a(i, bool);
                }
            });
        }
        Log.e("DuoStandby", "Clock switch read failed: " + (call == null ? "no response" : call.getString("error")));
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda132
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2315a(i, bool);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ Object m2448b(Field field, Field field2, Method method, XposedInterface.Chain chain) throws Throwable {
        Object[] array = chain.getArgs().toArray();
        if (m2432a(array[0], field)) {
            array[2] = Boolean.FALSE;
        }
        Object proceed = chain.proceed(array);
        m2386a(chain.getThisObject(), array[0], array[1], field, field2, method);
        return proceed;
    }

    /* renamed from: f */
    private void m2585f(final int i) {
        (this.f2186R0 != null ? this.f2186R0 : this.f2071A1).post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda128
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2660k(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public void m2606g(String str) {
        ComponentName componentName;
        this.f2104F2.remove(str);
        for (ActivityManager.RunningTaskInfo runningTaskInfo : this.f2109G0.values()) {
            ComponentName componentName2 = runningTaskInfo.topActivity;
            if (componentName2 != null && str.equals(componentName2.getPackageName()) && (!str.equals(this.f2090D2) || runningTaskInfo.taskId != this.f2084C2)) {
                this.f2389x2.remove(Integer.valueOf(runningTaskInfo.taskId));
                m2777z(runningTaskInfo.taskId);
            }
        }
        if (str.equals(this.f2090D2)) {
            this.f2395y2 = "";
            this.f2078B2++;
            ActivityManager.RunningTaskInfo runningTaskInfo2 = this.f2109G0.get(Integer.valueOf(this.f2110G1));
            if (runningTaskInfo2 == null || (componentName = runningTaskInfo2.topActivity) == null) {
                return;
            }
            m2308a(runningTaskInfo2.taskId, componentName);
        }
    }

    /* renamed from: w */
    private FrameLayout m2759w(int i) {
        FrameLayout frameLayout = new FrameLayout(this.f2301i4);
        frameLayout.setBackground(new N(i == 0 ? f2046n0 : 60.0f, i));
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m2586f(View view) {
        m2755v();
        m2411a(true, (Rect) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public /* synthetic */ void m2735s(int i) {
        if (i == this.f2232X4) {
            m2241X1();
        }
    }

    /* renamed from: w */
    private Boolean m2760w(String str) throws ReflectiveOperationException, Settings.SettingNotFoundException {
        char c;
        ContentResolver contentResolver = this.f2301i4.getContentResolver();
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
                return Boolean.valueOf(Settings.System.getInt(contentResolver, "screen_paper_mode_enabled") != 0);
            case 1:
                if (Settings.System.getInt(contentResolver, "screen_off_timeout") == f1996D0 && m2259a((Integer) null) > 0) {
                    r5 = true;
                }
                return Boolean.valueOf(r5);
            case 2:
                return Boolean.valueOf(((AudioManager) this.f2301i4.getSystemService(AudioManager.class)).getRingerMode() != 2);
            case 3:
                return Boolean.valueOf(Settings.Global.getInt(contentResolver, "airplane_mode_on") != 0);
            case 4:
                return Boolean.valueOf(Settings.System.getInt(contentResolver, "accelerometer_rotation") == 0);
            case 5:
                return Boolean.valueOf(m2488b(this.f2301i4));
            case 6:
                return Boolean.valueOf(Settings.System.getInt(contentResolver, "screen_brightness_mode") == 1);
            case 7:
                if (f2070z0 == null) {
                    return null;
                }
                return this.f2241Y6.get(f2070z0);
            case WorkspaceProtocol.RELEASE_TASK /* 8 */:
                return Boolean.valueOf(((PowerManager) this.f2301i4.getSystemService(PowerManager.class)).isPowerSaveMode());
            case WorkspaceProtocol.REGISTER_SOURCE /* 9 */:
                int intValue = ((Integer) WifiManager.class.getMethod("getWifiApState", null).invoke(this.f2301i4.getSystemService(WifiManager.class), null)).intValue();
                if (intValue == f1994C0) {
                    return Boolean.TRUE;
                }
                if (intValue == 11) {
                    return Boolean.FALSE;
                }
                return null;
            case '\n':
                return Boolean.valueOf(((LocationManager) this.f2301i4.getSystemService(LocationManager.class)).isLocationEnabled());
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
    /* renamed from: f */
    public /* synthetic */ void m2589f(boolean z) {
        if (this.f2112G3 == z) {
            return;
        }
        this.f2112G3 = z;
        m2642i2();
        m2214Q1();
        ArrayList arrayList = new ArrayList(this.f2156M5.values());
        synchronized (this.f2149L5) {
            arrayList.addAll(this.f2149L5);
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            m2521c(((K) obj).f2449q);
        }
    }

    /* renamed from: s */
    private boolean m2737s() {
        return m2743t() && !this.f2124I1 && this.f2156M5.containsKey(Integer.valueOf(this.f2110G1)) && m2555d(this.f2110G1) && !this.f2129I6.contains(Integer.valueOf(this.f2110G1));
    }

    /* renamed from: v */
    private void m2755v() {
        this.f2181Q2 = false;
        this.f2216V2 = 0;
        this.f2209U2 = 0;
        m2734r1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ Object m2447b(Field field, Field field2, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (field.getInt(chain.getArg(0)) == 0) {
            SurfaceControl surfaceControl = (SurfaceControl) chain.getArg(1);
            this.f2096E1 = field2.get(chain.getArg(0));
            this.f2089D1 = surfaceControl;
            Log.w("DuoRail", "Display area appeared " + surfaceControl);
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda160
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2207P();
                }
            });
        }
        return proceed;
    }

    /* renamed from: x */
    private void m2765x() {
        final Bundle bundle = new Bundle();
        bundle.putBoolean("end", true);
        bundle.putLong("token", this.f2146L2);
        this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2336a(bundle);
            }
        });
    }

    /* renamed from: B */
    public DisplayManager m2782B() {
        return (DisplayManager) this.f2301i4.getSystemService(DisplayManager.class);
    }

    /* renamed from: z */
    public long[] m2792z() {
        long[] jArr;
        synchronized (this.f2351q6) {
            P p = this.f2357r6;
            O o = this.f2327m6;
            if (p != null && o != null) {
                long j = p.f2491p;
                if (j == o.f2474a) {
                    jArr = new long[]{p.f2478c, p.f2487l, p.f2488m, j};
                }
            }
            jArr = new long[]{0, 0, 0, 0};
        }
        return jArr;
    }

    /* renamed from: v */
    private boolean m2756v(String str) {
        if (str == null || RailCodec.f922e.equals(str) || RailCodec.f923f.equals(str)) {
            return false;
        }
        return (str.startsWith("app:") && this.f2301i4.getPackageManager().getLaunchIntentForPackage(str.substring(4)) == null) ? false : true;
    }

    /* renamed from: x */
    private boolean m2767x(int i) {
        return Boolean.TRUE.equals(this.f2219V5.get(Integer.valueOf(i))) && m2651j(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ void m2634i(View view) {
        m2722q();
    }

    /* renamed from: i */
    private void m2636i(ClassLoader classLoader) throws ReflectiveOperationException {
        Class<?> cls = Class.forName("com.android.systemui.shade.NotificationShadeWindowControllerImpl", false, classLoader);
        Class<?> cls2 = Class.forName("com.android.systemui.shade.NotificationShadeWindowState", false, classLoader);
        String[] strArr = {"keyguardShowing", "bouncerShowing", "dozing", "shadeOrQsExpanded", "controlCenterExpanded"};
        final Field[] fieldArr = new Field[5];
        for (int i = 0; i < 5; i++) {
            Field declaredField = cls2.getDeclaredField(strArr[i]);
            fieldArr[i] = declaredField;
            declaredField.setAccessible(true);
        }
        final Field declaredField2 = cls2.getDeclaredField("keyguardOccluded");
        declaredField2.setAccessible(true);
        hook(cls.getDeclaredMethod("apply", cls2)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda76
            public final Object intercept(XposedInterface.Chain chain) {
                Object m2302a;
                m2302a = WorkspaceHooks.this.m2302a(fieldArr, declaredField2, chain);
                return m2302a;
            }
        });
        hook(Dialog.class.getDeclaredMethod("show", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda77
            public final Object intercept(XposedInterface.Chain chain) {
                Object m2598g;
                m2598g = WorkspaceHooks.this.m2598g(chain);
                return m2598g;
            }
        });
        hook(Dialog.class.getDeclaredMethod("hide", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda78
            public final Object intercept(XposedInterface.Chain chain) {
                Object m2615h;
                m2615h = WorkspaceHooks.this.m2615h(chain);
                return m2615h;
            }
        });
        hook(Dialog.class.getDeclaredMethod("dismiss", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda79
            public final Object intercept(XposedInterface.Chain chain) {
                Object m2631i;
                m2631i = WorkspaceHooks.this.m2631i(chain);
                return m2631i;
            }
        });
        Class<?> cls3 = Class.forName("com.android.systemui.statusbar.CommandQueue", false, classLoader);
        for (Method method : cls3.getDeclaredMethods()) {
            if (method.getName().equals("setImeWindowStatus")) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                final int i2 = 1;
                while (true) {
                    if (i2 >= parameterTypes.length) {
                        i2 = -1;
                        break;
                    } else if (parameterTypes[i2] == Integer.TYPE) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (parameterTypes.length != 0 && parameterTypes[0] == Integer.TYPE && i2 >= 0) {
                    hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda80
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object m2277a;
                            m2277a = WorkspaceHooks.this.m2277a(i2, chain);
                            return m2277a;
                        }
                    });
                    Log.w("DuoRail", "IME status hook " + Arrays.toString(parameterTypes));
                }
            }
        }
        hook(cls3.getDeclaredMethod("showShutdownUi", Boolean.TYPE, String.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda81
            public final Object intercept(XposedInterface.Chain chain) {
                Object m2644j;
                m2644j = WorkspaceHooks.this.m2644j(chain);
                return m2644j;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public /* synthetic */ void m2726q(String str) {
        String str2;
        Bundle call;
        try {
            Bundle bundle = new Bundle();
            bundle.putString("set", str);
            str2 = null;
            call = this.f2301i4.getContentResolver().call(Uri.parse("content://dev.duo.hookprobe.config"), "railSidebarApps", (String) null, bundle);
            if (call != null) {
                str2 = call.getString("saved");
            }
        } catch (RuntimeException e) {
            Log.w("DuoRail", "Sidebar pinned save failed", e);
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda39
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2577e0();
                }
            });
        }
        if (!str.equals(str2)) {
            throw new IllegalStateException(call == null ? "no response" : call.getString("error", "saved " + str2));
        }
        Log.w("DuoRail", "Sidebar pinned saved " + str);
        m2206O1();
    }

    /* renamed from: A */
    public Display m2781A() {
        return m2719p0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ Object m2564e(XposedInterface.Chain chain) throws Throwable {
        this.f2193S0 = chain.getThisObject();
        m2616h((ActivityManager.RunningTaskInfo) chain.getArg(0));
        m2516c((ActivityManager.RunningTaskInfo) chain.getArg(0));
        Object proceed = chain.proceed();
        m2422a((ActivityManager.RunningTaskInfo) chain.getArg(0), (SurfaceControl) null);
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m2649j(String str) {
        ComponentName componentName;
        for (ActivityManager.RunningTaskInfo runningTaskInfo : this.f2109G0.values()) {
            ComponentName componentName2 = runningTaskInfo.topActivity;
            if ((componentName2 != null && str.equals(componentName2.getPackageName())) || ((componentName = runningTaskInfo.baseActivity) != null && str.equals(componentName.getPackageName()))) {
                m2309a(runningTaskInfo.taskId, (SurfaceControl.Transaction) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    /*
    */
    public void m2730r() {
        P p;
        double d;
        double d2;
        boolean z;
        int i;
        synchronized (this.f2351q6) {
            p = this.f2357r6;
            this.f2363s6 = false;
        }
        O o = this.f2327m6;
        if (p == null || o == null || p.f2491p != o.f2474a) {
            return;
        }
        if (!m2791v0()) {
            Log.i("DuoSidebar", "Master switch off: native frame connection closed");
            try {
                o.f2475b.close();
                return;
            } catch (IOException e) {
                Log.w("DuoSidebar", "Native frame connection not closed", e);
                return;
            }
        }
        long j = p.f2488m;
        if (j != this.f2375u6) {
            this.f2375u6 = j;
            this.f2381v6 = 0L;
            this.f2387w6 = 0L;
            m2453b(0.0f);
        }
        long j2 = p.f2486k;
        if (j2 > this.f2387w6 && j2 < p.f2485j) {
            m2404a("Home overlay close", false, true, j2);
        }
        long j3 = p.f2485j;
        if (j3 > this.f2381v6) {
            m2307a((float) p.f2482g, (float) p.f2483h, j3);
        }
        long j4 = p.f2486k;
        if (j4 > this.f2387w6 && j4 >= p.f2485j) {
            m2404a("Home overlay close", false, true, j4);
        }
        this.f2381v6 = p.f2485j;
        this.f2387w6 = p.f2486k;
        if (p.f2484i == (this.f2185Q6 ? 1L : 0L) && Double.isFinite(p.f2481f)) {
            double d3 = p.f2481f;
            if (d3 >= 0.0d && d3 <= 1.0d) {
                float f = (float) d3;
                if (f != this.f2171O6) {
                    m2306a(f);
                }
            }
        }
        Consumer<long[]> consumer = this.f2076A6;
        if (consumer != null) {
            d = 1.0d;
            d2 = 0.0d;
            z = true;
            consumer.accept(new long[]{p.f2478c, p.f2487l, p.f2488m, p.f2491p});
        } else {
            d = 1.0d;
            d2 = 0.0d;
            z = true;
        }
        m2465b(m2719p0());
        boolean z2 = (p.f2478c & 4) != 0 ? z : false;
        if (z2 != this.f2369t6) {
            this.f2369t6 = z2;
            Log.i("DuoSidebar", "home editing=" + z2);
            if (this.f2083C1) {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    m2425a(transaction);
                    transaction.apply();
                    transaction.close();
                } finally {
                }
            }
        }
        if (!m2727q0()) {
            return;
        }
        double d4 = p.f2479d;
        long j5 = p.f2487l;
        long j6 = p.f2489n;
        long j7 = p.f2488m;
        int i2 = p.f2477b;
        int i3 = this.f2273d6;
        if (j5 <= 0 || j5 < this.f2291g6 || j7 <= 0 || j6 <= 0 || !Double.isFinite(d4) || d4 < d2 || d4 > d || !Double.isFinite(p.f2480e)) {
            return;
        }
        if (j7 != this.f2321l6) {
            this.f2321l6 = j7;
            this.f2315k6 = 0L;
            this.f2309j6 = 0L;
        }
        if (j6 < this.f2315k6 || j6 < this.f2309j6) {
            return;
        }
        this.f2309j6 = j6;
        this.f2291g6 = j5;
        this.f2345p6 = o.f2474a;
        boolean z3 = (p.f2476a != 0 || (p.f2478c & 1) == 0 || i2 < 0 || i2 > 2) ? false : z;
        this.f2261b6 = z3;
        this.f2273d6 = i2;
        boolean z4 = (p.f2478c & 2) != 0 ? z : false;
        this.f2267c6 = z4;
        if (i2 != 0) {
            this.f2233X5 = false;
        } else if (z3 && z4 && !this.f2124I1) {
            this.f2233X5 = z;
        }
        this.f2285f6 = (float) d4;
        this.f2297h6++;
        this.f2303i6 = Math.max(this.f2303i6, SystemClock.uptimeMillis() - j5);
        if (i2 != 2) {
            i = 1;
        } else {
            if (this.f2261b6) {
                m2403a("official Dock Recents", true, false);
                if (!this.f2083C1) {
                    SurfaceControl.Transaction transaction2 = new SurfaceControl.Transaction();
                    try {
                        m2425a(transaction2);
                        transaction2.apply();
                        transaction2.close();
                    } finally {
                    }
                } else {
                    m2689m2();
                }
                if (i2 == this.f2279e6) {
                    this.f2279e6 = i2;
                    Log.i("DuoSidebar", "scene=" + i2 + " valid=" + this.f2261b6 + " run=" + this.f2267c6 + " progress=" + d4 + " native=" + p.f2480e + " app=" + this.f2114G5 + " home=" + this.f2124I1 + " epoch=" + j6 + " recents=" + this.f2136J6 + " frames=" + this.f2297h6 + " delayMs=" + (SystemClock.uptimeMillis() - j5));
                    return;
                }
                return;
            }
            i = 1;
        }
        if (i2 == i && i3 == 2 && this.f2261b6) {
            m2403a("official Dock App", false, false);
        } else if (i2 == 0 && i3 == 2 && this.f2261b6) {
            m2403a("official Dock Home", false, false);
        }
        if (!this.f2083C1) {
        }
        if (i2 == this.f2279e6) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ Object m2449b(Method method, Method method2, XposedInterface.Chain chain) throws Throwable {
        this.f2193S0 = chain.getThisObject();
        m2616h((ActivityManager.RunningTaskInfo) method.invoke(chain.getArg(0), null));
        m2516c((ActivityManager.RunningTaskInfo) method.invoke(chain.getArg(0), null));
        Object proceed = chain.proceed();
        Object arg = chain.getArg(0);
        m2422a((ActivityManager.RunningTaskInfo) method.invoke(arg, null), (SurfaceControl) method2.invoke(arg, null));
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m2554d(boolean z) {
        if (!this.f2243Z1.isEmpty()) {
            m2663k(this.f2243Z1);
        }
        if (!this.f2179Q0 || z == this.f2311k2) {
            return;
        }
        this.f2311k2 = z;
        String str = z ? "dark mode on" : "dark mode off";
        if (!this.f2124I1) {
            m2553d(this.f2103F1, str);
        }
        m2674l(str);
    }

    /* renamed from: f */
    private ActivityOptions m2581f(String str) throws ReflectiveOperationException {
        return (ActivityOptions) Class.forName("android.util.MiuiMultiWindowUtils").getMethod("getActivityOptions", Context.class, String.class, Boolean.TYPE).invoke(null, this.f2301i4, str, Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m2602g(View view) {
        m2152B1();
    }

    /* renamed from: l */
    private void m2669l() throws ReflectiveOperationException {
        m2699n1();
        this.f2301i4 = (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
        m2194L1();
        final h0 h0Var = new h0(this.f2301i4);
        this.f2221W0 = h0Var;
        h0Var.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda40
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WorkspaceHooks.this.m2671l(view);
            }
        });
        h0Var.m2890a(new Consumer() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda41
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WorkspaceHooks.this.m2682m((View) obj);
            }
        });
        R r = new R("status", h0Var, 963.0f, f2012T, 205, h0.f2666D, 0, 0.0f, 40);
        this.f2164N6 = r;
        this.f2295h4.add(r);
        U u = new U(this.f2301i4);
        this.f2400z1 = u;
        N n = new N(50.0f);
        this.f2398y5 = n;
        u.setBackground(n);
        u.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda42
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WorkspaceHooks.this.m2693n(view);
            }
        });
        u.setOnLongClickListener(new View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda43
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean m2708o;
                m2708o = WorkspaceHooks.this.m2708o(view);
                return m2708o;
            }
        });
        u.setVisibility(this.f2119H3 ? 0 : 8);
        R r2 = new R(this, "search", u, 1011.0f, 1544, 100, 100, 5, 50.0f);
        this.f2404z5 = r2;
        this.f2295h4.add(r2);
        this.f2392x5.add(this.f2404z5);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_TICK");
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        this.f2301i4.registerReceiver(new C0178h(), new IntentFilter(f2068y0), null, this.f2071A1, 2);
        this.f2301i4.registerReceiver(new C0179i(h0Var), intentFilter, null, this.f2071A1);
        Runnable runnable = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2366a(h0Var);
            }
        };
        this.f2301i4.getContentResolver().registerContentObserver(Settings.System.getUriFor("battery_indicator_style"), false, new C0180j(this.f2071A1, runnable));
        runnable.run();
        Runnable runnable2 = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2474b(h0Var);
            }
        };
        this.f2301i4.getContentResolver().registerContentObserver(Settings.Global.getUriFor("airplane_mode_on"), false, new C0183m(this.f2071A1, runnable2));
        runnable2.run();
        try {
            this.f2301i4.getContentResolver().registerContentObserver(f2043m, false, new C0184n(this.f2071A1));
        } catch (RuntimeException e) {
            Log.w("DuoRail", "Status style observer unavailable", e);
        }
        m2245Y1();
        m2642i2();
        try {
            this.f2228X0 = new f0(h0Var);
            ((SubscriptionManager) this.f2301i4.getSystemService(SubscriptionManager.class)).addOnSubscriptionsChangedListener(this.f2301i4.getMainExecutor(), this.f2228X0);
        } catch (Throwable th) {
            Log.w("DuoRail", "Signal level unavailable", th);
        }
        final WifiManager wifiManager = (WifiManager) this.f2301i4.getSystemService(WifiManager.class);
        Runnable runnable3 = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2335a(wifiManager, h0Var);
            }
        };
        Runnable runnable4 = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2368a(h0Var, wifiManager);
            }
        };
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter2.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter2.addAction("android.net.wifi.RSSI_CHANGED");
        this.f2301i4.registerReceiver(new C0185o(runnable4), intentFilter2, null, this.f2071A1);
        runnable3.run();
        ((ConnectivityManager) this.f2301i4.getSystemService(ConnectivityManager.class)).registerDefaultNetworkCallback(new C0186p(h0Var, runnable3), this.f2071A1);
        this.f2235Y0 = new C0182l(h0Var);
        ((TelephonyManager) this.f2301i4.getSystemService(TelephonyManager.class)).registerTelephonyCallback(this.f2301i4.getMainExecutor(), this.f2235Y0);
        IntentFilter intentFilter3 = new IntentFilter();
        intentFilter3.addAction("android.intent.action.SCREEN_OFF");
        intentFilter3.addAction("android.intent.action.SCREEN_ON");
        intentFilter3.addAction("android.intent.action.USER_PRESENT");
        intentFilter3.addAction("android.intent.action.CONFIGURATION_CHANGED");
        intentFilter3.addAction("android.intent.action.ACTION_SHUTDOWN");
        this.f2301i4.registerReceiver(new C0187q(), intentFilter3, null, this.f2071A1);
        this.f2301i4.getContentResolver().registerContentObserver(Uri.parse("content://dev.duo.hookprobe.config/standbyClock"), false, new C0188r(this.f2071A1));
        m2710o1();
        m2241X1();
    }

    /* renamed from: g */
    private void m2601g(final int i) {
        this.f2205T5.remove(Integer.valueOf(i));
        this.f2389x2.remove(Integer.valueOf(i));
        this.f2317l2.remove(Integer.valueOf(i));
        this.f2219V5.remove(Integer.valueOf(i));
        this.f2200T0.remove(Integer.valueOf(i));
        this.f2347q2.remove(Integer.valueOf(i));
        this.f2170O5.remove(Integer.valueOf(i));
        this.f2123I0.remove(Integer.valueOf(i));
        this.f2109G0.remove(Integer.valueOf(i));
        this.f2116H0.add(Integer.valueOf(i));
        if (this.f2116H0.size() > 256) {
            this.f2116H0.removeIf(new Predicate() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda75
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m2419a;
                    m2419a = WorkspaceHooks.m2419a(i, (Integer) obj);
                    return m2419a;
                }
            });
        }
    }

    /* renamed from: j */
    private boolean m2651j(int i) {
        return m2624h(m2599g(this.f2109G0.get(Integer.valueOf(i))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ Object m2690n(XposedInterface.Chain chain) throws Throwable {
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
        final boolean z = (packageName.isEmpty() || str2.isEmpty() || "com.miui.home".equals(packageName) || "com.miui.home".equals(str2) || rect2 == null || rect2.width() != f2007O || rect2.height() != f2008P) ? false : true;
        final ActivityManager.RunningTaskInfo runningTaskInfo3 = z ? runningTaskInfo : null;
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda186
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2331a(runningTaskInfo3, z, packageName, str2);
            }
        });
        final int i = (((Boolean) chain.getArg(6)).booleanValue() || rect2 == null || rect2.width() != f2007O || rect2.height() != f2008P || rect == null || rect.isEmpty() || rect.width() >= rect2.width() || !rect2.contains(rect) || rect.top != rect2.top || rect.bottom != rect2.bottom) ? -1 : rect2.right - rect.right;
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda187
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2692n(i);
            }
        });
        return proceed;
    }

    /* renamed from: E */
    private boolean m2164E(int i) {
        Integer num;
        if (i == this.f2078B2 && m2727q0() && m2651j(this.f2084C2)) {
            i0 i0Var = this.f2104F2.get(this.f2090D2);
            List<int[]> m2305a = i0Var == null ? Collections.EMPTY_LIST : m2305a(i0Var, this.f2097E2, m2252a(this.f2084C2));
            if (m2305a.isEmpty()) {
                num = null;
            } else {
                Integer num2 = this.f2111G2.get(this.f2097E2);
                num = Integer.valueOf(i0Var.f2747f.contains(this.f2097E2) ? m2252a(this.f2084C2) : m2305a.get(0)[1]);
                for (int[] iArr : m2305a) {
                    if (num2 != null && iArr[1] == num2.intValue()) {
                        num = num2;
                    }
                }
            }
            m2513c(this.f2084C2, (num == null || num.intValue() == m2252a(this.f2084C2)) ? 0 : num.intValue());
            if (num != null) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Thread m2304a(Runnable runnable) {
        Thread thread = new Thread(runnable, "DuoConfigLookup");
        thread.setDaemon(true);
        return thread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m2571e(boolean z) {
        this.f2263c2 = z;
        if (this.f2243Z1.isEmpty()) {
            return;
        }
        m2663k(this.f2243Z1);
    }

    /* renamed from: f */
    private static boolean m2591f(ActivityManager.RunningTaskInfo runningTaskInfo) throws ReflectiveOperationException {
        Object obj = runningTaskInfo.getClass().getField("configuration").get(runningTaskInfo);
        Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
        Rect rect = (Rect) obj2.getClass().getMethod("getBounds", null).invoke(obj2, null);
        return rect != null && rect.width() == 1168 && rect.height() == 1712;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2280a(Class cls, Class cls2, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        Integer num = this.f2353r2.get();
        if (num != null && (proceed instanceof SurfaceControl) && m2767x(num.intValue())) {
            int m2747u = m2747u(num.intValue());
            try {
                cls.getMethod("setColor", cls2, float[].class).invoke(chain.getArg(0), proceed, new float[]{Color.red(m2747u) / 255.0f, Color.green(m2747u) / 255.0f, Color.blue(m2747u) / 255.0f});
                Log.w("DuoRail", "Letterbox colour at creation task=" + num + " color=" + Integer.toHexString(m2747u) + " surface=" + chain.getArg(2));
                return proceed;
            } catch (Throwable th) {
                Log.w("DuoRail", "Letterbox colour at creation failed task=" + num, th);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m2646j(View view) {
        m2755v();
        m2411a(true, (Rect) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m2484b(final String str, String str2) {
        long m2136a = this.f2130J0.m2136a();
        WindowModeCache.b m2272a = m2272a(str, str2);
        this.f2151M0.remove(str);
        if (m2272a == null) {
            this.f2158N0.put(str, Long.valueOf(SystemClock.uptimeMillis()));
            return;
        }
        this.f2158N0.remove(str);
        this.f2071A1.post(new b$$ExternalSyntheticLambda99(this));
        if (this.f2130J0.m2140b(str, m2272a, m2136a)) {
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda100
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2718p(str);
                }
            });
        }
    }

    /* renamed from: e */
    private void m2568e(final R r) {
        r.f2516n = true;
        Handler handler = this.f2186R0 == null ? this.f2071A1 : this.f2186R0;
        Runnable runnable = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda126
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2362a(r);
            }
        };
        if (handler.post(runnable)) {
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ Object m2644j(XposedInterface.Chain chain) throws Throwable {
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2212Q();
            }
        });
        return chain.proceed();
    }

    /* renamed from: t */
    private boolean m2743t() {
        return this.f2184Q5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ Object m2507c(Field field, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        int i = field.getInt(chain.getArg(0));
        this.f2163N5.remove(Integer.valueOf(i));
        this.f2177P5.remove(Integer.valueOf(i));
        try {
            m2454b(i, (SurfaceControl.Transaction) chain.getArg(1));
        } catch (Throwable th) {
            Log.w("DuoRail", "App rail decor detach skipped task=" + i, th);
        }
        if (this.f2341p2.remove(Integer.valueOf(i)) != null) {
            m2457b(i, "destroy");
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void m2718p(final String str) {
        ArrayList arrayList = new ArrayList(this.f2109G0.values());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) obj;
            if (str.equals(m2599g(runningTaskInfo))) {
                m2777z(runningTaskInfo.taskId);
            }
        }
        Handler handler = this.f2186R0;
        if (handler != null) {
            handler.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda102
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2649j(str);
                }
            });
        }
        WindowModeCache.b m2139b = this.f2130J0.m2139b(str);
        if (m2139b != null && !this.f2124I1 && str.equals(this.f2103F1)) {
            m2410a(m2139b.f1984b);
        }
        if (str.equals(this.f2243Z1)) {
            m2663k(str);
        }
        m2207P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public void m2519c(K k) {
        try {
            R r = k.f2434b;
            if (r != null) {
                r.m2818b();
            }
            try {
                SurfaceControl surfaceControl = k.f2448p;
                if (surfaceControl != null) {
                    surfaceControl.release();
                }
            } finally {
                SurfaceControl surfaceControl2 = k.f2433a;
                if (surfaceControl2 != null) {
                    surfaceControl2.release();
                }
            }
        } catch (Throwable th) {
            try {
                SurfaceControl surfaceControl3 = k.f2448p;
                if (surfaceControl3 != null) {
                    surfaceControl3.release();
                }
                SurfaceControl surfaceControl4 = k.f2433a;
                if (surfaceControl4 != null) {
                    surfaceControl4.release();
                }
                throw th;
            } finally {
                SurfaceControl surfaceControl5 = k.f2433a;
                if (surfaceControl5 != null) {
                    surfaceControl5.release();
                }
            }
        }
    }

    /* renamed from: j */
    private void m2645j() {
        final Intent launchIntentForPackage;
        if (m2727q0() && this.f2289g4.isEmpty()) {
            FrameLayout frameLayout = new FrameLayout(this.f2301i4);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(956301311);
            gradientDrawable.setStroke(2, 1090519039);
            gradientDrawable.setCornerRadius(60.0f);
            frameLayout.setBackground(gradientDrawable);
            this.f2397y4 = gradientDrawable;
            String[][] strArr = {new String[]{"dial", ""}, new String[]{"pkg", "com.android.browser"}, new String[]{"pkg", "com.android.mms"}, new String[]{"pkg", "com.miui.player"}};
            PackageManager packageManager = this.f2301i4.getPackageManager();
            for (int i = 0; i < 4; i++) {
                if ("dial".equals(strArr[i][0])) {
                    launchIntentForPackage = new Intent("android.intent.action.DIAL");
                } else {
                    launchIntentForPackage = packageManager.getLaunchIntentForPackage(strArr[i][1]);
                }
                if (launchIntentForPackage != null) {
                    launchIntentForPackage.addFlags(268435456);
                    ImageView imageView = new ImageView(this.f2301i4);
                    try {
                        imageView.setImageDrawable(packageManager.getActivityIcon(launchIntentForPackage));
                    } catch (Exception e) {
                        Log.w("DuoRail", "icon", e);
                    }
                    imageView.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda179
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            WorkspaceHooks.this.m2333a(launchIntentForPackage, view);
                        }
                    });
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(120, 120);
                    layoutParams.gravity = 1;
                    layoutParams.topMargin = (i * 162) + 30;
                    frameLayout.addView(imageView, layoutParams);
                }
            }
            R r = new R(this, RailCodec.f923f, frameLayout, 971.0f, 626, 180, 665, 60, 60.0f);
            this.f2368t5 = r;
            this.f2295h4.add(r);
            m2417a(strArr);
            Log.w("DuoLegacyDock", "outer rebuilt hosts=" + m2733r0() + " epoch=" + this.f2277e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.workspaceprobe.b$K */
    final class K {

        /* renamed from: a */
        SurfaceControl f2433a;

        /* renamed from: b */
        R f2434b;

        /* renamed from: c */
        FrameLayout f2435c;

        /* renamed from: d */
        FrameLayout f2436d;

        /* renamed from: e */
        final ArrayList<J> f2437e;

        /* renamed from: f */
        boolean f2438f;

        /* renamed from: g */
        S f2439g;

        /* renamed from: h */
        final ImageView[] f2440h;

        /* renamed from: i */
        FrameLayout f2441i;

        /* renamed from: j */
        LinearLayout f2442j;

        /* renamed from: k */
        c0 f2443k;

        /* renamed from: l */
        long f2444l;

        /* renamed from: m */
        long f2445m;

        /* renamed from: n */
        FrameLayout f2446n;

        /* renamed from: o */
        boolean f2447o;

        /* renamed from: p */
        SurfaceControl f2448p;

        /* renamed from: q */
        h0 f2449q;

        /* renamed from: r */
        U f2450r;

        /* renamed from: s */
        N f2451s;

        /* renamed from: t */
        volatile int f2452t;

        /* renamed from: u */
        int f2453u;

        /* renamed from: v */
        long f2454v;

        /* renamed from: w */
        int f2455w;

        /* renamed from: x */
        int f2456x;

        /* renamed from: y */
        volatile int f2457y;

        /* renamed from: z */
        float f2458z;

        private K() {
            this.f2437e = new ArrayList<>();
            this.f2440h = new ImageView[3];
            this.f2444l = -1L;
            this.f2445m = -1L;
            this.f2452t = -1;
            this.f2454v = -1L;
            this.f2455w = -1;
            this.f2457y = -1;
            this.f2458z = Float.NaN;
        }

        /* synthetic */ K(WorkspaceHooks c0143b, C0181k c0181k) {
            this();
        }
    }

    /* renamed from: b */
    private void m2486b(Set<String> set) {
        try {
            ActivityManager activityManager = (ActivityManager) this.f2301i4.getSystemService(ActivityManager.class);
            Method method = ActivityManager.class.getMethod("forceStopPackageAsUser", String.class, Integer.TYPE);
            HashSet hashSet = new HashSet();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                int i = runningAppProcessInfo.uid / 100000;
                for (String str : runningAppProcessInfo.pkgList) {
                    if (set.contains(str) && hashSet.add(str + ":" + i)) {
                        method.invoke(activityManager, str, Integer.valueOf(i));
                        Log.w("DuoRail", "Duo switch restart pkg=" + str + " user=" + i);
                    }
                }
            }
        } catch (Throwable th) {
            Log.w("DuoRail", "Duo switch restart failed " + set, th);
        }
    }

    /* renamed from: k */
    private void m2659k() {
        LinearLayout linearLayout = new LinearLayout(this.f2301i4);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(18, 12, 18, 12);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-394759);
        gradientDrawable.setCornerRadius(22.0f);
        gradientDrawable.setStroke(2, -4604217);
        linearLayout.setBackground(gradientDrawable);
        TextView textView = new TextView(this.f2301i4);
        this.f2251a3 = textView;
        textView.setTextSize(14.0f);
        this.f2251a3.setTextColor(-14671580);
        linearLayout.addView(this.f2251a3, new LinearLayout.LayoutParams(-1, 60));
        final float[] fArr = new float[4];
        this.f2251a3.setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda91
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m2434a;
                m2434a = WorkspaceHooks.this.m2434a(fArr, view, motionEvent);
                return m2434a;
            }
        });
        TextView textView2 = new TextView(this.f2301i4);
        this.f2258b3 = textView2;
        textView2.setTextSize(12.0f);
        this.f2258b3.setTextColor(-11183260);
        this.f2258b3.setMaxLines(2);
        linearLayout.addView(this.f2258b3, new LinearLayout.LayoutParams(-1, 104));
        LinearLayout linearLayout2 = new LinearLayout(this.f2301i4);
        linearLayout2.addView(m2271a("取色", new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda92
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WorkspaceHooks.this.m2586f(view);
            }
        }), new LinearLayout.LayoutParams(0, 78, 1.0f));
        linearLayout2.addView(m2271a("点选位置", new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda93
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WorkspaceHooks.this.m2602g(view);
            }
        }), new LinearLayout.LayoutParams(0, 78, 1.0f));
        linearLayout2.addView(m2271a("结束", new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda94
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WorkspaceHooks.this.m2617h(view);
            }
        }), new LinearLayout.LayoutParams(0, 78, 1.0f));
        linearLayout.addView(linearLayout2);
        LinearLayout linearLayout3 = new LinearLayout(this.f2301i4);
        this.f2264c3 = m2271a("正确，保存", new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda95
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WorkspaceHooks.this.m2634i(view);
            }
        });
        this.f2270d3 = m2271a("不对，重取", new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda96
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WorkspaceHooks.this.m2646j(view);
            }
        });
        TextView m2271a = m2271a("跳过", new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda97
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WorkspaceHooks.this.m2661k(view);
            }
        });
        this.f2276e3 = m2271a;
        TextView[] textViewArr = {this.f2264c3, this.f2270d3, m2271a};
        for (int i = 0; i < 3; i++) {
            linearLayout3.addView(textViewArr[i], new LinearLayout.LayoutParams(0, 78, 1.0f));
        }
        linearLayout.addView(linearLayout3);
        this.f2237Y2 = new R("pick_mode", linearLayout, 90.0f, 90, 780, 350, 0, 22.0f, 40);
    }

    /* renamed from: q */
    private static void m2724q(View view) {
        view.performHapticFeedback(1);
    }

    /* renamed from: c */
    private void m2516c(ActivityManager.RunningTaskInfo runningTaskInfo) {
        Object obj;
        if (runningTaskInfo == null) {
            return;
        }
        m2543d(runningTaskInfo);
        if (m2651j(runningTaskInfo.taskId)) {
            try {
                if (m2591f(runningTaskInfo) && (obj = runningTaskInfo.getClass().getField("appCompatTaskInfo").get(runningTaskInfo)) != null) {
                    Field field = obj.getClass().getField("miuiShouldShowBlurWallpaper");
                    obj.getClass().getField("miuiLetterboxBackgroundType").setInt(obj, 1);
                    if (field.getBoolean(obj)) {
                        field.setBoolean(obj, false);
                        if (this.f2200T0.add(Integer.valueOf(runningTaskInfo.taskId))) {
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
    /* renamed from: q */
    public /* synthetic */ void m2723q(int i) {
        if (this.f2278e5 == i) {
            return;
        }
        this.f2278e5 = i;
        m2772y();
    }

    /* renamed from: E */
    public Bundle m2786E() throws ReflectiveOperationException {
        R r;
        R r2;
        boolean z;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        Object obj = null;
        boolean z2 = false;
        m2789a((Bundle) null, false);
        if (this.f2301i4 != null && (r = this.f2164N6) != null && (r2 = this.f2404z5) != null) {
            R[] rArr = {r, r2};
            for (int i = 0; i < 2; i++) {
                R r3 = rArr[i];
                if (!r3.f2504b.isValid()) {
                    return m2563e("侧栏图层已失效 " + r3.f2505c);
                }
            }
            Point point = new Point();
            m2719p0().getRealSize(point);
            Bundle bundle = new Bundle();
            bundle.putInt("width", point.x);
            bundle.putInt("height", point.y);
            bundle.putBoolean("editing", this.f2369t6);
            synchronized (this.f2351q6) {
                P p = this.f2357r6;
                bundle.putInt("contentFlags", p == null ? 0 : p.f2478c);
            }
            float f6 = this.f2164N6.f2507e + 98.0f;
            R r4 = this.f2404z5;
            float f7 = 158.0f;
            bundle.putFloatArray("coverGeometry", new float[]{1168.0f, 1712.0f, f6, (r4.f2510h - 7) + (r4.f2509g / 2.0f), this.f2126I3[0] + 158.0f + 146.0f, Math.min(this.f2164N6.f2507e, this.f2404z5.f2507e)});
            float f8 = 1175.0f;
            float f9 = this.f2164N6.f2507e + 1175.0f + f2010R + 98.0f;
            R r5 = this.f2404z5;
            float f10 = r5.f2510h + f2016X + (r5.f2509g / 2.0f);
            float f11 = this.f2126I3[2];
            float f12 = f2011S;
            bundle.putFloatArray("innerGeometry", new float[]{2364.0f, 1672.0f, f9, f10, f11 + f2011S + 146.0f, Math.min(this.f2164N6.f2507e, this.f2404z5.f2507e) + 1175.0f + f2010R});
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            bundle.putParcelableArrayList("layers", arrayList);
            try {
                R[] rArr2 = {this.f2164N6, this.f2404z5};
                int i2 = 0;
                while (i2 < 2) {
                    R r6 = rArr2[i2];
                    if (r6 != this.f2404z5 || this.f2119H3) {
                        SurfaceControl surfaceControl = (SurfaceControl) SurfaceControl.class.getDeclaredMethod("mirrorSurface", SurfaceControl.class).invoke(obj, r6.f2504b);
                        Bundle bundle2 = new Bundle();
                        bundle2.putParcelable("mirror", surfaceControl);
                        arrayList.add(bundle2);
                        bundle2.putString("name", r6.f2505c);
                        int i3 = r6 == this.f2164N6 ? h0.f2666D : r6.f2509g;
                        f = f12;
                        f2 = f7;
                        f3 = f8;
                        z = z2;
                        try {
                            bundle2.putParcelable("frame", new Rect(Math.round(m2502c(r6)), Math.round(m2536d(r6)), Math.round(m2502c(r6)) + r6.f2508f, Math.round(m2536d(r6)) + i3));
                            float m2502c = m2502c(r6);
                            float m2536d = m2536d(r6);
                            float[] fArr = new float[2];
                            fArr[z ? 1 : 0] = m2502c;
                            fArr[1] = m2536d;
                            bundle2.putFloatArray("position", fArr);
                            bundle2.putInt("width", r6.f2508f);
                            bundle2.putInt("height", i3);
                            float f13 = r6.f2507e;
                            if (r6 == this.f2164N6) {
                                f4 = this.f2126I3[z ? 1 : 0] + f2;
                            } else {
                                f4 = r6.f2510h - 7;
                            }
                            float f14 = r6.f2508f;
                            float f15 = i3;
                            float[] fArr2 = new float[4];
                            fArr2[z ? 1 : 0] = f13;
                            fArr2[1] = f4;
                            fArr2[2] = f14;
                            fArr2[3] = f15;
                            bundle2.putFloatArray("coverFrame", fArr2);
                            float f16 = r6.f2507e + f3 + f2010R;
                            if (r6 == this.f2164N6) {
                                f5 = this.f2126I3[2] + f;
                            } else {
                                f5 = r6.f2510h + f2016X;
                            }
                            float f17 = r6.f2508f;
                            float[] fArr3 = new float[4];
                            fArr3[z ? 1 : 0] = f16;
                            fArr3[1] = f5;
                            fArr3[2] = f17;
                            fArr3[3] = f15;
                            bundle2.putFloatArray("innerFrame", fArr3);
                            bundle2.putInt("blur", r6.f2511i);
                            bundle2.putFloat("corner", r6.f2512j);
                            float f18 = 0.0f;
                            float m2762w0 = (!this.f2083C1 || this.f2369t6 || m2750u()) ? 0.0f : m2762w0();
                            if (r6 != this.f2404z5 || !this.f2115G6) {
                                f18 = m2762w0;
                            }
                            bundle2.putFloat("alpha", f18);
                            bundle2.putFloat("scale", r6 == this.f2404z5 ? (f18 * 0.06f) + 0.94f : 1.0f);
                        } catch (ReflectiveOperationException | RuntimeException e) {
                            e = e;
                            Exception exc = e;
                            try {
                                m2789a(bundle, z);
                                throw exc;
                            } catch (ReflectiveOperationException e2) {
                                exc.addSuppressed(e2);
                                throw exc;
                            }
                        }
                    } else {
                        z = z2;
                        f = f12;
                        f2 = f7;
                        f3 = f8;
                    }
                    i2++;
                    f12 = f;
                    f7 = f2;
                    f8 = f3;
                    z2 = z;
                    obj = null;
                }
                return bundle;
            } catch (ReflectiveOperationException | RuntimeException e3) {
                e = e3;
                z = z2;
            }
        } else {
            return m2563e("侧栏尚未建立");
        }
    }

    /* renamed from: e */
    private void m2567e(K k) {
        final WorkspaceHooks c0143b = this;
        String[] strArr = c0143b.f2198S5;
        ArrayList<J> arrayList = k.f2437e;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            J j = arrayList.get(i);
            i++;
            k.f2435c.removeView(j);
        }
        k.f2437e.clear();
        k.f2444l = -1L;
        int m955e = RailCodec.m955e(strArr);
        int m953d = RailCodec.m953d(strArr);
        if (m953d > 0) {
            m2354a(k);
        } else {
            FrameLayout frameLayout = k.f2441i;
            if (frameLayout != null) {
                frameLayout.setVisibility(8);
            }
        }
        k.f2438f = false;
        int i2 = Color.luminance(k.f2452t >= 0 ? c0143b.m2747u(k.f2452t) : f2019a) <= 0.45f ? 1 : 0;
        int m2441b = m2441b(0);
        int i3 = 0;
        int i4 = -1;
        while (i3 < strArr.length) {
            final String str = strArr[i3];
            if (i3 == m955e) {
                m2441b += c0143b.m2162D1() + 14;
                i3 += m953d - 1;
            } else if (RailCodec.f923f.equals(str)) {
                if (i4 < 0) {
                    i4 = m2441b;
                }
                m2441b += m2537d() + 30;
                i3 += 2;
            } else {
                if (str != null && !RailCodec.f922e.equals(str)) {
                    if (c0143b.m2756v(str)) {
                        J j2 = new J(c0143b, c0143b.f2301i4, str);
                        j2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda73
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                WorkspaceHooks.this.m2552d(str, view);
                            }
                        });
                        if (str.startsWith("wechat") || str.startsWith("alipay")) {
                            final String str2 = str + ".pay";
                            j2.setOnLongClickListener(new View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda74
                                @Override // android.view.View.OnLongClickListener
                                public final boolean onLongClick(View view) {
                                    boolean m2575e;
                                    m2575e = WorkspaceHooks.this.m2575e(str2, view);
                                    return m2575e;
                                }
                            });
                        }
                        j2.m2808a(i2 != 0 ? -1 : -13618632, i2 ^ 1);
                        k.f2437e.add(j2);
                        c0143b.m2357a(k, j2, 993.0f, m2441b, 136, 136, 0.0f);
                    }
                }
                m2441b += f2032g0;
            }
            i3++;
            c0143b = this;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) k.f2436d.getLayoutParams();
        layoutParams.width = 180;
        layoutParams.height = m2537d();
        k.f2436d.setLayoutParams(layoutParams);
        k.f2438f = i4 >= 0;
        if (i4 >= 0) {
            k.f2436d.setX(8.0f);
            k.f2436d.setY(i4 + f2063w);
        }
        k.f2436d.setVisibility((i4 < 0 || k.f2453u <= 0) ? 4 : 0);
        k.f2455w = -1;
        if (k.f2452t >= 0) {
            m2546d(k);
        }
        k.f2435c.requestLayout();
        k.f2435c.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ Object m2598g(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        final Object thisObject = chain.getThisObject();
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda122
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2480b(thisObject);
            }
        });
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ void m2706o(final String str) {
        long m2136a = this.f2130J0.m2136a();
        WindowModeCache.b m2272a = m2272a(str, "app notified");
        if (m2272a == null) {
            return;
        }
        this.f2071A1.post(new b$$ExternalSyntheticLambda99(this));
        WindowModeCache.a m2137a = this.f2130J0.m2137a(str, m2272a, m2136a);
        if (m2137a == null) {
            return;
        }
        if (m2137a.m2141a(m2272a)) {
            m2486b(Collections.singleton(str));
        }
        if (m2137a.f1982b) {
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda138
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2696n(str);
                }
            });
        }
    }

    /* renamed from: f */
    private void m2588f(ClassLoader classLoader) {
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
                    Object m2298a;
                    m2298a = WorkspaceHooks.this.m2298a(method, method3, method4, method2, chain);
                    return m2298a;
                }
            });
            hook(cls.getDeclaredMethod("onFinish", IBinder.class, Class.forName("android.window.WindowContainerTransaction", false, classLoader))).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda200
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2445b;
                    m2445b = WorkspaceHooks.this.m2445b(chain);
                    return m2445b;
                }
            });
            hook(cls.getDeclaredMethod("onTransitionAbort", IBinder.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda201
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2506c;
                    m2506c = WorkspaceHooks.this.m2506c(chain);
                    return m2506c;
                }
            });
            Log.w("DuoRail", "Mode transition hooks ready");
        } catch (ReflectiveOperationException e) {
            Log.w("DuoRail", "No mode transition hooks", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m2607g(boolean z) {
        if (this.f2245Z3 == z) {
            return;
        }
        this.f2245Z3 = z;
        m2641i1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2301a(boolean z, Method method, XposedInterface.Chain chain) throws Throwable {
        ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) chain.getArg(0);
        m2516c(runningTaskInfo);
        Object proceed = chain.proceed();
        if (z && m2421a(runningTaskInfo)) {
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

    /* renamed from: g */
    private void m2605g(ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.systemui.statusbar.notification.MiuiNotificationListener", false, classLoader);
            Method[] methodArr = {cls.getDeclaredMethod("onListenerConnected", null), cls.getDeclaredMethod("onNotificationPosted", StatusBarNotification.class, NotificationListenerService.RankingMap.class), cls.getDeclaredMethod("onNotificationRemoved", StatusBarNotification.class, NotificationListenerService.RankingMap.class, Integer.TYPE)};
            for (int i = 0; i < 3; i++) {
                Method method = methodArr[i];
                final boolean equals = method.getName().equals("onNotificationPosted");
                hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda147
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object m2300a;
                        m2300a = WorkspaceHooks.this.m2300a(equals, chain);
                        return m2300a;
                    }
                });
            }
            Log.i("DuoRail", "Notification icon hooks ready");
        } catch (Throwable th) {
            Log.w("DuoRail", "Notification icon hooks unavailable", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ Object m2539d(Field field, Field field2, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        int i = 0;
        int i2 = field.getInt(chain.getArg(0));
        Map map = (Map) field2.get(chain.getThisObject());
        if (map != null && map.containsKey(Integer.valueOf(i2))) {
            Rect rect = (Rect) chain.getArg(2);
            Rect rect2 = (Rect) chain.getArg(3);
            if (rect != null && rect2 != null && !rect2.isEmpty()) {
                i = Math.max(0, rect.right - rect2.right);
            }
            int i3 = i;
            Integer num = this.f2341p2.get(Integer.valueOf(i2));
            int intValue = (i3 << 1) | (num == null ? 1 : num.intValue() & 1);
            if (num == null || num.intValue() != intValue) {
                this.f2341p2.put(Integer.valueOf(i2), Integer.valueOf(intValue));
                m2457b(i2, "bounds");
            }
            try {
                m2310a(i2, (SurfaceControl.Transaction) chain.getArg(1), rect, rect2, i3);
                return proceed;
            } catch (Throwable th) {
                Log.w("DuoRail", "App rail decor bounds skipped task=" + i2, th);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ void m2704o(int i) {
        int m2747u;
        int m2442b;
        if (m2651j(i) && (m2442b = m2442b(i, (m2747u = m2747u(i)))) >= 0) {
            Integer num = this.f2389x2.get(Integer.valueOf(i));
            Log.w("DuoRail", "Letterbox colour repainted task=" + i + " color=" + Integer.toHexString(m2747u) + " surfaces=" + m2442b + " tone=" + (num == null ? "none" : Integer.toHexString(num.intValue())) + " page=" + this.f2395y2);
            final K k = this.f2156M5.get(Integer.valueOf(i));
            if (k != null) {
                this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.this.m2546d(k);
                    }
                });
            }
        }
    }

    /* renamed from: b */
    static boolean m2488b(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    /* renamed from: b */
    private int m2442b(int i, int i2) {
        List<SurfaceControl> m2753v = m2753v(i);
        if (m2420a(i, m2753v, this.f2156M5.get(Integer.valueOf(i)), i2)) {
            return m2753v.size();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static boolean m2531c(String str) {
        return str == null || "android".equals(str) || "com.miui.home".equals(str) || "com.android.systemui".equals(str) || IconConst.f1963a.equals(str) || "dev.duo.workspaceprobe".equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ void m2692n(int i) {
        if (this.f2367t4 == i) {
            return;
        }
        this.f2367t4 = i;
        Log.i("DuoSplitHome", "Right inset=" + i);
        m2207P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ Object m2446b(Field field, XposedInterface.Chain chain) throws Throwable {
        int intValue;
        Object proceed = chain.proceed();
        int i = field.getInt(chain.getArg(0));
        Integer num = this.f2341p2.get(Integer.valueOf(i));
        if (num != null && (intValue = (num.intValue() & (-2)) | (((Boolean) chain.getArg(2)).booleanValue() ? 1 : 0)) != num.intValue()) {
            this.f2341p2.put(Integer.valueOf(i), Integer.valueOf(intValue));
            m2457b(i, "visibility");
        }
        try {
            m2514c(i, (SurfaceControl.Transaction) chain.getArg(1));
            return proceed;
        } catch (Throwable th) {
            Log.w("DuoRail", "App rail decor visibility skipped task=" + i, th);
            return proceed;
        }
    }

    /* renamed from: c */
    private void m2513c(int i, int i2) {
        Integer remove = i2 == 0 ? this.f2389x2.remove(Integer.valueOf(i)) : this.f2389x2.put(Integer.valueOf(i), Integer.valueOf(i2));
        if (remove == null) {
            if (i2 == 0) {
                return;
            }
        } else if (remove.intValue() == i2) {
            return;
        }
        Log.w("DuoRail", "Page tone task=" + i + " " + (remove == null ? "none" : Integer.toHexString(remove.intValue())) + " -> " + (i2 != 0 ? Integer.toHexString(i2) : "none") + " page=" + this.f2395y2);
        m2585f(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ void m2693n(View view) {
        if (!this.f2119H3 || this.f2115G6) {
            return;
        }
        m2332a(new Intent("android.search.action.GLOBAL_SEARCH").addFlags(268435456));
    }

    /* renamed from: u */
    private int m2747u(int i) {
        String m2599g = m2599g(this.f2109G0.get(Integer.valueOf(i)));
        WindowModeCache.b m2139b = m2599g == null ? null : this.f2130J0.m2139b(m2599g);
        if (m2139b == null || !m2139b.f1983a || !m2727q0()) {
            return f2019a;
        }
        Integer num = this.f2389x2.get(Integer.valueOf(i));
        return num != null ? num.intValue() : m2139b.f1988f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2292a(Method method, XposedInterface.Chain chain) throws Throwable {
        try {
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) method.invoke(chain.getArg(0), null);
            m2566e(runningTaskInfo);
            m2516c(runningTaskInfo);
        } catch (ReflectiveOperationException e) {
            Log.w("DuoWallpaper", "Task observation failed", e);
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public void m2691n() {
        g0 g0Var = this.f2362s5;
        this.f2362s5 = null;
        if (g0Var != null) {
            this.f2071A1.removeCallbacks(g0Var.f2659f);
            IBinder iBinder = g0Var.f2655b;
            if (iBinder != null) {
                iBinder.unlinkToDeath(g0Var.f2660g, 0);
            }
            ResultReceiver resultReceiver = g0Var.f2656c;
            if (resultReceiver != null) {
                resultReceiver.send(3, null);
            }
        }
        m2740s1();
    }

    /* renamed from: d */
    private void m2542d(long j) {
        this.f2071A1.removeCallbacks(this.f2118H2);
        this.f2071A1.postDelayed(this.f2118H2, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ boolean m2530c(View view, MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 1 && this.f2244Z2 != null) {
            if (motionEvent.getEventTime() - motionEvent.getDownTime() >= 600) {
                m2734r1();
                return true;
            }
            final long j = this.f2153M2;
            final long j2 = this.f2146L2;
            final int max = Math.max(2, Math.min(960, (int) motionEvent.getX()));
            final int max2 = Math.max(2, Math.min(1709, (int) motionEvent.getY()));
            m2734r1();
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                transaction.setVisibility(this.f2237Y2.f2504b, false).apply();
                transaction.close();
                this.f2071A1.postDelayed(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda206
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.this.m2324a(j, j2, max, max2);
                    }
                }, 80L);
            } finally {
            }
        }
        return true;
    }

    /* renamed from: j */
    private void m2650j(boolean z) {
        String str;
        if (z) {
            str = "alipays://platformapi/startapp?appId=20000056&chInfo=ch_xiaomiLeft";
        } else {
            str = "alipays://platformapi/startapp?appId=10000007&sourceId=xiaomiLeft&source=shortcut&showOthers=true&chInfo=ch_xiaomiLeft";
        }
        try {
            m2332a(new Intent("android.intent.action.VIEW").setData(Uri.parse(str)).setPackage("com.eg.android.AlipayGphone").addFlags(343932928));
            Log.w("DuoRail", "Rail alipay pay=" + z);
        } catch (Throwable th) {
            m2401a("支付宝", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public void m2703o() {
        b0 b0Var = this.f2217V3;
        this.f2217V3 = null;
        if (b0Var != null) {
            b0Var.m2854b();
        }
    }

    /* renamed from: d */
    private void m2543d(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo == null || this.f2116H0.contains(Integer.valueOf(runningTaskInfo.taskId))) {
            return;
        }
        this.f2109G0.putIfAbsent(Integer.valueOf(runningTaskInfo.taskId), runningTaskInfo);
    }

    /* renamed from: b */
    private void m2457b(final int i, String str) {
        Integer num = this.f2341p2.get(Integer.valueOf(i));
        Log.w("DuoRail", "Strip task=" + i + " shown=" + m2159D(i) + " width=" + (num == null ? 0 : num.intValue() >> 1) + " via " + str);
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda174
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2731r(i);
            }
        });
    }

    /* renamed from: u */
    private boolean m2750u() {
        return m2743t() && !this.f2124I1 && this.f2156M5.containsKey(Integer.valueOf(this.f2110G1)) && m2555d(this.f2110G1) && !this.f2330n3 && !this.f2233X5;
    }

    /* renamed from: d */
    private static int m2537d() {
        return m2503c(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ Object m2702o(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (((Integer) chain.getArg(3)).intValue() == 2) {
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda63
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2218S();
                }
            });
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2287a(Field field, Field field2, Method method, XposedInterface.Chain chain) throws Throwable {
        Object[] array = chain.getArgs().toArray();
        int i = field.getInt(array[0]);
        if (m2767x(i)) {
            array[4] = Boolean.FALSE;
        }
        Integer num = this.f2353r2.get();
        this.f2353r2.set(Integer.valueOf(i));
        try {
            Object proceed = chain.proceed(array);
            this.f2353r2.set(num);
            m2386a(chain.getThisObject(), chain.getArg(0), chain.getArg(1), field, field2, method);
            return proceed;
        } catch (Throwable th) {
            this.f2353r2.set(num);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m2552d(String str, View view) {
        if (m2737s()) {
            m2773y(str);
        }
    }

    /* renamed from: d */
    private List<String> m2540d(List<String> list) {
        PackageManager packageManager = this.f2301i4.getPackageManager();
        ArrayList arrayList = new ArrayList(list);
        final HashMap hashMap = new HashMap();
        try {
            for (Map.Entry entry : ((Map) Class.forName("android.util.MiuiMultiWindowUtils").getMethod("readFreeformTimestamps", Context.class).invoke(null, this.f2301i4)).entrySet()) {
                long j = 0;
                if (entry.getValue() instanceof Iterable) {
                    for (Object obj : (Iterable) entry.getValue()) {
                        if (obj instanceof Number) {
                            j = Math.max(j, ((Number) obj).longValue());
                        }
                    }
                }
                hashMap.put(String.valueOf(entry.getKey()), Long.valueOf(j));
            }
        } catch (ReflectiveOperationException | RuntimeException e) {
            Log.w("DuoRail", "Sidebar recents unavailable", e);
        }
        ArrayList arrayList2 = new ArrayList(hashMap.keySet());
        Collections.sort(arrayList2, new Comparator() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda207
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                int m2261a;
                m2261a = WorkspaceHooks.m2261a(hashMap, (String) obj2, (String) obj3);
                return m2261a;
            }
        });
        int size = arrayList2.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            Object obj2 = arrayList2.get(i);
            i++;
            String str = (String) obj2;
            if (i2 >= 12) {
                break;
            }
            if (!arrayList.contains(str) && !str.equals(IconConst.f1963a) && packageManager.getLaunchIntentForPackage(str) != null) {
                arrayList.add(str);
                i2++;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ boolean m2708o(View view) {
        if (!this.f2119H3 || !m2788R0() || this.f2115G6) {
            return true;
        }
        m2698n0();
        return true;
    }

    /* renamed from: b */
    private void m2483b(final String str, final i0 i0Var) {
        this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2399a(str, i0Var);
            }
        });
    }

    /* renamed from: o */
    private void m2707o(boolean z) {
        if (this.f2185Q6 == z) {
            return;
        }
        this.f2185Q6 = z;
        this.f2171O6 = 0.0f;
    }

    /* renamed from: b */
    private void m2456b(final int i, final M m, final Consumer<Integer> consumer) {
        (this.f2186R0 == null ? this.f2071A1 : this.f2186R0).post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda159
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2314a(i, m, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m2526c(Object obj) {
        this.f2166O1.remove(obj);
        m2207P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ void m2661k(View view) {
        this.f2139K2 = this.f2097E2 + "/" + this.f2216V2;
        m2755v();
        m2164E(this.f2078B2);
        this.f2132J2 = "本次已跳过，可随时手动取色";
        m2161D0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m2464b(Bundle bundle) {
        String string = bundle.getString("package", "");
        if (this.f2146L2 != bundle.getLong("token") || !string.equals(this.f2125I2)) {
            m2755v();
            this.f2195S2 = false;
            this.f2188R2 = false;
            this.f2125I2 = string;
            this.f2146L2 = bundle.getLong("token");
            this.f2132J2 = "";
            this.f2139K2 = "";
            m2164E(this.f2078B2);
            m2641i1();
        }
        this.f2288g3 = false;
        m2655j2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m2529c(boolean z) {
        this.f2071A1.removeCallbacks(this.f2122H6);
        if (z) {
            m2675l(true);
        } else {
            this.f2071A1.postDelayed(this.f2122H6, 150L);
        }
    }

    /* renamed from: k */
    private void m2662k(ClassLoader classLoader) {
        try {
            hook(Class.forName("com.android.wm.shell.recents.RecentsTransitionHandler$1", false, classLoader).getDeclaredMethod("onGestureStateUpdated", Integer.TYPE)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda114
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2668l;
                    m2668l = WorkspaceHooks.this.m2668l(chain);
                    return m2668l;
                }
            });
            Log.w("DuoRail", "Recents hooks ready");
        } catch (Throwable th) {
            Log.w("DuoRail", "No recents hooks", th);
        }
    }

    /* renamed from: g */
    private void m2603g(K k) {
        ArrayList<J> arrayList = k.f2437e;
        int size = arrayList.size();
        int i = 0;
        J j = null;
        while (i < size) {
            J j2 = arrayList.get(i);
            i++;
            J j3 = j2;
            if ("lastapp".equals(j3.f2418a)) {
                j = j3;
            }
        }
        if (j == null) {
            return;
        }
        Object[] m2687m0 = m2687m0();
        j.m2809e(m2687m0 != null ? (String) m2687m0[1] : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m2520c(K k, View view) {
        if (m2737s()) {
            if (this.f2210U3 != null) {
                m2714p();
                return;
            }
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            view.getLocationOnScreen(iArr);
            k.f2441i.getLocationOnScreen(iArr2);
            this.f2196S3 = ((m2174G1() + iArr[1]) - iArr2[1]) + 48;
            m2147A0();
        }
    }

    /* renamed from: g */
    private void m2600g() {
        if (this.f2083C1 && this.f2124I1) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                if (m2425a(transaction)) {
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
    /* renamed from: a */
    public /* synthetic */ Object m2284a(Field field, Field field2, XposedInterface.Chain chain) throws Throwable {
        if (field.getInt(chain.getArg(0)) == 0) {
            Object obj = field2.get(chain.getArg(0));
            Object obj2 = this.f2096E1;
            if (obj2 != null && obj != null && !obj.equals(obj2)) {
                Log.w("DuoRail", "Display area vanished event ignored: not the one in use");
            } else {
                this.f2089D1 = null;
                this.f2096E1 = null;
                Log.w("DuoRail", "Display area vanished");
                this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda38
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.this.m2199N();
                    }
                });
            }
        }
        return chain.proceed();
    }

    /* renamed from: k */
    private void m2664k(boolean z) {
        Intent component;
        try {
            if (z) {
                component = new Intent("android.intent.action.VIEW").setComponent(new ComponentName("com.tencent.mm", "com.tencent.mm.plugin.offline.ui.WalletOfflineCoinPurseUI")).putExtra("key_entry_scene", 2);
            } else {
                component = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setComponent(new ComponentName("com.tencent.mm", "com.tencent.mm.plugin.scanner.ui.BaseScanUI"));
            }
            m2332a(component.addFlags(343932928));
            Log.w("DuoRail", "Rail wechat pay=" + z);
        } catch (Throwable th) {
            m2401a("微信", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m2480b(Object obj) {
        this.f2166O1.add(obj);
        m2207P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m2527c(String str, View view) {
        if (m2737s()) {
            m2714p();
            if (this.f2182Q3) {
                m2732r(str);
            } else {
                m2736s(str);
            }
        }
    }

    /* renamed from: b */
    private void m2470b(ImageView imageView) {
        if (this.f2390x3.containsKey(imageView)) {
            return;
        }
        View view = (View) imageView.getParent();
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        this.f2390x3.put(imageView, new Object[]{new WeakReference(view), new FrameLayout.LayoutParams((FrameLayout.LayoutParams) view.getLayoutParams()), Integer.valueOf(layoutParams.width), Integer.valueOf(layoutParams.height), Float.valueOf(imageView.getTranslationX()), Float.valueOf(imageView.getTranslationY())});
    }

    /* renamed from: d */
    private void m2548d(ClassLoader classLoader) {
        try {
            final Class<?> cls = Class.forName("com.android.keyguard.shortcut.MiuiShortcutController", false, classLoader);
            final Method declaredMethod = cls.getDeclaredMethod("onSystemUIAction$1", Bundle.class, String.class);
            declaredMethod.setAccessible(true);
            hook(cls.getDeclaredMethod("addShortcutViews", FrameLayout.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda191
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2293a;
                    m2293a = WorkspaceHooks.this.m2293a(declaredMethod, cls, chain);
                    return m2293a;
                }
            });
            Class<?> cls2 = Class.forName("com.android.keyguard.panel.KeyguardPanelViewController", false, classLoader);
            final Field declaredField = cls2.getDeclaredField("unlockAlphaAndScaleAnimator");
            declaredField.setAccessible(true);
            for (Method method : cls2.getDeclaredMethods()) {
                if (method.getName().equals("startUnlockKeyguardDismissAnim")) {
                    hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda192
                        public final Object intercept(XposedInterface.Chain chain) {
                            Object m2283a;
                            m2283a = WorkspaceHooks.this.m2283a(declaredField, chain);
                            return m2283a;
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
    /* renamed from: c */
    public void m2528c(List<String> list) {
        List<String> m938a = RailCodec.m938a(this.f2154M3, this.f2147L3, list, 12);
        this.f2154M3 = Collections.unmodifiableList(m938a);
        ArrayList arrayList = new ArrayList(list);
        for (String str : this.f2140K3) {
            if (!this.f2147L3.contains(str) && !arrayList.contains(str)) {
                arrayList.add(str);
            }
        }
        this.f2140K3 = Collections.unmodifiableList(arrayList);
        this.f2147L3 = Collections.unmodifiableList(list);
        m2720p1();
        d0 d0Var = this.f2210U3;
        if (d0Var != null) {
            d0Var.m2871d();
        }
        final String m945b = RailCodec.m945b(m938a);
        this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda203
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2726q(m945b);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m2481b(String str) {
        ViewTreeObserver viewTreeObserver = this.f2079B3;
        this.f2079B3 = null;
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f2073A3);
        }
        if (viewTreeObserver == null || str == null) {
            return;
        }
        Log.i("DuoKeyguard", "Keyguard per-frame listeners=0 (" + str + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2296a(Method method, Method method2, XposedInterface.Chain chain) throws Throwable {
        int intValue = ((Integer) method.invoke(chain.getArg(1), null)).intValue();
        ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) method2.invoke(chain.getArg(1), null);
        if ((intValue == 1 || intValue == 3) && runningTaskInfo != null && runningTaskInfo.topActivity != null && runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) == 0) {
            final String m2599g = m2599g(runningTaskInfo);
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda146
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2663k(m2599g);
                }
            });
        }
        return chain.proceed();
    }

    /* renamed from: b */
    private List<LauncherActivityInfo> m2452b(String str, int i) {
        try {
            return ((LauncherApps) this.f2301i4.getSystemService(LauncherApps.class)).getActivityList(str, m2153C(i));
        } catch (RuntimeException e) {
            Log.w("DuoRail", "Sidebar activities " + str + "@" + i + " unavailable", e);
            return Collections.EMPTY_LIST;
        }
    }

    /* renamed from: c */
    private float m2502c(R r) {
        if (!this.f2259b4) {
            int i = this.f2252a4;
            return (i == 0 || !(r == this.f2164N6 || r == this.f2404z5)) ? r.f2507e + i : r.f2507e + i + f2010R;
        }
        if (r == this.f2164N6) {
            return 1438.0f;
        }
        if (r == this.f2404z5) {
            return 1486.0f;
        }
        if (r == this.f2374u5) {
            return 314.0f;
        }
        return r == this.f2380v5 ? m2561e(4) + 338 : r.f2507e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m2482b(String str, View view) {
        if (m2737s()) {
            m2158D(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ boolean m2492b(K k, String str, View view) {
        if (!m2737s()) {
            return false;
        }
        m2358a(k, view, str);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public void m2686m(boolean z) {
        if (this.f2203T3 == z) {
            return;
        }
        this.f2203T3 = z;
        this.f2238Y3 = z;
        m2720p1();
        this.f2238Y3 = false;
        d0 d0Var = this.f2210U3;
        if (d0Var != null) {
            d0Var.m2871d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ boolean m2575e(String str, View view) {
        if (!m2737s()) {
            return true;
        }
        m2773y(str);
        return true;
    }

    /* renamed from: a */
    private static boolean m2421a(ActivityManager.RunningTaskInfo runningTaskInfo) {
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
                } catch (NoSuchMethodException e) {
                    obj2 = obj.getClass().getField("isLeafTask").get(obj);
                }
                Boolean bool = Boolean.TRUE;
                if (bool.equals(obj2) && bool.equals(obj.getClass().getMethod("isTopActivityLetterboxRunning", null).invoke(obj, null)) && (rect = (Rect) obj.getClass().getField("topActivityLetterboxBounds").get(obj)) != null) {
                    return !rect.isEmpty();
                }
                return false;
            } catch (ReflectiveOperationException e2) {
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ boolean m2490b(View view, MotionEvent motionEvent) {
        this.f2231X3 = motionEvent.getRawY();
        X x = this.f2224W3;
        if (x != null && x.f2557c == view) {
            x.m2842a(motionEvent);
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

    /* renamed from: e */
    private void m2569e(ClassLoader classLoader) {
        if (classLoader == this.f2354r3) {
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
                    Object m2299a;
                    m2299a = WorkspaceHooks.this.m2299a(weakHashMap, declaredField2, declaredField3, chain);
                    return m2299a;
                }
            });
            hook(cls.getDeclaredMethod("updateShortcutView", Integer.TYPE)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda182
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2290a;
                    m2290a = WorkspaceHooks.this.m2290a(declaredField, declaredMethod, weakHashMap, declaredField2, declaredField3, declaredField4, declaredField5, declaredMethod2, chain);
                    return m2290a;
                }
            });
            this.f2354r3 = classLoader;
        } catch (Throwable th) {
            Log.e("DuoKeyguard", "Official shortcut animation hook unavailable", th);
        }
    }

    /* renamed from: m */
    private void m2684m(ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.wm.shell.multitasking.common.MultiTaskingStateManager", false, classLoader);
            Class cls2 = Integer.TYPE;
            Class cls3 = Boolean.TYPE;
            hook(cls.getDeclaredMethod("onSoScStateChanged", Rect.class, Rect.class, Rect.class, cls2, ActivityManager.RunningTaskInfo.class, ActivityManager.RunningTaskInfo.class, cls3, cls2, cls2)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda0
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2690n;
                    m2690n = WorkspaceHooks.this.m2690n(chain);
                    return m2690n;
                }
            });
            hook(cls.getDeclaredMethod("onPreSoScStateChanged", Rect.class, Rect.class, Rect.class, cls2, cls3, cls3, cls2, cls2)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda1
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2702o;
                    m2702o = WorkspaceHooks.this.m2702o(chain);
                    return m2702o;
                }
            });
        } catch (ReflectiveOperationException e) {
            Log.e("DuoSplitHome", "Native split state unavailable", e);
        }
    }

    /* renamed from: c */
    private void m2525c(ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.wm.shell.sosc.SoScSplitScreenController", false, classLoader);
            Class<?> cls2 = Class.forName("com.android.wm.shell.sosc.SoScUtilsImpl", false, classLoader);
            Class<?> cls3 = Class.forName("com.android.wm.shell.multiplesplit.MultipleSplitUtils", false, classLoader);
            final Method method = cls.getMethod("getRemoteCallExecutor", null);
            final Method method2 = cls2.getMethod("getInstance", null);
            final Method method3 = cls3.getMethod("getInstance", null);
            Class cls4 = Integer.TYPE;
            this.f2316l1 = cls.getMethod("updateSplitSnapTarget", cls4, cls4, cls4, Boolean.TYPE);
            this.f2322m1 = cls2.getMethod("isSoScActive", null);
            this.f2328n1 = cls2.getMethod("isSoScSupported", null);
            this.f2334o1 = cls3.getMethod("isMultipleSplitActive", null);
            this.f2340p1 = cls3.getMethod("isMultipleSplitSupport", null);
            this.f2346q1 = Class.forName("com.android.wm.shell.multiplesplit.MultipleSplitUtilsImpl", false, classLoader).getMethod("dockMultipleSplitTasks", Bundle.class);
            hook(cls.getDeclaredMethod("onInit", null)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda36
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2297a;
                    m2297a = WorkspaceHooks.this.m2297a(method, method2, method3, chain);
                    return m2297a;
                }
            });
            Log.i("DuoFoldSplit", "Native split hook ready");
        } catch (ReflectiveOperationException e) {
            Log.e("DuoFoldSplit", "Native split entry unavailable", e);
        }
    }

    /* renamed from: f */
    private boolean m2590f() {
        boolean z = !this.f2124I1 && this.f2131J1 && !"com.android.systemui".equals(this.f2103F1) && (!this.f2138K1 || m2638i(this.f2103F1));
        if (!z || !m2727q0()) {
            return z;
        }
        ActivityManager.RunningTaskInfo runningTaskInfo = this.f2109G0.get(Integer.valueOf(this.f2110G1));
        if (runningTaskInfo == null) {
            return false;
        }
        try {
            if (!runningTaskInfo.getClass().getField("isFocused").getBoolean(runningTaskInfo)) {
                return false;
            }
            if (this.f2359s2) {
                return m2159D(this.f2110G1);
            }
            return new Rect(0, 0, f2056s0, 1712).equals(m2582f(runningTaskInfo.getClass().getField("appCompatTaskInfo").get(runningTaskInfo)));
        } catch (ReflectiveOperationException e) {
            Log.w("DuoRail", "App focus unavailable", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ Object m2631i(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        final Object thisObject = chain.getThisObject();
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda115
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2526c(thisObject);
            }
        });
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static GradientDrawable m2444b(int i, float f) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(f);
        return gradientDrawable;
    }

    /* renamed from: a */
    private boolean m2422a(final ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl) {
        Object obj;
        if (runningTaskInfo == null) {
            return false;
        }
        try {
            if (f2023c == null) {
                Class<?> cls = runningTaskInfo.getClass();
                f2025d = cls.getField("isFocused");
                f2027e = cls.getField("appCompatTaskInfo");
                Field field = cls.getField("configuration");
                f2029f = field;
                Field field2 = field.getType().getField("windowConfiguration");
                f2031g = field2;
                f2033h = field2.getType().getMethod("getActivityType", null);
                f2035i = f2031g.getType().getMethod("getWindowingMode", null);
                f2023c = cls.getField("displayId");
            }
            ComponentName componentName = runningTaskInfo.topActivity;
            final boolean z = true;
            boolean z2 = componentName != null && "com.miui.home".equals(componentName.getPackageName()) && "com.miui.home.launcher.Launcher".equals(componentName.getClassName());
            boolean z3 = f2023c.getInt(runningTaskInfo) == 0 && componentName != null && f2025d.getBoolean(runningTaskInfo);
            if (!z2 && !z3) {
                return false;
            }
            Object obj2 = f2027e.get(runningTaskInfo);
            Object obj3 = f2031g.get(f2029f.get(runningTaskInfo));
            final int intValue = ((Integer) f2033h.invoke(obj3, null)).intValue();
            boolean z4 = z2 && intValue == 2;
            if (z2 && this.f2208U1 < 6) {
                try {
                    obj = obj2.getClass().getMethod("isLeafTask", null).invoke(obj2, null);
                } catch (NoSuchMethodException e) {
                    obj = obj2.getClass().getField("isLeafTask").get(obj2);
                }
                this.f2208U1++;
                Log.w("DuoRail", "Launcher task=" + runningTaskInfo.taskId + " leaf=" + obj + " home=" + z4 + " leash=" + (surfaceControl != null));
            }
            if (!z3 || ((Integer) f2035i.invoke(obj3, null)).intValue() == 5) {
                return false;
            }
            if (runningTaskInfo.taskId == this.f2229X1 && "com.miui.mishare.connectivity".equals(componentName.getPackageName()) && "com.miui.mishare.activity.TransActivity".equals(componentName.getClassName())) {
                return false;
            }
            String m2632i = m2632i(runningTaskInfo);
            if (m2632i != null) {
                this.f2229X1 = runningTaskInfo.taskId;
            }
            if (!m2423a(componentName)) {
                int i = -1;
                this.f2229X1 = -1;
                boolean z5 = !z4 && intValue == 1 && new Rect(0, 0, f2056s0, 1712).equals(m2582f(obj2)) && m2651j(runningTaskInfo.taskId);
                if (z5) {
                    i = runningTaskInfo.taskId;
                }
                this.f2215V1 = i;
                this.f2222W1 = z5 ? componentName : null;
                if (z5) {
                    m2308a(runningTaskInfo.taskId, componentName);
                }
            }
            final String m2599g = m2632i != null ? m2632i : m2599g(runningTaskInfo);
            if (intValue != 1 || ((Integer) f2035i.invoke(obj3, null)).intValue() != 1) {
                z = false;
            }
            final boolean z6 = z4;
            return this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda220
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2395a(m2599g, runningTaskInfo, z6, intValue, z);
                }
            });
        } catch (Throwable th) {
            Log.w("DuoRail", "Rail task check failed", th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ void m2637i(boolean z) {
        if (Boolean.valueOf(z).equals(this.f2133J3)) {
            return;
        }
        this.f2133J3 = Boolean.valueOf(z);
        Log.i("DuoWorkbench", "Switch " + (z ? "on" : "off"));
        if (z) {
            return;
        }
        this.f2391x4.m3104n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m2485b(final List<String> list) {
        this.f2161N3 = Collections.unmodifiableList(new ArrayList(list));
        final String m935a = RailCodec.m935a(list);
        final int i = this.f2168O3 + 1;
        this.f2168O3 = i;
        this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2319a(i, m935a, list);
            }
        });
    }

    /* renamed from: i */
    private K m2629i() {
        final K k = new K(this, null);
        k.f2435c = new FrameLayout(this.f2301i4);
        SurfaceControl.Builder hidden = new SurfaceControl.Builder().setName("DuoAppRail").setHidden(true);
        try {
            SurfaceControl.Builder.class.getMethod("setContainerLayer", null).invoke(hidden, null);
        } catch (ReflectiveOperationException e) {
            Log.w("DuoRail", "Container layer unavailable; plain layer used", e);
        }
        k.f2433a = hidden.build();
        SurfaceControl.Builder parent = new SurfaceControl.Builder().setName("DuoAppRailFloor").setParent(k.f2433a);
        try {
            SurfaceControl.Builder.class.getMethod("setColorLayer", null).invoke(parent, null);
        } catch (ReflectiveOperationException e2) {
            Log.w("DuoRail", "Colour layer unavailable for rail floor", e2);
        }
        k.f2448p = parent.build();
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            transaction.setLayer(k.f2448p, 0).setCrop(k.f2448p, new Rect(0, 0, 205, 1712)).setVisibility(k.f2448p, true);
            m2339a(transaction, k, f2019a);
            S s = new S(this.f2301i4);
            k.f2439g = s;
            s.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda212
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WorkspaceHooks.this.m2518c(view);
                }
            });
            m2357a(k, k.f2439g, 1037.0f, 1496, 48, 48, 0.0f);
            k.f2439g.setVisibility(this.f2245Z3 ? 0 : 8);
            k.f2439g.f2521b = !this.f2125I2.isEmpty();
            FrameLayout m2759w = m2759w(1);
            int i = 0;
            while (true) {
                ImageView[] imageViewArr = k.f2440h;
                if (i >= imageViewArr.length) {
                    break;
                }
                imageViewArr[i] = new T(this.f2301i4);
                m2351a(m2759w, k.f2440h[i], i, 120, 30, f2032g0);
                i++;
            }
            k.f2436d = m2759w;
            m2357a(k, m2759w, 971.0f, this.f2191R5, 180, m2503c(3), 60.0f);
            m2759w.setVisibility(4);
            h0 h0Var = new h0(this.f2301i4, false);
            k.f2449q = h0Var;
            h0Var.f2711U = true;
            m2521c(h0Var);
            h0 h0Var2 = this.f2221W0;
            if (h0Var2 != null) {
                k.f2449q.m2894d(h0Var2);
            }
            k.f2449q.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda213
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WorkspaceHooks.this.m2356a(k, view);
                }
            });
            k.f2449q.m2890a(new Consumer() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda214
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    WorkspaceHooks.this.m2473b(k, (View) obj);
                }
            });
            m2357a(k, k.f2449q, 963.0f, this.f2126I3[1] + f2012T, 205, 420, 0.0f);
            k.f2450r = new U(this.f2301i4);
            N n = new N(50.0f);
            k.f2451s = n;
            k.f2450r.setBackground(n);
            k.f2450r.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda215
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WorkspaceHooks.this.m2545d(view);
                }
            });
            k.f2450r.setOnLongClickListener(new View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda216
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean m2573e;
                    m2573e = WorkspaceHooks.this.m2573e(view);
                    return m2573e;
                }
            });
            k.f2450r.setVisibility(this.f2119H3 ? 0 : 8);
            m2357a(k, k.f2450r, 1011.0f, 1544, 100, 100, 50.0f);
            k.f2439g.bringToFront();
            try {
                Class<?> cls = Class.forName("android.view.ViewTreeObserver$OnComputeInternalInsetsListener");
                Class<?> cls2 = Class.forName("android.view.ViewTreeObserver$InternalInsetsInfo");
                final Method method = cls2.getMethod("setTouchableInsets", Integer.TYPE);
                final Field field = cls2.getField("touchableRegion");
                ViewTreeObserver.class.getMethod("addOnComputeInternalInsetsListener", cls).invoke(k.f2435c.getViewTreeObserver(), Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda217
                    @Override // java.lang.reflect.InvocationHandler
                    public final Object invoke(Object obj, Method method2, Object[] objArr) {
                        Object m2291a;
                        m2291a = WorkspaceHooks.this.m2291a(method, k, field, obj, method2, objArr);
                        return m2291a;
                    }
                }));
                R r = new R("decor_content", k.f2435c, 963.0f, 0, 205, 1712, 0, 0.0f, 40);
                k.f2434b = r;
                transaction.reparent(r.f2504b, k.f2433a).setPosition(k.f2434b.f2504b, 0.0f, 0.0f).setCrop(k.f2434b.f2504b, new Rect(0, 0, 205, 1712)).setLayer(k.f2434b.f2504b, 1).setVisibility(k.f2434b.f2504b, true);
                transaction.apply();
                transaction.close();
                m2567e(k);
                return k;
            } catch (ReflectiveOperationException e3) {
                throw new IllegalStateException("App rail touch region unavailable", e3);
            }
        } finally {
        }
    }

    /* renamed from: b */
    private boolean m2491b(K k, View view, String str) {
        int indexOfChild = k.f2442j.indexOfChild(view);
        int min = Math.min(this.f2147L3.size(), k.f2442j.getChildCount());
        if (indexOfChild < 0 || indexOfChild >= min || !str.equals(this.f2147L3.get(indexOfChild))) {
            return false;
        }
        m2783B(5);
        X x = new X(k.f2442j, view, indexOfChild, min);
        this.f2224W3 = x;
        x.m2841a();
        return true;
    }

    /* renamed from: b */
    private boolean m2493b(R r) {
        if (r == null) {
            return false;
        }
        if (r == this.f2368t5 || r == this.f2374u5 || r == this.f2380v5 || r == this.f2386w5) {
            return true;
        }
        for (R r2 : this.f2075A5) {
            if (r == r2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private void m2465b(Display display) {
        int m2256a = m2256a(display);
        if (m2256a == this.f2271d4) {
            if (this.f2289g4.isEmpty()) {
                return;
            }
            m2728q1();
            return;
        }
        this.f2271d4 = m2256a;
        this.f2277e4++;
        m2746t1();
        if (m2256a != 0) {
            long j = this.f2309j6;
            if (j > 0) {
                this.f2315k6 = Math.max(this.f2315k6, j + 1);
            }
        }
        if (m2256a != 0) {
            this.f2291g6 = Math.max(this.f2291g6, SystemClock.uptimeMillis());
        }
        int i = 0;
        this.f2261b6 = false;
        this.f2267c6 = false;
        this.f2273d6 = -1;
        this.f2285f6 = 0.0f;
        if (m2256a == 0 && this.f2254a6) {
            m2757v1();
        }
        Iterator<Runnable> it = this.f2283f4.iterator();
        while (it.hasNext()) {
            this.f2071A1.removeCallbacks(it.next());
        }
        this.f2283f4.clear();
        this.f2128I5.clear();
        this.f2135J5.clear();
        this.f2121H5 = false;
        this.f2107F5 = m2256a == 0 ? 1.0f : 0.0f;
        this.f2114G5 = 0.0f;
        this.f2115G6 = false;
        this.f2108F6 = false;
        this.f2142K5 = -1L;
        h0 h0Var = this.f2221W0;
        if (h0Var != null) {
            h0Var.f2720g0 = -1;
            h0Var.invalidate();
        }
        if (m2256a != 0) {
            i = m2728q1();
        }
        Log.w("DuoLegacyDock", "v155 scope=" + m2256a + " released=" + i + " hosts=" + m2733r0() + " epoch=" + this.f2277e4);
    }

    /* renamed from: h */
    private SurfaceControl m2613h(int i) {
        String className;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        if (this.f2401z2 != null && this.f2193S0 != null) {
            for (ActivityManager.RunningTaskInfo runningTaskInfo2 : this.f2109G0.values()) {
                ComponentName componentName = runningTaskInfo2.topActivity;
                if (componentName != null && "com.miui.home".equals(componentName.getPackageName()) && (className = componentName.getClassName()) != null && className.contains("Launcher")) {
                    try {
                        if (this.f2072A2 == null) {
                            runningTaskInfo = null;
                        } else {
                            runningTaskInfo = (ActivityManager.RunningTaskInfo) this.f2072A2.invoke(this.f2193S0, Integer.valueOf(runningTaskInfo2.taskId));
                        }
                        if ((runningTaskInfo != null ? runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) : runningTaskInfo2.getClass().getField("displayId").getInt(runningTaskInfo2)) == i) {
                            SurfaceControl surfaceControl = (SurfaceControl) this.f2401z2.invoke(this.f2193S0, Integer.valueOf(runningTaskInfo2.taskId));
                            if (surfaceControl == null) {
                                return null;
                            }
                            if (surfaceControl.isValid()) {
                                return surfaceControl;
                            }
                            return null;
                        }
                    } catch (ReflectiveOperationException e) {
                    }
                }
            }
        }
        return null;
    }

    /* renamed from: c */
    private void m2517c(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f2148L4 = false;
            this.f2155M4 = false;
            MotionEvent motionEvent2 = this.f2162N4;
            if (motionEvent2 != null) {
                motionEvent2.recycle();
                this.f2162N4 = null;
            }
            if (motionEvent.getRawY() > 120.0f || !m2157C1()) {
                return;
            }
            this.f2148L4 = true;
            this.f2162N4 = MotionEvent.obtain(motionEvent);
            return;
        }
        if (this.f2155M4) {
            m2338a(MotionEvent.obtain(motionEvent));
            if (actionMasked == 1 || actionMasked == 3) {
                this.f2155M4 = false;
                return;
            }
            return;
        }
        if (this.f2148L4) {
            if (actionMasked != 2) {
                if (actionMasked == 1 || actionMasked == 3 || actionMasked == 5) {
                    this.f2148L4 = false;
                    return;
                }
                return;
            }
            float rawX = motionEvent.getRawX() - this.f2162N4.getRawX();
            float rawY = motionEvent.getRawY() - this.f2162N4.getRawY();
            if (rawY <= ViewConfiguration.get(this.f2301i4).getScaledTouchSlop() || rawY <= Math.abs(rawX) * 1.2f) {
                if (rawY < (-r5) || Math.abs(rawX) > r5 * 2) {
                    this.f2148L4 = false;
                    return;
                }
                return;
            }
            this.f2148L4 = false;
            if (!m2775y1()) {
                Log.w("DuoRail", "Shade entry not ready proxy=" + (this.f2106F4 != null));
            } else if (m2787E0()) {
                this.f2155M4 = true;
                Log.w("DuoRail", "Shade pull from app x=" + Math.round(this.f2162N4.getRawX()) + " y=" + Math.round(this.f2162N4.getRawY()) + " foreground=" + this.f2103F1);
                m2338a(MotionEvent.obtain(this.f2162N4));
                m2338a(MotionEvent.obtain(motionEvent));
            }
        }
    }

    /* renamed from: d */
    private float m2536d(R r) {
        if (this.f2259b4) {
            if (r == this.f2164N6) {
                return this.f2126I3[3] + 78;
            }
            if (r == this.f2404z5) {
                return ((170 - r.f2509g) / 2.0f) + 2154.0f;
            }
            if (r == this.f2374u5 || r == this.f2380v5) {
                return 2154.0f;
            }
        }
        if (this.f2252a4 == 0) {
            if (r == this.f2164N6) {
                return (this.f2121H5 ? 47.0f : 158.0f) + this.f2126I3[0];
            }
            return (r != this.f2404z5 || this.f2121H5) ? r.f2510h : r.f2510h - 7;
        }
        if (r == this.f2164N6) {
            return this.f2126I3[2] + f2011S;
        }
        if (r == this.f2404z5) {
            return r.f2510h + f2016X;
        }
        if (r != this.f2374u5 && r != this.f2380v5) {
            return r.f2510h;
        }
        return r.f2510h + f2017Y;
    }

    /* renamed from: h */
    private boolean m2624h(String str) {
        if (!m2531c(str) && m2791v0()) {
            WindowModeCache.b m2139b = this.f2130J0.m2139b(str);
            if (m2139b != null) {
                return m2139b.f1983a;
            }
            m2553d(str, "miss");
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    /*
    */
    public /* synthetic */ void m2570e(final Object obj) {
        final Process process;
        final Exception e;
        final InterruptedException e2 = null;
        try {
            String str = this.f2301i4.getPackageManager().getApplicationInfo(IconConst.f1963a, 0).sourceDir;
            ProcessBuilder processBuilder = new ProcessBuilder("/system/bin/app_process", "/system/bin", "--nice-name=MiDuoTentLease", "dev.duo.workspaceprobe.StandbyRouteLease");
            processBuilder.environment().put("CLASSPATH", str);
            processBuilder.redirectErrorStream(true);
            process = processBuilder.start();
            try {
                try {
                    this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda188
                        @Override // java.lang.Runnable
                        public final void run() {
                            WorkspaceHooks.this.m2388a(process, obj);
                        }
                    });
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream(), StandardCharsets.UTF_8));
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine != null) {
                                if (readLine.equals("ACTIVE")) {
                                    this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda189
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            WorkspaceHooks.this.m2549d(obj);
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
                                        } catch (InterruptedException e3) {
                                            e2 = e3;
                                            Thread.currentThread().interrupt();
                                        }
                                    }
                                    this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda190
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            WorkspaceHooks.this.m2385a(obj, e2);
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
                    th = th3;
                    if (process != null && process.isAlive()) {
                        process.destroy();
                        try {
                            process.waitFor();
                        } catch (InterruptedException e4) {
                            e2 = e4;
                            Thread.currentThread().interrupt();
                        }
                    }
                    this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda190
                        @Override // java.lang.Runnable
                        public final void run() {
                            WorkspaceHooks.this.m2385a(obj, e2);
                        }
                    });
                    throw th;
                }
            } catch (PackageManager.NameNotFoundException | IOException | InterruptedException | RuntimeException e5) {
                e = e5;
                if (process != null && process.isAlive()) {
                    process.destroy();
                    try {
                        process.waitFor();
                    } catch (InterruptedException e6) {
                        e = e6;
                        Thread.currentThread().interrupt();
                    }
                }
                this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda190
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.this.m2385a(obj, e);
                    }
                });
            }
        } catch (PackageManager.NameNotFoundException | IOException | InterruptedException | RuntimeException e7) {
            process = null;
            e = e7;
        } catch (Throwable th4) {
            th = th4;
            process = null;
        }
    }

    /* renamed from: b */
    private void m2468b(View view) {
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
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                m2468b(viewGroup.getChildAt(i));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m2617h(View view) {
        m2765x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public void m2680m() {
        ValueAnimator valueAnimator = this.f2385w4;
        this.f2385w4 = null;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    /* renamed from: d */
    private void m2544d(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f2086C4 = !this.f2124I1 && this.f2084C2 == this.f2110G1 && motionEvent.getRawX() < 963.0f && this.f2244Z2 == null && (!this.f2202T2 || this.f2237Y2 == null || motionEvent.getRawX() < ((float) this.f2223W2) || motionEvent.getRawX() >= ((float) (this.f2223W2 + this.f2237Y2.f2508f)) || motionEvent.getRawY() < ((float) this.f2230X2) || motionEvent.getRawY() >= ((float) (this.f2230X2 + this.f2237Y2.f2509g)));
        } else if (actionMasked != 1 && actionMasked != 3) {
            return;
        }
        if (this.f2086C4) {
            if (actionMasked == 0) {
                this.f2092D4 = motionEvent.getRawX();
                this.f2099E4 = motionEvent.getRawY();
                this.f2167O2 = true;
                if (this.f2125I2.isEmpty()) {
                    return;
                }
                this.f2153M2++;
                m2755v();
                this.f2132J2 = "";
                m2164E(this.f2078B2);
                m2161D0();
                return;
            }
            this.f2167O2 = false;
            this.f2160N2 = SystemClock.uptimeMillis();
            if (!this.f2125I2.isEmpty()) {
                m2161D0();
            }
            if (actionMasked != 1 || this.f2099E4 < 1512.0f || Math.abs(motionEvent.getRawX() - this.f2092D4) >= 40.0f || Math.abs(motionEvent.getRawY() - this.f2099E4) >= 40.0f) {
                return;
            }
            m2542d(300L);
        }
    }

    /* renamed from: h */
    private void m2616h(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo == null) {
            return;
        }
        if (this.f2186R0 == null && Looper.myLooper() != null) {
            this.f2186R0 = new Handler(Looper.myLooper());
        }
        this.f2116H0.remove(Integer.valueOf(runningTaskInfo.taskId));
        this.f2109G0.put(Integer.valueOf(runningTaskInfo.taskId), runningTaskInfo);
        this.f2123I0.add(Integer.valueOf(runningTaskInfo.taskId));
        m2461b(runningTaskInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ Object m2679m(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        this.f2106F4 = chain.getThisObject();
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ void m2682m(View view) {
        m2724q(view);
        if (!m2788R0() || this.f2330n3) {
            return;
        }
        m2779z0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ Object m2615h(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        this.f2071A1.post(new b$$ExternalSyntheticLambda72(this));
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ void m2681m(int i) {
        m2403a("gesture " + i, false, false);
    }

    /* renamed from: b */
    private void m2462b(Intent intent) {
        if (m2727q0() && m2739s0()) {
            m2332a(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m2621h(boolean z) {
        if (this.f2119H3 == z) {
            return;
        }
        this.f2119H3 = z;
        m2677l1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void m2343a(final SurfaceControl surfaceControl, final int i) {
        m2680m();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(380L);
        ofFloat.setInterpolator(new DecelerateInterpolator(2.0f));
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda13
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                WorkspaceHooks.m2344a(surfaceControl, i, valueAnimator);
            }
        });
        this.f2385w4 = ofFloat;
        ofFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2395a(String str, ActivityManager.RunningTaskInfo runningTaskInfo, boolean z, int i, boolean z2) {
        m2393a(str, runningTaskInfo.taskId, z, i, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public void m2546d(K k) {
        int i = k.f2452t;
        if (i < 0) {
            return;
        }
        int m2747u = m2747u(i);
        boolean z = Color.luminance(m2747u) <= 0.45f ? 1 : 0;
        int i2 = z != 0 ? -1 : -13618632;
        int i3 = !z;
        if (k.f2455w == i3 && k.f2456x == m2747u) {
            return;
        }
        ArrayList<J> arrayList = k.f2437e;
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            J j = arrayList.get(i4);
            i4++;
            j.m2808a(i2, i3);
        }
        S s = k.f2439g;
        if (s != null) {
            s.f2520a = i2;
            s.f2522c.m2811a(i3);
            k.f2439g.invalidate();
        }
        FrameLayout frameLayout = k.f2441i;
        if (frameLayout != null && (frameLayout.getBackground() instanceof N)) {
            ((N) k.f2441i.getBackground()).m2811a(i3);
            k.f2441i.invalidate();
            c0 c0Var = k.f2443k;
            boolean z2 = c0Var.f2598b != z;
            c0Var.f2598b = z;
            c0Var.invalidate();
            if (z2 && this.f2203T3 && RailCodec.m950c(this.f2198S5)) {
                m2354a(k);
            }
        }
        if (k.f2436d.getBackground() instanceof N) {
            ((N) k.f2436d.getBackground()).m2811a(i3);
        }
        k.f2436d.invalidate();
        h0 h0Var = k.f2449q;
        if (h0Var != null) {
            h0Var.f2720g0 = i2;
            h0Var.invalidate();
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            m2339a(transaction, k, m2747u);
            transaction.apply();
            transaction.close();
            U u = k.f2450r;
            if (u != null) {
                Paint paint = u.f2524a;
                if (z == 0) {
                    i2 = -14737372;
                }
                paint.setColor(i2);
                k.f2451s.m2811a(z == 0 ? 2 : 0);
                k.f2450r.invalidate();
            }
            k.f2455w = i3;
            k.f2456x = m2747u;
        } catch (Throwable th) {
            try {
                transaction.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* renamed from: p */
    private static void m2716p(View view) {
        view.setScaleX(0.0f);
        view.setScaleY(0.0f);
        view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(200L).setInterpolator(new OvershootInterpolator(1.6f)).start();
    }

    /* renamed from: a */
    private static boolean m2423a(ComponentName componentName) {
        if (componentName == null || !"com.android.intentresolver".equals(componentName.getPackageName())) {
            return false;
        }
        return "com.android.intentresolver.ChooserActivity".equals(componentName.getClassName()) || "com.android.intentresolver.ResolverActivity".equals(componentName.getClassName());
    }

    /* renamed from: a */
    private static boolean m2424a(Context context) {
        if (context == null) {
            return false;
        }
        Display display = ((DisplayManager) context.getSystemService(DisplayManager.class)).getDisplay(0);
        Display.Mode mode = display == null ? null : display.getMode();
        return mode != null && mode.getPhysicalWidth() == 1168 && mode.getPhysicalHeight() == 1712 && display.getRotation() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public void m2714p() {
        b0 b0Var = this.f2217V3;
        this.f2217V3 = null;
        if (b0Var != null) {
            b0Var.m2854b();
        }
        d0 d0Var = this.f2210U3;
        this.f2210U3 = null;
        if (d0Var != null) {
            d0Var.m2870a();
            m2697n(false);
        }
        m2686m(false);
    }

    /* renamed from: a */
    private void m2393a(String str, int i, boolean z, int i2, boolean z2) {
        this.f2236Y1 = z2;
        String str2 = this.f2103F1;
        if (z && i != this.f2110G1 && this.f2178P6 != 0.0f) {
            this.f2178P6 = 0.0f;
            Log.w("DuoSearch", "Search progress reset on home task change task=" + i);
        }
        if (z && !this.f2124I1 && this.f2327m6 == null) {
            synchronized (this.f2393x6) {
                this.f2399y6 = false;
                this.f2393x6.notifyAll();
            }
        }
        if (!str.equals(this.f2103F1) || i != this.f2110G1) {
            this.f2117H1++;
            if (this.f2210U3 != null || this.f2217V3 != null) {
                m2714p();
            }
        }
        this.f2103F1 = str;
        if (i != this.f2110G1 || z != this.f2124I1) {
            this.f2233X5 = false;
        }
        this.f2110G1 = i;
        this.f2124I1 = z;
        if (IconConst.f1963a.equals(str2) && !str.equals(str2)) {
            m2674l("settings closed");
        }
        if (!z && this.f2136J6 && (!m2727q0() || !this.f2261b6 || this.f2273d6 != 2)) {
            m2403a("app foreground " + str, false, false);
        }
        if (z) {
            this.f2131J1 = true;
        } else if (i2 == 1 && !"com.android.systemui".equals(str)) {
            m2595f1();
        } else {
            this.f2131J1 = false;
        }
        if (!str.equals(str2) || str.equals(this.f2243Z1)) {
            m2663k(str);
        }
        m2207P();
        if (this.f2362s5 != null) {
            m2772y();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y */
    public void m2772y() {
        if (!this.f2204T4 || this.f2301i4 == null) {
            return;
        }
        m2700n2();
        if (m2186J1() && this.f2320l5 && this.f2326m5) {
            if (this.f2362s5 == null) {
                if ((!this.f2197S4 && !((PowerManager) this.f2301i4.getSystemService(PowerManager.class)).isInteractive()) || this.f2332n5 || this.f2344p5 != null) {
                    return;
                }
                int i = this.f2278e5;
                if (i != 1 && i != 2) {
                    return;
                }
                this.f2332n5 = true;
                g0 g0Var = new g0();
                this.f2362s5 = g0Var;
                this.f2071A1.postDelayed(g0Var.f2659f, 10000L);
                if (this.f2278e5 == 2) {
                    m2763w1();
                }
            }
            g0 g0Var2 = this.f2362s5;
            if (g0Var2.f2657d) {
                if (!m2178H1() || (g0Var2.f2658e && !m2182I1())) {
                    m2691n();
                    return;
                }
                return;
            }
            if (m2178H1()) {
                m2365a(g0Var2);
                return;
            }
            int i2 = this.f2278e5;
            if (i2 == 2 || i2 == 4) {
                return;
            }
            m2691n();
            return;
        }
        m2691n();
    }

    /* renamed from: c */
    private String m2510c(String str, String str2) {
        try {
            if (this.f2187R1 == null) {
                this.f2187R1 = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class, String.class);
            }
            return ((String) this.f2187R1.invoke(null, str, str2)).trim();
        } catch (ReflectiveOperationException e) {
            return str2;
        }
    }

    /* renamed from: b */
    private void m2466b(MotionEvent motionEvent) {
        try {
            m2517c(motionEvent);
        } catch (Throwable th) {
            Log.w("DuoRail", "Shade gesture failed", th);
            this.f2148L4 = false;
            this.f2155M4 = false;
        }
        try {
            this.f2391x4.m3099a(motionEvent);
        } catch (Throwable th2) {
            Log.e("DuoWorkbench", "Corner gesture failed", th2);
            this.f2391x4.m3105w();
        }
        m2544d(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m2550d(Runnable runnable) {
        this.f2071A1.post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ void m2715p(int i) {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        try {
            if (this.f2274e1 && this.f2280f1 == i && this.f2352r1 && m2791v0() && m2788R0() && m2256a(m2719p0()) == 1 && (runningTaskInfo = (ActivityManager.RunningTaskInfo) this.f2193S0.getClass().getMethod("getRunningTaskInfo", Integer.TYPE).invoke(this.f2193S0, Integer.valueOf(i))) != null && runningTaskInfo.getClass().getField("isFocused").getBoolean(runningTaskInfo) && runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) == 0) {
                Object obj = runningTaskInfo.getClass().getField("configuration").get(runningTaskInfo);
                Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
                if (((Integer) obj2.getClass().getMethod("getActivityType", null).invoke(obj2, null)).intValue() == 1 && ((Integer) obj2.getClass().getMethod("getWindowingMode", null).invoke(obj2, null)).intValue() == 1 && ((Boolean) this.f2328n1.invoke(this.f2298i1, null)).booleanValue() && !((Boolean) this.f2322m1.invoke(this.f2298i1, null)).booleanValue() && !((Boolean) this.f2334o1.invoke(this.f2304j1, null)).booleanValue()) {
                    this.f2316l1.invoke(this.f2292h1, 0, Integer.valueOf(i), -1, Boolean.TRUE);
                    Log.i("DuoFoldSplit", "Native split requested task=" + i);
                }
            }
        } catch (ReflectiveOperationException e) {
            Log.e("DuoFoldSplit", "Native split request failed", e);
        }
    }

    /* renamed from: c */
    private void m2521c(h0 h0Var) {
        if (h0Var == null) {
            return;
        }
        h0Var.m2892a(this.f2112G3, 405 - (this.f2126I3[1] + f2012T));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m2549d(Object obj) {
        if (this.f2344p5 != obj || this.f2356r5) {
            return;
        }
        this.f2338o5 = true;
        m2772y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m2474b(h0 h0Var) {
        boolean z = Settings.Global.getInt(this.f2301i4.getContentResolver(), "airplane_mode_on", 0) != 0;
        if (z == h0Var.f2707Q) {
            return;
        }
        h0Var.f2707Q = z;
        m2688m1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m2518c(View view) {
        m2501b2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public boolean m2555d(int i) {
        int i2;
        int[] iArr = this.f2177P5.get(Integer.valueOf(i));
        return m2743t() && m2159D(i) && iArr != null && (i2 = iArr[2]) >= f2032g0 && i2 <= 260 && !Boolean.FALSE.equals(this.f2205T5.get(Integer.valueOf(i)));
    }

    /* renamed from: c */
    private void m2514c(int i, SurfaceControl.Transaction transaction) {
        K k = this.f2156M5.get(Integer.valueOf(i));
        if (k == null || transaction == null) {
            return;
        }
        m2341a(transaction, k, m2555d(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ Object m2506c(XposedInterface.Chain chain) throws Throwable {
        this.f2135J5.remove(chain.getArg(0));
        if (this.f2128I5.remove(chain.getArg(0))) {
            this.f2071A1.post(new b$$ExternalSyntheticLambda72(this));
        }
        Object proceed = chain.proceed();
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda90
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2195M();
            }
        });
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m2545d(View view) {
        if (this.f2119H3 && m2737s()) {
            m2332a(new Intent("android.search.action.GLOBAL_SEARCH").addFlags(268435456));
        }
    }

    /* renamed from: b */
    private void m2487b(boolean z) {
        if (this.f2190R4 == z) {
            return;
        }
        this.f2190R4 = z;
        this.f2332n5 = false;
        if (z) {
            long uptimeMillis = SystemClock.uptimeMillis();
            if (this.f2211U4 && uptimeMillis >= this.f2218V4) {
                this.f2211U4 = false;
                this.f2218V4 = 0L;
                Log.w("DuoStandby", "Standby failure latch cleared by enabling the clock");
            }
            if (!this.f2211U4) {
                m2198M1();
            }
        }
        m2772y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ Thread m2511c(Runnable runnable) {
        Thread thread = new Thread(runnable, "DuoNativeSidebarWriter");
        thread.setDaemon(true);
        return thread;
    }

    /* renamed from: c */
    private void m2512c(float f) {
        float max = Math.max(0.0f, Math.min(1.0f, f));
        if (max == this.f2178P6) {
            return;
        }
        this.f2178P6 = max;
        if (max != 0.0f && max != 1.0f) {
            if (this.f2192R6) {
                return;
            }
            this.f2192R6 = true;
            Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda116
                @Override // android.view.Choreographer.FrameCallback
                public final void doFrame(long j) {
                    WorkspaceHooks.this.m2515c(j);
                }
            });
            return;
        }
        m2600g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m2515c(long j) {
        this.f2192R6 = false;
        m2600g();
    }

    /* renamed from: b */
    private void m2469b(FrameLayout frameLayout, View view, int i) {
        m2351a(frameLayout, view, i, 120, 30, f2032g0);
    }

    /* renamed from: h */
    private boolean m2622h() {
        return this.f2214V0 && m2727q0() && m2590f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m2463b(Intent intent, View view) {
        m2462b(intent);
    }

    /* renamed from: b */
    private void m2461b(ActivityManager.RunningTaskInfo runningTaskInfo) {
        try {
            boolean m2591f = m2591f(runningTaskInfo);
            Boolean put = this.f2205T5.put(Integer.valueOf(runningTaskInfo.taskId), Boolean.valueOf(m2591f));
            m2309a(runningTaskInfo.taskId, (SurfaceControl.Transaction) null);
            K k = this.f2156M5.get(Integer.valueOf(runningTaskInfo.taskId));
            if (k != null) {
                if (put == null || put.booleanValue() != m2591f) {
                    SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                    try {
                        m2341a(transaction, k, m2555d(runningTaskInfo.taskId));
                        transaction.apply();
                        transaction.close();
                        Log.w("DuoRail", "App rail decor task=" + runningTaskInfo.taskId + " outer=" + m2591f + " shown=" + m2555d(runningTaskInfo.taskId));
                    } finally {
                    }
                }
            }
        } catch (Throwable th) {
            if (this.f2212U5) {
                return;
            }
            this.f2212U5 = true;
            Log.w("DuoRail", "App rail decor bounds check failed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2391a(String str, int i) {
        this.f2250a2 = str;
        this.f2257b2 = (WindowInsets.Type.statusBars() & i) != 0;
        if (this.f2243Z1.isEmpty()) {
            return;
        }
        m2663k(this.f2243Z1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2394a(final String str, final long j) {
        final long m2136a = this.f2130J0.m2136a();
        final WindowModeCache.b m2272a = m2272a(str, "foreground");
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda204
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2327a(j, m2272a, str, m2136a);
            }
        });
    }

    /* renamed from: i */
    private void m2633i(int i) {
        if (m2572e()) {
            m2146A(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2327a(final long j, WindowModeCache.b bVar, String str, long j2) {
        this.f2138K1 = false;
        if (j != this.f2117H1) {
            m2595f1();
            return;
        }
        if (bVar == null) {
            WindowModeCache.b m2139b = this.f2130J0.m2139b(str);
            this.f2131J1 = m2139b != null && m2139b.f1983a;
            if (m2139b != null) {
                m2410a(m2139b.f1984b);
            }
            if (this.f2275e2 != j) {
                this.f2275e2 = j;
                this.f2287g2 = 0;
            }
            int i = this.f2287g2;
            this.f2287g2 = i + 1;
            long m2134a = WindowModeCache.m2134a(i);
            this.f2281f2 = SystemClock.uptimeMillis() + m2134a;
            Log.w("DuoRail", "Duo config unknown pkg=" + str + " known=" + (m2139b != null) + " retryMs=" + m2134a);
            this.f2071A1.postDelayed(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda86
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2323a(j);
                }
            }, m2134a);
            m2207P();
            return;
        }
        WindowModeCache.a m2137a = this.f2130J0.m2137a(str, bVar, j2);
        if (m2137a == null) {
            bVar = this.f2130J0.m2139b(str);
        }
        m2148A1();
        if (bVar == null) {
            m2207P();
            return;
        }
        this.f2269d2 = j;
        this.f2131J1 = bVar.f1983a;
        m2410a(bVar.f1984b);
        if (m2137a != null && m2137a.f1982b) {
            m2718p(str);
        }
        m2207P();
    }

    /* renamed from: i */
    private boolean m2638i(String str) {
        WindowModeCache.b m2139b = this.f2130J0.m2139b(str);
        return m2139b != null && m2139b.f1983a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m2473b(K k, View view) {
        m2724q(view);
        if (m2737s() && k.f2452t == this.f2110G1 && m2788R0()) {
            m2779z0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void m2312a(final int i, final L l) {
        if (this.f2163N5.get(Integer.valueOf(i)) != l) {
            return;
        }
        try {
            final K m2629i = m2629i();
            this.f2186R0.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda210
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2360a(l, i, m2629i);
                }
            });
        } catch (Throwable th) {
            this.f2186R0.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda211
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.L.this.f2461c = false;
                }
            });
            Log.w("DuoRail", "App rail decor late build failed task=" + i, th);
        }
    }

    /* renamed from: b */
    private void m2454b(int i, SurfaceControl.Transaction transaction) {
        final K remove = this.f2156M5.remove(Integer.valueOf(i));
        if (remove == null) {
            return;
        }
        if (transaction != null) {
            m2341a(transaction, remove, false);
            transaction.reparent(remove.f2433a, null);
        }
        Log.w("DuoRail", "App rail decor detach task=" + i);
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda137
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2472b(remove);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2323a(long j) {
        if (j == this.f2117H1) {
            m2595f1();
        }
    }

    /* renamed from: a */
    private WindowModeCache.b m2272a(String str, String str2) {
        WindowModeCache.b bVar;
        String str3;
        if (Looper.myLooper() != null) {
            Log.e("DuoRail", "Duo config read refused on looper thread " + Thread.currentThread().getName() + " pkg=" + str);
            return null;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        try {
            Context context = this.f2301i4;
            if (context == null) {
                context = (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
            }
            if (context == null) {
                return null;
            }
            SharedPreferences m2758w = m2758w();
            if (m2758w != null) {
                int m1225b = ConfigKeys.m1225b(m2758w, str, this.f2311k2);
                WindowModeCache.b bVar2 = new WindowModeCache.b(!ConfigKeys.f1171i.contains(str) && m2758w.getBoolean(new StringBuilder().append(str).append("/enabled").toString(), ConfigKeys.m1242e(str)) && ConfigKeys.m1229b(m2758w) && m2791v0(), Color.luminance(m1225b) <= 0.45f, m1225b, ConfigKeys.m1212a(m2758w, str, this.f2311k2) != null, ConfigKeys.m1239d(m2758w, str), ConfigKeys.m1231c(m2758w, str));
                if (str2 != null) {
                    Log.w("DuoRail", "Duo config read pkg=" + str + " reason=" + str2 + " direct ms=" + (SystemClock.uptimeMillis() - uptimeMillis) + " enabled=" + bVar2.f1983a + " black=" + bVar2.f1984b);
                }
                return bVar2;
            }
            Bundle bundle = new Bundle();
            bVar = null;
            try {
                bundle.putBoolean("railNight", this.f2311k2);
                Bundle call = context.getContentResolver().call(Uri.parse("content://dev.duo.hookprobe.config"), "railEnabled", str, bundle);
                WindowModeCache.b m2135a = WindowModeCache.m2135a(call != null, call != null && call.containsKey("enabled"), call != null && call.getBoolean("enabled", false) && m2791v0(), call != null && Color.luminance(call.getInt("railBackground", f2019a)) <= 0.45f, call == null ? f2019a : call.getInt("railBackground", f2019a), call != null && call.getBoolean("railCustomBackground", false), call != null && call.getBoolean("innerNativeBar", false), call == null ? 0 : call.getInt("hiddenTop", 0), call != null && call.containsKey("error"));
                if (str2 != null) {
                    StringBuilder append = new StringBuilder().append("Duo config read pkg=").append(str).append(" reason=").append(str2).append(" thread=").append(Thread.currentThread().getName()).append(" ms=").append(SystemClock.uptimeMillis() - uptimeMillis);
                    if (m2135a == null) {
                        str3 = " failed=" + (call == null ? "no response" : call.getString("error", "no enabled"));
                    } else {
                        str3 = " enabled=" + m2135a.f1983a + " black=" + m2135a.f1984b;
                    }
                    Log.w("DuoRail", append.append(str3).toString());
                }
                return m2135a;
            } catch (Throwable th) {
                th = th;
                if (str2 != null) {
                    Log.w("DuoRail", "Duo config read failed pkg=" + str + " reason=" + str2, th);
                }
                return bVar;
            }
        } catch (Throwable th2) {
            th = th2;
            bVar = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m2472b(K k) {
        boolean z;
        k.f2452t = -1;
        k.f2454v = -1L;
        k.f2449q.m2891a(false);
        synchronized (this.f2149L5) {
            z = this.f2149L5.size() < 3;
            if (z) {
                this.f2149L5.add(k);
            }
        }
        if (!z) {
            m2519c(k);
        }
        m2207P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ boolean m2573e(View view) {
        if (!this.f2119H3 || !m2737s() || !m2788R0()) {
            return true;
        }
        m2698n0();
        return true;
    }

    /* renamed from: e */
    private static Bundle m2563e(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("unavailable", str);
        return bundle;
    }

    /* renamed from: e */
    private boolean m2572e() {
        return !this.f2145L1 && m2739s0() && this.f2083C1 && m2590f() && m2170F1() > 0.001f && this.f2273d6 == 1 && this.f2285f6 >= 0.999f;
    }

    /* renamed from: b */
    private void m2479b(ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.android.wm.shell.common.transition.DefaultTransitionImpl", false, classLoader);
            Class<?> cls2 = Class.forName("android.window.TransitionInfo", false, classLoader);
            Class<?> cls3 = Class.forName("android.window.TransitionInfo$Change", false, classLoader);
            final Method declaredMethod = cls.getDeclaredMethod("hasLetterboxOffsetFlag", cls3);
            final Method declaredMethod2 = cls.getDeclaredMethod("hasAppCompatLetterboxBounds", cls3);
            final Method declaredMethod3 = cls.getDeclaredMethod("applyAppFrameInitialize", Animation.class, Rect.class, cls3, Boolean.TYPE);
            Method[] methodArr = {declaredMethod, declaredMethod2, declaredMethod3};
            for (int i = 0; i < 3; i++) {
                methodArr[i].setAccessible(true);
            }
            final Method method = cls3.getMethod("getTaskInfo", null);
            final Method method2 = cls3.getMethod("getFlags", null);
            final Method method3 = cls3.getMethod("getEndAbsBounds", null);
            final Method method4 = cls3.getMethod("getEndDisplayId", null);
            final int i2 = cls2.getField("FLAG_IN_TASK_WITH_EMBEDDED_ACTIVITY").getInt(null) | cls2.getField("FLAG_FILLS_TASK").getInt(null);
            hook(cls.getDeclaredMethod("updateTranslateAnimationIfNeeded", cls2, Animation.class, cls3)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda4
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2295a;
                    m2295a = WorkspaceHooks.this.m2295a(method, method2, i2, declaredMethod, declaredMethod2, method3, method4, declaredMethod3, chain);
                    return m2295a;
                }
            });
        } catch (Throwable th) {
            Log.w("DuoRail", "Embedded letterbox animation hook failed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ void m2671l(View view) {
        if (!m2788R0() || this.f2330n3) {
            return;
        }
        m2724q(view);
        m2774y0();
    }

    /* renamed from: l */
    private void m2675l(boolean z) {
        if (z == this.f2101E6) {
            return;
        }
        Log.w("DuoRail", "IME " + (z ? "shown" : "hidden"));
        this.f2101E6 = z;
        m2612g2();
        if (this.f2083C1 && m2727q0()) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                m2425a(transaction);
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
    /* renamed from: l */
    public /* synthetic */ Object m2668l(XposedInterface.Chain chain) throws Throwable {
        final int intValue = ((Integer) chain.getArg(0)).intValue();
        if (intValue == 15) {
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda164
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2215R();
                }
            });
        } else if (intValue == f1994C0 || intValue == 1) {
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda165
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2681m(intValue);
                }
            });
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ Object m2445b(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        Object arg = chain.getArg(0);
        Long remove = this.f2135J5.remove(arg);
        if (this.f2128I5.remove(arg)) {
            if (remove != null) {
                Log.w("DuoRail", "Mode transition finished ms=" + (SystemClock.uptimeMillis() - remove.longValue()));
            }
            this.f2071A1.post(new b$$ExternalSyntheticLambda72(this));
        }
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda162
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2191L();
            }
        });
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2405a(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            m2718p((String) it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m2459b(long j) {
        if (this.f2339o6 == j && this.f2327m6 == null) {
            Consumer<long[]> consumer = this.f2076A6;
            if (consumer != null) {
                consumer.accept(new long[]{0, 0, 0, 0});
            }
            this.f2261b6 = false;
            this.f2285f6 = 0.0f;
            this.f2369t6 = false;
            if (this.f2083C1) {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    m2425a(transaction);
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
            m2689m2();
        }
    }

    /* renamed from: a */
    private boolean m2420a(int i, List<SurfaceControl> list, K k, int i2) {
        try {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                if (f2058t0 == null) {
                    f2058t0 = SurfaceControl.Transaction.class.getMethod("setColor", SurfaceControl.class, float[].class);
                }
                float[] fArr = {Color.red(i2) / 255.0f, Color.green(i2) / 255.0f, Color.blue(i2) / 255.0f};
                for (SurfaceControl surfaceControl : list) {
                    if (surfaceControl.isValid()) {
                        f2058t0.invoke(transaction, surfaceControl, fArr);
                    }
                }
                if (k != null) {
                    m2339a(transaction, k, i2);
                }
                transaction.apply();
                transaction.close();
                this.f2317l2.put(Integer.valueOf(i), Integer.valueOf(i2));
                return true;
            } finally {
            }
        } catch (Throwable th) {
            Log.w("DuoRail", "Letterbox repaint failed task=" + i, th);
            return false;
        }
    }

    /* renamed from: b */
    private boolean m2496b(boolean z, Set<String> set) {
        m2465b(m2719p0());
        if (!m2727q0() || !m2739s0()) {
            return false;
        }
        if (z && !m2750u() && (!this.f2121H5 || this.f2142K5 != this.f2117H1)) {
            m2262a(this.f2087C5, set);
            this.f2142K5 = this.f2117H1;
        }
        this.f2121H5 = z;
        m2612g2();
        Log.w("DuoRail", "Rail target -> " + (z ? "app" : "desktop") + "; native progress");
        return true;
    }

    /* renamed from: b */
    /*
    */
    private boolean m2489b(SurfaceControl.Transaction transaction, boolean z) {
        boolean z2;
        R r;
        float f;
        if (z) {
            m2465b(m2719p0());
        }
        float m2762w0 = m2762w0();
        m2689m2();
        boolean m2750u = m2750u();
        float f2 = 0.0f;
        float f3 = (m2750u || this.f2369t6) ? 0.0f : 1.0f;
        boolean z3 = true;
        if (this.f2164N6 != null) {
            float f4 = m2762w0 * f3;
            boolean z4 = f4 > 0.001f;
            if (!this.f2319l4 || f4 != this.f2349q4 || z4 != this.f2325m4) {
                transaction.setAlpha(this.f2164N6.f2504b, f4).setVisibility(this.f2164N6.f2504b, z4);
                if (f4 != this.f2349q4 || z4 != this.f2325m4) {
                    this.f2319l4 = false;
                }
                z2 = true;
                r = this.f2404z5;
                if (r != null) {
                    z2 |= m2426a(transaction, r, (!this.f2119H3 || this.f2115G6) ? 0.0f : f3 * m2762w0);
                }
                if (m2727q0() || !m2739s0()) {
                    return z2;
                }
                boolean z5 = (this.f2259b4 || this.f2252a4 == f2009Q) || (this.f2377v2 == 1168 && this.f2383w2 == 1712);
                if (!Float.isNaN(this.f2368t5.f2513k)) {
                    if ((this.f2368t5.f2513k > 0.0f) != z5) {
                        z3 = z2;
                        float f5 = (!z5 ? 0.0f : this.f2107F5) * m2762w0;
                        f = this.f2114G5 * m2762w0;
                        boolean m2426a = m2426a(transaction, this.f2374u5, f5) | z3;
                        R r2 = this.f2380v5;
                        if (this.f2247Z5 <= 0) {
                            f5 = 0.0f;
                        }
                        boolean m2426a2 = m2426a | m2426a(transaction, r2, f5);
                        for (R r3 : this.f2075A5) {
                            m2426a2 |= m2426a(transaction, r3, m2750u ? 0.0f : f);
                        }
                        R r4 = this.f2386w5;
                        if (!m2750u && this.f2240Y5 > 0 && !this.f2108F6) {
                            f2 = f;
                        }
                        return m2427a(transaction, m2743t()) | m2426a2 | m2426a(transaction, r4, f2);
                    }
                }
                transaction.setVisibility(this.f2368t5.f2504b, !z5);
                this.f2368t5.f2513k = z5 ? 0.0f : 1.0f;
                float f52 = (!z5 ? 0.0f : this.f2107F5) * m2762w0;
                f = this.f2114G5 * m2762w0;
                boolean m2426a3 = m2426a(transaction, this.f2374u5, f52) | z3;
                R r22 = this.f2380v5;
                if (this.f2247Z5 <= 0) {
                }
                boolean m2426a22 = m2426a3 | m2426a(transaction, r22, f52);
                while (r5 < r4) {
                }
                R r42 = this.f2386w5;
                if (!m2750u) {
                    f2 = f;
                }
                return m2427a(transaction, m2743t()) | m2426a22 | m2426a(transaction, r42, f2);
            }
        }
        z2 = false;
        r = this.f2404z5;
        if (r != null) {
        }
        if (m2727q0()) {
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2415a(long[] jArr, int i, List list, K k, ValueAnimator valueAnimator) {
        if (valueAnimator.getCurrentPlayTime() - jArr[0] < 33) {
            return;
        }
        jArr[0] = valueAnimator.getCurrentPlayTime();
        m2420a(i, (List<SurfaceControl>) list, k, ((Integer) valueAnimator.getAnimatedValue()).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2289a(Field field, Field field2, Method method, Method method2, Constructor constructor, Field field3, Field field4, Field field5, Field field6, Field field7, Field field8, Field field9, Field field10, Field field11, XposedInterface.Chain chain) throws Throwable {
        Object[] array = chain.getArgs().toArray();
        Object obj = array[0];
        if (m2727q0() && this.f2193S0 != null && !field.getBoolean(obj)) {
            try {
                int i = field2.getInt(obj);
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) method.invoke(this.f2193S0, Integer.valueOf(i));
                if (runningTaskInfo != null && runningTaskInfo.topActivity != null && m2624h(m2599g(runningTaskInfo)) && runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) == 0 && runningTaskInfo.getClass().getField("isVisibleRequested").getBoolean(runningTaskInfo)) {
                    Rect m2582f = m2582f(runningTaskInfo.getClass().getField("appCompatTaskInfo").get(runningTaskInfo));
                    Object obj2 = runningTaskInfo.getClass().getField("configuration").get(runningTaskInfo);
                    Object obj3 = obj2.getClass().getField("windowConfiguration").get(obj2);
                    Rect rect = new Rect((Rect) obj3.getClass().getMethod("getBounds", null).invoke(obj3, null));
                    if (new Rect(0, 0, 1168, 1712).equals(rect) && new Rect(0, 0, f2056s0, 1712).equals(m2582f)) {
                        SurfaceControl surfaceControl = (SurfaceControl) method2.invoke(this.f2193S0, Integer.valueOf(i));
                        if (surfaceControl != null && surfaceControl.isValid()) {
                            Object obj4 = field3.get(obj);
                            Integer valueOf = Integer.valueOf(i);
                            Rect rect2 = new Rect(m2582f);
                            Object obj5 = runningTaskInfo.getClass().getField("token").get(runningTaskInfo);
                            Boolean valueOf2 = Boolean.valueOf(field4.getBoolean(obj));
                            Boolean valueOf3 = Boolean.valueOf(field5.getBoolean(obj));
                            Boolean valueOf4 = Boolean.valueOf(field6.getBoolean(obj));
                            Boolean bool = Boolean.FALSE;
                            array[0] = constructor.newInstance(obj4, valueOf, 0, rect, rect2, obj5, surfaceControl, null, bool, valueOf2, valueOf3, valueOf4, bool);
                            SurfaceControl surfaceControl2 = (SurfaceControl) field7.get(obj);
                            if (field8.getBoolean(obj) || field9.getInt(obj) != 0 || !m2582f.equals(field10.get(obj)) || field11.get(obj) != null || surfaceControl2 == null || !surfaceControl2.isValid()) {
                                Log.w("DuoRail", "Letterbox event unified task=" + i + " type=" + field3.get(obj) + " bounds=" + m2582f + " parent=" + surfaceControl);
                            }
                        } else {
                            Log.e("DuoRail", "Letterbox event has no valid organizer leash task=" + i);
                        }
                    }
                }
            } catch (ReflectiveOperationException e) {
                Log.e("DuoRail", "Letterbox event unification failed", e);
            }
        }
        return chain.proceed(array);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static String m2450b(TelephonyDisplayInfo telephonyDisplayInfo) {
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
                    case f2063w /* 16 */:
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
                    case f1994C0 /* 13 */:
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
    /* renamed from: a */
    public /* synthetic */ Object m2286a(Field field, Field field2, Field field3, Field field4, Field field5, Object obj, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        boolean z = false;
        Object arg = chain.getArg(0);
        int i = field.getInt(arg);
        Rect rect = (Rect) field2.get(arg);
        Map<Integer, Boolean> map = this.f2219V5;
        Integer valueOf = Integer.valueOf(i);
        if (rect != null && rect.width() == 1168 && rect.height() == 1712) {
            z = true;
        }
        map.put(valueOf, Boolean.valueOf(z));
        if (!field3.getBoolean(arg) && !field4.getBoolean(arg) && m2767x(i) && field5.get(chain.getThisObject()) != obj) {
            field5.set(chain.getThisObject(), obj);
            if (this.f2347q2.add(Integer.valueOf(i))) {
                Log.w("DuoRail", "Strip letterbox (outside app only) task=" + i);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2399a(final String str, final i0 i0Var) {
        final Bundle m2270a = m2270a("pageTones", str, (Bundle) null);
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda65
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2400a(str, i0Var, m2270a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2400a(String str, i0 i0Var, Bundle bundle) {
        if (this.f2104F2.get(str) != i0Var) {
            return;
        }
        i0Var.f2742a = true;
        boolean z = bundle != null && bundle.containsKey("colors");
        i0Var.f2743b = z;
        if (!z) {
            this.f2104F2.remove(str);
            Log.w("DuoPick", "Page colours of " + str + " not available (provider answered " + (bundle == null ? "null" : "no colours") + "), asked again at the next page");
        }
        if (i0Var.f2743b) {
            i0Var.f2744c = bundle.getLong("revision");
            Bundle bundle2 = bundle.getBundle("colors");
            for (String str2 : bundle2.keySet()) {
                i0Var.f2745d.put(str2, Integer.valueOf(bundle2.getInt(str2)));
            }
            i0Var.f2747f.addAll(bundle.getStringArrayList("bases"));
            Bundle bundle3 = bundle.getBundle("edges");
            for (String str3 : bundle3.keySet()) {
                i0Var.f2746e.put(str3, Integer.valueOf(bundle3.getInt(str3)));
            }
        }
        if (str.equals(this.f2090D2)) {
            m2164E(this.f2078B2);
            m2542d(0L);
            m2655j2();
        }
    }

    /* renamed from: a */
    private static List<int[]> m2305a(i0 i0Var, String str, int i) {
        TreeMap treeMap = new TreeMap();
        Iterator<Map.Entry<String, Integer>> it = i0Var.f2745d.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, Integer> next = it.next();
            int lastIndexOf = next.getKey().lastIndexOf(35);
            if (lastIndexOf >= 0 && next.getKey().substring(0, lastIndexOf).equals(str)) {
                Integer num = i0Var.f2746e.get(next.getKey());
                treeMap.put(Integer.valueOf(Integer.parseInt(next.getKey().substring(lastIndexOf + 1))), new int[]{num != null ? num.intValue() : 0, next.getValue().intValue()});
            }
        }
        ArrayList arrayList = new ArrayList(treeMap.values());
        if (i0Var.f2747f.contains(str)) {
            Integer num2 = i0Var.f2746e.get(str);
            arrayList.add(new int[]{num2 != null ? num2.intValue() : 0, i});
        }
        return arrayList;
    }

    /* renamed from: a */
    private static int[] m2435a(List<int[]> list, int i) {
        int abs;
        int[] iArr = null;
        if (i != 0) {
            int i2 = Integer.MAX_VALUE;
            for (int[] iArr2 : list) {
                int i3 = iArr2[0];
                if (i3 != 0 && ColorPickSession.m855a(i3, i) && (abs = Math.abs(((iArr2[0] >> f2063w) & 255) - ((i >> f2063w) & 255)) + Math.abs(((iArr2[0] >> 8) & 255) - ((i >> 8) & 255)) + Math.abs((iArr2[0] & 255) - (i & 255))) < i2) {
                    iArr = iArr2;
                    i2 = abs;
                }
            }
        }
        if (i == 0) {
            for (int[] iArr3 : list) {
                if (iArr3[0] == 0) {
                    return iArr3;
                }
            }
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2406a(List list, int i, String str, int i2, int i3, Integer num) {
        int[] m2435a = num == null ? null : m2435a((List<int[]>) list, num.intValue());
        if (m2435a == null || i != this.f2078B2 || !str.equals(this.f2097E2) || this.f2181Q2) {
            return;
        }
        this.f2111G2.put(str, Integer.valueOf(m2435a[1]));
        int i4 = m2435a[1];
        if (i4 == i3) {
            i4 = 0;
        }
        m2513c(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static int m2443b(SignalStrength signalStrength) {
        int i;
        int i2 = -1;
        for (CellSignalStrength cellSignalStrength : signalStrength.getCellSignalStrengths()) {
            Object computeIfAbsent = f2066x0.computeIfAbsent(cellSignalStrength.getClass(), new Function() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda18
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Object m2279a;
                    m2279a = WorkspaceHooks.m2279a((Class<?>) obj);
                    return m2279a;
                }
            });
            try {
            } catch (ReflectiveOperationException e) {
                f2066x0.put(cellSignalStrength.getClass(), cellSignalStrength.getClass());
                Log.w("DuoRail", "MIUI signal level read failed, using AOSP level for " + cellSignalStrength.getClass().getName(), e);
            }
            if (computeIfAbsent instanceof Method) {
                i = ((Integer) ((Method) computeIfAbsent).invoke(cellSignalStrength, null)).intValue();
            } else {
                if (computeIfAbsent instanceof Field) {
                    i = ((Field) computeIfAbsent).getInt(cellSignalStrength);
                }
                i = -1;
            }
            if (i < 0) {
                i = cellSignalStrength.getLevel();
            }
            i2 = Math.max(i2, i);
        }
        return i2 < 0 ? signalStrength.getLevel() : Math.min(4, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2314a(int i, final M m, final Consumer consumer) {
        final SurfaceControl surfaceControl;
        if (this.f2401z2 != null) {
            try {
                surfaceControl = (SurfaceControl) this.f2401z2.invoke(this.f2193S0, Integer.valueOf(i));
            } catch (ReflectiveOperationException e) {
                Log.e("DuoPick", "Cannot find task", e);
            }
            this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda135
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2345a(surfaceControl, m, consumer);
                }
            });
        }
        surfaceControl = null;
        this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda135
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2345a(surfaceControl, m, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2345a(SurfaceControl surfaceControl, M m, final Consumer consumer) {
        final Integer num;
        if (surfaceControl != null && surfaceControl.isValid()) {
            try {
                num = Integer.valueOf(m.mo2793a(surfaceControl));
            } catch (ReflectiveOperationException | RuntimeException e) {
                Log.e("DuoPick", "Capture failed", e);
            }
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda133
                @Override // java.lang.Runnable
                public final void run() {
                    consumer.accept(num);
                }
            });
        }
        num = null;
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda133
            @Override // java.lang.Runnable
            public final void run() {
                consumer.accept(num);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m2460b(ValueAnimator valueAnimator) {
        boolean z = this.f2150L6 >= 0.999f;
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f2150L6 = floatValue;
        if (z != (floatValue >= 0.999f)) {
            m2207P();
            return;
        }
        if (this.f2083C1 && this.f2124I1) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                m2425a(transaction);
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

    /* renamed from: a */
    private int m2252a(int i) {
        String m2599g = m2599g(this.f2109G0.get(Integer.valueOf(i)));
        WindowModeCache.b m2139b = m2599g == null ? null : this.f2130J0.m2139b(m2599g);
        return m2139b == null ? f2019a : m2139b.f1988f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m2308a(final int i, final ComponentName componentName) {
        final String str = i + "/" + (this.f2311k2 ? "dark/" : "light/") + componentName.flattenToString();
        if (str.equals(this.f2395y2) && !this.f2124I1 && this.f2110G1 == i) {
            return;
        }
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda175
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2317a(i, str, componentName);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2317a(int i, String str, ComponentName componentName) {
        if (i != this.f2110G1 || this.f2124I1 || !m2651j(i) || str.equals(this.f2395y2)) {
            return;
        }
        this.f2395y2 = str;
        this.f2078B2++;
        this.f2084C2 = i;
        this.f2090D2 = componentName.getPackageName();
        this.f2097E2 = (this.f2311k2 ? "dark/" : "light/") + componentName.getClassName() + "|";
        this.f2139K2 = "";
        this.f2153M2++;
        this.f2160N2 = SystemClock.uptimeMillis();
        m2755v();
        i0 i0Var = this.f2104F2.get(this.f2090D2);
        if (i0Var == null) {
            i0Var = new i0(null);
            this.f2104F2.put(this.f2090D2, i0Var);
            m2483b(this.f2090D2, i0Var);
        }
        if (i0Var.f2742a) {
            m2164E(this.f2078B2);
            m2542d(450L);
        }
        m2655j2();
    }

    /* renamed from: b */
    private void m2453b(float f) {
        this.f2171O6 = Math.max(0.0f, Math.min(1.0f, f));
        if (this.f2083C1 && this.f2124I1) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                m2425a(transaction);
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
    /* renamed from: b */
    public void m2471b(J j) {
        if (this.f2199S6.add(j)) {
            if (this.f2199S6.size() == 1) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.media.RINGER_MODE_CHANGED");
                intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
                intentFilter.addAction("android.location.MODE_CHANGED");
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
                intentFilter.addAction("android.net.wifi.WIFI_AP_STATE_CHANGED");
                try {
                    this.f2301i4.registerReceiver(this.f2227W6, intentFilter, null, this.f2071A1);
                    this.f2206T6 = true;
                } catch (RuntimeException e) {
                    Log.w("DuoRail", "Rail switch receiver unavailable", e);
                }
                ContentResolver contentResolver = this.f2301i4.getContentResolver();
                try {
                    this.f2213U6 = true;
                    String[] strArr = {"accelerometer_rotation", "screen_brightness_mode", "screen_paper_mode_enabled", "screen_off_timeout"};
                    for (int i = 0; i < 4; i++) {
                        contentResolver.registerContentObserver(Settings.System.getUriFor(strArr[i]), false, this.f2234X6);
                    }
                    contentResolver.registerContentObserver(Settings.Global.getUriFor("airplane_mode_on"), false, this.f2234X6);
                } catch (RuntimeException e2) {
                    Log.w("DuoRail", "Rail switch observer unavailable", e2);
                }
            }
            m2666k1();
        }
    }

    /* renamed from: a */
    private Bundle m2270a(String str, String str2, Bundle bundle) {
        try {
            Bundle call = this.f2301i4.getContentResolver().call(Uri.parse("content://dev.duo.hookprobe.config"), str, str2, bundle);
            if (call != null && call.containsKey("error")) {
                Log.e("DuoPick", str + ": " + call.getString("error"));
            }
            return call;
        } catch (RuntimeException e) {
            Log.e("DuoPick", "Provider call failed: " + str, e);
            return null;
        }
    }

    /* renamed from: a */
    private TextView m2271a(String str, View.OnClickListener onClickListener) {
        TextView textView = new TextView(this.f2301i4);
        textView.setText(str);
        textView.setTextSize(14.0f);
        textView.setTextColor(-14460213);
        textView.setGravity(17);
        textView.setBackgroundColor(-986379);
        textView.setOnClickListener(onClickListener);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ boolean m2434a(float[] fArr, View view, MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            fArr[0] = motionEvent.getRawX();
            fArr[1] = motionEvent.getRawY();
            fArr[2] = this.f2223W2;
            fArr[3] = this.f2230X2;
        } else if (motionEvent.getActionMasked() == 2) {
            this.f2223W2 = Math.max(0, Math.min(120, (int) ((fArr[2] + motionEvent.getRawX()) - fArr[0])));
            int max = Math.max(0, Math.min(1712 - this.f2237Y2.f2509g, (int) ((fArr[3] + motionEvent.getRawY()) - fArr[1])));
            this.f2230X2 = max;
            m2363a(this.f2237Y2, this.f2223W2, max, 2001);
        }
        return true;
    }

    /* renamed from: a */
    private void m2363a(final R r, final int i, final int i2, final int i3) {
        if (this.f2401z2 == null || this.f2193S0 == null) {
            return;
        }
        final int i4 = this.f2110G1;
        (this.f2186R0 == null ? this.f2071A1 : this.f2186R0).post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda208
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2364a(r, i4, i, i2, i3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2364a(R r, int i, int i2, int i3, int i4) {
        try {
            if (r.f2516n) {
                return;
            }
            SurfaceControl surfaceControl = (SurfaceControl) this.f2401z2.invoke(this.f2193S0, Integer.valueOf(i));
            if (i == this.f2110G1 && m2151B0() && surfaceControl != null && surfaceControl.isValid()) {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    transaction.reparent(r.f2504b, surfaceControl).setPosition(r.f2504b, i2, i3).setLayer(r.f2504b, i4).setCrop(r.f2504b, new Rect(0, 0, r.f2508f, r.f2509g)).setVisibility(r.f2504b, true).apply();
                    transaction.close();
                } finally {
                }
            }
        } catch (ReflectiveOperationException e) {
            Log.e("DuoPick", "Cannot attach picker", e);
        }
    }

    /* renamed from: a */
    private static boolean m2418a(int i, int i2) {
        return Math.abs(((i >> f2063w) & 255) - ((i2 >> f2063w) & 255)) <= 8 && Math.abs(((i >> 8) & 255) - ((i2 >> 8) & 255)) <= 8 && Math.abs((i & 255) - (i2 & 255)) <= 8;
    }

    /* renamed from: a */
    private void m2411a(final boolean z, final Rect rect) {
        WorkspaceHooks c0143b;
        boolean z2;
        Rect rect2;
        if (this.f2174P2 || !m2151B0() || this.f2167O2 || this.f2153M2 == 0 || this.f2401z2 == null) {
            c0143b = this;
            z2 = z;
            rect2 = rect;
        } else {
            if (SystemClock.uptimeMillis() - this.f2160N2 >= 500) {
                i0 i0Var = this.f2104F2.get(this.f2090D2);
                if (i0Var == null || !i0Var.f2743b) {
                    return;
                }
                final int i = this.f2078B2;
                final int i2 = this.f2110G1;
                final long j = this.f2153M2;
                final long j2 = this.f2146L2;
                this.f2174P2 = true;
                m2456b(i2, new M() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda6
                    @Override // dev.duo.workspaceprobe.WorkspaceHooks.M
                    /* renamed from: a */
                    public final int mo2793a(SurfaceControl surfaceControl) {
                        int m2253a;
                        m2253a = WorkspaceHooks.m2253a(rect, surfaceControl);
                        return m2253a;
                    }
                }, new Consumer() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda7
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        WorkspaceHooks.this.m2334a(rect, j2, i, j, z, i2, (Integer) obj);
                    }
                });
                return;
            }
            c0143b = this;
            z2 = z;
            rect2 = rect;
        }
        if (z2) {
            c0143b.f2132J2 = "请等页面停稳后再点取色";
            m2161D0();
        }
        if (rect2 == null || c0143b.f2237Y2 == null || !m2151B0()) {
            return;
        }
        m2363a(c0143b.f2237Y2, c0143b.f2223W2, c0143b.f2230X2, 2001);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ int m2253a(Rect rect, SurfaceControl surfaceControl) throws ReflectiveOperationException {
        return rect == null ? m2257a(surfaceControl) : m2258a(surfaceControl, rect);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2334a(Rect rect, long j, int i, long j2, boolean z, int i2, Integer num) {
        String str;
        int i3;
        this.f2174P2 = false;
        if (rect != null && this.f2237Y2 != null && m2151B0()) {
            m2363a(this.f2237Y2, this.f2223W2, this.f2230X2, 2001);
        }
        if (m2151B0() && j == this.f2146L2 && i == this.f2078B2 && j2 == this.f2153M2) {
            if (num == null) {
                if (z) {
                    this.f2132J2 = "取色失败，可重取";
                    m2161D0();
                }
                this.f2209U2 = 0;
                return;
            }
            int intValue = num.intValue();
            if (intValue == 0) {
                if (z || m2156C0()) {
                    this.f2132J2 = "右侧颜色不够单一，请点选取色位置";
                    m2161D0();
                }
                this.f2209U2 = 0;
                return;
            }
            boolean m2156C0 = m2156C0();
            if (!z && ((i3 = this.f2209U2) == 0 || !m2418a(i3, intValue))) {
                this.f2209U2 = intValue;
                return;
            }
            this.f2209U2 = intValue;
            String str2 = this.f2097E2 + "/" + intValue;
            if (z || !str2.equals(this.f2139K2)) {
                if (!z && !m2156C0) {
                    if (m2418a(m2747u(i2), intValue)) {
                        return;
                    } else {
                        this.f2139K2 = str2;
                    }
                }
                this.f2216V2 = intValue;
                this.f2181Q2 = true;
                if (this.f2097E2.isEmpty()) {
                    str = "可保存颜色并临时使用；此页面暂不能自动识别";
                } else {
                    str = (z || m2156C0) ? "确认正确才记录；切换页面将取消本次确认" : "发现不同颜色，正确就保存；切换页面将取消本次确认";
                }
                this.f2132J2 = str;
                m2513c(i2, intValue);
                m2161D0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2325a(final long j, final long j2, final int i, int i2, final long j3, final String str, final String str2, final boolean z, final Bundle bundle, final boolean z2, final int i3, Integer num) {
        if (!m2151B0() || this.f2167O2 || j != this.f2146L2 || j2 != this.f2153M2 || i != this.f2078B2 || i2 != this.f2110G1 || j3 != this.f2117H1 || !str.equals(this.f2090D2) || !str2.equals(this.f2097E2) || z != this.f2311k2) {
            this.f2174P2 = false;
            m2161D0();
        } else if (num == null) {
            this.f2174P2 = false;
            this.f2132J2 = "保存失败，请重试";
            m2161D0();
        } else {
            bundle.putInt("edge", num.intValue());
            if (num.intValue() != 0) {
                this.f2139K2 = str2 + "/" + num;
            }
            this.f2180Q1.execute(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda173
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2326a(j, j2, i, j3, str, bundle, z2, z, str2, i3);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2326a(final long j, long j2, final int i, long j3, final String str, Bundle bundle, final boolean z, final boolean z2, final String str2, final int i2) {
        if (j == this.f2146L2 && j2 == this.f2153M2 && i == this.f2078B2 && j3 == this.f2117H1) {
            final Bundle m2270a = m2270a("pickConfirm", str, bundle);
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda29
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2337a(m2270a, j, z, z2, str, str2, i2, i);
                }
            });
        } else {
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda30
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2183J();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2337a(Bundle bundle, final long j, boolean z, boolean z2, String str, String str2, int i, int i2) {
        this.f2174P2 = false;
        if (bundle == null || !bundle.getBoolean("saved")) {
            this.f2132J2 = bundle == null ? "保存失败，请重新取色" : bundle.getString("error", "保存失败");
        } else {
            if (j != this.f2146L2) {
                return;
            }
            if (z) {
                if (z2) {
                    this.f2195S2 = true;
                } else {
                    this.f2188R2 = true;
                }
                m2553d(str, "picker default");
            }
            this.f2132J2 = "已保存，这个界面（或这个标签）以后都用这个颜色";
            this.f2111G2.put(str2, Integer.valueOf(i));
            String string = bundle.getString("share");
            if (string != null) {
                ColorPickSession.m856b(string, m2510c(ColorPickSession.f828d, ""));
            }
            if (i2 == this.f2078B2 && m2151B0()) {
                this.f2181Q2 = false;
                m2513c(this.f2110G1, i);
            }
        }
        m2161D0();
        final String str3 = this.f2132J2;
        this.f2071A1.postDelayed(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda121
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2328a(j, str3);
            }
        }, 2500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2328a(long j, String str) {
        if (this.f2146L2 == j && str.equals(this.f2132J2) && !this.f2181Q2) {
            this.f2132J2 = "";
            m2161D0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2336a(Bundle bundle) {
        m2270a("pickState", (String) null, bundle);
        this.f2071A1.post(new b$$ExternalSyntheticLambda89(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2362a(final R r) {
        try {
            try {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    if (r.f2504b.isValid()) {
                        transaction.reparent(r.f2504b, null).apply();
                    }
                    transaction.close();
                    this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda136
                        @Override // java.lang.Runnable
                        public final void run() {
                            WorkspaceHooks.R.this.m2818b();
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
            } catch (RuntimeException e) {
                Log.e("DuoPick", "Picker layer not detached", e);
                Handler handler = this.f2071A1;
                Objects.requireNonNull(r);
                handler.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda136
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.R.this.m2818b();
                    }
                });
            }
        } catch (Throwable th3) {
            Handler handler2 = this.f2071A1;
            Objects.requireNonNull(r);
            handler2.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda136
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.R.this.m2818b();
                }
            });
            throw th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2324a(long j, long j2, int i, int i2) {
        if (j == this.f2153M2 && j2 == this.f2146L2 && m2151B0()) {
            m2411a(true, new Rect(i - 2, i2 - 2, i + 3, i2 + 3));
        } else if (m2151B0()) {
            m2363a(this.f2237Y2, this.f2223W2, this.f2230X2, 2001);
        }
    }

    /* renamed from: a */
    private static int m2258a(SurfaceControl surfaceControl, Rect rect) throws ReflectiveOperationException {
        HardwareBuffer hardwareBuffer;
        Bitmap bitmap;
        Bitmap bitmap2 = null;
        Object invoke = Class.forName("android.window.ScreenCaptureInternal").getMethod("captureLayers", SurfaceControl.class, Rect.class, Float.TYPE).invoke(null, surfaceControl, rect, Float.valueOf(1.0f));
        int i = 0;
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
                int i2 = 0;
                long j = 0;
                long j2 = 0;
                long j3 = 0;
                long j4 = 0;
                while (i2 < copy.getHeight()) {
                    for (int i3 = i; i3 < copy.getWidth(); i3++) {
                        if ((copy.getPixel(i3, i2) >>> 24) == 255) {
                            j2 += (r1 >> f2063w) & 255;
                            j3 += (r1 >> 8) & 255;
                            j4 += r1 & 255;
                            j++;
                        }
                    }
                    i2++;
                    i = 0;
                }
                int i4 = j == 0 ? 0 : ((int) (j4 / j)) | (((int) (j2 / j)) << f2063w) | f2021b | (((int) (j3 / j)) << 8);
                copy.recycle();
                bitmap.recycle();
                hardwareBuffer.close();
                return i4;
            } catch (Throwable th) {
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
        } catch (Throwable th2) {
            th = th2;
            bitmap = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    /*
    */
    public static int m2257a(SurfaceControl surfaceControl) throws ReflectiveOperationException {
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
                    int i = 0;
                    for (int i2 = 0; i2 < width; i2++) {
                        int i3 = iArr[i2];
                        if ((i3 >>> 24) == 255) {
                            iArr[i] = i3;
                            i++;
                        }
                    }
                    Arrays.sort(iArr, 0, i);
                    int i4 = 0;
                    int i5 = 0;
                    int i6 = 0;
                    for (int i7 = 0; i7 < i; i7++) {
                        if (i7 > 0) {
                            if (iArr[i7] == iArr[i7 - 1]) {
                                i6++;
                                if (i6 <= i4) {
                                    i5 = iArr[i7];
                                    i4 = i6;
                                }
                            }
                        }
                        i6 = 1;
                        if (i6 <= i4) {
                        }
                    }
                    int i8 = i4 * 2 >= width ? i5 : 0;
                    copy.recycle();
                    bitmap.recycle();
                    if (hardwareBuffer != null) {
                        hardwareBuffer.close();
                    }
                    return i8;
                } catch (Throwable th) {
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
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            bitmap = null;
        }
    }

    /* renamed from: a */
    private void m2410a(boolean z) {
        boolean z2 = this.f2214V0 != z;
        this.f2214V0 = z;
        if (z2) {
            int i = !z ? 1 : 0;
            for (Q q : this.f2093D5) {
                if (q != null) {
                    q.f2499e.m2811a(i);
                }
            }
            int i2 = this.f2110G1;
            if (i2 >= 0 && !this.f2124I1) {
                m2777z(i2);
            }
            R r = this.f2386w5;
            if (r != null && (r.f2506d.getBackground() instanceof N)) {
                ((N) this.f2386w5.f2506d.getBackground()).m2811a(i);
            }
            N n = this.f2398y5;
            if (n != null) {
                n.m2811a(z ? 0 : 2);
            }
            Log.w("DuoRail", "Sidebar color=" + (z ? "black" : "white") + " pkg=" + this.f2103F1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ boolean m2419a(int i, Integer num) {
        return num.intValue() < i + (-512);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2302a(Field[] fieldArr, Field field, XposedInterface.Chain chain) throws Throwable {
        final boolean z = false;
        for (Field field2 : fieldArr) {
            z |= field2.getBoolean(chain.getArg(0));
        }
        boolean z2 = true;
        final boolean z3 = fieldArr[0].getBoolean(chain.getArg(0)) || fieldArr[1].getBoolean(chain.getArg(0)) || fieldArr[2].getBoolean(chain.getArg(0));
        final boolean z4 = fieldArr[0].getBoolean(chain.getArg(0));
        final boolean z5 = fieldArr[1].getBoolean(chain.getArg(0));
        final boolean z6 = fieldArr[2].getBoolean(chain.getArg(0));
        final boolean z7 = fieldArr[4].getBoolean(chain.getArg(0));
        final boolean z8 = field.getBoolean(chain.getArg(0));
        if (!fieldArr[1].getBoolean(chain.getArg(0)) && !fieldArr[2].getBoolean(chain.getArg(0)) && !fieldArr[4].getBoolean(chain.getArg(0))) {
            z2 = false;
        }
        this.f2391x4.m3101a(chain.getArg(0));
        final boolean z9 = z2;
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda125
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2413a(z5, z6, z7, z8, z4, z9, z, z3);
            }
        });
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2413a(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
        Runnable runnable;
        if (!this.f2246Z4 || this.f2253a5 != z || this.f2260b5 != z2 || this.f2266c5 != z3 || this.f2272d5 != z4) {
            this.f2246Z4 = true;
            this.f2253a5 = z;
            this.f2260b5 = z2;
            this.f2266c5 = z3;
            this.f2272d5 = z4;
            m2772y();
        }
        if (z5 && !this.f2312k3) {
            this.f2336o3 = 0.0f;
        }
        boolean z9 = this.f2312k3 != z5;
        this.f2312k3 = z5;
        if (z9) {
            m2772y();
        }
        if (z9 && (runnable = this.f2088C6) != null) {
            runnable.run();
        }
        if (z9 && !this.f2243Z1.isEmpty()) {
            m2663k(this.f2243Z1);
        }
        this.f2318l3 = z6;
        this.f2145L1 = z7;
        this.f2152M1 = z8;
        m2207P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2277a(int i, XposedInterface.Chain chain) throws Throwable {
        int intValue = ((Integer) chain.getArg(0)).intValue();
        final boolean z = (((Integer) chain.getArg(i)).intValue() & 2) != 0;
        if (intValue == 0) {
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda67
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2529c(z);
                }
            });
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2348a(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        m2628h2();
    }

    /* renamed from: a */
    private void m2349a(FrameLayout frameLayout) {
        FrameLayout frameLayout2 = this.f2294h3;
        if (frameLayout2 == frameLayout) {
            return;
        }
        if (frameLayout2 != null) {
            frameLayout2.removeOnLayoutChangeListener(this.f2402z3);
            frameLayout2.removeOnAttachStateChangeListener(this.f2085C3);
        }
        m2481b("container replaced");
        this.f2294h3 = frameLayout;
        Consumer<View> consumer = this.f2082B6;
        if (consumer != null) {
            consumer.accept(frameLayout.getRootView());
        }
        frameLayout.addOnLayoutChangeListener(this.f2402z3);
        frameLayout.addOnAttachStateChangeListener(this.f2085C3);
        if (frameLayout.isAttachedToWindow()) {
            m2347a((View) frameLayout);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m2347a(View view) {
        m2481b((String) null);
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        this.f2079B3 = viewTreeObserver;
        viewTreeObserver.addOnPreDrawListener(this.f2073A3);
        Log.i("DuoKeyguard", "Keyguard per-frame listeners=1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2414a(int[] iArr, boolean z, boolean z2, boolean z3) {
        if (iArr != null && iArr.length == this.f2126I3.length && !Arrays.equals(iArr, this.f2126I3)) {
            this.f2126I3 = iArr;
            m2169F0();
        }
        h0 h0Var = this.f2221W0;
        if (h0Var.f2708R == z && h0Var.f2709S == z2 && h0Var.f2710T == z3) {
            return;
        }
        h0Var.f2708R = z;
        h0Var.f2709S = z2;
        h0Var.f2710T = z3;
        m2688m1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2367a(h0 h0Var, float f) {
        h0Var.setY(f);
        m2521c(h0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2322a(int i, boolean z, boolean z2) {
        if (i != this.f2249a1) {
            this.f2249a1 = i;
            this.f2242Z0.m2903a(i);
            Log.i("DuoFoldSplit", "Nudge level " + i);
        }
        boolean z3 = this.f2358s1;
        this.f2358s1 = true;
        if (this.f2352r1 == z && z3) {
            return;
        }
        this.f2352r1 = z;
        Log.i("DuoFoldSplit", "Switch " + (z ? "on" : "off") + (z2 ? " (fold animation active)" : ""));
        m2596f2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2320a(int i, List list, List list2, String[] strArr, List list3, List list4, boolean z, boolean z2, boolean z3) {
        if (i == this.f2168O3) {
            this.f2161N3 = list;
        }
        this.f2154M3 = list2;
        boolean z4 = Arrays.equals(strArr, this.f2198S5) && list3.equals(this.f2140K3) && list4.equals(this.f2147L3);
        if (z4 && z == this.f2182Q3 && z2 == this.f2189R3) {
            return;
        }
        this.f2182Q3 = z;
        boolean z5 = z2 != this.f2189R3;
        this.f2189R3 = z2;
        if (!z4 || z5) {
            this.f2198S5 = strArr;
            this.f2140K3 = list3;
            this.f2147L3 = list4;
            if (!z3) {
                m2714p();
            }
            m2720p1();
            d0 d0Var = this.f2210U3;
            if (d0Var != null) {
                d0Var.m2871d();
            }
            Log.w("DuoRail", "Custom rail layout " + Arrays.toString(strArr) + (list3.isEmpty() ? "" : " sidebar " + list3));
        }
    }

    /* renamed from: a */
    private static int m2263a(String[] strArr) {
        for (int i = 0; i < strArr.length; i++) {
            if (RailCodec.f923f.equals(strArr[i])) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ int m2261a(Map map, String str, String str2) {
        return Long.compare(((Long) map.get(str2)).longValue(), ((Long) map.get(str)).longValue());
    }

    /* renamed from: a */
    private void m2354a(final K k) {
        float f;
        float f2;
        X x = this.f2224W3;
        if (x != null && x.f2555a == k.f2442j) {
            this.f2224W3 = null;
        }
        if (k.f2441i == null) {
            int m2162D1 = m2162D1();
            FrameLayout m2759w = m2759w(1);
            e0 e0Var = new e0();
            e0Var.setVerticalScrollBarEnabled(false);
            e0Var.setOverScrollMode(2);
            e0Var.setVerticalFadingEdgeEnabled(true);
            e0Var.setFadingEdgeLength(20);
            LinearLayout linearLayout = new LinearLayout(this.f2301i4);
            linearLayout.setOrientation(1);
            linearLayout.setPadding(20, 20, 20, 0);
            e0Var.addView(linearLayout, new FrameLayout.LayoutParams(-1, -2));
            m2759w.addView(e0Var, new FrameLayout.LayoutParams(136, m2162D1 - 136));
            c0 c0Var = new c0(this.f2301i4);
            boolean z = this.f2210U3 != null;
            c0Var.f2599c = z;
            c0Var.f2600d = z ? 1.0f : 0.0f;
            c0Var.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda150
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WorkspaceHooks.this.m2520c(k, view);
                }
            });
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(96, 96);
            layoutParams.leftMargin = 20;
            layoutParams.topMargin = m2162D1 - 116;
            m2759w.addView(c0Var, layoutParams);
            k.f2441i = m2759w;
            k.f2442j = linearLayout;
            k.f2443k = c0Var;
            k.f2446n = new FrameLayout(this.f2301i4);
            m2357a(k, m2759w, 993.0f, m2174G1(), 136, m2162D1, 60.0f);
        }
        int m2162D12 = m2162D1();
        boolean z2 = this.f2189R3;
        if (k.f2441i.getLayoutParams().height != m2162D12 || k.f2447o != z2) {
            k.f2441i.getLayoutParams().height = m2162D12;
            e0 e0Var2 = (e0) k.f2442j.getParent();
            e0Var2.getLayoutParams().height = z2 ? m2162D12 : m2162D12 - 136;
            e0Var2.m2875a(z2);
            if (k.f2447o != z2) {
                ((ViewGroup) k.f2443k.getParent()).removeView(k.f2443k);
                if (z2) {
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(96, 96);
                    layoutParams2.gravity = 17;
                    k.f2446n.addView(k.f2443k, layoutParams2);
                } else {
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(96, 96);
                    layoutParams3.leftMargin = 20;
                    k.f2441i.addView(k.f2443k, layoutParams3);
                }
                k.f2442j.setPadding(20, 20, 20, z2 ? 20 : 0);
                k.f2447o = z2;
            }
            if (!z2) {
                ((FrameLayout.LayoutParams) k.f2443k.getLayoutParams()).topMargin = m2162D12 - 116;
            }
            k.f2441i.requestLayout();
        }
        HashMap hashMap = new HashMap();
        boolean z3 = k.f2442j.getChildCount() > 0;
        float f3 = -1.0f;
        int i = 0;
        while (true) {
            f = 150.0f;
            if (i >= k.f2442j.getChildCount()) {
                break;
            }
            View childAt = k.f2442j.getChildAt(i);
            if (childAt == k.f2446n) {
                f3 = (i * 150.0f) + childAt.getTranslationY();
            } else if (childAt.getContentDescription() != null) {
                hashMap.put(childAt.getContentDescription().toString(), Float.valueOf((i * 150.0f) + childAt.getTranslationY()));
            }
            i++;
        }
        k.f2442j.removeAllViews();
        boolean z4 = k.f2443k.f2598b;
        Iterator<String> it = (this.f2203T3 ? this.f2147L3 : this.f2140K3).iterator();
        while (true) {
            f2 = f;
            Iterator<String> it2 = it;
            if (!it.hasNext()) {
                break;
            }
            final String next = it2.next();
            try {
                Drawable m2776z = m2776z(next);
                FrameLayout frameLayout = new FrameLayout(this.f2301i4);
                Float f4 = (Float) hashMap.get(next);
                float childCount = k.f2442j.getChildCount() * f2;
                if (f4 != null && f4.floatValue() != childCount) {
                    frameLayout.setTranslationY(f4.floatValue() - childCount);
                    frameLayout.animate().translationY(0.0f).setDuration(220L).setInterpolator(f2002J).start();
                } else if (f4 == null && z3) {
                    frameLayout.setScaleX(0.5f);
                    frameLayout.setScaleY(0.5f);
                    frameLayout.setAlpha(0.0f);
                    frameLayout.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(220L).setInterpolator(f2002J).start();
                }
                ImageView imageView = new ImageView(this.f2301i4);
                imageView.setImageDrawable(m2776z);
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                frameLayout.addView(imageView, new FrameLayout.LayoutParams(-1, -1));
                frameLayout.setContentDescription(next);
                if (!this.f2203T3) {
                    frameLayout.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda154
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            WorkspaceHooks.this.m2527c(next, view);
                        }
                    });
                    frameLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda155
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            boolean m2492b;
                            m2492b = WorkspaceHooks.this.m2492b(k, next, view);
                            return m2492b;
                        }
                    });
                } else {
                    V v = new V(this.f2301i4, false);
                    v.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda151
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            WorkspaceHooks.this.m2398a(next, view);
                        }
                    });
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(48, 48);
                    layoutParams4.gravity = 53;
                    frameLayout.addView(v, layoutParams4);
                    if (this.f2238Y3) {
                        m2716p(v);
                    }
                    frameLayout.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda152
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            WorkspaceHooks.this.m2482b(next, view);
                        }
                    });
                    frameLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda153
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            boolean m2430a;
                            m2430a = WorkspaceHooks.this.m2430a(k, next, view);
                            return m2430a;
                        }
                    });
                }
                frameLayout.setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda156
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        boolean m2490b;
                        m2490b = WorkspaceHooks.this.m2490b(view, motionEvent);
                        return m2490b;
                    }
                });
                LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(96, 96);
                layoutParams5.bottomMargin = 54;
                k.f2442j.addView(frameLayout, layoutParams5);
            } catch (PackageManager.NameNotFoundException e) {
            }
            f = f2;
            it = it2;
        }
        for (int size = this.f2203T3 ? this.f2147L3.size() : 12; size < 12; size++) {
            View view = new View(this.f2301i4);
            view.setBackground(m2444b(z4 ? 654311423 : 335544320, 26.0f));
            LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(96, 96);
            layoutParams6.bottomMargin = 54;
            k.f2442j.addView(view, layoutParams6);
            if (this.f2238Y3) {
                m2716p(view);
            }
        }
        if (z2) {
            float childCount2 = k.f2442j.getChildCount() * f2;
            k.f2446n.animate().cancel();
            k.f2446n.setTranslationY(f3 >= 0.0f ? f3 - childCount2 : 0.0f);
            k.f2442j.addView(k.f2446n, new LinearLayout.LayoutParams(96, 96));
            if (f3 >= 0.0f && f3 != childCount2) {
                k.f2446n.animate().translationY(0.0f).setDuration(220L).setInterpolator(f2002J).start();
            }
        }
        k.f2441i.setVisibility(0);
        k.f2441i.setY(m2174G1());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2398a(String str, View view) {
        if (m2737s()) {
            m2158D(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ boolean m2430a(K k, String str, View view) {
        return m2737s() && m2491b(k, view, str);
    }

    /* renamed from: a */
    private void m2392a(String str, int i, ActivityOptions activityOptions) {
        List<LauncherActivityInfo> m2452b = m2452b(str, i);
        if (!m2452b.isEmpty()) {
            ((LauncherApps) this.f2301i4.getSystemService(LauncherApps.class)).startMainActivity(m2452b.get(0).getComponentName(), m2153C(i), null, activityOptions == null ? null : activityOptions.toBundle());
            return;
        }
        throw new IllegalStateException(str + "@" + i + " has no launcher activity");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2319a(int i, String str, List list) {
        this.f2175P3 = i;
        try {
            Bundle bundle = new Bundle();
            bundle.putString("set", str);
            String str2 = null;
            Bundle call = this.f2301i4.getContentResolver().call(Uri.parse("content://dev.duo.hookprobe.config"), "railPanelOrder", (String) null, bundle);
            if (call != null) {
                str2 = call.getString("saved");
            }
            if (!str.equals(str2)) {
                throw new IllegalStateException(call == null ? "no response" : call.getString("error", "saved " + str2));
            }
            Log.w("DuoRail", "Sidebar panel order saved " + list.size());
        } catch (RuntimeException e) {
            Log.w("DuoRail", "Sidebar panel order save failed", e);
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda166
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2558d0();
                }
            });
        }
    }

    /* renamed from: a */
    private void m2358a(K k, View view, String str) {
        m2714p();
        int m2174G1 = ((m2174G1() + view.getTop()) - ((View) k.f2442j.getParent()).getScrollY()) + 48;
        m2783B(5);
        b0 b0Var = new b0(str, this.f2147L3.contains(str), 531, m2174G1, 420.0f, false);
        this.f2217V3 = b0Var;
        b0Var.m2855d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ int m2260a(Collator collator, Object[] objArr, Object[] objArr2) {
        return collator.compare((String) objArr[1], (String) objArr2[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2397a(String str, Bundle bundle) {
        m2270a("pickState", str, bundle);
        this.f2071A1.post(new b$$ExternalSyntheticLambda89(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    /*
    */
    public /* synthetic */ Object m2300a(boolean z, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        this.f2091D3 = (NotificationListenerService) chain.getThisObject();
        if (this.f2112G3) {
            if (z) {
                StatusBarNotification statusBarNotification = (StatusBarNotification) chain.getArg(0);
                if (!statusBarNotification.isClearable()) {
                }
            }
            this.f2071A1.removeCallbacks(this.f2098E3);
            this.f2071A1.post(this.f2098E3);
            return proceed;
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ int m2254a(StatusBarNotification statusBarNotification, StatusBarNotification statusBarNotification2) {
        return Long.compare(statusBarNotification2.getPostTime(), statusBarNotification.getPostTime());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2293a(Method method, Class cls, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        FrameLayout frameLayout = (FrameLayout) chain.getArg(0);
        Bundle bundle = new Bundle();
        bundle.putBoolean("isLeftShortcutView", false);
        Object invoke = method.invoke(chain.getThisObject(), bundle, "getShortcutView");
        bundle.putBoolean("isLeftShortcutView", true);
        Object invoke2 = method.invoke(chain.getThisObject(), bundle, "getShortcutView");
        if ((invoke instanceof ImageView) && (invoke2 instanceof ImageView)) {
            m2349a(frameLayout);
            this.f2300i3 = (ImageView) invoke;
            this.f2306j3 = (ImageView) invoke2;
            this.f2366t3 = null;
            this.f2360s3 = null;
            frameLayout.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda103
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2188K();
                }
            });
            Field declaredField = cls.getDeclaredField("miuiShortcutPlugin");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(chain.getThisObject());
            if (obj != null) {
                m2569e(obj.getClass().getClassLoader());
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2283a(Field field, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        ValueAnimator valueAnimator = (ValueAnimator) field.get(chain.getThisObject());
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f2324m3 = true;
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda177
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    WorkspaceHooks.this.m2329a(valueAnimator2);
                }
            });
            valueAnimator.addListener(new C0175e());
            Log.i("DuoKeyguard", "Following official unlock animator duration=" + valueAnimator.getDuration());
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2329a(ValueAnimator valueAnimator) {
        this.f2336o3 = valueAnimator.getAnimatedFraction();
        m2628h2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2299a(WeakHashMap weakHashMap, Field field, Field field2, XposedInterface.Chain chain) throws Throwable {
        float[] fArr = m2791v0() ? (float[]) weakHashMap.get(chain.getThisObject()) : null;
        if (fArr != null) {
            field.setFloat(chain.getThisObject(), fArr[0]);
            field2.setFloat(chain.getThisObject(), fArr[1]);
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2290a(Field field, Method method, WeakHashMap weakHashMap, Field field2, Field field3, Field field4, Field field5, Method method2, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (m2791v0()) {
            ImageView imageView = (ImageView) field.get(chain.getThisObject());
            Rect rect = imageView == this.f2300i3 ? this.f2360s3 : imageView == this.f2306j3 ? this.f2366t3 : null;
            if (rect != null && this.f2404z5 != null) {
                View view = (View) method.invoke(chain.getThisObject(), null);
                view.getLocationOnScreen(new int[2]);
                float max = Math.max(Math.max(132, Math.round(this.f2301i4.getResources().getDisplayMetrics().density * 48.0f)) + 18.0f, Math.max(this.f2360s3.height(), this.f2366t3.height()) * 2.0f);
                float m2502c = m2502c(this.f2404z5);
                float f = m2502c + (r10.f2508f / 2.0f);
                float m2536d = ((this.f2252a4 != 0 || this.f2259b4) ? m2536d(this.f2404z5) : r10.f2510h) + (this.f2404z5.f2509g / 2.0f);
                if (imageView != this.f2306j3) {
                    max = 0.0f;
                }
                float f2 = m2536d - max;
                boolean z = false;
                float exactCenterX = (f - r6[0]) - (rect.exactCenterX() - (imageView.getDrawable().getIntrinsicWidth() / 2.0f));
                float exactCenterY = (f2 - r6[1]) - (rect.exactCenterY() - (imageView.getDrawable().getIntrinsicHeight() / 2.0f));
                weakHashMap.put(view, new float[]{exactCenterX, exactCenterY});
                field2.setFloat(view, exactCenterX);
                field3.setFloat(view, exactCenterY);
                field4.setFloat(view, exactCenterX);
                field5.setFloat(view, exactCenterY);
                method2.invoke(view, Float.valueOf(1.0f));
                view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserverOnPreDrawListenerC0176f(view, method2));
                StringBuilder append = new StringBuilder().append("Official shortcut origin=").append(f).append(",").append(f2).append(" torch=");
                if (imageView == this.f2306j3) {
                    z = true;
                }
                Log.i("DuoKeyguard", append.append(z).toString());
            }
        }
        return proceed;
    }

    /* renamed from: a */
    private Rect m2268a(ImageView imageView) {
        Drawable drawable = imageView.getDrawable();
        if (drawable == null || drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Rect rect = new Rect(drawable.getBounds());
        drawable.setBounds(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
        drawable.draw(new Canvas(createBitmap));
        drawable.setBounds(rect);
        Rect m2266a = m2266a(createBitmap);
        createBitmap.recycle();
        return m2266a;
    }

    /* renamed from: a */
    private Rect m2266a(Bitmap bitmap) {
        return m2267a(bitmap, false);
    }

    /* renamed from: a */
    private Rect m2267a(Bitmap bitmap, boolean z) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[bitmap.getWidth() * bitmap.getHeight()];
        bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
        int i = -1;
        int i2 = height;
        int i3 = width;
        int i4 = -1;
        for (int i5 = 0; i5 < bitmap.getHeight(); i5++) {
            for (int i6 = 0; i6 < bitmap.getWidth(); i6++) {
                if ((iArr[(bitmap.getWidth() * i5) + i6] >>> 24) > 8 && (!z || (iArr[(bitmap.getWidth() * i5) + i6] & 255) > f2038j0)) {
                    i3 = Math.min(i3, i6);
                    i2 = Math.min(i2, i5);
                    i = Math.max(i, i6);
                    i4 = Math.max(i4, i5);
                }
            }
        }
        if (i < 0) {
            return null;
        }
        return new Rect(i3, i2, i + 1, i4 + 1);
    }

    /* renamed from: a */
    private void m2352a(ImageView imageView, Rect rect, float f, float f2, int[] iArr, int i) {
        m2470b(imageView);
        View view = (View) imageView.getParent();
        Drawable drawable = imageView.getDrawable();
        float exactCenterX = rect.exactCenterX() - (drawable.getIntrinsicWidth() / 2.0f);
        float f3 = i / 2.0f;
        float f4 = ((f - iArr[0]) - f3) - exactCenterX;
        float exactCenterY = ((f2 - iArr[1]) - f3) - (rect.exactCenterY() - (drawable.getIntrinsicHeight() / 2.0f));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        int round = Math.round(f4);
        int round2 = Math.round(exactCenterY);
        if (layoutParams.width != i || layoutParams.height != i || layoutParams.leftMargin != round || layoutParams.topMargin != round2 || layoutParams.gravity != 51) {
            layoutParams.height = i;
            layoutParams.width = i;
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
        if (layoutParams2.width != i || layoutParams2.height != i) {
            layoutParams2.height = i;
            layoutParams2.width = i;
            imageView.setLayoutParams(layoutParams2);
        }
        imageView.setTranslationX(f4 - round);
        imageView.setTranslationY(exactCenterY - round2);
    }

    /* renamed from: a */
    private static boolean m2429a(View view, View view2) {
        for (ViewParent parent = view2.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == view) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private int m2256a(Display display) {
        Display.Mode mode;
        if (display == null || (mode = display.getMode()) == null) {
            return -1;
        }
        int physicalWidth = mode.getPhysicalWidth();
        int physicalHeight = mode.getPhysicalHeight();
        if (physicalWidth == f2007O && physicalHeight == f2008P) {
            return 1;
        }
        if (physicalWidth == f2008P && physicalHeight == f2007O) {
            return 1;
        }
        if (physicalWidth == 1168 && physicalHeight == 1712) {
            return 0;
        }
        return (physicalWidth == 1712 && physicalHeight == 1168) ? 0 : -1;
    }

    /* renamed from: a */
    private void m2412a(final boolean z, final Set<String> set) {
        if (m2727q0()) {
            final long j = this.f2277e4;
            Runnable runnable = new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda183
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2416a(r2, j, z, set);
                }
            };
            final Runnable[] runnableArr = {runnable};
            this.f2283f4.add(runnable);
            this.f2071A1.post(runnableArr[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2416a(Runnable[] runnableArr, long j, boolean z, Set set) {
        this.f2283f4.remove(runnableArr[0]);
        if (j == this.f2277e4 && m2727q0() && m2496b(z, (Set<String>) set)) {
            if (this.f2083C1) {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    m2425a(transaction);
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
            m2689m2();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2285a(Field field, Field field2, Field field3, Field field4, XposedInterface.Chain chain) throws Throwable {
        Object thisObject = chain.getThisObject();
        if (m2791v0() && field.getInt(thisObject) == f2007O && field2.getInt(thisObject) == f2008P && field3.getBoolean(thisObject)) {
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
    /* renamed from: a */
    public /* synthetic */ void m2331a(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z, String str, String str2) {
        this.f2394y1 = runningTaskInfo;
        if (this.f2370u1 == z && this.f2376v1.equals(str) && this.f2382w1.equals(str2)) {
            return;
        }
        this.f2370u1 = z;
        this.f2376v1 = str;
        this.f2382w1 = str2;
        if (this.f2274e1 && this.f2388x1) {
            this.f2242Z0.m2902a();
        }
        m2596f2();
    }

    /* renamed from: a */
    private void m2382a(ClassLoader classLoader) {
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
            for (int i = 0; i < 3; i++) {
                fieldArr[i].setAccessible(true);
            }
            for (Method method5 : cls.getDeclaredMethods()) {
                if (method5.getName().equals("playDockChangeAnimation")) {
                    method = method5;
                }
            }
            if (method != null) {
                hook(method2).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda61
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object m2278a;
                        m2278a = WorkspaceHooks.this.m2278a(chain);
                        return m2278a;
                    }
                });
                hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda62
                    public final Object intercept(XposedInterface.Chain chain) {
                        Object m2288a;
                        m2288a = WorkspaceHooks.this.m2288a(declaredField, declaredField2, method2, declaredField3, method3, method4, chain);
                        return m2288a;
                    }
                });
                Log.i("DuoFoldSplit", "Dock-in animation hook ready");
                return;
            }
            throw new NoSuchMethodException("playDockChangeAnimation");
        } catch (ReflectiveOperationException e) {
            Log.e("DuoFoldSplit", "Dock-in animation entry unavailable", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2278a(XposedInterface.Chain chain) throws Throwable {
        if (Boolean.TRUE.equals(this.f2373u4.get())) {
            return 0;
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2288a(Field field, Field field2, Method method, Field field3, Method method2, Method method3, XposedInterface.Chain chain) throws Throwable {
        Object arg = chain.getArg(1);
        if (field.getInt(arg) != 11286) {
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda83
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2680m();
                }
            });
            return chain.proceed();
        }
        if (this.f2352r1 && m2791v0() && field2.getInt(arg) == 2 && SystemClock.uptimeMillis() - this.f2379v4 <= 3000) {
            final int intValue = ((Integer) method.invoke(field3.get(chain.getThisObject()), null)).intValue();
            this.f2373u4.set(Boolean.TRUE);
            try {
                Object proceed = chain.proceed();
                this.f2373u4.set(Boolean.FALSE);
                final SurfaceControl surfaceControl = (SurfaceControl) method2.invoke(method3.invoke(null, null), null);
                if (surfaceControl != null && surfaceControl.isValid() && intValue != 0) {
                    this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda84
                        @Override // java.lang.Runnable
                        public final void run() {
                            WorkspaceHooks.this.m2343a(surfaceControl, intValue);
                        }
                    });
                }
                return proceed;
            } catch (Throwable th) {
                this.f2373u4.set(Boolean.FALSE);
                throw th;
            }
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m2344a(SurfaceControl surfaceControl, int i, ValueAnimator valueAnimator) {
        if (!surfaceControl.isValid()) {
            valueAnimator.cancel();
            return;
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            transaction.setPosition(surfaceControl, i * ((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f).apply();
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
    /* renamed from: a */
    public /* synthetic */ Object m2297a(Method method, Method method2, Method method3, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        try {
            final Object thisObject = chain.getThisObject();
            final Executor executor = (Executor) method.invoke(thisObject, null);
            final Object invoke = method2.invoke(null, null);
            final Object invoke2 = method3.invoke(null, null);
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2387a(thisObject, executor, invoke, invoke2);
                }
            });
            return proceed;
        } catch (ReflectiveOperationException e) {
            Log.e("DuoFoldSplit", "Native controller capture failed", e);
            return proceed;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2387a(Object obj, Executor executor, Object obj2, Object obj3) {
        this.f2292h1 = obj;
        this.f2310k1 = executor;
        this.f2298i1 = obj2;
        this.f2304j1 = obj3;
        m2596f2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2330a(ActivityManager.RunningTaskInfo runningTaskInfo, Bundle bundle) {
        try {
            if (this.f2352r1 && this.f2370u1 && this.f2394y1 == runningTaskInfo && !this.f2145L1 && !this.f2152M1 && !this.f2159N1 && m2791v0() && m2788R0() && m2256a(m2719p0()) == 1 && ((Boolean) this.f2340p1.invoke(this.f2304j1, null)).booleanValue() && ((Boolean) this.f2322m1.invoke(this.f2298i1, null)).booleanValue() && !((Boolean) this.f2334o1.invoke(this.f2304j1, null)).booleanValue()) {
                this.f2379v4 = SystemClock.uptimeMillis();
                this.f2346q1.invoke(this.f2304j1, bundle);
                Log.i("DuoFoldSplit", "Native dock requested task=" + runningTaskInfo.taskId);
            }
        } catch (ReflectiveOperationException e) {
            Log.e("DuoFoldSplit", "Native dock request failed", e);
        }
    }

    /* renamed from: a */
    private void m2346a(SurfaceControl surfaceControl, boolean z) {
        boolean z2;
        SurfaceControl.Transaction transaction;
        try {
            if (!z) {
                if (this.f2083C1) {
                    transaction = new SurfaceControl.Transaction();
                    try {
                        for (R r : this.f2295h4) {
                            if (r != this.f2164N6 || !this.f2330n3) {
                                transaction.setVisibility(r.f2504b, false);
                            }
                            r.m2817a();
                        }
                        transaction.apply();
                        this.f2319l4 = false;
                        transaction.close();
                        this.f2083C1 = false;
                        return;
                    } finally {
                    }
                }
                return;
            }
            m2465b(m2719p0());
            if (this.f2295h4.isEmpty()) {
                m2669l();
            }
            if (m2727q0() && !m2739s0()) {
                if (m2733r0() > 0) {
                    m2728q1();
                }
                try {
                    m2645j();
                    z2 = m2739s0();
                } finally {
                    if (!m2739s0()) {
                        m2728q1();
                    }
                }
            } else {
                z2 = false;
            }
            m2709o0();
            if (surfaceControl == this.f2077B1 && this.f2083C1 && !z2) {
                return;
            }
            transaction = new SurfaceControl.Transaction();
            try {
                this.f2319l4 = false;
                for (R r2 : this.f2295h4) {
                    r2.m2817a();
                    transaction.reparent(r2.f2504b, surfaceControl).setPosition(r2.f2504b, m2502c(r2), m2536d(r2)).setCrop(r2.f2504b, new Rect(0, 0, r2.f2508f, r2.f2509g)).setLayer(r2.f2504b, 1000000).setVisibility(r2.f2504b, true);
                    float f = r2.f2512j;
                    if (f > 0.0f) {
                        m2342a(transaction, "setCornerRadius", r2.f2504b, Float.valueOf(f));
                    }
                    int i = r2.f2511i;
                    if (i > 0) {
                        m2342a(transaction, "setBackgroundBlurRadius", r2.f2504b, Integer.valueOf(i));
                    }
                    if (this.f2392x5.contains(r2)) {
                        m2342a(transaction, "setShadowRadius", r2.f2504b, Float.valueOf(8.0f));
                    }
                }
                m2489b(transaction, false);
                transaction.apply();
                transaction.close();
                this.f2077B1 = surfaceControl;
                this.f2083C1 = true;
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
    /* renamed from: a */
    public /* synthetic */ Object m2281a(Object obj, Method method, Object[] objArr) throws Throwable {
        if (!"onInputEvent".equals(method.getName()) || objArr == null) {
            return null;
        }
        Object obj2 = objArr[0];
        if (!(obj2 instanceof MotionEvent)) {
            return null;
        }
        m2466b((MotionEvent) obj2);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2282a(String str, XposedInterface.Chain chain) throws Throwable {
        if (this.f2106F4 == null) {
            this.f2106F4 = chain.getThisObject();
            Log.w("DuoRail", "Launcher proxy captured via " + str);
        }
        return chain.proceed();
    }

    /* renamed from: a */
    private void m2338a(MotionEvent motionEvent) {
        try {
            if (this.f2169O4 == null) {
                Class<?> cls = Class.forName("com.android.systemui.LauncherProxyService$1$$ExternalSyntheticLambda15", false, this.f2113G4.getClass().getClassLoader());
                Constructor<?> declaredConstructor = cls.getDeclaredConstructor(Integer.TYPE);
                this.f2169O4 = declaredConstructor;
                declaredConstructor.setAccessible(true);
                this.f2176P4 = cls.getDeclaredField("f$0");
                this.f2183Q4 = cls.getDeclaredField("f$1");
                this.f2176P4.setAccessible(true);
                this.f2183Q4.setAccessible(true);
            }
            this.f2127I4.invoke(this.f2113G4, motionEvent);
            if (((Boolean) this.f2134J4.invoke(this.f2113G4, motionEvent)).booleanValue()) {
                return;
            }
            Object newInstance = this.f2169O4.newInstance(0);
            this.f2176P4.set(newInstance, this.f2113G4);
            this.f2183Q4.set(newInstance, motionEvent);
            ((Runnable) newInstance).run();
        } catch (Throwable th) {
            Log.w("DuoRail", "Shade forward failed", th);
            this.f2155M4 = false;
        }
    }

    /* renamed from: a */
    private static void m2342a(SurfaceControl.Transaction transaction, String str, SurfaceControl surfaceControl, Object obj) {
        try {
            SurfaceControl.Transaction.class.getMethod(str, SurfaceControl.class, obj instanceof Integer ? Integer.TYPE : Float.TYPE).invoke(transaction, surfaceControl, obj);
        } catch (ReflectiveOperationException e) {
            Log.w("DuoRail", str + " unavailable", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2366a(h0 h0Var) {
        boolean z = true;
        int i = Settings.System.getInt(this.f2301i4.getContentResolver(), "battery_indicator_style", 1);
        if (i != 1 && i != 3) {
            z = false;
        }
        h0Var.f2706P = z;
        m2688m1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2335a(WifiManager wifiManager, h0 h0Var) {
        WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        h0Var.f2715b0 = (connectionInfo == null || connectionInfo.getSupplicantState() != SupplicantState.COMPLETED) ? -1 : WifiManager.calculateSignalLevel(connectionInfo.getRssi(), 3);
        m2688m1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2368a(h0 h0Var, WifiManager wifiManager) {
        int i = h0Var.f2715b0;
        WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        int calculateSignalLevel = (connectionInfo == null || connectionInfo.getSupplicantState() != SupplicantState.COMPLETED) ? -1 : WifiManager.calculateSignalLevel(connectionInfo.getRssi(), 3);
        if (calculateSignalLevel != i) {
            h0Var.f2715b0 = calculateSignalLevel;
            m2688m1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2315a(final int i, Boolean bool) {
        if (i != this.f2232X4) {
            return;
        }
        if (bool != null) {
            this.f2225W4 = 0;
            m2487b(bool.booleanValue());
            return;
        }
        int i2 = this.f2225W4;
        long[] jArr = f2024c0;
        if (i2 >= jArr.length) {
            this.f2225W4 = 0;
            Log.w("DuoStandby", "Clock switch unreadable; keeping current state " + this.f2190R4);
        } else {
            this.f2225W4 = i2 + 1;
            long j = jArr[i2];
            Log.w("DuoStandby", "Clock switch read retry in " + j + "ms");
            this.f2071A1.postDelayed(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda85
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2735s(i);
                }
            }, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m2383a(Exception exc) {
        this.f2211U4 = true;
        this.f2218V4 = SystemClock.uptimeMillis() + 60000;
        m2691n();
        m2202N1();
        Log.e("DuoStandby", "Automatic clock disabled after interface failure", exc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2294a(Method method, Object obj, Method method2, Object[] objArr) throws Throwable {
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
            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda68
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHooks.this.m2723q(intValue);
                }
            });
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2388a(Process process, Object obj) {
        this.f2350q5 = process;
        if (this.f2344p5 == obj && !this.f2356r5 && this.f2362s5 != null && m2186J1() && this.f2320l5 && this.f2326m5) {
            try {
                process.getOutputStream().write(71);
                process.getOutputStream().flush();
                return;
            } catch (IOException e) {
                m2383a((Exception) e);
                return;
            }
        }
        process.destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2385a(Object obj, Exception exc) {
        if (this.f2344p5 != obj) {
            return;
        }
        boolean z = this.f2356r5;
        this.f2344p5 = null;
        this.f2350q5 = null;
        this.f2356r5 = false;
        this.f2338o5 = false;
        m2691n();
        if (!z && exc != null) {
            m2383a(exc);
        } else {
            m2772y();
        }
    }

    /* renamed from: a */
    private void m2365a(g0 g0Var) {
        g0Var.f2657d = true;
        Intent addFlags = new Intent().setComponent(new ComponentName(IconConst.f1963a, "dev.duo.hookprobe.TentClockActivity")).addFlags(411041792);
        Parcel obtain = Parcel.obtain();
        try {
            g0Var.writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            addFlags.putExtra(TentClockActivity.f1437a, (Parcelable) ResultReceiver.CREATOR.createFromParcel(obtain));
            obtain.recycle();
            Bundle bundle = new Bundle();
            bundle.putBinder(TentClockActivity.f1439c, g0Var.f2654a);
            addFlags.putExtras(bundle);
            try {
                this.f2301i4.startActivity(addFlags);
            } catch (RuntimeException e) {
                m2691n();
                Log.e("DuoStandby", "Automatic clock launch failed", e);
            }
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2333a(Intent intent, View view) {
        m2462b(intent);
    }

    /* renamed from: a */
    private void m2350a(FrameLayout frameLayout, View view, int i) {
        m2351a(frameLayout, view, i, f2038j0, f2044m0, 170);
    }

    /* renamed from: a */
    private void m2351a(FrameLayout frameLayout, View view, int i, int i2, int i3, int i4) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i2);
        layoutParams.gravity = 1;
        layoutParams.topMargin = i3 + (i * i4);
        frameLayout.addView(view, layoutParams);
        view.setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda113
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean m2428a;
                m2428a = WorkspaceHooks.m2428a(view2, motionEvent);
                return m2428a;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ boolean m2428a(View view, MotionEvent motionEvent) {
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

    /* renamed from: a */
    private R m2273a(String str, View view, int i, int i2) {
        boolean startsWith = str.startsWith("desk_");
        int i3 = startsWith ? 170 : 180;
        R r = new R(str, view, f2006N - (i3 / 2.0f), i, i3, startsWith ? m2561e(i2) : m2503c(i2), (startsWith || str.equals("app_recent")) ? 5 : 60, startsWith ? f2046n0 : 60.0f, 8);
        this.f2295h4.add(r);
        return r;
    }

    /* renamed from: a */
    private void m2417a(String[][] strArr) {
        final Intent launchIntentForPackage;
        ActivityInfo activityInfo;
        PackageManager packageManager = this.f2301i4.getPackageManager();
        FrameLayout m2745t0 = m2745t0();
        for (int i = 0; i < strArr.length; i++) {
            if ("dial".equals(strArr[i][0])) {
                launchIntentForPackage = new Intent("android.intent.action.DIAL");
            } else {
                launchIntentForPackage = packageManager.getLaunchIntentForPackage(strArr[i][1]);
            }
            if (launchIntentForPackage != null) {
                launchIntentForPackage.addFlags(268435456);
                ResolveInfo resolveActivity = packageManager.resolveActivity(launchIntentForPackage, 0);
                if (resolveActivity != null && (activityInfo = resolveActivity.activityInfo) != null) {
                    this.f2100E5.add(activityInfo.packageName);
                }
                ImageView imageView = new ImageView(this.f2301i4);
                try {
                    imageView.setImageDrawable(packageManager.getActivityIcon(launchIntentForPackage));
                } catch (Exception e) {
                    Log.w("DuoRail", "icon", e);
                }
                imageView.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda218
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        WorkspaceHooks.this.m2463b(launchIntentForPackage, view);
                    }
                });
                m2350a(m2745t0, imageView, i);
            }
        }
        int m2561e = m2561e(4) + 448;
        R m2273a = m2273a("desk_fixed", m2745t0, f2036i0, 4);
        this.f2374u5 = m2273a;
        this.f2392x5.add(m2273a);
        FrameLayout m2745t02 = m2745t0();
        int i2 = 0;
        while (true) {
            ImageView[] imageViewArr = this.f2081B5;
            if (i2 >= imageViewArr.length) {
                break;
            }
            imageViewArr[i2] = new ImageView(this.f2301i4);
            m2350a(m2745t02, this.f2081B5[i2], i2);
            i2++;
        }
        int i3 = 2;
        R m2273a2 = m2273a("desk_recent", m2745t02, m2561e, 2);
        this.f2380v5 = m2273a2;
        this.f2392x5.add(m2273a2);
        int i4 = 3;
        int[] iArr = {4, 3, 187};
        int i5 = 0;
        while (i5 < i4) {
            int i6 = i4;
            Q q = new Q(this.f2301i4, i5);
            this.f2093D5[i5] = q;
            final int i7 = iArr[i5];
            q.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda219
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WorkspaceHooks.this.m2311a(i7, view);
                }
            });
            int i8 = i5;
            this.f2075A5[i8] = new R("app_nav" + i5, q, 993.0f, (i5 * f2032g0) + 401, 136, 136, 0, 0.0f, 8);
            this.f2295h4.add(this.f2075A5[i8]);
            i5 = i8 + 1;
            i4 = i6;
            i3 = i3;
        }
        int i9 = i4;
        int i10 = i3;
        FrameLayout m2759w = m2759w(1);
        int i11 = 0;
        while (true) {
            ImageView[] imageViewArr2 = this.f2087C5;
            if (i11 >= imageViewArr2.length) {
                this.f2386w5 = m2273a("app_recent", m2759w, 867, i9);
                this.f2191R5 = 867;
                m2173G0();
                m2262a(this.f2081B5, this.f2100E5);
                Log.w("DuoRail", "Mode panels ready fixed=" + this.f2100E5 + " desk " + f2036i0 + "/" + m2561e + " app " + f2026d0 + "/867 end " + (m2561e + m2561e(i10)));
                return;
            }
            imageViewArr2[i11] = new T(this.f2301i4);
            m2469b(m2759w, this.f2087C5[i11], i11);
            i11++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2311a(int i, View view) {
        m2633i(i);
    }

    /* renamed from: a */
    private static void m2341a(SurfaceControl.Transaction transaction, K k, boolean z) {
        transaction.setVisibility(k.f2433a, z);
        k.f2457y = z ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2356a(K k, View view) {
        if (m2737s() && k.f2452t == this.f2110G1 && m2788R0()) {
            m2724q(view);
            m2774y0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2291a(Method method, K k, Field field, Object obj, Method method2, Object[] objArr) throws Throwable {
        if ("onComputeInternalInsets".equals(method2.getName())) {
            method.invoke(objArr[0], 3);
            m2355a(k, (Region) field.get(objArr[0]));
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

    /* renamed from: a */
    private void m2340a(SurfaceControl.Transaction transaction, K k, int i, int i2) {
        transaction.setVisibility(k.f2448p, i2 > 0);
        if (i2 > 0) {
            transaction.setCrop(k.f2448p, new Rect(0, 0, i, i2));
        }
    }

    /* renamed from: a */
    private void m2339a(SurfaceControl.Transaction transaction, K k, int i) {
        if (k.f2448p == null) {
            return;
        }
        try {
            if (f2058t0 == null) {
                f2058t0 = SurfaceControl.Transaction.class.getMethod("setColor", SurfaceControl.class, float[].class);
            }
            f2058t0.invoke(transaction, k.f2448p, new float[]{Color.red(i) / 255.0f, Color.green(i) / 255.0f, Color.blue(i) / 255.0f});
        } catch (ReflectiveOperationException e) {
            Log.w("DuoRail", "Rail floor colour failed", e);
        }
    }

    /* renamed from: a */
    private void m2357a(K k, View view, float f, int i, int i2, int i3, float f2) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i3);
        layoutParams.gravity = 51;
        k.f2435c.addView(view, layoutParams);
        view.setX(f - 963.0f);
        view.setY(i);
        if (f2 > 0.0f) {
            view.setOutlineProvider(new C0191u(f2));
            view.setClipToOutline(true);
        }
    }

    /* renamed from: a */
    private void m2355a(K k, Region region) {
        region.setEmpty();
        if (k.f2452t == this.f2110G1 && m2737s()) {
            Rect rect = new Rect();
            for (int i = 0; i < k.f2435c.getChildCount(); i++) {
                View childAt = k.f2435c.getChildAt(i);
                if (childAt.getVisibility() == 0 && (childAt != k.f2450r || this.f2119H3)) {
                    h0 h0Var = k.f2449q;
                    if (childAt == h0Var) {
                        if (h0Var.f2724k0) {
                            Region m2893c = k.f2449q.m2893c();
                            m2893c.translate(Math.round(childAt.getX()), Math.round(childAt.getY()));
                            region.op(m2893c, Region.Op.UNION);
                        }
                    } else {
                        childAt.getHitRect(rect);
                        region.op(rect, Region.Op.UNION);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    private void m2309a(final int i, SurfaceControl.Transaction transaction) {
        final K k;
        int i2;
        int i3;
        String str;
        final L l = this.f2163N5.get(Integer.valueOf(i));
        if (m2743t() && l != null && this.f2341p2.containsKey(Integer.valueOf(i)) && this.f2329n2.get(Integer.valueOf(i)) == l.f2459a) {
            boolean m2651j = m2651j(i);
            if (!m2651j) {
                String m2599g = m2599g(this.f2109G0.get(Integer.valueOf(i)));
                if (m2599g == null) {
                    i3 = 1;
                } else {
                    i3 = (!m2531c(m2599g) && m2791v0() && this.f2130J0.m2139b(m2599g) == null) ? 2 : 4;
                }
                int intValue = this.f2170O5.getOrDefault(Integer.valueOf(i), 0).intValue();
                if ((intValue & i3) == 0) {
                    this.f2170O5.put(Integer.valueOf(i), Integer.valueOf(intValue | i3));
                    StringBuilder append = new StringBuilder().append("App rail decor not attached task=").append(i).append(" reason=");
                    if (i3 == 1) {
                        str = "no task info";
                    } else {
                        str = i3 == 2 ? "Duo state unknown" : "not Duo";
                    }
                    Log.w("DuoRail", append.append(str).toString());
                }
                if (i3 != 4 || !this.f2156M5.containsKey(Integer.valueOf(i))) {
                    return;
                }
            } else if (this.f2156M5.containsKey(Integer.valueOf(i)) || l.f2461c) {
                return;
            }
            SurfaceControl.Transaction transaction2 = null;
            if (!m2651j) {
                k = null;
            } else {
                SurfaceControl surfaceControl = l.f2460b;
                if (surfaceControl == null || !surfaceControl.isValid()) {
                    return;
                }
                synchronized (this.f2149L5) {
                    k = this.f2149L5.poll();
                }
                if (k == null) {
                    l.f2461c = true;
                    this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda20
                        @Override // java.lang.Runnable
                        public final void run() {
                            WorkspaceHooks.this.m2312a(i, l);
                        }
                    });
                    return;
                }
            }
            if (transaction == null) {
                try {
                    transaction2 = new SurfaceControl.Transaction();
                } catch (RuntimeException e) {
                    Log.e("DuoRail", "App rail decor attach failed task=" + i, e);
                    return;
                }
            }
            if (transaction == null) {
                transaction = transaction2;
            }
            try {
                if (!m2651j) {
                    m2454b(i, transaction);
                } else {
                    k.f2452t = i;
                    this.f2156M5.put(Integer.valueOf(i), k);
                    transaction.reparent(k.f2433a, l.f2460b).setLayer(k.f2433a, f2052q0);
                    int[] iArr = this.f2177P5.get(Integer.valueOf(i));
                    if (iArr != null) {
                        transaction.setPosition(k.f2433a, iArr[0], iArr[1]);
                    }
                    if (iArr != null && (i2 = iArr[2]) > 0) {
                        m2340a(transaction, k, i2, iArr[3]);
                    }
                    m2341a(transaction, k, m2555d(i));
                    k.f2458z = Float.NaN;
                    m2339a(transaction, k, m2747u(i));
                    this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda21
                        @Override // java.lang.Runnable
                        public final void run() {
                            WorkspaceHooks.this.m2313a(i, l, k);
                        }
                    });
                    Log.w("DuoRail", "App rail decor attach task=" + i);
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
    /* renamed from: a */
    public /* synthetic */ void m2313a(int i, L l, K k) {
        if (this.f2163N5.get(Integer.valueOf(i)) == l && this.f2156M5.get(Integer.valueOf(i)) == k) {
            k.f2449q.m2894d(this.f2221W0);
            k.f2449q.setY(this.f2126I3[1] + f2012T);
            m2521c(k.f2449q);
            k.f2450r.setVisibility(this.f2119H3 ? 0 : 8);
            k.f2449q.invalidate();
            k.f2435c.requestLayout();
            m2546d(k);
            m2207P();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2360a(L l, int i, final K k) {
        l.f2461c = false;
        if (this.f2163N5.get(Integer.valueOf(i)) == l && this.f2341p2.containsKey(Integer.valueOf(i)) && this.f2329n2.get(Integer.valueOf(i)) == l.f2459a && !this.f2156M5.containsKey(Integer.valueOf(i)) && m2651j(i)) {
            synchronized (this.f2149L5) {
                this.f2149L5.addFirst(k);
            }
            m2309a(i, (SurfaceControl.Transaction) null);
            return;
        }
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda142
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2519c(k);
            }
        });
    }

    /* renamed from: a */
    private void m2310a(int i, SurfaceControl.Transaction transaction, Rect rect, Rect rect2, int i2) {
        if (rect == null || rect2 == null) {
            return;
        }
        this.f2177P5.put(Integer.valueOf(i), new int[]{rect2.right, rect.top, i2, rect.height()});
        K k = this.f2156M5.get(Integer.valueOf(i));
        if (k == null || transaction == null) {
            return;
        }
        transaction.setPosition(k.f2433a, rect2.right, rect.top);
        m2341a(transaction, k, m2555d(i));
        if (k.f2448p == null || i2 <= 0 || rect.height() <= 0) {
            return;
        }
        m2340a(transaction, k, i2, rect.height());
    }

    /* renamed from: a */
    private boolean m2427a(SurfaceControl.Transaction transaction, boolean z) {
        int m2262a;
        if (!this.f2184Q5) {
            return false;
        }
        boolean z2 = false;
        for (K k : this.f2156M5.values()) {
            k.f2449q.m2891a(z && k.f2452t == this.f2110G1 && m2737s() && m2788R0());
            boolean z3 = z && m2555d(k.f2452t);
            if (k.f2457y != z3) {
                m2341a(transaction, k, z3);
                z2 = true;
            }
            if (z) {
                float f = this.f2129I6.contains(Integer.valueOf(k.f2452t)) ? 0.0f : 1.0f;
                if (f != k.f2458z) {
                    transaction.setAlpha(k.f2433a, f);
                    k.f2458z = f;
                    z2 = true;
                }
                if (k.f2452t == this.f2110G1 && !this.f2124I1) {
                    if (k.f2454v != this.f2117H1 && k.f2438f && (m2262a = m2262a(k.f2440h, m2171G())) >= 0) {
                        k.f2453u = m2262a;
                        k.f2454v = this.f2117H1;
                    }
                    if (k.f2445m != this.f2117H1) {
                        k.f2445m = this.f2117H1;
                        m2546d(k);
                    }
                    if (k.f2444l != this.f2117H1) {
                        k.f2444l = this.f2117H1;
                        m2603g(k);
                    }
                    k.f2436d.setVisibility((!k.f2438f || k.f2453u <= 0) ? 4 : 0);
                }
            }
        }
        return z2;
    }

    /* renamed from: a */
    private int m2262a(ImageView[] imageViewArr, Set<String> set) {
        ComponentName componentName;
        if (!m2727q0()) {
            return -1;
        }
        if (imageViewArr[0] == null) {
            return -1;
        }
        PackageManager packageManager = this.f2301i4.getPackageManager();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            for (ActivityManager.RecentTaskInfo recentTaskInfo : ((ActivityManager) this.f2301i4.getSystemService(ActivityManager.class)).getRecentTasks(24, 2)) {
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
        if (imageViewArr == this.f2087C5) {
            this.f2240Y5 = arrayList.size();
        } else if (imageViewArr == this.f2081B5) {
            this.f2247Z5 = arrayList.size();
        }
        String str = arrayList + "/" + arrayList2;
        if (str.equals(imageViewArr[0].getTag())) {
            return arrayList.size();
        }
        imageViewArr[0].setTag(str);
        for (int i = 0; i < imageViewArr.length; i++) {
            ImageView imageView = imageViewArr[i];
            if (i >= arrayList.size()) {
                imageView.setImageDrawable(null);
                imageView.setOnClickListener(null);
            } else {
                final String str2 = (String) arrayList.get(i);
                final int intValue = ((Integer) arrayList2.get(i)).intValue();
                try {
                    imageView.setImageDrawable(packageManager.getApplicationIcon(str2));
                } catch (Exception e) {
                    imageView.setImageDrawable(null);
                }
                imageView.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda157
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        WorkspaceHooks.this.m2318a(intValue, str2, view);
                    }
                });
            }
        }
        Log.w("DuoRail", "Recents " + imageViewArr.length + " " + arrayList);
        return arrayList.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2318a(int i, String str, View view) {
        m2316a(i, str);
    }

    /* renamed from: a */
    private void m2316a(int i, String str) {
        if (m2572e() || m2737s()) {
            try {
                Object invoke = Class.forName("android.app.ActivityTaskManager").getMethod("getService", null).invoke(null, null);
                int intValue = ((Integer) invoke.getClass().getMethod("startActivityFromRecents", Integer.TYPE, Bundle.class).invoke(invoke, Integer.valueOf(i), null)).intValue();
                Log.w("DuoRail", "Rail recent task=" + i + " " + str + " result=" + intValue);
                if (intValue >= 0) {
                    return;
                }
            } catch (Throwable th) {
                Log.w("DuoRail", "Recent task launch failed " + str, th);
            }
            Intent launchIntentForPackage = this.f2301i4.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage != null) {
                m2332a(launchIntentForPackage.addFlags(268435456));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2295a(Method method, Method method2, int i, Method method3, Method method4, Method method5, Method method6, Method method7, XposedInterface.Chain chain) throws Throwable {
        Object obj;
        WorkspaceHooks c0143b = this;
        Object proceed = chain.proceed();
        try {
            Object arg = chain.getArg(1);
            Object arg2 = chain.getArg(2);
            if (arg != null && arg2 != null) {
                Object obj2 = null;
                if (method.invoke(arg2, null) == null && (((Integer) method2.invoke(arg2, null)).intValue() & i) == i && !((Boolean) method3.invoke(null, arg2)).booleanValue() && !((Boolean) method4.invoke(null, arg2)).booleanValue()) {
                    Rect rect = (Rect) method5.invoke(arg2, null);
                    if (rect.width() == 1168 && rect.height() == 1712) {
                        int intValue = ((Integer) method6.invoke(arg2, null)).intValue();
                        int i2 = -1;
                        int i3 = 0;
                        Rect rect2 = null;
                        for (ActivityManager.RunningTaskInfo runningTaskInfo : c0143b.f2109G0.values()) {
                            if (runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) != intValue) {
                                obj = obj2;
                            } else if (!runningTaskInfo.getClass().getField("isVisible").getBoolean(runningTaskInfo)) {
                                obj = obj2;
                            } else if (c0143b.m2651j(runningTaskInfo.taskId)) {
                                Object obj3 = runningTaskInfo.getClass().getField("configuration").get(runningTaskInfo);
                                Object obj4 = obj3.getClass().getField("windowConfiguration").get(obj3);
                                obj = null;
                                if (rect.equals(obj4.getClass().getMethod("getBounds", null).invoke(obj4, null))) {
                                    Object obj5 = runningTaskInfo.getClass().getField("appCompatTaskInfo").get(runningTaskInfo);
                                    Rect rect3 = (Rect) obj5.getClass().getField("topActivityLetterboxBounds").get(obj5);
                                    if (rect3 != null && !rect3.isEmpty() && !rect3.equals(rect)) {
                                        i2 = runningTaskInfo.taskId;
                                        i3++;
                                        obj2 = null;
                                        rect2 = rect3;
                                        c0143b = this;
                                    }
                                }
                            } else {
                                obj = obj2;
                            }
                            obj2 = obj;
                            c0143b = this;
                        }
                        if (i3 == 1) {
                            method7.invoke(chain.getThisObject(), arg, new Rect(rect2), arg2, Boolean.TRUE);
                            Log.w("DuoRail", "Embedded letterbox animation task=" + i2 + " end=" + rect + " frame=" + rect2);
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
    /* renamed from: a */
    /*
    */
    public /* synthetic */ Object m2298a(Method method, Method method2, Method method3, Method method4, XposedInterface.Chain chain) throws Throwable {
        int i;
        Iterator it;
        String packageName;
        final boolean z;
        try {
            HashSet hashSet = new HashSet();
            StringBuilder sb = new StringBuilder();
            int i2 = 1;
            Object[] objArr = null;
            Iterator it2 = ((List) method.invoke(chain.getArg(1), null)).iterator();
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            while (it2.hasNext()) {
                Object next = it2.next();
                int intValue = ((Integer) method2.invoke(next, objArr)).intValue();
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) method3.invoke(next, objArr);
                if (runningTaskInfo == null || intValue < i2) {
                    it = it2;
                } else if (intValue > 4) {
                    it = it2;
                } else if (m2632i(runningTaskInfo) != null) {
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
                        z = false;
                        m2543d(runningTaskInfo);
                        if ("com.android.quicksearchbox".equals(packageName)) {
                            it = it2;
                        } else {
                            final int i3 = runningTaskInfo.taskId;
                            it = it2;
                            this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda26
                                @Override // java.lang.Runnable
                                public final void run() {
                                    WorkspaceHooks.this.m2458b(i3, z);
                                }
                            });
                        }
                        if (m2651j(runningTaskInfo.taskId)) {
                            if (z) {
                                it2 = it;
                                i2 = 1;
                                objArr = null;
                                z3 = true;
                            }
                        } else if (z) {
                            hashSet.add(packageName);
                            ComponentName componentName2 = runningTaskInfo.topActivity;
                            if (componentName2 != null) {
                                hashSet.add(componentName2.getPackageName());
                            }
                            it2 = it;
                            i2 = 1;
                            objArr = null;
                            z2 = true;
                        } else {
                            it2 = it;
                            i2 = 1;
                            objArr = null;
                            z4 = true;
                        }
                    }
                    z = true;
                    m2543d(runningTaskInfo);
                    if ("com.android.quicksearchbox".equals(packageName)) {
                    }
                    if (m2651j(runningTaskInfo.taskId)) {
                    }
                }
                it2 = it;
                i2 = 1;
                objArr = null;
            }
            if (sb.length() > 0 && m2727q0()) {
                final Object arg = chain.getArg(0);
                if (z2) {
                    i = 1;
                } else {
                    if (!z3 && !z4) {
                        i = -1;
                    }
                    i = 0;
                }
                int intValue2 = ((Integer) method4.invoke(chain.getArg(1), null)).intValue();
                this.f2128I5.add(arg);
                this.f2135J5.put(arg, Long.valueOf(SystemClock.uptimeMillis()));
                this.f2071A1.postDelayed(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda27
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkspaceHooks.this.m2384a(arg);
                    }
                }, 3000L);
                Log.w("DuoRail", "Mode transition type=" + intValue2 + ((Object) sb) + " target=" + i);
                if (i >= 0) {
                    m2412a(i == 1, hashSet);
                }
            }
        } catch (Throwable th) {
            Log.w("DuoRail", "Mode transition check failed", th);
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2384a(Object obj) {
        if (this.f2128I5.remove(obj)) {
            this.f2135J5.remove(obj);
            m2207P();
        }
    }

    /* renamed from: a */
    public synchronized void m2789a(Bundle bundle, boolean z) throws ReflectiveOperationException {
        ReflectiveOperationException reflectiveOperationException;
        int i = 0;
        if (bundle != null) {
            try {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList("layers");
                if (parcelableArrayList != null) {
                    int size = parcelableArrayList.size();
                    int i2 = 0;
                    while (i2 < size) {
                        Object obj = parcelableArrayList.get(i2);
                        i2++;
                        SurfaceControl surfaceControl = (SurfaceControl) ((Bundle) obj).getParcelable("mirror");
                        if (z) {
                            surfaceControl.release();
                        } else {
                            if (this.f2405z6 == null) {
                                this.f2405z6 = new ArrayList<>();
                            }
                            this.f2405z6.add(surfaceControl);
                        }
                    }
                }
            } catch (RuntimeException e) {
                if (reflectiveOperationException == null) {
                    reflectiveOperationException = new ReflectiveOperationException("未移交镜像摘层失败，保留账本", e);
                } else {
                    reflectiveOperationException.addSuppressed(e);
                }
            } finally {
            }
        }
        if (!z && this.f2405z6 != null) {
            ArrayList arrayList = new ArrayList(this.f2405z6);
            int size2 = arrayList.size();
            reflectiveOperationException = null;
            while (i < size2) {
                Object obj2 = arrayList.get(i);
                i++;
                SurfaceControl surfaceControl2 = (SurfaceControl) obj2;
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    transaction.reparent(surfaceControl2, null);
                    transaction.apply();
                    transaction.close();
                    surfaceControl2.release();
                    this.f2405z6.remove(surfaceControl2);
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
    /* renamed from: a */
    public static /* synthetic */ void m2361a(O o) {
        try {
            o.f2475b.getOutputStream().write(82);
        } catch (Throwable th) {
            Log.w("DuoSidebar", "Native replay request failed", th);
        }
    }

    /* renamed from: a */
    private boolean m2425a(SurfaceControl.Transaction transaction) {
        return m2489b(transaction, true);
    }

    /* renamed from: a */
    private boolean m2426a(SurfaceControl.Transaction transaction, R r, float f) {
        if (r == null || (m2493b(r) && !m2727q0())) {
            return false;
        }
        float f2 = (0.06f * f) + 0.94f;
        float f3 = 1.0f - f2;
        float m2502c = m2502c(r) + ((r.f2508f * f3) / 2.0f);
        float m2536d = m2536d(r) + ((r.f2509g * f3) / 2.0f);
        if (f == r.f2513k && m2502c == r.f2514l && m2536d == r.f2515m) {
            return false;
        }
        r.f2513k = f;
        r.f2514l = m2502c;
        r.f2515m = m2536d;
        transaction.setVisibility(r.f2504b, f > 0.001f);
        transaction.setAlpha(r.f2504b, f);
        try {
            if (f2064w0 == null) {
                Class cls = Float.TYPE;
                f2064w0 = SurfaceControl.Transaction.class.getMethod("setMatrix", SurfaceControl.class, cls, cls, cls, cls);
            }
            f2064w0.invoke(transaction, r.f2504b, Float.valueOf(f2), Float.valueOf(0.0f), Float.valueOf(0.0f), Float.valueOf(f2));
        } catch (ReflectiveOperationException e) {
            Log.w("DuoRail", "setMatrix unavailable", e);
        }
        transaction.setPosition(r.f2504b, m2502c, m2536d);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static Object m2279a(Class<?> cls) {
        String[] strArr = {"getMiuiLevel", "getMiuiSignalLevel"};
        for (int i = 0; i < 2; i++) {
            try {
                return cls.getMethod(strArr[i], null);
            } catch (NoSuchMethodException e) {
            }
        }
        for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            String[] strArr2 = {"mMiuiLevel", "miuiLevel"};
            for (int i2 = 0; i2 < 2; i2++) {
                try {
                    Field declaredField = cls2.getDeclaredField(strArr2[i2]);
                    declaredField.setAccessible(true);
                    return declaredField;
                } catch (NoSuchFieldException e2) {
                }
            }
        }
        return cls;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void m2458b(int i, boolean z) {
        if (z ? this.f2129I6.add(Integer.valueOf(i)) : this.f2129I6.remove(Integer.valueOf(i))) {
            Log.w("DuoRail", "Full-screen page task=" + i + (z ? " in" : " out") + " pages=" + this.f2129I6);
            m2207P();
        }
    }

    /* renamed from: a */
    private void m2307a(float f, float f2, long j) {
        if (f <= 0.01f && f2 < 0.999f) {
            m2404a("overlay alpha " + f + "/" + f2, true, false, j);
        } else {
            if (f < 0.99f || f2 < 0.999f) {
                return;
            }
            m2404a("overlay alpha " + f + "/" + f2, false, false, j);
        }
    }

    /* renamed from: a */
    private void m2403a(String str, boolean z, boolean z2) {
        m2404a(str, z, z2, SystemClock.uptimeMillis());
    }

    /* renamed from: a */
    private void m2404a(String str, boolean z, boolean z2, long j) {
        if ((!z2 || (this.f2136J6 && j - this.f2143K6 >= 150)) && z != this.f2136J6) {
            this.f2136J6 = z;
            if (m2727q0() && m2739s0()) {
                if (this.f2083C1) {
                    SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                    try {
                        m2425a(transaction);
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
                    m2689m2();
                }
            }
            if (z) {
                this.f2143K6 = j;
            }
            Log.w("DuoRail", "Recents " + (z ? "in" : "out") + " via " + str);
            ValueAnimator valueAnimator = this.f2157M6;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f2150L6, z ? 1.0f : 0.0f);
            this.f2157M6 = ofFloat;
            ofFloat.setDuration(Math.round(Math.abs(r6 - r5) * 240.0f) + 20);
            this.f2157M6.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.0f, 1.0f));
            this.f2157M6.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda12
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    WorkspaceHooks.this.m2460b(valueAnimator2);
                }
            });
            this.f2157M6.start();
        }
    }

    /* renamed from: a */
    private void m2306a(float f) {
        boolean z = this.f2171O6 >= 0.999f;
        m2453b(f);
        if (z != (this.f2171O6 >= 0.999f)) {
            m2207P();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m2390a(String str, float f) {
        char c;
        if (str == null) {
            return;
        }
        boolean z = this.f2178P6 >= 0.999f;
        switch (str.hashCode()) {
            case -907680051:
                if (str.equals("scroll")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 3417674:
                if (str.equals("open")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 94756344:
                if (str.equals("close")) {
                    c = 2;
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
                if (f >= 0.0f) {
                    m2512c(f);
                    break;
                } else {
                    return;
                }
            case 1:
                m2512c(1.0f);
                break;
            case 2:
                m2512c(0.0f);
                break;
            default:
                return;
        }
        if (!"scroll".equals(str)) {
            Log.w("DuoSearch", "Search " + str + " p=" + f + " now=" + this.f2178P6);
        }
        if (z != (this.f2178P6 >= 0.999f)) {
            m2207P();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m2353a(J j) {
        this.f2199S6.remove(j);
        if (this.f2199S6.isEmpty()) {
            if (this.f2206T6) {
                this.f2301i4.unregisterReceiver(this.f2227W6);
                this.f2206T6 = false;
            }
            if (this.f2213U6) {
                this.f2301i4.getContentResolver().unregisterContentObserver(this.f2234X6);
                this.f2213U6 = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2407a(final Set set) {
        final HashMap hashMap = new HashMap();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            try {
                hashMap.put(str, m2760w(str));
            } catch (Exception e) {
                Log.w("DuoRail", "Rail switch state unavailable: " + str, e);
            }
        }
        this.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.b$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHooks.this.m2408a(set, hashMap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2408a(Set set, Map map) {
        for (J j : this.f2199S6) {
            if (set.contains(j.f2418a)) {
                Boolean bool = (Boolean) map.get(j.f2418a);
                if (!Objects.equals(j.f2421d, bool)) {
                    j.f2421d = bool;
                    j.invalidate();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m2401a(String str, Throwable th) {
        Log.w("DuoRail", "Rail " + str + " unavailable", th);
        try {
            Toast.makeText(this.f2301i4, "该动作不可用：" + str, 0).show();
        } catch (Throwable th2) {
            Log.w("DuoRail", "Rail failure toast failed", th2);
        }
    }

    /* renamed from: a */
    private void m2396a(String str, Intent intent) {
        try {
            this.f2301i4.startActivity(intent);
            Log.w("DuoRail", "Rail launch " + str);
        } catch (Throwable th) {
            m2401a(str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m2402a(String str, boolean z) {
        this.f2241Y6.put(str, Boolean.valueOf(z));
        m2666k1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2389a(RuntimeException runtimeException) {
        m2401a("常亮", (Throwable) runtimeException);
    }

    /* renamed from: a */
    private int m2259a(Integer num) {
        Bundle bundle;
        if (num != null) {
            bundle = new Bundle();
            bundle.putInt("set", num.intValue());
        } else {
            bundle = null;
        }
        Bundle call = this.f2301i4.getContentResolver().call(Uri.parse("content://dev.duo.hookprobe.config"), "keepScreen", (String) null, bundle);
        if (call == null || !call.containsKey("saved")) {
            throw new IllegalStateException("keepScreen: " + (call == null ? "no response" : call.getString("error", "no value")));
        }
        int i = call.getInt("saved");
        if (num == null || i == num.intValue()) {
            return i;
        }
        throw new IllegalStateException("keepScreen: wrote " + num + ", read " + i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m2332a(Intent intent) {
        try {
            this.f2301i4.startActivity(intent);
            Log.w("DuoRail", "Rail launch " + intent);
        } catch (Throwable th) {
            Log.w("DuoRail", "Rail launch failed " + intent, th);
        }
    }

    /* renamed from: a */
    private boolean m2432a(Object obj, Field field) {
        try {
            if (Boolean.TRUE.equals(this.f2102F0.get(Integer.valueOf(field.getInt(obj))))) {
                if (m2791v0()) {
                    return true;
                }
            }
            return false;
        } catch (ReflectiveOperationException e) {
            return false;
        }
    }

    /* renamed from: a */
    private void m2386a(Object obj, Object obj2, Object obj3, Field field, Field field2, Method method) {
        try {
            this.f2207U0 = (Map) field2.get(obj);
        } catch (ReflectiveOperationException e) {
            Log.w("DuoRail", "Letterbox lookup failed", e);
        }
        if (m2432a(obj2, field)) {
            try {
                Object obj4 = ((Map) field2.get(obj)).get(Integer.valueOf(field.getInt(obj2)));
                if (obj4 != null) {
                    method.invoke(obj3, obj4);
                    Log.w("DuoWallpaper", "Hidden only Home letterbox background task=" + field.getInt(obj2));
                }
            } catch (ReflectiveOperationException e2) {
                Log.w("DuoWallpaper", "Hide failed", e2);
            }
        }
    }
}
