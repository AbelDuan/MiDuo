package dev.duo.hookprobe;

/* loaded from: classes.dex */
final class Q {
    final java.lang.Class<?> a;
    private final java.lang.reflect.Method b;
    private final java.lang.reflect.Method c;
    private final java.lang.reflect.Method d;
    private final java.lang.reflect.Method e;
    private final java.lang.reflect.Method f;
    private final java.lang.reflect.Method g;
    private final java.lang.reflect.Method h;
    private final java.lang.reflect.Method i;
    private final java.lang.reflect.Method j;
    private final java.lang.reflect.Constructor<?> k;
    private final java.lang.reflect.Constructor<?> l;
    private final int m;
    private final android.view.DisplayCutout n = new android.view.DisplayCutout(android.graphics.Insets.NONE, null, null, null, null);

    Q(java.lang.ClassLoader classLoader, boolean z) throws java.lang.ReflectiveOperationException {
        java.lang.Class<?> cls = java.lang.Class.forName("android.view.InsetsState", false, classLoader);
        this.a = cls;
        this.b = cls.getDeclaredMethod("getDisplayFrame", null);
        this.c = cls.getDeclaredMethod("getDisplayCutout", null);
        this.d = cls.getDeclaredMethod("setDisplayCutout", android.view.DisplayCutout.class);
        java.lang.Class<?> cls2 = java.lang.Class.forName("android.view.InsetsSource", false, classLoader);
        this.e = cls2.getDeclaredMethod("getType", null);
        this.f = cls2.getDeclaredMethod("getFrame", null);
        this.g = cls2.getDeclaredMethod("setFrame", android.graphics.Rect.class);
        this.h = cls2.getDeclaredMethod("updateSideHint", android.graphics.Rect.class);
        java.lang.Class cls3 = java.lang.Integer.TYPE;
        this.k = cls2.getDeclaredConstructor(cls3, cls3);
        this.l = z ? cls2.getDeclaredConstructor(cls2) : null;
        this.i = cls2.getDeclaredMethod("setVisible", java.lang.Boolean.TYPE);
        this.j = android.view.DisplayCutout.class.getDeclaredMethod("replaceSafeInsets", android.graphics.Rect.class);
        this.m = ((java.lang.Integer) cls2.getDeclaredMethod("createId", java.lang.Object.class, cls3, cls3).invoke(null, null, 1, java.lang.Integer.valueOf(android.view.WindowInsets.Type.displayCutout()))).intValue();
    }

    android.graphics.Rect a(java.lang.Object obj) throws java.lang.ReflectiveOperationException {
        return (android.graphics.Rect) this.b.invoke(obj, null);
    }

    static java.lang.String a(android.graphics.Rect rect) {
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

    void a(java.lang.Object obj, android.util.SparseArray<?> sparseArray, android.graphics.Rect rect, int i, boolean z) throws java.lang.ReflectiveOperationException {
        if (z) {
            android.view.DisplayCutout displayCutout = (android.view.DisplayCutout) this.c.invoke(obj, null);
            if (displayCutout == null) {
                displayCutout = this.n;
            }
            android.view.DisplayCutout displayCutout2 = (android.view.DisplayCutout) this.j.invoke(displayCutout, new android.graphics.Rect(displayCutout.getSafeInsetLeft(), i, displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom()));
            java.lang.Object obj2 = sparseArray.get(this.m);
            if (obj2 == null) {
                obj2 = this.k.newInstance(java.lang.Integer.valueOf(this.m), java.lang.Integer.valueOf(android.view.WindowInsets.Type.displayCutout()));
            } else {
                java.lang.reflect.Constructor<?> constructor = this.l;
                if (constructor != null) {
                    obj2 = constructor.newInstance(obj2);
                }
            }
            int i2 = rect.left;
            int i3 = rect.top;
            android.graphics.Rect rect2 = new android.graphics.Rect(i2, i3, rect.right, i + i3);
            for (int i4 = 0; i4 < sparseArray.size(); i4++) {
                java.lang.Object valueAt = sparseArray.valueAt(i4);
                if (((java.lang.Integer) this.e.invoke(valueAt, null)).intValue() == android.view.WindowInsets.Type.statusBars()) {
                    java.lang.reflect.Constructor<?> constructor2 = this.l;
                    if (constructor2 != null) {
                        valueAt = constructor2.newInstance(valueAt);
                        sparseArray.setValueAt(i4, valueAt);
                    }
                    this.g.invoke(valueAt, rect2);
                    this.h.invoke(valueAt, rect);
                }
            }
            this.g.invoke(obj2, rect2);
            this.i.invoke(obj2, java.lang.Boolean.TRUE);
            this.h.invoke(obj2, rect);
            sparseArray.put(this.m, obj2);
            this.d.invoke(obj, displayCutout2);
            return;
        }
        int i5 = 0;
        for (int size = sparseArray.size() - 1; size >= 0; size--) {
            java.lang.Object valueAt2 = sparseArray.valueAt(size);
            int intValue = ((java.lang.Integer) this.e.invoke(valueAt2, null)).intValue();
            if (intValue == android.view.WindowInsets.Type.statusBars()) {
                java.lang.reflect.Constructor<?> constructor3 = this.l;
                if (constructor3 != null) {
                    valueAt2 = constructor3.newInstance(valueAt2);
                    sparseArray.setValueAt(size, valueAt2);
                }
                this.g.invoke(valueAt2, new android.graphics.Rect(0, 0, rect.width(), i));
            } else if (intValue == android.view.WindowInsets.Type.displayCutout()) {
                android.graphics.Rect rect3 = (android.graphics.Rect) this.f.invoke(valueAt2, null);
                if (i5 == 0 && rect3.top <= rect.top && rect3.height() > 0 && rect3.height() < rect.height() / 2 && rect3.width() >= rect.width() / 2) {
                    java.lang.reflect.Constructor<?> constructor4 = this.l;
                    if (constructor4 != null) {
                        valueAt2 = constructor4.newInstance(valueAt2);
                        sparseArray.setValueAt(size, valueAt2);
                    }
                    java.lang.reflect.Method method = this.g;
                    int i6 = rect3.left;
                    int i7 = rect3.top;
                    method.invoke(valueAt2, new android.graphics.Rect(i6, i7, rect3.right, i7 + i));
                    i5++;
                } else {
                    sparseArray.removeAt(size);
                }
            }
        }
        this.d.invoke(obj, new android.view.DisplayCutout(android.graphics.Insets.of(0, i, 0, 0), null, null, null, null));
    }
}
