package dev.duo.workspaceprobe;

import android.os.IBinder;
import java.io.IOException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class StandbyRouteLease {
    private StandbyRouteLease() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a() {
        try {
            b();
        } catch (ReflectiveOperationException | RuntimeException e) {
            System.out.println("ERROR " + e);
            System.out.flush();
            System.exit(1);
        }
    }

    private static void b() throws ReflectiveOperationException {
        Object invoke = Class.forName("android.hardware.devicestate.IDeviceStateManager").getMethod("getDeviceStateInfo", null).invoke(Class.forName("android.hardware.devicestate.IDeviceStateManager$Stub").getMethod("asInterface", IBinder.class).invoke(null, Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "device_state")), null);
        Class<?> cls = Class.forName("android.hardware.devicestate.DeviceState");
        Method method = cls.getMethod("hasProperty", Integer.TYPE);
        Method method2 = cls.getMethod("getIdentifier", null);
        boolean z = false;
        for (Object obj : (List) invoke.getClass().getField("supportedStates").get(invoke)) {
            if (((Boolean) method.invoke(obj, 4)).booleanValue() || ((Boolean) method.invoke(obj, 5)).booleanValue()) {
                throw new IllegalStateException("Device state death cleanup is not ownership safe");
            }
            if (((Integer) method2.invoke(obj, null)).intValue() == 4) {
                z = true;
            }
        }
        if (!z) {
            throw new IllegalStateException("Outer state 4 unavailable");
        }
        int intValue = ((Integer) method2.invoke(invoke.getClass().getField("baseState").get(invoke), null)).intValue();
        int intValue2 = ((Integer) method2.invoke(invoke.getClass().getField("currentState").get(invoke), null)).intValue();
        if (intValue != 2 || intValue2 != 2) {
            System.out.println("CANCELED");
            System.out.flush();
            System.exit(0);
            return;
        }
        Class<?> cls2 = Class.forName("android.hardware.devicestate.DeviceStateManagerGlobal");
        Object invoke2 = cls2.getMethod("getInstance", null).invoke(null, null);
        Class<?> cls3 = Class.forName("android.hardware.devicestate.DeviceStateRequest");
        Class<?> cls4 = Class.forName("android.hardware.devicestate.DeviceStateRequest$Callback");
        Class cls5 = Integer.TYPE;
        Object invoke3 = cls3.getMethod("newBuilder", cls5).invoke(null, 4);
        invoke3.getClass().getMethod("setFlags", cls5).invoke(invoke3, 1);
        final Object invoke4 = invoke3.getClass().getMethod("build", null).invoke(invoke3, null);
        cls2.getMethod("requestState", cls3, Executor.class, cls4).invoke(invoke2, invoke4, new Executor() { // from class: dev.duo.workspaceprobe.StandbyRouteLease$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                runnable.run();
            }
        }, Proxy.newProxyInstance(cls4.getClassLoader(), new Class[]{cls4}, new InvocationHandler() { // from class: dev.duo.workspaceprobe.StandbyRouteLease$$ExternalSyntheticLambda0
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj2, Method method3, Object[] objArr) {
                Object a;
                a = StandbyRouteLease.a(invoke4, obj2, method3, objArr);
                return a;
            }
        }));
    }

    public static void main(String[] strArr) {
        try {
            if (strArr.length != 0) {
                throw new IllegalArgumentException("No arguments expected");
            }
            if (System.in.read() != 71) {
                return;
            }
            new Thread(new Runnable() { // from class: dev.duo.workspaceprobe.StandbyRouteLease$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    StandbyRouteLease.a();
                }
            }, "MiDuoTentRequest").start();
            System.in.read();
            System.exit(0);
        } catch (IOException | RuntimeException e) {
            System.out.println("ERROR " + e);
            System.out.flush();
            System.exit(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object a(Object obj, Object obj2, Method method, Object[] objArr) throws Throwable {
        String name = method.getName();
        if (name.equals("hashCode")) {
            return Integer.valueOf(System.identityHashCode(obj2));
        }
        if (name.equals("equals")) {
            return Boolean.valueOf(obj2 == objArr[0]);
        }
        if (name.equals("toString")) {
            return "MiDuo tent lease callback";
        }
        if (name.equals("onRequestActivated") && objArr[0] == obj) {
            System.out.println("ACTIVE");
            System.out.flush();
            return null;
        }
        if (!name.equals("onRequestCanceled") || objArr[0] != obj) {
            return null;
        }
        System.out.println("CANCELED");
        System.out.flush();
        System.exit(0);
        return null;
    }
}
