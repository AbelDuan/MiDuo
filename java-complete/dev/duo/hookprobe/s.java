package dev.duo.hookprobe;

import android.content.Context;
import android.graphics.Rect;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Parcel;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import android.view.SurfaceControl;
import dev.duo.hookprobe.x;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import io.github.libxposed.api.XposedModuleInterface;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class s extends XposedModule {
    private static final String a = "MiDuoFoldLease";
    private static final String b = "dev.duo.foldanim1.CONTROL";
    static final int c = 13693511;
    static final int d = 254;
    static final int e = 0;
    static final int f = 1;
    static final int g = 2;
    static final int h = 3;
    static final int i = 4;
    private Method A;
    private Method B;
    private Method C;
    private Method D;
    private Field E;
    private Field F;
    private Method G;
    private Method H;
    private Method I;
    private Method J;
    private Method K;
    private Method L;
    private Method M;
    private Method N;
    private Method O;
    private Field P;
    private Field Q;
    private Field R;
    private Field S;
    private Field T_fld;
    private Field U;
    private Field V;
    private Field W;
    private Field X;
    private Field Y;
    private Field Z;
    private Field a0;
    private Field b0;
    private Field c0;
    private Field d0;
    private Field e0;
    private Field f0;
    private Field g0;
    private volatile boolean o;
    private volatile Object p;
    private boolean q;
    private Handler r;
    private u s;
    private volatile Throwable t;
    private Class<?> u;
    private Class<?> v;
    private Class<?> w;
    private Class<?> x;
    private Method y;
    private Method z;
    private final x j = new x();
    private final List<XposedInterface.HookHandle> k = new ArrayList();
    private final ThreadLocal<Boolean> l = new ThreadLocal<>();
    private final Map<IBinder, float[]> m = new HashMap();
    private final Map<IBinder, IBinder.DeathRecipient> n = new HashMap();
    private final Map<IBinder, String> h0 = new HashMap();
    private final Runnable i0 = new Runnable() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            s.this.c();
        }
    };

    private static Method a(Class<?> cls, String str, Class<?>... clsArr) throws Exception {
        Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object b(XposedInterface.Chain chain) throws Throwable {
        boolean z;
        boolean z2 = false;
        try {
            IBinder iBinder = (IBinder) this.S.get(chain.getThisObject());
            boolean z3 = true;
            float[] fArr = {((Float) chain.getArg(0)).floatValue(), ((Float) chain.getArg(1)).floatValue(), ((Float) chain.getArg(2)).floatValue(), ((Float) chain.getArg(3)).floatValue()};
            if (fArr[2] > 0.0f && iBinder != null) {
                synchronized (this.m) {
                    this.m.put(iBinder, (float[]) fArr.clone());
                }
            }
            if (!Boolean.TRUE.equals(this.l.get()) && !this.j.a()) {
                boolean z4 = chain.getArgs().size() == 5;
                boolean z5 = z4 && ((Boolean) chain.getArg(4)).booleanValue();
                String c2 = c(iBinder);
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
                    Log.i(a, "HOLD_BACKLIGHT panel=" + c2 + " requested=" + fArr[2] + " nits=" + fArr[3] + (z6 ? " leased" : " guard") + (z4 ? " dim=" + z : ""));
                }
                z2 = z3;
            }
        } catch (Throwable th) {
            this.t = th;
            Log.e(a, "backlight hook failed; passthrough", th);
        }
        if (z2) {
            return null;
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object c(XposedInterface.Chain chain) throws Throwable {
        if (Boolean.TRUE.equals(this.l.get()) || this.j.b()) {
            return chain.proceed();
        }
        int i2 = 0;
        try {
            String str = (String) this.I.invoke(chain.getArg(1), null);
            boolean booleanValue = ((Boolean) chain.getArg(2)).booleanValue();
            Object invoke = this.L.invoke(chain.getThisObject(), null);
            i2 = this.j.a(str, booleanValue, (invoke == null || str == null || !str.equals(this.W.get(invoke))) ? false : true, a());
        } catch (Throwable th) {
            Log.e(a, "config hook failed; passthrough", th);
        }
        if (i2 == 1) {
            return null;
        }
        return chain.proceed();
    }

    private void d(IBinder iBinder) {
        synchronized (this.n) {
            IBinder.DeathRecipient remove = this.n.remove(iBinder);
            if (remove != null) {
                iBinder.unlinkToDeath(remove, 0);
            }
        }
    }

    public void onSystemServerStarting(XposedModuleInterface.SystemServerStartingParam systemServerStartingParam) {
        if (this.q) {
            return;
        }
        this.q = true;
        try {
            a(systemServerStartingParam.getClassLoader());
        } catch (Throwable th) {
            this.o = false;
            Iterator<XposedInterface.HookHandle> it = this.k.iterator();
            while (it.hasNext()) {
                try {
                    it.next().unhook();
                } catch (Throwable th2) {
                    Log.e(a, "Unhook failed", th2);
                }
            }
            this.k.clear();
            Handler handler = this.r;
            if (handler != null) {
                handler.getLooper().quitSafely();
            }
            Log.e(a, "NOT_READY; hooks rolled back", th);
            log(6, a, "NOT_READY; hooks rolled back", th);
        }
    }

    private static Field a(Class<?> cls, String str) throws Exception {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField;
    }

    private static long a() {
        return SystemClock.elapsedRealtime();
    }

    private void a(ClassLoader classLoader) throws Exception {
        this.u = Class.forName("com.android.server.display.DisplayManagerService", false, classLoader);
        this.v = Class.forName("com.android.server.display.LogicalDisplay", false, classLoader);
        this.w = Class.forName("com.android.server.display.DisplayDevice", false, classLoader);
        Class<?> cls = Class.forName("com.android.server.display.DisplayAdapter", false, classLoader);
        Class.forName("com.android.server.display.LocalDisplayAdapter", false, classLoader);
        this.x = Class.forName("com.android.server.display.LocalDisplayAdapter$LocalDisplayDevice", false, classLoader);
        Class<?> cls2 = Class.forName("com.android.server.display.LocalDisplayAdapter$LocalDisplayDevice$1", false, classLoader);
        Class<?> cls3 = Class.forName("com.android.server.display.LocalDisplayAdapter$SurfaceControlProxy", false, classLoader);
        Class<?> cls4 = Class.forName("com.android.server.display.LocalDisplayAdapter$BacklightAdapter", false, classLoader);
        Class<?> cls5 = Class.forName("com.android.server.display.DisplayDeviceRepository", false, classLoader);
        Class<?> cls6 = Class.forName("com.android.server.display.DisplayDeviceInfo", false, classLoader);
        final Class<?> cls7 = Class.forName("com.android.server.display.DisplayManagerService$BinderService", false, classLoader);
        Class cls8 = Integer.TYPE;
        this.B = a((Class<?>) SurfaceControl.Transaction.class, "setDisplayLayerStack", (Class<?>[]) new Class[]{IBinder.class, cls8});
        this.C = a((Class<?>) SurfaceControl.Transaction.class, "setDisplayProjection", (Class<?>[]) new Class[]{IBinder.class, cls8, Rect.class, Rect.class});
        this.D = a((Class<?>) SurfaceControl.class, "setDisplayPowerMode", (Class<?>[]) new Class[]{IBinder.class, cls8});
        this.G = a(this.u, "configureDisplayLocked", (Class<?>[]) new Class[]{SurfaceControl.Transaction.class, this.w});
        Class<?> cls9 = Class.forName("com.android.server.display.LogicalDisplayMapper", false, classLoader);
        this.E = a(this.u, "mLogicalDisplayMapper");
        this.F = a(this.u, "mHandlerExecutor");
        this.y = a(cls9, "getDisplayLocked", (Class<?>[]) new Class[]{this.w});
        Class<?> cls10 = this.v;
        Class<?> cls11 = this.w;
        Class cls12 = Boolean.TYPE;
        this.z = a(cls10, "configureDisplayLocked", (Class<?>[]) new Class[]{SurfaceControl.Transaction.class, cls11, cls12, Executor.class});
        this.A = a(this.u, "scheduleTraversalLocked", (Class<?>[]) new Class[]{cls12});
        this.P = a(this.u, "mSyncRoot");
        this.Q = a(this.u, "mDisplayDeviceRepo");
        this.H = a(cls5, "getByUniqueIdLocked", (Class<?>[]) new Class[]{String.class});
        this.R = a(cls7, "this$0");
        this.I = a(this.w, "getUniqueId", (Class<?>[]) new Class[0]);
        this.J = a(this.w, "getDisplayTokenLocked", (Class<?>[]) new Class[0]);
        this.K = a(this.w, "getDisplayDeviceInfoLocked", (Class<?>[]) new Class[0]);
        this.V = a(cls6, "state");
        this.e0 = a(cls6, "width");
        this.f0 = a(cls6, "height");
        this.g0 = a(cls6, "rotation");
        this.L = a(this.v, "getDisplayInfoLocked", (Class<?>[]) new Class[0]);
        this.W = a(Class.forName("android.view.DisplayInfo"), "uniqueId");
        this.M = a(cls, "getPowerModeForState", (Class<?>[]) new Class[]{cls8});
        this.S = a(cls4, "mDisplayToken");
        this.T = a(this.x, "mBacklightAdapter");
        this.U = a(this.x, "mState");
        Class cls13 = Float.TYPE;
        this.N = a(cls4, "setBacklight", (Class<?>[]) new Class[]{cls13, cls13, cls13, cls13});
        this.O = a(cls4, "setBacklight", (Class<?>[]) new Class[]{cls13, cls13, cls13, cls13, cls12});
        this.X = a(this.w, "mCurrentLayerStack");
        this.Y = a(this.w, "mCurrentOrientation");
        this.Z = a(this.w, "mCurrentLayerStackRect");
        this.a0 = a(this.w, "mCurrentDisplayRect");
        this.b0 = a(this.w, "mCurrentFlags");
        this.c0 = a(this.w, "mLastDisplayWidth");
        this.d0 = a(this.w, "mLastDisplayHeight");
        Method[] methodArr = {a(cls2, "setDisplayState", (Class<?>[]) new Class[]{cls8}), a(cls2, "run", (Class<?>[]) new Class[0]), a(cls2, "setDisplayBrightness", (Class<?>[]) new Class[]{cls13, cls13}), this.G, a(this.u, "lambda$performTraversalLocked$22", (Class<?>[]) new Class[]{SparseArray.class, SurfaceControl.Transaction.class, this.v}), a(this.u, "performTraversalLocked", (Class<?>[]) new Class[]{SurfaceControl.Transaction.class, SparseArray.class}), a(cls7, "onTransact", (Class<?>[]) new Class[]{cls8, Parcel.class, Parcel.class, cls8})};
        boolean z = true;
        for (int i2 = 0; i2 < 7; i2++) {
            Method method = methodArr[i2];
            boolean deoptimize = deoptimize(method);
            z &= deoptimize;
            Log.i(a, "CALLER_DEOPT method=" + method.getName() + " result=" + deoptimize);
        }
        if (z) {
            this.s = new u(classLoader);
            List<XposedInterface.HookHandle> list = this.k;
            Class cls14 = Integer.TYPE;
            XposedInterface.HookBuilder hook = hook(a(cls3, "setDisplayPowerMode", (Class<?>[]) new Class[]{IBinder.class, cls14}));
            XposedInterface.ExceptionMode exceptionMode = XposedInterface.ExceptionMode.PROTECTIVE;
            list.add(hook.setExceptionMode(exceptionMode).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda3
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a2;
                    a2 = s.this.a(chain);
                    return a2;
                }
            }));
            XposedInterface.Hooker hooker = new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda4
                public final Object intercept(XposedInterface.Chain chain) {
                    Object b2;
                    b2 = s.this.b(chain);
                    return b2;
                }
            };
            this.k.add(hook(this.N).setExceptionMode(exceptionMode).intercept(hooker));
            this.k.add(hook(this.O).setExceptionMode(exceptionMode).intercept(hooker));
            this.k.add(hook(a(this.v, "configureDisplayLocked", (Class<?>[]) new Class[]{SurfaceControl.Transaction.class, this.w, Boolean.TYPE, Executor.class})).setExceptionMode(exceptionMode).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda5
                public final Object intercept(XposedInterface.Chain chain) {
                    Object c2;
                    c2 = s.this.c(chain);
                    return c2;
                }
            }));
            this.k.add(hook(a(Class.forName("android.hardware.display.IDisplayManager$Stub"), "onTransact", (Class<?>[]) new Class[]{cls14, Parcel.class, Parcel.class, cls14})).setExceptionMode(XposedInterface.ExceptionMode.PASSTHROUGH).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda6
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a2;
                    a2 = s.this.a(cls7, chain);
                    return a2;
                }
            }));
            HandlerThread handlerThread = new HandlerThread(a);
            handlerThread.start();
            Handler handler = new Handler(handlerThread.getLooper());
            this.r = handler;
            this.s.a(this, this.k, handler);
            this.o = true;
            Log.i(a, (this.o ? "READY" : "NOT_READY_CALLER_DEOPT") + " version=" + d + " hooks=" + this.k.size() + " dormant_without_lease=true");
            return;
        }
        throw new IllegalStateException("租约调用链去优化失败");
    }

    private String c(IBinder iBinder) {
        String str;
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
        Iterator<x.b> it = this.j.b(a()).iterator();
        while (it.hasNext()) {
            a(it.next(), "expired");
        }
        Iterator<x.a> it2 = this.j.c(a()).iterator();
        while (it2.hasNext()) {
            a(it2.next());
        }
        if (!this.j.a() || this.s.a()) {
            this.r.postDelayed(this.i0, 50L);
        }
    }

    private void b(final IBinder iBinder) {
        synchronized (this.n) {
            if (this.n.containsKey(iBinder)) {
                return;
            }
            IBinder.DeathRecipient deathRecipient = new IBinder.DeathRecipient() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda0
                @Override // android.os.IBinder.DeathRecipient
                public final void binderDied() {
                    s.this.a(iBinder);
                }
            };
            try {
                iBinder.linkToDeath(deathRecipient, 0);
                this.n.put(iBinder, deathRecipient);
            } catch (Exception e2) {
                Iterator<x.b> it = this.j.b(iBinder).iterator();
                while (it.hasNext()) {
                    a(it.next(), "link_failed");
                }
                throw new IllegalStateException("租约死亡监听失败", e2);
            }
        }
    }

    private void b() {
        this.r.removeCallbacks(this.i0);
        this.r.postDelayed(this.i0, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(XposedInterface.Chain chain) throws Throwable {
        String str;
        if (!Boolean.TRUE.equals(this.l.get()) && !this.j.a()) {
            boolean z = false;
            try {
                IBinder iBinder = (IBinder) chain.getArg(0);
                boolean z2 = true;
                int intValue = ((Integer) chain.getArg(1)).intValue();
                String c2 = c(iBinder);
                if (c2 == null || !this.j.a(c2, intValue, a())) {
                    z2 = false;
                }
                if (z2) {
                    StringBuilder append = new StringBuilder().append("HOLD_POWER panel=").append(c2).append(" requested_mode=").append(intValue);
                    if (intValue == 2) {
                        str = " (already lit by lease)";
                    } else {
                        str = "";
                    }
                    Log.i(a, append.append(str).toString());
                }
                z = z2;
            } catch (Throwable th) {
                this.t = th;
                Log.e(a, "power hook failed; passthrough", th);
            }
            if (z) {
                return null;
            }
            return chain.proceed();
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(Class cls, XposedInterface.Chain chain) throws Throwable {
        if (((Integer) chain.getArg(0)).intValue() != c) {
            return chain.proceed();
        }
        Object thisObject = chain.getThisObject();
        if (this.p == null && cls.isInstance(thisObject)) {
            this.p = this.R.get(thisObject);
        }
        return Boolean.valueOf(a((Parcel) chain.getArg(1), (Parcel) chain.getArg(2), ((Integer) chain.getArg(3)).intValue()));
    }

    private Object a(String str) throws Exception {
        Object obj = this.p;
        if (obj != null) {
            return this.H.invoke(this.Q.get(obj), str);
        }
        throw new IllegalStateException("display service not captured");
    }

    private boolean a(Parcel parcel, Parcel parcel2, int i2) {
        String str;
        try {
        } catch (Throwable th) {
            Log.w(a, "CONTROL_REJECTED " + th);
            if (parcel2 != null) {
                parcel2.setDataPosition(0);
                parcel2.setDataSize(0);
                parcel2.writeException(new IllegalStateException("开合控制失败", th));
            }
        }
        if (parcel2 != null && (i2 & 1) == 0) {
            parcel.enforceInterface(b);
            int readInt = parcel.readInt();
            int callingPid = Binder.getCallingPid();
            int callingUid = Binder.getCallingUid();
            if (readInt != 8 && readInt != 9 && readInt != 10 && readInt != 11 && readInt != 14 && readInt != 15 && readInt != 18) {
                if (callingUid == 0) {
                    long clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        a(readInt, parcel, parcel2, callingPid);
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        return true;
                    } catch (Throwable th2) {
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        throw th2;
                    }
                }
                throw new SecurityException("root synchronous caller required");
            }
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Context context = (Context) cls.getMethod("getSystemContext", null).invoke(cls.getMethod("currentActivityThread", null).invoke(null, null), null);
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
            throw new SecurityException("就绪信号 UID 不匹配");
        }
        throw new SecurityException("root synchronous caller required");
    }

    private void a(int i2, Parcel parcel, Parcel parcel2, int i3) throws Exception {
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
            throw new IllegalStateException("租约不可用", this.t);
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
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null && readStrongBinder.isBinderAlive()) {
                b(readStrongBinder);
                this.s.a(i2, readStrongBinder, parcel, parcel2);
                if (!this.s.a(readStrongBinder) && !this.j.a(readStrongBinder)) {
                    d(readStrongBinder);
                }
                b();
                return;
            }
            throw new IllegalArgumentException("owner 不可用");
        }
        if (i2 == 1) {
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            String readString = parcel.readString();
            int readInt = parcel.readInt();
            int readInt2 = parcel.readInt();
            boolean z = parcel.readInt() != 0;
            String readString2 = parcel.readString();
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
            IBinder readStrongBinder3 = parcel.readStrongBinder();
            long readLong2 = parcel.readLong();
            this.s.b(readStrongBinder3);
            parcel2.writeNoException();
            parcel2.writeInt(this.j.a(readStrongBinder3, i3, a(), readLong2));
            return;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                String readString3 = parcel.readString();
                parcel2.writeNoException();
                a(readString3, parcel2);
                return;
            }
            throw new IllegalArgumentException("unknown command " + i2);
        }
        IBinder readStrongBinder4 = parcel.readStrongBinder();
        List<x.b> a2 = this.j.a(readStrongBinder4, i3, parcel.readString());
        Iterator<x.b> it = a2.iterator();
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
        throw new IllegalStateException("面板归还失败", this.t);
    }

    private int a(final IBinder iBinder, int i2, final String str, int i3, int i4, final boolean z, final String str2, long j, int i5, int i6, int i7) throws Exception {
        Object obj;
        int i8;
        int i9;
        int i10;
        Object obj2;
        IBinder iBinder2;
        if (iBinder == null || !iBinder.isBinderAlive()) {
            return 0;
        }
        final Object obj3 = this.P.get(this.p);
        synchronized (obj3) {
            try {
                try {
                    Object a2 = a(str);
                    if (a2 == null) {
                        obj = obj3;
                    } else {
                        if (this.x.isInstance(a2)) {
                            IBinder iBinder3 = (IBinder) this.J.invoke(a2, null);
                            synchronized (this.h0) {
                                try {
                                    this.h0.put(iBinder3, str);
                                } catch (Throwable th) {

                                    while (true) {
                                        try {
                                            throw th;
                                        } catch (Throwable th2) {
                                            throw th2;
                                        }
                                    }
                                }
                            }
                            boolean z2 = this.j.b(str) == null;
                            if (z2 && this.j.a(str) != null) {
                                Log.i(a, "GUARD_DROPPED panel=" + str + " reason=new_lease");
                            }
                            final x.b a3 = this.j.a(str, iBinder, i2, i3, i4, a(), j);
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
                                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                                this.B.invoke(transaction, iBinder3, Integer.valueOf(i4));
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
                                Log.i(a, "LEASE panel=" + str + " mode=" + i3 + " stack=" + i4 + " pid=" + i2 + " power_on=" + z + " ttl=" + x.a(j) + " rotation=" + i8 + " stack_size=" + i9 + "x" + i10);
                            }
                            b(iBinder);
                            if (z || str2 != null) {
                                final Object obj4 = obj2;
                                final IBinder iBinder4 = iBinder2;
                                this.r.post(new Runnable() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        s.this.a(a3, str, z, obj3, obj4, iBinder4, str2, iBinder);
                                    }
                                });
                            }
                            b();
                            return 1;
                        }
                        obj = obj3;
                    }
                    return 0;
                } catch (Throwable th3) {
                    throw th3;
                    throw th;
                }
            } catch (Throwable th4) {
                throw th4;
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(x.b bVar, String str, boolean z, Object obj, Object obj2, IBinder iBinder, String str2, IBinder iBinder2) {
        IBinder iBinder3;
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
                        Log.i(a, "LEASE_POWER_SKIPPED panel=" + str + " already_on_by_platform");
                    } else {
                        this.D.invoke(null, iBinder, 2);
                        this.j.a(bVar);
                        Log.i(a, "LEASE_POWER_ON panel=" + str);
                    }
                }
                if (str2 != null) {
                    synchronized (obj) {
                        Object a2 = a(str2);
                        if (a2 == null) {
                            iBinder3 = null;
                        } else {
                            iBinder3 = (IBinder) this.J.invoke(a2, null);
                        }
                    }
                    synchronized (this.m) {
                        fArr = iBinder3 != null ? this.m.get(iBinder3) : null;
                    }
                    if (fArr != null) {
                        this.l.set(Boolean.TRUE);
                        try {
                            this.N.invoke(this.T.get(obj2), Float.valueOf(fArr[0]), Float.valueOf(fArr[1]), Float.valueOf(fArr[2]), Float.valueOf(fArr[3]));
                            this.l.remove();
                            this.j.a(bVar, fArr[2]);
                            Log.i(a, "LEASE_BACKLIGHT panel=" + str + " from=" + str2 + " value=" + fArr[2] + " floor=on");
                        } catch (Throwable th) {
                            this.l.remove();
                            throw th;
                        }
                    } else {
                        throw new IllegalStateException("当前源面板亮度尚未采集");
                    }
                }
            }
        } catch (Throwable th2) {
            this.t = th2;
            Iterator<x.b> it = this.j.b(iBinder2).iterator();
            while (it.hasNext()) {
                a(it.next(), "apply_failed");
            }
            Log.e(a, "LEASE_APPLY_FAILED panel=" + str, th2);
        }
    }

    private void a(SurfaceControl.Transaction transaction, Object obj, IBinder iBinder, int i2, int i3, int i4) throws Exception {
        int i5;
        int i6;
        Object invoke = this.K.invoke(obj, null);
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
        Rect rect = new Rect(i12, i13, i5 + i12, i6 + i13);
        this.C.invoke(transaction, iBinder, Integer.valueOf(i7), new Rect(0, 0, i3, i4), rect);
        this.Y.setInt(obj, -1);
        this.Z.set(obj, null);
        this.a0.set(obj, null);
        Log.i(a, "LEASE_PROJECTION orientation=" + i7 + " stack=" + i3 + "x" + i4 + " display=" + rect.toShortString());
    }

    private void a(x.b bVar, String str) {
        float[] fArr;
        synchronized (bVar) {
            try {
            } catch (Throwable th) {
                this.t = th;
                Log.e(a, "RELEASE_FAILED panel=" + bVar.a + " reason=" + str, th);
            }
            synchronized (this.P.get(this.p)) {
                Object a2 = a(bVar.a);
                if (a2 == null) {
                    Log.w(a, "RELEASE_NO_DEVICE panel=" + bVar.a);
                    return;
                }
                IBinder iBinder = (IBinder) this.J.invoke(a2, null);
                this.X.setInt(a2, -2147483641);
                this.Y.setInt(a2, -1);
                this.Z.set(a2, null);
                this.a0.set(a2, null);
                this.b0.setInt(a2, -1);
                this.c0.setInt(a2, -1);
                this.d0.setInt(a2, -1);
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                Object invoke = this.y.invoke(this.E.get(this.p), a2);
                if (invoke == null) {
                    this.B.invoke(transaction, iBinder, -1);
                } else {
                    boolean z = this.V.getInt(this.K.invoke(a2, null)) == 1;
                    this.l.set(Boolean.TRUE);
                    try {
                        this.z.invoke(invoke, transaction, a2, Boolean.valueOf(z), this.F.get(this.p));
                    } finally {
                    }
                }
                transaction.apply();
                transaction.close();
                this.A.invoke(this.p, Boolean.FALSE);
                int i2 = this.U.getInt(a2);
                if (bVar.h) {
                    Integer num = (Integer) this.M.invoke(null, Integer.valueOf(i2));
                    int intValue = num.intValue();
                    if (x.a(bVar, intValue)) {
                        this.D.invoke(null, iBinder, num);
                        Log.i(a, "RELEASE_POWER panel=" + bVar.a + " state=" + i2 + " mode=" + intValue);
                    } else {
                        Log.i(a, "RELEASE_POWER_SKIPPED panel=" + bVar.a + " state=" + i2 + " already_on held_on=" + bVar.j);
                    }
                }
                x.a a3 = this.j.a(bVar, a());
                if (a3 != null) {
                    Log.i(a, "RELEASE_GUARD panel=" + bVar.a + " floor=" + a3.b + " ms=700 carried=" + ((!a3.e || (fArr = a3.d) == null) ? "none" : String.valueOf(fArr[2])));
                    b();
                } else {
                    float[] fArr2 = bVar.k;
                    if (fArr2 != null && bVar.l) {
                        this.l.set(Boolean.TRUE);
                        try {
                            Object obj = this.T.get(a2);
                            if (bVar.n) {
                                this.O.invoke(obj, Float.valueOf(fArr2[0]), Float.valueOf(fArr2[1]), Float.valueOf(fArr2[2]), Float.valueOf(fArr2[3]), Boolean.valueOf(bVar.m));
                            } else {
                                this.N.invoke(obj, Float.valueOf(fArr2[0]), Float.valueOf(fArr2[1]), Float.valueOf(fArr2[2]), Float.valueOf(fArr2[3]));
                            }
                            this.l.remove();
                        } finally {
                        }
                    }
                }
                Log.i(a, "RELEASED panel=" + bVar.a + " reason=" + str + " held_ms=" + (a() - bVar.f));
            }
        }
    }

    private void a(String str, Parcel parcel) throws Exception {
        synchronized (this.P.get(this.p)) {
            Object a2 = a(str);
            int i2 = 0;
            if (a2 == null) {
                parcel.writeInt(0);
                return;
            }
            Object invoke = this.K.invoke(a2, null);
            x.b b2 = this.j.b(str);
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
    public /* synthetic */ void a(IBinder iBinder) {
        this.s.d(iBinder);
        Iterator<x.b> it = this.j.b(iBinder).iterator();
        while (it.hasNext()) {
            a(it.next(), "owner_died");
        }
        synchronized (this.n) {
            this.n.remove(iBinder);
        }
    }

    private void a(x.a aVar) {
        Object a2;
        try {
            if (aVar.e && aVar.d != null) {
                synchronized (this.P.get(this.p)) {
                    a2 = a(aVar.a);
                }
                if (a2 == null) {
                    return;
                }
                float[] fArr = aVar.d;
                this.l.set(Boolean.TRUE);
                try {
                    Object obj = this.T.get(a2);
                    if (aVar.f) {
                        this.O.invoke(obj, Float.valueOf(fArr[0]), Float.valueOf(fArr[1]), Float.valueOf(fArr[2]), Float.valueOf(fArr[3]), Boolean.valueOf(aVar.g));
                    } else {
                        this.N.invoke(obj, Float.valueOf(fArr[0]), Float.valueOf(fArr[1]), Float.valueOf(fArr[2]), Float.valueOf(fArr[3]));
                    }
                    this.l.remove();
                    Log.i(a, "GUARD_END panel=" + aVar.a + " replay=" + fArr[2]);
                    return;
                } catch (Throwable th) {
                    this.l.remove();
                    throw th;
                }
            }
            Log.i(a, "GUARD_END panel=" + aVar.a + " replay=none");
        } catch (Throwable th2) {
            this.t = th2;
            Log.e(a, "GUARD_END_FAILED panel=" + aVar.a, th2);
        }
    }
}
