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
import dev.duo.hookprobe.t;
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

/* renamed from: dev.duo.hookprobe.t, reason: case insensitive filesystem */
/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class t {
    private static IBinder a = null;
    private static int b_v = 0;
    private static w c = null;
    private static w d = null;
    private static volatile boolean e = false;
    private static boolean f = false;
    private static boolean g = false;
    private static IBinder h = null;
    private static long i = 0;
    private static long j = 0;
    private static int k = 0;
    private static int l = 0;
    private static boolean m = false;
    private static String n = null;
    private static int o = 0;
    private static int p = 0;
    private static int q = 0;
    private static long r_v = -1;
    private static long s_v = 0;
    private static long t_v = 0;
    private static String u = "尚无样本";
    private static final WeakHashMap<View, Boolean> v = new WeakHashMap<>();
    private static float[] w;

    /* renamed from: dev.duo.hookprobe.t$a */
    class a implements DisplayManager.DisplayListener {
        final /* synthetic */ dev.duo.workspaceprobe.b a;

        a(dev.duo.workspaceprobe.b bVar) {
            this.a = bVar;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            if (i != 0 || t.e) {
                return;
            }
            t.d(this.a);
            if (t.m) {
                Iterator it = t.v.keySet().iterator();
                while (it.hasNext()) {
                    t.b(this.a, (View) it.next());
                }
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
        }
    }

    /* renamed from: dev.duo.hookprobe.t$c */
    class c implements View.OnAttachStateChangeListener {
        final /* synthetic */ dev.duo.workspaceprobe.b a;

        c(dev.duo.workspaceprobe.b bVar) {
            this.a = bVar;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            t.b(this.a, view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (t.m) {
                t.b(0, SystemClock.uptimeMillis());
            }
        }
    }

    /* renamed from: dev.duo.hookprobe.t$d */
    class d implements Choreographer.FrameCallback {
        final /* synthetic */ boolean[] a;

        d(boolean[] zArr) {
            this.a = zArr;
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            if (t.e) {
                return;
            }
            if (t.c.b()) {
                this.a[0] = true;
                t.b(8, t.c.i, t.c.h);
            }
            if (t.c.d()) {
                Choreographer.getInstance().postFrameCallback(this);
            }
        }
    }

    /* renamed from: dev.duo.hookprobe.t$e */
    class e implements Choreographer.FrameCallback {
        final /* synthetic */ boolean[] a;

        e(boolean[] zArr) {
            this.a = zArr;
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            if (t.e) {
                return;
            }
            if (t.d.b()) {
                this.a[0] = true;
                t.b(15, t.d.i, t.d.h);
            }
            if (t.d.d()) {
                Choreographer.getInstance().postFrameCallback(this);
            }
        }
    }

    t() {
    }

    private static void o() {
        if (e) {
            return;
        }
        e = true;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            try {
                obtain.writeInterfaceToken("dev.duo.foldanim1.CONTROL");
                obtain.writeInt(f ? 14 : 9);
                if (f) {
                    obtain.writeStrongBinder(null);
                } else {
                    obtain.writeInt(0);
                    obtain.writeLong(SystemClock.uptimeMillis());
                }
            } catch (Exception e2) {
                Log.e("MiDuoFold", "观察停止撤销失败", e2);
            }
            if (!a.transact(13693511, obtain, obtain2, 0)) {
                throw new IllegalStateException("观察停止撤销未处理");
            }
            obtain2.readException();
            obtain.recycle();
            obtain2.recycle();
            h = null;
        } catch (Throwable th) {
            obtain.recycle();
            obtain2.recycle();
            throw th;
        }
    }

    static void e(final dev.duo.workspaceprobe.b bVar) {
        f = true;
        b bVar2 = new b(new Handler(Looper.getMainLooper()), bVar);
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken("dev.duo.foldanim1.CONTROL");
        obtain.writeInt(14);
        obtain.writeStrongBinder(bVar2);
        a(obtain, "侧栏取层接口");
        d(bVar);
        bVar.C6 = new Runnable() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                t.c(dev.duo.workspaceprobe.b.this);
            }
        };
        bVar.B6 = new Consumer() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                t.d(dev.duo.workspaceprobe.b.this, (View) obj);
            }
        };
        final boolean[] zArr = {false};
        final d dVar = new d(zArr);
        final boolean[] zArr2 = {false};
        final e eVar = new e(zArr2);
        bVar.A6 = new Consumer() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                t.a(dev.duo.workspaceprobe.b.this, zArr2, eVar, zArr, dVar, (long[]) obj);
            }
        };
    }

    static void b(String str) throws Exception {
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
                b = parseInt;
                c = new w(parseInt);
                d = new w(b, 192);
                IBinder iBinder = (IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "display");
                a = iBinder;
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
    public static /* synthetic */ void c(dev.duo.workspaceprobe.b bVar) {
        if (e) {
            return;
        }
        if (!bVar.D()) {
            b(0, SystemClock.uptimeMillis());
            return;
        }
        Iterator<View> it = v.keySet().iterator();
        while (it.hasNext()) {
            b(bVar, it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(dev.duo.workspaceprobe.b bVar) {
        try {
            Display A = bVar.A();
            if (A == null) {
                return false;
            }
            if (!g) {
                bVar.B().registerDisplayListener(new a(bVar), new Handler(Looper.getMainLooper()));
                g = true;
            }
            String str = (String) dev.duo.hookprobe.A.getClass().getMethod("getUniqueId", null).invoke(A, null);
            if (!str.equals(n)) {
                if (n != null) {
                    j = SystemClock.uptimeMillis();
                }
                n = str;
                c.a(new long[]{0, 0, 0, 0});
                d.a(new long[]{0, 0, 0, 0});
                b(15, 0, SystemClock.uptimeMillis());
                b(0, SystemClock.uptimeMillis());
            }
            return true;
        } catch (Exception e2) {
            o();
            Log.e("MiDuoFold", "读取当前屏身份失败", e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(dev.duo.workspaceprobe.b bVar, View view) {
        if (e) {
            return;
        }
        if (bVar.D() && view.isShown()) {
            b(bVar);
        } else if (m) {
            b(0, SystemClock.uptimeMillis());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(dev.duo.workspaceprobe.b bVar, Bundle bundle) {
        b(bVar, bundle);
    }

    private static void a(Parcel parcel, String str) {
        Parcel obtain = Parcel.obtain();
        try {
            if (a.transact(13693511, parcel, obtain, 0)) {
                obtain.readException();
                return;
            }
            throw new IllegalStateException("就绪接收端不可用");
        } catch (Exception e2) {
            o();
            Log.e("MiDuoFold", str + "发送失败，本进程停止就绪观察", e2);
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
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken("dev.duo.foldanim1.CONTROL");
        obtain.writeInt(18);
        obtain.writeStrongBinder(h);
        obtain.writeLong(i);
        obtain.writeInt(i2);
        obtain.writeLong(j2);
        a(obtain, "本代目标内容");
    }

    /* renamed from: dev.duo.hookprobe.t$b */
    class b extends Binder {
        final /* synthetic */ Handler a;
        final /* synthetic */ dev.duo.workspaceprobe.b b;

        b(Handler handler, dev.duo.workspaceprobe.b bVar) {
            this.a = handler;
            this.b_v = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(boolean z, IBinder iBinder, long j, int i, int i2, boolean z2, dev.duo.workspaceprobe.b bVar) {
            if (t.e) {
                return;
            }
            if (!z) {
                if (t.h == iBinder && t.i == j) {
                    Log.i("MiDuoFold", "TARGET_WAIT_END gen=" + j + " samples=" + t.o + " paintChanges=" + t.p + " rejected=" + t.q + " last=" + t.u + " flags=0x" + Long.toHexString(t.s) + " at=" + t.t + " panelSince=" + t.j + " gate=" + t.c.a());
                    IBinder unused = t.h = null;
                    return;
                }
                return;
            }
            IBinder unused2 = t.h = iBinder;
            long unused3 = t.i = j;
            int unused4 = t.k = i;
            int unused5 = t.l = i2;
            boolean unused6 = t.m = z2;
            int unused7 = t.o = t.p = t.q = 0;
            long unused8 = t.r = -1L;
            long unused9 = t.s = t.t = 0L;
            String unused10 = t.u = "尚无样本";
            if (!z2) {
                bVar.A6.accept(bVar.z());
                t.b(t.c.e() ? t.c.i : 0, t.c.h);
            } else {
                t.b(0, SystemClock.uptimeMillis());
                Iterator it = t.v.keySet().iterator();
                while (it.hasNext()) {
                    t.b(bVar, (View) it.next());
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
                parcel2.writeInt(!t.e ? 1 : 0);
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
                Handler handler = this.a;
                final dev.duo.workspaceprobe.b bVar = this.b_v;
                handler.post(new Runnable() { // from class: dev.duo.hookprobe.t$b$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        t.b.a(z, readStrongBinder, readLong, readInt, readInt2, z2, bVar);
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
            Handler handler2 = this.a;
            final dev.duo.workspaceprobe.b bVar2 = this.b_v;
            handler2.post(new Runnable() { // from class: dev.duo.hookprobe.t$b$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    t.b.a(completableFuture, bVar2);
                }
            });
            try {
                try {
                    bundle = (Bundle) completableFuture.get(1L, TimeUnit.SECONDS);
                } catch (TimeoutException e2) {
                    completableFuture.completeExceptionally(e2);
                    final dev.duo.workspaceprobe.b bVar3 = this.b_v;
                    completableFuture.thenAccept(new Consumer() { // from class: dev.duo.hookprobe.t$b$$ExternalSyntheticLambda3
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            t.a(dev.duo.workspaceprobe.b.this, (Bundle) obj);
                        }
                    });
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("unavailable", "SystemUI 主线程 1 秒未响应");
                    bundle = bundle2;
                }
                try {
                    parcel2.writeNoException();
                    parcel2.writeBundle(bundle);
                    this.b_v.a(bundle, true);
                    return true;
                } catch (Throwable th) {
                    this.b_v.a(bundle, false);
                    throw th;
                }
            } catch (Exception e3) {
                completableFuture.completeExceptionally(e3);
                final dev.duo.workspaceprobe.b bVar4 = this.b_v;
                completableFuture.thenAccept(new Consumer() { // from class: dev.duo.hookprobe.t$b$$ExternalSyntheticLambda2
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        t.a(dev.duo.workspaceprobe.b.this, (Bundle) obj);
                    }
                });
                throw e3;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(CompletableFuture completableFuture, dev.duo.workspaceprobe.b bVar) {
            if (completableFuture.isDone()) {
                return;
            }
            try {
                Bundle E = bVar.E();
                if (completableFuture.complete(E)) {
                    return;
                }
                t.b(bVar, E);
            } catch (Exception e) {
                completableFuture.completeExceptionally(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(final dev.duo.workspaceprobe.b bVar, final View view) {
        final IBinder iBinder;
        if (e || (iBinder = h) == null || !m) {
            return;
        }
        final long j2 = i;
        if (bVar.D() && view.isAttachedToWindow() && view.isShown()) {
            view.getViewTreeObserver().registerFrameCommitCallback(new Runnable() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    t.a(iBinder, j2, view, bVar);
                }
            });
            view.invalidate();
        } else {
            b(0, SystemClock.uptimeMillis());
        }
    }

    private static long[] a(dev.duo.workspaceprobe.b bVar, long[] jArr) {
        String str;
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
    public static /* synthetic */ void d(final dev.duo.workspaceprobe.b bVar, final View view) {
        if (v.put(view, Boolean.TRUE) != null) {
            return;
        }
        view.getViewTreeObserver().addOnDrawListener(new ViewTreeObserver.OnDrawListener() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda4
            @Override // android.view.ViewTreeObserver.OnDrawListener
            public final void onDraw() {
                t.c(dev.duo.workspaceprobe.b.this, view);
            }
        });
        view.addOnAttachStateChangeListener(new c(bVar));
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda5
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                t.a(dev.duo.workspaceprobe.b.this, view2, i2, i3, i4, i5, i6, i7, i8, i9);
            }
        });
        b(bVar, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(IBinder iBinder, long j2, View view, dev.duo.workspaceprobe.b bVar) {
        if (!e && iBinder == h && j2 == i) {
            int width = view.getWidth();
            int height = view.getHeight();
            int i2 = k;
            int i3 = 0;
            boolean z = ((width == i2 && height == l) || (height == i2 && width == l)) && d(bVar) && (i2 == 2364 || l == 2364) == "local:4639175402683733248".equals(n);
            if (bVar.D() && view.isAttachedToWindow() && view.isShown() && z) {
                i3 = (k == 2364 || l == 2364) ? 17 : 1;
            }
            b(bVar);
            b(i3, SystemClock.uptimeMillis());
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
            Parcel obtain = Parcel.obtain();
            obtain.writeInterfaceToken("dev.duo.foldanim1.CONTROL");
            obtain.writeInt(i2);
            obtain.writeInt(i3);
            obtain.writeLong(j2);
            a(obtain, "就绪信号");
        }
    }

    private static void b(dev.duo.workspaceprobe.b bVar) {
        float[] C = bVar.C();
        if (e || C == null || Arrays.equals(C, w)) {
            return;
        }
        w = C;
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken("dev.duo.foldanim1.CONTROL");
        obtain.writeInt(11);
        obtain.writeFloatArray(C);
        a(obtain, "侧栏坐标");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(dev.duo.workspaceprobe.b bVar, View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        if (i4 - i2 == i8 - i6 && i5 - i3 == i9 - i7) {
            return;
        }
        b(bVar, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(dev.duo.workspaceprobe.b bVar, boolean[] zArr, Choreographer.FrameCallback frameCallback, boolean[] zArr2, Choreographer.FrameCallback frameCallback2, long[] jArr) {
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
                w wVar = d;
                b(15, wVar.i & (-129), wVar.h);
            }
            Choreographer.getInstance().removeFrameCallback(frameCallback);
            if (d.d()) {
                Choreographer.getInstance().postFrameCallback(frameCallback);
            }
        }
        if (c.a(a2)) {
            if (zArr2[0]) {
                zArr2[0] = false;
                w wVar2 = c;
                b(8, wVar2.i & (-9), wVar2.h);
            }
            Choreographer.getInstance().removeFrameCallback(frameCallback2);
            if (c.d()) {
                Choreographer.getInstance().postFrameCallback(frameCallback2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(dev.duo.workspaceprobe.b bVar, Bundle bundle) {
        try {
            bVar.a(bundle, false);
        } catch (Exception e2) {
            Log.e("MiDuoFold", "未移交镜像清理失败，保留到下次取层收尾", e2);
        }
    }
}
