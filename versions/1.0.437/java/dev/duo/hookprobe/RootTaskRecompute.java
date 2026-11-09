package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class RootTaskRecompute {
    private RootTaskRecompute() {
    }

    static int[] a(java.util.Set<java.lang.String> set) throws java.lang.ReflectiveOperationException {
        java.lang.Object a = a();
        java.lang.Class<?> cls = java.lang.Class.forName("android.window.WindowContainerToken");
        java.lang.Class<?> cls2 = java.lang.Class.forName("android.window.WindowContainerTransaction");
        java.lang.Object newInstance = cls2.getConstructor(null).newInstance(null);
        java.lang.reflect.Method method = cls2.getMethod("setAppBounds", cls, android.graphics.Rect.class);
        java.util.LinkedHashSet linkedHashSet = new java.util.LinkedHashSet();
        java.util.List<java.lang.Object[]> a2 = a(a, set);
        for (java.lang.Object[] objArr : a2) {
            method.invoke(newInstance, objArr[1], null);
            linkedHashSet.add((java.lang.String) objArr[0]);
        }
        if (!a2.isEmpty()) {
            java.lang.Class.forName("android.window.IWindowOrganizerController").getMethod("applyTransaction", cls2).invoke(a(a), newInstance);
        }
        return new int[]{linkedHashSet.size(), a2.size()};
    }

    static int b(java.util.Set<java.lang.String> set) throws java.lang.ReflectiveOperationException {
        java.lang.Object a = a();
        java.lang.Object invoke = java.lang.Class.forName("android.window.IWindowOrganizerController").getMethod("getTaskOrganizerController", null).invoke(a(a), null);
        java.lang.reflect.Method method = java.lang.Class.forName("android.window.ITaskOrganizerController").getMethod("restartTaskTopActivityProcessIfVisible", java.lang.Class.forName("android.window.WindowContainerToken"));
        java.util.List<java.lang.Object[]> a2 = a(a, set);
        java.util.Iterator<java.lang.Object[]> it = a2.iterator();
        while (it.hasNext()) {
            method.invoke(invoke, it.next()[1]);
        }
        return a2.size();
    }

    public static void main(java.lang.String[] strArr) {
        long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
        try {
            if (android.os.Process.myUid() != 0) {
                throw new java.lang.SecurityException("RootTaskRecompute requires root uid 0");
            }
            if (strArr.length == 0) {
                throw new java.lang.IllegalArgumentException("usage: RootTaskRecompute PACKAGE [PACKAGE...]");
            }
            java.util.LinkedHashSet linkedHashSet = new java.util.LinkedHashSet();
            for (java.lang.String str : strArr) {
                if (!str.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+") || dev.duo.hookprobe.MainActivity.d.contains(str)) {
                    throw new java.lang.IllegalArgumentException("invalid or excluded package: " + str);
                }
                linkedHashSet.add(str);
            }
            int[] a = a((java.util.Set<java.lang.String>) linkedHashSet);
            java.lang.System.out.println("recompute packages=" + a[0] + " tasks=" + a[1] + " elapsedMs=" + (android.os.SystemClock.elapsedRealtime() - elapsedRealtime));
        } catch (java.lang.Throwable th) {
            th = th;
            while ((th instanceof java.lang.reflect.InvocationTargetException) && th.getCause() != null) {
                th = th.getCause();
            }
            java.lang.System.err.println("RootTaskRecompute: " + th);
            java.lang.System.exit(1);
        }
    }

    private static java.lang.Object a() throws java.lang.ReflectiveOperationException {
        android.os.IBinder iBinder = (android.os.IBinder) java.lang.Class.forName("android.os.ServiceManager").getMethod("getService", java.lang.String.class).invoke(null, "activity_task");
        if (iBinder != null) {
            return java.lang.Class.forName("android.app.IActivityTaskManager$Stub").getMethod("asInterface", android.os.IBinder.class).invoke(null, iBinder);
        }
        throw new java.lang.IllegalStateException("activity_task unavailable");
    }

    private static java.lang.Object a(java.lang.Object obj) throws java.lang.ReflectiveOperationException {
        return java.lang.Class.forName("android.app.IActivityTaskManager").getMethod("getWindowOrganizerController", null).invoke(obj, null);
    }

    private static java.util.List<java.lang.Object[]> a(java.lang.Object obj, java.util.Set<java.lang.String> set) throws java.lang.ReflectiveOperationException {
        android.content.ComponentName componentName;
        java.lang.Object obj2;
        java.lang.Class<?> cls = java.lang.Class.forName("android.app.IActivityTaskManager");
        java.lang.Class cls2 = java.lang.Integer.TYPE;
        java.lang.Class cls3 = java.lang.Boolean.TYPE;
        java.lang.reflect.Method method = cls.getMethod("getTasks", cls2, cls3, cls3, cls2);
        java.lang.Boolean bool = java.lang.Boolean.FALSE;
        java.util.List list = (java.util.List) method.invoke(obj, Integer.MAX_VALUE, bool, bool, 0);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.Object obj3 : list) {
            java.lang.Class<?> cls4 = obj3.getClass();
            if (cls4.getField("displayId").getInt(obj3) == 0 && (componentName = (android.content.ComponentName) cls4.getField("topActivity").get(obj3)) != null && set.contains(componentName.getPackageName())) {
                java.lang.Object obj4 = android.content.res.Configuration.class.getField("windowConfiguration").get((android.content.res.Configuration) cls4.getField("configuration").get(obj3));
                if (((java.lang.Integer) obj4.getClass().getMethod("getWindowingMode", null).invoke(obj4, null)).intValue() == 1 && ((java.lang.Integer) obj4.getClass().getMethod("getActivityType", null).invoke(obj4, null)).intValue() == 1 && (obj2 = cls4.getField("token").get(obj3)) != null) {
                    arrayList.add(new java.lang.Object[]{componentName.getPackageName(), obj2});
                }
            }
        }
        return arrayList;
    }
}
