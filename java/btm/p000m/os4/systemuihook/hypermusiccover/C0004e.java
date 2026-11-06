package btm.p000m.os4.systemuihook.hypermusiccover;

import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: btm.m.os4.systemuihook.hypermusiccover.e */
/* loaded from: classes.dex */
final class C0004e {

    /* renamed from: a */
    private static final String f49a = "[MCBlur] ";

    /* renamed from: b */
    private static final List<Object> f50b = Collections.synchronizedList(new ArrayList());

    /* renamed from: c */
    private static volatile Object f51c;

    /* renamed from: d */
    private static volatile boolean f52d;

    private C0004e() {
    }

    /* renamed from: a */
    private static synchronized void m69a() {
        int i;
        int i2;
        int i3;
        int i4;
        Object obj;
        View view;
        boolean z;
        synchronized (C0004e.class) {
            View m118R = C0007h.m118R();
            StringBuilder sb = new StringBuilder();
            List<Object> list = f50b;
            synchronized (list) {
                int i5 = -1;
                i = -1;
                i2 = 0;
                i3 = 0;
                i4 = 0;
                obj = null;
                for (Object obj2 : list) {
                    Object m76d = m76d(obj2);
                    boolean z2 = m68a(obj2) != null;
                    boolean z3 = m118R != null && m76d == m118R;
                    int m66a = m66a(obj2, "maxRadius", i5);
                    View view2 = m118R;
                    sb.append("\n  ").append(obj2.getClass().getName()).append(" onSlowdownBlurChanged=").append(z2).append(" supportSmartBlur=").append(m71a(obj2, "supportSmartBlur", false)).append(" maxRadius=").append(m66a).append(" view=").append(m76d == null ? "null" : m76d.getClass().getSimpleName()).append(z3 ? " (IS the shade root)" : "");
                    if (z3) {
                        i2++;
                    }
                    if (z2) {
                        i3++;
                        if (m66a > i) {
                            obj = obj2;
                            i = m66a;
                            m118R = view2;
                            i5 = -1;
                            i4 = 1;
                        } else if (m66a == i) {
                            i4++;
                        }
                    }
                    m118R = view2;
                    i5 = -1;
                }
                view = m118R;
            }
            C0009j.m209a("[MCBlur] blur providers (" + f50b.size() + "):" + ((Object) sb));
            if (i2 == 1) {
                f51c = m67a(view);
                C0009j.m209a("[MCBlur] window blur provider identified by its view being the shade root: " + m72b());
                return;
            }
            if (i3 != 0) {
                z = true;
                if (i4 == 1 && view != null) {
                    if (i2 <= 1) {
                        if (f51c == obj) {
                            return;
                        }
                        f51c = obj;
                        C0009j.m209a("[MCBlur] window blur provider chosen by callback" + (i3 > 1 ? " (" + i3 + " claimed it, largest maxRadius=" + i + " won)" : "") + ": " + m72b());
                        return;
                    }
                    z = true;
                }
            } else {
                z = true;
            }
            f51c = null;
            C0009j.m209a("[MCBlur] window blur provider unresolved or ambiguous: root=" + (view != null ? z : false) + " rootMatches=" + i2 + " callbacks=" + i3 + " largestRadiusMatches=" + i4 + "; keeping OEM blur");
        }
    }

    /* renamed from: b */
    static boolean m73b(Object obj) {
        return obj != null && obj == f51c;
    }

    /* renamed from: c */
    static void m74c() {
        m69a();
    }

    /* renamed from: d */
    private static Object m76d(Object obj) {
        try {
            return C0009j.m211b(obj, "view");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    static String m72b() {
        Object obj = f51c;
        return obj == null ? "no window provider (" + f50b.size() + " seen)" : "window=" + obj.getClass().getName() + " maxRadius=" + m66a(obj, "maxRadius", -1) + " enableScale=" + m71a(obj, "enableScale", true) + " ratio=" + m65a(obj, "blurRatio", -1.0f);
    }

    /* renamed from: c */
    static void m75c(Object obj) {
        List<Object> list = f50b;
        synchronized (list) {
            if (!list.contains(obj)) {
                list.add(obj);
            }
        }
        m69a();
    }

    /* renamed from: a */
    private static Object m67a(View view) {
        List<Object> list = f50b;
        synchronized (list) {
            for (Object obj : list) {
                if (m76d(obj) == view) {
                    return obj;
                }
            }
            return null;
        }
    }

    /* renamed from: a */
    static void m70a(float f) {
        Object obj = f51c;
        if (obj == null) {
            return;
        }
        try {
            C0009j.m200a(obj, "setBlurRatio", Float.valueOf(f));
        } catch (Throwable th) {
            if (f52d) {
                return;
            }
            f52d = true;
            C0009j.m209a("[MCBlur] setBlurRatio failed - the shade will not lag the finger: " + th);
        }
    }

    /* renamed from: a */
    private static Object m68a(Object obj) {
        try {
            return C0009j.m211b(obj, "onSlowdownBlurChanged");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    private static int m66a(Object obj, String str, int i) {
        try {
            Object m211b = C0009j.m211b(obj, str);
            if (m211b instanceof Integer) {
                return ((Integer) m211b).intValue();
            }
        } catch (Throwable th) {
        }
        return i;
    }

    /* renamed from: a */
    private static float m65a(Object obj, String str, float f) {
        try {
            Object m211b = C0009j.m211b(obj, str);
            if (m211b instanceof Float) {
                return ((Float) m211b).floatValue();
            }
        } catch (Throwable th) {
        }
        return f;
    }

    /* renamed from: a */
    private static boolean m71a(Object obj, String str, boolean z) {
        try {
            Object m211b = C0009j.m211b(obj, str);
            if (m211b instanceof Boolean) {
                return ((Boolean) m211b).booleanValue();
            }
        } catch (Throwable th) {
        }
        return z;
    }
}
