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
import dev.duo.fold.Engine;
import dev.duo.fold.e;
import dev.duo.fold.f;
import dev.duo.fold.g;
import dev.duo.fold.i;
import dev.duo.hookprobe.J;
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

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class Engine {
    private static final int a = 33171101;
    private static final float[] b = {1.0f, 1.0f, 1.0f, 1.0f};
    private static final long c = 400;
    private static final long d = 500;
    private static final long e = 1000;
    private static final float f = 4.0f;
    private static final float g = 160.0f;
    private static final float h = 7.0f;
    private static final long i = 1000;
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private Object E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    private float K;
    private float L;
    private final h M;
    private f N;
    private long O;
    private boolean P;
    private long Q;
    private long R;
    private boolean S;
    private boolean T_fld;
    private int U;
    private dev.duo.fold.b V;
    private boolean W;
    private final SensorEventListener X;
    private final BroadcastReceiver Y;
    private final DisplayManager.DisplayListener Z;
    private final Runnable a0;
    private final Runnable b0;
    private final Runnable c0;
    private final Runnable d0;
    private final Runnable e0;
    private final Handler j;
    private final Context k;
    private final String l;
    private final dev.duo.fold.e m;
    private final Object n;
    private final Object o;
    private final Object p;
    private final Object q;
    private final Object r;
    private final SensorManager s;
    private final DisplayManager t;
    private Sensor u;
    private Sensor v;
    private Sensor w;
    private dev.duo.fold.c x;
    private dev.duo.fold.f y;
    private boolean z;

    class a implements SensorEventListener {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(SensorEvent sensorEvent) throws Exception {
            long j = sensorEvent.timestamp / 1000000;
            if (sensorEvent.sensor.getType() == 8) {
                dev.duo.fold.Engine.this.S = true;
                Engine engine = dev.duo.fold.Engine.this;
                engine.T = sensorEvent.values[0] < Math.min(5.0f, engine.w.getMaximumRange());
                if (!dev.duo.fold.Engine.this.T || dev.duo.fold.Engine.this.N == null) {
                    return;
                }
                dev.duo.fold.Engine.this.j();
                return;
            }
            if (sensorEvent.sensor.getType() == Engine.a) {
                float[] fArr = sensorEvent.values;
                if (fArr.length <= 3 || !Float.isFinite(fArr[3])) {
                    throw new IllegalStateException("Hall 数据无效");
                }
                if (dev.duo.fold.Engine.this.I) {
                    dev.duo.fold.Engine.this.I = false;
                    Engine.c("首个Hall level=" + sensorEvent.values[3]);
                }
                if (dev.duo.fold.Engine.this.R >= 0) {
                    Engine.c("Hall 唤醒后首样本 ms=" + (dev.duo.fold.Engine.w() - dev.duo.fold.Engine.this.R));
                    dev.duo.fold.Engine.this.R = -1L;
                }
                if (!dev.duo.fold.Engine.this.y.a(sensorEvent.values[3], j, dev.duo.fold.Engine.w())) {
                    return;
                }
                if (dev.duo.fold.Engine.this.J) {
                    dev.duo.fold.Engine.this.J = false;
                    Engine.c("Hall 数据恢复，等待下一次开合");
                }
                if (dev.duo.fold.Engine.this.h()) {
                    dev.duo.fold.Engine.this.A();
                }
            } else {
                float[] fArr2 = sensorEvent.values;
                if (fArr2.length == 0 || !Float.isFinite(fArr2[0])) {
                    throw new IllegalStateException("铰链数据无效");
                }
                dev.duo.fold.Engine.this.x.a(sensorEvent.values[0], j);
                dev.duo.fold.Engine.this.Q = dev.duo.fold.Engine.w();
                if (dev.duo.fold.Engine.this.P) {
                    dev.duo.fold.Engine.this.d("铰链变化");
                }
            }
            dev.duo.fold.Engine.this.x();
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(final SensorEvent sensorEvent) {
            dev.duo.fold.Engine.this.a(new e() { // from class: dev.duo.fold.Engine$a$$ExternalSyntheticLambda0
                @Override // dev.duo.fold.Engine.e
                public final void run() {
                    Engine.a.this.a(sensorEvent);
                }
            });
        }
    }

    class b extends BroadcastReceiver {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Intent intent) throws Exception {
            dev.duo.fold.Engine.this.b(intent.getAction().substring(intent.getAction().lastIndexOf(46) + 1));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, final Intent intent) {
            dev.duo.fold.Engine.this.a(new e() { // from class: dev.duo.fold.Engine$b$$ExternalSyntheticLambda0
                @Override // dev.duo.fold.Engine.e
                public final void run() {
                    Engine.b.this.a(intent);
                }
            });
        }
    }

    class c implements DisplayManager.DisplayListener {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() throws Exception {
            if (dev.duo.fold.Engine.this.N != null) {
                dev.duo.fold.Engine.this.z();
                return;
            }
            Engine engine = dev.duo.fold.Engine.this;
            engine.F = "local:4639175402683733248".equals(engine.b(engine.i()));
            dev.duo.fold.Engine.this.b("显示变化");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b() throws Exception {
            throw new IllegalStateException("默认屏被移除");
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            if (i == 0) {
                dev.duo.fold.Engine.this.a(new e() { // from class: dev.duo.fold.Engine$c$$ExternalSyntheticLambda0
                    @Override // dev.duo.fold.Engine.e
                    public final void run() {
                        Engine.c.this.a();
                    }
                });
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
            if (i == 0) {
                dev.duo.fold.Engine.this.a(new e() { // from class: dev.duo.fold.Engine$c$$ExternalSyntheticLambda1
                    @Override // dev.duo.fold.Engine.e
                    public final void run() {
                        dev.duo.fold.Engine.c.b();
                    }
                });
            }
        }
    }

    class d extends Binder {
        d() {
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
            dev.duo.fold.Engine.this.j.removeCallbacks(dev.duo.fold.Engine.this.c0);
            dev.duo.fold.Engine.this.j.post(dev.duo.fold.Engine.this.c0);
            if (parcel2 != null) {
                parcel2.writeNoException();
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface e {
        void run() throws Exception;
    }

    private Engine(Context context, String str) throws Exception {
        Handler handler = new Handler(Looper.getMainLooper());
        this.j = handler;
        this.K = Float.NaN;
        this.L = Float.NaN;
        this.Q = -1L;
        this.R = -1L;
        this.X = new a();
        this.Y = new b();
        this.Z = new c();
        this.a0 = new Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.fold.Engine.this.p();
            }
        };
        this.b0 = new Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.fold.Engine.this.q();
            }
        };
        this.c0 = new Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.fold.Engine.this.r();
            }
        };
        this.d0 = new Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.fold.Engine.this.m();
            }
        };
        this.e0 = new Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.fold.Engine.this.n();
            }
        };
        this.k = context;
        this.l = str;
        dev.duo.fold.e eVar = new dev.duo.fold.e(handler, new dev.duo.fold.e.b() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda13
            @Override // dev.duo.fold.e.b
            public final void a(int i2, long j, long j2) {
                dev.duo.fold.Engine.this.b(i2, j, j2);
            }
        });
        this.m = eVar;
        this.n = a("display", "android.hardware.display.IDisplayManager");
        this.o = a("device_state", "android.hardware.devicestate.IDeviceStateManager");
        Object a2 = a("window", WorkspaceProtocol.INTERFACE);
        this.p = a2;
        this.M = new h(a2, eVar);
        this.q = a("activity_task", "android.app.IActivityTaskManager");
        this.r = Class.forName("android.hardware.devicestate.DeviceStateManagerGlobal").getMethod("getInstance", null).invoke(null, null);
        this.s = (SensorManager) context.getSystemService(SensorManager.class);
        this.t = (DisplayManager) context.getSystemService(DisplayManager.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        this.s.unregisterListener(this.X, this.v);
        this.P = true;
        this.j.removeCallbacks(this.a0);
        c("外屏空闲已合上：Hall 休眠，等铰链唤醒");
    }

    private void B() throws Exception {
        Properties properties = new Properties();
        properties.load(new StringReader(dev.duo.fold.g.a(this.l, "curve.properties")));
        this.V = new dev.duo.fold.b(Float.parseFloat(properties.getProperty("open_angle")), Float.parseFloat(properties.getProperty("close_angle")), Float.parseFloat(properties.getProperty("reverse_degrees")), Long.parseLong(properties.getProperty("release_confirm_ms")));
        int[] a2 = this.m.a();
        if (a2[0] != 1 || a2[1] != 254 || a2[2] != 0) {
            throw new IllegalStateException("租约模块或版本不匹配");
        }
        String[] strArr = {"local:4639175402683733248", "local:4639175068132267009"};
        for (int i2 = 0; i2 < 2; i2++) {
            String str = strArr[i2];
            if (this.m.a(str)[0] != 1) {
                throw new IllegalStateException("面板不存在 " + str);
            }
        }
        this.m.a.linkToDeath(new IBinder.DeathRecipient() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda5
            @Override // android.os.IBinder.DeathRecipient
            public final void binderDied() {
                dev.duo.fold.Engine.this.t();
            }
        }, 0);
        this.u = this.s.getDefaultSensor(36);
        this.v = this.s.getDefaultSensor(a, false);
        Sensor defaultSensor = this.s.getDefaultSensor(8);
        this.w = defaultSensor;
        if (this.u == null || this.v == null || defaultSensor == null) {
            throw new IllegalStateException("缺少铰链、Hall 或距离传感器");
        }
        Class<?> cls = Class.forName("android.app.ITaskStackListener");
        final d dVar = new d();
        this.E = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda6
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                Object a3;
                a3 = Engine.a(dVar, obj, method, objArr);
                return a3;
            }
        });
        Class.forName("android.app.IActivityTaskManager").getMethod("registerTaskStackListener", cls).invoke(this.q, this.E);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.k.registerReceiver(this.Y, intentFilter, null, this.j, 4);
        this.C = true;
        this.t.registerDisplayListener(this.Z, this.j);
        this.D = true;
        b();
        c("引擎就绪，空闲不轮询；只常驻已解码的壁纸原图");
        final int intValue = ((Integer) ActivityManager.class.getMethod("getCurrentUser", null).invoke(null, null)).intValue();
        new Thread(new Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                Engine.b(intValue);
            }
        }, "MiDuoFoldWallpaper").start();
    }

    private ActivityManager.RunningTaskInfo C() throws Exception {
        Class<?> cls = Class.forName("android.app.IActivityTaskManager");
        Class cls2 = Integer.TYPE;
        Class cls3 = Boolean.TYPE;
        Method method = cls.getMethod("getTasks", cls2, cls3, cls3, cls2);
        Object obj = this.q;
        Boolean bool = Boolean.FALSE;
        List list = (List) method.invoke(obj, 1, bool, bool, 0);
        if (list.isEmpty()) {
            return null;
        }
        return (ActivityManager.RunningTaskInfo) list.get(0);
    }

    private static int b(boolean z) {
        return z ? 2 : 0;
    }

    public static void main(String[] strArr) {
        Engine engine = null;
        try {
            if (Process.myUid() == 0 && strArr.length == 1) {
                Looper.prepareMainLooper();
                Class<?> activityThread = Class.forName("android.app.ActivityThread");
                Object mainThread = activityThread.getMethod("systemMain", null).invoke(null, null);
                Context context = (Context) activityThread.getMethod("getSystemContext", null).invoke(mainThread, null);
                Engine created = new Engine(context, strArr[0]);
                try {
                    created.B();
                    Looper.loop();
                    System.exit(created.U);
                } catch (Throwable th) {
                    engine = created;
                    if (engine != null) {
                        engine.a(th);
                    } else {
                        Log.e("MiDuoFold", "引擎初始化失败", th);
                    }
                    System.exit(1);
                }
                return;
            }
            throw new IllegalArgumentException("MiDuo root 入口参数不符");
        } catch (Throwable th2) {
            if (engine != null) {
                engine.a(th2);
            } else {
                Log.e("MiDuoFold", "引擎初始化失败", th2);
            }
            System.exit(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r() {
        a(new e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda17
            @Override // dev.duo.fold.Engine.e
            public final void run() {
                dev.duo.fold.Engine.this.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s() {
        a((Throwable) new IllegalStateException("系统服务已结束"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t() {
        this.j.post(new Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.fold.Engine.this.s();
            }
        });
    }

    private boolean u() throws Exception {
        return ((Boolean) Class.forName(WorkspaceProtocol.INTERFACE).getMethod("isKeyguardLocked", null).invoke(this.p, null)).booleanValue();
    }

    private boolean v() throws Exception {
        boolean equals = "0".equals(Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, "debug.duo.master"));
        if (equals != this.W) {
            this.W = equals;
            c(equals ? "MiDuo 总开关关闭或试用已结束：不接管开合" : "MiDuo 总开关已恢复：照常接管开合");
        }
        return !equals;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long w() {
        return SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() throws Exception {
        dev.duo.fold.f.State b2;
        if (!this.z || this.P || this.x.a() || !this.S || this.T || !l() || (b2 = this.y.b(w())) == dev.duo.fold.f.State.WAITING) {
            return;
        }
        float b3 = this.x.b();
        if (this.N == null) {
            boolean z = this.F;
            if (!z || b3 >= this.V.b) {
                this.L = Float.NaN;
            }
            if (!z && this.V.a(b3, b2, this.y.d())) {
                a(false);
            } else if (this.F && Float.isFinite(this.K) && b3 < this.V.b && b3 < this.K && b2 == dev.duo.fold.f.State.OPEN && ((Float.isNaN(this.L) || b3 <= this.L - f) && (this.x.a(w(), c) >= f || b3 <= this.V.b - f))) {
                a(true);
            }
        }
        boolean z2 = !Float.isFinite(this.K) || Math.abs(this.K - b3) > 0.01f;
        this.K = b3;
        if (this.N == null || !z2) {
            return;
        }
        z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() throws Exception {
        dev.duo.fold.a aVar;
        if (this.N == null) {
            return;
        }
        int b2 = this.m.b(1500L);
        if (!c() || this.N.p != u() || (this.N.s >= 0 && e() != this.N.s)) {
            j();
            b();
            return;
        }
        dev.duo.fold.a aVar2 = this.N.l;
        if (aVar2 != null && b2 != 2) {
            c("面板租约失效，交还本次动画");
            j();
            return;
        }
        if (aVar2 != null) {
            if (aVar2.e(w(), this.N.s >= 0 ? 1200L : 3000L)) {
                c("目标画面未就绪，交还原生 generation=" + this.N.l.a + " 阶段=" + this.N.w);
                j();
                return;
            }
        }
        if (this.N.l == null && w() - this.N.o > 1000) {
            c("准备超时，交还原生 阶段=" + this.N.v + " 源首帧=" + this.N.q + " 输出首帧=" + this.N.r + " Hall=" + this.y.b(w()));
            j();
            return;
        }
        f();
        f fVar = this.N;
        if (fVar != null && (aVar = fVar.l) != null && aVar.e >= 0) {
            z();
        }
        this.j.postDelayed(this.b0, c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        if (this.A || this.N == null || this.B) {
            return;
        }
        this.B = true;
        Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda15
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                dev.duo.fold.Engine.this.c(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x015e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void f() throws Exception {
        dev.duo.fold.a aVar;
        Bundle a2;
        f fVar = this.N;
        if (fVar == null || (aVar = fVar.l) == null || fVar.t != aVar.a) {
            return;
        }
        Object i2 = i();
        int d2 = d(i2);
        int a3 = a(i2);
        float[] a4 = this.N.s >= 0 ? b : this.m.a(d2, a3);
        if (a4 == null) {
            this.N.w = "坐标未到";
            return;
        }
        f fVar2 = this.N;
        fVar2.t = -1L;
        fVar2.e = fVar2.a.a(d2, a3, this.j, new Runnable() { public void run() { Engine.this.z(); } }, this.N.h != null);
        f fVar3 = this.N;
        g.a aVar2 = fVar3.e;
        aVar2.m = a4;
        aVar2.l = fVar3.s >= 0;
        aVar2.g = fVar3.l.f ? (7 - c(i2)) % 4 : 0;
        f fVar4 = this.N;
        if (fVar4.h != null) {
            if (!fVar4.l.f) {
                if (d2 == 1168 && a3 == 1712) {
                    a2 = this.M.a(2, d2, a3);
                    if (a2 != null) {
                    }
                    c("目标屏不能分层，交还原生 原因=" + (a2 != null ? "屏幕方向/尺寸" : a2.getString("unavailable")));
                    j();
                    return;
                }
                a2 = null;
                if (a2 != null) {
                }
                c("目标屏不能分层，交还原生 原因=" + (a2 != null ? "屏幕方向/尺寸" : a2.getString("unavailable")));
                j();
                return;
            }
            if (d2 == 2364 && a3 == 1672) {
                a2 = this.M.a(2, d2, a3);
                if (a2 != null || a2.containsKey("unavailable")) {
                    c("目标屏不能分层，交还原生 原因=" + (a2 != null ? "屏幕方向/尺寸" : a2.getString("unavailable")));
                    j();
                    return;
                }
                if (a(a2, true)) {
                    c("分层会话内容已改变（换壁纸/编辑/负一屏），交还原生");
                    j();
                    return;
                }
                String a5 = a(a2, this.N.h);
                if (a5 != null) {
                    this.N.w = "分层条件未到（" + a5 + "）";
                    f fVar5 = this.N;
                    long j = fVar5.u;
                    long j2 = fVar5.l.a;
                    if (j != j2) {
                        fVar5.u = j2;
                        c("目标桌面仍在过渡（" + a5 + "），稍后重取");
                    }
                    f fVar6 = this.N;
                    fVar6.a.a(fVar6.e);
                    this.N.e = null;
                    this.M.a(2);
                    f fVar7 = this.N;
                    fVar7.t = fVar7.l.a;
                    this.j.postDelayed(this.d0, 100L);
                    return;
                }
                this.M.a(2, this.N.e, a2);
            }
            a2 = null;
            if (a2 != null) {
            }
            c("目标屏不能分层，交还原生 原因=" + (a2 != null ? "屏幕方向/尺寸" : a2.getString("unavailable")));
            j();
            return;
        }
        this.M.a(2, fVar4.e, fVar4.p);
        this.N.w = "已建输入但无 buffer";
    }

    private boolean g() throws Exception {
        f fVar = this.N;
        if (fVar.l != null || fVar.p || fVar.s >= 0 || this.m.a(this.F)) {
            return true;
        }
        f fVar2 = this.N;
        fVar2.v = "未获许可（源页停稳）";
        if (!fVar2.r && !fVar2.f.f && !this.N.g.f) {
            z();
            return false;
        }
        c("源页在准备期间再次变化，本次不接管");
        j();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        return this.z && !this.P && this.N == null && !this.F && this.y.d() && this.y.b(w()) == dev.duo.fold.f.State.SHUT && w() - this.Q >= 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object i() throws Exception {
        Object invoke = Class.forName("android.hardware.display.IDisplayManager").getMethod("getDisplayInfo", Integer.TYPE).invoke(this.n, 0);
        if (invoke != null) {
            return invoke;
        }
        throw new IllegalStateException("默认屏不存在");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() throws Exception {
        Exception e2;
        dev.duo.fold.c cVar;
        g gVar;
        this.j.removeCallbacks(this.b0);
        this.j.removeCallbacks(this.d0);
        this.j.removeCallbacks(this.e0);
        f fVar = this.N;
        if (fVar != null && fVar.l != null) {
            try {
                this.r.getClass().getMethod("cancelStateRequest", null).invoke(this.r, null);
            } catch (Exception e3) {
                e2 = e3;
            }
        }
        e2 = null;
        try {
            this.m.b("*");
        } catch (Exception e4) {
            if (e2 == null) {
                e2 = e4;
            } else {
                e2.addSuppressed(e4);
            }
        }
        try {
            this.M.a(-1);
        } catch (Exception e5) {
            if (e2 == null) {
                e2 = e5;
            } else {
                e2.addSuppressed(e5);
            }
        }
        f fVar2 = this.N;
        if (fVar2 != null && (gVar = fVar2.a) != null) {
            try {
                gVar.close();
            } catch (Exception e6) {
                if (e2 == null) {
                    e2 = e6;
                } else {
                    e2.addSuppressed(e6);
                }
            }
        }
        this.N = null;
        if (e2 != null) {
            throw e2;
        }
        boolean equals = "local:4639175402683733248".equals(b(i()));
        this.F = equals;
        this.L = (!equals || (cVar = this.x) == null) ? Float.NaN : cVar.b();
        dev.duo.fold.f fVar3 = this.y;
        if (fVar3 != null && !this.F) {
            fVar3.b();
        }
        if (this.z) {
            c(e() >= 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() throws Exception {
        if (this.N == null) {
            return;
        }
        long w = w();
        if (l()) {
            boolean z = this.y.b(w) == dev.duo.fold.f.State.SHUT;
            float a2 = z ? 0.0f : this.x.a(w);
            if (g()) {
                this.N.v = "已建输入但无 buffer（源或壁纸）";
                if (a(w)) {
                    a(w, a2);
                    if (a(w, a2, z) && !a(w, z)) {
                        b(w);
                    }
                }
            }
        }
    }

    private boolean l() throws Exception {
        if (this.y.b(w()) != dev.duo.fold.f.State.FALLBACK) {
            return !this.J;
        }
        if (this.J) {
            return false;
        }
        this.J = true;
        c("Hall 数据中断，交还本次动画并等待新样本");
        boolean z = this.H;
        j();
        this.y = new dev.duo.fold.f();
        this.x = new dev.duo.fold.c(30.0f);
        this.K = Float.NaN;
        if (z != this.H) {
            return false;
        }
        this.s.unregisterListener(this.X, this.v);
        if (this.s.registerListener(this.X, this.v, b(this.H), this.j)) {
            return false;
        }
        throw new IllegalStateException("Hall 恢复注册失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m() {
        a(new e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda14
            @Override // dev.duo.fold.Engine.e
            public final void run() {
                dev.duo.fold.Engine.this.f();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n() {
        a(new e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda0
            @Override // dev.duo.fold.Engine.e
            public final void run() {
                dev.duo.fold.Engine.this.d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() throws Exception {
        if (!this.z || this.G || this.P) {
            return;
        }
        l();
        this.j.removeCallbacks(this.a0);
        if (!this.z || this.G) {
            return;
        }
        this.j.postDelayed(this.a0, d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p() {
        a(new e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda18
            @Override // dev.duo.fold.Engine.e
            public final void run() {
                dev.duo.fold.Engine.this.o();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q() {
        a(new e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda19
            @Override // dev.duo.fold.Engine.e
            public final void run() {
                dev.duo.fold.Engine.this.y();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(String str) {
        Log.i("MiDuoFold", "t=" + w() + " " + str);
    }

    private int d(Object obj) throws Exception {
        return obj.getClass().getField("logicalWidth").getInt(obj);
    }

    private int e(boolean z) throws Exception {
        Object invoke = Class.forName("android.hardware.devicestate.IDeviceStateManager").getMethod("getDeviceStateInfo", null).invoke(this.o, null);
        Object obj = invoke.getClass().getField(z ? "baseState" : "currentState").get(invoke);
        return ((Integer) obj.getClass().getMethod("getIdentifier", null).invoke(obj, null)).intValue();
    }

    private int c(Object obj) throws Exception {
        return obj.getClass().getField("rotation").getInt(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        this.P = false;
        this.y.a(w());
        this.R = w();
        if (this.s.registerListener(this.X, this.v, b(this.H), this.j)) {
            this.j.removeCallbacks(this.a0);
            if (!this.G) {
                this.j.postDelayed(this.a0, 1000L);
            }
            c("Hall 唤醒 原因=" + str + " angle=" + this.x.b());
            return;
        }
        throw new IllegalStateException("Hall 唤醒注册失败");
    }

    private boolean c() throws Exception {
        if (!((PowerManager) this.k.getSystemService(PowerManager.class)).isInteractive() || !v()) {
            return false;
        }
        if (u()) {
            return true;
        }
        ActivityManager.RunningTaskInfo C = C();
        if (C != null && C.topActivity != null) {
            Object obj = C.getClass().getField("configuration").get(C);
            Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
            if (((Integer) obj2.getClass().getMethod("getWindowingMode", null).invoke(obj2, null)).intValue() == 1 && ("com.miui.home".equals(C.topActivity.getPackageName()) || ((Integer) obj2.getClass().getMethod("getActivityType", null).invoke(obj2, null)).intValue() == 1)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final int i2, final long j, final long j2) {
        a(new e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda3
            @Override // dev.duo.fold.Engine.e
            public final void run() {
                dev.duo.fold.Engine.this.a(i2, j, j2);
            }
        });
    }

    private int e() throws Exception {
        ActivityManager.RunningTaskInfo C;
        ComponentName componentName;
        if (!u() && (C = C()) != null && (componentName = C.topActivity) != null && !"com.miui.home".equals(componentName.getPackageName())) {
            Object obj = C.getClass().getField("configuration").get(C);
            Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
            if (((Integer) obj2.getClass().getMethod("getWindowingMode", null).invoke(obj2, null)).intValue() == 1 && ((Integer) obj2.getClass().getMethod("getActivityType", null).invoke(obj2, null)).intValue() == 1) {
                return C.taskId;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(Object obj) throws Exception {
        return (String) obj.getClass().getField("uniqueId").get(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(int i2) {
        i.a a2 = dev.duo.fold.i.a(i2);
        c("壁纸预解码 " + (a2.e == null ? new StringBuilder().append("完成 ms=").append(a2.g) : new StringBuilder().append("未完成：").append(a2.e)).toString());
    }

    private static Object a(String str, String str2) throws Exception {
        IBinder iBinder = (IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, str);
        if (iBinder != null) {
            return Class.forName(str2 + "$Stub").getMethod("asInterface", IBinder.class).invoke(null, iBinder);
        }
        throw new IllegalStateException(str + " 不可用");
    }

    private boolean d(boolean z) {
        if (z) {
            return true;
        }
        return this.N == null && this.F;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() throws Exception {
        b("任务");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() throws Exception {
        dev.duo.fold.a aVar;
        f fVar = this.N;
        if (fVar == null || (aVar = fVar.l) == null || fVar.s < 0 || aVar.d >= 0 || aVar.e >= 0) {
            return;
        }
        if (e(false) != (this.N.l.f ? 3 : 0)) {
            this.j.postDelayed(this.e0, 100L);
        } else {
            c("应用目标未报窗口提交，屏已切换，直接接入 generation=" + this.N.l.a);
            a(1, this.N.l.a, w());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) throws Exception {
        f fVar = this.N;
        if (fVar != null && (fVar.p != u() || (this.N.s >= 0 && e() != this.N.s))) {
            j();
        }
        if (!c()) {
            if (this.N != null) {
                j();
            }
            if (this.z) {
                this.s.unregisterListener(this.X);
                this.z = false;
                this.j.removeCallbacks(this.a0);
            }
            this.P = false;
            this.R = -1L;
        } else if (!this.z) {
            this.F = "local:4639175402683733248".equals(b(i()));
            this.y = new dev.duo.fold.f();
            this.x = new dev.duo.fold.c(30.0f);
            this.K = Float.NaN;
            this.L = Float.NaN;
            this.z = true;
            this.S = false;
            this.I = true;
            this.J = false;
            boolean z = e() >= 0;
            this.G = z;
            this.H = d(z);
            this.Q = w();
            if (this.s.registerListener(this.X, this.u, b(this.G), this.j) && this.s.registerListener(this.X, this.v, b(this.H), this.j) && this.s.registerListener(this.X, this.w, 3, this.j)) {
                c("开始监听 原因=" + str);
                if (!this.G) {
                    this.j.postDelayed(this.a0, 1000L);
                }
            } else {
                throw new IllegalStateException("传感器注册失败");
            }
        }
        if (this.P && this.F) {
            d("切到内屏");
        }
        if (this.z && this.N == null) {
            c(e() >= 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(e eVar) {
        if (this.A) {
            return;
        }
        try {
            eVar.run();
        } catch (Throwable th) {
            a(th);
        }
    }

    private static final class f {
        g a;
        g.a b;
        g.a c;
        g.a d;
        g.a e;
        g.b f;
        g.b g;
        dev.duo.fold.d h;
        dev.duo.fold.d i;
        int j;
        ArrayList<Rect> k;
        dev.duo.fold.a l;
        long m;
        long n;
        long o;
        boolean p;
        boolean q;
        boolean r;
        int s;
        long t;
        long u;
        String v;
        String w;

        private f() {
            this.m = -1L;
            this.n = -1L;
            this.s = -1;
            this.t = -1L;
            this.u = -1L;
            this.v = "已建输入但无 buffer（源或壁纸）";
            this.w = "未获许可";
        }

        /* synthetic */ f(a aVar) {
            this();
        }
    }

    private int a(Object obj) throws Exception {
        return obj.getClass().getField("logicalHeight").getInt(obj);
    }

    private boolean a(Object obj, boolean z) throws Exception {
        f fVar;
        int d2 = d(obj);
        int a2 = a(obj);
        int c2 = c(obj);
        return (z ? "local:4639175402683733248" : "local:4639175068132267009").equals(b(obj)) && (!z ? !(d2 != 1168 || a2 != 1712 || c2 != 0) : !(c2 % 2 != 1 ? d2 != 1672 || a2 != 2364 : d2 != 2364 || a2 != 1672)) && (!z || u() || (!u() && ((fVar = this.N) != null ? fVar.s >= 0 : e() >= 0)) || c2 == 3);
    }

    private void c(boolean z) {
        boolean d2 = d(z);
        boolean z2 = this.G;
        if (z2 == z && this.H == d2) {
            return;
        }
        if (z2 != z) {
            this.s.unregisterListener(this.X, this.u);
            if (!this.s.registerListener(this.X, this.u, b(z), this.j)) {
                throw new IllegalStateException("传感器采样切换失败");
            }
        }
        if (this.H != d2 && !this.P) {
            this.s.unregisterListener(this.X, this.v);
            if (!this.s.registerListener(this.X, this.v, b(d2), this.j)) {
                throw new IllegalStateException("传感器采样切换失败");
            }
        }
        this.G = z;
        this.H = d2;
        this.j.removeCallbacks(this.a0);
        if (z) {
            return;
        }
        this.j.postDelayed(this.a0, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object a(Binder binder, Object obj, Method method, Object[] objArr) throws Throwable {
        if (method.getName().equals("asBinder")) {
            return binder;
        }
        throw new UnsupportedOperationException(method.getName());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v8, types: [dev.duo.fold.Engine$a] */
    private void a(boolean z) throws Exception {
        FutureTask<i.a> futureTask;
        float[] a2;
        if (c() && this.S && !this.T && a(i(), z)) {
            boolean u = u();
            int e2 = u ? -1 : e();
            c("开始" + (z ? "合拢" : "打开") + " angle=" + this.x.b() + (e2 >= 0 ? " 应用task=" + e2 : ""));
            Bundle bundle = null;
            Bundle bundle2 = null;
            bundle = null;
            f fVar = new f(bundle);
            this.N = fVar;
            fVar.o = w();
            f fVar2 = this.N;
            fVar2.p = u;
            fVar2.s = e2;
            c(false);
            if (this.N.p) {
                futureTask = null;
            } else {
                final int intValue = ((Integer) ActivityManager.class.getMethod("getCurrentUser", null).invoke(null, null)).intValue();
                futureTask = new FutureTask<>(new Callable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda16
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        i.a a3;
                        a3 = dev.duo.fold.i.a(intValue);
                        return a3;
                    }
                });
                new Thread(futureTask, "MiDuoFoldWallpaper").start();
            }
            this.N.a = new g();
            f fVar3 = this.N;
            fVar3.a.a(this.l, fVar3.p);
            long w = w();
            Object i2 = i();
            int d2 = d(i2);
            int a3 = a(i2);
            f fVar4 = this.N;
            if (!fVar4.p && fVar4.s < 0) {
                Bundle a4 = this.M.a(0, d2, a3);
                if (a4.containsKey("unavailable")) {
                    c("本次不分层：" + a4.getString("unavailable"));
                } else {
                    bundle2 = a4;
                }
                long w2 = w();
                i.a a5 = a(futureTask);
                if (a5 == null) {
                    return;
                }
                long w3 = w();
                if (bundle2 != null) {
                    this.N.d = a(bundle2, a5);
                    if (this.N.d == null) {
                        this.M.a(0);
                    }
                }
                c("分层准备耗时ms 初始化=" + (w - this.N.o) + " 取层=" + (w2 - w) + " 等解码=" + (w3 - w2) + " 解码=" + a5.g + " 上传=" + (w() - w3));
                bundle = bundle2;
            }
            g.a a6 = this.N.a.a(d2, a3, this.j, new Runnable() { public void run() { Engine.this.z(); } }, this.N.d != null);
            a6.g = z ? (7 - c(i2)) % 4 : 0;
            boolean z2 = this.N.s >= 0;
            a6.l = z2;
            if (!z2) {
                a2 = this.m.a(d2, a3);
            } else {
                a2 = b;
            }
            a6.m = a2;
            if (a2 == null) {
                c("当前屏侧栏坐标未就绪，本次不接管");
                j();
                return;
            }
            if (!z) {
                f fVar5 = this.N;
                fVar5.b = a6;
                fVar5.n = w() - 320;
            } else {
                f fVar6 = this.N;
                fVar6.c = a6;
                fVar6.m = w() - 320;
            }
            f fVar7 = this.N;
            if (fVar7.s >= 0) {
                this.M.a(0, a6, false);
                i.a a7 = a(futureTask);
                if (a7 == null) {
                    return;
                }
                this.N.d = a(a7);
                f fVar8 = this.N;
                if (fVar8.d == null) {
                    fVar8.d = fVar8.a.a(d2, a3, this.j, new Runnable() { public void run() { Engine.this.z(); } }, false);
                    g.a aVar = this.N.d;
                    aVar.g = a6.g;
                    try {
                        this.M.a(1, aVar, false);
                    } catch (IllegalStateException e3) {
                        c("应用背景壁纸不可用，本次交还原生：" + e3.getMessage());
                        j();
                        return;
                    }
                }
            } else {
                if (fVar7.d != null) {
                    this.M.a(0, a6, bundle);
                }
                f fVar9 = this.N;
                if (fVar9.d == null) {
                    fVar9.d = fVar9.a.a(d2, a3, this.j, new Runnable() { public void run() { Engine.this.z(); } }, false);
                    f fVar10 = this.N;
                    fVar10.d.g = a6.g;
                    this.M.a(0, a6, fVar10.p);
                    h hVar = this.M;
                    f fVar11 = this.N;
                    hVar.a(1, fVar11.d, fVar11.p);
                }
            }
            f fVar12 = this.N;
            fVar12.f = fVar12.a.a(0, this.j, new Runnable() { public void run() { Engine.this.z(); } });
            f fVar13 = this.N;
            fVar13.g = fVar13.a.a(1, this.j, new Runnable() { public void run() { Engine.this.z(); } });
            this.j.postDelayed(this.b0, c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(long j) {
        this.B = false;
        a(new e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda1
            @Override // dev.duo.fold.Engine.e
            public final void run() {
                dev.duo.fold.Engine.this.k();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public void a(int i2, long j, long j2) throws Exception {
        dev.duo.fold.a aVar;
        f fVar = this.N;
        if (fVar == null || (aVar = fVar.l) == null) {
            return;
        }
        if (i2 == 2) {
            if (aVar.d(j, j2)) {
                f fVar2 = this.N;
                fVar2.t = -1L;
                fVar2.w = "未获许可（已撤销）";
                this.j.removeCallbacks(this.d0);
                f fVar3 = this.N;
                g.a aVar2 = fVar3.e;
                if (aVar2 != null) {
                    fVar3.a.a(aVar2);
                    this.N.e = null;
                }
                this.M.a(2);
                c("目标许可撤销 generation=" + j);
                return;
            }
            return;
        }
        if (aVar.c(j, j2)) {
            if (!a(i(), this.N.l.f)) {
                c("目标屏状态不符，交还原生 generation=" + j);
                j();
                return;
            }
            c("目标内容许可 generation=" + j + " ready_t=" + j2);
            f fVar4 = this.N;
            fVar4.t = j;
            fVar4.w = "坐标未到";
            f();
        }
    }

    private void b(long j) {
        if (!this.x.d() && !this.x.c(j)) {
            f fVar = this.N;
            long j2 = fVar.m;
            if (j2 < 0 || j - j2 >= 320) {
                long j3 = fVar.n;
                if (j3 < 0 || j - j3 >= 320) {
                    return;
                }
            }
        }
        z();
    }

    private i.a a(FutureTask<i.a> futureTask) throws Exception {
        try {
            return futureTask.get(Math.max(0L, (this.N.o + 1000) - w()), TimeUnit.MILLISECONDS);
        } catch (TimeoutException e2) {
            c("准备超时，交还原生 阶段=等壁纸解码");
            j();
            return null;
        }
    }

    private g.a a(i.a aVar) {
        if (aVar.e != null) {
            c("应用背景改用壁纸镜像：" + aVar.e);
            return null;
        }
        int[] iArr = new int[1];
        GLES30.glGetIntegerv(3379, iArr, 0);
        if (Math.max(aVar.b.getWidth(), aVar.b.getHeight()) > iArr[0]) {
            c("应用背景改用壁纸镜像：壁纸超过纹理上限");
            return null;
        }
        this.N.i = new dev.duo.fold.d();
        f fVar = this.N;
        dev.duo.fold.d dVar = fVar.i;
        dVar.a = aVar.c;
        dVar.b = aVar.d;
        return fVar.a.a(aVar.b);
    }

    private g.a a(Bundle bundle, i.a aVar) throws Exception {
        Bundle bundle2 = bundle.getBundle(dev.duo.hookprobe.J.c);
        ArrayList<Rect> parcelableArrayList = bundle.getParcelableArrayList("bitmapCrops");
        if (a(bundle, false)) {
            c("本次沿用原动画：侧栏/桌面状态不适用分层");
            return null;
        }
        String a2 = a(bundle, (dev.duo.fold.d) null);
        if (a2 != null) {
            c("本次沿用原动画：" + a2);
            return null;
        }
        Object a3 = a("wallpaper", "android.app.IWallpaperManager");
        Class<?> cls = Class.forName("android.app.IWallpaperManager");
        int i2 = bundle.getInt("user");
        this.N.j = bundle.getInt("wallpaperId");
        Class cls2 = Integer.TYPE;
        if (this.N.j != ((Integer) cls.getMethod("getWallpaperIdForUser", cls2, cls2).invoke(a3, 1, Integer.valueOf(i2))).intValue()) {
            c("本次沿用原动画：壁纸在准备时已更换");
            return null;
        }
        if (aVar.e != null) {
            c("本次沿用原动画：" + aVar.e);
            return null;
        }
        if (aVar.a != i2) {
            c("本次沿用原动画：解码期间用户已切换");
            return null;
        }
        Bitmap bitmap = aVar.b;
        int[] iArr = new int[1];
        GLES30.glGetIntegerv(3379, iArr, 0);
        if (Math.max(bitmap.getWidth(), bitmap.getHeight()) > iArr[0]) {
            c("本次沿用原动画：壁纸超过纹理上限");
            return null;
        }
        g.a a4 = this.N.a.a(bitmap);
        this.N.k = parcelableArrayList;
        dev.duo.fold.d dVar = new dev.duo.fold.d();
        dVar.a = aVar.c;
        dVar.b = aVar.d;
        dVar.c = dev.duo.fold.e.a(bundle2.getFloatArray("coverGeometry"));
        dVar.d = dev.duo.fold.e.a(bundle2.getFloatArray("innerGeometry"));
        ArrayList parcelableArrayList2 = bundle2.getParcelableArrayList("layers");
        for (int i3 = 0; i3 < parcelableArrayList2.size(); i3++) {
            int i4 = i3 * 4;
            System.arraycopy(((Bundle) parcelableArrayList2.get(i3)).getFloatArray("coverFrame"), 0, dVar.e, i4, 4);
            System.arraycopy(((Bundle) parcelableArrayList2.get(i3)).getFloatArray("innerFrame"), 0, dVar.f, i4, 4);
        }
        System.arraycopy(dev.duo.fold.d.g, 0, dVar.e, 8, 4);
        System.arraycopy(dev.duo.fold.d.h, 0, dVar.f, 8, 4);
        this.N.h = dVar;
        c("本次使用静态原图与透明前景分层 wallpaperId=" + this.N.j);
        return a4;
    }

    private boolean a(Bundle bundle, boolean z) {
        Bundle bundle2 = bundle.getBundle(dev.duo.hookprobe.J.c);
        if ((!z || bundle.getInt("wallpaperId") == this.N.j) && !bundle2.getBoolean("editing") && (bundle2.getInt("contentFlags") & 32) == 0) {
            return z && !Objects.equals(this.N.k, bundle.getParcelableArrayList("bitmapCrops"));
        }
        return true;
    }

    private static String a(Bundle bundle, dev.duo.fold.d dVar) {
        Bundle bundle2 = bundle.getBundle(dev.duo.hookprobe.J.c);
        if (dVar == null && (bundle2.getInt("width") != bundle.getInt("width") || bundle2.getInt("height") != bundle.getInt("height"))) {
            return "侧栏尺寸";
        }
        if (!dev.duo.fold.i.a(bundle)) {
            return "壁纸缩放/偏移/调暗或非 MIUI 图片窗口";
        }
        if (dVar == null) {
            return null;
        }
        ArrayList parcelableArrayList = bundle2.getParcelableArrayList("layers");
        for (int i2 = 0; i2 < parcelableArrayList.size(); i2++) {
            for (int i3 = 0; i3 < 4; i3++) {
                float f2 = ((Bundle) parcelableArrayList.get(i2)).getFloatArray("coverFrame")[i3];
                float f3 = ((Bundle) parcelableArrayList.get(i2)).getFloatArray("innerFrame")[i3];
                int i4 = (i2 * 4) + i3;
                if (f2 != dVar.e[i4]) {
                    return "侧栏位置 面板" + i2 + " 外屏" + "xywh".charAt(i3) + " " + dVar.e[i4] + "→" + f2;
                }
                if (f3 != dVar.f[i4]) {
                    return "侧栏位置 面板" + i2 + " 内屏" + "xywh".charAt(i3) + " " + dVar.f[i4] + "→" + f3;
                }
            }
        }
        if (Arrays.equals(dVar.c, dev.duo.fold.e.a(bundle2.getFloatArray("coverGeometry"))) && Arrays.equals(dVar.d, dev.duo.fold.e.a(bundle2.getFloatArray("innerGeometry")))) {
            return null;
        }
        return "侧栏坐标";
    }

    private boolean a(long j) throws Exception {
        this.N.d.a();
        f fVar = this.N;
        if (fVar.l == null) {
            g.a aVar = fVar.c;
            if (aVar != null) {
                aVar.a();
            }
            g.a aVar2 = this.N.b;
            if (aVar2 != null) {
                aVar2.a();
            }
        }
        g.a aVar3 = this.N.e;
        if (aVar3 != null && aVar3.a()) {
            dev.duo.fold.a aVar4 = this.N.l;
            if (aVar4.a(aVar4.a, j)) {
                f fVar2 = this.N;
                dev.duo.fold.a aVar5 = fVar2.l;
                boolean z = aVar5.f;
                g.a aVar6 = z ? fVar2.c : fVar2.b;
                if (z) {
                    fVar2.c = fVar2.e;
                    if (aVar6 == null) {
                        fVar2.m = j;
                    }
                } else {
                    fVar2.b = fVar2.e;
                    if (aVar6 == null) {
                        fVar2.n = j;
                    }
                }
                fVar2.e = null;
                this.m.a(aVar5.a);
                if (aVar6 != null) {
                    this.N.a.a(aVar6);
                }
                c("目标实时帧 generation=" + this.N.l.a + " 开始至此_ms=" + (j - this.N.o));
            }
        }
        f fVar3 = this.N;
        dev.duo.fold.a aVar7 = fVar3.l;
        if (aVar7 != null && fVar3.e == null && aVar7.e >= 0) {
            (aVar7.f ? fVar3.c : fVar3.b).a();
        }
        f fVar4 = this.N;
        if (!fVar4.d.k) {
            return false;
        }
        g.a aVar8 = fVar4.c;
        if (aVar8 == null && fVar4.b == null) {
            return false;
        }
        if (aVar8 != null && !aVar8.k) {
            return false;
        }
        g.a aVar9 = fVar4.b;
        return aVar9 == null || aVar9.k;
    }

    private void a(long j, float f2) {
        f fVar = this.N;
        if (!fVar.q) {
            fVar.q = true;
            c("源画面首帧 开始至此_ms=" + (j - this.N.o));
        }
        f fVar2 = this.N;
        fVar2.a.a(fVar2.f, fVar2.b, fVar2.c, fVar2.d, fVar2.s >= 0 ? fVar2.i : fVar2.h, f2, dev.duo.fold.a.b(fVar2.m, j), dev.duo.fold.a.b(this.N.n, j));
        f fVar3 = this.N;
        fVar3.a.a(fVar3.g, fVar3.b, fVar3.c, fVar3.d, fVar3.s >= 0 ? fVar3.i : fVar3.h, f2, dev.duo.fold.a.b(fVar3.m, j), dev.duo.fold.a.b(this.N.n, j));
    }

    private boolean a(long j, float f2, boolean z) throws Exception {
        dev.duo.fold.a aVar = this.N.l;
        if (aVar == null) {
            boolean z2 = this.F;
            if (z2 || !z) {
                if (!z2 && !this.V.a(j, this.y.c(), this.y.b(j))) {
                    this.N.v = "Hall 松盖确认未到";
                    z();
                    return false;
                }
                if (this.N.f.f && this.N.g.f) {
                    f fVar = this.N;
                    if (!fVar.r) {
                        fVar.r = true;
                        c("输出首帧已确认 开始至此_ms=" + (j - this.N.o));
                    }
                    f fVar2 = this.N;
                    if (!fVar2.p && fVar2.s < 0 && !this.m.a(this.F)) {
                        c("源页在输出提交后变化，本次不接管");
                        j();
                        return false;
                    }
                    if (this.F && this.x.b() >= this.V.b) {
                        c("合拢已撤回，本次不接管");
                        j();
                        return false;
                    }
                    if (!this.F || this.x.b() <= this.V.b - h) {
                        if (!a(i(), this.F)) {
                            c("屏幕状态不符，本次不接管");
                            j();
                            return false;
                        }
                        if (this.m.a("local:4639175068132267009", 2, 13640818, true, this.F ? "local:4639175402683733248" : null, 1500L, 0, 1168, 1712)) {
                            if (this.m.a("local:4639175402683733248", 2, 13640817, true, this.F ? null : "local:4639175068132267009", 1500L, 3, 2364, 1672)) {
                                f fVar3 = this.N;
                                fVar3.l = new dev.duo.fold.a(fVar3.o, this.V.c);
                                this.N.l.a = this.O;
                                this.M.a(0);
                                c("本次源首帧已接管 angle=" + this.x.b());
                                a(!this.F, f2);
                            }
                        }
                        throw new IllegalStateException("面板租约被拒绝");
                    }
                    this.N.v = "合拢未越过确认角";
                    z();
                    return false;
                }
                this.N.v = "输出首帧未提交";
                return false;
            }
            c("误触发取消准备");
            j();
            return false;
        }
        if (aVar.a(this.x.b(), z)) {
            a(!this.N.l.f, f2);
        } else if (!this.N.l.f && !z && this.x.b() >= g && this.x.a(j, d, 2.0f) && this.x.a(j, d) == 0.0f && e(true) == 3) {
            c("合拢停在接近平展，切回内屏 angle=" + this.x.b());
            a(true, f2);
        }
        return true;
    }

    private boolean a(long j, boolean z) throws Exception {
        long j2;
        boolean z2 = this.N.l.f;
        int i2 = z2 ? 3 : 0;
        if (z2) {
            if (this.x.b() < this.V.b) {
                j2 = j;
                if (!this.x.a(j2, 250L, 2.0f) && (this.x.d() || this.x.c(j2))) {
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
            long j3 = this.N.l.e;
            if (j3 >= 0 && j2 - j3 >= 320 && e(true) == i2 && e(false) == i2) {
                c("交还原生 generation=" + this.N.l.a + " total_ms=" + (j2 - this.N.o));
                j();
                return true;
            }
        }
        return false;
    }

    private void a(boolean z, float f2) throws Exception {
        this.M.a(2);
        f fVar = this.N;
        g.a aVar = fVar.e;
        if (aVar != null) {
            fVar.a.a(aVar);
            this.N.e = null;
        }
        f fVar2 = this.N;
        fVar2.w = "未获许可";
        long a2 = fVar2.l.a(z, f2, w());
        this.O = a2;
        this.j.removeCallbacks(this.e0);
        if (this.N.s >= 0) {
            this.j.postDelayed(this.e0, 600L);
        }
        dev.duo.fold.e eVar = this.m;
        String str = z ? "local:4639175402683733248" : "local:4639175068132267009";
        int i2 = z ? 2364 : 1168;
        int i3 = z ? 1672 : 1712;
        f fVar3 = this.N;
        eVar.a(a2, str, i2, i3, fVar3.p, fVar3.s);
        Class<?> cls = Class.forName("android.hardware.devicestate.DeviceStateRequest");
        Object invoke = cls.getMethod("newBuilder", Integer.TYPE).invoke(null, Integer.valueOf(z ? 3 : 0));
        this.r.getClass().getMethod("requestState", cls, Executor.class, Class.forName("android.hardware.devicestate.DeviceStateRequest$Callback")).invoke(this.r, invoke.getClass().getMethod("build", null).invoke(invoke, null), null, null);
        c("请求原厂切屏 generation=" + a2 + " target=" + (z ? "inner" : "outer") + " 开始至此_ms=" + (w() - this.N.o));
    }

    private void a(Throwable th) {
        if (this.A) {
            return;
        }
        this.A = true;
        this.U = 1;
        Log.e("MiDuoFold", "出错，交还原生并退出本次（开关不变）", th);
        this.j.removeCallbacksAndMessages(null);
        try {
            j();
        } catch (Exception e2) {
            Log.e("MiDuoFold", "资源归还失败", e2);
        }
        try {
            this.s.unregisterListener(this.X);
        } catch (RuntimeException e3) {
            c("传感器注销失败 " + e3);
        }
        if (this.D) {
            this.t.unregisterDisplayListener(this.Z);
        }
        if (this.C) {
            try {
                this.k.unregisterReceiver(this.Y);
            } catch (RuntimeException e4) {
                c("广播注销失败 " + e4);
            }
        }
        if (this.E != null) {
            try {
                Class.forName("android.app.IActivityTaskManager").getMethod("unregisterTaskStackListener", Class.forName("android.app.ITaskStackListener")).invoke(this.q, this.E);
            } catch (Exception e5) {
                c("任务监听注销失败 " + e5);
            }
        }
        System.exit(this.U);
    }
}
