package dev.duo.fold;

/* renamed from: dev.duo.fold.c */
/* loaded from: classes.dex */
final class FoldGeometry {

    /* renamed from: h */
    static final long f647h = 120;

    /* renamed from: i */
    private static final int f648i = 32;

    /* renamed from: j */
    static final long f649j = 35;

    /* renamed from: k */
    static final long f650k = 120;

    /* renamed from: l */
    static final float f651l = 3.0f;

    /* renamed from: c */
    private int f654c;

    /* renamed from: d */
    private int f655d;

    /* renamed from: f */
    private long f657f;

    /* renamed from: g */
    private final float f658g;

    /* renamed from: a */
    private final float[] f652a = new float[f648i];

    /* renamed from: b */
    private final long[] f653b = new long[f648i];

    /* renamed from: e */
    private float f656e = Float.NaN;

    FoldGeometry(float f) {
        this.f658g = f;
    }

    /* renamed from: a */
    void m653a(float f, long j) {
        if (f < 0.0f || f > 360.0f) {
            return;
        }
        int i = this.f654c;
        if (i <= 0 || j >= this.f653b[((this.f655d + i) - 1) % f648i]) {
            int i2 = this.f655d;
            int i3 = (i2 + i) % f648i;
            if (i == f648i) {
                int i4 = (i2 + 1) % f648i;
                this.f655d = i4;
                int i5 = i - 1;
                this.f654c = i5;
                i3 = (i4 + i5) % f648i;
            }
            this.f652a[i3] = f;
            this.f653b[i3] = j;
            this.f654c++;
            if (Float.isNaN(this.f656e)) {
                this.f656e = f;
                this.f657f = j;
            }
        }
    }

    /* renamed from: b */
    float m656b() {
        if (this.f654c == 0) {
            return Float.NaN;
        }
        return this.f652a[((this.f655d + r0) - 1) % f648i];
    }

    /* renamed from: c */
    long m658c() {
        if (this.f654c == 0) {
            return -1L;
        }
        return this.f653b[((this.f655d + r0) - 1) % f648i];
    }

    /* renamed from: d */
    float m660d(long j) {
        int i = this.f654c;
        if (i < 2) {
            return 0.0f;
        }
        int i2 = ((this.f655d + i) - 1) % f648i;
        if (j - this.f653b[i2] > 240) {
            return 0.0f;
        }
        int i3 = i - 2;
        int i4 = i2;
        while (i3 >= 0) {
            int i5 = (this.f655d + i3) % f648i;
            long[] jArr = this.f653b;
            if (jArr[i2] - jArr[i5] > 120) {
                break;
            }
            i3--;
            i4 = i5;
        }
        if (i4 == i2) {
            i4 = ((this.f655d + this.f654c) - 2) % f648i;
            long[] jArr2 = this.f653b;
            if (jArr2[i2] - jArr2[i4] > 480) {
                return 0.0f;
            }
        }
        long[] jArr3 = this.f653b;
        long j2 = jArr3[i2] - jArr3[i4];
        if (j2 <= 0) {
            return 0.0f;
        }
        float[] fArr = this.f652a;
        return ((fArr[i2] - fArr[i4]) * 1000.0f) / j2;
    }

    /* renamed from: b */
    float m657b(long j) {
        if (this.f654c == 0) {
            return Float.NaN;
        }
        float m656b = m656b();
        long m658c = j - m658c();
        if (m658c > 0 && m658c < 120) {
            float m660d = (m660d(m658c()) * Math.min(m658c, f649j)) / 1000.0f;
            if (m658c > f649j) {
                m660d *= 1.0f - ((m658c - f649j) / 85.0f);
            }
            if (m660d > f651l) {
                m660d = 3.0f;
            }
            if (m660d < -3.0f) {
                m660d = -3.0f;
            }
            m656b += m660d;
            if (m656b < 0.0f) {
                return 0.0f;
            }
            if (m656b > 180.0f) {
                return 180.0f;
            }
        }
        return m656b;
    }

    /* renamed from: c */
    boolean m659c(long j) {
        return this.f654c > 0 && j - m658c() < 120 && m660d(m658c()) != 0.0f;
    }

    /* renamed from: a */
    boolean m654a() {
        return this.f654c == 0;
    }

    /* renamed from: a */
    float m651a(long j) {
        if (this.f654c == 0) {
            return Float.NaN;
        }
        float m657b = m657b(j);
        long max = Math.max(0L, j - this.f657f);
        this.f657f = j;
        if (this.f658g > 0.0f && max <= 250) {
            float exp = 1.0f - ((float) Math.exp((-max) / r6));
            float f = this.f656e;
            float f2 = f + ((m657b - f) * exp);
            this.f656e = f2;
            if (Math.abs(m657b - f2) < 0.05f) {
                this.f656e = m657b;
            }
            return this.f656e;
        }
        this.f656e = m657b;
        return m657b;
    }

    /* renamed from: a */
    boolean m655a(long j, long j2, float f) {
        boolean z;
        int i = this.f654c;
        if (i == 0) {
            return false;
        }
        int i2 = i - 1;
        float f2 = -3.4028235E38f;
        float f3 = Float.MAX_VALUE;
        while (true) {
            if (i2 < 0) {
                z = false;
                break;
            }
            int i3 = (this.f655d + i2) % f648i;
            if (j - this.f653b[i3] > j2) {
                z = true;
                break;
            }
            f3 = Math.min(f3, this.f652a[i3]);
            f2 = Math.max(f2, this.f652a[i3]);
            i2--;
        }
        if (f3 == Float.MAX_VALUE) {
            return true;
        }
        return z && f2 - f3 <= f;
    }

    /* renamed from: d */
    boolean m661d() {
        return this.f654c > 0 && Math.abs(m656b() - this.f656e) >= 0.05f;
    }

    /* renamed from: a */
    float m652a(long j, long j2) {
        if (this.f654c == 0) {
            return 0.0f;
        }
        float m656b = m656b();
        for (int i = this.f654c - 1; i >= 0; i--) {
            int i2 = (this.f655d + i) % f648i;
            if (j - this.f653b[i2] > j2) {
                break;
            }
            m656b = Math.max(m656b, this.f652a[i2]);
        }
        return m656b - m656b();
    }
}
