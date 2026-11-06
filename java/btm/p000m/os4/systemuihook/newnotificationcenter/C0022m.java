package btm.p000m.os4.systemuihook.newnotificationcenter;

import android.app.Notification;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import btm.p000m.os4.systemuihook.hypermusiccover.C0009j;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0022m;
import io.github.libxposed.api.XposedInterface;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.function.ToDoubleFunction;

/* renamed from: btm.m.os4.systemuihook.newnotificationcenter.m */
/* loaded from: classes.dex */
final class C0022m {

    /* renamed from: a */
    private static final WeakHashMap<View, ArrayList<Path>> f492a = new WeakHashMap<>();

    /* renamed from: b */
    private static final WeakHashMap<View, Boolean> f493b = new WeakHashMap<>();

    /* renamed from: c */
    private static ViewGroup f494c;

    /* renamed from: d */
    private static Method f495d;

    /* renamed from: btm.m.os4.systemuihook.newnotificationcenter.m$a */
    private static final class a implements AutoCloseable {

        /* renamed from: a */
        final Object f496a;

        /* renamed from: b */
        final LinkedHashMap<String, Object> f497b = new LinkedHashMap<>();

        a(Object obj) {
            this.f496a = obj;
        }

        /* renamed from: a */
        void m506a(String str, Object obj) {
            try {
                if (!this.f497b.containsKey(str)) {
                    this.f497b.put(str, C0009j.m211b(this.f496a, str));
                }
                C0009j.m207a(this.f496a, str, obj);
            } catch (Throwable th) {
            }
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            for (Map.Entry<String, Object> entry : this.f497b.entrySet()) {
                try {
                    C0009j.m207a(this.f496a, entry.getKey(), entry.getValue());
                } catch (Throwable th) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: btm.m.os4.systemuihook.newnotificationcenter.m$b */
    static final class b {

        /* renamed from: a */
        final View f498a;

        /* renamed from: b */
        final float f499b;

        /* renamed from: c */
        final float f500c;

        /* renamed from: d */
        final float f501d;

        /* renamed from: e */
        final float f502e;

        /* renamed from: f */
        final float f503f;

        b(View view, float f, float f2, float f3, float f4, float f5) {
            this.f498a = view;
            this.f499b = f;
            this.f500c = f2;
            this.f501d = f3;
            this.f502e = f4;
            this.f503f = f5;
        }
    }

    private C0022m() {
    }

    /* renamed from: a */
    static void m481a(View view) {
        if (C0014e.m370l(view) && m494c(view)) {
            try {
                Object m200a = C0009j.m200a((Object) view, "getInjector", new Object[0]);
                C0009j.m207a(m200a, "stackingProgress", Float.valueOf(0.0f));
                C0009j.m207a(m200a, "shouldHideDueToStacking", Boolean.FALSE);
                float floatValue = ((Number) C0009j.m200a((Object) view, "getExtTranslationY", new Object[0])).floatValue();
                float floatValue2 = ((Number) C0009j.m200a((Object) view, "getExtScaleX", new Object[0])).floatValue();
                float floatValue3 = ((Number) C0009j.m200a((Object) view, "getExtScaleY", new Object[0])).floatValue();
                C0009j.m200a((Object) view, "setSuperTranslationY", Float.valueOf(view.getTranslationY() + floatValue));
                C0009j.m200a((Object) view, "setSuperScaleX", Float.valueOf(view.getScaleX() * floatValue2));
                C0009j.m200a((Object) view, "setSuperScaleY", Float.valueOf(view.getScaleY() * floatValue3));
                if (((Number) C0009j.m200a((Object) view, "getExtClipBottomAmount", new Object[0])).intValue() != 0) {
                    C0009j.m200a((Object) view, "setExtClipBottomAmount", 0);
                }
                float floatValue4 = ((Number) C0009j.m200a((Object) view, "getExtAlpha", new Object[0])).floatValue();
                C0009j.m200a((Object) view, "setSuperAlpha", Float.valueOf(view.getAlpha() * floatValue4));
                Object m211b = C0009j.m211b(m200a, "dimForeground");
                if ((m211b instanceof Drawable) && ((Drawable) m211b).getAlpha() != 0) {
                    ((Drawable) m211b).setAlpha(0);
                }
                Object m200a2 = C0009j.m200a((Object) view, "getViewState", new Object[0]);
                Boolean bool = Boolean.TRUE;
                if (!bool.equals(C0009j.m211b(m200a2, "hidden")) && !bool.equals(C0009j.m211b(m200a2, "gone")) && view.getAlpha() > 0.0f && floatValue4 > 0.0f && view.getVisibility() == 4) {
                    view.setVisibility(0);
                }
            } catch (Throwable th) {
            }
            try {
                if (f495d == null || !m487a(view, ".ExpandableNotificationRow")) {
                    return;
                }
                Boolean bool2 = Boolean.TRUE;
                if (bool2.equals(C0009j.m200a((Object) view, "isGroupParent", new Object[0])) || bool2.equals(C0009j.m200a((Object) view, "isChildInGroup", new Object[0]))) {
                    Object m200a3 = C0009j.m200a(C0009j.m200a((Object) view, "getInjector", new Object[0]), "getBackgroundNormal", new Object[0]);
                    if (m200a3 instanceof View) {
                        View view2 = (View) m200a3;
                        if (((Number) C0009j.m211b(C0009j.m211b(view2, "mNotificationBackgroundViewInjector"), "extClipBottomAmount")).intValue() == 0 && ((Number) C0009j.m200a((Object) view2, "getSuperTranslationY", new Object[0])).floatValue() == view2.getTranslationY() && ((Number) C0009j.m200a((Object) view2, "getSuperScaleX", new Object[0])).floatValue() == view2.getScaleX() && ((Number) C0009j.m200a((Object) view2, "getSuperScaleY", new Object[0])).floatValue() == view2.getScaleY()) {
                            return;
                        }
                        f495d.invoke(null, view);
                    }
                }
            } catch (Throwable th2) {
            }
        }
    }

    /* renamed from: b */
    static void m490b(View view) {
        if (C0014e.m373m(view) && (view instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                m481a(childAt);
                if (m487a(childAt, ".ExpandableNotificationRow")) {
                    try {
                        Object m200a = C0009j.m200a((Object) childAt, "getAttachedChildren", new Object[0]);
                        if (m200a instanceof List) {
                            for (Object obj : (List) m200a) {
                                if (obj instanceof View) {
                                    m481a((View) obj);
                                }
                            }
                        }
                    } catch (Throwable th) {
                    }
                }
            }
        }
    }

    /* renamed from: c */
    static boolean m494c(View view) {
        Object obj;
        Object m200a;
        if (view == null) {
            return false;
        }
        try {
            m200a = C0009j.m200a((Object) view, "getInjector", new Object[0]);
        } catch (Throwable th) {
        }
        if (m487a(m200a, ".MiuiMediaHeaderViewInjector")) {
            return true;
        }
        if (Boolean.TRUE.equals(C0009j.m200a(m200a, "isFocusNotification", new Object[0]))) {
            return true;
        }
        if (m487a(view, ".MiuiMediaHeaderView")) {
            return true;
        }
        Object obj2 = null;
        try {
            obj = C0009j.m200a(C0009j.m200a((Object) view, "getInjector", new Object[0]), "getLegacyEntry", new Object[0]);
        } catch (Throwable th2) {
            obj = null;
        }
        if (obj == null) {
            try {
                obj = C0009j.m200a((Object) view, "getEntry", new Object[0]);
            } catch (Throwable th3) {
            }
        }
        if (obj != null) {
            try {
                obj2 = C0009j.m211b(obj, "mSbn");
            } catch (Throwable th4) {
            }
            if (obj2 == null) {
                try {
                    obj2 = C0009j.m200a(obj, "getSbn", new Object[0]);
                } catch (Throwable th5) {
                }
            }
        }
        if (obj2 == null) {
            return false;
        }
        try {
            if (Boolean.TRUE.equals(C0009j.m211b(obj2, "mIsFocusNotification"))) {
                return true;
            }
        } catch (Throwable th6) {
        }
        try {
            if (Boolean.TRUE.equals(C0009j.m211b(obj2, "isMediaNotification"))) {
                return true;
            }
        } catch (Throwable th7) {
        }
        try {
            Notification notification = (Notification) C0009j.m200a(obj2, "getNotification", new Object[0]);
            if (!Boolean.TRUE.equals(C0009j.m200a((Object) notification, "isMediaNotification", new Object[0])) && !notification.extras.containsKey("android.mediaSession")) {
                if (!"transport".equals(notification.category)) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th8) {
            return false;
        }
    }

    /* renamed from: d */
    static boolean m496d(View view) {
        return m487a(view, ".ExpandableNotificationRow") || m487a(view, ".MiuiMediaHeaderView");
    }

    /* renamed from: e */
    static float m497e(View view) {
        if (!(view instanceof ViewGroup)) {
            return 0.0f;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int i = -1;
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt.getVisibility() != 8 && m494c(childAt)) {
                i = i2;
            }
        }
        float m503h = m503h(view);
        float f = view.getResources().getDisplayMetrics().density;
        float f2 = 8.0f * f;
        float f3 = 48.0f * f;
        try {
            Object m211b = C0009j.m211b(view, "mStackScrollAlgorithm");
            f2 = ((Number) C0009j.m211b(m211b, "mPaddingBetweenElements")).floatValue();
            if (i < 0) {
                m503h += ((Number) C0009j.m200a(m211b, "getScrimTopPaddingOrZero", C0009j.m211b(view, "mAmbientState"))).floatValue();
            }
        } catch (Throwable th) {
        }
        int i3 = 0;
        for (int i4 = i + 1; i4 < viewGroup.getChildCount(); i4++) {
            View childAt2 = viewGroup.getChildAt(i4);
            if (childAt2.getVisibility() != 8 && m496d(childAt2) && !m494c(childAt2)) {
                int i5 = i3 + 1;
                if (i3 != 0) {
                    i3 = i5;
                } else {
                    try {
                        m503h += ((Number) C0009j.m200a((Object) childAt2, "getIntrinsicHeight", new Object[0])).floatValue();
                        Object m211b2 = C0009j.m211b(C0009j.m200a((Object) childAt2, "getInjector", new Object[0]), "stackingInfoCalculator");
                        f3 = ((Number) C0009j.m211b(m211b2, "stackingHeight2")).floatValue() + ((Number) C0009j.m211b(m211b2, "stackingHeight1")).floatValue();
                    } catch (Throwable th2) {
                        if (m503h <= 0.0f) {
                            m503h = Math.max(childAt2.getHeight(), 96.0f * f);
                        }
                    }
                    if (i >= 0) {
                        m503h += f2;
                    }
                    i3 = i5;
                }
            }
        }
        return i3 > 0 ? m503h + Math.max(0.0f, f3) : m503h;
    }

    /* renamed from: f */
    static Object m499f(View view) {
        if (!C0014e.m370l(view)) {
            return null;
        }
        try {
            Object m211b = C0009j.m211b(C0009j.m200a((Object) view, "getInjector", new Object[0]), "ambientState");
            while ((view.getParent() instanceof View) && !C0014e.m373m(view)) {
                view = (View) view.getParent();
            }
            a aVar = new a(m211b);
            aVar.m506a("mStackY", Float.valueOf(((Number) C0009j.m200a((Object) view, "getTopPadding", new Object[0])).floatValue()));
            return aVar;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: g */
    static void m502g(View view) {
        ArrayList arrayList = new ArrayList(f493b.keySet());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            View view2 = (View) obj;
            try {
                C0009j.m200a((Object) view2, "setSystemExpanded", f493b.get(view2));
                C0009j.m200a((Object) view2, "scheduleUpdateProperties", new Object[0]);
            } catch (Throwable th) {
            }
        }
        f493b.clear();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (m494c(childAt)) {
                    try {
                        C0009j.m200a((Object) childAt, "scheduleUpdateProperties", new Object[0]);
                    } catch (Throwable th2) {
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0043  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static float m503h(View view) {
        Object obj;
        float f;
        float f2;
        ViewGroup viewGroup;
        int i;
        float height;
        if (!(view instanceof ViewGroup)) {
            return 0.0f;
        }
        View view2 = null;
        try {
            obj = C0009j.m211b(view, "mStackScrollAlgorithm");
            try {
                f = ((Number) C0009j.m211b(obj, "mPaddingBetweenElements")).floatValue();
                try {
                    f2 = ((Number) C0009j.m200a(obj, "getScrimTopPaddingOrZero", C0009j.m211b(view, "mAmbientState"))).floatValue();
                } catch (Throwable th) {
                    f2 = 0.0f;
                    viewGroup = (ViewGroup) view;
                    float f3 = 0.0f;
                    while (i < viewGroup.getChildCount()) {
                    }
                    return f3;
                }
            } catch (Throwable th2) {
                f = 0.0f;
                f2 = 0.0f;
                viewGroup = (ViewGroup) view;
                float f32 = 0.0f;
                while (i < viewGroup.getChildCount()) {
                }
                return f32;
            }
        } catch (Throwable th3) {
            obj = null;
        }
        viewGroup = (ViewGroup) view;
        float f322 = 0.0f;
        for (i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getVisibility() != 8 && !m487a(childAt, ".NotificationShelf")) {
                try {
                    height = ((Number) C0009j.m200a((Object) childAt, "getIntrinsicHeight", new Object[0])).floatValue();
                } catch (Throwable th4) {
                    height = childAt.getHeight();
                }
                if (height > 0.0f) {
                    try {
                        f2 += ((Number) C0009j.m200a(obj, "getGapHeightForChild", childAt, view2)).floatValue();
                    } catch (Throwable th5) {
                    }
                    float f4 = f2 + height;
                    if (m494c(childAt)) {
                        f322 = f4;
                    }
                    f2 = f4 + f;
                    view2 = childAt;
                }
            }
        }
        return f322;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public static /* synthetic */ Object m505i(XposedInterface.Chain chain) throws Throwable {
        m490b((View) chain.getThisObject());
        View view = (View) chain.getThisObject();
        C0017h.m435a(view);
        if (!C0014e.m373m(view) || chain.getArgs().isEmpty() || !(chain.getArgs().get(0) instanceof Canvas)) {
            return chain.proceed();
        }
        C0017h.m445c(view);
        m482a(view, true);
        Canvas canvas = (Canvas) chain.getArgs().get(0);
        int save = canvas.save();
        try {
            a aVar = new a(view);
            try {
                aVar.m506a("mBlurEffect", null);
                canvas.clipRect(0.0f, 0.0f, view.getWidth(), C0014e.m384q(view));
                Object proceed = chain.proceed();
                aVar.close();
                return proceed;
            } finally {
            }
        } finally {
            canvas.restoreToCount(save);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static /* synthetic */ Object m495d(XposedInterface.Chain chain) throws Throwable {
        int m367k = C0014e.m367k((View) chain.getThisObject());
        if (m367k <= 0 || chain.getArgs().size() != 2) {
            return chain.proceed();
        }
        Object[] array = chain.getArgs().toArray();
        array[0] = Integer.valueOf(View.MeasureSpec.makeMeasureSpec(m367k, 1073741824));
        return chain.proceed(array);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static /* synthetic */ Object m500f(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        return ((chain.getThisObject() instanceof View) && (proceed instanceof Number)) ? Integer.valueOf(((Number) proceed).intValue() + C0014e.m351f((View) chain.getThisObject())) : proceed;
    }

    /* renamed from: b */
    private static void m491b(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (m487a(childAt, ".ExpandableNotificationRow")) {
                try {
                    if (m494c(childAt)) {
                        WeakHashMap<View, Boolean> weakHashMap = f493b;
                        if (!weakHashMap.containsKey(childAt)) {
                            weakHashMap.put(childAt, Boolean.valueOf(Boolean.TRUE.equals(C0009j.m211b(childAt, "mIsSystemExpanded"))));
                        }
                        Boolean bool = Boolean.TRUE;
                        if (!bool.equals(C0009j.m211b(childAt, "mIsSystemExpanded"))) {
                            C0009j.m200a((Object) childAt, "setSystemExpanded", bool);
                            C0009j.m200a((Object) childAt, "getIntrinsicHeight", new Object[0]);
                        }
                    } else {
                        WeakHashMap<View, Boolean> weakHashMap2 = f493b;
                        if (weakHashMap2.containsKey(childAt)) {
                            C0009j.m200a((Object) childAt, "setSystemExpanded", weakHashMap2.remove(childAt));
                        }
                    }
                } catch (Throwable th) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public static /* synthetic */ Object m501g(XposedInterface.Chain chain) throws Throwable {
        Object[] array = chain.getArgs().toArray();
        if (array.length == 1 && (array[0] instanceof Number)) {
            array[0] = Float.valueOf(C0014e.m324b((View) chain.getThisObject(), ((Number) array[0]).floatValue()));
        }
        return chain.proceed(array);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public static /* synthetic */ Object m504h(XposedInterface.Chain chain) throws Throwable {
        View view = (View) chain.getThisObject();
        if (C0014e.m373m(view)) {
            if (view.getVisibility() == 0) {
                return null;
            }
            view.setVisibility(0);
            return null;
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ Object m489b(Object obj, XposedInterface.Chain chain) throws Throwable {
        Object thisObject = chain.getThisObject();
        Object m211b = C0009j.m211b(thisObject, "view");
        if (C0014e.m288L() && (m211b instanceof View) && m494c((View) m211b)) {
            C0009j.m207a(thisObject, "stackingProgress", Float.valueOf(0.0f));
            return chain.proceed(new Object[]{obj});
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ Object m493c(Object obj, XposedInterface.Chain chain) throws Throwable {
        return (C0014e.m288L() && !chain.getArgs().isEmpty() && (chain.getArgs().get(0) instanceof View) && m494c((View) chain.getArgs().get(0))) ? obj : chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ Object m492c(XposedInterface.Chain chain) throws Throwable {
        if (!chain.getArgs().isEmpty() && (chain.getArgs().get(0) instanceof View)) {
            View view = (View) chain.getArgs().get(0);
            if (C0014e.m370l(view) && m494c(view)) {
                return null;
            }
        }
        return chain.proceed();
    }

    /* renamed from: a */
    private static boolean m487a(Object obj, String str) {
        if (obj == null) {
            return false;
        }
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            if (cls.getName().endsWith(str)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ Object m488b(XposedInterface.Chain chain) throws Throwable {
        if (chain.getArgs().isEmpty()) {
            return chain.proceed();
        }
        Object obj = chain.getArgs().get(0);
        Object m211b = C0009j.m211b(chain.getThisObject(), "mHostView");
        if (!(m211b instanceof View)) {
            return chain.proceed();
        }
        boolean m373m = C0014e.m373m((View) m211b);
        if (m373m && (m211b instanceof ViewGroup)) {
            m491b((ViewGroup) m211b);
        }
        if (!m373m) {
            return chain.proceed();
        }
        ViewGroup viewGroup = (ViewGroup) m211b;
        float floatValue = ((Number) C0009j.m200a((Object) viewGroup, "getTopPadding", new Object[0])).floatValue();
        float m335c = floatValue + C0014e.m335c(viewGroup, floatValue);
        float m381p = C0014e.m381p(viewGroup);
        Object m211b2 = C0009j.m211b(C0009j.m211b(viewGroup, "mController"), "mNsslControllerInjector");
        a aVar = new a(obj);
        try {
            a aVar2 = new a(m211b2);
            try {
                aVar2.m506a("stackingBottom", Float.valueOf(m381p));
                Boolean bool = Boolean.TRUE;
                aVar.m506a("panelAppeared", bool);
                aVar.m506a("panelVisible", bool);
                aVar.m506a("mShadeExpanded", bool);
                aVar.m506a("mExpansionFraction", Float.valueOf(1.0f));
                aVar.m506a("mExpansionChanging", Boolean.FALSE);
                aVar.m506a("mLayoutHeight", Integer.valueOf(viewGroup.getHeight()));
                float f = m381p - m335c;
                aVar.m506a("mStackHeight", Float.valueOf(Math.max(0.0f, f)));
                aVar.m506a("mStackEndHeight", Float.valueOf(Math.max(0.0f, f)));
                aVar.m506a("mStackY", Float.valueOf(m335c));
                aVar.m506a("mScrollY", Integer.valueOf(Math.max(0, ((Number) C0009j.m211b(obj, "mScrollY")).intValue())));
                Object proceed = chain.proceed();
                m484a(viewGroup, m335c);
                m483a(viewGroup);
                aVar2.close();
                aVar.close();
                return proceed;
            } finally {
            }
        } catch (Throwable th) {
            try {
                aVar.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static /* synthetic */ Object m498e(XposedInterface.Chain chain) throws Throwable {
        View view = (View) chain.getThisObject();
        if (!C0014e.m373m(view)) {
            return chain.proceed();
        }
        Object m211b = C0009j.m211b(view, "mBlurEffect");
        if (m211b != null) {
            C0009j.m207a(view, "mBlurEffect", (Object) null);
            try {
                return chain.proceed();
            } finally {
                C0009j.m207a(view, "mBlurEffect", m211b);
            }
        }
        return chain.proceed();
    }

    /* renamed from: a */
    static void m486a(Object obj) {
        if (obj instanceof a) {
            ((a) obj).close();
        }
    }

    /* renamed from: a */
    private static void m483a(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            try {
                Object m200a = C0009j.m200a((Object) viewGroup.getChildAt(i), "getViewState", new Object[0]);
                if (m200a != null) {
                    if (((Number) C0009j.m211b(m200a, "clipTopAmount")).intValue() != 0) {
                        C0009j.m207a(m200a, "clipTopAmount", (Object) 0);
                    }
                    Boolean bool = Boolean.TRUE;
                    if (bool.equals(C0009j.m211b(m200a, "hidden")) && !bool.equals(C0009j.m211b(m200a, "gone"))) {
                        float floatValue = ((Number) C0009j.m211b(m200a, "mYTranslation")).floatValue();
                        float floatValue2 = ((Number) C0009j.m211b(m200a, "height")).floatValue();
                        if (floatValue2 > 0.0f && floatValue + floatValue2 <= 0.0f) {
                            C0009j.m207a(m200a, "hidden", Boolean.FALSE);
                        }
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    private static void m484a(ViewGroup viewGroup, float f) {
        float m381p = C0014e.m381p(viewGroup);
        if (m503h(viewGroup) > (m381p - f) + 1.0f) {
            return;
        }
        float f2 = 0.0f;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getVisibility() != 8 && m494c(childAt)) {
                try {
                    Object m200a = C0009j.m200a((Object) childAt, "getViewState", new Object[0]);
                    if (!Boolean.TRUE.equals(C0009j.m211b(m200a, "gone"))) {
                        f2 = Math.max(f2, (((Number) C0009j.m211b(m200a, "mYTranslation")).floatValue() + ((Number) C0009j.m211b(m200a, "height")).floatValue()) - m381p);
                    }
                } catch (Throwable th) {
                }
            }
        }
        if (f2 <= 0.0f) {
            return;
        }
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            try {
                Object m200a2 = C0009j.m200a((Object) viewGroup.getChildAt(i2), "getViewState", new Object[0]);
                C0009j.m200a(m200a2, "setYTranslation", "IOS viewport", Float.valueOf(((Number) C0009j.m211b(m200a2, "mYTranslation")).floatValue() - f2));
            } catch (Throwable th2) {
            }
        }
    }

    /* renamed from: a */
    static void m482a(View view, boolean z) {
        if (z && (view instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) view;
            f494c = viewGroup;
            f492a.clear();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.isShown() && childAt.getWidth() > 0 && ((m487a(childAt, ".ExpandableNotificationRow") || m487a(childAt, ".MiuiMediaHeaderView")) && !m494c(childAt))) {
                    try {
                        int intValue = ((Number) C0009j.m200a((Object) childAt, "getActualHeight", new Object[0])).intValue();
                        float floatValue = ((Number) C0009j.m200a((Object) childAt, "getSuperScaleX", new Object[0])).floatValue();
                        float floatValue2 = ((Number) C0009j.m200a((Object) childAt, "getSuperScaleY", new Object[0])).floatValue();
                        float floatValue3 = ((Number) C0009j.m200a((Object) childAt, "getSuperAlpha", new Object[0])).floatValue();
                        if (intValue > 0 && floatValue > 0.0f && floatValue2 > 0.0f && floatValue3 > 0.0f) {
                            Rect clipBounds = childAt.getClipBounds();
                            int max = intValue - Math.max(((Number) C0009j.m200a((Object) childAt, "getClipBottomAmount", new Object[0])).intValue(), ((Number) C0009j.m200a((Object) childAt, "getExtClipBottomAmount", new Object[0])).intValue());
                            if (clipBounds != null) {
                                max = Math.min(max, clipBounds.bottom);
                            }
                            float left = childAt.getLeft() + ((Number) C0009j.m200a((Object) childAt, "getSuperTranslationX", new Object[0])).floatValue() + (childAt.getPivotX() * (1.0f - floatValue));
                            float top = childAt.getTop() + ((Number) C0009j.m200a((Object) childAt, "getSuperTranslationY", new Object[0])).floatValue() + (childAt.getPivotY() * (1.0f - floatValue2));
                            int intValue2 = ((Number) C0009j.m200a((Object) childAt, "getClipTopAmount", new Object[0])).intValue();
                            if (clipBounds != null) {
                                intValue2 = Math.max(intValue2, clipBounds.top);
                            }
                            arrayList.add(new b(childAt, left, (intValue2 * floatValue2) + top, (childAt.getWidth() * floatValue) + left, top + (Math.max(0, max) * floatValue2), ((Number) C0009j.m200a((Object) childAt, "getBgRadius", new Object[0])).floatValue() * Math.min(floatValue, floatValue2)));
                        }
                    } catch (Throwable th) {
                    }
                }
            }
            arrayList.sort(Comparator.comparingDouble(new ToDoubleFunction() { // from class: btm.m.os4.systemuihook.newnotificationcenter.m$$ExternalSyntheticLambda0
                @Override // java.util.function.ToDoubleFunction
                public final double applyAsDouble(Object obj) {
                    double m477a;
                    m477a = C0022m.m477a((C0022m.b) obj);
                    return m477a;
                }
            }));
            for (int i2 = 1; i2 < arrayList.size(); i2++) {
                b bVar = (b) arrayList.get(i2);
                for (int i3 = 0; i3 < i2; i3++) {
                    b bVar2 = (b) arrayList.get(i3);
                    if (bVar2.f502e > bVar.f500c && bVar2.f499b < bVar.f501d && bVar2.f501d > bVar.f499b) {
                        Path path = new Path();
                        float f = bVar2.f499b;
                        float f2 = bVar2.f500c;
                        float f3 = bVar2.f501d;
                        float f4 = bVar2.f502e;
                        float f5 = bVar2.f503f;
                        path.addRoundRect(f, f2, f3, f4, f5, f5, Path.Direction.CW);
                        WeakHashMap<View, ArrayList<Path>> weakHashMap = f492a;
                        ArrayList<Path> arrayList2 = weakHashMap.get(bVar.f498a);
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList<>();
                            weakHashMap.put(bVar.f498a, arrayList2);
                        }
                        arrayList2.add(path);
                    }
                }
            }
            return;
        }
        m480a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ double m477a(b bVar) {
        return bVar.f500c;
    }

    /* renamed from: a */
    static void m480a() {
        f494c = null;
        f492a.clear();
    }

    /* renamed from: a */
    static void m485a(ClassLoader classLoader) {
        C0011b.m242a(classLoader);
        try {
            final Object obj = C0009j.m199a("com.miui.systemui.notification.view.NotificationRowStackingInfo", classLoader).getField("EMPTY").get(null);
            Class<?> m199a = C0009j.m199a("com.android.systemui.statusbar.notification.row.ExpandableViewInjector", classLoader);
            Method[] declaredMethods = m199a.getDeclaredMethods();
            int length = declaredMethods.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                Method method = declaredMethods[i];
                if (method.getName().equals("resetGroupBackgroundStackingInfo")) {
                    method.setAccessible(true);
                    f495d = method;
                    break;
                }
                i++;
            }
            C0009j.m205a(m199a, "applyViewStackingInfo", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.m$$ExternalSyntheticLambda1
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m479a;
                    m479a = C0022m.m479a(obj, chain);
                    return m479a;
                }
            });
            C0009j.m205a(m199a, "updateDimmingAndVisible", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.m$$ExternalSyntheticLambda4
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m489b;
                    m489b = C0022m.m489b(obj, chain);
                    return m489b;
                }
            });
            Class<?> m199a2 = C0009j.m199a("com.miui.systemui.notification.domain.interactor.NotificationStackingInteractor", classLoader);
            XposedInterface.Hooker hooker = new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.m$$ExternalSyntheticLambda5
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m493c;
                    m493c = C0022m.m493c(obj, chain);
                    return m493c;
                }
            };
            C0009j.m205a(m199a2, "calculateStackingInfo", hooker);
            C0009j.m205a(m199a2, "updateParentStackingInfo", hooker);
            C0009j.m205a(m199a2, "updateChildStackingInfo", hooker);
            C0009j.m209a("[IOSShade] focus/media notification stacking excluded");
        } catch (Throwable th) {
            C0009j.m209a("[IOSShade] focus/media notification stacking unavailable: " + th);
        }
        try {
            Class<?> m199a3 = C0009j.m199a("com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout", classLoader);
            C0009j.m205a(m199a3, "onMeasure", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.m$$ExternalSyntheticLambda6
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m495d;
                    m495d = C0022m.m495d(chain);
                    return m495d;
                }
            });
            C0009j.m205a(m199a3, "dispatchDraw", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.m$$ExternalSyntheticLambda7
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m498e;
                    m498e = C0022m.m498e(chain);
                    return m498e;
                }
            });
            C0009j.m205a(m199a3, "getScrollRange", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.m$$ExternalSyntheticLambda8
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m500f;
                    m500f = C0022m.m500f(chain);
                    return m500f;
                }
            });
            C0009j.m205a(m199a3, "setAlpha", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.m$$ExternalSyntheticLambda9
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m501g;
                    m501g = C0022m.m501g(chain);
                    return m501g;
                }
            });
            C0009j.m205a(m199a3, "updateVisibility$5", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.m$$ExternalSyntheticLambda10
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m504h;
                    m504h = C0022m.m504h(chain);
                    return m504h;
                }
            });
            C0011b.m241a(m199a3, "setAlpha", "updateVisibility$5");
        } catch (Throwable th2) {
            C0009j.m209a("[IOSShade] notification scroll range unavailable: " + th2);
        }
        try {
            Class<?> m199a4 = C0009j.m199a("com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout", classLoader);
            C0009j.m205a(m199a4, "dispatchDraw", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.m$$ExternalSyntheticLambda11
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m505i;
                    m505i = C0022m.m505i(chain);
                    return m505i;
                }
            });
            C0009j.m205a(m199a4, "drawChild", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.m$$ExternalSyntheticLambda12
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m478a;
                    m478a = C0022m.m478a(chain);
                    return m478a;
                }
            });
        } catch (Throwable th3) {
            C0009j.m209a("[IOSShade] notification stack mask unavailable: " + th3);
        }
        try {
            Class<?> m199a5 = C0009j.m199a("com.android.systemui.statusbar.notification.stack.StackScrollAlgorithm", classLoader);
            try {
                C0011b.m241a(C0009j.m199a("com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout", classLoader).getDeclaredField("mChildrenUpdater").getType(), "onPreDraw");
            } catch (Throwable th4) {
                C0009j.m209a("[IOSShade] stack pre-draw deoptimization unavailable: " + th4);
            }
            C0009j.m205a(m199a5, "resetViewStates", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.m$$ExternalSyntheticLambda2
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m488b;
                    m488b = C0022m.m488b(chain);
                    return m488b;
                }
            });
            C0009j.m205a(m199a5, "updateViewWithShelf", new XposedInterface.Hooker() { // from class: btm.m.os4.systemuihook.newnotificationcenter.m$$ExternalSyntheticLambda3
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m492c;
                    m492c = C0022m.m492c(chain);
                    return m492c;
                }
            });
            C0011b.m241a(m199a5, "resetViewStates");
        } catch (Throwable th5) {
            C0009j.m209a("[IOSShade] notification stack position unavailable: " + th5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m479a(Object obj, XposedInterface.Chain chain) throws Throwable {
        Object[] array = chain.getArgs().toArray();
        if (C0014e.m288L() && array.length >= 2) {
            Object obj2 = array[0];
            if ((obj2 instanceof View) && m494c((View) obj2)) {
                array[1] = obj;
                return chain.proceed(array);
            }
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m478a(XposedInterface.Chain chain) throws Throwable {
        if (chain.getArgs().size() >= 2 && (chain.getArgs().get(1) instanceof View)) {
            m481a((View) chain.getArgs().get(1));
            C0017h.m441b((View) chain.getArgs().get(1));
        }
        if (chain.getThisObject() == f494c && chain.getArgs().size() >= 2) {
            int i = 0;
            if ((chain.getArgs().get(0) instanceof Canvas) && (chain.getArgs().get(1) instanceof View)) {
                ArrayList<Path> arrayList = f492a.get((View) chain.getArgs().get(1));
                if (arrayList != null && !arrayList.isEmpty()) {
                    Canvas canvas = (Canvas) chain.getArgs().get(0);
                    int save = canvas.save();
                    try {
                        int size = arrayList.size();
                        while (i < size) {
                            Path path = arrayList.get(i);
                            i++;
                            canvas.clipOutPath(path);
                        }
                        return chain.proceed();
                    } finally {
                        canvas.restoreToCount(save);
                    }
                }
                return chain.proceed();
            }
        }
        return chain.proceed();
    }
}
