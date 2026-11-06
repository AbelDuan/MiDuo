package btm.p000m.os4.systemuihook.newnotificationcenter;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import btm.p000m.os4.systemuihook.hypermusiccover.C0009j;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* renamed from: btm.m.os4.systemuihook.newnotificationcenter.h */
/* loaded from: classes.dex */
final class C0017h {

    /* renamed from: a */
    private static final WeakHashMap<View, a> f410a = new WeakHashMap<>();

    /* renamed from: b */
    private static boolean f411b;

    /* renamed from: btm.m.os4.systemuihook.newnotificationcenter.h$a */
    private static final class a {

        /* renamed from: a */
        final boolean f412a;

        /* renamed from: b */
        final int f413b;

        /* renamed from: c */
        final int f414c;

        /* renamed from: d */
        final int f415d;

        /* renamed from: e */
        final int f416e;

        /* renamed from: f */
        final int f417f;

        /* renamed from: g */
        final int f418g;

        /* renamed from: h */
        final float f419h;

        /* renamed from: i */
        final float f420i;

        /* renamed from: j */
        final float f421j;

        /* renamed from: k */
        final float f422k;

        /* renamed from: l */
        final float f423l;

        /* renamed from: m */
        final float f424m;

        /* renamed from: n */
        final float f425n;

        /* renamed from: o */
        final float f426o;

        /* renamed from: p */
        final float f427p;

        /* renamed from: q */
        final Rect f428q;

        a(View view, boolean z) {
            Object m211b;
            int alpha;
            this.f412a = z;
            this.f413b = view.getVisibility();
            this.f419h = C0017h.m440b(view, "getSuperTranslationX");
            this.f420i = C0017h.m440b(view, "getSuperTranslationY");
            this.f421j = C0017h.m440b(view, "getSuperTranslationZ");
            this.f422k = C0017h.m440b(view, "getSuperScaleX");
            this.f423l = C0017h.m440b(view, "getSuperScaleY");
            this.f424m = C0017h.m440b(view, "getSuperAlpha");
            this.f425n = C0017h.m440b(view, "getSuperTransitionAlpha");
            this.f426o = view.getPivotX();
            this.f427p = view.getPivotY();
            Rect clipBounds = view.getClipBounds();
            this.f428q = clipBounds == null ? null : new Rect(clipBounds);
            this.f414c = z ? (int) C0017h.m440b(view, "getActualHeight") : 0;
            this.f415d = z ? (int) C0017h.m440b(view, "getClipTopAmount") : 0;
            this.f416e = z ? (int) C0017h.m440b(view, "getClipBottomAmount") : 0;
            this.f417f = z ? (int) C0017h.m440b(view, "getExtClipBottomAmount") : 0;
            if (z) {
                try {
                    m211b = C0009j.m211b(C0009j.m200a((Object) view, "getInjector", new Object[0]), "dimForeground");
                } catch (Throwable th) {
                }
                if (m211b instanceof Drawable) {
                    alpha = ((Drawable) m211b).getAlpha();
                    this.f418g = alpha;
                }
            }
            alpha = -1;
            this.f418g = alpha;
        }

        /* renamed from: a */
        void m447a(View view) {
            float pivotX = view.getPivotX();
            float f = this.f426o;
            if (pivotX != f) {
                view.setPivotX(f);
            }
            float pivotY = view.getPivotY();
            float f2 = this.f427p;
            if (pivotY != f2) {
                view.setPivotY(f2);
            }
            C0017h.m442b(view, "TranslationX", this.f419h);
            C0017h.m442b(view, "TranslationY", this.f420i);
            C0017h.m442b(view, "TranslationZ", this.f421j);
            C0017h.m442b(view, "ScaleX", this.f422k);
            C0017h.m442b(view, "ScaleY", this.f423l);
            C0017h.m442b(view, "Alpha", this.f424m);
            C0017h.m442b(view, "TransitionAlpha", this.f425n);
            if (this.f412a) {
                int m440b = (int) C0017h.m440b(view, "getActualHeight");
                int i = this.f414c;
                if (m440b != i) {
                    C0009j.m200a((Object) view, "setActualHeight", Integer.valueOf(i), Boolean.FALSE);
                }
                C0017h.m443b(view, "ClipTopAmount", this.f415d);
                C0017h.m443b(view, "ClipBottomAmount", this.f416e);
                C0017h.m443b(view, "ExtClipBottomAmount", this.f417f);
                if (this.f418g >= 0) {
                    Object m211b = C0009j.m211b(C0009j.m200a((Object) view, "getInjector", new Object[0]), "dimForeground");
                    if (m211b instanceof Drawable) {
                        Drawable drawable = (Drawable) m211b;
                        int alpha = drawable.getAlpha();
                        int i2 = this.f418g;
                        if (alpha != i2) {
                            drawable.setAlpha(i2);
                        }
                    }
                }
            }
            Rect clipBounds = view.getClipBounds();
            Rect rect = this.f428q;
            if (rect != null ? !rect.equals(clipBounds) : clipBounds != null) {
                view.setClipBounds(this.f428q);
            }
            int visibility = view.getVisibility();
            int i3 = this.f413b;
            if (visibility != i3) {
                view.setVisibility(i3);
            }
        }
    }

    private C0017h() {
    }

    /* renamed from: b */
    static boolean m444b() {
        return f411b;
    }

    /* renamed from: c */
    static void m445c(View view) {
        if (!f411b && C0014e.m373m(view) && (view instanceof ViewGroup)) {
            f410a.clear();
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                m446d(viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: d */
    private static void m446d(View view) {
        if (!C0022m.m496d(view) || view.getVisibility() == 8) {
            return;
        }
        m439a(view, true);
        try {
            Object m200a = C0009j.m200a(C0009j.m200a((Object) view, "getInjector", new Object[0]), "getBackgroundNormal", new Object[0]);
            if (m200a instanceof View) {
                m439a((View) m200a, false);
            }
        } catch (Throwable th) {
        }
        try {
            Object m200a2 = C0009j.m200a((Object) view, "getAttachedChildren", new Object[0]);
            if (m200a2 instanceof List) {
                for (Object obj : (List) m200a2) {
                    if (obj instanceof View) {
                        m446d((View) obj);
                    }
                }
            }
        } catch (Throwable th2) {
        }
    }

    /* renamed from: b */
    static void m441b(View view) {
        if (f411b) {
            m436a(view, f410a.get(view));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static float m440b(View view, String str) {
        return ((Number) C0009j.m200a((Object) view, str, new Object[0])).floatValue();
    }

    /* renamed from: a */
    static void m434a(float f, float f2) {
        if (f2 <= 0.0f || f <= 0.0f) {
            m433a();
            return;
        }
        if (f2 >= 1.0f) {
            f411b = false;
        } else {
            if (f2 >= f || f410a.isEmpty()) {
                return;
            }
            f411b = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m442b(View view, String str, float f) {
        if (m440b(view, "getSuper" + str) != f) {
            C0009j.m200a((Object) view, "setSuper" + str, Float.valueOf(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m443b(View view, String str, int i) {
        if (((Number) C0009j.m200a((Object) view, "get" + str, new Object[0])).intValue() != i) {
            C0009j.m200a((Object) view, "set" + str, Integer.valueOf(i));
        }
    }

    /* renamed from: a */
    static void m433a() {
        f411b = false;
        f410a.clear();
    }

    /* renamed from: a */
    private static void m439a(View view, boolean z) {
        try {
            f410a.put(view, new a(view, z));
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    static void m435a(View view) {
        if (f411b && C0014e.m373m(view)) {
            ArrayList arrayList = new ArrayList(f410a.entrySet());
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                Map.Entry entry = (Map.Entry) obj;
                m436a((View) entry.getKey(), (a) entry.getValue());
            }
        }
    }

    /* renamed from: a */
    private static void m436a(View view, a aVar) {
        if (aVar == null || view == null || view.getVisibility() == 8 || !C0014e.m370l(view)) {
            return;
        }
        try {
            if (aVar.f412a) {
                if (Boolean.TRUE.equals(C0009j.m200a((Object) view, "isRemoved", new Object[0]))) {
                    return;
                }
            }
        } catch (Throwable th) {
        }
        try {
            if (aVar.f412a) {
                if (Boolean.TRUE.equals(C0009j.m211b(view, "mDismissed"))) {
                    return;
                }
            }
        } catch (Throwable th2) {
        }
        try {
            aVar.m447a(view);
        } catch (Throwable th3) {
        }
    }
}
