package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class P {
    static final java.lang.String A = "debug.duo.master";
    static final java.lang.String B = "_global/innerNativeBar";
    static final java.lang.String G = "_global/railColor";
    static final java.lang.String H = "_global/railFollowDark";
    static final java.lang.String I = "_global/railCustom";
    static final java.lang.String J = "_global/railSidebarApps";
    static final java.lang.String K = "_global/workbenchRail";
    static final java.lang.String L = "_global/railPanelOrder";
    static final java.lang.String M = "_global/railSidebarFreeform";
    static final java.lang.String N = "_global/railSidebarKeyEnd";
    static final java.lang.String O = "_global/screenOffTimeoutSaved";
    static final java.lang.String P = "back,home,recents,dock,dock,dock,-";
    static final java.lang.String Q = "_global/rotationSuggest";
    static final java.lang.String R = "_global/standbyClock";
    static final java.lang.String S = "_global/notificationIcons";
    static final java.lang.String T = "_global/searchButton";
    static final java.lang.String U = "_global/pickButton";
    static final java.lang.String V = "_global/foldAnimation";
    static final java.lang.String W = "_global/foldSplit";
    static final java.lang.String X = "_global/workbench";
    static final boolean Y = true;
    static final java.lang.String Z = "_global/foldNudge";
    static final java.lang.String a = "duo_top";
    static final java.lang.String a0 = "_global/cellularStyle";
    static final java.lang.String b0 = "_global/statusThin";
    static final java.lang.String c0 = "_global/percentTop";
    static final java.lang.String d = "_global/outerHideTop";
    static final java.lang.String d0 = "_global/statusDy/";
    static final java.lang.String e = "_global/nonDuoOuterTopPx";
    static final java.lang.String f = "com.ss.android.ugc.aweme/outerVideoFit";
    static final int f0 = 60;
    static final java.lang.String g = "com.ss.android.ugc.aweme/innerVideoFit";
    static final java.lang.String g0 = "_global/rotationPortraitRight";
    static final boolean h = true;
    static final java.lang.String h0 = "_global/rotationLandscapeRight";
    static final java.lang.String i0 = "_railPalette/";
    static final java.lang.String j0 = "_global/outerScale";
    static final int k0 = 60;
    static final int l = 1;
    static final int l0 = 100;
    static final int m = 126;
    static final int m0 = 90;
    static final int n = 126;
    static final java.lang.String o0 = "debug.duo.scale.wx";
    static final java.lang.String u = "_global/defaultPx";
    static final java.lang.String v = "_global/defaultPxInner";
    static final java.lang.String w = "_global/defaultPxOuter";
    static final boolean y = false;
    static final java.lang.String z = "_global/master";
    public static final java.util.Set<java.lang.String> i = java.util.Collections.unmodifiableSet(new java.util.HashSet(java.util.Arrays.asList("com.android.quicksearchbox", "com.android.camera", "miui.systemui.plugin")));
    public static final java.util.Set<java.lang.String> j = java.util.Collections.unmodifiableSet(new java.util.HashSet(java.util.Arrays.asList("com.miui.securitycenter", "com.android.safetycenter.resources")));
    static final java.lang.String b = "com.ss.android.ugc.aweme";
    static final java.lang.String c = "com.xiaomi.smarthome";
    public static final java.util.Set<java.lang.String> k = java.util.Collections.unmodifiableSet(new java.util.HashSet(java.util.Arrays.asList(b, c)));
    static final java.util.List<java.lang.String> o = java.util.Collections.unmodifiableList(java.util.Arrays.asList("system", "com.android.systemui", "com.miui.home", "com.miui.personalassistant", "com.android.quicksearchbox"));
    static final java.lang.String n0 = "com.tencent.mm";
    static final java.util.List<java.lang.String> p = java.util.Collections.unmodifiableList(java.util.Arrays.asList(dev.duo.icons.g.b, n0, b, "com.android.settings", "com.xiaomi.market", "com.miui.miwallpaper"));
    static final java.util.List<java.lang.String> q = java.util.Collections.unmodifiableList(java.util.Arrays.asList("system", "com.android.systemui", "com.miui.home", "com.miui.personalassistant", dev.duo.icons.g.b, "com.android.settings", "com.xiaomi.market", n0));
    static final java.lang.String r = "inner";
    static final java.lang.String s = "outer";
    static final java.lang.String[] t = {r, s};
    static final int[] x = {1, 75, 126};
    static final java.lang.String E = "follow";
    static final java.lang.String C = "white";
    static final java.lang.String D = "black";
    static final java.lang.String[] F = {E, C, D};
    static final java.lang.String[] e0 = {"outerDesk", "outerApp", "innerLand", "innerPort", "lockOuter", "lockInnerLand", "lockInnerPort"};

    private P() {
    }

    static java.lang.String a(java.lang.String str) {
        return r.equals(str) ? g : f;
    }

    static java.lang.String b(java.lang.String str) {
        return b + (r.equals(str) ? "/innerHideTop" : "/outerHideTop");
    }

    static boolean c(java.lang.String str) {
        if (b(r).equals(str) || b(s).equals(str)) {
            return true;
        }
        return y;
    }

    static int d(android.content.SharedPreferences sharedPreferences) {
        return a(sharedPreferences.getInt(e, 126));
    }

    static int e(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
        return a(sharedPreferences, str, s) ? b(sharedPreferences, str, s) : d(sharedPreferences);
    }

    static boolean f(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
        if (m(str) && sharedPreferences.getBoolean(l(str), sharedPreferences.getBoolean(d, y))) {
            return true;
        }
        return y;
    }

    static java.lang.String g(java.lang.String str) {
        return r.equals(str) ? v : w;
    }

    static boolean h(java.lang.String str) {
        if (str.endsWith("/topSafePx") || str.endsWith("/topSafePxInner") || str.endsWith("/topSafePxOuter") || u.equals(str) || v.equals(str) || w.equals(str)) {
            return true;
        }
        return y;
    }

    static java.lang.String i(java.lang.String str) {
        return str + "/innerNativeBar";
    }

    static boolean j(java.lang.String str) {
        if (B.equals(str) || str.endsWith("/innerNativeBar")) {
            return true;
        }
        return y;
    }

    static java.lang.String k(java.lang.String str) {
        return str + "/topSafePx";
    }

    static java.lang.String l(java.lang.String str) {
        return str + "/outerHideTop";
    }

    static boolean m(java.lang.String str) {
        if (str == null || "android".equals(str) || "com.miui.home".equals(str) || "com.miui.personalassistant".equals(str) || "com.android.systemui".equals(str) || dev.duo.icons.g.a.equals(str) || "dev.duo.workspaceprobe".equals(str) || i.contains(str)) {
            return y;
        }
        return true;
    }

    static boolean n(java.lang.String str) {
        if (d.equals(str) || e.equals(str) || str.endsWith("/outerHideTop")) {
            return true;
        }
        return y;
    }

    static java.lang.String o(java.lang.String str) {
        int indexOf;
        if (str == null || str.startsWith("_") || (indexOf = str.indexOf(47)) <= 0) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    static java.lang.Integer p(java.lang.String str) {
        if (dev.duo.hookprobe.J.e.equals(str)) {
            return null;
        }
        if (str == null || !str.matches("#?[0-9a-fA-F]{6}")) {
            throw new java.lang.IllegalArgumentException("颜色须为六位 HEX，如 #F3F3F3");
        }
        return java.lang.Integer.valueOf(java.lang.Integer.parseInt(str.replace("#", ""), 16) | (-16777216));
    }

    static java.lang.String q(java.lang.String str) {
        return str + "/railColor";
    }

    static boolean r(java.lang.String str) {
        if (str.endsWith("/railPalette") || str.startsWith(i0) || str.endsWith("/railColor") || H.equals(str)) {
            return true;
        }
        return y;
    }

    static java.lang.String s(java.lang.String str) {
        return str + "/railPalette";
    }

    static java.lang.String t(java.lang.String str) {
        return str + "/outerScale";
    }

    static boolean u(java.lang.String str) {
        return str.endsWith("/outerScale");
    }

    public static boolean a(java.util.Map<java.lang.String, ?> map) {
        java.lang.Object obj = map.get(z);
        if (obj != null) {
            if (java.lang.Boolean.FALSE.equals(obj)) {
                return y;
            }
            return true;
        }
        if (map.isEmpty()) {
            return y;
        }
        return true;
    }

    static int b(java.util.Map<java.lang.String, ?> map, java.lang.String str) {
        if (map.containsKey(a(str, s)) || map.containsKey(k(str))) {
            return a(map, str, s);
        }
        java.lang.Integer num = (java.lang.Integer) map.get(e);
        if (num == null) {
            return 126;
        }
        return a(num.intValue());
    }

    static boolean c(java.util.Map<java.lang.String, ?> map, java.lang.String str) {
        java.lang.Object obj = map.get(l(str));
        if (!m(str)) {
            return y;
        }
        java.lang.Boolean bool = java.lang.Boolean.TRUE;
        if (obj == null) {
            obj = map.get(d);
        }
        if (bool.equals(obj)) {
            return true;
        }
        return y;
    }

    public static boolean d(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
        return sharedPreferences.getBoolean(i(str), sharedPreferences.getBoolean(B, y));
    }

    public static boolean e(java.lang.String str) {
        return j.contains(str);
    }

    static java.lang.String f(java.lang.String str) {
        return str + "/enabled";
    }

    static int g(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
        return sharedPreferences.contains(t(str)) ? b(sharedPreferences.getInt(t(str), m0)) : sharedPreferences.getBoolean(f(str), e(str)) ? c(sharedPreferences) : l0;
    }

    static java.lang.String i(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
        java.lang.String string = sharedPreferences.getString(s(str), null);
        if (string == null) {
            return null;
        }
        return sharedPreferences.getString(i0 + string, null);
    }

    private static java.lang.String d(java.lang.String str) {
        return D.equals(str) ? D : C;
    }

    static boolean e(android.content.SharedPreferences sharedPreferences) {
        return sharedPreferences.getBoolean(H, y);
    }

    static java.lang.String h(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
        java.lang.String string = sharedPreferences.getString(q(str), null);
        if (string == null) {
            return null;
        }
        return d(string);
    }

    static boolean a(java.util.Map<java.lang.String, ?> map, java.lang.String str) {
        java.lang.Object obj = map.get(i(str));
        java.lang.Boolean bool = java.lang.Boolean.TRUE;
        if (obj == null) {
            obj = map.get(B);
        }
        return bool.equals(obj);
    }

    public static int c(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
        int i2 = 0;
        if (!b(sharedPreferences) || sharedPreferences.getBoolean(f(str), e(str))) {
            return 0;
        }
        boolean f2 = f(sharedPreferences, str);
        if (b.equals(str) && sharedPreferences.getBoolean(b(r), y)) {
            i2 = 2;
        }
        return (f2 ? 1 : 0) | i2;
    }

    static java.lang.String d(android.content.SharedPreferences sharedPreferences, java.lang.String str, boolean z2) {
        java.lang.String h2 = h(sharedPreferences, str);
        if (h2 != null) {
            return h2;
        }
        if (e(sharedPreferences)) {
            return z2 ? D : C;
        }
        return a(sharedPreferences);
    }

    static java.lang.String a(java.lang.String str, java.lang.String str2) {
        return str + "/topSafePx" + (r.equals(str2) ? "Inner" : "Outer");
    }

    public static boolean b(android.content.SharedPreferences sharedPreferences) {
        if (sharedPreferences.contains(z)) {
            return sharedPreferences.getBoolean(z, true);
        }
        return !sharedPreferences.getAll().isEmpty();
    }

    static int a(java.util.Map<java.lang.String, ?> map, java.lang.String str, java.lang.String str2) {
        java.lang.Integer num = (java.lang.Integer) map.get(a(str, str2));
        if (num != null) {
            return a(num.intValue());
        }
        java.lang.Integer num2 = (java.lang.Integer) map.get(k(str));
        if (num2 != null) {
            return a(num2.intValue());
        }
        java.lang.Integer num3 = (java.lang.Integer) map.get(g(str2));
        if (num3 != null) {
            return a(num3.intValue());
        }
        java.lang.Integer num4 = (java.lang.Integer) map.get(u);
        if (num4 != null) {
            return num4.intValue();
        }
        return 126;
    }

    static boolean c(android.content.SharedPreferences sharedPreferences, java.lang.String str, boolean z2) {
        return D.equals(d(sharedPreferences, str, z2));
    }

    static int b(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
        return sharedPreferences.contains(g(str)) ? a(sharedPreferences.getInt(g(str), 126)) : sharedPreferences.getInt(u, 126);
    }

    static int c(android.content.SharedPreferences sharedPreferences) {
        return b(sharedPreferences.getInt(j0, m0));
    }

    static int d(java.util.Map<java.lang.String, ?> map, java.lang.String str) {
        java.lang.Integer num = (java.lang.Integer) map.get(t(str));
        if (num == null) {
            num = (java.lang.Integer) map.get(j0);
        }
        return num == null ? m0 : b(num.intValue());
    }

    static int b(android.content.SharedPreferences sharedPreferences, java.lang.String str, java.lang.String str2) {
        return sharedPreferences.contains(a(str, str2)) ? a(sharedPreferences.getInt(a(str, str2), 126)) : sharedPreferences.contains(k(str)) ? a(sharedPreferences.getInt(k(str), 126)) : b(sharedPreferences, str2);
    }

    public static int b(android.content.SharedPreferences sharedPreferences, java.lang.String str, boolean z2) {
        java.lang.Integer a2 = a(sharedPreferences, str, z2);
        if (a2 != null) {
            return a2.intValue();
        }
        return c(sharedPreferences, str, z2) ? -16777216 : -789517;
    }

    static java.util.Map<java.lang.String, int[]> a(java.util.Map<java.lang.String, ?> map, java.util.Set<java.lang.String> set) {
        java.util.HashMap hashMap = new java.util.HashMap();
        for (java.lang.String str : set) {
            hashMap.put(str, new int[]{a(map, str) ? 0 : a(map, str, r), a(map, str, s)});
        }
        return java.util.Collections.unmodifiableMap(hashMap);
    }

    static int b(int i2) {
        return java.lang.Math.max(60, java.lang.Math.min(l0, i2));
    }

    static java.util.Map<java.lang.String, java.lang.Integer> b(java.util.Map<java.lang.String, ?> map, java.util.Set<java.lang.String> set) {
        java.util.HashMap hashMap = new java.util.HashMap();
        for (java.lang.String str : set) {
            hashMap.put(str, java.lang.Integer.valueOf(d(map, str)));
        }
        for (java.util.Map.Entry<java.lang.String, ?> entry : map.entrySet()) {
            java.lang.String key = entry.getKey();
            if (!key.startsWith("_") && u(key)) {
                java.lang.String substring = key.substring(0, key.length() - 11);
                if (!dev.duo.hookprobe.MainActivity.d.contains(substring)) {
                    hashMap.put(substring, java.lang.Integer.valueOf(b(((java.lang.Integer) entry.getValue()).intValue())));
                }
            }
        }
        return java.util.Collections.unmodifiableMap(hashMap);
    }

    static boolean a(android.content.SharedPreferences sharedPreferences, java.lang.String str, java.lang.String str2) {
        if (sharedPreferences.contains(a(str, str2)) || sharedPreferences.contains(k(str))) {
            return true;
        }
        return y;
    }

    static java.lang.String a(android.content.SharedPreferences sharedPreferences) {
        return d(sharedPreferences.getString(G, C));
    }

    public static java.lang.Integer a(android.content.SharedPreferences sharedPreferences, java.lang.String str, boolean z2) {
        java.lang.String i2 = i(sharedPreferences, str);
        if (i2 == null) {
            return null;
        }
        return p(i2.split(",")[z2 ? 1 : 0]);
    }

    static boolean a(android.content.Context context) {
        if ((context.getResources().getConfiguration().uiMode & 48) == 32) {
            return true;
        }
        return y;
    }

    static boolean a(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
        return sharedPreferences.contains(t(str));
    }

    static int a(int i2) {
        return java.lang.Math.max(1, java.lang.Math.min(126, i2));
    }
}
