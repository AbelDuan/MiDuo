package dev.duo.taskcore;

/* loaded from: classes.dex */
public final class j implements dev.duo.taskcore.i.b {
    static final java.lang.String a = "TaskCoreShell";
    private static final int b = 6;
    private static final int c = 6;
    private static final int d = 1;
    private static final int e = 1;
    private static final long f = 3000;
    private static final long g = 5000;
    private static final int h = 900;
    public static volatile boolean i = false;
    private static final long j = 300;
    private java.lang.Class<?> A;
    private java.lang.Class<?> B;
    private java.lang.reflect.Constructor<?> B0;
    private java.lang.Class<?> C;
    private java.lang.reflect.Field C0;
    private java.lang.Class<?> D;
    private java.lang.reflect.Field D0;
    private java.lang.Class<?> E;
    private java.lang.reflect.Field E0;
    private java.lang.Class<?> F;
    private java.lang.reflect.Field F0;
    private java.lang.reflect.Constructor<?> G;
    private java.lang.reflect.Method G0;
    private java.lang.reflect.Constructor<?> H;
    private java.lang.reflect.Method H0;
    private java.lang.reflect.Constructor<?> I;
    private java.lang.reflect.Method I0;
    private java.lang.reflect.Method J;
    private java.lang.Object J0;
    private java.lang.reflect.Method K;
    private java.lang.reflect.Method L;
    private java.lang.reflect.Method M;
    private java.lang.reflect.Method N;
    private java.lang.reflect.Method O;
    private java.lang.reflect.Constructor<?> O0;
    private java.lang.reflect.Method P;
    private android.os.IBinder P0;
    private java.lang.reflect.Method Q;
    private java.lang.reflect.Method R;
    private java.lang.reflect.Method S;
    private java.lang.reflect.Method S0;
    private java.lang.reflect.Method T;
    private dev.duo.taskcore.j.c T0;
    private java.lang.reflect.Method U;
    private dev.duo.taskcore.j.c U0;
    private java.lang.reflect.Method V;
    private volatile android.os.IBinder V0;
    private java.lang.reflect.Method W;
    private volatile android.os.IBinder W0;
    private java.lang.reflect.Method X;
    private java.lang.reflect.Method Y;
    private volatile java.lang.Object Y0;
    private java.lang.reflect.Method Z;
    private volatile java.util.List<java.lang.Integer> Z0;
    private java.lang.reflect.Method a0;
    private java.util.List<android.graphics.Rect> a1;
    private java.lang.reflect.Method b0;
    private java.lang.reflect.Method b1;
    private java.lang.reflect.Method c0;
    private volatile java.lang.Object c1;
    private java.lang.reflect.Method d0;
    private java.lang.reflect.Field d1;
    private java.lang.reflect.Method e0;
    private long e1;
    private java.lang.reflect.Method f0;
    private long f1;
    private java.lang.reflect.Method g0;
    private android.os.HandlerThread g1;
    private java.lang.reflect.Method h0;
    private android.os.Handler h1;
    private java.lang.reflect.Field i0;
    private java.lang.reflect.Field j0;
    private volatile boolean j1;
    private final io.github.libxposed.api.XposedInterface k;
    private java.lang.reflect.Method k0;
    private final java.lang.ClassLoader l;
    private java.lang.reflect.Field l0;
    private java.lang.reflect.Field m0;
    private dev.duo.taskcore.g m1;
    private volatile java.lang.Object n;
    private java.lang.reflect.Field n0;
    private java.lang.reflect.Method n1;
    private volatile java.lang.Object o;
    private java.lang.reflect.Field o0;
    private java.lang.reflect.Method o1;
    private volatile java.lang.Object p;
    private java.lang.reflect.Field p0;
    private java.lang.reflect.Field p1;
    private volatile android.os.Handler q;
    private java.lang.reflect.Field q0;
    private volatile android.view.SurfaceControl r;
    private java.lang.reflect.Field r0;
    private volatile android.content.Context s;
    private java.lang.Object s1;
    private dev.duo.taskcore.j.b t;
    private dev.duo.taskcore.g u;
    private java.lang.Object u0;
    private dev.duo.taskcore.b v;
    private java.lang.Class<?> v0;
    private dev.duo.taskcore.h.a w;
    private volatile dev.duo.taskcore.d w0;
    private java.util.concurrent.atomic.AtomicBoolean w1;
    private volatile long x;
    private volatile dev.duo.taskcore.c x1;
    private java.lang.Object y0;
    private final android.os.Handler m = new android.os.Handler(android.os.Looper.getMainLooper());
    private final java.util.Set<android.os.IBinder> y = new java.util.HashSet();
    private final java.lang.ThreadLocal<dev.duo.taskcore.j.f> z = new java.lang.ThreadLocal<>();
    private final java.util.Map<java.lang.Object, android.graphics.Rect> s0 = java.util.Collections.synchronizedMap(new java.util.IdentityHashMap());
    private final java.util.Set<dev.duo.taskcore.d> t0 = java.util.Collections.newSetFromMap(new java.util.IdentityHashMap());
    private final java.util.Map<android.os.IBinder, dev.duo.taskcore.d> x0 = new java.util.HashMap();
    private final java.util.Map<java.lang.Object, dev.duo.taskcore.j.d> z0 = new java.util.HashMap();
    private final java.util.Map<android.os.IBinder, dev.duo.taskcore.j.d> A0 = new java.util.HashMap();
    private final java.util.Map<android.os.IBinder, java.lang.Integer> K0 = new java.util.HashMap();
    private final java.util.Set<java.lang.Integer> L0 = new java.util.HashSet();
    private final java.util.Map<android.os.IBinder, android.view.SurfaceControl.Transaction> M0 = new java.util.HashMap();
    private final java.util.Map<android.os.IBinder, java.util.List<android.os.IBinder>> N0 = new java.util.HashMap();
    private final java.util.Map<java.lang.Integer, android.view.SurfaceControl> Q0 = new java.util.HashMap();
    private final java.util.Map<android.os.IBinder, java.lang.Integer> R0 = new java.util.HashMap();
    private volatile int X0 = -1;
    private volatile int i1 = -1;
    private final java.util.Set<java.lang.Integer> k1 = new java.util.LinkedHashSet();
    private int l1 = -1;
    private final java.util.Map<java.lang.Integer, java.lang.Integer> q1 = java.util.Collections.synchronizedMap(new java.util.HashMap());
    private int r1 = -1;
    private final java.lang.Runnable t1 = new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda56
        @Override // java.lang.Runnable
        public final void run() {
            dev.duo.taskcore.j.this.i();
        }
    };
    private final java.util.Set<android.os.IBinder> u1 = java.util.Collections.synchronizedSet(new java.util.HashSet());
    private final java.util.Map<android.os.IBinder, java.lang.Integer> v1 = java.util.Collections.synchronizedMap(new java.util.HashMap());

    class a extends android.os.ResultReceiver {
        final /* synthetic */ long a;
        final /* synthetic */ long b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(android.os.Handler handler, long j, long j2) {
            super(handler);
            this.a = j;
            this.b = j2;
        }

        @Override // android.os.ResultReceiver
        protected void onReceiveResult(int i, android.os.Bundle bundle) {
            if (this.a == dev.duo.taskcore.j.this.e1 && this.b == dev.duo.taskcore.j.this.f1) {
                if (i < 0) {
                    android.util.Log.e(dev.duo.taskcore.j.a, "workbench image rejected: " + bundle);
                    return;
                }
                android.util.Log.i(dev.duo.taskcore.j.a, "workbench image " + this.b + " receiver=" + i);
                if (i == 0 || i == 1) {
                    try {
                        dev.duo.taskcore.j.this.b1.invoke(dev.duo.taskcore.j.this.Y0, null);
                    } catch (java.lang.ReflectiveOperationException e) {
                        android.util.Log.e(dev.duo.taskcore.j.a, "workbench image refresh failed", e);
                    }
                }
            }
        }
    }

    public interface b {
        void a(int i, android.os.IBinder iBinder);

        void a(int i, java.lang.Object obj);

        void a(int i, java.lang.Object obj, int i2, int i3);

        void a(dev.duo.taskcore.i iVar);

        void a(java.lang.String[] strArr, dev.duo.taskcore.i.a aVar);

        default boolean a(int i, java.lang.String str) {
            return false;
        }

        void b(int i);

        void b(java.lang.String str);

        void c(int i);

        default boolean c() {
            return false;
        }

        void d(int i);

        default void e(int i) {
        }

        default boolean f() {
            return false;
        }

        default boolean g() {
            return k();
        }

        default boolean h() {
            return false;
        }

        default android.view.SurfaceControl i() {
            return null;
        }

        default boolean k() {
            return false;
        }

        default void a(long j, int i, java.lang.Object obj, boolean z) {
        }

        default void e() {
        }

        default void h(int i) {
            b("non-multi-window task " + i);
        }

        default void a(long j, int i, java.lang.Object obj) {
        }

        default boolean a(java.lang.String str, java.lang.Object obj) {
            return false;
        }

        default void a(dev.duo.taskcore.h.b bVar) {
        }

        default void a(java.lang.String str) {
            b(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c {
        final dev.duo.taskcore.g a;
        final dev.duo.taskcore.d b;
        final java.util.List<dev.duo.taskcore.d> c;
        android.os.IBinder d;
        android.os.IBinder e;
        java.lang.Object f;
        java.lang.Object g;
        android.view.SurfaceControl.Transaction h;
        android.view.SurfaceControl i;
        boolean j;
        boolean k;
        boolean l;

        c(dev.duo.taskcore.g gVar, dev.duo.taskcore.d dVar, java.util.List<dev.duo.taskcore.d> list) {
            this.a = gVar;
            this.b = dVar;
            this.c = list;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface e {
        boolean run() throws java.lang.ReflectiveOperationException;
    }

    private static final class f {
        final android.app.PendingIntent a;
        final int b;

        f(android.app.PendingIntent pendingIntent, int i) {
            this.a = pendingIntent;
            this.b = i;
        }
    }

    public j(io.github.libxposed.api.XposedInterface xposedInterface, java.lang.ClassLoader classLoader) {
        this.k = xposedInterface;
        this.l = classLoader;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object e(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        this.c1 = chain.getThisObject();
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object f(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        dev.duo.taskcore.g gVar;
        java.lang.Object proceed = chain.proceed();
        if (((java.lang.Integer) chain.getArg(1)).intValue() == 9 && (gVar = this.u) != null) {
            gVar.b((android.view.SurfaceControl) null);
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object h(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        c((android.view.SurfaceControl.Transaction) chain.getArg(1));
        a((android.view.SurfaceControl.Transaction) chain.getArg(1));
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object i(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.util.List<java.lang.Integer> list = this.Z0;
        dev.duo.taskcore.j.b bVar = this.t;
        android.os.Bundle bundle = (android.os.Bundle) chain.getArg(0);
        java.util.Set<java.lang.Integer> a2 = a(bundle);
        if ((bundle == null ? -1 : bundle.getInt("multiple_launch_way")) == 0 && list != null && bVar != null && a2.size() == list.size() && list.containsAll(a2)) {
            java.lang.Object invoke = android.app.ActivityOptions.class.getMethod("getRemoteTransition", null).invoke(android.app.ActivityOptions.class.getMethod("fromBundle", android.os.Bundle.class).invoke(null, bundle), null);
            if (bVar.a("recents card", invoke)) {
                android.util.Log.i(a, "workbench card restore " + a2 + " remote=" + (invoke != null));
                return null;
            }
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        try {
            n();
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e(a, "floating windows unreadable", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object k(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        dev.duo.taskcore.j.b bVar = this.t;
        if (this.T0 != null || bVar == null || !bVar.c() || this.w0 == null || this.t0.isEmpty()) {
            return chain.proceed();
        }
        dev.duo.taskcore.j.c cVar = new dev.duo.taskcore.j.c(this.u, this.w0, new java.util.ArrayList(this.t0));
        k();
        this.T0 = cVar;
        cVar.a.d();
        try {
            android.os.IBinder iBinder = (android.os.IBinder) chain.proceed();
            cVar.d = iBinder;
            if (iBinder == null) {
                cVar.a.a();
                this.T0 = null;
            }
            return iBinder;
        } catch (java.lang.Throwable th) {
            if (cVar.d == null) {
                cVar.a.a();
                this.T0 = null;
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object n(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        android.view.SurfaceControl surfaceControl;
        dev.duo.taskcore.j.c cVar = this.T0;
        boolean z = false;
        java.util.List<android.os.IBinder> list = this.N0.get(chain.getArg(0));
        if (cVar != null && (cVar.d == chain.getArg(0) || cVar.e == chain.getArg(0) || (list != null && list.contains(cVar.d)))) {
            z = true;
        }
        if (z) {
            cVar.k = true;
        }
        try {
            return chain.proceed();
        } finally {
            if (z && this.T0 == cVar) {
                cVar.a.a();
                this.T0 = null;
                if (cVar.l && (surfaceControl = cVar.i) != null) {
                    surfaceControl.release();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object o(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        dev.duo.taskcore.j.b bVar = this.t;
        if (this.x == 0 || bVar == null || !((java.lang.Boolean) chain.getArg(4)).booleanValue() || !((java.lang.Boolean) chain.getArg(6)).booleanValue() || !bVar.f()) {
            return chain.proceed();
        }
        java.lang.Object[] array = chain.getArgs().toArray();
        array[4] = java.lang.Boolean.FALSE;
        return chain.proceed(array);
    }

    public void g() throws java.lang.ReflectiveOperationException {
        try {
            dev.duo.workspaceprobe.WorkspaceHome.preload();
        } catch (java.lang.LinkageError e2) {
            android.util.Log.e(a, "workbench image library not loaded at install", e2);
        }
        h();
        java.lang.Class<?> cls = java.lang.Class.forName("com.android.wm.shell.taskview.TaskViewTransitions", false, this.l);
        java.lang.Class<?> cls2 = java.lang.Class.forName("com.android.wm.shell.ShellTaskOrganizer", false, this.l);
        java.lang.Class<?> cls3 = java.lang.Class.forName("com.android.wm.shell.transition.Transitions", false, this.l);
        this.A = java.lang.Class.forName("com.android.wm.shell.taskview.TaskView", false, this.l);
        this.B = java.lang.Class.forName("com.android.wm.shell.taskview.TaskViewTaskController", false, this.l);
        java.lang.Class<?> cls4 = java.lang.Class.forName("com.android.wm.shell.taskview.TaskViewController", false, this.l);
        this.E = java.lang.Class.forName("com.android.wm.shell.taskview.TaskView$Listener", false, this.l);
        this.D = java.lang.Class.forName("com.android.wm.shell.transition.Transitions$TransitionHandler", false, this.l);
        this.v0 = java.lang.Class.forName("com.android.wm.shell.transition.Transitions$TransitionObserver", false, this.l);
        java.lang.Class<?> cls5 = java.lang.Class.forName("com.android.wm.shell.ShellTaskOrganizer$TaskListener", false, this.l);
        this.C = java.lang.Class.forName("android.window.WindowContainerTransaction", false, this.l);
        this.F = java.lang.Class.forName("android.window.WindowContainerToken", false, this.l);
        java.lang.Class<?> cls6 = java.lang.Class.forName("android.window.TransitionInfo", false, this.l);
        java.lang.Class<?> cls7 = java.lang.Class.forName("android.window.TransitionInfo$Change", false, this.l);
        this.G = this.B.getConstructor(android.content.Context.class, cls2, cls4);
        this.H = this.A.getConstructor(android.content.Context.class, cls4, this.B);
        this.I = this.C.getConstructor(null);
        java.lang.Class cls8 = java.lang.Integer.TYPE;
        this.J = cls2.getMethod("getRunningTaskInfo", cls8);
        this.K = cls2.getMethod("getTaskLeash", cls8);
        java.lang.reflect.Method declaredMethod = cls2.getDeclaredMethod("getTaskListener", android.app.ActivityManager.RunningTaskInfo.class);
        this.L = declaredMethod;
        declaredMethod.setAccessible(true);
        this.M = cls2.getMethod("addListenerForTaskId", cls5, cls8);
        this.N = cls2.getMethod("removeListener", cls5);
        java.lang.reflect.Field declaredField = cls2.getDeclaredField("mTaskListeners");
        this.m0 = declaredField;
        declaredField.setAccessible(true);
        java.lang.Class<?> cls9 = this.B;
        java.lang.Class cls10 = java.lang.Boolean.TYPE;
        this.O = cls.getMethod("prepareOpenAnimation", cls9, cls10, android.view.SurfaceControl.Transaction.class, android.view.SurfaceControl.Transaction.class, android.app.ActivityManager.RunningTaskInfo.class, android.view.SurfaceControl.class, this.C);
        this.P = cls.getMethod("unregisterTaskView", this.B);
        this.Q = cls3.getMethod("startTransition", cls8, this.C, this.D);
        this.R = this.B.getMethod("getPendingInfo", null);
        this.l0 = this.B.getField("mSurfaceControl");
        this.S = this.A.getMethod("setListener", java.util.concurrent.Executor.class, this.E);
        this.T = this.A.getMethod("release", null);
        this.U = this.C.getMethod("setWindowingMode", this.F, cls8);
        this.V = this.C.getMethod("setBounds", this.F, android.graphics.Rect.class);
        this.W = this.C.getMethod("setHidden", this.F, cls10);
        this.X = this.C.getMethod("setFocusable", this.F, cls10);
        this.Y = this.C.getMethod("setInterceptBackPressedOnTaskRoot", this.F, cls10);
        this.Z = this.C.getMethod("setTaskTrimmableFromRecents", this.F, cls10);
        this.a0 = this.C.getMethod("reorder", this.F, cls10);
        this.b0 = this.F.getMethod("asBinder", null);
        this.c0 = android.app.TaskInfo.class.getMethod("getWindowingMode", null);
        this.d0 = android.app.TaskInfo.class.getMethod("getActivityType", null);
        this.n0 = android.app.TaskInfo.class.getField("token");
        java.lang.String str = "displayId";
        this.o0 = android.app.TaskInfo.class.getField("displayId");
        this.p0 = android.app.TaskInfo.class.getField("userId");
        this.q0 = android.app.TaskInfo.class.getField("parentTaskId");
        this.r0 = android.app.TaskInfo.class.getField("positionInParent");
        this.e0 = cls6.getMethod("getChanges", null);
        this.j0 = android.app.TaskInfo.class.getField("configuration");
        this.i0 = android.content.res.Configuration.class.getField("windowConfiguration");
        this.k0 = java.lang.Class.forName("android.app.WindowConfiguration", false, this.l).getMethod("getBounds", null);
        this.f0 = cls7.getMethod("getTaskInfo", null);
        this.g0 = cls7.getMethod("getLeash", null);
        this.h0 = java.lang.Class.forName("com.android.wm.shell.transition.Transitions$TransitionFinishCallback", false, this.l).getMethod("onTransitionFinished", this.C);
        java.lang.Class<?> cls11 = java.lang.Class.forName("com.android.wm.shell.transition.OneShotRemoteHandler", false, this.l);
        java.lang.Class<?> cls12 = cls7;
        this.B0 = cls11.getConstructor(java.lang.Class.forName("com.android.wm.shell.common.ShellExecutor", false, this.l), java.lang.Class.forName("android.window.RemoteTransition", false, this.l));
        this.C0 = cls11.getField("mTransition");
        java.lang.reflect.Field declaredField2 = cls3.getDeclaredField("mMainExecutor");
        this.D0 = declaredField2;
        declaredField2.setAccessible(true);
        this.G0 = cls11.getMethod("startAnimation", android.os.IBinder.class, cls6, android.view.SurfaceControl.Transaction.class, android.view.SurfaceControl.Transaction.class, this.h0.getDeclaringClass());
        this.H0 = cls11.getMethod("mergeAnimation", android.os.IBinder.class, cls6, android.view.SurfaceControl.Transaction.class, android.view.SurfaceControl.Transaction.class, android.os.IBinder.class, this.h0.getDeclaringClass());
        this.I0 = cls11.getMethod("onTransitionConsumed", android.os.IBinder.class, cls10, android.view.SurfaceControl.Transaction.class);
        this.O0 = java.lang.Class.forName("com.android.wm.shell.transition.Transitions$RequestResult", false, this.l).getConstructor(this.C, this.D);
        this.S0 = cls6.getMethod("isKeyguardGoingAway", null);
        final java.lang.reflect.Method method = cls3.getMethod("addHandler", this.D);
        java.lang.reflect.Field declaredField3 = cls.getDeclaredField("mTaskOrganizer");
        java.lang.reflect.Field declaredField4 = cls.getDeclaredField("mTransitions");
        java.lang.reflect.Field declaredField5 = cls.getDeclaredField("mShellExecutor");
        declaredField3.setAccessible(true);
        declaredField4.setAccessible(true);
        declaredField5.setAccessible(true);
        try {
            this.E0 = cls.getDeclaredField("mPendingRedirectTransition");
            this.F0 = java.lang.Class.forName("com.android.wm.shell.taskview.TaskViewTransitions$PendingRedirectTransition", false, this.l).getDeclaredField("mWct");
            this.E0.setAccessible(true);
            this.F0.setAccessible(true);
        } catch (java.lang.ReflectiveOperationException e3) {
            this.E0 = null;
            android.util.Log.e(a, "TaskView redirect not found: a rotation may put side members back to the old size", e3);
        }
        java.lang.reflect.Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        int length = declaredConstructors.length;
        int i2 = 0;
        while (i2 < length) {
            final java.lang.reflect.Field field = declaredField4;
            int i3 = length;
            final java.lang.reflect.Field field2 = declaredField3;
            java.lang.String str2 = str;
            final java.lang.reflect.Field field3 = declaredField5;
            this.k.hook(declaredConstructors[i2]).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda17
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.taskcore.j.this.a(field2, field, method, field3, chain);
                    return a2;
                }
            });
            declaredField5 = field3;
            str = str2;
            declaredField3 = field2;
            length = i3;
            declaredField4 = field;
            i2++;
            declaredConstructors = declaredConstructors;
            cls12 = cls12;
        }
        java.lang.String str3 = str;
        java.lang.Class<?> cls13 = cls12;
        java.lang.Class<?> cls14 = java.lang.Class.forName("com.android.wm.shell.recents.RecentTasksController", false, this.l);
        for (java.lang.reflect.Constructor<?> constructor : cls14.getDeclaredConstructors()) {
            this.k.hook(constructor).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda28
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.taskcore.j.this.a(chain);
                    return a2;
                }
            });
        }
        java.lang.Class<?> cls15 = java.lang.Class.forName("com.android.wm.shell.shared.GroupedTaskInfo", false, this.l);
        java.lang.Class<?> cls16 = java.lang.Class.forName("com.android.wm.shell.shared.split.SplitBounds", false, this.l);
        final java.lang.reflect.Method method2 = cls15.getMethod("getTaskInfoList", null);
        final java.lang.reflect.Method method3 = cls15.getMethod("forMultipleSplitTasks", java.util.List.class, cls16);
        final java.lang.reflect.Constructor<?> constructor2 = cls16.getConstructor(java.lang.Integer.TYPE, java.util.List.class, java.util.List.class, java.lang.Boolean.TYPE);
        java.lang.reflect.Method declaredMethod2 = cls14.getDeclaredMethod("notifyRecentTasksChanged", null);
        declaredMethod2.setAccessible(true);
        this.b1 = declaredMethod2;
        java.lang.Class<?> cls17 = java.lang.Class.forName("com.android.systemui.LauncherProxyService", false, this.l);
        this.d1 = cls17.getField("mLauncherProxy");
        java.lang.reflect.Constructor<?>[] declaredConstructors2 = cls17.getDeclaredConstructors();
        int length2 = declaredConstructors2.length;
        int i4 = 0;
        while (i4 < length2) {
            this.k.hook(declaredConstructors2[i4]).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda30
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object e4;
                    e4 = dev.duo.taskcore.j.this.e(chain);
                    return e4;
                }
            });
            i4++;
            declaredConstructors2 = declaredConstructors2;
        }
        io.github.libxposed.api.XposedInterface xposedInterface = this.k;
        java.lang.Class cls18 = java.lang.Integer.TYPE;
        xposedInterface.hook(cls14.getDeclaredMethod("getRecentTasks", cls18, cls18, cls18)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda31
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object a2;
                a2 = dev.duo.taskcore.j.this.a(method2, constructor2, method3, chain);
                return a2;
            }
        });
        java.lang.Class<?> cls19 = java.lang.Class.forName("com.android.wm.shell.recents.RecentsTransitionHandler$RecentsController", false, this.l);
        java.lang.Class<?> cls20 = java.lang.Class.forName("com.android.wm.shell.recents.RecentsTransitionHandler", false, this.l);
        this.k.hook(cls20.getDeclaredMethod("getFinishMergeTransaction", android.os.IBinder.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda32
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object g2;
                g2 = dev.duo.taskcore.j.this.g(chain);
                return g2;
            }
        });
        this.k.hook(java.lang.Class.forName("com.android.wm.shell.multitasking.miuifreeform.MiuiFreeformModeController", false, this.l).getDeclaredMethod("adjustRecentMiniSurfaceIfNeed", cls6, android.view.SurfaceControl.Transaction.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda33
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object h2;
                h2 = dev.duo.taskcore.j.this.h(chain);
                return h2;
            }
        });
        a(cls20, cls19, cls6, cls13);
        final java.lang.reflect.Field declaredField6 = cls19.getDeclaredField("mAwaitingCancelCompletion");
        final java.lang.reflect.Field declaredField7 = cls19.getDeclaredField("mFinishCB");
        final java.lang.reflect.Field declaredField8 = cls19.getDeclaredField("mKeyguardLocked");
        declaredField6.setAccessible(true);
        declaredField7.setAccessible(true);
        declaredField8.setAccessible(true);
        final java.lang.reflect.Method declaredMethod3 = cls19.getDeclaredMethod("isSyntheticTransition", null);
        declaredMethod3.setAccessible(true);
        io.github.libxposed.api.XposedInterface xposedInterface2 = this.k;
        java.lang.Class<?> cls21 = java.lang.Class.forName("com.android.internal.os.IResultReceiver", false, this.l);
        java.lang.Class cls22 = java.lang.Boolean.TYPE;
        xposedInterface2.hook(cls19.getDeclaredMethod("finishInner", cls22, cls22, cls21, java.lang.String.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda34
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object a2;
                a2 = dev.duo.taskcore.j.this.a(declaredField6, declaredField8, declaredField7, declaredMethod3, chain);
                return a2;
            }
        });
        try {
            this.k.hook(java.lang.Class.forName("com.android.wm.shell.multiplesplit.MultipleSplitRootTaskOrganizer", false, this.l).getDeclaredMethod("startMultipleSplits", android.os.Bundle.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda35
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object i5;
                    i5 = dev.duo.taskcore.j.this.i(chain);
                    return i5;
                }
            });
        } catch (java.lang.ReflectiveOperationException e4) {
            android.util.Log.w(a, "multi-split launch hook unavailable: recents card relies on member to-front", e4);
        }
        java.lang.Class<?> cls23 = java.lang.Class.forName("com.android.wm.shell.RootTaskDisplayAreaOrganizer", false, this.l);
        java.lang.Class<?> cls24 = java.lang.Class.forName("android.window.DisplayAreaInfo", false, this.l);
        final java.lang.reflect.Field field4 = cls24.getField(str3);
        this.k.hook(cls23.getDeclaredMethod("onDisplayAreaAppeared", cls24, android.view.SurfaceControl.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda36
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object a2;
                a2 = dev.duo.taskcore.j.this.a(field4, chain);
                return a2;
            }
        });
        this.k.hook(cls23.getDeclaredMethod("onDisplayAreaVanished", cls24)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda37
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object b2;
                b2 = dev.duo.taskcore.j.this.b(field4, chain);
                return b2;
            }
        });
        this.k.hook(this.A.getMethod("getCurrentBoundsOnScreen", null)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda18
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object b2;
                b2 = dev.duo.taskcore.j.this.b(chain);
                return b2;
            }
        });
        final java.lang.reflect.Method method4 = cls4.getMethod("setTaskBounds", this.B, android.graphics.Rect.class);
        final java.lang.reflect.Field declaredField9 = this.A.getDeclaredField("mTaskViewController");
        final java.lang.reflect.Field declaredField10 = this.A.getDeclaredField("mTaskViewTaskController");
        declaredField9.setAccessible(true);
        declaredField10.setAccessible(true);
        java.lang.reflect.Method method5 = this.A.getMethod("onLocationChanged", null);
        java.lang.Class<?> cls25 = this.A;
        java.lang.Class cls26 = java.lang.Integer.TYPE;
        java.lang.reflect.Method[] methodArr = {method5, cls25.getMethod("surfaceChanged", android.view.SurfaceHolder.class, cls26, cls26, cls26)};
        for (int i5 = 0; i5 < 2; i5++) {
            this.k.hook(methodArr[i5]).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda19
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.taskcore.j.this.a(method4, declaredField9, declaredField10, chain);
                    return a2;
                }
            });
        }
        java.lang.Class<?> cls27 = java.lang.Class.forName("android.window.TransitionRequestInfo", false, this.l);
        final java.lang.reflect.Method method6 = cls27.getMethod("getTriggerTask", null);
        final java.lang.reflect.Method method7 = cls27.getMethod("getType", null);
        final java.lang.reflect.Field field5 = android.app.TaskInfo.class.getField("launchCookies");
        this.o1 = method6;
        this.p1 = field5;
        this.k.hook(cls3.getDeclaredMethod("requestStartTransition", android.os.IBinder.class, cls27)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda20
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object a2;
                a2 = dev.duo.taskcore.j.this.a(method7, method6, field5, chain);
                return a2;
            }
        });
        final java.lang.reflect.Field field6 = android.app.TaskInfo.class.getField("isFocused");
        this.k.hook(cls2.getDeclaredMethod("onTaskInfoChanged", android.app.ActivityManager.RunningTaskInfo.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda21
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object a2;
                a2 = dev.duo.taskcore.j.this.a(field6, field5, chain);
                return a2;
            }
        });
        this.k.hook(cls2.getDeclaredMethod("onTaskAppeared", android.app.ActivityManager.RunningTaskInfo.class, android.view.SurfaceControl.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda22
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object c2;
                c2 = dev.duo.taskcore.j.this.c(chain);
                return c2;
            }
        });
        this.k.hook(cls2.getDeclaredMethod("onTaskVanished", android.app.ActivityManager.RunningTaskInfo.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda23
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object d2;
                d2 = dev.duo.taskcore.j.this.d(chain);
                return d2;
            }
        });
        java.lang.Class<?> cls28 = java.lang.Class.forName("com.android.wm.shell.pip2.phone.PipTransition", false, this.l);
        java.lang.Class<?> cls29 = java.lang.Class.forName("android.window.TransitionRequestInfo$PipChange", false, this.l);
        java.lang.Class<?> cls30 = java.lang.Class.forName("com.android.wm.shell.pip2.phone.PipTransitionState", false, this.l);
        final java.lang.reflect.Method method8 = cls29.getMethod("getTaskInfo", null);
        final java.lang.reflect.Field declaredField11 = cls28.getDeclaredField("mPipTransitionState");
        declaredField11.setAccessible(true);
        final java.lang.reflect.Method method9 = cls30.getMethod("getState", null);
        final java.lang.reflect.Method method10 = cls30.getMethod("getPinnedTaskLeash", null);
        this.k.hook(cls28.getDeclaredMethod("getEnterPipTransaction", android.os.IBinder.class, cls29)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda24
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object a2;
                a2 = dev.duo.taskcore.j.this.a(method8, declaredField11, chain);
                return a2;
            }
        });
        this.k.hook(java.lang.Class.forName("android.window.WindowOrganizer", false, this.l).getDeclaredMethod("finishTransition", android.os.IBinder.class, this.C)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda25
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object a2;
                a2 = dev.duo.taskcore.j.this.a(method9, method10, chain);
                return a2;
            }
        });
        io.github.libxposed.api.XposedInterface xposedInterface3 = this.k;
        java.lang.Class cls31 = java.lang.Integer.TYPE;
        xposedInterface3.hook(cls28.getDeclaredMethod("onPipTransitionStateChanged", cls31, cls31, android.os.Bundle.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda26
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object f2;
                f2 = dev.duo.taskcore.j.this.f(chain);
                return f2;
            }
        });
        a(this.l);
        this.J0 = java.lang.reflect.Proxy.newProxyInstance(this.l, new java.lang.Class[]{this.D}, new java.lang.reflect.InvocationHandler() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda27
            @Override // java.lang.reflect.InvocationHandler
            public final java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method11, java.lang.Object[] objArr) {
                java.lang.Object a2;
                a2 = dev.duo.taskcore.j.this.a(obj, method11, objArr);
                return a2;
            }
        });
        this.u0 = java.lang.reflect.Proxy.newProxyInstance(this.l, new java.lang.Class[]{this.v0}, new java.lang.reflect.InvocationHandler() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda29
            @Override // java.lang.reflect.InvocationHandler
            public final java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method11, java.lang.Object[] objArr) {
                java.lang.Object b2;
                b2 = dev.duo.taskcore.j.this.b(obj, method11, objArr);
                return b2;
            }
        });
    }

    public java.lang.String l() {
        return "shell=" + (this.n != null) + " context=" + (this.s != null) + " displayArea=" + (this.r != null);
    }

    public boolean m() {
        return (this.q == null || this.s == null || this.r == null) ? false : true;
    }

    public android.os.Handler p() {
        return this.q;
    }

    public dev.duo.taskcore.c q() {
        return this.x1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.reflect.Method method, java.lang.reflect.Field field3, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        java.lang.Object thisObject = chain.getThisObject();
        if (this.n != null) {
            android.util.Log.w(a, "second TaskViewTransitions ignored");
            return proceed;
        }
        this.n = thisObject;
        this.o = field.get(thisObject);
        this.p = field2.get(thisObject);
        try {
            this.p.getClass().getMethod("registerObserver", this.v0).invoke(this.p, this.u0);
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e(a, "transition observer not registered: members may fall out of their cards", e2);
        }
        try {
            method.invoke(this.p, this.J0);
        } catch (java.lang.ReflectiveOperationException e3) {
            android.util.Log.e(a, "transition handler not added: external launches cannot be claimed", e3);
        }
        java.lang.Object obj = field3.get(thisObject);
        this.q = new android.os.Handler((android.os.Looper) obj.getClass().getMethod("getLooper", null).invoke(obj, null));
        android.util.Log.i(a, "captured TaskViewTransitions " + thisObject);
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object b(java.lang.reflect.Field field, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        if (field.getInt(chain.getArg(0)) == 0) {
            this.r = null;
            dev.duo.taskcore.j.b bVar = this.t;
            if (bVar != null) {
                bVar.b("display area vanished");
            }
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object c(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) chain.getArg(0);
        if (runningTaskInfo != null && runningTaskInfo.taskId == this.X0) {
            e(runningTaskInfo.taskId);
        }
        if (runningTaskInfo != null && runningTaskInfo.taskId == this.i1 && !this.j1) {
            d(runningTaskInfo.taskId);
        }
        if (runningTaskInfo != null) {
            a(runningTaskInfo);
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object d(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) chain.getArg(0);
        if (runningTaskInfo != null && this.k1.remove(java.lang.Integer.valueOf(runningTaskInfo.taskId))) {
            n();
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object j(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        if (((android.view.DragEvent) chain.getArg(1)).getAction() == 1) {
            i = true;
            android.util.Log.i(a, "system drag started");
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object l(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        dev.duo.taskcore.j.c cVar = this.T0;
        if (cVar != null && cVar.f == chain.getThisObject()) {
            cVar.j = java.lang.Boolean.TRUE.equals(((android.util.Pair) proceed).first);
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object m(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        dev.duo.taskcore.j.c cVar = this.T0;
        if (cVar != null && cVar.f == chain.getThisObject() && java.lang.Boolean.TRUE.equals(proceed)) {
            cVar.j = false;
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class d {
        final boolean a;
        final java.util.List<dev.duo.taskcore.d> b;
        final dev.duo.taskcore.i.a c;
        java.lang.Object d;
        java.lang.Object e;
        dev.duo.taskcore.d f;
        boolean g;
        boolean h;
        boolean i;
        boolean j;

        d(boolean z, java.util.List<dev.duo.taskcore.d> list, dev.duo.taskcore.i.a aVar) {
            this.a = z;
            this.b = list;
            this.c = aVar;
        }

        void a(java.lang.String str) {
            if (this.g) {
                return;
            }
            this.h = true;
            this.g = true;
            this.c.a(false, "timeout: " + str);
        }

        void b(boolean z, java.lang.String str) {
            if (this.g) {
                return;
            }
            this.g = true;
            this.c.a(z, str);
        }

        void a(boolean z, java.lang.String str) {
            if (!this.h) {
                b(z, str);
                return;
            }
            if (this.i) {
                return;
            }
            this.i = true;
            if (this.a) {
                this.c.a(z, "late: " + str);
            } else {
                android.util.Log.w(dev.duo.taskcore.j.a, "late attach result ignored (session already returning): " + str);
            }
        }
    }

    private boolean f(int i2) {
        synchronized (this.s0) {
            for (java.lang.Object obj : this.s0.keySet()) {
                try {
                    java.lang.Object invoke = this.R.invoke(this.A.getMethod("getController", null).invoke(obj, null), null);
                    android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.A.getMethod("getTaskInfo", null).invoke(obj, null);
                    if ((runningTaskInfo != null && runningTaskInfo.taskId == i2) || (invoke != null && ((android.app.ActivityManager.RunningTaskInfo) invoke).taskId == i2)) {
                        return true;
                    }
                } catch (java.lang.ReflectiveOperationException e2) {
                }
            }
            return false;
        }
    }

    public dev.duo.taskcore.g e() {
        return this.u;
    }

    private void e(int i2) {
        android.os.IBinder iBinder = this.W0;
        this.X0 = -1;
        this.W0 = null;
        dev.duo.taskcore.j.b bVar = this.t;
        if (bVar == null || iBinder == null) {
            return;
        }
        bVar.a(i2, iBinder);
    }

    private void h() throws java.lang.ReflectiveOperationException {
        java.lang.reflect.Method declaredMethod;
        java.lang.String[] strArr = {"StatusBarNotificationActivityStarter$$ExternalSyntheticLambda12", "StatusBarNotificationActivityStarterInjectorImpl$startNotificationIntentInjected$1"};
        int i2 = 0;
        while (i2 < 2) {
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.systemui.statusbar.phone." + strArr[i2], false, this.l);
            final java.lang.reflect.Field declaredField = cls.getDeclaredField(i2 == 0 ? "f$3" : "$intent");
            declaredField.setAccessible(true);
            if (i2 == 0) {
                declaredMethod = cls.getDeclaredMethod("startPendingIntent", java.lang.Class.forName("android.view.RemoteAnimationAdapter", false, this.l));
            } else {
                declaredMethod = cls.getDeclaredMethod("run", null);
            }
            this.k.hook(declaredMethod).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda52
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object c2;
                    c2 = dev.duo.taskcore.j.this.c(declaredField, chain);
                    return c2;
                }
            });
            i2++;
        }
        java.lang.Class<?> cls2 = java.lang.Class.forName("com.android.systemui.statusbar.notification.collection.NotificationEntry", false, this.l);
        final java.lang.reflect.Field declaredField2 = cls2.getDeclaredField("mSbn");
        declaredField2.setAccessible(true);
        java.lang.Class<?> cls3 = java.lang.Class.forName("com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter", false, this.l);
        io.github.libxposed.api.XposedInterface xposedInterface = this.k;
        java.lang.Class<?> cls4 = java.lang.Class.forName("com.android.systemui.statusbar.notification.row.ExpandableNotificationRow", false, this.l);
        java.lang.Class cls5 = java.lang.Boolean.TYPE;
        xposedInterface.hook(cls3.getDeclaredMethod("startNotificationIntentPublic", android.app.PendingIntent.class, android.content.Intent.class, cls2, cls4, cls5, cls5, cls5)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda53
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object o;
                o = dev.duo.taskcore.j.this.o(chain);
                return o;
            }
        });
        this.k.hook(cls3.getDeclaredMethod("launchFullScreenIntent", cls2)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda54
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object d2;
                d2 = dev.duo.taskcore.j.this.d(declaredField2, chain);
                return d2;
            }
        });
        java.lang.Class<?> cls6 = java.lang.Class.forName("android.content.IIntentSender", false, this.l);
        final java.lang.reflect.Method method = android.app.PendingIntent.class.getMethod("getTarget", null);
        final java.lang.reflect.Method method2 = android.os.IInterface.class.getMethod("asBinder", null);
        final java.lang.reflect.Method method3 = android.app.ActivityOptions.class.getMethod("fromBundle", android.os.Bundle.class);
        final java.lang.reflect.Method method4 = android.app.ActivityOptions.class.getMethod("getLaunchCookie", null);
        this.k.hook(java.lang.Class.forName("android.app.IActivityManager$Stub$Proxy", false, this.l).getDeclaredMethod("sendIntentSender", java.lang.Class.forName("android.app.IApplicationThread", false, this.l), cls6, android.os.IBinder.class, java.lang.Integer.TYPE, android.content.Intent.class, java.lang.String.class, java.lang.Class.forName("android.content.IIntentReceiver", false, this.l), java.lang.String.class, android.os.Bundle.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda55
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object a2;
                a2 = dev.duo.taskcore.j.this.a(method2, method, method3, method4, chain);
                return a2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object d(java.lang.reflect.Field field, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        android.app.Notification notification = ((android.service.notification.StatusBarNotification) field.get(chain.getArg(0))).getNotification();
        if (!"call".equals(notification.category) && !"alarm".equals(notification.category)) {
            return chain.proceed();
        }
        dev.duo.taskcore.j.f fVar = this.z.get();
        this.z.set(new dev.duo.taskcore.j.f(notification.fullScreenIntent, 2));
        try {
            java.lang.Object proceed = chain.proceed();
            if (fVar == null) {
                this.z.remove();
                return proceed;
            }
            this.z.set(fVar);
            return proceed;
        } catch (java.lang.Throwable th) {
            if (fVar == null) {
                this.z.remove();
            } else {
                this.z.set(fVar);
            }
            throw th;
        }
    }

    private boolean j(int i2) {
        java.util.Iterator<android.app.ActivityManager.RunningTaskInfo> it = ((android.app.ActivityManager) this.s.getSystemService(android.app.ActivityManager.class)).getRunningTasks(32).iterator();
        while (it.hasNext()) {
            if (it.next().taskId == i2) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.util.List c(android.os.IBinder iBinder) {
        return new java.util.ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object b(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        android.graphics.Rect rect = this.s0.get(chain.getThisObject());
        return rect == null ? chain.proceed() : new android.graphics.Rect(rect);
    }

    private void c(android.view.SurfaceControl.Transaction transaction) {
        a(transaction, false);
    }

    private dev.duo.taskcore.h.a o() throws dev.duo.taskcore.i.c {
        dev.duo.taskcore.h.a aVar = this.w;
        if (aVar != null) {
            return aVar;
        }
        throw new dev.duo.taskcore.i.c("WMS binder unavailable");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object c(java.lang.reflect.Field field, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        dev.duo.taskcore.j.f fVar = this.z.get();
        this.z.set(new dev.duo.taskcore.j.f((android.app.PendingIntent) field.get(chain.getThisObject()), 1));
        try {
            java.lang.Object proceed = chain.proceed();
            if (fVar == null) {
                this.z.remove();
                return proceed;
            }
            this.z.set(fVar);
            return proceed;
        } catch (java.lang.Throwable th) {
            if (fVar == null) {
                this.z.remove();
            } else {
                this.z.set(fVar);
            }
            throw th;
        }
    }

    @Override // dev.duo.taskcore.i.b
    public void e(dev.duo.taskcore.d dVar) {
        android.view.SurfaceControl surfaceControl;
        this.t0.remove(dVar);
        this.L0.remove(java.lang.Integer.valueOf(dVar.a.a));
        try {
            android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.J.invoke(this.o, java.lang.Integer.valueOf(dVar.a.a));
            android.view.SurfaceControl surfaceControl2 = (android.view.SurfaceControl) dVar.a.g;
            if (runningTaskInfo != null && surfaceControl2 != null && surfaceControl2.isValid()) {
                int i2 = this.q0.getInt(runningTaskInfo);
                if (i2 == -1) {
                    surfaceControl = this.r;
                } else {
                    surfaceControl = (android.view.SurfaceControl) this.K.invoke(this.o, java.lang.Integer.valueOf(i2));
                }
                if (surfaceControl != null && surfaceControl.isValid()) {
                    android.graphics.Point point = (android.graphics.Point) this.r0.get(runningTaskInfo);
                    android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                    try {
                        transaction.reparent(surfaceControl2, surfaceControl).setScale(surfaceControl2, 1.0f, 1.0f).setPosition(surfaceControl2, point.x, point.y).setCrop(surfaceControl2, null).setAlpha(surfaceControl2, 1.0f);
                        dev.duo.taskcore.e.a(transaction, surfaceControl2, (android.graphics.Rect) null);
                        transaction.setVisibility(surfaceControl2, android.app.TaskInfo.class.getField("isVisible").getBoolean(runningTaskInfo));
                        transaction.apply();
                        transaction.close();
                        android.util.Log.i(a, dVar + " taken by the system (parent " + i2 + "): leash handed back now");
                        return;
                    } finally {
                    }
                }
                android.util.Log.w(a, dVar + " taken by the system: parent " + i2 + " leash unknown, left to its transition");
            }
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e(a, "hand back " + dVar, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public /* synthetic */ java.lang.Object b(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
        char c2;
        dev.duo.taskcore.j.b bVar;
        java.lang.String name = method.getName();
        name.getClass();
        switch (name.hashCode()) {
            case -1776922004:
                if (name.equals("toString")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1542447834:
                if (name.equals("onTransitionFinished")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1295482945:
                if (name.equals("equals")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 147696667:
                if (name.equals("hashCode")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 881252719:
                if (name.equals("onTransitionReady")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1406393568:
                if (name.equals("onTransitionMerged")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 1:
                android.os.IBinder iBinder = (android.os.IBinder) objArr[0];
                if (iBinder == this.P0) {
                    this.P0 = null;
                    dev.duo.taskcore.j.b bVar2 = this.t;
                    if (((java.lang.Boolean) objArr[1]).booleanValue() && bVar2 != null) {
                        bVar2.e();
                    }
                }
                this.K0.remove(iBinder);
                this.R0.remove(iBinder);
                dev.duo.taskcore.j.c cVar = this.T0;
                if (cVar != null && cVar.k && !cVar.l) {
                    cVar.j = (cVar.j || ((java.lang.Boolean) objArr[1]).booleanValue()) && (bVar = this.t) != null && bVar.h();
                }
                android.view.SurfaceControl.Transaction b2 = b(iBinder);
                c(b2);
                a(b2);
                break;
            case 2:
                break;
            case 4:
                a((android.os.IBinder) objArr[0], objArr[1], (android.view.SurfaceControl.Transaction) objArr[2], (android.view.SurfaceControl.Transaction) objArr[3]);
                break;
            case 5:
                this.N0.computeIfAbsent((android.os.IBinder) objArr[1], new java.util.function.Function() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda68
                    @Override // java.util.function.Function
                    public final java.lang.Object apply(java.lang.Object obj2) {
                        java.util.List c3;
                        c3 = dev.duo.taskcore.j.c((android.os.IBinder) obj2);
                        return c3;
                    }
                }).add((android.os.IBinder) objArr[0]);
                dev.duo.taskcore.j.c cVar2 = this.T0;
                if (cVar2 != null) {
                    android.os.IBinder iBinder2 = cVar2.d;
                    java.lang.Object obj2 = objArr[0];
                    if (iBinder2 == obj2 || cVar2.e == obj2) {
                        cVar2.e = (android.os.IBinder) objArr[1];
                        break;
                    }
                }
                break;
        }
        return null;
    }

    private void k() {
        dev.duo.taskcore.g gVar = this.u;
        java.util.List<java.lang.Integer> list = this.Z0;
        if (gVar == null || list == null || list.isEmpty() || this.x == 0 || this.w0 == null) {
            return;
        }
        long elapsedRealtimeNanos = android.os.SystemClock.elapsedRealtimeNanos();
        android.hardware.HardwareBuffer hardwareBuffer = null;
        try {
            try {
                java.lang.Object invoke = java.lang.Class.forName("android.window.ScreenCaptureInternal").getMethod("captureLayers", android.view.SurfaceControl.class, android.graphics.Rect.class, java.lang.Float.TYPE).invoke(null, gVar.t(), new android.graphics.Rect(this.v.b), java.lang.Float.valueOf(java.lang.Math.min(1.0f, 1000.0f / java.lang.Math.max(r5.width(), r5.height()))));
                android.util.Log.i(a, "workbench capture on shell thread " + ((android.os.SystemClock.elapsedRealtimeNanos() - elapsedRealtimeNanos) / 1000) + "us");
                if (invoke != null) {
                    final android.hardware.HardwareBuffer hardwareBuffer2 = (android.hardware.HardwareBuffer) invoke.getClass().getMethod("getHardwareBuffer", null).invoke(invoke, null);
                    try {
                        try {
                            if (hardwareBuffer2 != null) {
                                final android.graphics.ColorSpace colorSpace = (android.graphics.ColorSpace) invoke.getClass().getMethod("getColorSpace", null).invoke(invoke, null);
                                final long j2 = this.x;
                                final long j3 = this.f1 + 1;
                                this.f1 = j3;
                                this.e1 = j2;
                                int size = list.size();
                                final int[] iArr = new int[size];
                                for (int i2 = 0; i2 < size; i2++) {
                                    iArr[i2] = list.get(i2).intValue();
                                }
                                final int i3 = this.w0.a.a;
                                final android.os.IBinder d2 = d();
                                try {
                                    f().post(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda58
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            dev.duo.taskcore.j.this.a(d2, j2, j3, iArr, i3, hardwareBuffer2, colorSpace);
                                        }
                                    });
                                    return;
                                } catch (java.lang.LinkageError | java.lang.ReflectiveOperationException | java.lang.RuntimeException e2) {
                                    e = e2;
                                    android.util.Log.e(a, "workbench image capture failed", e);
                                    if (hardwareBuffer != null) {
                                        hardwareBuffer.close();
                                        return;
                                    }
                                    return;
                                } catch (java.lang.Throwable th) {
                                    th = th;
                                    if (hardwareBuffer != null) {
                                        hardwareBuffer.close();
                                    }
                                    throw th;
                                }
                            }
                            throw new java.lang.IllegalStateException("workbench capture has no buffer");
                        } catch (java.lang.LinkageError | java.lang.ReflectiveOperationException | java.lang.RuntimeException e3) {
                            e = e3;
                            hardwareBuffer = hardwareBuffer2;
                        }
                    } catch (java.lang.Throwable th2) {
                        th = th2;
                        hardwareBuffer = hardwareBuffer2;
                    }
                } else {
                    throw new java.lang.IllegalStateException("workbench layer capture returned null");
                }
            } catch (java.lang.LinkageError | java.lang.ReflectiveOperationException | java.lang.RuntimeException e4) {
                e = e4;
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public void b(final dev.duo.taskcore.j.d dVar, final java.lang.String str, final long j2) {
        java.lang.StringBuilder append;
        java.lang.String join;
        android.app.ActivityManager.RunningTaskInfo runningTaskInfo;
        try {
            java.lang.String a2 = a(dVar.b);
            if (a2 != null) {
                if (android.os.SystemClock.uptimeMillis() >= j2) {
                    dVar.a(false, str + "; " + a2);
                    return;
                } else {
                    this.q.postDelayed(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda72
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.taskcore.j.this.b(dVar, str, j2);
                        }
                    }, 50L);
                    return;
                }
            }
            java.util.ArrayList arrayList = new java.util.ArrayList();
            try {
                android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                try {
                    for (dev.duo.taskcore.d dVar2 : dVar.b) {
                        if (!h(dVar2) && (runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.J.invoke(this.o, java.lang.Integer.valueOf(dVar2.a.a))) != null && this.b0.invoke(this.n0.get(runningTaskInfo), null) == dVar2.a.e && a(dVar2, runningTaskInfo) && !b(transaction, dVar2, runningTaskInfo)) {
                            arrayList.add(dVar2 + " leash could not be restored");
                        }
                    }
                    transaction.apply();
                    transaction.close();
                } finally {
                }
            } catch (java.lang.ReflectiveOperationException e2) {
                arrayList.add("task state unreadable: " + e2);
            }
            boolean isEmpty = arrayList.isEmpty();
            if (arrayList.isEmpty()) {
                append = new java.lang.StringBuilder().append("returned in another transition (").append(str);
                join = ")";
            } else {
                append = new java.lang.StringBuilder().append(str).append("; ");
                join = java.lang.String.join("; ", arrayList);
            }
            dVar.a(isEmpty, append.append(join).toString());
        } catch (java.lang.ReflectiveOperationException e3) {
            dVar.a(false, str + "; task state unreadable: " + e3);
        }
    }

    private void n() throws java.lang.ReflectiveOperationException {
        int i2;
        dev.duo.taskcore.g gVar = this.u;
        if (gVar == null) {
            return;
        }
        if (this.k1.isEmpty()) {
            i2 = -1;
        } else {
            java.lang.Object invoke = java.lang.Class.forName("android.app.ActivityTaskManager").getMethod("getService", null).invoke(null, null);
            if (this.n1 == null) {
                this.n1 = invoke.getClass().getMethod("getAllRootTaskInfosOnDisplay", java.lang.Integer.TYPE);
            }
            java.util.Iterator it = ((java.util.List) this.n1.invoke(invoke, 0)).iterator();
            i2 = -1;
            while (it.hasNext()) {
                int i3 = ((android.app.TaskInfo) it.next()).taskId;
                if (this.k1.contains(java.lang.Integer.valueOf(i3))) {
                    i2 = i3;
                }
            }
            if (i2 == -1) {
                i2 = this.k1.iterator().next().intValue();
            }
        }
        if (i2 == this.l1 && gVar == this.m1) {
            return;
        }
        this.l1 = i2;
        this.m1 = gVar;
        android.view.SurfaceControl surfaceControl = i2 != -1 ? (android.view.SurfaceControl) this.K.invoke(this.o, java.lang.Integer.valueOf(i2)) : null;
        android.util.Log.i(a, "floating windows " + this.k1 + ": workbench root " + (surfaceControl == null ? "on top" : "below task " + i2));
        gVar.a(surfaceControl);
    }

    public void c(android.graphics.Rect rect) {
        int i2 = rect.left;
        android.graphics.Rect rect2 = new android.graphics.Rect(i2, rect.top, rect.height() + i2, rect.top + rect.width());
        final java.util.LinkedHashSet linkedHashSet = new java.util.LinkedHashSet();
        android.graphics.Rect[] rectArr = {rect, rect2};
        for (int i3 = 0; i3 < 2; i3++) {
            android.graphics.Rect rect3 = rectArr[i3];
            linkedHashSet.add(new dev.duo.taskcore.b(rect3, false).a);
            linkedHashSet.add(new dev.duo.taskcore.b(rect3, true).a);
        }
        this.q.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.j.this.a(linkedHashSet);
            }
        });
    }

    private android.os.Handler f() {
        if (this.h1 == null) {
            android.os.HandlerThread handlerThread = new android.os.HandlerThread("TaskCoreImage");
            this.g1 = handlerThread;
            handlerThread.start();
            this.h1 = new android.os.Handler(this.g1.getLooper());
        }
        return this.h1;
    }

    public void i(final int i2) {
        android.os.Handler handler = this.q;
        if (handler == null) {
            return;
        }
        handler.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.j.this.h(i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        if (this.Y0 == null) {
            this.Y0 = chain.getThisObject();
            android.util.Log.i(a, "captured RecentTasksController");
        }
        return proceed;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object[]] */
    @Override // dev.duo.taskcore.i.b
    public dev.duo.taskcore.d.b c(int i2) throws dev.duo.taskcore.i.c {
        int i3;
        android.app.ActivityManager.RunningTaskInfo runningTaskInfo;
        int i4;
        java.lang.String name;
        java.lang.String str;
        try {
            java.lang.reflect.Method method = this.J;
            java.lang.Object obj = this.o;
            i3 = new java.lang.Object[]{java.lang.Integer.valueOf(i2)};
            runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) method.invoke(obj, i3);
        } catch (java.lang.ReflectiveOperationException e2) {
            e = e2;
            i3 = i2;
        }
        try {
            if (runningTaskInfo != null) {
                android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) this.K.invoke(this.o, java.lang.Integer.valueOf(i2));
                java.lang.Object obj2 = this.n0.get(runningTaskInfo);
                if (surfaceControl == null) {
                    i4 = i2;
                } else if (!surfaceControl.isValid() || obj2 == null) {
                    i4 = i2;
                } else {
                    if (((java.lang.Integer) this.c0.invoke(runningTaskInfo, null)).intValue() == 1) {
                        if (((java.lang.Integer) this.d0.invoke(runningTaskInfo, null)).intValue() == 1) {
                            if (this.o0.getInt(runningTaskInfo) == 0) {
                                if (this.q0.getInt(runningTaskInfo) == -1) {
                                    if (android.app.TaskInfo.class.getField("supportsMultiWindow").getBoolean(runningTaskInfo)) {
                                        java.lang.Object obj3 = ((android.util.SparseArray) this.m0.get(this.o)).get(i2);
                                        if (obj3 == null) {
                                            java.lang.Object invoke = this.L.invoke(this.o, runningTaskInfo);
                                            if (invoke == null) {
                                                name = "null";
                                            } else {
                                                name = invoke.getClass().getName();
                                            }
                                            if (name.endsWith("FullscreenTaskListener")) {
                                                android.content.ComponentName componentName = runningTaskInfo.baseActivity;
                                                if (componentName == null && (componentName = runningTaskInfo.topActivity) == null) {
                                                    str = "?";
                                                    return new dev.duo.taskcore.d.b(i2, this.p0.getInt(runningTaskInfo), 0, obj2, this.b0.invoke(obj2, null), runningTaskInfo, surfaceControl, str, name);
                                                }
                                                str = componentName.getPackageName();
                                                return new dev.duo.taskcore.d.b(i2, this.p0.getInt(runningTaskInfo), 0, obj2, this.b0.invoke(obj2, null), runningTaskInfo, surfaceControl, str, name);
                                            }
                                            throw new dev.duo.taskcore.i.c("task " + i2 + " owner " + name);
                                        }
                                        throw new dev.duo.taskcore.i.c("task " + i2 + " owned by " + obj3.getClass().getName());
                                    }
                                    throw new dev.duo.taskcore.i.c("task " + i2 + " does not support multi-window");
                                }
                                throw new dev.duo.taskcore.i.c("task " + i2 + " has a parent task");
                            }
                            throw new dev.duo.taskcore.i.c("task " + i2 + " not on default display");
                        }
                        throw new dev.duo.taskcore.i.c("task " + i2 + " not standard");
                    }
                    throw new dev.duo.taskcore.i.c("task " + i2 + " not fullscreen");
                }
                throw new dev.duo.taskcore.i.c("task " + i4 + " has no leash/token");
            }
            throw new dev.duo.taskcore.i.c("task " + i2 + " not running");
        } catch (java.lang.ReflectiveOperationException e3) {
            e = e3;
            throw new dev.duo.taskcore.i.c("inspect " + i3 + ": " + e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e5, code lost:
    
        r17 = r3;
        r19 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e9, code lost:
    
        if (r15 == 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00eb, code lost:
    
        if (r16 == 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ee, code lost:
    
        if (r15 == 0) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00f0, code lost:
    
        r7.add(r12);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Method r21, java.lang.reflect.Constructor r22, java.lang.reflect.Method r23, io.github.libxposed.api.XposedInterface.Chain r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.taskcore.j.a(java.lang.reflect.Method, java.lang.reflect.Constructor, java.lang.reflect.Method, io.github.libxposed.api.XposedInterface$Chain):java.lang.Object");
    }

    @Override // dev.duo.taskcore.i.b
    public boolean f(dev.duo.taskcore.d dVar) {
        try {
            android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.J.invoke(this.o, java.lang.Integer.valueOf(dVar.a.a));
            if (runningTaskInfo != null && this.b0.invoke(this.n0.get(runningTaskInfo), null) == dVar.a.e) {
                if (((java.lang.Integer) this.c0.invoke(runningTaskInfo, null)).intValue() == 6 && this.q0.getInt(runningTaskInfo) == -1 && this.o0.getInt(runningTaskInfo) == dVar.a.c && this.p0.getInt(runningTaskInfo) == dVar.a.b) {
                    return this.L.invoke(this.o, runningTaskInfo) != dVar.g;
                }
                return true;
            }
            return false;
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e(a, "task state unreadable " + dVar + ": left to the normal return", e2);
            return false;
        }
    }

    private android.os.IBinder d() throws java.lang.IllegalAccessException {
        java.lang.Object obj = this.c1;
        android.os.IInterface iInterface = obj == null ? null : (android.os.IInterface) this.d1.get(obj);
        if (iInterface != null) {
            return iInterface.asBinder();
        }
        throw new java.lang.IllegalStateException("launcher image peer is not connected");
    }

    private void d(int i2) {
        this.j1 = true;
        dev.duo.taskcore.j.b bVar = this.t;
        if (bVar != null) {
            bVar.e(i2);
        }
    }

    @Override // dev.duo.taskcore.i.b
    public java.lang.String d(dev.duo.taskcore.d dVar) {
        java.lang.String name;
        this.t0.remove(dVar);
        try {
            this.N.invoke(this.o, dVar.g);
            android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.J.invoke(this.o, java.lang.Integer.valueOf(dVar.a.a));
            if (runningTaskInfo != null) {
                java.lang.Object invoke = this.L.invoke(this.o, runningTaskInfo);
                if (invoke == null) {
                    name = "null";
                } else {
                    name = invoke.getClass().getName();
                }
                if (invoke == dVar.g) {
                    return "owner after return still this controller";
                }
                int intValue = ((java.lang.Integer) this.c0.invoke(runningTaskInfo, null)).intValue();
                if (!dVar.j && intValue == 6) {
                    return "windowing mode still multi-window after return (owner " + name + ")";
                }
                android.util.Log.i(a, dVar + " handed to " + name + " mode " + intValue + (dVar.j ? " (system choice kept)" : ""));
            }
            this.P.invoke(this.n, dVar.g);
            this.B.getMethod("resetTaskInfo", null).invoke(dVar.g, null);
            return null;
        } catch (java.lang.Throwable th) {
            android.util.Log.e(a, "release owner " + dVar, th);
            return java.lang.String.valueOf(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(final int i2) {
        if (f(i2)) {
            return;
        }
        this.L0.remove(java.lang.Integer.valueOf(i2));
        this.K0.values().removeIf(new java.util.function.Predicate() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda13
            @Override // java.util.function.Predicate
            public final boolean test(java.lang.Object obj) {
                boolean a2;
                a2 = dev.duo.taskcore.j.a(i2, (java.lang.Integer) obj);
                return a2;
            }
        });
        try {
            android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) this.K.invoke(this.o, java.lang.Integer.valueOf(i2));
            if (surfaceControl != null && surfaceControl.isValid()) {
                android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                try {
                    transaction.setVisibility(surfaceControl, true).apply();
                    transaction.close();
                } finally {
                }
            }
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e(a, "reveal " + i2, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.reflect.Field field3, java.lang.reflect.Method method, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object thisObject = chain.getThisObject();
        java.lang.String str = (java.lang.String) chain.getArg(3);
        if (this.x != 0 && ((java.lang.Boolean) chain.getArg(0)).booleanValue() && (("requested".equals(str) || "requested-merge-fenced".equals(str)) && !field.getBoolean(thisObject) && !field2.getBoolean(thisObject) && field3.get(thisObject) != null && !((java.lang.Boolean) method.invoke(thisObject, null)).booleanValue())) {
            this.w.a(this.x);
        }
        return chain.proceed();
    }

    private android.view.SurfaceControl.Transaction b(android.os.IBinder iBinder) {
        android.view.SurfaceControl.Transaction remove = this.M0.remove(iBinder);
        java.util.List<android.os.IBinder> remove2 = this.N0.remove(iBinder);
        if (remove2 != null) {
            for (android.os.IBinder iBinder2 : remove2) {
                android.view.SurfaceControl.Transaction remove3 = this.M0.remove(iBinder2);
                this.K0.remove(iBinder2);
                if (remove3 != null) {
                    remove = remove3;
                }
            }
        }
        return remove;
    }

    private static boolean h(dev.duo.taskcore.d dVar) {
        return dVar.e == dev.duo.taskcore.d.a.RELEASED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        if (field.getInt(chain.getArg(0)) == 0) {
            this.r = (android.view.SurfaceControl) chain.getArg(1);
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(dev.duo.taskcore.h.b bVar) {
        dev.duo.taskcore.j.b bVar2;
        dev.duo.taskcore.h.c cVar;
        if (bVar.a != this.x || (bVar2 = this.t) == null) {
            return;
        }
        if (bVar.b == 1) {
            if (this.y.add(bVar.e)) {
                a(bVar);
                this.t.a(bVar);
                if (bVar.c != 1 || bVar.f != null || (cVar = bVar.g) == null || f(cVar.a)) {
                    return;
                }
                try {
                    android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.J.invoke(this.o, java.lang.Integer.valueOf(bVar.g.a));
                    if (runningTaskInfo == null || this.b0.invoke(this.n0.get(runningTaskInfo), null) != bVar.g.e) {
                        return;
                    }
                    android.content.ComponentName componentName = runningTaskInfo.baseActivity;
                    if (this.t.a(runningTaskInfo.taskId, componentName != null ? componentName.getPackageName() : runningTaskInfo.topActivity.getPackageName())) {
                        this.t.e(runningTaskInfo.taskId);
                        return;
                    }
                    return;
                } catch (java.lang.ReflectiveOperationException e2) {
                    throw new java.lang.IllegalStateException("notification result task", e2);
                }
            }
            return;
        }
        bVar2.a(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public void a(final dev.duo.taskcore.j.d dVar, final java.lang.String str, final long j2) {
        dev.duo.taskcore.b bVar = this.v;
        android.graphics.Rect rect = bVar == null ? null : bVar.a;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        try {
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                for (dev.duo.taskcore.d dVar2 : dVar.b) {
                    if (!h(dVar2)) {
                        android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.J.invoke(this.o, java.lang.Integer.valueOf(dVar2.a.a));
                        if (runningTaskInfo != null && this.b0.invoke(this.n0.get(runningTaskInfo), null) == dVar2.a.e) {
                            android.graphics.Rect rect2 = (android.graphics.Rect) this.k0.invoke(this.i0.get(this.j0.get(runningTaskInfo)), null);
                            if (((java.lang.Integer) this.c0.invoke(runningTaskInfo, null)).intValue() == 6 && rect != null && rect.equals(rect2)) {
                                android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) dVar2.a.g;
                                android.view.SurfaceControl surfaceControl2 = (android.view.SurfaceControl) this.l0.get(dVar2.g);
                                if (surfaceControl != null && surfaceControl.isValid() && surfaceControl2 != null && surfaceControl2.isValid()) {
                                    transaction.reparent(surfaceControl, surfaceControl2).setPosition(surfaceControl, 0.0f, 0.0f).setScale(surfaceControl, 1.0f, 1.0f).setAlpha(surfaceControl, 1.0f).setVisibility(surfaceControl, true);
                                    dev.duo.taskcore.e.a(transaction, surfaceControl, rect.width(), rect.height());
                                }
                                arrayList.add(dVar2 + " surface gone");
                            }
                            arrayList.add(dVar2 + " not applied yet");
                        }
                        arrayList.add(dVar2 + " vanished");
                    }
                }
                if (arrayList.isEmpty()) {
                    transaction.apply();
                    for (dev.duo.taskcore.d dVar3 : dVar.b) {
                        if (!h(dVar3)) {
                            this.t0.add(dVar3);
                            this.L0.remove(java.lang.Integer.valueOf(dVar3.a.a));
                        }
                    }
                    dVar.a(true, "attached in another transition (" + str + ")");
                    transaction.close();
                    return;
                }
                transaction.close();
                if (android.os.SystemClock.uptimeMillis() < j2) {
                    this.q.postDelayed(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda73
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.taskcore.j.this.a(dVar, str, j2);
                        }
                    }, 50L);
                } else {
                    dVar.a(false, str + "; " + java.lang.String.join("; ", arrayList));
                }
            } finally {
            }
        } catch (java.lang.ReflectiveOperationException e2) {
            dVar.a(false, str + "; task state unreadable: " + e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, java.lang.reflect.Field field, java.lang.reflect.Field field2, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        android.graphics.Rect rect = this.s0.get(chain.getThisObject());
        if (rect == null) {
            return chain.proceed();
        }
        method.invoke(field.get(chain.getThisObject()), field2.get(chain.getThisObject()), new android.graphics.Rect(rect));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, java.lang.reflect.Method method2, java.lang.reflect.Field field, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.String packageName;
        dev.duo.taskcore.j.b bVar = this.t;
        if (bVar != null) {
            int intValue = ((java.lang.Integer) method.invoke(chain.getArg(1), null)).intValue();
            android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) method2.invoke(chain.getArg(1), null);
            if (this.x != 0 && ((intValue == 1 || intValue == 3) && runningTaskInfo == null)) {
                this.u1.add((android.os.IBinder) chain.getArg(0));
            } else if (this.x != 0 && ((intValue == 1 || intValue == 3) && runningTaskInfo != null && this.o0.getInt(runningTaskInfo) == 0 && f(runningTaskInfo.taskId))) {
                this.u1.add((android.os.IBinder) chain.getArg(0));
                this.v1.put((android.os.IBinder) chain.getArg(0), java.lang.Integer.valueOf(runningTaskInfo.taskId));
            } else if (this.x == 0 && !this.u1.isEmpty()) {
                this.u1.clear();
                this.q1.clear();
                this.v1.clear();
            }
            if (this.x != 0 && ((intValue == 1 || intValue == 3) && runningTaskInfo != null && this.o0.getInt(runningTaskInfo) == 0)) {
                for (dev.duo.taskcore.h.b bVar2 : this.w.b(this.x, (android.os.IBinder) chain.getArg(0))) {
                    dev.duo.taskcore.h.c cVar = bVar2.g;
                    if (cVar != null && cVar.e == this.b0.invoke(this.n0.get(runningTaskInfo), null)) {
                        b(bVar2);
                        int i2 = bVar2.c;
                        if (i2 == 2) {
                            return chain.proceed();
                        }
                        if (i2 == 4) {
                            return chain.proceed();
                        }
                    }
                }
            }
            if ((intValue == 1 || intValue == 3) && runningTaskInfo != null && this.L0.contains(java.lang.Integer.valueOf(runningTaskInfo.taskId))) {
                this.K0.put((android.os.IBinder) chain.getArg(0), java.lang.Integer.valueOf(runningTaskInfo.taskId));
                android.util.Log.i(a, "follow-up launch of task " + runningTaskInfo.taskId + " kept hidden until it is in its card");
                return chain.proceed();
            }
            if (intValue != 4 || runningTaskInfo == null || this.o0.getInt(runningTaskInfo) != 0 || !f(runningTaskInfo.taskId)) {
                if ((intValue != 1 && intValue != 3) || runningTaskInfo == null || this.o0.getInt(runningTaskInfo) != 0 || !f(runningTaskInfo.taskId)) {
                    if ((intValue == 1 || intValue == 3) && runningTaskInfo != null && this.o0.getInt(runningTaskInfo) == 0) {
                        android.os.IBinder iBinder = this.V0;
                        java.util.List list = (java.util.List) field.get(runningTaskInfo);
                        if (iBinder != null && list != null && list.contains(iBinder)) {
                            this.K0.put((android.os.IBinder) chain.getArg(0), java.lang.Integer.valueOf(runningTaskInfo.taskId));
                            this.L0.add(java.lang.Integer.valueOf(runningTaskInfo.taskId));
                            this.V0 = null;
                            this.W0 = iBinder;
                            this.X0 = runningTaskInfo.taskId;
                            if (this.J.invoke(this.o, java.lang.Integer.valueOf(runningTaskInfo.taskId)) != null) {
                                e(runningTaskInfo.taskId);
                            }
                        } else {
                            int intValue2 = ((java.lang.Integer) android.app.TaskInfo.class.getMethod("getActivityType", null).invoke(runningTaskInfo, null)).intValue();
                            android.content.ComponentName componentName = runningTaskInfo.baseActivity;
                            if (componentName != null) {
                                packageName = componentName.getPackageName();
                            } else {
                                android.content.ComponentName componentName2 = runningTaskInfo.topActivity;
                                packageName = componentName2 != null ? componentName2.getPackageName() : null;
                            }
                            boolean z = android.app.TaskInfo.class.getField("supportsMultiWindow").getBoolean(runningTaskInfo);
                            boolean z2 = android.app.TaskInfo.class.getField("isTopActivityTransparent").getBoolean(runningTaskInfo);
                            if (intValue2 != 1 || z || !z2 || !bVar.k()) {
                                if (intValue2 != 1 || z) {
                                    if (intValue2 != 1 || ((java.lang.Integer) this.c0.invoke(runningTaskInfo, null)).intValue() != 5) {
                                        if (intValue2 != 1 || !bVar.a(runningTaskInfo.taskId, packageName)) {
                                            if (intValue2 != 1) {
                                                bVar.a("external " + (intValue != 1 ? "to-front" : "open") + " system task " + runningTaskInfo.taskId + " type " + intValue2);
                                            } else {
                                                bVar.b("external " + (intValue != 1 ? "to-front" : "open") + " task " + runningTaskInfo.taskId);
                                            }
                                        } else {
                                            this.j1 = false;
                                            this.i1 = runningTaskInfo.taskId;
                                            this.K0.put((android.os.IBinder) chain.getArg(0), java.lang.Integer.valueOf(runningTaskInfo.taskId));
                                            this.L0.add(java.lang.Integer.valueOf(runningTaskInfo.taskId));
                                            android.util.Log.i(a, "non-member " + packageName + " task " + runningTaskInfo.taskId + " opened: adopting into the main area");
                                            final int i3 = runningTaskInfo.taskId;
                                            if (this.J.invoke(this.o, java.lang.Integer.valueOf(i3)) != null) {
                                                d(i3);
                                            } else {
                                                this.q.postDelayed(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda49
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        dev.duo.taskcore.j.this.g(i3);
                                                    }
                                                }, f);
                                            }
                                        }
                                    } else {
                                        android.util.Log.i(a, "non-member " + packageName + " task " + runningTaskInfo.taskId + " opened as a floating window: left over the workbench");
                                    }
                                } else {
                                    android.util.Log.i(a, "non-member " + packageName + " task " + runningTaskInfo.taskId + " cannot be multi-window: not adopted");
                                    bVar.h(runningTaskInfo.taskId);
                                }
                            } else {
                                android.util.Log.i(a, "non-member " + packageName + " task " + runningTaskInfo.taskId + " is a non-resizable dialog: shown inside the main area");
                                this.Q0.put(java.lang.Integer.valueOf(runningTaskInfo.taskId), null);
                                this.R0.put((android.os.IBinder) chain.getArg(0), java.lang.Integer.valueOf(runningTaskInfo.taskId));
                            }
                        }
                    }
                } else {
                    bVar.c(runningTaskInfo.taskId);
                }
            } else {
                bVar.d(runningTaskInfo.taskId);
            }
        }
        return chain.proceed();
    }

    private void b(android.graphics.Rect rect) {
        try {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            java.lang.Object obj = null;
            for (android.app.ActivityManager.RunningTaskInfo runningTaskInfo : ((android.app.ActivityManager) this.s.getSystemService(android.app.ActivityManager.class)).getRunningTasks(32)) {
                if (this.o0.getInt(runningTaskInfo) == 0 && this.q0.getInt(runningTaskInfo) == -1 && ((java.lang.Integer) this.c0.invoke(runningTaskInfo, null)).intValue() == 6 && ((java.lang.Integer) this.d0.invoke(runningTaskInfo, null)).intValue() == 1 && !android.app.TaskInfo.class.getField("isVisible").getBoolean(runningTaskInfo) && rect.equals(this.k0.invoke(this.i0.get(this.j0.get(runningTaskInfo)), null))) {
                    java.lang.Object obj2 = this.n0.get(runningTaskInfo);
                    if (obj == null) {
                        obj = this.I.newInstance(null);
                    }
                    this.U.invoke(obj, obj2, 1);
                    this.V.invoke(obj, obj2, new android.graphics.Rect());
                    java.lang.reflect.Method method = this.X;
                    java.lang.Boolean bool = java.lang.Boolean.TRUE;
                    method.invoke(obj, obj2, bool);
                    this.Y.invoke(obj, obj2, java.lang.Boolean.FALSE);
                    this.Z.invoke(obj, obj2, bool);
                    arrayList.add(runningTaskInfo.taskId + (runningTaskInfo.baseActivity == null ? "" : "(" + runningTaskInfo.baseActivity.getPackageName() + ")"));
                }
            }
            if (obj == null) {
                return;
            }
            this.Q.invoke(this.p, 6, obj, null);
            android.util.Log.w(a, "orphaned workbench tasks returned to fullscreen " + arrayList);
        } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e2) {
            android.util.Log.e(a, "orphaned workbench tasks not returned", e2);
        }
    }

    public static java.lang.String[] b(dev.duo.taskcore.i iVar) {
        java.lang.String[] strArr = new java.lang.String[4];
        dev.duo.taskcore.d s = iVar.s();
        int i2 = 0;
        if (s != null) {
            strArr[0] = s.a.b + ":" + s.a.h;
        }
        while (i2 < 3) {
            dev.duo.taskcore.d j2 = iVar.j(i2);
            i2++;
            strArr[i2] = j2 == null ? null : j2.a.b + ":" + j2.a.h;
        }
        return strArr;
    }

    @Override // dev.duo.taskcore.i.b
    public void b(long j2) throws dev.duo.taskcore.i.c {
        final int hashCode = android.os.Process.myUserHandle().hashCode();
        o().b();
        o().a(1, j2, new dev.duo.taskcore.h.a.c() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda43
            @Override // dev.duo.taskcore.h.a.c
            public final void a(android.os.Parcel parcel) {
                dev.duo.taskcore.j.b(hashCode, parcel);
            }
        }, null);
        this.x = j2;
        this.y.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(int i2, android.os.Parcel parcel) {
        parcel.writeInt(i2);
        parcel.writeInt(0);
    }

    @Override // dev.duo.taskcore.i.b
    public dev.duo.taskcore.d.c b(long j2, final dev.duo.taskcore.d dVar) throws dev.duo.taskcore.i.c {
        return (dev.duo.taskcore.d.c) o().a(2, j2, new dev.duo.taskcore.h.a.c() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda47
            @Override // dev.duo.taskcore.h.a.c
            public final void a(android.os.Parcel parcel) {
                dev.duo.taskcore.j.b(dev.duo.taskcore.d.this, parcel);
            }
        }, new dev.duo.taskcore.h.a.b() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda48
            @Override // dev.duo.taskcore.h.a.b
            public final java.lang.Object a(android.os.Parcel parcel) {
                return dev.duo.taskcore.d.c.a(parcel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(dev.duo.taskcore.d dVar, android.os.Parcel parcel) {
        parcel.writeInt(dVar.a.a);
        parcel.writeStrongBinder((android.os.IBinder) dVar.a.e);
        parcel.writeInt(dVar.a.b);
        parcel.writeInt(dVar.a.c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        java.util.List<java.lang.Integer> list = this.Z0;
        java.lang.Object obj = this.Y0;
        if (list == null || obj == null) {
            return;
        }
        this.Z0 = null;
        this.a1 = null;
        final long j2 = this.e1;
        if (j2 != 0) {
            final long j3 = this.f1;
            try {
                final android.os.IBinder d2 = d();
                f().post(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda40
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.taskcore.j.a(d2, j2, j3);
                    }
                });
            } catch (java.lang.IllegalAccessException | java.lang.RuntimeException e2) {
                android.util.Log.e(a, "workbench image clear failed", e2);
            }
            this.e1 = 0L;
        }
        try {
            this.b1.invoke(obj, null);
            android.util.Log.i(a, "recents group cleared " + list);
        } catch (java.lang.ReflectiveOperationException e3) {
            android.util.Log.e(a, "recents group not cleared " + list, e3);
        }
    }

    @Override // dev.duo.taskcore.i.b
    public void b(dev.duo.taskcore.d dVar, dev.duo.taskcore.i.a aVar) {
        try {
            android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.J.invoke(this.o, java.lang.Integer.valueOf(dVar.a.a));
            android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) this.K.invoke(this.o, java.lang.Integer.valueOf(dVar.a.a));
            if (runningTaskInfo != null && surfaceControl != null) {
                java.lang.Object invoke = this.b0.invoke(this.n0.get(runningTaskInfo), null);
                dev.duo.taskcore.d.b bVar = dVar.a;
                if (invoke == bVar.e) {
                    java.lang.Object obj = bVar.d;
                    java.lang.Object newInstance = this.I.newInstance(null);
                    this.U.invoke(newInstance, obj, 6);
                    this.V.invoke(newInstance, obj, new android.graphics.Rect(this.v.a));
                    java.lang.reflect.Method method = this.W;
                    java.lang.Boolean bool = java.lang.Boolean.FALSE;
                    method.invoke(newInstance, obj, bool);
                    java.lang.reflect.Method method2 = this.X;
                    java.lang.Boolean bool2 = java.lang.Boolean.TRUE;
                    method2.invoke(newInstance, obj, bool2);
                    this.a0.invoke(newInstance, obj, bool2);
                    android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                    boolean booleanValue = ((java.lang.Boolean) this.O.invoke(this.n, dVar.g, bool2, transaction, null, runningTaskInfo, surfaceControl, newInstance)).booleanValue();
                    this.Y.invoke(newInstance, obj, bool);
                    transaction.apply();
                    if (!booleanValue) {
                        aVar.a(false, "TaskView surface not ready in prepareOpenAnimation");
                        return;
                    }
                    java.util.ArrayList arrayList = new java.util.ArrayList();
                    arrayList.add(dVar);
                    b(this.Q.invoke(this.p, 6, newInstance, this.J0), new dev.duo.taskcore.j.d(false, arrayList, aVar));
                    return;
                }
            }
            aVar.a(false, "task changed before attach");
        } catch (java.lang.Throwable th) {
            android.util.Log.e(a, "attach " + dVar, th);
            aVar.a(false, java.lang.String.valueOf(th));
        }
    }

    private boolean c(java.lang.Object obj, android.view.SurfaceControl.Transaction transaction, android.view.SurfaceControl.Transaction transaction2, java.lang.Object obj2, int i2) throws java.lang.ReflectiveOperationException {
        android.view.SurfaceControl surfaceControl;
        dev.duo.taskcore.b bVar = this.v;
        java.lang.Object[] objArr = null;
        android.graphics.Rect rect = bVar == null ? null : bVar.a;
        for (java.lang.Object obj3 : (java.util.List) this.e0.invoke(obj, null)) {
            android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.f0.invoke(obj3, objArr);
            android.view.SurfaceControl surfaceControl2 = (android.view.SurfaceControl) this.g0.invoke(obj3, objArr);
            if (runningTaskInfo != null && surfaceControl2 != null) {
                if (surfaceControl2.isValid()) {
                    if (runningTaskInfo.taskId == i2) {
                        android.view.SurfaceControl surfaceControl3 = (android.view.SurfaceControl) this.K.invoke(this.o, java.lang.Integer.valueOf(i2));
                        java.util.Map<java.lang.Integer, android.view.SurfaceControl> map = this.Q0;
                        java.lang.Integer valueOf = java.lang.Integer.valueOf(i2);
                        if (surfaceControl3 != null && surfaceControl3.isValid()) {
                            surfaceControl2 = surfaceControl3;
                        }
                        map.put(valueOf, surfaceControl2);
                    } else {
                        java.util.ArrayList arrayList = new java.util.ArrayList(this.t0);
                        int size = arrayList.size();
                        int i3 = 0;
                        while (i3 < size) {
                            java.lang.Object obj4 = arrayList.get(i3);
                            i3++;
                            dev.duo.taskcore.d dVar = (dev.duo.taskcore.d) obj4;
                            if (dVar.e == dev.duo.taskcore.d.a.SURFACE_ATTACHED && dVar.a.a == runningTaskInfo.taskId && rect != null && (surfaceControl = (android.view.SurfaceControl) this.l0.get(dVar.g)) != null && surfaceControl.isValid()) {
                                android.view.SurfaceControl.Transaction[] transactionArr = {transaction, transaction2};
                                int i4 = 0;
                                while (i4 < 2) {
                                    android.view.SurfaceControl.Transaction transaction3 = transactionArr[i4];
                                    transaction3.reparent(surfaceControl2, surfaceControl).setPosition(surfaceControl2, 0.0f, 0.0f).setScale(surfaceControl2, 1.0f, 1.0f).setAlpha(surfaceControl2, 1.0f).setVisibility(surfaceControl2, true);
                                    dev.duo.taskcore.e.a(transaction3, surfaceControl2, rect.width(), rect.height());
                                    i4++;
                                    objArr = objArr;
                                }
                            }
                            objArr = objArr;
                        }
                    }
                }
            }
        }
        java.lang.Object[] objArr2 = objArr;
        b(transaction);
        b(transaction2);
        transaction.apply();
        java.util.concurrent.atomic.AtomicBoolean atomicBoolean = this.w1;
        if (atomicBoolean != null) {
            atomicBoolean.set(true);
        }
        this.h0.invoke(obj2, objArr2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, java.lang.reflect.Field field2, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        dev.duo.taskcore.j.b bVar = this.t;
        android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) chain.getArg(0);
        if (bVar != null && runningTaskInfo != null && this.n0.get(runningTaskInfo) != null) {
            bVar.a(runningTaskInfo.taskId, this.b0.invoke(this.n0.get(runningTaskInfo), null), ((java.lang.Integer) this.c0.invoke(runningTaskInfo, null)).intValue(), this.q0.getInt(runningTaskInfo));
        }
        if (runningTaskInfo != null) {
            a(runningTaskInfo);
        }
        if (bVar != null && runningTaskInfo != null && field.getBoolean(runningTaskInfo) && this.o0.getInt(runningTaskInfo) == 0) {
            java.util.List list = (java.util.List) field2.get(runningTaskInfo);
            android.os.IBinder iBinder = this.V0;
            android.os.IBinder iBinder2 = this.W0;
            if ((list == null || ((iBinder == null || !list.contains(iBinder)) && (iBinder2 == null || !list.contains(iBinder2)))) && runningTaskInfo.taskId != this.i1 && !this.Q0.containsKey(java.lang.Integer.valueOf(runningTaskInfo.taskId)) && ((java.lang.Integer) this.c0.invoke(runningTaskInfo, null)).intValue() != 5) {
                if (!this.u1.isEmpty() && !f(runningTaskInfo.taskId)) {
                    this.r1 = runningTaskInfo.taskId;
                    this.s1 = this.b0.invoke(this.n0.get(runningTaskInfo), null);
                    this.q.removeCallbacks(this.t1);
                    this.q.postDelayed(this.t1, j);
                    return proceed;
                }
                bVar.a(runningTaskInfo.taskId, this.b0.invoke(this.n0.get(runningTaskInfo), null));
            }
        }
        return proceed;
    }

    @Override // dev.duo.taskcore.i.b
    public void c(final dev.duo.taskcore.d dVar) {
        if (this.q != null) {
            this.q.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda41
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.j.this.g(dVar);
                }
            });
        }
        final java.lang.Object obj = dVar.f;
        this.m.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda42
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.j.this.a(obj, dVar);
            }
        });
    }

    @Override // dev.duo.taskcore.i.b
    public void b(java.util.List<dev.duo.taskcore.d> list, dev.duo.taskcore.d dVar, dev.duo.taskcore.i.a aVar) {
        a(list, dVar, false, aVar);
    }

    private void b(final java.lang.Object obj, final dev.duo.taskcore.j.d dVar) {
        if (obj == null) {
            dVar.b(false, "startTransition returned null");
        } else {
            this.z0.put(obj, dVar);
            this.q.postDelayed(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.j.this.a(obj, dVar);
                }
            }, g);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0062 A[Catch: RemoteException | LinkageError | RuntimeException -> 0x007c, all -> 0x00a4, TRY_LEAVE, TryCatch #0 {RemoteException | LinkageError | RuntimeException -> 0x007c, blocks: (B:12:0x0037, B:14:0x0062), top: B:11:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a7  */
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.os.IBinder r22, long r23, long r25, int[] r27, int r28, android.hardware.HardwareBuffer r29, android.graphics.ColorSpace r30) {
        /*
            r21 = this;
            r1 = r21
            java.lang.String r7 = "TaskCoreShell"
            android.graphics.ColorSpace$Named r0 = android.graphics.ColorSpace.Named.SRGB     // Catch: java.lang.Throwable -> L86 java.lang.LinkageError -> L8c java.lang.RuntimeException -> L90 android.os.RemoteException -> L94
            android.graphics.ColorSpace r0 = android.graphics.ColorSpace.get(r0)     // Catch: java.lang.Throwable -> L86 java.lang.LinkageError -> L8c java.lang.RuntimeException -> L90 android.os.RemoteException -> L94
            if (r30 == 0) goto L26
            int r2 = r30.getId()     // Catch: java.lang.Throwable -> L1c java.lang.Throwable -> L21
            int r3 = r0.getId()     // Catch: java.lang.Throwable -> L1c java.lang.Throwable -> L21
            if (r2 == r3) goto L17
            goto L26
        L17:
            r16 = r29
            r0 = r30
            goto L37
        L1c:
            r0 = move-exception
            r16 = r29
            goto La5
        L21:
            r0 = move-exception
            r16 = r29
            goto L99
        L26:
            if (r30 != 0) goto L2a
            r2 = r0
            goto L2c
        L2a:
            r2 = r30
        L2c:
            r3 = r29
            android.hardware.HardwareBuffer r2 = a(r3, r2)     // Catch: java.lang.Throwable -> L7e java.lang.LinkageError -> L80 java.lang.RuntimeException -> L82 android.os.RemoteException -> L84
            r3.close()     // Catch: java.lang.Throwable -> L7e java.lang.LinkageError -> L80 java.lang.RuntimeException -> L82 android.os.RemoteException -> L84
            r16 = r2
        L37:
            android.content.Context r8 = r1.s     // Catch: java.lang.Throwable -> L7c java.lang.Throwable -> La4
            int r17 = r0.getId()     // Catch: java.lang.Throwable -> L7c java.lang.Throwable -> La4
            int r18 = r16.getWidth()     // Catch: java.lang.Throwable -> L7c java.lang.Throwable -> La4
            int r19 = r16.getHeight()     // Catch: java.lang.Throwable -> L7c java.lang.Throwable -> La4
            dev.duo.taskcore.j$a r0 = new dev.duo.taskcore.j$a     // Catch: java.lang.Throwable -> L7c java.lang.Throwable -> La4
            android.os.Handler r2 = r1.q     // Catch: java.lang.Throwable -> L7c java.lang.Throwable -> La4
            r3 = r23
            r5 = r25
            r0.<init>(r2, r3, r5)     // Catch: java.lang.Throwable -> L7c java.lang.Throwable -> La4
            r9 = r22
            r10 = r23
            r12 = r25
            r14 = r27
            r15 = r28
            r20 = r0
            int r0 = dev.duo.workspaceprobe.WorkspaceHome.publish(r8, r9, r10, r12, r14, r15, r16, r17, r18, r19, r20)     // Catch: java.lang.Throwable -> L7c java.lang.Throwable -> La4
            if (r0 >= 0) goto L78
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7c java.lang.Throwable -> La4
            r1.<init>()     // Catch: java.lang.Throwable -> L7c java.lang.Throwable -> La4
            java.lang.String r2 = "workbench image publish rejected: "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L7c java.lang.Throwable -> La4
            java.lang.StringBuilder r0 = r1.append(r0)     // Catch: java.lang.Throwable -> L7c java.lang.Throwable -> La4
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L7c java.lang.Throwable -> La4
            android.util.Log.e(r7, r0)     // Catch: java.lang.Throwable -> L7c java.lang.Throwable -> La4
        L78:
            r16.close()
            return
        L7c:
            r0 = move-exception
            goto L99
        L7e:
            r0 = move-exception
            goto L89
        L80:
            r0 = move-exception
            goto L97
        L82:
            r0 = move-exception
            goto L97
        L84:
            r0 = move-exception
            goto L97
        L86:
            r0 = move-exception
            r3 = r29
        L89:
            r16 = r3
            goto La5
        L8c:
            r0 = move-exception
            r3 = r29
            goto L97
        L90:
            r0 = move-exception
            r3 = r29
            goto L97
        L94:
            r0 = move-exception
            r3 = r29
        L97:
            r16 = r3
        L99:
            java.lang.String r1 = "workbench image send failed"
            android.util.Log.e(r7, r1, r0)     // Catch: java.lang.Throwable -> La4
            if (r16 == 0) goto La3
            r16.close()
        La3:
            return
        La4:
            r0 = move-exception
        La5:
            if (r16 == 0) goto Laa
            r16.close()
        Laa:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.taskcore.j.a(android.os.IBinder, long, long, int[], int, android.hardware.HardwareBuffer, android.graphics.ColorSpace):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, java.lang.reflect.Field field, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) method.invoke(chain.getArg(1), null);
        java.lang.Object invoke = this.b0.invoke(this.n0.get(runningTaskInfo), null);
        java.util.Iterator<dev.duo.taskcore.d> it = this.t0.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            dev.duo.taskcore.d next = it.next();
            dev.duo.taskcore.d.b bVar = next.a;
            if (bVar.a == runningTaskInfo.taskId && bVar.e == invoke) {
                this.y0 = field.get(chain.getThisObject());
                this.x0.put((android.os.IBinder) chain.getArg(0), next);
                dev.duo.taskcore.j.b bVar2 = this.t;
                if (bVar2 != null) {
                    bVar2.a(next.b, runningTaskInfo.taskId, invoke);
                }
            }
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, java.lang.reflect.Method method2, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        dev.duo.taskcore.g gVar;
        final boolean z = false;
        final dev.duo.taskcore.d remove = this.x0.remove((android.os.IBinder) chain.getArg(0));
        if (remove != null && ((java.lang.Integer) method.invoke(this.y0, null)).intValue() == 4) {
            z = true;
        }
        android.view.SurfaceControl surfaceControl = z ? (android.view.SurfaceControl) method2.invoke(this.y0, null) : null;
        java.lang.Object proceed = chain.proceed();
        if (remove != null) {
            if (z && (gVar = this.u) != null) {
                gVar.b(surfaceControl);
            }
            final dev.duo.taskcore.j.b bVar = this.t;
            if (bVar != null) {
                this.q.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.taskcore.j.a(dev.duo.taskcore.j.b.this, remove, z);
                    }
                });
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(dev.duo.taskcore.j.b bVar, dev.duo.taskcore.d dVar, boolean z) {
        long j2 = dVar.b;
        dev.duo.taskcore.d.b bVar2 = dVar.a;
        bVar.a(j2, bVar2.a, bVar2.e, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
        return a(method, objArr);
    }

    private void a(java.lang.Class<?> cls, java.lang.Class<?> cls2, final java.lang.Class<?> cls3, final java.lang.Class<?> cls4) throws java.lang.ReflectiveOperationException {
        final java.lang.Class<?> cls5 = java.lang.Class.forName("com.android.wm.shell.recents.IRecentsAnimationRunner", false, this.l);
        java.lang.Class<?> declaringClass = this.h0.getDeclaringClass();
        final java.lang.reflect.Field declaredField = cls2.getDeclaredField("mTransition");
        final java.lang.reflect.Field declaredField2 = cls2.getDeclaredField("mListener");
        declaredField.setAccessible(true);
        declaredField2.setAccessible(true);
        this.k.hook(cls.getDeclaredMethod("startRecentsTransition", android.app.PendingIntent.class, android.content.Intent.class, android.os.Bundle.class, this.C, java.lang.Class.forName("android.app.IApplicationThread", false, this.l), cls5)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda4
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object k;
                k = dev.duo.taskcore.j.this.k(chain);
                return k;
            }
        });
        this.k.hook(cls2.getDeclaredMethod("start", cls3, android.view.SurfaceControl.Transaction.class, android.view.SurfaceControl.Transaction.class, declaringClass)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda5
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object a2;
                a2 = dev.duo.taskcore.j.this.a(declaredField, declaredField2, cls5, chain);
                return a2;
            }
        });
        final java.lang.Class<?> cls6 = java.lang.Class.forName("com.android.wm.shell.shared.TransitionUtil", false, this.l);
        java.lang.Class<?> cls7 = java.lang.Class.forName("android.view.RemoteAnimationTarget", false, this.l);
        final java.lang.reflect.Field[] fieldArr = new java.lang.reflect.Field[4];
        java.lang.String[] strArr = {"localBounds", "screenSpaceBounds", "startBounds", "clipRect"};
        for (int i2 = 0; i2 < 4; i2++) {
            java.lang.reflect.Field field = cls7.getField(strArr[i2]);
            fieldArr[i2] = field;
            field.setAccessible(true);
        }
        final java.lang.reflect.Field field2 = cls7.getField("position");
        final java.lang.reflect.Field field3 = cls7.getField("contentInsets");
        final java.lang.reflect.Field field4 = cls7.getField("windowConfiguration");
        field2.setAccessible(true);
        field3.setAccessible(true);
        field4.setAccessible(true);
        io.github.libxposed.api.XposedInterface xposedInterface = this.k;
        java.lang.Class cls8 = java.lang.Boolean.TYPE;
        xposedInterface.hook(cls6.getDeclaredMethod("newTarget", cls4, java.lang.Integer.TYPE, android.view.SurfaceControl.class, cls8)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda6
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object a2;
                a2 = dev.duo.taskcore.j.this.a(cls6, cls4, cls3, fieldArr, field2, field3, field4, chain);
                return a2;
            }
        });
        this.k.hook(cls2.getDeclaredMethod("checkOpeningTaskMatch", cls8, cls8)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda7
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object l;
                l = dev.duo.taskcore.j.this.l(chain);
                return l;
            }
        });
        this.k.hook(cls2.getDeclaredMethod("checkForceToHome", cls8)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda8
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object m;
                m = dev.duo.taskcore.j.this.m(chain);
                return m;
            }
        });
        this.k.hook(java.lang.Class.forName("com.android.wm.shell.transition.Transitions", false, this.l).getDeclaredMethod("onFinish", android.os.IBinder.class, this.C)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda9
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object n;
                n = dev.duo.taskcore.j.this.n(chain);
                return n;
            }
        });
    }

    public void b(final dev.duo.taskcore.d dVar, final dev.duo.taskcore.d[] dVarArr) {
        android.os.Handler handler = this.q;
        if (handler == null) {
            return;
        }
        handler.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda61
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.j.this.a(dVar, dVarArr);
            }
        });
    }

    public void b() {
        android.os.Handler handler = this.q;
        if (handler != null) {
            handler.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda64
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.j.this.c();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(java.lang.Object obj, android.view.SurfaceControl.Transaction transaction, android.view.SurfaceControl.Transaction transaction2, java.lang.Object obj2, int i2) throws java.lang.ReflectiveOperationException {
        boolean z;
        android.view.SurfaceControl surfaceControl;
        dev.duo.taskcore.b bVar = this.v;
        java.lang.Object[] objArr = null;
        android.graphics.Rect rect = bVar == null ? null : bVar.a;
        for (java.lang.Object obj3 : (java.util.List) this.e0.invoke(obj, null)) {
            android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.f0.invoke(obj3, objArr);
            android.view.SurfaceControl surfaceControl2 = (android.view.SurfaceControl) this.g0.invoke(obj3, objArr);
            if (runningTaskInfo != null && surfaceControl2 != null) {
                if (surfaceControl2.isValid()) {
                    int i3 = 0;
                    if (runningTaskInfo.taskId != i2) {
                        java.util.ArrayList arrayList = new java.util.ArrayList(this.t0);
                        int size = arrayList.size();
                        int i4 = 0;
                        while (i4 < size) {
                            java.lang.Object obj4 = arrayList.get(i4);
                            i4++;
                            dev.duo.taskcore.d dVar = (dev.duo.taskcore.d) obj4;
                            java.lang.Object[] objArr2 = objArr;
                            if (dVar.e == dev.duo.taskcore.d.a.SURFACE_ATTACHED && dVar.a.a == runningTaskInfo.taskId && rect != null && (surfaceControl = (android.view.SurfaceControl) this.l0.get(dVar.g)) != null && surfaceControl.isValid()) {
                                android.view.SurfaceControl.Transaction[] transactionArr = {transaction, transaction2};
                                int i5 = i3;
                                while (i5 < 2) {
                                    android.view.SurfaceControl.Transaction transaction3 = transactionArr[i5];
                                    android.graphics.Rect rect2 = rect;
                                    transaction3.reparent(surfaceControl2, surfaceControl).setPosition(surfaceControl2, 0.0f, 0.0f).setScale(surfaceControl2, 1.0f, 1.0f).setAlpha(surfaceControl2, 1.0f).setVisibility(surfaceControl2, true);
                                    dev.duo.taskcore.e.a(transaction3, surfaceControl2, rect2.width(), rect2.height());
                                    i5++;
                                    rect = rect2;
                                }
                            }
                            objArr = objArr2;
                            rect = rect;
                            i3 = 0;
                        }
                    } else {
                        transaction.setVisibility(surfaceControl2, false);
                        transaction2.setVisibility(surfaceControl2, false);
                    }
                }
            }
        }
        java.lang.Object[] objArr3 = objArr;
        transaction.apply();
        java.util.concurrent.atomic.AtomicBoolean atomicBoolean = this.w1;
        if (atomicBoolean != null) {
            z = true;
            atomicBoolean.set(true);
        } else {
            z = true;
        }
        this.h0.invoke(obj2, objArr3);
        return z;
    }

    private boolean b(android.view.SurfaceControl.Transaction transaction) {
        boolean z = false;
        if (this.Q0.isEmpty()) {
            return false;
        }
        dev.duo.taskcore.g gVar = this.u;
        dev.duo.taskcore.b bVar = this.v;
        android.graphics.Rect rect = bVar == null ? null : bVar.a;
        android.view.SurfaceControl t = gVar == null ? null : gVar.t();
        java.util.Iterator<java.util.Map.Entry<java.lang.Integer, android.view.SurfaceControl>> it = this.Q0.entrySet().iterator();
        while (it.hasNext()) {
            java.util.Map.Entry<java.lang.Integer, android.view.SurfaceControl> next = it.next();
            try {
                if (this.J.invoke(this.o, next.getKey()) == null) {
                    it.remove();
                } else {
                    android.view.SurfaceControl value = next.getValue();
                    if (value != null && value.isValid()) {
                        dev.duo.taskcore.j.b bVar2 = this.t;
                        if (bVar2 != null && bVar2.g() && t != null && t.isValid() && rect != null) {
                            transaction.reparent(value, t).setPosition(value, 0.0f, 0.0f).setScale(value, 1.0f, 1.0f).setAlpha(value, 1.0f).setLayer(value, h).setCrop(value, new android.graphics.Rect(rect)).setVisibility(value, true);
                            z = true;
                        } else {
                            android.view.SurfaceControl surfaceControl = this.r;
                            if (surfaceControl != null && surfaceControl.isValid()) {
                                transaction.reparent(value, surfaceControl).setCrop(value, null).setVisibility(value, true);
                            }
                            it.remove();
                            z = true;
                        }
                    }
                }
            } catch (java.lang.ReflectiveOperationException e2) {
                android.util.Log.e(a, "overlay task " + next.getKey() + " unreadable: kept, not moved", e2);
            }
        }
        return z;
    }

    private boolean b(android.view.SurfaceControl.Transaction transaction, dev.duo.taskcore.d dVar, android.app.ActivityManager.RunningTaskInfo runningTaskInfo) throws java.lang.ReflectiveOperationException {
        android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) dVar.a.g;
        android.view.SurfaceControl surfaceControl2 = this.r;
        if (surfaceControl == null || !surfaceControl.isValid() || surfaceControl2 == null || !surfaceControl2.isValid()) {
            return false;
        }
        android.graphics.Point point = (android.graphics.Point) this.r0.get(runningTaskInfo);
        transaction.reparent(surfaceControl, surfaceControl2).setScale(surfaceControl, 1.0f, 1.0f).setPosition(surfaceControl, point.x, point.y).setCrop(surfaceControl, null).setAlpha(surfaceControl, 1.0f);
        dev.duo.taskcore.e.a(transaction, surfaceControl, (android.graphics.Rect) null);
        transaction.setVisibility(surfaceControl, android.app.TaskInfo.class.getField("isVisible").getBoolean(runningTaskInfo));
        android.util.Log.i(a, dVar + " returned outside our transition: leash restored to the task area");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean b(java.lang.Object obj, android.view.SurfaceControl.Transaction transaction, android.view.SurfaceControl.Transaction transaction2, java.lang.Object obj2, java.lang.Integer num) throws java.lang.ReflectiveOperationException {
        return c(obj, transaction, transaction2, obj2, num.intValue());
    }

    @Override // dev.duo.taskcore.i.b
    public int b(int i2) {
        java.lang.Integer num = this.q1.get(java.lang.Integer.valueOf(i2));
        if (num == null) {
            return -1;
        }
        java.lang.String str = null;
        java.lang.String str2 = null;
        for (dev.duo.taskcore.d dVar : this.t0) {
            if (dVar.a.a == num.intValue()) {
                str2 = dVar.a.h;
            }
        }
        try {
            android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.J.invoke(this.o, java.lang.Integer.valueOf(i2));
            if (runningTaskInfo != null) {
                android.content.ComponentName componentName = runningTaskInfo.baseActivity;
                if (componentName != null) {
                    str = componentName.getPackageName();
                } else {
                    android.content.ComponentName componentName2 = runningTaskInfo.topActivity;
                    if (componentName2 != null) {
                        str = componentName2.getPackageName();
                    }
                }
            }
            if (str2 == null || !str2.equals(str)) {
                return -1;
            }
            return num.intValue();
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e(a, "task " + i2 + " unreadable: not treated as a child of " + num, e2);
            return -1;
        }
    }

    @Override // dev.duo.taskcore.i.b
    public boolean b(dev.duo.taskcore.d dVar) {
        this.w0 = dVar;
        dev.duo.taskcore.c cVar = this.x1;
        if (dVar != null && cVar != null && !cVar.a() && !cVar.b()) {
            try {
                java.lang.Object invoke = java.lang.Class.forName("android.app.ActivityTaskManager").getMethod("getService", null).invoke(null, null);
                invoke.getClass().getMethod("setFocusedTask", java.lang.Integer.TYPE).invoke(invoke, java.lang.Integer.valueOf(dVar.a.a));
                return true;
            } catch (java.lang.Throwable th) {
                android.util.Log.e(a, "setFocusedTask " + dVar + " failed", th);
                return false;
            }
        }
        android.util.Log.i(a, "focus for " + dVar + " left to the system (" + cVar + ")");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(java.util.concurrent.atomic.AtomicBoolean atomicBoolean, android.os.Handler handler, final dev.duo.taskcore.i.a aVar, final boolean z, final java.lang.String str) {
        if (atomicBoolean.compareAndSet(false, true)) {
            handler.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda57
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.i.a.this.a(z, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.Class cls, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        final dev.duo.taskcore.j.c cVar = this.T0;
        if (cVar != null && cVar.d == field.get(chain.getThisObject())) {
            cVar.f = chain.getThisObject();
            cVar.g = chain.getArg(0);
            cVar.h = (android.view.SurfaceControl.Transaction) chain.getArg(1);
            final java.lang.Object obj = field2.get(cVar.f);
            field2.set(cVar.f, java.lang.reflect.Proxy.newProxyInstance(this.l, new java.lang.Class[]{cls}, new java.lang.reflect.InvocationHandler() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda16
                @Override // java.lang.reflect.InvocationHandler
                public final java.lang.Object invoke(java.lang.Object obj2, java.lang.reflect.Method method, java.lang.Object[] objArr) {
                    java.lang.Object a2;
                    a2 = dev.duo.taskcore.j.a(dev.duo.taskcore.j.c.this, obj, obj2, method, objArr);
                    return a2;
                }
            }));
            this.U0 = cVar;
            try {
                return chain.proceed();
            } finally {
                this.U0 = null;
                cVar.h = null;
            }
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(dev.duo.taskcore.j.c cVar, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
        if ((method.getName().equals("onAnimationStart") || method.getName().equals("onTasksAppeared")) && cVar.i != null) {
            boolean equals = method.getName().equals("onAnimationStart");
            java.lang.Object obj3 = objArr[equals ? 1 : 0];
            java.util.ArrayList arrayList = new java.util.ArrayList();
            for (int i2 = 0; i2 < java.lang.reflect.Array.getLength(obj3); i2++) {
                java.lang.Object obj4 = java.lang.reflect.Array.get(obj3, i2);
                int i3 = obj4.getClass().getField("taskId").getInt(obj4);
                java.util.Iterator<dev.duo.taskcore.d> it = cVar.c.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (it.next().a.a == i3) {
                        if (i3 != cVar.b.a.a) {
                        }
                    }
                }
                arrayList.add(obj4);
            }
            java.lang.Object newInstance = java.lang.reflect.Array.newInstance(obj3.getClass().getComponentType(), arrayList.size());
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                java.lang.reflect.Array.set(newInstance, i4, arrayList.get(i4));
            }
            objArr[equals ? 1 : 0] = newInstance;
        }
        try {
            return method.invoke(obj, objArr);
        } catch (java.lang.reflect.InvocationTargetException e2) {
            throw e2.getCause();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.Class cls, java.lang.Class cls2, java.lang.Class cls3, java.lang.reflect.Field[] fieldArr, java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.reflect.Field field3, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        dev.duo.taskcore.d dVar;
        java.lang.Object proceed = chain.proceed();
        dev.duo.taskcore.j.c cVar = this.U0;
        if (cVar != null) {
            android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.f0.invoke(chain.getArg(0), null);
            if (runningTaskInfo != null) {
                java.util.Iterator<dev.duo.taskcore.d> it = cVar.c.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        dVar = null;
                        break;
                    }
                    dVar = it.next();
                    if (dVar.e == dev.duo.taskcore.d.a.SURFACE_ATTACHED) {
                        dev.duo.taskcore.d.b bVar = dVar.a;
                        if (bVar.a == runningTaskInfo.taskId && bVar.e == this.b0.invoke(this.n0.get(runningTaskInfo), null)) {
                            break;
                        }
                    }
                }
                if (dVar != null) {
                    android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) this.g0.invoke(chain.getArg(0), null);
                    if (dVar != cVar.b || !((java.lang.Boolean) android.view.SurfaceControl.class.getMethod("isSameSurface", android.view.SurfaceControl.class).invoke(chain.getArg(2), surfaceControl)).booleanValue()) {
                        a(cVar, cVar.h);
                        if (dVar == cVar.b) {
                            cVar.i = (android.view.SurfaceControl) chain.getArg(2);
                            java.lang.Integer num = (java.lang.Integer) cls.getMethod("rootIndexFor", cls2, cls3).invoke(null, chain.getArg(0), cVar.g);
                            num.intValue();
                            java.lang.Object invoke = cls3.getMethod("getRoot", java.lang.Integer.TYPE).invoke(cVar.g, num);
                            android.graphics.Point point = (android.graphics.Point) invoke.getClass().getMethod("getOffset", null).invoke(invoke, null);
                            cVar.h.reparent(cVar.a.t(), cVar.i).setPosition(cVar.a.t(), 0.0f, 0.0f).setLayer(cVar.a.t(), 0).setVisibility(cVar.a.t(), true).setPosition(cVar.i, -point.x, -point.y).setCrop(cVar.i, null).setAlpha(cVar.i, 1.0f);
                            android.graphics.Rect rect = this.v.b;
                            for (java.lang.reflect.Field field4 : fieldArr) {
                                field4.set(proceed, new android.graphics.Rect(rect));
                            }
                            field.set(proceed, new android.graphics.Point(rect.left, rect.top));
                            field2.set(proceed, new android.graphics.Rect());
                            java.lang.Object obj = field3.get(proceed);
                            java.lang.Object newInstance = obj.getClass().getConstructor(null).newInstance(null);
                            obj.getClass().getMethod("setTo", obj.getClass()).invoke(newInstance, obj);
                            obj.getClass().getMethod("setBounds", android.graphics.Rect.class).invoke(newInstance, new android.graphics.Rect(rect));
                            obj.getClass().getMethod("setAppBounds", android.graphics.Rect.class).invoke(newInstance, new android.graphics.Rect(rect));
                            field3.set(proceed, newInstance);
                            android.util.Log.i(a, "whole workbench animation target " + runningTaskInfo.taskId + " " + rect);
                        }
                    } else {
                        android.util.Log.e(a, "whole workbench needs a separate animation leash; keeping native target");
                        return proceed;
                    }
                }
            }
        }
        return proceed;
    }

    private void a(dev.duo.taskcore.j.c cVar, android.view.SurfaceControl.Transaction transaction) throws java.lang.ReflectiveOperationException {
        android.app.ActivityManager.RunningTaskInfo runningTaskInfo;
        for (dev.duo.taskcore.d dVar : cVar.c) {
            if (dVar.e == dev.duo.taskcore.d.a.SURFACE_ATTACHED && (runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.J.invoke(this.o, java.lang.Integer.valueOf(dVar.a.a))) != null && this.q0.getInt(runningTaskInfo) == -1 && this.b0.invoke(this.n0.get(runningTaskInfo), null) == dVar.a.e && this.p0.getInt(runningTaskInfo) == dVar.a.b && this.o0.getInt(runningTaskInfo) == dVar.a.c) {
                a(transaction, dVar, runningTaskInfo);
            }
        }
    }

    private void a(android.view.SurfaceControl.Transaction transaction) throws java.lang.ReflectiveOperationException {
        android.view.SurfaceControl surfaceControl;
        dev.duo.taskcore.j.c cVar = this.T0;
        if (cVar == null || !cVar.k || transaction == null) {
            return;
        }
        if (cVar.j) {
            a(cVar, transaction);
        }
        cVar.a.a(transaction, this.r, java.lang.Boolean.valueOf(cVar.j));
        if (cVar.l && (surfaceControl = cVar.i) != null && surfaceControl.isValid()) {
            transaction.reparent(cVar.i, null);
        }
    }

    private void a(android.os.IBinder iBinder, java.lang.Object obj, android.view.SurfaceControl.Transaction transaction, android.view.SurfaceControl.Transaction transaction2) {
        android.view.SurfaceControl i2;
        if (transaction2 != null) {
            this.M0.put(iBinder, transaction2);
        }
        dev.duo.taskcore.j.b bVar = this.t;
        if (bVar == null || transaction == null) {
            return;
        }
        try {
            if (((java.lang.Boolean) this.S0.invoke(obj, null)).booleanValue() && (i2 = bVar.i()) != null && i2.isValid()) {
                this.P0 = iBinder;
                transaction.setVisibility(i2, true);
                android.util.Log.i(a, "keyguard going away: workbench root shown in the same transition");
            }
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e(a, "keyguard flag unreadable: unlock falls back to the shade signal", e2);
        }
    }

    private void a(android.view.SurfaceControl.Transaction transaction, boolean z) {
        android.app.ActivityManager.RunningTaskInfo runningTaskInfo;
        boolean z2;
        if (this.t0.isEmpty() && this.Q0.isEmpty()) {
            return;
        }
        dev.duo.taskcore.b bVar = this.v;
        android.graphics.Rect rect = bVar == null ? null : bVar.a;
        if (rect == null) {
            return;
        }
        try {
            android.view.SurfaceControl.Transaction transaction2 = new android.view.SurfaceControl.Transaction();
            android.view.SurfaceControl.Transaction transaction3 = transaction != null ? transaction : transaction2;
            try {
                java.util.ArrayList arrayList = new java.util.ArrayList(this.t0);
                int size = arrayList.size();
                int i2 = 0;
                boolean z3 = false;
                while (i2 < size) {
                    java.lang.Object obj = arrayList.get(i2);
                    i2++;
                    dev.duo.taskcore.d dVar = (dev.duo.taskcore.d) obj;
                    if (dVar.e == dev.duo.taskcore.d.a.SURFACE_ATTACHED && (runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.J.invoke(this.o, java.lang.Integer.valueOf(dVar.a.a))) != null && this.b0.invoke(this.n0.get(runningTaskInfo), null) == dVar.a.e && ((java.lang.Integer) this.c0.invoke(runningTaskInfo, null)).intValue() == 6 && this.q0.getInt(runningTaskInfo) == -1) {
                        android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) dVar.a.g;
                        android.view.SurfaceControl surfaceControl2 = (android.view.SurfaceControl) this.l0.get(dVar.g);
                        if (surfaceControl != null && surfaceControl.isValid() && surfaceControl2 != null && surfaceControl2.isValid()) {
                            android.view.SurfaceControl.Transaction alpha = transaction3.reparent(surfaceControl, surfaceControl2).setPosition(surfaceControl, 0.0f, 0.0f).setScale(surfaceControl, 1.0f, 1.0f).setAlpha(surfaceControl, 1.0f);
                            if (!z && !android.app.TaskInfo.class.getField("isVisible").getBoolean(runningTaskInfo)) {
                                z2 = false;
                                alpha.setVisibility(surfaceControl, z2);
                                dev.duo.taskcore.e.a(transaction3, surfaceControl, rect.width(), rect.height());
                                z3 = true;
                            }
                            z2 = true;
                            alpha.setVisibility(surfaceControl, z2);
                            dev.duo.taskcore.e.a(transaction3, surfaceControl, rect.width(), rect.height());
                            z3 = true;
                        }
                    }
                }
                if ((b(transaction3) | z3) && transaction == null) {
                    transaction2.apply();
                }
                transaction2.close();
            } finally {
            }
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e(a, "reclaim members failed", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object g(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        android.view.SurfaceControl.Transaction transaction = (android.view.SurfaceControl.Transaction) chain.proceed();
        if (transaction != null) {
            c(transaction);
            a(transaction);
        }
        return transaction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(int i2) {
        if (this.i1 != i2 || this.j1) {
            return;
        }
        if (j(i2)) {
            android.util.Log.w(a, "task " + i2 + " never appeared: not adopted");
            a(i2);
        } else {
            this.i1 = -1;
            android.util.Log.i(a, "task " + i2 + " ended before it appeared (trampoline): nothing to adopt");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, java.lang.reflect.Method method2, java.lang.reflect.Method method3, java.lang.reflect.Method method4, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        dev.duo.taskcore.j.f fVar = this.z.get();
        long j2 = this.x;
        if (fVar != null && fVar.a != null && j2 != 0) {
            android.os.IBinder iBinder = (android.os.IBinder) method.invoke(chain.getArg(1), null);
            if (iBinder != method.invoke(method2.invoke(fVar.a, null), null)) {
                return chain.proceed();
            }
            android.os.Bundle bundle = (android.os.Bundle) chain.getArg(8);
            android.os.Bundle bundle2 = bundle == null ? new android.os.Bundle() : new android.os.Bundle(bundle);
            java.lang.Object invoke = method3.invoke(null, bundle);
            android.os.IBinder iBinder2 = invoke == null ? null : (android.os.IBinder) method4.invoke(invoke, null);
            android.os.Binder binder = new android.os.Binder();
            try {
                this.w.a(j2, binder, iBinder, iBinder2, fVar.b);
                bundle2.putBinder(dev.duo.taskcore.h.x, binder);
                java.lang.Object[] array = chain.getArgs().toArray();
                array[8] = bundle2;
                try {
                    java.lang.Object proceed = chain.proceed(array);
                    try {
                        this.w.a(j2, binder);
                        return proceed;
                    } catch (dev.duo.taskcore.i.c e2) {
                        android.util.Log.e(a, "notification source cleanup refused", e2);
                        return proceed;
                    }
                } finally {
                }
            } catch (dev.duo.taskcore.i.c e3) {
                android.util.Log.e(a, "notification source refused", e3);
                this.q.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.taskcore.j.this.a(e3);
                    }
                });
                return chain.proceed();
            }
        } else {
            return chain.proceed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(dev.duo.taskcore.d dVar) {
        this.t0.remove(dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.taskcore.i.c cVar) {
        dev.duo.taskcore.j.b bVar = this.t;
        if (bVar != null) {
            bVar.b("notification source refused: " + cVar.getMessage());
        }
    }

    public void a(android.content.Context context) {
        this.s = context;
        try {
            dev.duo.taskcore.h.a a2 = dev.duo.taskcore.h.a.a();
            this.w = a2;
            a2.a(new java.util.concurrent.Executor() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda2
                @Override // java.util.concurrent.Executor
                public final void execute(java.lang.Runnable runnable) {
                    dev.duo.taskcore.j.this.a(runnable);
                }
            }, new java.util.function.Consumer() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda3
                @Override // java.util.function.Consumer
                public final void accept(java.lang.Object obj) {
                    dev.duo.taskcore.j.this.b((dev.duo.taskcore.h.b) obj);
                }
            });
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e(a, "WMS binder unavailable", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.Runnable runnable) {
        this.q.post(runnable);
    }

    public void a(dev.duo.taskcore.j.b bVar, android.graphics.Rect rect, boolean z) {
        this.t = bVar;
        this.v = new dev.duo.taskcore.b(rect, z);
        this.u = new dev.duo.taskcore.g(this.s, this.r, this.v);
        this.q.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda62
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.j.this.j();
            }
        });
        final android.graphics.Rect rect2 = new android.graphics.Rect(this.v.a);
        this.q.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda63
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.j.this.a(rect2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.graphics.Rect rect) {
        if (this.t0.isEmpty()) {
            b(rect);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.util.Set set) {
        if (this.t0.isEmpty()) {
            java.util.Iterator it = set.iterator();
            while (it.hasNext()) {
                b((android.graphics.Rect) it.next());
            }
        }
    }

    public android.os.IBinder a(android.content.Intent intent) throws java.lang.ReflectiveOperationException {
        android.os.Binder binder = new android.os.Binder();
        android.app.ActivityOptions makeBasic = android.app.ActivityOptions.makeBasic();
        android.app.ActivityOptions.class.getMethod("setLaunchCookie", android.os.IBinder.class).invoke(makeBasic, binder);
        this.V0 = binder;
        this.s.startActivity(intent.addFlags(268435456), makeBasic.toBundle());
        return binder;
    }

    public void a(android.os.IBinder iBinder) {
        if (this.V0 == iBinder) {
            this.V0 = null;
        }
        if (this.W0 == iBinder) {
            int i2 = this.X0;
            this.W0 = null;
            this.X0 = -1;
            if (i2 >= 0) {
                i(i2);
            }
        }
    }

    public static int[] a(android.content.Context context, java.util.Set<java.lang.String> set) {
        java.util.List<android.app.ActivityManager.RunningTaskInfo> runningTasks = ((android.app.ActivityManager) context.getSystemService(android.app.ActivityManager.class)).getRunningTasks(12);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        try {
            for (android.app.ActivityManager.RunningTaskInfo runningTaskInfo : runningTasks) {
                if (runningTaskInfo.getClass().getField("displayId").getInt(runningTaskInfo) == 0 && ((java.lang.Integer) android.app.TaskInfo.class.getMethod("getWindowingMode", null).invoke(runningTaskInfo, null)).intValue() == 1 && ((java.lang.Integer) android.app.TaskInfo.class.getMethod("getActivityType", null).invoke(runningTaskInfo, null)).intValue() == 1) {
                    android.content.ComponentName componentName = runningTaskInfo.baseActivity;
                    java.lang.String packageName = componentName == null ? null : componentName.getPackageName();
                    if (packageName != null && !set.contains(packageName) && !"com.android.systemui".equals(packageName)) {
                        if (arrayList.isEmpty() && !runningTaskInfo.getClass().getField("isVisible").getBoolean(runningTaskInfo)) {
                            return null;
                        }
                        arrayList.add(java.lang.Integer.valueOf(runningTaskInfo.taskId));
                        if (arrayList.size() == 4) {
                            break;
                        }
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            int size = arrayList.size();
            int[] iArr = new int[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = ((java.lang.Integer) arrayList.get(i2)).intValue();
            }
            return iArr;
        } catch (java.lang.ReflectiveOperationException e2) {
            android.util.Log.e(a, "task info unreadable", e2);
            return null;
        }
    }

    @Override // dev.duo.taskcore.i.b
    public dev.duo.taskcore.b a() {
        return this.v;
    }

    @Override // dev.duo.taskcore.i.b
    public void a(long j2, final int i2, dev.duo.taskcore.d dVar, dev.duo.taskcore.d[] dVarArr) throws dev.duo.taskcore.i.c {
        o().a(3, j2, new dev.duo.taskcore.h.a.c() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda67
            @Override // dev.duo.taskcore.h.a.c
            public final void a(android.os.Parcel parcel) {
                parcel.writeInt(i2);
            }
        }, null);
        if (this.w.e != i2) {
            throw new dev.duo.taskcore.i.c("layout revision " + this.w.e + " != " + i2);
        }
    }

    @Override // dev.duo.taskcore.i.b
    public void a(long j2, final java.lang.String str) {
        try {
            o().a(4, j2, new dev.duo.taskcore.h.a.c() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda0
                @Override // dev.duo.taskcore.h.a.c
                public final void a(android.os.Parcel parcel) {
                    parcel.writeString(str);
                }
            }, null);
        } catch (dev.duo.taskcore.i.c e2) {
            android.util.Log.w(a, "begin return not published: " + e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(dev.duo.taskcore.d dVar, android.os.Parcel parcel) {
        dev.duo.taskcore.d.b bVar = dVar.a;
        dev.duo.taskcore.h.a(parcel, bVar.a, (android.os.IBinder) bVar.e);
    }

    @Override // dev.duo.taskcore.i.b
    public void a(long j2, final dev.duo.taskcore.d dVar) throws dev.duo.taskcore.i.c {
        o().a(8, j2, new dev.duo.taskcore.h.a.c() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda1
            @Override // dev.duo.taskcore.h.a.c
            public final void a(android.os.Parcel parcel) {
                dev.duo.taskcore.j.a(dev.duo.taskcore.d.this, parcel);
            }
        }, null);
    }

    @Override // dev.duo.taskcore.i.b
    public java.lang.String a(long j2) {
        try {
            o().a(5, j2, null, null);
            this.x = 0L;
            this.y.clear();
            java.util.ArrayList arrayList = new java.util.ArrayList(this.L0);
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                java.lang.Object obj = arrayList.get(i2);
                i2++;
                i(((java.lang.Integer) obj).intValue());
            }
            this.K0.clear();
            return null;
        } catch (dev.duo.taskcore.i.c e2) {
            return e2.getMessage();
        }
    }

    @Override // dev.duo.taskcore.i.b
    public void a(final dev.duo.taskcore.d dVar, final dev.duo.taskcore.i.a aVar) {
        final android.os.Handler handler = this.q;
        final java.util.concurrent.atomic.AtomicBoolean atomicBoolean = new java.util.concurrent.atomic.AtomicBoolean();
        final dev.duo.taskcore.i.a aVar2 = new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda70
            @Override // dev.duo.taskcore.i.a
            public final void a(boolean z, java.lang.String str) {
                dev.duo.taskcore.j.a(atomicBoolean, handler, aVar, z, str);
            }
        };
        this.m.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda71
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.j.this.a(dVar, aVar2, handler);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(java.util.concurrent.atomic.AtomicBoolean atomicBoolean, android.os.Handler handler, final dev.duo.taskcore.i.a aVar, final boolean z, final java.lang.String str) {
        if (atomicBoolean.compareAndSet(false, true)) {
            handler.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda59
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.i.a.this.a(z, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final dev.duo.taskcore.d dVar, final dev.duo.taskcore.i.a aVar, final android.os.Handler handler) {
        try {
            java.lang.Object newInstance = this.G.newInstance(this.s, this.o, this.n);
            java.lang.Object newInstance2 = this.H.newInstance(this.s, this.n, newInstance);
            dVar.g = newInstance;
            dVar.f = newInstance2;
            this.s0.put(newInstance2, new android.graphics.Rect(this.v.a));
            java.lang.Object newProxyInstance = java.lang.reflect.Proxy.newProxyInstance(this.l, new java.lang.Class[]{this.E}, new java.lang.reflect.InvocationHandler() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda65
                @Override // java.lang.reflect.InvocationHandler
                public final java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) {
                    java.lang.Object a2;
                    a2 = dev.duo.taskcore.j.this.a(aVar, handler, dVar, obj, method, objArr);
                    return a2;
                }
            });
            java.lang.reflect.Method method = this.S;
            android.os.Handler handler2 = this.m;
            java.util.Objects.requireNonNull(handler2);
            method.invoke(newInstance2, new dev.duo.fold.g$b$$ExternalSyntheticLambda1(handler2), newProxyInstance);
            this.u.a(dVar, (android.view.View) newInstance2);
            this.m.postDelayed(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda66
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.i.a.this.a(false, "surface not created in 3000ms");
                }
            }, f);
        } catch (java.lang.Throwable th) {
            android.util.Log.e(a, "create host " + dVar, th);
            aVar.a(false, java.lang.String.valueOf(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public /* synthetic */ java.lang.Object a(dev.duo.taskcore.i.a aVar, android.os.Handler handler, dev.duo.taskcore.d dVar, java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
        char c2;
        java.lang.String name = method.getName();
        name.getClass();
        switch (name.hashCode()) {
            case -1776922004:
                if (name.equals("toString")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1756535783:
                if (name.equals("onTaskRemovalStarted")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1295482945:
                if (name.equals("equals")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 147696667:
                if (name.equals("hashCode")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1713123189:
                if (name.equals("onInitialized")) {
                    c2 = 4;
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
                return "TaskCoreListener#" + dVar.a.a;
            case 1:
                final int intValue = ((java.lang.Integer) objArr[0]).intValue();
                final dev.duo.taskcore.j.b bVar = this.t;
                if (bVar != null) {
                    handler.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda50
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.taskcore.j.b.this.b(intValue);
                        }
                    });
                    return null;
                }
                return null;
            case 2:
                return java.lang.Boolean.valueOf(obj == objArr[0]);
            case 3:
                return java.lang.Integer.valueOf(java.lang.System.identityHashCode(obj));
            case 4:
                aVar.a(true, "initialized");
                return null;
            default:
                return null;
        }
    }

    @Override // dev.duo.taskcore.i.b
    public void a(dev.duo.taskcore.d dVar) throws dev.duo.taskcore.i.c {
        try {
            this.M.invoke(this.o, dVar.g, java.lang.Integer.valueOf(dVar.a.a));
            try {
                android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.J.invoke(this.o, java.lang.Integer.valueOf(dVar.a.a));
                java.lang.Object invoke = runningTaskInfo == null ? null : this.L.invoke(this.o, runningTaskInfo);
                java.lang.Object obj = dVar.g;
                if (invoke != obj) {
                    throw new dev.duo.taskcore.i.c("owner not transferred (owner now " + (invoke != null ? invoke.getClass().getName() : null) + ")", !(invoke != null && invoke.getClass().getName().equals(dVar.a.i)));
                }
                try {
                    android.app.ActivityManager.RunningTaskInfo runningTaskInfo2 = (android.app.ActivityManager.RunningTaskInfo) this.R.invoke(obj, null);
                    if (runningTaskInfo2 == null || this.b0.invoke(this.n0.get(runningTaskInfo2), null) != dVar.a.e) {
                        throw new dev.duo.taskcore.i.c("pending info does not match task token", true);
                    }
                } catch (java.lang.ReflectiveOperationException e2) {
                    throw new dev.duo.taskcore.i.c("owner check: " + e2, true);
                }
            } catch (java.lang.ReflectiveOperationException e3) {
                throw new dev.duo.taskcore.i.c("owner read: " + e3, true);
            }
        } catch (java.lang.reflect.InvocationTargetException e4) {
            if (!(e4.getCause() instanceof java.lang.IllegalArgumentException)) {
                throw new dev.duo.taskcore.i.c("addListenerForTaskId: " + e4.getCause(), true);
            }
            throw new dev.duo.taskcore.i.c("addListenerForTaskId: " + e4.getCause());
        } catch (java.lang.ReflectiveOperationException e5) {
            throw new dev.duo.taskcore.i.c("addListenerForTaskId: " + e5);
        }
    }

    @Override // dev.duo.taskcore.i.b
    public void a(java.util.List<dev.duo.taskcore.d> list, dev.duo.taskcore.d dVar, dev.duo.taskcore.i.a aVar) {
        a(list, dVar, true, aVar);
    }

    private void a(java.util.List<dev.duo.taskcore.d> list, dev.duo.taskcore.d dVar, boolean z, dev.duo.taskcore.i.a aVar) {
        try {
            java.lang.Object newInstance = this.I.newInstance(null);
            java.util.ArrayList arrayList = new java.util.ArrayList();
            for (dev.duo.taskcore.d dVar2 : list) {
                android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.J.invoke(this.o, java.lang.Integer.valueOf(dVar2.a.a));
                if (runningTaskInfo != null && this.b0.invoke(this.n0.get(runningTaskInfo), null) == dVar2.a.e) {
                    java.lang.Object invoke = this.L.invoke(this.o, runningTaskInfo);
                    int intValue = ((java.lang.Integer) this.c0.invoke(runningTaskInfo, null)).intValue();
                    if (intValue == 6 && this.q0.getInt(runningTaskInfo) == -1 && this.o0.getInt(runningTaskInfo) == dVar2.a.c) {
                        int i2 = this.p0.getInt(runningTaskInfo);
                        dev.duo.taskcore.d.b bVar = dVar2.a;
                        if (i2 == bVar.b && invoke == dVar2.g) {
                            java.lang.Object obj = bVar.d;
                            dev.duo.taskcore.d.c cVar = dVar2.d;
                            this.U.invoke(newInstance, obj, java.lang.Integer.valueOf(cVar.a));
                            this.V.invoke(newInstance, obj, cVar.b == null ? new android.graphics.Rect() : new android.graphics.Rect(cVar.b));
                            this.X.invoke(newInstance, obj, java.lang.Boolean.valueOf(cVar.d));
                            this.W.invoke(newInstance, obj, java.lang.Boolean.valueOf(cVar.e));
                            this.Y.invoke(newInstance, obj, java.lang.Boolean.valueOf(cVar.f));
                            this.Z.invoke(newInstance, obj, java.lang.Boolean.valueOf(cVar.c));
                            if (dVar2 != dVar && !z) {
                                this.a0.invoke(newInstance, obj, java.lang.Boolean.FALSE);
                            }
                            arrayList.add(dVar2);
                        }
                    }
                    if (invoke == dVar2.g && a(dVar2, runningTaskInfo)) {
                        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                        try {
                            if (b(transaction, dVar2, runningTaskInfo)) {
                                transaction.apply();
                            }
                            transaction.close();
                        } finally {
                        }
                    }
                    dVar2.j = true;
                    android.util.Log.w(a, dVar2 + " changed by the system (mode " + intValue + ", parent " + this.q0.getInt(runningTaskInfo) + ", display " + this.o0.getInt(runningTaskInfo) + ", owner " + (invoke == null ? null : invoke.getClass().getName()) + "): not overwritten");
                }
            }
            if (dVar != null && arrayList.contains(dVar)) {
                this.a0.invoke(newInstance, dVar.a.d, java.lang.Boolean.TRUE);
            }
            if (arrayList.isEmpty()) {
                aVar.a(true, "nothing left under this lease to give back");
            } else {
                b(this.Q.invoke(this.p, 6, newInstance, this.J0), new dev.duo.taskcore.j.d(true, arrayList, aVar));
            }
        } catch (java.lang.Throwable th) {
            android.util.Log.e(a, "give back " + list, th);
            aVar.a(false, java.lang.String.valueOf(th));
        }
    }

    private void a(java.lang.Object obj) throws java.lang.ReflectiveOperationException {
        dev.duo.taskcore.d dVar = this.w0;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (dev.duo.taskcore.d dVar2 : this.t0) {
            if (dVar2.e == dev.duo.taskcore.d.a.SURFACE_ATTACHED && dVar2 != dVar) {
                arrayList.add(dVar2);
            }
        }
        if (dVar != null && this.t0.contains(dVar) && dVar.e == dev.duo.taskcore.d.a.SURFACE_ATTACHED) {
            arrayList.add(dVar);
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            java.lang.Object obj2 = arrayList.get(i2);
            i2++;
            dev.duo.taskcore.d dVar3 = (dev.duo.taskcore.d) obj2;
            android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.J.invoke(this.o, java.lang.Integer.valueOf(dVar3.a.a));
            if (runningTaskInfo != null && this.b0.invoke(this.n0.get(runningTaskInfo), null) == dVar3.a.e && ((java.lang.Integer) this.c0.invoke(runningTaskInfo, null)).intValue() == 6 && this.q0.getInt(runningTaskInfo) == -1) {
                this.a0.invoke(obj, dVar3.a.d, java.lang.Boolean.TRUE);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.Object obj, dev.duo.taskcore.j.d dVar) {
        if (this.z0.get(obj) == dVar) {
            dVar.a("transition not ready in 5000ms");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private java.lang.Object a(java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
        char c2;
        java.lang.String name = method.getName();
        name.getClass();
        switch (name.hashCode()) {
            case -1776922004:
                if (name.equals("toString")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1436557156:
                if (name.equals("onTransitionConsumed")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1295482945:
                if (name.equals("equals")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1252600276:
                if (name.equals("mergeAnimation")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 147696667:
                if (name.equals("hashCode")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 399571913:
                if (name.equals("takeOverAnimation")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 764167490:
                if (name.equals("startAnimation")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 1673289543:
                if (name.equals("handleRequest")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 1686304659:
                if (name.equals("handleRequestOnly")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case 1879460237:
                if (name.equals("canHandleTransition")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case 1999276837:
                if (name.equals("getTransitionType")) {
                    c2 = '\n';
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
                return "TaskCoreTransitionHandler";
            case 1:
                this.K0.remove(objArr[0]);
                this.R0.remove(objArr[0]);
                this.v1.remove(objArr[0]);
                if (this.u1.remove(objArr[0])) {
                    a(false);
                }
                dev.duo.taskcore.j.d remove = this.z0.remove(objArr[0]);
                if (remove == null) {
                    remove = this.A0.remove(objArr[0]);
                }
                if (remove != null) {
                    java.lang.Object obj = remove.d;
                    if (obj != null) {
                        this.I0.invoke(obj, objArr[0], objArr[1], objArr[2]);
                        dev.duo.taskcore.j.c cVar = this.T0;
                        if (cVar != null && cVar.l && cVar.d == objArr[0]) {
                            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                            try {
                                java.lang.Object obj2 = objArr[2];
                                android.view.SurfaceControl.Transaction transaction2 = obj2 == null ? transaction : (android.view.SurfaceControl.Transaction) obj2;
                                cVar.a.a(transaction2, this.r, null);
                                transaction2.reparent(cVar.i, null);
                                if (objArr[2] == null) {
                                    transaction.apply();
                                }
                                transaction.close();
                                this.T0 = null;
                                cVar.i.release();
                            } finally {
                            }
                        }
                        a(remove);
                    }
                    java.lang.String str = ((java.lang.Boolean) objArr[1]).booleanValue() ? "transition aborted" : "transition consumed by another handler";
                    if (!remove.a) {
                        a(remove, str, android.os.SystemClock.uptimeMillis() + g);
                    } else {
                        b(remove, str, android.os.SystemClock.uptimeMillis() + g);
                    }
                }
                return null;
            case 2:
                return java.lang.Boolean.valueOf(objArr[0] == this.J0);
            case 3:
                this.v1.remove(objArr[0]);
                if (this.u1.remove(objArr[0])) {
                    a(false);
                }
                dev.duo.taskcore.j.d dVar = this.A0.get((android.os.IBinder) objArr[4]);
                if (dVar != null) {
                    this.H0.invoke(dVar.d, objArr);
                }
                return null;
            case 4:
                return java.lang.Integer.valueOf(java.lang.System.identityHashCode(this.J0));
            case 5:
            case dev.duo.taskcore.h.l /* 9 */:
                return java.lang.Boolean.FALSE;
            case 6:
                boolean z = objArr.length == 6;
                return java.lang.Boolean.valueOf(a((android.os.IBinder) objArr[0], objArr[1], (android.view.SurfaceControl.Transaction) objArr[z ? (char) 3 : (char) 2], (android.view.SurfaceControl.Transaction) objArr[z ? (char) 4 : (char) 3], objArr[z ? (char) 5 : (char) 4]));
            case 7:
            case dev.duo.taskcore.h.k /* 8 */:
                if (!this.K0.containsKey((android.os.IBinder) objArr[0]) && !this.R0.containsKey((android.os.IBinder) objArr[0])) {
                    return null;
                }
                try {
                    java.lang.Object newInstance = this.I.newInstance(null);
                    if (this.K0.containsKey((android.os.IBinder) objArr[0])) {
                        a(newInstance);
                    }
                    return "handleRequest".equals(method.getName()) ? newInstance : this.O0.newInstance(newInstance, this.J0);
                } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e2) {
                    android.util.Log.e(a, "claim of " + objArr[0] + " failed: left to the system", e2);
                    this.K0.remove(objArr[0]);
                    this.R0.remove(objArr[0]);
                    return null;
                }
            case dev.duo.taskcore.h.m /* 10 */:
                return -1;
            default:
                return null;
        }
    }

    private boolean a(android.view.SurfaceControl.Transaction transaction, dev.duo.taskcore.d dVar, android.app.ActivityManager.RunningTaskInfo runningTaskInfo) throws java.lang.ReflectiveOperationException {
        dev.duo.taskcore.b bVar = this.v;
        android.graphics.Rect rect = bVar == null ? null : bVar.a;
        android.graphics.Rect rect2 = (android.graphics.Rect) this.k0.invoke(this.i0.get(this.j0.get(runningTaskInfo)), null);
        if (rect != null && ((java.lang.Integer) this.c0.invoke(runningTaskInfo, null)).intValue() == 6 && rect.equals(rect2)) {
            android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) dVar.a.g;
            android.view.SurfaceControl surfaceControl2 = (android.view.SurfaceControl) this.l0.get(dVar.g);
            if (surfaceControl != null && surfaceControl.isValid() && surfaceControl2 != null && surfaceControl2.isValid()) {
                transaction.reparent(surfaceControl, surfaceControl2).setPosition(surfaceControl, 0.0f, 0.0f).setScale(surfaceControl, 1.0f, 1.0f).setAlpha(surfaceControl, 1.0f).setVisibility(surfaceControl, true);
                dev.duo.taskcore.e.a(transaction, surfaceControl, rect.width(), rect.height());
                this.t0.add(dVar);
                this.L0.remove(java.lang.Integer.valueOf(dVar.a.a));
                return true;
            }
        }
        return false;
    }

    @Override // dev.duo.taskcore.i.b
    public void a(dev.duo.taskcore.d dVar, dev.duo.taskcore.d[] dVarArr, java.lang.Object obj, dev.duo.taskcore.i.a aVar) {
        int i2;
        try {
            java.lang.Object newInstance = this.I.newInstance(null);
            java.util.ArrayList arrayList = new java.util.ArrayList();
            for (dev.duo.taskcore.d dVar2 : dVarArr) {
                if (dVar2 != null && dVar2.e == dev.duo.taskcore.d.a.SURFACE_ATTACHED) {
                    arrayList.add(dVar2);
                }
            }
            if (dVar != null && dVar.e == dev.duo.taskcore.d.a.SURFACE_ATTACHED) {
                arrayList.add(dVar);
            }
            if (arrayList.isEmpty()) {
                aVar.a(true, "empty workbench");
                return;
            }
            int size = arrayList.size();
            int i3 = 0;
            while (true) {
                i2 = 6;
                if (i3 >= size) {
                    break;
                }
                java.lang.Object obj2 = arrayList.get(i3);
                i3++;
                dev.duo.taskcore.d dVar3 = (dev.duo.taskcore.d) obj2;
                this.U.invoke(newInstance, dVar3.a.d, 6);
                this.V.invoke(newInstance, dVar3.a.d, new android.graphics.Rect(this.v.a));
                this.W.invoke(newInstance, dVar3.a.d, java.lang.Boolean.FALSE);
                this.a0.invoke(newInstance, dVar3.a.d, java.lang.Boolean.TRUE);
            }
            dev.duo.taskcore.j.d dVar4 = new dev.duo.taskcore.j.d(false, arrayList, aVar);
            dVar4.f = dVar;
            if (obj != null) {
                dVar4.d = this.B0.newInstance(this.D0.get(this.p), obj);
            }
            java.lang.reflect.Method method = this.Q;
            java.lang.Object obj3 = this.p;
            if (obj != null) {
                i2 = 3;
            }
            android.os.IBinder iBinder = (android.os.IBinder) method.invoke(obj3, java.lang.Integer.valueOf(i2), newInstance, this.J0);
            java.lang.Object obj4 = dVar4.d;
            if (obj4 != null) {
                this.C0.set(obj4, iBinder);
            }
            b(iBinder, dVar4);
        } catch (java.lang.Throwable th) {
            android.util.Log.e(a, "bring to front", th);
            aVar.a(false, java.lang.String.valueOf(th));
        }
    }

    private static android.hardware.HardwareBuffer a(android.hardware.HardwareBuffer hardwareBuffer, android.graphics.ColorSpace colorSpace) {
        int width = hardwareBuffer.getWidth();
        int height = hardwareBuffer.getHeight();
        android.graphics.Bitmap wrapHardwareBuffer = android.graphics.Bitmap.wrapHardwareBuffer(hardwareBuffer, colorSpace);
        if (wrapHardwareBuffer != null) {
            android.media.ImageReader newInstance = android.media.ImageReader.newInstance(width, height, 1, 1, 768L);
            android.graphics.HardwareRenderer hardwareRenderer = new android.graphics.HardwareRenderer();
            try {
                android.graphics.RenderNode renderNode = new android.graphics.RenderNode("workbench-srgb");
                renderNode.setPosition(0, 0, width, height);
                renderNode.beginRecording().drawBitmap(wrapHardwareBuffer, 0.0f, 0.0f, (android.graphics.Paint) null);
                renderNode.endRecording();
                hardwareRenderer.setContentRoot(renderNode);
                hardwareRenderer.setSurface(newInstance.getSurface());
                int syncAndDraw = hardwareRenderer.createRenderRequest().setWaitForPresent(true).syncAndDraw();
                if ((syncAndDraw & 2) == 0 && (syncAndDraw & 4) == 0) {
                    android.media.Image acquireNextImage = newInstance.acquireNextImage();
                    if (acquireNextImage != null) {
                        try {
                            return acquireNextImage.getHardwareBuffer();
                        } finally {
                            acquireNextImage.close();
                        }
                    }
                    throw new java.lang.IllegalStateException("workbench sRGB frame missing");
                }
                throw new java.lang.IllegalStateException("workbench sRGB draw failed " + syncAndDraw);
            } finally {
                hardwareRenderer.destroy();
                newInstance.close();
                wrapHardwareBuffer.recycle();
            }
        }
        throw new java.lang.IllegalStateException("workbench capture not wrappable " + hardwareBuffer.getFormat());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.taskcore.d dVar, dev.duo.taskcore.d[] dVarArr) {
        dev.duo.taskcore.j.b bVar;
        java.lang.Object obj = this.Y0;
        if (obj != null && this.v != null) {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            java.util.HashMap hashMap = new java.util.HashMap();
            java.util.ArrayList arrayList2 = new java.util.ArrayList();
            if (dVar != null && !h(dVar)) {
                hashMap.put(java.lang.Integer.valueOf(dVar.a.a), new android.graphics.Rect(this.v.a));
            }
            int i2 = 0;
            for (int i3 = 0; i3 < dVarArr.length; i3++) {
                dev.duo.taskcore.d dVar2 = dVarArr[i3];
                if (dVar2 != null && !h(dVar2)) {
                    hashMap.put(java.lang.Integer.valueOf(dVarArr[i3].a.a), new android.graphics.Rect(this.v.d[i3]));
                }
            }
            arrayList.addAll(hashMap.keySet());
            java.util.Collections.sort(arrayList);
            int size = arrayList.size();
            while (i2 < size) {
                java.lang.Object obj2 = arrayList.get(i2);
                i2++;
                java.lang.Integer num = (java.lang.Integer) obj2;
                num.intValue();
                arrayList2.add((android.graphics.Rect) hashMap.get(num));
            }
            if (arrayList.isEmpty()) {
                c();
                return;
            }
            if (arrayList.equals(this.Z0) && arrayList2.equals(this.a1)) {
                return;
            }
            boolean equals = arrayList.equals(this.Z0);
            this.a1 = arrayList2;
            this.Z0 = arrayList;
            try {
                this.b1.invoke(obj, null);
                if (!equals && (bVar = this.t) != null && bVar.c()) {
                    k();
                }
                android.util.Log.i(a, "workbench recent identity updated " + arrayList);
                return;
            } catch (java.lang.ReflectiveOperationException e2) {
                android.util.Log.e(a, "recents group not registered", e2);
                return;
            }
        }
        android.util.Log.w(a, "recents group not registered: controller " + obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.os.IBinder iBinder, long j2, long j3) {
        try {
            int clear = dev.duo.workspaceprobe.WorkspaceHome.clear(iBinder, j2, j3);
            if (clear < 0) {
                android.util.Log.e(a, "workbench image clear rejected: " + clear);
            }
        } catch (android.os.RemoteException | java.lang.RuntimeException e2) {
            android.util.Log.e(a, "workbench image clear failed", e2);
        }
    }

    private static java.util.Set<java.lang.Integer> a(android.os.Bundle bundle) {
        java.util.HashSet hashSet = new java.util.HashSet();
        if (bundle != null) {
            java.lang.Object obj = bundle.get("multiple_launch_taskIds");
            int i2 = 0;
            if (obj instanceof int[]) {
                int[] iArr = (int[]) obj;
                int length = iArr.length;
                while (i2 < length) {
                    hashSet.add(java.lang.Integer.valueOf(iArr[i2]));
                    i2++;
                }
            } else if (obj instanceof java.util.Collection) {
                for (java.lang.Object obj2 : (java.util.Collection) obj) {
                    if (obj2 instanceof java.lang.Number) {
                        hashSet.add(java.lang.Integer.valueOf(((java.lang.Number) obj2).intValue()));
                    }
                }
            } else if (obj instanceof java.lang.String) {
                java.lang.String[] split = ((java.lang.String) obj).split("[,; ]+");
                int length2 = split.length;
                while (i2 < length2) {
                    try {
                        hashSet.add(java.lang.Integer.valueOf(java.lang.Integer.parseInt(split[i2].trim())));
                    } catch (java.lang.NumberFormatException e2) {
                    }
                    i2++;
                }
            }
        }
        return hashSet;
    }

    private void a(java.lang.ClassLoader classLoader) {
        try {
            this.k.hook(java.lang.Class.forName("com.android.wm.shell.draganddrop.DragAndDropController", false, classLoader).getDeclaredMethod("onDrag", android.view.View.class, android.view.DragEvent.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda69
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object j2;
                    j2 = dev.duo.taskcore.j.j(chain);
                    return j2;
                }
            });
        } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e2) {
            android.util.Log.e(a, "drag watch not hooked: no drag-hover swap", e2);
        }
    }

    private void a(android.app.ActivityManager.RunningTaskInfo runningTaskInfo) throws java.lang.ReflectiveOperationException {
        boolean z = this.o0.getInt(runningTaskInfo) == 0 && ((java.lang.Integer) this.c0.invoke(runningTaskInfo, null)).intValue() == 5;
        if (!z ? !this.k1.remove(java.lang.Integer.valueOf(runningTaskInfo.taskId)) : !this.k1.add(java.lang.Integer.valueOf(runningTaskInfo.taskId))) {
            if (!z) {
                return;
            }
        }
        n();
    }

    @Override // dev.duo.taskcore.i.b
    public void a(int i2) {
        if (i2 == this.i1) {
            this.i1 = -1;
        }
        i(i2);
        dev.duo.taskcore.j.b bVar = this.t;
        if (bVar != null) {
            bVar.b("adopt refused " + i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(int i2, java.lang.Integer num) {
        return num.intValue() == i2;
    }

    private boolean a(dev.duo.taskcore.d dVar, android.app.ActivityManager.RunningTaskInfo runningTaskInfo) throws java.lang.ReflectiveOperationException {
        int intValue = ((java.lang.Integer) this.c0.invoke(runningTaskInfo, null)).intValue();
        return (intValue == 1 || intValue == 0) && this.q0.getInt(runningTaskInfo) == -1 && this.o0.getInt(runningTaskInfo) == dVar.a.c && this.p0.getInt(runningTaskInfo) == dVar.a.b;
    }

    private java.lang.String a(java.util.List<dev.duo.taskcore.d> list) throws java.lang.ReflectiveOperationException {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (dev.duo.taskcore.d dVar : list) {
            android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.J.invoke(this.o, java.lang.Integer.valueOf(dVar.a.a));
            if (runningTaskInfo != null && this.b0.invoke(this.n0.get(runningTaskInfo), null) == dVar.a.e && ((java.lang.Integer) this.c0.invoke(runningTaskInfo, null)).intValue() == 6 && this.q0.getInt(runningTaskInfo) == -1) {
                arrayList.add(dVar + " still multi-window");
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return java.lang.String.join("; ", arrayList);
    }

    private void a(dev.duo.taskcore.j.d dVar) throws java.lang.ReflectiveOperationException {
        java.lang.Object obj = dVar.e;
        dVar.e = null;
        if (obj != null) {
            obj.getClass().getMethod("releaseAllSurfaces", null).invoke(obj, null);
        }
    }

    private boolean a(final android.os.IBinder iBinder, java.lang.Object obj, android.view.SurfaceControl.Transaction transaction, final android.view.SurfaceControl.Transaction transaction2, final java.lang.Object obj2, final dev.duo.taskcore.j.d dVar) throws java.lang.ReflectiveOperationException {
        dev.duo.taskcore.d dVar2;
        java.lang.Object invoke = obj.getClass().getMethod("localRemoteCopy", null).invoke(obj, null);
        dVar.e = invoke;
        java.util.Iterator it = ((java.util.List) this.e0.invoke(invoke, null)).iterator();
        java.lang.Object obj3 = null;
        while (it.hasNext()) {
            java.lang.Object next = it.next();
            android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.f0.invoke(next, null);
            if (runningTaskInfo != null) {
                java.util.Iterator<dev.duo.taskcore.d> it2 = dVar.b.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        dVar2 = null;
                        break;
                    }
                    dVar2 = it2.next();
                    dev.duo.taskcore.d.b bVar = dVar2.a;
                    if (bVar.a == runningTaskInfo.taskId && bVar.e == this.b0.invoke(this.n0.get(runningTaskInfo), null)) {
                        break;
                    }
                }
                if (dVar2 != null) {
                    if (dVar2 == dVar.f) {
                        obj3 = next;
                    } else {
                        ((android.view.SurfaceControl) this.g0.invoke(next, null)).release();
                        android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) next.getClass().getMethod("getSnapshot", null).invoke(next, null);
                        if (surfaceControl != null) {
                            surfaceControl.release();
                        }
                        it.remove();
                    }
                }
            }
        }
        if (obj3 != null) {
            java.lang.Integer num = (java.lang.Integer) java.lang.Class.forName("com.android.wm.shell.shared.TransitionUtil", false, this.l).getMethod("rootIndexFor", obj3.getClass(), invoke.getClass()).invoke(null, obj3, invoke);
            num.intValue();
            java.lang.Class<?> cls = invoke.getClass();
            java.lang.Class cls2 = java.lang.Integer.TYPE;
            java.lang.Object invoke2 = cls.getMethod("getRoot", cls2).invoke(invoke, num);
            android.view.SurfaceControl surfaceControl2 = (android.view.SurfaceControl) invoke2.getClass().getMethod("getLeash", null).invoke(invoke2, null);
            android.graphics.Point point = (android.graphics.Point) invoke2.getClass().getMethod("getOffset", null).invoke(invoke2, null);
            final dev.duo.taskcore.j.c cVar = new dev.duo.taskcore.j.c(this.u, dVar.f, dVar.b);
            cVar.d = iBinder;
            cVar.l = true;
            cVar.j = true;
            android.view.SurfaceControl.Builder hidden = new android.view.SurfaceControl.Builder().setName("TaskCore group restore").setParent(surfaceControl2).setHidden(true);
            android.view.SurfaceControl.Builder.class.getMethod("setContainerLayer", null).invoke(hidden, null);
            cVar.i = hidden.build();
            this.T0 = cVar;
            cVar.a.d();
            transaction.reparent(cVar.a.t(), cVar.i).setPosition(cVar.a.t(), 0.0f, 0.0f).setLayer(cVar.a.t(), 0).setVisibility(cVar.a.t(), true).setPosition(cVar.i, -point.x, -point.y).setVisibility(cVar.i, true);
            a(transaction, true);
            java.lang.reflect.Field declaredField = obj3.getClass().getDeclaredField("mLeash");
            declaredField.setAccessible(true);
            ((android.view.SurfaceControl) declaredField.get(obj3)).release();
            declaredField.set(obj3, android.view.SurfaceControl.class.getConstructor(android.view.SurfaceControl.class, java.lang.String.class).newInstance(cVar.i, "TaskCore group remote"));
            obj3.getClass().getMethod("setStartAbsBounds", android.graphics.Rect.class).invoke(obj3, new android.graphics.Rect(this.v.b));
            obj3.getClass().getMethod("setEndAbsBounds", android.graphics.Rect.class).invoke(obj3, new android.graphics.Rect(this.v.b));
            obj3.getClass().getMethod("setEndRelOffset", cls2, cls2).invoke(obj3, 0, 0);
            this.A0.put(iBinder, dVar);
            if (((java.lang.Boolean) this.G0.invoke(dVar.d, iBinder, invoke, transaction, transaction2, java.lang.reflect.Proxy.newProxyInstance(this.l, new java.lang.Class[]{this.h0.getDeclaringClass()}, new java.lang.reflect.InvocationHandler() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda74
                @Override // java.lang.reflect.InvocationHandler
                public final java.lang.Object invoke(java.lang.Object obj4, java.lang.reflect.Method method, java.lang.Object[] objArr) {
                    java.lang.Object a2;
                    a2 = dev.duo.taskcore.j.this.a(iBinder, dVar, transaction2, cVar, obj2, obj4, method, objArr);
                    return a2;
                }
            }))).booleanValue()) {
                android.util.Log.i(a, "whole workbench restore remote started " + iBinder);
                return true;
            }
            throw new java.lang.IllegalStateException("OneShotRemoteHandler rejected its bound transition");
        }
        throw new java.lang.IllegalStateException("restore transition has no primary workbench member");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(android.os.IBinder iBinder, dev.duo.taskcore.j.d dVar, android.view.SurfaceControl.Transaction transaction, dev.duo.taskcore.j.c cVar, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
        if (method.getName().equals("onTransitionFinished")) {
            if (this.A0.remove(iBinder) != dVar) {
                return null;
            }
            dVar.j = true;
            try {
                c(transaction);
                cVar.k = true;
                a(transaction);
                this.h0.invoke(obj, objArr);
                dVar.a(true, "group restore remote finished");
                android.util.Log.i(a, "whole workbench restore remote finished " + iBinder);
                return null;
            } finally {
                a(dVar);
            }
        }
        if (method.getName().equals("toString")) {
            return "TaskCoreGroupRestoreFinish";
        }
        if (method.getName().equals("hashCode")) {
            return java.lang.Integer.valueOf(java.lang.System.identityHashCode(obj2));
        }
        if (method.getName().equals("equals")) {
            return java.lang.Boolean.valueOf(objArr[0] == obj2);
        }
        return null;
    }

    private boolean a(android.os.IBinder iBinder, final java.lang.Object obj, final android.view.SurfaceControl.Transaction transaction, final android.view.SurfaceControl.Transaction transaction2, final java.lang.Object obj2) throws java.lang.ReflectiveOperationException {
        final java.lang.Object obj3;
        final java.lang.Integer remove = this.K0.remove(iBinder);
        if (remove == null) {
            obj3 = obj2;
        } else {
            if (this.L0.contains(remove)) {
                return a(iBinder, transaction, obj2, new dev.duo.taskcore.j.e() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda44
                    @Override // dev.duo.taskcore.j.e
                    public final boolean run() {
                        boolean a2;
                        a2 = dev.duo.taskcore.j.this.a(obj, transaction, transaction2, obj2, remove);
                        return a2;
                    }
                });
            }
            obj3 = obj2;
        }
        final java.lang.Integer remove2 = this.R0.remove(iBinder);
        if (remove2 != null && this.Q0.containsKey(remove2)) {
            return a(iBinder, transaction, obj3, new dev.duo.taskcore.j.e() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda45
                @Override // dev.duo.taskcore.j.e
                public final boolean run() {
                    boolean b2;
                    b2 = dev.duo.taskcore.j.this.b(obj, transaction, transaction2, obj3, remove2);
                    return b2;
                }
            });
        }
        boolean remove3 = this.u1.remove(iBinder);
        java.lang.Integer remove4 = this.v1.remove(iBinder);
        dev.duo.taskcore.j.d remove5 = this.z0.remove(iBinder);
        if (remove5 == null) {
            java.lang.Integer a2 = remove3 ? a(iBinder, obj, remove4) : null;
            if (remove3) {
                a(false);
            }
            if (a2 == null) {
                return false;
            }
            final int intValue = a2.intValue();
            return a(iBinder, transaction, obj3, new dev.duo.taskcore.j.e() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda46
                @Override // dev.duo.taskcore.j.e
                public final boolean run() {
                    boolean a3;
                    a3 = dev.duo.taskcore.j.this.a(obj, transaction, transaction2, obj3, intValue);
                    return a3;
                }
            });
        }
        boolean[] zArr = {false};
        java.lang.Object obj4 = obj3;
        try {
            return a(iBinder, obj, transaction, transaction2, obj4, remove5, zArr);
        } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e2) {
            android.util.Log.e(a, "pending transition " + iBinder + " failed while playing", e2);
            if (!zArr[0]) {
                try {
                    transaction.apply();
                    this.h0.invoke(obj4, null);
                } catch (java.lang.Throwable th) {
                    android.util.Log.e(a, "pending transition " + iBinder + " could not be finished", th);
                }
            }
            remove5.a(false, "playback failed: " + e2);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(java.lang.Object obj, android.view.SurfaceControl.Transaction transaction, android.view.SurfaceControl.Transaction transaction2, java.lang.Object obj2, java.lang.Integer num) throws java.lang.ReflectiveOperationException {
        return a(obj, transaction, transaction2, obj2, num.intValue());
    }

    private void a(dev.duo.taskcore.h.b bVar) {
        dev.duo.taskcore.h.c cVar;
        if (bVar.c != 3 || (cVar = bVar.g) == null || bVar.h == null) {
            return;
        }
        this.q1.put(java.lang.Integer.valueOf(cVar.a), java.lang.Integer.valueOf(bVar.h.a));
    }

    private void a(boolean z) {
        int i2 = this.r1;
        if (i2 >= 0) {
            if (z || this.u1.isEmpty()) {
                this.r1 = -1;
                this.q.removeCallbacks(this.t1);
                if (i2 == this.i1) {
                    android.util.Log.i(a, "focus on task " + i2 + " kept: it is being adopted");
                    return;
                }
                dev.duo.taskcore.j.b bVar = this.t;
                if (z) {
                    android.util.Log.w(a, "focus on task " + i2 + " reported after " + j + "ms: the pending open never played");
                }
                if (bVar != null) {
                    bVar.a(i2, this.s1);
                }
            }
        }
    }

    private java.lang.Integer a(android.os.IBinder iBinder, java.lang.Object obj, java.lang.Integer num) throws java.lang.ReflectiveOperationException {
        java.lang.String packageName;
        int i2;
        java.lang.String str;
        dev.duo.taskcore.h.c cVar;
        dev.duo.taskcore.j.b bVar = this.t;
        if (bVar != null && this.x != 0) {
            for (java.lang.Object obj2 : (java.util.List) this.e0.invoke(obj, null)) {
                android.app.ActivityManager.RunningTaskInfo runningTaskInfo = (android.app.ActivityManager.RunningTaskInfo) this.f0.invoke(obj2, null);
                int intValue = ((java.lang.Integer) obj2.getClass().getMethod("getMode", null).invoke(obj2, null)).intValue();
                if (runningTaskInfo != null) {
                    int i3 = 3;
                    if (intValue == 1 || intValue == 3) {
                        if (this.o0.getInt(runningTaskInfo) == 0 && !f(runningTaskInfo.taskId)) {
                            if (runningTaskInfo.taskId != this.i1) {
                                java.lang.Object obj3 = this.n0.get(runningTaskInfo);
                                try {
                                    dev.duo.taskcore.h.b bVar2 = null;
                                    for (dev.duo.taskcore.h.b bVar3 : this.w.b(this.x, iBinder)) {
                                        if (bVar3.c == i3 && (cVar = bVar3.g) != null && cVar.a == runningTaskInfo.taskId && obj3 != null && cVar.e == this.b0.invoke(obj3, null)) {
                                            bVar2 = bVar3;
                                            i3 = 3;
                                        } else {
                                            i3 = 3;
                                        }
                                    }
                                    android.content.ComponentName componentName = runningTaskInfo.baseActivity;
                                    if (componentName != null) {
                                        packageName = componentName.getPackageName();
                                    } else {
                                        android.content.ComponentName componentName2 = runningTaskInfo.topActivity;
                                        packageName = componentName2 != null ? componentName2.getPackageName() : null;
                                    }
                                    if (bVar2 != null) {
                                        a(bVar2);
                                        dev.duo.taskcore.h.c cVar2 = bVar2.h;
                                        i2 = cVar2 == null ? -1 : cVar2.a;
                                    } else {
                                        if (num == null) {
                                            str = null;
                                        } else {
                                            str = null;
                                            for (dev.duo.taskcore.d dVar : this.t0) {
                                                if (dVar.a.a == num.intValue()) {
                                                    str = dVar.a.h;
                                                }
                                            }
                                        }
                                        if (str != null && str.equals(packageName)) {
                                            this.q1.put(java.lang.Integer.valueOf(runningTaskInfo.taskId), num);
                                            i2 = num.intValue();
                                        } else {
                                            android.util.Log.i(a, "task " + runningTaskInfo.taskId + " opened at play, not from a member: left to the system");
                                        }
                                    }
                                    int intValue2 = ((java.lang.Integer) android.app.TaskInfo.class.getMethod("getActivityType", null).invoke(runningTaskInfo, null)).intValue();
                                    boolean z = android.app.TaskInfo.class.getField("supportsMultiWindow").getBoolean(runningTaskInfo);
                                    if (intValue2 == 1 && z && ((java.lang.Integer) this.c0.invoke(runningTaskInfo, null)).intValue() != 5 && bVar.a(runningTaskInfo.taskId, packageName)) {
                                        this.j1 = false;
                                        this.i1 = runningTaskInfo.taskId;
                                        this.L0.add(java.lang.Integer.valueOf(runningTaskInfo.taskId));
                                        android.util.Log.i(a, "non-member " + packageName + " task " + runningTaskInfo.taskId + " opened by member " + i2 + (bVar2 == null ? " (same app, its own transition)" : "") + " (found at play): adopting into the main area");
                                        if (this.J.invoke(this.o, java.lang.Integer.valueOf(runningTaskInfo.taskId)) != null) {
                                            d(runningTaskInfo.taskId);
                                        }
                                        return java.lang.Integer.valueOf(runningTaskInfo.taskId);
                                    }
                                    android.util.Log.i(a, "non-member " + packageName + " task " + runningTaskInfo.taskId + " opened by member " + i2 + " (found at play): not adoptable, left to the system");
                                    return null;
                                } catch (dev.duo.taskcore.i.c e2) {
                                    android.util.Log.w(a, "task " + runningTaskInfo.taskId + " opened at play: source unreadable (" + e2.getMessage() + "), left to the system");
                                    return null;
                                }
                            }
                            continue;
                        }
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:121:0x02bf, code lost:
    
        if (r28.a != false) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x02c5, code lost:
    
        if (a(r25, r8, r10) == false) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x02c7, code lost:
    
        android.util.Log.i(dev.duo.taskcore.j.a, r8 + " applied outside our transition: leash placed into its card");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(android.os.IBinder r23, java.lang.Object r24, android.view.SurfaceControl.Transaction r25, android.view.SurfaceControl.Transaction r26, java.lang.Object r27, dev.duo.taskcore.j.d r28, boolean[] r29) throws java.lang.ReflectiveOperationException {
        /*
            Method dump skipped, instructions count: 997
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.taskcore.j.a(android.os.IBinder, java.lang.Object, android.view.SurfaceControl$Transaction, android.view.SurfaceControl$Transaction, java.lang.Object, dev.duo.taskcore.j$d, boolean[]):boolean");
    }

    private boolean a(android.os.IBinder iBinder, android.view.SurfaceControl.Transaction transaction, java.lang.Object obj, dev.duo.taskcore.j.e eVar) {
        java.util.concurrent.atomic.AtomicBoolean atomicBoolean = new java.util.concurrent.atomic.AtomicBoolean();
        this.w1 = atomicBoolean;
        try {
            return eVar.run();
        } catch (java.lang.Throwable th) {
            try {
                android.util.Log.e(a, "claimed transition " + iBinder + " failed while playing", th);
                if (!atomicBoolean.get()) {
                    try {
                        transaction.apply();
                        this.h0.invoke(obj, null);
                    } catch (java.lang.Throwable th2) {
                        android.util.Log.e(a, "claimed transition " + iBinder + " could not be finished", th2);
                        this.w1 = null;
                        return true;
                    }
                }
                this.w1 = null;
                return true;
            } finally {
                this.w1 = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.Object obj, dev.duo.taskcore.d dVar) {
        if (obj != null) {
            try {
                this.s0.remove(obj);
                this.T.invoke(obj, null);
            } catch (java.lang.Throwable th) {
                android.util.Log.e(a, "TaskView release " + dVar, th);
            }
        }
        this.u.b(dVar);
    }

    @Override // dev.duo.taskcore.i.b
    public void a(java.util.List<dev.duo.taskcore.d> list, dev.duo.taskcore.b bVar, dev.duo.taskcore.i.a aVar) {
        try {
            java.lang.Object newInstance = this.I.newInstance(null);
            java.util.Iterator<dev.duo.taskcore.d> it = list.iterator();
            while (it.hasNext()) {
                this.V.invoke(newInstance, it.next().a.d, new android.graphics.Rect(bVar.a));
            }
            boolean equals = bVar.b.equals(this.v.b);
            this.v = bVar;
            synchronized (this.s0) {
                java.util.Iterator<android.graphics.Rect> it2 = this.s0.values().iterator();
                while (it2.hasNext()) {
                    it2.next().set(bVar.a);
                }
            }
            a(list, bVar.a);
            this.u.a(bVar);
            android.util.Log.i(a, "relayout " + (!equals ? "rotated " + bVar.b.width() + "x" + bVar.b.height() + " " : "") + (bVar.c ? "mirrored" : "original") + ": " + list.size() + " members to " + bVar.a);
            b(this.Q.invoke(this.p, 6, newInstance, this.J0), new dev.duo.taskcore.j.d(false, list, aVar));
        } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e2) {
            android.util.Log.e(a, "relayout failed", e2);
            aVar.a(false, java.lang.String.valueOf(e2));
        }
    }

    private void a(java.util.List<dev.duo.taskcore.d> list, android.graphics.Rect rect) {
        java.lang.Object obj = this.n;
        java.lang.reflect.Field field = this.E0;
        if (field == null || obj == null) {
            return;
        }
        try {
            java.lang.Object obj2 = field.get(obj);
            java.lang.Object obj3 = obj2 == null ? null : this.F0.get(obj2);
            if (obj3 == null) {
                return;
            }
            java.util.Iterator<dev.duo.taskcore.d> it = list.iterator();
            while (it.hasNext()) {
                this.V.invoke(obj3, it.next().a.d, new android.graphics.Rect(rect));
            }
            android.util.Log.i(a, "relayout: pending TaskView redirect retargeted to " + rect);
        } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e2) {
            android.util.Log.e(a, "TaskView redirect retarget failed", e2);
        }
    }

    @Override // dev.duo.taskcore.i.b
    public void a(final dev.duo.taskcore.d dVar, dev.duo.taskcore.d[] dVarArr, final boolean z, final dev.duo.taskcore.i.a aVar) {
        this.w0 = dVar;
        final android.os.Handler handler = this.q;
        final dev.duo.taskcore.g gVar = this.u;
        final dev.duo.taskcore.d[] dVarArr2 = (dev.duo.taskcore.d[]) dVarArr.clone();
        final java.util.concurrent.atomic.AtomicBoolean atomicBoolean = new java.util.concurrent.atomic.AtomicBoolean();
        final java.lang.Runnable runnable = new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.j.a(atomicBoolean, handler, aVar);
            }
        };
        this.m.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.j.a(dev.duo.taskcore.g.this, runnable, dVar, dVarArr2, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(java.util.concurrent.atomic.AtomicBoolean atomicBoolean, android.os.Handler handler, final dev.duo.taskcore.i.a aVar) {
        if (atomicBoolean.compareAndSet(false, true)) {
            handler.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.i.a.this.a(true, "placed");
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(dev.duo.taskcore.g gVar, java.lang.Runnable runnable, dev.duo.taskcore.d dVar, dev.duo.taskcore.d[] dVarArr, boolean z) {
        if (gVar == null) {
            runnable.run();
        } else {
            gVar.a(dVar, dVarArr, z, runnable);
        }
    }

    public void a(dev.duo.taskcore.c cVar) {
        this.x1 = cVar;
    }

    @Override // dev.duo.taskcore.i.b
    public void a(dev.duo.taskcore.d dVar, dev.duo.taskcore.d[] dVarArr, final dev.duo.taskcore.i.a aVar) {
        dev.duo.taskcore.j.b bVar = this.t;
        final android.os.Handler handler = this.q;
        java.lang.String[] strArr = new java.lang.String[4];
        if (dVar != null) {
            strArr[0] = dVar.a.b + ":" + dVar.a.h;
        }
        int i2 = 0;
        while (i2 < dVarArr.length) {
            int i3 = i2 + 1;
            strArr[i3] = dVarArr[i2] == null ? null : dVarArr[i2].a.b + ":" + dVarArr[i2].a.h;
            i2 = i3;
        }
        final java.util.concurrent.atomic.AtomicBoolean atomicBoolean = new java.util.concurrent.atomic.AtomicBoolean();
        if (bVar == null) {
            aVar.a(false, "no events");
        } else {
            bVar.a(strArr, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.j$$ExternalSyntheticLambda51
                @Override // dev.duo.taskcore.i.a
                public final void a(boolean z, java.lang.String str) {
                    dev.duo.taskcore.j.b(atomicBoolean, handler, aVar, z, str);
                }
            });
        }
    }

    @Override // dev.duo.taskcore.i.b
    public void a(dev.duo.taskcore.i iVar) {
        if (!this.Q0.isEmpty()) {
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                if (b(transaction)) {
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
        dev.duo.taskcore.j.b bVar = this.t;
        if (bVar != null) {
            bVar.a(iVar);
        }
    }
}
