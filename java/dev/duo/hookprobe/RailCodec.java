package dev.duo.hookprobe;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;

/* renamed from: dev.duo.hookprobe.J */
/* loaded from: classes.dex */
public final class RailCodec {

    /* renamed from: a */
    public static final int f918a = 7;

    /* renamed from: b */
    private static final int f919b = 6;

    /* renamed from: c */
    public static final String f920c = "sidebar";

    /* renamed from: d */
    public static final int f921d = 12;

    /* renamed from: e */
    public static final String f922e = "-";

    /* renamed from: f */
    public static final String f923f = "dock";

    /* renamed from: g */
    public static final String f924g = "back,home,recents,dock,dock,dock,-";

    /* renamed from: h */
    public static final String[] f925h;

    /* renamed from: i */
    private static final Set<String> f926i;

    /* renamed from: j */
    private static final Pattern f927j;

    /* renamed from: k */
    public static final int f928k = 3;

    /* renamed from: l */
    private static final Pattern f929l;

    /* renamed from: m */
    public static final int f930m = 400;

    static {
        String[] strArr = {"back", "home", "recents", "screenshot", "torch", "sleep", "ringer", "rotation", "screenrecord", "hotspot", "dark", "autobright", "location", "eyecare", "wechat", "alipay", "bluetooth", "airplane", "powersave", "cast", "huanji", "keepon", "calculator", "translate", "lastapp"};
        f925h = strArr;
        f926i = new HashSet(Arrays.asList(strArr));
        Pattern compile = Pattern.compile("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+");
        f927j = compile;
        f929l = Pattern.compile(compile.pattern() + "(@(0|[1-9][0-9]{0,4}))?");
    }

    private RailCodec() {
    }

    /* renamed from: a */
    public static boolean m939a(String str) {
        return str != null && f926i.contains(str);
    }

    /* renamed from: b */
    public static boolean m947b(String str) {
        return str != null && str.startsWith("app:") && f927j.matcher(str.substring(4)).matches();
    }

    /* renamed from: c */
    public static boolean m950c(String[] strArr) {
        return m955e(strArr) >= 0;
    }

    /* renamed from: d */
    public static int m953d(String[] strArr) {
        int m955e = m955e(strArr);
        int i = 0;
        if (m955e < 0) {
            return 0;
        }
        while (true) {
            int i2 = m955e + i;
            if (i2 >= strArr.length || !f920c.equals(strArr[i2])) {
                break;
            }
            i++;
        }
        return i;
    }

    /* renamed from: e */
    public static int m955e(String[] strArr) {
        if (strArr == null) {
            return -1;
        }
        for (int i = 0; i < strArr.length; i++) {
            if (f920c.equals(strArr[i])) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: f */
    public static int m957f(String[] strArr) {
        if (strArr == null) {
            return 0;
        }
        int i = 0;
        for (String str : strArr) {
            if (str != null && !f922e.equals(str) && !f920c.equals(str)) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: g */
    public static String m959g(String str) {
        int indexOf = str.indexOf(64);
        return indexOf < 0 ? str : str.substring(0, indexOf);
    }

    /* renamed from: h */
    public static int m960h(String str) {
        int indexOf = str.indexOf(64);
        if (indexOf < 0) {
            return 0;
        }
        return Integer.parseInt(str.substring(indexOf + 1));
    }

    /* renamed from: i */
    public static boolean m961i(String str) {
        return m939a(str) || f923f.equals(str) || m947b(str);
    }

    /* renamed from: a */
    public static String[] m940a() {
        return f924g.split(",");
    }

    /* renamed from: c */
    public static String[] m952c(String[] strArr, int i) {
        int i2;
        int i3;
        int m957f = m957f(strArr);
        if (m957f > 4) {
            return null;
        }
        int max = Math.max(3, Math.min(7 - m957f, i));
        int m955e = m955e(strArr);
        String[] strArr2 = new String[7];
        String[] strArr3 = new String[7];
        int i4 = 0;
        if (strArr != null) {
            i2 = 0;
            i3 = 0;
            for (int i5 = 0; i5 < strArr.length; i5++) {
                String str = strArr[i5];
                if (str != null && !f922e.equals(str) && !f920c.equals(str)) {
                    if (m955e < 0 || i5 <= m955e) {
                        strArr2[i2] = str;
                        i2++;
                    } else {
                        strArr3[i3] = str;
                        i3++;
                    }
                }
            }
        } else {
            i2 = 0;
            i3 = 0;
        }
        if (m955e < 0) {
            strArr3 = strArr2;
            i3 = i2;
            strArr2 = new String[7];
            i2 = 0;
        }
        String[] strArr4 = new String[7];
        Arrays.fill(strArr4, f922e);
        int i6 = 0;
        int i7 = 0;
        while (i6 < i2) {
            strArr4[i7] = strArr2[i6];
            i6++;
            i7++;
        }
        int i8 = 0;
        while (i8 < max) {
            strArr4[i7] = f920c;
            i8++;
            i7++;
        }
        while (i4 < i3) {
            strArr4[i7] = strArr3[i4];
            i4++;
            i7++;
        }
        return strArr4;
    }

    /* renamed from: e */
    public static List<String> m956e(String str) {
        ArrayList arrayList = new ArrayList();
        if (str != null) {
            for (String str2 : str.split(",")) {
                String trim = str2.trim();
                if (f929l.matcher(trim).matches()) {
                    String m934a = m934a(m959g(trim), m960h(trim));
                    if (arrayList.size() < 400 && !arrayList.contains(m934a)) {
                        arrayList.add(m934a);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    public static List<String> m958f(String str) {
        ArrayList arrayList = new ArrayList();
        if (str != null) {
            for (String str2 : str.split(",")) {
                String trim = str2.trim();
                if (f929l.matcher(trim).matches()) {
                    String m934a = m934a(m959g(trim), m960h(trim));
                    if (arrayList.size() < 12 && !arrayList.contains(m934a)) {
                        arrayList.add(m934a);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static String[] m941a(String[] strArr) {
        int i;
        String[] strArr2 = new String[7];
        Arrays.fill(strArr2, f922e);
        if (strArr != null) {
            int m955e = m955e(strArr);
            if (m955e < 0) {
                return m944a(strArr, strArr2);
            }
            int m953d = m953d(strArr);
            for (int i2 = 0; i2 < m955e && i2 < strArr.length; i2++) {
                String str = strArr[i2];
                if (str != null && !f922e.equals(str)) {
                    strArr2[i2] = str;
                }
            }
            for (int i3 = 0; i3 < m953d && (i = m955e + i3) < 7; i3++) {
                strArr2[i] = f920c;
            }
            int i4 = m955e + m953d;
            int i5 = i4;
            while (i4 < strArr.length && i5 < 7) {
                String str2 = strArr[i4];
                if (str2 != null && !f922e.equals(str2) && !f920c.equals(str2)) {
                    if (f923f.equals(str2)) {
                        int i6 = i5 + 3;
                        if (i6 > 7) {
                            break;
                        }
                        strArr2[i5] = f923f;
                        strArr2[i5 + 1] = f923f;
                        strArr2[i5 + 2] = f923f;
                        int i7 = i4 + 2;
                        if (i7 < strArr.length && f923f.equals(strArr[i4 + 1]) && f923f.equals(strArr[i7])) {
                            i4 = i7;
                            i5 = i6;
                        } else {
                            i5 = i6;
                        }
                    } else {
                        strArr2[i5] = str2;
                        i5++;
                    }
                }
                i4++;
            }
        }
        return strArr2;
    }

    /* renamed from: b */
    public static String[] m948b() {
        String[] strArr = new String[7];
        Arrays.fill(strArr, f920c);
        return strArr;
    }

    /* renamed from: b */
    public static String[] m949b(String[] strArr, int i) {
        int m955e = m955e(strArr);
        int m953d = m953d(strArr);
        if (m955e < 0 || m953d <= 0) {
            return null;
        }
        int i2 = m953d + m955e;
        int i3 = i2 - 3;
        int max = Math.max(0, i2 - 7);
        int i4 = m955e - 1;
        while (true) {
            if (i4 < i || i4 < 0) {
                break;
            }
            String str = strArr[i4];
            if (str != null && !f922e.equals(str) && !f920c.equals(str)) {
                i = i4 + 1;
                break;
            }
            i4--;
        }
        if (i >= max) {
            max = i;
        }
        if (max <= i3) {
            i3 = max;
        }
        return m943a(strArr, i3, i2 - i3);
    }

    /* renamed from: d */
    public static String[] m954d(String str) {
        String[] m951c = m951c(str);
        return m951c == null ? m940a() : m951c;
    }

    /* renamed from: b */
    public static String m946b(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < 7) {
            if (i > 0) {
                sb.append(',');
            }
            String str = f922e;
            String str2 = (strArr == null || i >= strArr.length) ? f922e : strArr[i];
            if (str2 != null) {
                str = str2;
            }
            sb.append(str);
            i++;
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static String[] m951c(String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split(",", -1);
        if (split.length == 6) {
            split = (String[]) Arrays.copyOf(split, 7);
        } else if (split.length != 7) {
            return null;
        }
        int i = -2;
        int i2 = 0;
        int i3 = 0;
        int i4 = -1;
        while (true) {
            if (i2 >= 7) {
                if (i3 != 0 && i3 < 3) {
                    return null;
                }
                String[] strArr = new String[7];
                Arrays.fill(strArr, f922e);
                for (int i5 = 0; i5 < i3; i5++) {
                    strArr[i4 + i5] = f920c;
                }
                HashSet hashSet = new HashSet();
                int i6 = -1;
                int i7 = 0;
                for (int i8 = 0; i8 < 7; i8++) {
                    if (i3 == 0 || i8 < i4 || i8 >= i4 + i3) {
                        String str2 = split[i8];
                        String trim = str2 == null ? "" : str2.trim();
                        if (!trim.isEmpty() && !f922e.equals(trim) && !f920c.equals(trim)) {
                            if (f923f.equals(trim)) {
                                if (i7 == 0) {
                                    i6 = i8;
                                } else if (i8 != i6 + i7) {
                                    return null;
                                }
                                i7++;
                            } else {
                                if (!m961i(trim) || !hashSet.add(trim)) {
                                    return null;
                                }
                                strArr[i8] = trim;
                            }
                        }
                    }
                }
                if (i7 != 0 && i7 != 3) {
                    return null;
                }
                if (i7 == 3) {
                    if (i6 < 0 || i6 > 4) {
                        return null;
                    }
                    for (int i9 = i6; i9 < i6 + 3; i9++) {
                        strArr[i9] = f923f;
                    }
                }
                return strArr;
            }
            String str3 = split[i2];
            if (f920c.equals(str3 != null ? str3.trim() : "")) {
                if (i4 < 0) {
                    i4 = i2;
                } else if (i2 != i + 1) {
                    return null;
                }
                i3++;
                i = i2;
            }
            i2++;
        }
    }

    /* renamed from: b */
    public static String m945b(List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (String str : m958f(list == null ? null : String.join(",", list))) {
            if (sb.length() > 0) {
                sb.append(',');
            }
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static String[] m944a(String[] strArr, String[] strArr2) {
        int i = 0;
        int i2 = 0;
        while (i < strArr.length && i2 < 7) {
            String str = strArr[i];
            if (str != null && !f922e.equals(str)) {
                if (f923f.equals(str)) {
                    int i3 = i2 + 3;
                    if (i3 > 7) {
                        break;
                    }
                    strArr2[i2] = f923f;
                    strArr2[i2 + 1] = f923f;
                    strArr2[i2 + 2] = f923f;
                    int i4 = i + 2;
                    if (i4 < strArr.length && f923f.equals(strArr[i + 1]) && f923f.equals(strArr[i4])) {
                        i = i4;
                        i2 = i3;
                    } else {
                        i2 = i3;
                    }
                } else {
                    strArr2[i2] = str;
                    i2++;
                }
            }
            i++;
        }
        return strArr2;
    }

    /* renamed from: a */
    public static String[] m943a(String[] strArr, int i, int i2) {
        int i3;
        if (strArr == null || i2 < 3 || i2 > 7 || i < 0 || (i3 = i + i2) > 7 || m955e(strArr) < 0) {
            return null;
        }
        int i4 = i;
        while (i4 < i3) {
            String str = i4 < strArr.length ? strArr[i4] : null;
            if (str != null && !f922e.equals(str) && !f920c.equals(str)) {
                return null;
            }
            i4++;
        }
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, 7);
        for (int i5 = 0; i5 < 7; i5++) {
            if (f920c.equals(strArr2[i5])) {
                strArr2[i5] = f922e;
            }
        }
        for (int i6 = 0; i6 < i2; i6++) {
            strArr2[i + i6] = f920c;
        }
        return strArr2;
    }

    /* renamed from: a */
    public static String[] m942a(String[] strArr, int i) {
        int m955e = m955e(strArr);
        int m953d = m953d(strArr);
        if (m955e < 0 || m953d <= 0) {
            return null;
        }
        int i2 = m955e + 3;
        int min = Math.min(7, m955e + 7);
        int i3 = m953d + m955e;
        while (true) {
            if (i3 >= i || i3 >= 7) {
                break;
            }
            String str = strArr[i3];
            if (str != null && !f922e.equals(str) && !f920c.equals(str)) {
                i = i3;
                break;
            }
            i3++;
        }
        if (i >= i2) {
            i2 = i;
        }
        if (i2 <= min) {
            min = i2;
        }
        return m943a(strArr, m955e, min - m955e);
    }

    /* renamed from: a */
    public static String m935a(List<String> list) {
        return String.join(",", m956e(list == null ? null : String.join(",", list)));
    }

    /* renamed from: a */
    public static List<String> m937a(List<String> list, List<String> list2) {
        ArrayList arrayList = new ArrayList();
        for (String str : list2) {
            if (list.contains(str)) {
                arrayList.add(str);
            }
        }
        for (String str2 : list) {
            if (!arrayList.contains(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static int m932a(float f, float f2, float f3, float f4, int i, int i2) {
        if (i2 <= 0 || f3 <= 0.0f || f4 <= 0.0f) {
            return -1;
        }
        return Math.min(i2 - 1, (Math.max(0, (int) Math.floor(f2 / f4)) * i) + Math.max(0, Math.min(i - 1, (int) Math.floor(f / f3))));
    }

    /* renamed from: a */
    public static List<String> m938a(List<String> list, List<String> list2, List<String> list3, int i) {
        ArrayList arrayList = new ArrayList(list3);
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            String str = list.get(i2);
            if (!list2.contains(str) && !arrayList.contains(str)) {
                arrayList.add(Math.min(i2, arrayList.size()), str);
                arrayList2.add(str);
            }
        }
        for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > i; size--) {
            if (arrayList2.contains(arrayList.get(size))) {
                arrayList.remove(size);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static String m934a(String str, int i) {
        return i == 0 ? str : str + "@" + i;
    }

    /* renamed from: a */
    public static List<String> m936a(List<String> list, int i, int i2) {
        ArrayList arrayList = new ArrayList(list);
        if (i >= 0 && i < arrayList.size() && i2 >= 0 && i2 < arrayList.size()) {
            arrayList.add(i2, (String) arrayList.remove(i));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static int m933a(float f, int i, int i2) {
        if (i2 <= 0) {
            return -1;
        }
        return Math.max(0, Math.min(i2 - 1, (int) Math.floor(f / i)));
    }
}
