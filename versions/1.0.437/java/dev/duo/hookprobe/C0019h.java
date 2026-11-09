package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
final class C0019h {
    private static final java.lang.String k = "DuoAwemeFit";
    private final android.content.SharedPreferences a;
    private final java.util.function.BooleanSupplier b;
    private final android.os.Handler c = new android.os.Handler(android.os.Looper.getMainLooper());
    private final java.util.Set<android.view.SurfaceView> d = java.util.Collections.newSetFromMap(new java.util.WeakHashMap());
    private final android.content.SharedPreferences.OnSharedPreferenceChangeListener e = new android.content.SharedPreferences.OnSharedPreferenceChangeListener() { // from class: dev.duo.hookprobe.h$$ExternalSyntheticLambda2
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
            dev.duo.hookprobe.C0019h.this.a(sharedPreferences, str);
        }
    };
    private java.lang.reflect.Method f;
    private boolean g;
    private java.lang.String h;
    private int i;
    private int j;

    private C0019h(android.content.SharedPreferences sharedPreferences, java.util.function.BooleanSupplier booleanSupplier) {
        this.a = sharedPreferences;
        this.b = booleanSupplier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
        if (str == null || "com.ss.android.ugc.aweme/outerVideoFit".equals(str) || "com.ss.android.ugc.aweme/innerVideoFit".equals(str) || "_global/master".equals(str) || dev.duo.hookprobe.P.f("com.ss.android.ugc.aweme").equals(str)) {
            this.c.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.h$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.C0019h.this.a();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        for (android.view.SurfaceView surfaceView : this.d) {
            if (surfaceView.isAttachedToWindow()) {
                surfaceView.requestLayout();
            }
        }
    }

    static void a(io.github.libxposed.api.XposedModule xposedModule, java.lang.ClassLoader classLoader, android.content.SharedPreferences sharedPreferences, java.util.function.BooleanSupplier booleanSupplier) {
        final dev.duo.hookprobe.C0019h c0019h = new dev.duo.hookprobe.C0019h(sharedPreferences, booleanSupplier);
        try {
            c0019h.f = java.lang.Class.forName("android.os.SystemProperties").getMethod("getBoolean", java.lang.String.class, java.lang.Boolean.TYPE);
            java.lang.Class cls = java.lang.Integer.TYPE;
            xposedModule.hook(android.view.SurfaceView.class.getDeclaredMethod("setFrame", cls, cls, cls, cls)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.hookprobe.h$$ExternalSyntheticLambda1
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a;
                    a = dev.duo.hookprobe.C0019h.a(dev.duo.hookprobe.C0019h.this, chain);
                    return a;
                }
            });
            sharedPreferences.registerOnSharedPreferenceChangeListener(c0019h.e);
            android.util.Log.i(k, "READY SurfaceView layout; short-video containers required");
        } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e) {
            c0019h.g = true;
            android.util.Log.w(k, "not installed: required layout feature unavailable", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object a(dev.duo.hookprobe.C0019h r10, io.github.libxposed.api.XposedInterface.Chain r11) throws java.lang.Throwable {
        /*
            boolean r0 = r10.g
            r1 = 0
            if (r0 != 0) goto L62
            r2 = 3
            r3 = 1
            java.lang.Object r0 = r11.getThisObject()     // Catch: java.lang.RuntimeException -> L44 java.lang.ReflectiveOperationException -> L47
            r5 = r0
            android.view.SurfaceView r5 = (android.view.SurfaceView) r5     // Catch: java.lang.RuntimeException -> L44 java.lang.ReflectiveOperationException -> L47
            r0 = 0
            java.lang.Object r4 = r11.getArg(r0)     // Catch: java.lang.RuntimeException -> L44 java.lang.ReflectiveOperationException -> L47
            java.lang.Integer r4 = (java.lang.Integer) r4     // Catch: java.lang.RuntimeException -> L44 java.lang.ReflectiveOperationException -> L47
            int r6 = r4.intValue()     // Catch: java.lang.RuntimeException -> L44 java.lang.ReflectiveOperationException -> L47
            java.lang.Object r4 = r11.getArg(r3)     // Catch: java.lang.RuntimeException -> L44 java.lang.ReflectiveOperationException -> L47
            java.lang.Integer r4 = (java.lang.Integer) r4     // Catch: java.lang.RuntimeException -> L44 java.lang.ReflectiveOperationException -> L47
            int r7 = r4.intValue()     // Catch: java.lang.RuntimeException -> L44 java.lang.ReflectiveOperationException -> L47
            r4 = 2
            java.lang.Object r4 = r11.getArg(r4)     // Catch: java.lang.RuntimeException -> L44 java.lang.ReflectiveOperationException -> L47
            java.lang.Integer r4 = (java.lang.Integer) r4     // Catch: java.lang.RuntimeException -> L44 java.lang.ReflectiveOperationException -> L47
            int r8 = r4.intValue()     // Catch: java.lang.RuntimeException -> L44 java.lang.ReflectiveOperationException -> L47
            java.lang.Object r4 = r11.getArg(r2)     // Catch: java.lang.RuntimeException -> L44 java.lang.ReflectiveOperationException -> L47
            java.lang.Integer r4 = (java.lang.Integer) r4     // Catch: java.lang.RuntimeException -> L44 java.lang.ReflectiveOperationException -> L47
            int r9 = r4.intValue()     // Catch: java.lang.RuntimeException -> L44 java.lang.ReflectiveOperationException -> L47
            r4 = r10
            java.lang.Object[] r1 = r4.a(r5, r6, r7, r8, r9)     // Catch: java.lang.RuntimeException -> L40 java.lang.ReflectiveOperationException -> L42
            r4.j = r0     // Catch: java.lang.RuntimeException -> L40 java.lang.ReflectiveOperationException -> L42
            goto L62
        L40:
            r0 = move-exception
            goto L49
        L42:
            r0 = move-exception
            goto L49
        L44:
            r0 = move-exception
            r4 = r10
            goto L49
        L47:
            r0 = move-exception
            r4 = r10
        L49:
            r10 = r0
            int r0 = r4.j
            int r0 = r0 + r3
            r4.j = r0
            java.lang.String r5 = "DuoAwemeFit"
            if (r0 < r2) goto L5b
            r4.g = r3
            java.lang.String r0 = "disabled after 3 layout inspection failures"
            android.util.Log.e(r5, r0, r10)
            goto L62
        L5b:
            if (r0 != r3) goto L62
            java.lang.String r0 = "layout inspection failed, will retry"
            android.util.Log.w(r5, r0, r10)
        L62:
            if (r1 != 0) goto L69
            java.lang.Object r10 = r11.proceed()
            goto L6d
        L69:
            java.lang.Object r10 = r11.proceed(r1)
        L6d:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.C0019h.a(dev.duo.hookprobe.h, io.github.libxposed.api.XposedInterface$Chain):java.lang.Object");
    }

    private java.lang.Object[] a(android.view.SurfaceView surfaceView, int i, int i2, int i3, int i4) throws java.lang.ReflectiveOperationException {
        if (!a(surfaceView.getParent(), "com.ss.android.ugc.aweme.feed.widget.VideoPinchViewContainer")) {
            return null;
        }
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) surfaceView.getParent();
        if (!a(viewGroup.getParent(), "com.ss.android.ugc.aweme.ad.feed.VideoViewHolderRootView")) {
            return null;
        }
        this.d.add(surfaceView);
        if (this.a.getBoolean(dev.duo.hookprobe.P.f("com.ss.android.ugc.aweme"), dev.duo.hookprobe.P.e("com.ss.android.ugc.aweme"))) {
            return a("skip:duo", surfaceView, i, i2, i3, i4, (int[]) null);
        }
        if (dev.duo.hookprobe.P.b(this.a) && this.b.getAsBoolean()) {
            if (!((java.lang.Boolean) this.f.invoke(null, "debug.duo.awemefit", java.lang.Boolean.TRUE)).booleanValue()) {
                return a("skip:property", surfaceView, i, i2, i3, i4, (int[]) null);
            }
            android.view.View rootView = surfaceView.getRootView();
            android.view.Display display = surfaceView.getDisplay();
            if (display == null) {
                return a("skip:display", surfaceView, i, i2, i3, i4, (int[]) null);
            }
            if (rootView.getWidth() >= rootView.getHeight()) {
                return a("skip:landscape", surfaceView, i, i2, i3, i4, (int[]) null);
            }
            if (viewGroup.getWidth() == rootView.getWidth() && viewGroup.getHeight() == rootView.getHeight()) {
                android.view.Display.Mode mode = display.getMode();
                if (java.lang.Math.min(mode.getPhysicalWidth(), mode.getPhysicalHeight()) != rootView.getWidth() || java.lang.Math.max(mode.getPhysicalWidth(), mode.getPhysicalHeight()) != rootView.getHeight()) {
                    return a("skip:physical", surfaceView, i, i2, i3, i4, (int[]) null);
                }
                if (surfaceView.getScaleX() == 1.0f && surfaceView.getScaleY() == 1.0f && surfaceView.getTranslationX() == 0.0f && surfaceView.getTranslationY() == 0.0f && viewGroup.getScaleX() == 1.0f && viewGroup.getScaleY() == 1.0f) {
                    java.lang.String a = dev.duo.hookprobe.Q.a(new android.graphics.Rect(0, 0, rootView.getWidth(), rootView.getHeight()));
                    if (a == null) {
                        return a("skip:panel", surfaceView, i, i2, i3, i4, (int[]) null);
                    }
                    boolean z = this.a.getBoolean(dev.duo.hookprobe.P.a(a), true);
                    int[] a2 = a(viewGroup.getWidth(), viewGroup.getHeight(), i, i2, i3, i4, z);
                    return a(a + (z ? " FIT" : " FILL") + (a2 == null ? " native" : " adjusted"), surfaceView, i, i2, i3, i4, a2);
                }
                return a("skip:transform", surfaceView, i, i2, i3, i4, (int[]) null);
            }
            return a("skip:container", surfaceView, i, i2, i3, i4, (int[]) null);
        }
        return a("skip:master", surfaceView, i, i2, i3, i4, (int[]) null);
    }

    private java.lang.Object[] a(java.lang.String str, android.view.SurfaceView surfaceView, int i, int i2, int i3, int i4, int[] iArr) {
        int i5;
        if (!str.equals(this.h) && (i5 = this.i) < 16) {
            this.h = str;
            this.i = i5 + 1;
            android.view.View rootView = surfaceView.getRootView();
            android.view.View view = (android.view.View) surfaceView.getParent();
            android.util.Log.i(k, str + " root=" + rootView.getWidth() + "x" + rootView.getHeight() + " container=" + view.getWidth() + "x" + view.getHeight() + " input=[" + i + "," + i2 + "," + i3 + "," + i4 + "] output=" + (iArr == null ? "native" : java.util.Arrays.toString(iArr)));
        }
        if (iArr == null) {
            return null;
        }
        return new java.lang.Object[]{java.lang.Integer.valueOf(iArr[0]), java.lang.Integer.valueOf(iArr[1]), java.lang.Integer.valueOf(iArr[2]), java.lang.Integer.valueOf(iArr[3])};
    }

    static boolean a(java.lang.Object obj, java.lang.String str) {
        if (obj == null) {
            return false;
        }
        for (java.lang.Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            if (str.equals(cls.getName())) {
                return true;
            }
        }
        return false;
    }

    static int[] a(int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        int i7 = i5 - i3;
        int i8 = i6 - i4;
        if (i > 0 && i2 > i && i7 > 0 && i8 > i7 && java.lang.Math.abs((i3 + i5) - i) <= 1 && java.lang.Math.abs((i4 + i6) - i2) <= 1) {
            if (z) {
                if (i3 != 0 || i5 != i || i4 >= 0 || i6 <= i2) {
                    return null;
                }
                int round = java.lang.Math.round((i7 * i2) / i8);
                int i9 = (i - round) / 2;
                return new int[]{i9, 0, round + i9, i2};
            }
            if (i4 == 0 && i6 == i2 && i3 > 0 && i5 < i) {
                int round2 = java.lang.Math.round((i8 * i) / i7);
                int i10 = (i2 - round2) / 2;
                return new int[]{0, i10, i, round2 + i10};
            }
        }
        return null;
    }
}
