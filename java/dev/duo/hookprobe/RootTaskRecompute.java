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

/* loaded from: classes.dex */
public final class RootTaskRecompute {
    private RootTaskRecompute() {
    }

    /* renamed from: a */
    static int[] m1382a(Set<String> set) throws ReflectiveOperationException {
        Object m1379a = m1379a();
        Class<?> cls = Class.forName("android.window.WindowContainerToken");
        Class<?> cls2 = Class.forName("android.window.WindowContainerTransaction");
        Object newInstance = cls2.getConstructor(null).newInstance(null);
        Method method = cls2.getMethod("setAppBounds", cls, Rect.class);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        List<Object[]> m1381a = m1381a(m1379a, set);
        for (Object[] objArr : m1381a) {
            method.invoke(newInstance, objArr[1], null);
            linkedHashSet.add((String) objArr[0]);
        }
        if (!m1381a.isEmpty()) {
            Class.forName("android.window.IWindowOrganizerController").getMethod("applyTransaction", cls2).invoke(m1380a(m1379a), newInstance);
        }
        return new int[]{linkedHashSet.size(), m1381a.size()};
    }

    /* renamed from: b */
    static int m1383b(Set<String> set) throws ReflectiveOperationException {
        Object m1379a = m1379a();
        Object invoke = Class.forName("android.window.IWindowOrganizerController").getMethod("getTaskOrganizerController", null).invoke(m1380a(m1379a), null);
        Method method = Class.forName("android.window.ITaskOrganizerController").getMethod("restartTaskTopActivityProcessIfVisible", Class.forName("android.window.WindowContainerToken"));
        List<Object[]> m1381a = m1381a(m1379a, set);
        Iterator<Object[]> it = m1381a.iterator();
        while (it.hasNext()) {
            method.invoke(invoke, it.next()[1]);
        }
        return m1381a.size();
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
                if (!str.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+") || MainActivity.f960d.contains(str)) {
                    throw new IllegalArgumentException("invalid or excluded package: " + str);
                }
                linkedHashSet.add(str);
            }
            int[] m1382a = m1382a((Set<String>) linkedHashSet);
            System.out.println("recompute packages=" + m1382a[0] + " tasks=" + m1382a[1] + " elapsedMs=" + (SystemClock.elapsedRealtime() - elapsedRealtime));
        } catch (Throwable th) {
            th = th;
            while ((th instanceof InvocationTargetException) && th.getCause() != null) {
                th = th.getCause();
            }
            System.err.println("RootTaskRecompute: " + th);
            System.exit(1);
        }
    }

    /* renamed from: a */
    private static Object m1379a() throws ReflectiveOperationException {
        IBinder iBinder = (IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "activity_task");
        if (iBinder != null) {
            return Class.forName("android.app.IActivityTaskManager$Stub").getMethod("asInterface", IBinder.class).invoke(null, iBinder);
        }
        throw new IllegalStateException("activity_task unavailable");
    }

    /* renamed from: a */
    private static Object m1380a(Object obj) throws ReflectiveOperationException {
        return Class.forName("android.app.IActivityTaskManager").getMethod("getWindowOrganizerController", null).invoke(obj, null);
    }

    /* renamed from: a */
    private static List<Object[]> m1381a(Object obj, Set<String> set) throws ReflectiveOperationException {
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
