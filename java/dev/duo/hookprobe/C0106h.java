package dev.duo.hookprobe;

import android.content.SharedPreferences;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Display;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.function.BooleanSupplier;

/* renamed from: dev.duo.hookprobe.h */
/* loaded from: classes.dex */
final class C0106h {

    /* renamed from: k */
    private static final String f1615k = "DuoAwemeFit";

    /* renamed from: a */
    private final SharedPreferences f1616a;

    /* renamed from: b */
    private final BooleanSupplier f1617b;

    /* renamed from: c */
    private final Handler f1618c = new Handler(Looper.getMainLooper());

    /* renamed from: d */
    private final Set<SurfaceView> f1619d = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: e */
    private final SharedPreferences.OnSharedPreferenceChangeListener f1620e = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: dev.duo.hookprobe.h$$ExternalSyntheticLambda2
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            C0106h.this.m1698a(sharedPreferences, str);
        }
    };

    /* renamed from: f */
    private Method f1621f;

    /* renamed from: g */
    private boolean f1622g;

    /* renamed from: h */
    private String f1623h;

    /* renamed from: i */
    private int f1624i;

    /* renamed from: j */
    private int f1625j;

    private C0106h(SharedPreferences sharedPreferences, BooleanSupplier booleanSupplier) {
        this.f1616a = sharedPreferences;
        this.f1617b = booleanSupplier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1698a(SharedPreferences sharedPreferences, String str) {
        if (str == null || "com.ss.android.ugc.aweme/outerVideoFit".equals(str) || "com.ss.android.ugc.aweme/innerVideoFit".equals(str) || "_global/master".equals(str) || C0071P.m1243f("com.ss.android.ugc.aweme").equals(str)) {
            this.f1618c.post(new Runnable() { // from class: dev.duo.hookprobe.h$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C0106h.this.m1697a();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1697a() {
        for (SurfaceView surfaceView : this.f1619d) {
            if (surfaceView.isAttachedToWindow()) {
                surfaceView.requestLayout();
            }
        }
    }

    /* renamed from: a */
    static void m1699a(XposedModule xposedModule, ClassLoader classLoader, SharedPreferences sharedPreferences, BooleanSupplier booleanSupplier) {
        final C0106h c0106h = new C0106h(sharedPreferences, booleanSupplier);
        try {
            c0106h.f1621f = Class.forName("android.os.SystemProperties").getMethod("getBoolean", String.class, Boolean.TYPE);
            Class cls = Integer.TYPE;
            xposedModule.hook(SurfaceView.class.getDeclaredMethod("setFrame", cls, cls, cls, cls)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.h$$ExternalSyntheticLambda1
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m1696a;
                    m1696a = C0106h.m1696a(C0106h.this, chain);
                    return m1696a;
                }
            });
            sharedPreferences.registerOnSharedPreferenceChangeListener(c0106h.f1620e);
            Log.i(f1615k, "READY SurfaceView layout; short-video containers required");
        } catch (ReflectiveOperationException | RuntimeException e) {
            c0106h.f1622g = true;
            Log.w(f1615k, "not installed: required layout feature unavailable", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0069  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ Object m1696a(C0106h c0106h, XposedInterface.Chain chain) throws Throwable {
        C0106h c0106h2;
        int i;
        Object[] objArr = null;
        if (!c0106h.f1622g) {
            try {
                c0106h2 = c0106h;
                try {
                    objArr = c0106h2.m1702a((SurfaceView) chain.getThisObject(), ((Integer) chain.getArg(0)).intValue(), ((Integer) chain.getArg(1)).intValue(), ((Integer) chain.getArg(2)).intValue(), ((Integer) chain.getArg(3)).intValue());
                    c0106h2.f1625j = 0;
                } catch (ReflectiveOperationException e) {
                    e = e;
                    Throwable th = e;
                    i = c0106h2.f1625j + 1;
                    c0106h2.f1625j = i;
                    if (i < 3) {
                        c0106h2.f1622g = true;
                        Log.e(f1615k, "disabled after 3 layout inspection failures", th);
                    } else if (i == 1) {
                        Log.w(f1615k, "layout inspection failed, will retry", th);
                    }
                    if (objArr == null) {
                    }
                } catch (RuntimeException e2) {
                    e = e2;
                    Throwable th2 = e;
                    i = c0106h2.f1625j + 1;
                    c0106h2.f1625j = i;
                    if (i < 3) {
                    }
                    if (objArr == null) {
                    }
                }
            } catch (ReflectiveOperationException e3) {
                e = e3;
                c0106h2 = c0106h;
            } catch (RuntimeException e4) {
                e = e4;
                c0106h2 = c0106h;
            }
        }
        return objArr == null ? chain.proceed() : chain.proceed(objArr);
    }

    /* renamed from: a */
    private Object[] m1702a(SurfaceView surfaceView, int i, int i2, int i3, int i4) throws ReflectiveOperationException {
        if (!m1700a(surfaceView.getParent(), "com.ss.android.ugc.aweme.feed.widget.VideoPinchViewContainer")) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) surfaceView.getParent();
        if (!m1700a(viewGroup.getParent(), "com.ss.android.ugc.aweme.ad.feed.VideoViewHolderRootView")) {
            return null;
        }
        this.f1619d.add(surfaceView);
        if (this.f1616a.getBoolean(C0071P.m1243f("com.ss.android.ugc.aweme"), C0071P.m1242e("com.ss.android.ugc.aweme"))) {
            return m1703a("skip:duo", surfaceView, i, i2, i3, i4, (int[]) null);
        }
        if (C0071P.m1229b(this.f1616a) && this.f1617b.getAsBoolean()) {
            if (!((Boolean) this.f1621f.invoke(null, "debug.duo.awemefit", Boolean.TRUE)).booleanValue()) {
                return m1703a("skip:property", surfaceView, i, i2, i3, i4, (int[]) null);
            }
            View rootView = surfaceView.getRootView();
            Display display = surfaceView.getDisplay();
            if (display == null) {
                return m1703a("skip:display", surfaceView, i, i2, i3, i4, (int[]) null);
            }
            if (rootView.getWidth() >= rootView.getHeight()) {
                return m1703a("skip:landscape", surfaceView, i, i2, i3, i4, (int[]) null);
            }
            if (viewGroup.getWidth() == rootView.getWidth() && viewGroup.getHeight() == rootView.getHeight()) {
                Display.Mode mode = display.getMode();
                if (Math.min(mode.getPhysicalWidth(), mode.getPhysicalHeight()) != rootView.getWidth() || Math.max(mode.getPhysicalWidth(), mode.getPhysicalHeight()) != rootView.getHeight()) {
                    return m1703a("skip:physical", surfaceView, i, i2, i3, i4, (int[]) null);
                }
                if (surfaceView.getScaleX() == 1.0f && surfaceView.getScaleY() == 1.0f && surfaceView.getTranslationX() == 0.0f && surfaceView.getTranslationY() == 0.0f && viewGroup.getScaleX() == 1.0f && viewGroup.getScaleY() == 1.0f) {
                    String m1263a = C0072Q.m1263a(new Rect(0, 0, rootView.getWidth(), rootView.getHeight()));
                    if (m1263a == null) {
                        return m1703a("skip:panel", surfaceView, i, i2, i3, i4, (int[]) null);
                    }
                    boolean z = this.f1616a.getBoolean(C0071P.m1214a(m1263a), true);
                    int[] m1701a = m1701a(viewGroup.getWidth(), viewGroup.getHeight(), i, i2, i3, i4, z);
                    return m1703a(m1263a + (z ? " FIT" : " FILL") + (m1701a == null ? " native" : " adjusted"), surfaceView, i, i2, i3, i4, m1701a);
                }
                return m1703a("skip:transform", surfaceView, i, i2, i3, i4, (int[]) null);
            }
            return m1703a("skip:container", surfaceView, i, i2, i3, i4, (int[]) null);
        }
        return m1703a("skip:master", surfaceView, i, i2, i3, i4, (int[]) null);
    }

    /* renamed from: a */
    private Object[] m1703a(String str, SurfaceView surfaceView, int i, int i2, int i3, int i4, int[] iArr) {
        int i5;
        if (!str.equals(this.f1623h) && (i5 = this.f1624i) < 16) {
            this.f1623h = str;
            this.f1624i = i5 + 1;
            View rootView = surfaceView.getRootView();
            View view = (View) surfaceView.getParent();
            Log.i(f1615k, str + " root=" + rootView.getWidth() + "x" + rootView.getHeight() + " container=" + view.getWidth() + "x" + view.getHeight() + " input=[" + i + "," + i2 + "," + i3 + "," + i4 + "] output=" + (iArr == null ? "native" : Arrays.toString(iArr)));
        }
        if (iArr == null) {
            return null;
        }
        return new Object[]{Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1]), Integer.valueOf(iArr[2]), Integer.valueOf(iArr[3])};
    }

    /* renamed from: a */
    static boolean m1700a(Object obj, String str) {
        if (obj == null) {
            return false;
        }
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            if (str.equals(cls.getName())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    static int[] m1701a(int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        int i7 = i5 - i3;
        int i8 = i6 - i4;
        if (i > 0 && i2 > i && i7 > 0 && i8 > i7 && Math.abs((i3 + i5) - i) <= 1 && Math.abs((i4 + i6) - i2) <= 1) {
            if (z) {
                if (i3 != 0 || i5 != i || i4 >= 0 || i6 <= i2) {
                    return null;
                }
                int round = Math.round((i7 * i2) / i8);
                int i9 = (i - round) / 2;
                return new int[]{i9, 0, round + i9, i2};
            }
            if (i4 == 0 && i6 == i2 && i3 > 0 && i5 < i) {
                int round2 = Math.round((i8 * i) / i7);
                int i10 = (i2 - round2) / 2;
                return new int[]{0, i10, i, round2 + i10};
            }
        }
        return null;
    }
}
