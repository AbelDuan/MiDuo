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

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class g extends XposedModule {
    static final String c = "dev.duo.workspaceprobe.SEARCH";
    private static final String d = "com.miui.launcher.overlay.ILauncherOverlay";
    private final Set<Class<?>> a = ConcurrentHashMap.newKeySet();
    private float b = Float.NaN;

    private void a(Class<?> cls) {
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
                Object a;
                a = dev.duo.workspaceprobe.g.this.a(chain);
                return a;
            }
        });
        Log.w("DuoSearch", "search sink stub hooked " + method.getDeclaringClass().getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object b(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (dev.duo.workspaceprobe.d.equals(chain.getArg(1)) && this.a.add(chain.getThisObject().getClass())) {
            a(chain.getThisObject().getClass());
        }
        return proceed;
    }

    public void onModuleLoaded(XposedModuleInterface.ModuleLoadedParam moduleLoadedParam) {
        Log.w("DuoSearch", "search sink loaded process=" + moduleLoadedParam.getProcessName());
        try {
            hook(Binder.class.getDeclaredMethod("attachInterface", IInterface.class, String.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.g$$ExternalSyntheticLambda0
                public final Object intercept(XposedInterface.Chain chain) {
                    Object b;
                    b = dev.duo.workspaceprobe.g.this.b(chain);
                    return b;
                }
            });
            Log.w("DuoSearch", "search sink hooks ready");
        } catch (Throwable th) {
            Log.w("DuoSearch", "search sink hook failed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a(XposedInterface.Chain chain) throws Throwable {
        int intValue = ((Integer) chain.getArg(0)).intValue();
        if (intValue == 3) {
            Parcel parcel = (Parcel) chain.getArg(1);
            int dataPosition = parcel.dataPosition();
            try {
                parcel.enforceInterface(d);
                a("scroll", parcel.readFloat());
                parcel.setDataPosition(dataPosition);
            } catch (Throwable th) {
                parcel.setDataPosition(dataPosition);
            }
        } else if (intValue == 8) {
            a("open", 1.0f);
        } else if (intValue == 7) {
            a("close", 0.0f);
        }
        return chain.proceed();
    }

    private void a(String str, float f) {
        if (!"scroll".equals(str)) {
            this.b = Float.NaN;
        } else if (f == this.b) {
            return;
        } else {
            this.b = f;
        }
        try {
            Context context = (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
            if (context == null) {
                return;
            }
            context.sendBroadcast(new Intent(c).setPackage("com.android.systemui").addFlags(268435456).putExtra("e", str).putExtra("p", f), null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
        } catch (Throwable th) {
            Log.w("DuoSearch", "search send failed", th);
        }
    }
}
