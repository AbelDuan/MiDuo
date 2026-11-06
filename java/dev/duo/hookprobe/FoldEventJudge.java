package dev.duo.hookprobe;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: dev.duo.hookprobe.x */
/* loaded from: classes.dex */
final class FoldEventJudge {

    /* renamed from: c */
    static final int f1856c = 2;

    /* renamed from: d */
    static final int f1857d = 2;

    /* renamed from: e */
    static final long f1858e = 200;

    /* renamed from: f */
    static final long f1859f = 3000;

    /* renamed from: g */
    static final float f1860g = 0.95f;

    /* renamed from: h */
    static final long f1861h = 700;

    /* renamed from: i */
    static final int f1862i = 0;

    /* renamed from: j */
    static final int f1863j = 1;

    /* renamed from: a */
    private final Map<String, b> f1864a = new HashMap();

    /* renamed from: b */
    private final Map<String, a> f1865b = new HashMap();

    /* renamed from: dev.duo.hookprobe.x$a */
    static final class a {

        /* renamed from: a */
        final String f1866a;

        /* renamed from: b */
        final float f1867b;

        /* renamed from: c */
        final long f1868c;

        /* renamed from: d */
        float[] f1869d;

        /* renamed from: e */
        boolean f1870e;

        /* renamed from: f */
        boolean f1871f;

        /* renamed from: g */
        boolean f1872g;

        a(String str, float f, long j) {
            this.f1866a = str;
            this.f1867b = f;
            this.f1868c = j;
        }
    }

    /* renamed from: dev.duo.hookprobe.x$b */
    static final class b {

        /* renamed from: a */
        final String f1873a;

        /* renamed from: b */
        final Object f1874b;

        /* renamed from: c */
        final int f1875c;

        /* renamed from: d */
        final int f1876d;

        /* renamed from: e */
        final int f1877e;

        /* renamed from: f */
        final long f1878f;

        /* renamed from: g */
        long f1879g;

        /* renamed from: h */
        boolean f1880h;

        /* renamed from: i */
        boolean f1881i;

        /* renamed from: j */
        int f1882j;

        /* renamed from: k */
        float[] f1883k;

        /* renamed from: l */
        boolean f1884l;

        /* renamed from: m */
        boolean f1885m;

        /* renamed from: n */
        boolean f1886n;

        /* renamed from: o */
        float f1887o;

        b(String str, Object obj, int i, int i2, int i3, long j, long j2) {
            this.f1873a = str;
            this.f1874b = obj;
            this.f1875c = i;
            this.f1876d = i2;
            this.f1877e = i3;
            this.f1878f = j;
            this.f1879g = j + j2;
        }

        /* renamed from: a */
        boolean m2033a(long j) {
            return j >= this.f1879g;
        }
    }

    FoldEventJudge() {
    }

    /* renamed from: a */
    static long m2012a(long j) {
        return Math.max(f1858e, Math.min(f1859f, j));
    }

    /* renamed from: b */
    synchronized boolean m2029b() {
        return this.f1864a.isEmpty();
    }

    /* renamed from: c */
    synchronized List<a> m2032c(long j) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(this.f1865b.values());
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            a aVar = (a) obj;
            if (j >= aVar.f1868c) {
                this.f1865b.remove(aVar.f1866a);
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    synchronized boolean m2022a() {
        if (this.f1864a.isEmpty()) {
            if (this.f1865b.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    synchronized boolean m2030b(String str, float[] fArr, boolean z, boolean z2, long j) {
        boolean z3;
        a aVar = this.f1865b.get(str);
        if (aVar != null && j < aVar.f1868c && fArr != null && fArr.length >= 4) {
            float f = fArr[2];
            z3 = f <= 0.0f || f < aVar.f1867b * f1860g;
            aVar.f1869d = (float[]) fArr.clone();
            aVar.f1870e = z3;
            aVar.f1871f = z;
            aVar.f1872g = z2;
        }
        return z3;
    }

    /* renamed from: a */
    synchronized void m2021a(b bVar, float f) {
        if (f > 0.0f) {
            bVar.f1887o = f;
        }
    }

    /* renamed from: a */
    synchronized a m2016a(b bVar, long j) {
        if (bVar != null) {
            float f = bVar.f1887o;
            if (f > 0.0f) {
                a aVar = new a(bVar.f1873a, f, j + f1861h);
                float[] fArr = bVar.f1883k;
                if (fArr != null && bVar.f1884l) {
                    aVar.f1869d = (float[]) fArr.clone();
                    aVar.f1870e = true;
                    aVar.f1871f = bVar.f1886n;
                    aVar.f1872g = bVar.f1885m;
                }
                this.f1865b.put(bVar.f1873a, aVar);
                return aVar;
            }
        }
        return null;
    }

    /* renamed from: c */
    synchronized int m2031c() {
        return this.f1864a.size();
    }

    /* renamed from: b */
    synchronized b m2026b(String str) {
        if (str == null) {
            return null;
        }
        return this.f1864a.get(str);
    }

    /* renamed from: b */
    synchronized List<b> m2028b(Object obj) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(this.f1864a.values());
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj2 = arrayList2.get(i);
            i++;
            b bVar = (b) obj2;
            if (bVar.f1874b == obj) {
                this.f1864a.remove(bVar.f1873a);
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    synchronized List<b> m2027b(long j) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(this.f1864a.values());
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            b bVar = (b) obj;
            if (bVar.m2033a(j)) {
                this.f1864a.remove(bVar.f1873a);
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    synchronized a m2017a(String str) {
        return this.f1865b.remove(str);
    }

    /* renamed from: a */
    synchronized b m2018a(String str, Object obj, int i, int i2, int i3, long j, long j2) {
        b bVar = null;
        if (str != null) {
            if (!str.isEmpty() && obj != null && i > 0) {
                if (i2 != 2) {
                    return null;
                }
                if (i2 == 2 && (i3 <= 0 || i3 == Integer.MAX_VALUE)) {
                    return null;
                }
                b bVar2 = this.f1864a.get(str);
                if (bVar2 == null || bVar2.m2033a(j)) {
                    if (bVar2 == null) {
                        bVar = new b(str, obj, i, i2, i3, j, m2012a(j2));
                        this.f1864a.put(str, bVar);
                    }
                } else if (bVar2.f1874b == obj && bVar2.f1875c == i && bVar2.f1876d == i2 && bVar2.f1877e == i3) {
                    bVar2.f1879g = m2012a(j2) + j;
                    return bVar2;
                }
                return null;
            }
        }
        return bVar;
    }

    /* renamed from: a */
    synchronized int m2014a(Object obj, int i, long j, long j2) {
        int i2;
        i2 = 0;
        for (b bVar : this.f1864a.values()) {
            if (bVar.f1874b == obj && bVar.f1875c == i && !bVar.m2033a(j)) {
                bVar.f1879g = m2012a(j2) + j;
                i2++;
            }
        }
        return i2;
    }

    /* renamed from: a */
    synchronized List<b> m2019a(Object obj, int i, String str) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(this.f1864a.values());
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj2 = arrayList2.get(i2);
            i2++;
            b bVar = (b) obj2;
            if (bVar.f1874b == obj && bVar.f1875c == i && ("*".equals(str) || bVar.f1873a.equals(str))) {
                this.f1864a.remove(bVar.f1873a);
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    synchronized boolean m2024a(String str, int i, long j) {
        b bVar = this.f1864a.get(str);
        if (bVar != null && !bVar.m2033a(j)) {
            if (i == 2) {
                if (!bVar.f1881i) {
                    return false;
                }
                bVar.f1882j++;
                return true;
            }
            bVar.f1880h = true;
            return true;
        }
        return false;
    }

    /* renamed from: a */
    /*
    */
    synchronized boolean m2025a(String str, float[] fArr, boolean z, boolean z2, long j) {
        boolean z3;
        b bVar = this.f1864a.get(str);
        z3 = false;
        if (bVar != null && !bVar.m2033a(j) && fArr != null && fArr.length >= 4) {
            float f = fArr[2];
            if (f > 0.0f) {
                float f2 = bVar.f1887o;
                if (f2 > 0.0f) {
                }
                bVar.f1883k = (float[]) fArr.clone();
                bVar.f1884l = z3;
                bVar.f1886n = z;
                bVar.f1885m = z2;
            }
            z3 = true;
            bVar.f1883k = (float[]) fArr.clone();
            bVar.f1884l = z3;
            bVar.f1886n = z;
            bVar.f1885m = z2;
        }
        return z3;
    }

    /* renamed from: a */
    static boolean m2013a(b bVar, int i) {
        if (bVar == null || !bVar.f1880h) {
            return false;
        }
        return (i == 2 && bVar.f1881i) ? false : true;
    }

    /* renamed from: a */
    synchronized int m2015a(String str, boolean z, boolean z2, long j) {
        b bVar = this.f1864a.get(str);
        if (bVar != null) {
            if (!bVar.m2033a(j)) {
                return 1;
            }
        }
        return 0;
    }

    /* renamed from: a */
    synchronized void m2020a(b bVar) {
        bVar.f1880h = true;
        bVar.f1881i = true;
    }

    /* renamed from: a */
    synchronized boolean m2023a(Object obj) {
        Iterator<b> it = this.f1864a.values().iterator();
        while (it.hasNext()) {
            if (it.next().f1874b == obj) {
                return true;
            }
        }
        return false;
    }
}
