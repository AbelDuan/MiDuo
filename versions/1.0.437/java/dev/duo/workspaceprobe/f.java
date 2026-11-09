package dev.duo.workspaceprobe;

/* loaded from: classes.dex */
final class f {
    private static final java.lang.String a = "DuoRotation";
    private static final java.lang.String b = "show_rotation_suggestions";
    private static final int d = 16;
    private static final int e = 2;
    private static java.lang.ClassLoader h = null;
    private static android.content.Context i = null;
    private static java.lang.Object j = null;
    private static java.lang.Object k = null;
    private static boolean l = false;
    private static int m = 0;
    private static volatile boolean o = false;
    private static volatile boolean p = false;
    private static final int q = 1500;
    private static final int r = 40;
    private static final android.net.Uri c = android.net.Uri.parse("content://dev.duo.hookprobe.config/rotationSuggest");
    private static final android.os.Handler f = new android.os.Handler(android.os.Looper.getMainLooper());
    private static final java.util.concurrent.ExecutorService g = java.util.concurrent.Executors.newSingleThreadExecutor(new java.util.concurrent.ThreadFactory() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda7
        @Override // java.util.concurrent.ThreadFactory
        public final java.lang.Thread newThread(java.lang.Runnable runnable) {
            java.lang.Thread a2;
            a2 = dev.duo.workspaceprobe.f.a(runnable);
            return a2;
        }
    });
    private static volatile int n = -1;

    class a extends android.database.ContentObserver {
        a(android.os.Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            dev.duo.workspaceprobe.f.c("changed");
        }
    }

    class b implements android.view.View.OnAttachStateChangeListener {
        b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(android.view.View view) {
            dev.duo.workspaceprobe.f.b((android.widget.ImageView) view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(android.view.View view) {
        }
    }

    private static final class c extends android.graphics.Paint {
        c() {
            super.setColor(0);
        }

        @Override // android.graphics.Paint
        public void setColor(int i) {
        }
    }

    private static final class d extends android.graphics.drawable.Drawable {
        private final android.graphics.Paint a;
        private final boolean b;

        d(int i, boolean z) {
            android.graphics.Paint paint = new android.graphics.Paint(1);
            this.a = paint;
            this.b = z;
            paint.setColor(i);
            paint.setStyle(android.graphics.Paint.Style.STROKE);
            paint.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            paint.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(android.graphics.Canvas canvas) {
            android.graphics.Rect bounds = getBounds();
            float min = java.lang.Math.min(bounds.width(), bounds.height());
            float exactCenterX = bounds.exactCenterX();
            float exactCenterY = bounds.exactCenterY();
            canvas.save();
            if (this.b) {
                canvas.scale(-1.0f, 1.0f, exactCenterX, exactCenterY);
            }
            float f = (min * 28.0f) / 54.0f;
            float f2 = f / 2.0f;
            canvas.translate(exactCenterX - f2, exactCenterY - f2);
            float f3 = f / 24.0f;
            canvas.scale(f3, f3);
            this.a.setStrokeWidth(1.9f);
            canvas.drawArc(3.7f, 3.7f, 20.3f, 20.3f, -30.0f, 300.0f, false, this.a);
            canvas.drawLine(9.9f, 1.8f, 12.0f, 3.7f, this.a);
            canvas.drawLine(12.0f, 3.7f, 9.9f, 5.6f, this.a);
            canvas.drawRoundRect(9.8f, 8.4f, 14.2f, 15.6f, 1.1f, 1.1f, this.a);
            canvas.restore();
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(android.graphics.ColorFilter colorFilter) {
        }
    }

    private f() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ java.lang.Object b(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        int i2 = n;
        if (i2 < 0) {
            return chain.proceed();
        }
        java.lang.Object[] array = chain.getArgs().toArray();
        array[0] = java.lang.Integer.valueOf((((((java.lang.Integer) array[0]).intValue() - i2) + (i2 % 2 == 0 ? o : p)) + 4) % 4);
        return chain.proceed(array);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object c(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        if (((java.lang.Integer) chain.getArg(0)).intValue() == 0) {
            final int intValue = ((java.lang.Integer) chain.getArg(2)).intValue();
            f.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.f.m = intValue;
                }
            });
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object d(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Thread a(java.lang.Runnable runnable) {
        java.lang.Thread thread = new java.lang.Thread(runnable, "DuoRotationConfig");
        thread.setDaemon(true);
        return thread;
    }

    static void a(io.github.libxposed.api.XposedModule xposedModule, java.lang.ClassLoader classLoader) {
        h = classLoader;
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.android.systemui.statusbar.CommandQueue", false, classLoader);
            java.lang.Class cls2 = java.lang.Integer.TYPE;
            java.lang.Class cls3 = java.lang.Boolean.TYPE;
            xposedModule.hook(cls.getDeclaredMethod("onProposedRotationChanged", cls2, cls3)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda1
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a2;
                    a2 = dev.duo.workspaceprobe.f.a(chain);
                    return a2;
                }
            });
            xposedModule.hook(java.lang.Class.forName("com.android.systemui.shared.rotation.FloatingRotationButtonPositionCalculator", false, classLoader).getDeclaredMethod("calculatePosition", cls2, cls3, cls3)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda2
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object b2;
                    b2 = dev.duo.workspaceprobe.f.b(chain);
                    return b2;
                }
            });
            xposedModule.hook(cls.getDeclaredMethod("disable", cls2, cls2, cls2, cls3)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda3
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object c2;
                    c2 = dev.duo.workspaceprobe.f.c(chain);
                    return c2;
                }
            });
            xposedModule.hook(java.lang.Class.forName("com.android.systemui.navigationbar.views.NavigationBar", false, classLoader).getDeclaredMethod("onRotationProposal", cls2, cls3)).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda4
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object d2;
                    d2 = dev.duo.workspaceprobe.f.d(chain);
                    return d2;
                }
            });
            android.util.Log.i(a, "Rotation suggestion hooks ready");
        } catch (java.lang.Throwable th) {
            android.util.Log.e(a, "Rotation suggestion hooks unavailable", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(final java.lang.String str) {
        g.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.f.b(str);
            }
        });
    }

    private static void c(android.widget.ImageView imageView) throws java.lang.ReflectiveOperationException {
        a(imageView, "mOvalBgPaint", new dev.duo.workspaceprobe.f.c());
        imageView.setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
        imageView.setPadding(0, 0, 0, 0);
        imageView.setOnTouchListener(new android.view.View.OnTouchListener() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
                boolean a2;
                a2 = dev.duo.workspaceprobe.f.a(view, motionEvent);
                return a2;
            }
        });
        imageView.addOnAttachStateChangeListener(new dev.duo.workspaceprobe.f.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(java.lang.String str) {
        java.lang.String str2 = "on";
        try {
            android.os.Bundle call = i.getContentResolver().call(android.net.Uri.parse("content://dev.duo.hookprobe.config"), "rotationSuggest", (java.lang.String) null, (android.os.Bundle) null);
            if (call != null) {
                o = call.getBoolean("portraitRight", false);
                p = call.getBoolean("landscapeRight", false);
            }
            if (call != null && call.containsKey("on")) {
                boolean z = call.getBoolean("on");
                android.content.ContentResolver contentResolver = i.getContentResolver();
                if (android.provider.Settings.Secure.getInt(contentResolver, b, -1) != z) {
                    android.provider.Settings.Secure.putInt(contentResolver, b, z ? 1 : 0);
                }
                java.lang.StringBuilder append = new java.lang.StringBuilder().append("Rotation suggestion ");
                if (!z) {
                    str2 = "off";
                }
                java.lang.String str3 = "right";
                java.lang.StringBuilder append2 = append.append(str2).append(" portrait=").append(o ? "right" : "left").append(" landscape=");
                if (!p) {
                    str3 = "left";
                }
                android.util.Log.i(a, append2.append(str3).append(" (").append(str).append(")").toString());
                if (z) {
                    return;
                }
                f.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.f.b();
                    }
                });
                return;
            }
            android.util.Log.i(a, "Rotation suggestion switch unset (" + str + "), system setting kept");
        } catch (java.lang.Throwable th) {
            android.util.Log.w(a, "Rotation suggestion sync failed (" + str + ")", th);
        }
    }

    private static boolean c() {
        return (i.getResources().getConfiguration().uiMode & 48) == 32;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        final int intValue = ((java.lang.Integer) chain.getArg(0)).intValue();
        final boolean booleanValue = ((java.lang.Boolean) chain.getArg(1)).booleanValue();
        f.post(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.f.b(intValue, booleanValue);
            }
        });
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b() {
        try {
            java.lang.Object obj = j;
            if (obj != null) {
                a(obj, "setRotateSuggestionButtonState", java.lang.Boolean.FALSE, java.lang.Boolean.TRUE);
            }
        } catch (java.lang.Throwable th) {
            android.util.Log.w(a, "Rotation button hide failed", th);
        }
    }

    static void a(android.content.Context context) {
        if (i != null) {
            return;
        }
        i = context;
        try {
            context.getContentResolver().registerContentObserver(c, false, new dev.duo.workspaceprobe.f.a(f));
        } catch (java.lang.Throwable th) {
            android.util.Log.w(a, "Rotation suggestion observer unavailable", th);
        }
        c("start");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0142 A[Catch: all -> 0x0162, TryCatch #0 {all -> 0x0162, blocks: (B:6:0x0012, B:8:0x002b, B:13:0x003e, B:16:0x0062, B:18:0x006e, B:22:0x007c, B:24:0x008a, B:29:0x009c, B:32:0x00a8, B:34:0x00bd, B:44:0x0106, B:46:0x0142, B:48:0x014a), top: B:5:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x014a A[Catch: all -> 0x0162, TRY_LEAVE, TryCatch #0 {all -> 0x0162, blocks: (B:6:0x0012, B:8:0x002b, B:13:0x003e, B:16:0x0062, B:18:0x006e, B:22:0x007c, B:24:0x008a, B:29:0x009c, B:32:0x00a8, B:34:0x00bd, B:44:0x0106, B:46:0x0142, B:48:0x014a), top: B:5:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(int r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.workspaceprobe.f.b(int, boolean):void");
    }

    private static boolean a() {
        if (j != null) {
            return true;
        }
        if (!l && i != null) {
            try {
                android.content.Context context = i;
                java.lang.Object newInstance = java.lang.Class.forName("com.android.systemui.navigationbar.views.NavigationBarView", false, h).getConstructor(android.content.Context.class, android.util.AttributeSet.class).newInstance(new android.view.ContextThemeWrapper(context, context.getApplicationInfo().theme), null);
                a(newInstance, "setRotationPolicyWrapper", java.lang.Class.forName("com.android.systemui.rotation.impl.RotationPolicyWrapperImpl", false, h).getConstructor(android.content.Context.class).newInstance(i));
                a(newInstance, "updateRotationButton", new java.lang.Object[0]);
                java.lang.Object a2 = a(newInstance, "mRotationButtonController");
                java.lang.Object a3 = a(a2, "mRotationButton");
                c((android.widget.ImageView) a(a3, "mKeyButtonView"));
                a(a3, "mUpdatesCallback", (java.lang.Object) null);
                java.lang.Object a4 = a(a3, "mPositionCalculator");
                java.lang.Boolean bool = java.lang.Boolean.TRUE;
                a(a4, "floatingRotationButtonPositionLeft", bool);
                a(a2, "mNavBarMode", (java.lang.Object) 2);
                a(a2, "mListenersRegistered", bool);
                java.lang.Class<?> cls = java.lang.Class.forName("com.android.systemui.shared.system.TaskStackChangeListeners", false, h);
                java.lang.Object obj = cls.getField("INSTANCE").get(null);
                for (java.lang.reflect.Method method : cls.getMethods()) {
                    if (method.getName().equals("registerTaskStackListener")) {
                        method.invoke(obj, a(a2, "mTaskStackListener"));
                    }
                }
                java.lang.Class.forName(dev.duo.taskcore.h.b).getMethod("watchRotation", java.lang.Class.forName("android.view.IRotationWatcher"), java.lang.Integer.TYPE).invoke(java.lang.Class.forName("android.view.WindowManagerGlobal").getMethod("getWindowManagerService", null).invoke(null, null), a(a2, "mRotationWatcher"), 0);
                a(a2, "mRotationWatcherRegistered", java.lang.Boolean.TRUE);
                j = a2;
                k = a3;
                android.util.Log.i(a, "Native rotation button ready light=" + java.lang.Integer.toHexString(((java.lang.Integer) a(a2, "mLightIconColor")).intValue()) + " dark=" + java.lang.Integer.toHexString(((java.lang.Integer) a(a2, "mDarkIconColor")).intValue()));
                return true;
            } catch (java.lang.Throwable th) {
                l = true;
                android.util.Log.e(a, "Native rotation button unavailable", th);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v9, types: [android.graphics.drawable.LayerDrawable] */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.widget.ImageView, java.lang.Object] */
    public static void b(android.widget.ImageView imageView) {
        boolean c2 = c();
        try {
            float intValue = ((java.lang.Integer) a((java.lang.Object) imageView, "mDiameter")).intValue() / 2.0f;
            android.graphics.drawable.GradientDrawable gradientDrawable = new android.graphics.drawable.GradientDrawable();
            gradientDrawable.setCornerRadius(intValue);
            gradientDrawable.setColor(c2 ? -1204143554 : -939524097);
            gradientDrawable.setStroke(java.lang.Math.max(1, java.lang.Math.round(i.getResources().getDisplayMetrics().density * 0.5f)), c2 ? 620756991 : 251658240);
            imageView.setElevation(i.getResources().getDisplayMetrics().density * 6.0f);
            try {
                java.lang.Object invoke = android.view.View.class.getMethod("getViewRootImpl", null).invoke(imageView, null);
                if (invoke != null) {
                    android.graphics.drawable.Drawable drawable = (android.graphics.drawable.Drawable) invoke.getClass().getMethod("createBackgroundBlurDrawable", null).invoke(invoke, null);
                    drawable.getClass().getMethod("setBlurRadius", java.lang.Integer.TYPE).invoke(drawable, 40);
                    drawable.getClass().getMethod("setCornerRadius", java.lang.Float.TYPE).invoke(drawable, java.lang.Float.valueOf(intValue));
                    gradientDrawable = new android.graphics.drawable.LayerDrawable(new android.graphics.drawable.Drawable[]{drawable, gradientDrawable});
                }
            } catch (java.lang.ReflectiveOperationException e2) {
                android.util.Log.w(a, "Rotation button blur unavailable; glass only", e2);
            }
            imageView.setBackground(gradientDrawable);
        } catch (java.lang.ReflectiveOperationException e3) {
            android.util.Log.w(a, "Rotation button diameter unreadable", e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(android.view.View view, android.view.MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            view.animate().scaleX(0.92f).scaleY(0.92f).setDuration(90L).start();
            return false;
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return false;
        }
        view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(180L).start();
        return false;
    }

    private static void a(android.widget.ImageView imageView, boolean z) {
        imageView.setImageDrawable(new dev.duo.workspaceprobe.f.d(c() ? -1 : -14935010, z));
        b(imageView);
    }

    private static boolean a(int i2, int i3) {
        return i3 != (i2 + 1) % 4;
    }

    private static java.lang.reflect.Field a(java.lang.Class<?> cls, java.lang.String str) throws java.lang.NoSuchFieldException {
        for (java.lang.Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            try {
                java.lang.reflect.Field declaredField = cls2.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField;
            } catch (java.lang.NoSuchFieldException e2) {
            }
        }
        throw new java.lang.NoSuchFieldException(cls.getName() + "." + str);
    }

    private static java.lang.Object a(java.lang.Object obj, java.lang.String str) throws java.lang.ReflectiveOperationException {
        return a(obj.getClass(), str).get(obj);
    }

    private static void a(java.lang.Object obj, java.lang.String str, java.lang.Object obj2) throws java.lang.ReflectiveOperationException {
        a(obj.getClass(), str).set(obj, obj2);
    }

    private static java.lang.Object a(java.lang.Object obj, java.lang.String str, java.lang.Object... objArr) throws java.lang.ReflectiveOperationException {
        for (java.lang.reflect.Method method : obj.getClass().getMethods()) {
            if (method.getName().equals(str) && method.getParameterTypes().length == objArr.length) {
                return method.invoke(obj, objArr);
            }
        }
        throw new java.lang.NoSuchMethodException(obj.getClass().getName() + "." + str);
    }
}
