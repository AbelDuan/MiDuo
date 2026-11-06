package dev.duo.hookprobe;

import android.content.SharedPreferences;
import android.os.Bundle;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0010a;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0015f;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0018i;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0021l;
import io.github.libxposed.service.XposedService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/* renamed from: dev.duo.hookprobe.o */
/* loaded from: classes.dex */
final class C0113o {

    /* renamed from: b */
    private static final String f1676b = "_global/allAppsEnabled";

    /* renamed from: c */
    private static final String f1677c = "_global/allAppsSeen";

    /* renamed from: d */
    private static final String f1678d = "_global/defaultEnabled";

    /* renamed from: e */
    private static final String[] f1679e = {C0015f.f408c, C0018i.f429a, C0018i.f437i, C0010a.f191b};

    /* renamed from: f */
    private static final String[] f1680f = {C0021l.f489a};

    /* renamed from: g */
    private static final Set<String> f1681g = new HashSet(Arrays.asList(C0015f.f406a, C0015f.f407b));

    /* renamed from: h */
    static final String f1682h = "/pageColors/";

    /* renamed from: i */
    static volatile boolean f1683i;

    /* renamed from: a */
    final SharedPreferences f1684a;

    C0113o(XposedService xposedService) {
        this.f1684a = xposedService.getRemotePreferences("duo_top");
    }

    /* renamed from: A */
    boolean m1770A() {
        return this.f1684a.getBoolean("_global/statusThin", false);
    }

    /* renamed from: B */
    boolean m1771B() {
        return this.f1684a.getBoolean("_global/workbench", true);
    }

    /* renamed from: a */
    boolean m1778a(String str) {
        return this.f1684a.getBoolean(C0071P.m1214a(str), true);
    }

    /* renamed from: b */
    boolean m1790b(String str) {
        return this.f1684a.getBoolean(C0071P.m1227b(str), false);
    }

    /* renamed from: c */
    boolean m1797c(int i) {
        return this.f1684a.edit().putInt("_global/outerScale", C0071P.m1222b(i)).commit();
    }

    /* renamed from: d */
    boolean m1803d(String str) {
        return this.f1684a.contains(C0071P.m1253l(str));
    }

    /* renamed from: e */
    boolean m1811e(String str, boolean z) {
        return this.f1684a.edit().putBoolean(C0071P.m1214a(str), z).commit();
    }

    /* renamed from: f */
    boolean m1816f(String str, boolean z) {
        return this.f1684a.edit().putBoolean(C0071P.m1227b(str), z).commit();
    }

    /* renamed from: g */
    boolean m1819g(String str) {
        return this.f1684a.edit().remove(C0071P.m1261t(str)).commit();
    }

    /* renamed from: h */
    boolean m1824h(String str, boolean z) {
        return this.f1684a.edit().putBoolean(C0071P.m1253l(str), z).commit();
    }

    /* renamed from: i */
    boolean m1827i(String str) {
        return !C0071P.f1171i.contains(str) && this.f1684a.getBoolean(C0071P.m1243f(str), C0071P.m1242e(str));
    }

    /* renamed from: j */
    boolean m1831j(boolean z) {
        return this.f1684a.edit().putBoolean("_global/outerHideTop", z).commit();
    }

    /* renamed from: k */
    String m1832k() {
        return C0071P.m1213a(this.f1684a);
    }

    /* renamed from: l */
    boolean m1836l() {
        return this.f1684a.getBoolean("_global/innerNativeBar", false);
    }

    /* renamed from: m */
    boolean m1838m() {
        return C0071P.m1229b(this.f1684a);
    }

    /* renamed from: n */
    boolean m1842n(String str) {
        return C0071P.m1244f(this.f1684a, str);
    }

    /* renamed from: o */
    boolean m1845o() {
        return this.f1684a.getBoolean("_global/outerHideTop", false);
    }

    /* renamed from: p */
    int m1847p() {
        return C0071P.m1230c(this.f1684a);
    }

    /* renamed from: q */
    int m1850q() {
        return C0071P.m1235d(this.f1684a);
    }

    /* renamed from: r */
    int m1853r(String str) {
        return C0071P.m1224b(this.f1684a, str, "inner");
    }

    /* renamed from: s */
    boolean m1857s(String str) {
        boolean commit;
        synchronized (C0113o.class) {
            String str2 = str + f1682h;
            long j = this.f1684a.getLong(str2 + "_revision", 0L) + 1;
            SharedPreferences.Editor edit = this.f1684a.edit();
            for (String str3 : this.f1684a.getAll().keySet()) {
                if (str3.startsWith(str2)) {
                    edit.remove(str3);
                }
            }
            commit = edit.putLong(str2 + "_revision", j).commit();
        }
        return commit;
    }

    /* renamed from: t */
    boolean m1860t(String str) {
        return this.f1684a.edit().putString("_global/railColor", "black".equals(str) ? "black" : "white").commit();
    }

    /* renamed from: u */
    boolean m1863u(String str) {
        return str == null ? this.f1684a.edit().remove("_global/railCustom").commit() : this.f1684a.edit().putString("_global/railCustom", str).commit();
    }

    /* renamed from: v */
    boolean m1864v() {
        return this.f1684a.getBoolean("_global/railSidebarFreeform", true);
    }

    /* renamed from: w */
    boolean m1865w() {
        return this.f1684a.getBoolean("_global/railSidebarKeyEnd", false);
    }

    /* renamed from: x */
    boolean m1866x() {
        return this.f1684a.getBoolean("_global/rotationSuggest", false);
    }

    /* renamed from: y */
    boolean m1867y() {
        return this.f1684a.getBoolean("_global/searchButton", true);
    }

    /* renamed from: z */
    boolean m1868z() {
        boolean z;
        synchronized (C0113o.class) {
            z = this.f1684a.getBoolean("_global/standbyClock", false);
        }
        return z;
    }

    /* renamed from: a */
    Integer m1774a(String str, boolean z) {
        return C0071P.m1212a(this.f1684a, str, z);
    }

    /* renamed from: b */
    boolean m1792b(String str, String str2) {
        return C0071P.m1219a(this.f1684a, str, str2);
    }

    /* renamed from: c */
    boolean m1798c(String str) {
        return m1792b(str, "inner");
    }

    /* renamed from: d */
    boolean m1802d(int i) {
        return this.f1684a.edit().putInt("_global/nonDuoOuterTopPx", C0071P.m1210a(i)).commit();
    }

    /* renamed from: e */
    int m1808e(String str, String str2) {
        return C0071P.m1224b(this.f1684a, str, str2);
    }

    /* renamed from: f */
    boolean m1814f(String str) {
        return this.f1684a.edit().remove(C0071P.m1253l(str)).commit();
    }

    /* renamed from: g */
    boolean m1821g(boolean z) {
        return this.f1684a.edit().putBoolean("_global/innerNativeBar", z).commit();
    }

    /* renamed from: h */
    boolean m1825h(boolean z) {
        return this.f1684a.edit().putBoolean("_global/master", z).commit();
    }

    /* renamed from: j */
    int m1829j() {
        return C0071P.m1223b(this.f1684a, "inner");
    }

    /* renamed from: k */
    boolean m1833k(String str) {
        return C0071P.m1239d(this.f1684a, str);
    }

    /* renamed from: l */
    int m1835l(String str) {
        if (this.f1684a.contains(C0071P.m1250i(str))) {
            return this.f1684a.getBoolean(C0071P.m1250i(str), false) ? 1 : 2;
        }
        return 0;
    }

    /* renamed from: m */
    boolean m1840m(boolean z) {
        return this.f1684a.edit().putBoolean("_global/railFollowDark", z).commit();
    }

    /* renamed from: n */
    boolean m1843n(boolean z) {
        return this.f1684a.edit().putBoolean("_global/railSidebarFreeform", z).commit();
    }

    /* renamed from: o */
    int m1844o(String str) {
        return C0071P.m1245g(this.f1684a, str);
    }

    /* renamed from: p */
    String m1848p(String str) {
        return C0071P.m1247h(this.f1684a, str);
    }

    /* renamed from: q */
    Bundle m1851q(String str) {
        Bundle bundle;
        synchronized (C0113o.class) {
            String str2 = str + f1682h;
            bundle = new Bundle();
            bundle.putLong("revision", this.f1684a.getLong(str2 + "_revision", 0L));
            Bundle bundle2 = new Bundle();
            Bundle bundle3 = new Bundle();
            Bundle bundle4 = new Bundle();
            Bundle bundle5 = new Bundle();
            ArrayList<String> arrayList = new ArrayList<>();
            Map<String, ?> all = this.f1684a.getAll();
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                if (entry.getKey().startsWith(str2)) {
                    String substring = entry.getKey().substring(str2.length());
                    if (substring.startsWith("_color/") && (entry.getValue() instanceof Integer)) {
                        bundle4.putInt(substring.substring(7), ((Integer) entry.getValue()).intValue());
                    } else if (substring.startsWith("_label/") && (entry.getValue() instanceof String)) {
                        bundle5.putString(substring.substring(7), (String) entry.getValue());
                    } else if (substring.startsWith("_edge/") && (entry.getValue() instanceof Integer)) {
                        bundle3.putInt(substring.substring(6), ((Integer) entry.getValue()).intValue());
                    } else if (substring.startsWith("_base/")) {
                        arrayList.add(substring.substring(6));
                    } else if (!substring.startsWith("_") && (entry.getValue() instanceof String)) {
                        Object obj = all.get(str2 + "_color/" + entry.getValue());
                        if (obj instanceof Integer) {
                            bundle2.putInt(substring, ((Integer) obj).intValue());
                        }
                    }
                }
            }
            bundle.putBundle("colors", bundle2);
            bundle.putBundle("edges", bundle3);
            bundle.putStringArrayList("bases", arrayList);
            bundle.putBundle("groups", bundle4);
            bundle.putBundle("labels", bundle5);
        }
        return bundle;
    }

    /* renamed from: r */
    boolean m1855r(boolean z) {
        synchronized (C0113o.class) {
            boolean contains = this.f1684a.contains("_global/standbyClock");
            boolean z2 = this.f1684a.getBoolean("_global/standbyClock", false);
            f1683i = true;
            try {
                try {
                } finally {
                    f1683i = false;
                    C0056L.f954p.onSharedPreferenceChanged(this.f1684a, "_global/standbyClock");
                }
            } catch (RuntimeException e) {
                e = e;
            }
            if (this.f1684a.edit().putBoolean("_global/standbyClock", z).commit()) {
                return true;
            }
            e = null;
            try {
                SharedPreferences.Editor edit = this.f1684a.edit();
                if (contains) {
                    edit.putBoolean("_global/standbyClock", z2);
                } else {
                    edit.remove("_global/standbyClock");
                }
                if (!edit.commit()) {
                    throw new IllegalStateException("Restore was not confirmed");
                }
                if (e == null) {
                    return false;
                }
                throw new IllegalStateException("帐篷钟面保存失败，原状态已恢复", e);
            } catch (RuntimeException e2) {
                if (e != null) {
                    e2.addSuppressed(e);
                }
                throw new IllegalStateException("帐篷钟面状态未确认，请检查 LSPosed", e2);
            }
        }
    }

    /* renamed from: a */
    boolean m1784a(List<String> list) {
        return this.f1684a.edit().putString("_global/railSidebarApps", C0054J.m945b(list)).commit();
    }

    /* renamed from: b */
    boolean m1789b(int i) {
        return this.f1684a.edit().putInt("_global/defaultPx", C0071P.m1210a(i)).commit();
    }

    /* renamed from: c */
    String m1795c(String str, boolean z) {
        return C0071P.m1237d(this.f1684a, str, z);
    }

    /* renamed from: d */
    boolean m1801d() {
        return this.f1684a.getBoolean(f1678d, false);
    }

    /* renamed from: e */
    boolean m1810e(String str) {
        return C0071P.m1218a(this.f1684a, str);
    }

    /* renamed from: f */
    boolean m1815f(String str, String str2) {
        if ("follow".equals(str2)) {
            return this.f1684a.edit().remove(C0071P.m1258q(str)).commit();
        }
        return this.f1684a.edit().putString(C0071P.m1258q(str), "black".equals(str2) ? "black" : "white").commit();
    }

    /* renamed from: g */
    boolean m1818g() {
        return this.f1684a.getBoolean("_global/foldSplit", true);
    }

    /* renamed from: h */
    String m1822h() {
        return this.f1684a.getString("_global/railCustom", null);
    }

    /* renamed from: i */
    List<String> m1826i() {
        return C0054J.m958f(this.f1684a.getString("_global/railSidebarApps", null));
    }

    /* renamed from: j */
    int m1830j(String str) {
        return C0071P.m1223b(this.f1684a, str);
    }

    /* renamed from: k */
    boolean m1834k(boolean z) {
        return this.f1684a.edit().putBoolean("_global/percentTop", z).commit();
    }

    /* renamed from: m */
    boolean m1839m(String str) {
        return (this.f1684a.contains(C0071P.m1243f(str)) || this.f1684a.getStringSet(f1677c, Collections.EMPTY_SET).contains(str)) ? false : true;
    }

    /* renamed from: n */
    boolean m1841n() {
        return this.f1684a.getBoolean("_global/notificationIcons", true);
    }

    /* renamed from: o */
    boolean m1846o(boolean z) {
        return this.f1684a.edit().putBoolean("_global/railSidebarKeyEnd", z).commit();
    }

    /* renamed from: p */
    boolean m1849p(boolean z) {
        return this.f1684a.edit().putBoolean("_global/rotationSuggest", z).commit();
    }

    /* renamed from: u */
    boolean m1862u() {
        return C0071P.m1241e(this.f1684a);
    }

    /* renamed from: a */
    boolean m1785a(Map<String, String> map) {
        synchronized (C0113o.class) {
            Map<String, ?> all = this.f1684a.getAll();
            Map<String, ?> m1714a = C0111m.m1714a(all, map);
            try {
            } catch (RuntimeException e) {
                e = e;
            }
            if (m1769a(all, m1714a)) {
                return true;
            }
            e = null;
            try {
                if (!m1769a(m1714a, all)) {
                    throw new IllegalStateException("导入保存失败，原配色的恢复也未获确认，请停止取色并检查 LSPosed");
                }
                if (e == null) {
                    return false;
                }
                throw new IllegalStateException("导入失败，原配色已恢复", e);
            } catch (RuntimeException e2) {
                if (e != null) {
                    e2.addSuppressed(e);
                }
                throw e2;
            }
        }
    }

    /* renamed from: b */
    boolean m1791b(String str, int i) {
        return this.f1684a.edit().putInt(C0071P.m1261t(str), C0071P.m1222b(i)).commit();
    }

    /* renamed from: c */
    boolean m1796c() {
        return this.f1684a.getBoolean("_global/cellularStyle", true);
    }

    /* renamed from: d */
    boolean m1806d(boolean z) {
        return this.f1684a.edit().putBoolean(f1678d, z).commit();
    }

    /* renamed from: e */
    boolean m1809e() {
        return this.f1684a.getBoolean("_global/foldAnimation", false);
    }

    /* renamed from: g */
    boolean m1820g(String str, boolean z) {
        if (z && C0071P.f1171i.contains(str)) {
            return false;
        }
        return this.f1684a.edit().putBoolean(C0071P.m1243f(str), z).commit();
    }

    /* renamed from: h */
    boolean m1823h(String str) {
        return m1799c(str, "inner");
    }

    /* renamed from: i */
    boolean m1828i(boolean z) {
        return this.f1684a.edit().putBoolean("_global/notificationIcons", z).commit();
    }

    /* renamed from: l */
    boolean m1837l(boolean z) {
        return this.f1684a.edit().putBoolean("_global/pickButton", z).commit();
    }

    /* renamed from: b */
    boolean m1793b(String str, boolean z) {
        return C0071P.m1232c(this.f1684a, str, z);
    }

    /* renamed from: c */
    boolean m1800c(boolean z) {
        return this.f1684a.edit().putBoolean("_global/cellularStyle", z).commit();
    }

    /* renamed from: d */
    boolean m1805d(String str, boolean z) {
        if (z && C0071P.f1171i.contains(str)) {
            return false;
        }
        HashSet hashSet = new HashSet(this.f1684a.getStringSet(f1677c, Collections.EMPTY_SET));
        hashSet.add(str);
        return this.f1684a.edit().putBoolean(C0071P.m1243f(str), z).putStringSet(f1677c, hashSet).commit();
    }

    /* renamed from: e */
    boolean m1812e(boolean z) {
        return this.f1684a.edit().putBoolean("_global/foldAnimation", z).commit();
    }

    /* renamed from: t */
    boolean m1861t(boolean z) {
        return this.f1684a.edit().putBoolean("_global/workbench", z).commit();
    }

    /* renamed from: b */
    boolean m1788b() {
        Map<String, ?> all = this.f1684a.getAll();
        HashSet hashSet = new HashSet(Arrays.asList(f1679e));
        hashSet.addAll(Arrays.asList(f1680f));
        SharedPreferences.Editor edit = this.f1684a.edit();
        boolean z = false;
        for (String str : all.keySet()) {
            if (str.startsWith("ios_notification_") && !f1681g.contains(str) && !hashSet.contains(str)) {
                edit.remove(str);
                z = true;
            }
        }
        for (String str2 : f1679e) {
            if (!Boolean.TRUE.equals(all.get(str2))) {
                edit.putBoolean(str2, true);
                z = true;
            }
        }
        for (String str3 : f1680f) {
            if (!Boolean.FALSE.equals(all.get(str3))) {
                edit.putBoolean(str3, false);
                z = true;
            }
        }
        return !z || edit.commit();
    }

    /* renamed from: c */
    boolean m1799c(String str, String str2) {
        return m1783a(str, new String[]{str2});
    }

    /* renamed from: e */
    int m1807e(int i) {
        return this.f1684a.getInt("_global/statusDy/" + C0071P.f1164e0[i], 0);
    }

    /* renamed from: t */
    boolean m1859t() {
        return this.f1684a.getBoolean("_global/pickButton", false);
    }

    /* renamed from: f */
    boolean m1817f(boolean z) {
        return this.f1684a.edit().putBoolean("_global/foldSplit", z).commit();
    }

    /* renamed from: s */
    boolean m1858s(boolean z) {
        return this.f1684a.edit().putBoolean("_global/statusThin", z).commit();
    }

    /* renamed from: f */
    int m1813f() {
        return Math.max(0, Math.min(2, this.f1684a.getInt("_global/foldNudge", 1)));
    }

    /* renamed from: s */
    boolean m1856s() {
        return this.f1684a.getBoolean("_global/percentTop", true);
    }

    /* renamed from: d */
    boolean m1804d(String str, String str2) {
        SharedPreferences.Editor edit = this.f1684a.edit();
        if (str2 == null) {
            edit.remove(str);
        } else {
            edit.putString(str, str2);
        }
        return edit.commit();
    }

    /* renamed from: b */
    boolean m1794b(boolean z) {
        return this.f1684a.edit().putBoolean(f1676b, z).commit();
    }

    /* renamed from: a */
    private boolean m1769a(Map<String, ?> map, Map<String, ?> map2) {
        SharedPreferences.Editor edit = this.f1684a.edit();
        for (String str : map.keySet()) {
            if (!map2.containsKey(str)) {
                edit.remove(str);
            }
        }
        for (Map.Entry<String, ?> entry : map2.entrySet()) {
            if (!entry.getValue().equals(map.get(entry.getKey()))) {
                if (entry.getValue() instanceof Integer) {
                    edit.putInt(entry.getKey(), ((Integer) entry.getValue()).intValue());
                } else if (entry.getValue() instanceof Long) {
                    edit.putLong(entry.getKey(), ((Long) entry.getValue()).longValue());
                } else if (entry.getValue() instanceof Boolean) {
                    edit.putBoolean(entry.getKey(), ((Boolean) entry.getValue()).booleanValue());
                } else {
                    edit.putString(entry.getKey(), (String) entry.getValue());
                }
            }
        }
        return edit.commit();
    }

    /* renamed from: q */
    boolean m1852q(boolean z) {
        return this.f1684a.edit().putBoolean("_global/searchButton", z).commit();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x02a1 A[Catch: all -> 0x02aa, TryCatch #0 {, blocks: (B:4:0x000b, B:6:0x0044, B:7:0x004b, B:10:0x004d, B:13:0x0065, B:16:0x0091, B:18:0x00e5, B:20:0x024d, B:22:0x0290, B:25:0x0297, B:27:0x02a1, B:28:0x02a8, B:30:0x0103, B:32:0x0109, B:33:0x0111, B:35:0x0117, B:38:0x013b, B:40:0x0162, B:41:0x016a, B:44:0x0170, B:57:0x0181, B:59:0x01a2, B:61:0x01a5, B:62:0x01bc, B:64:0x01ed, B:65:0x01f6, B:67:0x01fc, B:70:0x021b, B:75:0x021e), top: B:3:0x000b }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    Bundle m1773a(String str, String str2, boolean z, int i, int i2, long j, boolean z2) {
        boolean commit;
        synchronized (C0113o.class) {
            String str3 = str + f1682h;
            Bundle bundle = new Bundle();
            if (this.f1684a.getLong(str3 + "_revision", 0L) != j) {
                bundle.putString("error", "配置已经变化，请重新取色");
                return bundle;
            }
            SharedPreferences.Editor edit = this.f1684a.edit();
            Map<String, ?> all = this.f1684a.getAll();
            String str4 = (z ? "dark/" : "light/") + String.format(Locale.ROOT, "%06X", Integer.valueOf(16777215 & i));
            String str5 = null;
            boolean z3 = false;
            if (!str2.isEmpty() && z2) {
                edit.putString(str3 + "_base/" + str2, str4).putInt(str3 + "_edge/" + str2, i2);
                if (this.f1684a.getString(str3 + "_label/" + str2, null) == null) {
                    edit.putString(str3 + "_label/" + str2, "默认色采集页");
                }
            } else {
                if (!str2.isEmpty()) {
                    for (String str6 : all.keySet()) {
                        if (str6.startsWith(str3 + str2 + "#")) {
                            Object obj = all.get(str3 + "_edge/" + str6.substring(str3.length()));
                            if (C0049F.m855a(obj instanceof Integer ? ((Integer) obj).intValue() : 0, i2)) {
                                str5 = str6.substring(str3.length());
                            }
                        }
                    }
                    boolean z4 = str5 == null;
                    if (z4) {
                        int i3 = 0;
                        while (all.containsKey(str3 + str2 + "#" + i3)) {
                            i3++;
                        }
                        str5 = str2 + "#" + i3;
                    }
                    edit.putString(str3 + str5, str4).putInt(str3 + "_edge/" + str5, i2);
                    if (z4) {
                        Iterator<String> it = all.keySet().iterator();
                        int i4 = 1;
                        while (it.hasNext()) {
                            if (it.next().startsWith(str3 + "_label/")) {
                                i4++;
                            }
                        }
                        edit.putString(str3 + "_label/" + str5, "页面 " + i4);
                    }
                }
                long j2 = j + 1;
                commit = edit.putInt(str3 + "_color/" + str4, i).putLong(str3 + "_revision", j2).commit();
                bundle.putBoolean("saved", commit);
                if (commit && !str2.isEmpty()) {
                    z3 = true;
                }
                bundle.putBoolean("bound", z3);
                bundle.putLong("revision", j2);
                if (!commit) {
                    bundle.putString("error", "颜色保存失败");
                }
                return bundle;
            }
            long j22 = j + 1;
            commit = edit.putInt(str3 + "_color/" + str4, i).putLong(str3 + "_revision", j22).commit();
            bundle.putBoolean("saved", commit);
            if (commit) {
                z3 = true;
            }
            bundle.putBoolean("bound", z3);
            bundle.putLong("revision", j22);
            if (!commit) {
            }
            return bundle;
        }
    }

    /* renamed from: r */
    TreeSet<String> m1854r() {
        TreeSet<String> treeSet = new TreeSet<>();
        Iterator<Map.Entry<String, ?>> it = this.f1684a.getAll().entrySet().iterator();
        while (it.hasNext()) {
            String key = it.next().getKey();
            int indexOf = key.indexOf(47);
            if (indexOf > 0 && !key.startsWith("_") && (key.endsWith("/enabled") || key.endsWith("/topSafePx") || key.endsWith("/topSafePxInner") || key.endsWith("/topSafePxOuter"))) {
                treeSet.add(key.substring(0, indexOf));
            }
        }
        return treeSet;
    }

    /* renamed from: a */
    boolean m1782a(String str, boolean z, int i, Integer num) {
        boolean commit;
        synchronized (C0113o.class) {
            String str2 = str + f1682h;
            String str3 = z ? "dark/" : "light/";
            StringBuilder append = new StringBuilder().append(str3);
            Locale locale = Locale.ROOT;
            String sb = append.append(String.format(locale, "%06X", Integer.valueOf(i & 16777215))).toString();
            String str4 = num == null ? null : str3 + String.format(locale, "%06X", Integer.valueOf(num.intValue() & 16777215));
            SharedPreferences.Editor edit = this.f1684a.edit();
            for (Map.Entry<String, ?> entry : this.f1684a.getAll().entrySet()) {
                if (entry.getKey().startsWith(str2) && !entry.getKey().substring(str2.length()).startsWith("_") && sb.equals(entry.getValue())) {
                    if (str4 == null) {
                        edit.remove(entry.getKey());
                        edit.remove(str2 + "_label/" + entry.getKey().substring(str2.length()));
                        edit.remove(str2 + "_edge/" + entry.getKey().substring(str2.length()));
                    } else {
                        edit.putString(entry.getKey(), str4);
                    }
                }
            }
            if (str4 != null) {
                edit.putInt(str2 + "_color/" + str4, num.intValue());
            }
            if (!sb.equals(str4)) {
                edit.remove(str2 + "_color/" + sb);
            }
            commit = edit.putLong(str2 + "_revision", this.f1684a.getLong(str2 + "_revision", 0L) + 1).commit();
        }
        return commit;
    }

    /* renamed from: a */
    boolean m1780a(String str, Integer num, Integer num2) {
        String format;
        String format2;
        String sb;
        boolean commit;
        synchronized (C0113o.class) {
            Map<String, ?> all = this.f1684a.getAll();
            String str2 = (String) all.get(C0071P.m1260s(str));
            String str3 = null;
            if (num == null && num2 == null) {
                sb = null;
            } else {
                StringBuilder sb2 = new StringBuilder();
                if (num == null) {
                    format = C0054J.f922e;
                } else {
                    format = String.format(Locale.ROOT, "%06X", Integer.valueOf(num.intValue() & 16777215));
                }
                StringBuilder append = sb2.append(format).append(",");
                if (num2 == null) {
                    format2 = C0054J.f922e;
                } else {
                    format2 = String.format(Locale.ROOT, "%06X", Integer.valueOf(num2.intValue() & 16777215));
                }
                sb = append.append(format2).toString();
            }
            if (sb != null) {
                Iterator<Map.Entry<String, ?>> it = all.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry<String, ?> next = it.next();
                    if (next.getKey().startsWith("_railPalette/") && sb.equals(next.getValue())) {
                        str3 = next.getKey().substring(13);
                        break;
                    }
                }
                if (str3 == null) {
                    int i = 0;
                    while (all.containsKey("_railPalette/" + i)) {
                        i++;
                    }
                    str3 = String.valueOf(i);
                }
            }
            SharedPreferences.Editor edit = this.f1684a.edit();
            if (str3 == null) {
                edit.remove(C0071P.m1260s(str));
            } else {
                edit.putString("_railPalette/" + str3, sb).putString(C0071P.m1260s(str), str3);
            }
            if (str2 != null && !str2.equals(str3)) {
                Iterator<Map.Entry<String, ?>> it2 = all.entrySet().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        Map.Entry<String, ?> next2 = it2.next();
                        if (next2.getKey().endsWith("/railPalette") && !next2.getKey().equals(C0071P.m1260s(str)) && str2.equals(next2.getValue())) {
                            break;
                        }
                    } else {
                        edit.remove("_railPalette/" + str2);
                        break;
                    }
                }
            }
            commit = edit.commit();
        }
        return commit;
    }

    /* renamed from: a */
    boolean m1781a(String str, String str2) {
        synchronized (C0113o.class) {
            if (C0071P.m1249i(this.f1684a, str2) == null) {
                return false;
            }
            return m1780a(str, m1774a(str2, false), m1774a(str2, true));
        }
    }

    /* renamed from: a */
    boolean m1779a(String str, int i) {
        SharedPreferences.Editor edit = this.f1684a.edit();
        if (i == 0) {
            edit.remove(C0071P.m1250i(str));
        } else {
            edit.putBoolean(C0071P.m1250i(str), i == 1);
        }
        return edit.commit();
    }

    /* renamed from: a */
    boolean m1776a(int i) {
        return this.f1684a.edit().putInt("_global/foldNudge", i).commit();
    }

    /* renamed from: a */
    boolean m1777a(int i, int i2) {
        return this.f1684a.edit().putInt("_global/statusDy/" + C0071P.f1164e0[i], Math.max(-60, Math.min(60, i2))).commit();
    }

    /* renamed from: a */
    boolean m1786a(boolean z) {
        return this.f1684a.getBoolean(z ? "_global/rotationLandscapeRight" : "_global/rotationPortraitRight", false);
    }

    /* renamed from: a */
    boolean m1787a(boolean z, boolean z2) {
        return this.f1684a.edit().putBoolean(z ? "_global/rotationLandscapeRight" : "_global/rotationPortraitRight", z2).commit();
    }

    /* renamed from: a */
    boolean m1775a() {
        return this.f1684a.getBoolean(f1676b, false);
    }

    /* renamed from: a */
    int m1772a(String str, String str2, int i) {
        int m1210a = C0071P.m1210a(i);
        if (this.f1684a.edit().putInt(C0071P.m1215a(str, str2), m1210a).commit()) {
            return m1210a;
        }
        throw new IllegalStateException("commit failed");
    }

    /* renamed from: a */
    boolean m1783a(String str, String[] strArr) {
        SharedPreferences.Editor remove = this.f1684a.edit().remove(C0071P.m1252k(str));
        for (String str2 : strArr) {
            remove.remove(C0071P.m1215a(str, str2));
            String str3 = "inner".equals(str2) ? "outer" : "inner";
            if (strArr.length == 1 && !this.f1684a.contains(C0071P.m1215a(str, str3)) && this.f1684a.contains(C0071P.m1252k(str))) {
                remove.putInt(C0071P.m1215a(str, str3), C0071P.m1210a(this.f1684a.getInt(C0071P.m1252k(str), 126)));
            }
        }
        return remove.commit();
    }
}
