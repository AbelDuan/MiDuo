package io.github.libxposed.service;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import io.github.libxposed.service.HookedTarget;
import io.github.libxposed.service.IHotReloadCallback;
import io.github.libxposed.service.IXposedScopeCallback;
import io.github.libxposed.service.XposedService;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class XposedService {
    public static final int API_101 = 101;
    public static final int API_102 = 102;
    public static final long PROP_CAP_REMOTE = 2;
    public static final long PROP_CAP_SYSTEM = 1;
    public static final long PROP_RT_API_PROTECTION = 4;
    private final Map<String, RemotePreferences> mRemotePrefs = new HashMap();
    private final IXposedService mService;
    private static final Map<OnScopeEventListener, IXposedScopeCallback> scopeCallbacks = new ConcurrentHashMap();
    private static final Set<IHotReloadCallback> hotReloadCallbacks = ConcurrentHashMap.newKeySet();

    public interface HotReloadCallback {
        void onHotReloadResult(HookedTarget hookedTarget, HotReloadResult hotReloadResult);
    }

    public static final class ServiceException extends RuntimeException {
        ServiceException(String message) {
            super(message);
        }

        ServiceException(RemoteException e) {
            super("Xposed service error", e);
        }
    }

    public interface OnScopeEventListener {
        default void onScopeRequestApproved(List<String> approved) {
        }

        default void onScopeRequestFailed(String message) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        default IXposedScopeCallback asInterface() {
            return (IXposedScopeCallback) io.github.libxposed.service.XposedService.scopeCallbacks.computeIfAbsent(this, new Function() { // from class: io.github.libxposed.service.XposedService$OnScopeEventListener$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    IXposedScopeCallback lambda$asInterface$0;
                    lambda$asInterface$0 = io.github.libxposed.service.XposedService.OnScopeEventListener.this.lambda$asInterface$0((io.github.libxposed.service.XposedService.OnScopeEventListener) obj);
                    return lambda$asInterface$0;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* synthetic */ default IXposedScopeCallback lambda$asInterface$0(final OnScopeEventListener listener) {
            return new io.github.libxposed.service.IXposedScopeCallback.Stub() { // from class: io.github.libxposed.service.XposedService.OnScopeEventListener.1
                @Override // io.github.libxposed.service.IXposedScopeCallback
                public void onScopeRequestApproved(List<String> approved) {
                    listener.onScopeRequestApproved(approved);
                    io.github.libxposed.service.XposedService.scopeCallbacks.remove(listener);
                }

                @Override // io.github.libxposed.service.IXposedScopeCallback
                public void onScopeRequestFailed(String message) {
                    listener.onScopeRequestFailed(message);
                    io.github.libxposed.service.XposedService.scopeCallbacks.remove(listener);
                }
            };
        }
    }

    XposedService(IXposedService service) {
        this.mService = service;
    }

    IXposedService asInterface() {
        return this.mService;
    }

    private void requireApi(int api) {
        if (getApiVersion() < api) {
            throw new UnsupportedOperationException("Requires Xposed service API " + api);
        }
    }

    public int getApiVersion() {
        try {
            return this.mService.getApiVersion();
        } catch (RemoteException e) {
            throw new ServiceException(e);
        }
    }

    public String getFrameworkName() {
        try {
            return this.mService.getFrameworkName();
        } catch (RemoteException e) {
            throw new ServiceException(e);
        }
    }

    public String getFrameworkVersion() {
        try {
            return this.mService.getFrameworkVersion();
        } catch (RemoteException e) {
            throw new ServiceException(e);
        }
    }

    public long getFrameworkVersionCode() {
        try {
            return this.mService.getFrameworkVersionCode();
        } catch (RemoteException e) {
            throw new ServiceException(e);
        }
    }

    public long getFrameworkProperties() {
        try {
            return this.mService.getFrameworkProperties();
        } catch (RemoteException e) {
            throw new ServiceException(e);
        }
    }

    public List<String> getScope() {
        try {
            return this.mService.getScope();
        } catch (RemoteException e) {
            throw new ServiceException(e);
        }
    }

    public void requestScope(List<String> packages, OnScopeEventListener callback) {
        try {
            this.mService.requestScope(packages, callback.asInterface());
        } catch (RemoteException e) {
            throw new ServiceException(e);
        }
    }

    public void removeScope(List<String> packages) {
        try {
            this.mService.removeScope(packages);
        } catch (RemoteException e) {
            throw new ServiceException(e);
        }
    }

    public List<HookedTarget> getRunningTargets() {
        requireApi(102);
        try {
            List<HookedProcess> processes = this.mService.getRunningTargets();
            if (processes == null) {
                throw new ServiceException("Framework returns null");
            }
            ArrayList<HookedTarget> targets = new ArrayList<>(processes.size());
            for (HookedProcess process : processes) {
                if (process == null) {
                    throw new ServiceException("Framework returns null target");
                }
                targets.add(toHookedTarget(process));
            }
            return Collections.unmodifiableList(targets);
        } catch (RemoteException e) {
            throw new ServiceException(e);
        }
    }

    public void hotReloadModule(final HookedTarget target, Bundle data, final HotReloadCallback callback) {
        requireApi(102);
        Objects.requireNonNull(target);
        Objects.requireNonNull(callback);
        io.github.libxposed.service.IHotReloadCallback.Stub stub = new io.github.libxposed.service.IHotReloadCallback.Stub() { // from class: io.github.libxposed.service.XposedService.1
            @Override // io.github.libxposed.service.IHotReloadCallback
            public void onHotReloadResult(int code, String message) {
                try {
                    callback.onHotReloadResult(target, io.github.libxposed.service.HotReloadResult.from(code, message));
                } finally {
                    io.github.libxposed.service.XposedService.hotReloadCallbacks.remove(this);
                }
            }
        };
        hotReloadCallbacks.add(stub);
        try {
            this.mService.hotReloadModule(target.mTargetId, data, stub);
        } catch (RemoteException e) {
            hotReloadCallbacks.remove(stub);
            throw new ServiceException(e);
        } catch (RuntimeException e2) {
            hotReloadCallbacks.remove(stub);
            throw e2;
        }
    }

    private static HookedTarget toHookedTarget(HookedProcess process) {
        if (process.processName == null) {
            throw new ServiceException("Framework returns target with null processName");
        }
        return new HookedTarget(process.targetId, process.uid, process.pid, process.processName, toHookedTargetState(process.state), process.loadedVersionCode);
    }

    private static io.github.libxposed.service.HookedTarget.State toHookedTargetState(int state) {
        switch (state) {
            case 0:
                return io.github.libxposed.service.HookedTarget.State.UP_TO_DATE;
            case 1:
                return io.github.libxposed.service.HookedTarget.State.STALE;
            case 2:
                return io.github.libxposed.service.HookedTarget.State.RELOADING;
            case 3:
                return io.github.libxposed.service.HookedTarget.State.FAILED;
            default:
                throw new ServiceException("Invalid hooked target state: " + state);
        }
    }

    public synchronized SharedPreferences getRemotePreferences(String group) {
        return this.mRemotePrefs.computeIfAbsent(group, new Function() { // from class: io.github.libxposed.service.XposedService$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                RemotePreferences lambda$getRemotePreferences$0;
                lambda$getRemotePreferences$0 = io.github.libxposed.service.XposedService.this.lambda$getRemotePreferences$0((String) obj);
                return lambda$getRemotePreferences$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ RemotePreferences lambda$getRemotePreferences$0(String k) {
        try {
            return io.github.libxposed.service.RemotePreferences.newInstance(this, k);
        } catch (RemoteException e) {
            throw new ServiceException(e);
        }
    }

    public synchronized void deleteRemotePreferences(String group) {
        try {
            RemotePreferences prefs = this.mRemotePrefs.get(group);
            if (prefs != null) {
                prefs.onDelete();
            }
            this.mService.deleteRemotePreferences(group);
        } catch (RemoteException e) {
            throw new ServiceException(e);
        }
    }

    public String[] listRemoteFiles() {
        try {
            String[] files = this.mService.listRemoteFiles();
            if (files == null) {
                throw new ServiceException("Framework returns null");
            }
            return files;
        } catch (RemoteException e) {
            throw new ServiceException(e);
        }
    }

    public ParcelFileDescriptor openRemoteFile(String name) {
        try {
            ParcelFileDescriptor file = this.mService.openRemoteFile(name);
            if (file == null) {
                throw new ServiceException("Framework returns null");
            }
            return file;
        } catch (RemoteException e) {
            throw new ServiceException(e);
        }
    }

    public boolean deleteRemoteFile(String name) {
        try {
            return this.mService.deleteRemoteFile(name);
        } catch (RemoteException e) {
            throw new ServiceException(e);
        }
    }
}
