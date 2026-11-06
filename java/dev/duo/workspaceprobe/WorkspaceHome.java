package dev.duo.workspaceprobe;

import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.HardwareBuffer;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.util.Log;

/* loaded from: classes.dex */
public final class WorkspaceHome {
    private static final String LAUNCHER = "com.android.systemui.shared.recents.ILauncherProxy";
    private static final String RECEIPT = "dev.duo.workspaceprobe.IWorkbenchFrameReceipt";
    private static final int TRANSACTION_FRAME = 4457009;
    private static boolean loaded;

    /* renamed from: dev.duo.workspaceprobe.WorkspaceHome$a */
    private static final class BinderC0141a extends Binder {

        /* renamed from: a */
        final int f1973a;

        /* renamed from: b */
        final long f1974b;

        /* renamed from: c */
        final long f1975c;

        /* renamed from: d */
        final ResultReceiver f1976d;

        /* renamed from: e */
        boolean f1977e;

        BinderC0141a(int i, long j, long j2, ResultReceiver resultReceiver) {
            this.f1973a = i;
            this.f1974b = j;
            this.f1975c = j2;
            this.f1976d = resultReceiver;
            attachInterface(null, WorkspaceHome.RECEIPT);
        }

        /* renamed from: a */
        synchronized void m2133a(int i, long j) {
            if (i == 0) {
                try {
                    if (this.f1977e) {
                        return;
                    }
                } finally {
                }
            }
            if (i == 1) {
                if (!this.f1977e) {
                    this.f1977e = true;
                }
                return;
            }
            String str = i == 0 ? "waiting engine" : i == 1 ? "registered" : i == 2 ? "texture layer added" : i == 3 ? "raster acquired buffer" : i == 4 ? "producer released" : "native frame error";
            Log.i("DuoWorkbenchHome", "frame epoch=" + this.f1974b + " frame=" + this.f1975c + " code=" + i + " texture=" + j + " " + str);
            Bundle bundle = new Bundle();
            bundle.putLong("epoch", this.f1974b);
            bundle.putLong("frame", this.f1975c);
            bundle.putLong("textureId", j);
            bundle.putString("reason", str);
            this.f1976d.send(i, bundle);
        }

        @Override // android.os.Binder
        protected boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            if (Binder.getCallingUid() != this.f1973a) {
                throw new SecurityException("workbench receipt uid");
            }
            parcel.enforceInterface(WorkspaceHome.RECEIPT);
            long readLong = parcel.readLong();
            long readLong2 = parcel.readLong();
            long readLong3 = parcel.readLong();
            int readInt = parcel.readInt();
            parcel.enforceNoDataAvail();
            if (readLong == this.f1974b && readLong2 == this.f1975c) {
                m2133a(readInt, readLong3);
            }
            return true;
        }
    }

    public static int clear(IBinder iBinder, long j, long j2) throws RemoteException {
        if (iBinder == null) {
            throw new IllegalArgumentException("launcherProxy");
        }
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            writeHeader(obtain, 2, j, j2);
            if (!iBinder.transact(TRANSACTION_FRAME, obtain, obtain2, 0)) {
                throw new RemoteException("Home workbench Binder clear unavailable");
            }
            int readInt = obtain2.readInt();
            obtain2.readLong();
            Log.i("DuoWorkbenchHome", "clear epoch=" + j + " frame=" + j2 + " code=" + readInt);
            return readInt;
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    private static synchronized void load() {
        synchronized (WorkspaceHome.class) {
            if (loaded) {
                return;
            }
            System.loadLibrary("duoworkspace");
            loaded = true;
        }
    }

    private static native int nativeWriteBuffer(Parcel parcel, HardwareBuffer hardwareBuffer);

    public static void preload() {
        load();
    }

    public static int publish(Context context, IBinder iBinder, long j, long j2, int[] iArr, int i, HardwareBuffer hardwareBuffer, int i2, int i3, int i4, ResultReceiver resultReceiver) throws RemoteException {
        if (iBinder == null || hardwareBuffer == null || resultReceiver == null || iArr == null || iArr.length < 1 || iArr.length > 5) {
            throw new IllegalArgumentException("workbench frame");
        }
        try {
            int i5 = context.getPackageManager().getApplicationInfo("com.miui.home", 0).uid;
            load();
            BinderC0141a binderC0141a = new BinderC0141a(i5, j, j2, resultReceiver);
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
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
                obtain.writeStrongBinder(binderC0141a);
                int nativeWriteBuffer = nativeWriteBuffer(obtain, hardwareBuffer);
                if (nativeWriteBuffer != 0) {
                    throw new IllegalStateException("AHB Parcel write status=" + nativeWriteBuffer);
                }
                if (!iBinder.transact(TRANSACTION_FRAME, obtain, obtain2, 0)) {
                    throw new RemoteException("Home workbench Binder transaction unavailable");
                }
                int readInt = obtain2.readInt();
                binderC0141a.m2133a(readInt, obtain2.readLong());
                return readInt;
            } finally {
                obtain.recycle();
                obtain2.recycle();
            }
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalStateException("Home uid unavailable", e);
        }
    }

    private static void writeHeader(Parcel parcel, int i, long j, long j2) {
        parcel.writeInterfaceToken(LAUNCHER);
        parcel.writeInt(1);
        parcel.writeInt(i);
        parcel.writeLong(j);
        parcel.writeLong(j2);
    }
}
