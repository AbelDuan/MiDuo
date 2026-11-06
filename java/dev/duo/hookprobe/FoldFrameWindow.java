package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.w */
/* loaded from: classes.dex */
final class FoldFrameWindow {

    /* renamed from: a */
    private final int f1847a;

    /* renamed from: b */
    private final int f1848b;

    /* renamed from: c */
    private long f1849c;

    /* renamed from: d */
    private long f1850d;

    /* renamed from: e */
    private long f1851e;

    /* renamed from: f */
    private int f1852f;

    /* renamed from: g */
    private boolean f1853g;

    /* renamed from: h */
    long f1854h;

    /* renamed from: i */
    int f1855i;

    FoldFrameWindow(int i) {
        this(i, 72);
    }

    /* renamed from: c */
    private int m2006c() {
        if (m2005a(this.f1855i)) {
            return 1;
        }
        return this.f1847a;
    }

    /* renamed from: a */
    boolean m2008a(long[] jArr) {
        int i = (int) jArr[0];
        long j = (i >>> 8) & 16777215;
        int i2 = this.f1848b;
        boolean z = (i & i2) == i2 && (i2 != 192 || (i & 4) == 0) && jArr[1] > 0 && jArr[2] > 0;
        boolean z2 = (z && z == this.f1853g && (i & 255) == (this.f1855i & 255) && (j == this.f1849c || (z && this.f1853g && m2005a(i) && (i & 255) == (this.f1855i & 255) && (this.f1850d > jArr[2] ? 1 : (this.f1850d == jArr[2] ? 0 : -1)) == 0 && (this.f1851e > jArr[3] ? 1 : (this.f1851e == jArr[3] ? 0 : -1)) == 0)) && this.f1850d == jArr[2] && this.f1851e == jArr[3]) ? false : true;
        if (z2) {
            this.f1852f = 0;
            this.f1854h = jArr[1];
        }
        this.f1853g = z;
        this.f1849c = j;
        this.f1850d = jArr[2];
        this.f1851e = jArr[3];
        this.f1855i = i;
        return z2;
    }

    /* renamed from: b */
    boolean m2009b() {
        if (!this.f1853g) {
            return false;
        }
        int i = this.f1852f + 1;
        this.f1852f = i;
        return i == m2006c();
    }

    /* renamed from: d */
    boolean m2010d() {
        return this.f1853g && this.f1852f < m2006c();
    }

    /* renamed from: e */
    boolean m2011e() {
        return this.f1853g && this.f1852f >= m2006c();
    }

    FoldFrameWindow(int i, int i2) {
        this.f1849c = -1L;
        if (i < 2 || i > 60) {
            throw new IllegalArgumentException("静止帧数需在 2–60 之间");
        }
        this.f1847a = i;
        this.f1848b = i2;
    }

    /* renamed from: a */
    private boolean m2005a(int i) {
        return this.f1848b == 72 && (i & 16) != 0;
    }

    /* renamed from: a */
    String m2007a() {
        return "flags=0x" + Integer.toHexString(this.f1855i & 255) + " paint=" + this.f1849c + " exact=" + this.f1853g + " quiet=" + this.f1852f + "/" + m2006c() + " at=" + this.f1854h;
    }
}
