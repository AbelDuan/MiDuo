package dev.duo.hookprobe;

/* loaded from: classes.dex */
final class x {
    static final int c = 2;
    static final int d = 2;
    static final long e = 200;
    static final long f = 3000;
    static final float g = 0.95f;
    static final long h = 700;
    static final int i = 0;
    static final int j = 1;
    private final java.util.Map<java.lang.String, dev.duo.hookprobe.x.b> a = new java.util.HashMap();
    private final java.util.Map<java.lang.String, dev.duo.hookprobe.x.a> b = new java.util.HashMap();

    static final class a {
        final java.lang.String a;
        final float b;
        final long c;
        float[] d;
        boolean e;
        boolean f;
        boolean g;

        a(java.lang.String str, float f, long j) {
            this.a = str;
            this.b = f;
            this.c = j;
        }
    }

    static final class b {
        final java.lang.String a;
        final java.lang.Object b;
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

        b(java.lang.String str, java.lang.Object obj, int i, int i2, int i3, long j, long j2) {
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
        return java.lang.Math.max(e, java.lang.Math.min(f, j2));
    }

    synchronized boolean b() {
        return this.a.isEmpty();
    }

    synchronized java.util.List<dev.duo.hookprobe.x.a> c(long j2) {
        java.util.ArrayList arrayList;
        arrayList = new java.util.ArrayList();
        java.util.ArrayList arrayList2 = new java.util.ArrayList(this.b.values());
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            java.lang.Object obj = arrayList2.get(i2);
            i2++;
            dev.duo.hookprobe.x.a aVar = (dev.duo.hookprobe.x.a) obj;
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

    synchronized boolean b(java.lang.String str, float[] fArr, boolean z, boolean z2, long j2) {
        boolean z3;
        dev.duo.hookprobe.x.a aVar = this.b.get(str);
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

    synchronized void a(dev.duo.hookprobe.x.b bVar, float f2) {
        if (f2 > 0.0f) {
            bVar.o = f2;
        }
    }

    synchronized dev.duo.hookprobe.x.a a(dev.duo.hookprobe.x.b bVar, long j2) {
        if (bVar != null) {
            float f2 = bVar.o;
            if (f2 > 0.0f) {
                dev.duo.hookprobe.x.a aVar = new dev.duo.hookprobe.x.a(bVar.a, f2, j2 + h);
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

    synchronized dev.duo.hookprobe.x.b b(java.lang.String str) {
        if (str == null) {
            return null;
        }
        return this.a.get(str);
    }

    synchronized java.util.List<dev.duo.hookprobe.x.b> b(java.lang.Object obj) {
        java.util.ArrayList arrayList;
        arrayList = new java.util.ArrayList();
        java.util.ArrayList arrayList2 = new java.util.ArrayList(this.a.values());
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            java.lang.Object obj2 = arrayList2.get(i2);
            i2++;
            dev.duo.hookprobe.x.b bVar = (dev.duo.hookprobe.x.b) obj2;
            if (bVar.b == obj) {
                this.a.remove(bVar.a);
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    synchronized java.util.List<dev.duo.hookprobe.x.b> b(long j2) {
        java.util.ArrayList arrayList;
        arrayList = new java.util.ArrayList();
        java.util.ArrayList arrayList2 = new java.util.ArrayList(this.a.values());
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            java.lang.Object obj = arrayList2.get(i2);
            i2++;
            dev.duo.hookprobe.x.b bVar = (dev.duo.hookprobe.x.b) obj;
            if (bVar.a(j2)) {
                this.a.remove(bVar.a);
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    synchronized dev.duo.hookprobe.x.a a(java.lang.String str) {
        return this.b.remove(str);
    }

    synchronized dev.duo.hookprobe.x.b a(java.lang.String str, java.lang.Object obj, int i2, int i3, int i4, long j2, long j3) {
        dev.duo.hookprobe.x.b bVar = null;
        if (str != null) {
            if (!str.isEmpty() && obj != null && i2 > 0) {
                if (i3 != 2) {
                    return null;
                }
                if (i3 == 2 && (i4 <= 0 || i4 == Integer.MAX_VALUE)) {
                    return null;
                }
                dev.duo.hookprobe.x.b bVar2 = this.a.get(str);
                if (bVar2 == null || bVar2.a(j2)) {
                    if (bVar2 == null) {
                        bVar = new dev.duo.hookprobe.x.b(str, obj, i2, i3, i4, j2, a(j3));
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

    synchronized int a(java.lang.Object obj, int i2, long j2, long j3) {
        int i3;
        i3 = 0;
        for (dev.duo.hookprobe.x.b bVar : this.a.values()) {
            if (bVar.b == obj && bVar.c == i2 && !bVar.a(j2)) {
                bVar.g = a(j3) + j2;
                i3++;
            }
        }
        return i3;
    }

    synchronized java.util.List<dev.duo.hookprobe.x.b> a(java.lang.Object obj, int i2, java.lang.String str) {
        java.util.ArrayList arrayList;
        arrayList = new java.util.ArrayList();
        java.util.ArrayList arrayList2 = new java.util.ArrayList(this.a.values());
        int size = arrayList2.size();
        int i3 = 0;
        while (i3 < size) {
            java.lang.Object obj2 = arrayList2.get(i3);
            i3++;
            dev.duo.hookprobe.x.b bVar = (dev.duo.hookprobe.x.b) obj2;
            if (bVar.b == obj && bVar.c == i2 && ("*".equals(str) || bVar.a.equals(str))) {
                this.a.remove(bVar.a);
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    synchronized boolean a(java.lang.String str, int i2, long j2) {
        dev.duo.hookprobe.x.b bVar = this.a.get(str);
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
    
        if (r7 < (r1 * dev.duo.hookprobe.x.g)) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized boolean a(java.lang.String r3, float[] r4, boolean r5, boolean r6, long r7) {
        /*
            r2 = this;
            monitor-enter(r2)
            java.util.Map<java.lang.String, dev.duo.hookprobe.x$b> r0 = r2.a     // Catch: java.lang.Throwable -> L40
            java.lang.Object r3 = r0.get(r3)     // Catch: java.lang.Throwable -> L40
            dev.duo.hookprobe.x$b r3 = (dev.duo.hookprobe.x.b) r3     // Catch: java.lang.Throwable -> L40
            r0 = 0
            if (r3 == 0) goto L3e
            boolean r7 = r3.a(r7)     // Catch: java.lang.Throwable -> L40
            if (r7 != 0) goto L3e
            if (r4 == 0) goto L3e
            int r7 = r4.length     // Catch: java.lang.Throwable -> L40
            r8 = 4
            if (r7 >= r8) goto L19
            goto L3e
        L19:
            r7 = 2
            r7 = r4[r7]     // Catch: java.lang.Throwable -> L40
            r8 = 0
            int r1 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
            if (r1 <= 0) goto L2f
            float r1 = r3.o     // Catch: java.lang.Throwable -> L40
            int r8 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r8 <= 0) goto L30
            r8 = 1064514355(0x3f733333, float:0.95)
            float r1 = r1 * r8
            int r7 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r7 >= 0) goto L30
        L2f:
            r0 = 1
        L30:
            java.lang.Object r4 = r4.clone()     // Catch: java.lang.Throwable -> L40
            float[] r4 = (float[]) r4     // Catch: java.lang.Throwable -> L40
            r3.k = r4     // Catch: java.lang.Throwable -> L40
            r3.l = r0     // Catch: java.lang.Throwable -> L40
            r3.n = r5     // Catch: java.lang.Throwable -> L40
            r3.m = r6     // Catch: java.lang.Throwable -> L40
        L3e:
            monitor-exit(r2)
            return r0
        L40:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L40
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.x.a(java.lang.String, float[], boolean, boolean, long):boolean");
    }

    static boolean a(dev.duo.hookprobe.x.b bVar, int i2) {
        if (bVar == null || !bVar.h) {
            return false;
        }
        return (i2 == 2 && bVar.i) ? false : true;
    }

    synchronized int a(java.lang.String str, boolean z, boolean z2, long j2) {
        dev.duo.hookprobe.x.b bVar = this.a.get(str);
        if (bVar != null) {
            if (!bVar.a(j2)) {
                return 1;
            }
        }
        return 0;
    }

    synchronized void a(dev.duo.hookprobe.x.b bVar) {
        bVar.h = true;
        bVar.i = true;
    }

    synchronized boolean a(java.lang.Object obj) {
        java.util.Iterator<dev.duo.hookprobe.x.b> it = this.a.values().iterator();
        while (it.hasNext()) {
            if (it.next().b == obj) {
                return true;
            }
        }
        return false;
    }
}
