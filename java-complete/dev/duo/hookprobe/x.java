package dev.duo.hookprobe;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class x {
    static final int c = 2;
    static final int d = 2;
    static final long e = 200;
    static final long f = 3000;
    static final float g = 0.95f;
    static final long h = 700;
    static final int i = 0;
    static final int j = 1;
    private final Map<String, b> a = new HashMap();
    private final Map<String, a> b = new HashMap();

    static final class a {
        final String a;
        final float b;
        final long c;
        float[] d;
        boolean e;
        boolean f;
        boolean g;

        a(String str, float f, long j) {
            this.a = str;
            this.b = f;
            this.c = j;
        }
    }

    static final class b {
        final String a;
        final Object b;
        final int c;
        final int d;
        final int e;
        final long f;
        long g;
        boolean h;
        boolean i;
        int j;
        float[] k;
        boolean l;
        boolean m;
        boolean n;
        float o;

        b(String str, Object obj, int i, int i2, int i3, long j, long j2) {
            this.a = str;
            this.b = obj;
            this.c = i;
            this.d = i2;
            this.e = i3;
            this.f = j;
            this.g = j + j2;
        }

        boolean a(long j) {
            return j >= this.g;
        }
    }

    x() {
    }

    static long a(long j2) {
        return Math.max(e, Math.min(f, j2));
    }

    synchronized boolean b() {
        return this.a.isEmpty();
    }

    synchronized List<a> c(long j2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(this.b.values());
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            a aVar = (a) obj;
            if (j2 >= aVar.c) {
                this.b.remove(aVar.a);
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    synchronized boolean a() {
        if (this.a.isEmpty()) {
            if (this.b.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    synchronized boolean b(String str, float[] fArr, boolean z, boolean z2, long j2) {
        boolean z3;
        a aVar = this.b.get(str);
        if (aVar != null && j2 < aVar.c && fArr != null && fArr.length >= 4) {
            float f2 = fArr[2];
            z3 = f2 <= 0.0f || f2 < aVar.b * g;
            aVar.d = (float[]) fArr.clone();
            aVar.e = z3;
            aVar.f = z;
            aVar.g = z2;
        }
        return z3;
    }

    synchronized void a(b bVar, float f2) {
        if (f2 > 0.0f) {
            bVar.o = f2;
        }
    }

    synchronized a a(b bVar, long j2) {
        if (bVar != null) {
            float f2 = bVar.o;
            if (f2 > 0.0f) {
                a aVar = new a(bVar.a, f2, j2 + h);
                float[] fArr = bVar.k;
                if (fArr != null && bVar.l) {
                    aVar.d = (float[]) fArr.clone();
                    aVar.e = true;
                    aVar.f = bVar.n;
                    aVar.g = bVar.m;
                }
                this.b.put(bVar.a, aVar);
                return aVar;
            }
        }
        return null;
    }

    synchronized int c() {
        return this.a.size();
    }

    synchronized b b(String str) {
        if (str == null) {
            return null;
        }
        return this.a.get(str);
    }

    synchronized List<b> b(Object obj) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(this.a.values());
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj2 = arrayList2.get(i2);
            i2++;
            b bVar = (b) obj2;
            if (bVar.b == obj) {
                this.a.remove(bVar.a);
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    synchronized List<b> b(long j2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(this.a.values());
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            b bVar = (b) obj;
            if (bVar.a(j2)) {
                this.a.remove(bVar.a);
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    synchronized a a(String str) {
        return this.b.remove(str);
    }

    synchronized b a(String str, Object obj, int i2, int i3, int i4, long j2, long j3) {
        b bVar = null;
        if (str != null) {
            if (!str.isEmpty() && obj != null && i2 > 0) {
                if (i3 != 2) {
                    return null;
                }
                if (i3 == 2 && (i4 <= 0 || i4 == Integer.MAX_VALUE)) {
                    return null;
                }
                b bVar2 = this.a.get(str);
                if (bVar2 == null || bVar2.a(j2)) {
                    if (bVar2 == null) {
                        bVar = new b(str, obj, i2, i3, i4, j2, a(j3));
                        this.a.put(str, bVar);
                    }
                } else if (bVar2.b == obj && bVar2.c == i2 && bVar2.d == i3 && bVar2.e == i4) {
                    bVar2.g = a(j3) + j2;
                    return bVar2;
                }
                return null;
            }
        }
        return bVar;
    }

    synchronized int a(Object obj, int i2, long j2, long j3) {
        int i3;
        i3 = 0;
        for (b bVar : this.a.values()) {
            if (bVar.b == obj && bVar.c == i2 && !bVar.a(j2)) {
                bVar.g = a(j3) + j2;
                i3++;
            }
        }
        return i3;
    }

    synchronized List<b> a(Object obj, int i2, String str) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(this.a.values());
        int size = arrayList2.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj2 = arrayList2.get(i3);
            i3++;
            b bVar = (b) obj2;
            if (bVar.b == obj && bVar.c == i2 && ("*".equals(str) || bVar.a.equals(str))) {
                this.a.remove(bVar.a);
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    synchronized boolean a(String str, int i2, long j2) {
        b bVar = this.a.get(str);
        if (bVar != null && !bVar.a(j2)) {
            if (i2 == 2) {
                if (!bVar.i) {
                    return false;
                }
                bVar.j++;
                return true;
            }
            bVar.h = true;
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002d, code lost:
    
        if (r7 < (r1 * x.g)) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    synchronized boolean a(String str, float[] fArr, boolean z, boolean z2, long j2) {
        boolean z3;
        b bVar = this.a.get(str);
        z3 = false;
        if (bVar != null && !bVar.a(j2) && fArr != null && fArr.length >= 4) {
            float f2 = fArr[2];
            if (f2 > 0.0f) {
                float f3 = bVar.o;
                if (f3 > 0.0f) {
                }
                bVar.k = (float[]) fArr.clone();
                bVar.l = z3;
                bVar.n = z;
                bVar.m = z2;
            }
            z3 = true;
            bVar.k = (float[]) fArr.clone();
            bVar.l = z3;
            bVar.n = z;
            bVar.m = z2;
        }
        return z3;
    }

    static boolean a(b bVar, int i2) {
        if (bVar == null || !bVar.h) {
            return false;
        }
        return (i2 == 2 && bVar.i) ? false : true;
    }

    synchronized int a(String str, boolean z, boolean z2, long j2) {
        b bVar = this.a.get(str);
        if (bVar != null) {
            if (!bVar.a(j2)) {
                return 1;
            }
        }
        return 0;
    }

    synchronized void a(b bVar) {
        bVar.h = true;
        bVar.i = true;
    }

    synchronized boolean a(Object obj) {
        Iterator<b> it = this.a.values().iterator();
        while (it.hasNext()) {
            if (it.next().b == obj) {
                return true;
            }
        }
        return false;
    }
}
