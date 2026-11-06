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
import dev.duo.hookprobe.FoldEventJudge;
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

/* renamed from: dev.duo.hookprobe.s */
/* loaded from: classes.dex */
public final class FoldAnimPermission extends XposedModule {

    /* renamed from: a */
    private static final String f1715a = "MiDuoFoldLease";

    /* renamed from: b */
    private static final String f1716b = "dev.duo.foldanim1.CONTROL";

    /* renamed from: c */
    static final int f1717c = 13693511;

    /* renamed from: d */
    static final int f1718d = 254;

    /* renamed from: e */
    static final int f1719e = 0;

    /* renamed from: f */
    static final int f1720f = 1;

    /* renamed from: g */
    static final int f1721g = 2;

    /* renamed from: h */
    static final int f1722h = 3;

    /* renamed from: i */
    static final int f1723i = 4;

    /* renamed from: A */
    private Method f1724A;

    /* renamed from: B */
    private Method f1725B;

    /* renamed from: C */
    private Method f1726C;

    /* renamed from: D */
    private Method f1727D;

    /* renamed from: E */
    private Field f1728E;

    /* renamed from: F */
    private Field f1729F;

    /* renamed from: G */
    private Method f1730G;

    /* renamed from: H */
    private Method f1731H;

    /* renamed from: I */
    private Method f1732I;

    /* renamed from: J */
    private Method f1733J;

    /* renamed from: K */
    private Method f1734K;

    /* renamed from: L */
    private Method f1735L;

    /* renamed from: M */
    private Method f1736M;

    /* renamed from: N */
    private Method f1737N;

    /* renamed from: O */
    private Method f1738O;

    /* renamed from: P */
    private Field f1739P;

    /* renamed from: Q */
    private Field f1740Q;

    /* renamed from: R */
    private Field f1741R;

    /* renamed from: S */
    private Field f1742S;

    /* renamed from: T */
    private Field f1743T;

    /* renamed from: U */
    private Field f1744U;

    /* renamed from: V */
    private Field f1745V;

    /* renamed from: W */
    private Field f1746W;

    /* renamed from: X */
    private Field f1747X;

    /* renamed from: Y */
    private Field f1748Y;

    /* renamed from: Z */
    private Field f1749Z;

    /* renamed from: a0 */
    private Field f1750a0;

    /* renamed from: b0 */
    private Field f1751b0;

    /* renamed from: c0 */
    private Field f1752c0;

    /* renamed from: d0 */
    private Field f1753d0;

    /* renamed from: e0 */
    private Field f1754e0;

    /* renamed from: f0 */
    private Field f1755f0;

    /* renamed from: g0 */
    private Field f1756g0;

    /* renamed from: o */
    private volatile boolean f1764o;

    /* renamed from: p */
    private volatile Object f1765p;

    /* renamed from: q */
    private boolean f1766q;

    /* renamed from: r */
    private Handler f1767r;

    /* renamed from: s */
    private DisplayParcelCodec f1768s;

    /* renamed from: t */
    private volatile Throwable f1769t;

    /* renamed from: u */
    private Class<?> f1770u;

    /* renamed from: v */
    private Class<?> f1771v;

    /* renamed from: w */
    private Class<?> f1772w;

    /* renamed from: x */
    private Class<?> f1773x;

    /* renamed from: y */
    private Method f1774y;

    /* renamed from: z */
    private Method f1775z;

    /* renamed from: j */
    private final FoldEventJudge f1759j = new FoldEventJudge();

    /* renamed from: k */
    private final List<XposedInterface.HookHandle> f1760k = new ArrayList();

    /* renamed from: l */
    private final ThreadLocal<Boolean> f1761l = new ThreadLocal<>();

    /* renamed from: m */
    private final Map<IBinder, float[]> f1762m = new HashMap();

    /* renamed from: n */
    private final Map<IBinder, IBinder.DeathRecipient> f1763n = new HashMap();

    /* renamed from: h0 */
    private final Map<IBinder, String> f1757h0 = new HashMap();

    /* renamed from: i0 */
    private final Runnable f1758i0 = new Runnable() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            FoldAnimPermission.this.m1923c();
        }
    };

    /* renamed from: a */
    private static Method m1908a(Class<?> cls, String str, Class<?>... clsArr) throws Exception {
        Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ Object m1918b(XposedInterface.Chain chain) throws Throwable {
        boolean z;
        boolean z2 = false;
        try {
            IBinder iBinder = (IBinder) this.f1742S.get(chain.getThisObject());
            boolean z3 = true;
            float[] fArr = {((Float) chain.getArg(0)).floatValue(), ((Float) chain.getArg(1)).floatValue(), ((Float) chain.getArg(2)).floatValue(), ((Float) chain.getArg(3)).floatValue()};
            if (fArr[2] > 0.0f && iBinder != null) {
                synchronized (this.f1762m) {
                    this.f1762m.put(iBinder, (float[]) fArr.clone());
                }
            }
            if (!Boolean.TRUE.equals(this.f1761l.get()) && !this.f1759j.m2022a()) {
                boolean z4 = chain.getArgs().size() == 5;
                boolean z5 = z4 && ((Boolean) chain.getArg(4)).booleanValue();
                String m1922c = m1922c(iBinder);
                boolean z6 = (m1922c == null || this.f1759j.m2026b(m1922c) == null) ? false : true;
                if (z6) {
                    z3 = this.f1759j.m2025a(m1922c, fArr, z4, z5, m1903a());
                    z = z5;
                } else {
                    if (m1922c != null) {
                        z = z5;
                        if (this.f1759j.m2030b(m1922c, fArr, z4, z5, m1903a())) {
                        }
                    } else {
                        z = z5;
                    }
                    z3 = false;
                }
                if (z3) {
                    Log.i(f1715a, "HOLD_BACKLIGHT panel=" + m1922c + " requested=" + fArr[2] + " nits=" + fArr[3] + (z6 ? " leased" : " guard") + (z4 ? " dim=" + z : ""));
                }
                z2 = z3;
            }
        } catch (Throwable th) {
            this.f1769t = th;
            Log.e(f1715a, "backlight hook failed; passthrough", th);
        }
        if (z2) {
            return null;
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ Object m1921c(XposedInterface.Chain chain) throws Throwable {
        if (Boolean.TRUE.equals(this.f1761l.get()) || this.f1759j.m2029b()) {
            return chain.proceed();
        }
        int i = 0;
        try {
            String str = (String) this.f1732I.invoke(chain.getArg(1), null);
            boolean booleanValue = ((Boolean) chain.getArg(2)).booleanValue();
            Object invoke = this.f1735L.invoke(chain.getThisObject(), null);
            i = this.f1759j.m2015a(str, booleanValue, (invoke == null || str == null || !str.equals(this.f1746W.get(invoke))) ? false : true, m1903a());
        } catch (Throwable th) {
            Log.e(f1715a, "config hook failed; passthrough", th);
        }
        if (i == 1) {
            return null;
        }
        return chain.proceed();
    }

    /* renamed from: d */
    private void m1924d(IBinder iBinder) {
        synchronized (this.f1763n) {
            IBinder.DeathRecipient remove = this.f1763n.remove(iBinder);
            if (remove != null) {
                iBinder.unlinkToDeath(remove, 0);
            }
        }
    }

    public void onSystemServerStarting(XposedModuleInterface.SystemServerStartingParam systemServerStartingParam) {
        if (this.f1766q) {
            return;
        }
        this.f1766q = true;
        try {
            m1915a(systemServerStartingParam.getClassLoader());
        } catch (Throwable th) {
            this.f1764o = false;
            Iterator<XposedInterface.HookHandle> it = this.f1760k.iterator();
            while (it.hasNext()) {
                try {
                    it.next().unhook();
                } catch (Throwable th2) {
                    Log.e(f1715a, "Unhook failed", th2);
                }
            }
            this.f1760k.clear();
            Handler handler = this.f1767r;
            if (handler != null) {
                handler.getLooper().quitSafely();
            }
            Log.e(f1715a, "NOT_READY; hooks rolled back", th);
            log(6, f1715a, "NOT_READY; hooks rolled back", th);
        }
    }

    /* renamed from: a */
    private static Field m1907a(Class<?> cls, String str) throws Exception {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField;
    }

    /* renamed from: a */
    private static long m1903a() {
        return SystemClock.elapsedRealtime();
    }

    /* renamed from: a */
    private void m1915a(ClassLoader classLoader) throws Exception {
        this.f1770u = Class.forName("com.android.server.display.DisplayManagerService", false, classLoader);
        this.f1771v = Class.forName("com.android.server.display.LogicalDisplay", false, classLoader);
        this.f1772w = Class.forName("com.android.server.display.DisplayDevice", false, classLoader);
        Class<?> cls = Class.forName("com.android.server.display.DisplayAdapter", false, classLoader);
        Class.forName("com.android.server.display.LocalDisplayAdapter", false, classLoader);
        this.f1773x = Class.forName("com.android.server.display.LocalDisplayAdapter$LocalDisplayDevice", false, classLoader);
        Class<?> cls2 = Class.forName("com.android.server.display.LocalDisplayAdapter$LocalDisplayDevice$1", false, classLoader);
        Class<?> cls3 = Class.forName("com.android.server.display.LocalDisplayAdapter$SurfaceControlProxy", false, classLoader);
        Class<?> cls4 = Class.forName("com.android.server.display.LocalDisplayAdapter$BacklightAdapter", false, classLoader);
        Class<?> cls5 = Class.forName("com.android.server.display.DisplayDeviceRepository", false, classLoader);
        Class<?> cls6 = Class.forName("com.android.server.display.DisplayDeviceInfo", false, classLoader);
        final Class<?> cls7 = Class.forName("com.android.server.display.DisplayManagerService$BinderService", false, classLoader);
        Class cls8 = Integer.TYPE;
        this.f1725B = m1908a((Class<?>) SurfaceControl.Transaction.class, "setDisplayLayerStack", (Class<?>[]) new Class[]{IBinder.class, cls8});
        this.f1726C = m1908a((Class<?>) SurfaceControl.Transaction.class, "setDisplayProjection", (Class<?>[]) new Class[]{IBinder.class, cls8, Rect.class, Rect.class});
        this.f1727D = m1908a((Class<?>) SurfaceControl.class, "setDisplayPowerMode", (Class<?>[]) new Class[]{IBinder.class, cls8});
        this.f1730G = m1908a(this.f1770u, "configureDisplayLocked", (Class<?>[]) new Class[]{SurfaceControl.Transaction.class, this.f1772w});
        Class<?> cls9 = Class.forName("com.android.server.display.LogicalDisplayMapper", false, classLoader);
        this.f1728E = m1907a(this.f1770u, "mLogicalDisplayMapper");
        this.f1729F = m1907a(this.f1770u, "mHandlerExecutor");
        this.f1774y = m1908a(cls9, "getDisplayLocked", (Class<?>[]) new Class[]{this.f1772w});
        Class<?> cls10 = this.f1771v;
        Class<?> cls11 = this.f1772w;
        Class cls12 = Boolean.TYPE;
        this.f1775z = m1908a(cls10, "configureDisplayLocked", (Class<?>[]) new Class[]{SurfaceControl.Transaction.class, cls11, cls12, Executor.class});
        this.f1724A = m1908a(this.f1770u, "scheduleTraversalLocked", (Class<?>[]) new Class[]{cls12});
        this.f1739P = m1907a(this.f1770u, "mSyncRoot");
        this.f1740Q = m1907a(this.f1770u, "mDisplayDeviceRepo");
        this.f1731H = m1908a(cls5, "getByUniqueIdLocked", (Class<?>[]) new Class[]{String.class});
        this.f1741R = m1907a(cls7, "this$0");
        this.f1732I = m1908a(this.f1772w, "getUniqueId", (Class<?>[]) new Class[0]);
        this.f1733J = m1908a(this.f1772w, "getDisplayTokenLocked", (Class<?>[]) new Class[0]);
        this.f1734K = m1908a(this.f1772w, "getDisplayDeviceInfoLocked", (Class<?>[]) new Class[0]);
        this.f1745V = m1907a(cls6, "state");
        this.f1754e0 = m1907a(cls6, "width");
        this.f1755f0 = m1907a(cls6, "height");
        this.f1756g0 = m1907a(cls6, "rotation");
        this.f1735L = m1908a(this.f1771v, "getDisplayInfoLocked", (Class<?>[]) new Class[0]);
        this.f1746W = m1907a(Class.forName("android.view.DisplayInfo"), "uniqueId");
        this.f1736M = m1908a(cls, "getPowerModeForState", (Class<?>[]) new Class[]{cls8});
        this.f1742S = m1907a(cls4, "mDisplayToken");
        this.f1743T = m1907a(this.f1773x, "mBacklightAdapter");
        this.f1744U = m1907a(this.f1773x, "mState");
        Class cls13 = Float.TYPE;
        this.f1737N = m1908a(cls4, "setBacklight", (Class<?>[]) new Class[]{cls13, cls13, cls13, cls13});
        this.f1738O = m1908a(cls4, "setBacklight", (Class<?>[]) new Class[]{cls13, cls13, cls13, cls13, cls12});
        this.f1747X = m1907a(this.f1772w, "mCurrentLayerStack");
        this.f1748Y = m1907a(this.f1772w, "mCurrentOrientation");
        this.f1749Z = m1907a(this.f1772w, "mCurrentLayerStackRect");
        this.f1750a0 = m1907a(this.f1772w, "mCurrentDisplayRect");
        this.f1751b0 = m1907a(this.f1772w, "mCurrentFlags");
        this.f1752c0 = m1907a(this.f1772w, "mLastDisplayWidth");
        this.f1753d0 = m1907a(this.f1772w, "mLastDisplayHeight");
        Method[] methodArr = {m1908a(cls2, "setDisplayState", (Class<?>[]) new Class[]{cls8}), m1908a(cls2, "run", (Class<?>[]) new Class[0]), m1908a(cls2, "setDisplayBrightness", (Class<?>[]) new Class[]{cls13, cls13}), this.f1730G, m1908a(this.f1770u, "lambda$performTraversalLocked$22", (Class<?>[]) new Class[]{SparseArray.class, SurfaceControl.Transaction.class, this.f1771v}), m1908a(this.f1770u, "performTraversalLocked", (Class<?>[]) new Class[]{SurfaceControl.Transaction.class, SparseArray.class}), m1908a(cls7, "onTransact", (Class<?>[]) new Class[]{cls8, Parcel.class, Parcel.class, cls8})};
        boolean z = true;
        for (int i = 0; i < 7; i++) {
            Method method = methodArr[i];
            boolean deoptimize = deoptimize(method);
            z &= deoptimize;
            Log.i(f1715a, "CALLER_DEOPT method=" + method.getName() + " result=" + deoptimize);
        }
        if (z) {
            this.f1768s = new DisplayParcelCodec(classLoader);
            List<XposedInterface.HookHandle> list = this.f1760k;
            Class cls14 = Integer.TYPE;
            XposedInterface.HookBuilder hook = hook(m1908a(cls3, "setDisplayPowerMode", (Class<?>[]) new Class[]{IBinder.class, cls14}));
            XposedInterface.ExceptionMode exceptionMode = XposedInterface.ExceptionMode.PROTECTIVE;
            list.add(hook.setExceptionMode(exceptionMode).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda3
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1904a;
                    m1904a = FoldAnimPermission.this.m1904a(chain);
                    return m1904a;
                }
            }));
            XposedInterface.Hooker hooker = new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda4
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1918b;
                    m1918b = FoldAnimPermission.this.m1918b(chain);
                    return m1918b;
                }
            };
            this.f1760k.add(hook(this.f1737N).setExceptionMode(exceptionMode).intercept(hooker));
            this.f1760k.add(hook(this.f1738O).setExceptionMode(exceptionMode).intercept(hooker));
            this.f1760k.add(hook(m1908a(this.f1771v, "configureDisplayLocked", (Class<?>[]) new Class[]{SurfaceControl.Transaction.class, this.f1772w, Boolean.TYPE, Executor.class})).setExceptionMode(exceptionMode).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda5
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1921c;
                    m1921c = FoldAnimPermission.this.m1921c(chain);
                    return m1921c;
                }
            }));
            this.f1760k.add(hook(m1908a(Class.forName("android.hardware.display.IDisplayManager$Stub"), "onTransact", (Class<?>[]) new Class[]{cls14, Parcel.class, Parcel.class, cls14})).setExceptionMode(XposedInterface.ExceptionMode.PASSTHROUGH).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda6
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1905a;
                    m1905a = FoldAnimPermission.this.m1905a(cls7, chain);
                    return m1905a;
                }
            }));
            HandlerThread handlerThread = new HandlerThread(f1715a);
            handlerThread.start();
            Handler handler = new Handler(handlerThread.getLooper());
            this.f1767r = handler;
            this.f1768s.m1995a(this, this.f1760k, handler);
            this.f1764o = true;
            Log.i(f1715a, (this.f1764o ? "READY" : "NOT_READY_CALLER_DEOPT") + " version=" + f1718d + " hooks=" + this.f1760k.size() + " dormant_without_lease=true");
            return;
        }
        throw new IllegalStateException("租约调用链去优化失败");
    }

    /* renamed from: c */
    private String m1922c(IBinder iBinder) {
        String str;
        if (iBinder == null) {
            return null;
        }
        synchronized (this.f1757h0) {
            str = this.f1757h0.get(iBinder);
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m1923c() {
        this.f1768s.m1992a(m1903a());
        Iterator<FoldEventJudge.b> it = this.f1759j.m2027b(m1903a()).iterator();
        while (it.hasNext()) {
            m1913a(it.next(), "expired");
        }
        Iterator<FoldEventJudge.a> it2 = this.f1759j.m2032c(m1903a()).iterator();
        while (it2.hasNext()) {
            m1912a(it2.next());
        }
        if (!this.f1759j.m2022a() || this.f1768s.m1997a()) {
            this.f1767r.postDelayed(this.f1758i0, 50L);
        }
    }

    /* renamed from: b */
    private void m1920b(final IBinder iBinder) {
        synchronized (this.f1763n) {
            if (this.f1763n.containsKey(iBinder)) {
                return;
            }
            IBinder.DeathRecipient deathRecipient = new IBinder.DeathRecipient() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda0
                @Override // android.os.IBinder.DeathRecipient
                public final void binderDied() {
                    FoldAnimPermission.this.m1910a(iBinder);
                }
            };
            try {
                iBinder.linkToDeath(deathRecipient, 0);
                this.f1763n.put(iBinder, deathRecipient);
            } catch (Exception e) {
                Iterator<FoldEventJudge.b> it = this.f1759j.m2028b(iBinder).iterator();
                while (it.hasNext()) {
                    m1913a(it.next(), "link_failed");
                }
                throw new IllegalStateException("租约死亡监听失败", e);
            }
        }
    }

    /* renamed from: b */
    private void m1919b() {
        this.f1767r.removeCallbacks(this.f1758i0);
        this.f1767r.postDelayed(this.f1758i0, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m1904a(XposedInterface.Chain chain) throws Throwable {
        String str;
        if (!Boolean.TRUE.equals(this.f1761l.get()) && !this.f1759j.m2022a()) {
            boolean z = false;
            try {
                IBinder iBinder = (IBinder) chain.getArg(0);
                boolean z2 = true;
                int intValue = ((Integer) chain.getArg(1)).intValue();
                String m1922c = m1922c(iBinder);
                if (m1922c == null || !this.f1759j.m2024a(m1922c, intValue, m1903a())) {
                    z2 = false;
                }
                if (z2) {
                    StringBuilder append = new StringBuilder().append("HOLD_POWER panel=").append(m1922c).append(" requested_mode=").append(intValue);
                    if (intValue == 2) {
                        str = " (already lit by lease)";
                    } else {
                        str = "";
                    }
                    Log.i(f1715a, append.append(str).toString());
                }
                z = z2;
            } catch (Throwable th) {
                this.f1769t = th;
                Log.e(f1715a, "power hook failed; passthrough", th);
            }
            if (z) {
                return null;
            }
            return chain.proceed();
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m1905a(Class cls, XposedInterface.Chain chain) throws Throwable {
        if (((Integer) chain.getArg(0)).intValue() != f1717c) {
            return chain.proceed();
        }
        Object thisObject = chain.getThisObject();
        if (this.f1765p == null && cls.isInstance(thisObject)) {
            this.f1765p = this.f1741R.get(thisObject);
        }
        return Boolean.valueOf(m1917a((Parcel) chain.getArg(1), (Parcel) chain.getArg(2), ((Integer) chain.getArg(3)).intValue()));
    }

    /* renamed from: a */
    private Object m1906a(String str) throws Exception {
        Object obj = this.f1765p;
        if (obj != null) {
            return this.f1731H.invoke(this.f1740Q.get(obj), str);
        }
        throw new IllegalStateException("display service not captured");
    }

    /* renamed from: a */
    private boolean m1917a(Parcel parcel, Parcel parcel2, int i) {
        String str;
        try {
        } catch (Throwable th) {
            Log.w(f1715a, "CONTROL_REJECTED " + th);
            if (parcel2 != null) {
                parcel2.setDataPosition(0);
                parcel2.setDataSize(0);
                parcel2.writeException(new IllegalStateException("开合控制失败", th));
            }
        }
        if (parcel2 != null && (i & 1) == 0) {
            parcel.enforceInterface(f1716b);
            int readInt = parcel.readInt();
            int callingPid = Binder.getCallingPid();
            int callingUid = Binder.getCallingUid();
            if (readInt != 8 && readInt != 9 && readInt != 10 && readInt != 11 && readInt != 14 && readInt != 15 && readInt != 18) {
                if (callingUid == 0) {
                    long clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        m1909a(readInt, parcel, parcel2, callingPid);
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
                    this.f1768s.m2002c(parcel.readStrongBinder());
                } else if (readInt == 18) {
                    this.f1768s.m1993a(parcel.readStrongBinder(), parcel.readLong(), parcel.readInt(), parcel.readLong());
                } else if (readInt == 11) {
                    this.f1768s.m1996a(parcel.createFloatArray());
                } else {
                    this.f1768s.m1990a(readInt, parcel.readInt(), parcel.readLong());
                }
                parcel2.writeNoException();
                return true;
            }
            throw new SecurityException("就绪信号 UID 不匹配");
        }
        throw new SecurityException("root synchronous caller required");
    }

    /* renamed from: a */
    private void m1909a(int i, Parcel parcel, Parcel parcel2, int i2) throws Exception {
        int i3;
        int i4;
        int i5;
        if (i == 0) {
            parcel2.writeNoException();
            parcel2.writeInt((this.f1764o && this.f1769t == null && this.f1768s.m2001b()) ? 1 : 0);
            parcel2.writeInt(f1718d);
            parcel2.writeInt(this.f1759j.m2031c());
            return;
        }
        if ((!this.f1764o || this.f1769t != null) && i != 3 && i != 6) {
            throw new IllegalStateException("租约不可用", this.f1769t);
        }
        if (i == 12) {
            this.f1768s.m1994a(parcel2);
            return;
        }
        if (i == 16) {
            this.f1768s.m2000b(parcel2);
            return;
        }
        if (i >= 5) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null && readStrongBinder.isBinderAlive()) {
                m1920b(readStrongBinder);
                this.f1768s.m1991a(i, readStrongBinder, parcel, parcel2);
                if (!this.f1768s.m1998a(readStrongBinder) && !this.f1759j.m2023a(readStrongBinder)) {
                    m1924d(readStrongBinder);
                }
                m1919b();
                return;
            }
            throw new IllegalArgumentException("owner 不可用");
        }
        if (i == 1) {
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            String readString = parcel.readString();
            int readInt = parcel.readInt();
            int readInt2 = parcel.readInt();
            boolean z = parcel.readInt() != 0;
            String readString2 = parcel.readString();
            long readLong = parcel.readLong();
            if (parcel.dataAvail() >= 12) {
                i5 = parcel.readInt();
                i3 = parcel.readInt();
                i4 = parcel.readInt();
            } else {
                i3 = 0;
                i4 = 0;
                i5 = -1;
            }
            parcel2.writeNoException();
            parcel2.writeInt(m1902a(readStrongBinder2, i2, readString, readInt, readInt2, z, readString2, readLong, i5, i3, i4));
            return;
        }
        if (i == 2) {
            IBinder readStrongBinder3 = parcel.readStrongBinder();
            long readLong2 = parcel.readLong();
            this.f1768s.m1999b(readStrongBinder3);
            parcel2.writeNoException();
            parcel2.writeInt(this.f1759j.m2014a(readStrongBinder3, i2, m1903a(), readLong2));
            return;
        }
        if (i != 3) {
            if (i == 4) {
                String readString3 = parcel.readString();
                parcel2.writeNoException();
                m1916a(readString3, parcel2);
                return;
            }
            throw new IllegalArgumentException("unknown command " + i);
        }
        IBinder readStrongBinder4 = parcel.readStrongBinder();
        List<FoldEventJudge.b> m2019a = this.f1759j.m2019a(readStrongBinder4, i2, parcel.readString());
        Iterator<FoldEventJudge.b> it = m2019a.iterator();
        while (it.hasNext()) {
            m1913a(it.next(), "client");
        }
        if (!this.f1759j.m2023a(readStrongBinder4) && !this.f1768s.m1998a(readStrongBinder4)) {
            m1924d(readStrongBinder4);
        }
        if (this.f1769t == null) {
            parcel2.writeNoException();
            parcel2.writeInt(m2019a.size());
            return;
        }
        throw new IllegalStateException("面板归还失败", this.f1769t);
    }

    /* renamed from: a */
    private int m1902a(final IBinder iBinder, int i, final String str, int i2, int i3, final boolean z, final String str2, long j, int i4, int i5, int i6) throws Exception {
        Object obj;
        int i7;
        int i8;
        int i9;
        Object obj2;
        IBinder iBinder2;
        if (iBinder == null || !iBinder.isBinderAlive()) {
            return 0;
        }
        final Object obj3 = this.f1739P.get(this.f1765p);
        synchronized (obj3) {
            try {
                try {
                    Object m1906a = m1906a(str);
                    if (m1906a == null) {
                        obj = obj3;
                    } else {
                        if (this.f1773x.isInstance(m1906a)) {
                            IBinder iBinder3 = (IBinder) this.f1733J.invoke(m1906a, null);
                            synchronized (this.f1757h0) {
                                try {
                                    this.f1757h0.put(iBinder3, str);
                                } catch (Throwable th) {
                                    th = th;
                                    while (true) {
                                        try {
                                            throw th;
                                        } catch (Throwable th2) {
                                            th = th2;
                                        }
                                    }
                                }
                            }
                            boolean z2 = this.f1759j.m2026b(str) == null;
                            if (z2 && this.f1759j.m2017a(str) != null) {
                                Log.i(f1715a, "GUARD_DROPPED panel=" + str + " reason=new_lease");
                            }
                            final FoldEventJudge.b m2018a = this.f1759j.m2018a(str, iBinder, i, i2, i3, m1903a(), j);
                            if (m2018a == null) {
                                return 0;
                            }
                            if (!z2 || i2 != 2) {
                                i7 = i4;
                                i8 = i5;
                                i9 = i6;
                                obj2 = m1906a;
                                iBinder2 = iBinder3;
                            } else {
                                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                                this.f1725B.invoke(transaction, iBinder3, Integer.valueOf(i3));
                                if (i4 < 0 || i5 <= 0 || i6 <= 0) {
                                    i7 = i4;
                                    i8 = i5;
                                    i9 = i6;
                                    obj2 = m1906a;
                                    iBinder2 = iBinder3;
                                } else {
                                    i7 = i4;
                                    i8 = i5;
                                    i9 = i6;
                                    obj2 = m1906a;
                                    iBinder2 = iBinder3;
                                    m1911a(transaction, obj2, iBinder2, i7, i8, i9);
                                }
                                transaction.apply();
                                transaction.close();
                            }
                            if (z2) {
                                Log.i(f1715a, "LEASE panel=" + str + " mode=" + i2 + " stack=" + i3 + " pid=" + i + " power_on=" + z + " ttl=" + FoldEventJudge.m2012a(j) + " rotation=" + i7 + " stack_size=" + i8 + "x" + i9);
                            }
                            m1920b(iBinder);
                            if (z || str2 != null) {
                                final Object obj4 = obj2;
                                final IBinder iBinder4 = iBinder2;
                                this.f1767r.post(new Runnable() { // from class: dev.duo.hookprobe.s$$ExternalSyntheticLambda2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        FoldAnimPermission.this.m1914a(m2018a, str, z, obj3, obj4, iBinder4, str2, iBinder);
                                    }
                                });
                            }
                            m1919b();
                            return 1;
                        }
                        obj = obj3;
                    }
                    return 0;
                } catch (Throwable th3) {
                    th = th3;
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1914a(FoldEventJudge.b bVar, String str, boolean z, Object obj, Object obj2, IBinder iBinder, String str2, IBinder iBinder2) {
        IBinder iBinder3;
        float[] fArr;
        int i;
        try {
            synchronized (bVar) {
                if (this.f1759j.m2026b(str) != bVar) {
                    return;
                }
                if (z) {
                    synchronized (obj) {
                        i = this.f1744U.getInt(obj2);
                    }
                    if (i == 2) {
                        Log.i(f1715a, "LEASE_POWER_SKIPPED panel=" + str + " already_on_by_platform");
                    } else {
                        this.f1727D.invoke(null, iBinder, 2);
                        this.f1759j.m2020a(bVar);
                        Log.i(f1715a, "LEASE_POWER_ON panel=" + str);
                    }
                }
                if (str2 != null) {
                    synchronized (obj) {
                        Object m1906a = m1906a(str2);
                        if (m1906a == null) {
                            iBinder3 = null;
                        } else {
                            iBinder3 = (IBinder) this.f1733J.invoke(m1906a, null);
                        }
                    }
                    synchronized (this.f1762m) {
                        fArr = iBinder3 != null ? this.f1762m.get(iBinder3) : null;
                    }
                    if (fArr != null) {
                        this.f1761l.set(Boolean.TRUE);
                        try {
                            this.f1737N.invoke(this.f1743T.get(obj2), Float.valueOf(fArr[0]), Float.valueOf(fArr[1]), Float.valueOf(fArr[2]), Float.valueOf(fArr[3]));
                            this.f1761l.remove();
                            this.f1759j.m2021a(bVar, fArr[2]);
                            Log.i(f1715a, "LEASE_BACKLIGHT panel=" + str + " from=" + str2 + " value=" + fArr[2] + " floor=on");
                        } catch (Throwable th) {
                            this.f1761l.remove();
                            throw th;
                        }
                    } else {
                        throw new IllegalStateException("当前源面板亮度尚未采集");
                    }
                }
            }
        } catch (Throwable th2) {
            this.f1769t = th2;
            Iterator<FoldEventJudge.b> it = this.f1759j.m2028b(iBinder2).iterator();
            while (it.hasNext()) {
                m1913a(it.next(), "apply_failed");
            }
            Log.e(f1715a, "LEASE_APPLY_FAILED panel=" + str, th2);
        }
    }

    /* renamed from: a */
    private void m1911a(SurfaceControl.Transaction transaction, Object obj, IBinder iBinder, int i, int i2, int i3) throws Exception {
        int i4;
        int i5;
        Object invoke = this.f1734K.invoke(obj, null);
        int i6 = (i + this.f1756g0.getInt(invoke)) % 4;
        boolean z = true;
        if (i6 != 1 && i6 != 3) {
            z = false;
        }
        int i7 = (z ? this.f1755f0 : this.f1754e0).getInt(invoke);
        int i8 = (z ? this.f1754e0 : this.f1755f0).getInt(invoke);
        int i9 = i7 * i3;
        int i10 = i8 * i2;
        if (i9 < i10) {
            i5 = i9 / i2;
            i4 = i7;
        } else {
            i4 = i10 / i3;
            i5 = i8;
        }
        int i11 = (i7 - i4) / 2;
        int i12 = (i8 - i5) / 2;
        Rect rect = new Rect(i11, i12, i4 + i11, i5 + i12);
        this.f1726C.invoke(transaction, iBinder, Integer.valueOf(i6), new Rect(0, 0, i2, i3), rect);
        this.f1748Y.setInt(obj, -1);
        this.f1749Z.set(obj, null);
        this.f1750a0.set(obj, null);
        Log.i(f1715a, "LEASE_PROJECTION orientation=" + i6 + " stack=" + i2 + "x" + i3 + " display=" + rect.toShortString());
    }

    /* renamed from: a */
    private void m1913a(FoldEventJudge.b bVar, String str) {
        float[] fArr;
        synchronized (bVar) {
            try {
            } catch (Throwable th) {
                this.f1769t = th;
                Log.e(f1715a, "RELEASE_FAILED panel=" + bVar.f1873a + " reason=" + str, th);
            }
            synchronized (this.f1739P.get(this.f1765p)) {
                Object m1906a = m1906a(bVar.f1873a);
                if (m1906a == null) {
                    Log.w(f1715a, "RELEASE_NO_DEVICE panel=" + bVar.f1873a);
                    return;
                }
                IBinder iBinder = (IBinder) this.f1733J.invoke(m1906a, null);
                this.f1747X.setInt(m1906a, -2147483641);
                this.f1748Y.setInt(m1906a, -1);
                this.f1749Z.set(m1906a, null);
                this.f1750a0.set(m1906a, null);
                this.f1751b0.setInt(m1906a, -1);
                this.f1752c0.setInt(m1906a, -1);
                this.f1753d0.setInt(m1906a, -1);
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                Object invoke = this.f1774y.invoke(this.f1728E.get(this.f1765p), m1906a);
                if (invoke == null) {
                    this.f1725B.invoke(transaction, iBinder, -1);
                } else {
                    boolean z = this.f1745V.getInt(this.f1734K.invoke(m1906a, null)) == 1;
                    this.f1761l.set(Boolean.TRUE);
                    try {
                        this.f1775z.invoke(invoke, transaction, m1906a, Boolean.valueOf(z), this.f1729F.get(this.f1765p));
                    } finally {
                    }
                }
                transaction.apply();
                transaction.close();
                this.f1724A.invoke(this.f1765p, Boolean.FALSE);
                int i = this.f1744U.getInt(m1906a);
                if (bVar.f1880h) {
                    Integer num = (Integer) this.f1736M.invoke(null, Integer.valueOf(i));
                    int intValue = num.intValue();
                    if (FoldEventJudge.m2013a(bVar, intValue)) {
                        this.f1727D.invoke(null, iBinder, num);
                        Log.i(f1715a, "RELEASE_POWER panel=" + bVar.f1873a + " state=" + i + " mode=" + intValue);
                    } else {
                        Log.i(f1715a, "RELEASE_POWER_SKIPPED panel=" + bVar.f1873a + " state=" + i + " already_on held_on=" + bVar.f1882j);
                    }
                }
                FoldEventJudge.a m2016a = this.f1759j.m2016a(bVar, m1903a());
                if (m2016a != null) {
                    Log.i(f1715a, "RELEASE_GUARD panel=" + bVar.f1873a + " floor=" + m2016a.f1867b + " ms=700 carried=" + ((!m2016a.f1870e || (fArr = m2016a.f1869d) == null) ? "none" : String.valueOf(fArr[2])));
                    m1919b();
                } else {
                    float[] fArr2 = bVar.f1883k;
                    if (fArr2 != null && bVar.f1884l) {
                        this.f1761l.set(Boolean.TRUE);
                        try {
                            Object obj = this.f1743T.get(m1906a);
                            if (bVar.f1886n) {
                                this.f1738O.invoke(obj, Float.valueOf(fArr2[0]), Float.valueOf(fArr2[1]), Float.valueOf(fArr2[2]), Float.valueOf(fArr2[3]), Boolean.valueOf(bVar.f1885m));
                            } else {
                                this.f1737N.invoke(obj, Float.valueOf(fArr2[0]), Float.valueOf(fArr2[1]), Float.valueOf(fArr2[2]), Float.valueOf(fArr2[3]));
                            }
                            this.f1761l.remove();
                        } finally {
                        }
                    }
                }
                Log.i(f1715a, "RELEASED panel=" + bVar.f1873a + " reason=" + str + " held_ms=" + (m1903a() - bVar.f1878f));
            }
        }
    }

    /* renamed from: a */
    private void m1916a(String str, Parcel parcel) throws Exception {
        synchronized (this.f1739P.get(this.f1765p)) {
            Object m1906a = m1906a(str);
            int i = 0;
            if (m1906a == null) {
                parcel.writeInt(0);
                return;
            }
            Object invoke = this.f1734K.invoke(m1906a, null);
            FoldEventJudge.b m2026b = this.f1759j.m2026b(str);
            parcel.writeInt(1);
            parcel.writeInt(this.f1745V.getInt(invoke));
            parcel.writeInt(this.f1773x.isInstance(m1906a) ? this.f1744U.getInt(m1906a) : -1);
            parcel.writeInt(this.f1747X.getInt(m1906a));
            parcel.writeInt(this.f1748Y.getInt(m1906a));
            parcel.writeInt(m2026b == null ? 0 : m2026b.f1876d);
            if (m2026b != null) {
                i = m2026b.f1877e;
            }
            parcel.writeInt(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1910a(IBinder iBinder) {
        this.f1768s.m2003d(iBinder);
        Iterator<FoldEventJudge.b> it = this.f1759j.m2028b(iBinder).iterator();
        while (it.hasNext()) {
            m1913a(it.next(), "owner_died");
        }
        synchronized (this.f1763n) {
            this.f1763n.remove(iBinder);
        }
    }

    /* renamed from: a */
    private void m1912a(FoldEventJudge.a aVar) {
        Object m1906a;
        try {
            if (aVar.f1870e && aVar.f1869d != null) {
                synchronized (this.f1739P.get(this.f1765p)) {
                    m1906a = m1906a(aVar.f1866a);
                }
                if (m1906a == null) {
                    return;
                }
                float[] fArr = aVar.f1869d;
                this.f1761l.set(Boolean.TRUE);
                try {
                    Object obj = this.f1743T.get(m1906a);
                    if (aVar.f1871f) {
                        this.f1738O.invoke(obj, Float.valueOf(fArr[0]), Float.valueOf(fArr[1]), Float.valueOf(fArr[2]), Float.valueOf(fArr[3]), Boolean.valueOf(aVar.f1872g));
                    } else {
                        this.f1737N.invoke(obj, Float.valueOf(fArr[0]), Float.valueOf(fArr[1]), Float.valueOf(fArr[2]), Float.valueOf(fArr[3]));
                    }
                    this.f1761l.remove();
                    Log.i(f1715a, "GUARD_END panel=" + aVar.f1866a + " replay=" + fArr[2]);
                    return;
                } catch (Throwable th) {
                    this.f1761l.remove();
                    throw th;
                }
            }
            Log.i(f1715a, "GUARD_END panel=" + aVar.f1866a + " replay=none");
        } catch (Throwable th2) {
            this.f1769t = th2;
            Log.e(f1715a, "GUARD_END_FAILED panel=" + aVar.f1866a, th2);
        }
    }
}
