package dev.duo.fold;

import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.view.Surface;
import android.view.SurfaceControl;
import dev.duo.fold.DisplayControlBinder;

/* renamed from: dev.duo.fold.e */
/* loaded from: classes.dex */
final class DisplayControlBinder {

    /* renamed from: c */
    static final String f667c = "dev.duo.foldanim1.CONTROL";

    /* renamed from: d */
    static final int f668d = 13693511;

    /* renamed from: e */
    static final int f669e = 2;

    /* renamed from: f */
    static final String f670f = "local:4639175402683733248";

    /* renamed from: g */
    static final String f671g = "local:4639175068132267009";

    /* renamed from: a */
    final IBinder f672a;

    /* renamed from: b */
    final Binder f673b;

    /* renamed from: dev.duo.fold.e$a */
    class a extends Binder {

        /* renamed from: a */
        final /* synthetic */ Handler f674a;

        /* renamed from: b */
        final /* synthetic */ b f675b;

        a(Handler handler, b bVar) {
            this.f674a = handler;
            this.f675b = bVar;
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
            Handler handler = this.f674a;
            final b bVar = this.f675b;
            handler.post(new Runnable() { // from class: dev.duo.fold.e$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DisplayControlBinder.b.this.mo627a(i, readLong, readLong2);
                }
            });
            return true;
        }
    }

    /* renamed from: dev.duo.fold.e$b */
    interface b {
        /* renamed from: a */
        void mo627a(int i, long j, long j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.fold.e$c */
    interface c {
        /* renamed from: a */
        void mo685a(Parcel parcel);
    }

    DisplayControlBinder(Handler handler, b bVar) throws Exception {
        this.f673b = new a(handler, bVar);
        IBinder iBinder = (IBinder) Class.forName("android.os.ServiceManager").getDeclaredMethod("getService", String.class).invoke(null, "display");
        this.f672a = iBinder;
        if (iBinder == null) {
            throw new IllegalStateException("display service missing");
        }
    }

    /* renamed from: a */
    private Parcel m662a(int i, c cVar) throws Exception {
        Parcel obtain = Parcel.obtain();
        obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(f667c);
            obtain.writeInt(i);
            if (cVar != null) {
                cVar.mo685a(obtain);
            }
            if (!this.f672a.transact(f668d, obtain, obtain, 0)) {
                throw new IllegalStateException("transaction not handled");
            }
            obtain.setDataPosition(0);
            obtain.readException();
            return obtain;
        } catch (Exception e) {
            throw e;
        } finally {
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m671b(long j, Parcel parcel) {
        parcel.writeStrongBinder(this.f673b);
        parcel.writeLong(j);
    }

    /* renamed from: b */
    int m683b(final long j) throws Exception {
        Parcel m662a = m662a(2, new c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda7
            @Override // dev.duo.fold.DisplayControlBinder.c
            /* renamed from: a */
            public final void mo685a(Parcel parcel) {
                DisplayControlBinder.this.m671b(j, parcel);
            }
        });
        try {
            return m662a.readInt();
        } finally {
            m662a.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m672b(String str, Parcel parcel) {
        parcel.writeStrongBinder(this.f673b);
        parcel.writeString(str);
    }

    /* renamed from: b */
    int m684b(final String str) throws Exception {
        Parcel m662a = m662a(3, new c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda8
            @Override // dev.duo.fold.DisplayControlBinder.c
            /* renamed from: a */
            public final void mo685a(Parcel parcel) {
                DisplayControlBinder.this.m672b(str, parcel);
            }
        });
        try {
            return m662a.readInt();
        } finally {
            m662a.recycle();
        }
    }

    /* renamed from: a */
    int[] m681a() throws Exception {
        Parcel m662a = m662a(0, (c) null);
        try {
            int readInt = m662a.readInt();
            if (readInt < 0) {
                return new int[]{0, 0, 0};
            }
            return new int[]{readInt, m662a.readInt(), m662a.readInt()};
        } finally {
            m662a.recycle();
        }
    }

    /* renamed from: a */
    boolean m678a(final String str, final int i, final int i2, final boolean z, final String str2, final long j, final int i3, final int i4, final int i5) throws Exception {
        Parcel m662a = m662a(1, new c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda1
            @Override // dev.duo.fold.DisplayControlBinder.c
            /* renamed from: a */
            public final void mo685a(Parcel parcel) {
                DisplayControlBinder.this.m668a(str, i, i2, z, str2, j, i3, i4, i5, parcel);
            }
        });
        try {
            return m662a.readInt() == 1;
        } finally {
            m662a.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m668a(String str, int i, int i2, boolean z, String str2, long j, int i3, int i4, int i5, Parcel parcel) {
        parcel.writeStrongBinder(this.f673b);
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

    /* renamed from: a */
    int[] m682a(final String str) throws Exception {
        Parcel m662a = m662a(4, new c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda3
            @Override // dev.duo.fold.DisplayControlBinder.c
            /* renamed from: a */
            public final void mo685a(Parcel parcel) {
                parcel.writeString(str);
            }
        });
        try {
            int readInt = m662a.readInt();
            if (readInt != 1) {
                return new int[]{readInt};
            }
            return new int[]{1, m662a.readInt(), m662a.readInt(), m662a.readInt(), m662a.readInt(), m662a.readInt(), m662a.readInt()};
        } finally {
            m662a.recycle();
        }
    }

    /* renamed from: a */
    boolean m679a(boolean z) throws Exception {
        Parcel m662a = m662a(16, (c) null);
        try {
            int readInt = m662a.readInt();
            boolean z2 = false;
            if ((readInt & 192) == 192) {
                if (((readInt & 16) != 0) == z && (readInt & 4) == 0) {
                    z2 = true;
                }
            }
            return z2;
        } finally {
            m662a.recycle();
        }
    }

    /* renamed from: a */
    float[] m680a(int i, int i2) throws Exception {
        Parcel m662a = m662a(12, (c) null);
        try {
            float[] createFloatArray = m662a.createFloatArray();
            if (createFloatArray != null && createFloatArray.length == 6 && createFloatArray[0] == i && createFloatArray[1] == i2) {
                return m670a(createFloatArray);
            }
            return null;
        } finally {
            m662a.recycle();
        }
    }

    /* renamed from: a */
    static float[] m670a(float[] fArr) {
        float f = fArr[0];
        float f2 = f == 2364.0f ? 1182.0f : 0.0f;
        float f3 = f - f2;
        float f4 = (fArr[2] - f2) / f3;
        float f5 = fArr[3];
        float f6 = fArr[1];
        return new float[]{f4, 1.0f - (f5 / f6), 1.0f - (fArr[4] / f6), (fArr[5] - f2) / f3};
    }

    /* renamed from: a */
    void m676a(final long j) throws Exception {
        Parcel m662a = m662a(17, new c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda5
            @Override // dev.duo.fold.DisplayControlBinder.c
            /* renamed from: a */
            public final void mo685a(Parcel parcel) {
                DisplayControlBinder.this.m666a(j, parcel);
            }
        });
        try {
            if (m662a.readInt() == 1) {
            } else {
                throw new IllegalStateException("目标订阅未解除");
            }
        } finally {
            m662a.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m666a(long j, Parcel parcel) {
        parcel.writeStrongBinder(this.f673b);
        parcel.writeLong(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m664a(int i, int i2, int i3, Parcel parcel) {
        parcel.writeStrongBinder(this.f673b);
        parcel.writeInt(i);
        parcel.writeInt(i2);
        parcel.writeInt(i3);
    }

    /* renamed from: a */
    Bundle m673a(final int i, final int i2, final int i3) throws Exception {
        Parcel m662a = m662a(13, new c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda2
            @Override // dev.duo.fold.DisplayControlBinder.c
            /* renamed from: a */
            public final void mo685a(Parcel parcel) {
                DisplayControlBinder.this.m664a(i, i2, i3, parcel);
            }
        });
        try {
            Bundle readBundle = m662a.readBundle(SurfaceControl.class.getClassLoader());
            if (readBundle.getInt("protocol") == 1) {
                return readBundle;
            }
            throw new IllegalStateException("分层协议不匹配");
        } finally {
            m662a.recycle();
        }
    }

    /* renamed from: a */
    void m675a(final int i, final int i2, final int i3, final int i4, final Surface surface, final boolean z) throws Exception {
        Parcel m662a = m662a(5, new c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda0
            @Override // dev.duo.fold.DisplayControlBinder.c
            /* renamed from: a */
            public final void mo685a(Parcel parcel) {
                DisplayControlBinder.this.m663a(i, i2, i3, i4, z, surface, parcel);
            }
        });
        try {
            if (m662a.readInt() == 1) {
            } else {
                throw new IllegalStateException("实时流未建立");
            }
        } finally {
            m662a.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m663a(int i, int i2, int i3, int i4, boolean z, Surface surface, Parcel parcel) {
        parcel.writeStrongBinder(this.f673b);
        parcel.writeInt(i);
        parcel.writeInt(i2);
        parcel.writeInt(i3);
        parcel.writeInt(i4);
        parcel.writeInt(z ? 1 : 0);
        surface.writeToParcel(parcel, 0);
    }

    /* renamed from: a */
    void m674a(final int i) throws Exception {
        Parcel m662a = m662a(6, new c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda6
            @Override // dev.duo.fold.DisplayControlBinder.c
            /* renamed from: a */
            public final void mo685a(Parcel parcel) {
                DisplayControlBinder.this.m665a(i, parcel);
            }
        });
        try {
            if (m662a.readInt() == 1) {
            } else {
                throw new IllegalStateException("实时流未释放");
            }
        } finally {
            m662a.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m665a(int i, Parcel parcel) {
        parcel.writeStrongBinder(this.f673b);
        parcel.writeInt(i);
    }

    /* renamed from: a */
    void m677a(final long j, final String str, final int i, final int i2, final boolean z, final int i3) throws Exception {
        Parcel m662a = m662a(7, new c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda4
            @Override // dev.duo.fold.DisplayControlBinder.c
            /* renamed from: a */
            public final void mo685a(Parcel parcel) {
                DisplayControlBinder.this.m667a(j, str, i, i2, z, i3, parcel);
            }
        });
        try {
            if (m662a.readInt() == 1) {
            } else {
                throw new IllegalStateException("目标门槛未建立");
            }
        } finally {
            m662a.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m667a(long j, String str, int i, int i2, boolean z, int i3, Parcel parcel) {
        parcel.writeStrongBinder(this.f673b);
        parcel.writeLong(j);
        parcel.writeString(str);
        parcel.writeInt(i);
        parcel.writeInt(i2);
        parcel.writeInt(z ? 1 : 0);
        parcel.writeInt(i3);
    }
}
