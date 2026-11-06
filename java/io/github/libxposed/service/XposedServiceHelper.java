package io.github.libxposed.service;

import android.os.IBinder;
import android.util.Log;
import io.github.libxposed.service.IXposedService;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class XposedServiceHelper {
    private static final String TAG = "XposedServiceHelper";
    private static final Set<XposedService> mCache = new HashSet();
    private static OnServiceListener mListener = null;

    public interface OnServiceListener {
        void onServiceBind(XposedService xposedService);

        void onServiceDied(XposedService xposedService);
    }

    static void onBinderReceived(IBinder binder) {
        if (binder == null) {
            return;
        }
        synchronized (mCache) {
            try {
                final XposedService service = new XposedService(IXposedService.Stub.asInterface(binder));
                if (mListener == null) {
                    mCache.add(service);
                } else {
                    binder.linkToDeath(new IBinder.DeathRecipient() { // from class: io.github.libxposed.service.XposedServiceHelper$$ExternalSyntheticLambda1
                        @Override // android.os.IBinder.DeathRecipient
                        public final void binderDied() {
                            XposedServiceHelper.mListener.onServiceDied(XposedService.this);
                        }
                    }, 0);
                    mListener.onServiceBind(service);
                }
            } finally {
            }
        }
    }

    public static void registerListener(OnServiceListener listener) {
        synchronized (mCache) {
            mListener = listener;
            if (!mCache.isEmpty()) {
                Iterator<XposedService> it = mCache.iterator();
                while (it.hasNext()) {
                    try {
                        final XposedService service = it.next();
                        service.asInterface().asBinder().linkToDeath(new IBinder.DeathRecipient() { // from class: io.github.libxposed.service.XposedServiceHelper$$ExternalSyntheticLambda0
                            @Override // android.os.IBinder.DeathRecipient
                            public final void binderDied() {
                                XposedServiceHelper.mListener.onServiceDied(XposedService.this);
                            }
                        }, 0);
                        mListener.onServiceBind(service);
                    } catch (Throwable t) {
                        Log.e(TAG, "registerListener", t);
                        it.remove();
                    }
                }
                mCache.clear();
            }
        }
    }
}
