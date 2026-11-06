package dev.duo.fold;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.SurfaceControl;
import dev.duo.fold.FoldShader;
import dev.duo.hookprobe.RailCodec;
import dev.duo.taskcore.WorkspaceProtocol;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* renamed from: dev.duo.fold.h */
/* loaded from: classes.dex */
final class FoldRenderer {

    /* renamed from: a */
    private final Object f744a;

    /* renamed from: b */
    private final DisplayControlBinder f745b;

    /* renamed from: c */
    final SurfaceControl[] f746c = new SurfaceControl[3];

    /* renamed from: d */
    final SurfaceControl[] f747d = new SurfaceControl[3];

    /* renamed from: e */
    final SurfaceControl[][] f748e = new SurfaceControl[3][];

    FoldRenderer(Object obj, DisplayControlBinder c0036e) {
        this.f744a = obj;
        this.f745b = c0036e;
    }

    /* renamed from: a */
    Bundle m733a(int i, int i2, int i3) throws Exception {
        Bundle m673a = this.f745b.m673a(i, i2, i3);
        if (m673a.containsKey("unavailable")) {
            return m673a;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add((SurfaceControl) m673a.getBundle("home").getParcelable("mirror"));
        ArrayList parcelableArrayList = m673a.getBundle(RailCodec.f920c).getParcelableArrayList("layers");
        int size = parcelableArrayList.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = parcelableArrayList.get(i4);
            i4++;
            arrayList.add((SurfaceControl) ((Bundle) obj).getParcelable("mirror"));
        }
        this.f748e[i] = (SurfaceControl[]) arrayList.toArray(new SurfaceControl[0]);
        return m673a;
    }

    /* renamed from: a */
    void m735a(int i, FoldShader.a aVar, Bundle bundle) throws Exception {
        int i2;
        int i3;
        SurfaceControl surfaceControl;
        char c;
        Bundle bundle2 = bundle.getBundle(RailCodec.f920c);
        if (bundle.getInt("width") == aVar.f716a && bundle.getInt("height") == aVar.f717b && bundle2.getInt("width") == aVar.f716a && bundle2.getInt("height") == aVar.f717b) {
            int i4 = i == 0 ? 13640820 : 13640821;
            this.f747d[i] = Surfaces.m636a("MiDuoFold-source-" + i);
            Bundle bundle3 = bundle.getBundle("home");
            ArrayList arrayList = new ArrayList();
            arrayList.add(bundle3);
            arrayList.addAll(bundle2.getParcelableArrayList("layers"));
            ArrayList arrayList2 = new ArrayList(Arrays.asList(this.f748e[i]));
            int i5 = 0;
            try {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    Surfaces.m639a(transaction, this.f747d[i], i4);
                    Surfaces.m640b(transaction, this.f747d[i]);
                    SurfaceControl m636a = Surfaces.m636a("MiDuoFold-glass-" + i);
                    arrayList2.add(m636a);
                    transaction.reparent(m636a, this.f747d[i]).setPosition(m636a, 0.0f, aVar.f717b).setCrop(m636a, new Rect(0, 0, aVar.f716a, aVar.f717b));
                    Surfaces.m640b(transaction, m636a);
                    SurfaceControl surfaceControl2 = (SurfaceControl) Class.forName(WorkspaceProtocol.INTERFACE).getMethod("mirrorWallpaperSurface", Integer.TYPE).invoke(this.f744a, 0);
                    if (surfaceControl2 != null) {
                        arrayList2.add(surfaceControl2);
                        transaction.reparent(surfaceControl2, m636a).setLayer(surfaceControl2, -1);
                        Surfaces.m640b(transaction, surfaceControl2);
                        int i6 = 0;
                        while (i6 < 2) {
                            int i7 = i5;
                            while (i7 < arrayList.size()) {
                                try {
                                    Bundle bundle4 = (Bundle) arrayList.get(i7);
                                    SurfaceControl surfaceControl3 = (SurfaceControl) bundle4.getParcelable("mirror");
                                    if (i6 == 1) {
                                        surfaceControl3 = Surfaces.m635a(surfaceControl3);
                                        arrayList2.add(surfaceControl3);
                                    }
                                    transaction.reparent(surfaceControl3, i6 == 0 ? this.f747d[i] : m636a);
                                    transaction.setLayer(surfaceControl3, i7);
                                    if (i7 == 0) {
                                        float[] floatArray = bundle3.getFloatArray("matrix");
                                        surfaceControl = surfaceControl3;
                                        i3 = i7;
                                        i2 = i5;
                                        c = 2;
                                        Surfaces.m638a(transaction, surfaceControl, floatArray[i5], floatArray[3], floatArray[1], floatArray[4]);
                                        transaction.setPosition(surfaceControl, floatArray[2], floatArray[5]);
                                        transaction.setAlpha(surfaceControl, 1.0f);
                                    } else {
                                        i2 = i5;
                                        i3 = i7;
                                        surfaceControl = surfaceControl3;
                                        c = 2;
                                        Rect rect = (Rect) bundle4.getParcelable("frame");
                                        float f = bundle4.getFloat("scale");
                                        float[] floatArray2 = bundle4.getFloatArray("position");
                                        Surfaces.m638a(transaction, surfaceControl, f, 0.0f, 0.0f, f);
                                        float f2 = 1.0f - f;
                                        transaction.setPosition(surfaceControl, floatArray2[i2] + ((rect.width() * f2) / 2.0f), floatArray2[1] + ((rect.height() * f2) / 2.0f));
                                        transaction.setAlpha(surfaceControl, bundle4.getFloat("alpha"));
                                    }
                                    Surfaces.m640b(transaction, surfaceControl);
                                    i7 = i3 + 1;
                                    i5 = i2;
                                } catch (Throwable th) {
                                    th = th;
                                    Throwable th2 = th;
                                    try {
                                        transaction.close();
                                        throw th2;
                                    } catch (Throwable th3) {
                                        th2.addSuppressed(th3);
                                        throw th2;
                                    }
                                }
                            }
                            i6++;
                        }
                        int i8 = i5;
                        transaction.apply();
                        transaction.close();
                        this.f748e[i] = (SurfaceControl[]) arrayList2.toArray(new SurfaceControl[i8]);
                        this.f745b.m675a(i, aVar.f716a, aVar.f718c, i4, aVar.f724i, false);
                        return;
                    }
                    throw new IllegalStateException("分层玻璃壁纸镜像不可用");
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                this.f748e[i] = (SurfaceControl[]) arrayList2.toArray(new SurfaceControl[0]);
                throw th5;
            }
        } else {
            throw new IllegalStateException("分层坐标与输入尺寸不符");
        }
    }

    /* renamed from: a */
    void m736a(int i, FoldShader.a aVar, boolean z) throws Exception {
        int i2 = i == 0 ? 13640820 : i == 1 ? 13640819 : 13640821;
        Class<?> cls = Class.forName(WorkspaceProtocol.INTERFACE);
        if (i == 1) {
            this.f746c[i] = (SurfaceControl) cls.getMethod("mirrorWallpaperSurface", Integer.TYPE).invoke(this.f744a, 0);
        } else {
            Constructor declaredConstructor = SurfaceControl.class.getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            this.f746c[i] = (SurfaceControl) declaredConstructor.newInstance(null);
            if (!((Boolean) cls.getMethod("mirrorDisplay", Integer.TYPE, SurfaceControl.class).invoke(this.f744a, 0, this.f746c[i])).booleanValue()) {
                throw new IllegalStateException("整屏镜像创建失败 slot=" + i);
            }
        }
        SurfaceControl surfaceControl = this.f746c[i];
        if (surfaceControl != null && surfaceControl.isValid()) {
            this.f747d[i] = Surfaces.m636a("MiDuoFold-source-" + i);
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                Surfaces.m639a(transaction, this.f747d[i], i2);
                transaction.reparent(this.f746c[i], this.f747d[i]);
                Surfaces.m640b(transaction, this.f747d[i]);
                Surfaces.m640b(transaction, this.f746c[i]);
                transaction.apply();
                transaction.close();
                this.f745b.m675a(i, aVar.f716a, aVar.f717b, i2, aVar.f724i, z);
            } finally {
            }
        } else {
            throw new IllegalStateException("镜像图层无效 slot=" + i);
        }
    }

    /* renamed from: a */
    void m734a(int i) throws Exception {
        try {
            this.f745b.m674a(i);
            e = null;
        } catch (Exception e) {
            e = e;
        }
        for (int i2 = 0; i2 < this.f746c.length; i2++) {
            if (i == -1 || i == i2) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.f746c[i2]);
                arrayList.add(this.f747d[i2]);
                SurfaceControl[] surfaceControlArr = this.f748e[i2];
                if (surfaceControlArr != null) {
                    Collections.addAll(arrayList, surfaceControlArr);
                }
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    SurfaceControl surfaceControl = (SurfaceControl) obj;
                    if (surfaceControl != null) {
                        try {
                            try {
                                if (surfaceControl.isValid()) {
                                    SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                                    try {
                                        Surfaces.m637a(transaction, surfaceControl);
                                        transaction.reparent(surfaceControl, null);
                                        transaction.apply();
                                        transaction.close();
                                    } catch (Throwable th) {
                                        try {
                                            transaction.close();
                                        } catch (Throwable th2) {
                                            th.addSuppressed(th2);
                                        }
                                        throw th;
                                    }
                                }
                            } catch (Exception e2) {
                                if (e == null) {
                                    e = e2;
                                } else {
                                    e.addSuppressed(e2);
                                }
                            }
                        } finally {
                            surfaceControl.release();
                        }
                    }
                }
                SurfaceControl[] surfaceControlArr2 = this.f746c;
                this.f747d[i2] = null;
                surfaceControlArr2[i2] = null;
                this.f748e[i2] = null;
            }
        }
        if (e != null) {
            throw e;
        }
    }
}
