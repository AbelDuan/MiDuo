package dev.duo.fold;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.SurfaceControl;
import dev.duo.fold.g;
import dev.duo.hookprobe.J;
import dev.duo.taskcore.WorkspaceProtocol;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class h {
    private final Object a;
    private final e b;
    final SurfaceControl[] c = new SurfaceControl[3];
    final SurfaceControl[] d = new SurfaceControl[3];
    final SurfaceControl[][] e = new SurfaceControl[3][];

    h(Object obj, e eVar) {
        this.a = obj;
        this.b = eVar;
    }

    Bundle a(int i, int i2, int i3) throws Exception {
        Bundle a = this.b.a(i, i2, i3);
        if (a.containsKey("unavailable")) {
            return a;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add((SurfaceControl) a.getBundle("home").getParcelable("mirror"));
        ArrayList parcelableArrayList = a.getBundle(J.c).getParcelableArrayList("layers");
        int size = parcelableArrayList.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = parcelableArrayList.get(i4);
            i4++;
            arrayList.add((SurfaceControl) ((Bundle) obj).getParcelable("mirror"));
        }
        this.e[i] = (SurfaceControl[]) arrayList.toArray(new SurfaceControl[0]);
        return a;
    }

    void a(int i, g.a aVar, Bundle bundle) throws Exception {
        int i2;
        int i3;
        SurfaceControl surfaceControl;
        char c;
        Bundle bundle2 = bundle.getBundle(J.c);
        if (bundle.getInt("width") == aVar.a && bundle.getInt("height") == aVar.b && bundle2.getInt("width") == aVar.a && bundle2.getInt("height") == aVar.b) {
            int i4 = i == 0 ? 13640820 : 13640821;
            this.d[i] = Surfaces.a("MiDuoFold-source-" + i);
            Bundle bundle3 = bundle.getBundle("home");
            ArrayList arrayList = new ArrayList();
            arrayList.add(bundle3);
            arrayList.addAll(bundle2.getParcelableArrayList("layers"));
            ArrayList arrayList2 = new ArrayList(Arrays.asList(this.e[i]));
            int i5 = 0;
            try {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    Surfaces.a(transaction, this.d[i], i4);
                    Surfaces.b(transaction, this.d[i]);
                    SurfaceControl a = Surfaces.a("MiDuoFold-glass-" + i);
                    arrayList2.add(a);
                    transaction.reparent(a, this.d[i]).setPosition(a, 0.0f, aVar.b).setCrop(a, new Rect(0, 0, aVar.a, aVar.b));
                    Surfaces.b(transaction, a);
                    SurfaceControl surfaceControl2 = (SurfaceControl) Class.forName(WorkspaceProtocol.INTERFACE).getMethod("mirrorWallpaperSurface", Integer.TYPE).invoke(this.a, 0);
                    if (surfaceControl2 != null) {
                        arrayList2.add(surfaceControl2);
                        transaction.reparent(surfaceControl2, a).setLayer(surfaceControl2, -1);
                        Surfaces.b(transaction, surfaceControl2);
                        int i6 = 0;
                        while (i6 < 2) {
                            int i7 = i5;
                            while (i7 < arrayList.size()) {
                                try {
                                    Bundle bundle4 = (Bundle) arrayList.get(i7);
                                    SurfaceControl surfaceControl3 = (SurfaceControl) bundle4.getParcelable("mirror");
                                    if (i6 == 1) {
                                        surfaceControl3 = Surfaces.a(surfaceControl3);
                                        arrayList2.add(surfaceControl3);
                                    }
                                    transaction.reparent(surfaceControl3, i6 == 0 ? this.d[i] : a);
                                    transaction.setLayer(surfaceControl3, i7);
                                    if (i7 == 0) {
                                        float[] floatArray = bundle3.getFloatArray("matrix");
                                        surfaceControl = surfaceControl3;
                                        i3 = i7;
                                        i2 = i5;
                                        c = 2;
                                        Surfaces.a(transaction, surfaceControl, floatArray[i5], floatArray[3], floatArray[1], floatArray[4]);
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
                                        Surfaces.a(transaction, surfaceControl, f, 0.0f, 0.0f, f);
                                        float f2 = 1.0f - f;
                                        transaction.setPosition(surfaceControl, floatArray2[i2] + ((rect.width() * f2) / 2.0f), floatArray2[1] + ((rect.height() * f2) / 2.0f));
                                        transaction.setAlpha(surfaceControl, bundle4.getFloat("alpha"));
                                    }
                                    Surfaces.b(transaction, surfaceControl);
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
                        this.e[i] = (SurfaceControl[]) arrayList2.toArray(new SurfaceControl[i8]);
                        this.b.a(i, aVar.a, aVar.c, i4, aVar.i, false);
                        return;
                    }
                    throw new IllegalStateException("分层玻璃壁纸镜像不可用");
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                this.e[i] = (SurfaceControl[]) arrayList2.toArray(new SurfaceControl[0]);
                throw th5;
            }
        } else {
            throw new IllegalStateException("分层坐标与输入尺寸不符");
        }
    }

    void a(int i, g.a aVar, boolean z) throws Exception {
        int i2 = i == 0 ? 13640820 : i == 1 ? 13640819 : 13640821;
        Class<?> cls = Class.forName(WorkspaceProtocol.INTERFACE);
        if (i == 1) {
            this.c[i] = (SurfaceControl) cls.getMethod("mirrorWallpaperSurface", Integer.TYPE).invoke(this.a, 0);
        } else {
            Constructor declaredConstructor = SurfaceControl.class.getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            this.c[i] = (SurfaceControl) declaredConstructor.newInstance(null);
            if (!((Boolean) cls.getMethod("mirrorDisplay", Integer.TYPE, SurfaceControl.class).invoke(this.a, 0, this.c[i])).booleanValue()) {
                throw new IllegalStateException("整屏镜像创建失败 slot=" + i);
            }
        }
        SurfaceControl surfaceControl = this.c[i];
        if (surfaceControl != null && surfaceControl.isValid()) {
            this.d[i] = Surfaces.a("MiDuoFold-source-" + i);
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                Surfaces.a(transaction, this.d[i], i2);
                transaction.reparent(this.c[i], this.d[i]);
                Surfaces.b(transaction, this.d[i]);
                Surfaces.b(transaction, this.c[i]);
                transaction.apply();
                transaction.close();
                this.b.a(i, aVar.a, aVar.b, i2, aVar.i, z);
            } finally {
            }
        } else {
            throw new IllegalStateException("镜像图层无效 slot=" + i);
        }
    }

    void a(int i) throws Exception {
        Throwable e = null;
        try {
            this.b.a(i);
            e = null;
        } catch (Exception e0) {
            e = e0;
        }
        for (int i2 = 0; i2 < this.c.length; i2++) {
            if (i == -1 || i == i2) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.c[i2]);
                arrayList.add(this.d[i2]);
                SurfaceControl[] surfaceControlArr = this.e[i2];
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
                                        Surfaces.a(transaction, surfaceControl);
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
                SurfaceControl[] surfaceControlArr2 = this.c;
                this.d[i2] = null;
                surfaceControlArr2[i2] = null;
                this.e[i2] = null;
            }
        }
        if (e != null) {
            throw e;
        }
    }
}
