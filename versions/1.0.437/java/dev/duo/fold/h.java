package dev.duo.fold;

/* loaded from: classes.dex */
final class h {
    private final java.lang.Object a;
    private final dev.duo.fold.e b;
    final android.view.SurfaceControl[] c = new android.view.SurfaceControl[3];
    final android.view.SurfaceControl[] d = new android.view.SurfaceControl[3];
    final android.view.SurfaceControl[][] e = new android.view.SurfaceControl[3][];

    h(java.lang.Object obj, dev.duo.fold.e eVar) {
        this.a = obj;
        this.b = eVar;
    }

    android.os.Bundle a(int i, int i2, int i3) throws java.lang.Exception {
        android.os.Bundle a = this.b.a(i, i2, i3);
        if (a.containsKey("unavailable")) {
            return a;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        arrayList.add((android.view.SurfaceControl) a.getBundle("home").getParcelable("mirror"));
        java.util.ArrayList parcelableArrayList = a.getBundle(dev.duo.hookprobe.J.c).getParcelableArrayList("layers");
        int size = parcelableArrayList.size();
        int i4 = 0;
        while (i4 < size) {
            java.lang.Object obj = parcelableArrayList.get(i4);
            i4++;
            arrayList.add((android.view.SurfaceControl) ((android.os.Bundle) obj).getParcelable("mirror"));
        }
        this.e[i] = (android.view.SurfaceControl[]) arrayList.toArray(new android.view.SurfaceControl[0]);
        return a;
    }

    void a(int i, dev.duo.fold.g.a aVar, android.os.Bundle bundle) throws java.lang.Exception {
        int i2;
        int i3;
        android.view.SurfaceControl surfaceControl;
        char c;
        android.os.Bundle bundle2 = bundle.getBundle(dev.duo.hookprobe.J.c);
        if (bundle.getInt("width") == aVar.a && bundle.getInt("height") == aVar.b && bundle2.getInt("width") == aVar.a && bundle2.getInt("height") == aVar.b) {
            int i4 = i == 0 ? 13640820 : 13640821;
            this.d[i] = dev.duo.fold.Surfaces.a("MiDuoFold-source-" + i);
            android.os.Bundle bundle3 = bundle.getBundle("home");
            java.util.ArrayList arrayList = new java.util.ArrayList();
            arrayList.add(bundle3);
            arrayList.addAll(bundle2.getParcelableArrayList("layers"));
            java.util.ArrayList arrayList2 = new java.util.ArrayList(java.util.Arrays.asList(this.e[i]));
            int i5 = 0;
            try {
                android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                try {
                    dev.duo.fold.Surfaces.a(transaction, this.d[i], i4);
                    dev.duo.fold.Surfaces.b(transaction, this.d[i]);
                    android.view.SurfaceControl a = dev.duo.fold.Surfaces.a("MiDuoFold-glass-" + i);
                    arrayList2.add(a);
                    transaction.reparent(a, this.d[i]).setPosition(a, 0.0f, aVar.b).setCrop(a, new android.graphics.Rect(0, 0, aVar.a, aVar.b));
                    dev.duo.fold.Surfaces.b(transaction, a);
                    android.view.SurfaceControl surfaceControl2 = (android.view.SurfaceControl) java.lang.Class.forName(dev.duo.taskcore.h.b).getMethod("mirrorWallpaperSurface", java.lang.Integer.TYPE).invoke(this.a, 0);
                    if (surfaceControl2 != null) {
                        arrayList2.add(surfaceControl2);
                        transaction.reparent(surfaceControl2, a).setLayer(surfaceControl2, -1);
                        dev.duo.fold.Surfaces.b(transaction, surfaceControl2);
                        int i6 = 0;
                        while (i6 < 2) {
                            int i7 = i5;
                            while (i7 < arrayList.size()) {
                                try {
                                    android.os.Bundle bundle4 = (android.os.Bundle) arrayList.get(i7);
                                    android.view.SurfaceControl surfaceControl3 = (android.view.SurfaceControl) bundle4.getParcelable("mirror");
                                    if (i6 == 1) {
                                        surfaceControl3 = dev.duo.fold.Surfaces.a(surfaceControl3);
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
                                        dev.duo.fold.Surfaces.a(transaction, surfaceControl, floatArray[i5], floatArray[3], floatArray[1], floatArray[4]);
                                        transaction.setPosition(surfaceControl, floatArray[2], floatArray[5]);
                                        transaction.setAlpha(surfaceControl, 1.0f);
                                    } else {
                                        i2 = i5;
                                        i3 = i7;
                                        surfaceControl = surfaceControl3;
                                        c = 2;
                                        android.graphics.Rect rect = (android.graphics.Rect) bundle4.getParcelable("frame");
                                        float f = bundle4.getFloat("scale");
                                        float[] floatArray2 = bundle4.getFloatArray("position");
                                        dev.duo.fold.Surfaces.a(transaction, surfaceControl, f, 0.0f, 0.0f, f);
                                        float f2 = 1.0f - f;
                                        transaction.setPosition(surfaceControl, floatArray2[i2] + ((rect.width() * f2) / 2.0f), floatArray2[1] + ((rect.height() * f2) / 2.0f));
                                        transaction.setAlpha(surfaceControl, bundle4.getFloat("alpha"));
                                    }
                                    dev.duo.fold.Surfaces.b(transaction, surfaceControl);
                                    i7 = i3 + 1;
                                    i5 = i2;
                                } catch (java.lang.Throwable th) {
                                    th = th;
                                    java.lang.Throwable th2 = th;
                                    try {
                                        transaction.close();
                                        throw th2;
                                    } catch (java.lang.Throwable th3) {
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
                        this.e[i] = (android.view.SurfaceControl[]) arrayList2.toArray(new android.view.SurfaceControl[i8]);
                        this.b.a(i, aVar.a, aVar.c, i4, aVar.i, false);
                        return;
                    }
                    throw new java.lang.IllegalStateException("分层玻璃壁纸镜像不可用");
                } catch (java.lang.Throwable th4) {
                    th = th4;
                }
            } catch (java.lang.Throwable th5) {
                this.e[i] = (android.view.SurfaceControl[]) arrayList2.toArray(new android.view.SurfaceControl[0]);
                throw th5;
            }
        } else {
            throw new java.lang.IllegalStateException("分层坐标与输入尺寸不符");
        }
    }

    void a(int i, dev.duo.fold.g.a aVar, boolean z) throws java.lang.Exception {
        int i2 = i == 0 ? 13640820 : i == 1 ? 13640819 : 13640821;
        java.lang.Class<?> cls = java.lang.Class.forName(dev.duo.taskcore.h.b);
        if (i == 1) {
            this.c[i] = (android.view.SurfaceControl) cls.getMethod("mirrorWallpaperSurface", java.lang.Integer.TYPE).invoke(this.a, 0);
        } else {
            java.lang.reflect.Constructor declaredConstructor = android.view.SurfaceControl.class.getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            this.c[i] = (android.view.SurfaceControl) declaredConstructor.newInstance(null);
            if (!((java.lang.Boolean) cls.getMethod("mirrorDisplay", java.lang.Integer.TYPE, android.view.SurfaceControl.class).invoke(this.a, 0, this.c[i])).booleanValue()) {
                throw new java.lang.IllegalStateException("整屏镜像创建失败 slot=" + i);
            }
        }
        android.view.SurfaceControl surfaceControl = this.c[i];
        if (surfaceControl != null && surfaceControl.isValid()) {
            this.d[i] = dev.duo.fold.Surfaces.a("MiDuoFold-source-" + i);
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                dev.duo.fold.Surfaces.a(transaction, this.d[i], i2);
                transaction.reparent(this.c[i], this.d[i]);
                dev.duo.fold.Surfaces.b(transaction, this.d[i]);
                dev.duo.fold.Surfaces.b(transaction, this.c[i]);
                transaction.apply();
                transaction.close();
                this.b.a(i, aVar.a, aVar.b, i2, aVar.i, z);
            } finally {
            }
        } else {
            throw new java.lang.IllegalStateException("镜像图层无效 slot=" + i);
        }
    }

    void a(int i) throws java.lang.Exception {
        try {
            this.b.a(i);
            e = null;
        } catch (java.lang.Exception e) {
            e = e;
        }
        for (int i2 = 0; i2 < this.c.length; i2++) {
            if (i == -1 || i == i2) {
                java.util.ArrayList arrayList = new java.util.ArrayList();
                arrayList.add(this.c[i2]);
                arrayList.add(this.d[i2]);
                android.view.SurfaceControl[] surfaceControlArr = this.e[i2];
                if (surfaceControlArr != null) {
                    java.util.Collections.addAll(arrayList, surfaceControlArr);
                }
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    java.lang.Object obj = arrayList.get(i3);
                    i3++;
                    android.view.SurfaceControl surfaceControl = (android.view.SurfaceControl) obj;
                    if (surfaceControl != null) {
                        try {
                            try {
                                if (surfaceControl.isValid()) {
                                    android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                                    try {
                                        dev.duo.fold.Surfaces.a(transaction, surfaceControl);
                                        transaction.reparent(surfaceControl, null);
                                        transaction.apply();
                                        transaction.close();
                                    } catch (java.lang.Throwable th) {
                                        try {
                                            transaction.close();
                                        } catch (java.lang.Throwable th2) {
                                            th.addSuppressed(th2);
                                        }
                                        throw th;
                                    }
                                }
                            } catch (java.lang.Exception e2) {
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
                android.view.SurfaceControl[] surfaceControlArr2 = this.c;
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
