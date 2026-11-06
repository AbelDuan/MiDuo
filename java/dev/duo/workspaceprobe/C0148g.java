package dev.duo.workspaceprobe;

import android.app.BroadcastOptions;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.IInterface;
import android.os.Parcel;
import android.util.Log;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import io.github.libxposed.api.XposedModuleInterface;
import java.lang.reflect.Method;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: dev.duo.workspaceprobe.g */
/* loaded from: classes.dex */
public final class C0148g extends XposedModule {

    /* renamed from: c */
    static final String f2828c = "dev.duo.workspaceprobe.SEARCH";

    /* renamed from: d */
    private static final String f2829d = "com.miui.launcher.overlay.ILauncherOverlay";

    /* renamed from: a */
    private final Set<Class<?>> f2830a = ConcurrentHashMap.newKeySet();

    /* renamed from: b */
    private float f2831b = Float.NaN;

    /* renamed from: a */
    private void m2954a(Class<?> cls) {
        Method method = null;
        for (Class<?> cls2 = cls; cls2 != null && method == null; cls2 = cls2.getSuperclass()) {
            try {
                try {
                    Class cls3 = Integer.TYPE;
                    method = cls2.getDeclaredMethod("onTransact", cls3, Parcel.class, Parcel.class, cls3);
                } catch (Throwable th) {
                    Log.w("DuoSearch", "search sink stub failed", th);
                    return;
                }
            } catch (NoSuchMethodException e) {
            }
        }
        if (method == null || method.getDeclaringClass() == Binder.class) {
            throw new NoSuchMethodException("onTransact in " + cls);
        }
        hook(method).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.g$$ExternalSyntheticLambda1
            public final Object intercept(XposedInterface.Chain chain) {
                Object m2953a;
                m2953a = C0148g.this.m2953a(chain);
                return m2953a;
            }
        });
        Log.w("DuoSearch", "search sink stub hooked " + method.getDeclaringClass().getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ Object m2956b(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (f2829d.equals(chain.getArg(1)) && this.f2830a.add(chain.getThisObject().getClass())) {
            m2954a(chain.getThisObject().getClass());
        }
        return proceed;
    }

    public void onModuleLoaded(XposedModuleInterface.ModuleLoadedParam moduleLoadedParam) {
        Log.w("DuoSearch", "search sink loaded process=" + moduleLoadedParam.getProcessName());
        try {
            hook(Binder.class.getDeclaredMethod("attachInterface", IInterface.class, String.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.g$$ExternalSyntheticLambda0
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2956b;
                    m2956b = C0148g.this.m2956b(chain);
                    return m2956b;
                }
            });
            Log.w("DuoSearch", "search sink hooks ready");
        } catch (Throwable th) {
            Log.w("DuoSearch", "search sink hook failed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2953a(XposedInterface.Chain chain) throws Throwable {
        int intValue = ((Integer) chain.getArg(0)).intValue();
        if (intValue == 3) {
            Parcel parcel = (Parcel) chain.getArg(1);
            int dataPosition = parcel.dataPosition();
            try {
                parcel.enforceInterface(f2829d);
                m2955a("scroll", parcel.readFloat());
                parcel.setDataPosition(dataPosition);
            } catch (Throwable th) {
                parcel.setDataPosition(dataPosition);
            }
        } else if (intValue == 8) {
            m2955a("open", 1.0f);
        } else if (intValue == 7) {
            m2955a("close", 0.0f);
        }
        return chain.proceed();
    }

    /* renamed from: a */
    private void m2955a(String str, float f) {
        if (!"scroll".equals(str)) {
            this.f2831b = Float.NaN;
        } else if (f == this.f2831b) {
            return;
        } else {
            this.f2831b = f;
        }
        try {
            Context context = (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
            if (context == null) {
                return;
            }
            context.sendBroadcast(new Intent(f2828c).setPackage("com.android.systemui").addFlags(268435456).putExtra("e", str).putExtra("p", f), null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
        } catch (Throwable th) {
            Log.w("DuoSearch", "search send failed", th);
        }
    }
}
