package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
final class C0026o {
    private static final java.lang.String b = "_global/allAppsEnabled";
    private static final java.lang.String c = "_global/allAppsSeen";
    private static final java.lang.String d = "_global/defaultEnabled";
    static final java.lang.String e = "/pageColors/";
    static volatile boolean f;
    final android.content.SharedPreferences a;

    C0026o(io.github.libxposed.service.XposedService xposedService) {
        this.a = xposedService.getRemotePreferences("duo_top");
    }

    boolean A() {
        return this.a.getBoolean("_global/statusThin", false);
    }

    boolean B() {
        return this.a.getBoolean("_global/workbench", true);
    }

    boolean a(java.lang.String str) {
        return this.a.getBoolean(dev.duo.hookprobe.P.a(str), true);
    }

    boolean b(java.lang.String str) {
        return this.a.getBoolean(dev.duo.hookprobe.P.b(str), false);
    }

    boolean c(java.lang.String str) {
        return this.a.contains(dev.duo.hookprobe.P.l(str));
    }

    boolean d(int i) {
        return this.a.edit().putInt("_global/nonDuoOuterTopPx", dev.duo.hookprobe.P.a(i)).commit();
    }

    boolean e(java.lang.String str, boolean z) {
        return this.a.edit().putBoolean(dev.duo.hookprobe.P.a(str), z).commit();
    }

    boolean f(java.lang.String str, boolean z) {
        return this.a.edit().putBoolean(dev.duo.hookprobe.P.b(str), z).commit();
    }

    boolean g(java.lang.String str) {
        return !dev.duo.hookprobe.P.i.contains(str) && this.a.getBoolean(dev.duo.hookprobe.P.f(str), dev.duo.hookprobe.P.e(str));
    }

    boolean h(java.lang.String str, boolean z) {
        return this.a.edit().putBoolean(dev.duo.hookprobe.P.l(str), z).commit();
    }

    java.lang.String i() {
        return this.a.getString("_global/workbenchRail", null);
    }

    boolean j(boolean z) {
        return this.a.edit().putBoolean("_global/outerHideTop", z).commit();
    }

    java.lang.String k() {
        return dev.duo.hookprobe.P.a(this.a);
    }

    boolean l(java.lang.String str) {
        return dev.duo.hookprobe.P.f(this.a, str);
    }

    boolean m() {
        return dev.duo.hookprobe.P.b(this.a);
    }

    java.lang.String n(java.lang.String str) {
        return dev.duo.hookprobe.P.h(this.a, str);
    }

    boolean o() {
        return this.a.getBoolean("_global/outerHideTop", false);
    }

    int p(java.lang.String str) {
        return dev.duo.hookprobe.P.b(this.a, str, "inner");
    }

    int q() {
        return dev.duo.hookprobe.P.d(this.a);
    }

    boolean r(java.lang.String str) {
        return this.a.edit().putString("_global/railColor", "black".equals(str) ? "black" : "white").commit();
    }

    boolean s(java.lang.String str) {
        return str == null ? this.a.edit().remove("_global/railCustom").commit() : this.a.edit().putString("_global/railCustom", str).commit();
    }

    boolean t(java.lang.String str) {
        if (str == null) {
            return this.a.edit().remove("_global/workbenchRail").commit();
        }
        if (dev.duo.hookprobe.J.g(str) != null) {
            return this.a.edit().putString("_global/workbenchRail", str).commit();
        }
        throw new java.lang.IllegalArgumentException("workbench rail " + str);
    }

    boolean u() {
        return dev.duo.hookprobe.P.e(this.a);
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
        synchronized (dev.duo.hookprobe.C0026o.class) {
            z = this.a.getBoolean("_global/standbyClock", false);
        }
        return z;
    }

    java.lang.Integer a(java.lang.String str, boolean z) {
        return dev.duo.hookprobe.P.a(this.a, str, z);
    }

    boolean b(java.lang.String str, java.lang.String str2) {
        return dev.duo.hookprobe.P.a(this.a, str, str2);
    }

    boolean c(int i) {
        return this.a.edit().putInt("_global/outerScale", dev.duo.hookprobe.P.b(i)).commit();
    }

    int d(java.lang.String str, java.lang.String str2) {
        return dev.duo.hookprobe.P.b(this.a, str, str2);
    }

    boolean e(java.lang.String str) {
        return this.a.edit().remove(dev.duo.hookprobe.P.l(str)).commit();
    }

    boolean f(java.lang.String str) {
        return this.a.edit().remove(dev.duo.hookprobe.P.t(str)).commit();
    }

    boolean h(boolean z) {
        return this.a.edit().putBoolean("_global/master", z).commit();
    }

    boolean i(boolean z) {
        return this.a.edit().putBoolean("_global/notificationIcons", z).commit();
    }

    int j() {
        return dev.duo.hookprobe.P.b(this.a, "inner");
    }

    boolean k(boolean z) {
        return this.a.edit().putBoolean("_global/percentTop", z).commit();
    }

    boolean l() {
        return this.a.getBoolean("_global/innerNativeBar", false);
    }

    int m(java.lang.String str) {
        return dev.duo.hookprobe.P.g(this.a, str);
    }

    boolean n(boolean z) {
        return this.a.edit().putBoolean("_global/railSidebarFreeform", z).commit();
    }

    boolean o(boolean z) {
        return this.a.edit().putBoolean("_global/railSidebarKeyEnd", z).commit();
    }

    int p() {
        return dev.duo.hookprobe.P.c(this.a);
    }

    boolean q(java.lang.String str) {
        boolean commit;
        synchronized (dev.duo.hookprobe.C0026o.class) {
            java.lang.String str2 = str + e;
            long j = this.a.getLong(str2 + "_revision", 0L) + 1;
            android.content.SharedPreferences.Editor edit = this.a.edit();
            for (java.lang.String str3 : this.a.getAll().keySet()) {
                if (str3.startsWith(str2)) {
                    edit.remove(str3);
                }
            }
            commit = edit.putLong(str2 + "_revision", j).commit();
        }
        return commit;
    }

    boolean a(java.util.List<java.lang.String> list) {
        return this.a.edit().putString("_global/railSidebarApps", dev.duo.hookprobe.J.b(list)).commit();
    }

    boolean b(int i) {
        return this.a.edit().putInt("_global/defaultPx", dev.duo.hookprobe.P.a(i)).commit();
    }

    java.lang.String c(java.lang.String str, boolean z) {
        return dev.duo.hookprobe.P.d(this.a, str, z);
    }

    boolean d(java.lang.String str) {
        return dev.duo.hookprobe.P.a(this.a, str);
    }

    boolean e(java.lang.String str, java.lang.String str2) {
        if ("follow".equals(str2)) {
            return this.a.edit().remove(dev.duo.hookprobe.P.q(str)).commit();
        }
        return this.a.edit().putString(dev.duo.hookprobe.P.q(str), "black".equals(str2) ? "black" : "white").commit();
    }

    boolean f() {
        return this.a.getBoolean("_global/foldSplit", true);
    }

    java.lang.String g() {
        return this.a.getString("_global/railCustom", null);
    }

    int h(java.lang.String str) {
        return dev.duo.hookprobe.P.b(this.a, str);
    }

    boolean i(java.lang.String str) {
        return dev.duo.hookprobe.P.d(this.a, str);
    }

    int j(java.lang.String str) {
        if (this.a.contains(dev.duo.hookprobe.P.i(str))) {
            return this.a.getBoolean(dev.duo.hookprobe.P.i(str), false) ? 1 : 2;
        }
        return 0;
    }

    boolean k(java.lang.String str) {
        return (this.a.contains(dev.duo.hookprobe.P.f(str)) || this.a.getStringSet(c, java.util.Collections.EMPTY_SET).contains(str)) ? false : true;
    }

    boolean l(boolean z) {
        return this.a.edit().putBoolean("_global/pickButton", z).commit();
    }

    boolean m(boolean z) {
        return this.a.edit().putBoolean("_global/railFollowDark", z).commit();
    }

    boolean n() {
        return this.a.getBoolean("_global/notificationIcons", true);
    }

    android.os.Bundle o(java.lang.String str) {
        android.os.Bundle bundle;
        synchronized (dev.duo.hookprobe.C0026o.class) {
            java.lang.String str2 = str + e;
            bundle = new android.os.Bundle();
            bundle.putLong("revision", this.a.getLong(str2 + "_revision", 0L));
            android.os.Bundle bundle2 = new android.os.Bundle();
            android.os.Bundle bundle3 = new android.os.Bundle();
            android.os.Bundle bundle4 = new android.os.Bundle();
            android.os.Bundle bundle5 = new android.os.Bundle();
            java.util.ArrayList<java.lang.String> arrayList = new java.util.ArrayList<>();
            java.util.Map<java.lang.String, ?> all = this.a.getAll();
            for (java.util.Map.Entry<java.lang.String, ?> entry : all.entrySet()) {
                if (entry.getKey().startsWith(str2)) {
                    java.lang.String substring = entry.getKey().substring(str2.length());
                    if (substring.startsWith("_color/") && (entry.getValue() instanceof java.lang.Integer)) {
                        bundle4.putInt(substring.substring(7), ((java.lang.Integer) entry.getValue()).intValue());
                    } else if (substring.startsWith("_label/") && (entry.getValue() instanceof java.lang.String)) {
                        bundle5.putString(substring.substring(7), (java.lang.String) entry.getValue());
                    } else if (substring.startsWith("_edge/") && (entry.getValue() instanceof java.lang.Integer)) {
                        bundle3.putInt(substring.substring(6), ((java.lang.Integer) entry.getValue()).intValue());
                    } else if (substring.startsWith("_base/")) {
                        arrayList.add(substring.substring(6));
                    } else if (!substring.startsWith("_") && (entry.getValue() instanceof java.lang.String)) {
                        java.lang.Object obj = all.get(str2 + "_color/" + entry.getValue());
                        if (obj instanceof java.lang.Integer) {
                            bundle2.putInt(substring, ((java.lang.Integer) obj).intValue());
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

    boolean p(boolean z) {
        return this.a.edit().putBoolean("_global/rotationSuggest", z).commit();
    }

    boolean s(boolean z) {
        return this.a.edit().putBoolean("_global/statusThin", z).commit();
    }

    boolean a(java.util.Map<java.lang.String, java.lang.String> map) {
        synchronized (dev.duo.hookprobe.C0026o.class) {
            java.util.Map<java.lang.String, ?> all = this.a.getAll();
            java.util.Map<java.lang.String, ?> a = dev.duo.hookprobe.C0024m.a(all, map);
            try {
            } catch (java.lang.RuntimeException e2) {
                e = e2;
            }
            if (a(all, a)) {
                return true;
            }
            e = null;
            try {
                if (!a(a, all)) {
                    throw new java.lang.IllegalStateException("导入保存失败，原配色的恢复也未获确认，请停止取色并检查 LSPosed");
                }
                if (e == null) {
                    return false;
                }
                throw new java.lang.IllegalStateException("导入失败，原配色已恢复", e);
            } catch (java.lang.RuntimeException e3) {
                if (e != null) {
                    e3.addSuppressed(e);
                }
                throw e3;
            }
        }
    }

    boolean b(java.lang.String str, int i) {
        return this.a.edit().putInt(dev.duo.hookprobe.P.t(str), dev.duo.hookprobe.P.b(i)).commit();
    }

    boolean c(boolean z) {
        return this.a.edit().putBoolean("_global/cellularStyle", z).commit();
    }

    boolean d() {
        return this.a.getBoolean("_global/foldAnimation", false);
    }

    boolean f(boolean z) {
        return this.a.edit().putBoolean("_global/foldSplit", z).commit();
    }

    boolean g(boolean z) {
        return this.a.edit().putBoolean("_global/innerNativeBar", z).commit();
    }

    java.util.List<java.lang.String> h() {
        return dev.duo.hookprobe.J.f(this.a.getString("_global/railSidebarApps", null));
    }

    boolean s() {
        return this.a.getBoolean("_global/percentTop", true);
    }

    boolean b(java.lang.String str, boolean z) {
        return dev.duo.hookprobe.P.c(this.a, str, z);
    }

    boolean c() {
        return this.a.getBoolean(d, false);
    }

    boolean d(boolean z) {
        return this.a.edit().putBoolean(d, z).commit();
    }

    boolean g(java.lang.String str, boolean z) {
        if (z && dev.duo.hookprobe.P.i.contains(str)) {
            return false;
        }
        return this.a.edit().putBoolean(dev.duo.hookprobe.P.f(str), z).commit();
    }

    boolean r(boolean z) {
        synchronized (dev.duo.hookprobe.C0026o.class) {
            boolean contains = this.a.contains("_global/standbyClock");
            boolean z2 = this.a.getBoolean("_global/standbyClock", false);
            f = true;
            try {
                try {
                } finally {
                    f = false;
                    dev.duo.hookprobe.L.o.onSharedPreferenceChanged(this.a, "_global/standbyClock");
                }
            } catch (java.lang.RuntimeException e2) {
                e = e2;
            }
            if (this.a.edit().putBoolean("_global/standbyClock", z).commit()) {
                return true;
            }
            e = null;
            try {
                android.content.SharedPreferences.Editor edit = this.a.edit();
                if (contains) {
                    edit.putBoolean("_global/standbyClock", z2);
                } else {
                    edit.remove("_global/standbyClock");
                }
                if (!edit.commit()) {
                    throw new java.lang.IllegalStateException("Restore was not confirmed");
                }
                if (e == null) {
                    return false;
                }
                throw new java.lang.IllegalStateException("帐篷钟面保存失败，原状态已恢复", e);
            } catch (java.lang.RuntimeException e3) {
                if (e != null) {
                    e3.addSuppressed(e);
                }
                throw new java.lang.IllegalStateException("帐篷钟面状态未确认，请检查 LSPosed", e3);
            }
        }
    }

    boolean t(boolean z) {
        return this.a.edit().putBoolean("_global/workbench", z).commit();
    }

    boolean b() {
        return this.a.getBoolean("_global/cellularStyle", true);
    }

    boolean c(java.lang.String str, java.lang.String str2) {
        return a(str, new java.lang.String[]{str2});
    }

    boolean d(java.lang.String str, boolean z) {
        if (z && dev.duo.hookprobe.P.i.contains(str)) {
            return false;
        }
        java.util.HashSet hashSet = new java.util.HashSet(this.a.getStringSet(c, java.util.Collections.EMPTY_SET));
        hashSet.add(str);
        return this.a.edit().putBoolean(dev.duo.hookprobe.P.f(str), z).putStringSet(c, hashSet).commit();
    }

    boolean t() {
        return this.a.getBoolean("_global/pickButton", false);
    }

    boolean b(boolean z) {
        return this.a.edit().putBoolean(b, z).commit();
    }

    boolean e(boolean z) {
        return this.a.edit().putBoolean("_global/foldAnimation", z).commit();
    }

    int e() {
        return java.lang.Math.max(0, java.lang.Math.min(2, this.a.getInt("_global/foldNudge", 1)));
    }

    boolean q(boolean z) {
        return this.a.edit().putBoolean("_global/searchButton", z).commit();
    }

    int e(int i) {
        return this.a.getInt("_global/statusDy/" + dev.duo.hookprobe.P.e0[i], 0);
    }

    private boolean a(java.util.Map<java.lang.String, ?> map, java.util.Map<java.lang.String, ?> map2) {
        android.content.SharedPreferences.Editor edit = this.a.edit();
        for (java.lang.String str : map.keySet()) {
            if (!map2.containsKey(str)) {
                edit.remove(str);
            }
        }
        for (java.util.Map.Entry<java.lang.String, ?> entry : map2.entrySet()) {
            if (!entry.getValue().equals(map.get(entry.getKey()))) {
                if (entry.getValue() instanceof java.lang.Integer) {
                    edit.putInt(entry.getKey(), ((java.lang.Integer) entry.getValue()).intValue());
                } else if (entry.getValue() instanceof java.lang.Long) {
                    edit.putLong(entry.getKey(), ((java.lang.Long) entry.getValue()).longValue());
                } else if (entry.getValue() instanceof java.lang.Boolean) {
                    edit.putBoolean(entry.getKey(), ((java.lang.Boolean) entry.getValue()).booleanValue());
                } else {
                    edit.putString(entry.getKey(), (java.lang.String) entry.getValue());
                }
            }
        }
        return edit.commit();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x02a1 A[Catch: all -> 0x02aa, TryCatch #0 {, blocks: (B:4:0x000b, B:6:0x0044, B:7:0x004b, B:10:0x004d, B:13:0x0065, B:16:0x0091, B:18:0x00e5, B:20:0x024d, B:22:0x0290, B:25:0x0297, B:27:0x02a1, B:28:0x02a8, B:30:0x0103, B:32:0x0109, B:33:0x0111, B:35:0x0117, B:38:0x013b, B:40:0x0162, B:41:0x016a, B:44:0x0170, B:57:0x0181, B:59:0x01a2, B:61:0x01a5, B:62:0x01bc, B:64:0x01ed, B:65:0x01f6, B:67:0x01fc, B:70:0x021b, B:75:0x021e), top: B:3:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    android.os.Bundle a(java.lang.String r17, java.lang.String r18, boolean r19, int r20, int r21, long r22, boolean r24) {
        /*
            Method dump skipped, instructions count: 685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.C0026o.a(java.lang.String, java.lang.String, boolean, int, int, long, boolean):android.os.Bundle");
    }

    java.util.TreeSet<java.lang.String> r() {
        java.util.TreeSet<java.lang.String> treeSet = new java.util.TreeSet<>();
        java.util.Iterator<java.util.Map.Entry<java.lang.String, ?>> it = this.a.getAll().entrySet().iterator();
        while (it.hasNext()) {
            java.lang.String key = it.next().getKey();
            int indexOf = key.indexOf(47);
            if (indexOf > 0 && !key.startsWith("_") && (key.endsWith("/enabled") || key.endsWith("/topSafePx") || key.endsWith("/topSafePxInner") || key.endsWith("/topSafePxOuter"))) {
                treeSet.add(key.substring(0, indexOf));
            }
        }
        return treeSet;
    }

    boolean a(java.lang.String str, boolean z, int i, java.lang.Integer num) {
        boolean commit;
        synchronized (dev.duo.hookprobe.C0026o.class) {
            java.lang.String str2 = str + e;
            java.lang.String str3 = z ? "dark/" : "light/";
            java.lang.StringBuilder append = new java.lang.StringBuilder().append(str3);
            java.util.Locale locale = java.util.Locale.ROOT;
            java.lang.String sb = append.append(java.lang.String.format(locale, "%06X", java.lang.Integer.valueOf(i & 16777215))).toString();
            java.lang.String str4 = num == null ? null : str3 + java.lang.String.format(locale, "%06X", java.lang.Integer.valueOf(num.intValue() & 16777215));
            android.content.SharedPreferences.Editor edit = this.a.edit();
            for (java.util.Map.Entry<java.lang.String, ?> entry : this.a.getAll().entrySet()) {
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

    boolean a(java.lang.String str, java.lang.Integer num, java.lang.Integer num2) {
        java.lang.String format;
        java.lang.String format2;
        java.lang.String sb;
        boolean commit;
        synchronized (dev.duo.hookprobe.C0026o.class) {
            java.util.Map<java.lang.String, ?> all = this.a.getAll();
            java.lang.String str2 = (java.lang.String) all.get(dev.duo.hookprobe.P.s(str));
            java.lang.String str3 = null;
            if (num == null && num2 == null) {
                sb = null;
            } else {
                java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                if (num == null) {
                    format = dev.duo.hookprobe.J.e;
                } else {
                    format = java.lang.String.format(java.util.Locale.ROOT, "%06X", java.lang.Integer.valueOf(num.intValue() & 16777215));
                }
                java.lang.StringBuilder append = sb2.append(format).append(",");
                if (num2 == null) {
                    format2 = dev.duo.hookprobe.J.e;
                } else {
                    format2 = java.lang.String.format(java.util.Locale.ROOT, "%06X", java.lang.Integer.valueOf(num2.intValue() & 16777215));
                }
                sb = append.append(format2).toString();
            }
            if (sb != null) {
                java.util.Iterator<java.util.Map.Entry<java.lang.String, ?>> it = all.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    java.util.Map.Entry<java.lang.String, ?> next = it.next();
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
                    str3 = java.lang.String.valueOf(i);
                }
            }
            android.content.SharedPreferences.Editor edit = this.a.edit();
            if (str3 == null) {
                edit.remove(dev.duo.hookprobe.P.s(str));
            } else {
                edit.putString("_railPalette/" + str3, sb).putString(dev.duo.hookprobe.P.s(str), str3);
            }
            if (str2 != null && !str2.equals(str3)) {
                java.util.Iterator<java.util.Map.Entry<java.lang.String, ?>> it2 = all.entrySet().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        java.util.Map.Entry<java.lang.String, ?> next2 = it2.next();
                        if (next2.getKey().endsWith("/railPalette") && !next2.getKey().equals(dev.duo.hookprobe.P.s(str)) && str2.equals(next2.getValue())) {
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

    boolean a(java.lang.String str, java.lang.String str2) {
        synchronized (dev.duo.hookprobe.C0026o.class) {
            if (dev.duo.hookprobe.P.i(this.a, str2) == null) {
                return false;
            }
            return a(str, a(str2, false), a(str2, true));
        }
    }

    boolean a(java.lang.String str, int i) {
        android.content.SharedPreferences.Editor edit = this.a.edit();
        if (i == 0) {
            edit.remove(dev.duo.hookprobe.P.i(str));
        } else {
            edit.putBoolean(dev.duo.hookprobe.P.i(str), i == 1);
        }
        return edit.commit();
    }

    boolean a(int i) {
        return this.a.edit().putInt("_global/foldNudge", i).commit();
    }

    boolean a(int i, int i2) {
        return this.a.edit().putInt("_global/statusDy/" + dev.duo.hookprobe.P.e0[i], java.lang.Math.max(-60, java.lang.Math.min(60, i2))).commit();
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

    int a(java.lang.String str, java.lang.String str2, int i) {
        int a = dev.duo.hookprobe.P.a(i);
        if (this.a.edit().putInt(dev.duo.hookprobe.P.a(str, str2), a).commit()) {
            return a;
        }
        throw new java.lang.IllegalStateException("commit failed");
    }

    boolean a(java.lang.String str, java.lang.String[] strArr) {
        android.content.SharedPreferences.Editor remove = this.a.edit().remove(dev.duo.hookprobe.P.k(str));
        for (java.lang.String str2 : strArr) {
            remove.remove(dev.duo.hookprobe.P.a(str, str2));
            java.lang.String str3 = "inner".equals(str2) ? "outer" : "inner";
            if (strArr.length == 1 && !this.a.contains(dev.duo.hookprobe.P.a(str, str3)) && this.a.contains(dev.duo.hookprobe.P.k(str))) {
                remove.putInt(dev.duo.hookprobe.P.a(str, str3), dev.duo.hookprobe.P.a(this.a.getInt(dev.duo.hookprobe.P.k(str), 126)));
            }
        }
        return remove.commit();
    }
}
