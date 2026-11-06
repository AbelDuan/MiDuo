package dev.duo.hookprobe;

import android.content.SharedPreferences;
import android.os.Bundle;
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

/* renamed from: dev.duo.hookprobe.o, reason: case insensitive filesystem */
/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class o {
    private static final String b = "_global/allAppsEnabled";
    private static final String c = "_global/allAppsSeen";
    private static final String d = "_global/defaultEnabled";
    private static final String[] e = {"ios_notification_hide_clear", "ios_notification_header", "ios_notification_clear_advanced_highlight", "ios_notification_clock_glass_enabled"};
    private static final String[] f = {"ios_notification_shortcuts"};
    private static final Set<String> g = new HashSet(Arrays.asList("ios_notification_center", "ios_notification_wallpaper"));
    static final String h = "/pageColors/";
    static volatile boolean i;
    final SharedPreferences a;

    o(XposedService xposedService) {
        this.a = xposedService.getRemotePreferences("duo_top");
    }

    boolean A() {
        return this.a.getBoolean("_global/statusThin", false);
    }

    boolean B() {
        return this.a.getBoolean("_global/workbench", true);
    }

    boolean a(String str) {
        return this.a.getBoolean(P.a(str), true);
    }

    boolean b(String str) {
        return this.a.getBoolean(P.b(str), false);
    }

    boolean c(int i2) {
        return this.a.edit().putInt("_global/outerScale", P.b(i2)).commit();
    }

    boolean d(String str) {
        return this.a.contains(P.l(str));
    }

    boolean e(String str, boolean z) {
        return this.a.edit().putBoolean(P.a(str), z).commit();
    }

    boolean f(String str, boolean z) {
        return this.a.edit().putBoolean(P.b(str), z).commit();
    }

    boolean g(String str) {
        return this.a.edit().remove(P.t(str)).commit();
    }

    boolean h(String str, boolean z) {
        return this.a.edit().putBoolean(P.l(str), z).commit();
    }

    boolean i(String str) {
        return !dev.duo.hookprobe.P.i.contains(str) && this.a.getBoolean(P.f(str), P.e(str));
    }

    boolean j(boolean z) {
        return this.a.edit().putBoolean("_global/outerHideTop", z).commit();
    }

    String k() {
        return P.a(this.a);
    }

    boolean l() {
        return this.a.getBoolean("_global/innerNativeBar", false);
    }

    boolean m() {
        return P.b(this.a);
    }

    boolean n(String str) {
        return P.f(this.a, str);
    }

    boolean o() {
        return this.a.getBoolean("_global/outerHideTop", false);
    }

    int p() {
        return P.c(this.a);
    }

    int q() {
        return P.d(this.a);
    }

    int r(String str) {
        return P.b(this.a, str, "inner");
    }

    boolean s(String str) {
        boolean commit;
        synchronized (o.class) {
            String str2 = str + h;
            long j = this.a.getLong(str2 + "_revision", 0L) + 1;
            SharedPreferences.Editor edit = this.a.edit();
            for (String str3 : this.a.getAll().keySet()) {
                if (str3.startsWith(str2)) {
                    edit.remove(str3);
                }
            }
            commit = edit.putLong(str2 + "_revision", j).commit();
        }
        return commit;
    }

    boolean t(String str) {
        return this.a.edit().putString("_global/railColor", "black".equals(str) ? "black" : "white").commit();
    }

    boolean u(String str) {
        return str == null ? this.a.edit().remove("_global/railCustom").commit() : this.a.edit().putString("_global/railCustom", str).commit();
    }

    boolean v() {
        return this.a.getBoolean("_global/railSidebarFreeform", true);
    }

    boolean w() {
        return this.a.getBoolean("_global/railSidebarKeyEnd", false);
    }

    boolean x() {
        return this.a.getBoolean("_global/rotationSuggest", false);
    }

    boolean y() {
        return this.a.getBoolean("_global/searchButton", true);
    }

    boolean z() {
        boolean z;
        synchronized (o.class) {
            z = this.a.getBoolean("_global/standbyClock", false);
        }
        return z;
    }

    Integer a(String str, boolean z) {
        return P.a(this.a, str, z);
    }

    boolean b(String str, String str2) {
        return P.a(this.a, str, str2);
    }

    boolean c(String str) {
        return b(str, "inner");
    }

    boolean d(int i2) {
        return this.a.edit().putInt("_global/nonDuoOuterTopPx", P.a(i2)).commit();
    }

    int e(String str, String str2) {
        return P.b(this.a, str, str2);
    }

    boolean f(String str) {
        return this.a.edit().remove(P.l(str)).commit();
    }

    boolean g(boolean z) {
        return this.a.edit().putBoolean("_global/innerNativeBar", z).commit();
    }

    boolean h(boolean z) {
        return this.a.edit().putBoolean("_global/master", z).commit();
    }

    int j() {
        return P.b(this.a, "inner");
    }

    boolean k(String str) {
        return P.d(this.a, str);
    }

    int l(String str) {
        if (this.a.contains(dev.duo.hookprobe.P.i(str))) {
            return this.a.getBoolean(dev.duo.hookprobe.P.i(str), false) ? 1 : 2;
        }
        return 0;
    }

    boolean m(boolean z) {
        return this.a.edit().putBoolean("_global/railFollowDark", z).commit();
    }

    boolean n(boolean z) {
        return this.a.edit().putBoolean("_global/railSidebarFreeform", z).commit();
    }

    int o(String str) {
        return P.g(this.a, str);
    }

    String p(String str) {
        return P.h(this.a, str);
    }

    Bundle q(String str) {
        Bundle bundle;
        synchronized (o.class) {
            String str2 = str + h;
            bundle = new Bundle();
            bundle.putLong("revision", this.a.getLong(str2 + "_revision", 0L));
            Bundle bundle2 = new Bundle();
            Bundle bundle3 = new Bundle();
            Bundle bundle4 = new Bundle();
            Bundle bundle5 = new Bundle();
            ArrayList<String> arrayList = new ArrayList<>();
            Map<String, ?> all = this.a.getAll();
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

    boolean r(boolean z) {
        synchronized (o.class) {
            Throwable ex = null;
            boolean contains = this.a.contains("_global/standbyClock");
            boolean z2 = this.a.getBoolean("_global/standbyClock", false);
            i = true;
            try {
                try {
                } finally {
                    i = false;
                    dev.duo.hookprobe.L.p.onSharedPreferenceChanged(this.a, "_global/standbyClock");
                }
            } catch (RuntimeException e2) {
                Throwable th = e2;
            }
            if (this.a.edit().putBoolean("_global/standbyClock", z).commit()) {
                return true;
            }
            ex = null;
            try {
                SharedPreferences.Editor edit = this.a.edit();
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
                throw new IllegalStateException("帐篷钟面保存失败，原状态已恢复", th);
            } catch (RuntimeException e3) {
                if (e != null) {
                    e3.addSuppressed(th);
                }
                throw new IllegalStateException("帐篷钟面状态未确认，请检查 LSPosed", e3);
            }
        }
    }

    boolean a(List<String> list) {
        return this.a.edit().putString("_global/railSidebarApps", J.b(list)).commit();
    }

    boolean b(int i2) {
        return this.a.edit().putInt("_global/defaultPx", P.a(i2)).commit();
    }

    String c(String str, boolean z) {
        return P.d(this.a, str, z);
    }

    boolean d() {
        return this.a.getBoolean(d, false);
    }

    boolean e(String str) {
        return P.a(this.a, str);
    }

    boolean f(String str, String str2) {
        if ("follow".equals(str2)) {
            return this.a.edit().remove(P.q(str)).commit();
        }
        return this.a.edit().putString(P.q(str), "black".equals(str2) ? "black" : "white").commit();
    }

    boolean g() {
        return this.a.getBoolean("_global/foldSplit", true);
    }

    String h() {
        return this.a.getString("_global/railCustom", null);
    }

    List<String> i() {
        return J.f(this.a.getString("_global/railSidebarApps", null));
    }

    int j(String str) {
        return P.b(this.a, str);
    }

    boolean k(boolean z) {
        return this.a.edit().putBoolean("_global/percentTop", z).commit();
    }

    boolean m(String str) {
        return (this.a.contains(P.f(str)) || this.a.getStringSet(c, Collections.EMPTY_SET).contains(str)) ? false : true;
    }

    boolean n() {
        return this.a.getBoolean("_global/notificationIcons", true);
    }

    boolean o(boolean z) {
        return this.a.edit().putBoolean("_global/railSidebarKeyEnd", z).commit();
    }

    boolean p(boolean z) {
        return this.a.edit().putBoolean("_global/rotationSuggest", z).commit();
    }

    boolean u() {
        return P.e(this.a);
    }

    boolean a(Map<String, String> map) {
        synchronized (o.class) {
            Map<String, ?> all = this.a.getAll();
            Map<String, ?> a = m.a(all, map);
            try {
            } catch (RuntimeException e2) {
                Throwable th = e2;
            }
            if (a(all, a)) {
                return true;
            }
            ex = null;
            try {
                if (!a(a, all)) {
                    throw new IllegalStateException("导入保存失败，原配色的恢复也未获确认，请停止取色并检查 LSPosed");
                }
                if (e == null) {
                    return false;
                }
                throw new IllegalStateException("导入失败，原配色已恢复", th);
            } catch (RuntimeException e3) {
                if (e != null) {
                    e3.addSuppressed(th);
                }
                throw e3;
            }
        }
    }

    boolean b(String str, int i2) {
        return this.a.edit().putInt(P.t(str), P.b(i2)).commit();
    }

    boolean c() {
        return this.a.getBoolean("_global/cellularStyle", true);
    }

    boolean d(boolean z) {
        return this.a.edit().putBoolean(d, z).commit();
    }

    boolean e() {
        return this.a.getBoolean("_global/foldAnimation", false);
    }

    boolean g(String str, boolean z) {
        if (z && dev.duo.hookprobe.P.i.contains(str)) {
            return false;
        }
        return this.a.edit().putBoolean(P.f(str), z).commit();
    }

    boolean h(String str) {
        return c(str, "inner");
    }

    boolean i(boolean z) {
        return this.a.edit().putBoolean("_global/notificationIcons", z).commit();
    }

    boolean l(boolean z) {
        return this.a.edit().putBoolean("_global/pickButton", z).commit();
    }

    boolean b(String str, boolean z) {
        return P.c(this.a, str, z);
    }

    boolean c(boolean z) {
        return this.a.edit().putBoolean("_global/cellularStyle", z).commit();
    }

    boolean d(String str, boolean z) {
        if (z && dev.duo.hookprobe.P.i.contains(str)) {
            return false;
        }
        HashSet hashSet = new HashSet(this.a.getStringSet(c, Collections.EMPTY_SET));
        hashSet.add(str);
        return this.a.edit().putBoolean(P.f(str), z).putStringSet(c, hashSet).commit();
    }

    boolean e(boolean z) {
        return this.a.edit().putBoolean("_global/foldAnimation", z).commit();
    }

    boolean t(boolean z) {
        return this.a.edit().putBoolean("_global/workbench", z).commit();
    }

    boolean b() {
        Map<String, ?> all = this.a.getAll();
        HashSet hashSet = new HashSet(Arrays.asList(e));
        hashSet.addAll(Arrays.asList(f));
        SharedPreferences.Editor edit = this.a.edit();
        boolean z = false;
        for (String str : all.keySet()) {
            if (str.startsWith("ios_notification_") && !g.contains(str) && !hashSet.contains(str)) {
                edit.remove(str);
                z = true;
            }
        }
        for (String str2 : e) {
            if (!Boolean.TRUE.equals(all.get(str2))) {
                edit.putBoolean(str2, true);
                z = true;
            }
        }
        for (String str3 : f) {
            if (!Boolean.FALSE.equals(all.get(str3))) {
                edit.putBoolean(str3, false);
                z = true;
            }
        }
        return !z || edit.commit();
    }

    boolean c(String str, String str2) {
        return a(str, new String[]{str2});
    }

    int e(int i2) {
        return this.a.getInt("_global/statusDy/" + dev.duo.hookprobe.P.e0[i2], 0);
    }

    boolean t() {
        return this.a.getBoolean("_global/pickButton", false);
    }

    boolean f(boolean z) {
        return this.a.edit().putBoolean("_global/foldSplit", z).commit();
    }

    boolean s(boolean z) {
        return this.a.edit().putBoolean("_global/statusThin", z).commit();
    }

    int f() {
        return Math.max(0, Math.min(2, this.a.getInt("_global/foldNudge", 1)));
    }

    boolean s() {
        return this.a.getBoolean("_global/percentTop", true);
    }

    boolean d(String str, String str2) {
        SharedPreferences.Editor edit = this.a.edit();
        if (str2 == null) {
            edit.remove(str);
        } else {
            edit.putString(str, str2);
        }
        return edit.commit();
    }

    boolean b(boolean z) {
        return this.a.edit().putBoolean(b, z).commit();
    }

    private boolean a(Map<String, ?> map, Map<String, ?> map2) {
        SharedPreferences.Editor edit = this.a.edit();
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

    boolean q(boolean z) {
        return this.a.edit().putBoolean("_global/searchButton", z).commit();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x02a1 A[Catch: all -> 0x02aa, TryCatch #0 {, blocks: (B:4:0x000b, B:6:0x0044, B:7:0x004b, B:10:0x004d, B:13:0x0065, B:16:0x0091, B:18:0x00e5, B:20:0x024d, B:22:0x0290, B:25:0x0297, B:27:0x02a1, B:28:0x02a8, B:30:0x0103, B:32:0x0109, B:33:0x0111, B:35:0x0117, B:38:0x013b, B:40:0x0162, B:41:0x016a, B:44:0x0170, B:57:0x0181, B:59:0x01a2, B:61:0x01a5, B:62:0x01bc, B:64:0x01ed, B:65:0x01f6, B:67:0x01fc, B:70:0x021b, B:75:0x021e), top: B:3:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    Bundle a(String str, String str2, boolean z, int i2, int i3, long j, boolean z2) {
        boolean commit;
        synchronized (o.class) {
            String str3 = str + h;
            Bundle bundle = new Bundle();
            if (this.a.getLong(str3 + "_revision", 0L) != j) {
                bundle.putString("error", "配置已经变化，请重新取色");
                return bundle;
            }
            SharedPreferences.Editor edit = this.a.edit();
            Map<String, ?> all = this.a.getAll();
            String str4 = (z ? "dark/" : "light/") + String.format(Locale.ROOT, "%06X", Integer.valueOf(16777215 & i2));
            String str5 = null;
            boolean z3 = false;
            if (!str2.isEmpty() && z2) {
                edit.putString(str3 + "_base/" + str2, str4).putInt(str3 + "_edge/" + str2, i3);
                if (this.a.getString(str3 + "_label/" + str2, null) == null) {
                    edit.putString(str3 + "_label/" + str2, "默认色采集页");
                }
            } else {
                if (!str2.isEmpty()) {
                    for (String str6 : all.keySet()) {
                        if (str6.startsWith(str3 + str2 + "#")) {
                            Object obj = all.get(str3 + "_edge/" + str6.substring(str3.length()));
                            if (F.a(obj instanceof Integer ? ((Integer) obj).intValue() : 0, i3)) {
                                str5 = str6.substring(str3.length());
                            }
                        }
                    }
                    boolean z4 = str5 == null;
                    if (z4) {
                        int i4 = 0;
                        while (all.containsKey(str3 + str2 + "#" + i4)) {
                            i4++;
                        }
                        str5 = str2 + "#" + i4;
                    }
                    edit.putString(str3 + str5, str4).putInt(str3 + "_edge/" + str5, i3);
                    if (z4) {
                        Iterator<String> it = all.keySet().iterator();
                        int i5 = 1;
                        while (it.hasNext()) {
                            if (it.next().startsWith(str3 + "_label/")) {
                                i5++;
                            }
                        }
                        edit.putString(str3 + "_label/" + str5, "页面 " + i5);
                    }
                }
                long j2 = j + 1;
                commit = edit.putInt(str3 + "_color/" + str4, i2).putLong(str3 + "_revision", j2).commit();
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
            commit = edit.putInt(str3 + "_color/" + str4, i2).putLong(str3 + "_revision", j22).commit();
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

    TreeSet<String> r() {
        TreeSet<String> treeSet = new TreeSet<>();
        Iterator<? extends Map.Entry<String, ?>> it = this.a.getAll().entrySet().iterator();
        while (it.hasNext()) {
            String key = it.next().getKey();
            int indexOf = key.indexOf(47);
            if (indexOf > 0 && !key.startsWith("_") && (key.endsWith("/enabled") || key.endsWith("/topSafePx") || key.endsWith("/topSafePxInner") || key.endsWith("/topSafePxOuter"))) {
                treeSet.add(key.substring(0, indexOf));
            }
        }
        return treeSet;
    }

    boolean a(String str, boolean z, int i2, Integer num) {
        boolean commit;
        synchronized (o.class) {
            String str2 = str + h;
            String str3 = z ? "dark/" : "light/";
            StringBuilder append = new StringBuilder().append(str3);
            Locale locale = Locale.ROOT;
            String sb = append.append(String.format(locale, "%06X", Integer.valueOf(i2 & 16777215))).toString();
            String str4 = num == null ? null : str3 + String.format(locale, "%06X", Integer.valueOf(num.intValue() & 16777215));
            SharedPreferences.Editor edit = this.a.edit();
            for (Map.Entry<String, ?> entry : this.a.getAll().entrySet()) {
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
            commit = edit.putLong(str2 + "_revision", this.a.getLong(str2 + "_revision", 0L) + 1).commit();
        }
        return commit;
    }

    boolean a(String str, Integer num, Integer num2) {
        String format;
        String format2;
        String sb;
        boolean commit;
        synchronized (o.class) {
            Map<String, ?> all = this.a.getAll();
            String str2 = (String) all.get(P.s(str));
            String str3 = null;
            if (num == null && num2 == null) {
                sb = null;
            } else {
                StringBuilder sb2 = new StringBuilder();
                if (num == null) {
                    format = J.e;
                } else {
                    format = String.format(Locale.ROOT, "%06X", Integer.valueOf(num.intValue() & 16777215));
                }
                StringBuilder append = sb2.append(format).append(",");
                if (num2 == null) {
                    format2 = J.e;
                } else {
                    format2 = String.format(Locale.ROOT, "%06X", Integer.valueOf(num2.intValue() & 16777215));
                }
                sb = append.append(format2).toString();
            }
            if (sb != null) {
                Iterator<? extends Map.Entry<String, ?>> it = all.entrySet().iterator();
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
                    int i2 = 0;
                    while (all.containsKey("_railPalette/" + i2)) {
                        i2++;
                    }
                    str3 = String.valueOf(i2);
                }
            }
            SharedPreferences.Editor edit = this.a.edit();
            if (str3 == null) {
                edit.remove(P.s(str));
            } else {
                edit.putString("_railPalette/" + str3, sb).putString(P.s(str), str3);
            }
            if (str2 != null && !str2.equals(str3)) {
                Iterator<? extends Map.Entry<String, ?>> it2 = all.entrySet().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        Map.Entry<String, ?> next2 = it2.next();
                        if (next2.getKey().endsWith("/railPalette") && !next2.getKey().equals(P.s(str)) && str2.equals(next2.getValue())) {
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

    boolean a(String str, String str2) {
        synchronized (o.class) {
            if (dev.duo.hookprobe.P.i(this.a, str2) == null) {
                return false;
            }
            return a(str, a(str2, false), a(str2, true));
        }
    }

    boolean a(String str, int i2) {
        SharedPreferences.Editor edit = this.a.edit();
        if (i2 == 0) {
            edit.remove(dev.duo.hookprobe.P.i(str));
        } else {
            edit.putBoolean(dev.duo.hookprobe.P.i(str), i2 == 1);
        }
        return edit.commit();
    }

    boolean a(int i2) {
        return this.a.edit().putInt("_global/foldNudge", i2).commit();
    }

    boolean a(int i2, int i3) {
        return this.a.edit().putInt("_global/statusDy/" + dev.duo.hookprobe.P.e0[i2], Math.max(-60, Math.min(60, i3))).commit();
    }

    boolean a(boolean z) {
        return this.a.getBoolean(z ? "_global/rotationLandscapeRight" : "_global/rotationPortraitRight", false);
    }

    boolean a(boolean z, boolean z2) {
        return this.a.edit().putBoolean(z ? "_global/rotationLandscapeRight" : "_global/rotationPortraitRight", z2).commit();
    }

    boolean a() {
        return this.a.getBoolean(b, false);
    }

    int a(String str, String str2, int i2) {
        int a = P.a(i2);
        if (this.a.edit().putInt(P.a(str, str2), a).commit()) {
            return a;
        }
        throw new IllegalStateException("commit failed");
    }

    boolean a(String str, String[] strArr) {
        SharedPreferences.Editor remove = this.a.edit().remove(P.k(str));
        for (String str2 : strArr) {
            remove.remove(P.a(str, str2));
            String str3 = "inner".equals(str2) ? "outer" : "inner";
            if (strArr.length == 1 && !this.a.contains(P.a(str, str3)) && this.a.contains(P.k(str))) {
                remove.putInt(P.a(str, str3), P.a(this.a.getInt(P.k(str), 126)));
            }
        }
        return remove.commit();
    }
}
