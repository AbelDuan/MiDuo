package dev.duo.taskcore;

/* loaded from: classes.dex */
final class a {
    private final dev.duo.taskcore.a.b a;
    private dev.duo.taskcore.a.AbstractC0005a b;

    /* renamed from: dev.duo.taskcore.a$a, reason: collision with other inner class name */
    static abstract class AbstractC0005a {
        java.lang.Runnable a;
        java.lang.Object b;

        AbstractC0005a() {
        }

        final void a() {
            java.lang.Runnable runnable = this.a;
            this.a = null;
            if (runnable != null) {
                runnable.run();
            }
        }

        abstract void a(long j);
    }

    interface b {
        void a(dev.duo.taskcore.a.AbstractC0005a abstractC0005a);

        void b(dev.duo.taskcore.a.AbstractC0005a abstractC0005a);
    }

    a(dev.duo.taskcore.a.b bVar) {
        this.a = bVar;
    }

    static boolean a(boolean z, boolean z2, int i) {
        return !z && z2 && i == 0;
    }

    void b(dev.duo.taskcore.a.AbstractC0005a abstractC0005a) {
        if (this.b == abstractC0005a) {
            this.b = null;
        }
        abstractC0005a.a();
    }

    void c(dev.duo.taskcore.a.AbstractC0005a abstractC0005a) {
        if (this.b == abstractC0005a) {
            this.a.a(abstractC0005a);
        }
    }

    void d(dev.duo.taskcore.a.AbstractC0005a abstractC0005a) {
        dev.duo.taskcore.a.AbstractC0005a abstractC0005a2 = this.b;
        this.b = abstractC0005a;
        if (abstractC0005a2 != null) {
            this.a.b(abstractC0005a2);
            abstractC0005a2.a();
        }
        if (abstractC0005a != null) {
            this.a.a(abstractC0005a);
        }
    }

    boolean a(dev.duo.taskcore.a.AbstractC0005a abstractC0005a) {
        return this.b == abstractC0005a;
    }
}
