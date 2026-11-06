package dev.duo.hookprobe;

import android.os.IBinder;
import android.os.Process;
import android.os.SystemClock;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class RootCompatCleanup {
    private static final Set<Long> a = new HashSet(Arrays.asList(174042980L, 180326787L, 203647190L, 327313645L));

    private RootCompatCleanup() {
    }

    public static void main(String[] strArr) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            if (Process.myUid() != 0) {
                throw new SecurityException("RootCompatCleanup requires root uid 0");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("usage: RootCompatCleanup PACKAGE [PACKAGE...]");
            }
            Object newInstance = Class.forName("com.android.internal.compat.CompatibilityOverridesToRemoveConfig").getConstructor(Set.class).newInstance(a);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String str : strArr) {
                if (!str.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+")) {
                    throw new IllegalArgumentException("invalid package: " + str);
                }
                linkedHashMap.put(str, newInstance);
            }
            Class<?> cls = Class.forName("com.android.internal.compat.CompatibilityOverridesToRemoveByPackageConfig");
            Object newInstance2 = cls.getConstructor(Map.class).newInstance(linkedHashMap);
            IBinder iBinder = (IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "platform_compat");
            if (iBinder == null) {
                throw new IllegalStateException("platform_compat unavailable");
            }
            Class.forName("com.android.internal.compat.IPlatformCompat").getMethod("removeAllOverridesOnReleaseBuilds", cls).invoke(Class.forName("com.android.internal.compat.IPlatformCompat$Stub").getMethod("asInterface", IBinder.class).invoke(null, iBinder), newInstance2);
            System.out.println("cleanup count=" + linkedHashMap.size() + " rules=" + dev.duo.hookprobe.a.size() + " elapsedMs=" + (SystemClock.elapsedRealtime() - elapsedRealtime));
        } catch (Throwable th) {
            th = th;
            while ((th instanceof InvocationTargetException) && th.getCause() != null) {
                th = th.getCause();
            }
            System.err.println("RootCompatCleanup: " + th);
            System.exit(1);
        }
    }
}
