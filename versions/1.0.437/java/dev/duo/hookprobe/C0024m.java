package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
final class C0024m {
    private static final java.lang.String a = "miduo.colors";
    private static final java.lang.String b = "_railPalette/";
    private static final java.lang.String c = "/pageColors/";
    private static final java.lang.String d = "(?:light|dark)/[A-Za-z_$][A-Za-z0-9_.$]*\\|(?:#[0-9]+)?";
    private static final int e = 2097152;

    C0024m() {
    }

    static java.lang.String a(java.io.InputStream inputStream) throws java.io.IOException {
        java.io.InputStreamReader inputStreamReader = new java.io.InputStreamReader(inputStream, java.nio.charset.StandardCharsets.UTF_8.newDecoder());
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        char[] cArr = new char[dev.duo.taskcore.h.A];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read == -1) {
                return sb.toString();
            }
            if (sb.length() + read > e) {
                throw new java.io.IOException("颜色配置文件过大");
            }
            sb.append(cArr, 0, read);
        }
    }

    private static int b(java.lang.String str) throws java.io.IOException {
        try {
            return java.lang.Integer.parseInt(str);
        } catch (java.lang.NumberFormatException e2) {
            throw new java.io.IOException("颜色数值无效", e2);
        }
    }

    static java.util.Map<java.lang.String, java.lang.String> c(java.lang.String str) throws java.io.IOException {
        if (str.length() > e) {
            throw new java.io.IOException("颜色配置文件过大");
        }
        java.util.Properties properties = new java.util.Properties();
        try {
            properties.load(new java.io.StringReader(str));
            if (!"1".equals(properties.getProperty(a))) {
                throw new java.io.IOException("不是支持的 MiDuo 颜色配置文件");
            }
            java.util.HashMap hashMap = new java.util.HashMap();
            for (java.lang.String str2 : properties.stringPropertyNames()) {
                hashMap.put(str2, properties.getProperty(str2));
            }
            java.util.Set<java.lang.String> a2 = a(hashMap);
            if (a2.isEmpty()) {
                throw new java.io.IOException("文件没有 App 颜色配置");
            }
            for (java.lang.String str3 : a2) {
                if (!str3.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+") || !"1".equals(hashMap.get(str3 + "/_app"))) {
                    throw new java.io.IOException("App 标识无效");
                }
                if (!java.util.Arrays.asList("follow", "white", "black").contains(hashMap.get(str3 + "/railColor"))) {
                    throw new java.io.IOException("App 默认颜色设置不完整");
                }
                java.lang.String str4 = (java.lang.String) hashMap.get(str3 + "/palette");
                if (str4 == null || !str4.matches("(?:-|[0-9A-Fa-f]{6}),(?:-|[0-9A-Fa-f]{6})")) {
                    throw new java.io.IOException("App 深浅配色不完整");
                }
            }
            for (java.util.Map.Entry entry : hashMap.entrySet()) {
                java.lang.String str5 = (java.lang.String) entry.getKey();
                java.lang.String str6 = (java.lang.String) entry.getValue();
                if (!a.equals(str5)) {
                    int indexOf = str5.indexOf(47);
                    if (indexOf < 0 || !a2.contains(str5.substring(0, indexOf))) {
                        throw new java.io.IOException("文件包含未知的配置项");
                    }
                    java.lang.String substring = str5.substring(0, indexOf);
                    java.lang.String substring2 = str5.substring(indexOf + 1);
                    if (!substring2.equals("_app") && !substring2.equals("railColor") && !substring2.equals("palette")) {
                        if (!substring2.startsWith("pageColors/")) {
                            throw new java.io.IOException("文件包含非颜色设置");
                        }
                        java.lang.String substring3 = substring2.substring(11);
                        int lastIndexOf = substring3.lastIndexOf(35);
                        if (lastIndexOf >= 0 && b(substring3.substring(lastIndexOf + 1)) < 0) {
                            throw new java.io.IOException("页面编号无效");
                        }
                        if (substring3.matches("_color/(?:light|dark)/[0-9A-F]{6}")) {
                            int b2 = b(str6);
                            if ((b2 >>> 24) != 255 || !substring3.endsWith(java.lang.String.format(java.util.Locale.ROOT, "%06X", java.lang.Integer.valueOf(b2 & 16777215)))) {
                                throw new java.io.IOException("页面颜色无效");
                            }
                        } else if (substring3.startsWith("_edge/") && substring3.substring(6).matches(d)) {
                            int b3 = b(str6);
                            if (b3 != 0 && (b3 >>> 24) != 255) {
                                throw new java.io.IOException("页面边缘颜色无效");
                            }
                        } else if (!substring3.startsWith("_label/") || !substring3.substring(7).matches(d)) {
                            if (substring3.startsWith("_base/") && substring3.substring(6).matches(d)) {
                                if (!"1".equals(str6)) {
                                    throw new java.io.IOException("默认色采集页标记无效");
                                }
                            } else if (!substring3.matches(d) || !str6.matches("(?:light|dark)/[0-9A-F]{6}") || !substring3.substring(0, substring3.indexOf(47)).equals(str6.substring(0, str6.indexOf(47))) || !hashMap.containsKey(substring + c + "_color/" + str6)) {
                                throw new java.io.IOException("页面与颜色的对应关系无效");
                            }
                        }
                    }
                }
            }
            return hashMap;
        } catch (java.lang.IllegalArgumentException e2) {
            throw new java.io.IOException("颜色配置文件损坏", e2);
        }
    }

    static java.util.Set<java.lang.String> a(java.util.Map<java.lang.String, java.lang.String> map) {
        java.util.TreeSet treeSet = new java.util.TreeSet();
        for (java.lang.String str : map.keySet()) {
            if (str.endsWith("/_app")) {
                treeSet.add(str.substring(0, str.length() - 5));
            }
        }
        return treeSet;
    }

    static java.lang.String a(java.util.Map<java.lang.String, ?> map, java.lang.String str) throws java.io.IOException {
        java.util.TreeSet<java.lang.String> treeSet = new java.util.TreeSet();
        if (str != null) {
            treeSet.add(str);
        } else {
            for (java.lang.String str2 : map.keySet()) {
                int indexOf = str2.indexOf(47);
                if (indexOf > 0 && !str2.startsWith("_") && a(str2.substring(indexOf + 1))) {
                    treeSet.add(str2.substring(0, indexOf));
                }
            }
        }
        java.util.Properties properties = new java.util.Properties();
        properties.setProperty(a, "1");
        for (java.lang.String str3 : treeSet) {
            properties.setProperty(str3 + "/_app", "1");
            properties.setProperty(str3 + "/railColor", java.lang.String.valueOf(map.get(new java.lang.StringBuilder().append(str3).append("/railColor").toString()) == null ? "follow" : map.get(str3 + "/railColor")));
            java.lang.Object obj = map.get(str3 + "/railPalette");
            properties.setProperty(str3 + "/palette", obj == null ? "-,-" : (java.lang.String) map.get(b + obj));
            for (java.util.Map.Entry<java.lang.String, ?> entry : map.entrySet()) {
                java.lang.String key = entry.getKey();
                if (key.startsWith(str3 + c)) {
                    java.lang.String substring = key.substring((str3 + c).length());
                    if (!substring.equals("_revision") && !substring.equals("_updated") && !substring.startsWith("_blocked/") && !substring.matches("(?:_(?:base|edge|label)/)?0/.*")) {
                        properties.setProperty(key, substring.startsWith("_base/") ? "1" : java.lang.String.valueOf(entry.getValue()));
                    }
                }
            }
        }
        java.io.StringWriter stringWriter = new java.io.StringWriter();
        properties.store(stringWriter, "MiDuo colours");
        c(stringWriter.toString());
        return stringWriter.toString();
    }

    private static boolean a(java.lang.String str) {
        return str.equals("railColor") || str.equals("railPalette") || str.startsWith("pageColors/");
    }

    static java.util.Map<java.lang.String, java.lang.Object> a(java.util.Map<java.lang.String, ?> map, java.util.Map<java.lang.String, java.lang.String> map2) {
        java.lang.Object valueOf;
        java.util.HashMap hashMap = new java.util.HashMap(map);
        java.util.Set<java.lang.String> a2 = a(map2);
        java.util.TreeSet<java.lang.String> treeSet = new java.util.TreeSet();
        java.util.Iterator<java.lang.String> it = a2.iterator();
        while (true) {
            int i = 0;
            if (!it.hasNext()) {
                break;
            }
            java.lang.String next = it.next();
            java.lang.Object obj = hashMap.get(next + "/railPalette");
            if (obj != null) {
                treeSet.add((java.lang.String) obj);
            }
            java.util.Iterator it2 = new java.util.TreeSet(hashMap.keySet()).iterator();
            while (it2.hasNext()) {
                java.lang.String str = (java.lang.String) it2.next();
                if (str.startsWith(next + "/") && a(str.substring(next.length() + 1))) {
                    hashMap.remove(str);
                }
            }
            java.lang.Long l = (java.lang.Long) map.get(next + c + "_revision");
            hashMap.put(next + c + "_revision", java.lang.Long.valueOf((l == null ? 0L : l.longValue()) + 1));
            java.lang.String str2 = map2.get(next + "/railColor");
            if (!"follow".equals(str2)) {
                hashMap.put(next + "/railColor", str2);
            }
            java.lang.String upperCase = map2.get(next + "/palette").toUpperCase(java.util.Locale.ROOT);
            if (!"-,-".equals(upperCase)) {
                java.lang.String str3 = null;
                for (java.util.Map.Entry entry : hashMap.entrySet()) {
                    if (((java.lang.String) entry.getKey()).startsWith(b) && upperCase.equals(entry.getValue())) {
                        str3 = ((java.lang.String) entry.getKey()).substring(13);
                    }
                }
                if (str3 == null) {
                    while (hashMap.containsKey(b + i)) {
                        i++;
                    }
                    str3 = java.lang.String.valueOf(i);
                    hashMap.put(b + str3, upperCase);
                }
                hashMap.put(next + "/railPalette", str3);
            }
            for (java.util.Map.Entry<java.lang.String, java.lang.String> entry2 : map2.entrySet()) {
                if (entry2.getKey().startsWith(next + c)) {
                    java.lang.String substring = entry2.getKey().substring((next + c).length());
                    if (!substring.startsWith("_color/") && !substring.startsWith("_edge/")) {
                        valueOf = entry2.getValue();
                    } else {
                        valueOf = java.lang.Integer.valueOf(entry2.getValue());
                    }
                    hashMap.put(entry2.getKey(), valueOf);
                }
            }
        }
        for (java.lang.String str4 : treeSet) {
            boolean z = false;
            for (java.util.Map.Entry entry3 : hashMap.entrySet()) {
                if (((java.lang.String) entry3.getKey()).endsWith("/railPalette") && str4.equals(entry3.getValue())) {
                    z = true;
                }
            }
            if (!z) {
                hashMap.remove(b + str4);
            }
        }
        return hashMap;
    }
}
