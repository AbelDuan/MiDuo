package dev.duo.taskcore;

/* loaded from: classes.dex */
public final class d {
    public final dev.duo.taskcore.d.b a;
    public final long b;
    public final int c;
    public dev.duo.taskcore.d.c d;
    public java.lang.Object f;
    public java.lang.Object g;
    public java.lang.Object h;
    public java.lang.Object i;
    public boolean j;
    public boolean k;
    public boolean l;
    public dev.duo.taskcore.d.a e = dev.duo.taskcore.d.a.OBSERVED;
    public final android.graphics.Rect m = new android.graphics.Rect();

    public enum a {
        OBSERVED,
        OWNER_ACQUIRED,
        SURFACE_ATTACHED,
        RETURN_REQUESTED,
        OWNER_RETURNED,
        RELEASED,
        TASK_GONE
    }

    public static final class b {
        public final int a;
        public final int b;
        public final int c;
        public final java.lang.Object d;
        public final java.lang.Object e;
        public final java.lang.Object f;
        public final java.lang.Object g;
        public final java.lang.String h;
        public final java.lang.String i;

        public b(int i, int i2, int i3, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3, java.lang.Object obj4, java.lang.String str, java.lang.String str2) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = obj;
            this.e = obj2;
            this.f = obj3;
            this.g = obj4;
            this.h = str;
            this.i = str2;
        }

        public boolean a(int i, java.lang.Object obj, int i2, int i3) {
            return this.a == i && this.e == obj && this.b == i2 && this.c == i3;
        }
    }

    public static final class c {
        public final int a;
        public final android.graphics.Rect b;
        public final boolean c;
        public final boolean d;
        public final boolean e;
        public final boolean f;

        public c(int i, android.graphics.Rect rect, boolean z, boolean z2, boolean z3, boolean z4) {
            this.a = i;
            this.b = rect;
            this.c = z;
            this.d = z2;
            this.e = z3;
            this.f = z4;
        }

        public static dev.duo.taskcore.d.c a(android.os.Parcel parcel) {
            boolean z;
            boolean z2;
            int readInt = parcel.readInt();
            android.graphics.Rect a = dev.duo.taskcore.h.a(parcel);
            int readInt2 = parcel.readInt();
            boolean z3 = false;
            boolean z4 = true;
            boolean z5 = (readInt2 & 1) != 0;
            if ((readInt2 & 2) != 0) {
                z = false;
                z3 = true;
            } else {
                z = false;
            }
            if ((readInt2 & 4) != 0) {
                z2 = true;
            } else {
                z2 = true;
                z4 = z;
            }
            if ((readInt2 & 8) != 0) {
                z = z2;
            }
            return new dev.duo.taskcore.d.c(readInt, a, z5, z3, z4, z);
        }

        public void b(android.os.Parcel parcel) {
            parcel.writeInt(this.a);
            dev.duo.taskcore.h.a(parcel, this.b);
            parcel.writeInt((this.c ? 1 : 0) | (this.d ? 2 : 0) | (this.e ? 4 : 0) | (this.f ? 8 : 0));
        }
    }

    public d(dev.duo.taskcore.d.b bVar, long j, int i) {
        this.a = bVar;
        this.b = j;
        this.c = i;
    }

    public boolean a() {
        dev.duo.taskcore.d.a aVar = this.e;
        return aVar == dev.duo.taskcore.d.a.OWNER_ACQUIRED || aVar == dev.duo.taskcore.d.a.SURFACE_ATTACHED || aVar == dev.duo.taskcore.d.a.RETURN_REQUESTED;
    }

    public java.lang.String toString() {
        return "task#" + this.a.a + "(" + this.a.h + ",u" + this.a.b + ",g" + this.c + "," + this.e + ")";
    }
}
