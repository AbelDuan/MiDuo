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
final class t_v {
    private static IBinder a = null;
    private static int b_v= 0;
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
    private static long r_v= -1;
    private static long s_v= 0;
    private static long t_v= 0;
    private static String u = ;
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
            if (i != 0 || t_v.e) {
                return;
            }
            t_v.d(this.a);
            if (t_v.m) {
                Iterator it = t_v.v.keySet().iterator();
                while (it.hasNext()) {
                    t_v.b(this.a, (View) it.next());
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
            t_v.b(this.a, view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (t_v.m) {
                t_v.b(0, SystemClock.uptimeMillis());
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
            if (t_v.e) {
                return;
            }
            if (t_v.c.b()) {
                this.a[0] = true;
                t_v.b(8, t_v.c.i, t_v.c.h);
            }
            if (t_v.c.d()) {
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
            if (t_v.e) {
                return;
            }
            if (t_v.d.b()) {
                this.a[0] = true;
                t_v.b(15, t_v.d.i, t_v.d.h);
            }
            if (t_v.d.d()) {
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
                obtain.writeInterfaceToken();
                obtain.writeInt(f ? 14 : 9);
                if (f) {
                    obtain.writeStrongBinder(null);
                } else {
                    obtain.writeInt(0);
                    obtain.writeLong(SystemClock.uptimeMillis());
                }
            } catch (Exception e2) {
                Log.e(, , e2);
            }
            if (!a.transact(13693511, obtain, obtain2, 0)) {
                throw new IllegalStateException();
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
        obtain.writeInterfaceToken();
        obtain.writeInt(14);
        obtain.writeStrongBinder(bVar2);
        a(obtain, );
        d(bVar);
        bVar.C6 = new Runnable() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                t_v.c(dev.duo.workspaceprobe.b.this);
            }
        };
        bVar.B6 = new Consumer() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                t_v.d(dev.duo.workspaceprobe.b.this, (View) obj);
            }
        };
        final boolean[] zArr = {false};
        final d dVar = new d(zArr);
        final boolean[] zArr2 = {false};
        final e eVar = new e(zArr2);
        bVar.A6 = new Consumer() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                t_v.a(dev.duo.workspaceprobe.b.this, zArr2, eVar, zArr, dVar, (long[]) obj);
            }
        };
    }

    static void b(String str) throws Exception {
        Properties properties = new Properties();
        ZipFile zipFile = new ZipFile(str);
        try {
            InputStream inputStream = zipFile.getInputStream(zipFile.getEntry());
            try {
                properties.load(inputStream);
                if (inputStream != null) {
                    inputStream.close();
                }
                zipFile.close();
                int parseInt = Integer.parseInt(properties.getProperty());
                b_v = parseInt;
                c = new w(parseInt);
                d = new w(b_v, 192);
                IBinder iBinder = (IBinder) Class.forName().getMethod(, String.class).invoke(null, );
                a = iBinder;
                if (iBinder == null) {
                    throw new IllegalStateException();
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
            String str = (String) dev.duo.hookprobe.A.getClass().getMethod(, null).invoke(A, null);
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
            Log.e(, , e2);
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
            throw new IllegalStateException();
        } catch (Exception e2) {
            o();
            Log.e(, str + , e2);
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
        obtain.writeInterfaceToken();
        obtain.writeInt(18);
        obtain.writeStrongBinder(h);
        obtain.writeLong(i);
        obtain.writeInt(i2);
        obtain.writeLong(j2);
        a(obtain, );
    }

    /* renamed from: dev.duo.hookprobe.t$b */
    class b_v extends Binder {
        final /* synthetic */ Handler a;
        final /* synthetic */ dev.duo.workspaceprobe.b b_v;

        b(Handler handler, dev.duo.workspaceprobe.b bVar) {
            this.a = handler;
            this.b = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(boolean z, IBinder iBinder, long j, int i, int i2, boolean z2, dev.duo.workspaceprobe.b bVar) {
            if (t_v.e) {
                return;
            }
            if (!z) {
                if (t_v.h == iBinder && t_v.i == j) {
                    Log.i(,  + j +  + t.o +  + t_v.p +  + t.q +  + t_v.u +  + Long.toHexString(t.s) +  + t_v.t +  + t.j +  + t_v.c.a());
                    IBinder unused = t_v.h = null;
                    return;
                }
                return;
            }
            IBinder unused2 = t_v.h = iBinder;
            long unused3 = t_v.i = j;
            int unused4 = t_v.k = i;
            int unused5 = t_v.l = i2;
            boolean unused6 = t_v.m = z2;
            int unused7 = t_v.o = t_v.p = t_v.q = 0;
            long unused8 = t_v.r = -1L;
            long unused9 = t_v.s = t_v.t = 0L;
            String unused10 = t_v.u = ;
            if (!z2) {
                bVar.A6.accept(bVar.z());
                t_v.b(t_v.c.e() ? t_v.c.i : 0, t_v.c.h);
            } else {
                t_v.b(0, SystemClock.uptimeMillis());
                Iterator it = t_v.v.keySet().iterator();
                while (it.hasNext()) {
                    t_v.b(bVar, (View) it.next());
                }
            }
        }

        @Override // android.os.Binder
        protected boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            Bundle bundle;
            if (i == 3) {
                parcel.enforceInterface();
                if (Binder.getCallingUid() != 1000 || parcel2 == null) {
                    throw new SecurityException();
                }
                parcel2.writeNoException();
                parcel2.writeInt(!t_v.e ? 1 : 0);
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface();
                if (Binder.getCallingUid() != 1000) {
                    throw new SecurityException();
                }
                final IBinder readStrongBinder = parcel.readStrongBinder();
                final long readLong = parcel.readLong();
                final boolean z = parcel.readInt() != 0;
                final int readInt = parcel.readInt();
                final int readInt2 = parcel.readInt();
                final boolean z2 = parcel.readInt() != 0;
                Handler handler = this.a;
                final dev.duo.workspaceprobe.b bVar = this.b;
                handler.post(new Runnable() { // from class: dev.duo.hookprobe.t$b$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        t_v.b.a(z, readStrongBinder, readLong, readInt, readInt2, z2, bVar);
                    }
                });
                return true;
            }
            if (i != 1) {
                return false;
            }
            if (parcel2 == null) {
                throw new SecurityException();
            }
            try {
                parcel.enforceInterface();
            } catch (Exception e) {
                parcel2.setDataPosition(0);
                parcel2.setDataSize(0);
                parcel2.writeException(new IllegalStateException(, e));
            }
            if (Binder.getCallingUid() != 1000) {
                throw new SecurityException();
            }
            final CompletableFuture completableFuture = new CompletableFuture();
            Handler handler2 = this.a;
            final dev.duo.workspaceprobe.b bVar2 = this.b;
            handler2.post(new Runnable() { // from class: dev.duo.hookprobe.t$b$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    t_v.b.a(completableFuture, bVar2);
                }
            });
            try {
                try {
                    bundle = (Bundle) completableFuture.get(1L, TimeUnit.SECONDS);
                } catch (TimeoutException e2) {
                    completableFuture.completeExceptionally(e2);
                    final dev.duo.workspaceprobe.b bVar3 = this.b;
                    completableFuture.thenAccept(new Consumer() { // from class: dev.duo.hookprobe.t$b$$ExternalSyntheticLambda3
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            t_v.a(dev.duo.workspaceprobe.b.this, (Bundle) obj);
                        }
                    });
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(, );
                    bundle = bundle2;
                }
                try {
                    parcel2.writeNoException();
                    parcel2.writeBundle(bundle);
                    this.b.a(bundle, true);
                    return true;
                } catch (Throwable th) {
                    this.b.a(bundle, false);
                    throw th;
                }
            } catch (Exception e3) {
                completableFuture.completeExceptionally(e3);
                final dev.duo.workspaceprobe.b bVar4 = this.b;
                completableFuture.thenAccept(new Consumer() { // from class: dev.duo.hookprobe.t$b$$ExternalSyntheticLambda2
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        t_v.a(dev.duo.workspaceprobe.b.this, (Bundle) obj);
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
                t_v.b(bVar, E);
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
                    t_v.a(iBinder, j2, view, bVar);
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
            str = ;
        } else if (jArr[1] < j) {
            str = ;
        } else {
            str = (((jArr[0] & 16) > 0L ? 1 : ((jArr[0] & 16) == 0L ? 0 : -1)) != 0) != .equals(n) ?  : ;
        }
        if (h != null && !m) {
            o++;
            long j2 = (jArr[0] >>> 8) & 16777215;
            if (j2 != r_v) {
                p++;
                r_v = j2;
            }
            if (!.equals(str)) {
                q++;
            }
            u = str;
            s_v = jArr[0] & 255;
            t_v = jArr[1];
        }
        return .equals(str) ? jArr : new long[]{0, 0, 0, 0};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(final dev.duo.workspaceprobe.b bVar, final View view) {
        if (v.put(view, Boolean.TRUE) != null) {
            return;
        }
        view.getViewTreeObserver().addOnDrawListener(new ViewTreeObserver.OnDrawListener() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda4
            @Override // android.view.ViewTreeObserver.OnDrawListener
            public final void onDraw() {
                t_v.c(dev.duo.workspaceprobe.b.this, view);
            }
        });
        view.addOnAttachStateChangeListener(new c(bVar));
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: dev.duo.hookprobe.t$$ExternalSyntheticLambda5
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                t_v.a(dev.duo.workspaceprobe.b.this, view2, i2, i3, i4, i5, i6, i7, i8, i9);
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
            boolean z = ((width == i2 && height == l) || (height == i2 && width == l)) && d(bVar) && (i2 == 2364 || l == 2364) == .equals(n);
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
            obtain.writeInterfaceToken();
            obtain.writeInt(i2);
            obtain.writeInt(i3);
            obtain.writeLong(j2);
            a(obtain, );
        }
    }

    private static void b(dev.duo.workspaceprobe.b bVar) {
        float[] C = bVar.C();
        if (e || C == null || Arrays.equals(C, w)) {
            return;
        }
        w = C;
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken();
        obtain.writeInt(11);
        obtain.writeFloatArray(C);
        a(obtain, );
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
            Log.e(, , e2);
        }
    }
}
