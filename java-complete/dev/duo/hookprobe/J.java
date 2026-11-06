package dev.duo.hookprobe;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class J {
    public static final int a = 7;
    private static final int b = 6;
    public static final String c = "sidebar";
    public static final int d = 12;
    public static final String e = "-";
    public static final String f = "dock";
    public static final String g = "back,home,recents,dock,dock,dock,-";
    public static final String[] h;
    private static final Set<String> i;
    private static final Pattern j;
    public static final int k = 3;
    private static final Pattern l;
    public static final int m = 400;

    static {
        String[] strArr = {"back", "home", "recents", "screenshot", "torch", "sleep", "ringer", "rotation", "screenrecord", "hotspot", "dark", "autobright", "location", "eyecare", "wechat", "alipay", "bluetooth", "airplane", "powersave", "cast", "huanji", "keepon", "calculator", "translate", "lastapp"};
        h = strArr;
        i = new HashSet(Arrays.asList(strArr));
        Pattern compile = Pattern.compile("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+");
        j = compile;
        l = Pattern.compile(compile.pattern() + "(@(0|[1-9][0-9]{0,4}))?");
    }

    private J() {
    }

    public static boolean a(String str) {
        return str != null && i.contains(str);
    }

    public static boolean b(String str) {
        return str != null && str.startsWith("app:") && j.matcher(str.substring(4)).matches();
    }

    public static boolean c(String[] strArr) {
        return e(strArr) >= 0;
    }

    public static int d(String[] strArr) {
        int e2 = e(strArr);
        int i2 = 0;
        if (e2 < 0) {
            return 0;
        }
        while (true) {
            int i3 = e2 + i2;
            if (i3 >= strArr.length || !c.equals(strArr[i3])) {
                break;
            }
            i2++;
        }
        return i2;
    }

    public static int e(String[] strArr) {
        if (strArr == null) {
            return -1;
        }
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (c.equals(strArr[i2])) {
                return i2;
            }
        }
        return -1;
    }

    public static int f(String[] strArr) {
        if (strArr == null) {
            return 0;
        }
        int i2 = 0;
        for (String str : strArr) {
            if (str != null && !e.equals(str) && !c.equals(str)) {
                i2++;
            }
        }
        return i2;
    }

    public static String g(String str) {
        int indexOf = str.indexOf(64);
        return indexOf < 0 ? str : str.substring(0, indexOf);
    }

    public static int h(String str) {
        int indexOf = str.indexOf(64);
        if (indexOf < 0) {
            return 0;
        }
        return Integer.parseInt(str.substring(indexOf + 1));
    }

    public static boolean i(String str) {
        return a(str) || f.equals(str) || b(str);
    }

    public static String[] a() {
        return g.split(",");
    }

    public static String[] c(String[] strArr, int i2) {
        int i3;
        int i4;
        int f2 = f(strArr);
        if (f2 > 4) {
            return null;
        }
        int max = Math.max(3, Math.min(7 - f2, i2));
        int e2 = e(strArr);
        String[] strArr2 = new String[7];
        String[] strArr3 = new String[7];
        int i5 = 0;
        if (strArr != null) {
            i3 = 0;
            i4 = 0;
            for (int i6 = 0; i6 < strArr.length; i6++) {
                String str = strArr[i6];
                if (str != null && !e.equals(str) && !c.equals(str)) {
                    if (e2 < 0 || i6 <= e2) {
                        strArr2[i3] = str;
                        i3++;
                    } else {
                        strArr3[i4] = str;
                        i4++;
                    }
                }
            }
        } else {
            i3 = 0;
            i4 = 0;
        }
        if (e2 < 0) {
            strArr3 = strArr2;
            i4 = i3;
            strArr2 = new String[7];
            i3 = 0;
        }
        String[] strArr4 = new String[7];
        Arrays.fill(strArr4, e);
        int i7 = 0;
        int i8 = 0;
        while (i7 < i3) {
            strArr4[i8] = strArr2[i7];
            i7++;
            i8++;
        }
        int i9 = 0;
        while (i9 < max) {
            strArr4[i8] = c;
            i9++;
            i8++;
        }
        while (i5 < i4) {
            strArr4[i8] = strArr3[i5];
            i5++;
            i8++;
        }
        return strArr4;
    }

    public static List<String> e(String str) {
        ArrayList arrayList = new ArrayList();
        if (str != null) {
            for (String str2 : str.split(",")) {
                String trim = str2.trim();
                if (l.matcher(trim).matches()) {
                    String a2 = a(g(trim), h(trim));
                    if (arrayList.size() < 400 && !arrayList.contains(a2)) {
                        arrayList.add(a2);
                    }
                }
            }
        }
        return arrayList;
    }

    public static List<String> f(String str) {
        ArrayList arrayList = new ArrayList();
        if (str != null) {
            for (String str2 : str.split(",")) {
                String trim = str2.trim();
                if (l.matcher(trim).matches()) {
                    String a2 = a(g(trim), h(trim));
                    if (arrayList.size() < 12 && !arrayList.contains(a2)) {
                        arrayList.add(a2);
                    }
                }
            }
        }
        return arrayList;
    }

    public static String[] a(String[] strArr) {
        int i2;
        String[] strArr2 = new String[7];
        Arrays.fill(strArr2, e);
        if (strArr != null) {
            int e2 = e(strArr);
            if (e2 < 0) {
                return a(strArr, strArr2);
            }
            int d2 = d(strArr);
            for (int i3 = 0; i3 < e2 && i3 < strArr.length; i3++) {
                String str = strArr[i3];
                if (str != null && !e.equals(str)) {
                    strArr2[i3] = str;
                }
            }
            for (int i4 = 0; i4 < d2 && (i2 = e2 + i4) < 7; i4++) {
                strArr2[i2] = c;
            }
            int i5 = e2 + d2;
            int i6 = i5;
            while (i5 < strArr.length && i6 < 7) {
                String str2 = strArr[i5];
                if (str2 != null && !e.equals(str2) && !c.equals(str2)) {
                    if (f.equals(str2)) {
                        int i7 = i6 + 3;
                        if (i7 > 7) {
                            break;
                        }
                        strArr2[i6] = f;
                        strArr2[i6 + 1] = f;
                        strArr2[i6 + 2] = f;
                        int i8 = i5 + 2;
                        if (i8 < strArr.length && f.equals(strArr[i5 + 1]) && f.equals(strArr[i8])) {
                            i5 = i8;
                            i6 = i7;
                        } else {
                            i6 = i7;
                        }
                    } else {
                        strArr2[i6] = str2;
                        i6++;
                    }
                }
                i5++;
            }
        }
        return strArr2;
    }

    public static String[] b() {
        String[] strArr = new String[7];
        Arrays.fill(strArr, c);
        return strArr;
    }

    public static String[] b(String[] strArr, int i2) {
        int e2 = e(strArr);
        int d2 = d(strArr);
        if (e2 < 0 || d2 <= 0) {
            return null;
        }
        int i3 = d2 + e2;
        int i4 = i3 - 3;
        int max = Math.max(0, i3 - 7);
        int i5 = e2 - 1;
        while (true) {
            if (i5 < i2 || i5 < 0) {
                break;
            }
            String str = strArr[i5];
            if (str != null && !e.equals(str) && !c.equals(str)) {
                i2 = i5 + 1;
                break;
            }
            i5--;
        }
        if (i2 >= max) {
            max = i2;
        }
        if (max <= i4) {
            i4 = max;
        }
        return a(strArr, i4, i3 - i4);
    }

    public static String[] d(String str) {
        String[] c2 = c(str);
        return c2 == null ? a() : c2;
    }

    public static String b(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (i2 < 7) {
            if (i2 > 0) {
                sb.append(',');
            }
            String str = e;
            String str2 = (strArr == null || i2 >= strArr.length) ? e : strArr[i2];
            if (str2 != null) {
                str = str2;
            }
            sb.append(str);
            i2++;
        }
        return sb.toString();
    }

    public static String[] c(String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split(",", -1);
        if (split.length == 6) {
            split = (String[]) Arrays.copyOf(split, 7);
        } else if (split.length != 7) {
            return null;
        }
        int i2 = -2;
        int i3 = 0;
        int i4 = 0;
        int i5 = -1;
        while (true) {
            if (i3 >= 7) {
                if (i4 != 0 && i4 < 3) {
                    return null;
                }
                String[] strArr = new String[7];
                Arrays.fill(strArr, e);
                for (int i6 = 0; i6 < i4; i6++) {
                    strArr[i5 + i6] = c;
                }
                HashSet hashSet = new HashSet();
                int i7 = -1;
                int i8 = 0;
                for (int i9 = 0; i9 < 7; i9++) {
                    if (i4 == 0 || i9 < i5 || i9 >= i5 + i4) {
                        String str2 = split[i9];
                        String trim = str2 == null ? "" : str2.trim();
                        if (!trim.isEmpty() && !e.equals(trim) && !c.equals(trim)) {
                            if (f.equals(trim)) {
                                if (i8 == 0) {
                                    i7 = i9;
                                } else if (i9 != i7 + i8) {
                                    return null;
                                }
                                i8++;
                            } else {
                                if (!i(trim) || !hashSet.add(trim)) {
                                    return null;
                                }
                                strArr[i9] = trim;
                            }
                        }
                    }
                }
                if (i8 != 0 && i8 != 3) {
                    return null;
                }
                if (i8 == 3) {
                    if (i7 < 0 || i7 > 4) {
                        return null;
                    }
                    for (int i10 = i7; i10 < i7 + 3; i10++) {
                        strArr[i10] = f;
                    }
                }
                return strArr;
            }
            String str3 = split[i3];
            if (c.equals(str3 != null ? str3.trim() : "")) {
                if (i5 < 0) {
                    i5 = i3;
                } else if (i3 != i2 + 1) {
                    return null;
                }
                i4++;
                i2 = i3;
            }
            i3++;
        }
    }

    public static String b(List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (String str : f(list == null ? null : String.join(",", list))) {
            if (sb.length() > 0) {
                sb.append(',');
            }
            sb.append(str);
        }
        return sb.toString();
    }

    private static String[] a(String[] strArr, String[] strArr2) {
        int i2 = 0;
        int i3 = 0;
        while (i2 < strArr.length && i3 < 7) {
            String str = strArr[i2];
            if (str != null && !e.equals(str)) {
                if (f.equals(str)) {
                    int i4 = i3 + 3;
                    if (i4 > 7) {
                        break;
                    }
                    strArr2[i3] = f;
                    strArr2[i3 + 1] = f;
                    strArr2[i3 + 2] = f;
                    int i5 = i2 + 2;
                    if (i5 < strArr.length && f.equals(strArr[i2 + 1]) && f.equals(strArr[i5])) {
                        i2 = i5;
                        i3 = i4;
                    } else {
                        i3 = i4;
                    }
                } else {
                    strArr2[i3] = str;
                    i3++;
                }
            }
            i2++;
        }
        return strArr2;
    }

    public static String[] a(String[] strArr, int i2, int i3) {
        int i4;
        if (strArr == null || i3 < 3 || i3 > 7 || i2 < 0 || (i4 = i2 + i3) > 7 || e(strArr) < 0) {
            return null;
        }
        int i5 = i2;
        while (i5 < i4) {
            String str = i5 < strArr.length ? strArr[i5] : null;
            if (str != null && !e.equals(str) && !c.equals(str)) {
                return null;
            }
            i5++;
        }
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, 7);
        for (int i6 = 0; i6 < 7; i6++) {
            if (c.equals(strArr2[i6])) {
                strArr2[i6] = e;
            }
        }
        for (int i7 = 0; i7 < i3; i7++) {
            strArr2[i2 + i7] = c;
        }
        return strArr2;
    }

    public static String[] a(String[] strArr, int i2) {
        int e2 = e(strArr);
        int d2 = d(strArr);
        if (e2 < 0 || d2 <= 0) {
            return null;
        }
        int i3 = e2 + 3;
        int min = Math.min(7, e2 + 7);
        int i4 = d2 + e2;
        while (true) {
            if (i4 >= i2 || i4 >= 7) {
                break;
            }
            String str = strArr[i4];
            if (str != null && !e.equals(str) && !c.equals(str)) {
                i2 = i4;
                break;
            }
            i4++;
        }
        if (i2 >= i3) {
            i3 = i2;
        }
        if (i3 <= min) {
            min = i3;
        }
        return a(strArr, e2, min - e2);
    }

    public static String a(List<String> list) {
        return String.join(",", e(list == null ? null : String.join(",", list)));
    }

    public static List<String> a(List<String> list, List<String> list2) {
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

    public static int a(float f2, float f3, float f4, float f5, int i2, int i3) {
        if (i3 <= 0 || f4 <= 0.0f || f5 <= 0.0f) {
            return -1;
        }
        return Math.min(i3 - 1, (Math.max(0, (int) Math.floor(f3 / f5)) * i2) + Math.max(0, Math.min(i2 - 1, (int) Math.floor(f2 / f4))));
    }

    public static List<String> a(List<String> list, List<String> list2, List<String> list3, int i2) {
        ArrayList arrayList = new ArrayList(list3);
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < list.size(); i3++) {
            String str = list.get(i3);
            if (!list2.contains(str) && !arrayList.contains(str)) {
                arrayList.add(Math.min(i3, arrayList.size()), str);
                arrayList2.add(str);
            }
        }
        for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > i2; size--) {
            if (arrayList2.contains(arrayList.get(size))) {
                arrayList.remove(size);
            }
        }
        return arrayList;
    }

    public static String a(String str, int i2) {
        return i2 == 0 ? str : str + "@" + i2;
    }

    public static List<String> a(List<String> list, int i2, int i3) {
        ArrayList arrayList = new ArrayList(list);
        if (i2 >= 0 && i2 < arrayList.size() && i3 >= 0 && i3 < arrayList.size()) {
            arrayList.add(i3, (String) arrayList.remove(i2));
        }
        return arrayList;
    }

    public static int a(float f2, int i2, int i3) {
        if (i3 <= 0) {
            return -1;
        }
        return Math.max(0, Math.min(i3 - 1, (int) Math.floor(f2 / i2)));
    }
}
