package dev.duo.fold;

/* loaded from: classes.dex */
final class Surfaces {
    private static final java.lang.reflect.Method a;
    private static final java.lang.reflect.Method b;
    private static final java.lang.reflect.Method c;
    private static final java.lang.reflect.Method d;
    private static final java.lang.reflect.Method e;
    private static final java.lang.reflect.Method f;

    static {
        try {
            a = android.view.SurfaceControl.Transaction.class.getDeclaredMethod("setLayerStack", android.view.SurfaceControl.class, java.lang.Integer.TYPE);
            b = android.view.SurfaceControl.Transaction.class.getDeclaredMethod("show", android.view.SurfaceControl.class);
            c = android.view.SurfaceControl.Transaction.class.getDeclaredMethod("hide", android.view.SurfaceControl.class);
            java.lang.Class cls = java.lang.Float.TYPE;
            d = android.view.SurfaceControl.Transaction.class.getDeclaredMethod("setMatrix", android.view.SurfaceControl.class, cls, cls, cls, cls);
            e = android.view.SurfaceControl.Builder.class.getDeclaredMethod("setContainerLayer", null);
            f = android.view.SurfaceControl.class.getDeclaredMethod("mirrorSurface", android.view.SurfaceControl.class);
        } catch (java.lang.NoSuchMethodException e2) {
            throw new java.lang.ExceptionInInitializerError(e2);
        }
    }

    private Surfaces() {
    }

    static void a(android.view.SurfaceControl.Transaction transaction, android.view.SurfaceControl surfaceControl, int i) throws java.lang.Exception {
        a.invoke(transaction, surfaceControl, java.lang.Integer.valueOf(i));
    }

    static void b(android.view.SurfaceControl.Transaction transaction, android.view.SurfaceControl surfaceControl) throws java.lang.Exception {
        b.invoke(transaction, surfaceControl);
    }

    static void a(android.view.SurfaceControl.Transaction transaction, android.view.SurfaceControl surfaceControl) throws java.lang.Exception {
        c.invoke(transaction, surfaceControl);
    }

    static void a(android.view.SurfaceControl.Transaction transaction, android.view.SurfaceControl surfaceControl, float f2, float f3, float f4, float f5) throws java.lang.Exception {
        d.invoke(transaction, surfaceControl, java.lang.Float.valueOf(f2), java.lang.Float.valueOf(f3), java.lang.Float.valueOf(f4), java.lang.Float.valueOf(f5));
    }

    static android.view.SurfaceControl a(java.lang.String str) throws java.lang.Exception {
        android.view.SurfaceControl.Builder name = new android.view.SurfaceControl.Builder().setName(str);
        e.invoke(name, null);
        return name.build();
    }

    static android.view.SurfaceControl a(android.view.SurfaceControl surfaceControl) throws java.lang.Exception {
        return (android.view.SurfaceControl) f.invoke(null, surfaceControl);
    }
}
