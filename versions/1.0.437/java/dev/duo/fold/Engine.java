package dev.duo.fold;

/* loaded from: classes.dex */
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
    private java.lang.Object E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    private float K;
    private float L;
    private final dev.duo.fold.h M;
    private dev.duo.fold.Engine.f N;
    private long O;
    private boolean P;
    private long Q;
    private long R;
    private boolean S;
    private boolean T;
    private int U;
    private dev.duo.fold.b V;
    private boolean W;
    private final android.hardware.SensorEventListener X;
    private final android.content.BroadcastReceiver Y;
    private final android.hardware.display.DisplayManager.DisplayListener Z;
    private final java.lang.Runnable a0;
    private final java.lang.Runnable b0;
    private final java.lang.Runnable c0;
    private final java.lang.Runnable d0;
    private final java.lang.Runnable e0;
    private final android.os.Handler j;
    private final android.content.Context k;
    private final java.lang.String l;
    private final dev.duo.fold.e m;
    private final java.lang.Object n;
    private final java.lang.Object o;
    private final java.lang.Object p;
    private final java.lang.Object q;
    private final java.lang.Object r;
    private final android.hardware.SensorManager s;
    private final android.hardware.display.DisplayManager t;
    private android.hardware.Sensor u;
    private android.hardware.Sensor v;
    private android.hardware.Sensor w;
    private dev.duo.fold.c x;
    private dev.duo.fold.f y;
    private boolean z;

    class a implements android.hardware.SensorEventListener {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(android.hardware.SensorEvent sensorEvent) throws java.lang.Exception {
            long j = sensorEvent.timestamp / 1000000;
            if (sensorEvent.sensor.getType() == 8) {
                dev.duo.fold.Engine.this.S = true;
                dev.duo.fold.Engine engine = dev.duo.fold.Engine.this;
                engine.T = sensorEvent.values[0] < java.lang.Math.min(5.0f, engine.w.getMaximumRange());
                if (!dev.duo.fold.Engine.this.T || dev.duo.fold.Engine.this.N == null) {
                    return;
                }
                dev.duo.fold.Engine.this.j();
                return;
            }
            if (sensorEvent.sensor.getType() == dev.duo.fold.Engine.a) {
                float[] fArr = sensorEvent.values;
                if (fArr.length <= 3 || !java.lang.Float.isFinite(fArr[3])) {
                    throw new java.lang.IllegalStateException("Hall 数据无效");
                }
                if (dev.duo.fold.Engine.this.I) {
                    dev.duo.fold.Engine.this.I = false;
                    dev.duo.fold.Engine.c("首个Hall level=" + sensorEvent.values[3]);
                }
                if (dev.duo.fold.Engine.this.R >= 0) {
                    dev.duo.fold.Engine.c("Hall 唤醒后首样本 ms=" + (dev.duo.fold.Engine.w() - dev.duo.fold.Engine.this.R));
                    dev.duo.fold.Engine.this.R = -1L;
                }
                if (!dev.duo.fold.Engine.this.y.a(sensorEvent.values[3], j, dev.duo.fold.Engine.w())) {
                    return;
                }
                if (dev.duo.fold.Engine.this.J) {
                    dev.duo.fold.Engine.this.J = false;
                    dev.duo.fold.Engine.c("Hall 数据恢复，等待下一次开合");
                }
                if (dev.duo.fold.Engine.this.h()) {
                    dev.duo.fold.Engine.this.A();
                }
            } else {
                float[] fArr2 = sensorEvent.values;
                if (fArr2.length == 0 || !java.lang.Float.isFinite(fArr2[0])) {
                    throw new java.lang.IllegalStateException("铰链数据无效");
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
        public void onAccuracyChanged(android.hardware.Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(final android.hardware.SensorEvent sensorEvent) {
            dev.duo.fold.Engine.this.a(new dev.duo.fold.Engine.e() { // from class: dev.duo.fold.Engine$a$$ExternalSyntheticLambda0
                @Override // dev.duo.fold.Engine.e
                public final void run() {
                    dev.duo.fold.Engine.a.this.a(sensorEvent);
                }
            });
        }
    }

    class b extends android.content.BroadcastReceiver {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(android.content.Intent intent) throws java.lang.Exception {
            dev.duo.fold.Engine.this.b(intent.getAction().substring(intent.getAction().lastIndexOf(46) + 1));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, final android.content.Intent intent) {
            dev.duo.fold.Engine.this.a(new dev.duo.fold.Engine.e() { // from class: dev.duo.fold.Engine$b$$ExternalSyntheticLambda0
                @Override // dev.duo.fold.Engine.e
                public final void run() {
                    dev.duo.fold.Engine.b.this.a(intent);
                }
            });
        }
    }

    class c implements android.hardware.display.DisplayManager.DisplayListener {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() throws java.lang.Exception {
            if (dev.duo.fold.Engine.this.N != null) {
                dev.duo.fold.Engine.this.z();
                return;
            }
            dev.duo.fold.Engine engine = dev.duo.fold.Engine.this;
            engine.F = "local:4639175402683733248".equals(engine.b(engine.i()));
            dev.duo.fold.Engine.this.b("显示变化");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b() throws java.lang.Exception {
            throw new java.lang.IllegalStateException("默认屏被移除");
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            if (i == 0) {
                dev.duo.fold.Engine.this.a(new dev.duo.fold.Engine.e() { // from class: dev.duo.fold.Engine$c$$ExternalSyntheticLambda0
                    @Override // dev.duo.fold.Engine.e
                    public final void run() {
                        dev.duo.fold.Engine.c.this.a();
                    }
                });
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
            if (i == 0) {
                dev.duo.fold.Engine.this.a(new dev.duo.fold.Engine.e() { // from class: dev.duo.fold.Engine$c$$ExternalSyntheticLambda1
                    @Override // dev.duo.fold.Engine.e
                    public final void run() {
                        dev.duo.fold.Engine.c.b();
                    }
                });
            }
        }
    }

    class d extends android.os.Binder {
        d() {
        }

        @Override // android.os.Binder
        protected boolean onTransact(int i, android.os.Parcel parcel, android.os.Parcel parcel2, int i2) {
            if (i == 1598968902) {
                if (parcel2 != null) {
                    parcel2.writeString("android.app.ITaskStackListener");
                }
                return true;
            }
            if (android.os.Binder.getCallingUid() != 1000) {
                throw new java.lang.SecurityException("系统任务回调专用");
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
        void run() throws java.lang.Exception;
    }

    private Engine(android.content.Context context, java.lang.String str) throws java.lang.Exception {
        android.os.Handler handler = new android.os.Handler(android.os.Looper.getMainLooper());
        this.j = handler;
        this.K = Float.NaN;
        this.L = Float.NaN;
        this.Q = -1L;
        this.R = -1L;
        this.X = new dev.duo.fold.Engine.a();
        this.Y = new dev.duo.fold.Engine.b();
        this.Z = new dev.duo.fold.Engine.c();
        this.a0 = new java.lang.Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.fold.Engine.this.p();
            }
        };
        this.b0 = new java.lang.Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.fold.Engine.this.q();
            }
        };
        this.c0 = new java.lang.Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.fold.Engine.this.r();
            }
        };
        this.d0 = new java.lang.Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.fold.Engine.this.m();
            }
        };
        this.e0 = new java.lang.Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda12
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
        java.lang.Object a2 = a("window", dev.duo.taskcore.h.b);
        this.p = a2;
        this.M = new dev.duo.fold.h(a2, eVar);
        this.q = a("activity_task", "android.app.IActivityTaskManager");
        this.r = java.lang.Class.forName("android.hardware.devicestate.DeviceStateManagerGlobal").getMethod("getInstance", null).invoke(null, null);
        this.s = (android.hardware.SensorManager) context.getSystemService(android.hardware.SensorManager.class);
        this.t = (android.hardware.display.DisplayManager) context.getSystemService(android.hardware.display.DisplayManager.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        this.s.unregisterListener(this.X, this.v);
        this.P = true;
        this.j.removeCallbacks(this.a0);
        c("外屏空闲已合上：Hall 休眠，等铰链唤醒");
    }

    private void B() throws java.lang.Exception {
        java.util.Properties properties = new java.util.Properties();
        properties.load(new java.io.StringReader(dev.duo.fold.g.a(this.l, "curve.properties")));
        this.V = new dev.duo.fold.b(java.lang.Float.parseFloat(properties.getProperty("open_angle")), java.lang.Float.parseFloat(properties.getProperty("close_angle")), java.lang.Float.parseFloat(properties.getProperty("reverse_degrees")), java.lang.Long.parseLong(properties.getProperty("release_confirm_ms")));
        int[] a2 = this.m.a();
        if (a2[0] != 1 || a2[1] != 254 || a2[2] != 0) {
            throw new java.lang.IllegalStateException("租约模块或版本不匹配");
        }
        java.lang.String[] strArr = {"local:4639175402683733248", "local:4639175068132267009"};
        for (int i2 = 0; i2 < 2; i2++) {
            java.lang.String str = strArr[i2];
            if (this.m.a(str)[0] != 1) {
                throw new java.lang.IllegalStateException("面板不存在 " + str);
            }
        }
        this.m.a.linkToDeath(new android.os.IBinder.DeathRecipient() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda5
            @Override // android.os.IBinder.DeathRecipient
            public final void binderDied() {
                dev.duo.fold.Engine.this.t();
            }
        }, 0);
        this.u = this.s.getDefaultSensor(36);
        this.v = this.s.getDefaultSensor(a, false);
        android.hardware.Sensor defaultSensor = this.s.getDefaultSensor(8);
        this.w = defaultSensor;
        if (this.u == null || this.v == null || defaultSensor == null) {
            throw new java.lang.IllegalStateException("缺少铰链、Hall 或距离传感器");
        }
        java.lang.Class<?> cls = java.lang.Class.forName("android.app.ITaskStackListener");
        final dev.duo.fold.Engine.d dVar = new dev.duo.fold.Engine.d();
        this.E = java.lang.reflect.Proxy.newProxyInstance(cls.getClassLoader(), new java.lang.Class[]{cls}, new java.lang.reflect.InvocationHandler() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda6
            @Override // java.lang.reflect.InvocationHandler
            public final java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) {
                java.lang.Object a3;
                a3 = dev.duo.fold.Engine.a(dVar, obj, method, objArr);
                return a3;
            }
        });
        java.lang.Class.forName("android.app.IActivityTaskManager").getMethod("registerTaskStackListener", cls).invoke(this.q, this.E);
        android.content.IntentFilter intentFilter = new android.content.IntentFilter("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.k.registerReceiver(this.Y, intentFilter, null, this.j, 4);
        this.C = true;
        this.t.registerDisplayListener(this.Z, this.j);
        this.D = true;
        b();
        c("引擎就绪，空闲不轮询；只常驻已解码的壁纸原图");
        final int intValue = ((java.lang.Integer) android.app.ActivityManager.class.getMethod("getCurrentUser", null).invoke(null, null)).intValue();
        new java.lang.Thread(new java.lang.Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.fold.Engine.b(intValue);
            }
        }, "MiDuoFoldWallpaper").start();
    }

    private android.app.ActivityManager.RunningTaskInfo C() throws java.lang.Exception {
        java.lang.Class<?> cls = java.lang.Class.forName("android.app.IActivityTaskManager");
        java.lang.Class cls2 = java.lang.Integer.TYPE;
        java.lang.Class cls3 = java.lang.Boolean.TYPE;
        java.lang.reflect.Method method = cls.getMethod("getTasks", cls2, cls3, cls3, cls2);
        java.lang.Object obj = this.q;
        java.lang.Boolean bool = java.lang.Boolean.FALSE;
        java.util.List list = (java.util.List) method.invoke(obj, 1, bool, bool, 0);
        if (list.isEmpty()) {
            return null;
        }
        return (android.app.ActivityManager.RunningTaskInfo) list.get(0);
    }

    private static int b(boolean z) {
        return z ? 2 : 0;
    }

    public static void main(java.lang.String[] strArr) {
        dev.duo.fold.Engine engine = null;
        try {
            if (android.os.Process.myUid() != 0 || strArr.length != 1) {
                throw new java.lang.IllegalArgumentException("MiDuo root 入口参数不符");
            }
            android.os.Looper.prepareMainLooper();
            java.lang.Class<?> cls = java.lang.Class.forName("android.app.ActivityThread");
            dev.duo.fold.Engine engine2 = new dev.duo.fold.Engine((android.content.Context) cls.getMethod("getSystemContext", null).invoke(cls.getMethod("systemMain", null).invoke(null, null), null), strArr[0]);
            try {
                engine2.B();
                android.os.Looper.loop();
                java.lang.System.exit(engine2.U);
            } catch (java.lang.Throwable th) {
                th = th;
                engine = engine2;
                if (engine != null) {
                    engine.a(th);
                } else {
                    android.util.Log.e("MiDuoFold", "引擎初始化失败", th);
                }
                java.lang.System.exit(1);
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r() {
        a(new dev.duo.fold.Engine.e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda17
            @Override // dev.duo.fold.Engine.e
            public final void run() {
                dev.duo.fold.Engine.this.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s() {
        a((java.lang.Throwable) new java.lang.IllegalStateException("系统服务已结束"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t() {
        this.j.post(new java.lang.Runnable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.fold.Engine.this.s();
            }
        });
    }

    private boolean u() throws java.lang.Exception {
        return ((java.lang.Boolean) java.lang.Class.forName(dev.duo.taskcore.h.b).getMethod("isKeyguardLocked", null).invoke(this.p, null)).booleanValue();
    }

    private boolean v() throws java.lang.Exception {
        boolean equals = "0".equals(java.lang.Class.forName("android.os.SystemProperties").getMethod("get", java.lang.String.class).invoke(null, "debug.duo.master"));
        if (equals != this.W) {
            this.W = equals;
            c(equals ? "MiDuo 总开关关闭或试用已结束：不接管开合" : "MiDuo 总开关已恢复：照常接管开合");
        }
        return !equals;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long w() {
        return android.os.SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() throws java.lang.Exception {
        dev.duo.fold.f.a b2;
        if (!this.z || this.P || this.x.a() || !this.S || this.T || !l() || (b2 = this.y.b(w())) == dev.duo.fold.f.a.WAITING) {
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
            } else if (this.F && java.lang.Float.isFinite(this.K) && b3 < this.V.b && b3 < this.K && b2 == dev.duo.fold.f.a.OPEN && ((java.lang.Float.isNaN(this.L) || b3 <= this.L - f) && (this.x.a(w(), c) >= f || b3 <= this.V.b - f))) {
                a(true);
            }
        }
        boolean z2 = !java.lang.Float.isFinite(this.K) || java.lang.Math.abs(this.K - b3) > 0.01f;
        this.K = b3;
        if (this.N == null || !z2) {
            return;
        }
        z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() throws java.lang.Exception {
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
        dev.duo.fold.Engine.f fVar = this.N;
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
        android.view.Choreographer.getInstance().postFrameCallback(new android.view.Choreographer.FrameCallback() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda15
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
        To view partially-correct add '--show-bad-code' argument
    */
    public void f() throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.fold.Engine.f():void");
    }

    private boolean g() throws java.lang.Exception {
        dev.duo.fold.Engine.f fVar = this.N;
        if (fVar.l != null || fVar.p || fVar.s >= 0 || this.m.a(this.F)) {
            return true;
        }
        dev.duo.fold.Engine.f fVar2 = this.N;
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
        return this.z && !this.P && this.N == null && !this.F && this.y.d() && this.y.b(w()) == dev.duo.fold.f.a.SHUT && w() - this.Q >= 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public java.lang.Object i() throws java.lang.Exception {
        java.lang.Object invoke = java.lang.Class.forName("android.hardware.display.IDisplayManager").getMethod("getDisplayInfo", java.lang.Integer.TYPE).invoke(this.n, 0);
        if (invoke != null) {
            return invoke;
        }
        throw new java.lang.IllegalStateException("默认屏不存在");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() throws java.lang.Exception {
        java.lang.Exception e2;
        dev.duo.fold.c cVar;
        dev.duo.fold.g gVar;
        this.j.removeCallbacks(this.b0);
        this.j.removeCallbacks(this.d0);
        this.j.removeCallbacks(this.e0);
        dev.duo.fold.Engine.f fVar = this.N;
        if (fVar != null && fVar.l != null) {
            try {
                this.r.getClass().getMethod("cancelStateRequest", null).invoke(this.r, null);
            } catch (java.lang.Exception e3) {
                e2 = e3;
            }
        }
        e2 = null;
        try {
            this.m.b("*");
        } catch (java.lang.Exception e4) {
            if (e2 == null) {
                e2 = e4;
            } else {
                e2.addSuppressed(e4);
            }
        }
        try {
            this.M.a(-1);
        } catch (java.lang.Exception e5) {
            if (e2 == null) {
                e2 = e5;
            } else {
                e2.addSuppressed(e5);
            }
        }
        dev.duo.fold.Engine.f fVar2 = this.N;
        if (fVar2 != null && (gVar = fVar2.a) != null) {
            try {
                gVar.close();
            } catch (java.lang.Exception e6) {
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
    public void k() throws java.lang.Exception {
        if (this.N == null) {
            return;
        }
        long w = w();
        if (l()) {
            boolean z = this.y.b(w) == dev.duo.fold.f.a.SHUT;
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

    private boolean l() throws java.lang.Exception {
        if (this.y.b(w()) != dev.duo.fold.f.a.FALLBACK) {
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
        throw new java.lang.IllegalStateException("Hall 恢复注册失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m() {
        a(new dev.duo.fold.Engine.e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda14
            @Override // dev.duo.fold.Engine.e
            public final void run() {
                dev.duo.fold.Engine.this.f();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n() {
        a(new dev.duo.fold.Engine.e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda0
            @Override // dev.duo.fold.Engine.e
            public final void run() {
                dev.duo.fold.Engine.this.d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() throws java.lang.Exception {
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
        a(new dev.duo.fold.Engine.e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda18
            @Override // dev.duo.fold.Engine.e
            public final void run() {
                dev.duo.fold.Engine.this.o();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q() {
        a(new dev.duo.fold.Engine.e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda19
            @Override // dev.duo.fold.Engine.e
            public final void run() {
                dev.duo.fold.Engine.this.y();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(java.lang.String str) {
        android.util.Log.i("MiDuoFold", "t=" + w() + " " + str);
    }

    private int d(java.lang.Object obj) throws java.lang.Exception {
        return obj.getClass().getField("logicalWidth").getInt(obj);
    }

    private int e(boolean z) throws java.lang.Exception {
        java.lang.Object invoke = java.lang.Class.forName("android.hardware.devicestate.IDeviceStateManager").getMethod("getDeviceStateInfo", null).invoke(this.o, null);
        java.lang.Object obj = invoke.getClass().getField(z ? "baseState" : "currentState").get(invoke);
        return ((java.lang.Integer) obj.getClass().getMethod("getIdentifier", null).invoke(obj, null)).intValue();
    }

    private int c(java.lang.Object obj) throws java.lang.Exception {
        return obj.getClass().getField("rotation").getInt(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(java.lang.String str) {
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
        throw new java.lang.IllegalStateException("Hall 唤醒注册失败");
    }

    private boolean c() throws java.lang.Exception {
        if (!((android.os.PowerManager) this.k.getSystemService(android.os.PowerManager.class)).isInteractive() || !v()) {
            return false;
        }
        if (u()) {
            return true;
        }
        android.app.ActivityManager.RunningTaskInfo C = C();
        if (C != null && C.topActivity != null) {
            java.lang.Object obj = C.getClass().getField("configuration").get(C);
            java.lang.Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
            if (((java.lang.Integer) obj2.getClass().getMethod("getWindowingMode", null).invoke(obj2, null)).intValue() == 1 && ("com.miui.home".equals(C.topActivity.getPackageName()) || ((java.lang.Integer) obj2.getClass().getMethod("getActivityType", null).invoke(obj2, null)).intValue() == 1)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final int i2, final long j, final long j2) {
        a(new dev.duo.fold.Engine.e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda3
            @Override // dev.duo.fold.Engine.e
            public final void run() {
                dev.duo.fold.Engine.this.a(i2, j, j2);
            }
        });
    }

    private int e() throws java.lang.Exception {
        android.app.ActivityManager.RunningTaskInfo C;
        android.content.ComponentName componentName;
        if (!u() && (C = C()) != null && (componentName = C.topActivity) != null && !"com.miui.home".equals(componentName.getPackageName())) {
            java.lang.Object obj = C.getClass().getField("configuration").get(C);
            java.lang.Object obj2 = obj.getClass().getField("windowConfiguration").get(obj);
            if (((java.lang.Integer) obj2.getClass().getMethod("getWindowingMode", null).invoke(obj2, null)).intValue() == 1 && ((java.lang.Integer) obj2.getClass().getMethod("getActivityType", null).invoke(obj2, null)).intValue() == 1) {
                return C.taskId;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public java.lang.String b(java.lang.Object obj) throws java.lang.Exception {
        return (java.lang.String) obj.getClass().getField("uniqueId").get(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(int i2) {
        dev.duo.fold.i.a a2 = dev.duo.fold.i.a(i2);
        c("壁纸预解码 " + (a2.e == null ? new java.lang.StringBuilder().append("完成 ms=").append(a2.g) : new java.lang.StringBuilder().append("未完成：").append(a2.e)).toString());
    }

    private static java.lang.Object a(java.lang.String str, java.lang.String str2) throws java.lang.Exception {
        android.os.IBinder iBinder = (android.os.IBinder) java.lang.Class.forName("android.os.ServiceManager").getMethod("getService", java.lang.String.class).invoke(null, str);
        if (iBinder != null) {
            return java.lang.Class.forName(str2 + "$Stub").getMethod("asInterface", android.os.IBinder.class).invoke(null, iBinder);
        }
        throw new java.lang.IllegalStateException(str + " 不可用");
    }

    private boolean d(boolean z) {
        if (z) {
            return true;
        }
        return this.N == null && this.F;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() throws java.lang.Exception {
        b("任务");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() throws java.lang.Exception {
        dev.duo.fold.a aVar;
        dev.duo.fold.Engine.f fVar = this.N;
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
    public void b(java.lang.String str) throws java.lang.Exception {
        dev.duo.fold.Engine.f fVar = this.N;
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
                throw new java.lang.IllegalStateException("传感器注册失败");
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
    public void a(dev.duo.fold.Engine.e eVar) {
        if (this.A) {
            return;
        }
        try {
            eVar.run();
        } catch (java.lang.Throwable th) {
            a(th);
        }
    }

    private static final class f {
        dev.duo.fold.g a;
        dev.duo.fold.g.a b;
        dev.duo.fold.g.a c;
        dev.duo.fold.g.a d;
        dev.duo.fold.g.a e;
        dev.duo.fold.g.b f;
        dev.duo.fold.g.b g;
        dev.duo.fold.d h;
        dev.duo.fold.d i;
        int j;
        java.util.ArrayList<android.graphics.Rect> k;
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
        java.lang.String v;
        java.lang.String w;

        private f() {
            this.m = -1L;
            this.n = -1L;
            this.s = -1;
            this.t = -1L;
            this.u = -1L;
            this.v = "已建输入但无 buffer（源或壁纸）";
            this.w = "未获许可";
        }

        /* synthetic */ f(dev.duo.fold.Engine.a aVar) {
            this();
        }
    }

    private int a(java.lang.Object obj) throws java.lang.Exception {
        return obj.getClass().getField("logicalHeight").getInt(obj);
    }

    private boolean a(java.lang.Object obj, boolean z) throws java.lang.Exception {
        dev.duo.fold.Engine.f fVar;
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
                throw new java.lang.IllegalStateException("传感器采样切换失败");
            }
        }
        if (this.H != d2 && !this.P) {
            this.s.unregisterListener(this.X, this.v);
            if (!this.s.registerListener(this.X, this.v, b(d2), this.j)) {
                throw new java.lang.IllegalStateException("传感器采样切换失败");
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
    public static /* synthetic */ java.lang.Object a(android.os.Binder binder, java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
        if (method.getName().equals("asBinder")) {
            return binder;
        }
        throw new java.lang.UnsupportedOperationException(method.getName());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v8, types: [dev.duo.fold.Engine$a] */
    private void a(boolean z) throws java.lang.Exception {
        java.util.concurrent.FutureTask<dev.duo.fold.i.a> futureTask;
        float[] a2;
        if (c() && this.S && !this.T && a(i(), z)) {
            boolean u = u();
            int e2 = u ? -1 : e();
            c("开始" + (z ? "合拢" : "打开") + " angle=" + this.x.b() + (e2 >= 0 ? " 应用task=" + e2 : ""));
            android.os.Bundle bundle = 0;
            android.os.Bundle bundle2 = null;
            bundle = 0;
            dev.duo.fold.Engine.f fVar = new dev.duo.fold.Engine.f(bundle);
            this.N = fVar;
            fVar.o = w();
            dev.duo.fold.Engine.f fVar2 = this.N;
            fVar2.p = u;
            fVar2.s = e2;
            c(false);
            if (this.N.p) {
                futureTask = null;
            } else {
                final int intValue = ((java.lang.Integer) android.app.ActivityManager.class.getMethod("getCurrentUser", null).invoke(null, null)).intValue();
                futureTask = new java.util.concurrent.FutureTask<>(new java.util.concurrent.Callable() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda16
                    @Override // java.util.concurrent.Callable
                    public final java.lang.Object call() {
                        dev.duo.fold.i.a a3;
                        a3 = dev.duo.fold.i.a(intValue);
                        return a3;
                    }
                });
                new java.lang.Thread(futureTask, "MiDuoFoldWallpaper").start();
            }
            this.N.a = new dev.duo.fold.g();
            dev.duo.fold.Engine.f fVar3 = this.N;
            fVar3.a.a(this.l, fVar3.p);
            long w = w();
            java.lang.Object i2 = i();
            int d2 = d(i2);
            int a3 = a(i2);
            dev.duo.fold.Engine.f fVar4 = this.N;
            if (!fVar4.p && fVar4.s < 0) {
                android.os.Bundle a4 = this.M.a(0, d2, a3);
                if (a4.containsKey("unavailable")) {
                    c("本次不分层：" + a4.getString("unavailable"));
                } else {
                    bundle2 = a4;
                }
                long w2 = w();
                dev.duo.fold.i.a a5 = a(futureTask);
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
            dev.duo.fold.g.a a6 = this.N.a.a(d2, a3, this.j, new dev.duo.fold.Engine$$ExternalSyntheticLambda4(this), this.N.d != null);
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
                dev.duo.fold.Engine.f fVar5 = this.N;
                fVar5.b = a6;
                fVar5.n = w() - 320;
            } else {
                dev.duo.fold.Engine.f fVar6 = this.N;
                fVar6.c = a6;
                fVar6.m = w() - 320;
            }
            dev.duo.fold.Engine.f fVar7 = this.N;
            if (fVar7.s >= 0) {
                this.M.a(0, a6, false);
                dev.duo.fold.i.a a7 = a(futureTask);
                if (a7 == null) {
                    return;
                }
                this.N.d = a(a7);
                dev.duo.fold.Engine.f fVar8 = this.N;
                if (fVar8.d == null) {
                    fVar8.d = fVar8.a.a(d2, a3, this.j, new dev.duo.fold.Engine$$ExternalSyntheticLambda4(this), false);
                    dev.duo.fold.g.a aVar = this.N.d;
                    aVar.g = a6.g;
                    try {
                        this.M.a(1, aVar, false);
                    } catch (java.lang.IllegalStateException e3) {
                        c("应用背景壁纸不可用，本次交还原生：" + e3.getMessage());
                        j();
                        return;
                    }
                }
            } else {
                if (fVar7.d != null) {
                    this.M.a(0, a6, bundle);
                }
                dev.duo.fold.Engine.f fVar9 = this.N;
                if (fVar9.d == null) {
                    fVar9.d = fVar9.a.a(d2, a3, this.j, new dev.duo.fold.Engine$$ExternalSyntheticLambda4(this), false);
                    dev.duo.fold.Engine.f fVar10 = this.N;
                    fVar10.d.g = a6.g;
                    this.M.a(0, a6, fVar10.p);
                    dev.duo.fold.h hVar = this.M;
                    dev.duo.fold.Engine.f fVar11 = this.N;
                    hVar.a(1, fVar11.d, fVar11.p);
                }
            }
            dev.duo.fold.Engine.f fVar12 = this.N;
            fVar12.f = fVar12.a.a(0, this.j, new dev.duo.fold.Engine$$ExternalSyntheticLambda4(this));
            dev.duo.fold.Engine.f fVar13 = this.N;
            fVar13.g = fVar13.a.a(1, this.j, new dev.duo.fold.Engine$$ExternalSyntheticLambda4(this));
            this.j.postDelayed(this.b0, c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(long j) {
        this.B = false;
        a(new dev.duo.fold.Engine.e() { // from class: dev.duo.fold.Engine$$ExternalSyntheticLambda1
            @Override // dev.duo.fold.Engine.e
            public final void run() {
                dev.duo.fold.Engine.this.k();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public void a(int i2, long j, long j2) throws java.lang.Exception {
        dev.duo.fold.a aVar;
        dev.duo.fold.Engine.f fVar = this.N;
        if (fVar == null || (aVar = fVar.l) == null) {
            return;
        }
        if (i2 == 2) {
            if (aVar.d(j, j2)) {
                dev.duo.fold.Engine.f fVar2 = this.N;
                fVar2.t = -1L;
                fVar2.w = "未获许可（已撤销）";
                this.j.removeCallbacks(this.d0);
                dev.duo.fold.Engine.f fVar3 = this.N;
                dev.duo.fold.g.a aVar2 = fVar3.e;
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
            dev.duo.fold.Engine.f fVar4 = this.N;
            fVar4.t = j;
            fVar4.w = "坐标未到";
            f();
        }
    }

    private void b(long j) {
        if (!this.x.d() && !this.x.c(j)) {
            dev.duo.fold.Engine.f fVar = this.N;
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

    private dev.duo.fold.i.a a(java.util.concurrent.FutureTask<dev.duo.fold.i.a> futureTask) throws java.lang.Exception {
        try {
            return futureTask.get(java.lang.Math.max(0L, (this.N.o + 1000) - w()), java.util.concurrent.TimeUnit.MILLISECONDS);
        } catch (java.util.concurrent.TimeoutException e2) {
            c("准备超时，交还原生 阶段=等壁纸解码");
            j();
            return null;
        }
    }

    private dev.duo.fold.g.a a(dev.duo.fold.i.a aVar) {
        if (aVar.e != null) {
            c("应用背景改用壁纸镜像：" + aVar.e);
            return null;
        }
        int[] iArr = new int[1];
        android.opengl.GLES30.glGetIntegerv(3379, iArr, 0);
        if (java.lang.Math.max(aVar.b.getWidth(), aVar.b.getHeight()) > iArr[0]) {
            c("应用背景改用壁纸镜像：壁纸超过纹理上限");
            return null;
        }
        this.N.i = new dev.duo.fold.d();
        dev.duo.fold.Engine.f fVar = this.N;
        dev.duo.fold.d dVar = fVar.i;
        dVar.a = aVar.c;
        dVar.b = aVar.d;
        return fVar.a.a(aVar.b);
    }

    private dev.duo.fold.g.a a(android.os.Bundle bundle, dev.duo.fold.i.a aVar) throws java.lang.Exception {
        android.os.Bundle bundle2 = bundle.getBundle(dev.duo.hookprobe.J.c);
        java.util.ArrayList<android.graphics.Rect> parcelableArrayList = bundle.getParcelableArrayList("bitmapCrops");
        if (a(bundle, false)) {
            c("本次沿用原动画：侧栏/桌面状态不适用分层");
            return null;
        }
        java.lang.String a2 = a(bundle, (dev.duo.fold.d) null);
        if (a2 != null) {
            c("本次沿用原动画：" + a2);
            return null;
        }
        java.lang.Object a3 = a("wallpaper", "android.app.IWallpaperManager");
        java.lang.Class<?> cls = java.lang.Class.forName("android.app.IWallpaperManager");
        int i2 = bundle.getInt("user");
        this.N.j = bundle.getInt("wallpaperId");
        java.lang.Class cls2 = java.lang.Integer.TYPE;
        if (this.N.j != ((java.lang.Integer) cls.getMethod("getWallpaperIdForUser", cls2, cls2).invoke(a3, 1, java.lang.Integer.valueOf(i2))).intValue()) {
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
        android.graphics.Bitmap bitmap = aVar.b;
        int[] iArr = new int[1];
        android.opengl.GLES30.glGetIntegerv(3379, iArr, 0);
        if (java.lang.Math.max(bitmap.getWidth(), bitmap.getHeight()) > iArr[0]) {
            c("本次沿用原动画：壁纸超过纹理上限");
            return null;
        }
        dev.duo.fold.g.a a4 = this.N.a.a(bitmap);
        this.N.k = parcelableArrayList;
        dev.duo.fold.d dVar = new dev.duo.fold.d();
        dVar.a = aVar.c;
        dVar.b = aVar.d;
        dVar.c = dev.duo.fold.e.a(bundle2.getFloatArray("coverGeometry"));
        dVar.d = dev.duo.fold.e.a(bundle2.getFloatArray("innerGeometry"));
        java.util.ArrayList parcelableArrayList2 = bundle2.getParcelableArrayList("layers");
        for (int i3 = 0; i3 < parcelableArrayList2.size(); i3++) {
            int i4 = i3 * 4;
            java.lang.System.arraycopy(((android.os.Bundle) parcelableArrayList2.get(i3)).getFloatArray("coverFrame"), 0, dVar.e, i4, 4);
            java.lang.System.arraycopy(((android.os.Bundle) parcelableArrayList2.get(i3)).getFloatArray("innerFrame"), 0, dVar.f, i4, 4);
        }
        java.lang.System.arraycopy(dev.duo.fold.d.g, 0, dVar.e, 8, 4);
        java.lang.System.arraycopy(dev.duo.fold.d.h, 0, dVar.f, 8, 4);
        this.N.h = dVar;
        c("本次使用静态原图与透明前景分层 wallpaperId=" + this.N.j);
        return a4;
    }

    private boolean a(android.os.Bundle bundle, boolean z) {
        android.os.Bundle bundle2 = bundle.getBundle(dev.duo.hookprobe.J.c);
        if ((!z || bundle.getInt("wallpaperId") == this.N.j) && !bundle2.getBoolean("editing") && (bundle2.getInt("contentFlags") & 32) == 0) {
            return z && !java.util.Objects.equals(this.N.k, bundle.getParcelableArrayList("bitmapCrops"));
        }
        return true;
    }

    private static java.lang.String a(android.os.Bundle bundle, dev.duo.fold.d dVar) {
        android.os.Bundle bundle2 = bundle.getBundle(dev.duo.hookprobe.J.c);
        if (dVar == null && (bundle2.getInt("width") != bundle.getInt("width") || bundle2.getInt("height") != bundle.getInt("height"))) {
            return "侧栏尺寸";
        }
        if (!dev.duo.fold.i.a(bundle)) {
            return "壁纸缩放/偏移/调暗或非 MIUI 图片窗口";
        }
        if (dVar == null) {
            return null;
        }
        java.util.ArrayList parcelableArrayList = bundle2.getParcelableArrayList("layers");
        for (int i2 = 0; i2 < parcelableArrayList.size(); i2++) {
            for (int i3 = 0; i3 < 4; i3++) {
                float f2 = ((android.os.Bundle) parcelableArrayList.get(i2)).getFloatArray("coverFrame")[i3];
                float f3 = ((android.os.Bundle) parcelableArrayList.get(i2)).getFloatArray("innerFrame")[i3];
                int i4 = (i2 * 4) + i3;
                if (f2 != dVar.e[i4]) {
                    return "侧栏位置 面板" + i2 + " 外屏" + "xywh".charAt(i3) + " " + dVar.e[i4] + "→" + f2;
                }
                if (f3 != dVar.f[i4]) {
                    return "侧栏位置 面板" + i2 + " 内屏" + "xywh".charAt(i3) + " " + dVar.f[i4] + "→" + f3;
                }
            }
        }
        if (java.util.Arrays.equals(dVar.c, dev.duo.fold.e.a(bundle2.getFloatArray("coverGeometry"))) && java.util.Arrays.equals(dVar.d, dev.duo.fold.e.a(bundle2.getFloatArray("innerGeometry")))) {
            return null;
        }
        return "侧栏坐标";
    }

    private boolean a(long j) throws java.lang.Exception {
        this.N.d.a();
        dev.duo.fold.Engine.f fVar = this.N;
        if (fVar.l == null) {
            dev.duo.fold.g.a aVar = fVar.c;
            if (aVar != null) {
                aVar.a();
            }
            dev.duo.fold.g.a aVar2 = this.N.b;
            if (aVar2 != null) {
                aVar2.a();
            }
        }
        dev.duo.fold.g.a aVar3 = this.N.e;
        if (aVar3 != null && aVar3.a()) {
            dev.duo.fold.a aVar4 = this.N.l;
            if (aVar4.a(aVar4.a, j)) {
                dev.duo.fold.Engine.f fVar2 = this.N;
                dev.duo.fold.a aVar5 = fVar2.l;
                boolean z = aVar5.f;
                dev.duo.fold.g.a aVar6 = z ? fVar2.c : fVar2.b;
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
        dev.duo.fold.Engine.f fVar3 = this.N;
        dev.duo.fold.a aVar7 = fVar3.l;
        if (aVar7 != null && fVar3.e == null && aVar7.e >= 0) {
            (aVar7.f ? fVar3.c : fVar3.b).a();
        }
        dev.duo.fold.Engine.f fVar4 = this.N;
        if (!fVar4.d.k) {
            return false;
        }
        dev.duo.fold.g.a aVar8 = fVar4.c;
        if (aVar8 == null && fVar4.b == null) {
            return false;
        }
        if (aVar8 != null && !aVar8.k) {
            return false;
        }
        dev.duo.fold.g.a aVar9 = fVar4.b;
        return aVar9 == null || aVar9.k;
    }

    private void a(long j, float f2) {
        dev.duo.fold.Engine.f fVar = this.N;
        if (!fVar.q) {
            fVar.q = true;
            c("源画面首帧 开始至此_ms=" + (j - this.N.o));
        }
        dev.duo.fold.Engine.f fVar2 = this.N;
        fVar2.a.a(fVar2.f, fVar2.b, fVar2.c, fVar2.d, fVar2.s >= 0 ? fVar2.i : fVar2.h, f2, dev.duo.fold.a.b(fVar2.m, j), dev.duo.fold.a.b(this.N.n, j));
        dev.duo.fold.Engine.f fVar3 = this.N;
        fVar3.a.a(fVar3.g, fVar3.b, fVar3.c, fVar3.d, fVar3.s >= 0 ? fVar3.i : fVar3.h, f2, dev.duo.fold.a.b(fVar3.m, j), dev.duo.fold.a.b(this.N.n, j));
    }

    private boolean a(long j, float f2, boolean z) throws java.lang.Exception {
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
                    dev.duo.fold.Engine.f fVar = this.N;
                    if (!fVar.r) {
                        fVar.r = true;
                        c("输出首帧已确认 开始至此_ms=" + (j - this.N.o));
                    }
                    dev.duo.fold.Engine.f fVar2 = this.N;
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
                                dev.duo.fold.Engine.f fVar3 = this.N;
                                fVar3.l = new dev.duo.fold.a(fVar3.o, this.V.c);
                                this.N.l.a = this.O;
                                this.M.a(0);
                                c("本次源首帧已接管 angle=" + this.x.b());
                                a(!this.F, f2);
                            }
                        }
                        throw new java.lang.IllegalStateException("面板租约被拒绝");
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

    private boolean a(long j, boolean z) throws java.lang.Exception {
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

    private void a(boolean z, float f2) throws java.lang.Exception {
        this.M.a(2);
        dev.duo.fold.Engine.f fVar = this.N;
        dev.duo.fold.g.a aVar = fVar.e;
        if (aVar != null) {
            fVar.a.a(aVar);
            this.N.e = null;
        }
        dev.duo.fold.Engine.f fVar2 = this.N;
        fVar2.w = "未获许可";
        long a2 = fVar2.l.a(z, f2, w());
        this.O = a2;
        this.j.removeCallbacks(this.e0);
        if (this.N.s >= 0) {
            this.j.postDelayed(this.e0, 600L);
        }
        dev.duo.fold.e eVar = this.m;
        java.lang.String str = z ? "local:4639175402683733248" : "local:4639175068132267009";
        int i2 = z ? 2364 : 1168;
        int i3 = z ? 1672 : 1712;
        dev.duo.fold.Engine.f fVar3 = this.N;
        eVar.a(a2, str, i2, i3, fVar3.p, fVar3.s);
        java.lang.Class<?> cls = java.lang.Class.forName("android.hardware.devicestate.DeviceStateRequest");
        java.lang.Object invoke = cls.getMethod("newBuilder", java.lang.Integer.TYPE).invoke(null, java.lang.Integer.valueOf(z ? 3 : 0));
        this.r.getClass().getMethod("requestState", cls, java.util.concurrent.Executor.class, java.lang.Class.forName("android.hardware.devicestate.DeviceStateRequest$Callback")).invoke(this.r, invoke.getClass().getMethod("build", null).invoke(invoke, null), null, null);
        c("请求原厂切屏 generation=" + a2 + " target=" + (z ? "inner" : "outer") + " 开始至此_ms=" + (w() - this.N.o));
    }

    private void a(java.lang.Throwable th) {
        if (this.A) {
            return;
        }
        this.A = true;
        this.U = 1;
        android.util.Log.e("MiDuoFold", "出错，交还原生并退出本次（开关不变）", th);
        this.j.removeCallbacksAndMessages(null);
        try {
            j();
        } catch (java.lang.Exception e2) {
            android.util.Log.e("MiDuoFold", "资源归还失败", e2);
        }
        try {
            this.s.unregisterListener(this.X);
        } catch (java.lang.RuntimeException e3) {
            c("传感器注销失败 " + e3);
        }
        if (this.D) {
            this.t.unregisterDisplayListener(this.Z);
        }
        if (this.C) {
            try {
                this.k.unregisterReceiver(this.Y);
            } catch (java.lang.RuntimeException e4) {
                c("广播注销失败 " + e4);
            }
        }
        if (this.E != null) {
            try {
                java.lang.Class.forName("android.app.IActivityTaskManager").getMethod("unregisterTaskStackListener", java.lang.Class.forName("android.app.ITaskStackListener")).invoke(this.q, this.E);
            } catch (java.lang.Exception e5) {
                c("任务监听注销失败 " + e5);
            }
        }
        java.lang.System.exit(this.U);
    }
}
