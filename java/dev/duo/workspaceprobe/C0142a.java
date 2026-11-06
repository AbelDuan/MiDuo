package dev.duo.workspaceprobe;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

/* renamed from: dev.duo.workspaceprobe.a */
/* loaded from: classes.dex */
final class C0142a {

    /* renamed from: a */
    private final ConcurrentHashMap<String, b> f1978a = new ConcurrentHashMap<>();

    /* renamed from: b */
    private final ConcurrentHashMap<String, Long> f1979b = new ConcurrentHashMap<>();

    /* renamed from: c */
    private final AtomicLong f1980c = new AtomicLong();

    /* renamed from: dev.duo.workspaceprobe.a$a */
    static final class a {

        /* renamed from: a */
        final b f1981a;

        /* renamed from: b */
        final boolean f1982b;

        a(b bVar, boolean z) {
            this.f1981a = bVar;
            this.f1982b = z;
        }

        /* renamed from: a */
        boolean m2141a(b bVar) {
            b bVar2 = this.f1981a;
            return (bVar2 == null || bVar2.f1983a == bVar.f1983a) ? false : true;
        }
    }

    C0142a() {
    }

    /* renamed from: a */
    static long m2134a(int i) {
        if (i <= 0) {
            return 1000L;
        }
        if (i == 1) {
            return 2000L;
        }
        return i == 2 ? 4000L : 5000L;
    }

    /* renamed from: b */
    b m2139b(String str) {
        if (str == null) {
            return null;
        }
        return this.f1978a.get(str);
    }

    /* renamed from: dev.duo.workspaceprobe.a$b */
    static final class b {

        /* renamed from: a */
        final boolean f1983a;

        /* renamed from: b */
        final boolean f1984b;

        /* renamed from: c */
        final boolean f1985c;

        /* renamed from: d */
        final boolean f1986d;

        /* renamed from: e */
        final int f1987e;

        /* renamed from: f */
        final int f1988f;

        b(boolean z, boolean z2, int i, boolean z3, boolean z4, int i2) {
            this.f1987e = i2;
            this.f1986d = z4;
            this.f1983a = z;
            this.f1984b = z2;
            this.f1988f = i;
            this.f1985c = z3;
        }

        /* renamed from: a */
        boolean m2143a(boolean z, boolean z2, boolean z3) {
            if (!z) {
                return true;
            }
            if (z2 || z3) {
                if ((this.f1987e & (z2 ? 2 : 1)) != 0) {
                    return false;
                }
            }
            return !this.f1983a || (z2 && this.f1986d);
        }

        /* renamed from: a */
        boolean m2142a(b bVar) {
            return bVar != null && bVar.f1983a == this.f1983a && bVar.f1984b == this.f1984b && bVar.f1988f == this.f1988f && bVar.f1985c == this.f1985c && bVar.f1986d == this.f1986d && bVar.f1987e == this.f1987e;
        }
    }

    /* renamed from: a */
    long m2136a() {
        return this.f1980c.incrementAndGet();
    }

    /* renamed from: b */
    synchronized boolean m2140b(String str, b bVar, long j) {
        a m2137a = m2137a(str, bVar, j);
        if (m2137a != null) {
            if (m2137a.f1982b) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    static b m2135a(boolean z, boolean z2, boolean z3, boolean z4, int i, boolean z5, boolean z6, int i2, boolean z7) {
        if (z && z2 && !z7) {
            return new b(z3, z4, i, z5, z6, i2);
        }
        return null;
    }

    /* renamed from: a */
    synchronized a m2137a(String str, b bVar, long j) {
        if (str == null || bVar == null) {
            return null;
        }
        Long l = this.f1979b.get(str);
        if (l != null && l.longValue() > j) {
            return null;
        }
        this.f1979b.put(str, Long.valueOf(j));
        return new a(this.f1978a.put(str, bVar), !bVar.m2142a(r4));
    }

    /* renamed from: a */
    synchronized void m2138a(String str) {
        if (str == null) {
            return;
        }
        this.f1978a.remove(str);
        this.f1979b.put(str, Long.valueOf(m2136a()));
    }
}
