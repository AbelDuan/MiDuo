package dev.duo.hookprobe;

import android.content.ComponentName;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.IBinder;
import android.os.Process;
import android.os.SystemClock;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class RootTaskRecompute {
    private RootTaskRecompute() {
    }

    static int[] a(Set<String> set) throws ReflectiveOperationException {
        Object a = a();
        Class<?> cls = Class.forName("android.window.WindowContainerToken");
        Class<?> cls2 = Class.forName("android.window.WindowContainerTransaction");
        Object newInstance = cls2.getConstructor(null).newInstance(null);
        Method method = cls2.getMethod("setAppBounds", cls, Rect.class);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        List<Object[]> a2 = a(a, set);
        for (Object[] objArr : a2) {
            method.invoke(newInstance, objArr[1], null);
            linkedHashSet.add((String) objArr[0]);
        }
        if (!a2.isEmpty()) {
            Class.forName("android.window.IWindowOrganizerController").getMethod("applyTransaction", cls2).invoke(a(a), newInstance);
        }
        return new int[]{linkedHashSet.size(), a2.size()};
    }

    static int b(Set<String> set) throws ReflectiveOperationException {
        Object a = a();
        Object invoke = Class.forName("android.window.IWindowOrganizerController").getMethod("getTaskOrganizerController", null).invoke(a(a), null);
        Method method = Class.forName("android.window.ITaskOrganizerController").getMethod("restartTaskTopActivityProcessIfVisible", Class.forName("android.window.WindowContainerToken"));
        List<Object[]> a2 = a(a, set);
        Iterator<Object[]> it = a2.iterator();
        while (it.hasNext()) {
            method.invoke(invoke, it.next()[1]);
        }
        return a2.size();
    }

    public static void main(String[] strArr) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            if (Process.myUid() != 0) {
                throw new SecurityException("RootTaskRecompute requires root uid 0");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("usage: RootTaskRecompute PACKAGE [PACKAGE...]");
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (String str : strArr) {
                if (!str.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+") || MainActivity.d.contains(str)) {
                    throw new IllegalArgumentException("invalid or excluded package: " + str);
                }
                linkedHashSet.add(str);
            }
            int[] a = a((Set<String>) linkedHashSet);
            System.out.println("recompute packages=" + a[0] + " tasks=" + a[1] + " elapsedMs=" + (SystemClock.elapsedRealtime() - elapsedRealtime));
        } catch (Throwable th) {
            th = th;
            while ((th instanceof InvocationTargetException) && th.getCause() != null) {
                th = th.getCause();
            }
            System.err.println("RootTaskRecompute: " + th);
            System.exit(1);
        }
    }

    private static Object a() throws ReflectiveOperationException {
        IBinder iBinder = (IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "activity_task");
        if (iBinder != null) {
            return Class.forName("android.app.IActivityTaskManager$Stub").getMethod("asInterface", IBinder.class).invoke(null, iBinder);
        }
        throw new IllegalStateException("activity_task unavailable");
    }

    private static Object a(Object obj) throws ReflectiveOperationException {
        return Class.forName("android.app.IActivityTaskManager").getMethod("getWindowOrganizerController", null).invoke(obj, null);
    }

    private static List<Object[]> a(Object obj, Set<String> set) throws ReflectiveOperationException {
        ComponentName componentName;
        Object obj2;
        Class<?> cls = Class.forName("android.app.IActivityTaskManager");
        Class cls2 = Integer.TYPE;
        Class cls3 = Boolean.TYPE;
        Method method = cls.getMethod("getTasks", cls2, cls3, cls3, cls2);
        Boolean bool = Boolean.FALSE;
        List list = (List) method.invoke(obj, Integer.MAX_VALUE, bool, bool, 0);
        ArrayList arrayList = new ArrayList();
        for (Object obj3 : list) {
            Class<?> cls4 = obj3.getClass();
            if (cls4.getField("displayId").getInt(obj3) == 0 && (componentName = (ComponentName) cls4.getField("topActivity").get(obj3)) != null && set.contains(componentName.getPackageName())) {
                Object obj4 = Configuration.class.getField("windowConfiguration").get((Configuration) cls4.getField("configuration").get(obj3));
                if (((Integer) obj4.getClass().getMethod("getWindowingMode", null).invoke(obj4, null)).intValue() == 1 && ((Integer) obj4.getClass().getMethod("getActivityType", null).invoke(obj4, null)).intValue() == 1 && (obj2 = cls4.getField("token").get(obj3)) != null) {
                    arrayList.add(new Object[]{componentName.getPackageName(), obj2});
                }
            }
        }
        return arrayList;
    }
}
