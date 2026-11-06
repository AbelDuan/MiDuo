package dev.duo.hookprobe;

import android.graphics.Insets;
import android.graphics.Rect;
import android.util.SparseArray;
import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class Q {
    final Class<?> a;
    private final Method b;
    private final Method c;
    private final Method d;
    private final Method e;
    private final Method f;
    private final Method g;
    private final Method h;
    private final Method i;
    private final Method j;
    private final Constructor<?> k;
    private final Constructor<?> l;
    private final int m;
    private final DisplayCutout n = new DisplayCutout(Insets.NONE, null, null, null, null);

    Q(ClassLoader classLoader, boolean z) throws ReflectiveOperationException {
        Class<?> cls = Class.forName("android.view.InsetsState", false, classLoader);
        this.a = cls;
        this.b = cls.getDeclaredMethod("getDisplayFrame", null);
        this.c = cls.getDeclaredMethod("getDisplayCutout", null);
        this.d = cls.getDeclaredMethod("setDisplayCutout", DisplayCutout.class);
        Class<?> cls2 = Class.forName("android.view.InsetsSource", false, classLoader);
        this.e = cls2.getDeclaredMethod("getType", null);
        this.f = cls2.getDeclaredMethod("getFrame", null);
        this.g = cls2.getDeclaredMethod("setFrame", Rect.class);
        this.h = cls2.getDeclaredMethod("updateSideHint", Rect.class);
        Class cls3 = Integer.TYPE;
        this.k = cls2.getDeclaredConstructor(cls3, cls3);
        this.l = z ? cls2.getDeclaredConstructor(cls2) : null;
        this.i = cls2.getDeclaredMethod("setVisible", Boolean.TYPE);
        this.j = DisplayCutout.class.getDeclaredMethod("replaceSafeInsets", Rect.class);
        this.m = ((Integer) cls2.getDeclaredMethod("createId", Object.class, cls3, cls3).invoke(null, null, 1, Integer.valueOf(WindowInsets.Type.displayCutout()))).intValue();
    }

    Rect a(Object obj) throws ReflectiveOperationException {
        return (Rect) this.b.invoke(obj, null);
    }

    static String a(Rect rect) {
        if (rect.height() == 1712 && (rect.width() == 1168 || rect.width() == 963)) {
            return "outer";
        }
        if (rect.width() == 2364 && rect.height() == 1672) {
            return "inner";
        }
        if (rect.width() == 1672 && rect.height() == 2364) {
            return "inner";
        }
        return null;
    }

    void a(Object obj, SparseArray<?> sparseArray, Rect rect, int i, boolean z) throws ReflectiveOperationException {
        if (z) {
            DisplayCutout displayCutout = (DisplayCutout) this.c.invoke(obj, null);
            if (displayCutout == null) {
                displayCutout = this.n;
            }
            DisplayCutout displayCutout2 = (DisplayCutout) this.j.invoke(displayCutout, new Rect(displayCutout.getSafeInsetLeft(), i, displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom()));
            Object obj2 = sparseArray.get(this.m);
            if (obj2 == null) {
                obj2 = this.k.newInstance(Integer.valueOf(this.m), Integer.valueOf(WindowInsets.Type.displayCutout()));
            } else {
                Constructor<?> constructor = this.l;
                if (constructor != null) {
                    obj2 = constructor.newInstance(obj2);
                }
            }
            int i2 = rect.left;
            int i3 = rect.top;
            Rect rect2 = new Rect(i2, i3, rect.right, i + i3);
            for (int i4 = 0; i4 < sparseArray.size(); i4++) {
                Object valueAt = sparseArray.valueAt(i4);
                if (((Integer) this.e.invoke(valueAt, null)).intValue() == WindowInsets.Type.statusBars()) {
                    Constructor<?> constructor2 = this.l;
                    if (constructor2 != null) {
                        valueAt = constructor2.newInstance(valueAt);
                        sparseArray.setValueAt(i4, valueAt);
                    }
                    this.g.invoke(valueAt, rect2);
                    this.h.invoke(valueAt, rect);
                }
            }
            this.g.invoke(obj2, rect2);
            this.i.invoke(obj2, Boolean.TRUE);
            this.h.invoke(obj2, rect);
            sparseArray.put(this.m, obj2);
            this.d.invoke(obj, displayCutout2);
            return;
        }
        int i5 = 0;
        for (int size = sparseArray.size() - 1; size >= 0; size--) {
            Object valueAt2 = sparseArray.valueAt(size);
            int intValue = ((Integer) this.e.invoke(valueAt2, null)).intValue();
            if (intValue == WindowInsets.Type.statusBars()) {
                Constructor<?> constructor3 = this.l;
                if (constructor3 != null) {
                    valueAt2 = constructor3.newInstance(valueAt2);
                    sparseArray.setValueAt(size, valueAt2);
                }
                this.g.invoke(valueAt2, new Rect(0, 0, rect.width(), i));
            } else if (intValue == WindowInsets.Type.displayCutout()) {
                Rect rect3 = (Rect) this.f.invoke(valueAt2, null);
                if (i5 == 0 && rect3.top <= rect.top && rect3.height() > 0 && rect3.height() < rect.height() / 2 && rect3.width() >= rect.width() / 2) {
                    Constructor<?> constructor4 = this.l;
                    if (constructor4 != null) {
                        valueAt2 = constructor4.newInstance(valueAt2);
                        sparseArray.setValueAt(size, valueAt2);
                    }
                    Method method = this.g;
                    int i6 = rect3.left;
                    int i7 = rect3.top;
                    method.invoke(valueAt2, new Rect(i6, i7, rect3.right, i7 + i));
                    i5++;
                } else {
                    sparseArray.removeAt(size);
                }
            }
        }
        this.d.invoke(obj, new DisplayCutout(Insets.of(0, i, 0, 0), null, null, null, null));
    }
}
