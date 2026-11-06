package io.github.libxposed.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public interface IXposedScopeCallback extends IInterface {
    public static final String DESCRIPTOR = "io.github.libxposed.service.IXposedScopeCallback";

    void onScopeRequestApproved(List<String> list) throws RemoteException;

    void onScopeRequestFailed(String str) throws RemoteException;

    public static class Default implements IXposedScopeCallback {
        @Override // io.github.libxposed.service.IXposedScopeCallback
        public void onScopeRequestApproved(List<String> approved) throws RemoteException {
        }

        @Override // io.github.libxposed.service.IXposedScopeCallback
        public void onScopeRequestFailed(String message) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IXposedScopeCallback {
        static final int TRANSACTION_onScopeRequestApproved = 2;
        static final int TRANSACTION_onScopeRequestFailed = 3;

        public Stub() {
            attachInterface(this, io.github.libxposed.service.IXposedScopeCallback.DESCRIPTOR);
        }

        public static IXposedScopeCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(io.github.libxposed.service.IXposedScopeCallback.DESCRIPTOR);
            if (iin != null && (iin instanceof IXposedScopeCallback)) {
                return (IXposedScopeCallback) iin;
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
                data.enforceInterface(io.github.libxposed.service.IXposedScopeCallback.DESCRIPTOR);
            }
            switch (code) {
                case 2:
                    List<String> _arg0 = data.createStringArrayList();
                    onScopeRequestApproved(_arg0);
                    return true;
                case 3:
                    String _arg02 = data.readString();
                    onScopeRequestFailed(_arg02);
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static final class Proxy implements IXposedScopeCallback {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public final String getInterfaceDescriptor() {
                return io.github.libxposed.service.IXposedScopeCallback.DESCRIPTOR;
            }

            @Override // io.github.libxposed.service.IXposedScopeCallback
            public void onScopeRequestApproved(List<String> approved) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(io.github.libxposed.service.IXposedScopeCallback.DESCRIPTOR);
                    _data.writeStringList(approved);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // io.github.libxposed.service.IXposedScopeCallback
            public void onScopeRequestFailed(String message) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(io.github.libxposed.service.IXposedScopeCallback.DESCRIPTOR);
                    _data.writeString(message);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }
    }
}
