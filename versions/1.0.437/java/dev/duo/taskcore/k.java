package dev.duo.taskcore;

/* loaded from: classes.dex */
public final class k {
    private static final java.lang.String a = "TaskCoreWm";
    private static final int b = 2;
    private java.lang.reflect.Field A;
    private java.lang.reflect.Field B;
    private java.lang.reflect.Field C;
    private java.lang.reflect.Field D;
    private java.lang.reflect.Field E;
    private java.lang.reflect.Field F;
    private java.lang.reflect.Field G;
    private java.lang.reflect.Field H;
    private java.lang.reflect.Field I;
    private java.lang.reflect.Field J;
    private java.lang.reflect.Field K;
    private java.lang.reflect.Constructor<?> L;
    private java.lang.reflect.Method M;
    private java.lang.reflect.Method N;
    private java.lang.reflect.Method O;
    private java.lang.reflect.Method P;
    private java.lang.reflect.Method Q;
    private java.lang.reflect.Method R;
    private volatile dev.duo.taskcore.k.b T;
    private dev.duo.taskcore.k.b U;
    private volatile int X;
    private java.lang.reflect.Field Y;
    private java.lang.reflect.Field Z;
    private java.lang.reflect.Field a0;
    private java.lang.reflect.Field b0;
    private java.lang.Object c;
    private java.lang.reflect.Field c0;
    private java.lang.Object d;
    private java.lang.reflect.Field d0;
    private java.lang.Object e;
    private java.lang.reflect.Field e0;
    private java.lang.Object f;
    private java.lang.reflect.Field f0;
    private android.os.Handler g;
    private java.lang.reflect.Method g0;
    private android.content.Context h;
    private java.lang.reflect.Method h0;
    private volatile java.lang.Object i;
    private java.lang.reflect.Method i0;
    private java.lang.reflect.Method j;
    private java.lang.reflect.Method j0;
    private java.lang.reflect.Method k;
    private java.lang.reflect.Method k0;
    private java.lang.reflect.Method l;
    private java.lang.reflect.Method l0;
    private java.lang.reflect.Method m;
    private java.lang.reflect.Method m0;
    private java.lang.reflect.Method n;
    private java.lang.reflect.Method n0;
    private java.lang.reflect.Method o;
    private java.lang.reflect.Method o0;
    private java.lang.reflect.Method p;
    private java.lang.reflect.Method p0;
    private java.lang.reflect.Method q;
    private java.lang.reflect.Method r;
    private java.lang.reflect.Method s;
    private java.lang.reflect.Method t;
    private java.lang.reflect.Method u;
    private java.lang.reflect.Method v;
    private java.lang.reflect.Method w;
    private java.lang.reflect.Method x;
    private java.lang.reflect.Method y;
    private java.lang.reflect.Field z;
    private int S = -1;
    private final java.util.Map<java.lang.Integer, java.lang.String> V = new java.util.LinkedHashMap();
    private final java.lang.ThreadLocal<dev.duo.taskcore.k.c> W = new java.lang.ThreadLocal<>();

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {
        final int a;
        final int b;
        final int c;
        final java.lang.Object d;
        final java.lang.Object e;
        final android.os.IBinder f;
        final dev.duo.taskcore.d.c g;

        a(int i, int i2, int i3, java.lang.Object obj, java.lang.Object obj2, android.os.IBinder iBinder, dev.duo.taskcore.d.c cVar) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = obj;
            this.e = obj2;
            this.f = iBinder;
            this.g = cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class b implements android.os.IBinder.DeathRecipient {
        final long a;
        final android.os.IBinder b;
        final int c;
        final int d;
        final java.lang.Object e;
        final java.util.Map<java.lang.Integer, dev.duo.taskcore.k.a> f = new java.util.LinkedHashMap();
        final java.util.Map<android.os.IBinder, dev.duo.taskcore.k.c> g = new java.util.LinkedHashMap();
        final java.util.Map<android.os.IBinder, java.util.Map<android.os.IBinder, dev.duo.taskcore.h.b>> h = new java.util.LinkedHashMap();
        final java.util.Map<android.os.IBinder, dev.duo.taskcore.k.c> i = new java.util.LinkedHashMap();
        final java.util.Map<java.lang.Integer, android.os.IBinder> j = new java.util.LinkedHashMap();
        android.os.IBinder k;
        boolean l;
        int m;
        boolean n;
        boolean o;

        b(long j, android.os.IBinder iBinder, int i, int i2, java.lang.Object obj) {
            this.a = j;
            this.b = iBinder;
            this.c = i;
            this.d = i2;
            this.e = obj;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            synchronized (dev.duo.taskcore.k.this.d) {
                if (dev.duo.taskcore.k.this.T != this) {
                    return;
                }
                android.util.Log.w(dev.duo.taskcore.k.a, "SystemUI died with session " + this.a + ": restoring " + this.f.keySet());
                dev.duo.taskcore.k.this.T = null;
                dev.duo.taskcore.k.this.b(this);
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            this.o = true;
            dev.duo.taskcore.k.this.g.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.k$b$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.k.b.this.a();
                }
            });
        }
    }

    private final class c {
        final dev.duo.taskcore.k.b a;
        final android.os.IBinder b;
        final android.os.IBinder c;
        final android.os.IBinder d;
        final int e;
        final java.util.Map<java.lang.Integer, android.os.IBinder> f = new java.util.LinkedHashMap();
        final java.util.Map<java.lang.Object, java.lang.Object> g = new java.util.LinkedHashMap();
        final java.util.Set<java.lang.Object> h = new java.util.HashSet();
        java.lang.Object i;
        java.lang.Object j;
        java.lang.Object k;
        boolean l;
        dev.duo.taskcore.h.c m;
        dev.duo.taskcore.h.b n;

        c(dev.duo.taskcore.k.b bVar, android.os.IBinder iBinder, android.os.IBinder iBinder2, android.os.IBinder iBinder3, int i) {
            this.a = bVar;
            this.b = iBinder;
            this.c = iBinder2;
            this.d = iBinder3;
            this.e = i;
            for (dev.duo.taskcore.k.a aVar : bVar.f.values()) {
                this.f.put(java.lang.Integer.valueOf(aVar.a), aVar.f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object d(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        if (this.T != null) {
            e((android.os.IBinder) chain.getArg(0));
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object e(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        if (this.T != null) {
            e((android.os.IBinder) this.h0.invoke(chain.getThisObject(), null));
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object f(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        if (this.T != null) {
            e((android.os.IBinder) null);
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object g(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        dev.duo.taskcore.k.c remove;
        android.os.Bundle bundle = (android.os.Bundle) chain.getArg(8);
        if (bundle == null || !bundle.containsKey(dev.duo.taskcore.h.x)) {
            return chain.proceed();
        }
        android.os.IBinder binder = bundle.getBinder(dev.duo.taskcore.h.x);
        android.os.IBinder asBinder = ((android.os.IInterface) chain.getArg(1)).asBinder();
        int callingUid = android.os.Binder.getCallingUid();
        int callingPid = android.os.Binder.getCallingPid();
        if (this.T == null) {
            throw new java.lang.SecurityException("source session/caller mismatch");
        }
        synchronized (this.d) {
            dev.duo.taskcore.k.b bVar = this.T;
            if (bVar == null || bVar.o || bVar.c != callingUid || bVar.d != callingPid) {
                throw new java.lang.SecurityException("source session/caller mismatch");
            }
            remove = bVar.g.remove(binder);
            java.lang.Object invoke = this.o0.invoke(null, bundle);
            android.os.IBinder iBinder = invoke == null ? null : (android.os.IBinder) this.p0.invoke(invoke, null);
            if (remove == null || remove.c != asBinder || remove.d != iBinder) {
                throw new java.lang.SecurityException("source target/cookie mismatch");
            }
        }
        java.lang.Object[] array = chain.getArgs().toArray();
        android.os.Bundle bundle2 = new android.os.Bundle(bundle);
        bundle2.remove(dev.duo.taskcore.h.x);
        array[8] = bundle2;
        dev.duo.taskcore.k.c cVar = this.W.get();
        this.W.set(remove);
        try {
            java.lang.Object proceed = chain.proceed(array);
            synchronized (this.d) {
                dev.duo.taskcore.k.b bVar2 = this.T;
                dev.duo.taskcore.k.b bVar3 = remove.a;
                if (bVar2 == bVar3 && !bVar3.o && remove.n != null && ((java.lang.Boolean) this.n0.invoke(null, (java.lang.Integer) proceed)).booleanValue()) {
                    remove.l = true;
                    if (remove.e == 1 && !remove.a.i.isEmpty()) {
                        remove.a.l = true;
                    }
                    a(remove.a, remove.n);
                    e((android.os.IBinder) null);
                }
            }
            if (cVar == null) {
                this.W.remove();
                return proceed;
            }
            this.W.set(cVar);
            return proceed;
        } catch (java.lang.Throwable th) {
            if (cVar == null) {
                this.W.remove();
            } else {
                this.W.set(cVar);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object h(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        dev.duo.taskcore.k.c cVar = this.W.get();
        if (cVar == null) {
            return chain.proceed();
        }
        java.lang.Object obj = cVar.i;
        cVar.i = chain.getThisObject();
        try {
            return chain.proceed();
        } finally {
            cVar.i = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0330  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ java.lang.Object i(io.github.libxposed.api.XposedInterface.Chain r27) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 820
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.taskcore.k.i(io.github.libxposed.api.XposedInterface$Chain):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object j(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        boolean z;
        java.lang.Object proceed = chain.proceed();
        dev.duo.taskcore.k.b bVar = this.T;
        if (bVar != null) {
            synchronized (this.d) {
                z = false;
                for (dev.duo.taskcore.k.c cVar : bVar.i.values()) {
                    if (cVar.g.containsKey(chain.getThisObject())) {
                        if ("removeImmediately".equals(chain.getExecutable().getName())) {
                            cVar.h.add(chain.getThisObject());
                        }
                        z = true;
                    }
                }
            }
            if (z) {
                e((android.os.IBinder) null);
                return proceed;
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object k(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        int intValue = ((java.lang.Integer) chain.getArg(0)).intValue();
        if (intValue != this.X) {
            this.X = intValue;
            dev.duo.taskcore.k.b bVar = this.T;
            if (bVar != null && !bVar.o && this.g != null) {
                a(bVar, a(bVar, intValue, false));
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.util.Map c(android.os.IBinder iBinder) {
        return new java.util.LinkedHashMap();
    }

    private void b(io.github.libxposed.api.XposedInterface xposedInterface, java.lang.ClassLoader classLoader) throws java.lang.ReflectiveOperationException {
        java.lang.Class<?> cls = java.lang.Class.forName("com.android.server.am.ActivityManagerService", false, classLoader);
        java.lang.Class<?> cls2 = java.lang.Class.forName("com.android.server.am.PendingIntentRecord", false, classLoader);
        java.lang.Class<?> cls3 = java.lang.Class.forName("com.android.server.wm.ActivityRecord", false, classLoader);
        java.lang.Class<?> cls4 = java.lang.Class.forName("com.android.server.wm.ActivityStarter", false, classLoader);
        java.lang.Class<?> cls5 = java.lang.Class.forName("com.android.server.wm.ActivityStarter$Request", false, classLoader);
        java.lang.Class<?> cls6 = java.lang.Class.forName("com.android.server.wm.Transition", false, classLoader);
        java.lang.Class<?> cls7 = java.lang.Class.forName("com.android.server.wm.WindowContainer", false, classLoader);
        java.lang.Class<?> cls8 = java.lang.Class.forName("com.android.server.wm.ConfigurationContainer", false, classLoader);
        java.lang.Class<?> cls9 = java.lang.Class.forName("com.android.server.wm.Task", false, classLoader);
        java.lang.Class<?> cls10 = java.lang.Class.forName("com.android.server.wm.RootWindowContainer", false, classLoader);
        java.lang.Class<?> cls11 = java.lang.Class.forName("android.app.ActivityOptions", false, classLoader);
        java.lang.Class<?> cls12 = java.lang.Class.forName("android.app.IApplicationThread", false, classLoader);
        java.lang.Class<?> cls13 = java.lang.Class.forName("android.content.IIntentReceiver", false, classLoader);
        java.lang.Class<?> cls14 = java.lang.Class.forName("android.content.IIntentSender", false, classLoader);
        this.Y = cls4.getDeclaredField("mRequest");
        this.Z = cls5.getDeclaredField("originatingPendingIntent");
        this.a0 = cls4.getDeclaredField("mLastStartActivityRecord");
        this.b0 = cls4.getDeclaredField("mSourceRecord");
        this.c0 = java.lang.Class.forName("com.android.server.wm.WindowToken", false, classLoader).getDeclaredField("token");
        this.d0 = cls3.getDeclaredField("finishing");
        this.f0 = cls7.getDeclaredField("mTransitionController");
        this.e0 = cls9.getDeclaredField("mTaskId");
        this.g0 = cls3.getDeclaredMethod("getTask", null);
        this.h0 = cls6.getDeclaredMethod("getToken", null);
        this.i0 = cls6.getDeclaredMethod("isAborted", null);
        this.j0 = cls7.getDeclaredMethod("isVisibleRequested", null);
        this.k0 = cls10.getDeclaredMethod("getTopDisplayFocusedRootTask", null);
        this.l0 = cls9.getDeclaredMethod("getTopResumedActivity", null);
        this.m0 = cls8.getDeclaredMethod("getActivityType", null);
        this.n0 = android.app.ActivityManager.class.getDeclaredMethod("isStartResultSuccessful", java.lang.Integer.TYPE);
        this.o0 = cls11.getDeclaredMethod("fromBundle", android.os.Bundle.class);
        java.lang.reflect.Method declaredMethod = cls11.getDeclaredMethod("getLaunchCookie", null);
        this.p0 = declaredMethod;
        java.lang.reflect.AccessibleObject[] accessibleObjectArr = {this.Y, this.Z, this.a0, this.b0, this.c0, this.d0, this.f0, this.e0, this.g0, this.h0, this.i0, this.j0, this.k0, this.l0, this.m0, this.n0, this.o0, declaredMethod};
        for (int i = 0; i < 18; i++) {
            accessibleObjectArr[i].setAccessible(true);
        }
        java.lang.Class cls15 = java.lang.Integer.TYPE;
        xposedInterface.hook(cls.getDeclaredMethod("sendIntentSender", cls12, cls14, android.os.IBinder.class, cls15, android.content.Intent.class, java.lang.String.class, cls13, java.lang.String.class, android.os.Bundle.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.k$$ExternalSyntheticLambda7
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object g;
                g = dev.duo.taskcore.k.this.g(chain);
                return g;
            }
        });
        xposedInterface.hook(cls2.getDeclaredMethod("sendInner", cls12, cls15, android.content.Intent.class, java.lang.String.class, android.os.IBinder.class, cls13, java.lang.String.class, android.os.IBinder.class, java.lang.String.class, cls15, cls15, cls15, android.os.Bundle.class, cls15, cls15)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.k$$ExternalSyntheticLambda8
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object h;
                h = dev.duo.taskcore.k.this.h(chain);
                return h;
            }
        });
        xposedInterface.hook(cls4.getDeclaredMethod("handleStartResult", cls3, cls11, cls15, java.lang.Boolean.TYPE, java.lang.Class.forName("android.window.RemoteTransition", false, classLoader), cls6, cls15)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.k$$ExternalSyntheticLambda9
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object i2;
                i2 = dev.duo.taskcore.k.this.i(chain);
                return i2;
            }
        });
        java.lang.reflect.Method[] methodArr = {cls3.getDeclaredMethod("makeFinishingLocked", null), cls3.getDeclaredMethod("removeImmediately", null)};
        for (int i2 = 0; i2 < 2; i2++) {
            xposedInterface.hook(methodArr[i2]).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.k$$ExternalSyntheticLambda10
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object j;
                    j = dev.duo.taskcore.k.this.j(chain);
                    return j;
                }
            });
        }
        java.lang.Class<?> cls16 = java.lang.Class.forName("com.android.server.TelephonyRegistry", false, classLoader);
        java.lang.Class cls17 = java.lang.Integer.TYPE;
        xposedInterface.hook(cls16.getDeclaredMethod("notifyCallStateForAllSubs", cls17, java.lang.String.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.k$$ExternalSyntheticLambda11
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object k;
                k = dev.duo.taskcore.k.this.k(chain);
                return k;
            }
        });
        java.lang.Class<?> cls18 = java.lang.Class.forName("com.android.server.wm.ActivityTaskSupervisor", false, classLoader);
        xposedInterface.hook(java.lang.Class.forName("com.android.server.wm.ActivityTaskManagerService", false, classLoader).getDeclaredMethod("startActivityFromRecents", cls17, android.os.Bundle.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.k$$ExternalSyntheticLambda12
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object b2;
                b2 = dev.duo.taskcore.k.this.b(chain);
                return b2;
            }
        });
        xposedInterface.hook(cls18.getDeclaredMethod("updateTopResumedActivityIfNeeded", java.lang.String.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.k$$ExternalSyntheticLambda13
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object c2;
                c2 = dev.duo.taskcore.k.this.c(chain);
                return c2;
            }
        });
        xposedInterface.hook(java.lang.Class.forName("com.android.server.wm.WindowOrganizerController", false, classLoader).getDeclaredMethod("finishTransition", android.os.IBinder.class, java.lang.Class.forName("android.window.WindowContainerTransaction", false, classLoader))).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.k$$ExternalSyntheticLambda14
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object d;
                d = dev.duo.taskcore.k.this.d(chain);
                return d;
            }
        });
        xposedInterface.hook(cls6.getDeclaredMethod("abort", null)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.k$$ExternalSyntheticLambda15
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object e;
                e = dev.duo.taskcore.k.this.e(chain);
                return e;
            }
        });
        xposedInterface.hook(java.lang.Class.forName("com.android.server.wm.TransitionController", false, classLoader).getDeclaredMethod("validateStatesOnIdle", null)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.k$$ExternalSyntheticLambda16
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object f;
                f = dev.duo.taskcore.k.this.f(chain);
                return f;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object c(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        if (this.T != null) {
            e((android.os.IBinder) null);
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0084 A[Catch: all -> 0x0166, TryCatch #0 {, blocks: (B:5:0x0003, B:7:0x0007, B:11:0x000f, B:12:0x0014, B:14:0x001c, B:17:0x001e, B:23:0x003c, B:25:0x003e, B:26:0x004a, B:28:0x0050, B:30:0x0058, B:32:0x005c, B:34:0x0062, B:35:0x0072, B:36:0x007e, B:38:0x0084, B:39:0x0094, B:41:0x009a, B:43:0x00ac, B:46:0x00b8, B:49:0x00ca, B:52:0x00e2, B:55:0x00fa, B:64:0x0107, B:67:0x010b, B:70:0x0113, B:73:0x012d, B:81:0x0135, B:83:0x013d, B:85:0x0141, B:88:0x0154, B:90:0x0162, B:93:0x0035, B:94:0x002b, B:95:0x0164), top: B:4:0x0003, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void d(android.os.IBinder r15) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.taskcore.k.d(android.os.IBinder):void");
    }

    private void e(final android.os.IBinder iBinder) {
        this.g.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.k$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.k.this.d(iBinder);
            }
        });
    }

    public void a(io.github.libxposed.api.XposedInterface xposedInterface, java.lang.ClassLoader classLoader) throws java.lang.ReflectiveOperationException {
        java.lang.Class<?> cls = java.lang.Class.forName("com.android.server.wm.WindowManagerService", false, classLoader);
        java.lang.Class<?> cls2 = java.lang.Class.forName("com.android.server.wm.ActivityTaskManagerService", false, classLoader);
        java.lang.Class<?> cls3 = java.lang.Class.forName("com.android.server.wm.RootWindowContainer", false, classLoader);
        java.lang.Class<?> cls4 = java.lang.Class.forName("com.android.server.wm.Task", false, classLoader);
        java.lang.Class<?> cls5 = java.lang.Class.forName("com.android.server.wm.TaskFragment", false, classLoader);
        java.lang.Class<?> cls6 = java.lang.Class.forName("com.android.server.wm.WindowContainer", false, classLoader);
        java.lang.Class<?> cls7 = java.lang.Class.forName("com.android.server.wm.ConfigurationContainer", false, classLoader);
        java.lang.Class<?> cls8 = java.lang.Class.forName("com.android.server.wm.WindowContainer$RemoteToken", false, classLoader);
        java.lang.Class<?> cls9 = java.lang.Class.forName("com.android.server.wm.TaskOrganizerController", false, classLoader);
        java.lang.Class<?> cls10 = java.lang.Class.forName("com.android.server.wm.WindowOrganizerController", false, classLoader);
        java.lang.Class<?> cls11 = java.lang.Class.forName("com.android.server.wm.WindowProcessControllerMap", false, classLoader);
        java.lang.Class<?> cls12 = java.lang.Class.forName("com.android.server.wm.WindowProcessController", false, classLoader);
        java.lang.Class<?> cls13 = java.lang.Class.forName("com.android.server.wm.TransitionController", false, classLoader);
        java.lang.Class<?> cls14 = java.lang.Class.forName("android.window.WindowContainerTransaction", false, classLoader);
        java.lang.Class<?> cls15 = java.lang.Class.forName("android.window.WindowContainerToken", false, classLoader);
        java.lang.Class cls16 = java.lang.Integer.TYPE;
        this.j = cls3.getDeclaredMethod("anyTaskForId", cls16, cls16);
        this.y = cls3.getDeclaredMethod("getDisplayContent", cls16);
        this.K = cls3.getDeclaredField("mCurrentUser");
        this.z = cls4.getDeclaredField("mUserId");
        this.A = cls4.getDeclaredField("mIsTrimmableFromRecents");
        this.m = cls5.getDeclaredMethod("getDisplayId", null);
        this.D = cls5.getDeclaredField("mForceHiddenFlags");
        this.k = cls7.getDeclaredMethod("getRequestedOverrideWindowingMode", null);
        this.l = cls7.getDeclaredMethod("getRequestedOverrideBounds", null);
        this.C = cls6.getDeclaredField("mIsFocusable");
        this.B = cls6.getDeclaredField("mRemoteToken");
        java.lang.reflect.Method declaredMethod = cls6.getDeclaredMethod("getParent", null);
        this.n = declaredMethod;
        if (declaredMethod.getReturnType() != cls6) {
            this.n = a(cls6, "getParent", cls6);
        }
        this.o = cls6.getDeclaredMethod("getSurfaceControl", null);
        this.p = cls6.getDeclaredMethod("reparentSurfaceControl", android.view.SurfaceControl.Transaction.class, android.view.SurfaceControl.class);
        this.q = cls6.getDeclaredMethod("updateSurfacePosition", android.view.SurfaceControl.Transaction.class);
        this.r = cls8.getDeclaredMethod("toWindowContainerToken", null);
        this.E = cls9.getDeclaredField("mInterceptBackPressedOnRootTasks");
        this.F = cls2.getDeclaredField("mTaskOrganizerController");
        this.G = cls2.getDeclaredField("mWindowOrganizerController");
        this.w = cls10.getDeclaredMethod("applyTransaction", cls14);
        this.H = cls2.getDeclaredField("mProcessMap");
        this.s = cls11.getDeclaredMethod("getProcess", cls16);
        this.I = cls12.getDeclaredField("mName");
        this.J = cls12.getDeclaredField("mUid");
        this.v = cls12.getDeclaredMethod("getPid", null);
        this.t = cls12.getDeclaredMethod("isRemoved", null);
        this.u = cls12.getDeclaredMethod("hasThread", null);
        this.x = cls13.getDeclaredMethod("inTransition", cls6);
        this.L = cls14.getConstructor(null);
        this.M = cls14.getMethod("setWindowingMode", cls15, cls16);
        this.N = cls14.getMethod("setBounds", cls15, android.graphics.Rect.class);
        java.lang.Class cls17 = java.lang.Boolean.TYPE;
        this.O = cls14.getMethod("setFocusable", cls15, cls17);
        this.P = cls14.getMethod("setHidden", cls15, cls17);
        this.Q = cls14.getMethod("setInterceptBackPressedOnTaskRoot", cls15, cls17);
        this.R = cls14.getMethod("setTaskTrimmableFromRecents", cls15, cls17);
        final java.lang.reflect.Field declaredField = cls.getDeclaredField("mGlobalLock");
        final java.lang.reflect.Field declaredField2 = cls.getDeclaredField("mRoot");
        final java.lang.reflect.Field declaredField3 = cls.getDeclaredField("mAtmService");
        final java.lang.reflect.Field declaredField4 = cls.getDeclaredField("mH");
        final java.lang.reflect.Field declaredField5 = cls.getDeclaredField("mContext");
        java.lang.reflect.AccessibleObject[] accessibleObjectArr = {this.j, this.y, this.K, this.z, this.A, this.m, this.D, this.k, this.l, this.C, this.B, this.n, this.o, this.p, this.q, this.r, this.E, this.F, this.G, this.w, this.H, this.s, this.I, this.J, this.v, this.t, this.u, this.x, declaredField, declaredField2, declaredField3, declaredField4, declaredField5};
        for (int i = 0; i < 33; i++) {
            accessibleObjectArr[i].setAccessible(true);
        }
        java.lang.reflect.Method[] methodArr = {cls13.getDeclaredMethod("validateStatesOnIdle", null), cls13.getDeclaredMethod("unregisterTransitionPlayer", java.lang.Class.forName("android.window.ITransitionPlayer", false, classLoader))};
        for (int i2 = 0; i2 < 2; i2++) {
            xposedInterface.hook(methodArr[i2]).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.k$$ExternalSyntheticLambda5
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.taskcore.k.this.a(chain);
                    return a2;
                }
            });
        }
        java.lang.Class cls18 = java.lang.Integer.TYPE;
        xposedInterface.hook(cls.getDeclaredMethod("onTransact", cls18, android.os.Parcel.class, android.os.Parcel.class, cls18)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.taskcore.k$$ExternalSyntheticLambda6
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object a2;
                a2 = dev.duo.taskcore.k.this.a(declaredField, declaredField2, declaredField3, declaredField4, declaredField5, chain);
                return a2;
            }
        });
        b(xposedInterface, classLoader);
        android.util.Log.i(a, "server bridge installed code=0x" + java.lang.Integer.toHexString(dev.duo.taskcore.h.a) + " build=" + dev.duo.taskcore.h.J);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object obj;
        java.lang.Object proceed = chain.proceed();
        this.i = chain.getThisObject();
        if (this.U == null || (obj = this.d) == null) {
            return proceed;
        }
        synchronized (obj) {
            dev.duo.taskcore.k.b bVar = this.U;
            if (bVar != null) {
                this.U = null;
                b(bVar);
            }
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.reflect.Field field3, java.lang.reflect.Field field4, java.lang.reflect.Field field5, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        if (((java.lang.Integer) chain.getArg(0)).intValue() != 15991297) {
            return chain.proceed();
        }
        android.os.Parcel parcel = (android.os.Parcel) chain.getArg(1);
        int dataPosition = parcel.dataPosition();
        int callingUid = android.os.Binder.getCallingUid();
        int callingPid = android.os.Binder.getCallingPid();
        try {
            parcel.enforceInterface(dev.duo.taskcore.h.b);
            if (parcel.dataAvail() >= 4 && parcel.readInt() == dev.duo.taskcore.h.a()) {
                if (this.c == null) {
                    java.lang.Object thisObject = chain.getThisObject();
                    this.c = thisObject;
                    this.d = field.get(thisObject);
                    this.e = field2.get(this.c);
                    this.f = field3.get(this.c);
                    this.g = (android.os.Handler) field4.get(this.c);
                    this.h = (android.content.Context) field5.get(this.c);
                }
                a(parcel, (android.os.Parcel) chain.getArg(2), callingUid, callingPid);
                return java.lang.Boolean.TRUE;
            }
            parcel.setDataPosition(dataPosition);
            return chain.proceed();
        } catch (java.lang.SecurityException e) {
            parcel.setDataPosition(dataPosition);
            return chain.proceed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.util.Map a(android.os.IBinder iBinder) {
        return new java.util.LinkedHashMap();
    }

    private dev.duo.taskcore.h.b a(dev.duo.taskcore.k.b bVar, java.lang.Object obj, java.lang.Object obj2, int i) throws java.lang.ReflectiveOperationException {
        dev.duo.taskcore.k.a aVar;
        java.lang.Object obj3 = this.b0.get(obj);
        java.lang.Object obj4 = this.a0.get(obj);
        if (obj3 != null && obj4 != null) {
            java.lang.Object invoke = this.g0.invoke(obj3, null);
            java.lang.Object invoke2 = this.g0.invoke(obj4, null);
            if (invoke != null && invoke2 != null && invoke != invoke2 && (aVar = bVar.f.get(java.lang.Integer.valueOf(this.e0.getInt(invoke)))) != null && aVar.d == invoke && this.z.getInt(invoke2) == this.K.getInt(this.e) && ((java.lang.Integer) this.m.invoke(invoke2, null)).intValue() == 0) {
                return new dev.duo.taskcore.h.b(bVar.a, 1, new android.os.Binder(), ((java.lang.Integer) this.m0.invoke(invoke2, null)).intValue() == 2 ? 4 : 3, i, obj2 == null ? null : (android.os.IBinder) this.h0.invoke(obj2, null), a(obj4), a(obj3), false);
            }
        }
        return null;
    }

    private static dev.duo.taskcore.h.b a(dev.duo.taskcore.k.b bVar, int i, boolean z) {
        return new dev.duo.taskcore.h.b(bVar.a, 4, null, 0, i, null, null, null, z);
    }

    private dev.duo.taskcore.h.c a(java.lang.Object obj) throws java.lang.ReflectiveOperationException {
        java.lang.Object invoke = this.g0.invoke(obj, null);
        if (invoke == null) {
            return null;
        }
        return new dev.duo.taskcore.h.c(this.e0.getInt(invoke), this.z.getInt(invoke), ((java.lang.Integer) this.m.invoke(invoke, null)).intValue(), ((java.lang.Integer) this.m0.invoke(invoke, null)).intValue(), (android.os.IBinder) this.B.get(invoke), (android.os.IBinder) this.c0.get(obj));
    }

    private void a(final dev.duo.taskcore.k.b bVar, final dev.duo.taskcore.h.b bVar2) {
        this.g.post(new java.lang.Runnable() { // from class: dev.duo.taskcore.k$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.k.a(dev.duo.taskcore.h.b.this, bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(dev.duo.taskcore.h.b bVar, dev.duo.taskcore.k.b bVar2) {
        android.os.Parcel obtain = android.os.Parcel.obtain();
        try {
            obtain.writeInterfaceToken(dev.duo.taskcore.h.y);
            obtain.writeInt(dev.duo.taskcore.h.a());
            obtain.writeInt(1);
            obtain.writeString(dev.duo.taskcore.h.J);
            bVar.b(obtain);
            if (!bVar2.b.transact(1, obtain, null, 1)) {
                android.util.Log.e(a, "source callback rejected for " + bVar.e);
            }
        } catch (android.os.RemoteException e) {
            android.util.Log.e(a, "source callback failed", e);
        } finally {
            obtain.recycle();
        }
    }

    private dev.duo.taskcore.h.b a(dev.duo.taskcore.k.c cVar, int i, dev.duo.taskcore.h.c cVar2, android.os.IBinder iBinder, boolean z) {
        return new dev.duo.taskcore.h.b(cVar.a.a, i, cVar.b, 2, cVar.n.d, iBinder, cVar.m, cVar2, z);
    }

    private static java.lang.reflect.Method a(java.lang.Class<?> cls, java.lang.String str, java.lang.Class<?> cls2) throws java.lang.NoSuchMethodException {
        for (java.lang.reflect.Method method : cls.getDeclaredMethods()) {
            if (method.getName().equals(str) && method.getParameterTypes().length == 0 && method.getReturnType() == cls2) {
                return method;
            }
        }
        throw new java.lang.NoSuchMethodException(cls.getName() + "." + str + " -> " + cls2.getName());
    }

    private void a(android.os.Parcel parcel, android.os.Parcel parcel2, int i, int i2) {
        java.lang.String valueOf;
        int i3;
        int i4;
        int i5;
        android.os.Parcel obtain = android.os.Parcel.obtain();
        try {
        } catch (java.lang.Throwable th) {
            valueOf = java.lang.String.valueOf(th instanceof java.lang.reflect.InvocationTargetException ? th.getCause() : th);
            android.util.Log.e(a, "request failed", th);
            i3 = 5;
            i4 = 0;
        }
        if (parcel.dataAvail() <= 4096) {
            int readInt = parcel.readInt();
            int readInt2 = parcel.readInt();
            long readLong = parcel.readLong();
            android.os.IBinder readStrongBinder = parcel.readStrongBinder();
            java.lang.String readString = parcel.readString();
            valueOf = a(i, i2);
            if (valueOf != null) {
                i3 = 1;
                i4 = 0;
            } else {
                if (readInt != 1) {
                    valueOf = "protocol " + readInt;
                } else if (readInt2 == 7) {
                    obtain.writeString(dev.duo.taskcore.h.J);
                    i3 = 0;
                    i4 = 0;
                    valueOf = "";
                } else if (!dev.duo.taskcore.h.J.equals(readString)) {
                    valueOf = "server build " + dev.duo.taskcore.h.J + " != client " + readString + "（系统端尚未加载本版本，暂不能进入工作台）";
                } else {
                    long clearCallingIdentity = android.os.Binder.clearCallingIdentity();
                    try {
                        java.lang.String a2 = a(readInt2, readLong, readStrongBinder, i, i2, parcel, obtain);
                        if (a2 != null) {
                            i5 = 3;
                            valueOf = a2;
                        } else {
                            i5 = 0;
                            valueOf = "";
                        }
                        dev.duo.taskcore.k.b bVar = this.T;
                        if (bVar == null) {
                            i3 = i5;
                            i4 = 0;
                        } else {
                            i4 = bVar.m;
                            i3 = i5;
                        }
                    } finally {
                        android.os.Binder.restoreCallingIdentity(clearCallingIdentity);
                    }
                }
                i3 = 2;
                i4 = 0;
            }
            parcel2.writeInt(dev.duo.taskcore.h.a());
            parcel2.writeInt(i3);
            parcel2.writeInt(i3 != 0 ? 0 : 1);
            parcel2.writeInt(i4);
            parcel2.writeString(valueOf);
            if (i3 == 0) {
                parcel2.appendFrom(obtain, 0, obtain.dataSize());
            }
            obtain.recycle();
            return;
        }
        throw new java.lang.IllegalArgumentException("request too large");
    }

    private java.lang.String a(int i, int i2) {
        android.content.Context context = this.h;
        if (context.checkPermission("android.permission.INTERNAL_SYSTEM_WINDOW", i2, i) == 0 && context.checkPermission("android.permission.MANAGE_ACTIVITY_TASKS", i2, i) == 0) {
            if (this.S < 0) {
                long clearCallingIdentity = android.os.Binder.clearCallingIdentity();
                try {
                    this.S = context.getPackageManager().getApplicationInfo("com.android.systemui", 0).uid;
                } catch (android.content.pm.PackageManager.NameNotFoundException e) {
                    return "systemui not installed";
                } finally {
                    android.os.Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
            if (i == this.S) {
                return null;
            }
            return "caller uid " + i + " is not SystemUI";
        }
        return "caller " + i + "/" + i2 + " lacks window/task permission";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.util.Map b(android.os.IBinder iBinder) {
        return new java.util.LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object b(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        if (this.T == null || !((java.lang.Boolean) this.n0.invoke(null, (java.lang.Integer) proceed)).booleanValue()) {
            return proceed;
        }
        synchronized (this.d) {
            dev.duo.taskcore.k.b bVar = this.T;
            if (bVar != null && !bVar.i.isEmpty()) {
                bVar.l = true;
            }
        }
        return proceed;
    }

    private java.lang.Object a(int i, android.os.IBinder iBinder) throws java.lang.ReflectiveOperationException {
        java.lang.Object invoke = this.j.invoke(this.e, java.lang.Integer.valueOf(i), 0);
        if (invoke != null && this.B.get(invoke) == iBinder && this.z.getInt(invoke) == this.K.getInt(this.e) && ((java.lang.Integer) this.m.invoke(invoke, null)).intValue() == 0 && this.y.invoke(this.e, 0) != null) {
            return invoke;
        }
        return null;
    }

    private java.lang.Object b(int i, int i2) throws java.lang.ReflectiveOperationException {
        java.lang.Object invoke = this.s.invoke(this.H.get(this.f), java.lang.Integer.valueOf(i2));
        if (invoke != null && !((java.lang.Boolean) this.t.invoke(invoke, null)).booleanValue() && ((java.lang.Boolean) this.u.invoke(invoke, null)).booleanValue() && ((java.lang.Integer) this.v.invoke(invoke, null)).intValue() == i2 && this.J.getInt(invoke) == i && "com.android.systemui".equals(this.I.get(invoke))) {
            return invoke;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0220  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String a(int r24, long r25, android.os.IBinder r27, int r28, int r29, android.os.Parcel r30, android.os.Parcel r31) throws java.lang.ReflectiveOperationException {
        /*
            Method dump skipped, instructions count: 944
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.taskcore.k.a(int, long, android.os.IBinder, int, int, android.os.Parcel, android.os.Parcel):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(dev.duo.taskcore.k.b bVar) {
        java.lang.Object obj = this.i;
        for (dev.duo.taskcore.k.a aVar : bVar.f.values()) {
            if (obj != null) {
                try {
                    if (((java.lang.Boolean) this.x.invoke(obj, aVar.d)).booleanValue()) {
                        this.U = bVar;
                        android.util.Log.w(a, "restore of session " + bVar.a + " deferred: task " + aVar.a + " in transition");
                        return;
                    }
                    continue;
                } catch (java.lang.ReflectiveOperationException e) {
                    android.util.Log.e(a, "inTransition check failed", e);
                }
            }
        }
        a(bVar);
    }

    private void a(dev.duo.taskcore.k.b bVar) {
        for (dev.duo.taskcore.k.a aVar : bVar.f.values()) {
            try {
                java.lang.Object invoke = this.j.invoke(this.e, java.lang.Integer.valueOf(aVar.a), 0);
                if (invoke != null && invoke == aVar.d && this.B.get(invoke) == aVar.f) {
                    java.lang.Object invoke2 = this.n.invoke(invoke, null);
                    if (((java.lang.Integer) this.k.invoke(invoke, null)).intValue() == 6 && this.z.getInt(invoke) == aVar.b && ((java.lang.Integer) this.m.invoke(invoke, null)).intValue() == aVar.c && invoke2 == aVar.e) {
                        java.lang.Object invoke3 = this.r.invoke(aVar.f, null);
                        java.lang.Object newInstance = this.L.newInstance(null);
                        dev.duo.taskcore.d.c cVar = aVar.g;
                        this.M.invoke(newInstance, invoke3, java.lang.Integer.valueOf(cVar.a));
                        this.N.invoke(newInstance, invoke3, cVar.b == null ? new android.graphics.Rect() : new android.graphics.Rect(cVar.b));
                        this.O.invoke(newInstance, invoke3, java.lang.Boolean.valueOf(cVar.d));
                        this.P.invoke(newInstance, invoke3, java.lang.Boolean.valueOf(cVar.e));
                        this.Q.invoke(newInstance, invoke3, java.lang.Boolean.valueOf(cVar.f));
                        this.R.invoke(newInstance, invoke3, java.lang.Boolean.valueOf(cVar.c));
                        this.w.invoke(this.G.get(this.f), newInstance);
                        java.lang.Object invoke4 = this.n.invoke(invoke, null);
                        android.view.SurfaceControl surfaceControl = invoke4 == null ? null : (android.view.SurfaceControl) this.o.invoke(invoke4, null);
                        android.view.SurfaceControl surfaceControl2 = (android.view.SurfaceControl) this.o.invoke(invoke, null);
                        if (surfaceControl2 != null && surfaceControl != null && surfaceControl2.isValid() && surfaceControl.isValid()) {
                            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                            try {
                                this.p.invoke(invoke, transaction, surfaceControl);
                                this.q.invoke(invoke, transaction);
                                transaction.setScale(surfaceControl2, 1.0f, 1.0f).setCrop(surfaceControl2, null).setAlpha(surfaceControl2, 1.0f);
                                dev.duo.taskcore.e.a(transaction, surfaceControl2, (android.graphics.Rect) null);
                                transaction.apply();
                                transaction.close();
                                android.util.Log.i(a, "restored task " + aVar.a + " mode=" + cVar.a);
                            } finally {
                            }
                        } else {
                            throw new java.lang.IllegalStateException("no valid surface/parent to restore");
                        }
                    }
                    android.util.Log.w(a, "task " + aVar.a + " changed by the system (mode " + this.k.invoke(invoke, null) + "): not overwritten");
                }
            } catch (java.lang.Throwable th) {
                this.V.put(java.lang.Integer.valueOf(aVar.a), java.lang.String.valueOf(th instanceof java.lang.reflect.InvocationTargetException ? th.getCause() : th));
                android.util.Log.e(a, "restore failed for task " + aVar.a, th);
            }
        }
    }
}
