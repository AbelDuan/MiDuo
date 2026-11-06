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

/* renamed from: dev.duo.hookprobe.h, reason: case insensitive filesystem */
/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class h {
    private static final String k = "DuoAwemeFit";
    private final SharedPreferences a;
    private final BooleanSupplier b;
    private final Handler c = new Handler(Looper.getMainLooper());
    private final Set<SurfaceView> d = Collections.newSetFromMap(new WeakHashMap());
    private final SharedPreferences.OnSharedPreferenceChangeListener e = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: dev.duo.hookprobe.h$$ExternalSyntheticLambda2
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            h.this.a(sharedPreferences, str);
        }
    };
    private Method f;
    private boolean g;
    private String h;
    private int i;
    private int j;

    private h(SharedPreferences sharedPreferences, BooleanSupplier booleanSupplier) {
        this.a = sharedPreferences;
        this.b = booleanSupplier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(SharedPreferences sharedPreferences, String str) {
        if (str == null || "com.ss.android.ugc.aweme/outerVideoFit".equals(str) || "com.ss.android.ugc.aweme/innerVideoFit".equals(str) || "_global/master".equals(str) || P.f("com.ss.android.ugc.aweme").equals(str)) {
            this.c.post(new Runnable() { // from class: dev.duo.hookprobe.h$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    h.this.a();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        for (SurfaceView surfaceView : this.d) {
            if (surfaceView.isAttachedToWindow()) {
                surfaceView.requestLayout();
            }
        }
    }

    static void a(XposedModule xposedModule, ClassLoader classLoader, SharedPreferences sharedPreferences, BooleanSupplier booleanSupplier) {
        final h c0015h = new h(sharedPreferences, booleanSupplier);
        try {
            c0015h.f = Class.forName("android.os.SystemProperties").getMethod("getBoolean", String.class, Boolean.TYPE);
            Class cls = Integer.TYPE;
            xposedModule.hook(SurfaceView.class.getDeclaredMethod("setFrame", cls, cls, cls, cls)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.hookprobe.h$$ExternalSyntheticLambda1
                public final Object intercept(XposedInterface.Chain chain) {
                    Object a;
                    a = dev.duo.hookprobe.h.a(h.this, chain);
                    return a;
                }
            });
            sharedPreferences.registerOnSharedPreferenceChangeListener(c0015h.e);
            Log.i(k, "READY SurfaceView layout; short-video containers required");
        } catch (ReflectiveOperationException | RuntimeException e) {
            c0015h.g = true;
            Log.w(k, "not installed: required layout feature unavailable", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ Object a(h c0015h, XposedInterface.Chain chain) throws Throwable {
        h c0015h2;
        int i;
        Object[] objArr = null;
        if (!c0015h.g) {
            try {
                c0015h2 = c0015h;
                try {
                    objArr = c0015h2.a((SurfaceView) chain.getThisObject(), ((Integer) chain.getArg(0)).intValue(), ((Integer) chain.getArg(1)).intValue(), ((Integer) chain.getArg(2)).intValue(), ((Integer) chain.getArg(3)).intValue());
                    c0015h2.j = 0;
                } catch (ReflectiveOperationException e) {
                    e = e;
                    Throwable th = e;
                    i = c0015h2.j + 1;
                    c0015h2.j = i;
                    if (i < 3) {
                        c0015h2.g = true;
                        Log.e(k, "disabled after 3 layout inspection failures", th);
                    } else if (i == 1) {
                        Log.w(k, "layout inspection failed, will retry", th);
                    }
                    if (objArr == null) {
                    }
                } catch (RuntimeException e2) {
                    Throwable th = e2;
                    Throwable th2 = th;
                    i = c0015h2.j + 1;
                    c0015h2.j = i;
                    if (i < 3) {
                    }
                    if (objArr == null) {
                    }
                }
            } catch (ReflectiveOperationException e3) {
                Throwable th = e3;
                c0015h2 = c0015h;
            } catch (RuntimeException e4) {
                Throwable th = e4;
                c0015h2 = c0015h;
            }
        }
        return objArr == null ? chain.proceed() : chain.proceed(objArr);
    }

    private Object[] a(SurfaceView surfaceView, int i, int i2, int i3, int i4) throws ReflectiveOperationException {
        if (!a(surfaceView.getParent(), "com.ss.android.ugc.aweme.feed.widget.VideoPinchViewContainer")) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) surfaceView.getParent();
        if (!a(viewGroup.getParent(), "com.ss.android.ugc.aweme.ad.feed.VideoViewHolderRootView")) {
            return null;
        }
        this.d.add(surfaceView);
        if (this.a.getBoolean(P.f("com.ss.android.ugc.aweme"), P.e("com.ss.android.ugc.aweme"))) {
            return a("skip:duo", surfaceView, i, i2, i3, i4, (int[]) null);
        }
        if (P.b(this.a) && this.b.getAsBoolean()) {
            if (!((Boolean) this.f.invoke(null, "debug.duo.awemefit", Boolean.TRUE)).booleanValue()) {
                return a("skip:property", surfaceView, i, i2, i3, i4, (int[]) null);
            }
            View rootView = surfaceView.getRootView();
            Display display = surfaceView.getDisplay();
            if (display == null) {
                return a("skip:display", surfaceView, i, i2, i3, i4, (int[]) null);
            }
            if (rootView.getWidth() >= rootView.getHeight()) {
                return a("skip:landscape", surfaceView, i, i2, i3, i4, (int[]) null);
            }
            if (viewGroup.getWidth() == rootView.getWidth() && viewGroup.getHeight() == rootView.getHeight()) {
                Display.Mode mode = display.getMode();
                if (Math.min(mode.getPhysicalWidth(), mode.getPhysicalHeight()) != rootView.getWidth() || Math.max(mode.getPhysicalWidth(), mode.getPhysicalHeight()) != rootView.getHeight()) {
                    return a("skip:physical", surfaceView, i, i2, i3, i4, (int[]) null);
                }
                if (surfaceView.getScaleX() == 1.0f && surfaceView.getScaleY() == 1.0f && surfaceView.getTranslationX() == 0.0f && surfaceView.getTranslationY() == 0.0f && viewGroup.getScaleX() == 1.0f && viewGroup.getScaleY() == 1.0f) {
                    String a = Q.a(new Rect(0, 0, rootView.getWidth(), rootView.getHeight()));
                    if (a == null) {
                        return a("skip:panel", surfaceView, i, i2, i3, i4, (int[]) null);
                    }
                    boolean z = this.a.getBoolean(P.a(a), true);
                    int[] a2 = a(viewGroup.getWidth(), viewGroup.getHeight(), i, i2, i3, i4, z);
                    return a(a + (z ? " FIT" : " FILL") + (a2 == null ? " native" : " adjusted"), surfaceView, i, i2, i3, i4, a2);
                }
                return a("skip:transform", surfaceView, i, i2, i3, i4, (int[]) null);
            }
            return a("skip:container", surfaceView, i, i2, i3, i4, (int[]) null);
        }
        return a("skip:master", surfaceView, i, i2, i3, i4, (int[]) null);
    }

    private Object[] a(String str, SurfaceView surfaceView, int i, int i2, int i3, int i4, int[] iArr) {
        int i5;
        if (!str.equals(this.h) && (i5 = this.i) < 16) {
            this.h = str;
            this.i = i5 + 1;
            View rootView = surfaceView.getRootView();
            View view = (View) surfaceView.getParent();
            Log.i(k, str + " root=" + rootView.getWidth() + "x" + rootView.getHeight() + " container=" + view.getWidth() + "x" + view.getHeight() + " input=[" + i + "," + i2 + "," + i3 + "," + i4 + "] output=" + (iArr == null ? "native" : Arrays.toString(iArr)));
        }
        if (iArr == null) {
            return null;
        }
        return new Object[]{Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1]), Integer.valueOf(iArr[2]), Integer.valueOf(iArr[3])};
    }

    static boolean a(Object obj, String str) {
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

    static int[] a(int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
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
