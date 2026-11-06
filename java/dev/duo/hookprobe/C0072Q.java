package dev.duo.hookprobe;

import android.graphics.Insets;
import android.graphics.Rect;
import android.util.SparseArray;
import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* renamed from: dev.duo.hookprobe.Q */
/* loaded from: classes.dex */
final class C0072Q {

    /* renamed from: a */
    final Class<?> f1196a;

    /* renamed from: b */
    private final Method f1197b;

    /* renamed from: c */
    private final Method f1198c;

    /* renamed from: d */
    private final Method f1199d;

    /* renamed from: e */
    private final Method f1200e;

    /* renamed from: f */
    private final Method f1201f;

    /* renamed from: g */
    private final Method f1202g;

    /* renamed from: h */
    private final Method f1203h;

    /* renamed from: i */
    private final Method f1204i;

    /* renamed from: j */
    private final Method f1205j;

    /* renamed from: k */
    private final Constructor<?> f1206k;

    /* renamed from: l */
    private final Constructor<?> f1207l;

    /* renamed from: m */
    private final int f1208m;

    /* renamed from: n */
    private final DisplayCutout f1209n = new DisplayCutout(Insets.NONE, null, null, null, null);

    C0072Q(ClassLoader classLoader, boolean z) throws ReflectiveOperationException {
        Class<?> cls = Class.forName("android.view.InsetsState", false, classLoader);
        this.f1196a = cls;
        this.f1197b = cls.getDeclaredMethod("getDisplayFrame", null);
        this.f1198c = cls.getDeclaredMethod("getDisplayCutout", null);
        this.f1199d = cls.getDeclaredMethod("setDisplayCutout", DisplayCutout.class);
        Class<?> cls2 = Class.forName("android.view.InsetsSource", false, classLoader);
        this.f1200e = cls2.getDeclaredMethod("getType", null);
        this.f1201f = cls2.getDeclaredMethod("getFrame", null);
        this.f1202g = cls2.getDeclaredMethod("setFrame", Rect.class);
        this.f1203h = cls2.getDeclaredMethod("updateSideHint", Rect.class);
        Class cls3 = Integer.TYPE;
        this.f1206k = cls2.getDeclaredConstructor(cls3, cls3);
        this.f1207l = z ? cls2.getDeclaredConstructor(cls2) : null;
        this.f1204i = cls2.getDeclaredMethod("setVisible", Boolean.TYPE);
        this.f1205j = DisplayCutout.class.getDeclaredMethod("replaceSafeInsets", Rect.class);
        this.f1208m = ((Integer) cls2.getDeclaredMethod("createId", Object.class, cls3, cls3).invoke(null, null, 1, Integer.valueOf(WindowInsets.Type.displayCutout()))).intValue();
    }

    /* renamed from: a */
    Rect m1264a(Object obj) throws ReflectiveOperationException {
        return (Rect) this.f1197b.invoke(obj, null);
    }

    /* renamed from: a */
    static String m1263a(Rect rect) {
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

    /* renamed from: a */
    void m1265a(Object obj, SparseArray<?> sparseArray, Rect rect, int i, boolean z) throws ReflectiveOperationException {
        if (z) {
            DisplayCutout displayCutout = (DisplayCutout) this.f1198c.invoke(obj, null);
            if (displayCutout == null) {
                displayCutout = this.f1209n;
            }
            DisplayCutout displayCutout2 = (DisplayCutout) this.f1205j.invoke(displayCutout, new Rect(displayCutout.getSafeInsetLeft(), i, displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom()));
            Object obj2 = sparseArray.get(this.f1208m);
            if (obj2 == null) {
                obj2 = this.f1206k.newInstance(Integer.valueOf(this.f1208m), Integer.valueOf(WindowInsets.Type.displayCutout()));
            } else {
                Constructor<?> constructor = this.f1207l;
                if (constructor != null) {
                    obj2 = constructor.newInstance(obj2);
                }
            }
            int i2 = rect.left;
            int i3 = rect.top;
            Rect rect2 = new Rect(i2, i3, rect.right, i + i3);
            for (int i4 = 0; i4 < sparseArray.size(); i4++) {
                Object valueAt = sparseArray.valueAt(i4);
                if (((Integer) this.f1200e.invoke(valueAt, null)).intValue() == WindowInsets.Type.statusBars()) {
                    Constructor<?> constructor2 = this.f1207l;
                    if (constructor2 != null) {
                        valueAt = constructor2.newInstance(valueAt);
                        sparseArray.setValueAt(i4, valueAt);
                    }
                    this.f1202g.invoke(valueAt, rect2);
                    this.f1203h.invoke(valueAt, rect);
                }
            }
            this.f1202g.invoke(obj2, rect2);
            this.f1204i.invoke(obj2, Boolean.TRUE);
            this.f1203h.invoke(obj2, rect);
            sparseArray.put(this.f1208m, obj2);
            this.f1199d.invoke(obj, displayCutout2);
            return;
        }
        int i5 = 0;
        for (int size = sparseArray.size() - 1; size >= 0; size--) {
            Object valueAt2 = sparseArray.valueAt(size);
            int intValue = ((Integer) this.f1200e.invoke(valueAt2, null)).intValue();
            if (intValue == WindowInsets.Type.statusBars()) {
                Constructor<?> constructor3 = this.f1207l;
                if (constructor3 != null) {
                    valueAt2 = constructor3.newInstance(valueAt2);
                    sparseArray.setValueAt(size, valueAt2);
                }
                this.f1202g.invoke(valueAt2, new Rect(0, 0, rect.width(), i));
            } else if (intValue == WindowInsets.Type.displayCutout()) {
                Rect rect3 = (Rect) this.f1201f.invoke(valueAt2, null);
                if (i5 == 0 && rect3.top <= rect.top && rect3.height() > 0 && rect3.height() < rect.height() / 2 && rect3.width() >= rect.width() / 2) {
                    Constructor<?> constructor4 = this.f1207l;
                    if (constructor4 != null) {
                        valueAt2 = constructor4.newInstance(valueAt2);
                        sparseArray.setValueAt(size, valueAt2);
                    }
                    Method method = this.f1202g;
                    int i6 = rect3.left;
                    int i7 = rect3.top;
                    method.invoke(valueAt2, new Rect(i6, i7, rect3.right, i7 + i));
                    i5++;
                } else {
                    sparseArray.removeAt(size);
                }
            }
        }
        this.f1199d.invoke(obj, new DisplayCutout(Insets.of(0, i, 0, 0), null, null, null, null));
    }
}
