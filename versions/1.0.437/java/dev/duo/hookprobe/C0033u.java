package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
final class C0033u {
    static final int a = 13640819;
    static final int b = 13640820;
    static final int c = 13640821;
    private int A;
    private int B;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean K;
    private int M;
    private boolean N;
    private volatile java.lang.Throwable O;
    private float[] P;
    private final java.lang.reflect.Method d;
    private final java.lang.reflect.Method e;
    private final java.lang.reflect.Method f;
    private final java.lang.reflect.Method g;
    private final java.lang.reflect.Method h;
    private final java.lang.reflect.Method i;
    private final java.lang.reflect.Method j;
    private final java.lang.reflect.Method k;
    private final java.lang.reflect.Field l;
    private final java.lang.reflect.Field m;
    private final java.lang.reflect.Field n;
    private final java.lang.reflect.Field o;
    private final java.lang.reflect.Field p;
    private final java.lang.reflect.Field q;
    private final java.lang.reflect.Field r;
    private final java.lang.reflect.Field s;
    private volatile android.os.IBinder w;
    private android.os.IBinder x;
    private long y;
    private java.lang.String z;
    private final java.util.Map<android.os.IBinder, java.util.Map<java.lang.Integer, android.os.IBinder>> t = new java.util.HashMap();
    private final java.util.Map<android.os.IBinder, java.lang.Long> u = new java.util.HashMap();
    private final java.util.Map<android.os.IBinder, java.util.Map<java.lang.Integer, java.util.ArrayList<android.view.SurfaceControl>>> v = new java.util.HashMap();
    private int C = -1;
    private java.lang.String J = "尚未请求分层";
    private int L = -1;

    /* renamed from: dev.duo.hookprobe.u$a */
    private static final class a extends java.lang.Exception {
        a(java.lang.String str) {
            super(str);
        }
    }

    C0033u(java.lang.ClassLoader classLoader) throws java.lang.Exception {
        java.lang.Class<?> cls = java.lang.Class.forName("com.android.server.display.DisplayControl", false, classLoader);
        this.d = a(cls, "createVirtualDisplay", (java.lang.Class<?>[]) new java.lang.Class[]{java.lang.String.class, java.lang.Boolean.TYPE});
        this.e = a(cls, "destroyVirtualDisplay", (java.lang.Class<?>[]) new java.lang.Class[]{android.os.IBinder.class});
        this.f = a((java.lang.Class<?>) android.view.SurfaceControl.Transaction.class, "setDisplaySurface", (java.lang.Class<?>[]) new java.lang.Class[]{android.os.IBinder.class, android.view.Surface.class});
        java.lang.Class cls2 = java.lang.Integer.TYPE;
        this.g = a((java.lang.Class<?>) android.view.SurfaceControl.Transaction.class, "setDisplayLayerStack", (java.lang.Class<?>[]) new java.lang.Class[]{android.os.IBinder.class, cls2});
        this.h = a((java.lang.Class<?>) android.view.SurfaceControl.Transaction.class, "setDisplayProjection", (java.lang.Class<?>[]) new java.lang.Class[]{android.os.IBinder.class, cls2, android.graphics.Rect.class, android.graphics.Rect.class});
        java.lang.Class<?> cls3 = java.lang.Class.forName("com.android.server.wm.WindowState", false, classLoader);
        java.lang.Class<?> cls4 = java.lang.Class.forName("com.android.server.wm.WindowContainer", false, classLoader);
        java.lang.Class<?> cls5 = java.lang.Class.forName("com.android.server.wm.DisplayContent", false, classLoader);
        this.i = a(cls3, "finishDrawing", (java.lang.Class<?>[]) new java.lang.Class[]{android.view.SurfaceControl.Transaction.class, cls2});
        this.l = a(cls4, "mDisplayContent");
        this.j = a(cls5, "getDisplayInfo", (java.lang.Class<?>[]) new java.lang.Class[0]);
        this.m = a(cls3, "mAttrs");
        this.n = a(cls4, "mWmService");
        this.o = a(java.lang.Class.forName("com.android.server.wm.WindowManagerService", false, classLoader), "mAlwaysSeqId");
        this.p = a(cls4, "mSyncState");
        this.q = a(cls3, "mBufferSeqId");
        this.r = a(cls3, "mPrepareSyncSeqId");
        this.k = a(cls3, "getTask", (java.lang.Class<?>[]) new java.lang.Class[0]);
        this.s = a(java.lang.Class.forName("com.android.server.wm.Task", false, classLoader), "mTaskId");
    }

    private boolean d() {
        android.os.IBinder iBinder = this.w;
        if (iBinder == null || !iBinder.isBinderAlive()) {
            return false;
        }
        android.os.Parcel obtain = android.os.Parcel.obtain();
        android.os.Parcel obtain2 = android.os.Parcel.obtain();
        try {
            obtain.writeInterfaceToken("dev.duo.foldanim1.LAYERS");
            if (!iBinder.transact(3, obtain, obtain2, 0)) {
                return false;
            }
            obtain2.readException();
            return obtain2.readInt() == 1;
        } catch (java.lang.Exception e) {
            android.util.Log.e("MiDuoFold", "观察状态查询失败", e);
            return false;
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    synchronized void a(float[] fArr) {
        if (fArr != null) {
            if (fArr.length == 6) {
                for (float f : fArr) {
                    if (!java.lang.Float.isFinite(f)) {
                        throw new java.lang.IllegalArgumentException("侧栏坐标无效");
                    }
                }
                this.P = fArr;
            }
        }
        throw new java.lang.IllegalArgumentException("侧栏坐标格式错误");
    }

    synchronized void b(android.os.Parcel parcel) {
        boolean z = this.O == null && d() && ((this.M & 32) == 0 || this.N);
        parcel.writeNoException();
        parcel.writeInt(z ? this.M : 0);
    }

    synchronized void c(android.os.IBinder iBinder) {
        if (iBinder != null) {
            if (!iBinder.isBinderAlive()) {
                throw new java.lang.IllegalArgumentException("侧栏接口不可用");
            }
        }
        this.w = iBinder;
        this.M = 0;
        this.N = false;
        this.E = false;
        c();
    }

    private void c() {
        if (this.x == null) {
            return;
        }
        boolean z = this.O == null && (this.C < 0 ? !(this.w == null || !this.w.isBinderAlive() || ((this.H && !this.D) || !this.E || (this.F && !this.G))) : this.D);
        if (z == this.I) {
            return;
        }
        this.I = z;
        android.os.Parcel obtain = android.os.Parcel.obtain();
        try {
            obtain.writeInterfaceToken("dev.duo.foldanim1.FRAME");
            obtain.writeLong(this.y);
            obtain.writeLong(android.os.SystemClock.elapsedRealtime());
            if (this.x.transact(z ? 1 : 2, obtain, null, 1)) {
            } else {
                throw new java.lang.IllegalStateException("目标内容通知未处理");
            }
        } catch (java.lang.Exception e) {
            if (this.x.isBinderAlive()) {
                this.O = e;
                android.util.Log.e("MiDuoFold", "目标内容通知失败", e);
            } else {
                android.util.Log.w("MiDuoFold", "目标内容通知时引擎已退出", e);
            }
        } finally {
            obtain.recycle();
        }
    }

    boolean b() {
        return this.O == null;
    }

    synchronized void a(android.os.Parcel parcel) {
        parcel.writeNoException();
        parcel.writeFloatArray(this.O == null ? this.P : null);
    }

    private static java.lang.reflect.Field a(java.lang.Class<?> cls, java.lang.String str) throws java.lang.Exception {
        java.lang.reflect.Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField;
    }

    private void b(int i, android.os.IBinder iBinder, android.os.Parcel parcel, android.os.Parcel parcel2) throws java.lang.Exception {
        java.lang.Exception exc;
        java.lang.String sb;
        if (this.O != null && i != 6 && i != 17) {
            throw new java.lang.IllegalStateException("实时源失败", this.O);
        }
        if (i == 5) {
            int readInt = parcel.readInt();
            int readInt2 = parcel.readInt();
            int readInt3 = parcel.readInt();
            int readInt4 = parcel.readInt();
            boolean z = parcel.readInt() != 0;
            android.view.Surface surface = (android.view.Surface) android.view.Surface.CREATOR.createFromParcel(parcel);
            if (readInt >= 0 && readInt <= 2 && readInt2 > 0 && readInt3 > 0 && readInt2 <= 4096 && readInt3 <= 4096) {
                if (readInt4 == (readInt == 0 ? b : readInt == 1 ? a : c)) {
                    try {
                        if (surface.isValid()) {
                            java.util.Map<java.lang.Integer, android.os.IBinder> map = this.t.get(iBinder);
                            if (map == null) {
                                map = new java.util.HashMap<>();
                                this.t.put(iBinder, map);
                            }
                            if (!map.containsKey(java.lang.Integer.valueOf(readInt))) {
                                android.os.IBinder iBinder2 = (android.os.IBinder) this.d.invoke(null, "MiDuoFold-" + readInt, java.lang.Boolean.valueOf(z));
                                if (iBinder2 != null) {
                                    map.put(java.lang.Integer.valueOf(readInt), iBinder2);
                                    android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                                    try {
                                        this.f.invoke(transaction, iBinder2, surface);
                                        this.g.invoke(transaction, iBinder2, java.lang.Integer.valueOf(readInt4));
                                        this.h.invoke(transaction, iBinder2, 0, new android.graphics.Rect(0, 0, readInt2, readInt3), new android.graphics.Rect(0, 0, readInt2, readInt3));
                                        transaction.apply();
                                        if (readInt == 2) {
                                            this.K = true;
                                        }
                                        transaction.close();
                                    } finally {
                                    }
                                } else {
                                    throw new java.lang.IllegalStateException("实时显示创建失败");
                                }
                            } else {
                                throw new java.lang.IllegalStateException("输入槽已使用");
                            }
                        }
                    } finally {
                        surface.release();
                    }
                }
            }
            throw new java.lang.IllegalArgumentException("实时源参数无效");
        }
        if (i == 6) {
            int readInt5 = parcel.readInt();
            java.util.Map<java.lang.Integer, android.os.IBinder> map2 = this.t.get(iBinder);
            if (map2 == null) {
                exc = null;
            } else {
                java.util.ArrayList arrayList = new java.util.ArrayList(map2.keySet());
                int size = arrayList.size();
                exc = null;
                int i2 = 0;
                while (i2 < size) {
                    int i3 = i2 + 1;
                    java.lang.Integer num = (java.lang.Integer) arrayList.get(i2);
                    if (readInt5 == -1 || readInt5 == num.intValue()) {
                        try {
                            this.e.invoke(null, map2.get(num));
                            map2.remove(num);
                        } catch (java.lang.Exception e) {
                            if (exc == null) {
                                exc = e;
                                i2 = i3;
                            } else {
                                exc.addSuppressed(e);
                            }
                        }
                    }
                    i2 = i3;
                }
                if (map2.isEmpty()) {
                    this.t.remove(iBinder);
                }
            }
            try {
                a(iBinder, readInt5);
            } catch (java.lang.Exception e2) {
                if (exc == null) {
                    exc = e2;
                } else {
                    exc.addSuppressed(e2);
                }
            }
            if (readInt5 == -1 && this.x == iBinder) {
                java.lang.StringBuilder append = new java.lang.StringBuilder().append("READY_MISSING generation=").append(this.y).append(" window=").append(this.D).append(" content=").append(this.E).append(" minus=").append(this.F).append("/").append(this.G).append(" permit=").append(this.I).append(" geometry=");
                if (this.P == null) {
                    sb = "坐标未到";
                } else {
                    java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                    float[] fArr = this.P;
                    sb = sb2.append((fArr[0] == ((float) this.A) && fArr[1] == ((float) this.B)) ? "匹配:" : "过渡:").append(this.P[0]).append("x").append(this.P[1]).toString();
                }
                android.util.Log.i("MiDuoFoldLease", append.append(sb).append(" layers=").append(this.J).append(" input=").append(this.K ? "本代曾建输入，buffer 由引擎核对" : "未建目标输入").append(" last=").append(this.L < 0 ? "none" : "0x" + java.lang.Integer.toHexString(this.L)).toString());
                this.x = null;
            }
            if (exc != null) {
                this.O = exc;
                this.u.remove(iBinder);
                throw exc;
            }
        } else if (i == 7) {
            long readLong = parcel.readLong();
            java.lang.String readString = parcel.readString();
            int readInt6 = parcel.readInt();
            int readInt7 = parcel.readInt();
            boolean z2 = parcel.readInt() != 0;
            int readInt8 = parcel.readInt();
            if (z2 && readInt8 >= 0) {
                throw new java.lang.IllegalArgumentException("锁屏不能按应用放行");
            }
            android.os.IBinder iBinder3 = this.x;
            if (iBinder3 != null && iBinder3 != iBinder) {
                throw new java.lang.IllegalStateException("已有开合会话");
            }
            if (!"local:4639175402683733248".equals(readString) && !"local:4639175068132267009".equals(readString)) {
                throw new java.lang.IllegalArgumentException("目标面板不匹配");
            }
            this.x = iBinder;
            this.y = readLong;
            this.z = readString;
            this.A = readInt6;
            this.B = readInt7;
            this.H = z2;
            this.C = readInt8;
            this.K = false;
            this.I = false;
            this.F = false;
            this.E = false;
            this.D = false;
            this.G = this.N;
            this.L = -1;
            this.J = "尚未请求分层";
        } else if (i == 17) {
            long readLong2 = parcel.readLong();
            if (this.x == iBinder && this.y == readLong2) {
                this.x = null;
            }
        } else {
            throw new java.lang.IllegalArgumentException("未知实时源命令");
        }
        if ((i == 6 || i == 17) && !a(iBinder)) {
            this.u.remove(iBinder);
        } else {
            this.u.put(iBinder, java.lang.Long.valueOf(android.os.SystemClock.elapsedRealtime() + 1500));
        }
        parcel2.writeNoException();
        parcel2.writeInt(1);
    }

    private static java.lang.reflect.Method a(java.lang.Class<?> cls, java.lang.String str, java.lang.Class<?>... clsArr) throws java.lang.Exception {
        java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    private android.os.Bundle a(int i, int i2, java.util.ArrayList<android.view.SurfaceControl> arrayList) throws java.lang.Exception {
        java.util.ArrayList<android.view.SurfaceControl> arrayList2 = arrayList;
        android.os.IBinder iBinder = this.w;
        if (iBinder != null && iBinder.isBinderAlive()) {
            android.os.Parcel obtain = android.os.Parcel.obtain();
            android.os.Parcel obtain2 = android.os.Parcel.obtain();
            try {
                obtain.writeInterfaceToken("dev.duo.foldanim1.LAYERS");
                if (iBinder.transact(1, obtain, obtain2, 0)) {
                    obtain2.readException();
                    android.os.Bundle readBundle = obtain2.readBundle(android.view.SurfaceControl.class.getClassLoader());
                    obtain.recycle();
                    obtain2.recycle();
                    if (!readBundle.containsKey("unavailable")) {
                        java.util.ArrayList parcelableArrayList = readBundle.getParcelableArrayList("layers");
                        int size = parcelableArrayList.size();
                        int i3 = 0;
                        while (i3 < size) {
                            java.lang.Object obj = parcelableArrayList.get(i3);
                            i3++;
                            arrayList2.add((android.view.SurfaceControl) ((android.os.Bundle) obj).getParcelable("mirror"));
                        }
                        android.os.Bundle bundle = new android.os.Bundle();
                        bundle.putInt("protocol", 1);
                        bundle.putBundle(dev.duo.hookprobe.J.c, readBundle);
                        java.lang.Object invoke = java.lang.Class.forName("android.os.ServiceManager").getMethod("getService", java.lang.String.class).invoke(null, "window");
                        java.lang.ClassLoader classLoader = invoke.getClass().getClassLoader();
                        java.lang.Class<?> cls = java.lang.Class.forName("com.android.server.wm.WindowContainer", false, classLoader);
                        java.lang.Class<?> cls2 = java.lang.Class.forName("com.android.server.wm.WindowState", false, classLoader);
                        java.lang.reflect.Method a2 = a(cls2, "isVisible", (java.lang.Class<?>[]) new java.lang.Class[0]);
                        java.lang.reflect.Method a3 = a(cls2, "getDisplayId", (java.lang.Class<?>[]) new java.lang.Class[0]);
                        java.lang.reflect.Method a4 = a(cls, "getWindow", (java.lang.Class<?>[]) new java.lang.Class[]{java.util.function.Predicate.class});
                        java.lang.reflect.Field a5 = a(cls2, "mOwnerUid");
                        java.lang.reflect.Field a6 = a(cls2, "mActivityRecord");
                        java.lang.reflect.Field a7 = a(java.lang.Class.forName("com.android.server.wm.ActivityRecord", false, classLoader), "info");
                        synchronized (a(invoke.getClass(), "mGlobalLock").get(invoke)) {
                            java.lang.reflect.Field field = a7;
                            java.lang.Object obj2 = a(invoke.getClass(), "mRoot").get(invoke);
                            java.lang.String[] strArr = {"home", "wallpaper"};
                            int i4 = 0;
                            while (i4 < 2) {
                                java.lang.Class<?> cls3 = cls2;
                                final java.lang.reflect.Method method = a2;
                                final java.lang.String str = strArr[i4];
                                int i5 = i4;
                                final java.lang.reflect.Field field2 = a6;
                                java.lang.Class<?> cls4 = cls;
                                final java.lang.reflect.Method method2 = a3;
                                java.lang.Object obj3 = invoke;
                                java.lang.reflect.Method method3 = a4;
                                final java.lang.reflect.Field field3 = a5;
                                final java.lang.reflect.Field field4 = field;
                                java.lang.Object invoke2 = method3.invoke(obj2, new java.util.function.Predicate() { // from class: dev.duo.hookprobe.u$$ExternalSyntheticLambda1
                                    @Override // java.util.function.Predicate
                                    public final boolean test(java.lang.Object obj4) {
                                        boolean a8;
                                        a8 = dev.duo.hookprobe.C0033u.this.a(method2, method, str, field2, field3, field4, obj4);
                                        return a8;
                                    }
                                });
                                if (invoke2 != null) {
                                    java.lang.Object invoke3 = this.j.invoke(this.l.get(invoke2), null);
                                    if (invoke3.getClass().getField("logicalWidth").getInt(invoke3) == i && invoke3.getClass().getField("logicalHeight").getInt(invoke3) == i2) {
                                        bundle.putString("displayUniqueId", (java.lang.String) invoke3.getClass().getField("uniqueId").get(invoke3));
                                        bundle.putInt("rotation", invoke3.getClass().getField("rotation").getInt(invoke3));
                                        android.view.WindowManager.LayoutParams layoutParams = (android.view.WindowManager.LayoutParams) this.m.get(invoke2);
                                        if ((layoutParams.flags & 8192) == 0) {
                                            android.os.Bundle bundle2 = new android.os.Bundle();
                                            if (str.equals("home")) {
                                                android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) android.view.SurfaceControl.class.getDeclaredMethod("mirrorSurface", android.view.SurfaceControl.class).invoke(null, (android.view.SurfaceControl) a(cls4, "getSurfaceControl", (java.lang.Class<?>[]) new java.lang.Class[0]).invoke(invoke2, null));
                                                arrayList2.add(surfaceControl);
                                                bundle2.putParcelable("mirror", surfaceControl);
                                            }
                                            bundle2.putParcelable("frame", new android.graphics.Rect((android.graphics.Rect) a(cls3, "getFrame", (java.lang.Class<?>[]) new java.lang.Class[0]).invoke(invoke2, null)));
                                            float[] fArr = new float[9];
                                            android.graphics.Matrix matrix = new android.graphics.Matrix();
                                            a(cls3, "getTransformationMatrix", (java.lang.Class<?>[]) new java.lang.Class[]{float[].class, android.graphics.Matrix.class}).invoke(invoke2, fArr, matrix);
                                            matrix.getValues(fArr);
                                            bundle2.putFloatArray("matrix", fArr);
                                            bundle2.putInt("width", ((java.lang.Integer) a(cls3, "getSurfaceWidth", (java.lang.Class<?>[]) new java.lang.Class[0]).invoke(invoke2, null)).intValue());
                                            bundle2.putInt("height", ((java.lang.Integer) a(cls3, "getSurfaceHeight", (java.lang.Class<?>[]) new java.lang.Class[0]).invoke(invoke2, null)).intValue());
                                            bundle2.putString("package", layoutParams.packageName);
                                            if (str.equals("wallpaper")) {
                                                java.lang.String[] strArr2 = {"mWallpaperX", "mWallpaperY", "mWallpaperXStep", "mWallpaperYStep", "mWallpaperScale", "mWallpaperZoomOut"};
                                                float[] fArr2 = new float[6];
                                                for (int i6 = 0; i6 < 6; i6++) {
                                                    fArr2[i6] = a(cls3, strArr2[i6]).getFloat(invoke2);
                                                }
                                                bundle2.putFloatArray("offsets", fArr2);
                                                bundle2.putIntArray("displayOffset", new int[]{a(cls3, "mWallpaperDisplayOffsetX").getInt(invoke2), a(cls3, "mWallpaperDisplayOffsetY").getInt(invoke2)});
                                            }
                                            bundle.putBundle(str, bundle2);
                                            i4 = i5 + 1;
                                            arrayList2 = arrayList;
                                            cls2 = cls3;
                                            a4 = method3;
                                            invoke = obj3;
                                            cls = cls4;
                                            a3 = method2;
                                            a2 = method;
                                            a6 = field2;
                                            a5 = field3;
                                            field = field4;
                                        } else {
                                            throw new dev.duo.hookprobe.C0033u.a("桌面分层不导出安全窗口");
                                        }
                                    } else {
                                        throw new dev.duo.hookprobe.C0033u.a("取层期间显示尺寸改变");
                                    }
                                } else {
                                    throw new dev.duo.hookprobe.C0033u.a("可见窗口不存在 " + str);
                                }
                            }
                            java.lang.Object obj4 = invoke;
                            bundle.putInt("user", a(obj4.getClass(), "mCurrentUserId").getInt(obj4));
                        }
                        java.lang.Object invoke4 = java.lang.Class.forName("android.os.ServiceManager").getMethod("getService", java.lang.String.class).invoke(null, "wallpaper");
                        java.lang.Class<?> cls5 = java.lang.Class.forName("android.app.IWallpaperManager");
                        java.lang.Object invoke5 = java.lang.Class.forName("android.app.IWallpaperManager$Stub").getMethod("asInterface", android.os.IBinder.class).invoke(null, invoke4);
                        int i7 = bundle.getInt("user");
                        java.lang.Class cls6 = java.lang.Integer.TYPE;
                        java.lang.reflect.Method method4 = cls5.getMethod("getWallpaperIdForUser", cls6, cls6);
                        int intValue = ((java.lang.Integer) method4.invoke(invoke5, 1, java.lang.Integer.valueOf(i7))).intValue();
                        java.util.List list = (java.util.List) cls5.getMethod("getBitmapCrops", java.util.List.class, cls6, java.lang.Boolean.TYPE, cls6).invoke(invoke5, java.util.Arrays.asList(new android.graphics.Point(1168, 1712), new android.graphics.Point(2364, 1672)), 1, java.lang.Boolean.TRUE, java.lang.Integer.valueOf(i7));
                        if (intValue == ((java.lang.Integer) method4.invoke(invoke5, 1, java.lang.Integer.valueOf(i7))).intValue()) {
                            bundle.putInt("wallpaperId", intValue);
                            bundle.putFloat("wallpaperDim", ((java.lang.Float) cls5.getMethod("getWallpaperDimAmount", null).invoke(invoke5, null)).floatValue());
                            bundle.putParcelableArrayList("bitmapCrops", list == null ? null : new java.util.ArrayList<>(list));
                            bundle.putInt("width", i);
                            bundle.putInt("height", i2);
                            return bundle;
                        }
                        throw new dev.duo.hookprobe.C0033u.a("取层期间壁纸已更换");
                    }
                    throw new dev.duo.hookprobe.C0033u.a(readBundle.getString("unavailable"));
                }
                throw new java.lang.IllegalStateException("侧栏取层未处理");
            } catch (java.lang.Throwable th) {
                obtain.recycle();
                obtain2.recycle();
                throw th;
            }
        }
        throw new dev.duo.hookprobe.C0033u.a("侧栏取层接口未就绪");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004b A[Catch: all -> 0x0092, TryCatch #0 {all -> 0x0092, blocks: (B:10:0x0021, B:13:0x0039, B:19:0x004b, B:21:0x005b, B:23:0x0063, B:28:0x0075, B:31:0x0080, B:33:0x0086, B:37:0x003f, B:41:0x002b, B:48:0x0090), top: B:2:0x0001, inners: #1, #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized void d(android.os.IBinder r12) {
        /*
            r11 = this;
            monitor-enter(r11)
            java.util.Map<android.os.IBinder, java.lang.Long> r0 = r11.u     // Catch: java.lang.Throwable -> L8d
            r0.remove(r12)     // Catch: java.lang.Throwable -> L8d
            java.util.Map<android.os.IBinder, java.util.Map<java.lang.Integer, android.os.IBinder>> r0 = r11.t     // Catch: java.lang.Throwable -> L8d
            java.lang.Object r0 = r0.get(r12)     // Catch: java.lang.Throwable -> L8d
            r1 = r0
            java.util.Map r1 = (java.util.Map) r1     // Catch: java.lang.Throwable -> L8d
            android.os.IBinder r0 = r11.x     // Catch: java.lang.Throwable -> L8d
            r2 = 0
            if (r0 != r12) goto L35
            r11.x = r2     // Catch: java.lang.Throwable -> L8d
            long r5 = r11.y     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L8d
            int r8 = r11.A     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L8d
            int r9 = r11.B     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L8d
            boolean r10 = r11.H     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L8d
            r7 = 0
            r3 = r11
            r4 = r12
            r3.a(r4, r5, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L25 java.lang.Throwable -> L92
            goto L37
        L25:
            r0 = move-exception
            goto L2a
        L27:
            r0 = move-exception
            r3 = r11
            r4 = r12
        L2a:
            r12 = r0
            r3.O = r12     // Catch: java.lang.Throwable -> L92
            java.lang.String r0 = "MiDuoFold"
            java.lang.String r5 = "结束目标订阅失败"
            android.util.Log.e(r0, r5, r12)     // Catch: java.lang.Throwable -> L92
            goto L37
        L35:
            r3 = r11
            r4 = r12
        L37:
            r12 = -1
            r11.a(r4, r12)     // Catch: java.lang.Exception -> L3d java.lang.Throwable -> L92
            goto L48
        L3d:
            r0 = move-exception
            r12 = r0
            r3.O = r12     // Catch: java.lang.Throwable -> L92
            java.lang.String r0 = "MiDuoFold"
            java.lang.String r5 = "会话镜像释放失败"
            android.util.Log.e(r0, r5, r12)     // Catch: java.lang.Throwable -> L92
        L48:
            if (r1 != 0) goto L4b
            goto L8b
        L4b:
            java.util.ArrayList r12 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L92
            java.util.Set r0 = r1.keySet()     // Catch: java.lang.Throwable -> L92
            r12.<init>(r0)     // Catch: java.lang.Throwable -> L92
            int r5 = r12.size()     // Catch: java.lang.Throwable -> L92
            r0 = 0
        L59:
            if (r0 >= r5) goto L80
            java.lang.Object r6 = r12.get(r0)     // Catch: java.lang.Throwable -> L92
            int r7 = r0 + 1
            java.lang.Integer r6 = (java.lang.Integer) r6     // Catch: java.lang.Throwable -> L92
            java.lang.reflect.Method r0 = r3.e     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L92
            java.lang.Object r8 = r1.get(r6)     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L92
            java.lang.Object[] r8 = new java.lang.Object[]{r8}     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L92
            r0.invoke(r2, r8)     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L92
            r1.remove(r6)     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L92
            goto L7e
        L74:
            r0 = move-exception
            r3.O = r0     // Catch: java.lang.Throwable -> L92
            java.lang.String r6 = "MiDuoFold"
            java.lang.String r8 = "死亡会话实时源释放失败"
            android.util.Log.e(r6, r8, r0)     // Catch: java.lang.Throwable -> L92
        L7e:
            r0 = r7
            goto L59
        L80:
            boolean r12 = r1.isEmpty()     // Catch: java.lang.Throwable -> L92
            if (r12 == 0) goto L8b
            java.util.Map<android.os.IBinder, java.util.Map<java.lang.Integer, android.os.IBinder>> r12 = r3.t     // Catch: java.lang.Throwable -> L92
            r12.remove(r4)     // Catch: java.lang.Throwable -> L92
        L8b:
            monitor-exit(r11)
            return
        L8d:
            r0 = move-exception
            r3 = r11
        L8f:
            r12 = r0
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L92
            throw r12
        L92:
            r0 = move-exception
            goto L8f
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.C0033u.d(android.os.IBinder):void");
    }

    synchronized void b(android.os.IBinder iBinder) {
        if (this.O == null && a(iBinder)) {
            this.u.put(iBinder, java.lang.Long.valueOf(android.os.SystemClock.elapsedRealtime() + 1500));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(java.lang.reflect.Method method, java.lang.reflect.Method method2, java.lang.String str, java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.reflect.Field field3, java.lang.Object obj) {
        try {
            android.view.WindowManager.LayoutParams layoutParams = (android.view.WindowManager.LayoutParams) this.m.get(obj);
            if (((java.lang.Integer) method.invoke(obj, null)).intValue() != 0 || !((java.lang.Boolean) method2.invoke(obj, null)).booleanValue()) {
                return false;
            }
            if (str.equals("home")) {
                if (!"com.miui.home".equals(layoutParams.packageName) || layoutParams.type != 1 || field.get(obj) == null || field2.getInt(obj) != ((android.content.pm.ActivityInfo) field3.get(field.get(obj))).applicationInfo.uid) {
                    return false;
                }
            } else if (layoutParams.type != 2013) {
                return false;
            }
            return true;
        } catch (java.lang.Exception e) {
            throw new java.lang.IllegalStateException("只读窗口匹配失败", e);
        }
    }

    void a(io.github.libxposed.api.XposedModule xposedModule, java.util.List<io.github.libxposed.api.XposedInterface.HookHandle> list, final android.os.Handler handler) {
        list.add(xposedModule.hook(this.i).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.u$$ExternalSyntheticLambda2
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object a2;
                a2 = dev.duo.hookprobe.C0033u.this.a(handler, chain);
                return a2;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0064, code lost:
    
        if (r16.r.getInt(r12) > r15) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ java.lang.Object a(android.os.Handler r17, io.github.libxposed.api.XposedInterface.Chain r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.C0033u.a(android.os.Handler, io.github.libxposed.api.XposedInterface$Chain):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized void b(android.os.IBinder iBinder, long j) {
        if (this.x == iBinder && this.y == j) {
            this.D = true;
            c();
        }
    }

    synchronized void a(int i, int i2, long j) {
        if (j <= android.os.SystemClock.uptimeMillis()) {
            if (i == 15) {
                this.M = i2;
            } else if (i == 9) {
                boolean z = i2 == 1;
                this.N = z;
                if (this.x != null) {
                    this.G = z;
                    c();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0045 A[Catch: all -> 0x0058, TryCatch #0 {, blocks: (B:7:0x0003, B:9:0x0007, B:11:0x000d, B:13:0x0011, B:16:0x001a, B:19:0x002e, B:24:0x0035, B:29:0x0041, B:31:0x0045, B:34:0x004b, B:37:0x0051), top: B:6:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized void a(android.os.IBinder r3, long r4, int r6, long r7) {
        /*
            r2 = this;
            monitor-enter(r2)
            if (r3 == 0) goto L56
            android.os.IBinder r0 = r2.x     // Catch: java.lang.Throwable -> L58
            if (r0 != r3) goto L56
            long r0 = r2.y     // Catch: java.lang.Throwable -> L58
            int r3 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r3 != 0) goto L56
            java.lang.Throwable r3 = r2.O     // Catch: java.lang.Throwable -> L58
            if (r3 != 0) goto L56
            long r3 = android.os.SystemClock.uptimeMillis()     // Catch: java.lang.Throwable -> L58
            int r3 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r3 <= 0) goto L1a
            goto L56
        L1a:
            r2.L = r6     // Catch: java.lang.Throwable -> L58
            java.lang.String r3 = r2.z     // Catch: java.lang.Throwable -> L58
            java.lang.String r4 = "local:4639175402683733248"
            boolean r3 = r4.equals(r3)     // Catch: java.lang.Throwable -> L58
            boolean r4 = r2.H     // Catch: java.lang.Throwable -> L58
            r5 = 72
            r7 = 1
            if (r4 == 0) goto L2d
            r8 = r7
            goto L2e
        L2d:
            r8 = r5
        L2e:
            r8 = r8 & r6
            if (r4 == 0) goto L32
            r5 = r7
        L32:
            r0 = 0
            if (r8 != r5) goto L40
            r5 = r6 & 16
            if (r5 == 0) goto L3b
            r5 = r7
            goto L3c
        L3b:
            r5 = r0
        L3c:
            if (r5 != r3) goto L40
            r5 = r7
            goto L41
        L40:
            r5 = r0
        L41:
            r2.E = r5     // Catch: java.lang.Throwable -> L58
            if (r4 == 0) goto L47
            r2.D = r5     // Catch: java.lang.Throwable -> L58
        L47:
            if (r4 != 0) goto L50
            if (r3 == 0) goto L50
            r3 = r6 & 32
            if (r3 == 0) goto L50
            goto L51
        L50:
            r7 = r0
        L51:
            r2.F = r7     // Catch: java.lang.Throwable -> L58
            r2.c()     // Catch: java.lang.Throwable -> L58
        L56:
            monitor-exit(r2)
            return
        L58:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L58
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.C0033u.a(android.os.IBinder, long, int, long):void");
    }

    private void a(android.os.IBinder iBinder, long j, boolean z, int i, int i2, boolean z2) throws java.lang.Exception {
        android.os.IBinder iBinder2 = this.w;
        if (iBinder2 == null || !iBinder2.isBinderAlive()) {
            if (z) {
                throw new java.lang.IllegalStateException("就绪提供者不可用");
            }
            return;
        }
        android.os.Parcel obtain = android.os.Parcel.obtain();
        try {
            obtain.writeInterfaceToken("dev.duo.foldanim1.LAYERS");
            obtain.writeStrongBinder(iBinder);
            obtain.writeLong(j);
            obtain.writeInt(z ? 1 : 0);
            obtain.writeInt(i);
            obtain.writeInt(i2);
            obtain.writeInt(z2 ? 1 : 0);
            if (iBinder2.transact(2, obtain, null, 1)) {
            } else {
                throw new java.lang.IllegalStateException("就绪订阅未处理");
            }
        } finally {
            obtain.recycle();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0051, code lost:
    
        r13.J = "已请求分层";
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void a(int r14, android.os.IBinder r15, android.os.Parcel r16, android.os.Parcel r17) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.C0033u.a(int, android.os.IBinder, android.os.Parcel, android.os.Parcel):void");
    }

    private synchronized void a(android.os.IBinder iBinder, int i, java.util.ArrayList<android.view.SurfaceControl> arrayList) throws java.lang.Exception {
        if (arrayList.isEmpty()) {
            return;
        }
        java.util.Map<java.lang.Integer, java.util.ArrayList<android.view.SurfaceControl>> map = this.v.get(iBinder);
        if (map == null) {
            map = new java.util.HashMap<>();
            this.v.put(iBinder, map);
        }
        java.util.ArrayList<android.view.SurfaceControl> arrayList2 = map.get(java.lang.Integer.valueOf(i));
        if (arrayList2 == null) {
            map.put(java.lang.Integer.valueOf(i), arrayList);
        } else if (arrayList2 != arrayList) {
            arrayList2.addAll(arrayList);
        }
        try {
            a(iBinder, i);
        } catch (java.lang.Exception e) {
            this.O = e;
            throw e;
        }
    }

    synchronized boolean a() {
        return !this.u.isEmpty();
    }

    synchronized void a(long j) {
        java.util.ArrayList arrayList = new java.util.ArrayList(this.u.keySet());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            java.lang.Object obj = arrayList.get(i);
            i++;
            android.os.IBinder iBinder = (android.os.IBinder) obj;
            if (j >= this.u.get(iBinder).longValue()) {
                d(iBinder);
            }
        }
    }

    synchronized boolean a(android.os.IBinder iBinder) {
        if (!this.t.containsKey(iBinder) && !this.v.containsKey(iBinder)) {
            if (this.x != iBinder) {
                return false;
            }
        }
        return true;
    }

    private void a(android.os.IBinder iBinder, int i) throws java.lang.Exception {
        java.util.Map<java.lang.Integer, java.util.ArrayList<android.view.SurfaceControl>> map = this.v.get(iBinder);
        if (map == null) {
            return;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(map.keySet());
        int size = arrayList.size();
        java.lang.Exception exc = null;
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 + 1;
            java.lang.Integer num = (java.lang.Integer) arrayList.get(i2);
            int intValue = num.intValue();
            if (i == -1 || i == intValue) {
                java.util.ArrayList<android.view.SurfaceControl> arrayList2 = map.get(num);
                java.util.ArrayList arrayList3 = new java.util.ArrayList(arrayList2);
                int size2 = arrayList3.size();
                int i4 = 0;
                while (i4 < size2) {
                    int i5 = i4 + 1;
                    android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) arrayList3.get(i4);
                    try {
                        android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                        try {
                            transaction.reparent(surfaceControl, null);
                            transaction.apply();
                            transaction.close();
                            surfaceControl.release();
                            arrayList2.remove(surfaceControl);
                        } finally {
                        }
                    } catch (java.lang.Exception e) {
                        if (exc == null) {
                            exc = e;
                            i4 = i5;
                        } else {
                            exc.addSuppressed(e);
                        }
                    }
                    i4 = i5;
                }
                if (arrayList2.isEmpty()) {
                    map.remove(num);
                }
            }
            i2 = i3;
        }
        if (map.isEmpty()) {
            this.v.remove(iBinder);
        }
        if (exc != null) {
            throw exc;
        }
    }
}
