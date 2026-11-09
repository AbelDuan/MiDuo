package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class J {
    public static final int a = 7;
    private static final int b = 6;
    public static final java.lang.String c = "sidebar";
    public static final int d = 12;
    public static final java.lang.String e = "-";
    public static final java.lang.String f = "dock";
    public static final java.lang.String g = "back,home,recents,dock,dock,dock,-";
    public static final java.lang.String[] h;
    private static final java.util.Set<java.lang.String> i;
    private static final java.util.regex.Pattern j;
    public static final int k = 3;
    private static final java.util.regex.Pattern l;
    public static final int m = 400;
    public static final int n = 3;
    public static final int o = 6;

    static {
        java.lang.String[] strArr = {"back", "home", "recents", "screenshot", "torch", "sleep", "ringer", "rotation", "screenrecord", "hotspot", "dark", "autobright", "location", "eyecare", "wechat", "alipay", "bluetooth", "airplane", "powersave", "cast", "huanji", "keepon", "calculator", "translate", "lastapp"};
        h = strArr;
        i = new java.util.HashSet(java.util.Arrays.asList(strArr));
        java.util.regex.Pattern compile = java.util.regex.Pattern.compile("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+");
        j = compile;
        l = java.util.regex.Pattern.compile(compile.pattern() + "(@(0|[1-9][0-9]{0,4}))?");
    }

    private J() {
    }

    public static int a(int i2, int i3) {
        return (i2 * 3) + i3;
    }

    public static boolean b(java.lang.String str) {
        return str != null && str.startsWith("app:") && j.matcher(str.substring(4)).matches();
    }

    public static java.lang.String[] c(java.lang.String str) {
        if (str == null) {
            return null;
        }
        java.lang.String[] split = str.split(",", -1);
        if (split.length == 6) {
            split = (java.lang.String[]) java.util.Arrays.copyOf(split, 7);
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
                java.lang.String[] strArr = new java.lang.String[7];
                java.util.Arrays.fill(strArr, e);
                for (int i6 = 0; i6 < i4; i6++) {
                    strArr[i5 + i6] = c;
                }
                java.util.HashSet hashSet = new java.util.HashSet();
                int i7 = -1;
                int i8 = 0;
                for (int i9 = 0; i9 < 7; i9++) {
                    if (i4 == 0 || i9 < i5 || i9 >= i5 + i4) {
                        java.lang.String str2 = split[i9];
                        java.lang.String trim = str2 == null ? "" : str2.trim();
                        if (!trim.isEmpty() && !e.equals(trim) && !c.equals(trim)) {
                            if (f.equals(trim)) {
                                if (i8 == 0) {
                                    i7 = i9;
                                } else if (i9 != i7 + i8) {
                                    return null;
                                }
                                i8++;
                            } else {
                                if (!j(trim) || !hashSet.add(trim)) {
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
            java.lang.String str3 = split[i3];
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

    public static boolean d(java.lang.String[] strArr) {
        return f(strArr) >= 0;
    }

    public static int e(java.lang.String[] strArr) {
        int f2 = f(strArr);
        int i2 = 0;
        if (f2 < 0) {
            return 0;
        }
        while (true) {
            int i3 = f2 + i2;
            if (i3 >= strArr.length || !c.equals(strArr[i3])) {
                break;
            }
            i2++;
        }
        return i2;
    }

    public static int f(java.lang.String[] strArr) {
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

    public static boolean g(java.lang.String[] strArr) {
        return c.equals(c(strArr, 0)) || c.equals(c(strArr, 1));
    }

    public static java.lang.String h(java.lang.String str) {
        int indexOf = str.indexOf(64);
        return indexOf < 0 ? str : str.substring(0, indexOf);
    }

    public static int i(java.lang.String str) {
        int indexOf = str.indexOf(64);
        if (indexOf < 0) {
            return 0;
        }
        return java.lang.Integer.parseInt(str.substring(indexOf + 1));
    }

    public static boolean j(java.lang.String str) {
        return a(str) || f.equals(str) || b(str);
    }

    public static boolean a(java.lang.String str) {
        return str != null && i.contains(str);
    }

    public static java.lang.String[] d(java.lang.String str) {
        java.lang.String[] c2 = c(str);
        return c2 == null ? a() : c2;
    }

    public static java.util.List<java.lang.String> f(java.lang.String str) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (str != null) {
            for (java.lang.String str2 : str.split(",")) {
                java.lang.String trim = str2.trim();
                if (l.matcher(trim).matches()) {
                    java.lang.String a2 = a(h(trim), i(trim));
                    if (arrayList.size() < 12 && !arrayList.contains(a2)) {
                        arrayList.add(a2);
                    }
                }
            }
        }
        return arrayList;
    }

    public static java.lang.String[] g(java.lang.String str) {
        if (str == null) {
            return null;
        }
        java.lang.String[] split = str.split(",", -1);
        if (split.length != 6) {
            return null;
        }
        java.util.HashSet hashSet = new java.util.HashSet();
        for (int i2 = 0; i2 < 2; i2++) {
            boolean z = c(split, i2) != null;
            for (int i3 = 0; i3 < 3; i3++) {
                java.lang.String str2 = split[a(i2, i3)];
                if (!z && !e.equals(str2) && ((!a(str2) && !b(str2)) || !hashSet.add(str2))) {
                    return null;
                }
            }
        }
        return split;
    }

    public static java.lang.String[] a() {
        return g.split(",");
    }

    public static java.lang.String[] b(java.lang.String[] strArr, int i2) {
        int f2 = f(strArr);
        int e2 = e(strArr);
        if (f2 < 0 || e2 <= 0) {
            return null;
        }
        int i3 = e2 + f2;
        int i4 = i3 - 3;
        int max = java.lang.Math.max(0, i3 - 7);
        int i5 = f2 - 1;
        while (true) {
            if (i5 < i2 || i5 < 0) {
                break;
            }
            java.lang.String str = strArr[i5];
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

    public static java.lang.String[] h(java.lang.String[] strArr) {
        int[] iArr;
        java.lang.String[] strArr2 = new java.lang.String[6];
        java.util.Arrays.fill(strArr2, e);
        if (strArr != null) {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            java.lang.String str = null;
            for (java.lang.String str2 : strArr) {
                if (str2 != null && !e.equals(str2)) {
                    if (c.equals(str2) || f.equals(str2)) {
                        if (str == null) {
                            str = str2;
                        }
                    } else if (!arrayList.contains(str2)) {
                        arrayList.add(str2);
                    }
                }
            }
            if (str != null) {
                for (int i2 = 0; i2 < 3; i2++) {
                    strArr2[a(0, i2)] = str;
                }
            }
            if (str != null) {
                iArr = new int[]{a(1, 0), a(1, 1), a(1, 2)};
            } else {
                iArr = new int[]{a(1, 0), a(1, 1), a(1, 2), a(0, 0), a(0, 1), a(0, 2)};
            }
            for (int i3 = 0; i3 < iArr.length && i3 < arrayList.size(); i3++) {
                strArr2[iArr[i3]] = (java.lang.String) arrayList.get(i3);
            }
        }
        return strArr2;
    }

    public static java.lang.String[] a(java.lang.String[] strArr) {
        int i2;
        java.lang.String[] strArr2 = new java.lang.String[7];
        java.util.Arrays.fill(strArr2, e);
        if (strArr != null) {
            int f2 = f(strArr);
            if (f2 < 0) {
                return a(strArr, strArr2);
            }
            int e2 = e(strArr);
            for (int i3 = 0; i3 < f2 && i3 < strArr.length; i3++) {
                java.lang.String str = strArr[i3];
                if (str != null && !e.equals(str)) {
                    strArr2[i3] = str;
                }
            }
            for (int i4 = 0; i4 < e2 && (i2 = f2 + i4) < 7; i4++) {
                strArr2[i2] = c;
            }
            int i5 = f2 + e2;
            int i6 = i5;
            while (i5 < strArr.length && i6 < 7) {
                java.lang.String str2 = strArr[i5];
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

    public static java.util.List<java.lang.String> e(java.lang.String str) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (str != null) {
            for (java.lang.String str2 : str.split(",")) {
                java.lang.String trim = str2.trim();
                if (l.matcher(trim).matches()) {
                    java.lang.String a2 = a(h(trim), i(trim));
                    if (arrayList.size() < 400 && !arrayList.contains(a2)) {
                        arrayList.add(a2);
                    }
                }
            }
        }
        return arrayList;
    }

    public static java.lang.String b(java.lang.String[] strArr) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        int i2 = 0;
        while (i2 < 7) {
            if (i2 > 0) {
                sb.append(',');
            }
            java.lang.String str = e;
            java.lang.String str2 = (strArr == null || i2 >= strArr.length) ? e : strArr[i2];
            if (str2 != null) {
                str = str2;
            }
            sb.append(str);
            i2++;
        }
        return sb.toString();
    }

    public static java.lang.String b(java.util.List<java.lang.String> list) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        for (java.lang.String str : f(list == null ? null : java.lang.String.join(",", list))) {
            if (sb.length() > 0) {
                sb.append(',');
            }
            sb.append(str);
        }
        return sb.toString();
    }

    private static java.lang.String[] a(java.lang.String[] strArr, java.lang.String[] strArr2) {
        int i2 = 0;
        int i3 = 0;
        while (i2 < strArr.length && i3 < 7) {
            java.lang.String str = strArr[i2];
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

    public static java.lang.String c(java.lang.String[] strArr, int i2) {
        if (strArr == null || strArr.length != 6) {
            return null;
        }
        java.lang.String str = strArr[a(i2, 0)];
        if (!c.equals(str) && !f.equals(str)) {
            return null;
        }
        for (int i3 = 1; i3 < 3; i3++) {
            if (!str.equals(strArr[a(i2, i3)])) {
                return null;
            }
        }
        return str;
    }

    public static java.lang.String[] a(java.lang.String[] strArr, int i2, int i3) {
        int i4;
        if (strArr == null || i3 < 3 || i3 > 7 || i2 < 0 || (i4 = i2 + i3) > 7 || f(strArr) < 0) {
            return null;
        }
        int i5 = i2;
        while (i5 < i4) {
            java.lang.String str = i5 < strArr.length ? strArr[i5] : null;
            if (str != null && !e.equals(str) && !c.equals(str)) {
                return null;
            }
            i5++;
        }
        java.lang.String[] strArr2 = (java.lang.String[]) java.util.Arrays.copyOf(strArr, 7);
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

    public static java.lang.String c(java.lang.String[] strArr) {
        if (g(strArr == null ? null : java.lang.String.join(",", strArr)) != null) {
            return java.lang.String.join(",", strArr);
        }
        throw new java.lang.IllegalArgumentException("workbench layout");
    }

    public static java.lang.String[] a(java.lang.String[] strArr, int i2) {
        int f2 = f(strArr);
        int e2 = e(strArr);
        if (f2 < 0 || e2 <= 0) {
            return null;
        }
        int i3 = f2 + 3;
        int min = java.lang.Math.min(7, f2 + 7);
        int i4 = e2 + f2;
        while (true) {
            if (i4 >= i2 || i4 >= 7) {
                break;
            }
            java.lang.String str = strArr[i4];
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
        return a(strArr, f2, min - f2);
    }

    public static java.lang.String a(java.util.List<java.lang.String> list) {
        return java.lang.String.join(",", e(list == null ? null : java.lang.String.join(",", list)));
    }

    public static java.util.List<java.lang.String> a(java.util.List<java.lang.String> list, java.util.List<java.lang.String> list2) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.String str : list2) {
            if (list.contains(str)) {
                arrayList.add(str);
            }
        }
        for (java.lang.String str2 : list) {
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
        return java.lang.Math.min(i3 - 1, (java.lang.Math.max(0, (int) java.lang.Math.floor(f3 / f5)) * i2) + java.lang.Math.max(0, java.lang.Math.min(i2 - 1, (int) java.lang.Math.floor(f2 / f4))));
    }

    public static java.util.List<java.lang.String> a(java.util.List<java.lang.String> list, java.util.List<java.lang.String> list2, java.util.List<java.lang.String> list3, int i2) {
        java.util.ArrayList arrayList = new java.util.ArrayList(list3);
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        for (int i3 = 0; i3 < list.size(); i3++) {
            java.lang.String str = list.get(i3);
            if (!list2.contains(str) && !arrayList.contains(str)) {
                arrayList.add(java.lang.Math.min(i3, arrayList.size()), str);
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

    public static java.lang.String a(java.lang.String str, int i2) {
        return i2 == 0 ? str : str + "@" + i2;
    }

    public static java.util.List<java.lang.String> a(java.util.List<java.lang.String> list, int i2, int i3) {
        java.util.ArrayList arrayList = new java.util.ArrayList(list);
        if (i2 >= 0 && i2 < arrayList.size() && i3 >= 0 && i3 < arrayList.size()) {
            arrayList.add(i3, (java.lang.String) arrayList.remove(i2));
        }
        return arrayList;
    }

    public static int a(float f2, int i2, int i3) {
        if (i3 <= 0) {
            return -1;
        }
        return java.lang.Math.max(0, java.lang.Math.min(i3 - 1, (int) java.lang.Math.floor(f2 / i2)));
    }

    public static java.lang.String[] a(java.lang.String str, java.lang.String[] strArr) {
        java.lang.String[] g2 = g(str);
        return g2 != null ? g2 : h(strArr);
    }
}
