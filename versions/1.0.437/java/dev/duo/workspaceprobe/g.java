package dev.duo.workspaceprobe;

/* loaded from: classes.dex */
public final class g extends io.github.libxposed.api.XposedModule {
    static final java.lang.String c = "dev.duo.workspaceprobe.SEARCH";
    private static final java.lang.String d = "com.miui.launcher.overlay.ILauncherOverlay";
    private final java.util.Set<java.lang.Class<?>> a = java.util.concurrent.ConcurrentHashMap.newKeySet();
    private float b = Float.NaN;

    private void a(java.lang.Class<?> cls) {
        java.lang.reflect.Method method = null;
        for (java.lang.Class<?> cls2 = cls; cls2 != null && method == null; cls2 = cls2.getSuperclass()) {
            try {
                try {
                    java.lang.Class cls3 = java.lang.Integer.TYPE;
                    method = cls2.getDeclaredMethod("onTransact", cls3, android.os.Parcel.class, android.os.Parcel.class, cls3);
                } catch (java.lang.Throwable th) {
                    android.util.Log.w("DuoSearch", "search sink stub failed", th);
                    return;
                }
            } catch (java.lang.NoSuchMethodException e) {
            }
        }
        if (method == null || method.getDeclaringClass() == android.os.Binder.class) {
            throw new java.lang.NoSuchMethodException("onTransact in " + cls);
        }
        hook(method).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.g$$ExternalSyntheticLambda1
            public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                java.lang.Object a;
                a = dev.duo.workspaceprobe.g.this.a(chain);
                return a;
            }
        });
        android.util.Log.w("DuoSearch", "search sink stub hooked " + method.getDeclaringClass().getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object b(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        if (d.equals(chain.getArg(1)) && this.a.add(chain.getThisObject().getClass())) {
            a(chain.getThisObject().getClass());
        }
        return proceed;
    }

    public void onModuleLoaded(io.github.libxposed.api.XposedModuleInterface.ModuleLoadedParam moduleLoadedParam) {
        android.util.Log.w("DuoSearch", "search sink loaded process=" + moduleLoadedParam.getProcessName());
        try {
            hook(android.os.Binder.class.getDeclaredMethod("attachInterface", android.os.IInterface.class, java.lang.String.class)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.g$$ExternalSyntheticLambda0
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object b;
                    b = dev.duo.workspaceprobe.g.this.b(chain);
                    return b;
                }
            });
            android.util.Log.w("DuoSearch", "search sink hooks ready");
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoSearch", "search sink hook failed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ java.lang.Object a(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        int intValue = ((java.lang.Integer) chain.getArg(0)).intValue();
        if (intValue == 3) {
            android.os.Parcel parcel = (android.os.Parcel) chain.getArg(1);
            int dataPosition = parcel.dataPosition();
            try {
                parcel.enforceInterface(d);
                a("scroll", parcel.readFloat());
                parcel.setDataPosition(dataPosition);
            } catch (java.lang.Throwable th) {
                parcel.setDataPosition(dataPosition);
            }
        } else if (intValue == 8) {
            a("open", 1.0f);
        } else if (intValue == 7) {
            a("close", 0.0f);
        }
        return chain.proceed();
    }

    private void a(java.lang.String str, float f) {
        if (!"scroll".equals(str)) {
            this.b = Float.NaN;
        } else if (f == this.b) {
            return;
        } else {
            this.b = f;
        }
        try {
            android.content.Context context = (android.content.Context) java.lang.Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
            if (context == null) {
                return;
            }
            context.sendBroadcast(new android.content.Intent(c).setPackage("com.android.systemui").addFlags(268435456).putExtra("e", str).putExtra("p", f), null, android.app.BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
        } catch (java.lang.Throwable th) {
            android.util.Log.w("DuoSearch", "search send failed", th);
        }
    }
}
