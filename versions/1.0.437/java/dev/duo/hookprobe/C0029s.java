package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0029s extends io.github.libxposed.api.XposedModule {
    private static final java.lang.String a = "MiDuoFoldLease";
    private static final java.lang.String b = "dev.duo.foldanim1.CONTROL";
    static final int c = 13693511;
    static final int d = 254;
    static final int e = 0;
    static final int f = 1;
    static final int g = 2;
    static final int h = 3;
    static final int i = 4;
    private java.lang.reflect.Method A;
    private java.lang.reflect.Method B;
    private java.lang.reflect.Method C;
    private java.lang.reflect.Method D;
    private java.lang.reflect.Field E;
    private java.lang.reflect.Field F;
    private java.lang.reflect.Method G;
    private java.lang.reflect.Method H;
    private java.lang.reflect.Method I;
    private java.lang.reflect.Method J;
    private java.lang.reflect.Method K;
    private java.lang.reflect.Method L;
    private java.lang.reflect.Method M;
    private java.lang.reflect.Method N;
    private java.lang.reflect.Method O;
    private java.lang.reflect.Field P;
    private java.lang.reflect.Field Q;
    private java.lang.reflect.Field R;
    private java.lang.reflect.Field S;
    private java.lang.reflect.Field T;
    private java.lang.reflect.Field U;
    private java.lang.reflect.Field V;
    private java.lang.reflect.Field W;
    private java.lang.reflect.Field X;
    private java.lang.reflect.Field Y;
    private java.lang.reflect.Field Z;
    private java.lang.reflect.Field a0;
    private java.lang.reflect.Field b0;
    private java.lang.reflect.Field c0;
    private java.lang.reflect.Field d0;
    private java.lang.reflect.Field e0;
    private java.lang.reflect.Field f0;
    private java.lang.reflect.Field g0;
    private volatile boolean o;
    private volatile java.lang.Object p;
    private boolean q;
    private android.os.Handler r;
    private dev.duo.hookprobe.C0033u s;
    private volatile java.lang.Throwable t;
    private java.lang.Class<?> u;
    private java.lang.Class<?> v;
    private java.lang.Class<?> w;
    private java.lang.Class<?> x;
    private java.lang.reflect.Method y;
    private java.lang.reflect.Method z;
    private final dev.duo.hookprobe.x j = new dev.duo.hookprobe.x();
    private final java.util.List<io.github.libxposed.api.XposedInterface.HookHandle> k = new java.util.ArrayList();
    private final java.lang.ThreadLocal<java.lang.Boolean> l = new java.lang.ThreadLocal<>();
    private final java.util.Map<android.os.IBinder, float[]> m = new java.util.HashMap();
    private final java.util.Map<android.os.IBinder, android.os.IBinder.DeathRecipient> n = new java.util.HashMap();
    private final java.util.Map<android.os.IBinder, java.lang.String> h0 = new java.util.HashMap();
    private final java.lang.Runnable i0 = new java.lang.Runnable() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            dev.duo.hookprobe.C0029s.this.c();
        }
    };

    private static java.lang.reflect.Method a(java.lang.Class<?> cls, java.lang.String str, java.lang.Class<?>... clsArr) throws java.lang.Exception {
        java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object b(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        boolean z;
        boolean z2 = false;
        try {
            android.os.IBinder iBinder = (android.os.IBinder) this.S.get(chain.getThisObject());
            boolean z3 = true;
            float[] fArr = {((java.lang.Float) chain.getArg(0)).floatValue(), ((java.lang.Float) chain.getArg(1)).floatValue(), ((java.lang.Float) chain.getArg(2)).floatValue(), ((java.lang.Float) chain.getArg(3)).floatValue()};
            if (fArr[2] > 0.0f && iBinder != null) {
                synchronized (this.m) {
                    this.m.put(iBinder, (float[]) fArr.clone());
                }
            }
            if (!java.lang.Boolean.TRUE.equals(this.l.get()) && !this.j.a()) {
                boolean z4 = chain.getArgs().size() == 5;
                boolean z5 = z4 && ((java.lang.Boolean) chain.getArg(4)).booleanValue();
                java.lang.String c2 = c(iBinder);
                boolean z6 = (c2 == null || this.j.b(c2) == null) ? false : true;
                if (z6) {
                    z3 = this.j.a(c2, fArr, z4, z5, a());
                    z = z5;
                } else {
                    if (c2 != null) {
                        z = z5;
                        if (this.j.b(c2, fArr, z4, z5, a())) {
                        }
                    } else {
                        z = z5;
                    }
                    z3 = false;
                }
                if (z3) {
                    android.util.Log.i(a, "HOLD_BACKLIGHT panel=" + c2 + " requested=" + fArr[2] + " nits=" + fArr[3] + (z6 ? " leased" : " guard") + (z4 ? " dim=" + z : ""));
                }
                z2 = z3;
            }
        } catch (java.lang.Throwable th) {
            this.t = th;
            android.util.Log.e(a, "backlight hook failed; passthrough", th);
        }
        if (z2) {
            return null;
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object c(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        if (java.lang.Boolean.TRUE.equals(this.l.get()) || this.j.b()) {
            return chain.proceed();
        }
        int i2 = 0;
        try {
            java.lang.String str = (java.lang.String) this.I.invoke(chain.getArg(1), null);
            boolean booleanValue = ((java.lang.Boolean) chain.getArg(2)).booleanValue();
            java.lang.Object invoke = this.L.invoke(chain.getThisObject(), null);
            i2 = this.j.a(str, booleanValue, (invoke == null || str == null || !str.equals(this.W.get(invoke))) ? false : true, a());
        } catch (java.lang.Throwable th) {
            android.util.Log.e(a, "config hook failed; passthrough", th);
        }
        if (i2 == 1) {
            return null;
        }
        return chain.proceed();
    }

    private void d(android.os.IBinder iBinder) {
        synchronized (this.n) {
            android.os.IBinder.DeathRecipient remove = this.n.remove(iBinder);
            if (remove != null) {
                iBinder.unlinkToDeath(remove, 0);
            }
        }
    }

    public void onSystemServerStarting(io.github.libxposed.api.XposedModuleInterface.SystemServerStartingParam systemServerStartingParam) {
        if (this.q) {
            return;
        }
        this.q = true;
        try {
            a(systemServerStartingParam.getClassLoader());
        } catch (java.lang.Throwable th) {
            this.o = false;
            java.util.Iterator<io.github.libxposed.api.XposedInterface.HookHandle> it = this.k.iterator();
            while (it.hasNext()) {
                try {
                    it.next().unhook();
                } catch (java.lang.Throwable th2) {
                    android.util.Log.e(a, "Unhook failed", th2);
                }
            }
            this.k.clear();
            android.os.Handler handler = this.r;
            if (handler != null) {
                handler.getLooper().quitSafely();
            }
            android.util.Log.e(a, "NOT_READY; hooks rolled back", th);
            log(6, a, "NOT_READY; hooks rolled back", th);
        }
    }

    private static java.lang.reflect.Field a(java.lang.Class<?> cls, java.lang.String str) throws java.lang.Exception {
        java.lang.reflect.Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField;
    }

    private static long a() {
        return android.os.SystemClock.elapsedRealtime();
    }

    private void a(java.lang.ClassLoader classLoader) throws java.lang.Exception {
        this.u = java.lang.Class.forName("com.android.server.display.DisplayManagerService", false, classLoader);
        this.v = java.lang.Class.forName("com.android.server.display.LogicalDisplay", false, classLoader);
        this.w = java.lang.Class.forName("com.android.server.display.DisplayDevice", false, classLoader);
        java.lang.Class<?> cls = java.lang.Class.forName("com.android.server.display.DisplayAdapter", false, classLoader);
        java.lang.Class.forName("com.android.server.display.LocalDisplayAdapter", false, classLoader);
        this.x = java.lang.Class.forName("com.android.server.display.LocalDisplayAdapter$LocalDisplayDevice", false, classLoader);
        java.lang.Class<?> cls2 = java.lang.Class.forName("com.android.server.display.LocalDisplayAdapter$LocalDisplayDevice$1", false, classLoader);
        java.lang.Class<?> cls3 = java.lang.Class.forName("com.android.server.display.LocalDisplayAdapter$SurfaceControlProxy", false, classLoader);
        java.lang.Class<?> cls4 = java.lang.Class.forName("com.android.server.display.LocalDisplayAdapter$BacklightAdapter", false, classLoader);
        java.lang.Class<?> cls5 = java.lang.Class.forName("com.android.server.display.DisplayDeviceRepository", false, classLoader);
        java.lang.Class<?> cls6 = java.lang.Class.forName("com.android.server.display.DisplayDeviceInfo", false, classLoader);
        final java.lang.Class<?> cls7 = java.lang.Class.forName("com.android.server.display.DisplayManagerService$BinderService", false, classLoader);
        java.lang.Class cls8 = java.lang.Integer.TYPE;
        this.B = a((java.lang.Class<?>) android.view.SurfaceControl.Transaction.class, "setDisplayLayerStack", (java.lang.Class<?>[]) new java.lang.Class[]{android.os.IBinder.class, cls8});
        this.C = a((java.lang.Class<?>) android.view.SurfaceControl.Transaction.class, "setDisplayProjection", (java.lang.Class<?>[]) new java.lang.Class[]{android.os.IBinder.class, cls8, android.graphics.Rect.class, android.graphics.Rect.class});
        this.D = a((java.lang.Class<?>) android.view.SurfaceControl.class, "setDisplayPowerMode", (java.lang.Class<?>[]) new java.lang.Class[]{android.os.IBinder.class, cls8});
        this.G = a(this.u, "configureDisplayLocked", (java.lang.Class<?>[]) new java.lang.Class[]{android.view.SurfaceControl.Transaction.class, this.w});
        java.lang.Class<?> cls9 = java.lang.Class.forName("com.android.server.display.LogicalDisplayMapper", false, classLoader);
        this.E = a(this.u, "mLogicalDisplayMapper");
        this.F = a(this.u, "mHandlerExecutor");
        this.y = a(cls9, "getDisplayLocked", (java.lang.Class<?>[]) new java.lang.Class[]{this.w});
        java.lang.Class<?> cls10 = this.v;
        java.lang.Class<?> cls11 = this.w;
        java.lang.Class cls12 = java.lang.Boolean.TYPE;
        this.z = a(cls10, "configureDisplayLocked", (java.lang.Class<?>[]) new java.lang.Class[]{android.view.SurfaceControl.Transaction.class, cls11, cls12, java.util.concurrent.Executor.class});
        this.A = a(this.u, "scheduleTraversalLocked", (java.lang.Class<?>[]) new java.lang.Class[]{cls12});
        this.P = a(this.u, "mSyncRoot");
        this.Q = a(this.u, "mDisplayDeviceRepo");
        this.H = a(cls5, "getByUniqueIdLocked", (java.lang.Class<?>[]) new java.lang.Class[]{java.lang.String.class});
        this.R = a(cls7, "this$0");
        this.I = a(this.w, "getUniqueId", (java.lang.Class<?>[]) new java.lang.Class[0]);
        this.J = a(this.w, "getDisplayTokenLocked", (java.lang.Class<?>[]) new java.lang.Class[0]);
        this.K = a(this.w, "getDisplayDeviceInfoLocked", (java.lang.Class<?>[]) new java.lang.Class[0]);
        this.V = a(cls6, "state");
        this.e0 = a(cls6, "width");
        this.f0 = a(cls6, "height");
        this.g0 = a(cls6, "rotation");
        this.L = a(this.v, "getDisplayInfoLocked", (java.lang.Class<?>[]) new java.lang.Class[0]);
        this.W = a(java.lang.Class.forName("android.view.DisplayInfo"), "uniqueId");
        this.M = a(cls, "getPowerModeForState", (java.lang.Class<?>[]) new java.lang.Class[]{cls8});
        this.S = a(cls4, "mDisplayToken");
        this.T = a(this.x, "mBacklightAdapter");
        this.U = a(this.x, "mState");
        java.lang.Class cls13 = java.lang.Float.TYPE;
        this.N = a(cls4, "setBacklight", (java.lang.Class<?>[]) new java.lang.Class[]{cls13, cls13, cls13, cls13});
        this.O = a(cls4, "setBacklight", (java.lang.Class<?>[]) new java.lang.Class[]{cls13, cls13, cls13, cls13, cls12});
        this.X = a(this.w, "mCurrentLayerStack");
        this.Y = a(this.w, "mCurrentOrientation");
        this.Z = a(this.w, "mCurrentLayerStackRect");
        this.a0 = a(this.w, "mCurrentDisplayRect");
        this.b0 = a(this.w, "mCurrentFlags");
        this.c0 = a(this.w, "mLastDisplayWidth");
        this.d0 = a(this.w, "mLastDisplayHeight");
        java.lang.reflect.Method[] methodArr = {a(cls2, "setDisplayState", (java.lang.Class<?>[]) new java.lang.Class[]{cls8}), a(cls2, "run", (java.lang.Class<?>[]) new java.lang.Class[0]), a(cls2, "setDisplayBrightness", (java.lang.Class<?>[]) new java.lang.Class[]{cls13, cls13}), this.G, a(this.u, "lambda$performTraversalLocked$22", (java.lang.Class<?>[]) new java.lang.Class[]{android.util.SparseArray.class, android.view.SurfaceControl.Transaction.class, this.v}), a(this.u, "performTraversalLocked", (java.lang.Class<?>[]) new java.lang.Class[]{android.view.SurfaceControl.Transaction.class, android.util.SparseArray.class}), a(cls7, "onTransact", (java.lang.Class<?>[]) new java.lang.Class[]{cls8, android.os.Parcel.class, android.os.Parcel.class, cls8})};
        boolean z = true;
        for (int i2 = 0; i2 < 7; i2++) {
            java.lang.reflect.Method method = methodArr[i2];
            boolean deoptimize = deoptimize(method);
            z &= deoptimize;
            android.util.Log.i(a, "CALLER_DEOPT method=" + method.getName() + " result=" + deoptimize);
        }
        if (z) {
            this.s = new dev.duo.hookprobe.C0033u(classLoader);
            java.util.List<io.github.libxposed.api.XposedInterface.HookHandle> list = this.k;
            java.lang.Class cls14 = java.lang.Integer.TYPE;
            io.github.libxposed.api.XposedInterface.HookBuilder hook = hook(a(cls3, "setDisplayPowerMode", (java.lang.Class<?>[]) new java.lang.Class[]{android.os.IBinder.class, cls14}));
            io.github.libxposed.api.XposedInterface.ExceptionMode exceptionMode = io.github.libxposed.api.XposedInterface.ExceptionMode.PROTECTIVE;
            list.add(hook.setExceptionMode(exceptionMode).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda3
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.hookprobe.C0029s.this.a(chain);
                    return a2;
                }
            }));
            io.github.libxposed.api.XposedInterface.Hooker hooker = new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda4
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object b2;
                    b2 = dev.duo.hookprobe.C0029s.this.b(chain);
                    return b2;
                }
            };
            this.k.add(hook(this.N).setExceptionMode(exceptionMode).intercept(hooker));
            this.k.add(hook(this.O).setExceptionMode(exceptionMode).intercept(hooker));
            this.k.add(hook(a(this.v, "configureDisplayLocked", (java.lang.Class<?>[]) new java.lang.Class[]{android.view.SurfaceControl.Transaction.class, this.w, java.lang.Boolean.TYPE, java.util.concurrent.Executor.class})).setExceptionMode(exceptionMode).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda5
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object c2;
                    c2 = dev.duo.hookprobe.C0029s.this.c(chain);
                    return c2;
                }
            }));
            this.k.add(hook(a(java.lang.Class.forName("android.hardware.display.IDisplayManager$Stub"), "onTransact", (java.lang.Class<?>[]) new java.lang.Class[]{cls14, android.os.Parcel.class, android.os.Parcel.class, cls14})).setExceptionMode(io.github.libxposed.api.XposedInterface.ExceptionMode.PASSTHROUGH).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda6
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.hookprobe.C0029s.this.a(cls7, chain);
                    return a2;
                }
            }));
            android.os.HandlerThread handlerThread = new android.os.HandlerThread(a);
            handlerThread.start();
            android.os.Handler handler = new android.os.Handler(handlerThread.getLooper());
            this.r = handler;
            this.s.a(this, this.k, handler);
            this.o = true;
            android.util.Log.i(a, (this.o ? "READY" : "NOT_READY_CALLER_DEOPT") + " version=" + d + " hooks=" + this.k.size() + " dormant_without_lease=true");
            return;
        }
        throw new java.lang.IllegalStateException("租约调用链去优化失败");
    }

    private java.lang.String c(android.os.IBinder iBinder) {
        java.lang.String str;
        if (iBinder == null) {
            return null;
        }
        synchronized (this.h0) {
            str = this.h0.get(iBinder);
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.s.a(a());
        java.util.Iterator<dev.duo.hookprobe.x.b> it = this.j.b(a()).iterator();
        while (it.hasNext()) {
            a(it.next(), "expired");
        }
        java.util.Iterator<dev.duo.hookprobe.x.a> it2 = this.j.c(a()).iterator();
        while (it2.hasNext()) {
            a(it2.next());
        }
        if (!this.j.a() || this.s.a()) {
            this.r.postDelayed(this.i0, 50L);
        }
    }

    private void b(final android.os.IBinder iBinder) {
        synchronized (this.n) {
            if (this.n.containsKey(iBinder)) {
                return;
            }
            android.os.IBinder.DeathRecipient deathRecipient = new android.os.IBinder.DeathRecipient() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda0
                @Override // android.os.IBinder.DeathRecipient
                public final void binderDied() {
                    dev.duo.hookprobe.C0029s.this.a(iBinder);
                }
            };
            try {
                iBinder.linkToDeath(deathRecipient, 0);
                this.n.put(iBinder, deathRecipient);
            } catch (java.lang.Exception e2) {
                java.util.Iterator<dev.duo.hookprobe.x.b> it = this.j.b(iBinder).iterator();
                while (it.hasNext()) {
                    a(it.next(), "link_failed");
                }
                throw new java.lang.IllegalStateException("租约死亡监听失败", e2);
            }
        }
    }

    private void b() {
        this.r.removeCallbacks(this.i0);
        this.r.postDelayed(this.i0, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.String str;
        if (!java.lang.Boolean.TRUE.equals(this.l.get()) && !this.j.a()) {
            boolean z = false;
            try {
                android.os.IBinder iBinder = (android.os.IBinder) chain.getArg(0);
                boolean z2 = true;
                int intValue = ((java.lang.Integer) chain.getArg(1)).intValue();
                java.lang.String c2 = c(iBinder);
                if (c2 == null || !this.j.a(c2, intValue, a())) {
                    z2 = false;
                }
                if (z2) {
                    java.lang.StringBuilder append = new java.lang.StringBuilder().append("HOLD_POWER panel=").append(c2).append(" requested_mode=").append(intValue);
                    if (intValue == 2) {
                        str = " (already lit by lease)";
                    } else {
                        str = "";
                    }
                    android.util.Log.i(a, append.append(str).toString());
                }
                z = z2;
            } catch (java.lang.Throwable th) {
                this.t = th;
                android.util.Log.e(a, "power hook failed; passthrough", th);
            }
            if (z) {
                return null;
            }
            return chain.proceed();
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.Class cls, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        if (((java.lang.Integer) chain.getArg(0)).intValue() != c) {
            return chain.proceed();
        }
        java.lang.Object thisObject = chain.getThisObject();
        if (this.p == null && cls.isInstance(thisObject)) {
            this.p = this.R.get(thisObject);
        }
        return java.lang.Boolean.valueOf(a((android.os.Parcel) chain.getArg(1), (android.os.Parcel) chain.getArg(2), ((java.lang.Integer) chain.getArg(3)).intValue()));
    }

    private java.lang.Object a(java.lang.String str) throws java.lang.Exception {
        java.lang.Object obj = this.p;
        if (obj != null) {
            return this.H.invoke(this.Q.get(obj), str);
        }
        throw new java.lang.IllegalStateException("display service not captured");
    }

    private boolean a(android.os.Parcel parcel, android.os.Parcel parcel2, int i2) {
        java.lang.String str;
        try {
        } catch (java.lang.Throwable th) {
            android.util.Log.w(a, "CONTROL_REJECTED " + th);
            if (parcel2 != null) {
                parcel2.setDataPosition(0);
                parcel2.setDataSize(0);
                parcel2.writeException(new java.lang.IllegalStateException("开合控制失败", th));
            }
        }
        if (parcel2 != null && (i2 & 1) == 0) {
            parcel.enforceInterface(b);
            int readInt = parcel.readInt();
            int callingPid = android.os.Binder.getCallingPid();
            int callingUid = android.os.Binder.getCallingUid();
            if (readInt != 8 && readInt != 9 && readInt != 10 && readInt != 11 && readInt != 14 && readInt != 15 && readInt != 18) {
                if (callingUid == 0) {
                    long clearCallingIdentity = android.os.Binder.clearCallingIdentity();
                    try {
                        a(readInt, parcel, parcel2, callingPid);
                        android.os.Binder.restoreCallingIdentity(clearCallingIdentity);
                        return true;
                    } catch (java.lang.Throwable th2) {
                        android.os.Binder.restoreCallingIdentity(clearCallingIdentity);
                        throw th2;
                    }
                }
                throw new java.lang.SecurityException("root synchronous caller required");
            }
            java.lang.Class<?> cls = java.lang.Class.forName("android.app.ActivityThread");
            android.content.Context context = (android.content.Context) cls.getMethod("getSystemContext", null).invoke(cls.getMethod("currentActivityThread", null).invoke(null, null), null);
            if (readInt == 9) {
                str = "com.miui.personalassistant";
            } else {
                str = "com.android.systemui";
            }
            if (callingUid == context.getPackageManager().getApplicationInfo(str, 0).uid) {
                if (readInt == 14) {
                    this.s.c(parcel.readStrongBinder());
                } else if (readInt == 18) {
                    this.s.a(parcel.readStrongBinder(), parcel.readLong(), parcel.readInt(), parcel.readLong());
                } else if (readInt == 11) {
                    this.s.a(parcel.createFloatArray());
                } else {
                    this.s.a(readInt, parcel.readInt(), parcel.readLong());
                }
                parcel2.writeNoException();
                return true;
            }
            throw new java.lang.SecurityException("就绪信号 UID 不匹配");
        }
        throw new java.lang.SecurityException("root synchronous caller required");
    }

    private void a(int i2, android.os.Parcel parcel, android.os.Parcel parcel2, int i3) throws java.lang.Exception {
        int i4;
        int i5;
        int i6;
        if (i2 == 0) {
            parcel2.writeNoException();
            parcel2.writeInt((this.o && this.t == null && this.s.b()) ? 1 : 0);
            parcel2.writeInt(d);
            parcel2.writeInt(this.j.c());
            return;
        }
        if ((!this.o || this.t != null) && i2 != 3 && i2 != 6) {
            throw new java.lang.IllegalStateException("租约不可用", this.t);
        }
        if (i2 == 12) {
            this.s.a(parcel2);
            return;
        }
        if (i2 == 16) {
            this.s.b(parcel2);
            return;
        }
        if (i2 >= 5) {
            android.os.IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null && readStrongBinder.isBinderAlive()) {
                b(readStrongBinder);
                this.s.a(i2, readStrongBinder, parcel, parcel2);
                if (!this.s.a(readStrongBinder) && !this.j.a(readStrongBinder)) {
                    d(readStrongBinder);
                }
                b();
                return;
            }
            throw new java.lang.IllegalArgumentException("owner 不可用");
        }
        if (i2 == 1) {
            android.os.IBinder readStrongBinder2 = parcel.readStrongBinder();
            java.lang.String readString = parcel.readString();
            int readInt = parcel.readInt();
            int readInt2 = parcel.readInt();
            boolean z = parcel.readInt() != 0;
            java.lang.String readString2 = parcel.readString();
            long readLong = parcel.readLong();
            if (parcel.dataAvail() >= 12) {
                i6 = parcel.readInt();
                i4 = parcel.readInt();
                i5 = parcel.readInt();
            } else {
                i4 = 0;
                i5 = 0;
                i6 = -1;
            }
            parcel2.writeNoException();
            parcel2.writeInt(a(readStrongBinder2, i3, readString, readInt, readInt2, z, readString2, readLong, i6, i4, i5));
            return;
        }
        if (i2 == 2) {
            android.os.IBinder readStrongBinder3 = parcel.readStrongBinder();
            long readLong2 = parcel.readLong();
            this.s.b(readStrongBinder3);
            parcel2.writeNoException();
            parcel2.writeInt(this.j.a(readStrongBinder3, i3, a(), readLong2));
            return;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                java.lang.String readString3 = parcel.readString();
                parcel2.writeNoException();
                a(readString3, parcel2);
                return;
            }
            throw new java.lang.IllegalArgumentException("unknown command " + i2);
        }
        android.os.IBinder readStrongBinder4 = parcel.readStrongBinder();
        java.util.List<dev.duo.hookprobe.x.b> a2 = this.j.a(readStrongBinder4, i3, parcel.readString());
        java.util.Iterator<dev.duo.hookprobe.x.b> it = a2.iterator();
        while (it.hasNext()) {
            a(it.next(), "client");
        }
        if (!this.j.a(readStrongBinder4) && !this.s.a(readStrongBinder4)) {
            d(readStrongBinder4);
        }
        if (this.t == null) {
            parcel2.writeNoException();
            parcel2.writeInt(a2.size());
            return;
        }
        throw new java.lang.IllegalStateException("面板归还失败", this.t);
    }

    private int a(final android.os.IBinder iBinder, int i2, final java.lang.String str, int i3, int i4, final boolean z, final java.lang.String str2, long j, int i5, int i6, int i7) throws java.lang.Exception {
        java.lang.Object obj;
        int i8;
        int i9;
        int i10;
        java.lang.Object obj2;
        android.os.IBinder iBinder2;
        if (iBinder == null || !iBinder.isBinderAlive()) {
            return 0;
        }
        final java.lang.Object obj3 = this.P.get(this.p);
        synchronized (obj3) {
            try {
                try {
                    java.lang.Object a2 = a(str);
                    if (a2 == null) {
                        obj = obj3;
                    } else {
                        if (this.x.isInstance(a2)) {
                            android.os.IBinder iBinder3 = (android.os.IBinder) this.J.invoke(a2, null);
                            synchronized (this.h0) {
                                try {
                                    this.h0.put(iBinder3, str);
                                } catch (java.lang.Throwable th) {
                                    th = th;
                                    while (true) {
                                        try {
                                            throw th;
                                        } catch (java.lang.Throwable th2) {
                                            th = th2;
                                        }
                                    }
                                }
                            }
                            boolean z2 = this.j.b(str) == null;
                            if (z2 && this.j.a(str) != null) {
                                android.util.Log.i(a, "GUARD_DROPPED panel=" + str + " reason=new_lease");
                            }
                            final dev.duo.hookprobe.x.b a3 = this.j.a(str, iBinder, i2, i3, i4, a(), j);
                            if (a3 == null) {
                                return 0;
                            }
                            if (!z2 || i3 != 2) {
                                i8 = i5;
                                i9 = i6;
                                i10 = i7;
                                obj2 = a2;
                                iBinder2 = iBinder3;
                            } else {
                                android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                                this.B.invoke(transaction, iBinder3, java.lang.Integer.valueOf(i4));
                                if (i5 < 0 || i6 <= 0 || i7 <= 0) {
                                    i8 = i5;
                                    i9 = i6;
                                    i10 = i7;
                                    obj2 = a2;
                                    iBinder2 = iBinder3;
                                } else {
                                    i8 = i5;
                                    i9 = i6;
                                    i10 = i7;
                                    obj2 = a2;
                                    iBinder2 = iBinder3;
                                    a(transaction, obj2, iBinder2, i8, i9, i10);
                                }
                                transaction.apply();
                                transaction.close();
                            }
                            if (z2) {
                                android.util.Log.i(a, "LEASE panel=" + str + " mode=" + i3 + " stack=" + i4 + " pid=" + i2 + " power_on=" + z + " ttl=" + dev.duo.hookprobe.x.a(j) + " rotation=" + i8 + " stack_size=" + i9 + "x" + i10);
                            }
                            b(iBinder);
                            if (z || str2 != null) {
                                final java.lang.Object obj4 = obj2;
                                final android.os.IBinder iBinder4 = iBinder2;
                                this.r.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        dev.duo.hookprobe.C0029s.this.a(a3, str, z, obj3, obj4, iBinder4, str2, iBinder);
                                    }
                                });
                            }
                            b();
                            return 1;
                        }
                        obj = obj3;
                    }
                    return 0;
                } catch (java.lang.Throwable th3) {
                    th = th3;
                    throw th;
                }
            } catch (java.lang.Throwable th4) {
                th = th4;
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.hookprobe.x.b bVar, java.lang.String str, boolean z, java.lang.Object obj, java.lang.Object obj2, android.os.IBinder iBinder, java.lang.String str2, android.os.IBinder iBinder2) {
        android.os.IBinder iBinder3;
        float[] fArr;
        int i2;
        try {
            synchronized (bVar) {
                if (this.j.b(str) != bVar) {
                    return;
                }
                if (z) {
                    synchronized (obj) {
                        i2 = this.U.getInt(obj2);
                    }
                    if (i2 == 2) {
                        android.util.Log.i(a, "LEASE_POWER_SKIPPED panel=" + str + " already_on_by_platform");
                    } else {
                        this.D.invoke(null, iBinder, 2);
                        this.j.a(bVar);
                        android.util.Log.i(a, "LEASE_POWER_ON panel=" + str);
                    }
                }
                if (str2 != null) {
                    synchronized (obj) {
                        java.lang.Object a2 = a(str2);
                        if (a2 == null) {
                            iBinder3 = null;
                        } else {
                            iBinder3 = (android.os.IBinder) this.J.invoke(a2, null);
                        }
                    }
                    synchronized (this.m) {
                        fArr = iBinder3 != null ? this.m.get(iBinder3) : null;
                    }
                    if (fArr != null) {
                        this.l.set(java.lang.Boolean.TRUE);
                        try {
                            this.N.invoke(this.T.get(obj2), java.lang.Float.valueOf(fArr[0]), java.lang.Float.valueOf(fArr[1]), java.lang.Float.valueOf(fArr[2]), java.lang.Float.valueOf(fArr[3]));
                            this.l.remove();
                            this.j.a(bVar, fArr[2]);
                            android.util.Log.i(a, "LEASE_BACKLIGHT panel=" + str + " from=" + str2 + " value=" + fArr[2] + " floor=on");
                        } catch (java.lang.Throwable th) {
                            this.l.remove();
                            throw th;
                        }
                    } else {
                        throw new java.lang.IllegalStateException("当前源面板亮度尚未采集");
                    }
                }
            }
        } catch (java.lang.Throwable th2) {
            this.t = th2;
            java.util.Iterator<dev.duo.hookprobe.x.b> it = this.j.b(iBinder2).iterator();
            while (it.hasNext()) {
                a(it.next(), "apply_failed");
            }
            android.util.Log.e(a, "LEASE_APPLY_FAILED panel=" + str, th2);
        }
    }

    private void a(android.view.SurfaceControl.Transaction transaction, java.lang.Object obj, android.os.IBinder iBinder, int i2, int i3, int i4) throws java.lang.Exception {
        int i5;
        int i6;
        java.lang.Object invoke = this.K.invoke(obj, null);
        int i7 = (i2 + this.g0.getInt(invoke)) % 4;
        boolean z = true;
        if (i7 != 1 && i7 != 3) {
            z = false;
        }
        int i8 = (z ? this.f0 : this.e0).getInt(invoke);
        int i9 = (z ? this.e0 : this.f0).getInt(invoke);
        int i10 = i8 * i4;
        int i11 = i9 * i3;
        if (i10 < i11) {
            i6 = i10 / i3;
            i5 = i8;
        } else {
            i5 = i11 / i4;
            i6 = i9;
        }
        int i12 = (i8 - i5) / 2;
        int i13 = (i9 - i6) / 2;
        android.graphics.Rect rect = new android.graphics.Rect(i12, i13, i5 + i12, i6 + i13);
        this.C.invoke(transaction, iBinder, java.lang.Integer.valueOf(i7), new android.graphics.Rect(0, 0, i3, i4), rect);
        this.Y.setInt(obj, -1);
        this.Z.set(obj, null);
        this.a0.set(obj, null);
        android.util.Log.i(a, "LEASE_PROJECTION orientation=" + i7 + " stack=" + i3 + "x" + i4 + " display=" + rect.toShortString());
    }

    private void a(dev.duo.hookprobe.x.b bVar, java.lang.String str) {
        float[] fArr;
        synchronized (bVar) {
            try {
            } catch (java.lang.Throwable th) {
                this.t = th;
                android.util.Log.e(a, "RELEASE_FAILED panel=" + bVar.a + " reason=" + str, th);
            }
            synchronized (this.P.get(this.p)) {
                java.lang.Object a2 = a(bVar.a);
                if (a2 == null) {
                    android.util.Log.w(a, "RELEASE_NO_DEVICE panel=" + bVar.a);
                    return;
                }
                android.os.IBinder iBinder = (android.os.IBinder) this.J.invoke(a2, null);
                this.X.setInt(a2, -2147483641);
                this.Y.setInt(a2, -1);
                this.Z.set(a2, null);
                this.a0.set(a2, null);
                this.b0.setInt(a2, -1);
                this.c0.setInt(a2, -1);
                this.d0.setInt(a2, -1);
                android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                java.lang.Object invoke = this.y.invoke(this.E.get(this.p), a2);
                if (invoke == null) {
                    this.B.invoke(transaction, iBinder, -1);
                } else {
                    boolean z = this.V.getInt(this.K.invoke(a2, null)) == 1;
                    this.l.set(java.lang.Boolean.TRUE);
                    try {
                        this.z.invoke(invoke, transaction, a2, java.lang.Boolean.valueOf(z), this.F.get(this.p));
                    } finally {
                    }
                }
                transaction.apply();
                transaction.close();
                this.A.invoke(this.p, java.lang.Boolean.FALSE);
                int i2 = this.U.getInt(a2);
                if (bVar.h) {
                    java.lang.Integer num = (java.lang.Integer) this.M.invoke(null, java.lang.Integer.valueOf(i2));
                    int intValue = num.intValue();
                    if (dev.duo.hookprobe.x.a(bVar, intValue)) {
                        this.D.invoke(null, iBinder, num);
                        android.util.Log.i(a, "RELEASE_POWER panel=" + bVar.a + " state=" + i2 + " mode=" + intValue);
                    } else {
                        android.util.Log.i(a, "RELEASE_POWER_SKIPPED panel=" + bVar.a + " state=" + i2 + " already_on held_on=" + bVar.j);
                    }
                }
                dev.duo.hookprobe.x.a a3 = this.j.a(bVar, a());
                if (a3 != null) {
                    android.util.Log.i(a, "RELEASE_GUARD panel=" + bVar.a + " floor=" + a3.b + " ms=700 carried=" + ((!a3.e || (fArr = a3.d) == null) ? "none" : java.lang.String.valueOf(fArr[2])));
                    b();
                } else {
                    float[] fArr2 = bVar.k;
                    if (fArr2 != null && bVar.l) {
                        this.l.set(java.lang.Boolean.TRUE);
                        try {
                            java.lang.Object obj = this.T.get(a2);
                            if (bVar.n) {
                                this.O.invoke(obj, java.lang.Float.valueOf(fArr2[0]), java.lang.Float.valueOf(fArr2[1]), java.lang.Float.valueOf(fArr2[2]), java.lang.Float.valueOf(fArr2[3]), java.lang.Boolean.valueOf(bVar.m));
                            } else {
                                this.N.invoke(obj, java.lang.Float.valueOf(fArr2[0]), java.lang.Float.valueOf(fArr2[1]), java.lang.Float.valueOf(fArr2[2]), java.lang.Float.valueOf(fArr2[3]));
                            }
                            this.l.remove();
                        } finally {
                        }
                    }
                }
                android.util.Log.i(a, "RELEASED panel=" + bVar.a + " reason=" + str + " held_ms=" + (a() - bVar.f));
            }
        }
    }

    private void a(java.lang.String str, android.os.Parcel parcel) throws java.lang.Exception {
        synchronized (this.P.get(this.p)) {
            java.lang.Object a2 = a(str);
            int i2 = 0;
            if (a2 == null) {
                parcel.writeInt(0);
                return;
            }
            java.lang.Object invoke = this.K.invoke(a2, null);
            dev.duo.hookprobe.x.b b2 = this.j.b(str);
            parcel.writeInt(1);
            parcel.writeInt(this.V.getInt(invoke));
            parcel.writeInt(this.x.isInstance(a2) ? this.U.getInt(a2) : -1);
            parcel.writeInt(this.X.getInt(a2));
            parcel.writeInt(this.Y.getInt(a2));
            parcel.writeInt(b2 == null ? 0 : b2.d);
            if (b2 != null) {
                i2 = b2.e;
            }
            parcel.writeInt(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.os.IBinder iBinder) {
        this.s.d(iBinder);
        java.util.Iterator<dev.duo.hookprobe.x.b> it = this.j.b(iBinder).iterator();
        while (it.hasNext()) {
            a(it.next(), "owner_died");
        }
        synchronized (this.n) {
            this.n.remove(iBinder);
        }
    }

    private void a(dev.duo.hookprobe.x.a aVar) {
        java.lang.Object a2;
        try {
            if (aVar.e && aVar.d != null) {
                synchronized (this.P.get(this.p)) {
                    a2 = a(aVar.a);
                }
                if (a2 == null) {
                    return;
                }
                float[] fArr = aVar.d;
                this.l.set(java.lang.Boolean.TRUE);
                try {
                    java.lang.Object obj = this.T.get(a2);
                    if (aVar.f) {
                        this.O.invoke(obj, java.lang.Float.valueOf(fArr[0]), java.lang.Float.valueOf(fArr[1]), java.lang.Float.valueOf(fArr[2]), java.lang.Float.valueOf(fArr[3]), java.lang.Boolean.valueOf(aVar.g));
                    } else {
                        this.N.invoke(obj, java.lang.Float.valueOf(fArr[0]), java.lang.Float.valueOf(fArr[1]), java.lang.Float.valueOf(fArr[2]), java.lang.Float.valueOf(fArr[3]));
                    }
                    this.l.remove();
                    android.util.Log.i(a, "GUARD_END panel=" + aVar.a + " replay=" + fArr[2]);
                    return;
                } catch (java.lang.Throwable th) {
                    this.l.remove();
                    throw th;
                }
            }
            android.util.Log.i(a, "GUARD_END panel=" + aVar.a + " replay=none");
        } catch (java.lang.Throwable th2) {
            this.t = th2;
            android.util.Log.e(a, "GUARD_END_FAILED panel=" + aVar.a, th2);
        }
    }
}
