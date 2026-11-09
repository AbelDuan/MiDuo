package dev.duo.workspaceprobe;

import dev.duo.workspaceprobe.b.R;

/* loaded from: classes.dex */
final class o implements dev.duo.taskcore.j.b, dev.duo.taskcore.g.f {
    private static final java.lang.String a = "DuoWorkbench";
    private static final java.lang.String b = "dev.duo.hookprobe";
    private static final int c = 140;
    private static final int d = 300;
    private static final int e = 220;
    private static final int f = 200;
    private static final int g = 60;
    private static final int h = 16777217;
    private static final int i = 2000;
    private static final long j = 5000;
    private static final int k = 60;
    static final int l = 32;
    static final int m = 120;
    private static final int n = 16777218;
    private static final int o = 60;
    private static final int p = 460;
    private static final long q = 320;
    private static final long r = 180;
    private static final long s = 550;
    private static final int t = 12;
    private static final float u = 160.0f;
    private static final int v = 1500;
    private static final int w = 10;
    private static final long x = 150;
    private dev.duo.taskcore.j A;
    private android.graphics.Rect A0;
    private volatile dev.duo.taskcore.i B;
    private android.animation.ValueAnimator B0;
    private dev.duo.taskcore.g C;
    private dev.duo.workspaceprobe.p D;
    private dev.duo.workspaceprobe.i D0;
    private android.view.View E0;
    private boolean F;
    private android.animation.ValueAnimator F0;
    private boolean G;
    private float G0;
    private boolean H;
    private float H0;
    private boolean I;
    private float I0;
    private boolean J;
    private float J0;
    private boolean K;
    private float K0;
    private float L;
    private java.util.List<java.lang.Runnable> L0;
    private float M;
    private dev.duo.workspaceprobe.b.R M0;
    private int[] N;
    private android.animation.ValueAnimator N0;
    private java.lang.Runnable P;
    private dev.duo.workspaceprobe.b.R Q;
    private dev.duo.workspaceprobe.b.R R;
    private dev.duo.workspaceprobe.n T;
    private android.animation.ValueAnimator U;
    private boolean V;
    private boolean W;
    private java.lang.Runnable X;
    private float Y;
    private float Z;
    private dev.duo.workspaceprobe.b.R a0;
    private dev.duo.workspaceprobe.b.R b0;
    private java.lang.Thread c0;
    private android.os.IBinder e0;
    private java.util.concurrent.ExecutorService k0;
    private dev.duo.workspaceprobe.j l0;
    private float m0;
    private float n0;
    private boolean o0;
    private boolean p0;
    private boolean q0;
    private boolean r0;
    private dev.duo.taskcore.b s0;
    private volatile java.lang.Object t0;
    private java.lang.Object u0;
    private java.lang.reflect.Method v0;
    private final dev.duo.workspaceprobe.b y;
    private dev.duo.workspaceprobe.q y0;
    private dev.duo.workspaceprobe.b.R z0;
    private final dev.duo.workspaceprobe.r z = new dev.duo.workspaceprobe.r();
    private long E = android.os.SystemClock.uptimeMillis();
    private int O = -1;
    private android.graphics.Rect S = new android.graphics.Rect(0, 0, 2364, 1672);
    private int d0 = -1;
    private int f0 = -1;
    private int g0 = -1;
    private final java.lang.Runnable h0 = new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda83
        @Override // java.lang.Runnable
        public final void run() {
            dev.duo.workspaceprobe.o.this.s();
        }
    };
    private android.graphics.Rect i0 = new android.graphics.Rect(0, 0, 2364, 1672);
    private final java.util.Map<java.lang.String, android.graphics.Bitmap> j0 = java.util.Collections.synchronizedMap(new dev.duo.workspaceprobe.o.a(16, 0.75f, true));
    private int w0 = Integer.MIN_VALUE;
    private int x0 = Integer.MIN_VALUE;
    private int C0 = -1;

    class a extends java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> {
        a(int i, float f, boolean z) {
            super(i, f, z);
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(java.util.Map.Entry<java.lang.String, android.graphics.Bitmap> entry) {
            return size() > 12;
        }
    }

    class b extends android.animation.AnimatorListenerAdapter {
        final /* synthetic */ java.lang.Runnable a;

        b(java.lang.Runnable runnable) {
            this.a = runnable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            if (dev.duo.workspaceprobe.o.this.U == animator) {
                dev.duo.workspaceprobe.o.this.U = null;
                this.a.run();
            }
        }
    }

    class c implements android.text.TextWatcher {
        final /* synthetic */ dev.duo.workspaceprobe.l a;

        c(dev.duo.workspaceprobe.l lVar) {
            this.a = lVar;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(android.text.Editable editable) {
            this.a.a(editable.toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(java.lang.CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(java.lang.CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    class d extends android.animation.AnimatorListenerAdapter {
        final /* synthetic */ android.animation.ValueAnimator a;

        d(android.animation.ValueAnimator valueAnimator) {
            this.a = valueAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            if (dev.duo.workspaceprobe.o.this.F0 != this.a) {
                return;
            }
            dev.duo.workspaceprobe.o.this.F0 = null;
            java.util.List list = dev.duo.workspaceprobe.o.this.L0;
            dev.duo.workspaceprobe.o.this.L0 = null;
            if (list != null) {
                java.util.Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((java.lang.Runnable) it.next()).run();
                }
            }
        }
    }

    class e extends android.animation.AnimatorListenerAdapter {
        final /* synthetic */ dev.duo.workspaceprobe.b.R a;

        e(dev.duo.workspaceprobe.b.R r) {
            this.a = r;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            if (dev.duo.workspaceprobe.o.this.M0 != this.a) {
                return;
            }
            dev.duo.workspaceprobe.o.this.M0 = null;
            dev.duo.workspaceprobe.o.this.N0 = null;
            final dev.duo.workspaceprobe.b.R r = this.a;
            dev.duo.workspaceprobe.o.b("popup", new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$e$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.o.a(dev.duo.workspaceprobe.b.R.this);
                }
            });
        }
    }

    o(dev.duo.workspaceprobe.b bVar) {
        this.y = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        dev.duo.workspaceprobe.p pVar;
        dev.duo.taskcore.i iVar = this.B;
        if (iVar == null || (pVar = this.D) == null) {
            return;
        }
        try {
            pVar.a(dev.duo.taskcore.j.b(iVar));
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.e(a, "Video isolation not rolled back to the session members", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B() {
        o();
        dev.duo.taskcore.g gVar = this.C;
        final dev.duo.taskcore.b bVar = gVar == null ? null : new dev.duo.taskcore.b(gVar.g().b, !gVar.g().c);
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda66
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                dev.duo.workspaceprobe.o.this.a(bVar, (dev.duo.taskcore.i) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C() {
        this.s0 = null;
        m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D() {
        this.o0 = false;
        if (this.p0) {
            this.p0 = false;
            y();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E() {
        this.X = null;
        java.lang.String P = P();
        if (P != null) {
            f(P);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F() {
        this.V = true;
        z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G() {
        android.content.Context context;
        dev.duo.taskcore.j jVar = this.A;
        if (jVar == null || (context = this.y.p4) == null) {
            return;
        }
        if (!this.F) {
            jVar.a(context);
            this.F = true;
        }
        if (this.A.m()) {
            this.A.c(r());
        }
    }

    private boolean L() {
        java.lang.reflect.Method method;
        java.lang.Object obj = this.t0;
        if (obj != null && (method = this.v0) != null) {
            try {
                if (!((java.lang.Boolean) method.invoke(obj, java.lang.Integer.valueOf(this.w0))).booleanValue()) {
                    if (!((java.lang.Boolean) this.v0.invoke(obj, java.lang.Integer.valueOf(this.x0))).booleanValue()) {
                        return false;
                    }
                }
                return true;
            } catch (java.lang.ReflectiveOperationException e2) {
                android.util.Log.e(a, "Device state unreadable: treated as folded", e2);
            }
        }
        return true;
    }

    private int M() {
        return dev.duo.workspaceprobe.b.b(this.y.p4) ? -14935010 : -1;
    }

    private void N() {
        java.util.concurrent.ExecutorService executorService;
        a((java.util.Collection<java.lang.String>) java.util.Collections.singleton(this.y.I1));
        synchronized (this) {
            executorService = this.k0;
        }
        if (executorService == null) {
            return;
        }
        final android.content.Context context = this.y.p4;
        executorService.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda78
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.this.a(context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        android.content.Context context = this.y.p4;
        if (context == null) {
            return;
        }
        android.os.PowerManager powerManager = (android.os.PowerManager) context.getSystemService(android.os.PowerManager.class);
        dev.duo.taskcore.c q2 = this.A.q();
        final boolean z = true;
        final boolean z2 = (powerManager == null || powerManager.isInteractive()) ? false : true;
        if (!z2 && q2 != null && !q2.c()) {
            z = false;
        }
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda16
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                ((dev.duo.taskcore.i) obj).a(z, z2);
            }
        });
    }

    private java.lang.String P() {
        dev.duo.taskcore.j jVar = this.A;
        if (jVar == null) {
            return "K0";
        }
        dev.duo.taskcore.c q2 = jVar.q();
        if (q2 == null || q2.k) {
            return "G0";
        }
        if (q2.j) {
            return "user";
        }
        dev.duo.workspaceprobe.b bVar = this.y;
        if (bVar.p4 == null) {
            return "K1 context";
        }
        if (!bVar.w0()) {
            return "master";
        }
        if (!this.y.r2()) {
            return this.y.v2() ? "off" : "P0";
        }
        if (q2.a || q2.c || q2.d || !this.y.R0()) {
            return "locked";
        }
        dev.duo.workspaceprobe.b bVar2 = this.y;
        if (bVar2.Q1) {
            return "shutdown";
        }
        if (bVar2.L1) {
            return "home";
        }
        if (q2.h) {
            return "remoteInput";
        }
        if (q2.e || q2.f || bVar2.O1) {
            return "shade " + q2;
        }
        if (this.B != null && this.B.C() != dev.duo.taskcore.i.d.PAUSED) {
            return "S-" + this.B.C();
        }
        android.graphics.Rect r2 = r();
        if (a(r2)) {
            return null;
        }
        return "D0 " + r2.width() + "x" + r2.height();
    }

    private void Q() {
        if (this.W || this.R == null) {
            return;
        }
        this.W = true;
        z();
    }

    private int R() {
        android.content.res.Resources resources = this.y.p4.getResources();
        java.lang.String[] strArr = {"status_bar_height", "status_bar_height_landscape", "status_bar_height_portrait"};
        int i2 = 0;
        for (int i3 = 0; i3 < 3; i3++) {
            int identifier = resources.getIdentifier(strArr[i3], "dimen", "android");
            if (identifier != 0) {
                i2 = java.lang.Math.max(i2, resources.getDimensionPixelSize(identifier));
            }
        }
        return i2;
    }

    private java.util.Map<java.lang.Integer, java.lang.String> S() {
        java.util.HashMap hashMap = new java.util.HashMap();
        for (android.app.ActivityManager.RunningTaskInfo runningTaskInfo : ((android.app.ActivityManager) this.y.p4.getSystemService(android.app.ActivityManager.class)).getRunningTasks(12)) {
            try {
                java.lang.String a2 = dev.duo.workspaceprobe.p.a(runningTaskInfo);
                if (a2 != null) {
                    hashMap.put(java.lang.Integer.valueOf(runningTaskInfo.taskId), a2);
                }
            } catch (java.lang.ReflectiveOperationException e2) {
                android.util.Log.w(a, "Task member unreadable " + runningTaskInfo.taskId, e2);
            }
        }
        return hashMap;
    }

    private java.util.Map<java.lang.Integer, java.lang.String> T() {
        java.util.HashMap hashMap = new java.util.HashMap();
        for (android.app.ActivityManager.RunningTaskInfo runningTaskInfo : ((android.app.ActivityManager) this.y.p4.getSystemService(android.app.ActivityManager.class)).getRunningTasks(12)) {
            if (runningTaskInfo.baseActivity != null) {
                hashMap.put(java.lang.Integer.valueOf(runningTaskInfo.taskId), runningTaskInfo.baseActivity.getPackageName());
            }
        }
        return hashMap;
    }

    private void U() {
        if (this.u0 != null || this.y.p4 == null) {
            return;
        }
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("android.hardware.devicestate.DeviceStateManager");
            java.lang.Class<?> cls2 = java.lang.Class.forName("android.hardware.devicestate.DeviceStateManager$DeviceStateCallback");
            java.lang.Class<?> cls3 = java.lang.Class.forName("android.hardware.devicestate.DeviceState");
            this.v0 = cls3.getMethod("hasProperty", java.lang.Integer.TYPE);
            this.w0 = cls3.getField("PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_OUTER_PRIMARY").getInt(null);
            this.x0 = cls3.getField("PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_CLOSED").getInt(null);
            java.lang.Object newProxyInstance = java.lang.reflect.Proxy.newProxyInstance(cls2.getClassLoader(), new java.lang.Class[]{cls2}, new java.lang.reflect.InvocationHandler() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda96
                @Override // java.lang.reflect.InvocationHandler
                public final java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) {
                    java.lang.Object a2;
                    a2 = dev.duo.workspaceprobe.o.this.a(obj, method, objArr);
                    return a2;
                }
            });
            java.lang.reflect.Method method = cls.getMethod("registerCallback", java.util.concurrent.Executor.class, cls2);
            java.lang.Object systemService = this.y.p4.getSystemService(cls);
            android.os.Handler handler = this.y.D1;
            java.util.Objects.requireNonNull(handler);
            method.invoke(systemService, new dev.duo.fold.g$b$$ExternalSyntheticLambda1(handler), newProxyInstance);
            this.u0 = newProxyInstance;
        } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e2) {
            android.util.Log.e(a, "Device state unavailable: any display change ends the workbench", e2);
        }
    }

    private android.graphics.drawable.Drawable e(java.lang.String str) {
        android.graphics.Bitmap bitmap = str == null ? null : this.j0.get(str);
        if (bitmap != null) {
            android.graphics.drawable.BitmapDrawable bitmapDrawable = new android.graphics.drawable.BitmapDrawable(this.y.p4.getResources(), bitmap);
            bitmapDrawable.setFilterBitmap(true);
            return bitmapDrawable;
        }
        if (str == null) {
            return null;
        }
        try {
            return this.y.p4.getPackageManager().getApplicationIcon(str);
        } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
            return null;
        }
    }

    private void f(java.lang.String str) {
        android.content.Context context;
        android.util.Log.w(a, "Corner refused: " + str);
        if (str.startsWith("P0")) {
            this.y.y1();
        }
        java.lang.String d2 = d(str);
        if (d2 == null || (context = this.y.p4) == null) {
            return;
        }
        android.widget.Toast.makeText(context, "工作台暂时打不开：" + d2, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(final int i2) {
        q();
        a(i2, new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda22
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                dev.duo.workspaceprobe.o.this.b(i2, (dev.duo.workspaceprobe.i) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(final int i2) {
        o();
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda71
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                ((dev.duo.taskcore.i) obj).i(i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        this.P = null;
        if (!this.H) {
            V();
            return;
        }
        java.lang.String P = P();
        if (P != null) {
            V();
            f(P);
            return;
        }
        if (!this.F) {
            this.A.a(this.y.p4);
            this.F = true;
        }
        if (!this.A.m()) {
            V();
            f("K1 " + this.A.l());
            return;
        }
        int[] a2 = dev.duo.taskcore.j.a(this.y.p4, (java.util.Set<java.lang.String>) java.util.Collections.singleton("dev.duo.hookprobe"));
        dev.duo.taskcore.i iVar = this.B;
        this.O = -1;
        if (iVar != null && a2 != null) {
            if (iVar.C() != dev.duo.taskcore.i.d.PAUSED) {
                V();
                f("S-" + iVar.C());
                return;
            } else {
                int i2 = a2[0];
                this.O = i2;
                a2 = a(iVar, i2);
            }
        }
        android.view.SurfaceControl surfaceControl = this.y.G1;
        if (a2 == null || surfaceControl == null) {
            V();
            f(a2 == null ? "T0" : "A0");
            return;
        }
        this.i0 = r();
        try {
            dev.duo.workspaceprobe.b bVar = this.y;
            java.util.Objects.requireNonNull(bVar);
            this.Q = new dev.duo.workspaceprobe.b.R(bVar, "workbench_handle", (android.view.View) new dev.duo.workspaceprobe.k(this.y.p4, this.K), 0.0f, 0, f, f, 0, 0.0f, true);
            try {
                a(surfaceControl, a2, new dev.duo.taskcore.b(this.i0, this.K));
                if (!this.y.E0()) {
                    p();
                    V();
                    f("I0");
                    return;
                }
                this.N = a2;
                this.I = true;
                this.y.B(2);
                android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                try {
                    transaction.reparent(this.Q.b, surfaceControl).setPosition(this.Q.b, b(0.0f), this.i0.bottom - f).setCrop(this.Q.b, new android.graphics.Rect(0, 0, f, f)).setLayer(this.Q.b, h).setVisibility(this.Q.b, true).apply();
                    transaction.close();
                } finally {
                }
            } catch (java.lang.RuntimeException e2) {
                android.util.Log.e(a, "Entry mask unavailable", e2);
                b(this.Q);
                this.Q = null;
                V();
                f("M0");
            }
        } catch (java.lang.RuntimeException e3) {
            android.util.Log.e(a, "Handle unavailable", e3);
            V();
            f("H0");
        }
    }

    private void m() {
        if (this.R == null) {
            return;
        }
        final dev.duo.workspaceprobe.n nVar = this.T;
        nVar.a(new android.graphics.Rect(this.S), new android.graphics.Rect[0], null);
        a(r, new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
                dev.duo.workspaceprobe.o.this.a(nVar, valueAnimator);
            }
        }, new dev.duo.workspaceprobe.o$$ExternalSyntheticLambda2(this));
    }

    private boolean n() {
        dev.duo.taskcore.i iVar = this.B;
        return (iVar == null || this.r0 || iVar.h() || iVar.C() != dev.duo.taskcore.i.d.ACTIVE) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        final dev.duo.workspaceprobe.b.R r2 = this.a0;
        if (r2 == null) {
            q();
            return;
        }
        float f2 = this.K0;
        final float f3 = this.G0;
        final float f4 = this.H0;
        final float f5 = this.I0;
        final float f6 = this.J0;
        this.a0 = null;
        q();
        if (f2 <= 0.0f) {
            b("popup", new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.o.b(dev.duo.workspaceprobe.b.R.this);
                }
            });
            return;
        }
        android.animation.ValueAnimator ofFloat = android.animation.ValueAnimator.ofFloat(f2, 0.0f);
        ofFloat.setDuration(java.lang.Math.max(1, java.lang.Math.round(f2 * 180.0f)));
        ofFloat.setInterpolator(new android.view.animation.AccelerateInterpolator(1.5f));
        ofFloat.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda20
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
                dev.duo.workspaceprobe.o.this.a(r2, f3, f4, f5, f6, valueAnimator);
            }
        });
        ofFloat.addListener(new dev.duo.workspaceprobe.o.e(r2));
        this.M0 = r2;
        this.N0 = ofFloat;
        ofFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        this.o0 = false;
        this.p0 = false;
        android.animation.ValueAnimator valueAnimator = this.U;
        if (valueAnimator != null) {
            this.U = null;
            valueAnimator.cancel();
        }
        b(this.R);
        this.R = null;
        this.T = null;
        this.l0 = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        final dev.duo.workspaceprobe.b.R r2 = this.a0;
        final dev.duo.workspaceprobe.b.R r3 = this.b0;
        final dev.duo.workspaceprobe.b.R r4 = this.M0;
        this.M0 = null;
        this.b0 = null;
        this.a0 = null;
        this.L0 = null;
        final android.animation.ValueAnimator valueAnimator = this.N0;
        if (valueAnimator != null) {
            this.N0 = null;
            java.util.Objects.requireNonNull(valueAnimator);
            b("close animation", new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda72
                @Override // java.lang.Runnable
                public final void run() {
                    valueAnimator.cancel();
                }
            });
        }
        b("closing popup", new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda73
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.b(dev.duo.workspaceprobe.b.R.this);
            }
        });
        final android.view.View view = this.E0;
        this.E0 = null;
        if (view != null) {
            b("search input", new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda74
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.o.this.a(view);
                }
            });
        }
        final android.animation.ValueAnimator valueAnimator2 = this.F0;
        if (valueAnimator2 != null) {
            this.F0 = null;
            java.util.Objects.requireNonNull(valueAnimator2);
            b("popup animation", new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda72
                @Override // java.lang.Runnable
                public final void run() {
                    valueAnimator2.cancel();
                }
            });
        }
        final java.lang.Thread thread = this.c0;
        if (thread != null) {
            this.c0 = null;
            java.util.Objects.requireNonNull(thread);
            b("picker thread", new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda75
                @Override // java.lang.Runnable
                public final void run() {
                    thread.interrupt();
                }
            });
        }
        b("popup", new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda76
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.b(dev.duo.workspaceprobe.b.R.this);
            }
        });
        b("popup outside", new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda77
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.b(dev.duo.workspaceprobe.b.R.this);
            }
        });
    }

    private android.graphics.Rect r() {
        android.graphics.Point point = new android.graphics.Point();
        ((android.hardware.display.DisplayManager) this.y.p4.getSystemService(android.hardware.display.DisplayManager.class)).getDisplay(0).getRealSize(point);
        return new android.graphics.Rect(0, 0, point.x, point.y);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        int i2 = this.g0;
        dev.duo.taskcore.g gVar = this.C;
        boolean z = i2 >= 0 && gVar != null && n() && gVar.a(i2);
        if (gVar != null) {
            gVar.a(-1);
        }
        if (z) {
            android.util.Log.i(a, "Drag hover: slot " + i2 + " into main");
            g(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        android.animation.ValueAnimator valueAnimator = this.B0;
        if (valueAnimator != null) {
            this.B0 = null;
            valueAnimator.cancel();
        }
        dev.duo.workspaceprobe.b.R r2 = this.z0;
        dev.duo.workspaceprobe.q qVar = this.y0;
        if (qVar != null) {
            this.y.a(qVar, true);
        }
        this.z0 = null;
        this.y0 = null;
        this.A0 = null;
        b(r2);
    }

    private boolean u() {
        return P() == null;
    }

    private void v() {
        dev.duo.taskcore.j.i = false;
        this.y.D1.removeCallbacks(this.h0);
        this.g0 = -1;
        dev.duo.taskcore.g gVar = this.C;
        if (gVar != null) {
            gVar.a(-1);
        }
    }

    private void w() {
        java.lang.Runnable runnable = this.X;
        if (runnable != null) {
            this.y.D1.removeCallbacks(runnable);
        }
        this.X = null;
    }

    private void x() {
        dev.duo.taskcore.i iVar = this.B;
        dev.duo.taskcore.g gVar = this.C;
        if (iVar == null || gVar == null) {
            return;
        }
        if (this.l0 != null || a(iVar, gVar)) {
            this.W = false;
            final dev.duo.taskcore.b g2 = gVar.g();
            final dev.duo.workspaceprobe.j jVar = this.l0;
            final android.graphics.Rect a2 = g2.a(this.m0);
            final android.graphics.Rect rect = new android.graphics.Rect(g2.b);
            final android.graphics.Rect[] rectArr = new android.graphics.Rect[3];
            final android.graphics.Rect[] rectArr2 = new android.graphics.Rect[3];
            for (int i2 = 0; i2 < 3; i2++) {
                android.graphics.Rect rect2 = new android.graphics.Rect(g2.d[i2]);
                rectArr[i2] = rect2;
                rect2.offset(g2.c() * java.lang.Math.round(this.m0), 0);
                android.graphics.Rect rect3 = new android.graphics.Rect(g2.d[i2]);
                rectArr2[i2] = rect3;
                g2.b(rect3);
            }
            final float f2 = this.n0;
            this.o0 = true;
            this.p0 = false;
            android.graphics.Rect rect4 = new android.graphics.Rect(g2.e);
            g2.b(rect4);
            final int c2 = g2.c() * java.lang.Math.round(this.m0);
            final int i3 = rect4.left - g2.e.left;
            a(q, new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda100
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
                    dev.duo.workspaceprobe.o.this.a(g2, c2, i3, rectArr, rectArr2, jVar, a2, rect, f2, valueAnimator);
                }
            }, new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda101
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.o.this.D();
                }
            });
        }
    }

    private void y() {
        final android.view.Choreographer choreographer = android.view.Choreographer.getInstance();
        choreographer.postFrameCallback(new android.view.Choreographer.FrameCallback() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda13
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j2) {
                dev.duo.workspaceprobe.o.this.a(choreographer, j2);
            }
        });
    }

    private void z() {
        if (this.R != null && this.V && this.W) {
            a(r, new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
                    dev.duo.workspaceprobe.o.this.b(valueAnimator);
                }
            }, new dev.duo.workspaceprobe.o$$ExternalSyntheticLambda2(this));
        }
    }

    void H() {
        dev.duo.workspaceprobe.q qVar = this.y0;
        if (qVar != null) {
            qVar.g();
        }
    }

    void I() {
        dev.duo.taskcore.i iVar = this.B;
        if (iVar != null) {
            dev.duo.workspaceprobe.b bVar = this.y;
            if (bVar.p4 == null) {
                return;
            }
            if (!bVar.w0()) {
                a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda40
                    @Override // java.util.function.Consumer
                    public final void accept(java.lang.Object obj) {
                        ((dev.duo.taskcore.i) obj).a("master off", false);
                    }
                });
                return;
            }
            android.graphics.Rect r2 = r();
            dev.duo.taskcore.g gVar = this.C;
            dev.duo.taskcore.b g2 = gVar == null ? null : gVar.g();
            final boolean z = iVar.C() == dev.duo.taskcore.i.d.PAUSED;
            if (g2 == null || r2.equals(g2.b)) {
                dev.duo.taskcore.b bVar2 = this.s0;
                if (bVar2 != null && !bVar2.b.equals(r2)) {
                    this.s0 = null;
                }
                a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda44
                    @Override // java.util.function.Consumer
                    public final void accept(java.lang.Object obj) {
                        ((dev.duo.taskcore.i) obj).c(false);
                    }
                });
            } else if (!L() && a(r2)) {
                a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda41
                    @Override // java.util.function.Consumer
                    public final void accept(java.lang.Object obj) {
                        ((dev.duo.taskcore.i) obj).c(false);
                    }
                });
                dev.duo.taskcore.b bVar3 = this.s0;
                if (bVar3 == null || !bVar3.b.equals(r2)) {
                    this.s0 = new dev.duo.taskcore.b(r2, bVar3 != null ? bVar3.c : g2.c);
                    android.util.Log.i(a, "Display " + g2.b.width() + "x" + g2.b.height() + " -> " + r2.width() + "x" + r2.height() + (z ? ": relayout after resume" : ": relayout now"));
                    if (!z) {
                        c("rotate");
                    }
                }
            } else {
                if (L() || !z) {
                    final java.lang.String str = (L() ? "folded, display " : "display changed ") + r2.width() + "x" + r2.height();
                    a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda43
                        @Override // java.util.function.Consumer
                        public final void accept(java.lang.Object obj) {
                            dev.duo.workspaceprobe.o.a(str, z, (dev.duo.taskcore.i) obj);
                        }
                    });
                    return;
                }
                a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda42
                    @Override // java.util.function.Consumer
                    public final void accept(java.lang.Object obj) {
                        ((dev.duo.taskcore.i) obj).c(true);
                    }
                });
            }
            O();
        }
    }

    void J() {
        dev.duo.workspaceprobe.q qVar = this.y0;
        if (qVar != null) {
            qVar.h();
        }
    }

    void K() {
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda60
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                ((dev.duo.taskcore.i) obj).a("workbench off", false);
            }
        });
    }

    void V() {
        java.lang.Runnable runnable = this.P;
        if (runnable != null) {
            this.y.D1.removeCallbacks(runnable);
        }
        this.P = null;
        this.J = false;
        this.I = false;
        this.H = false;
        this.N = null;
        this.O = -1;
        b(this.Q);
        this.Q = null;
    }

    @Override // dev.duo.taskcore.j.b
    public boolean k() {
        dev.duo.taskcore.i iVar = this.B;
        return (iVar == null || iVar.h() || this.r0 || iVar.C() != dev.duo.taskcore.i.d.ACTIVE || !iVar.a()) ? false : true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00b3, code lost:
    
        if (r3.equals("D0") == false) goto L60;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String d(java.lang.String r3) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.workspaceprobe.o.d(java.lang.String):java.lang.String");
    }

    private void b(android.view.MotionEvent motionEvent) {
        this.Y = motionEvent.getRawX();
        this.Z = motionEvent.getRawY();
        java.lang.Runnable runnable = new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.this.E();
            }
        };
        this.X = runnable;
        this.y.D1.postDelayed(runnable, 300L);
    }

    private int c(android.view.MotionEvent motionEvent) {
        if (this.y.p4 == null) {
            return 0;
        }
        if (a(r()) && motionEvent.getRawY() >= r0.bottom - 140) {
            if (motionEvent.getRawX() >= r0.right - 140) {
                return 1;
            }
            if (motionEvent.getRawX() < 140.0f) {
                return -1;
            }
        }
        return 0;
    }

    @Override // dev.duo.taskcore.g.f
    public void g(final int i2) {
        q();
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda8
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                ((dev.duo.taskcore.i) obj).l(i2);
            }
        });
    }

    @Override // dev.duo.taskcore.j.b
    public boolean h() {
        dev.duo.taskcore.i iVar = this.B;
        return iVar != null && iVar.v();
    }

    @Override // dev.duo.taskcore.g.f
    public void j() {
        dev.duo.taskcore.i iVar = this.B;
        if (this.C == null || iVar == null || this.r0 || iVar.h() || iVar.C() != dev.duo.taskcore.i.d.ACTIVE) {
            return;
        }
        try {
            android.view.View a2 = dev.duo.workspaceprobe.l.a(this.y.p4, new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda62
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.o.this.B();
                }
            });
            int makeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
            a2.measure(makeMeasureSpec, makeMeasureSpec);
            int measuredWidth = a2.getMeasuredWidth();
            int measuredHeight = a2.getMeasuredHeight();
            dev.duo.taskcore.b g2 = this.C.g();
            int centerY = g2.a.centerY() - (measuredHeight / 2);
            a(a2, g2.b() - (measuredWidth / 2), centerY, measuredWidth, measuredHeight, new android.graphics.Rect(g2.b() - 1, centerY, g2.b() + 1, centerY + measuredHeight), java.lang.Math.min(measuredWidth, measuredHeight) / 2.0f);
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.e(a, "Flip button unavailable", e2);
        }
    }

    @Override // dev.duo.taskcore.j.b
    public boolean g() {
        dev.duo.taskcore.i iVar = this.B;
        if (iVar == null || iVar.h() || this.r0 || !iVar.a()) {
            return false;
        }
        dev.duo.taskcore.i.d C = iVar.C();
        return C == dev.duo.taskcore.i.d.ACTIVE || C == dev.duo.taskcore.i.d.TRANSITIONING || C == dev.duo.taskcore.i.d.ATTACHING;
    }

    @Override // dev.duo.taskcore.j.b
    public android.view.SurfaceControl i() {
        dev.duo.taskcore.i iVar = this.B;
        dev.duo.taskcore.g gVar = this.C;
        if (iVar == null || gVar == null || !iVar.D()) {
            return null;
        }
        return gVar.t();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(dev.duo.workspaceprobe.b.R r2) {
        b(r2);
    }

    @Override // dev.duo.taskcore.j.b
    public void h(final int i2) {
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                dev.duo.workspaceprobe.o.c(i2, (dev.duo.taskcore.i) obj);
            }
        });
    }

    static float a(float f2, float f3) {
        return java.lang.Math.max(0.0f, java.lang.Math.min(1.0f, (f3 - f2) / (f3 * 0.25f))) * 32.0f;
    }

    static boolean a(android.graphics.Rect rect) {
        if (rect.width() == 2364 && rect.height() == 1672) {
            return true;
        }
        return rect.width() == 1672 && rect.height() == 2364;
    }

    private void c(float f2) {
        if (this.R == null) {
            return;
        }
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            transaction.setAlpha(this.R.b, f2).apply();
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

    @Override // dev.duo.taskcore.g.f
    public void f(final int i2) {
        dev.duo.taskcore.g gVar = this.C;
        if (gVar == null) {
            return;
        }
        android.graphics.Rect rect = gVar.g().d[i2];
        float width = rect.width() / 172.0f;
        android.view.View a2 = dev.duo.workspaceprobe.l.a(this.y.p4, width, new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.this.i(i2);
            }
        }, new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.this.j(i2);
            }
        });
        int round = java.lang.Math.round(220.0f * width);
        a(a2, this.C.g().c ? (rect.left - 24) - round : rect.right + 24, java.lang.Math.max(rect.top, R() + 12), round, java.lang.Math.round(122.0f * width), rect, width * 24.0f);
    }

    void a(java.lang.ClassLoader classLoader) {
        try {
            dev.duo.taskcore.j jVar = new dev.duo.taskcore.j(this.y, classLoader);
            this.A = jVar;
            jVar.g();
            android.util.Log.i(a, "TaskView workbench core installed 1.0.437-4-bbb1db675c6a wmProtocol=" + dev.duo.taskcore.h.J);
        } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e2) {
            this.A = null;
            android.util.Log.e(a, "TaskView workbench core unavailable: the corner stays the App's", e2);
        }
        if (this.A != null) {
            this.z.a();
        }
    }

    private float b(float f2) {
        return this.K ? f2 : (this.i0.right - 200) - f2;
    }

    private void c(final java.lang.String str) {
        final dev.duo.taskcore.b bVar = this.s0;
        dev.duo.taskcore.g gVar = this.C;
        if (bVar == null || gVar == null) {
            return;
        }
        dev.duo.taskcore.b g2 = gVar.g();
        if (bVar.c == g2.c && bVar.b.equals(g2.b)) {
            this.s0 = null;
            Q();
            return;
        }
        boolean equals = bVar.b.equals(g2.b);
        final boolean z = !equals;
        if (!equals) {
            q();
        }
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda30
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                dev.duo.workspaceprobe.o.this.a(bVar, z, str, (dev.duo.taskcore.i) obj);
            }
        });
    }

    @Override // dev.duo.taskcore.j.b
    public void e(final int i2) {
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda28
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                dev.duo.workspaceprobe.o.this.a(i2, (dev.duo.taskcore.i) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(dev.duo.workspaceprobe.n nVar, android.animation.ValueAnimator valueAnimator) {
        float floatValue = ((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue();
        nVar.a(floatValue, floatValue);
    }

    @Override // dev.duo.taskcore.j.b
    public void e() {
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda63
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                ((dev.duo.taskcore.i) obj).q();
            }
        });
        this.y.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda64
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.this.O();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(android.animation.ValueAnimator valueAnimator) {
        c(1.0f - ((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(dev.duo.workspaceprobe.b.R r2) {
        if (r2 == null) {
            return;
        }
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            transaction.reparent(r2.b, null).apply();
            transaction.close();
            r2.b();
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
    public /* synthetic */ void b(int i2, dev.duo.taskcore.i iVar) {
        if (iVar.e(i2)) {
            return;
        }
        android.util.Log.w(a, "Corner entry refused: " + iVar.r());
        this.y.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda51
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.this.C();
            }
        });
    }

    static android.graphics.Rect b(dev.duo.taskcore.b bVar) {
        android.graphics.Rect rect = new android.graphics.Rect(bVar.e);
        if (bVar.c) {
            rect.right = java.lang.Math.min(bVar.b.right, rect.right + 40);
            return rect;
        }
        rect.left = java.lang.Math.max(bVar.b.left, rect.left - 40);
        return rect;
    }

    void a(java.lang.Object obj) {
        final dev.duo.taskcore.c cVar;
        if (this.A == null) {
            return;
        }
        if (!this.G) {
            this.G = true;
            this.y.D1.postDelayed(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda49
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.o.this.G();
                }
            }, j);
        }
        try {
            cVar = dev.duo.taskcore.c.a(obj);
        } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e2) {
            android.util.Log.e(a, "Shade state unreadable: treated as unknown (blocked, workbench returns)", e2);
            cVar = dev.duo.taskcore.c.n;
        }
        this.A.a(cVar);
        this.y.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.this.a(cVar);
            }
        });
    }

    private android.graphics.Bitmap c(dev.duo.taskcore.b bVar) {
        try {
            dev.duo.workspaceprobe.b bVar2 = this.y;
            android.content.Context context = bVar2.p4;
            dev.duo.workspaceprobe.q qVar = new dev.duo.workspaceprobe.q(bVar2, context, dev.duo.workspaceprobe.b.b(context));
            android.graphics.Rect b2 = b(bVar);
            qVar.a(bVar, b2);
            return qVar.a(b2);
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.w(a, "Rail snapshot unavailable", e2);
            return null;
        }
    }

    private void b(dev.duo.taskcore.b bVar, int i2) {
        dev.duo.workspaceprobe.b.R r2 = this.z0;
        if (r2 == null || bVar == null || this.A0 == null) {
            return;
        }
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            android.view.SurfaceControl surfaceControl = r2.b;
            android.graphics.Rect rect = this.A0;
            transaction.setPosition(surfaceControl, rect.left + i2, rect.top).apply();
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
    public static /* synthetic */ void c(dev.duo.workspaceprobe.l lVar, java.util.Map map) {
        if (lVar.isAttachedToWindow()) {
            lVar.a((java.util.Map<java.lang.String, android.graphics.drawable.Drawable>) map);
        }
    }

    @Override // dev.duo.taskcore.g.f
    public void b() {
        this.r0 = true;
        q();
        x();
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda79
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                ((dev.duo.taskcore.i) obj).a("bar exit", true);
            }
        });
    }

    @Override // dev.duo.taskcore.j.b
    public void c(final int i2) {
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda29
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                ((dev.duo.taskcore.i) obj).e(i2, null);
            }
        });
    }

    @Override // dev.duo.taskcore.j.b
    public boolean c() {
        dev.duo.taskcore.i iVar = this.B;
        return (iVar == null || this.C == null || this.r0 || iVar.h() || iVar.C() != dev.duo.taskcore.i.d.ACTIVE) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final int i2, final dev.duo.workspaceprobe.i iVar) {
        this.C0 = i2;
        this.D0 = iVar;
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda67
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                dev.duo.workspaceprobe.o.this.a(i2, iVar, (dev.duo.taskcore.i) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(int i2, dev.duo.taskcore.i iVar) {
        if (iVar.f()) {
            iVar.g();
        } else {
            iVar.g(i2);
        }
    }

    @Override // dev.duo.taskcore.j.b
    public boolean f() {
        dev.duo.taskcore.i iVar = this.B;
        return iVar != null && !iVar.h() && iVar.C() == dev.duo.taskcore.i.d.ACTIVE && iVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final dev.duo.workspaceprobe.l lVar, final java.util.List list) {
        b(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda94
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.a(dev.duo.workspaceprobe.l.this, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final dev.duo.workspaceprobe.l lVar, final java.util.Map map) {
        b(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.a(dev.duo.workspaceprobe.l.this, map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(int i2, int i3, dev.duo.taskcore.i iVar) {
        if (iVar.a(i2, i3)) {
            return;
        }
        android.util.Log.w(a, "Task " + i3 + " not taken into slot " + i2 + ": " + iVar.r());
        this.y.D1.post(new dev.duo.workspaceprobe.o$$ExternalSyntheticLambda6(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final dev.duo.taskcore.c cVar) {
        boolean z = cVar.a() || cVar.b();
        if (z) {
            if (this.H) {
                m();
                V();
            }
            q();
        }
        dev.duo.taskcore.g gVar = this.C;
        if (gVar != null) {
            gVar.b(z);
        }
        dev.duo.workspaceprobe.q qVar = this.y0;
        if (qVar != null) {
            qVar.a(z);
        }
        if (cVar.b()) {
            a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda80
                @Override // java.util.function.Consumer
                public final void accept(java.lang.Object obj) {
                    dev.duo.workspaceprobe.o.a(dev.duo.taskcore.c.this, (dev.duo.taskcore.i) obj);
                }
            });
        } else {
            O();
        }
    }

    void d(android.view.MotionEvent motionEvent) {
        float f2;
        float rawX;
        if (motionEvent.getActionMasked() == 0) {
            if (dev.duo.taskcore.j.i || this.g0 >= 0) {
                v();
            }
        } else if (dev.duo.taskcore.j.i) {
            a(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (this.H) {
                V();
            }
            dev.duo.taskcore.i iVar = this.B;
            if (iVar != null && iVar.C() == dev.duo.taskcore.i.d.RETURN_FAILED && c(motionEvent) != 0) {
                a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda84
                    @Override // java.util.function.Consumer
                    public final void accept(java.lang.Object obj) {
                        ((dev.duo.taskcore.i) obj).A();
                    }
                });
                return;
            }
            w();
            int c2 = c(motionEvent);
            boolean z = c2 != 0;
            if (z && u()) {
                this.H = true;
                this.K = c2 < 0;
                this.L = motionEvent.getRawX();
                this.M = motionEvent.getRawY();
                java.lang.Runnable runnable = new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda85
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.o.this.l();
                    }
                };
                this.P = runnable;
                this.y.D1.postDelayed(runnable, 300L);
                if (this.y.p4 != null) {
                    N();
                    return;
                }
                return;
            }
            if (this.y.p4 == null || !z) {
                return;
            }
            b(motionEvent);
            return;
        }
        if (this.X != null) {
            float hypot = (float) java.lang.Math.hypot(motionEvent.getRawX() - this.Y, motionEvent.getRawY() - this.Z);
            if (actionMasked != 2 || hypot > 60.0f) {
                w();
                return;
            }
            return;
        }
        if (this.H) {
            if (actionMasked != 5 && actionMasked != 3) {
                if (this.K) {
                    f2 = motionEvent.getRawX();
                    rawX = this.L;
                } else {
                    f2 = this.L;
                    rawX = motionEvent.getRawX();
                }
                float max = java.lang.Math.max(0.0f, f2 - rawX);
                float max2 = java.lang.Math.max(0.0f, this.M - motionEvent.getRawY());
                if (!this.I) {
                    float hypot2 = (float) java.lang.Math.hypot(motionEvent.getRawX() - this.L, motionEvent.getRawY() - this.M);
                    if (actionMasked == 1 || hypot2 > 60.0f) {
                        android.util.Log.i(a, "Corner hold cancelled: " + (actionMasked == 1 ? "released" : "moved " + java.lang.Math.round(hypot2) + "px") + " after " + (motionEvent.getEventTime() - motionEvent.getDownTime()) + "ms");
                        V();
                        return;
                    }
                    return;
                }
                boolean z2 = java.lang.Math.hypot((double) max, (double) max2) >= 220.0d;
                if (actionMasked == 2) {
                    a(max, max2, z2);
                    return;
                }
                if (actionMasked == 1) {
                    int[] iArr = this.N;
                    int i2 = this.O;
                    boolean z3 = this.K;
                    V();
                    if (z2 && iArr != null && i2 >= 0) {
                        a(i2, z3);
                        return;
                    } else if (z2 && iArr != null) {
                        a(iArr, z3);
                        return;
                    } else {
                        m();
                        return;
                    }
                }
                return;
            }
            m();
            V();
        }
    }

    private boolean b(int i2, java.lang.String str) {
        int i3;
        dev.duo.taskcore.i iVar = this.B;
        if (iVar != null && str != null) {
            java.lang.String[] b2 = dev.duo.taskcore.j.b(iVar);
            if (i2 >= 0 && (i3 = i2 + 1) < b2.length) {
                b2[i3] = str;
                try {
                    if (this.D == null) {
                        dev.duo.workspaceprobe.b bVar = this.y;
                        this.D = new dev.duo.workspaceprobe.p(bVar.p4, bVar.D1);
                    }
                    this.D.a(b2);
                    return true;
                } catch (java.lang.RuntimeException e2) {
                    android.util.Log.e(a, "Video isolation not ready: " + str + " not opened in slot " + i2, e2);
                    A();
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(dev.duo.taskcore.c cVar, dev.duo.taskcore.i iVar) {
        iVar.a("system: " + (cVar.k ? "state unknown" : "switching user"), false);
    }

    private void a(android.view.MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1 && actionMasked != 3) {
            dev.duo.taskcore.g gVar = this.C;
            if (gVar == null || !n()) {
                return;
            }
            android.graphics.Rect[] rectArr = gVar.g().d;
            int i2 = -1;
            for (int i3 = 0; i3 < rectArr.length; i3++) {
                if (rectArr[i3].contains(java.lang.Math.round(motionEvent.getRawX()), java.lang.Math.round(motionEvent.getRawY()))) {
                    i2 = i3;
                }
            }
            if (i2 == this.g0) {
                return;
            }
            this.y.D1.removeCallbacks(this.h0);
            this.g0 = i2;
            if (gVar.a(i2)) {
                this.y.D1.postDelayed(this.h0, s);
                return;
            }
            return;
        }
        v();
    }

    private void b(java.lang.Runnable runnable) {
        java.util.List<java.lang.Runnable> list = this.L0;
        if (list != null) {
            list.add(runnable);
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(java.lang.String str, java.lang.Runnable runnable) {
        try {
            runnable.run();
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.e(a, "close step failed: " + str, e2);
        }
    }

    @Override // dev.duo.taskcore.j.b
    public void b(final int i2) {
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda24
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                ((dev.duo.taskcore.i) obj).f(i2, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(java.lang.String[] strArr, dev.duo.taskcore.i.a aVar) {
        try {
            if (this.y.p4 != null) {
                if (this.D == null) {
                    dev.duo.workspaceprobe.b bVar = this.y;
                    this.D = new dev.duo.workspaceprobe.p(bVar.p4, bVar.D1);
                }
                this.D.a(strArr);
                aVar.a(true, "isolated");
                return;
            }
            throw new java.lang.IllegalStateException("no context");
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.e(a, "Video isolation failed: closing the workbench", e2);
            aVar.a(false, java.lang.String.valueOf(e2));
        }
    }

    private void a(float f2, float f3, boolean z) {
        dev.duo.workspaceprobe.b.R r2 = this.Q;
        if (r2 == null) {
            return;
        }
        float hypot = (float) java.lang.Math.hypot(f2, f3);
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            transaction.setPosition(r2.b, b(f2), (this.i0.bottom - 200) - f3);
            dev.duo.workspaceprobe.b.R r3 = this.R;
            if (r3 != null) {
                transaction.setAlpha(r3.b, java.lang.Math.min(1.0f, hypot / 60.0f));
                this.T.a(java.lang.Math.min(1.0f, hypot / 460.0f), 0.0f);
            }
            transaction.apply();
            transaction.close();
            if (z != this.J) {
                this.J = z;
                ((dev.duo.workspaceprobe.k) r2.d).a(z);
                if (z) {
                    this.y.B(2);
                }
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

    @Override // dev.duo.taskcore.j.b
    public void b(final java.lang.String str) {
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda17
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                dev.duo.workspaceprobe.o.a(str, (dev.duo.taskcore.i) obj);
            }
        });
    }

    private void a(android.view.SurfaceControl surfaceControl, int[] iArr, dev.duo.taskcore.b bVar) {
        android.graphics.drawable.Drawable[] drawableArr = new android.graphics.drawable.Drawable[4];
        java.util.Map<java.lang.Integer, java.lang.String> T = T();
        for (int i2 = 0; i2 < iArr.length && i2 < 4; i2++) {
            drawableArr[i2] = e(T.get(java.lang.Integer.valueOf(iArr[i2])));
        }
        dev.duo.workspaceprobe.n nVar = new dev.duo.workspaceprobe.n(this.y.p4, M(), drawableArr, bVar.b);
        this.T = nVar;
        nVar.a(bVar.a, new android.graphics.Rect[0], null);
        this.S = new android.graphics.Rect(bVar.b);
        dev.duo.workspaceprobe.b bVar2 = this.y;
        java.util.Objects.requireNonNull(bVar2);
        this.R = new dev.duo.workspaceprobe.b.R(bVar2, "workbench_stage", (android.view.View) this.T, 0.0f, 0, bVar.b.width(), bVar.b.height(), 0, 0.0f, true);
        this.W = false;
        this.V = false;
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            transaction.reparent(this.R.b, surfaceControl).setCrop(this.R.b, new android.graphics.Rect(bVar.b)).setLayer(this.R.b, n).setAlpha(this.R.b, 0.0f).setVisibility(this.R.b, true).apply();
            transaction.close();
        } finally {
        }
    }

    private synchronized void a(java.util.Collection<java.lang.String> collection) {
        if (this.y.p4 != null && collection != null && !collection.isEmpty()) {
            if (this.k0 == null) {
                this.k0 = java.util.concurrent.Executors.newSingleThreadExecutor(new java.util.concurrent.ThreadFactory() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda98
                    @Override // java.util.concurrent.ThreadFactory
                    public final java.lang.Thread newThread(java.lang.Runnable runnable) {
                        java.lang.Thread a2;
                        a2 = dev.duo.workspaceprobe.o.a(runnable);
                        return a2;
                    }
                });
            }
            final java.util.ArrayList arrayList = new java.util.ArrayList(collection);
            final android.content.Context context = this.y.p4;
            this.k0.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda99
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.o.this.a(arrayList, context);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Thread a(java.lang.Runnable runnable) {
        java.lang.Thread thread = new java.lang.Thread(runnable, "DuoWorkbenchIcons");
        thread.setDaemon(true);
        return thread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.util.List list, android.content.Context context) {
        java.util.Iterator it = list.iterator();
        while (it.hasNext()) {
            java.lang.String str = (java.lang.String) it.next();
            if (str != null && !this.j0.containsKey(str)) {
                try {
                    android.graphics.drawable.Drawable applicationIcon = context.getPackageManager().getApplicationIcon(str);
                    android.graphics.Bitmap createBitmap = android.graphics.Bitmap.createBitmap(180, 180, android.graphics.Bitmap.Config.ARGB_8888);
                    applicationIcon.setBounds(0, 0, 180, 180);
                    applicationIcon.draw(new android.graphics.Canvas(createBitmap));
                    this.j0.put(str, createBitmap);
                } catch (android.content.pm.PackageManager.NameNotFoundException | java.lang.RuntimeException e2) {
                    android.util.Log.w(a, "Plate icon not prepared for " + str + ": " + e2);
                }
            }
        }
    }

    @Override // dev.duo.taskcore.g.f
    public void d() {
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(final dev.duo.workspaceprobe.l lVar, final java.util.Map map) {
        b(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda82
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.c(dev.duo.workspaceprobe.l.this, map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public void c(final int i2, final dev.duo.workspaceprobe.i iVar) {
        for (android.app.ActivityManager.RunningTaskInfo runningTaskInfo : ((android.app.ActivityManager) this.y.p4.getSystemService(android.app.ActivityManager.class)).getRunningTasks(l)) {
            android.content.ComponentName componentName = runningTaskInfo.baseActivity;
            if (componentName != null && iVar.a.equals(componentName.getPackageName())) {
                final int i3 = runningTaskInfo.taskId;
                try {
                    if (b(i2, dev.duo.workspaceprobe.p.a(runningTaskInfo))) {
                        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda33
                            @Override // java.util.function.Consumer
                            public final void accept(java.lang.Object obj) {
                                dev.duo.workspaceprobe.o.this.b(i2, i3, (dev.duo.taskcore.i) obj);
                            }
                        });
                        return;
                    }
                    return;
                } catch (java.lang.ReflectiveOperationException e2) {
                    android.util.Log.e(a, "Task member unreadable " + i3 + ": not taken", e2);
                    return;
                }
            }
        }
        if (b(i2, (android.os.Process.myUid() / 100000) + ":" + iVar.a)) {
            try {
                final android.os.IBinder a2 = this.A.a(new android.content.Intent().setClassName(iVar.a, iVar.b));
                this.e0 = a2;
                this.f0 = i2;
                this.y.D1.postDelayed(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda34
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.o.this.a(a2, iVar);
                    }
                }, j);
            } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e3) {
                android.util.Log.e(a, "Launch " + iVar.a + " failed", e3);
                A();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.content.Context context) {
        try {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            for (android.app.ActivityManager.RecentTaskInfo recentTaskInfo : ((android.app.ActivityManager) context.getSystemService(android.app.ActivityManager.class)).getRecentTasks(8, 2)) {
                android.content.Intent intent = recentTaskInfo.baseIntent;
                android.content.ComponentName component = (intent == null || intent.getComponent() == null) ? recentTaskInfo.baseActivity : recentTaskInfo.baseIntent.getComponent();
                if (component != null && !arrayList.contains(component.getPackageName())) {
                    arrayList.add(component.getPackageName());
                }
            }
            a((java.util.Collection<java.lang.String>) arrayList);
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.w(a, "Entry icons not prepared: " + e2);
        }
    }

    private void a(long j2, android.animation.ValueAnimator.AnimatorUpdateListener animatorUpdateListener, java.lang.Runnable runnable) {
        android.animation.ValueAnimator valueAnimator = this.U;
        this.U = null;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        android.animation.ValueAnimator ofFloat = android.animation.ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(j2);
        ofFloat.setInterpolator(new android.view.animation.DecelerateInterpolator(2.0f));
        ofFloat.addUpdateListener(animatorUpdateListener);
        ofFloat.addListener(new dev.duo.workspaceprobe.o.b(runnable));
        this.U = ofFloat;
        ofFloat.start();
    }

    private void a(dev.duo.taskcore.b bVar, int i2) {
        if (this.R == null) {
            return;
        }
        android.graphics.Rect[] rectArr = new android.graphics.Rect[3];
        for (int i3 = 0; i3 < 3; i3++) {
            rectArr[i3] = bVar.d[i3];
        }
        android.graphics.Rect a2 = bVar.a();
        a2.top = bVar.e.top;
        a2.bottom = bVar.d[2].bottom;
        final dev.duo.workspaceprobe.n nVar = this.T;
        nVar.a(bVar.a, rectArr, a2);
        nVar.a(c(bVar), b(bVar));
        c(1.0f);
        a(q, new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda25
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
                dev.duo.workspaceprobe.o.b(dev.duo.workspaceprobe.n.this, valueAnimator);
            }
        }, new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.this.F();
            }
        });
    }

    @Override // dev.duo.taskcore.j.b
    public void d(final int i2) {
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda95
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                ((dev.duo.taskcore.i) obj).c(i2, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.workspaceprobe.n nVar, android.animation.ValueAnimator valueAnimator) {
        float floatValue = ((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue();
        nVar.a(floatValue, 0.0f);
        c(1.0f - floatValue);
    }

    private boolean a(dev.duo.taskcore.i iVar, dev.duo.taskcore.g gVar) {
        android.view.SurfaceControl surfaceControl = this.y.G1;
        if (surfaceControl == null) {
            return false;
        }
        p();
        android.graphics.drawable.Drawable[] drawableArr = new android.graphics.drawable.Drawable[4];
        drawableArr[0] = iVar.s() == null ? null : e(iVar.s().a.h);
        int i2 = 0;
        while (i2 < 3) {
            dev.duo.taskcore.d j2 = iVar.j(i2);
            i2++;
            drawableArr[i2] = j2 == null ? null : e(j2.a.h);
        }
        dev.duo.workspaceprobe.j jVar = new dev.duo.workspaceprobe.j(this.y.p4, M(), drawableArr);
        android.graphics.Rect rect = gVar.g().b;
        try {
            dev.duo.workspaceprobe.b bVar = this.y;
            java.util.Objects.requireNonNull(bVar);
            this.R = new dev.duo.workspaceprobe.b.R(bVar, "workbench_exit", (android.view.View) jVar, 0.0f, 0, rect.width(), rect.height(), 0, 0.0f, true);
            this.S = new android.graphics.Rect(rect);
            this.l0 = jVar;
            this.V = true;
            this.m0 = 0.0f;
            this.n0 = 0.0f;
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                transaction.reparent(this.R.b, surfaceControl).setLayer(this.R.b, n).setAlpha(this.R.b, 0.0f).setVisibility(this.R.b, true).apply();
                transaction.close();
                a(gVar.g(), 0.0f, 0.0f);
                return true;
            } finally {
            }
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.e(a, "Exit mask unavailable", e2);
            return false;
        }
    }

    private void a(dev.duo.taskcore.b bVar, float f2, float f3) {
        dev.duo.workspaceprobe.j jVar = this.l0;
        if (jVar == null || bVar == null) {
            return;
        }
        android.graphics.Rect[] rectArr = new android.graphics.Rect[3];
        for (int i2 = 0; i2 < 3; i2++) {
            android.graphics.Rect rect = new android.graphics.Rect(bVar.d[i2]);
            rectArr[i2] = rect;
            rect.offset(bVar.c() * java.lang.Math.round(f2), 0);
        }
        jVar.a(bVar.a(f2), rectArr);
        b(bVar, bVar.c() * java.lang.Math.round(f2));
        c(f3);
        this.m0 = f2;
        this.n0 = f3;
    }

    @Override // dev.duo.taskcore.g.f
    public void a(float f2) {
        dev.duo.taskcore.i iVar = this.B;
        dev.duo.taskcore.g gVar = this.C;
        if (iVar == null || gVar == null || this.r0 || iVar.C() != dev.duo.taskcore.i.d.ACTIVE) {
            return;
        }
        if (this.l0 != null || a(iVar, gVar)) {
            android.animation.ValueAnimator valueAnimator = this.U;
            if (valueAnimator != null) {
                this.U = null;
                valueAnimator.cancel();
            }
            a(gVar.g(), f2, java.lang.Math.min(1.0f, f2 / u));
        }
    }

    @Override // dev.duo.taskcore.g.f
    public void a() {
        dev.duo.taskcore.g gVar;
        if (this.l0 == null || this.r0 || (gVar = this.C) == null) {
            return;
        }
        final dev.duo.taskcore.b g2 = gVar.g();
        final float f2 = this.m0;
        final float f3 = this.n0;
        a(r, new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda86
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
                dev.duo.workspaceprobe.o.this.a(g2, f2, f3, valueAnimator);
            }
        }, new dev.duo.workspaceprobe.o$$ExternalSyntheticLambda2(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.taskcore.b bVar, float f2, float f3, android.animation.ValueAnimator valueAnimator) {
        float floatValue = 1.0f - ((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue();
        a(bVar, f2 * floatValue, f3 * floatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.taskcore.b bVar, int i2, int i3, android.graphics.Rect[] rectArr, android.graphics.Rect[] rectArr2, dev.duo.workspaceprobe.j jVar, android.graphics.Rect rect, android.graphics.Rect rect2, float f2, android.animation.ValueAnimator valueAnimator) {
        float floatValue = ((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue();
        b(bVar, java.lang.Math.round(i2 + ((i3 - i2) * floatValue)));
        android.graphics.Rect[] rectArr3 = new android.graphics.Rect[3];
        for (int i4 = 0; i4 < 3; i4++) {
            rectArr3[i4] = dev.duo.taskcore.b.a(rectArr[i4], rectArr2[i4], floatValue, new android.graphics.Rect());
        }
        jVar.a(dev.duo.taskcore.b.a(rect, rect2, floatValue, new android.graphics.Rect()), rectArr3);
        float min = java.lang.Math.min(1.0f, f2 + ((1.0f - f2) * java.lang.Math.min(1.0f, floatValue * 3.0f)));
        c(min);
        this.n0 = min;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final dev.duo.taskcore.b bVar, final boolean z, java.lang.String str, dev.duo.taskcore.i iVar) {
        final boolean a2 = iVar.a(bVar, !z);
        if (!a2) {
            android.util.Log.w(a, str + " relayout " + (z ? "deferred" : "refused") + ": " + iVar.r());
        }
        this.y.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda68
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.this.a(a2, bVar, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, dev.duo.taskcore.b bVar, boolean z2) {
        if (z) {
            a(bVar, !z2);
        }
        if (this.s0 == bVar && (z || !z2)) {
            this.s0 = null;
        }
        if (z || z2) {
            return;
        }
        Q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.view.Choreographer choreographer, long j2) {
        choreographer.postFrameCallback(new android.view.Choreographer.FrameCallback() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda27
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j3) {
                dev.duo.workspaceprobe.o.this.a(j3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j2) {
        if (this.R == null) {
            return;
        }
        a(r, new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda61
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
                dev.duo.workspaceprobe.o.this.a(valueAnimator);
            }
        }, new dev.duo.workspaceprobe.o$$ExternalSyntheticLambda2(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.animation.ValueAnimator valueAnimator) {
        c(1.0f - ((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void a(final int[] iArr, boolean z) {
        if (this.B == null && u()) {
            java.lang.String[] strArr = new java.lang.String[4];
            java.util.Map<java.lang.Integer, java.lang.String> S = S();
            for (int i2 = 0; i2 < iArr.length && i2 < 4; i2++) {
                strArr[i2] = S.get(java.lang.Integer.valueOf(iArr[i2]));
            }
            try {
                if (this.D == null) {
                    dev.duo.workspaceprobe.b bVar = this.y;
                    this.D = new dev.duo.workspaceprobe.p(bVar.p4, bVar.D1);
                }
                this.D.a(strArr);
                android.graphics.Rect r2 = r();
                U();
                try {
                    this.A.a(this, r2, z);
                    a(new dev.duo.taskcore.b(r2, z), iArr.length - 1);
                    dev.duo.taskcore.g e2 = this.A.e();
                    this.C = e2;
                    e2.a(this);
                    this.C.p();
                    a(this.C);
                    dev.duo.taskcore.j jVar = this.A;
                    long j2 = this.E + 1;
                    this.E = j2;
                    final dev.duo.taskcore.i iVar = new dev.duo.taskcore.i(jVar, j2);
                    this.B = iVar;
                    final int[] copyOfRange = java.util.Arrays.copyOfRange(iArr, 1, iArr.length);
                    android.util.Log.i(a, "Enter session " + iVar.c + (z ? " (mirrored)" : "") + ": main " + iArr[0] + " subs " + java.util.Arrays.toString(copyOfRange));
                    this.A.p().post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda87
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.workspaceprobe.o.a(dev.duo.taskcore.i.this, iArr, copyOfRange);
                        }
                    });
                } catch (java.lang.LinkageError | java.lang.RuntimeException e3) {
                    android.util.Log.e(a, "Workbench not opened", e3);
                    dev.duo.taskcore.g gVar = this.C;
                    this.C = null;
                    if (gVar != null) {
                        b("host", new dev.duo.workspaceprobe.o$$ExternalSyntheticLambda56(gVar));
                    }
                    dev.duo.workspaceprobe.p pVar = this.D;
                    this.D = null;
                    if (pVar != null) {
                        b("audio", new dev.duo.workspaceprobe.o$$ExternalSyntheticLambda54(pVar));
                    }
                    m();
                }
            } catch (java.lang.RuntimeException e4) {
                android.util.Log.e(a, "Video isolation not ready: workbench not opened", e4);
                dev.duo.workspaceprobe.p pVar2 = this.D;
                if (pVar2 != null) {
                    pVar2.a();
                    this.D = null;
                }
                m();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(dev.duo.taskcore.i iVar, int[] iArr, int[] iArr2) {
        iVar.a(iArr[0], iArr2);
    }

    private static int[] a(dev.duo.taskcore.i iVar, int i2) {
        int[] iArr = new int[4];
        java.util.Arrays.fill(iArr, -1);
        dev.duo.taskcore.d s2 = iVar.s();
        int i3 = 0;
        if (s2 != null) {
            iArr[0] = s2.a.a;
        }
        boolean z = s2 != null && s2.a.a == i2;
        for (int i4 = 0; i4 < 3; i4++) {
            dev.duo.taskcore.d j2 = iVar.j(i4);
            if (j2 != null) {
                int i5 = j2.a.a;
                iArr[i4 + 1] = i5;
                z |= i5 == i2;
            }
        }
        if (z) {
            return iArr;
        }
        int[] iArr2 = new int[4];
        java.util.Arrays.fill(iArr2, -1);
        iArr2[0] = i2;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int i6 = iArr[0];
        if (i6 >= 0) {
            arrayList.add(java.lang.Integer.valueOf(i6));
        }
        boolean z2 = iArr[0] < 0;
        for (int i7 = 1; i7 < 4; i7++) {
            int i8 = iArr[i7];
            if (i8 >= 0) {
                arrayList.add(java.lang.Integer.valueOf(i8));
            } else if (z2) {
                arrayList.add(-1);
            } else {
                z2 = true;
            }
        }
        while (i3 < 3 && i3 < arrayList.size()) {
            int i9 = i3 + 1;
            iArr2[i9] = ((java.lang.Integer) arrayList.get(i3)).intValue();
            i3 = i9;
        }
        return iArr2;
    }

    private void a(final int i2, boolean z) {
        dev.duo.taskcore.i iVar = this.B;
        if (iVar != null && this.C != null && u()) {
            dev.duo.taskcore.b g2 = this.C.g();
            dev.duo.taskcore.b bVar = new dev.duo.taskcore.b(this.i0, z);
            this.s0 = (g2.c == z && g2.b.equals(bVar.b)) ? null : bVar;
            a(bVar, 3);
            android.util.Log.i(a, "Corner into paused session " + iVar.c + ": incoming " + i2 + (this.s0 == null ? "" : ", relayout to " + bVar.b));
            a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda45
                @Override // java.util.function.Consumer
                public final void accept(java.lang.Object obj) {
                    dev.duo.workspaceprobe.o.this.b(i2, (dev.duo.taskcore.i) obj);
                }
            });
            return;
        }
        m();
    }

    private void a(final java.util.function.Consumer<dev.duo.taskcore.i> consumer) {
        final dev.duo.taskcore.i iVar = this.B;
        dev.duo.taskcore.j jVar = this.A;
        android.os.Handler p2 = jVar == null ? null : jVar.p();
        if (iVar == null || p2 == null) {
            return;
        }
        p2.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.this.a(iVar, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.taskcore.i iVar, java.util.function.Consumer consumer) {
        if (this.B == iVar) {
            consumer.accept(iVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(java.lang.String str, boolean z, dev.duo.taskcore.i iVar) {
        iVar.a(str, !z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public /* synthetic */ java.lang.Object a(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
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
            case -1295482945:
                if (name.equals("equals")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 147696667:
                if (name.equals("hashCode")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1593995928:
                if (name.equals("onDeviceStateChanged")) {
                    c2 = 3;
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
                break;
            case 3:
                this.t0 = objArr[0];
                I();
                break;
        }
        return null;
    }

    private void a(dev.duo.taskcore.g gVar) {
        t();
        dev.duo.taskcore.b g2 = gVar.g();
        try {
            dev.duo.workspaceprobe.b bVar = this.y;
            android.content.Context context = bVar.p4;
            this.y0 = new dev.duo.workspaceprobe.q(bVar, context, dev.duo.workspaceprobe.b.b(context));
            android.graphics.Rect b2 = b(g2);
            this.y0.a(g2, b2);
            dev.duo.workspaceprobe.b bVar2 = this.y;
            java.util.Objects.requireNonNull(bVar2);
            this.z0 = bVar2.new R("workbench_rail", this.y0, 0.0f, 0, b2.width(), b2.height(), 0, 0.0f, 8);
            this.A0 = b(g2);
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                android.view.SurfaceControl.Transaction layer = transaction.reparent(this.z0.b, gVar.t()).setLayer(this.z0.b, v);
                android.view.SurfaceControl surfaceControl = this.z0.b;
                android.graphics.Rect rect = this.A0;
                layer.setPosition(surfaceControl, rect.left, rect.top).setCrop(this.z0.b, new android.graphics.Rect(0, 0, this.A0.width(), this.A0.height())).setVisibility(this.z0.b, true).apply();
                transaction.close();
                this.y.a(this.y0);
                android.util.Log.i(a, "Rail attached " + this.y0.e() + " " + this.A0);
            } finally {
            }
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.e(a, "Workbench rail unavailable", e2);
            t();
        }
    }

    private void a(dev.duo.taskcore.b bVar, boolean z) {
        final dev.duo.workspaceprobe.b.R r2 = this.z0;
        if (r2 == null || this.y0 == null) {
            return;
        }
        android.animation.ValueAnimator valueAnimator = this.B0;
        if (valueAnimator != null) {
            this.B0 = null;
            valueAnimator.cancel();
        }
        final android.graphics.Rect rect = this.A0 != null ? new android.graphics.Rect(this.A0) : null;
        final android.graphics.Rect b2 = b(bVar);
        boolean z2 = (rect != null && rect.width() == b2.width() && rect.height() == b2.height()) ? false : true;
        this.A0 = new android.graphics.Rect(b2);
        if (z2) {
            r2.f = b2.width();
            r2.g = b2.height();
            r2.a.relayout(b2.width(), b2.height());
        }
        this.y0.a(bVar, b2);
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            transaction.setCrop(r2.b, new android.graphics.Rect(0, 0, b2.width(), b2.height()));
            if (!z || rect == null) {
                transaction.setPosition(r2.b, b2.left, b2.top);
            }
            transaction.apply();
            transaction.close();
            if (z && rect != null) {
                android.animation.ValueAnimator ofFloat = android.animation.ValueAnimator.ofFloat(0.0f, 1.0f);
                ofFloat.setDuration(300L);
                ofFloat.setInterpolator(new android.view.animation.DecelerateInterpolator(1.5f));
                ofFloat.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda23
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator2) {
                        dev.duo.workspaceprobe.o.this.a(r2, rect, b2, valueAnimator2);
                    }
                });
                this.B0 = ofFloat;
                ofFloat.start();
            }
            android.util.Log.i(a, "Rail relayout " + this.y0.e() + " " + b2 + (z ? " (slide)" : ""));
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
    public /* synthetic */ void a(dev.duo.workspaceprobe.b.R r2, android.graphics.Rect rect, android.graphics.Rect rect2, android.animation.ValueAnimator valueAnimator) {
        if (this.z0 == r2 && this.B0 == valueAnimator) {
            float floatValue = ((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue();
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                transaction.setPosition(r2.b, rect.left + ((rect2.left - r1) * floatValue), rect.top + ((rect2.top - r6) * floatValue)).apply();
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

    void a(boolean z) {
        dev.duo.taskcore.g gVar = this.C;
        if (gVar != null) {
            gVar.d(z);
        }
        dev.duo.workspaceprobe.q qVar = this.y0;
        if (qVar != null) {
            qVar.b(z);
        }
        dev.duo.workspaceprobe.n nVar = this.T;
        if (nVar != null) {
            nVar.b(z ? -14935010 : -1);
        }
    }

    @Override // dev.duo.taskcore.g.f
    public void a(final int i2, final int i3) {
        q();
        final dev.duo.taskcore.g gVar = this.C;
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda14
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                dev.duo.workspaceprobe.o.this.a(i2, i3, gVar, (dev.duo.taskcore.i) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, int i3, final dev.duo.taskcore.g gVar, dev.duo.taskcore.i iVar) {
        if (iVar.b(i2, i3) || gVar == null) {
            return;
        }
        this.y.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.g.this.r();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final int i2, final dev.duo.workspaceprobe.i iVar, dev.duo.taskcore.i iVar2) {
        if (iVar2.i(i2)) {
            return;
        }
        android.util.Log.w(a, "Replace in slot " + i2 + " cancelled: remove refused " + iVar2.r());
        this.y.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda65
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.this.a(i2, iVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, dev.duo.workspaceprobe.i iVar) {
        if (this.C0 == i2 && this.D0 == iVar) {
            this.C0 = -1;
            this.D0 = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final dev.duo.taskcore.b bVar, dev.duo.taskcore.i iVar) {
        if (!iVar.n()) {
            android.util.Log.w(a, "Flip refused: " + iVar.r());
        } else if (bVar != null) {
            this.y.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda48
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.o.this.a(bVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.taskcore.b bVar) {
        a(bVar, true);
    }

    @Override // dev.duo.taskcore.g.f
    public void a(final int i2) {
        a(i2, new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda88
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                dev.duo.workspaceprobe.o.this.c(i2, (dev.duo.workspaceprobe.i) obj);
            }
        });
    }

    private void a(int i2, final java.util.function.Consumer<dev.duo.workspaceprobe.i> consumer) {
        dev.duo.taskcore.g gVar = this.C;
        if (gVar == null) {
            return;
        }
        android.graphics.Rect rect = gVar.g().a;
        android.graphics.Rect rect2 = i2 < 0 ? rect : this.C.g().d[i2];
        float min = java.lang.Math.min(2.0f, this.C.g().d[0].width() / 172.0f);
        final dev.duo.workspaceprobe.l lVar = new dev.duo.workspaceprobe.l(this.y.p4, min, new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda89
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.this.o();
            }
        }, new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda90
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                dev.duo.workspaceprobe.o.this.a(consumer, (dev.duo.workspaceprobe.i) obj);
            }
        });
        final int max = java.lang.Math.max(rect.top, R() + 12);
        int min2 = java.lang.Math.min(rect.width(), java.lang.Math.round(620.0f * min));
        final int i3 = this.C.g().c ? rect.right - min2 : rect.left;
        if (a(lVar, i3, max, min2, rect.bottom - max, rect2, min * 34.0f)) {
            lVar.f.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda91
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.workspaceprobe.o.this.a(lVar, i3, max, view);
                }
            });
            final java.util.HashSet hashSet = new java.util.HashSet();
            dev.duo.taskcore.i iVar = this.B;
            if (iVar != null) {
                for (java.lang.String str : dev.duo.taskcore.j.b(iVar)) {
                    if (str != null) {
                        hashSet.add(str.substring(str.indexOf(58) + 1));
                    }
                }
            }
            hashSet.add("dev.duo.hookprobe");
            final android.content.Context context = this.y.p4;
            java.lang.Thread thread = new java.lang.Thread(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda92
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.o.this.a(context, hashSet, lVar);
                }
            }, "workbench-picker");
            this.c0 = thread;
            thread.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.util.function.Consumer consumer, dev.duo.workspaceprobe.i iVar) {
        o();
        consumer.accept(iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.workspaceprobe.l lVar, int i2, int i3, android.view.View view) {
        a(lVar, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.content.Context context, java.util.Set set, final dev.duo.workspaceprobe.l lVar) {
        try {
            android.content.pm.PackageManager packageManager = context.getPackageManager();
            java.util.HashMap hashMap = new java.util.HashMap();
            final java.util.List<dev.duo.workspaceprobe.i> a2 = a(context, (java.util.Set<java.lang.String>) set, hashMap);
            if (java.lang.Thread.currentThread().isInterrupted()) {
                return;
            }
            this.y.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda36
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.o.this.b(lVar, a2);
                }
            });
            final java.util.HashMap hashMap2 = new java.util.HashMap();
            for (dev.duo.workspaceprobe.i iVar : a2) {
                if (java.lang.Thread.currentThread().isInterrupted()) {
                    return;
                }
                java.lang.String str = iVar.a;
                hashMap2.put(str, ((android.content.pm.ResolveInfo) hashMap.get(str)).loadIcon(packageManager));
                if (hashMap2.size() == 10) {
                    java.util.HashMap hashMap3 = new java.util.HashMap();
                    this.y.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda37
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.workspaceprobe.o.this.b(lVar, hashMap2);
                        }
                    });
                    hashMap2 = hashMap3;
                }
            }
            if (hashMap2.isEmpty()) {
                return;
            }
            this.y.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda38
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.o.this.d(lVar, hashMap2);
                }
            });
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.e(a, "App list unavailable", e2);
            this.y.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda39
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.l.this.b("无法读取应用列表，请关闭后重试");
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(dev.duo.workspaceprobe.l lVar, java.util.List list) {
        if (lVar.isAttachedToWindow()) {
            lVar.a((java.util.List<dev.duo.workspaceprobe.i>) list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(dev.duo.workspaceprobe.l lVar, java.util.Map map) {
        if (lVar.isAttachedToWindow()) {
            lVar.a((java.util.Map<java.lang.String, android.graphics.drawable.Drawable>) map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.os.IBinder iBinder, dev.duo.workspaceprobe.i iVar) {
        if (this.e0 != iBinder) {
            return;
        }
        this.A.a(iBinder);
        this.e0 = null;
        android.util.Log.w(a, "Launch of " + iVar.a + " not seen in " + j + "ms: slot stays empty");
        A();
    }

    private static java.util.List<dev.duo.workspaceprobe.i> a(android.content.Context context, java.util.Set<java.lang.String> set, java.util.Map<java.lang.String, android.content.pm.ResolveInfo> map) {
        android.content.pm.PackageManager packageManager = context.getPackageManager();
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
        for (android.app.ActivityManager.RecentTaskInfo recentTaskInfo : ((android.app.ActivityManager) context.getSystemService(android.app.ActivityManager.class)).getRecentTasks(64, 2)) {
            android.content.ComponentName componentName = recentTaskInfo.baseActivity;
            java.lang.String packageName = componentName != null ? componentName.getPackageName() : null;
            if (packageName != null && !linkedHashMap.containsKey(packageName)) {
                linkedHashMap.put(packageName, java.lang.Integer.valueOf(recentTaskInfo.taskId));
            }
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(linkedHashMap.keySet());
        java.util.LinkedHashMap linkedHashMap2 = new java.util.LinkedHashMap();
        android.content.Intent addCategory = new android.content.Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER");
        android.icu.text.Transliterator transliterator = android.icu.text.Transliterator.getInstance("Han-Latin; Latin-ASCII");
        for (android.content.pm.ResolveInfo resolveInfo : packageManager.queryIntentActivities(addCategory, 0)) {
            if (java.lang.Thread.currentThread().isInterrupted()) {
                return java.util.Collections.EMPTY_LIST;
            }
            java.lang.String str = resolveInfo.activityInfo.packageName;
            if (!set.contains(str) && !"com.miui.home".equals(str) && !linkedHashMap2.containsKey(str)) {
                map.put(str, resolveInfo);
                java.lang.String valueOf = java.lang.String.valueOf(resolveInfo.loadLabel(packageManager));
                linkedHashMap2.put(str, new dev.duo.workspaceprobe.i(str, resolveInfo.activityInfo.name, valueOf, linkedHashMap.containsKey(str) ? ((java.lang.Integer) linkedHashMap.get(str)).intValue() : -1, arrayList.indexOf(str), a(resolveInfo.activityInfo), a(transliterator, valueOf, str)));
            }
        }
        java.util.ArrayList arrayList2 = new java.util.ArrayList(linkedHashMap2.values());
        final java.text.Collator collator = java.text.Collator.getInstance(java.util.Locale.CHINA);
        arrayList2.sort(new java.util.Comparator() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda47
            @Override // java.util.Comparator
            public final int compare(java.lang.Object obj, java.lang.Object obj2) {
                int a2;
                a2 = dev.duo.workspaceprobe.o.a(collator, (dev.duo.workspaceprobe.i) obj, (dev.duo.workspaceprobe.i) obj2);
                return a2;
            }
        });
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(java.text.Collator collator, dev.duo.workspaceprobe.i iVar, dev.duo.workspaceprobe.i iVar2) {
        int i2 = iVar.e;
        if (i2 >= 0 || iVar2.e >= 0) {
            if (i2 < 0) {
                i2 = Integer.MAX_VALUE;
            }
            int i3 = iVar2.e;
            int compare = java.lang.Integer.compare(i2, i3 >= 0 ? i3 : Integer.MAX_VALUE);
            if (compare != 0) {
                return compare;
            }
        }
        return collator.compare(iVar.c, iVar2.c);
    }

    private static java.lang.String a(android.icu.text.Transliterator transliterator, java.lang.String str, java.lang.String str2) {
        java.lang.String trim = transliterator.transliterate(str).toLowerCase(java.util.Locale.ROOT).trim();
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        for (java.lang.String str3 : trim.split("\\s+")) {
            if (!str3.isEmpty()) {
                sb.append(str3.charAt(0));
            }
        }
        return (str.toLowerCase(java.util.Locale.ROOT) + "|" + str2 + "|" + trim + "|" + ((java.lang.Object) sb)).replace(" ", "");
    }

    private void a(dev.duo.workspaceprobe.l lVar, int i2, int i3) {
        if (this.E0 != null || this.a0 == null) {
            return;
        }
        android.widget.TextView textView = lVar.f;
        int[] iArr = new int[2];
        textView.getLocationInWindow(iArr);
        final android.content.Context context = this.y.p4;
        boolean b2 = dev.duo.workspaceprobe.b.b(context);
        android.widget.EditText editText = new android.widget.EditText(context);
        editText.setSingleLine(true);
        editText.setHint(textView.getText());
        editText.setTextSize(0, textView.getTextSize());
        editText.setTextColor(dev.duo.workspaceprobe.l.a(b2));
        editText.setHintTextColor(textView.getCurrentTextColor());
        editText.setPadding(textView.getCompoundPaddingLeft(), 0, textView.getCompoundPaddingRight(), 0);
        editText.setGravity(16);
        editText.setBackground(null);
        textView.setText("");
        editText.setImeOptions(33554435);
        editText.addTextChangedListener(new dev.duo.workspaceprobe.o.c(lVar));
        editText.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda58
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(android.widget.TextView textView2, int i4, android.view.KeyEvent keyEvent) {
                boolean a2;
                a2 = dev.duo.workspaceprobe.o.a(context, textView2, i4, keyEvent);
                return a2;
            }
        });
        editText.setOnKeyListener(new android.view.View.OnKeyListener() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda59
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(android.view.View view, int i4, android.view.KeyEvent keyEvent) {
                boolean a2;
                a2 = dev.duo.workspaceprobe.o.this.a(view, i4, keyEvent);
                return a2;
            }
        });
        android.view.WindowManager.LayoutParams layoutParams = new android.view.WindowManager.LayoutParams(textView.getWidth(), textView.getHeight(), 2017, 16778016, -3);
        layoutParams.gravity = 51;
        layoutParams.x = i2 + iArr[0];
        layoutParams.y = i3 + iArr[1];
        layoutParams.layoutInDisplayCutoutMode = 3;
        layoutParams.setFitInsetsTypes(0);
        layoutParams.softInputMode = 53;
        layoutParams.setTitle("DuoWorkbenchSearch");
        try {
            ((android.view.WindowManager) context.getSystemService(android.view.WindowManager.class)).addView(editText, layoutParams);
            this.E0 = editText;
            editText.requestFocus();
            android.util.Log.i(a, "Search input open at " + layoutParams.x + "," + layoutParams.y + " " + layoutParams.width + "x" + layoutParams.height);
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.e(a, "Search input unavailable", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(android.content.Context context, android.widget.TextView textView, int i2, android.view.KeyEvent keyEvent) {
        ((android.view.inputmethod.InputMethodManager) context.getSystemService(android.view.inputmethod.InputMethodManager.class)).hideSoftInputFromWindow(textView.getWindowToken(), 0);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(android.view.View view, int i2, android.view.KeyEvent keyEvent) {
        if (i2 != 4) {
            return false;
        }
        if (keyEvent.getAction() == 1) {
            o();
        }
        return true;
    }

    private static boolean a(android.content.pm.ActivityInfo activityInfo) {
        try {
            return android.content.pm.ActivityInfo.class.getField("resizeMode").getInt(activityInfo) == 0;
        } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e2) {
            return false;
        }
    }

    private boolean a(android.view.View view, int i2, int i3, int i4, int i5, android.graphics.Rect rect, float f2) {
        q();
        dev.duo.taskcore.g gVar = this.C;
        if (gVar == null) {
            return false;
        }
        android.view.View view2 = new android.view.View(this.y.p4);
        view2.setOnTouchListener(new android.view.View.OnTouchListener() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda4
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(android.view.View view3, android.view.MotionEvent motionEvent) {
                boolean a2;
                a2 = dev.duo.workspaceprobe.o.this.a(view3, motionEvent);
                return a2;
            }
        });
        android.graphics.Rect rect2 = gVar.g().b;
        try {
            dev.duo.workspaceprobe.b bVar = this.y;
            java.util.Objects.requireNonNull(bVar);
            this.b0 = bVar.new R("workbench_popup_outside", view2, 0.0f, 0, rect2.width(), rect2.height(), 0, 0.0f, 8);
            dev.duo.workspaceprobe.b bVar2 = this.y;
            java.util.Objects.requireNonNull(bVar2);
            this.a0 = bVar2.new R("workbench_popup", view, 0.0f, 0, i4, i5, 0, 0.0f, 8);
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                transaction.reparent(this.b0.b, gVar.t()).setLayer(this.b0.b, i).setVisibility(this.b0.b, true);
                float f3 = i2;
                float f4 = i3;
                transaction.reparent(this.a0.b, gVar.t()).setLayer(this.a0.b, 2001).setPosition(this.a0.b, f3, f4).setCrop(this.a0.b, new android.graphics.Rect(0, 0, i4, i5)).setVisibility(this.a0.b, true).setAlpha(this.a0.b, 0.0f).setScale(this.a0.b, 0.08f, 0.08f).setPosition(this.a0.b, rect.centerX(), rect.centerY());
                try {
                    android.view.SurfaceControl.Transaction.class.getMethod("setCornerRadius", android.view.SurfaceControl.class, java.lang.Float.TYPE).invoke(transaction, this.a0.b, java.lang.Float.valueOf(f2));
                    android.view.SurfaceControl.Transaction.class.getMethod("setBackgroundBlurRadius", android.view.SurfaceControl.class, java.lang.Integer.TYPE).invoke(transaction, this.a0.b, 60);
                } catch (java.lang.ReflectiveOperationException e2) {
                    android.util.Log.w(a, "Popup blur unavailable", e2);
                }
                transaction.apply();
                transaction.close();
                final dev.duo.workspaceprobe.b.R r2 = this.a0;
                this.G0 = f3;
                this.H0 = f4;
                this.I0 = rect.centerX();
                this.J0 = rect.centerY();
                this.K0 = 0.0f;
                this.L0 = new java.util.ArrayList();
                final boolean[] zArr = {false};
                java.lang.Runnable runnable = new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.o.this.a(zArr, r2);
                    }
                };
                view.getViewTreeObserver().registerFrameCommitCallback(runnable);
                this.y.D1.postDelayed(runnable, x);
                return true;
            } finally {
            }
        } catch (java.lang.RuntimeException e3) {
            android.util.Log.e(a, "Popup unavailable", e3);
            q();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(android.view.View view, android.view.MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 1) {
            o();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean[] zArr, final dev.duo.workspaceprobe.b.R r2) {
        if (zArr[0] || r2 != this.a0) {
            return;
        }
        zArr[0] = true;
        android.animation.ValueAnimator ofFloat = android.animation.ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(220L);
        ofFloat.setInterpolator(new android.view.animation.DecelerateInterpolator(1.5f));
        ofFloat.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda10
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
                dev.duo.workspaceprobe.o.this.a(r2, valueAnimator);
            }
        });
        ofFloat.addListener(new dev.duo.workspaceprobe.o.d(ofFloat));
        this.F0 = ofFloat;
        ofFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.workspaceprobe.b.R r2, android.animation.ValueAnimator valueAnimator) {
        if (r2 != this.a0) {
            return;
        }
        float floatValue = ((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue();
        this.K0 = floatValue;
        a(r2, floatValue, this.G0, this.H0, this.I0, this.J0);
    }

    private static void a(dev.duo.workspaceprobe.b.R r2, float f2, float f3, float f4, float f5, float f6) {
        float f7 = (0.92f * f2) + 0.08f;
        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
        try {
            transaction.setPosition(r2.b, f5 + ((f3 - f5) * f2), f6 + ((f4 - f6) * f2)).setScale(r2.b, f7, f7).setAlpha(r2.b, f2).apply();
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
    public /* synthetic */ void a(dev.duo.workspaceprobe.b.R r2, float f2, float f3, float f4, float f5, android.animation.ValueAnimator valueAnimator) {
        if (this.M0 == r2) {
            a(r2, ((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue(), f2, f3, f4, f5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.view.View view) {
        ((android.view.WindowManager) this.y.p4.getSystemService(android.view.WindowManager.class)).removeViewImmediate(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(long j2, int i2, java.lang.Object obj, dev.duo.taskcore.i iVar) {
        if (iVar.c == j2) {
            iVar.d(i2, obj);
        }
    }

    @Override // dev.duo.taskcore.j.b
    public void a(final long j2, final int i2, final java.lang.Object obj) {
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda81
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj2) {
                dev.duo.workspaceprobe.o.a(j2, i2, obj, (dev.duo.taskcore.i) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(long j2, int i2, java.lang.Object obj, boolean z, dev.duo.taskcore.i iVar) {
        if (iVar.c == j2) {
            iVar.a(i2, obj, z);
        }
    }

    @Override // dev.duo.taskcore.j.b
    public void a(final long j2, final int i2, final java.lang.Object obj, final boolean z) {
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda97
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj2) {
                dev.duo.workspaceprobe.o.a(j2, i2, obj, z, (dev.duo.taskcore.i) obj2);
            }
        });
    }

    @Override // dev.duo.taskcore.j.b
    public void a(final dev.duo.taskcore.h.b bVar) {
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda21
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                dev.duo.workspaceprobe.o.a(dev.duo.taskcore.h.b.this, (dev.duo.taskcore.i) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(dev.duo.taskcore.h.b bVar, dev.duo.taskcore.i iVar) {
        dev.duo.taskcore.h.c cVar;
        if (iVar.c != bVar.a) {
            return;
        }
        int i2 = bVar.b;
        if (i2 == 3) {
            iVar.b(bVar.i);
            return;
        }
        if (i2 == 4) {
            iVar.a(bVar.d, bVar.i);
            return;
        }
        if (i2 != 1 || (cVar = bVar.g) == null) {
            return;
        }
        int i3 = bVar.c;
        if (i3 == 2) {
            iVar.f(cVar.a);
            return;
        }
        if (i3 == 4) {
            dev.duo.taskcore.h.c cVar2 = bVar.h;
            if (cVar2 != null) {
                iVar.a(cVar2.a, cVar2.e, cVar.a);
                return;
            }
            return;
        }
        if (i3 == 3) {
            dev.duo.taskcore.h.c cVar3 = bVar.h;
            if (cVar3 != null) {
                iVar.a(cVar3.a, cVar.a, cVar.e);
                return;
            }
            return;
        }
        if (iVar.a(cVar.a, cVar.e) != null) {
            iVar.m(bVar.g.a);
        }
    }

    @Override // dev.duo.taskcore.j.b
    public void a(final int i2, final java.lang.Object obj) {
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda7
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj2) {
                ((dev.duo.taskcore.i) obj2).e(i2, obj);
            }
        });
    }

    @Override // dev.duo.taskcore.j.b
    public void a(final int i2, final java.lang.Object obj, final int i3, final int i4) {
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda15
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj2) {
                ((dev.duo.taskcore.i) obj2).a(i2, obj, i3, i4);
            }
        });
    }

    @Override // dev.duo.taskcore.j.b
    public void a(final java.lang.String[] strArr, final dev.duo.taskcore.i.a aVar) {
        this.y.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda70
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.this.b(strArr, aVar);
            }
        });
    }

    private static java.lang.String[] a(java.lang.String[] strArr) {
        java.lang.String[] strArr2 = new java.lang.String[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            java.lang.String str = strArr[i2];
            strArr2[i2] = str == null ? null : str.substring(str.indexOf(58) + 1);
        }
        return strArr2;
    }

    @Override // dev.duo.taskcore.j.b
    public boolean a(int i2, java.lang.String str) {
        dev.duo.taskcore.i iVar = this.B;
        if (iVar == null || str == null || "dev.duo.hookprobe".equals(str) || this.r0) {
            return false;
        }
        dev.duo.taskcore.i.d C = iVar.C();
        if (C == dev.duo.taskcore.i.d.PAUSED && iVar.p() && iVar.a()) {
            return true;
        }
        return (C == dev.duo.taskcore.i.d.ACTIVE || C == dev.duo.taskcore.i.d.TRANSITIONING || C == dev.duo.taskcore.i.d.ATTACHING) && iVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, dev.duo.taskcore.i iVar) {
        if (iVar.b(i2)) {
            return;
        }
        this.A.a(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(java.lang.String str, dev.duo.taskcore.i iVar) {
        if (iVar.f()) {
            iVar.g();
        } else {
            iVar.c(str);
        }
    }

    @Override // dev.duo.taskcore.j.b
    public boolean a(java.lang.String str, java.lang.Object obj) {
        dev.duo.taskcore.i iVar = this.B;
        return iVar != null && iVar.b(str, obj);
    }

    @Override // dev.duo.taskcore.j.b
    public void a(final java.lang.String str) {
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda93
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                ((dev.duo.taskcore.i) obj).g(str);
            }
        });
    }

    @Override // dev.duo.taskcore.j.b
    public void a(final int i2, final android.os.IBinder iBinder) {
        this.y.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.this.a(iBinder, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.os.IBinder iBinder, final int i2) {
        if (this.e0 != iBinder) {
            this.A.i(i2);
            return;
        }
        this.e0 = null;
        final int i3 = this.f0;
        a(new java.util.function.Consumer() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda18
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                dev.duo.workspaceprobe.o.this.a(i3, i2, (dev.duo.taskcore.i) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, int i3, dev.duo.taskcore.i iVar) {
        if (iVar.a(i2, i3)) {
            return;
        }
        android.util.Log.w(a, "Launched task " + i3 + " not taken: " + iVar.r());
        this.A.i(i3);
        this.y.D1.post(new dev.duo.workspaceprobe.o$$ExternalSyntheticLambda6(this));
    }

    @Override // dev.duo.taskcore.j.b
    public void a(final dev.duo.taskcore.i iVar) {
        final dev.duo.taskcore.d[] dVarArr = new dev.duo.taskcore.d[3];
        for (int i2 = 0; i2 < 3; i2++) {
            dVarArr[i2] = iVar.j(i2);
        }
        final dev.duo.taskcore.i.d C = iVar.C();
        final boolean h2 = iVar.h();
        if (!h2 && C != dev.duo.taskcore.i.d.CLOSED && C != dev.duo.taskcore.i.d.RETURN_FAILED) {
            if (C == dev.duo.taskcore.i.d.ACTIVE || C == dev.duo.taskcore.i.d.PAUSED) {
                this.A.b(iVar.s(), dVarArr);
            }
        } else {
            this.A.b();
        }
        final java.lang.String[] b2 = dev.duo.taskcore.j.b(iVar);
        final java.lang.String iVar2 = iVar.toString();
        this.y.D1.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda69
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.o.this.a(iVar, C, h2, iVar2, dVarArr, b2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.taskcore.i iVar, dev.duo.taskcore.i.d dVar, boolean z, java.lang.String str, dev.duo.taskcore.d[] dVarArr, java.lang.String[] strArr) {
        final dev.duo.taskcore.g gVar = this.C;
        if (gVar == null || this.B != iVar) {
            return;
        }
        this.z.a(dVar, z, iVar.c);
        if (dVar == dev.duo.taskcore.i.d.PAUSED) {
            if (this.q0) {
                return;
            }
            this.q0 = true;
            q();
            gVar.e(false);
            return;
        }
        if (this.q0 && dVar == dev.duo.taskcore.i.d.ACTIVE) {
            this.q0 = false;
            gVar.e(true);
        }
        if (z && !this.r0 && !this.q0 && dVar != dev.duo.taskcore.i.d.CLOSED) {
            gVar.e(false);
        }
        dev.duo.taskcore.i.d dVar2 = dev.duo.taskcore.i.d.CLOSED;
        if (dVar == dVar2 || dVar == dev.duo.taskcore.i.d.RETURN_FAILED) {
            this.q0 = false;
            this.r0 = false;
            this.s0 = null;
        }
        if (dVar == dVar2) {
            if (this.R != null) {
                if (!this.V) {
                    m();
                } else if (this.o0) {
                    this.p0 = true;
                } else {
                    y();
                }
            }
            this.C0 = -1;
            this.D0 = null;
            b("popup", new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda52
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.o.this.q();
                }
            });
            final android.os.IBinder iBinder = this.e0;
            this.e0 = null;
            if (iBinder != null) {
                b("launch", new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda53
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.o.this.a(iBinder);
                    }
                });
            }
            dev.duo.workspaceprobe.p pVar = this.D;
            this.D = null;
            if (pVar != null) {
                b("audio", new dev.duo.workspaceprobe.o$$ExternalSyntheticLambda54(pVar));
            }
            b("rail", new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda55
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.o.this.t();
                }
            });
            b("host", new dev.duo.workspaceprobe.o$$ExternalSyntheticLambda56(gVar));
            this.C = null;
            this.B = null;
            android.util.Log.i(a, "Closed: " + str);
            return;
        }
        if (dVar == dev.duo.taskcore.i.d.RETURN_FAILED) {
            this.C0 = -1;
            this.D0 = null;
            b("retain tasks only", new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda57
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.g.this.s();
                }
            });
            b("rail", new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda55
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.o.this.t();
                }
            });
            if (this.R != null) {
                b("stage", new dev.duo.workspaceprobe.o$$ExternalSyntheticLambda2(this));
            }
            b("popup", new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda52
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.o.this.q();
                }
            });
            dev.duo.workspaceprobe.p pVar2 = this.D;
            this.D = null;
            if (pVar2 != null) {
                b("audio", new dev.duo.workspaceprobe.o$$ExternalSyntheticLambda54(pVar2));
            }
            android.util.Log.e(a, "RETURN_FAILED " + str);
            return;
        }
        gVar.d(dVarArr);
        gVar.d(iVar.s());
        dev.duo.taskcore.i.d dVar3 = dev.duo.taskcore.i.d.ACTIVE;
        gVar.c(dVar == dVar3 && !z);
        if (dVar != dVar3 || z) {
            return;
        }
        if (this.s0 != null) {
            c("resume");
        } else {
            Q();
        }
        a((java.util.Collection<java.lang.String>) java.util.Arrays.asList(a(strArr)));
        int i2 = this.d0;
        if (i2 >= 0 && dVarArr[i2] == null) {
            this.d0 = -1;
            a(i2);
        }
        int i3 = this.C0;
        if (i3 < 0 || dVarArr[i3] != null) {
            return;
        }
        dev.duo.workspaceprobe.i iVar2 = this.D0;
        this.C0 = -1;
        this.D0 = null;
        if (iVar2 != null) {
            c(i3, iVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.os.IBinder iBinder) {
        this.A.a(iBinder);
    }
}
