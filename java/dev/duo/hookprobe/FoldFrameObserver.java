package dev.duo.hookprobe;

import android.hardware.display.DisplayManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.SystemClock;
import android.util.Log;
import android.view.Choreographer;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import dev.duo.hookprobe.FoldFrameObserver;
import dev.duo.workspaceprobe.WorkspaceHooks;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Properties;
import java.util.WeakHashMap;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.function.Consumer;
import java.util.zip.ZipFile;

/* renamed from: dev.duo.hookprobe.t */
/* loaded from: classes.dex */
final class FoldFrameObserver {

    /* renamed from: a */
    private static IBinder f1776a = null;

    /* renamed from: b */
    private static int f1777b = 0;

    /* renamed from: c */
    private static FoldFrameWindow f1778c = null;

    /* renamed from: d */
    private static FoldFrameWindow f1779d = null;

    /* renamed from: e */
    private static volatile boolean f1780e = false;

    /* renamed from: f */
    private static boolean f1781f = false;

    /* renamed from: g */
    private static boolean f1782g = false;

    /* renamed from: h */
    private static IBinder f1783h = null;

    /* renamed from: i */
    private static long f1784i = 0;

    /* renamed from: j */
    private static long f1785j = 0;

    /* renamed from: k */
    private static int f1786k = 0;

    /* renamed from: l */
    private static int f1787l = 0;

    /* renamed from: m */
    private static boolean f1788m = false;

    /* renamed from: n */
    private static String f1789n = null;

    /* renamed from: o */
    private static int f1790o = 0;

    /* renamed from: p */
    private static int f1791p = 0;

    /* renamed from: q */
    private static int f1792q = 0;

    /* renamed from: r */
    private static long f1793r = -1;

    /* renamed from: s */
    private static long f1794s = 0;

    /* renamed from: t */
    private static long f1795t = 0;

    /* renamed from: u */
    private static String f1796u = "尚无样本";

    /* renamed from: v */
    private static final WeakHashMap<View, Boolean> f1797v = new WeakHashMap<>();

    /* renamed from: w */
    private static float[] f1798w;

    /* renamed from: dev.duo.hookprobe.t$a */
    class a implements DisplayManager.DisplayListener {

        /* renamed from: a */
        final /* synthetic */ WorkspaceHooks f1799a;

        a(WorkspaceHooks c0143b) {
            this.f1799a = c0143b;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            if (i != 0 || FoldFrameObserver.f1780e) {
                return;
            }
            FoldFrameObserver.m1959d(this.f1799a);
            if (FoldFrameObserver.f1788m) {
                Iterator it = FoldFrameObserver.f1797v.keySet().iterator();
                while (it.hasNext()) {
                    FoldFrameObserver.m1948b(this.f1799a, (View) it.next());
                }
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
        }
    }

    /* renamed from: dev.duo.hookprobe.t$c */
    class c implements View.OnAttachStateChangeListener {

        /* renamed from: a */
        final /* synthetic */ WorkspaceHooks f1802a;

        c(WorkspaceHooks c0143b) {
            this.f1802a = c0143b;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            FoldFrameObserver.m1948b(this.f1802a, view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (FoldFrameObserver.f1788m) {
                FoldFrameObserver.m1945b(0, SystemClock.uptimeMillis());
            }
        }
    }

    /* renamed from: dev.duo.hookprobe.t$d */
    class d implements Choreographer.FrameCallback {

        /* renamed from: a */
        final /* synthetic */ boolean[] f1803a;

        d(boolean[] zArr) {
            this.f1803a = zArr;
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            if (FoldFrameObserver.f1780e) {
                return;
            }
            if (FoldFrameObserver.f1778c.m2009b()) {
                this.f1803a[0] = true;
                FoldFrameObserver.m1944b(8, FoldFrameObserver.f1778c.f1855i, FoldFrameObserver.f1778c.f1854h);
            }
            if (FoldFrameObserver.f1778c.m2010d()) {
                Choreographer.getInstance().postFrameCallback(this);
            }
        }
    }

    /* renamed from: dev.duo.hookprobe.t$e */
    class e implements Choreographer.FrameCallback {

        /* renamed from: a */
        final /* synthetic */ boolean[] f1804a;

        e(boolean[] zArr) {
            this.f1804a = zArr;
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            if (FoldFrameObserver.f1780e) {
                return;
            }
            if (FoldFrameObserver.f1779d.m2009b()) {
                this.f1804a[0] = true;
                FoldFrameObserver.m1944b(15, FoldFrameObserver.f1779d.f1855i, FoldFrameObserver.f1779d.f1854h);
            }
            if (FoldFrameObserver.f1779d.m2010d()) {
                Choreographer.getInstance().postFrameCallback(this);
            }
        }
    }

    FoldFrameObserver() {
    }

    /* renamed from: o */
    private static void m1972o() {
        if (f1780e) {
            return;
        }
        f1780e = true;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            try {
                obtain.writeInterfaceToken("dev.duo.foldanim1.CONTROL");
                obtain.writeInt(f1781f ? 14 : 9);
                if (f1781f) {
                    obtain.writeStrongBinder(null);
                } else {
                    obtain.writeInt(0);
                    obtain.writeLong(SystemClock.uptimeMillis());
                }
            } catch (Exception e2) {
                Log.e("MiDuoFold", "观察停止撤销失败", e2);
            }
            if (!f1776a.transact(13693511, obtain, obtain2, 0)) {
                throw new IllegalStateException("观察停止撤销未处理");
            }
            obtain2.readException();
            obtain.recycle();
            obtain2.recycle();
            f1783h = null;
        } catch (Throwable th) {
            obtain.recycle();
            obtain2.recycle();
            throw th;
        }
    }

    /* renamed from: e */
    static void m1962e(final WorkspaceHooks c0143b) {
        f1781f = true;
        b bVar = new b(new Handler(Looper.getMainLooper()), c0143b);
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken("dev.duo.foldanim1.CONTROL");
        obtain.writeInt(14);
        obtain.writeStrongBinder(bVar);
        m1932a(obtain, "侧栏取层接口");
        m1959d(c0143b);
        c0143b.f2088C6 = new Runnable() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                FoldFrameObserver.m1953c(WorkspaceHooks.this);
            }
        };
        c0143b.f2082B6 = new Consumer() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                FoldFrameObserver.m1958d(WorkspaceHooks.this, (View) obj);
            }
        };
        final boolean[] zArr = {false};
        final d dVar = new d(zArr);
        final boolean[] zArr2 = {false};
        final e eVar = new e(zArr2);
        c0143b.f2076A6 = new Consumer() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                FoldFrameObserver.m1936a(WorkspaceHooks.this, zArr2, eVar, zArr, dVar, (long[]) obj);
            }
        };
    }

    /* renamed from: b */
    static void m1949b(String str) throws Exception {
        Properties properties = new Properties();
        ZipFile zipFile = new ZipFile(str);
        try {
            InputStream inputStream = zipFile.getInputStream(zipFile.getEntry("assets/fold/curve.properties"));
            try {
                properties.load(inputStream);
                if (inputStream != null) {
                    inputStream.close();
                }
                zipFile.close();
                int parseInt = Integer.parseInt(properties.getProperty("quiet_frames"));
                f1777b = parseInt;
                f1778c = new FoldFrameWindow(parseInt);
                f1779d = new FoldFrameWindow(f1777b, 192);
                IBinder iBinder = (IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "display");
                f1776a = iBinder;
                if (iBinder == null) {
                    throw new IllegalStateException("display 服务不可用");
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                zipFile.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ void m1953c(WorkspaceHooks c0143b) {
        if (f1780e) {
            return;
        }
        if (!c0143b.m2785D()) {
            m1945b(0, SystemClock.uptimeMillis());
            return;
        }
        Iterator<View> it = f1797v.keySet().iterator();
        while (it.hasNext()) {
            m1948b(c0143b, it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static boolean m1959d(WorkspaceHooks c0143b) {
        try {
            Display m2781A = c0143b.m2781A();
            if (m2781A == null) {
                return false;
            }
            if (!f1782g) {
                c0143b.m2782B().registerDisplayListener(new a(c0143b), new Handler(Looper.getMainLooper()));
                f1782g = true;
            }
            String str = (String) m2781A.getClass().getMethod("getUniqueId", null).invoke(m2781A, null);
            if (!str.equals(f1789n)) {
                if (f1789n != null) {
                    f1785j = SystemClock.uptimeMillis();
                }
                f1789n = str;
                f1778c.m2008a(new long[]{0, 0, 0, 0});
                f1779d.m2008a(new long[]{0, 0, 0, 0});
                m1944b(15, 0, SystemClock.uptimeMillis());
                m1945b(0, SystemClock.uptimeMillis());
            }
            return true;
        } catch (Exception e2) {
            m1972o();
            Log.e("MiDuoFold", "读取当前屏身份失败", e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ void m1954c(WorkspaceHooks c0143b, View view) {
        if (f1780e) {
            return;
        }
        if (c0143b.m2785D() && view.isShown()) {
            m1946b(c0143b);
        } else if (f1788m) {
            m1945b(0, SystemClock.uptimeMillis());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m1933a(WorkspaceHooks c0143b, Bundle bundle) {
        m1947b(c0143b, bundle);
    }

    /* renamed from: a */
    private static void m1932a(Parcel parcel, String str) {
        Parcel obtain = Parcel.obtain();
        try {
            if (f1776a.transact(13693511, parcel, obtain, 0)) {
                obtain.readException();
                return;
            }
            throw new IllegalStateException("就绪接收端不可用");
        } catch (Exception e2) {
            m1972o();
            Log.e("MiDuoFold", str + "发送失败，本进程停止就绪观察", e2);
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m1945b(int i, long j) {
        if (f1780e || f1783h == null) {
            return;
        }
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken("dev.duo.foldanim1.CONTROL");
        obtain.writeInt(18);
        obtain.writeStrongBinder(f1783h);
        obtain.writeLong(f1784i);
        obtain.writeInt(i);
        obtain.writeLong(j);
        m1932a(obtain, "本代目标内容");
    }

    /* renamed from: dev.duo.hookprobe.t$b */
    class b extends Binder {

        /* renamed from: a */
        final /* synthetic */ Handler f1800a;

        /* renamed from: b */
        final /* synthetic */ WorkspaceHooks f1801b;

        b(Handler handler, WorkspaceHooks c0143b) {
            this.f1800a = handler;
            this.f1801b = c0143b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public static /* synthetic */ void m1975a(boolean z, IBinder iBinder, long j, int i, int i2, boolean z2, WorkspaceHooks c0143b) {
            if (FoldFrameObserver.f1780e) {
                return;
            }
            if (!z) {
                if (FoldFrameObserver.f1783h == iBinder && FoldFrameObserver.f1784i == j) {
                    Log.i("MiDuoFold", "TARGET_WAIT_END gen=" + j + " samples=" + FoldFrameObserver.f1790o + " paintChanges=" + FoldFrameObserver.f1791p + " rejected=" + FoldFrameObserver.f1792q + " last=" + FoldFrameObserver.f1796u + " flags=0x" + Long.toHexString(FoldFrameObserver.f1794s) + " at=" + FoldFrameObserver.f1795t + " panelSince=" + FoldFrameObserver.f1785j + " gate=" + FoldFrameObserver.f1778c.m2007a());
                    IBinder unused = FoldFrameObserver.f1783h = null;
                    return;
                }
                return;
            }
            IBinder unused2 = FoldFrameObserver.f1783h = iBinder;
            long unused3 = FoldFrameObserver.f1784i = j;
            int unused4 = FoldFrameObserver.f1786k = i;
            int unused5 = FoldFrameObserver.f1787l = i2;
            boolean unused6 = FoldFrameObserver.f1788m = z2;
            int unused7 = FoldFrameObserver.f1790o = FoldFrameObserver.f1791p = FoldFrameObserver.f1792q = 0;
            long unused8 = FoldFrameObserver.f1793r = -1L;
            long unused9 = FoldFrameObserver.f1794s = FoldFrameObserver.f1795t = 0L;
            String unused10 = FoldFrameObserver.f1796u = "尚无样本";
            if (!z2) {
                c0143b.f2076A6.accept(c0143b.m2792z());
                FoldFrameObserver.m1945b(FoldFrameObserver.f1778c.m2011e() ? FoldFrameObserver.f1778c.f1855i : 0, FoldFrameObserver.f1778c.f1854h);
            } else {
                FoldFrameObserver.m1945b(0, SystemClock.uptimeMillis());
                Iterator it = FoldFrameObserver.f1797v.keySet().iterator();
                while (it.hasNext()) {
                    FoldFrameObserver.m1948b(c0143b, (View) it.next());
                }
            }
        }

        @Override // android.os.Binder
        protected boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            Bundle bundle;
            if (i == 3) {
                parcel.enforceInterface("dev.duo.foldanim1.LAYERS");
                if (Binder.getCallingUid() != 1000 || parcel2 == null) {
                    throw new SecurityException("系统观察状态专用");
                }
                parcel2.writeNoException();
                parcel2.writeInt(!FoldFrameObserver.f1780e ? 1 : 0);
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface("dev.duo.foldanim1.LAYERS");
                if (Binder.getCallingUid() != 1000) {
                    throw new SecurityException("系统就绪订阅专用");
                }
                final IBinder readStrongBinder = parcel.readStrongBinder();
                final long readLong = parcel.readLong();
                final boolean z = parcel.readInt() != 0;
                final int readInt = parcel.readInt();
                final int readInt2 = parcel.readInt();
                final boolean z2 = parcel.readInt() != 0;
                Handler handler = this.f1800a;
                final WorkspaceHooks c0143b = this.f1801b;
                handler.post(new Runnable() { // from class: dev.duo.hookprobe.t$b$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        FoldFrameObserver.b.m1975a(z, readStrongBinder, readLong, readInt, readInt2, z2, c0143b);
                    }
                });
                return true;
            }
            if (i != 1) {
                return false;
            }
            if (parcel2 == null) {
                throw new SecurityException("只读取层需要同步回复");
            }
            try {
                parcel.enforceInterface("dev.duo.foldanim1.LAYERS");
            } catch (Exception e) {
                parcel2.setDataPosition(0);
                parcel2.setDataSize(0);
                parcel2.writeException(new IllegalStateException("侧栏只读导出失败", e));
            }
            if (Binder.getCallingUid() != 1000) {
                throw new SecurityException("系统只读取层专用");
            }
            final CompletableFuture completableFuture = new CompletableFuture();
            Handler handler2 = this.f1800a;
            final WorkspaceHooks c0143b2 = this.f1801b;
            handler2.post(new Runnable() { // from class: dev.duo.hookprobe.t$b$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    FoldFrameObserver.b.m1974a(completableFuture, c0143b2);
                }
            });
            try {
                try {
                    bundle = (Bundle) completableFuture.get(1L, TimeUnit.SECONDS);
                } catch (TimeoutException e2) {
                    completableFuture.completeExceptionally(e2);
                    final WorkspaceHooks c0143b3 = this.f1801b;
                    completableFuture.thenAccept(new Consumer() { // from class: dev.duo.hookprobe.t$b$$ExternalSyntheticLambda3
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            FoldFrameObserver.m1933a(WorkspaceHooks.this, (Bundle) obj);
                        }
                    });
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("unavailable", "SystemUI 主线程 1 秒未响应");
                    bundle = bundle2;
                }
                try {
                    parcel2.writeNoException();
                    parcel2.writeBundle(bundle);
                    this.f1801b.m2789a(bundle, true);
                    return true;
                } catch (Throwable th) {
                    this.f1801b.m2789a(bundle, false);
                    throw th;
                }
            } catch (Exception e3) {
                completableFuture.completeExceptionally(e3);
                final WorkspaceHooks c0143b4 = this.f1801b;
                completableFuture.thenAccept(new Consumer() { // from class: dev.duo.hookprobe.t$b$$ExternalSyntheticLambda2
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        FoldFrameObserver.m1933a(WorkspaceHooks.this, (Bundle) obj);
                    }
                });
                throw e3;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public static /* synthetic */ void m1974a(CompletableFuture completableFuture, WorkspaceHooks c0143b) {
            if (completableFuture.isDone()) {
                return;
            }
            try {
                Bundle m2786E = c0143b.m2786E();
                if (completableFuture.complete(m2786E)) {
                    return;
                }
                FoldFrameObserver.m1947b(c0143b, m2786E);
            } catch (Exception e) {
                completableFuture.completeExceptionally(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m1948b(final WorkspaceHooks c0143b, final View view) {
        final IBinder iBinder;
        if (f1780e || (iBinder = f1783h) == null || !f1788m) {
            return;
        }
        final long j = f1784i;
        if (c0143b.m2785D() && view.isAttachedToWindow() && view.isShown()) {
            view.getViewTreeObserver().registerFrameCommitCallback(new Runnable() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    FoldFrameObserver.m1931a(iBinder, j, view, c0143b);
                }
            });
            view.invalidate();
        } else {
            m1945b(0, SystemClock.uptimeMillis());
        }
    }

    /* renamed from: a */
    private static long[] m1940a(WorkspaceHooks c0143b, long[] jArr) {
        String str;
        if (!m1959d(c0143b)) {
            str = "显示不可读";
        } else if (jArr[1] < f1785j) {
            str = "绘制早于切屏观察";
        } else {
            str = (((jArr[0] & 16) > 0L ? 1 : ((jArr[0] & 16) == 0L ? 0 : -1)) != 0) != "local:4639175402683733248".equals(f1789n) ? "物理屏不匹配" : "接收";
        }
        if (f1783h != null && !f1788m) {
            f1790o++;
            long j = (jArr[0] >>> 8) & 16777215;
            if (j != f1793r) {
                f1791p++;
                f1793r = j;
            }
            if (!"接收".equals(str)) {
                f1792q++;
            }
            f1796u = str;
            f1794s = jArr[0] & 255;
            f1795t = jArr[1];
        }
        return "接收".equals(str) ? jArr : new long[]{0, 0, 0, 0};
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static /* synthetic */ void m1958d(final WorkspaceHooks c0143b, final View view) {
        if (f1797v.put(view, Boolean.TRUE) != null) {
            return;
        }
        view.getViewTreeObserver().addOnDrawListener(new ViewTreeObserver.OnDrawListener() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda4
            @Override // android.view.ViewTreeObserver.OnDrawListener
            public final void onDraw() {
                FoldFrameObserver.m1954c(WorkspaceHooks.this, view);
            }
        });
        view.addOnAttachStateChangeListener(new c(c0143b));
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda5
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                FoldFrameObserver.m1935a(WorkspaceHooks.this, view2, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
        m1948b(c0143b, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m1931a(IBinder iBinder, long j, View view, WorkspaceHooks c0143b) {
        if (!f1780e && iBinder == f1783h && j == f1784i) {
            int width = view.getWidth();
            int height = view.getHeight();
            int i = f1786k;
            int i2 = 0;
            boolean z = ((width == i && height == f1787l) || (height == i && width == f1787l)) && m1959d(c0143b) && (i == 2364 || f1787l == 2364) == "local:4639175402683733248".equals(f1789n);
            if (c0143b.m2785D() && view.isAttachedToWindow() && view.isShown() && z) {
                i2 = (f1786k == 2364 || f1787l == 2364) ? 17 : 1;
            }
            m1946b(c0143b);
            m1945b(i2, SystemClock.uptimeMillis());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m1944b(int i, int i2, long j) {
        if (f1780e) {
            return;
        }
        if (i == 8) {
            if (f1788m) {
                return;
            }
            m1945b(i2, j);
        } else {
            Parcel obtain = Parcel.obtain();
            obtain.writeInterfaceToken("dev.duo.foldanim1.CONTROL");
            obtain.writeInt(i);
            obtain.writeInt(i2);
            obtain.writeLong(j);
            m1932a(obtain, "就绪信号");
        }
    }

    /* renamed from: b */
    private static void m1946b(WorkspaceHooks c0143b) {
        float[] m2784C = c0143b.m2784C();
        if (f1780e || m2784C == null || Arrays.equals(m2784C, f1798w)) {
            return;
        }
        f1798w = m2784C;
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken("dev.duo.foldanim1.CONTROL");
        obtain.writeInt(11);
        obtain.writeFloatArray(m2784C);
        m1932a(obtain, "侧栏坐标");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m1935a(WorkspaceHooks c0143b, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i3 - i == i7 - i5 && i4 - i2 == i8 - i6) {
            return;
        }
        m1948b(c0143b, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m1936a(WorkspaceHooks c0143b, boolean[] zArr, Choreographer.FrameCallback frameCallback, boolean[] zArr2, Choreographer.FrameCallback frameCallback2, long[] jArr) {
        if (f1780e) {
            return;
        }
        m1946b(c0143b);
        long[] m1940a = m1940a(c0143b, jArr);
        if (f1780e) {
            return;
        }
        if (f1779d.m2008a(m1940a)) {
            if (zArr[0]) {
                zArr[0] = false;
                FoldFrameWindow c0121w = f1779d;
                m1944b(15, c0121w.f1855i & (-129), c0121w.f1854h);
            }
            Choreographer.getInstance().removeFrameCallback(frameCallback);
            if (f1779d.m2010d()) {
                Choreographer.getInstance().postFrameCallback(frameCallback);
            }
        }
        if (f1778c.m2008a(m1940a)) {
            if (zArr2[0]) {
                zArr2[0] = false;
                FoldFrameWindow c0121w2 = f1778c;
                m1944b(8, c0121w2.f1855i & (-9), c0121w2.f1854h);
            }
            Choreographer.getInstance().removeFrameCallback(frameCallback2);
            if (f1778c.m2010d()) {
                Choreographer.getInstance().postFrameCallback(frameCallback2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m1947b(WorkspaceHooks c0143b, Bundle bundle) {
        try {
            c0143b.m2789a(bundle, false);
        } catch (Exception e2) {
            Log.e("MiDuoFold", "未移交镜像清理失败，保留到下次取层收尾", e2);
        }
    }
}
