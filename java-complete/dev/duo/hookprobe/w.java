package dev.duo.hookprobe;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class w {
    private final int a;
    private final int b;
    private long c;
    private long d;
    private long e;
    private int f;
    private boolean g;
    long h;
    int i;

    w(int i) {
        this(i, 72);
    }

    private int c() {
        if (a(this.i)) {
            return 1;
        }
        return this.a;
    }

    boolean a(long[] jArr) {
        int i = (int) jArr[0];
        long j = (i >>> 8) & 16777215;
        int i2 = this.b;
        boolean z = (i & i2) == i2 && (i2 != 192 || (i & 4) == 0) && jArr[1] > 0 && jArr[2] > 0;
        boolean z2 = (z && z == this.g && (i & 255) == (this.i & 255) && (j == this.c || (z && this.g && a(i) && (i & 255) == (this.i & 255) && (this.d > jArr[2] ? 1 : (this.d == jArr[2] ? 0 : -1)) == 0 && (this.e > jArr[3] ? 1 : (this.e == jArr[3] ? 0 : -1)) == 0)) && this.d == jArr[2] && this.e == jArr[3]) ? false : true;
        if (z2) {
            this.f = 0;
            this.h = jArr[1];
        }
        this.g = z;
        this.c = j;
        this.d = jArr[2];
        this.e = jArr[3];
        this.i = i;
        return z2;
    }

    boolean b() {
        if (!this.g) {
            return false;
        }
        int i = this.f + 1;
        this.f = i;
        return i == c();
    }

    boolean d() {
        return this.g && this.f < c();
    }

    boolean e() {
        return this.g && this.f >= c();
    }

    w(int i, int i2) {
        this.c = -1L;
        if (i < 2 || i > 60) {
            throw new IllegalArgumentException("静止帧数需在 2–60 之间");
        }
        this.a = i;
        this.b = i2;
    }

    private boolean a(int i) {
        return this.b == 72 && (i & 16) != 0;
    }

    String a() {
        return "flags=0x" + Integer.toHexString(this.i & 255) + " paint=" + this.c + " exact=" + this.g + " quiet=" + this.f + "/" + c() + " at=" + this.h;
    }
}
