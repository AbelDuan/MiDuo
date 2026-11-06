package dev.duo.hookprobe;

import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceControl;
import android.view.WindowManager;
import dev.duo.fold.g$b$$ExternalSyntheticLambda1;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Predicate;

/* renamed from: dev.duo.hookprobe.u */
/* loaded from: classes.dex */
final class C0119u {

    /* renamed from: a */
    static final int f1805a = 13640819;

    /* renamed from: b */
    static final int f1806b = 13640820;

    /* renamed from: c */
    static final int f1807c = 13640821;

    /* renamed from: A */
    private int f1808A;

    /* renamed from: B */
    private int f1809B;

    /* renamed from: D */
    private boolean f1811D;

    /* renamed from: E */
    private boolean f1812E;

    /* renamed from: F */
    private boolean f1813F;

    /* renamed from: G */
    private boolean f1814G;

    /* renamed from: H */
    private boolean f1815H;

    /* renamed from: I */
    private boolean f1816I;

    /* renamed from: K */
    private boolean f1818K;

    /* renamed from: M */
    private int f1820M;

    /* renamed from: N */
    private boolean f1821N;

    /* renamed from: O */
    private volatile Throwable f1822O;

    /* renamed from: P */
    private float[] f1823P;

    /* renamed from: d */
    private final Method f1824d;

    /* renamed from: e */
    private final Method f1825e;

    /* renamed from: f */
    private final Method f1826f;

    /* renamed from: g */
    private final Method f1827g;

    /* renamed from: h */
    private final Method f1828h;

    /* renamed from: i */
    private final Method f1829i;

    /* renamed from: j */
    private final Method f1830j;

    /* renamed from: k */
    private final Method f1831k;

    /* renamed from: l */
    private final Field f1832l;

    /* renamed from: m */
    private final Field f1833m;

    /* renamed from: n */
    private final Field f1834n;

    /* renamed from: o */
    private final Field f1835o;

    /* renamed from: p */
    private final Field f1836p;

    /* renamed from: q */
    private final Field f1837q;

    /* renamed from: r */
    private final Field f1838r;

    /* renamed from: s */
    private final Field f1839s;

    /* renamed from: w */
    private volatile IBinder f1843w;

    /* renamed from: x */
    private IBinder f1844x;

    /* renamed from: y */
    private long f1845y;

    /* renamed from: z */
    private String f1846z;

    /* renamed from: t */
    private final Map<IBinder, Map<Integer, IBinder>> f1840t = new HashMap();

    /* renamed from: u */
    private final Map<IBinder, Long> f1841u = new HashMap();

    /* renamed from: v */
    private final Map<IBinder, Map<Integer, ArrayList<SurfaceControl>>> f1842v = new HashMap();

    /* renamed from: C */
    private int f1810C = -1;

    /* renamed from: J */
    private String f1817J = "尚未请求分层";

    /* renamed from: L */
    private int f1819L = -1;

    /* renamed from: dev.duo.hookprobe.u$a */
    private static final class a extends Exception {
        a(String str) {
            super(str);
        }
    }

    C0119u(ClassLoader classLoader) throws Exception {
        Class<?> cls = Class.forName("com.android.server.display.DisplayControl", false, classLoader);
        this.f1824d = m1980a(cls, "createVirtualDisplay", (Class<?>[]) new Class[]{String.class, Boolean.TYPE});
        this.f1825e = m1980a(cls, "destroyVirtualDisplay", (Class<?>[]) new Class[]{IBinder.class});
        this.f1826f = m1980a((Class<?>) SurfaceControl.Transaction.class, "setDisplaySurface", (Class<?>[]) new Class[]{IBinder.class, Surface.class});
        Class cls2 = Integer.TYPE;
        this.f1827g = m1980a((Class<?>) SurfaceControl.Transaction.class, "setDisplayLayerStack", (Class<?>[]) new Class[]{IBinder.class, cls2});
        this.f1828h = m1980a((Class<?>) SurfaceControl.Transaction.class, "setDisplayProjection", (Class<?>[]) new Class[]{IBinder.class, cls2, Rect.class, Rect.class});
        Class<?> cls3 = Class.forName("com.android.server.wm.WindowState", false, classLoader);
        Class<?> cls4 = Class.forName("com.android.server.wm.WindowContainer", false, classLoader);
        Class<?> cls5 = Class.forName("com.android.server.wm.DisplayContent", false, classLoader);
        this.f1829i = m1980a(cls3, "finishDrawing", (Class<?>[]) new Class[]{SurfaceControl.Transaction.class, cls2});
        this.f1832l = m1979a(cls4, "mDisplayContent");
        this.f1830j = m1980a(cls5, "getDisplayInfo", (Class<?>[]) new Class[0]);
        this.f1833m = m1979a(cls3, "mAttrs");
        this.f1834n = m1979a(cls4, "mWmService");
        this.f1835o = m1979a(Class.forName("com.android.server.wm.WindowManagerService", false, classLoader), "mAlwaysSeqId");
        this.f1836p = m1979a(cls4, "mSyncState");
        this.f1837q = m1979a(cls3, "mBufferSeqId");
        this.f1838r = m1979a(cls3, "mPrepareSyncSeqId");
        this.f1831k = m1980a(cls3, "getTask", (Class<?>[]) new Class[0]);
        this.f1839s = m1979a(Class.forName("com.android.server.wm.Task", false, classLoader), "mTaskId");
    }

    /* renamed from: d */
    private boolean m1989d() {
        IBinder iBinder = this.f1843w;
        if (iBinder == null || !iBinder.isBinderAlive()) {
            return false;
        }
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("dev.duo.foldanim1.LAYERS");
            if (!iBinder.transact(3, obtain, obtain2, 0)) {
                return false;
            }
            obtain2.readException();
            return obtain2.readInt() == 1;
        } catch (Exception e) {
            Log.e("MiDuoFold", "观察状态查询失败", e);
            return false;
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    /* renamed from: a */
    synchronized void m1996a(float[] fArr) {
        if (fArr != null) {
            if (fArr.length == 6) {
                for (float f : fArr) {
                    if (!Float.isFinite(f)) {
                        throw new IllegalArgumentException("侧栏坐标无效");
                    }
                }
                this.f1823P = fArr;
            }
        }
        throw new IllegalArgumentException("侧栏坐标格式错误");
    }

    /* renamed from: b */
    synchronized void m2000b(Parcel parcel) {
        boolean z = this.f1822O == null && m1989d() && ((this.f1820M & 32) == 0 || this.f1821N);
        parcel.writeNoException();
        parcel.writeInt(z ? this.f1820M : 0);
    }

    /* renamed from: c */
    synchronized void m2002c(IBinder iBinder) {
        if (iBinder != null) {
            if (!iBinder.isBinderAlive()) {
                throw new IllegalArgumentException("侧栏接口不可用");
            }
        }
        this.f1843w = iBinder;
        this.f1820M = 0;
        this.f1821N = false;
        this.f1812E = false;
        m1988c();
    }

    /* renamed from: c */
    private void m1988c() {
        if (this.f1844x == null) {
            return;
        }
        boolean z = this.f1822O == null && (this.f1810C < 0 ? !(this.f1843w == null || !this.f1843w.isBinderAlive() || ((this.f1815H && !this.f1811D) || !this.f1812E || (this.f1813F && !this.f1814G))) : this.f1811D);
        if (z == this.f1816I) {
            return;
        }
        this.f1816I = z;
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("dev.duo.foldanim1.FRAME");
            obtain.writeLong(this.f1845y);
            obtain.writeLong(SystemClock.elapsedRealtime());
            if (this.f1844x.transact(z ? 1 : 2, obtain, null, 1)) {
            } else {
                throw new IllegalStateException("目标内容通知未处理");
            }
        } catch (Exception e) {
            if (this.f1844x.isBinderAlive()) {
                this.f1822O = e;
                Log.e("MiDuoFold", "目标内容通知失败", e);
            } else {
                Log.w("MiDuoFold", "目标内容通知时引擎已退出", e);
            }
        } finally {
            obtain.recycle();
        }
    }

    /* renamed from: b */
    boolean m2001b() {
        return this.f1822O == null;
    }

    /* renamed from: a */
    synchronized void m1994a(Parcel parcel) {
        parcel.writeNoException();
        parcel.writeFloatArray(this.f1822O == null ? this.f1823P : null);
    }

    /* renamed from: a */
    private static Field m1979a(Class<?> cls, String str) throws Exception {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField;
    }

    /* renamed from: b */
    private void m1986b(int i, IBinder iBinder, Parcel parcel, Parcel parcel2) throws Exception {
        Exception exc;
        String sb;
        if (this.f1822O != null && i != 6 && i != 17) {
            throw new IllegalStateException("实时源失败", this.f1822O);
        }
        if (i == 5) {
            int readInt = parcel.readInt();
            int readInt2 = parcel.readInt();
            int readInt3 = parcel.readInt();
            int readInt4 = parcel.readInt();
            boolean z = parcel.readInt() != 0;
            Surface surface = (Surface) Surface.CREATOR.createFromParcel(parcel);
            if (readInt >= 0 && readInt <= 2 && readInt2 > 0 && readInt3 > 0 && readInt2 <= 4096 && readInt3 <= 4096) {
                if (readInt4 == (readInt == 0 ? f1806b : readInt == 1 ? f1805a : f1807c)) {
                    try {
                        if (surface.isValid()) {
                            Map<Integer, IBinder> map = this.f1840t.get(iBinder);
                            if (map == null) {
                                map = new HashMap<>();
                                this.f1840t.put(iBinder, map);
                            }
                            if (!map.containsKey(Integer.valueOf(readInt))) {
                                IBinder iBinder2 = (IBinder) this.f1824d.invoke(null, "MiDuoFold-" + readInt, Boolean.valueOf(z));
                                if (iBinder2 != null) {
                                    map.put(Integer.valueOf(readInt), iBinder2);
                                    SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                                    try {
                                        this.f1826f.invoke(transaction, iBinder2, surface);
                                        this.f1827g.invoke(transaction, iBinder2, Integer.valueOf(readInt4));
                                        this.f1828h.invoke(transaction, iBinder2, 0, new Rect(0, 0, readInt2, readInt3), new Rect(0, 0, readInt2, readInt3));
                                        transaction.apply();
                                        if (readInt == 2) {
                                            this.f1818K = true;
                                        }
                                        transaction.close();
                                    } finally {
                                    }
                                } else {
                                    throw new IllegalStateException("实时显示创建失败");
                                }
                            } else {
                                throw new IllegalStateException("输入槽已使用");
                            }
                        }
                    } finally {
                        surface.release();
                    }
                }
            }
            throw new IllegalArgumentException("实时源参数无效");
        }
        if (i == 6) {
            int readInt5 = parcel.readInt();
            Map<Integer, IBinder> map2 = this.f1840t.get(iBinder);
            if (map2 == null) {
                exc = null;
            } else {
                ArrayList arrayList = new ArrayList(map2.keySet());
                int size = arrayList.size();
                exc = null;
                int i2 = 0;
                while (i2 < size) {
                    int i3 = i2 + 1;
                    Integer num = (Integer) arrayList.get(i2);
                    if (readInt5 == -1 || readInt5 == num.intValue()) {
                        try {
                            this.f1825e.invoke(null, map2.get(num));
                            map2.remove(num);
                        } catch (Exception e) {
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
                    this.f1840t.remove(iBinder);
                }
            }
            try {
                m1981a(iBinder, readInt5);
            } catch (Exception e2) {
                if (exc == null) {
                    exc = e2;
                } else {
                    exc.addSuppressed(e2);
                }
            }
            if (readInt5 == -1 && this.f1844x == iBinder) {
                StringBuilder append = new StringBuilder().append("READY_MISSING generation=").append(this.f1845y).append(" window=").append(this.f1811D).append(" content=").append(this.f1812E).append(" minus=").append(this.f1813F).append("/").append(this.f1814G).append(" permit=").append(this.f1816I).append(" geometry=");
                if (this.f1823P == null) {
                    sb = "坐标未到";
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    float[] fArr = this.f1823P;
                    sb = sb2.append((fArr[0] == ((float) this.f1808A) && fArr[1] == ((float) this.f1809B)) ? "匹配:" : "过渡:").append(this.f1823P[0]).append("x").append(this.f1823P[1]).toString();
                }
                Log.i("MiDuoFoldLease", append.append(sb).append(" layers=").append(this.f1817J).append(" input=").append(this.f1818K ? "本代曾建输入，buffer 由引擎核对" : "未建目标输入").append(" last=").append(this.f1819L < 0 ? "none" : "0x" + Integer.toHexString(this.f1819L)).toString());
                this.f1844x = null;
            }
            if (exc != null) {
                this.f1822O = exc;
                this.f1841u.remove(iBinder);
                throw exc;
            }
        } else if (i == 7) {
            long readLong = parcel.readLong();
            String readString = parcel.readString();
            int readInt6 = parcel.readInt();
            int readInt7 = parcel.readInt();
            boolean z2 = parcel.readInt() != 0;
            int readInt8 = parcel.readInt();
            if (z2 && readInt8 >= 0) {
                throw new IllegalArgumentException("锁屏不能按应用放行");
            }
            IBinder iBinder3 = this.f1844x;
            if (iBinder3 != null && iBinder3 != iBinder) {
                throw new IllegalStateException("已有开合会话");
            }
            if (!"local:4639175402683733248".equals(readString) && !"local:4639175068132267009".equals(readString)) {
                throw new IllegalArgumentException("目标面板不匹配");
            }
            this.f1844x = iBinder;
            this.f1845y = readLong;
            this.f1846z = readString;
            this.f1808A = readInt6;
            this.f1809B = readInt7;
            this.f1815H = z2;
            this.f1810C = readInt8;
            this.f1818K = false;
            this.f1816I = false;
            this.f1813F = false;
            this.f1812E = false;
            this.f1811D = false;
            this.f1814G = this.f1821N;
            this.f1819L = -1;
            this.f1817J = "尚未请求分层";
        } else if (i == 17) {
            long readLong2 = parcel.readLong();
            if (this.f1844x == iBinder && this.f1845y == readLong2) {
                this.f1844x = null;
            }
        } else {
            throw new IllegalArgumentException("未知实时源命令");
        }
        if ((i == 6 || i == 17) && !m1998a(iBinder)) {
            this.f1841u.remove(iBinder);
        } else {
            this.f1841u.put(iBinder, Long.valueOf(SystemClock.elapsedRealtime() + 1500));
        }
        parcel2.writeNoException();
        parcel2.writeInt(1);
    }

    /* renamed from: a */
    private static Method m1980a(Class<?> cls, String str, Class<?>... clsArr) throws Exception {
        Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    /* renamed from: a */
    private Bundle m1977a(int i, int i2, ArrayList<SurfaceControl> arrayList) throws Exception {
        final C0119u c0119u = this;
        ArrayList<SurfaceControl> arrayList2 = arrayList;
        IBinder iBinder = c0119u.f1843w;
        if (iBinder != null && iBinder.isBinderAlive()) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("dev.duo.foldanim1.LAYERS");
                if (iBinder.transact(1, obtain, obtain2, 0)) {
                    obtain2.readException();
                    Bundle readBundle = obtain2.readBundle(SurfaceControl.class.getClassLoader());
                    obtain.recycle();
                    obtain2.recycle();
                    if (!readBundle.containsKey("unavailable")) {
                        ArrayList parcelableArrayList = readBundle.getParcelableArrayList("layers");
                        int size = parcelableArrayList.size();
                        int i3 = 0;
                        while (i3 < size) {
                            Object obj = parcelableArrayList.get(i3);
                            i3++;
                            arrayList2.add((SurfaceControl) ((Bundle) obj).getParcelable("mirror"));
                        }
                        Bundle bundle = new Bundle();
                        bundle.putInt("protocol", 1);
                        bundle.putBundle(C0054J.f920c, readBundle);
                        Object invoke = Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "window");
                        ClassLoader classLoader = invoke.getClass().getClassLoader();
                        Class<?> cls = Class.forName("com.android.server.wm.WindowContainer", false, classLoader);
                        Class<?> cls2 = Class.forName("com.android.server.wm.WindowState", false, classLoader);
                        final Method m1980a = m1980a(cls2, "isVisible", (Class<?>[]) new Class[0]);
                        final Method m1980a2 = m1980a(cls2, "getDisplayId", (Class<?>[]) new Class[0]);
                        Method m1980a3 = m1980a(cls, "getWindow", (Class<?>[]) new Class[]{Predicate.class});
                        synchronized (m1979a(invoke.getClass(), "mGlobalLock").get(invoke)) {
                            Object obj2 = m1979a(invoke.getClass(), "mRoot").get(invoke);
                            String[] strArr = {"home", "wallpaper"};
                            int i4 = 0;
                            while (i4 < 2) {
                                final String str = strArr[i4];
                                String[] strArr2 = strArr;
                                Object invoke2 = m1980a3.invoke(obj2, new Predicate() { // from class: dev.duo.hookprobe.u$$ExternalSyntheticLambda1
                                    @Override // java.util.function.Predicate
                                    public final boolean test(Object obj3) {
                                        boolean m1985a;
                                        m1985a = C0119u.this.m1985a(m1980a2, m1980a, str, obj3);
                                        return m1985a;
                                    }
                                });
                                if (invoke2 != null) {
                                    Object obj3 = obj2;
                                    Method method = m1980a;
                                    Method method2 = m1980a2;
                                    Object invoke3 = c0119u.f1830j.invoke(c0119u.f1832l.get(invoke2), null);
                                    if (invoke3.getClass().getField("logicalWidth").getInt(invoke3) == i && invoke3.getClass().getField("logicalHeight").getInt(invoke3) == i2) {
                                        Method method3 = m1980a3;
                                        bundle.putString("displayUniqueId", (String) invoke3.getClass().getField("uniqueId").get(invoke3));
                                        bundle.putInt("rotation", invoke3.getClass().getField("rotation").getInt(invoke3));
                                        WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) c0119u.f1833m.get(invoke2);
                                        if ((layoutParams.flags & 8192) == 0) {
                                            Bundle bundle2 = new Bundle();
                                            if (str.equals("home")) {
                                                SurfaceControl surfaceControl = (SurfaceControl) SurfaceControl.class.getDeclaredMethod("mirrorSurface", SurfaceControl.class).invoke(null, (SurfaceControl) m1980a(cls, "getSurfaceControl", (Class<?>[]) new Class[0]).invoke(invoke2, null));
                                                arrayList2.add(surfaceControl);
                                                bundle2.putParcelable("mirror", surfaceControl);
                                            }
                                            Class<?> cls3 = cls;
                                            bundle2.putParcelable("frame", new Rect((Rect) m1980a(cls2, "getFrame", (Class<?>[]) new Class[0]).invoke(invoke2, null)));
                                            float[] fArr = new float[9];
                                            Matrix matrix = new Matrix();
                                            m1980a(cls2, "getTransformationMatrix", (Class<?>[]) new Class[]{float[].class, Matrix.class}).invoke(invoke2, fArr, matrix);
                                            matrix.getValues(fArr);
                                            bundle2.putFloatArray("matrix", fArr);
                                            bundle2.putInt("width", ((Integer) m1980a(cls2, "getSurfaceWidth", (Class<?>[]) new Class[0]).invoke(invoke2, null)).intValue());
                                            bundle2.putInt("height", ((Integer) m1980a(cls2, "getSurfaceHeight", (Class<?>[]) new Class[0]).invoke(invoke2, null)).intValue());
                                            bundle2.putString("package", layoutParams.packageName);
                                            if (str.equals("wallpaper")) {
                                                String[] strArr3 = {"mWallpaperX", "mWallpaperY", "mWallpaperXStep", "mWallpaperYStep", "mWallpaperScale", "mWallpaperZoomOut"};
                                                float[] fArr2 = new float[6];
                                                for (int i5 = 0; i5 < 6; i5++) {
                                                    fArr2[i5] = m1979a(cls2, strArr3[i5]).getFloat(invoke2);
                                                }
                                                bundle2.putFloatArray("offsets", fArr2);
                                                bundle2.putIntArray("displayOffset", new int[]{m1979a(cls2, "mWallpaperDisplayOffsetX").getInt(invoke2), m1979a(cls2, "mWallpaperDisplayOffsetY").getInt(invoke2)});
                                            }
                                            bundle.putBundle(str, bundle2);
                                            i4++;
                                            c0119u = this;
                                            arrayList2 = arrayList;
                                            strArr = strArr2;
                                            obj2 = obj3;
                                            m1980a = method;
                                            m1980a2 = method2;
                                            m1980a3 = method3;
                                            cls = cls3;
                                        } else {
                                            throw new a("桌面分层不导出安全窗口");
                                        }
                                    } else {
                                        throw new a("取层期间显示尺寸改变");
                                    }
                                } else {
                                    throw new a("可见窗口不存在 " + str);
                                }
                            }
                            bundle.putInt("user", m1979a(invoke.getClass(), "mCurrentUserId").getInt(invoke));
                        }
                        Object invoke4 = Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "wallpaper");
                        Class<?> cls4 = Class.forName("android.app.IWallpaperManager");
                        Object invoke5 = Class.forName("android.app.IWallpaperManager$Stub").getMethod("asInterface", IBinder.class).invoke(null, invoke4);
                        int i6 = bundle.getInt("user");
                        Class cls5 = Integer.TYPE;
                        Method method4 = cls4.getMethod("getWallpaperIdForUser", cls5, cls5);
                        int intValue = ((Integer) method4.invoke(invoke5, 1, Integer.valueOf(i6))).intValue();
                        List list = (List) cls4.getMethod("getBitmapCrops", List.class, cls5, Boolean.TYPE, cls5).invoke(invoke5, Arrays.asList(new Point(1168, 1712), new Point(2364, 1672)), 1, Boolean.TRUE, Integer.valueOf(i6));
                        if (intValue == ((Integer) method4.invoke(invoke5, 1, Integer.valueOf(i6))).intValue()) {
                            bundle.putInt("wallpaperId", intValue);
                            bundle.putFloat("wallpaperDim", ((Float) cls4.getMethod("getWallpaperDimAmount", null).invoke(invoke5, null)).floatValue());
                            bundle.putParcelableArrayList("bitmapCrops", list == null ? null : new ArrayList<>(list));
                            bundle.putInt("width", i);
                            bundle.putInt("height", i2);
                            return bundle;
                        }
                        throw new a("取层期间壁纸已更换");
                    }
                    throw new a(readBundle.getString("unavailable"));
                }
                throw new IllegalStateException("侧栏取层未处理");
            } catch (Throwable th) {
                obtain.recycle();
                obtain2.recycle();
                throw th;
            }
        }
        throw new a("侧栏取层接口未就绪");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004b A[Catch: all -> 0x0092, TryCatch #0 {all -> 0x0092, blocks: (B:10:0x0021, B:13:0x0039, B:19:0x004b, B:21:0x005b, B:23:0x0063, B:28:0x0075, B:31:0x0080, B:33:0x0086, B:37:0x003f, B:41:0x002b, B:48:0x0090), top: B:2:0x0001, inners: #1, #4 }] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    synchronized void m2003d(IBinder iBinder) {
        C0119u c0119u;
        IBinder iBinder2;
        try {
            try {
                this.f1841u.remove(iBinder);
                Map<Integer, IBinder> map = this.f1840t.get(iBinder);
                if (this.f1844x != iBinder) {
                    c0119u = this;
                    iBinder2 = iBinder;
                } else {
                    this.f1844x = null;
                    try {
                        c0119u = this;
                        iBinder2 = iBinder;
                    } catch (Exception e) {
                        e = e;
                        c0119u = this;
                        iBinder2 = iBinder;
                    }
                    try {
                        c0119u.m1984a(iBinder2, this.f1845y, false, this.f1808A, this.f1809B, this.f1815H);
                    } catch (Exception e2) {
                        e = e2;
                        Exception exc = e;
                        c0119u.f1822O = exc;
                        Log.e("MiDuoFold", "结束目标订阅失败", exc);
                        m1981a(iBinder2, -1);
                        if (map == null) {
                        }
                    }
                }
                try {
                    m1981a(iBinder2, -1);
                } catch (Exception e3) {
                    c0119u.f1822O = e3;
                    Log.e("MiDuoFold", "会话镜像释放失败", e3);
                }
                if (map == null) {
                    ArrayList arrayList = new ArrayList(map.keySet());
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        int i2 = i + 1;
                        Integer num = (Integer) arrayList.get(i);
                        try {
                            c0119u.f1825e.invoke(null, map.get(num));
                            map.remove(num);
                        } catch (Exception e4) {
                            c0119u.f1822O = e4;
                            Log.e("MiDuoFold", "死亡会话实时源释放失败", e4);
                        }
                        i = i2;
                    }
                    if (map.isEmpty()) {
                        c0119u.f1840t.remove(iBinder2);
                    }
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    /* renamed from: b */
    synchronized void m1999b(IBinder iBinder) {
        if (this.f1822O == null && m1998a(iBinder)) {
            this.f1841u.put(iBinder, Long.valueOf(SystemClock.elapsedRealtime() + 1500));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ boolean m1985a(Method method, Method method2, String str, Object obj) {
        try {
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) this.f1833m.get(obj);
            if (((Integer) method.invoke(obj, null)).intValue() != 0 || !((Boolean) method2.invoke(obj, null)).booleanValue()) {
                return false;
            }
            if (str.equals("home")) {
                if (!"com.miui.home".equals(layoutParams.packageName) || layoutParams.type != 1) {
                    return false;
                }
            } else if (layoutParams.type != 2013) {
                return false;
            }
            return true;
        } catch (Exception e) {
            throw new IllegalStateException("只读窗口匹配失败", e);
        }
    }

    /* renamed from: a */
    void m1995a(XposedModule xposedModule, List<XposedInterface.HookHandle> list, final Handler handler) {
        list.add(xposedModule.hook(this.f1829i).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.u$$ExternalSyntheticLambda2
            public final Object intercept(XposedInterface.Chain chain) {
                Object m1978a;
                m1978a = C0119u.this.m1978a(handler, chain);
                return m1978a;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0064, code lost:
    
        if (r16.f1838r.getInt(r12) > r15) goto L19;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ Object m1978a(Handler handler, XposedInterface.Chain chain) throws Throwable {
        final IBinder iBinder;
        final long j;
        String str;
        int i;
        int i2;
        boolean z;
        int i3;
        boolean z2;
        SurfaceControl.Transaction transaction = (SurfaceControl.Transaction) chain.getArg(0);
        try {
            synchronized (this) {
                iBinder = this.f1844x;
                j = this.f1845y;
                str = this.f1846z;
                i = this.f1808A;
                i2 = this.f1809B;
                z = this.f1815H;
                i3 = this.f1810C;
            }
            if (iBinder != null && transaction != null) {
                Object thisObject = chain.getThisObject();
                WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) this.f1833m.get(thisObject);
                int intValue = ((Integer) chain.getArg(1)).intValue();
                if (this.f1835o.getBoolean(this.f1834n.get(thisObject))) {
                    z2 = this.f1836p.getInt(thisObject) == 1 && this.f1837q.getInt(thisObject) > intValue;
                } else {
                    if (this.f1838r.getInt(thisObject) > 0) {
                    }
                }
                Object invoke = (i3 < 0 || layoutParams.type != 1) ? null : this.f1831k.invoke(thisObject, null);
                boolean z3 = invoke != null && this.f1839s.getInt(invoke) == i3;
                if (!z2 && ((z && "com.android.systemui".equals(layoutParams.packageName)) || z3)) {
                    Object invoke2 = this.f1830j.invoke(this.f1832l.get(thisObject), null);
                    if (str.equals(invoke2.getClass().getField("uniqueId").get(invoke2)) && ((i == invoke2.getClass().getField("logicalWidth").getInt(invoke2) && i2 == invoke2.getClass().getField("logicalHeight").getInt(invoke2)) || ((z || z3) && i2 == invoke2.getClass().getField("logicalWidth").getInt(invoke2) && i == invoke2.getClass().getField("logicalHeight").getInt(invoke2)))) {
                        Objects.requireNonNull(handler);
                        transaction.addTransactionCommittedListener(new g$b$$ExternalSyntheticLambda1(handler), new SurfaceControl.TransactionCommittedListener() { // from class: dev.duo.hookprobe.u$$ExternalSyntheticLambda0
                            @Override // android.view.SurfaceControl.TransactionCommittedListener
                            public final void onTransactionCommitted() {
                                C0119u.this.m1987b(iBinder, j);
                            }
                        });
                    }
                }
            }
        } catch (Throwable th) {
            this.f1822O = th;
            Log.e("MiDuoFold", "目标提交监听失败", th);
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized void m1987b(IBinder iBinder, long j) {
        if (this.f1844x == iBinder && this.f1845y == j) {
            this.f1811D = true;
            m1988c();
        }
    }

    /* renamed from: a */
    synchronized void m1990a(int i, int i2, long j) {
        if (j <= SystemClock.uptimeMillis()) {
            if (i == 15) {
                this.f1820M = i2;
            } else if (i == 9) {
                boolean z = i2 == 1;
                this.f1821N = z;
                if (this.f1844x != null) {
                    this.f1814G = z;
                    m1988c();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0045 A[Catch: all -> 0x0058, TryCatch #0 {, blocks: (B:7:0x0003, B:9:0x0007, B:11:0x000d, B:13:0x0011, B:16:0x001a, B:19:0x002e, B:24:0x0035, B:29:0x0041, B:31:0x0045, B:34:0x004b, B:37:0x0051), top: B:6:0x0003 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    synchronized void m1993a(IBinder iBinder, long j, int i, long j2) {
        boolean z;
        if (iBinder != null) {
            if (this.f1844x == iBinder && this.f1845y == j && this.f1822O == null && j2 <= SystemClock.uptimeMillis()) {
                this.f1819L = i;
                boolean equals = "local:4639175402683733248".equals(this.f1846z);
                boolean z2 = this.f1815H;
                boolean z3 = true;
                if (((z2 ? 1 : 72) & i) == (z2 ? 1 : 72)) {
                    if (((i & 16) != 0) == equals) {
                        z = true;
                        this.f1812E = z;
                        if (z2) {
                            this.f1811D = z;
                        }
                        if (!z2 || !equals || (i & 32) == 0) {
                            z3 = false;
                        }
                        this.f1813F = z3;
                        m1988c();
                    }
                }
                z = false;
                this.f1812E = z;
                if (z2) {
                }
                if (!z2) {
                }
                z3 = false;
                this.f1813F = z3;
                m1988c();
            }
        }
    }

    /* renamed from: a */
    private void m1984a(IBinder iBinder, long j, boolean z, int i, int i2, boolean z2) throws Exception {
        IBinder iBinder2 = this.f1843w;
        if (iBinder2 == null || !iBinder2.isBinderAlive()) {
            if (z) {
                throw new IllegalStateException("就绪提供者不可用");
            }
            return;
        }
        Parcel obtain = Parcel.obtain();
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
                throw new IllegalStateException("就绪订阅未处理");
            }
        } finally {
            obtain.recycle();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0051, code lost:
    
        r13.f1817J = "已请求分层";
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void m1991a(int i, IBinder iBinder, Parcel parcel, Parcel parcel2) throws Exception {
        int i2;
        boolean z;
        long j;
        boolean z2;
        int i3;
        boolean z3 = true;
        if (i == 13) {
            int readInt = parcel.readInt();
            int readInt2 = parcel.readInt();
            int readInt3 = parcel.readInt();
            if ((readInt == 0 || readInt == 2) && ((readInt2 == 1168 && readInt3 == 1712) || (readInt2 == 2364 && readInt3 == 1672))) {
                ArrayList<SurfaceControl> arrayList = new ArrayList<>();
                synchronized (this) {
                    if (this.f1822O == null) {
                        Map<Integer, ArrayList<SurfaceControl>> map = this.f1842v.get(iBinder);
                        if (map != null && map.containsKey(Integer.valueOf(readInt))) {
                            throw new IllegalStateException("分层槽已使用");
                        }
                    } else {
                        throw new IllegalStateException("实时源失败", this.f1822O);
                    }
                }
                try {
                    Bundle m1977a = m1977a(readInt2, readInt3, arrayList);
                    synchronized (this) {
                        if (this.f1822O == null && iBinder.isBinderAlive()) {
                            Map<Integer, ArrayList<SurfaceControl>> map2 = this.f1842v.get(iBinder);
                            if (map2 == null) {
                                map2 = new HashMap<>();
                            }
                            if (!map2.containsKey(Integer.valueOf(readInt))) {
                                parcel2.writeNoException();
                                parcel2.writeBundle(m1977a);
                                map2.put(Integer.valueOf(readInt), arrayList);
                                this.f1842v.put(iBinder, map2);
                                this.f1841u.put(iBinder, Long.valueOf(SystemClock.elapsedRealtime() + 1500));
                                if (readInt == 2) {
                                    this.f1817J = "分层已导出";
                                }
                            } else {
                                throw new IllegalStateException("分层槽已使用");
                            }
                        } else {
                            throw new IllegalStateException("分层会话已失效", this.f1822O);
                        }
                    }
                    return;
                } catch (a e) {
                    m1982a(iBinder, readInt, arrayList);
                    synchronized (this) {
                        if (readInt == 2) {
                            this.f1817J = "分层条件未到: " + e.getMessage();
                        }
                        Bundle bundle = new Bundle();
                        bundle.putInt("protocol", 1);
                        bundle.putString("unavailable", e.getMessage());
                        parcel2.writeNoException();
                        parcel2.writeBundle(bundle);
                        return;
                    }
                } catch (Exception e2) {
                    try {
                        m1982a(iBinder, readInt, arrayList);
                        throw e2;
                    } catch (Exception e3) {
                        e2.addSuppressed(e3);
                        throw e2;
                    }
                }
            }
            throw new IllegalArgumentException("分层请求尺寸/槽位无效");
        }
        synchronized (this) {
            long j2 = this.f1845y;
            int i4 = this.f1808A;
            i2 = this.f1809B;
            z = this.f1815H;
            boolean z4 = this.f1810C >= 0;
            m1986b(i, iBinder, parcel, parcel2);
            j = j2;
            z2 = this.f1844x == iBinder;
            if (i != 7) {
                i3 = i4;
                z3 = z4;
            } else {
                long j3 = this.f1845y;
                int i5 = this.f1808A;
                int i6 = this.f1809B;
                boolean z5 = this.f1815H;
                if (this.f1810C >= 0) {
                    j = j3;
                    i2 = i6;
                    z = z5;
                } else {
                    j = j3;
                    i2 = i6;
                    z = z5;
                    z3 = false;
                }
                i3 = i5;
            }
        }
        if (z3) {
            return;
        }
        if (i != 7) {
            if (z2) {
                return;
            }
            if (i != 6 && i != 17) {
                return;
            }
        }
        m1984a(iBinder, j, z2, i3, i2, z);
    }

    /* renamed from: a */
    private synchronized void m1982a(IBinder iBinder, int i, ArrayList<SurfaceControl> arrayList) throws Exception {
        if (arrayList.isEmpty()) {
            return;
        }
        Map<Integer, ArrayList<SurfaceControl>> map = this.f1842v.get(iBinder);
        if (map == null) {
            map = new HashMap<>();
            this.f1842v.put(iBinder, map);
        }
        ArrayList<SurfaceControl> arrayList2 = map.get(Integer.valueOf(i));
        if (arrayList2 == null) {
            map.put(Integer.valueOf(i), arrayList);
        } else if (arrayList2 != arrayList) {
            arrayList2.addAll(arrayList);
        }
        try {
            m1981a(iBinder, i);
        } catch (Exception e) {
            this.f1822O = e;
            throw e;
        }
    }

    /* renamed from: a */
    synchronized boolean m1997a() {
        return !this.f1841u.isEmpty();
    }

    /* renamed from: a */
    synchronized void m1992a(long j) {
        ArrayList arrayList = new ArrayList(this.f1841u.keySet());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            IBinder iBinder = (IBinder) obj;
            if (j >= this.f1841u.get(iBinder).longValue()) {
                m2003d(iBinder);
            }
        }
    }

    /* renamed from: a */
    synchronized boolean m1998a(IBinder iBinder) {
        if (!this.f1840t.containsKey(iBinder) && !this.f1842v.containsKey(iBinder)) {
            if (this.f1844x != iBinder) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    private void m1981a(IBinder iBinder, int i) throws Exception {
        Map<Integer, ArrayList<SurfaceControl>> map = this.f1842v.get(iBinder);
        if (map == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(map.keySet());
        int size = arrayList.size();
        Exception exc = null;
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 + 1;
            Integer num = (Integer) arrayList.get(i2);
            int intValue = num.intValue();
            if (i == -1 || i == intValue) {
                ArrayList<SurfaceControl> arrayList2 = map.get(num);
                ArrayList arrayList3 = new ArrayList(arrayList2);
                int size2 = arrayList3.size();
                int i4 = 0;
                while (i4 < size2) {
                    int i5 = i4 + 1;
                    SurfaceControl surfaceControl = (SurfaceControl) arrayList3.get(i4);
                    try {
                        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                        try {
                            transaction.reparent(surfaceControl, null);
                            transaction.apply();
                            transaction.close();
                            surfaceControl.release();
                            arrayList2.remove(surfaceControl);
                        } finally {
                        }
                    } catch (Exception e) {
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
            this.f1842v.remove(iBinder);
        }
        if (exc != null) {
            throw exc;
        }
    }
}
