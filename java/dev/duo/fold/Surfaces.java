package dev.duo.fold;

import android.view.SurfaceControl;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
final class Surfaces {

    /* renamed from: a */
    private static final Method f624a;

    /* renamed from: b */
    private static final Method f625b;

    /* renamed from: c */
    private static final Method f626c;

    /* renamed from: d */
    private static final Method f627d;

    /* renamed from: e */
    private static final Method f628e;

    /* renamed from: f */
    private static final Method f629f;

    static {
        try {
            f624a = SurfaceControl.Transaction.class.getDeclaredMethod("setLayerStack", SurfaceControl.class, Integer.TYPE);
            f625b = SurfaceControl.Transaction.class.getDeclaredMethod("show", SurfaceControl.class);
            f626c = SurfaceControl.Transaction.class.getDeclaredMethod("hide", SurfaceControl.class);
            Class cls = Float.TYPE;
            f627d = SurfaceControl.Transaction.class.getDeclaredMethod("setMatrix", SurfaceControl.class, cls, cls, cls, cls);
            f628e = SurfaceControl.Builder.class.getDeclaredMethod("setContainerLayer", null);
            f629f = SurfaceControl.class.getDeclaredMethod("mirrorSurface", SurfaceControl.class);
        } catch (NoSuchMethodException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    private Surfaces() {
    }

    /* renamed from: a */
    static void m639a(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, int i) throws Exception {
        f624a.invoke(transaction, surfaceControl, Integer.valueOf(i));
    }

    /* renamed from: b */
    static void m640b(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) throws Exception {
        f625b.invoke(transaction, surfaceControl);
    }

    /* renamed from: a */
    static void m637a(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) throws Exception {
        f626c.invoke(transaction, surfaceControl);
    }

    /* renamed from: a */
    static void m638a(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, float f, float f2, float f3, float f4) throws Exception {
        f627d.invoke(transaction, surfaceControl, Float.valueOf(f), Float.valueOf(f2), Float.valueOf(f3), Float.valueOf(f4));
    }

    /* renamed from: a */
    static SurfaceControl m636a(String str) throws Exception {
        SurfaceControl.Builder name = new SurfaceControl.Builder().setName(str);
        f628e.invoke(name, null);
        return name.build();
    }

    /* renamed from: a */
    static SurfaceControl m635a(SurfaceControl surfaceControl) throws Exception {
        return (SurfaceControl) f629f.invoke(null, surfaceControl);
    }
}
