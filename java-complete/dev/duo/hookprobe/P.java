package dev.duo.hookprobe;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class P {
    static final String A = "debug.duo.master";
    static final String B = "_global/innerNativeBar";
    static final String G = "_global/railColor";
    static final String H = "_global/railFollowDark";
    static final String I = "_global/railCustom";
    static final String J = "_global/railSidebarApps";
    static final String K = "_global/railPanelOrder";
    static final String L = "_global/railSidebarFreeform";
    static final String M = "_global/railSidebarKeyEnd";
    static final String N = "_global/screenOffTimeoutSaved";
    static final String O = "ios_notification_";
    static final String P = "back,home,recents,dock,dock,dock,-";
    static final String Q = "_global/rotationSuggest";
    static final String R = "_global/standbyClock";
    static final String S = "_global/notificationIcons";
    static final String T = "_global/searchButton";
    static final String U = "_global/pickButton";
    static final String V = "_global/foldAnimation";
    static final String W = "_global/foldSplit";
    static final String X = "_global/workbench";
    static final boolean Y = true;
    static final String Z = "_global/foldNudge";
    static final String a = "duo_top";
    static final String a0 = "_global/cellularStyle";
    static final String b0 = "_global/statusThin";
    static final String c0 = "_global/percentTop";
    static final String d = "_global/outerHideTop";
    static final String d0 = "_global/statusDy/";
    static final String e = "_global/nonDuoOuterTopPx";
    static final String f = "com.ss.android.ugc.aweme/outerVideoFit";
    static final int f0 = 60;
    static final String g = "com.ss.android.ugc.aweme/innerVideoFit";
    static final String g0 = "_global/rotationPortraitRight";
    static final boolean h = true;
    static final String h0 = "_global/rotationLandscapeRight";
    static final String i0 = "_railPalette/";
    static final String j0 = "_global/outerScale";
    static final int k0 = 60;
    static final int l = 1;
    static final int l0 = 100;
    static final int m = 126;
    static final int m0 = 90;
    static final int n = 126;
    static final String o0 = "debug.duo.scale.wx";
    static final String u = "_global/defaultPx";
    static final String v = "_global/defaultPxInner";
    static final String w = "_global/defaultPxOuter";
    static final boolean y = false;
    static final String z = "_global/master";
    public static final Set<String> i = Collections.unmodifiableSet(new HashSet(Arrays.asList("com.android.quicksearchbox", "com.android.camera", "miui.systemui.plugin")));
    public static final Set<String> j = Collections.unmodifiableSet(new HashSet(Arrays.asList("com.miui.securitycenter", "com.android.safetycenter.resources")));
    static final String b = "com.ss.android.ugc.aweme";
    static final String c = "com.xiaomi.smarthome";
    public static final Set<String> k = Collections.unmodifiableSet(new HashSet(Arrays.asList(b, c)));
    static final List<String> o = Collections.unmodifiableList(Arrays.asList("system", "com.android.systemui", "com.miui.home", "com.miui.personalassistant", "com.android.quicksearchbox"));
    static final String n0 = "com.tencent.mm";
    static final List<String> p = Collections.unmodifiableList(Arrays.asList(dev.duo.icons.g.b, n0, b, "com.android.settings", "com.xiaomi.market", "com.miui.miwallpaper"));
    static final List<String> q = Collections.unmodifiableList(Arrays.asList("system", "com.android.systemui", "com.miui.home", "com.miui.personalassistant", dev.duo.icons.g.b, "com.android.settings", "com.xiaomi.market", n0));
    static final String r = "inner";
    static final String s = "outer";
    static final String[] t = {r, s};
    static final int[] x = {1, 75, 126};
    static final String E = "follow";
    static final String C = "white";
    static final String D = "black";
    static final String[] F = {E, C, D};
    static final String[] e0 = {"outerDesk", "outerApp", "innerLand", "innerPort", "lockOuter", "lockInnerLand", "lockInnerPort"};

    private P() {
    }

    static String a(String str) {
        return dev.duo.hookprobe.r.equals(str) ? g : f;
    }

    static String b(String str) {
        return b + (dev.duo.hookprobe.r.equals(str) ? "/innerHideTop" : "/outerHideTop");
    }

    static boolean c(String str) {
        if (b(r).equals(str) || b(s).equals(str)) {
            return true;
        }
        return y;
    }

    static int d(SharedPreferences sharedPreferences) {
        return a(sharedPreferences.getInt(e, 126));
    }

    static int e(SharedPreferences sharedPreferences, String str) {
        return a(sharedPreferences, str, s) ? b(sharedPreferences, str, s) : d(sharedPreferences);
    }

    static boolean f(SharedPreferences sharedPreferences, String str) {
        if (m(str) && sharedPreferences.getBoolean(l(str), sharedPreferences.getBoolean(d, y))) {
            return true;
        }
        return y;
    }

    static String g(String str) {
        return dev.duo.hookprobe.r.equals(str) ? v : w;
    }

    static boolean h(String str) {
        if (str.endsWith("/topSafePx") || str.endsWith("/topSafePxInner") || str.endsWith("/topSafePxOuter") || dev.duo.hookprobe.u.equals(str) || dev.duo.hookprobe.v.equals(str) || dev.duo.hookprobe.w.equals(str)) {
            return true;
        }
        return y;
    }

    static String i(String str) {
        return str + "/innerNativeBar";
    }

    static boolean j(String str) {
        if (B.equals(str) || str.endsWith("/innerNativeBar")) {
            return true;
        }
        return y;
    }

    static String k(String str) {
        return str + "/topSafePx";
    }

    static String l(String str) {
        return str + "/outerHideTop";
    }

    static boolean m(String str) {
        if (str == null || "android".equals(str) || "com.miui.home".equals(str) || "com.miui.personalassistant".equals(str) || "com.android.systemui".equals(str) || dev.duo.icons.g.a.equals(str) || "dev.duo.workspaceprobe".equals(str) || i.contains(str)) {
            return y;
        }
        return true;
    }

    static boolean n(String str) {
        if (dev.duo.hookprobe.d.equals(str) || dev.duo.hookprobe.e.equals(str) || str.endsWith("/outerHideTop")) {
            return true;
        }
        return y;
    }

    static String o(String str) {
        int indexOf;
        if (str == null || str.startsWith("_") || (indexOf = str.indexOf(47)) <= 0) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    static Integer p(String str) {
        if (J.e.equals(str)) {
            return null;
        }
        if (str == null || !str.matches("#?[0-9a-fA-F]{6}")) {
            throw new IllegalArgumentException("颜色须为六位 HEX，如 #F3F3F3");
        }
        return Integer.valueOf(Integer.parseInt(str.replace("#", ""), 16) | (-16777216));
    }

    static String q(String str) {
        return str + "/railColor";
    }

    static boolean r(String str) {
        if (str.endsWith("/railPalette") || str.startsWith(i0) || str.endsWith("/railColor") || dev.duo.hookprobe.H.equals(str)) {
            return true;
        }
        return y;
    }

    static String s(String str) {
        return str + "/railPalette";
    }

    static String t(String str) {
        return str + "/outerScale";
    }

    static boolean u(String str) {
        return str.endsWith("/outerScale");
    }

    public static boolean a(Map<String, ?> map) {
        Object obj = map.get(z);
        if (obj != null) {
            if (Boolean.FALSE.equals(obj)) {
                return y;
            }
            return true;
        }
        if (map.isEmpty()) {
            return y;
        }
        return true;
    }

    static int b(Map<String, ?> map, String str) {
        if (map.containsKey(a(str, s)) || map.containsKey(k(str))) {
            return a(map, str, s);
        }
        Integer num = (Integer) map.get(e);
        if (num == null) {
            return 126;
        }
        return a(num.intValue());
    }

    static boolean c(Map<String, ?> map, String str) {
        Object obj = map.get(l(str));
        if (!m(str)) {
            return y;
        }
        Boolean bool = Boolean.TRUE;
        if (obj == null) {
            obj = map.get(d);
        }
        if (bool.equals(obj)) {
            return true;
        }
        return y;
    }

    public static boolean d(SharedPreferences sharedPreferences, String str) {
        return sharedPreferences.getBoolean(i(str), sharedPreferences.getBoolean(B, y));
    }

    public static boolean e(String str) {
        return dev.duo.hookprobe.j.contains(str);
    }

    static String f(String str) {
        return str + "/enabled";
    }

    static int g(SharedPreferences sharedPreferences, String str) {
        return sharedPreferences.contains(t(str)) ? b(sharedPreferences.getInt(t(str), m0)) : sharedPreferences.getBoolean(f(str), e(str)) ? c(sharedPreferences) : l0;
    }

    static String i(SharedPreferences sharedPreferences, String str) {
        String string = sharedPreferences.getString(s(str), null);
        if (string == null) {
            return null;
        }
        return sharedPreferences.getString(i0 + string, null);
    }

    private static String d(String str) {
        return dev.duo.hookprobe.D.equals(str) ? D : C;
    }

    static boolean e(SharedPreferences sharedPreferences) {
        return sharedPreferences.getBoolean(H, y);
    }

    static String h(SharedPreferences sharedPreferences, String str) {
        String string = sharedPreferences.getString(q(str), null);
        if (string == null) {
            return null;
        }
        return d(string);
    }

    static boolean a(Map<String, ?> map, String str) {
        Object obj = map.get(i(str));
        Boolean bool = Boolean.TRUE;
        if (obj == null) {
            obj = map.get(B);
        }
        return bool.equals(obj);
    }

    public static int c(SharedPreferences sharedPreferences, String str) {
        int i2 = 0;
        if (!b(sharedPreferences) || sharedPreferences.getBoolean(f(str), e(str))) {
            return 0;
        }
        boolean f2 = f(sharedPreferences, str);
        if (dev.duo.hookprobe.b.equals(str) && sharedPreferences.getBoolean(b(r), y)) {
            i2 = 2;
        }
        return (f2 ? 1 : 0) | i2;
    }

    static String d(SharedPreferences sharedPreferences, String str, boolean z2) {
        String h2 = h(sharedPreferences, str);
        if (h2 != null) {
            return h2;
        }
        if (e(sharedPreferences)) {
            return z2 ? D : C;
        }
        return a(sharedPreferences);
    }

    static String a(String str, String str2) {
        return str + "/topSafePx" + (dev.duo.hookprobe.r.equals(str2) ? "Inner" : "Outer");
    }

    public static boolean b(SharedPreferences sharedPreferences) {
        if (sharedPreferences.contains(z)) {
            return sharedPreferences.getBoolean(z, true);
        }
        return !sharedPreferences.getAll().isEmpty();
    }

    static int a(Map<String, ?> map, String str, String str2) {
        Integer num = (Integer) map.get(a(str, str2));
        if (num != null) {
            return a(num.intValue());
        }
        Integer num2 = (Integer) map.get(k(str));
        if (num2 != null) {
            return a(num2.intValue());
        }
        Integer num3 = (Integer) map.get(g(str2));
        if (num3 != null) {
            return a(num3.intValue());
        }
        Integer num4 = (Integer) map.get(u);
        if (num4 != null) {
            return num4.intValue();
        }
        return 126;
    }

    static boolean c(SharedPreferences sharedPreferences, String str, boolean z2) {
        return dev.duo.hookprobe.D.equals(d(sharedPreferences, str, z2));
    }

    static int b(SharedPreferences sharedPreferences, String str) {
        return sharedPreferences.contains(g(str)) ? a(sharedPreferences.getInt(g(str), 126)) : sharedPreferences.getInt(u, 126);
    }

    static int c(SharedPreferences sharedPreferences) {
        return b(sharedPreferences.getInt(j0, m0));
    }

    static int d(Map<String, ?> map, String str) {
        Integer num = (Integer) map.get(t(str));
        if (num == null) {
            num = (Integer) map.get(j0);
        }
        return num == null ? m0 : b(num.intValue());
    }

    static int b(SharedPreferences sharedPreferences, String str, String str2) {
        return sharedPreferences.contains(a(str, str2)) ? a(sharedPreferences.getInt(a(str, str2), 126)) : sharedPreferences.contains(k(str)) ? a(sharedPreferences.getInt(k(str), 126)) : b(sharedPreferences, str2);
    }

    public static int b(SharedPreferences sharedPreferences, String str, boolean z2) {
        Integer a2 = a(sharedPreferences, str, z2);
        if (a2 != null) {
            return a2.intValue();
        }
        return c(sharedPreferences, str, z2) ? -16777216 : -789517;
    }

    static Map<String, int[]> a(Map<String, ?> map, Set<String> set) {
        HashMap hashMap = new HashMap();
        for (String str : set) {
            hashMap.put(str, new int[]{a(map, str) ? 0 : a(map, str, r), a(map, str, s)});
        }
        return Collections.unmodifiableMap(hashMap);
    }

    static int b(int i2) {
        return Math.max(60, Math.min(l0, i2));
    }

    static Map<String, Integer> b(Map<String, ?> map, Set<String> set) {
        HashMap hashMap = new HashMap();
        for (String str : set) {
            hashMap.put(str, Integer.valueOf(d(map, str)));
        }
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            String key = entry.getKey();
            if (!key.startsWith("_") && u(key)) {
                String substring = key.substring(0, key.length() - 11);
                if (!MainActivity.d.contains(substring)) {
                    hashMap.put(substring, Integer.valueOf(b(((Integer) entry.getValue()).intValue())));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    static boolean a(SharedPreferences sharedPreferences, String str, String str2) {
        if (sharedPreferences.contains(a(str, str2)) || sharedPreferences.contains(k(str))) {
            return true;
        }
        return y;
    }

    static String a(SharedPreferences sharedPreferences) {
        return d(sharedPreferences.getString(G, C));
    }

    public static Integer a(SharedPreferences sharedPreferences, String str, boolean z2) {
        String i2 = i(sharedPreferences, str);
        if (i2 == null) {
            return null;
        }
        return p(i2.split(",")[z2 ? 1 : 0]);
    }

    static boolean a(Context context) {
        if ((context.getResources().getConfiguration().uiMode & 48) == 32) {
            return true;
        }
        return y;
    }

    static boolean a(SharedPreferences sharedPreferences, String str) {
        return sharedPreferences.contains(t(str));
    }

    static int a(int i2) {
        return Math.max(1, Math.min(126, i2));
    }
}
