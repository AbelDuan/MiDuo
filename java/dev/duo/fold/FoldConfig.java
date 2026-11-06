package dev.duo.fold;

import dev.duo.fold.FoldTexture;

/* renamed from: dev.duo.fold.b */
/* loaded from: classes.dex */
final class FoldConfig {

    /* renamed from: a */
    final float f643a;

    /* renamed from: b */
    final float f644b;

    /* renamed from: c */
    final float f645c;

    /* renamed from: d */
    final long f646d;

    FoldConfig(float f, float f2, float f3, long j) {
        if (!Float.isFinite(f) || f < 2.0f || f > 8.0f || !Float.isFinite(f2) || f2 < 130.0f || f2 > 177.0f || !Float.isFinite(f3) || f3 < 3.0f || f3 > 20.0f || j < 0 || j > 100) {
            throw new IllegalArgumentException("开合触发参数超出范围");
        }
        this.f643a = f;
        this.f644b = f2;
        this.f645c = f3;
        this.f646d = j;
    }

    /* renamed from: a */
    boolean m649a(float f, FoldTexture.a aVar, boolean z) {
        return z && aVar == FoldTexture.a.OPEN && f >= this.f643a;
    }

    /* renamed from: a */
    boolean m650a(long j, long j2, FoldTexture.a aVar) {
        return aVar == FoldTexture.a.OPEN && j2 >= 0 && j - j2 >= this.f646d;
    }
}
