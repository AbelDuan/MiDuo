package dev.duo.taskcore;

/* loaded from: classes.dex */
final class e {
    private static java.lang.reflect.Method a;
    private static java.lang.reflect.Method b;
    private static java.lang.reflect.Method c;

    private e() {
    }

    static synchronized void a(android.view.SurfaceControl.Transaction transaction, android.view.SurfaceControl surfaceControl, int i, int i2) {
        synchronized (dev.duo.taskcore.e.class) {
            try {
                if (a == null) {
                    java.lang.Class cls = java.lang.Integer.TYPE;
                    a = android.view.SurfaceControl.Transaction.class.getMethod("setWindowCrop", android.view.SurfaceControl.class, cls, cls);
                }
                a.invoke(transaction, surfaceControl, java.lang.Integer.valueOf(i), java.lang.Integer.valueOf(i2));
            } catch (java.lang.ReflectiveOperationException e) {
                throw new java.lang.IllegalStateException("setWindowCrop", e);
            }
        }
    }

    static synchronized void a(android.view.SurfaceControl.Transaction transaction, android.view.SurfaceControl surfaceControl, android.graphics.Rect rect) {
        synchronized (dev.duo.taskcore.e.class) {
            try {
                if (b == null) {
                    b = android.view.SurfaceControl.Transaction.class.getMethod("setWindowCrop", android.view.SurfaceControl.class, android.graphics.Rect.class);
                }
                b.invoke(transaction, surfaceControl, rect);
            } catch (java.lang.ReflectiveOperationException e) {
                throw new java.lang.IllegalStateException("setWindowCrop", e);
            }
        }
    }

    static synchronized void a(android.view.SurfaceControl.Transaction transaction, android.view.SurfaceControl surfaceControl, float f) {
        synchronized (dev.duo.taskcore.e.class) {
            try {
                if (c == null) {
                    c = android.view.SurfaceControl.Transaction.class.getMethod("setCornerRadius", android.view.SurfaceControl.class, java.lang.Float.TYPE);
                }
                c.invoke(transaction, surfaceControl, java.lang.Float.valueOf(f));
            } catch (java.lang.ReflectiveOperationException e) {
                throw new java.lang.IllegalStateException("setCornerRadius", e);
            }
        }
    }
}
