package dev.duo.fold;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.hardware.display.DisplayManager;
import android.opengl.GLES30;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.PowerManager;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import android.view.Choreographer;
import dev.duo.fold.C0036e;
import dev.duo.fold.C0037f;
import dev.duo.fold.C0038g;
import dev.duo.fold.C0040i;
import dev.duo.fold.Engine;
import dev.duo.hookprobe.C0054J;
import dev.duo.taskcore.WorkspaceProtocol;
import java.io.StringReader;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.Properties;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class Engine {

    /* renamed from: a */
    private static final int f528a = 33171101;

    /* renamed from: b */
    private static final float[] f529b = {1.0f, 1.0f, 1.0f, 1.0f};

    /* renamed from: c */
    private static final long f530c = 400;

    /* renamed from: d */
    private static final long f531d = 500;

    /* renamed from: e */
    private static final long f532e = 1000;

    /* renamed from: f */
    private static final float f533f = 4.0f;

    /* renamed from: g */
    private static final float f534g = 160.0f;

    /* renamed from: h */
    private static final float f535h = 7.0f;

    /* renamed from: i */
    private static final long f536i = 1000;

    /* renamed from: A */
    private boolean f537A;

    /* renamed from: B */
    private boolean f538B;

    /* renamed from: C */
    private boolean f539C;

    /* renamed from: D */
    private boolean f540D;

    /* renamed from: E */
    private Object f541E;

    /* renamed from: F */
    private boolean f542F;

    /* renamed from: G */
    private boolean f543G;

    /* renamed from: H */
    private boolean f544H;

    /* renamed from: I */
    private boolean f545I;

    /* renamed from: J */
    private boolean f546J;

    /* renamed from: K */
    private float f547K;

    /* renamed from: L */
    private float f548L;

    /* renamed from: M */
    private final C0039h f549M;

    /* renamed from: N */
    private C0030f f550N;

    /* renamed from: O */
    private long f551O;

    /* renamed from: P */
    private boolean f552P;

    /* renamed from: Q */
    private long f553Q;

    /* renamed from: R */
    private long f554R;

    /* renamed from: S */
    private boolean f555S;

    /* renamed from: T */
    private boolean f556T;

    /* renamed from: U */
    private int f557U;

    /* renamed from: V */
    private C0033b f558V;

    /* renamed from: W */
    private boolean f559W;

    /* renamed from: X */
    private final SensorEventListener f560X;

    /* renamed from: Y */
    private final BroadcastReceiver f561Y;

    /* renamed from: Z */
    private final DisplayManager.DisplayListener f562Z;

    /* renamed from: a0 */
    private final Runnable f563a0;

    /* renamed from: b0 */
    private final Runnable f564b0;

    /* renamed from: c0 */
    private final Runnable f565c0;

    /* renamed from: d0 */
    private final Runnable f566d0;

    /* renamed from: e0 */
    private final Runnable f567e0;

    /* renamed from: j */
    private final Handler f568j;

    /* renamed from: k */
    private final Context f569k;

    /* renamed from: l */
    private final String f570l;

    /* renamed from: m */
    private final C0036e f571m;

    /* renamed from: n */
    private final Object f572n;

    /* renamed from: o */
    private final Object f573o;

    /* renamed from: p */
    private final Object f574p;

    /* renamed from: q */
    private final Object f575q;

    /* renamed from: r */
    private final Object f576r;

    /* renamed from: s */
    private final SensorManager f577s;

    /* renamed from: t */
    private final DisplayManager f578t;

    /* renamed from: u */
    private Sensor f579u;

    /* renamed from: v */
    private Sensor f580v;

    /* renamed from: w */
    private Sensor f581w;

    /* renamed from: x */
    private C0034c f582x;

    /* renamed from: y */
    private C0037f f583y;

    /* renamed from: z */
    private boolean f584z;

    /* renamed from: dev.duo.fold.Engine$a */
    class C0025a implements SensorEventListener {
        C0025a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m628a(SensorEvent sensorEvent) throws Exception {
            long j = sensorEvent.timestamp / 1000000;
            if (sensorEvent.sensor.getType() == 8) {
                Engine.this.f555S = true;
                Engine engine = Engine.this;
                engine.f556T = sensorEvent.values[0] < Math.min(5.0f, engine.f581w.getMaximumRange());
                if (!Engine.this.f556T || Engine.this.f550N == null) {
                    return;
                }
                Engine.this.m602j();
                return;
            }
            if (sensorEvent.sensor.getType() == Engine.f528a) {
                float[] fArr = sensorEvent.values;
                if (fArr.length <= 3 || !Float.isFinite(fArr[3])) {
                    throw new IllegalStateException("Hall 数据无效");
                }
                if (Engine.this.f545I) {
                    Engine.this.f545I = false;
                    Engine.m579c("首个Hall level=" + sensorEvent.values[3]);
                }
                if (Engine.this.f554R >= 0) {
                    Engine.m579c("Hall 唤醒后首样本 ms=" + (Engine.m623w() - Engine.this.f554R));
                    Engine.this.f554R = -1L;
                }
                if (!Engine.this.f583y.m689a(sensorEvent.values[3], j, Engine.m623w())) {
                    return;
                }
                if (Engine.this.f546J) {
                    Engine.this.f546J = false;
                    Engine.m579c("Hall 数据恢复，等待下一次开合");
                }
                if (Engine.this.m598h()) {
                    Engine.this.m535A();
                }
            } else {
                float[] fArr2 = sensorEvent.values;
                if (fArr2.length == 0 || !Float.isFinite(fArr2[0])) {
                    throw new IllegalStateException("铰链数据无效");
                }
                Engine.this.f582x.m653a(sensorEvent.values[0], j);
                Engine.this.f553Q = Engine.m623w();
                if (Engine.this.f552P) {
                    Engine.this.m587d("铰链变化");
                }
            }
            Engine.this.m624x();
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(final SensorEvent sensorEvent) {
            Engine.this.m552a(new InterfaceC0029e() { // from class: dev.duo.fold.Engine$a$$ExternalSyntheticLambda0
                @Override // dev.duo.fold.Engine.InterfaceC0029e
                public final void run() {
                    Engine.C0025a.this.m628a(sensorEvent);
                }
            });
        }
    }

    /* renamed from: dev.duo.fold.Engine$b */
    class C0026b extends BroadcastReceiver {
        C0026b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m629a(Intent intent) throws Exception {
            Engine.this.m573b(intent.getAction().substring(intent.getAction().lastIndexOf(46) + 1));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, final Intent intent) {
            Engine.this.m552a(new InterfaceC0029e() { // from class: dev.duo.fold.Engine$b$$ExternalSyntheticLambda0
                @Override // dev.duo.fold.Engine.InterfaceC0029e
                public final void run() {
                    Engine.C0026b.this.m629a(intent);
                }
            });
        }
    }

    /* renamed from: dev.duo.fold.Engine$c */
    class C0027c implements DisplayManager.DisplayListener {
        C0027c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m630a() throws Exception {
            if (Engine.this.f550N != null) {
                Engine.this.m626z();
                return;
            }
            Engine engine = Engine.this;
            engine.f542F = "local:4639175402683733248".equals(engine.m567b(engine.m600i()));
            Engine.this.m573b("显示变化");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public static /* synthetic */ void m631b() throws Exception {
            throw new IllegalStateException("默认屏被移除");
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            if (i == 0) {
                Engine.this.m552a(new InterfaceC0029e() { // from class: dev.duo.fold.Engine$c$$ExternalSyntheticLambda0
                    @Override // dev.duo.fold.Engine.InterfaceC0029e
                    public final void run() {
                        Engine.C0027c.this.m630a();
                    }
                });
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
            if (i == 0) {
                Engine.this.m552a(new InterfaceC0029e() { // from class: dev.duo.fold.Engine$c$$ExternalSyntheticLambda1
                    @Override // dev.duo.fold.Engine.InterfaceC0029e
                    public final void run() {
                        Engine.C0027c.m631b();
                    }
                });
            }
        }
    }

    /* renamed from: dev.duo.fold.Engine$d */
    class BinderC0028d extends Binder {
        BinderC0028d() {
        }

        @Override // android.os.Binder
        protected boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1598968902) {
                if (parcel2 != null) {
                    parcel2.writeString("android.app.ITaskStackListener");
                }
                return true;
            }
            if (Binder.getCallingUid() != 1000) {
                throw new SecurityException("系统任务回调专用");
            }
            parcel.enforceInterface("android.app.ITaskStackListener");
            Engine.this.f568j.removeCallbacks(Engine.this.f565c0);
            Engine.this.f568j.post(Engine.this.f565c0);
            if (parcel2 != null) {
                parcel2.writeNoException();
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.fold.Engine$e */
    interface InterfaceC0029e {
        void run() throws Exception;
    }

    private Engine(Context context, String str) throws Exception {
        Handler handler = new Handler(Looper.getMainLooper());
        this.f568j = handler;
        this.f547K = Float.NaN;
        this.f548L = Float.NaN;
        this.f553Q = -1L;
        this.f554R = -1L;
        this.f560X = new C0025a();
        this.f561Y = new C0026b();
        this.f562Z = new C0027c();
        this.f563a0 = new Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                Engine.this.m614p();
            }
        };
        this.f564b0 = new Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                Engine.this.m617q();
            }
        };
        this.f565c0 = new Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                Engine.this.m618r();
            }
        };
        this.f566d0 = new Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                Engine.this.m609m();
            }
        };
        this.f567e0 = new Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                Engine.this.m611n();
            }
        };
        this.f569k = context;
        this.f570l = str;
        C0036e c0036e = new C0036e(handler, new C0036e.b() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda13
            @Override // dev.duo.fold.C0036e.b
            /* renamed from: a */
            public final void mo627a(int i, long j, long j2) {
                Engine.this.m570b(i, j, j2);
            }
        });
        this.f571m = c0036e;
        this.f572n = m547a("display", "android.hardware.display.IDisplayManager");
        this.f573o = m547a("device_state", "android.hardware.devicestate.IDeviceStateManager");
        Object m547a = m547a("window", WorkspaceProtocol.INTERFACE);
        this.f574p = m547a;
        this.f549M = new C0039h(m547a, c0036e);
        this.f575q = m547a("activity_task", "android.app.IActivityTaskManager");
        this.f576r = Class.forName("android.hardware.devicestate.DeviceStateManagerGlobal").getMethod("getInstance", null).invoke(null, null);
        this.f577s = (SensorManager) context.getSystemService(SensorManager.class);
        this.f578t = (DisplayManager) context.getSystemService(DisplayManager.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A */
    public void m535A() {
        this.f577s.unregisterListener(this.f560X, this.f580v);
        this.f552P = true;
        this.f568j.removeCallbacks(this.f563a0);
        m579c("外屏空闲已合上：Hall 休眠，等铰链唤醒");
    }

    /* renamed from: B */
    private void m536B() throws Exception {
        Properties properties = new Properties();
        properties.load(new StringReader(C0038g.m700a(this.f570l, "curve.properties")));
        this.f558V = new C0033b(Float.parseFloat(properties.getProperty("open_angle")), Float.parseFloat(properties.getProperty("close_angle")), Float.parseFloat(properties.getProperty("reverse_degrees")), Long.parseLong(properties.getProperty("release_confirm_ms")));
        int[] m681a = this.f571m.m681a();
        if (m681a[0] != 1 || m681a[1] != 254 || m681a[2] != 0) {
            throw new IllegalStateException("租约模块或版本不匹配");
        }
        String[] strArr = {"local:4639175402683733248", "local:4639175068132267009"};
        for (int i = 0; i < 2; i++) {
            String str = strArr[i];
            if (this.f571m.m682a(str)[0] != 1) {
                throw new IllegalStateException("面板不存在 " + str);
            }
        }
        this.f571m.f672a.linkToDeath(new IBinder.DeathRecipient() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda5
            @Override // android.os.IBinder.DeathRecipient
            public final void binderDied() {
                Engine.this.m620t();
            }
        }, 0);
        this.f579u = this.f577s.getDefaultSensor(36);
        this.f580v = this.f577s.getDefaultSensor(f528a, false);
        Sensor defaultSensor = this.f577s.getDefaultSensor(8);
        this.f581w = defaultSensor;
        if (this.f579u == null || this.f580v == null || defaultSensor == null) {
            throw new IllegalStateException("缺少铰链、Hall 或距离传感器");
        }
        Class<?> cls = Class.forName("android.app.ITaskStackListener");
        final BinderC0028d binderC0028d = new BinderC0028d();
        this.f541E = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda6
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                Object m546a;
                m546a = Engine.m546a(binderC0028d, obj, method, objArr);
                return m546a;
            }
        });
        Class.forName("android.app.IActivityTaskManager").getMethod("registerTaskStackListener", cls).invoke(this.f575q, this.f541E);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.f569k.registerReceiver(this.f561Y, intentFilter, null, this.f568j, 4);
        this.f539C = true;
        this.f578t.registerDisplayListener(this.f562Z, this.f568j);
        this.f540D = true;
        m568b();
        m579c("引擎就绪，空闲不轮询；只常驻已解码的壁纸原图");
        final int intValue = ((Integer) ActivityManager.class.getMethod("getCurrentUser", null).invoke(null, null)).intValue();
        new Thread(new Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                Engine.m569b(intValue);
            }
        }, "MiDuoFoldWallpaper").start();
    }

    /* renamed from: C */
    private ActivityManager.RunningTaskInfo m537C() throws Exception {
        Class<?> cls = Class.forName("android.app.IActivityTaskManager");
        Class cls2 = Integer.TYPE;
        Class cls3 = Boolean.TYPE;
        Method method = cls.getMethod("getTasks", cls2, cls3, cls3, cls2);
        Object obj = this.f575q;
        Boolean bool = Boolean.FALSE;
        List list = (List) method.invoke(obj, 1, bool, bool, 0);
        if (list.isEmpty()) {
            return null;
        }
        return (ActivityManager.RunningTaskInfo) list.get(0);
    }

    /* renamed from: b */
    private static int m565b(boolean z) {
        return z ? 2 : 0;
    }

    public static void main(String[] strArr) {
        Engine engine = null;
        try {
            if (Process.myUid() != 0 || strArr.length != 1) {
                throw new IllegalArgumentException("MiDuo root 入口参数不符");
            }
            Looper.prepareMainLooper();
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Engine engine2 = new Engine((Context) cls.getMethod("getSystemContext", null).invoke(cls.getMethod("systemMain", null).invoke(null, null), null), strArr[0]);
            try {
                engine2.m536B();
                Looper.loop();
                System.exit(engine2.f557U);
            } catch (Throwable th) {
                th = th;
                engine = engine2;
                if (engine != null) {
                    engine.m556a(th);
                } else {
                    Log.e("MiDuoFold", "引擎初始化失败", th);
                }
                System.exit(1);
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public /* synthetic */ void m618r() {
        m552a(new InterfaceC0029e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda17
            @Override // dev.duo.fold.Engine.InterfaceC0029e
            public final void run() {
                Engine.this.m568b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public /* synthetic */ void m619s() {
        m556a((Throwable) new IllegalStateException("系统服务已结束"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public /* synthetic */ void m620t() {
        this.f568j.post(new Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                Engine.this.m619s();
            }
        });
    }

    /* renamed from: u */
    private boolean m621u() throws Exception {
        return ((Boolean) Class.forName(WorkspaceProtocol.INTERFACE).getMethod("isKeyguardLocked", null).invoke(this.f574p, null)).booleanValue();
    }

    /* renamed from: v */
    private boolean m622v() throws Exception {
        boolean equals = "0".equals(Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, "debug.duo.master"));
        if (equals != this.f559W) {
            this.f559W = equals;
            m579c(equals ? "MiDuo 总开关关闭或试用已结束：不接管开合" : "MiDuo 总开关已恢复：照常接管开合");
        }
        return !equals;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w */
    public static long m623w() {
        return SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public void m624x() throws Exception {
        C0037f.a m690b;
        if (!this.f584z || this.f552P || this.f582x.m654a() || !this.f555S || this.f556T || !m607l() || (m690b = this.f583y.m690b(m623w())) == C0037f.a.WAITING) {
            return;
        }
        float m656b = this.f582x.m656b();
        if (this.f550N == null) {
            boolean z = this.f542F;
            if (!z || m656b >= this.f558V.f644b) {
                this.f548L = Float.NaN;
            }
            if (!z && this.f558V.m649a(m656b, m690b, this.f583y.m693d())) {
                m557a(false);
            } else if (this.f542F && Float.isFinite(this.f547K) && m656b < this.f558V.f644b && m656b < this.f547K && m690b == C0037f.a.OPEN && ((Float.isNaN(this.f548L) || m656b <= this.f548L - f533f) && (this.f582x.m652a(m623w(), f530c) >= f533f || m656b <= this.f558V.f644b - f533f))) {
                m557a(true);
            }
        }
        boolean z2 = !Float.isFinite(this.f547K) || Math.abs(this.f547K - m656b) > 0.01f;
        this.f547K = m656b;
        if (this.f550N == null || !z2) {
            return;
        }
        m626z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y */
    public void m625y() throws Exception {
        C0032a c0032a;
        if (this.f550N == null) {
            return;
        }
        int m683b = this.f571m.m683b(1500L);
        if (!m581c() || this.f550N.f604p != m621u() || (this.f550N.f607s >= 0 && m590e() != this.f550N.f607s)) {
            m602j();
            m568b();
            return;
        }
        C0032a c0032a2 = this.f550N.f600l;
        if (c0032a2 != null && m683b != 2) {
            m579c("面板租约失效，交还本次动画");
            m602j();
            return;
        }
        if (c0032a2 != null) {
            if (c0032a2.m648e(m623w(), this.f550N.f607s >= 0 ? 1200L : 3000L)) {
                m579c("目标画面未就绪，交还原生 generation=" + this.f550N.f600l.f635a + " 阶段=" + this.f550N.f611w);
                m602j();
                return;
            }
        }
        if (this.f550N.f600l == null && m623w() - this.f550N.f603o > 1000) {
            m579c("准备超时，交还原生 阶段=" + this.f550N.f610v + " 源首帧=" + this.f550N.f605q + " 输出首帧=" + this.f550N.f606r + " Hall=" + this.f583y.m690b(m623w()));
            m602j();
            return;
        }
        m594f();
        C0030f c0030f = this.f550N;
        if (c0030f != null && (c0032a = c0030f.f600l) != null && c0032a.f639e >= 0) {
            m626z();
        }
        this.f568j.postDelayed(this.f564b0, f530c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public void m626z() {
        if (this.f537A || this.f550N == null || this.f538B) {
            return;
        }
        this.f538B = true;
        Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda15
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                Engine.this.m578c(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x015e  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m594f() throws Exception {
        C0032a c0032a;
        Bundle m733a;
        C0030f c0030f = this.f550N;
        if (c0030f == null || (c0032a = c0030f.f600l) == null || c0030f.f608t != c0032a.f635a) {
            return;
        }
        Object m600i = m600i();
        int m584d = m584d(m600i);
        int m538a = m538a(m600i);
        float[] m680a = this.f550N.f607s >= 0 ? f529b : this.f571m.m680a(m584d, m538a);
        if (m680a == null) {
            this.f550N.f611w = "坐标未到";
            return;
        }
        C0030f c0030f2 = this.f550N;
        c0030f2.f608t = -1L;
        c0030f2.f593e = c0030f2.f589a.m721a(m584d, m538a, this.f568j, new Engine$$ExternalSyntheticLambda4(this), this.f550N.f596h != null);
        C0030f c0030f3 = this.f550N;
        C0038g.a aVar = c0030f3.f593e;
        aVar.f728m = m680a;
        aVar.f727l = c0030f3.f607s >= 0;
        aVar.f722g = c0030f3.f600l.f640f ? (7 - m576c(m600i)) % 4 : 0;
        C0030f c0030f4 = this.f550N;
        if (c0030f4.f596h != null) {
            if (!c0030f4.f600l.f640f) {
                if (m584d == 1168 && m538a == 1712) {
                    m733a = this.f549M.m733a(2, m584d, m538a);
                    if (m733a != null) {
                    }
                    m579c("目标屏不能分层，交还原生 原因=" + (m733a != null ? "屏幕方向/尺寸" : m733a.getString("unavailable")));
                    m602j();
                    return;
                }
                m733a = null;
                if (m733a != null) {
                }
                m579c("目标屏不能分层，交还原生 原因=" + (m733a != null ? "屏幕方向/尺寸" : m733a.getString("unavailable")));
                m602j();
                return;
            }
            if (m584d == 2364 && m538a == 1672) {
                m733a = this.f549M.m733a(2, m584d, m538a);
                if (m733a != null || m733a.containsKey("unavailable")) {
                    m579c("目标屏不能分层，交还原生 原因=" + (m733a != null ? "屏幕方向/尺寸" : m733a.getString("unavailable")));
                    m602j();
                    return;
                }
                if (m562a(m733a, true)) {
                    m579c("分层会话内容已改变（换壁纸/编辑/负一屏），交还原生");
                    m602j();
                    return;
                }
                String m548a = m548a(m733a, this.f550N.f596h);
                if (m548a != null) {
                    this.f550N.f611w = "分层条件未到（" + m548a + "）";
                    C0030f c0030f5 = this.f550N;
                    long j = c0030f5.f609u;
                    long j2 = c0030f5.f600l.f635a;
                    if (j != j2) {
                        c0030f5.f609u = j2;
                        m579c("目标桌面仍在过渡（" + m548a + "），稍后重取");
                    }
                    C0030f c0030f6 = this.f550N;
                    c0030f6.f589a.m724a(c0030f6.f593e);
                    this.f550N.f593e = null;
                    this.f549M.m734a(2);
                    C0030f c0030f7 = this.f550N;
                    c0030f7.f608t = c0030f7.f600l.f635a;
                    this.f568j.postDelayed(this.f566d0, 100L);
                    return;
                }
                this.f549M.m735a(2, this.f550N.f593e, m733a);
            }
            m733a = null;
            if (m733a != null) {
            }
            m579c("目标屏不能分层，交还原生 原因=" + (m733a != null ? "屏幕方向/尺寸" : m733a.getString("unavailable")));
            m602j();
            return;
        }
        this.f549M.m736a(2, c0030f4.f593e, c0030f4.f604p);
        this.f550N.f611w = "已建输入但无 buffer";
    }

    /* renamed from: g */
    private boolean m597g() throws Exception {
        C0030f c0030f = this.f550N;
        if (c0030f.f600l != null || c0030f.f604p || c0030f.f607s >= 0 || this.f571m.m679a(this.f542F)) {
            return true;
        }
        C0030f c0030f2 = this.f550N;
        c0030f2.f610v = "未获许可（源页停稳）";
        if (!c0030f2.f606r && !c0030f2.f594f.f736f && !this.f550N.f595g.f736f) {
            m626z();
            return false;
        }
        m579c("源页在准备期间再次变化，本次不接管");
        m602j();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public boolean m598h() {
        return this.f584z && !this.f552P && this.f550N == null && !this.f542F && this.f583y.m693d() && this.f583y.m690b(m623w()) == C0037f.a.SHUT && m623w() - this.f553Q >= 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public Object m600i() throws Exception {
        Object invoke = Class.forName("android.hardware.display.IDisplayManager").getMethod("getDisplayInfo", Integer.TYPE).invoke(this.f572n, 0);
        if (invoke != null) {
            return invoke;
        }
        throw new IllegalStateException("默认屏不存在");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public void m602j() throws Exception {
        Exception e;
        C0034c c0034c;
        C0038g c0038g;
        this.f568j.removeCallbacks(this.f564b0);
        this.f568j.removeCallbacks(this.f566d0);
        this.f568j.removeCallbacks(this.f567e0);
        C0030f c0030f = this.f550N;
        if (c0030f != null && c0030f.f600l != null) {
            try {
                this.f576r.getClass().getMethod("cancelStateRequest", null).invoke(this.f576r, null);
            } catch (Exception e2) {
                e = e2;
            }
        }
        e = null;
        try {
            this.f571m.m684b("*");
        } catch (Exception e3) {
            if (e == null) {
                e = e3;
            } else {
                e.addSuppressed(e3);
            }
        }
        try {
            this.f549M.m734a(-1);
        } catch (Exception e4) {
            if (e == null) {
                e = e4;
            } else {
                e.addSuppressed(e4);
            }
        }
        C0030f c0030f2 = this.f550N;
        if (c0030f2 != null && (c0038g = c0030f2.f589a) != null) {
            try {
                c0038g.close();
            } catch (Exception e5) {
                if (e == null) {
                    e = e5;
                } else {
                    e.addSuppressed(e5);
                }
            }
        }
        this.f550N = null;
        if (e != null) {
            throw e;
        }
        boolean equals = "local:4639175402683733248".equals(m567b(m600i()));
        this.f542F = equals;
        this.f548L = (!equals || (c0034c = this.f582x) == null) ? Float.NaN : c0034c.m656b();
        C0037f c0037f = this.f583y;
        if (c0037f != null && !this.f542F) {
            c0037f.m691b();
        }
        if (this.f584z) {
            m580c(m590e() >= 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public void m605k() throws Exception {
        if (this.f550N == null) {
            return;
        }
        long m623w = m623w();
        if (m607l()) {
            boolean z = this.f583y.m690b(m623w) == C0037f.a.SHUT;
            float m651a = z ? 0.0f : this.f582x.m651a(m623w);
            if (m597g()) {
                this.f550N.f610v = "已建输入但无 buffer（源或壁纸）";
                if (m559a(m623w)) {
                    m551a(m623w, m651a);
                    if (m560a(m623w, m651a, z) && !m561a(m623w, z)) {
                        m571b(m623w);
                    }
                }
            }
        }
    }

    /* renamed from: l */
    private boolean m607l() throws Exception {
        if (this.f583y.m690b(m623w()) != C0037f.a.FALLBACK) {
            return !this.f546J;
        }
        if (this.f546J) {
            return false;
        }
        this.f546J = true;
        m579c("Hall 数据中断，交还本次动画并等待新样本");
        boolean z = this.f544H;
        m602j();
        this.f583y = new C0037f();
        this.f582x = new C0034c(30.0f);
        this.f547K = Float.NaN;
        if (z != this.f544H) {
            return false;
        }
        this.f577s.unregisterListener(this.f560X, this.f580v);
        if (this.f577s.registerListener(this.f560X, this.f580v, m565b(this.f544H), this.f568j)) {
            return false;
        }
        throw new IllegalStateException("Hall 恢复注册失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ void m609m() {
        m552a(new InterfaceC0029e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda14
            @Override // dev.duo.fold.Engine.InterfaceC0029e
            public final void run() {
                Engine.this.m594f();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ void m611n() {
        m552a(new InterfaceC0029e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda0
            @Override // dev.duo.fold.Engine.InterfaceC0029e
            public final void run() {
                Engine.this.m585d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ void m612o() throws Exception {
        if (!this.f584z || this.f543G || this.f552P) {
            return;
        }
        m607l();
        this.f568j.removeCallbacks(this.f563a0);
        if (!this.f584z || this.f543G) {
            return;
        }
        this.f568j.postDelayed(this.f563a0, f531d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ void m614p() {
        m552a(new InterfaceC0029e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda18
            @Override // dev.duo.fold.Engine.InterfaceC0029e
            public final void run() {
                Engine.this.m612o();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public /* synthetic */ void m617q() {
        m552a(new InterfaceC0029e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda19
            @Override // dev.duo.fold.Engine.InterfaceC0029e
            public final void run() {
                Engine.this.m625y();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static void m579c(String str) {
        Log.i("MiDuoFold", "t=" + m623w() + " " + str);
    }

    /* renamed from: d */
    private int m584d(Object obj) throws Exception {
        return obj.getClass().getField("logicalWidth").getInt(obj);
    }

    /* renamed from: e */
    private int m591e(boolean z) throws Exception {
        Object invoke = Class.forName("android.hardware.devicestate.IDeviceStateManager").getMethod("getDeviceStateInfo", null).invoke(this.f573o, null);
        Object obj = invoke.getClass().getField(z ? "baseState" : "currentState").get(invoke);
        return ((Integer) obj.getClass().getMethod("getIdentifier", null).invoke(obj, null)).intValue();
    }

    /* renamed from: c */
    private int m576c(Object obj) throws Exception {
        return obj.getClass().getField("rotation").getInt(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m587d(String str) {
        this.f552P = false;
        this.f583y.m688a(m623w());
        this.f554R = m623w();
        if (this.f577s.registerListener(this.f560X, this.f580v, m565b(this.f544H), this.f568j)) {
            this.f568j.removeCallbacks(this.f563a0);
            if (!this.f543G) {
                this.f568j.postDelayed(this.f563a0, 1000L);
            }
            m579c("Hall 唤醒 原因=" + str + " angle=" + this.f582x.m656b());
            return;
        }
        throw new IllegalStateException("Hall 唤醒注册失败");
    }

    /* renamed from: c */
    private boolean m581c() throws Exception {
        if (!((PowerManager) this.f569k.getSystemService(PowerManager.class)).isInteractive() || !m622v()) {
            return false;
        }
        if (m621u()) {
            return true;
        }
        ActivityManager.RunningTaskInfo m537C = m537C();
        if (m537C != null && m537C.topActivity != null) {
            Object obj = m537C.getClass().getField("configuration").get(m537C);
            Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
            if (((Integer) obj2.getClass().getMethod("getWindowingMode", null).invoke(obj2, null)).intValue() == 1 && ("com.miui.home".equals(m537C.topActivity.getPackageName()) || ((Integer) obj2.getClass().getMethod("getActivityType", null).invoke(obj2, null)).intValue() == 1)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m570b(final int i, final long j, final long j2) {
        m552a(new InterfaceC0029e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda3
            @Override // dev.duo.fold.Engine.InterfaceC0029e
            public final void run() {
                Engine.this.m550a(i, j, j2);
            }
        });
    }

    /* renamed from: e */
    private int m590e() throws Exception {
        ActivityManager.RunningTaskInfo m537C;
        ComponentName componentName;
        if (!m621u() && (m537C = m537C()) != null && (componentName = m537C.topActivity) != null && !"com.miui.home".equals(componentName.getPackageName())) {
            Object obj = m537C.getClass().getField("configuration").get(m537C);
            Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
            if (((Integer) obj2.getClass().getMethod("getWindowingMode", null).invoke(obj2, null)).intValue() == 1 && ((Integer) obj2.getClass().getMethod("getActivityType", null).invoke(obj2, null)).intValue() == 1) {
                return m537C.taskId;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public String m567b(Object obj) throws Exception {
        return (String) obj.getClass().getField("uniqueId").get(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ void m569b(int i) {
        C0040i.a m737a = C0040i.m737a(i);
        m579c("壁纸预解码 " + (m737a.f756e == null ? new StringBuilder().append("完成 ms=").append(m737a.f758g) : new StringBuilder().append("未完成：").append(m737a.f756e)).toString());
    }

    /* renamed from: a */
    private static Object m547a(String str, String str2) throws Exception {
        IBinder iBinder = (IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, str);
        if (iBinder != null) {
            return Class.forName(str2 + "$Stub").getMethod("asInterface", IBinder.class).invoke(null, iBinder);
        }
        throw new IllegalStateException(str + " 不可用");
    }

    /* renamed from: d */
    private boolean m589d(boolean z) {
        if (z) {
            return true;
        }
        return this.f550N == null && this.f542F;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m568b() throws Exception {
        m573b("任务");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m585d() throws Exception {
        C0032a c0032a;
        C0030f c0030f = this.f550N;
        if (c0030f == null || (c0032a = c0030f.f600l) == null || c0030f.f607s < 0 || c0032a.f638d >= 0 || c0032a.f639e >= 0) {
            return;
        }
        if (m591e(false) != (this.f550N.f600l.f640f ? 3 : 0)) {
            this.f568j.postDelayed(this.f567e0, 100L);
        } else {
            m579c("应用目标未报窗口提交，屏已切换，直接接入 generation=" + this.f550N.f600l.f635a);
            m550a(1, this.f550N.f600l.f635a, m623w());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m573b(String str) throws Exception {
        C0030f c0030f = this.f550N;
        if (c0030f != null && (c0030f.f604p != m621u() || (this.f550N.f607s >= 0 && m590e() != this.f550N.f607s))) {
            m602j();
        }
        if (!m581c()) {
            if (this.f550N != null) {
                m602j();
            }
            if (this.f584z) {
                this.f577s.unregisterListener(this.f560X);
                this.f584z = false;
                this.f568j.removeCallbacks(this.f563a0);
            }
            this.f552P = false;
            this.f554R = -1L;
        } else if (!this.f584z) {
            this.f542F = "local:4639175402683733248".equals(m567b(m600i()));
            this.f583y = new C0037f();
            this.f582x = new C0034c(30.0f);
            this.f547K = Float.NaN;
            this.f548L = Float.NaN;
            this.f584z = true;
            this.f555S = false;
            this.f545I = true;
            this.f546J = false;
            boolean z = m590e() >= 0;
            this.f543G = z;
            this.f544H = m589d(z);
            this.f553Q = m623w();
            if (this.f577s.registerListener(this.f560X, this.f579u, m565b(this.f543G), this.f568j) && this.f577s.registerListener(this.f560X, this.f580v, m565b(this.f544H), this.f568j) && this.f577s.registerListener(this.f560X, this.f581w, 3, this.f568j)) {
                m579c("开始监听 原因=" + str);
                if (!this.f543G) {
                    this.f568j.postDelayed(this.f563a0, 1000L);
                }
            } else {
                throw new IllegalStateException("传感器注册失败");
            }
        }
        if (this.f552P && this.f542F) {
            m587d("切到内屏");
        }
        if (this.f584z && this.f550N == null) {
            m580c(m590e() >= 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m552a(InterfaceC0029e interfaceC0029e) {
        if (this.f537A) {
            return;
        }
        try {
            interfaceC0029e.run();
        } catch (Throwable th) {
            m556a(th);
        }
    }

    /* renamed from: dev.duo.fold.Engine$f */
    private static final class C0030f {

        /* renamed from: a */
        C0038g f589a;

        /* renamed from: b */
        C0038g.a f590b;

        /* renamed from: c */
        C0038g.a f591c;

        /* renamed from: d */
        C0038g.a f592d;

        /* renamed from: e */
        C0038g.a f593e;

        /* renamed from: f */
        C0038g.b f594f;

        /* renamed from: g */
        C0038g.b f595g;

        /* renamed from: h */
        C0035d f596h;

        /* renamed from: i */
        C0035d f597i;

        /* renamed from: j */
        int f598j;

        /* renamed from: k */
        ArrayList<Rect> f599k;

        /* renamed from: l */
        C0032a f600l;

        /* renamed from: m */
        long f601m;

        /* renamed from: n */
        long f602n;

        /* renamed from: o */
        long f603o;

        /* renamed from: p */
        boolean f604p;

        /* renamed from: q */
        boolean f605q;

        /* renamed from: r */
        boolean f606r;

        /* renamed from: s */
        int f607s;

        /* renamed from: t */
        long f608t;

        /* renamed from: u */
        long f609u;

        /* renamed from: v */
        String f610v;

        /* renamed from: w */
        String f611w;

        private C0030f() {
            this.f601m = -1L;
            this.f602n = -1L;
            this.f607s = -1;
            this.f608t = -1L;
            this.f609u = -1L;
            this.f610v = "已建输入但无 buffer（源或壁纸）";
            this.f611w = "未获许可";
        }

        /* synthetic */ C0030f(C0025a c0025a) {
            this();
        }
    }

    /* renamed from: a */
    private int m538a(Object obj) throws Exception {
        return obj.getClass().getField("logicalHeight").getInt(obj);
    }

    /* renamed from: a */
    private boolean m564a(Object obj, boolean z) throws Exception {
        C0030f c0030f;
        int m584d = m584d(obj);
        int m538a = m538a(obj);
        int m576c = m576c(obj);
        return (z ? "local:4639175402683733248" : "local:4639175068132267009").equals(m567b(obj)) && (!z ? !(m584d != 1168 || m538a != 1712 || m576c != 0) : !(m576c % 2 != 1 ? m584d != 1672 || m538a != 2364 : m584d != 2364 || m538a != 1672)) && (!z || m621u() || (!m621u() && ((c0030f = this.f550N) != null ? c0030f.f607s >= 0 : m590e() >= 0)) || m576c == 3);
    }

    /* renamed from: c */
    private void m580c(boolean z) {
        boolean m589d = m589d(z);
        boolean z2 = this.f543G;
        if (z2 == z && this.f544H == m589d) {
            return;
        }
        if (z2 != z) {
            this.f577s.unregisterListener(this.f560X, this.f579u);
            if (!this.f577s.registerListener(this.f560X, this.f579u, m565b(z), this.f568j)) {
                throw new IllegalStateException("传感器采样切换失败");
            }
        }
        if (this.f544H != m589d && !this.f552P) {
            this.f577s.unregisterListener(this.f560X, this.f580v);
            if (!this.f577s.registerListener(this.f560X, this.f580v, m565b(m589d), this.f568j)) {
                throw new IllegalStateException("传感器采样切换失败");
            }
        }
        this.f543G = z;
        this.f544H = m589d;
        this.f568j.removeCallbacks(this.f563a0);
        if (z) {
            return;
        }
        this.f568j.postDelayed(this.f563a0, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m546a(Binder binder, Object obj, Method method, Object[] objArr) throws Throwable {
        if (method.getName().equals("asBinder")) {
            return binder;
        }
        throw new UnsupportedOperationException(method.getName());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v8, types: [dev.duo.fold.Engine$a] */
    /* renamed from: a */
    private void m557a(boolean z) throws Exception {
        FutureTask<C0040i.a> futureTask;
        float[] m680a;
        if (m581c() && this.f555S && !this.f556T && m564a(m600i(), z)) {
            boolean m621u = m621u();
            int m590e = m621u ? -1 : m590e();
            m579c("开始" + (z ? "合拢" : "打开") + " angle=" + this.f582x.m656b() + (m590e >= 0 ? " 应用task=" + m590e : ""));
            Bundle bundle = 0;
            Bundle bundle2 = null;
            bundle = 0;
            C0030f c0030f = new C0030f(bundle);
            this.f550N = c0030f;
            c0030f.f603o = m623w();
            C0030f c0030f2 = this.f550N;
            c0030f2.f604p = m621u;
            c0030f2.f607s = m590e;
            m580c(false);
            if (this.f550N.f604p) {
                futureTask = null;
            } else {
                final int intValue = ((Integer) ActivityManager.class.getMethod("getCurrentUser", null).invoke(null, null)).intValue();
                futureTask = new FutureTask<>(new Callable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda16
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        C0040i.a m737a;
                        m737a = C0040i.m737a(intValue);
                        return m737a;
                    }
                });
                new Thread(futureTask, "MiDuoFoldWallpaper").start();
            }
            this.f550N.f589a = new C0038g();
            C0030f c0030f3 = this.f550N;
            c0030f3.f589a.m726a(this.f570l, c0030f3.f604p);
            long m623w = m623w();
            Object m600i = m600i();
            int m584d = m584d(m600i);
            int m538a = m538a(m600i);
            C0030f c0030f4 = this.f550N;
            if (!c0030f4.f604p && c0030f4.f607s < 0) {
                Bundle m733a = this.f549M.m733a(0, m584d, m538a);
                if (m733a.containsKey("unavailable")) {
                    m579c("本次不分层：" + m733a.getString("unavailable"));
                } else {
                    bundle2 = m733a;
                }
                long m623w2 = m623w();
                C0040i.a m545a = m545a(futureTask);
                if (m545a == null) {
                    return;
                }
                long m623w3 = m623w();
                if (bundle2 != null) {
                    this.f550N.f592d = m542a(bundle2, m545a);
                    if (this.f550N.f592d == null) {
                        this.f549M.m734a(0);
                    }
                }
                m579c("分层准备耗时ms 初始化=" + (m623w - this.f550N.f603o) + " 取层=" + (m623w2 - m623w) + " 等解码=" + (m623w3 - m623w2) + " 解码=" + m545a.f758g + " 上传=" + (m623w() - m623w3));
                bundle = bundle2;
            }
            C0038g.a m721a = this.f550N.f589a.m721a(m584d, m538a, this.f568j, new Engine$$ExternalSyntheticLambda4(this), this.f550N.f592d != null);
            m721a.f722g = z ? (7 - m576c(m600i)) % 4 : 0;
            boolean z2 = this.f550N.f607s >= 0;
            m721a.f727l = z2;
            if (!z2) {
                m680a = this.f571m.m680a(m584d, m538a);
            } else {
                m680a = f529b;
            }
            m721a.f728m = m680a;
            if (m680a == null) {
                m579c("当前屏侧栏坐标未就绪，本次不接管");
                m602j();
                return;
            }
            if (!z) {
                C0030f c0030f5 = this.f550N;
                c0030f5.f590b = m721a;
                c0030f5.f602n = m623w() - 320;
            } else {
                C0030f c0030f6 = this.f550N;
                c0030f6.f591c = m721a;
                c0030f6.f601m = m623w() - 320;
            }
            C0030f c0030f7 = this.f550N;
            if (c0030f7.f607s >= 0) {
                this.f549M.m736a(0, m721a, false);
                C0040i.a m545a2 = m545a(futureTask);
                if (m545a2 == null) {
                    return;
                }
                this.f550N.f592d = m543a(m545a2);
                C0030f c0030f8 = this.f550N;
                if (c0030f8.f592d == null) {
                    c0030f8.f592d = c0030f8.f589a.m721a(m584d, m538a, this.f568j, new Engine$$ExternalSyntheticLambda4(this), false);
                    C0038g.a aVar = this.f550N.f592d;
                    aVar.f722g = m721a.f722g;
                    try {
                        this.f549M.m736a(1, aVar, false);
                    } catch (IllegalStateException e) {
                        m579c("应用背景壁纸不可用，本次交还原生：" + e.getMessage());
                        m602j();
                        return;
                    }
                }
            } else {
                if (c0030f7.f592d != null) {
                    this.f549M.m735a(0, m721a, bundle);
                }
                C0030f c0030f9 = this.f550N;
                if (c0030f9.f592d == null) {
                    c0030f9.f592d = c0030f9.f589a.m721a(m584d, m538a, this.f568j, new Engine$$ExternalSyntheticLambda4(this), false);
                    C0030f c0030f10 = this.f550N;
                    c0030f10.f592d.f722g = m721a.f722g;
                    this.f549M.m736a(0, m721a, c0030f10.f604p);
                    C0039h c0039h = this.f549M;
                    C0030f c0030f11 = this.f550N;
                    c0039h.m736a(1, c0030f11.f592d, c0030f11.f604p);
                }
            }
            C0030f c0030f12 = this.f550N;
            c0030f12.f594f = c0030f12.f589a.m723a(0, this.f568j, new Engine$$ExternalSyntheticLambda4(this));
            C0030f c0030f13 = this.f550N;
            c0030f13.f595g = c0030f13.f589a.m723a(1, this.f568j, new Engine$$ExternalSyntheticLambda4(this));
            this.f568j.postDelayed(this.f564b0, f530c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m578c(long j) {
        this.f538B = false;
        m552a(new InterfaceC0029e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda1
            @Override // dev.duo.fold.Engine.InterfaceC0029e
            public final void run() {
                Engine.this.m605k();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public void m550a(int i, long j, long j2) throws Exception {
        C0032a c0032a;
        C0030f c0030f = this.f550N;
        if (c0030f == null || (c0032a = c0030f.f600l) == null) {
            return;
        }
        if (i == 2) {
            if (c0032a.m647d(j, j2)) {
                C0030f c0030f2 = this.f550N;
                c0030f2.f608t = -1L;
                c0030f2.f611w = "未获许可（已撤销）";
                this.f568j.removeCallbacks(this.f566d0);
                C0030f c0030f3 = this.f550N;
                C0038g.a aVar = c0030f3.f593e;
                if (aVar != null) {
                    c0030f3.f589a.m724a(aVar);
                    this.f550N.f593e = null;
                }
                this.f549M.m734a(2);
                m579c("目标许可撤销 generation=" + j);
                return;
            }
            return;
        }
        if (c0032a.m646c(j, j2)) {
            if (!m564a(m600i(), this.f550N.f600l.f640f)) {
                m579c("目标屏状态不符，交还原生 generation=" + j);
                m602j();
                return;
            }
            m579c("目标内容许可 generation=" + j + " ready_t=" + j2);
            C0030f c0030f4 = this.f550N;
            c0030f4.f608t = j;
            c0030f4.f611w = "坐标未到";
            m594f();
        }
    }

    /* renamed from: b */
    private void m571b(long j) {
        if (!this.f582x.m661d() && !this.f582x.m659c(j)) {
            C0030f c0030f = this.f550N;
            long j2 = c0030f.f601m;
            if (j2 < 0 || j - j2 >= 320) {
                long j3 = c0030f.f602n;
                if (j3 < 0 || j - j3 >= 320) {
                    return;
                }
            }
        }
        m626z();
    }

    /* renamed from: a */
    private C0040i.a m545a(FutureTask<C0040i.a> futureTask) throws Exception {
        try {
            return futureTask.get(Math.max(0L, (this.f550N.f603o + 1000) - m623w()), TimeUnit.MILLISECONDS);
        } catch (TimeoutException e) {
            m579c("准备超时，交还原生 阶段=等壁纸解码");
            m602j();
            return null;
        }
    }

    /* renamed from: a */
    private C0038g.a m543a(C0040i.a aVar) {
        if (aVar.f756e != null) {
            m579c("应用背景改用壁纸镜像：" + aVar.f756e);
            return null;
        }
        int[] iArr = new int[1];
        GLES30.glGetIntegerv(3379, iArr, 0);
        if (Math.max(aVar.f753b.getWidth(), aVar.f753b.getHeight()) > iArr[0]) {
            m579c("应用背景改用壁纸镜像：壁纸超过纹理上限");
            return null;
        }
        this.f550N.f597i = new C0035d();
        C0030f c0030f = this.f550N;
        C0035d c0035d = c0030f.f597i;
        c0035d.f661a = aVar.f754c;
        c0035d.f662b = aVar.f755d;
        return c0030f.f589a.m722a(aVar.f753b);
    }

    /* renamed from: a */
    private C0038g.a m542a(Bundle bundle, C0040i.a aVar) throws Exception {
        Bundle bundle2 = bundle.getBundle(C0054J.f920c);
        ArrayList<Rect> parcelableArrayList = bundle.getParcelableArrayList("bitmapCrops");
        if (m562a(bundle, false)) {
            m579c("本次沿用原动画：侧栏/桌面状态不适用分层");
            return null;
        }
        String m548a = m548a(bundle, (C0035d) null);
        if (m548a != null) {
            m579c("本次沿用原动画：" + m548a);
            return null;
        }
        Object m547a = m547a("wallpaper", "android.app.IWallpaperManager");
        Class<?> cls = Class.forName("android.app.IWallpaperManager");
        int i = bundle.getInt("user");
        this.f550N.f598j = bundle.getInt("wallpaperId");
        Class cls2 = Integer.TYPE;
        if (this.f550N.f598j != ((Integer) cls.getMethod("getWallpaperIdForUser", cls2, cls2).invoke(m547a, 1, Integer.valueOf(i))).intValue()) {
            m579c("本次沿用原动画：壁纸在准备时已更换");
            return null;
        }
        if (aVar.f756e != null) {
            m579c("本次沿用原动画：" + aVar.f756e);
            return null;
        }
        if (aVar.f752a != i) {
            m579c("本次沿用原动画：解码期间用户已切换");
            return null;
        }
        Bitmap bitmap = aVar.f753b;
        int[] iArr = new int[1];
        GLES30.glGetIntegerv(3379, iArr, 0);
        if (Math.max(bitmap.getWidth(), bitmap.getHeight()) > iArr[0]) {
            m579c("本次沿用原动画：壁纸超过纹理上限");
            return null;
        }
        C0038g.a m722a = this.f550N.f589a.m722a(bitmap);
        this.f550N.f599k = parcelableArrayList;
        C0035d c0035d = new C0035d();
        c0035d.f661a = aVar.f754c;
        c0035d.f662b = aVar.f755d;
        c0035d.f663c = C0036e.m670a(bundle2.getFloatArray("coverGeometry"));
        c0035d.f664d = C0036e.m670a(bundle2.getFloatArray("innerGeometry"));
        ArrayList parcelableArrayList2 = bundle2.getParcelableArrayList("layers");
        for (int i2 = 0; i2 < parcelableArrayList2.size(); i2++) {
            int i3 = i2 * 4;
            System.arraycopy(((Bundle) parcelableArrayList2.get(i2)).getFloatArray("coverFrame"), 0, c0035d.f665e, i3, 4);
            System.arraycopy(((Bundle) parcelableArrayList2.get(i2)).getFloatArray("innerFrame"), 0, c0035d.f666f, i3, 4);
        }
        System.arraycopy(C0035d.f659g, 0, c0035d.f665e, 8, 4);
        System.arraycopy(C0035d.f660h, 0, c0035d.f666f, 8, 4);
        this.f550N.f596h = c0035d;
        m579c("本次使用静态原图与透明前景分层 wallpaperId=" + this.f550N.f598j);
        return m722a;
    }

    /* renamed from: a */
    private boolean m562a(Bundle bundle, boolean z) {
        Bundle bundle2 = bundle.getBundle(C0054J.f920c);
        if ((!z || bundle.getInt("wallpaperId") == this.f550N.f598j) && !bundle2.getBoolean("editing") && (bundle2.getInt("contentFlags") & 32) == 0) {
            return z && !Objects.equals(this.f550N.f599k, bundle.getParcelableArrayList("bitmapCrops"));
        }
        return true;
    }

    /* renamed from: a */
    private static String m548a(Bundle bundle, C0035d c0035d) {
        Bundle bundle2 = bundle.getBundle(C0054J.f920c);
        if (c0035d == null && (bundle2.getInt("width") != bundle.getInt("width") || bundle2.getInt("height") != bundle.getInt("height"))) {
            return "侧栏尺寸";
        }
        if (!C0040i.m742a(bundle)) {
            return "壁纸缩放/偏移/调暗或非 MIUI 图片窗口";
        }
        if (c0035d == null) {
            return null;
        }
        ArrayList parcelableArrayList = bundle2.getParcelableArrayList("layers");
        for (int i = 0; i < parcelableArrayList.size(); i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                float f = ((Bundle) parcelableArrayList.get(i)).getFloatArray("coverFrame")[i2];
                float f2 = ((Bundle) parcelableArrayList.get(i)).getFloatArray("innerFrame")[i2];
                int i3 = (i * 4) + i2;
                if (f != c0035d.f665e[i3]) {
                    return "侧栏位置 面板" + i + " 外屏" + "xywh".charAt(i2) + " " + c0035d.f665e[i3] + "→" + f;
                }
                if (f2 != c0035d.f666f[i3]) {
                    return "侧栏位置 面板" + i + " 内屏" + "xywh".charAt(i2) + " " + c0035d.f666f[i3] + "→" + f2;
                }
            }
        }
        if (Arrays.equals(c0035d.f663c, C0036e.m670a(bundle2.getFloatArray("coverGeometry"))) && Arrays.equals(c0035d.f664d, C0036e.m670a(bundle2.getFloatArray("innerGeometry")))) {
            return null;
        }
        return "侧栏坐标";
    }

    /* renamed from: a */
    private boolean m559a(long j) throws Exception {
        this.f550N.f592d.m729a();
        C0030f c0030f = this.f550N;
        if (c0030f.f600l == null) {
            C0038g.a aVar = c0030f.f591c;
            if (aVar != null) {
                aVar.m729a();
            }
            C0038g.a aVar2 = this.f550N.f590b;
            if (aVar2 != null) {
                aVar2.m729a();
            }
        }
        C0038g.a aVar3 = this.f550N.f593e;
        if (aVar3 != null && aVar3.m729a()) {
            C0032a c0032a = this.f550N.f600l;
            if (c0032a.m645a(c0032a.f635a, j)) {
                C0030f c0030f2 = this.f550N;
                C0032a c0032a2 = c0030f2.f600l;
                boolean z = c0032a2.f640f;
                C0038g.a aVar4 = z ? c0030f2.f591c : c0030f2.f590b;
                if (z) {
                    c0030f2.f591c = c0030f2.f593e;
                    if (aVar4 == null) {
                        c0030f2.f601m = j;
                    }
                } else {
                    c0030f2.f590b = c0030f2.f593e;
                    if (aVar4 == null) {
                        c0030f2.f602n = j;
                    }
                }
                c0030f2.f593e = null;
                this.f571m.m676a(c0032a2.f635a);
                if (aVar4 != null) {
                    this.f550N.f589a.m724a(aVar4);
                }
                m579c("目标实时帧 generation=" + this.f550N.f600l.f635a + " 开始至此_ms=" + (j - this.f550N.f603o));
            }
        }
        C0030f c0030f3 = this.f550N;
        C0032a c0032a3 = c0030f3.f600l;
        if (c0032a3 != null && c0030f3.f593e == null && c0032a3.f639e >= 0) {
            (c0032a3.f640f ? c0030f3.f591c : c0030f3.f590b).m729a();
        }
        C0030f c0030f4 = this.f550N;
        if (!c0030f4.f592d.f726k) {
            return false;
        }
        C0038g.a aVar5 = c0030f4.f591c;
        if (aVar5 == null && c0030f4.f590b == null) {
            return false;
        }
        if (aVar5 != null && !aVar5.f726k) {
            return false;
        }
        C0038g.a aVar6 = c0030f4.f590b;
        return aVar6 == null || aVar6.f726k;
    }

    /* renamed from: a */
    private void m551a(long j, float f) {
        C0030f c0030f = this.f550N;
        if (!c0030f.f605q) {
            c0030f.f605q = true;
            m579c("源画面首帧 开始至此_ms=" + (j - this.f550N.f603o));
        }
        C0030f c0030f2 = this.f550N;
        c0030f2.f589a.m725a(c0030f2.f594f, c0030f2.f590b, c0030f2.f591c, c0030f2.f592d, c0030f2.f607s >= 0 ? c0030f2.f597i : c0030f2.f596h, f, C0032a.m641b(c0030f2.f601m, j), C0032a.m641b(this.f550N.f602n, j));
        C0030f c0030f3 = this.f550N;
        c0030f3.f589a.m725a(c0030f3.f595g, c0030f3.f590b, c0030f3.f591c, c0030f3.f592d, c0030f3.f607s >= 0 ? c0030f3.f597i : c0030f3.f596h, f, C0032a.m641b(c0030f3.f601m, j), C0032a.m641b(this.f550N.f602n, j));
    }

    /* renamed from: a */
    private boolean m560a(long j, float f, boolean z) throws Exception {
        C0032a c0032a = this.f550N.f600l;
        if (c0032a == null) {
            boolean z2 = this.f542F;
            if (z2 || !z) {
                if (!z2 && !this.f558V.m650a(j, this.f583y.m692c(), this.f583y.m690b(j))) {
                    this.f550N.f610v = "Hall 松盖确认未到";
                    m626z();
                    return false;
                }
                if (this.f550N.f594f.f736f && this.f550N.f595g.f736f) {
                    C0030f c0030f = this.f550N;
                    if (!c0030f.f606r) {
                        c0030f.f606r = true;
                        m579c("输出首帧已确认 开始至此_ms=" + (j - this.f550N.f603o));
                    }
                    C0030f c0030f2 = this.f550N;
                    if (!c0030f2.f604p && c0030f2.f607s < 0 && !this.f571m.m679a(this.f542F)) {
                        m579c("源页在输出提交后变化，本次不接管");
                        m602j();
                        return false;
                    }
                    if (this.f542F && this.f582x.m656b() >= this.f558V.f644b) {
                        m579c("合拢已撤回，本次不接管");
                        m602j();
                        return false;
                    }
                    if (!this.f542F || this.f582x.m656b() <= this.f558V.f644b - f535h) {
                        if (!m564a(m600i(), this.f542F)) {
                            m579c("屏幕状态不符，本次不接管");
                            m602j();
                            return false;
                        }
                        if (this.f571m.m678a("local:4639175068132267009", 2, 13640818, true, this.f542F ? "local:4639175402683733248" : null, 1500L, 0, 1168, 1712)) {
                            if (this.f571m.m678a("local:4639175402683733248", 2, 13640817, true, this.f542F ? null : "local:4639175068132267009", 1500L, 3, 2364, 1672)) {
                                C0030f c0030f3 = this.f550N;
                                c0030f3.f600l = new C0032a(c0030f3.f603o, this.f558V.f645c);
                                this.f550N.f600l.f635a = this.f551O;
                                this.f549M.m734a(0);
                                m579c("本次源首帧已接管 angle=" + this.f582x.m656b());
                                m558a(!this.f542F, f);
                            }
                        }
                        throw new IllegalStateException("面板租约被拒绝");
                    }
                    this.f550N.f610v = "合拢未越过确认角";
                    m626z();
                    return false;
                }
                this.f550N.f610v = "输出首帧未提交";
                return false;
            }
            m579c("误触发取消准备");
            m602j();
            return false;
        }
        if (c0032a.m643a(this.f582x.m656b(), z)) {
            m558a(!this.f550N.f600l.f640f, f);
        } else if (!this.f550N.f600l.f640f && !z && this.f582x.m656b() >= f534g && this.f582x.m655a(j, f531d, 2.0f) && this.f582x.m652a(j, f531d) == 0.0f && m591e(true) == 3) {
            m579c("合拢停在接近平展，切回内屏 angle=" + this.f582x.m656b());
            m558a(true, f);
        }
        return true;
    }

    /* renamed from: a */
    private boolean m561a(long j, boolean z) throws Exception {
        long j2;
        boolean z2 = this.f550N.f600l.f640f;
        int i = z2 ? 3 : 0;
        if (z2) {
            if (this.f582x.m656b() < this.f558V.f644b) {
                j2 = j;
                if (!this.f582x.m655a(j2, 250L, 2.0f) && (this.f582x.m661d() || this.f582x.m659c(j2))) {
                    z = false;
                }
            } else {
                j2 = j;
            }
            z = true;
        } else {
            j2 = j;
        }
        if (z) {
            long j3 = this.f550N.f600l.f639e;
            if (j3 >= 0 && j2 - j3 >= 320 && m591e(true) == i && m591e(false) == i) {
                m579c("交还原生 generation=" + this.f550N.f600l.f635a + " total_ms=" + (j2 - this.f550N.f603o));
                m602j();
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private void m558a(boolean z, float f) throws Exception {
        this.f549M.m734a(2);
        C0030f c0030f = this.f550N;
        C0038g.a aVar = c0030f.f593e;
        if (aVar != null) {
            c0030f.f589a.m724a(aVar);
            this.f550N.f593e = null;
        }
        C0030f c0030f2 = this.f550N;
        c0030f2.f611w = "未获许可";
        long m642a = c0030f2.f600l.m642a(z, f, m623w());
        this.f551O = m642a;
        this.f568j.removeCallbacks(this.f567e0);
        if (this.f550N.f607s >= 0) {
            this.f568j.postDelayed(this.f567e0, 600L);
        }
        C0036e c0036e = this.f571m;
        String str = z ? "local:4639175402683733248" : "local:4639175068132267009";
        int i = z ? 2364 : 1168;
        int i2 = z ? 1672 : 1712;
        C0030f c0030f3 = this.f550N;
        c0036e.m677a(m642a, str, i, i2, c0030f3.f604p, c0030f3.f607s);
        Class<?> cls = Class.forName("android.hardware.devicestate.DeviceStateRequest");
        Object invoke = cls.getMethod("newBuilder", Integer.TYPE).invoke(null, Integer.valueOf(z ? 3 : 0));
        this.f576r.getClass().getMethod("requestState", cls, Executor.class, Class.forName("android.hardware.devicestate.DeviceStateRequest$Callback")).invoke(this.f576r, invoke.getClass().getMethod("build", null).invoke(invoke, null), null, null);
        m579c("请求原厂切屏 generation=" + m642a + " target=" + (z ? "inner" : "outer") + " 开始至此_ms=" + (m623w() - this.f550N.f603o));
    }

    /* renamed from: a */
    private void m556a(Throwable th) {
        if (this.f537A) {
            return;
        }
        this.f537A = true;
        this.f557U = 1;
        Log.e("MiDuoFold", "出错，交还原生并退出本次（开关不变）", th);
        this.f568j.removeCallbacksAndMessages(null);
        try {
            m602j();
        } catch (Exception e) {
            Log.e("MiDuoFold", "资源归还失败", e);
        }
        try {
            this.f577s.unregisterListener(this.f560X);
        } catch (RuntimeException e2) {
            m579c("传感器注销失败 " + e2);
        }
        if (this.f540D) {
            this.f578t.unregisterDisplayListener(this.f562Z);
        }
        if (this.f539C) {
            try {
                this.f569k.unregisterReceiver(this.f561Y);
            } catch (RuntimeException e3) {
                m579c("广播注销失败 " + e3);
            }
        }
        if (this.f541E != null) {
            try {
                Class.forName("android.app.IActivityTaskManager").getMethod("unregisterTaskStackListener", Class.forName("android.app.ITaskStackListener")).invoke(this.f575q, this.f541E);
            } catch (Exception e4) {
                m579c("任务监听注销失败 " + e4);
            }
        }
        System.exit(this.f557U);
    }
}
