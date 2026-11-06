package dev.duo.fold;

import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.view.Surface;
import android.view.SurfaceControl;
import dev.duo.fold.e;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class e {
    static final String c = "dev.duo.foldanim1.CONTROL";
    static final int d = 13693511;
    static final int e = 2;
    static final String f = "local:4639175402683733248";
    static final String g = "local:4639175068132267009";
    final IBinder a;
    final Binder b;

    class a extends Binder {
        final /* synthetic */ Handler a;
        final /* synthetic */ b b;

        a(Handler handler, b bVar) {
            this.a = handler;
            this.b = bVar;
        }

        @Override // android.os.Binder
        protected boolean onTransact(final int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i != 1 && i != 2) {
                return false;
            }
            parcel.enforceInterface("dev.duo.foldanim1.FRAME");
            if (Binder.getCallingUid() != 1000) {
                throw new SecurityException("系统提交回调专用");
            }
            final long readLong = parcel.readLong();
            final long readLong2 = parcel.readLong();
            Handler handler = this.a;
            final b bVar = this.b;
            handler.post(new Runnable() { // from class: dev.duo.fold.e$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    bVar.a(i, readLong, readLong2);
                }
            });
            return true;
        }
    }

    interface b {
        void a(int i, long j, long j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface c {
        void a(Parcel parcel);
    }

    e(Handler handler, b bVar) throws Exception {
        this.b = new a(handler, bVar);
        IBinder iBinder = (IBinder) Class.forName("android.os.ServiceManager").getDeclaredMethod("getService", String.class).invoke(null, "display");
        this.a = iBinder;
        if (iBinder == null) {
            throw new IllegalStateException("display service missing");
        }
    }

    private Parcel a(int i, c cVar) throws Exception {
        Parcel obtain = Parcel.obtain();
        obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(c);
            obtain.writeInt(i);
            if (cVar != null) {
                cVar.a(obtain);
            }
            if (!this.a.transact(d, obtain, obtain, 0)) {
                throw new IllegalStateException("transaction not handled");
            }
            obtain.setDataPosition(0);
            obtain.readException();
            return obtain;
        } catch (Exception e2) {
            throw e2;
        } finally {
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(long j, Parcel parcel) {
        parcel.writeStrongBinder(this.b);
        parcel.writeLong(j);
    }

    int b(final long j) throws Exception {
        Parcel a2 = a(2, new c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda7
            @Override // dev.duo.fold.e.c
            public final void a(Parcel parcel) {
                dev.duo.fold.e.this.b(j, parcel);
            }
        });
        try {
            return a2.readInt();
        } finally {
            a2.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str, Parcel parcel) {
        parcel.writeStrongBinder(this.b);
        parcel.writeString(str);
    }

    int b(final String str) throws Exception {
        Parcel a2 = a(3, new c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda8
            @Override // dev.duo.fold.e.c
            public final void a(Parcel parcel) {
                dev.duo.fold.e.this.b(str, parcel);
            }
        });
        try {
            return a2.readInt();
        } finally {
            a2.recycle();
        }
    }

    int[] a() throws Exception {
        Parcel a2 = a(0, (c) null);
        try {
            int readInt = a2.readInt();
            if (readInt < 0) {
                return new int[]{0, 0, 0};
            }
            return new int[]{readInt, a2.readInt(), a2.readInt()};
        } finally {
            a2.recycle();
        }
    }

    boolean a(final String str, final int i, final int i2, final boolean z, final String str2, final long j, final int i3, final int i4, final int i5) throws Exception {
        Parcel a2 = a(1, new c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda1
            @Override // dev.duo.fold.e.c
            public final void a(Parcel parcel) {
                dev.duo.fold.e.this.a(str, i, i2, z, str2, j, i3, i4, i5, parcel);
            }
        });
        try {
            return a2.readInt() == 1;
        } finally {
            a2.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, int i, int i2, boolean z, String str2, long j, int i3, int i4, int i5, Parcel parcel) {
        parcel.writeStrongBinder(this.b);
        parcel.writeString(str);
        parcel.writeInt(i);
        parcel.writeInt(i2);
        parcel.writeInt(z ? 1 : 0);
        parcel.writeString(str2);
        parcel.writeLong(j);
        if (i3 >= 0) {
            parcel.writeInt(i3);
            parcel.writeInt(i4);
            parcel.writeInt(i5);
        }
    }

    int[] a(final String str) throws Exception {
        Parcel a2 = a(4, new c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda3
            @Override // dev.duo.fold.e.c
            public final void a(Parcel parcel) {
                parcel.writeString(str);
            }
        });
        try {
            int readInt = a2.readInt();
            if (readInt != 1) {
                return new int[]{readInt};
            }
            return new int[]{1, a2.readInt(), a2.readInt(), a2.readInt(), a2.readInt(), a2.readInt(), a2.readInt()};
        } finally {
            a2.recycle();
        }
    }

    boolean a(boolean z) throws Exception {
        Parcel a2 = a(16, (c) null);
        try {
            int readInt = a2.readInt();
            boolean z2 = false;
            if ((readInt & 192) == 192) {
                if (((readInt & 16) != 0) == z && (readInt & 4) == 0) {
                    z2 = true;
                }
            }
            return z2;
        } finally {
            a2.recycle();
        }
    }

    float[] a(int i, int i2) throws Exception {
        Parcel a2 = a(12, (c) null);
        try {
            float[] createFloatArray = a2.createFloatArray();
            if (createFloatArray != null && createFloatArray.length == 6 && createFloatArray[0] == i && createFloatArray[1] == i2) {
                return a(createFloatArray);
            }
            return null;
        } finally {
            a2.recycle();
        }
    }

    static float[] a(float[] fArr) {
        float f2 = fArr[0];
        float f3 = f2 == 2364.0f ? 1182.0f : 0.0f;
        float f4 = f2 - f3;
        float f5 = (fArr[2] - f3) / f4;
        float f6 = fArr[3];
        float f7 = fArr[1];
        return new float[]{f5, 1.0f - (f6 / f7), 1.0f - (fArr[4] / f7), (fArr[5] - f3) / f4};
    }

    void a(final long j) throws Exception {
        Parcel a2 = a(17, new c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda5
            @Override // dev.duo.fold.e.c
            public final void a(Parcel parcel) {
                dev.duo.fold.e.this.a(j, parcel);
            }
        });
        try {
            if (a2.readInt() == 1) {
            } else {
                throw new IllegalStateException("目标订阅未解除");
            }
        } finally {
            a2.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j, Parcel parcel) {
        parcel.writeStrongBinder(this.b);
        parcel.writeLong(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, int i2, int i3, Parcel parcel) {
        parcel.writeStrongBinder(this.b);
        parcel.writeInt(i);
        parcel.writeInt(i2);
        parcel.writeInt(i3);
    }

    Bundle a(final int i, final int i2, final int i3) throws Exception {
        Parcel a2 = a(13, new c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda2
            @Override // dev.duo.fold.e.c
            public final void a(Parcel parcel) {
                dev.duo.fold.e.this.a(i, i2, i3, parcel);
            }
        });
        try {
            Bundle readBundle = a2.readBundle(SurfaceControl.class.getClassLoader());
            if (readBundle.getInt("protocol") == 1) {
                return readBundle;
            }
            throw new IllegalStateException("分层协议不匹配");
        } finally {
            a2.recycle();
        }
    }

    void a(final int i, final int i2, final int i3, final int i4, final Surface surface, final boolean z) throws Exception {
        Parcel a2 = a(5, new c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda0
            @Override // dev.duo.fold.e.c
            public final void a(Parcel parcel) {
                dev.duo.fold.e.this.a(i, i2, i3, i4, z, surface, parcel);
            }
        });
        try {
            if (a2.readInt() == 1) {
            } else {
                throw new IllegalStateException("实时流未建立");
            }
        } finally {
            a2.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, int i2, int i3, int i4, boolean z, Surface surface, Parcel parcel) {
        parcel.writeStrongBinder(this.b);
        parcel.writeInt(i);
        parcel.writeInt(i2);
        parcel.writeInt(i3);
        parcel.writeInt(i4);
        parcel.writeInt(z ? 1 : 0);
        surface.writeToParcel(parcel, 0);
    }

    void a(final int i) throws Exception {
        Parcel a2 = a(6, new c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda6
            @Override // dev.duo.fold.e.c
            public final void a(Parcel parcel) {
                dev.duo.fold.e.this.a(i, parcel);
            }
        });
        try {
            if (a2.readInt() == 1) {
            } else {
                throw new IllegalStateException("实时流未释放");
            }
        } finally {
            a2.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, Parcel parcel) {
        parcel.writeStrongBinder(this.b);
        parcel.writeInt(i);
    }

    void a(final long j, final String str, final int i, final int i2, final boolean z, final int i3) throws Exception {
        Parcel a2 = a(7, new c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda4
            @Override // dev.duo.fold.e.c
            public final void a(Parcel parcel) {
                dev.duo.fold.e.this.a(j, str, i, i2, z, i3, parcel);
            }
        });
        try {
            if (a2.readInt() == 1) {
            } else {
                throw new IllegalStateException("目标门槛未建立");
            }
        } finally {
            a2.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j, String str, int i, int i2, boolean z, int i3, Parcel parcel) {
        parcel.writeStrongBinder(this.b);
        parcel.writeLong(j);
        parcel.writeString(str);
        parcel.writeInt(i);
        parcel.writeInt(i2);
        parcel.writeInt(z ? 1 : 0);
        parcel.writeInt(i3);
    }
}
