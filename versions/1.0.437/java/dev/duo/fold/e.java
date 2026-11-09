package dev.duo.fold;

/* loaded from: classes.dex */
final class e {
    static final java.lang.String c = "dev.duo.foldanim1.CONTROL";
    static final int d = 13693511;
    static final int e = 2;
    static final java.lang.String f = "local:4639175402683733248";
    static final java.lang.String g = "local:4639175068132267009";
    final android.os.IBinder a;
    final android.os.Binder b;

    class a extends android.os.Binder {
        final /* synthetic */ android.os.Handler a;
        final /* synthetic */ dev.duo.fold.e.b b;

        a(android.os.Handler handler, dev.duo.fold.e.b bVar) {
            this.a = handler;
            this.b = bVar;
        }

        @Override // android.os.Binder
        protected boolean onTransact(final int i, android.os.Parcel parcel, android.os.Parcel parcel2, int i2) {
            if (i != 1 && i != 2) {
                return false;
            }
            parcel.enforceInterface("dev.duo.foldanim1.FRAME");
            if (android.os.Binder.getCallingUid() != 1000) {
                throw new java.lang.SecurityException("系统提交回调专用");
            }
            final long readLong = parcel.readLong();
            final long readLong2 = parcel.readLong();
            android.os.Handler handler = this.a;
            final dev.duo.fold.e.b bVar = this.b;
            handler.post(new java.lang.Runnable() { // from class: dev.duo.fold.e$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.fold.e.b.this.a(i, readLong, readLong2);
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
        void a(android.os.Parcel parcel);
    }

    e(android.os.Handler handler, dev.duo.fold.e.b bVar) throws java.lang.Exception {
        this.b = new dev.duo.fold.e.a(handler, bVar);
        android.os.IBinder iBinder = (android.os.IBinder) java.lang.Class.forName("android.os.ServiceManager").getDeclaredMethod("getService", java.lang.String.class).invoke(null, "display");
        this.a = iBinder;
        if (iBinder == null) {
            throw new java.lang.IllegalStateException("display service missing");
        }
    }

    private android.os.Parcel a(int i, dev.duo.fold.e.c cVar) throws java.lang.Exception {
        android.os.Parcel obtain = android.os.Parcel.obtain();
        obtain = android.os.Parcel.obtain();
        try {
            obtain.writeInterfaceToken(c);
            obtain.writeInt(i);
            if (cVar != null) {
                cVar.a(obtain);
            }
            if (!this.a.transact(d, obtain, obtain, 0)) {
                throw new java.lang.IllegalStateException("transaction not handled");
            }
            obtain.setDataPosition(0);
            obtain.readException();
            return obtain;
        } catch (java.lang.Exception e2) {
            throw e2;
        } finally {
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(long j, android.os.Parcel parcel) {
        parcel.writeStrongBinder(this.b);
        parcel.writeLong(j);
    }

    int b(final long j) throws java.lang.Exception {
        android.os.Parcel a2 = a(2, new dev.duo.fold.e.c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda7
            @Override // dev.duo.fold.e.c
            public final void a(android.os.Parcel parcel) {
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
    public /* synthetic */ void b(java.lang.String str, android.os.Parcel parcel) {
        parcel.writeStrongBinder(this.b);
        parcel.writeString(str);
    }

    int b(final java.lang.String str) throws java.lang.Exception {
        android.os.Parcel a2 = a(3, new dev.duo.fold.e.c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda8
            @Override // dev.duo.fold.e.c
            public final void a(android.os.Parcel parcel) {
                dev.duo.fold.e.this.b(str, parcel);
            }
        });
        try {
            return a2.readInt();
        } finally {
            a2.recycle();
        }
    }

    int[] a() throws java.lang.Exception {
        android.os.Parcel a2 = a(0, (dev.duo.fold.e.c) null);
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

    boolean a(final java.lang.String str, final int i, final int i2, final boolean z, final java.lang.String str2, final long j, final int i3, final int i4, final int i5) throws java.lang.Exception {
        android.os.Parcel a2 = a(1, new dev.duo.fold.e.c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda1
            @Override // dev.duo.fold.e.c
            public final void a(android.os.Parcel parcel) {
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
    public /* synthetic */ void a(java.lang.String str, int i, int i2, boolean z, java.lang.String str2, long j, int i3, int i4, int i5, android.os.Parcel parcel) {
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

    int[] a(final java.lang.String str) throws java.lang.Exception {
        android.os.Parcel a2 = a(4, new dev.duo.fold.e.c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda3
            @Override // dev.duo.fold.e.c
            public final void a(android.os.Parcel parcel) {
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

    boolean a(boolean z) throws java.lang.Exception {
        android.os.Parcel a2 = a(16, (dev.duo.fold.e.c) null);
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

    float[] a(int i, int i2) throws java.lang.Exception {
        android.os.Parcel a2 = a(12, (dev.duo.fold.e.c) null);
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

    void a(final long j) throws java.lang.Exception {
        android.os.Parcel a2 = a(17, new dev.duo.fold.e.c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda5
            @Override // dev.duo.fold.e.c
            public final void a(android.os.Parcel parcel) {
                dev.duo.fold.e.this.a(j, parcel);
            }
        });
        try {
            if (a2.readInt() == 1) {
            } else {
                throw new java.lang.IllegalStateException("目标订阅未解除");
            }
        } finally {
            a2.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j, android.os.Parcel parcel) {
        parcel.writeStrongBinder(this.b);
        parcel.writeLong(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, int i2, int i3, android.os.Parcel parcel) {
        parcel.writeStrongBinder(this.b);
        parcel.writeInt(i);
        parcel.writeInt(i2);
        parcel.writeInt(i3);
    }

    android.os.Bundle a(final int i, final int i2, final int i3) throws java.lang.Exception {
        android.os.Parcel a2 = a(13, new dev.duo.fold.e.c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda2
            @Override // dev.duo.fold.e.c
            public final void a(android.os.Parcel parcel) {
                dev.duo.fold.e.this.a(i, i2, i3, parcel);
            }
        });
        try {
            android.os.Bundle readBundle = a2.readBundle(android.view.SurfaceControl.class.getClassLoader());
            if (readBundle.getInt("protocol") == 1) {
                return readBundle;
            }
            throw new java.lang.IllegalStateException("分层协议不匹配");
        } finally {
            a2.recycle();
        }
    }

    void a(final int i, final int i2, final int i3, final int i4, final android.view.Surface surface, final boolean z) throws java.lang.Exception {
        android.os.Parcel a2 = a(5, new dev.duo.fold.e.c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda0
            @Override // dev.duo.fold.e.c
            public final void a(android.os.Parcel parcel) {
                dev.duo.fold.e.this.a(i, i2, i3, i4, z, surface, parcel);
            }
        });
        try {
            if (a2.readInt() == 1) {
            } else {
                throw new java.lang.IllegalStateException("实时流未建立");
            }
        } finally {
            a2.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, int i2, int i3, int i4, boolean z, android.view.Surface surface, android.os.Parcel parcel) {
        parcel.writeStrongBinder(this.b);
        parcel.writeInt(i);
        parcel.writeInt(i2);
        parcel.writeInt(i3);
        parcel.writeInt(i4);
        parcel.writeInt(z ? 1 : 0);
        surface.writeToParcel(parcel, 0);
    }

    void a(final int i) throws java.lang.Exception {
        android.os.Parcel a2 = a(6, new dev.duo.fold.e.c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda6
            @Override // dev.duo.fold.e.c
            public final void a(android.os.Parcel parcel) {
                dev.duo.fold.e.this.a(i, parcel);
            }
        });
        try {
            if (a2.readInt() == 1) {
            } else {
                throw new java.lang.IllegalStateException("实时流未释放");
            }
        } finally {
            a2.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, android.os.Parcel parcel) {
        parcel.writeStrongBinder(this.b);
        parcel.writeInt(i);
    }

    void a(final long j, final java.lang.String str, final int i, final int i2, final boolean z, final int i3) throws java.lang.Exception {
        android.os.Parcel a2 = a(7, new dev.duo.fold.e.c() { // from class: dev.duo.fold.e$$ExternalSyntheticLambda4
            @Override // dev.duo.fold.e.c
            public final void a(android.os.Parcel parcel) {
                dev.duo.fold.e.this.a(j, str, i, i2, z, i3, parcel);
            }
        });
        try {
            if (a2.readInt() == 1) {
            } else {
                throw new java.lang.IllegalStateException("目标门槛未建立");
            }
        } finally {
            a2.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j, java.lang.String str, int i, int i2, boolean z, int i3, android.os.Parcel parcel) {
        parcel.writeStrongBinder(this.b);
        parcel.writeLong(j);
        parcel.writeString(str);
        parcel.writeInt(i);
        parcel.writeInt(i2);
        parcel.writeInt(z ? 1 : 0);
        parcel.writeInt(i3);
    }
}
