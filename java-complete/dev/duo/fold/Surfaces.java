package dev.duo.fold;

import android.view.SurfaceControl;
import java.lang.reflect.Method;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class Surfaces {
    private static final Method a;
    private static final Method b;
    private static final Method c;
    private static final Method d;
    private static final Method e;
    private static final Method f;

    static {
        try {
            a = SurfaceControl.Transaction.class.getDeclaredMethod("setLayerStack", SurfaceControl.class, Integer.TYPE);
            b = SurfaceControl.Transaction.class.getDeclaredMethod("show", SurfaceControl.class);
            c = SurfaceControl.Transaction.class.getDeclaredMethod("hide", SurfaceControl.class);
            Class cls = Float.TYPE;
            d = SurfaceControl.Transaction.class.getDeclaredMethod("setMatrix", SurfaceControl.class, cls, cls, cls, cls);
            e = SurfaceControl.Builder.class.getDeclaredMethod("setContainerLayer", null);
            f = SurfaceControl.class.getDeclaredMethod("mirrorSurface", SurfaceControl.class);
        } catch (NoSuchMethodException e2) {
            throw new ExceptionInInitializerError(e2);
        }
    }

    private Surfaces() {
    }

    static void a(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, int i) throws Exception {
        dev.duo.fold.a.invoke(transaction, surfaceControl, Integer.valueOf(i));
    }

    static void b(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) throws Exception {
        dev.duo.fold.b.invoke(transaction, surfaceControl);
    }

    static void a(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) throws Exception {
        dev.duo.fold.c.invoke(transaction, surfaceControl);
    }

    static void a(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, float f2, float f3, float f4, float f5) throws Exception {
        dev.duo.fold.d.invoke(transaction, surfaceControl, Float.valueOf(f2), Float.valueOf(f3), Float.valueOf(f4), Float.valueOf(f5));
    }

    static SurfaceControl a(String str) throws Exception {
        SurfaceControl.Builder name = new SurfaceControl.Builder().setName(str);
        dev.duo.fold.e.invoke(name, null);
        return name.build();
    }

    static SurfaceControl a(SurfaceControl surfaceControl) throws Exception {
        return (SurfaceControl) dev.duo.fold.f.invoke(null, surfaceControl);
    }
}
