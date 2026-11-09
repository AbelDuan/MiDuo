package dev.duo.workspaceprobe;

/* loaded from: classes.dex */
public final class StandbyRouteLease {
    private StandbyRouteLease() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a() {
        try {
            b();
        } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e) {
            java.lang.System.out.println("ERROR " + e);
            java.lang.System.out.flush();
            java.lang.System.exit(1);
        }
    }

    private static void b() throws java.lang.ReflectiveOperationException {
        java.lang.Object invoke = java.lang.Class.forName("android.hardware.devicestate.IDeviceStateManager").getMethod("getDeviceStateInfo", null).invoke(java.lang.Class.forName("android.hardware.devicestate.IDeviceStateManager$Stub").getMethod("asInterface", android.os.IBinder.class).invoke(null, java.lang.Class.forName("android.os.ServiceManager").getMethod("getService", java.lang.String.class).invoke(null, "device_state")), null);
        java.lang.Class<?> cls = java.lang.Class.forName("android.hardware.devicestate.DeviceState");
        java.lang.reflect.Method method = cls.getMethod("hasProperty", java.lang.Integer.TYPE);
        java.lang.reflect.Method method2 = cls.getMethod("getIdentifier", null);
        boolean z = false;
        for (java.lang.Object obj : (java.util.List) invoke.getClass().getField("supportedStates").get(invoke)) {
            if (((java.lang.Boolean) method.invoke(obj, 4)).booleanValue() || ((java.lang.Boolean) method.invoke(obj, 5)).booleanValue()) {
                throw new java.lang.IllegalStateException("Device state death cleanup is not ownership safe");
            }
            if (((java.lang.Integer) method2.invoke(obj, null)).intValue() == 4) {
                z = true;
            }
        }
        if (!z) {
            throw new java.lang.IllegalStateException("Outer state 4 unavailable");
        }
        int intValue = ((java.lang.Integer) method2.invoke(invoke.getClass().getField("baseState").get(invoke), null)).intValue();
        int intValue2 = ((java.lang.Integer) method2.invoke(invoke.getClass().getField("currentState").get(invoke), null)).intValue();
        if (intValue != 2 || intValue2 != 2) {
            java.lang.System.out.println("CANCELED");
            java.lang.System.out.flush();
            java.lang.System.exit(0);
            return;
        }
        java.lang.Class<?> cls2 = java.lang.Class.forName("android.hardware.devicestate.DeviceStateManagerGlobal");
        java.lang.Object invoke2 = cls2.getMethod("getInstance", null).invoke(null, null);
        java.lang.Class<?> cls3 = java.lang.Class.forName("android.hardware.devicestate.DeviceStateRequest");
        java.lang.Class<?> cls4 = java.lang.Class.forName("android.hardware.devicestate.DeviceStateRequest$Callback");
        java.lang.Class cls5 = java.lang.Integer.TYPE;
        java.lang.Object invoke3 = cls3.getMethod("newBuilder", cls5).invoke(null, 4);
        invoke3.getClass().getMethod("setFlags", cls5).invoke(invoke3, 1);
        final java.lang.Object invoke4 = invoke3.getClass().getMethod("build", null).invoke(invoke3, null);
        cls2.getMethod("requestState", cls3, java.util.concurrent.Executor.class, cls4).invoke(invoke2, invoke4, new java.util.concurrent.Executor() { // from class: dev.duo.workspaceprobe.StandbyRouteLease$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Executor
            public final void execute(java.lang.Runnable runnable) {
                runnable.run();
            }
        }, java.lang.reflect.Proxy.newProxyInstance(cls4.getClassLoader(), new java.lang.Class[]{cls4}, new java.lang.reflect.InvocationHandler() { // from class: dev.duo.workspaceprobe.StandbyRouteLease$$ExternalSyntheticLambda0
            @Override // java.lang.reflect.InvocationHandler
            public final java.lang.Object invoke(java.lang.Object obj2, java.lang.reflect.Method method3, java.lang.Object[] objArr) {
                java.lang.Object a;
                a = dev.duo.workspaceprobe.StandbyRouteLease.a(invoke4, obj2, method3, objArr);
                return a;
            }
        }));
    }

    public static void main(java.lang.String[] strArr) {
        try {
            if (strArr.length != 0) {
                throw new java.lang.IllegalArgumentException("No arguments expected");
            }
            if (java.lang.System.in.read() != 71) {
                return;
            }
            new java.lang.Thread(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.StandbyRouteLease$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.StandbyRouteLease.a();
                }
            }, "MiDuoTentRequest").start();
            java.lang.System.in.read();
            java.lang.System.exit(0);
        } catch (java.io.IOException | java.lang.RuntimeException e) {
            java.lang.System.out.println("ERROR " + e);
            java.lang.System.out.flush();
            java.lang.System.exit(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
        java.lang.String name = method.getName();
        if (name.equals("hashCode")) {
            return java.lang.Integer.valueOf(java.lang.System.identityHashCode(obj2));
        }
        if (name.equals("equals")) {
            return java.lang.Boolean.valueOf(obj2 == objArr[0]);
        }
        if (name.equals("toString")) {
            return "MiDuo tent lease callback";
        }
        if (name.equals("onRequestActivated") && objArr[0] == obj) {
            java.lang.System.out.println("ACTIVE");
            java.lang.System.out.flush();
            return null;
        }
        if (!name.equals("onRequestCanceled") || objArr[0] != obj) {
            return null;
        }
        java.lang.System.out.println("CANCELED");
        java.lang.System.out.flush();
        java.lang.System.exit(0);
        return null;
    }
}
