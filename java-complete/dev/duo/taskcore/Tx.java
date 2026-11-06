package dev.duo.taskcore;

import android.graphics.Rect;
import android.view.SurfaceControl;
import java.lang.reflect.Method;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class Tx {
    private static Method cornerRadius;
    private static Method windowCropRect;
    private static Method windowCropSize;

    private Tx() {
    }

    static synchronized void windowCrop(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, int i, int i2) {
        synchronized (dev.duo.taskcore.Tx.class) {
            try {
                if (windowCropSize == null) {
                    windowCropSize = SurfaceControl.Transaction.class.getMethod("setWindowCrop", SurfaceControl.class, Integer.TYPE, Integer.TYPE);
                }
                windowCropSize.invoke(transaction, surfaceControl, Integer.valueOf(i), Integer.valueOf(i2));
            } catch (ReflectiveOperationException e) {
                throw new IllegalStateException("setWindowCrop", e);
            }
        }
    }

    static synchronized void windowCrop(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, Rect rect) {
        synchronized (dev.duo.taskcore.Tx.class) {
            try {
                if (windowCropRect == null) {
                    windowCropRect = SurfaceControl.Transaction.class.getMethod("setWindowCrop", SurfaceControl.class, Rect.class);
                }
                windowCropRect.invoke(transaction, surfaceControl, rect);
            } catch (ReflectiveOperationException e) {
                throw new IllegalStateException("setWindowCrop", e);
            }
        }
    }

    static synchronized void corner(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, float f) {
        synchronized (dev.duo.taskcore.Tx.class) {
            try {
                if (cornerRadius == null) {
                    cornerRadius = SurfaceControl.Transaction.class.getMethod("setCornerRadius", SurfaceControl.class, Float.TYPE);
                }
                cornerRadius.invoke(transaction, surfaceControl, Float.valueOf(f));
            } catch (ReflectiveOperationException e) {
                throw new IllegalStateException("setCornerRadius", e);
            }
        }
    }
}
