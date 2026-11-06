package dev.duo.hookprobe;

import dev.duo.taskcore.WorkspaceProtocol;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.TreeSet;

/* renamed from: dev.duo.hookprobe.m */
/* loaded from: classes.dex */
final class C0111m {

    /* renamed from: a */
    private static final String f1645a = "miduo.colors";

    /* renamed from: b */
    private static final String f1646b = "_railPalette/";

    /* renamed from: c */
    private static final String f1647c = "/pageColors/";

    /* renamed from: d */
    private static final String f1648d = "(?:light|dark)/[A-Za-z_$][A-Za-z0-9_.$]*\\|(?:#[0-9]+)?";

    /* renamed from: e */
    private static final int f1649e = 2097152;

    C0111m() {
    }

    /* renamed from: a */
    static String m1712a(InputStream inputStream) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, StandardCharsets.UTF_8.newDecoder());
        StringBuilder sb = new StringBuilder();
        char[] cArr = new char[WorkspaceProtocol.MAX_PAYLOAD];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read == -1) {
                return sb.toString();
            }
            if (sb.length() + read > f1649e) {
                throw new IOException("颜色配置文件过大");
            }
            sb.append(cArr, 0, read);
        }
    }

    /* renamed from: b */
    private static int m1717b(String str) throws IOException {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            throw new IOException("颜色数值无效", e);
        }
    }

    /* renamed from: c */
    static Map<String, String> m1718c(String str) throws IOException {
        if (str.length() > f1649e) {
            throw new IOException("颜色配置文件过大");
        }
        Properties properties = new Properties();
        try {
            properties.load(new StringReader(str));
            if (!"1".equals(properties.getProperty(f1645a))) {
                throw new IOException("不是支持的 MiDuo 颜色配置文件");
            }
            HashMap hashMap = new HashMap();
            for (String str2 : properties.stringPropertyNames()) {
                hashMap.put(str2, properties.getProperty(str2));
            }
            Set<String> m1715a = m1715a(hashMap);
            if (m1715a.isEmpty()) {
                throw new IOException("文件没有 App 颜色配置");
            }
            for (String str3 : m1715a) {
                if (!str3.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+") || !"1".equals(hashMap.get(str3 + "/_app"))) {
                    throw new IOException("App 标识无效");
                }
                if (!Arrays.asList("follow", "white", "black").contains(hashMap.get(str3 + "/railColor"))) {
                    throw new IOException("App 默认颜色设置不完整");
                }
                String str4 = (String) hashMap.get(str3 + "/palette");
                if (str4 == null || !str4.matches("(?:-|[0-9A-Fa-f]{6}),(?:-|[0-9A-Fa-f]{6})")) {
                    throw new IOException("App 深浅配色不完整");
                }
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                String str5 = (String) entry.getKey();
                String str6 = (String) entry.getValue();
                if (!f1645a.equals(str5)) {
                    int indexOf = str5.indexOf(47);
                    if (indexOf < 0 || !m1715a.contains(str5.substring(0, indexOf))) {
                        throw new IOException("文件包含未知的配置项");
                    }
                    String substring = str5.substring(0, indexOf);
                    String substring2 = str5.substring(indexOf + 1);
                    if (!substring2.equals("_app") && !substring2.equals("railColor") && !substring2.equals("palette")) {
                        if (!substring2.startsWith("pageColors/")) {
                            throw new IOException("文件包含非颜色设置");
                        }
                        String substring3 = substring2.substring(11);
                        int lastIndexOf = substring3.lastIndexOf(35);
                        if (lastIndexOf >= 0 && m1717b(substring3.substring(lastIndexOf + 1)) < 0) {
                            throw new IOException("页面编号无效");
                        }
                        if (substring3.matches("_color/(?:light|dark)/[0-9A-F]{6}")) {
                            int m1717b = m1717b(str6);
                            if ((m1717b >>> 24) != 255 || !substring3.endsWith(String.format(Locale.ROOT, "%06X", Integer.valueOf(m1717b & 16777215)))) {
                                throw new IOException("页面颜色无效");
                            }
                        } else if (substring3.startsWith("_edge/") && substring3.substring(6).matches(f1648d)) {
                            int m1717b2 = m1717b(str6);
                            if (m1717b2 != 0 && (m1717b2 >>> 24) != 255) {
                                throw new IOException("页面边缘颜色无效");
                            }
                        } else if (!substring3.startsWith("_label/") || !substring3.substring(7).matches(f1648d)) {
                            if (substring3.startsWith("_base/") && substring3.substring(6).matches(f1648d)) {
                                if (!"1".equals(str6)) {
                                    throw new IOException("默认色采集页标记无效");
                                }
                            } else if (!substring3.matches(f1648d) || !str6.matches("(?:light|dark)/[0-9A-F]{6}") || !substring3.substring(0, substring3.indexOf(47)).equals(str6.substring(0, str6.indexOf(47))) || !hashMap.containsKey(substring + f1647c + "_color/" + str6)) {
                                throw new IOException("页面与颜色的对应关系无效");
                            }
                        }
                    }
                }
            }
            return hashMap;
        } catch (IllegalArgumentException e) {
            throw new IOException("颜色配置文件损坏", e);
        }
    }

    /* renamed from: a */
    static Set<String> m1715a(Map<String, String> map) {
        TreeSet treeSet = new TreeSet();
        for (String str : map.keySet()) {
            if (str.endsWith("/_app")) {
                treeSet.add(str.substring(0, str.length() - 5));
            }
        }
        return treeSet;
    }

    /* renamed from: a */
    static String m1713a(Map<String, ?> map, String str) throws IOException {
        TreeSet<String> treeSet = new TreeSet();
        if (str != null) {
            treeSet.add(str);
        } else {
            for (String str2 : map.keySet()) {
                int indexOf = str2.indexOf(47);
                if (indexOf > 0 && !str2.startsWith("_") && m1716a(str2.substring(indexOf + 1))) {
                    treeSet.add(str2.substring(0, indexOf));
                }
            }
        }
        Properties properties = new Properties();
        properties.setProperty(f1645a, "1");
        for (String str3 : treeSet) {
            properties.setProperty(str3 + "/_app", "1");
            properties.setProperty(str3 + "/railColor", String.valueOf(map.get(new StringBuilder().append(str3).append("/railColor").toString()) == null ? "follow" : map.get(str3 + "/railColor")));
            Object obj = map.get(str3 + "/railPalette");
            properties.setProperty(str3 + "/palette", obj == null ? "-,-" : (String) map.get(f1646b + obj));
            for (Map.Entry<String, ?> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key.startsWith(str3 + f1647c)) {
                    String substring = key.substring((str3 + f1647c).length());
                    if (!substring.equals("_revision") && !substring.equals("_updated") && !substring.startsWith("_blocked/") && !substring.matches("(?:_(?:base|edge|label)/)?0/.*")) {
                        properties.setProperty(key, substring.startsWith("_base/") ? "1" : String.valueOf(entry.getValue()));
                    }
                }
            }
        }
        StringWriter stringWriter = new StringWriter();
        properties.store(stringWriter, "MiDuo colours");
        m1718c(stringWriter.toString());
        return stringWriter.toString();
    }

    /* renamed from: a */
    private static boolean m1716a(String str) {
        return str.equals("railColor") || str.equals("railPalette") || str.startsWith("pageColors/");
    }

    /* renamed from: a */
    static Map<String, Object> m1714a(Map<String, ?> map, Map<String, String> map2) {
        Object valueOf;
        HashMap hashMap = new HashMap(map);
        Set<String> m1715a = m1715a(map2);
        TreeSet<String> treeSet = new TreeSet();
        Iterator<String> it = m1715a.iterator();
        while (true) {
            int i = 0;
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            Object obj = hashMap.get(next + "/railPalette");
            if (obj != null) {
                treeSet.add((String) obj);
            }
            Iterator it2 = new TreeSet(hashMap.keySet()).iterator();
            while (it2.hasNext()) {
                String str = (String) it2.next();
                if (str.startsWith(next + "/") && m1716a(str.substring(next.length() + 1))) {
                    hashMap.remove(str);
                }
            }
            Long l = (Long) map.get(next + f1647c + "_revision");
            hashMap.put(next + f1647c + "_revision", Long.valueOf((l == null ? 0L : l.longValue()) + 1));
            String str2 = map2.get(next + "/railColor");
            if (!"follow".equals(str2)) {
                hashMap.put(next + "/railColor", str2);
            }
            String upperCase = map2.get(next + "/palette").toUpperCase(Locale.ROOT);
            if (!"-,-".equals(upperCase)) {
                String str3 = null;
                for (Map.Entry entry : hashMap.entrySet()) {
                    if (((String) entry.getKey()).startsWith(f1646b) && upperCase.equals(entry.getValue())) {
                        str3 = ((String) entry.getKey()).substring(13);
                    }
                }
                if (str3 == null) {
                    while (hashMap.containsKey(f1646b + i)) {
                        i++;
                    }
                    str3 = String.valueOf(i);
                    hashMap.put(f1646b + str3, upperCase);
                }
                hashMap.put(next + "/railPalette", str3);
            }
            for (Map.Entry<String, String> entry2 : map2.entrySet()) {
                if (entry2.getKey().startsWith(next + f1647c)) {
                    String substring = entry2.getKey().substring((next + f1647c).length());
                    if (!substring.startsWith("_color/") && !substring.startsWith("_edge/")) {
                        valueOf = entry2.getValue();
                    } else {
                        valueOf = Integer.valueOf(entry2.getValue());
                    }
                    hashMap.put(entry2.getKey(), valueOf);
                }
            }
        }
        for (String str4 : treeSet) {
            boolean z = false;
            for (Map.Entry entry3 : hashMap.entrySet()) {
                if (((String) entry3.getKey()).endsWith("/railPalette") && str4.equals(entry3.getValue())) {
                    z = true;
                }
            }
            if (!z) {
                hashMap.remove(f1646b + str4);
            }
        }
        return hashMap;
    }
}
