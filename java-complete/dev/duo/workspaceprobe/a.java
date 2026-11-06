package dev.duo.workspaceprobe;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class a {
    private final ConcurrentHashMap<String, b> a = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, Long> b = new ConcurrentHashMap<>();
    private final AtomicLong c = new AtomicLong();

    /* renamed from: dev.duo.workspaceprobe.a$a, reason: collision with other inner class name */
    static final class C0005a {
        final b a;
        final boolean b;

        C0005a(b bVar, boolean z) {
            this.a = bVar;
            this.b = z;
        }

        boolean a(b bVar) {
            b bVar2 = this.a;
            return (bVar2 == null || bVar2.a == bVar.a) ? false : true;
        }
    }

    a() {
    }

    static long a(int i) {
        if (i <= 0) {
            return 1000L;
        }
        if (i == 1) {
            return 2000L;
        }
        return i == 2 ? 4000L : 5000L;
    }

    b b(String str) {
        if (str == null) {
            return null;
        }
        return this.a.get(str);
    }

    static final class b {
        final boolean a;
        final boolean b;
        final boolean c;
        final boolean d;
        final int e;
        final int f;

        b(boolean z, boolean z2, int i, boolean z3, boolean z4, int i2) {
            this.e = i2;
            this.d = z4;
            this.a = z;
            this.b = z2;
            this.f = i;
            this.c = z3;
        }

        boolean a(boolean z, boolean z2, boolean z3) {
            if (!z) {
                return true;
            }
            if (z2 || z3) {
                if ((this.e & (z2 ? 2 : 1)) != 0) {
                    return false;
                }
            }
            return !this.a || (z2 && this.d);
        }

        boolean a(b bVar) {
            return bVar != null && bVar.a == this.a && bVar.b == this.b && bVar.f == this.f && bVar.c == this.c && bVar.d == this.d && bVar.e == this.e;
        }
    }

    long a() {
        return this.c.incrementAndGet();
    }

    synchronized boolean b(String str, b bVar, long j) {
        C0005a a = a(str, bVar, j);
        if (a != null) {
            if (a.b) {
                return true;
            }
        }
        return false;
    }

    static b a(boolean z, boolean z2, boolean z3, boolean z4, int i, boolean z5, boolean z6, int i2, boolean z7) {
        if (z && z2 && !z7) {
            return new b(z3, z4, i, z5, z6, i2);
        }
        return null;
    }

    synchronized C0005a a(String str, b bVar, long j) {
        if (str == null || bVar == null) {
            return null;
        }
        Long l = this.b.get(str);
        if (l != null && dev.duo.workspaceprobe.l.longValue() > j) {
            return null;
        }
        this.b.put(str, Long.valueOf(j));
        return new C0005a(this.a.put(str, bVar), !bVar.a(r4));
    }

    synchronized void a(String str) {
        if (str == null) {
            return;
        }
        this.a.remove(str);
        this.b.put(str, Long.valueOf(a()));
    }
}
