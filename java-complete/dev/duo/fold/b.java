package dev.duo.fold;

import dev.duo.fold.f;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class b {
    final float a;
    final float b;
    final float c;
    final long d;

    b(float f, float f2, float f3, long j) {
        if (!Float.isFinite(f) || f < 2.0f || f > 8.0f || !Float.isFinite(f2) || f2 < 130.0f || f2 > 177.0f || !Float.isFinite(f3) || f3 < 3.0f || f3 > 20.0f || j < 0 || j > 100) {
            throw new IllegalArgumentException("开合触发参数超出范围");
        }
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = j;
    }

    boolean a(float f, f.a aVar, boolean z) {
        return z && aVar == dev.duo.fold.f.a.OPEN && f >= this.a;
    }

    boolean a(long j, long j2, f.a aVar) {
        return aVar == f.a.OPEN && j2 >= 0 && j - j2 >= this.d;
    }
}
