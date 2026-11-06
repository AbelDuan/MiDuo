package btm.p000m.os4.systemuihook.newnotificationcenter;

import android.content.SharedPreferences;
import android.graphics.Point;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import btm.p000m.os4.systemuihook.hypermusiccover.C0009j;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0010a;
import io.github.libxposed.api.XposedInterface;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;

/* renamed from: btm.m.os4.systemuihook.newnotificationcenter.a */
/* loaded from: classes.dex */
public final class C0010a {

    /* renamed from: a */
    public static final String f190a = "ios_notification_clock_glass_";

    /* renamed from: b */
    public static final String f191b = "ios_notification_clock_glass_enabled";

    /* renamed from: c */
    public static final String f192c = "ios_notification_clock_glass_refraction_blur";

    /* renamed from: d */
    public static final String f193d = "ios_notification_clock_glass_background_blur";

    /* renamed from: e */
    public static final String f194e = "ios_notification_clock_glass_background_scale";

    /* renamed from: f */
    public static final String f195f = "ios_notification_clock_glass_background_opacity";

    /* renamed from: g */
    public static final d[] f196g = {new d("luminance", "明度混合强度", 4, 0.0f, 2.0f, -100, 200, false), new d("saturation", "材质饱和度", 5, 0.0f, 3.0f, -100, 200, false), new d("brightness", "混合亮度", 6, -1.0f, 1.0f, -100, 200, false), new d("alpha", "内层不透明度", 14, 0.0f, 2.0f, -100, 200, false), new d("refraction", "折射率", 32, 1.0f, 5.0f, -100, 200, false), new d("thickness", "光学厚度", 21, 0.0f, 120.0f, -100, 200, false), new d("background_saturation", "采样背景饱和度", 33, 0.0f, 3.0f, -100, 200, false), new d("background_brightness", "采样背景亮度", 34, -1.0f, 1.0f, -100, 200, false), new d("burn", "背景烧灼强度", 35, 0.0f, 1.0f, -100, 200, false), new d("edge", "边缘宽度", 19, 0.0f, 100.0f, -100, 200, false), new d("edge_feather", "边缘羽化", 24, 0.0f, 2.0f, -200, 100, true), new d("reflection_offset", "反射偏移", 22, 0.0f, 1000.0f, -100, 200, false), new d("light", "高光强度", 28, 0.0f, 2.0f, -100, 200, false), new d("darker", "压暗强度", 7, 0.0f, 1.0f, -100, 200, false)};

    /* renamed from: h */
    private static final Handler f197h = new Handler(Looper.getMainLooper());

    /* renamed from: i */
    private static final Object f198i = new Object();

    /* renamed from: j */
    private static final WeakHashMap<View, c> f199j = new WeakHashMap<>();

    /* renamed from: k */
    private static final ThreadLocal<Boolean> f200k = new ThreadLocal<>();

    /* renamed from: l */
    private static volatile e f201l = e.f230g;

    /* renamed from: m */
    private static boolean f202m;

    /* renamed from: n */
    private static boolean f203n;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: btm.m.os4.systemuihook.newnotificationcenter.a$b */
    interface b {
        /* renamed from: a */
        Object mo239a(XposedInterface.Chain chain, Method method) throws Throwable;
    }

    /* renamed from: btm.m.os4.systemuihook.newnotificationcenter.a$c */
    private static final class c {

        /* renamed from: a */
        Method f204a;

        /* renamed from: b */
        float[] f205b;

        /* renamed from: c */
        float[] f206c;

        /* renamed from: d */
        Method f207d;

        /* renamed from: e */
        int f208e;

        /* renamed from: f */
        int f209f;

        /* renamed from: g */
        boolean f210g;

        /* renamed from: h */
        Method f211h;

        /* renamed from: i */
        int f212i;

        /* renamed from: j */
        boolean f213j;

        /* renamed from: k */
        Method f214k;

        /* renamed from: l */
        float f215l;

        /* renamed from: m */
        boolean f216m;

        /* renamed from: n */
        Method f217n;

        /* renamed from: o */
        ArrayList<Point> f218o;

        /* renamed from: p */
        Method f219p;

        /* renamed from: q */
        Method f220q;

        /* renamed from: r */
        ArrayList<Point> f221r;

        private c() {
        }
    }

    /* renamed from: btm.m.os4.systemuihook.newnotificationcenter.a$d */
    public static final class d {

        /* renamed from: a */
        public final String f222a;

        /* renamed from: b */
        public final String f223b;

        /* renamed from: c */
        public final int f224c;

        /* renamed from: d */
        public final float f225d;

        /* renamed from: e */
        public final float f226e;

        /* renamed from: f */
        public final int f227f;

        /* renamed from: g */
        public final int f228g;

        /* renamed from: h */
        final boolean f229h;

        d(String str, String str2, int i, float f, float f2, int i2, int i3, boolean z) {
            this.f222a = str;
            this.f223b = str2;
            this.f224c = i;
            this.f225d = f;
            this.f226e = f2;
            this.f227f = i2;
            this.f228g = i3;
            this.f229h = z;
        }
    }

    /* renamed from: btm.m.os4.systemuihook.newnotificationcenter.a$e */
    private static final class e {

        /* renamed from: g */
        static final e f230g = new e(false, 100, 100, 100, 100, new int[C0010a.f196g.length]);

        /* renamed from: a */
        final boolean f231a;

        /* renamed from: b */
        final int f232b;

        /* renamed from: c */
        final int f233c;

        /* renamed from: d */
        final int f234d;

        /* renamed from: e */
        final int f235e;

        /* renamed from: f */
        final int[] f236f;

        e(boolean z, int i, int i2, int i3, int i4, int[] iArr) {
            this.f231a = z;
            this.f232b = i;
            this.f233c = i2;
            this.f234d = i3;
            this.f235e = i4;
            this.f236f = iArr;
        }
    }

    private C0010a() {
    }

    /* renamed from: a */
    public static String m221a(String str) {
        StringBuilder append = new StringBuilder().append(f190a);
        if ("edge_feather".equals(str)) {
            str = "edge_feather_inverse";
        }
        return append.append(str).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static Object m232b(XposedInterface.Chain chain, Method method) throws Throwable {
        View m216a = m216a(chain);
        if (m216a == null) {
            return chain.proceed();
        }
        int intValue = ((Number) m219a(chain, 0)).intValue();
        int intValue2 = ((Number) m219a(chain, 1)).intValue();
        if (!Boolean.TRUE.equals(f200k.get())) {
            synchronized (f198i) {
                c m217a = m217a(m216a);
                if (m217a.f221r == null) {
                    m217a.f221r = new ArrayList<>();
                }
                m217a.f221r.add(new Point(intValue, intValue2));
                m217a.f219p = method;
                try {
                    m217a.f220q = View.class.getMethod("clearMiBackgroundBlendColor", null);
                } catch (Throwable th) {
                    m217a.f220q = null;
                }
            }
        }
        return !f201l.f231a ? chain.proceed() : chain.proceed(new Object[]{Integer.valueOf(m230b(intValue, f201l.f235e)), Integer.valueOf(intValue2)});
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static Object m234c(XposedInterface.Chain chain, Method method) throws Throwable {
        View m216a = m216a(chain);
        ArrayList<Point> m222a = m222a(m219a(chain, 0));
        if (m216a == null || m222a == null) {
            return chain.proceed();
        }
        if (!Boolean.TRUE.equals(f200k.get())) {
            synchronized (f198i) {
                c m217a = m217a(m216a);
                m217a.f218o = m222a;
                m217a.f217n = method;
            }
        }
        return !f201l.f231a ? chain.proceed() : chain.proceed(new Object[]{m224a(m222a, f201l.f235e)});
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static Object m235d(XposedInterface.Chain chain, Method method) throws Throwable {
        View m216a = m216a(chain);
        if (m216a != null && !Boolean.TRUE.equals(f200k.get())) {
            synchronized (f198i) {
                c cVar = f199j.get(m216a);
                if (cVar != null) {
                    cVar.f221r = new ArrayList<>();
                }
            }
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static Object m236e(XposedInterface.Chain chain, Method method) throws Throwable {
        float[] fArr;
        View m216a = m216a(chain);
        Object m219a = m219a(chain, 0);
        if (m216a == null || !(m219a instanceof float[])) {
            return chain.proceed();
        }
        float[] fArr2 = (float[]) m219a;
        c m217a = m217a(m216a);
        Object obj = f198i;
        synchronized (obj) {
            float[] fArr3 = m217a.f206c;
            fArr = (fArr3 == null || fArr2 != fArr3) ? (float[]) fArr2.clone() : m217a.f205b;
            if (!Boolean.TRUE.equals(f200k.get())) {
                m217a.f205b = fArr;
                m217a.f204a = method;
            }
        }
        if (!f201l.f231a || !m229a(fArr)) {
            return fArr2 == fArr ? chain.proceed() : chain.proceed(new Object[]{fArr});
        }
        float[] m233b = m233b(fArr);
        synchronized (obj) {
            m217a.f206c = m233b;
        }
        return chain.proceed(new Object[]{m233b});
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static Object m237f(XposedInterface.Chain chain, Method method) throws Throwable {
        View m216a = m216a(chain);
        if (m216a == null) {
            return chain.proceed();
        }
        int intValue = ((Number) m219a(chain, 0)).intValue();
        int intValue2 = ((Number) m219a(chain, 1)).intValue();
        if (!Boolean.TRUE.equals(f200k.get())) {
            synchronized (f198i) {
                c m217a = m217a(m216a);
                m217a.f208e = intValue;
                m217a.f209f = intValue2;
                m217a.f210g = true;
                m217a.f207d = method;
            }
        }
        if (!f201l.f231a) {
            return chain.proceed();
        }
        int i = f201l.f232b;
        return chain.proceed(new Object[]{Integer.valueOf(m214a(intValue, i)), Integer.valueOf(m214a(intValue2, i))});
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public static Object m238g(XposedInterface.Chain chain, Method method) throws Throwable {
        View m216a = m216a(chain);
        if (m216a == null) {
            return chain.proceed();
        }
        float floatValue = ((Number) m219a(chain, 0)).floatValue();
        if (!Boolean.TRUE.equals(f200k.get())) {
            synchronized (f198i) {
                c m217a = m217a(m216a);
                m217a.f215l = floatValue;
                m217a.f216m = true;
                m217a.f214k = method;
            }
        }
        return !f201l.f231a ? chain.proceed() : chain.proceed(new Object[]{Float.valueOf(m213a(floatValue, f201l.f234d))});
    }

    /* renamed from: a */
    public static void m226a(SharedPreferences sharedPreferences) {
        f201l = m231b(sharedPreferences);
        if (!f202m) {
            f202m = true;
            sharedPreferences.registerOnSharedPreferenceChangeListener(new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: btm.m.os4.systemuihook.newnotificationcenter.a$$ExternalSyntheticLambda1
                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences2, String str) {
                    C0010a.m227a(sharedPreferences2, str);
                }
            });
        }
        if (f203n) {
            return;
        }
        f203n = true;
        m228a("setMiGlass", (Class<?>[]) new Class[]{float[].class}, new b() { // from class: btm.m.os4.systemuihook.newnotificationcenter.a$$ExternalSyntheticLambda2
            @Override // btm.p000m.os4.systemuihook.newnotificationcenter.C0010a.b
            /* renamed from: a */
            public final Object mo239a(XposedInterface.Chain chain, Method method) {
                Object m236e;
                m236e = C0010a.m236e(chain, method);
                return m236e;
            }
        });
        Class cls = Integer.TYPE;
        m228a("setMiGlassBlurRadius", (Class<?>[]) new Class[]{cls, cls}, new b() { // from class: btm.m.os4.systemuihook.newnotificationcenter.a$$ExternalSyntheticLambda3
            @Override // btm.p000m.os4.systemuihook.newnotificationcenter.C0010a.b
            /* renamed from: a */
            public final Object mo239a(XposedInterface.Chain chain, Method method) {
                Object m237f;
                m237f = C0010a.m237f(chain, method);
                return m237f;
            }
        });
        m228a("setMiBackgroundBlurRadius", (Class<?>[]) new Class[]{cls}, new b() { // from class: btm.m.os4.systemuihook.newnotificationcenter.a$$ExternalSyntheticLambda4
            @Override // btm.p000m.os4.systemuihook.newnotificationcenter.C0010a.b
            /* renamed from: a */
            public final Object mo239a(XposedInterface.Chain chain, Method method) {
                Object m220a;
                m220a = C0010a.m220a(chain, method);
                return m220a;
            }
        });
        m228a("setMiBackgroundBlurScaleRatio", (Class<?>[]) new Class[]{Float.TYPE}, new b() { // from class: btm.m.os4.systemuihook.newnotificationcenter.a$$ExternalSyntheticLambda5
            @Override // btm.p000m.os4.systemuihook.newnotificationcenter.C0010a.b
            /* renamed from: a */
            public final Object mo239a(XposedInterface.Chain chain, Method method) {
                Object m238g;
                m238g = C0010a.m238g(chain, method);
                return m238g;
            }
        });
        m228a("setMiBackgroundBlendColors", (Class<?>[]) new Class[]{ArrayList.class}, new b() { // from class: btm.m.os4.systemuihook.newnotificationcenter.a$$ExternalSyntheticLambda6
            @Override // btm.p000m.os4.systemuihook.newnotificationcenter.C0010a.b
            /* renamed from: a */
            public final Object mo239a(XposedInterface.Chain chain, Method method) {
                Object m234c;
                m234c = C0010a.m234c(chain, method);
                return m234c;
            }
        });
        m228a("addMiBackgroundBlendColor", (Class<?>[]) new Class[]{cls, cls}, new b() { // from class: btm.m.os4.systemuihook.newnotificationcenter.a$$ExternalSyntheticLambda7
            @Override // btm.p000m.os4.systemuihook.newnotificationcenter.C0010a.b
            /* renamed from: a */
            public final Object mo239a(XposedInterface.Chain chain, Method method) {
                Object m232b;
                m232b = C0010a.m232b(chain, method);
                return m232b;
            }
        });
        m228a("clearMiBackgroundBlendColor", (Class<?>[]) new Class[0], new b() { // from class: btm.m.os4.systemuihook.newnotificationcenter.a$$ExternalSyntheticLambda8
            @Override // btm.p000m.os4.systemuihook.newnotificationcenter.C0010a.b
            /* renamed from: a */
            public final Object mo239a(XposedInterface.Chain chain, Method method) {
                Object m235d;
                m235d = C0010a.m235d(chain, method);
                return m235d;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m227a(SharedPreferences sharedPreferences, String str) {
        if (str == null || str.startsWith(f190a)) {
            f201l = m231b(sharedPreferences);
            f197h.post(new Runnable() { // from class: btm.m.os4.systemuihook.newnotificationcenter.a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C0010a.m225a();
                }
            });
        }
    }

    /* renamed from: b */
    private static e m231b(SharedPreferences sharedPreferences) {
        int[] iArr = new int[f196g.length];
        int i = 0;
        while (true) {
            d[] dVarArr = f196g;
            if (i < dVarArr.length) {
                d dVar = dVarArr[i];
                iArr[i] = m215a(sharedPreferences.getInt(m221a(dVar.f222a), 0), dVar.f227f, dVar.f228g);
                i++;
            } else {
                return new e(sharedPreferences.getBoolean(f191b, false), m215a(sharedPreferences.getInt(f192c, 100), 0, 200), m215a(sharedPreferences.getInt(f193d, 100), 0, 200), m215a(sharedPreferences.getInt(f194e, 100), 0, 200), m215a(sharedPreferences.getInt(f195f, 100), 0, 200), iArr);
            }
        }
    }

    /* renamed from: a */
    private static void m228a(final String str, Class<?>[] clsArr, final b bVar) {
        try {
            final Method method = View.class.getMethod(str, clsArr);
            method.setAccessible(true);
            C0009j.m197a().hook(method).setExceptionMode(XposedInterface.ExceptionMode.PROTECTIVE).intercept(new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.a$$ExternalSyntheticLambda9
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m218a;
                    m218a = C0010a.m218a(C0010a.b.this, method, str, chain);
                    return m218a;
                }
            });
        } catch (Throwable th) {
            C0009j.m209a("ios clock glass API unavailable: " + str + ": " + th);
        }
    }

    /* renamed from: b */
    private static float[] m233b(float[] fArr) {
        int i;
        float[] fArr2 = (float[]) fArr.clone();
        int[] iArr = f201l.f236f;
        int i2 = 0;
        while (true) {
            d[] dVarArr = f196g;
            if (i2 >= dVarArr.length) {
                return fArr2;
            }
            d dVar = dVarArr[i2];
            int i3 = iArr[i2];
            if (dVar.f229h) {
                i3 = -i3;
            }
            if (i3 != 0 && (i = dVar.f224c) < fArr.length) {
                float f = fArr[i];
                float f2 = i3 / 100.0f;
                if (f != 0.0f) {
                    f2 = (f2 + 1.0f) * f;
                }
                fArr2[i] = Math.max(dVar.f225d, Math.min(dVar.f226e, f2));
            }
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m218a(b bVar, Method method, String str, XposedInterface.Chain chain) throws Throwable {
        try {
            return bVar.mo239a(chain, method);
        } catch (Throwable th) {
            C0009j.m209a("ios clock glass " + str + ": " + th);
            return chain.proceed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static Object m220a(XposedInterface.Chain chain, Method method) throws Throwable {
        View m216a = m216a(chain);
        if (m216a == null) {
            return chain.proceed();
        }
        int intValue = ((Number) m219a(chain, 0)).intValue();
        if (!Boolean.TRUE.equals(f200k.get())) {
            synchronized (f198i) {
                c m217a = m217a(m216a);
                m217a.f212i = intValue;
                m217a.f213j = true;
                m217a.f211h = method;
            }
        }
        return !f201l.f231a ? chain.proceed() : chain.proceed(new Object[]{Integer.valueOf(m214a(intValue, f201l.f233c))});
    }

    /* renamed from: b */
    static int m230b(int i, int i2) {
        if (i2 == 100) {
            return i;
        }
        return (i & 16777215) | (m215a(Math.round(((i >>> 24) * m215a(i2, 0, 200)) / 100.0f), 0, 255) << 24);
    }

    /* renamed from: a */
    private static View m216a(XposedInterface.Chain chain) {
        Object thisObject = chain.getThisObject();
        if (!(thisObject instanceof View)) {
            return null;
        }
        View view = (View) thisObject;
        if (C0014e.m364j(view)) {
            return view;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static void m225a() {
        ArrayList arrayList;
        ArrayList<Point> arrayList2;
        float[] fArr;
        synchronized (f198i) {
            arrayList = new ArrayList(f199j.entrySet());
        }
        f200k.set(Boolean.TRUE);
        try {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                Map.Entry entry = (Map.Entry) obj;
                View view = (View) entry.getKey();
                c cVar = (c) entry.getValue();
                if (view != null && view.isAttachedToWindow()) {
                    try {
                        Method method = cVar.f204a;
                        if (method != null && (fArr = cVar.f205b) != null) {
                            method.invoke(view, fArr);
                        }
                        Method method2 = cVar.f207d;
                        if (method2 != null && cVar.f210g) {
                            method2.invoke(view, Integer.valueOf(cVar.f208e), Integer.valueOf(cVar.f209f));
                        }
                        Method method3 = cVar.f211h;
                        if (method3 != null && cVar.f213j) {
                            method3.invoke(view, Integer.valueOf(cVar.f212i));
                        }
                        Method method4 = cVar.f214k;
                        if (method4 != null && cVar.f216m) {
                            method4.invoke(view, Float.valueOf(cVar.f215l));
                        }
                        Method method5 = cVar.f217n;
                        if (method5 != null && (arrayList2 = cVar.f218o) != null) {
                            method5.invoke(view, m223a(arrayList2));
                        } else {
                            Method method6 = cVar.f220q;
                            if (method6 != null && cVar.f219p != null && cVar.f221r != null) {
                                method6.invoke(view, null);
                                ArrayList<Point> arrayList3 = cVar.f221r;
                                int size2 = arrayList3.size();
                                int i2 = 0;
                                while (i2 < size2) {
                                    Point point = arrayList3.get(i2);
                                    i2++;
                                    Point point2 = point;
                                    cVar.f219p.invoke(view, Integer.valueOf(point2.x), Integer.valueOf(point2.y));
                                }
                            }
                        }
                    } catch (Throwable th) {
                        C0009j.m209a("ios clock glass refresh: " + th);
                    }
                    if (C0014e.m364j(view)) {
                        continue;
                    } else {
                        synchronized (f198i) {
                            f199j.remove(view);
                        }
                    }
                }
            }
        } finally {
            f200k.remove();
        }
    }

    /* renamed from: a */
    private static c m217a(View view) {
        c cVar;
        synchronized (f198i) {
            WeakHashMap<View, c> weakHashMap = f199j;
            cVar = weakHashMap.get(view);
            if (cVar == null) {
                cVar = new c();
                weakHashMap.put(view, cVar);
            }
        }
        return cVar;
    }

    /* renamed from: a */
    private static boolean m229a(float[] fArr) {
        if (fArr.length < 42) {
            return false;
        }
        boolean z = false;
        for (float f : fArr) {
            if (Float.isNaN(f) || Float.isInfinite(f)) {
                return false;
            }
            if (f != 0.0f) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: a */
    static int m214a(int i, int i2) {
        return (i2 == 100 || i == 0) ? i : m215a(Math.round((i * m215a(i2, 0, 200)) / 100.0f), 0, 500);
    }

    /* renamed from: a */
    static float m213a(float f, int i) {
        return (i == 100 || Float.isNaN(f) || Float.isInfinite(f)) ? f : Math.max(0.0f, Math.min(1.0f, (f * m215a(i, 0, 200)) / 100.0f));
    }

    /* renamed from: a */
    private static ArrayList<Point> m222a(Object obj) {
        if (!(obj instanceof ArrayList)) {
            return null;
        }
        ArrayList arrayList = (ArrayList) obj;
        ArrayList<Point> arrayList2 = new ArrayList<>(arrayList.size());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj2 = arrayList.get(i);
            i++;
            if (!(obj2 instanceof Point)) {
                return null;
            }
            Point point = (Point) obj2;
            arrayList2.add(new Point(point.x, point.y));
        }
        return arrayList2;
    }

    /* renamed from: a */
    private static ArrayList<Point> m223a(ArrayList<Point> arrayList) {
        ArrayList<Point> arrayList2 = new ArrayList<>(arrayList.size());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Point point = arrayList.get(i);
            i++;
            Point point2 = point;
            arrayList2.add(new Point(point2.x, point2.y));
        }
        return arrayList2;
    }

    /* renamed from: a */
    private static ArrayList<Point> m224a(ArrayList<Point> arrayList, int i) {
        ArrayList<Point> arrayList2 = new ArrayList<>(arrayList.size());
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Point point = arrayList.get(i2);
            i2++;
            Point point2 = point;
            arrayList2.add(new Point(m230b(point2.x, i), point2.y));
        }
        return arrayList2;
    }

    /* renamed from: a */
    private static Object m219a(XposedInterface.Chain chain, int i) {
        return chain.getArgs().get(i);
    }

    /* renamed from: a */
    private static int m215a(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }
}
