package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
final class C0030t {
    private static android.os.IBinder a = null;
    private static int b = 0;
    private static dev.duo.hookprobe.C0036w c = null;
    private static dev.duo.hookprobe.C0036w d = null;
    private static volatile boolean e = false;
    private static boolean f = false;
    private static boolean g = false;
    private static android.os.IBinder h = null;
    private static long i = 0;
    private static long j = 0;
    private static int k = 0;
    private static int l = 0;
    private static boolean m = false;
    private static java.lang.String n = null;
    private static int o = 0;
    private static int p = 0;
    private static int q = 0;
    private static long r = -1;
    private static long s = 0;
    private static long t = 0;
    private static java.lang.String u = "尚无样本";
    private static final java.util.WeakHashMap<android.view.View, java.lang.Boolean> v = new java.util.WeakHashMap<>();
    private static float[] w;

    /* renamed from: dev.duo.hookprobe.t$a */
    class a implements android.hardware.display.DisplayManager.DisplayListener {
        final /* synthetic */ dev.duo.workspaceprobe.b a;

        a(dev.duo.workspaceprobe.b bVar) {
            this.a = bVar;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            if (i != 0 || dev.duo.hookprobe.C0030t.e) {
                return;
            }
            dev.duo.hookprobe.C0030t.d(this.a);
            if (dev.duo.hookprobe.C0030t.m) {
                java.util.Iterator it = dev.duo.hookprobe.C0030t.v.keySet().iterator();
                while (it.hasNext()) {
                    dev.duo.hookprobe.C0030t.b(this.a, (android.view.View) it.next());
                }
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
        }
    }

    /* renamed from: dev.duo.hookprobe.t$c */
    class c implements android.view.View.OnAttachStateChangeListener {
        final /* synthetic */ dev.duo.workspaceprobe.b a;

        c(dev.duo.workspaceprobe.b bVar) {
            this.a = bVar;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(android.view.View view) {
            dev.duo.hookprobe.C0030t.b(this.a, view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(android.view.View view) {
            if (dev.duo.hookprobe.C0030t.m) {
                dev.duo.hookprobe.C0030t.b(0, android.os.SystemClock.uptimeMillis());
            }
        }
    }

    /* renamed from: dev.duo.hookprobe.t$d */
    class d implements android.view.Choreographer.FrameCallback {
        final /* synthetic */ boolean[] a;

        d(boolean[] zArr) {
            this.a = zArr;
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            if (dev.duo.hookprobe.C0030t.e) {
                return;
            }
            if (dev.duo.hookprobe.C0030t.c.b()) {
                this.a[0] = true;
                dev.duo.hookprobe.C0030t.b(8, dev.duo.hookprobe.C0030t.c.i, dev.duo.hookprobe.C0030t.c.h);
            }
            if (dev.duo.hookprobe.C0030t.c.d()) {
                android.view.Choreographer.getInstance().postFrameCallback(this);
            }
        }
    }

    /* renamed from: dev.duo.hookprobe.t$e */
    class e implements android.view.Choreographer.FrameCallback {
        final /* synthetic */ boolean[] a;

        e(boolean[] zArr) {
            this.a = zArr;
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            if (dev.duo.hookprobe.C0030t.e) {
                return;
            }
            if (dev.duo.hookprobe.C0030t.d.b()) {
                this.a[0] = true;
                dev.duo.hookprobe.C0030t.b(15, dev.duo.hookprobe.C0030t.d.i, dev.duo.hookprobe.C0030t.d.h);
            }
            if (dev.duo.hookprobe.C0030t.d.d()) {
                android.view.Choreographer.getInstance().postFrameCallback(this);
            }
        }
    }

    C0030t() {
    }

    private static void o() {
        if (e) {
            return;
        }
        e = true;
        android.os.Parcel obtain = android.os.Parcel.obtain();
        android.os.Parcel obtain2 = android.os.Parcel.obtain();
        try {
            try {
                obtain.writeInterfaceToken("dev.duo.foldanim1.CONTROL");
                obtain.writeInt(f ? 14 : 9);
                if (f) {
                    obtain.writeStrongBinder(null);
                } else {
                    obtain.writeInt(0);
                    obtain.writeLong(android.os.SystemClock.uptimeMillis());
                }
            } catch (java.lang.Exception e2) {
                android.util.Log.e("MiDuoFold", "观察停止撤销失败", e2);
            }
            if (!a.transact(13693511, obtain, obtain2, 0)) {
                throw new java.lang.IllegalStateException("观察停止撤销未处理");
            }
            obtain2.readException();
            obtain.recycle();
            obtain2.recycle();
            h = null;
        } catch (java.lang.Throwable th) {
            obtain.recycle();
            obtain2.recycle();
            throw th;
        }
    }

    static void e(final dev.duo.workspaceprobe.b bVar) {
        f = true;
        dev.duo.hookprobe.C0030t.b bVar2 = new dev.duo.hookprobe.C0030t.b(new android.os.Handler(android.os.Looper.getMainLooper()), bVar);
        android.os.Parcel obtain = android.os.Parcel.obtain();
        obtain.writeInterfaceToken("dev.duo.foldanim1.CONTROL");
        obtain.writeInt(14);
        obtain.writeStrongBinder(bVar2);
        a(obtain, "侧栏取层接口");
        d(bVar);
        bVar.K6 = new java.lang.Runnable() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.C0030t.c(dev.duo.workspaceprobe.b.this);
            }
        };
        bVar.J6 = new java.util.function.Consumer() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                dev.duo.hookprobe.C0030t.d(dev.duo.workspaceprobe.b.this, (android.view.View) obj);
            }
        };
        final boolean[] zArr = {false};
        final dev.duo.hookprobe.C0030t.d dVar = new dev.duo.hookprobe.C0030t.d(zArr);
        final boolean[] zArr2 = {false};
        final dev.duo.hookprobe.C0030t.e eVar = new dev.duo.hookprobe.C0030t.e(zArr2);
        bVar.I6 = new java.util.function.Consumer() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                dev.duo.hookprobe.C0030t.a(dev.duo.workspaceprobe.b.this, zArr2, eVar, zArr, dVar, (long[]) obj);
            }
        };
    }

    static void b(java.lang.String str) throws java.lang.Exception {
        java.util.Properties properties = new java.util.Properties();
        java.util.zip.ZipFile zipFile = new java.util.zip.ZipFile(str);
        try {
            java.io.InputStream inputStream = zipFile.getInputStream(zipFile.getEntry("assets/fold/curve.properties"));
            try {
                properties.load(inputStream);
                if (inputStream != null) {
                    inputStream.close();
                }
                zipFile.close();
                int parseInt = java.lang.Integer.parseInt(properties.getProperty("quiet_frames"));
                b = parseInt;
                c = new dev.duo.hookprobe.C0036w(parseInt);
                d = new dev.duo.hookprobe.C0036w(b, 192);
                android.os.IBinder iBinder = (android.os.IBinder) java.lang.Class.forName("android.os.ServiceManager").getMethod("getService", java.lang.String.class).invoke(null, "display");
                a = iBinder;
                if (iBinder == null) {
                    throw new java.lang.IllegalStateException("display 服务不可用");
                }
            } finally {
            }
        } catch (java.lang.Throwable th) {
            try {
                zipFile.close();
            } catch (java.lang.Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(dev.duo.workspaceprobe.b bVar) {
        if (e) {
            return;
        }
        if (!bVar.E()) {
            b(0, android.os.SystemClock.uptimeMillis());
            return;
        }
        java.util.Iterator<android.view.View> it = v.keySet().iterator();
        while (it.hasNext()) {
            b(bVar, it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(dev.duo.workspaceprobe.b bVar) {
        try {
            android.view.Display B = bVar.B();
            if (B == null) {
                return false;
            }
            if (!g) {
                bVar.C().registerDisplayListener(new dev.duo.hookprobe.C0030t.a(bVar), new android.os.Handler(android.os.Looper.getMainLooper()));
                g = true;
            }
            java.lang.String str = (java.lang.String) B.getClass().getMethod("getUniqueId", null).invoke(B, null);
            if (!str.equals(n)) {
                if (n != null) {
                    j = android.os.SystemClock.uptimeMillis();
                }
                n = str;
                c.a(new long[]{0, 0, 0, 0});
                d.a(new long[]{0, 0, 0, 0});
                b(15, 0, android.os.SystemClock.uptimeMillis());
                b(0, android.os.SystemClock.uptimeMillis());
            }
            return true;
        } catch (java.lang.Exception e2) {
            o();
            android.util.Log.e("MiDuoFold", "读取当前屏身份失败", e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(dev.duo.workspaceprobe.b bVar, android.view.View view) {
        if (e) {
            return;
        }
        if (bVar.E() && view.isShown()) {
            b(bVar);
        } else if (m) {
            b(0, android.os.SystemClock.uptimeMillis());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(dev.duo.workspaceprobe.b bVar, android.os.Bundle bundle) {
        b(bVar, bundle);
    }

    private static void a(android.os.Parcel parcel, java.lang.String str) {
        android.os.Parcel obtain = android.os.Parcel.obtain();
        try {
            if (a.transact(13693511, parcel, obtain, 0)) {
                obtain.readException();
                return;
            }
            throw new java.lang.IllegalStateException("就绪接收端不可用");
        } catch (java.lang.Exception e2) {
            o();
            android.util.Log.e("MiDuoFold", str + "发送失败，本进程停止就绪观察", e2);
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(int i2, long j2) {
        if (e || h == null) {
            return;
        }
        android.os.Parcel obtain = android.os.Parcel.obtain();
        obtain.writeInterfaceToken("dev.duo.foldanim1.CONTROL");
        obtain.writeInt(18);
        obtain.writeStrongBinder(h);
        obtain.writeLong(i);
        obtain.writeInt(i2);
        obtain.writeLong(j2);
        a(obtain, "本代目标内容");
    }

    /* renamed from: dev.duo.hookprobe.t$b */
    class b extends android.os.Binder {
        final /* synthetic */ android.os.Handler a;
        final /* synthetic */ dev.duo.workspaceprobe.b b;

        b(android.os.Handler handler, dev.duo.workspaceprobe.b bVar) {
            this.a = handler;
            this.b = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(boolean z, android.os.IBinder iBinder, long j, int i, int i2, boolean z2, dev.duo.workspaceprobe.b bVar) {
            if (dev.duo.hookprobe.C0030t.e) {
                return;
            }
            if (!z) {
                if (dev.duo.hookprobe.C0030t.h == iBinder && dev.duo.hookprobe.C0030t.i == j) {
                    android.util.Log.i("MiDuoFold", "TARGET_WAIT_END gen=" + j + " samples=" + dev.duo.hookprobe.C0030t.o + " paintChanges=" + dev.duo.hookprobe.C0030t.p + " rejected=" + dev.duo.hookprobe.C0030t.q + " last=" + dev.duo.hookprobe.C0030t.u + " flags=0x" + java.lang.Long.toHexString(dev.duo.hookprobe.C0030t.s) + " at=" + dev.duo.hookprobe.C0030t.t + " panelSince=" + dev.duo.hookprobe.C0030t.j + " gate=" + dev.duo.hookprobe.C0030t.c.a());
                    android.os.IBinder unused = dev.duo.hookprobe.C0030t.h = null;
                    return;
                }
                return;
            }
            android.os.IBinder unused2 = dev.duo.hookprobe.C0030t.h = iBinder;
            long unused3 = dev.duo.hookprobe.C0030t.i = j;
            int unused4 = dev.duo.hookprobe.C0030t.k = i;
            int unused5 = dev.duo.hookprobe.C0030t.l = i2;
            boolean unused6 = dev.duo.hookprobe.C0030t.m = z2;
            int unused7 = dev.duo.hookprobe.C0030t.o = dev.duo.hookprobe.C0030t.p = dev.duo.hookprobe.C0030t.q = 0;
            long unused8 = dev.duo.hookprobe.C0030t.r = -1L;
            long unused9 = dev.duo.hookprobe.C0030t.s = dev.duo.hookprobe.C0030t.t = 0L;
            java.lang.String unused10 = dev.duo.hookprobe.C0030t.u = "尚无样本";
            if (!z2) {
                bVar.I6.accept(bVar.A());
                dev.duo.hookprobe.C0030t.b(dev.duo.hookprobe.C0030t.c.e() ? dev.duo.hookprobe.C0030t.c.i : 0, dev.duo.hookprobe.C0030t.c.h);
            } else {
                dev.duo.hookprobe.C0030t.b(0, android.os.SystemClock.uptimeMillis());
                java.util.Iterator it = dev.duo.hookprobe.C0030t.v.keySet().iterator();
                while (it.hasNext()) {
                    dev.duo.hookprobe.C0030t.b(bVar, (android.view.View) it.next());
                }
            }
        }

        @Override // android.os.Binder
        protected boolean onTransact(int i, android.os.Parcel parcel, android.os.Parcel parcel2, int i2) {
            android.os.Bundle bundle;
            if (i == 3) {
                parcel.enforceInterface("dev.duo.foldanim1.LAYERS");
                if (android.os.Binder.getCallingUid() != 1000 || parcel2 == null) {
                    throw new java.lang.SecurityException("系统观察状态专用");
                }
                parcel2.writeNoException();
                parcel2.writeInt(!dev.duo.hookprobe.C0030t.e ? 1 : 0);
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface("dev.duo.foldanim1.LAYERS");
                if (android.os.Binder.getCallingUid() != 1000) {
                    throw new java.lang.SecurityException("系统就绪订阅专用");
                }
                final android.os.IBinder readStrongBinder = parcel.readStrongBinder();
                final long readLong = parcel.readLong();
                final boolean z = parcel.readInt() != 0;
                final int readInt = parcel.readInt();
                final int readInt2 = parcel.readInt();
                final boolean z2 = parcel.readInt() != 0;
                android.os.Handler handler = this.a;
                final dev.duo.workspaceprobe.b bVar = this.b;
                handler.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.t$b$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.hookprobe.C0030t.b.a(z, readStrongBinder, readLong, readInt, readInt2, z2, bVar);
                    }
                });
                return true;
            }
            if (i != 1) {
                return false;
            }
            if (parcel2 == null) {
                throw new java.lang.SecurityException("只读取层需要同步回复");
            }
            try {
                parcel.enforceInterface("dev.duo.foldanim1.LAYERS");
            } catch (java.lang.Exception e) {
                parcel2.setDataPosition(0);
                parcel2.setDataSize(0);
                parcel2.writeException(new java.lang.IllegalStateException("侧栏只读导出失败", e));
            }
            if (android.os.Binder.getCallingUid() != 1000) {
                throw new java.lang.SecurityException("系统只读取层专用");
            }
            final java.util.concurrent.CompletableFuture completableFuture = new java.util.concurrent.CompletableFuture();
            android.os.Handler handler2 = this.a;
            final dev.duo.workspaceprobe.b bVar2 = this.b;
            handler2.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.t$b$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.C0030t.b.a(completableFuture, bVar2);
                }
            });
            try {
                try {
                    bundle = (android.os.Bundle) completableFuture.get(1L, java.util.concurrent.TimeUnit.SECONDS);
                } catch (java.util.concurrent.TimeoutException e2) {
                    completableFuture.completeExceptionally(e2);
                    final dev.duo.workspaceprobe.b bVar3 = this.b;
                    completableFuture.thenAccept(new java.util.function.Consumer() { // from class: dev.duo.hookprobe.t$b$$ExternalSyntheticLambda3
                        @Override // java.util.function.Consumer
                        public final void accept(java.lang.Object obj) {
                            dev.duo.hookprobe.C0030t.a(dev.duo.workspaceprobe.b.this, (android.os.Bundle) obj);
                        }
                    });
                    android.os.Bundle bundle2 = new android.os.Bundle();
                    bundle2.putString("unavailable", "SystemUI 主线程 1 秒未响应");
                    bundle = bundle2;
                }
                try {
                    parcel2.writeNoException();
                    parcel2.writeBundle(bundle);
                    this.b.a(bundle, true);
                    return true;
                } catch (java.lang.Throwable th) {
                    this.b.a(bundle, false);
                    throw th;
                }
            } catch (java.lang.Exception e3) {
                completableFuture.completeExceptionally(e3);
                final dev.duo.workspaceprobe.b bVar4 = this.b;
                completableFuture.thenAccept(new java.util.function.Consumer() { // from class: dev.duo.hookprobe.t$b$$ExternalSyntheticLambda2
                    @Override // java.util.function.Consumer
                    public final void accept(java.lang.Object obj) {
                        dev.duo.hookprobe.C0030t.a(dev.duo.workspaceprobe.b.this, (android.os.Bundle) obj);
                    }
                });
                throw e3;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(java.util.concurrent.CompletableFuture completableFuture, dev.duo.workspaceprobe.b bVar) {
            if (completableFuture.isDone()) {
                return;
            }
            try {
                android.os.Bundle F = bVar.F();
                if (completableFuture.complete(F)) {
                    return;
                }
                dev.duo.hookprobe.C0030t.b(bVar, F);
            } catch (java.lang.Exception e) {
                completableFuture.completeExceptionally(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(final dev.duo.workspaceprobe.b bVar, final android.view.View view) {
        final android.os.IBinder iBinder;
        if (e || (iBinder = h) == null || !m) {
            return;
        }
        final long j2 = i;
        if (bVar.E() && view.isAttachedToWindow() && view.isShown()) {
            view.getViewTreeObserver().registerFrameCommitCallback(new java.lang.Runnable() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.C0030t.a(iBinder, j2, view, bVar);
                }
            });
            view.invalidate();
        } else {
            b(0, android.os.SystemClock.uptimeMillis());
        }
    }

    private static long[] a(dev.duo.workspaceprobe.b bVar, long[] jArr) {
        java.lang.String str;
        if (!d(bVar)) {
            str = "显示不可读";
        } else if (jArr[1] < j) {
            str = "绘制早于切屏观察";
        } else {
            str = (((jArr[0] & 16) > 0L ? 1 : ((jArr[0] & 16) == 0L ? 0 : -1)) != 0) != "local:4639175402683733248".equals(n) ? "物理屏不匹配" : "接收";
        }
        if (h != null && !m) {
            o++;
            long j2 = (jArr[0] >>> 8) & 16777215;
            if (j2 != r) {
                p++;
                r = j2;
            }
            if (!"接收".equals(str)) {
                q++;
            }
            u = str;
            s = jArr[0] & 255;
            t = jArr[1];
        }
        return "接收".equals(str) ? jArr : new long[]{0, 0, 0, 0};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(final dev.duo.workspaceprobe.b bVar, final android.view.View view) {
        if (v.put(view, java.lang.Boolean.TRUE) != null) {
            return;
        }
        view.getViewTreeObserver().addOnDrawListener(new android.view.ViewTreeObserver.OnDrawListener() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda4
            @Override // android.view.ViewTreeObserver.OnDrawListener
            public final void onDraw() {
                dev.duo.hookprobe.C0030t.c(dev.duo.workspaceprobe.b.this, view);
            }
        });
        view.addOnAttachStateChangeListener(new dev.duo.hookprobe.C0030t.c(bVar));
        view.addOnLayoutChangeListener(new android.view.View.OnLayoutChangeListener() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda5
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(android.view.View view2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                dev.duo.hookprobe.C0030t.a(dev.duo.workspaceprobe.b.this, view2, i2, i3, i4, i5, i6, i7, i8, i9);
            }
        });
        b(bVar, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.os.IBinder iBinder, long j2, android.view.View view, dev.duo.workspaceprobe.b bVar) {
        if (!e && iBinder == h && j2 == i) {
            int width = view.getWidth();
            int height = view.getHeight();
            int i2 = k;
            int i3 = 0;
            boolean z = ((width == i2 && height == l) || (height == i2 && width == l)) && d(bVar) && (i2 == 2364 || l == 2364) == "local:4639175402683733248".equals(n);
            if (bVar.E() && view.isAttachedToWindow() && view.isShown() && z) {
                i3 = (k == 2364 || l == 2364) ? 17 : 1;
            }
            b(bVar);
            b(i3, android.os.SystemClock.uptimeMillis());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(int i2, int i3, long j2) {
        if (e) {
            return;
        }
        if (i2 == 8) {
            if (m) {
                return;
            }
            b(i3, j2);
        } else {
            android.os.Parcel obtain = android.os.Parcel.obtain();
            obtain.writeInterfaceToken("dev.duo.foldanim1.CONTROL");
            obtain.writeInt(i2);
            obtain.writeInt(i3);
            obtain.writeLong(j2);
            a(obtain, "就绪信号");
        }
    }

    private static void b(dev.duo.workspaceprobe.b bVar) {
        float[] D = bVar.D();
        if (e || D == null || java.util.Arrays.equals(D, w)) {
            return;
        }
        w = D;
        android.os.Parcel obtain = android.os.Parcel.obtain();
        obtain.writeInterfaceToken("dev.duo.foldanim1.CONTROL");
        obtain.writeInt(11);
        obtain.writeFloatArray(D);
        a(obtain, "侧栏坐标");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(dev.duo.workspaceprobe.b bVar, android.view.View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        if (i4 - i2 == i8 - i6 && i5 - i3 == i9 - i7) {
            return;
        }
        b(bVar, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(dev.duo.workspaceprobe.b bVar, boolean[] zArr, android.view.Choreographer.FrameCallback frameCallback, boolean[] zArr2, android.view.Choreographer.FrameCallback frameCallback2, long[] jArr) {
        if (e) {
            return;
        }
        b(bVar);
        long[] a2 = a(bVar, jArr);
        if (e) {
            return;
        }
        if (d.a(a2)) {
            if (zArr[0]) {
                zArr[0] = false;
                dev.duo.hookprobe.C0036w c0036w = d;
                b(15, c0036w.i & (-129), c0036w.h);
            }
            android.view.Choreographer.getInstance().removeFrameCallback(frameCallback);
            if (d.d()) {
                android.view.Choreographer.getInstance().postFrameCallback(frameCallback);
            }
        }
        if (c.a(a2)) {
            if (zArr2[0]) {
                zArr2[0] = false;
                dev.duo.hookprobe.C0036w c0036w2 = c;
                b(8, c0036w2.i & (-9), c0036w2.h);
            }
            android.view.Choreographer.getInstance().removeFrameCallback(frameCallback2);
            if (c.d()) {
                android.view.Choreographer.getInstance().postFrameCallback(frameCallback2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(dev.duo.workspaceprobe.b bVar, android.os.Bundle bundle) {
        try {
            bVar.a(bundle, false);
        } catch (java.lang.Exception e2) {
            android.util.Log.e("MiDuoFold", "未移交镜像清理失败，保留到下次取层收尾", e2);
        }
    }
}
