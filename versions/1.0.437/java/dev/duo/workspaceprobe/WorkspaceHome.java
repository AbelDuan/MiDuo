package dev.duo.workspaceprobe;

/* loaded from: classes.dex */
public final class WorkspaceHome {
    private static final java.lang.String LAUNCHER = "com.android.systemui.shared.recents.ILauncherProxy";
    private static final java.lang.String RECEIPT = "dev.duo.workspaceprobe.IWorkbenchFrameReceipt";
    private static final int TRANSACTION_FRAME = 4457009;
    private static boolean loaded;

    private static final class a extends android.os.Binder {
        final int a;
        final long b;
        final long c;
        final android.os.ResultReceiver d;
        boolean e;

        a(int i, long j, long j2, android.os.ResultReceiver resultReceiver) {
            this.a = i;
            this.b = j;
            this.c = j2;
            this.d = resultReceiver;
            attachInterface(null, dev.duo.workspaceprobe.WorkspaceHome.RECEIPT);
        }

        synchronized void a(int i, long j) {
            if (i == 0) {
                try {
                    if (this.e) {
                        return;
                    }
                } finally {
                }
            }
            if (i == 1) {
                if (!this.e) {
                    this.e = true;
                }
                return;
            }
            java.lang.String str = i == 0 ? "waiting engine" : i == 1 ? "registered" : i == 2 ? "texture layer added" : i == 3 ? "raster acquired buffer" : i == 4 ? "producer released" : "native frame error";
            android.util.Log.i("DuoWorkbenchHome", "frame epoch=" + this.b + " frame=" + this.c + " code=" + i + " texture=" + j + " " + str);
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putLong("epoch", this.b);
            bundle.putLong("frame", this.c);
            bundle.putLong("textureId", j);
            bundle.putString("reason", str);
            this.d.send(i, bundle);
        }

        @Override // android.os.Binder
        protected boolean onTransact(int i, android.os.Parcel parcel, android.os.Parcel parcel2, int i2) throws android.os.RemoteException {
            if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            if (android.os.Binder.getCallingUid() != this.a) {
                throw new java.lang.SecurityException("workbench receipt uid");
            }
            parcel.enforceInterface(dev.duo.workspaceprobe.WorkspaceHome.RECEIPT);
            long readLong = parcel.readLong();
            long readLong2 = parcel.readLong();
            long readLong3 = parcel.readLong();
            int readInt = parcel.readInt();
            parcel.enforceNoDataAvail();
            if (readLong == this.b && readLong2 == this.c) {
                a(readInt, readLong3);
            }
            return true;
        }
    }

    public static int clear(android.os.IBinder iBinder, long j, long j2) throws android.os.RemoteException {
        if (iBinder == null) {
            throw new java.lang.IllegalArgumentException("launcherProxy");
        }
        android.os.Parcel obtain = android.os.Parcel.obtain();
        android.os.Parcel obtain2 = android.os.Parcel.obtain();
        try {
            writeHeader(obtain, 2, j, j2);
            if (!iBinder.transact(TRANSACTION_FRAME, obtain, obtain2, 0)) {
                throw new android.os.RemoteException("Home workbench Binder clear unavailable");
            }
            int readInt = obtain2.readInt();
            obtain2.readLong();
            android.util.Log.i("DuoWorkbenchHome", "clear epoch=" + j + " frame=" + j2 + " code=" + readInt);
            return readInt;
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    private static synchronized void load() {
        synchronized (dev.duo.workspaceprobe.WorkspaceHome.class) {
            if (loaded) {
                return;
            }
            java.lang.System.loadLibrary("duoworkspace");
            loaded = true;
        }
    }

    private static native int nativeWriteBuffer(android.os.Parcel parcel, android.hardware.HardwareBuffer hardwareBuffer);

    public static void preload() {
        load();
    }

    public static int publish(android.content.Context context, android.os.IBinder iBinder, long j, long j2, int[] iArr, int i, android.hardware.HardwareBuffer hardwareBuffer, int i2, int i3, int i4, android.os.ResultReceiver resultReceiver) throws android.os.RemoteException {
        if (iBinder == null || hardwareBuffer == null || resultReceiver == null || iArr == null || iArr.length < 1 || iArr.length > 4) {
            throw new java.lang.IllegalArgumentException("workbench frame");
        }
        try {
            int i5 = context.getPackageManager().getApplicationInfo("com.miui.home", 0).uid;
            load();
            dev.duo.workspaceprobe.WorkspaceHome.a aVar = new dev.duo.workspaceprobe.WorkspaceHome.a(i5, j, j2, resultReceiver);
            android.os.Parcel obtain = android.os.Parcel.obtain();
            android.os.Parcel obtain2 = android.os.Parcel.obtain();
            try {
                writeHeader(obtain, 1, j, j2);
                obtain.writeInt(iArr.length);
                for (int i6 : iArr) {
                    obtain.writeInt(i6);
                }
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeInt(i3);
                obtain.writeInt(i4);
                obtain.writeStrongBinder(aVar);
                int nativeWriteBuffer = nativeWriteBuffer(obtain, hardwareBuffer);
                if (nativeWriteBuffer != 0) {
                    throw new java.lang.IllegalStateException("AHB Parcel write status=" + nativeWriteBuffer);
                }
                if (!iBinder.transact(TRANSACTION_FRAME, obtain, obtain2, 0)) {
                    throw new android.os.RemoteException("Home workbench Binder transaction unavailable");
                }
                int readInt = obtain2.readInt();
                aVar.a(readInt, obtain2.readLong());
                return readInt;
            } finally {
                obtain.recycle();
                obtain2.recycle();
            }
        } catch (android.content.pm.PackageManager.NameNotFoundException e) {
            throw new java.lang.IllegalStateException("Home uid unavailable", e);
        }
    }

    private static void writeHeader(android.os.Parcel parcel, int i, long j, long j2) {
        parcel.writeInterfaceToken(LAUNCHER);
        parcel.writeInt(1);
        parcel.writeInt(i);
        parcel.writeLong(j);
        parcel.writeLong(j2);
    }
}
