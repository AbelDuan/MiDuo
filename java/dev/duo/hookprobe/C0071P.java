package dev.duo.hookprobe;

import android.content.Context;
import android.content.SharedPreferences;
import dev.duo.icons.C0131g;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* renamed from: dev.duo.hookprobe.P */
/* loaded from: classes.dex */
public final class C0071P {

    /* renamed from: A */
    static final String f1129A = "debug.duo.master";

    /* renamed from: B */
    static final String f1130B = "_global/innerNativeBar";

    /* renamed from: G */
    static final String f1135G = "_global/railColor";

    /* renamed from: H */
    static final String f1136H = "_global/railFollowDark";

    /* renamed from: I */
    static final String f1137I = "_global/railCustom";

    /* renamed from: J */
    static final String f1138J = "_global/railSidebarApps";

    /* renamed from: K */
    static final String f1139K = "_global/railPanelOrder";

    /* renamed from: L */
    static final String f1140L = "_global/railSidebarFreeform";

    /* renamed from: M */
    static final String f1141M = "_global/railSidebarKeyEnd";

    /* renamed from: N */
    static final String f1142N = "_global/screenOffTimeoutSaved";

    /* renamed from: O */
    static final String f1143O = "ios_notification_";

    /* renamed from: P */
    static final String f1144P = "back,home,recents,dock,dock,dock,-";

    /* renamed from: Q */
    static final String f1145Q = "_global/rotationSuggest";

    /* renamed from: R */
    static final String f1146R = "_global/standbyClock";

    /* renamed from: S */
    static final String f1147S = "_global/notificationIcons";

    /* renamed from: T */
    static final String f1148T = "_global/searchButton";

    /* renamed from: U */
    static final String f1149U = "_global/pickButton";

    /* renamed from: V */
    static final String f1150V = "_global/foldAnimation";

    /* renamed from: W */
    static final String f1151W = "_global/foldSplit";

    /* renamed from: X */
    static final String f1152X = "_global/workbench";

    /* renamed from: Y */
    static final boolean f1153Y = true;

    /* renamed from: Z */
    static final String f1154Z = "_global/foldNudge";

    /* renamed from: a */
    static final String f1155a = "duo_top";

    /* renamed from: a0 */
    static final String f1156a0 = "_global/cellularStyle";

    /* renamed from: b0 */
    static final String f1158b0 = "_global/statusThin";

    /* renamed from: c0 */
    static final String f1160c0 = "_global/percentTop";

    /* renamed from: d */
    static final String f1161d = "_global/outerHideTop";

    /* renamed from: d0 */
    static final String f1162d0 = "_global/statusDy/";

    /* renamed from: e */
    static final String f1163e = "_global/nonDuoOuterTopPx";

    /* renamed from: f */
    static final String f1165f = "com.ss.android.ugc.aweme/outerVideoFit";

    /* renamed from: f0 */
    static final int f1166f0 = 60;

    /* renamed from: g */
    static final String f1167g = "com.ss.android.ugc.aweme/innerVideoFit";

    /* renamed from: g0 */
    static final String f1168g0 = "_global/rotationPortraitRight";

    /* renamed from: h */
    static final boolean f1169h = true;

    /* renamed from: h0 */
    static final String f1170h0 = "_global/rotationLandscapeRight";

    /* renamed from: i0 */
    static final String f1172i0 = "_railPalette/";

    /* renamed from: j0 */
    static final String f1174j0 = "_global/outerScale";

    /* renamed from: k0 */
    static final int f1176k0 = 60;

    /* renamed from: l */
    static final int f1177l = 1;

    /* renamed from: l0 */
    static final int f1178l0 = 100;

    /* renamed from: m */
    static final int f1179m = 126;

    /* renamed from: m0 */
    static final int f1180m0 = 90;

    /* renamed from: n */
    static final int f1181n = 126;

    /* renamed from: o0 */
    static final String f1184o0 = "debug.duo.scale.wx";

    /* renamed from: u */
    static final String f1190u = "_global/defaultPx";

    /* renamed from: v */
    static final String f1191v = "_global/defaultPxInner";

    /* renamed from: w */
    static final String f1192w = "_global/defaultPxOuter";

    /* renamed from: y */
    static final boolean f1194y = false;

    /* renamed from: z */
    static final String f1195z = "_global/master";

    /* renamed from: i */
    public static final Set<String> f1171i = Collections.unmodifiableSet(new HashSet(Arrays.asList("com.android.quicksearchbox", "com.android.camera", "miui.systemui.plugin")));

    /* renamed from: j */
    public static final Set<String> f1173j = Collections.unmodifiableSet(new HashSet(Arrays.asList("com.miui.securitycenter", "com.android.safetycenter.resources")));

    /* renamed from: b */
    static final String f1157b = "com.ss.android.ugc.aweme";

    /* renamed from: c */
    static final String f1159c = "com.xiaomi.smarthome";

    /* renamed from: k */
    public static final Set<String> f1175k = Collections.unmodifiableSet(new HashSet(Arrays.asList(f1157b, f1159c)));

    /* renamed from: o */
    static final List<String> f1183o = Collections.unmodifiableList(Arrays.asList("system", "com.android.systemui", "com.miui.home", "com.miui.personalassistant", "com.android.quicksearchbox"));

    /* renamed from: n0 */
    static final String f1182n0 = "com.tencent.mm";

    /* renamed from: p */
    static final List<String> f1185p = Collections.unmodifiableList(Arrays.asList(C0131g.f1964b, f1182n0, f1157b, "com.android.settings", "com.xiaomi.market", "com.miui.miwallpaper"));

    /* renamed from: q */
    static final List<String> f1186q = Collections.unmodifiableList(Arrays.asList("system", "com.android.systemui", "com.miui.home", "com.miui.personalassistant", C0131g.f1964b, "com.android.settings", "com.xiaomi.market", f1182n0));

    /* renamed from: r */
    static final String f1187r = "inner";

    /* renamed from: s */
    static final String f1188s = "outer";

    /* renamed from: t */
    static final String[] f1189t = {f1187r, f1188s};

    /* renamed from: x */
    static final int[] f1193x = {1, 75, 126};

    /* renamed from: E */
    static final String f1133E = "follow";

    /* renamed from: C */
    static final String f1131C = "white";

    /* renamed from: D */
    static final String f1132D = "black";

    /* renamed from: F */
    static final String[] f1134F = {f1133E, f1131C, f1132D};

    /* renamed from: e0 */
    static final String[] f1164e0 = {"outerDesk", "outerApp", "innerLand", "innerPort", "lockOuter", "lockInnerLand", "lockInnerPort"};

    private C0071P() {
    }

    /* renamed from: a */
    static String m1214a(String str) {
        return f1187r.equals(str) ? f1167g : f1165f;
    }

    /* renamed from: b */
    static String m1227b(String str) {
        return f1157b + (f1187r.equals(str) ? "/innerHideTop" : "/outerHideTop");
    }

    /* renamed from: c */
    static boolean m1233c(String str) {
        if (m1227b(f1187r).equals(str) || m1227b(f1188s).equals(str)) {
            return true;
        }
        return f1194y;
    }

    /* renamed from: d */
    static int m1235d(SharedPreferences sharedPreferences) {
        return m1210a(sharedPreferences.getInt(f1163e, 126));
    }

    /* renamed from: e */
    static int m1240e(SharedPreferences sharedPreferences, String str) {
        return m1219a(sharedPreferences, str, f1188s) ? m1224b(sharedPreferences, str, f1188s) : m1235d(sharedPreferences);
    }

    /* renamed from: f */
    static boolean m1244f(SharedPreferences sharedPreferences, String str) {
        if (m1254m(str) && sharedPreferences.getBoolean(m1253l(str), sharedPreferences.getBoolean(f1161d, f1194y))) {
            return true;
        }
        return f1194y;
    }

    /* renamed from: g */
    static String m1246g(String str) {
        return f1187r.equals(str) ? f1191v : f1192w;
    }

    /* renamed from: h */
    static boolean m1248h(String str) {
        if (str.endsWith("/topSafePx") || str.endsWith("/topSafePxInner") || str.endsWith("/topSafePxOuter") || f1190u.equals(str) || f1191v.equals(str) || f1192w.equals(str)) {
            return true;
        }
        return f1194y;
    }

    /* renamed from: i */
    static String m1250i(String str) {
        return str + "/innerNativeBar";
    }

    /* renamed from: j */
    static boolean m1251j(String str) {
        if (f1130B.equals(str) || str.endsWith("/innerNativeBar")) {
            return true;
        }
        return f1194y;
    }

    /* renamed from: k */
    static String m1252k(String str) {
        return str + "/topSafePx";
    }

    /* renamed from: l */
    static String m1253l(String str) {
        return str + "/outerHideTop";
    }

    /* renamed from: m */
    static boolean m1254m(String str) {
        if (str == null || "android".equals(str) || "com.miui.home".equals(str) || "com.miui.personalassistant".equals(str) || "com.android.systemui".equals(str) || C0131g.f1963a.equals(str) || "dev.duo.workspaceprobe".equals(str) || f1171i.contains(str)) {
            return f1194y;
        }
        return true;
    }

    /* renamed from: n */
    static boolean m1255n(String str) {
        if (f1161d.equals(str) || f1163e.equals(str) || str.endsWith("/outerHideTop")) {
            return true;
        }
        return f1194y;
    }

    /* renamed from: o */
    static String m1256o(String str) {
        int indexOf;
        if (str == null || str.startsWith("_") || (indexOf = str.indexOf(47)) <= 0) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    /* renamed from: p */
    static Integer m1257p(String str) {
        if (C0054J.f922e.equals(str)) {
            return null;
        }
        if (str == null || !str.matches("#?[0-9a-fA-F]{6}")) {
            throw new IllegalArgumentException("颜色须为六位 HEX，如 #F3F3F3");
        }
        return Integer.valueOf(Integer.parseInt(str.replace("#", ""), 16) | (-16777216));
    }

    /* renamed from: q */
    static String m1258q(String str) {
        return str + "/railColor";
    }

    /* renamed from: r */
    static boolean m1259r(String str) {
        if (str.endsWith("/railPalette") || str.startsWith(f1172i0) || str.endsWith("/railColor") || f1136H.equals(str)) {
            return true;
        }
        return f1194y;
    }

    /* renamed from: s */
    static String m1260s(String str) {
        return str + "/railPalette";
    }

    /* renamed from: t */
    static String m1261t(String str) {
        return str + "/outerScale";
    }

    /* renamed from: u */
    static boolean m1262u(String str) {
        return str.endsWith("/outerScale");
    }

    /* renamed from: a */
    public static boolean m1220a(Map<String, ?> map) {
        Object obj = map.get(f1195z);
        if (obj != null) {
            if (Boolean.FALSE.equals(obj)) {
                return f1194y;
            }
            return true;
        }
        if (map.isEmpty()) {
            return f1194y;
        }
        return true;
    }

    /* renamed from: b */
    static int m1226b(Map<String, ?> map, String str) {
        if (map.containsKey(m1215a(str, f1188s)) || map.containsKey(m1252k(str))) {
            return m1211a(map, str, f1188s);
        }
        Integer num = (Integer) map.get(f1163e);
        if (num == null) {
            return 126;
        }
        return m1210a(num.intValue());
    }

    /* renamed from: c */
    static boolean m1234c(Map<String, ?> map, String str) {
        Object obj = map.get(m1253l(str));
        if (!m1254m(str)) {
            return f1194y;
        }
        Boolean bool = Boolean.TRUE;
        if (obj == null) {
            obj = map.get(f1161d);
        }
        if (bool.equals(obj)) {
            return true;
        }
        return f1194y;
    }

    /* renamed from: d */
    public static boolean m1239d(SharedPreferences sharedPreferences, String str) {
        return sharedPreferences.getBoolean(m1250i(str), sharedPreferences.getBoolean(f1130B, f1194y));
    }

    /* renamed from: e */
    public static boolean m1242e(String str) {
        return f1173j.contains(str);
    }

    /* renamed from: f */
    static String m1243f(String str) {
        return str + "/enabled";
    }

    /* renamed from: g */
    static int m1245g(SharedPreferences sharedPreferences, String str) {
        return sharedPreferences.contains(m1261t(str)) ? m1222b(sharedPreferences.getInt(m1261t(str), f1180m0)) : sharedPreferences.getBoolean(m1243f(str), m1242e(str)) ? m1230c(sharedPreferences) : f1178l0;
    }

    /* renamed from: i */
    static String m1249i(SharedPreferences sharedPreferences, String str) {
        String string = sharedPreferences.getString(m1260s(str), null);
        if (string == null) {
            return null;
        }
        return sharedPreferences.getString(f1172i0 + string, null);
    }

    /* renamed from: d */
    private static String m1238d(String str) {
        return f1132D.equals(str) ? f1132D : f1131C;
    }

    /* renamed from: e */
    static boolean m1241e(SharedPreferences sharedPreferences) {
        return sharedPreferences.getBoolean(f1136H, f1194y);
    }

    /* renamed from: h */
    static String m1247h(SharedPreferences sharedPreferences, String str) {
        String string = sharedPreferences.getString(m1258q(str), null);
        if (string == null) {
            return null;
        }
        return m1238d(string);
    }

    /* renamed from: a */
    static boolean m1221a(Map<String, ?> map, String str) {
        Object obj = map.get(m1250i(str));
        Boolean bool = Boolean.TRUE;
        if (obj == null) {
            obj = map.get(f1130B);
        }
        return bool.equals(obj);
    }

    /* renamed from: c */
    public static int m1231c(SharedPreferences sharedPreferences, String str) {
        int i = 0;
        if (!m1229b(sharedPreferences) || sharedPreferences.getBoolean(m1243f(str), m1242e(str))) {
            return 0;
        }
        boolean m1244f = m1244f(sharedPreferences, str);
        if (f1157b.equals(str) && sharedPreferences.getBoolean(m1227b(f1187r), f1194y)) {
            i = 2;
        }
        return (m1244f ? 1 : 0) | i;
    }

    /* renamed from: d */
    static String m1237d(SharedPreferences sharedPreferences, String str, boolean z) {
        String m1247h = m1247h(sharedPreferences, str);
        if (m1247h != null) {
            return m1247h;
        }
        if (m1241e(sharedPreferences)) {
            return z ? f1132D : f1131C;
        }
        return m1213a(sharedPreferences);
    }

    /* renamed from: a */
    static String m1215a(String str, String str2) {
        return str + "/topSafePx" + (f1187r.equals(str2) ? "Inner" : "Outer");
    }

    /* renamed from: b */
    public static boolean m1229b(SharedPreferences sharedPreferences) {
        if (sharedPreferences.contains(f1195z)) {
            return sharedPreferences.getBoolean(f1195z, true);
        }
        return !sharedPreferences.getAll().isEmpty();
    }

    /* renamed from: a */
    static int m1211a(Map<String, ?> map, String str, String str2) {
        Integer num = (Integer) map.get(m1215a(str, str2));
        if (num != null) {
            return m1210a(num.intValue());
        }
        Integer num2 = (Integer) map.get(m1252k(str));
        if (num2 != null) {
            return m1210a(num2.intValue());
        }
        Integer num3 = (Integer) map.get(m1246g(str2));
        if (num3 != null) {
            return m1210a(num3.intValue());
        }
        Integer num4 = (Integer) map.get(f1190u);
        if (num4 != null) {
            return num4.intValue();
        }
        return 126;
    }

    /* renamed from: c */
    static boolean m1232c(SharedPreferences sharedPreferences, String str, boolean z) {
        return f1132D.equals(m1237d(sharedPreferences, str, z));
    }

    /* renamed from: b */
    static int m1223b(SharedPreferences sharedPreferences, String str) {
        return sharedPreferences.contains(m1246g(str)) ? m1210a(sharedPreferences.getInt(m1246g(str), 126)) : sharedPreferences.getInt(f1190u, 126);
    }

    /* renamed from: c */
    static int m1230c(SharedPreferences sharedPreferences) {
        return m1222b(sharedPreferences.getInt(f1174j0, f1180m0));
    }

    /* renamed from: d */
    static int m1236d(Map<String, ?> map, String str) {
        Integer num = (Integer) map.get(m1261t(str));
        if (num == null) {
            num = (Integer) map.get(f1174j0);
        }
        return num == null ? f1180m0 : m1222b(num.intValue());
    }

    /* renamed from: b */
    static int m1224b(SharedPreferences sharedPreferences, String str, String str2) {
        return sharedPreferences.contains(m1215a(str, str2)) ? m1210a(sharedPreferences.getInt(m1215a(str, str2), 126)) : sharedPreferences.contains(m1252k(str)) ? m1210a(sharedPreferences.getInt(m1252k(str), 126)) : m1223b(sharedPreferences, str2);
    }

    /* renamed from: b */
    public static int m1225b(SharedPreferences sharedPreferences, String str, boolean z) {
        Integer m1212a = m1212a(sharedPreferences, str, z);
        if (m1212a != null) {
            return m1212a.intValue();
        }
        return m1232c(sharedPreferences, str, z) ? -16777216 : -789517;
    }

    /* renamed from: a */
    static Map<String, int[]> m1216a(Map<String, ?> map, Set<String> set) {
        HashMap hashMap = new HashMap();
        for (String str : set) {
            hashMap.put(str, new int[]{m1221a(map, str) ? 0 : m1211a(map, str, f1187r), m1211a(map, str, f1188s)});
        }
        return Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: b */
    static int m1222b(int i) {
        return Math.max(60, Math.min(f1178l0, i));
    }

    /* renamed from: b */
    static Map<String, Integer> m1228b(Map<String, ?> map, Set<String> set) {
        HashMap hashMap = new HashMap();
        for (String str : set) {
            hashMap.put(str, Integer.valueOf(m1236d(map, str)));
        }
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            String key = entry.getKey();
            if (!key.startsWith("_") && m1262u(key)) {
                String substring = key.substring(0, key.length() - 11);
                if (!MainActivity.f960d.contains(substring)) {
                    hashMap.put(substring, Integer.valueOf(m1222b(((Integer) entry.getValue()).intValue())));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    static boolean m1219a(SharedPreferences sharedPreferences, String str, String str2) {
        if (sharedPreferences.contains(m1215a(str, str2)) || sharedPreferences.contains(m1252k(str))) {
            return true;
        }
        return f1194y;
    }

    /* renamed from: a */
    static String m1213a(SharedPreferences sharedPreferences) {
        return m1238d(sharedPreferences.getString(f1135G, f1131C));
    }

    /* renamed from: a */
    public static Integer m1212a(SharedPreferences sharedPreferences, String str, boolean z) {
        String m1249i = m1249i(sharedPreferences, str);
        if (m1249i == null) {
            return null;
        }
        return m1257p(m1249i.split(",")[z ? 1 : 0]);
    }

    /* renamed from: a */
    static boolean m1217a(Context context) {
        if ((context.getResources().getConfiguration().uiMode & 48) == 32) {
            return true;
        }
        return f1194y;
    }

    /* renamed from: a */
    static boolean m1218a(SharedPreferences sharedPreferences, String str) {
        return sharedPreferences.contains(m1261t(str));
    }

    /* renamed from: a */
    static int m1210a(int i) {
        return Math.max(1, Math.min(126, i));
    }
}
