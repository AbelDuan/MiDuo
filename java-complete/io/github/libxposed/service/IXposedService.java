package io.github.libxposed.service;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.RemoteException;
import io.github.libxposed.service.IHotReloadCallback;
import io.github.libxposed.service.IXposedScopeCallback;
import java.util.List;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public interface IXposedService extends IInterface {
    public static final int API_101 = 101;
    public static final int API_102 = 102;
    public static final String AUTHORITY_SUFFIX = ".XposedService";
    public static final String DESCRIPTOR = "io.github.libxposed.service.IXposedService";
    public static final int HOT_RELOAD_FAILED = 1;
    public static final int HOT_RELOAD_IN_PROGRESS = 3;
    public static final int HOT_RELOAD_PROCESS_DIED = 4;
    public static final int HOT_RELOAD_SUCCEEDED = 0;
    public static final int HOT_RELOAD_UNSUPPORTED = 2;
    public static final int LIB_API = 102;
    public static final long PROP_CAP_REMOTE = 2;
    public static final long PROP_CAP_SYSTEM = 1;
    public static final long PROP_RT_API_PROTECTION = 4;
    public static final String SEND_BINDER = "SendBinder";

    boolean deleteRemoteFile(String str) throws RemoteException;

    void deleteRemotePreferences(String str) throws RemoteException;

    int getApiVersion() throws RemoteException;

    String getFrameworkName() throws RemoteException;

    long getFrameworkProperties() throws RemoteException;

    String getFrameworkVersion() throws RemoteException;

    long getFrameworkVersionCode() throws RemoteException;

    List<HookedProcess> getRunningTargets() throws RemoteException;

    List<String> getScope() throws RemoteException;

    void hotReloadModule(long j, Bundle bundle, IHotReloadCallback iHotReloadCallback) throws RemoteException;

    String[] listRemoteFiles() throws RemoteException;

    ParcelFileDescriptor openRemoteFile(String str) throws RemoteException;

    void removeScope(List<String> list) throws RemoteException;

    Bundle requestRemotePreferences(String str) throws RemoteException;

    void requestScope(List<String> list, IXposedScopeCallback iXposedScopeCallback) throws RemoteException;

    void updateRemotePreferences(String str, Bundle bundle) throws RemoteException;

    public static class Default implements IXposedService {
        @Override // io.github.libxposed.service.IXposedService
        public int getApiVersion() throws RemoteException {
            return 0;
        }

        @Override // io.github.libxposed.service.IXposedService
        public String getFrameworkName() throws RemoteException {
            return null;
        }

        @Override // io.github.libxposed.service.IXposedService
        public String getFrameworkVersion() throws RemoteException {
            return null;
        }

        @Override // io.github.libxposed.service.IXposedService
        public long getFrameworkVersionCode() throws RemoteException {
            return 0L;
        }

        @Override // io.github.libxposed.service.IXposedService
        public long getFrameworkProperties() throws RemoteException {
            return 0L;
        }

        @Override // io.github.libxposed.service.IXposedService
        public List<String> getScope() throws RemoteException {
            return null;
        }

        @Override // io.github.libxposed.service.IXposedService
        public void requestScope(List<String> packages, IXposedScopeCallback callback) throws RemoteException {
        }

        @Override // io.github.libxposed.service.IXposedService
        public void removeScope(List<String> packages) throws RemoteException {
        }

        @Override // io.github.libxposed.service.IXposedService
        public List<HookedProcess> getRunningTargets() throws RemoteException {
            return null;
        }

        @Override // io.github.libxposed.service.IXposedService
        public void hotReloadModule(long targetId, Bundle data, IHotReloadCallback callback) throws RemoteException {
        }

        @Override // io.github.libxposed.service.IXposedService
        public Bundle requestRemotePreferences(String group) throws RemoteException {
            return null;
        }

        @Override // io.github.libxposed.service.IXposedService
        public void updateRemotePreferences(String group, Bundle diff) throws RemoteException {
        }

        @Override // io.github.libxposed.service.IXposedService
        public void deleteRemotePreferences(String group) throws RemoteException {
        }

        @Override // io.github.libxposed.service.IXposedService
        public String[] listRemoteFiles() throws RemoteException {
            return null;
        }

        @Override // io.github.libxposed.service.IXposedService
        public ParcelFileDescriptor openRemoteFile(String name) throws RemoteException {
            return null;
        }

        @Override // io.github.libxposed.service.IXposedService
        public boolean deleteRemoteFile(String name) throws RemoteException {
            return false;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IXposedService {
        static final int TRANSACTION_deleteRemoteFile = 33;
        static final int TRANSACTION_deleteRemotePreferences = 23;
        static final int TRANSACTION_getApiVersion = 2;
        static final int TRANSACTION_getFrameworkName = 3;
        static final int TRANSACTION_getFrameworkProperties = 6;
        static final int TRANSACTION_getFrameworkVersion = 4;
        static final int TRANSACTION_getFrameworkVersionCode = 5;
        static final int TRANSACTION_getRunningTargets = 14;
        static final int TRANSACTION_getScope = 11;
        static final int TRANSACTION_hotReloadModule = 15;
        static final int TRANSACTION_listRemoteFiles = 31;
        static final int TRANSACTION_openRemoteFile = 32;
        static final int TRANSACTION_removeScope = 13;
        static final int TRANSACTION_requestRemotePreferences = 21;
        static final int TRANSACTION_requestScope = 12;
        static final int TRANSACTION_updateRemotePreferences = 22;

        public Stub() {
            attachInterface(this, io.github.libxposed.service.IXposedService.DESCRIPTOR);
        }

        public static IXposedService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(io.github.libxposed.service.IXposedService.DESCRIPTOR);
            if (iin != null && (iin instanceof IXposedService)) {
                return (IXposedService) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(io.github.libxposed.service.IXposedService.DESCRIPTOR);
            }
            switch (i) {
                case 2:
                    int apiVersion = getApiVersion();
                    parcel2.writeNoException();
                    parcel2.writeInt(apiVersion);
                    return true;
                case 3:
                    String frameworkName = getFrameworkName();
                    parcel2.writeNoException();
                    parcel2.writeString(frameworkName);
                    return true;
                case 4:
                    String frameworkVersion = getFrameworkVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(frameworkVersion);
                    return true;
                case 5:
                    long frameworkVersionCode = getFrameworkVersionCode();
                    parcel2.writeNoException();
                    parcel2.writeLong(frameworkVersionCode);
                    return true;
                case 6:
                    long frameworkProperties = getFrameworkProperties();
                    parcel2.writeNoException();
                    parcel2.writeLong(frameworkProperties);
                    return true;
                case 11:
                    List<String> scope = getScope();
                    parcel2.writeNoException();
                    parcel2.writeStringList(scope);
                    return true;
                case 12:
                    requestScope(parcel.createStringArrayList(), io.github.libxposed.service.IXposedScopeCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case TRANSACTION_removeScope /* 13 */:
                    removeScope(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case TRANSACTION_getRunningTargets /* 14 */:
                    List<HookedProcess> runningTargets = getRunningTargets();
                    parcel2.writeNoException();
                    _Parcel.writeTypedList(parcel2, runningTargets, 1);
                    return true;
                case TRANSACTION_hotReloadModule /* 15 */:
                    hotReloadModule(parcel.readLong(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR), io.github.libxposed.service.IHotReloadCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case TRANSACTION_requestRemotePreferences /* 21 */:
                    Bundle requestRemotePreferences = requestRemotePreferences(parcel.readString());
                    parcel2.writeNoException();
                    _Parcel.writeTypedObject(parcel2, requestRemotePreferences, 1);
                    return true;
                case TRANSACTION_updateRemotePreferences /* 22 */:
                    updateRemotePreferences(parcel.readString(), (Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case TRANSACTION_deleteRemotePreferences /* 23 */:
                    deleteRemotePreferences(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case TRANSACTION_listRemoteFiles /* 31 */:
                    String[] listRemoteFiles = listRemoteFiles();
                    parcel2.writeNoException();
                    parcel2.writeStringArray(listRemoteFiles);
                    return true;
                case TRANSACTION_openRemoteFile /* 32 */:
                    ParcelFileDescriptor openRemoteFile = openRemoteFile(parcel.readString());
                    parcel2.writeNoException();
                    _Parcel.writeTypedObject(parcel2, openRemoteFile, 1);
                    return true;
                case TRANSACTION_deleteRemoteFile /* 33 */:
                    boolean deleteRemoteFile = deleteRemoteFile(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(deleteRemoteFile ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static final class Proxy implements IXposedService {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public final String getInterfaceDescriptor() {
                return io.github.libxposed.service.IXposedService.DESCRIPTOR;
            }

            @Override // io.github.libxposed.service.IXposedService
            public int getApiVersion() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(io.github.libxposed.service.IXposedService.DESCRIPTOR);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // io.github.libxposed.service.IXposedService
            public String getFrameworkName() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(io.github.libxposed.service.IXposedService.DESCRIPTOR);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // io.github.libxposed.service.IXposedService
            public String getFrameworkVersion() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(io.github.libxposed.service.IXposedService.DESCRIPTOR);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // io.github.libxposed.service.IXposedService
            public long getFrameworkVersionCode() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(io.github.libxposed.service.IXposedService.DESCRIPTOR);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    long _result = _reply.readLong();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // io.github.libxposed.service.IXposedService
            public long getFrameworkProperties() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(io.github.libxposed.service.IXposedService.DESCRIPTOR);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                    long _result = _reply.readLong();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // io.github.libxposed.service.IXposedService
            public List<String> getScope() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(io.github.libxposed.service.IXposedService.DESCRIPTOR);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                    List<String> _result = _reply.createStringArrayList();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // io.github.libxposed.service.IXposedService
            public void requestScope(List<String> packages, IXposedScopeCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(io.github.libxposed.service.IXposedService.DESCRIPTOR);
                    _data.writeStringList(packages);
                    _data.writeStrongInterface(callback);
                    this.mRemote.transact(12, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // io.github.libxposed.service.IXposedService
            public void removeScope(List<String> packages) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(io.github.libxposed.service.IXposedService.DESCRIPTOR);
                    _data.writeStringList(packages);
                    this.mRemote.transact(Stub.TRANSACTION_removeScope, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // io.github.libxposed.service.IXposedService
            public List<HookedProcess> getRunningTargets() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(io.github.libxposed.service.IXposedService.DESCRIPTOR);
                    this.mRemote.transact(Stub.TRANSACTION_getRunningTargets, _data, _reply, 0);
                    _reply.readException();
                    List<HookedProcess> _result = _reply.createTypedArrayList(io.github.libxposed.service.HookedProcess.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // io.github.libxposed.service.IXposedService
            public void hotReloadModule(long targetId, Bundle data, IHotReloadCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(io.github.libxposed.service.IXposedService.DESCRIPTOR);
                    _data.writeLong(targetId);
                    _Parcel.writeTypedObject(_data, data, 0);
                    _data.writeStrongInterface(callback);
                    this.mRemote.transact(Stub.TRANSACTION_hotReloadModule, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // io.github.libxposed.service.IXposedService
            public Bundle requestRemotePreferences(String group) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(io.github.libxposed.service.IXposedService.DESCRIPTOR);
                    _data.writeString(group);
                    this.mRemote.transact(Stub.TRANSACTION_requestRemotePreferences, _data, _reply, 0);
                    _reply.readException();
                    Bundle _result = (Bundle) _Parcel.readTypedObject(_reply, Bundle.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // io.github.libxposed.service.IXposedService
            public void updateRemotePreferences(String group, Bundle diff) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(io.github.libxposed.service.IXposedService.DESCRIPTOR);
                    _data.writeString(group);
                    _Parcel.writeTypedObject(_data, diff, 0);
                    this.mRemote.transact(Stub.TRANSACTION_updateRemotePreferences, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // io.github.libxposed.service.IXposedService
            public void deleteRemotePreferences(String group) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(io.github.libxposed.service.IXposedService.DESCRIPTOR);
                    _data.writeString(group);
                    this.mRemote.transact(Stub.TRANSACTION_deleteRemotePreferences, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // io.github.libxposed.service.IXposedService
            public String[] listRemoteFiles() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(io.github.libxposed.service.IXposedService.DESCRIPTOR);
                    this.mRemote.transact(Stub.TRANSACTION_listRemoteFiles, _data, _reply, 0);
                    _reply.readException();
                    String[] _result = _reply.createStringArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // io.github.libxposed.service.IXposedService
            public ParcelFileDescriptor openRemoteFile(String name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(io.github.libxposed.service.IXposedService.DESCRIPTOR);
                    _data.writeString(name);
                    this.mRemote.transact(Stub.TRANSACTION_openRemoteFile, _data, _reply, 0);
                    _reply.readException();
                    ParcelFileDescriptor _result = (ParcelFileDescriptor) _Parcel.readTypedObject(_reply, ParcelFileDescriptor.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // io.github.libxposed.service.IXposedService
            public boolean deleteRemoteFile(String name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(io.github.libxposed.service.IXposedService.DESCRIPTOR);
                    _data.writeString(name);
                    this.mRemote.transact(Stub.TRANSACTION_deleteRemoteFile, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readInt() != 0;
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }

    public static class _Parcel {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T readTypedObject(Parcel parcel, Parcelable.Creator<T> c) {
            if (parcel.readInt() != 0) {
                return c.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void writeTypedObject(Parcel parcel, T value, int parcelableFlags) {
            if (value != null) {
                parcel.writeInt(1);
                value.writeToParcel(parcel, parcelableFlags);
            } else {
                parcel.writeInt(0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void writeTypedList(Parcel parcel, List<T> value, int parcelableFlags) {
            if (value == null) {
                parcel.writeInt(-1);
                return;
            }
            int N = value.size();
            parcel.writeInt(N);
            for (int i = 0; i < N; i++) {
                writeTypedObject(parcel, value.get(i), parcelableFlags);
            }
        }
    }
}
