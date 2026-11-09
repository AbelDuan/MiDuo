package dev.duo.taskcore;

/* loaded from: classes.dex */
public final class i {
    public static final java.lang.String a = "TaskCore";
    private boolean B;
    private int E;
    private int F;
    private int G;
    private int H;
    private java.lang.String I;
    private java.lang.String J;
    private boolean K;
    private boolean L;
    private java.lang.String N;
    private dev.duo.taskcore.d Q;
    private dev.duo.taskcore.d R;
    private boolean S;
    private boolean T;
    private boolean U;
    private boolean V;
    private dev.duo.taskcore.d W;
    private boolean X;
    private boolean Y;
    private dev.duo.taskcore.d Z;
    private java.util.List<dev.duo.taskcore.d> a0;
    private final dev.duo.taskcore.i.b b;
    public final long c;
    private dev.duo.taskcore.d e;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean o;
    private boolean p;
    private boolean q;
    private int s;
    private java.lang.Object u;
    private boolean v;
    private dev.duo.taskcore.d w;
    private boolean z;
    private dev.duo.taskcore.i.d d = dev.duo.taskcore.i.d.IDLE;
    private final java.util.List<dev.duo.taskcore.d.b> f = new java.util.ArrayList();
    private int n = -1;
    private boolean r = true;
    private int t = -1;
    private int x = -1;
    private int y = -1;
    private int A = -1;
    private final dev.duo.taskcore.d[] C = new dev.duo.taskcore.d[3];
    private final java.util.List<dev.duo.taskcore.d> D = new java.util.ArrayList();
    private final java.util.List<java.lang.String> M = new java.util.ArrayList();
    private int O = -1;
    private final java.util.Map<dev.duo.taskcore.d, dev.duo.taskcore.d> P = new java.util.IdentityHashMap();

    public interface a {
        void a(boolean z, java.lang.String str);
    }

    public interface b {
        dev.duo.taskcore.b a();

        java.lang.String a(long j);

        default void a(int i) {
        }

        void a(long j, int i, dev.duo.taskcore.d dVar, dev.duo.taskcore.d[] dVarArr) throws dev.duo.taskcore.i.c;

        void a(long j, dev.duo.taskcore.d dVar) throws dev.duo.taskcore.i.c;

        void a(long j, java.lang.String str);

        void a(dev.duo.taskcore.d dVar) throws dev.duo.taskcore.i.c;

        void a(dev.duo.taskcore.d dVar, dev.duo.taskcore.i.a aVar);

        void a(dev.duo.taskcore.d dVar, dev.duo.taskcore.d[] dVarArr, dev.duo.taskcore.i.a aVar);

        void a(dev.duo.taskcore.d dVar, dev.duo.taskcore.d[] dVarArr, boolean z, dev.duo.taskcore.i.a aVar);

        void a(dev.duo.taskcore.i iVar);

        default int b(int i) {
            return -1;
        }

        dev.duo.taskcore.d.c b(long j, dev.duo.taskcore.d dVar) throws dev.duo.taskcore.i.c;

        void b(long j) throws dev.duo.taskcore.i.c;

        void b(dev.duo.taskcore.d dVar, dev.duo.taskcore.i.a aVar);

        void b(java.util.List<dev.duo.taskcore.d> list, dev.duo.taskcore.d dVar, dev.duo.taskcore.i.a aVar);

        boolean b(dev.duo.taskcore.d dVar);

        dev.duo.taskcore.d.b c(int i) throws dev.duo.taskcore.i.c;

        void c(dev.duo.taskcore.d dVar);

        java.lang.String d(dev.duo.taskcore.d dVar);

        default void e(dev.duo.taskcore.d dVar) {
        }

        default boolean f(dev.duo.taskcore.d dVar) {
            return false;
        }

        default void a(java.util.List<dev.duo.taskcore.d> list, dev.duo.taskcore.b bVar, dev.duo.taskcore.i.a aVar) {
            aVar.a(false, "relayout unsupported");
        }

        default void a(dev.duo.taskcore.d dVar, dev.duo.taskcore.d[] dVarArr, java.lang.Object obj, dev.duo.taskcore.i.a aVar) {
            aVar.a(true, "nothing to bring");
        }

        default void a(java.util.List<dev.duo.taskcore.d> list, dev.duo.taskcore.d dVar, dev.duo.taskcore.i.a aVar) {
            b(list, dVar, aVar);
        }
    }

    public static final class c extends java.lang.Exception {
        public final boolean a;

        public c(java.lang.String str) {
            this(str, false);
        }

        public c(java.lang.String str, boolean z) {
            super(str);
            this.a = z;
        }
    }

    public enum d {
        IDLE,
        PREPARING,
        ATTACHING,
        ACTIVE,
        TRANSITIONING,
        RETURNING,
        CLOSED,
        RETURN_FAILED,
        PAUSED
    }

    public i(dev.duo.taskcore.i.b bVar, long j) {
        this.b = bVar;
        this.c = j;
    }

    private void B() {
        dev.duo.taskcore.d dVar;
        dev.duo.taskcore.d dVar2;
        dev.duo.taskcore.i.d dVar3 = this.d;
        dev.duo.taskcore.i.d dVar4 = dev.duo.taskcore.i.d.RETURNING;
        if (dVar3 == dVar4 || dVar3 == dev.duo.taskcore.i.d.CLOSED || dVar3 == dev.duo.taskcore.i.d.RETURN_FAILED) {
            return;
        }
        a(dVar4);
        this.D.clear();
        final java.util.ArrayList arrayList = new java.util.ArrayList();
        this.b.a(this.c, this.I);
        for (dev.duo.taskcore.d dVar5 : t()) {
            if (dVar5.e == dev.duo.taskcore.d.a.OWNER_RETURNED) {
                if (this.V) {
                    e(dVar5);
                }
            } else if (dVar5.a()) {
                if (!this.U && dVar5.e == dev.duo.taskcore.d.a.SURFACE_ATTACHED && this.b.f(dVar5)) {
                    d("member " + dVar5.a.a + " already chosen by the system: released before the return");
                    dVar5.j = true;
                    this.b.e(dVar5);
                    d(dVar5);
                    if (!dVar5.a()) {
                    }
                }
                dVar5.e = dev.duo.taskcore.d.a.RETURN_REQUESTED;
                arrayList.add(dVar5);
            }
        }
        if (arrayList.isEmpty()) {
            m();
            return;
        }
        dev.duo.taskcore.d dVar6 = this.w;
        if (dVar6 != null) {
            if (dVar6.a()) {
                dVar2 = this.w;
            }
            dVar2 = null;
        } else {
            if (this.L && (dVar = this.e) != null && dVar.a()) {
                dVar2 = this.e;
            }
            dVar2 = null;
        }
        this.x = -1;
        final int d2 = d();
        this.b.b(arrayList, dVar2, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda21
            @Override // dev.duo.taskcore.i.a
            public final void a(boolean z, java.lang.String str) {
                dev.duo.taskcore.i.this.b(d2, arrayList, z, str);
            }
        });
    }

    private void b() {
        if (this.K) {
            B();
            return;
        }
        if (!this.D.isEmpty()) {
            final dev.duo.taskcore.d remove = this.D.remove(0);
            final int d2 = d();
            this.b.a(remove, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda16
                @Override // dev.duo.taskcore.i.a
                public final void a(boolean z, java.lang.String str) {
                    dev.duo.taskcore.i.this.b(d2, remove, z, str);
                }
            });
        } else {
            if (this.T) {
                this.T = false;
                this.U = true;
                final int d3 = d();
                this.b.a(this.e, (dev.duo.taskcore.d[]) this.C.clone(), (java.lang.Object) null, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda14
                    @Override // dev.duo.taskcore.i.a
                    public final void a(boolean z, java.lang.String str) {
                        dev.duo.taskcore.i.this.a(d3, z, str);
                    }
                });
                return;
            }
            final int d4 = d();
            final boolean z = this.S;
            this.S = false;
            this.b.a(this.e, (dev.duo.taskcore.d[]) this.C.clone(), z, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda15
                @Override // dev.duo.taskcore.i.a
                public final void a(boolean z2, java.lang.String str) {
                    dev.duo.taskcore.i.this.a(d4, z, z2, str);
                }
            });
        }
    }

    private void c(dev.duo.taskcore.d dVar) {
        dev.duo.taskcore.d a2 = a(this.b.b(dVar.a.a), (java.lang.Object) null);
        if (a2 == null) {
            return;
        }
        if (this.P.containsKey(a2)) {
            a2 = this.P.get(a2);
        }
        for (java.util.Map.Entry<dev.duo.taskcore.d, dev.duo.taskcore.d> entry : this.P.entrySet()) {
            dev.duo.taskcore.d key = entry.getKey();
            if (entry.getValue() == a2 && key != dVar && key.e == dev.duo.taskcore.d.a.SURFACE_ATTACHED) {
                if (this.R == null) {
                    this.R = key;
                } else {
                    key.k = true;
                }
                d("child " + key + " replaced in place by " + dVar.a.a);
            }
        }
        this.P.put(dVar, a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(int i, boolean z, java.lang.String str) {
        if (a(i)) {
            a(z, str, "remove");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(int i, boolean z, java.lang.String str) {
        if (a(i)) {
            a(z, str, "reorder");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(int i, boolean z, java.lang.String str) {
        if (a(i)) {
            a(z, str, "swap");
        }
    }

    private void o() {
        dev.duo.taskcore.d dVar = this.W;
        this.W = null;
        if (dVar == null || dVar == this.e || this.K || !dVar.a()) {
            return;
        }
        int i = -1;
        int i2 = 0;
        while (true) {
            dev.duo.taskcore.d[] dVarArr = this.C;
            if (i2 >= dVarArr.length) {
                break;
            }
            if (dVarArr[i2] == dVar) {
                i = i2;
            }
            i2++;
        }
        if (i >= 0) {
            b(i, true);
        }
    }

    private boolean u() {
        dev.duo.taskcore.d dVar = this.Z;
        this.Z = null;
        if (dVar == null || this.K || dVar.e != dev.duo.taskcore.d.a.SURFACE_ATTACHED) {
            return false;
        }
        int k = k(dVar.a.a);
        if (dVar != this.e && (k < 0 || this.C[k] != dVar)) {
            return false;
        }
        if (k >= 0) {
            dev.duo.taskcore.b a2 = this.b.a();
            this.C[k] = this.e;
            this.e = dVar;
            dVar.m.set(a2.a);
            dev.duo.taskcore.d dVar2 = this.C[k];
            if (dVar2 != null) {
                dVar2.m.set(a2.d[k]);
            }
        }
        final boolean z = k >= 0;
        this.X = true;
        a(dev.duo.taskcore.i.d.TRANSITIONING);
        this.U = true;
        final int d2 = d();
        this.b.a(this.e, (dev.duo.taskcore.d[]) this.C.clone(), (java.lang.Object) null, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda10
            @Override // dev.duo.taskcore.i.a
            public final void a(boolean z2, java.lang.String str) {
                dev.duo.taskcore.i.this.b(d2, z, z2, str);
            }
        });
        return true;
    }

    private boolean w() {
        dev.duo.taskcore.d dVar = this.e;
        boolean z = dVar != null && dVar.e == dev.duo.taskcore.d.a.TASK_GONE;
        boolean z2 = false;
        for (dev.duo.taskcore.d dVar2 : t()) {
            if (dVar2.e == dev.duo.taskcore.d.a.TASK_GONE) {
                this.b.c(dVar2);
                if (!a(dVar2)) {
                    return true;
                }
                z2 = true;
            }
        }
        if (z) {
            this.e = null;
        }
        if (!z2) {
            return false;
        }
        if (z && this.d == dev.duo.taskcore.i.d.ACTIVE && z()) {
            this.B = false;
            return true;
        }
        final int d2 = d();
        if (this.d == dev.duo.taskcore.i.d.PAUSED) {
            this.N = "paused member gone";
        }
        this.b.a(this.e, (dev.duo.taskcore.d[]) this.C.clone(), false, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda1
            @Override // dev.duo.taskcore.i.a
            public final void a(boolean z3, java.lang.String str) {
                dev.duo.taskcore.i.this.d(d2, z3, str);
            }
        });
        return true;
    }

    private void x() {
        this.Y = false;
        if (this.e == null && z()) {
            return;
        }
        if (this.e == null) {
            int i = 0;
            while (true) {
                dev.duo.taskcore.d[] dVarArr = this.C;
                if (i >= dVarArr.length || this.e != null) {
                    break;
                }
                dev.duo.taskcore.d dVar = dVarArr[i];
                if (dVar != null) {
                    this.e = dVar;
                    dVarArr[i] = null;
                    dVar.m.set(this.b.a().a);
                }
                i++;
            }
        }
        if (this.e == null) {
            a("every member left as a floating window", false);
            return;
        }
        this.X = true;
        a(dev.duo.taskcore.i.d.TRANSITIONING);
        final int d2 = d();
        this.b.a(this.e, (dev.duo.taskcore.d[]) this.C.clone(), false, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda20
            @Override // dev.duo.taskcore.i.a
            public final void a(boolean z, java.lang.String str) {
                dev.duo.taskcore.i.this.e(d2, z, str);
            }
        });
    }

    private boolean y() {
        dev.duo.taskcore.d dVar = this.e;
        if (dVar != null && dVar.k && dVar.e == dev.duo.taskcore.d.a.SURFACE_ATTACHED) {
            return i(-1);
        }
        int i = 0;
        while (true) {
            dev.duo.taskcore.d[] dVarArr = this.C;
            if (i >= dVarArr.length) {
                return false;
            }
            dev.duo.taskcore.d dVar2 = dVarArr[i];
            if (dVar2 != null && dVar2.k && dVar2.e == dev.duo.taskcore.d.a.SURFACE_ATTACHED) {
                d("removing backgrounded member " + dVar2);
                if (i(i)) {
                    return true;
                }
            }
            i++;
        }
    }

    private boolean z() {
        if (!this.g && !this.K && this.d == dev.duo.taskcore.i.d.ACTIVE && !e() && this.N == null) {
            while (!this.f.isEmpty()) {
                java.util.List<dev.duo.taskcore.d.b> list = this.f;
                dev.duo.taskcore.d.b remove = list.remove(list.size() - 1);
                dev.duo.taskcore.d a2 = a(remove.a, remove.e);
                if (a2 != null) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        dev.duo.taskcore.d[] dVarArr = this.C;
                        if (i2 >= dVarArr.length) {
                            break;
                        }
                        if (dVarArr[i2] == a2) {
                            i = i2;
                        }
                        i2++;
                    }
                    if (i >= 0 && a2.e == dev.duo.taskcore.d.a.SURFACE_ATTACHED && b(i, false)) {
                        return true;
                    }
                } else {
                    try {
                        dev.duo.taskcore.d.b c2 = this.b.c(remove.a);
                        if (c2.e == remove.e && c2.b == remove.b && c2.c == remove.c && b(remove.a)) {
                            return true;
                        }
                    } catch (dev.duo.taskcore.i.c e) {
                        d("return target unavailable: " + e.getMessage());
                    }
                }
            }
        }
        return false;
    }

    public void A() {
        if (this.d == dev.duo.taskcore.i.d.RETURN_FAILED && this.G == 0) {
            d("retry return after: " + this.J);
            this.J = null;
            this.a0 = null;
            this.d = dev.duo.taskcore.i.d.TRANSITIONING;
            this.V = true;
            try {
                B();
            } finally {
                this.V = false;
            }
        }
    }

    public dev.duo.taskcore.i.d C() {
        return this.d;
    }

    public boolean D() {
        if (!this.g || !this.h || this.d != dev.duo.taskcore.i.d.PAUSED || e() || this.K || this.j || this.k || this.v || this.i) {
            return false;
        }
        this.g = false;
        this.h = false;
        this.z = true;
        if ("locked".equals(this.N)) {
            this.N = null;
        }
        d("resume: keyguard going away");
        this.X = true;
        a(dev.duo.taskcore.i.d.TRANSITIONING);
        a(true, "keyguard going away", "unlock");
        return true;
    }

    public void a(int i, int[] iArr) {
        int i2;
        dev.duo.taskcore.i.c e;
        if (this.d != dev.duo.taskcore.i.d.IDLE) {
            throw new java.lang.IllegalStateException("open twice " + this.d);
        }
        a(dev.duo.taskcore.i.d.PREPARING);
        try {
            this.b.b(this.c);
            dev.duo.taskcore.b a2 = this.b.a();
            try {
                dev.duo.taskcore.d h = h(i);
                this.e = h;
                h.m.set(a2.a);
                this.D.add(this.e);
                int i3 = 0;
                for (int i4 = 0; iArr != null && i4 < iArr.length && i3 < this.C.length; i4++) {
                    int i5 = iArr[i4];
                    if (i5 != i) {
                        try {
                            dev.duo.taskcore.d h2 = h(i5);
                            h2.m.set(a2.d[i3]);
                            i2 = i3 + 1;
                            try {
                                this.C[i3] = h2;
                                this.D.add(h2);
                                i3 = i2;
                            } catch (dev.duo.taskcore.i.c e2) {
                                e = e2;
                                d("sub " + iArr[i4] + " skipped: " + e.getMessage());
                                i3 = i2;
                            }
                        } catch (dev.duo.taskcore.i.c e3) {
                            i2 = i3;
                            e = e3;
                        }
                    }
                }
                a(dev.duo.taskcore.i.d.ATTACHING);
                b();
            } catch (dev.duo.taskcore.i.c e4) {
                a("main refused: " + e4.getMessage());
            }
        } catch (dev.duo.taskcore.i.c e5) {
            a(dev.duo.taskcore.i.d.CLOSED, "server refused: " + e5.getMessage());
        }
    }

    public void d(boolean z) {
        a(z, false);
    }

    public boolean e() {
        return this.G != 0;
    }

    public boolean h() {
        return this.K;
    }

    public dev.duo.taskcore.d j(int i) {
        return this.C[i];
    }

    public int k(int i) {
        int i2 = 0;
        while (true) {
            dev.duo.taskcore.d[] dVarArr = this.C;
            if (i2 >= dVarArr.length) {
                return -1;
            }
            dev.duo.taskcore.d dVar = dVarArr[i2];
            if (dVar != null && dVar.a.a == i) {
                return i2;
            }
            i2++;
        }
    }

    public java.lang.String l() {
        return this.J;
    }

    public void m(int i) {
        j();
        if (this.g || this.K || this.j) {
            return;
        }
        if (this.d == dev.duo.taskcore.i.d.PAUSED) {
            f("user selected a member");
            return;
        }
        dev.duo.taskcore.d a2 = a(i, (java.lang.Object) null);
        if (a2 == null || a2 == this.e || !a2.a()) {
            return;
        }
        if (e() || this.d != dev.duo.taskcore.i.d.ACTIVE) {
            this.W = a2;
            return;
        }
        int k = k(i);
        if (k >= 0) {
            b(k, true);
        }
    }

    public boolean n() {
        return a(new dev.duo.taskcore.b(this.b.a().b, !r0.c), true);
    }

    public boolean p() {
        return (this.y < 0 || this.i || this.K) ? false : true;
    }

    public void q() {
        if (this.z) {
            d("keyguard exit aborted");
            this.z = false;
        }
    }

    public java.util.List<java.lang.String> r() {
        return this.M;
    }

    public dev.duo.taskcore.d s() {
        return this.e;
    }

    public java.util.List<dev.duo.taskcore.d> t() {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        dev.duo.taskcore.d dVar = this.e;
        if (dVar != null) {
            arrayList.add(dVar);
        }
        for (dev.duo.taskcore.d dVar2 : this.C) {
            if (dVar2 != null) {
                arrayList.add(dVar2);
            }
        }
        for (dev.duo.taskcore.d dVar3 : this.D) {
            if (!arrayList.contains(dVar3)) {
                arrayList.add(dVar3);
            }
        }
        return arrayList;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder("session " + this.c + " " + this.d + " main=" + this.e);
        for (int i = 0; i < this.C.length; i++) {
            sb.append(" s").append(i).append('=').append(this.C[i]);
        }
        if (this.J != null) {
            sb.append(" failure=").append(this.J);
        }
        return sb.toString();
    }

    public boolean v() {
        if (this.K || e() || this.g || this.j || this.v || this.k) {
            return false;
        }
        dev.duo.taskcore.i.d dVar = this.d;
        dev.duo.taskcore.i.d dVar2 = dev.duo.taskcore.i.d.ACTIVE;
        if (dVar == dVar2) {
            return true;
        }
        if (dVar != dev.duo.taskcore.i.d.PAUSED) {
            return false;
        }
        this.i = false;
        this.N = null;
        d("recents gesture returned to workbench");
        a(dVar2);
        return true;
    }

    private dev.duo.taskcore.d h(int i) throws dev.duo.taskcore.i.c {
        dev.duo.taskcore.d.b c2 = this.b.c(i);
        long j = this.c;
        int i2 = this.E + 1;
        this.E = i2;
        dev.duo.taskcore.d dVar = new dev.duo.taskcore.d(c2, j, i2);
        dVar.d = this.b.b(this.c, dVar);
        return dVar;
    }

    private void j() {
        if (this.p && this.q) {
            a(false);
        }
    }

    private void k() {
        if (this.o || this.p || !this.j) {
            return;
        }
        boolean z = this.r && this.m;
        this.j = false;
        this.l = z && this.k;
        if (!z) {
            this.h = false;
        }
        if ("system interruption".equals(this.N)) {
            this.N = null;
        }
        if (z) {
            f("interruption finished");
        }
    }

    public void d(int i, java.lang.Object obj) {
        dev.duo.taskcore.d a2 = a(i, obj);
        if (a2 != null) {
            a2.l = true;
        }
    }

    public boolean e(int i) {
        j();
        if (this.d == dev.duo.taskcore.i.d.PAUSED && !this.K && !e() && !this.g && !this.j && !this.v) {
            this.i = false;
            if (a(i, (java.lang.Object) null) != null) {
                f("corner member");
                return true;
            }
            try {
                dev.duo.taskcore.d h = h(i);
                h.m.set(this.b.a().a);
                this.D.add(h);
                a(h, true, true);
                return true;
            } catch (dev.duo.taskcore.i.c e) {
                d("corner task refused: " + e.getMessage());
            }
        }
        return false;
    }

    public void f(final int i, final java.lang.Object obj) {
        dev.duo.taskcore.d.a aVar;
        dev.duo.taskcore.d.a aVar2;
        dev.duo.taskcore.i.d dVar;
        this.f.removeIf(new java.util.function.Predicate() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda9
            @Override // java.util.function.Predicate
            public final boolean test(java.lang.Object obj2) {
                boolean a2;
                a2 = dev.duo.taskcore.i.a(i, obj, (dev.duo.taskcore.d.b) obj2);
                return a2;
            }
        });
        dev.duo.taskcore.d a2 = a(i, obj);
        if (a2 == null || (aVar = a2.e) == (aVar2 = dev.duo.taskcore.d.a.TASK_GONE) || aVar == dev.duo.taskcore.d.a.RELEASED) {
            return;
        }
        dev.duo.taskcore.d dVar2 = this.e;
        if (a2 == dVar2 && a2.l) {
            this.f.clear();
        } else if (a2 == dVar2 && !this.K && ((dVar = this.d) == dev.duo.taskcore.i.d.ACTIVE || dVar == dev.duo.taskcore.i.d.TRANSITIONING)) {
            this.B = true;
            this.Q = this.P.get(a2);
        }
        a2.e = aVar2;
        d("task gone " + a2);
        if (e() || this.K) {
            return;
        }
        w();
    }

    public boolean l(int i) {
        boolean b2 = b(i, false);
        if (b2) {
            this.f.clear();
        }
        return b2;
    }

    public void g(int i) {
        dev.duo.taskcore.i.d dVar;
        if (this.K || (dVar = this.d) == dev.duo.taskcore.i.d.CLOSED || dVar == dev.duo.taskcore.i.d.RETURN_FAILED || this.i) {
            return;
        }
        if (dVar != dev.duo.taskcore.i.d.PAUSED || this.y >= 0) {
            this.y = i;
            d("interstitial " + i + ": stepping aside");
            e("interstitial " + i);
        }
    }

    public boolean i(final int i) {
        final dev.duo.taskcore.d dVar = i < 0 ? this.e : this.C[i];
        if (this.d != dev.duo.taskcore.i.d.ACTIVE || e() || this.K || dVar == null) {
            return false;
        }
        a(dev.duo.taskcore.i.d.TRANSITIONING);
        dVar.e = dev.duo.taskcore.d.a.RETURN_REQUESTED;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        arrayList.add(dVar);
        final int d2 = d();
        this.b.b(arrayList, null, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda4
            @Override // dev.duo.taskcore.i.a
            public final void a(boolean z, java.lang.String str) {
                dev.duo.taskcore.i.this.a(d2, dVar, i, z, str);
            }
        });
        return true;
    }

    private void d(int i) {
        if (!this.j) {
            this.m = (this.d != dev.duo.taskcore.i.d.PAUSED || this.h) && !this.i;
            this.r = true;
        }
        this.j = true;
        this.l = false;
        if (i >= 0) {
            this.n = i;
        }
        this.N = "system interruption";
        this.O = -1;
        if (e()) {
            return;
        }
        dev.duo.taskcore.i.d dVar = this.d;
        if (dVar == dev.duo.taskcore.i.d.ACTIVE || dVar == dev.duo.taskcore.i.d.PAUSED) {
            i();
        }
    }

    public void h(java.lang.String str) {
        j();
        if (this.d == dev.duo.taskcore.i.d.PAUSED) {
            f(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(int i, boolean z, java.lang.String str) {
        if (a(i)) {
            this.U = false;
            a(z, str, "resume");
        }
    }

    public void g() {
        dev.duo.taskcore.i.d dVar;
        if (this.s == 0 || this.p || this.K || (dVar = this.d) == dev.duo.taskcore.i.d.CLOSED || dVar == dev.duo.taskcore.i.d.RETURN_FAILED) {
            return;
        }
        d("call screen: pausing for the call");
        this.p = true;
        this.q = false;
        this.t = -1;
        this.u = null;
        d(-1);
    }

    private void m() {
        for (dev.duo.taskcore.d dVar : t()) {
            dev.duo.taskcore.d.a aVar = dVar.e;
            dev.duo.taskcore.d.a aVar2 = dev.duo.taskcore.d.a.OBSERVED;
            if (aVar == aVar2 || aVar == dev.duo.taskcore.d.a.TASK_GONE) {
                this.b.c(dVar);
                if (dVar.e == aVar2) {
                    dVar.e = dev.duo.taskcore.d.a.RELEASED;
                }
            }
        }
        for (dev.duo.taskcore.d dVar2 : t()) {
            if (dVar2.a() || dVar2.e == dev.duo.taskcore.d.a.OWNER_RETURNED) {
                a(dev.duo.taskcore.i.d.RETURN_FAILED, "still holding " + dVar2 + (this.J == null ? "" : " " + this.J));
                return;
            }
        }
        a(this.I);
    }

    private void i() {
        if (this.k) {
            return;
        }
        this.k = true;
        this.N = null;
        this.W = null;
        this.O = -1;
        final java.util.ArrayList arrayList = new java.util.ArrayList();
        for (dev.duo.taskcore.d dVar : t()) {
            if (dVar.a()) {
                dVar.e = dev.duo.taskcore.d.a.RETURN_REQUESTED;
                arrayList.add(dVar);
            }
        }
        dev.duo.taskcore.d a2 = a(this.n, (java.lang.Object) null);
        a(dev.duo.taskcore.i.d.PAUSED);
        final int d2 = d();
        this.b.a(arrayList, a2, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda19
            @Override // dev.duo.taskcore.i.a
            public final void a(boolean z, java.lang.String str) {
                dev.duo.taskcore.i.this.a(d2, arrayList, z, str);
            }
        });
    }

    private boolean c() {
        dev.duo.taskcore.d dVar = this.Q;
        this.Q = null;
        int k = dVar == null ? -1 : k(dVar.a.a);
        if (k < 0 || dVar.e != dev.duo.taskcore.d.a.SURFACE_ATTACHED) {
            return false;
        }
        d("child left the main area: back to its opener " + dVar);
        return b(k, false);
    }

    public void e(java.lang.String str) {
        dev.duo.taskcore.i.d dVar;
        dev.duo.taskcore.i.d dVar2;
        if (this.K || (dVar = this.d) == (dVar2 = dev.duo.taskcore.i.d.PAUSED)) {
            return;
        }
        if (dVar == dev.duo.taskcore.i.d.ACTIVE && !e()) {
            this.W = null;
            d("pause: " + str);
            a(dVar2);
        } else {
            dev.duo.taskcore.i.d dVar3 = this.d;
            if (dVar3 == dev.duo.taskcore.i.d.TRANSITIONING || dVar3 == dev.duo.taskcore.i.d.ATTACHING || e()) {
                this.N = str;
            }
        }
    }

    public void f(int i) {
        dev.duo.taskcore.i.d dVar;
        if (this.K || (dVar = this.d) == dev.duo.taskcore.i.d.CLOSED || dVar == dev.duo.taskcore.i.d.RETURN_FAILED) {
            return;
        }
        this.o = true;
        d(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(int i, boolean z, java.lang.String str) {
        if (a(i)) {
            a(z, str, "gone");
        }
    }

    private void g(int i, java.lang.Object obj) {
        java.lang.Object obj2;
        if (this.p) {
            if (!this.q) {
                this.t = i;
                this.u = obj;
            } else {
                if (i == this.t && (obj == null || (obj2 = this.u) == null || obj == obj2)) {
                    return;
                }
                a(b(i, obj));
            }
        }
    }

    private void d(dev.duo.taskcore.d dVar) {
        if (dVar.e == dev.duo.taskcore.d.a.RELEASED) {
            return;
        }
        java.lang.String d2 = this.b.d(dVar);
        if (d2 != null) {
            this.J = (this.J == null ? "" : this.J + "; ") + dVar + ": " + d2;
            d("owner not returned " + dVar + ": " + d2);
        } else {
            dVar.e = dev.duo.taskcore.d.a.OWNER_RETURNED;
            this.b.c(dVar);
            e(dVar);
        }
    }

    public boolean f() {
        return this.s != 0;
    }

    public void f(java.lang.String str) {
        a(str, (java.lang.Object) null);
    }

    private boolean c(int i) {
        try {
            dev.duo.taskcore.d h = h(i);
            this.y = -1;
            this.i = false;
            a(h.a);
            h.m.set(this.b.a().a);
            this.D.add(h);
            this.x = i;
            d("adopt after interstitial " + i);
            a(h, true, false);
            return true;
        } catch (dev.duo.taskcore.i.c e) {
            d("adopt after interstitial " + i + " refused: " + e.getMessage());
            return false;
        }
    }

    public void g(java.lang.String str) {
        if (this.K) {
            return;
        }
        if (this.j) {
            d("user left during interruption: " + str);
            this.r = false;
            this.i = true;
            this.h = false;
            return;
        }
        c(str);
    }

    public void e(int i, java.lang.Object obj) {
        dev.duo.taskcore.d dVar;
        if (this.j) {
            g(i, obj);
            return;
        }
        dev.duo.taskcore.i.d dVar2 = this.d;
        if (dVar2 == dev.duo.taskcore.i.d.PAUSED && !this.K) {
            dev.duo.taskcore.d a2 = a(i, obj);
            int i2 = this.y;
            if (i2 >= 0) {
                if (i == i2) {
                    return;
                }
                if (a2 != null) {
                    this.y = -1;
                    f("interstitial closed, back to member " + i);
                    return;
                } else {
                    if (a(i, (java.lang.Object) null) == null) {
                        this.y = -1;
                        this.i = true;
                        return;
                    }
                    return;
                }
            }
            if (this.g || this.h) {
                return;
            }
            if (a2 == null) {
                if (a(i, (java.lang.Object) null) == null) {
                    this.i = true;
                    return;
                }
                return;
            } else {
                if (this.k || a2.e == dev.duo.taskcore.d.a.SURFACE_ATTACHED) {
                    a(a2, "member " + i + " opened outside the workbench");
                    return;
                }
                return;
            }
        }
        if (this.K) {
            return;
        }
        if ((dVar2 != dev.duo.taskcore.i.d.ACTIVE && dVar2 != dev.duo.taskcore.i.d.TRANSITIONING) || i == this.O || a(i, obj) != null || i == this.A || a(i, (java.lang.Object) null) != null || (dVar = this.e) == null || dVar.k) {
            return;
        }
        c("system focused non-member task " + i);
    }

    private int d() {
        if (this.G == 0) {
            int i = this.H + 1;
            this.H = i;
            this.G = i;
            return i;
        }
        throw new java.lang.IllegalStateException("platform op " + this.G + " still running");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(int i, final dev.duo.taskcore.d dVar, boolean z, java.lang.String str) {
        if (a(i)) {
            if (z && !this.K) {
                try {
                    this.b.a(dVar);
                    if (dVar.e != dev.duo.taskcore.d.a.TASK_GONE) {
                        dVar.e = dev.duo.taskcore.d.a.OWNER_ACQUIRED;
                    }
                    final int d2 = d();
                    this.b.b(dVar, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda11
                        @Override // dev.duo.taskcore.i.a
                        public final void a(boolean z2, java.lang.String str2) {
                            dev.duo.taskcore.i.this.a(d2, dVar, z2, str2);
                        }
                    });
                    return;
                } catch (dev.duo.taskcore.i.c e) {
                    if (e.a) {
                        if (dVar.e != dev.duo.taskcore.d.a.TASK_GONE) {
                            dVar.e = dev.duo.taskcore.d.a.OWNER_ACQUIRED;
                        }
                        d("owner unverified " + dVar + ": " + e.getMessage());
                        b("owner unverified");
                        return;
                    }
                    this.b.c(dVar);
                    if (a(dVar)) {
                        d("owner refused " + dVar + ": " + e.getMessage());
                        if (dVar == this.e) {
                            b("main owner refused");
                            return;
                        } else {
                            b();
                            return;
                        }
                    }
                    return;
                }
            }
            this.b.c(dVar);
            if (a(dVar)) {
                if (!z) {
                    d("host not ready for " + dVar + ": " + str);
                }
                if (z || dVar != this.e) {
                    b();
                } else {
                    b("main host not ready");
                }
            }
        }
    }

    private void d(java.lang.String str) {
        this.M.add(str);
        android.util.Log.i(a, "session " + this.c + " " + str);
    }

    public void c(boolean z) {
        this.v = z;
    }

    public void c(java.lang.String str) {
        if (this.K) {
            return;
        }
        this.y = -1;
        this.A = -1;
        this.i = true;
        this.h = false;
        e(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, boolean z, java.lang.String str) {
        if (a(i)) {
            this.U = false;
            if (!z) {
                b("resume with incoming task failed: " + str);
            } else {
                b();
            }
        }
    }

    public void c(int i, java.lang.Object obj) {
        dev.duo.taskcore.d a2;
        if (this.K) {
            return;
        }
        dev.duo.taskcore.i.d dVar = this.d;
        dev.duo.taskcore.i.d dVar2 = dev.duo.taskcore.i.d.ACTIVE;
        if ((dVar == dVar2 || dVar == dev.duo.taskcore.i.d.TRANSITIONING) && (a2 = a(i, obj)) != null && a2.e == dev.duo.taskcore.d.a.SURFACE_ATTACHED) {
            a2.k = true;
            if (a2 == this.e) {
                this.B = true;
                this.Q = this.P.get(a2);
            }
            d("member moved itself to back " + a2);
            if (this.d != dVar2 || e()) {
                return;
            }
            y();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, boolean z, boolean z2, java.lang.String str) {
        if (a(i)) {
            a(z2, str, z ? "adopt" : "enter");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, dev.duo.taskcore.d dVar, boolean z, java.lang.String str) {
        if (a(i)) {
            if (z && dVar.e != dev.duo.taskcore.d.a.TASK_GONE) {
                dVar.e = dev.duo.taskcore.d.a.SURFACE_ATTACHED;
                b();
            } else {
                d("attach failed " + dVar + ": " + str);
                b("attach failed");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(int i, boolean z, java.lang.String str) {
        if (a(i)) {
            a(z, str, "pull back");
        }
    }

    public boolean a(dev.duo.taskcore.b bVar, final boolean z) {
        if (this.d != dev.duo.taskcore.i.d.ACTIVE || e() || this.K) {
            return false;
        }
        final java.lang.String str = z ? "flip" : "rotate";
        java.util.ArrayList arrayList = new java.util.ArrayList();
        dev.duo.taskcore.d dVar = this.e;
        if (dVar != null) {
            arrayList.add(dVar);
        }
        for (dev.duo.taskcore.d dVar2 : this.C) {
            if (dVar2 != null) {
                arrayList.add(dVar2);
            }
        }
        a(dev.duo.taskcore.i.d.TRANSITIONING);
        final int d2 = d();
        this.b.a(arrayList, bVar, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda12
            @Override // dev.duo.taskcore.i.a
            public final void a(boolean z2, java.lang.String str2) {
                dev.duo.taskcore.i.this.a(d2, str, z, z2, str2);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(int i, boolean z, java.lang.String str) {
        if (a(i)) {
            a(z, str, "member left");
        }
    }

    private void e(dev.duo.taskcore.d dVar) {
        try {
            this.b.a(this.c, dVar);
            dVar.e = dev.duo.taskcore.d.a.RELEASED;
        } catch (dev.duo.taskcore.i.c e) {
            this.J = (this.J == null ? "" : this.J + "; ") + dVar + ": " + e.getMessage();
            d("snapshot not withdrawn " + dVar + ": " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, final java.lang.String str, boolean z, boolean z2, java.lang.String str2) {
        if (!a(i)) {
            return;
        }
        if (!z2) {
            d(str + " relayout failed: " + str2);
            b(str + " relayout failed");
            return;
        }
        dev.duo.taskcore.b a2 = this.b.a();
        dev.duo.taskcore.d dVar = this.e;
        if (dVar != null) {
            dVar.m.set(a2.a);
        }
        int i2 = 0;
        while (true) {
            dev.duo.taskcore.d[] dVarArr = this.C;
            if (i2 >= dVarArr.length) {
                final int d2 = d();
                this.b.a(this.e, (dev.duo.taskcore.d[]) this.C.clone(), z, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda8
                    @Override // dev.duo.taskcore.i.a
                    public final void a(boolean z3, java.lang.String str3) {
                        dev.duo.taskcore.i.this.a(d2, str, z3, str3);
                    }
                });
                return;
            } else {
                dev.duo.taskcore.d dVar2 = dVarArr[i2];
                if (dVar2 != null) {
                    dVar2.m.set(a2.d[i2]);
                }
                i2++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, java.lang.String str, boolean z, java.lang.String str2) {
        if (a(i)) {
            a(z, str2, str);
        }
    }

    public boolean a(int i, int i2) {
        if (this.d == dev.duo.taskcore.i.d.ACTIVE && !e() && !this.K && (i >= 0 ? this.C[i] == null : this.e == null)) {
            if (a(i2, (java.lang.Object) null) != null) {
                d("task " + i2 + " already a member");
                return false;
            }
            try {
                dev.duo.taskcore.d h = h(i2);
                android.graphics.Rect rect = h.m;
                dev.duo.taskcore.b a2 = this.b.a();
                rect.set(i < 0 ? a2.a : a2.d[i]);
                if (i < 0) {
                    this.f.clear();
                    this.e = h;
                } else {
                    this.C[i] = h;
                }
                this.D.add(h);
                a(dev.duo.taskcore.i.d.ATTACHING);
                b();
                return true;
            } catch (dev.duo.taskcore.i.c e) {
                d("add " + i2 + " refused: " + e.getMessage());
            }
        }
        return false;
    }

    private boolean b(int i, boolean z) {
        dev.duo.taskcore.d dVar = this.C[i];
        if (this.d != dev.duo.taskcore.i.d.ACTIVE || e() || this.K || dVar == null) {
            return false;
        }
        this.X = z;
        dev.duo.taskcore.b a2 = this.b.a();
        this.C[i] = this.e;
        this.e = dVar;
        dVar.m.set(a2.a);
        dev.duo.taskcore.d dVar2 = this.C[i];
        if (dVar2 != null) {
            dVar2.m.set(a2.d[i]);
        }
        a(dev.duo.taskcore.i.d.TRANSITIONING);
        final int d2 = d();
        this.b.a(this.e, (dev.duo.taskcore.d[]) this.C.clone(), true, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda18
            @Override // dev.duo.taskcore.i.a
            public final void a(boolean z2, java.lang.String str) {
                dev.duo.taskcore.i.this.i(d2, z2, str);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, dev.duo.taskcore.d dVar, int i2, boolean z, java.lang.String str) {
        if (a(i)) {
            if (!z) {
                d("remove give back failed " + dVar + ": " + str);
                b("remove failed");
                return;
            }
            d(dVar);
            if (dVar.e != dev.duo.taskcore.d.a.RELEASED) {
                b("remove not settled");
                return;
            }
            if (i2 < 0) {
                this.e = null;
            } else {
                this.C[i2] = null;
            }
            final int d2 = d();
            this.b.a(this.e, (dev.duo.taskcore.d[]) this.C.clone(), false, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda3
                @Override // dev.duo.taskcore.i.a
                public final void a(boolean z2, java.lang.String str2) {
                    dev.duo.taskcore.i.this.f(d2, z2, str2);
                }
            });
        }
    }

    public boolean b(int i, int i2) {
        int i3 = 0;
        if (this.d != dev.duo.taskcore.i.d.ACTIVE || e() || this.K || i == i2 || this.C[i] == null) {
            return false;
        }
        dev.duo.taskcore.b a2 = this.b.a();
        dev.duo.taskcore.d dVar = this.C[i];
        int i4 = i2 > i ? 1 : -1;
        while (i != i2) {
            dev.duo.taskcore.d[] dVarArr = this.C;
            int i5 = i + i4;
            dVarArr[i] = dVarArr[i5];
            i = i5;
        }
        this.C[i2] = dVar;
        while (true) {
            dev.duo.taskcore.d[] dVarArr2 = this.C;
            if (i3 >= dVarArr2.length) {
                a(dev.duo.taskcore.i.d.TRANSITIONING);
                final int d2 = d();
                this.b.a(this.e, (dev.duo.taskcore.d[]) this.C.clone(), true, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda5
                    @Override // dev.duo.taskcore.i.a
                    public final void a(boolean z, java.lang.String str) {
                        dev.duo.taskcore.i.this.g(d2, z, str);
                    }
                });
                return true;
            }
            dev.duo.taskcore.d dVar2 = dVarArr2[i3];
            if (dVar2 != null) {
                dVar2.m.set(a2.d[i3]);
            }
            i3++;
        }
    }

    private void b(java.lang.String str) {
        if (this.K) {
            B();
        } else {
            a(str, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(int i, java.lang.Object obj, dev.duo.taskcore.d.b bVar) {
        if (bVar.a == i) {
            return obj == null || bVar.e == obj;
        }
        return false;
    }

    private void a(boolean z, java.lang.String str, final java.lang.String str2) {
        this.x = -1;
        if (!z) {
            d(str2 + " place failed: " + str);
            b(str2 + " place failed");
            return;
        }
        if (this.K) {
            B();
            return;
        }
        try {
            dev.duo.taskcore.i.b bVar = this.b;
            long j = this.c;
            int i = this.F + 1;
            this.F = i;
            bVar.a(j, i, this.e, (dev.duo.taskcore.d[]) this.C.clone());
            final int d2 = d();
            this.b.a(this.e, (dev.duo.taskcore.d[]) this.C.clone(), new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda7
                @Override // dev.duo.taskcore.i.a
                public final void a(boolean z2, java.lang.String str3) {
                    dev.duo.taskcore.i.this.b(d2, str2, z2, str3);
                }
            });
        } catch (dev.duo.taskcore.i.c e) {
            d(str2 + " layout not acked: " + e.getMessage());
            b(str2 + " layout not acked");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(int i, java.lang.String str, boolean z, java.lang.String str2) {
        dev.duo.taskcore.d dVar;
        if (a(i)) {
            if (!z) {
                d(str + " isolation failed: " + str2);
                b(str + " isolation failed");
                return;
            }
            if (this.K) {
                B();
                return;
            }
            boolean z2 = ("remove".equals(str) || "reorder".equals(str) || "raise".equals(str) || this.X || this.W != null || this.N != null || this.g) ? false : true;
            this.X = false;
            if (z2 && (dVar = this.e) != null && dVar.e == dev.duo.taskcore.d.a.SURFACE_ATTACHED && !this.b.b(dVar)) {
                b(str + " focus request failed");
                return;
            }
            if (z2 && this.e != null) {
                this.A = -1;
            }
            a(dev.duo.taskcore.i.d.ACTIVE);
            if (this.j) {
                i();
                return;
            }
            if (w()) {
                return;
            }
            if (this.e == null && z()) {
                this.B = false;
                return;
            }
            if (this.e == null && this.B && c()) {
                this.B = false;
                return;
            }
            if (this.e == null && this.B && this.N == null && !this.g && this.f.isEmpty()) {
                this.B = false;
                a("main area backed out to the end", false);
                return;
            }
            java.lang.String str3 = this.N;
            if (str3 != null) {
                this.N = null;
                e(str3);
                return;
            }
            if (this.Y) {
                x();
                return;
            }
            if (this.Z == null || !u()) {
                int i2 = this.O;
                if (i2 < 0) {
                    if (y()) {
                        return;
                    }
                    o();
                } else {
                    this.O = -1;
                    if (b(i2)) {
                        return;
                    }
                    this.b.a(i2);
                }
            }
        }
    }

    public boolean a() {
        return !this.j && this.s == 0;
    }

    private void a(dev.duo.taskcore.d.b bVar) {
        for (int i = 0; i < this.f.size(); i++) {
            dev.duo.taskcore.d.b bVar2 = this.f.get(i);
            if (bVar2.a == bVar.a && bVar2.e == bVar.e) {
                java.util.List<dev.duo.taskcore.d.b> list = this.f;
                list.subList(i, list.size()).clear();
                return;
            }
        }
        dev.duo.taskcore.d dVar = this.e;
        if (dVar != null) {
            this.f.add(dVar.a);
        }
    }

    private void a(final dev.duo.taskcore.d dVar, final boolean z, final boolean z2) {
        dev.duo.taskcore.d dVar2;
        int i = 0;
        while (true) {
            dev.duo.taskcore.d[] dVarArr = this.C;
            if (i >= dVarArr.length || dVarArr[i] == null) {
                break;
            } else {
                i++;
            }
        }
        dev.duo.taskcore.d dVar3 = this.R;
        this.R = null;
        if (dVar3 != null && !dVar3.a()) {
            dVar3 = null;
        }
        if (dVar3 != null) {
            dVar2 = dVar3;
        } else {
            if (this.e != null) {
                dev.duo.taskcore.d[] dVarArr2 = this.C;
                if (i == dVarArr2.length) {
                    dVar2 = dVarArr2[dVarArr2.length - 1];
                }
            }
            dVar2 = null;
        }
        if (dVar2 != null && dVar2.a()) {
            final boolean z3 = dVar3 != null;
            dVar2.e = dev.duo.taskcore.d.a.RETURN_REQUESTED;
            java.util.ArrayList arrayList = new java.util.ArrayList();
            arrayList.add(dVar2);
            final dev.duo.taskcore.d dVar4 = dVar2;
            final int d2 = d();
            this.b.b(arrayList, null, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda13
                @Override // dev.duo.taskcore.i.a
                public final void a(boolean z4, java.lang.String str) {
                    dev.duo.taskcore.i.this.a(d2, dVar4, z3, dVar, z, z2, z4, str);
                }
            });
            return;
        }
        b(dVar, z, z2);
    }

    public boolean b(int i) {
        dev.duo.taskcore.i.d dVar;
        dev.duo.taskcore.i.d dVar2 = this.d;
        dev.duo.taskcore.i.d dVar3 = dev.duo.taskcore.i.d.PAUSED;
        if (dVar2 == dVar3 && p() && !e() && !this.g && !this.v && a() && a(i, (java.lang.Object) null) == null) {
            return c(i);
        }
        if (this.K || (dVar = this.d) == dev.duo.taskcore.i.d.CLOSED || dVar == dev.duo.taskcore.i.d.RETURN_FAILED || dVar == dVar3 || !a()) {
            return false;
        }
        if (a(i, (java.lang.Object) null) != null) {
            return true;
        }
        if (this.d == dev.duo.taskcore.i.d.ACTIVE && !e()) {
            try {
                dev.duo.taskcore.d h = h(i);
                a(h.a);
                c(h);
                h.m.set(this.b.a().a);
                this.D.add(h);
                this.x = i;
                a(dev.duo.taskcore.i.d.TRANSITIONING);
                a(h, false, false);
                return true;
            } catch (dev.duo.taskcore.i.c e) {
                d("adopt " + i + " refused: " + e.getMessage());
                return false;
            }
        }
        this.O = i;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, dev.duo.taskcore.d dVar, boolean z, dev.duo.taskcore.d dVar2, boolean z2, boolean z3, boolean z4, java.lang.String str) {
        if (a(i)) {
            if (!z4) {
                b("overflow return failed: " + str);
                return;
            }
            d(dVar);
            if (dVar.e != dev.duo.taskcore.d.a.RELEASED) {
                b("overflow not settled");
                return;
            }
            if (z) {
                if (this.e == dVar) {
                    this.e = null;
                }
                int i2 = 0;
                while (true) {
                    dev.duo.taskcore.d[] dVarArr = this.C;
                    if (i2 >= dVarArr.length) {
                        break;
                    }
                    if (dVarArr[i2] == dVar) {
                        dVarArr[i2] = null;
                    }
                    i2++;
                }
                for (int size = this.f.size() - 1; size >= 0; size--) {
                    if (this.f.get(size).a == dVar.a.a) {
                        this.f.remove(size);
                    }
                }
                this.P.remove(dVar);
            }
            b(dVar2, z2, z3);
        }
    }

    public void a(int i, java.lang.Object obj, int i2) {
        dev.duo.taskcore.d dVar;
        if (this.K || this.j || (dVar = this.e) == null) {
            return;
        }
        dev.duo.taskcore.d.b bVar = dVar.a;
        if (bVar.a == i) {
            if (obj == null || bVar.e == obj) {
                d("main " + i + " started home itself: treated as leaving the main area");
                this.A = i2;
                this.e.k = true;
                this.B = true;
                if (this.d != dev.duo.taskcore.i.d.ACTIVE || e()) {
                    return;
                }
                a(dev.duo.taskcore.i.d.TRANSITIONING);
                this.U = true;
                final int d2 = d();
                this.b.a((dev.duo.taskcore.d) null, (dev.duo.taskcore.d[]) this.C.clone(), (java.lang.Object) null, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda2
                    @Override // dev.duo.taskcore.i.a
                    public final void a(boolean z, java.lang.String str) {
                        dev.duo.taskcore.i.this.b(d2, z, str);
                    }
                });
            }
        }
    }

    private void b(dev.duo.taskcore.d dVar, boolean z, boolean z2) {
        if (this.K) {
            B();
            return;
        }
        int i = 0;
        if (this.e != null) {
            int i2 = 0;
            while (true) {
                dev.duo.taskcore.d[] dVarArr = this.C;
                if (i2 >= dVarArr.length - 1 || dVarArr[i2] == null) {
                    break;
                } else {
                    i2++;
                }
            }
            while (i2 > 0) {
                dev.duo.taskcore.d[] dVarArr2 = this.C;
                dVarArr2[i2] = dVarArr2[i2 - 1];
                i2--;
            }
            this.C[0] = this.e;
        }
        this.e = dVar;
        while (true) {
            dev.duo.taskcore.d[] dVarArr3 = this.C;
            if (i >= dVarArr3.length) {
                break;
            }
            dev.duo.taskcore.d dVar2 = dVarArr3[i];
            if (dVar2 != null) {
                dVar2.m.set(this.b.a().d[i]);
            }
            i++;
        }
        if (z2) {
            this.f.clear();
        }
        if (z) {
            this.T = true;
            if (this.k) {
                f("corner incoming");
                return;
            }
        } else {
            this.S = true;
        }
        a(dev.duo.taskcore.i.d.ATTACHING);
        b();
    }

    public void a(int i, int i2, java.lang.Object obj) {
        dev.duo.taskcore.d dVar;
        dev.duo.taskcore.d a2;
        if (this.K || this.j || (dVar = this.e) == null || dVar.a.a != i || (a2 = a(i2, obj)) == null || a2 == this.e || !a2.a() || k(i2) < 0) {
            return;
        }
        dev.duo.taskcore.i.d dVar2 = this.d;
        dev.duo.taskcore.i.d dVar3 = dev.duo.taskcore.i.d.ACTIVE;
        if (dVar2 == dVar3 || dVar2 == dev.duo.taskcore.i.d.TRANSITIONING || dVar2 == dev.duo.taskcore.i.d.ATTACHING) {
            a(a2.a);
            if (!e() && this.d == dVar3) {
                b(k(i2), true);
            } else {
                this.W = a2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(int i, boolean z, java.lang.String str) {
        if (a(i)) {
            this.U = false;
            a(z, str, "raise");
        }
    }

    public void a(boolean z, boolean z2) {
        if (z && this.z && !z2) {
            return;
        }
        boolean z3 = false;
        if (!z || z2) {
            this.z = false;
        }
        if (this.g == z) {
            return;
        }
        this.g = z;
        if (z) {
            if ((this.d != dev.duo.taskcore.i.d.PAUSED || this.j || this.l) && !this.K && !this.i) {
                z3 = true;
            }
            this.h = z3;
            if (z3) {
                e("locked");
                return;
            }
            return;
        }
        if (this.h) {
            this.h = false;
            if ("locked".equals(this.N)) {
                this.N = null;
            }
            f("unlocked");
        }
    }

    private boolean b(int i, java.lang.Object obj) {
        dev.duo.taskcore.d dVar = this.e;
        if (dVar == null) {
            return false;
        }
        dev.duo.taskcore.d.b bVar = dVar.a;
        if (bVar.a == i) {
            return obj == null || bVar.e == obj;
        }
        return false;
    }

    public void b(boolean z) {
        this.o = false;
        this.r = z & this.r;
        k();
    }

    public boolean b(java.lang.String str, java.lang.Object obj) {
        j();
        if (this.d != dev.duo.taskcore.i.d.PAUSED || this.K || e() || this.g || this.j || this.v || this.k) {
            return false;
        }
        a(str, obj);
        return true;
    }

    private void b(final dev.duo.taskcore.d dVar) {
        int i = 0;
        while (true) {
            dev.duo.taskcore.d[] dVarArr = this.C;
            if (i >= dVarArr.length) {
                break;
            }
            if (dVarArr[i] == dVar) {
                dVarArr[i] = null;
            }
            i++;
        }
        if (dVar == this.e) {
            this.e = null;
        }
        this.f.removeIf(new java.util.function.Predicate() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda6
            @Override // java.util.function.Predicate
            public final boolean test(java.lang.Object obj) {
                boolean a2;
                a2 = dev.duo.taskcore.i.a(dev.duo.taskcore.d.this, (dev.duo.taskcore.d.b) obj);
                return a2;
            }
        });
        d("member " + dVar.a.a + " opened as a floating window: it leaves, the rest stay");
        this.Y = true;
        if (this.d != dev.duo.taskcore.i.d.ACTIVE || e()) {
            return;
        }
        x();
    }

    public void a(int i, java.lang.Object obj, boolean z) {
        dev.duo.taskcore.d a2 = a(i, obj);
        if (a2 == null) {
            return;
        }
        a2.l = false;
        if (!z || this.K) {
            return;
        }
        if (a2 == this.e) {
            this.f.clear();
        }
        a2.k = true;
        if (this.d == dev.duo.taskcore.i.d.PAUSED && !e()) {
            this.N = "PiP while paused";
            this.d = dev.duo.taskcore.i.d.ACTIVE;
        }
        if (this.d != dev.duo.taskcore.i.d.ACTIVE || e()) {
            return;
        }
        y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(int i, boolean z, boolean z2, java.lang.String str) {
        if (a(i)) {
            this.U = false;
            if (z2 && z) {
                final int d2 = d();
                this.b.a(this.e, (dev.duo.taskcore.d[]) this.C.clone(), true, new dev.duo.taskcore.i.a() { // from class: dev.duo.taskcore.i$$ExternalSyntheticLambda17
                    @Override // dev.duo.taskcore.i.a
                    public final void a(boolean z3, java.lang.String str2) {
                        dev.duo.taskcore.i.this.c(d2, z3, str2);
                    }
                });
            } else {
                a(z2, str, "pull back");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(int i, java.util.List list, boolean z, java.lang.String str) {
        if (this.G != i) {
            a((java.util.List<dev.duo.taskcore.d>) list, z, str);
            return;
        }
        this.G = 0;
        if (!z) {
            if (str != null && str.startsWith("timeout")) {
                this.a0 = list;
            }
            a(dev.duo.taskcore.i.d.RETURN_FAILED, "give back failed: " + str + " holding " + list);
            return;
        }
        java.util.Iterator it = list.iterator();
        while (it.hasNext()) {
            d((dev.duo.taskcore.d) it.next());
        }
        m();
    }

    public void a(int i, boolean z) {
        this.s = i;
        if (i != 0) {
            this.q = false;
            if (z || this.x < 0) {
                return;
            }
            g();
            return;
        }
        if (this.p) {
            this.q = true;
            int i2 = this.t;
            if (i2 < 0 || b(i2, this.u)) {
                a(this.t >= 0);
            }
        }
    }

    private void a(boolean z) {
        this.p = false;
        this.q = false;
        this.t = -1;
        this.u = null;
        this.r = z & this.r;
        k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, java.util.List list, boolean z, java.lang.String str) {
        if (a(i)) {
            if (!z) {
                b("interruption return failed: " + str);
                return;
            }
            java.util.Iterator it = list.iterator();
            while (it.hasNext()) {
                dev.duo.taskcore.d dVar = (dev.duo.taskcore.d) it.next();
                if (dVar.e == dev.duo.taskcore.d.a.TASK_GONE) {
                    this.b.c(dVar);
                    if (!a(dVar)) {
                        return;
                    }
                    if (dVar == this.e) {
                        this.e = null;
                    }
                } else {
                    d(dVar);
                    if (dVar.e != dev.duo.taskcore.d.a.RELEASED) {
                        b("interruption owner not returned");
                        return;
                    }
                }
            }
            if (this.K) {
                B();
            } else {
                if (this.j || !this.l) {
                    return;
                }
                f("interruption finished");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.String r6, java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.taskcore.i.a(java.lang.String, java.lang.Object):void");
    }

    public void a(int i, java.lang.Object obj, int i2, int i3) {
        dev.duo.taskcore.d.a aVar;
        dev.duo.taskcore.d.a aVar2;
        dev.duo.taskcore.i.d dVar;
        dev.duo.taskcore.d a2 = a(i, obj);
        if (a2 == null) {
            return;
        }
        boolean z = true;
        if ((i3 != -1 || (i2 != 6 && i2 != 1 && i2 != 0 && (i2 != 2 || !a2.l))) && ((!this.U || i3 != -1) && ((aVar = a2.e) == (aVar2 = dev.duo.taskcore.d.a.SURFACE_ATTACHED) || aVar == dev.duo.taskcore.d.a.RETURN_REQUESTED))) {
            d("member " + i + " taken into another container (mode " + i2 + ", parent " + i3 + "): released now");
            a2.j = true;
            this.b.e(a2);
            if (i2 != 5 || i3 != -1 || a2.e != aVar2 || this.K || ((dVar = this.d) != dev.duo.taskcore.i.d.ACTIVE && dVar != dev.duo.taskcore.i.d.TRANSITIONING)) {
                z = false;
            }
            d(a2);
            if (z && a2.e != aVar2) {
                b(a2);
                return;
            } else {
                if (this.K) {
                    return;
                }
                a("member " + i + " taken over (mode " + i2 + ", parent " + i3 + ")", false);
                return;
            }
        }
        if (a2.e != dev.duo.taskcore.d.a.SURFACE_ATTACHED || this.K || this.U || this.j || this.k) {
            return;
        }
        if (i2 == 6 && i3 == -1) {
            return;
        }
        if (i2 == 2 && a2.l) {
            return;
        }
        dev.duo.taskcore.i.d dVar2 = this.d;
        if (dVar2 == dev.duo.taskcore.i.d.PAUSED && i3 == -1 && (i2 == 1 || i2 == 0)) {
            a(a2, "member " + i + " reopened full screen");
            return;
        }
        dev.duo.taskcore.i.d dVar3 = dev.duo.taskcore.i.d.ACTIVE;
        if ((dVar2 == dVar3 || dVar2 == dev.duo.taskcore.i.d.TRANSITIONING) && i3 == -1 && (i2 == 1 || i2 == 0)) {
            d("member " + i + " set full screen by a launch (mode " + i2 + "): pulling it back");
            this.Z = a2;
            if (this.d != dVar3 || e()) {
                return;
            }
            u();
            return;
        }
        a("member " + i + " taken over (mode " + i2 + ", parent " + i3 + ")", false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(dev.duo.taskcore.d dVar, dev.duo.taskcore.d.b bVar) {
        return bVar.a == dVar.a.a;
    }

    private void a(dev.duo.taskcore.d dVar, java.lang.String str) {
        if (this.K) {
            return;
        }
        this.w = dVar;
        a(str, false);
    }

    public void a(java.lang.String str, boolean z) {
        dev.duo.taskcore.i.d dVar;
        dev.duo.taskcore.i.d dVar2;
        if (this.K || (dVar = this.d) == (dVar2 = dev.duo.taskcore.i.d.CLOSED) || dVar == dev.duo.taskcore.i.d.RETURN_FAILED) {
            return;
        }
        this.K = true;
        this.I = str;
        this.L = z;
        d("close: " + str);
        if (this.d == dev.duo.taskcore.i.d.IDLE) {
            a(dVar2, str);
            return;
        }
        this.b.a(this);
        if (e()) {
            return;
        }
        B();
    }

    private void a(java.util.List<dev.duo.taskcore.d> list, boolean z, java.lang.String str) {
        if (this.d == dev.duo.taskcore.i.d.RETURN_FAILED && this.a0 == list && z && str != null && str.startsWith("late")) {
            this.a0 = null;
            this.J = null;
            d("late return confirmed: " + str);
            this.d = dev.duo.taskcore.i.d.RETURNING;
            java.util.Iterator<dev.duo.taskcore.d> it = list.iterator();
            while (it.hasNext()) {
                d(it.next());
            }
            m();
            return;
        }
        d("stale callback ignored");
    }

    private void a(java.lang.String str) {
        java.lang.String a2 = this.b.a(this.c);
        if (a2 != null) {
            a(dev.duo.taskcore.i.d.RETURN_FAILED, "server session not cleared: " + a2);
        } else {
            a(dev.duo.taskcore.i.d.CLOSED, str);
        }
    }

    public dev.duo.taskcore.d a(int i, java.lang.Object obj) {
        for (dev.duo.taskcore.d dVar : t()) {
            dev.duo.taskcore.d.b bVar = dVar.a;
            if (bVar.a == i && (obj == null || bVar.e == obj)) {
                return dVar;
            }
        }
        return null;
    }

    private boolean a(dev.duo.taskcore.d dVar) {
        if (dVar.e == dev.duo.taskcore.d.a.OBSERVED) {
            dVar.e = dev.duo.taskcore.d.a.RELEASED;
        }
        int i = 0;
        while (true) {
            dev.duo.taskcore.d[] dVarArr = this.C;
            if (i >= dVarArr.length) {
                try {
                    this.b.a(this.c, dVar);
                    return true;
                } catch (dev.duo.taskcore.i.c e) {
                    d("snapshot not withdrawn " + dVar + ": " + e.getMessage());
                    b("snapshot not withdrawn");
                    return false;
                }
            }
            if (dVarArr[i] == dVar) {
                dVarArr[i] = null;
            }
            i++;
        }
    }

    private boolean a(int i) {
        if (this.G != i) {
            d("stale callback ignored");
            return false;
        }
        this.G = 0;
        return true;
    }

    private void a(dev.duo.taskcore.i.d dVar) {
        this.d = dVar;
        this.b.a(this);
    }

    private void a(dev.duo.taskcore.i.d dVar, java.lang.String str) {
        this.d = dVar;
        if (dVar == dev.duo.taskcore.i.d.CLOSED) {
            this.f.clear();
        }
        this.B = false;
        this.P.clear();
        this.Q = null;
        if (dVar == dev.duo.taskcore.i.d.RETURN_FAILED) {
            this.J = str;
        }
        d(dVar + ": " + str);
        this.b.a(this);
    }
}
