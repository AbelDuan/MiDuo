package io.github.libxposed.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IHotReloadCallback extends IInterface {
    public static final String DESCRIPTOR = "io.github.libxposed.service.IHotReloadCallback";

    void onHotReloadResult(int i, String str) throws RemoteException;

    public static class Default implements IHotReloadCallback {
        @Override // io.github.libxposed.service.IHotReloadCallback
        public void onHotReloadResult(int status, String message) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IHotReloadCallback {
        static final int TRANSACTION_onHotReloadResult = 2;

        public Stub() {
            attachInterface(this, IHotReloadCallback.DESCRIPTOR);
        }

        public static IHotReloadCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IHotReloadCallback.DESCRIPTOR);
            if (iin != null && (iin instanceof IHotReloadCallback)) {
                return (IHotReloadCallback) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code >= 1 && code <= 16777215) {
                data.enforceInterface(IHotReloadCallback.DESCRIPTOR);
            }
            switch (code) {
                case 2:
                    int _arg0 = data.readInt();
                    String _arg1 = data.readString();
                    onHotReloadResult(_arg0, _arg1);
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static final class Proxy implements IHotReloadCallback {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public final String getInterfaceDescriptor() {
                return IHotReloadCallback.DESCRIPTOR;
            }

            @Override // io.github.libxposed.service.IHotReloadCallback
            public void onHotReloadResult(int status, String message) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IHotReloadCallback.DESCRIPTOR);
                    _data.writeInt(status);
                    _data.writeString(message);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }
    }
}
