package dev.duo.workspaceprobe;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import dev.duo.taskcore.WorkspaceProtocol;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* renamed from: dev.duo.workspaceprobe.f */
/* loaded from: classes.dex */
final class C0147f {

    /* renamed from: a */
    private static final String f2807a = "DuoRotation";

    /* renamed from: b */
    private static final String f2808b = "show_rotation_suggestions";

    /* renamed from: d */
    private static final int f2810d = 16;

    /* renamed from: e */
    private static final int f2811e = 2;

    /* renamed from: h */
    private static ClassLoader f2814h = null;

    /* renamed from: i */
    private static Context f2815i = null;

    /* renamed from: j */
    private static Object f2816j = null;

    /* renamed from: k */
    private static Object f2817k = null;

    /* renamed from: l */
    private static boolean f2818l = false;

    /* renamed from: m */
    private static int f2819m = 0;

    /* renamed from: o */
    private static volatile boolean f2821o = false;

    /* renamed from: p */
    private static volatile boolean f2822p = false;

    /* renamed from: q */
    private static boolean f2823q = false;

    /* renamed from: r */
    private static final int f2824r = 1500;

    /* renamed from: s */
    private static final int f2825s = 40;

    /* renamed from: c */
    private static final Uri f2809c = Uri.parse("content://dev.duo.hookprobe.config/rotationSuggest");

    /* renamed from: f */
    private static final Handler f2812f = new Handler(Looper.getMainLooper());

    /* renamed from: g */
    private static final ExecutorService f2813g = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda6
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread m2932a;
            m2932a = C0147f.m2932a(runnable);
            return m2932a;
        }
    });

    /* renamed from: n */
    private static volatile int f2820n = -1;

    /* renamed from: dev.duo.workspaceprobe.f$a */
    class a extends ContentObserver {
        a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            C0147f.m2952c("changed");
        }
    }

    /* renamed from: dev.duo.workspaceprobe.f$b */
    class b implements View.OnAttachStateChangeListener {
        b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            C0147f.m2948b((ImageView) view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* renamed from: dev.duo.workspaceprobe.f$c */
    private static final class c extends Paint {
        c() {
            super.setColor(0);
        }

        @Override // android.graphics.Paint
        public void setColor(int i) {
        }
    }

    /* renamed from: dev.duo.workspaceprobe.f$d */
    private static final class d extends Drawable {

        /* renamed from: a */
        private final Paint f2826a;

        /* renamed from: b */
        private final boolean f2827b;

        d(int i, boolean z) {
            Paint paint = new Paint(1);
            this.f2826a = paint;
            this.f2827b = z;
            paint.setColor(i);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint.setStrokeJoin(Paint.Join.ROUND);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            Rect bounds = getBounds();
            float min = Math.min(bounds.width(), bounds.height());
            float exactCenterX = bounds.exactCenterX();
            float exactCenterY = bounds.exactCenterY();
            canvas.save();
            if (this.f2827b) {
                canvas.scale(-1.0f, 1.0f, exactCenterX, exactCenterY);
            }
            float f = (min * 28.0f) / 54.0f;
            float f2 = f / 2.0f;
            canvas.translate(exactCenterX - f2, exactCenterY - f2);
            float f3 = f / 24.0f;
            canvas.scale(f3, f3);
            this.f2826a.setStrokeWidth(1.9f);
            canvas.drawArc(3.7f, 3.7f, 20.3f, 20.3f, -30.0f, 300.0f, false, this.f2826a);
            canvas.drawLine(9.9f, 1.8f, 12.0f, 3.7f, this.f2826a);
            canvas.drawLine(12.0f, 3.7f, 9.9f, 5.6f, this.f2826a);
            canvas.drawRoundRect(9.8f, 8.4f, 14.2f, 15.6f, 1.1f, 1.1f, this.f2826a);
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
        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    private C0147f() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static /* synthetic */ Object m2945b(XposedInterface.Chain chain) throws Throwable {
        int i = f2820n;
        if (i < 0) {
            return chain.proceed();
        }
        Object[] array = chain.getArgs().toArray();
        array[0] = Integer.valueOf((((((Integer) array[0]).intValue() - i) + (i % 2 == 0 ? f2821o : f2822p)) + 4) % 4);
        return chain.proceed(array);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ Object m2950c(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (((Integer) chain.getArg(0)).intValue() == 0) {
            final int intValue = ((Integer) chain.getArg(2)).intValue();
            f2812f.post(new Runnable() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    C0147f.f2819m = intValue;
                }
            });
        }
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Thread m2932a(Runnable runnable) {
        Thread thread = new Thread(runnable, "DuoRotationConfig");
        thread.setDaemon(true);
        return thread;
    }

    /* renamed from: a */
    static void m2939a(XposedModule xposedModule, ClassLoader classLoader) {
        f2814h = classLoader;
        try {
            Class<?> cls = Class.forName("com.android.systemui.statusbar.CommandQueue", false, classLoader);
            Class cls2 = Integer.TYPE;
            Class cls3 = Boolean.TYPE;
            xposedModule.hook(cls.getDeclaredMethod("onProposedRotationChanged", cls2, cls3)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda1
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2929a;
                    m2929a = C0147f.m2929a(chain);
                    return m2929a;
                }
            });
            xposedModule.hook(Class.forName("com.android.systemui.shared.rotation.FloatingRotationButtonPositionCalculator", false, classLoader).getDeclaredMethod("calculatePosition", cls2, cls3, cls3)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda2
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2945b;
                    m2945b = C0147f.m2945b(chain);
                    return m2945b;
                }
            });
            xposedModule.hook(cls.getDeclaredMethod("disable", cls2, cls2, cls2, cls3)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda3
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2950c;
                    m2950c = C0147f.m2950c(chain);
                    return m2950c;
                }
            });
            Log.i(f2807a, "Rotation suggestion hooks ready");
        } catch (Throwable th) {
            Log.e(f2807a, "Rotation suggestion hooks unavailable", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static void m2952c(final String str) {
        f2813g.execute(new Runnable() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                C0147f.m2949b(str);
            }
        });
    }

    /* renamed from: c */
    private static void m2951c(ImageView imageView) throws ReflectiveOperationException {
        m2940a(imageView, "mOvalBgPaint", new c());
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setPadding(0, 0, 0, 0);
        imageView.setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m2944a;
                m2944a = C0147f.m2944a(view, motionEvent);
                return m2944a;
            }
        });
        imageView.addOnAttachStateChangeListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ void m2949b(String str) {
        String str2 = "on";
        try {
            Bundle call = f2815i.getContentResolver().call(Uri.parse("content://dev.duo.hookprobe.config"), "rotationSuggest", (String) null, (Bundle) null);
            if (call != null) {
                f2821o = call.getBoolean("portraitRight", false);
                f2822p = call.getBoolean("landscapeRight", false);
            }
            if (call != null && call.containsKey("on")) {
                boolean z = call.getBoolean("on");
                ContentResolver contentResolver = f2815i.getContentResolver();
                if (Settings.Secure.getInt(contentResolver, f2808b, -1) != z) {
                    Settings.Secure.putInt(contentResolver, f2808b, z ? 1 : 0);
                }
                StringBuilder append = new StringBuilder().append("Rotation suggestion ");
                if (!z) {
                    str2 = "off";
                }
                String str3 = "right";
                StringBuilder append2 = append.append(str2).append(" portrait=").append(f2821o ? "right" : "left").append(" landscape=");
                if (!f2822p) {
                    str3 = "left";
                }
                Log.i(f2807a, append2.append(str3).append(" (").append(str).append(")").toString());
                if (z) {
                    return;
                }
                f2812f.post(new Runnable() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        C0147f.m2946b();
                    }
                });
                return;
            }
            Log.i(f2807a, "Rotation suggestion switch unset (" + str + "), system setting kept");
        } catch (Throwable th) {
            Log.w(f2807a, "Rotation suggestion sync failed (" + str + ")", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m2929a(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        final int intValue = ((Integer) chain.getArg(0)).intValue();
        final boolean booleanValue = ((Boolean) chain.getArg(1)).booleanValue();
        f2812f.post(new Runnable() { // from class: dev.duo.workspaceprobe.f$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                C0147f.m2947b(intValue, booleanValue);
            }
        });
        return proceed;
    }

    /* renamed from: a */
    static void m2936a(Context context) {
        if (f2815i != null) {
            return;
        }
        f2815i = context;
        try {
            context.getContentResolver().registerContentObserver(f2809c, false, new a(f2812f));
        } catch (Throwable th) {
            Log.w(f2807a, "Rotation suggestion observer unavailable", th);
        }
        m2952c("start");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ void m2946b() {
        try {
            Object obj = f2816j;
            if (obj != null) {
                m2931a(obj, "setRotateSuggestionButtonState", Boolean.FALSE, Boolean.TRUE);
            }
        } catch (Throwable th) {
            Log.w(f2807a, "Rotation button hide failed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0142 A[Catch: all -> 0x0162, TryCatch #0 {all -> 0x0162, blocks: (B:6:0x0012, B:8:0x002b, B:13:0x003e, B:16:0x0062, B:18:0x006e, B:22:0x007c, B:24:0x008a, B:29:0x009c, B:32:0x00a8, B:34:0x00bd, B:44:0x0106, B:46:0x0142, B:48:0x014a), top: B:5:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x014a A[Catch: all -> 0x0162, TRY_LEAVE, TryCatch #0 {all -> 0x0162, blocks: (B:6:0x0012, B:8:0x002b, B:13:0x003e, B:16:0x0062, B:18:0x006e, B:22:0x007c, B:24:0x008a, B:29:0x009c, B:32:0x00a8, B:34:0x00bd, B:44:0x0106, B:46:0x0142, B:48:0x014a), top: B:5:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ff  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m2947b(int i, boolean z) {
        boolean z2;
        String str;
        if ((f2819m & f2810d) != 0 || !m2942a()) {
            return;
        }
        try {
            Object obj = f2816j;
            Handler handler = (Handler) m2930a(obj, "mUiHandler");
            if (Settings.Secure.getInt(f2815i.getContentResolver(), "user_setup_complete", 0) == 0 && m2933a(obj.getClass(), "OEM_DISALLOW_ROTATION_IN_SUW").getBoolean(null)) {
                return;
            }
            Display display = ((DisplayManager) f2815i.getSystemService(DisplayManager.class)).getDisplay(0);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            display.getRealMetrics(displayMetrics);
            if (Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) < f2824r) {
                m2931a(obj, "setRotateSuggestionButtonState", Boolean.FALSE, Boolean.TRUE);
                return;
            }
            int rotation = display.getRotation();
            if (m2930a(f2817k, "mKeyButtonView") == null) {
                return;
            }
            if (!((Boolean) m2930a(obj, "mHomeRotationEnabled")).booleanValue() && ((Boolean) m2930a(obj, "mIsRecentsAnimationRunning")).booleanValue()) {
                return;
            }
            if (!z) {
                Boolean bool = Boolean.FALSE;
                m2931a(obj, "setRotateSuggestionButtonState", bool, bool);
                return;
            }
            if (i == rotation) {
                handler.removeCallbacks((Runnable) m2930a(obj, "mRemoveRotationProposal"));
                Boolean bool2 = Boolean.FALSE;
                m2931a(obj, "setRotateSuggestionButtonState", bool2, bool2);
                return;
            }
            Log.i(f2807a, "onRotationProposal(rotation=" + i + ") window=" + rotation);
            m2940a(obj, "mLastRotationSuggestion", Integer.valueOf(i));
            boolean m2943a = m2943a(rotation, i);
            if (rotation != 0 && rotation != 2) {
                z2 = false;
                if (!z2) {
                    str = m2943a ? "mIconCcwStart0ResId" : "mIconCwStart0ResId";
                } else if (m2943a) {
                    str = "mIconCcwStart90ResId";
                } else {
                    str = "mIconCwStart90ResId";
                }
                m2940a(obj, "mIconResId", m2930a(obj, str));
                m2931a(f2817k, "updateIcon", m2930a(obj, "mLightIconColor"), m2930a(obj, "mDarkIconColor"));
                m2938a((ImageView) m2930a(f2817k, "mKeyButtonView"), m2943a);
                f2820n = i;
                if (!((Boolean) m2931a(obj, "canShowRotationButton", new Object[0])).booleanValue()) {
                    m2931a(obj, "showAndLogRotationSuggestion", new Object[0]);
                    return;
                }
                m2940a(obj, "mPendingRotationSuggestion", Boolean.TRUE);
                Runnable runnable = (Runnable) m2930a(obj, "mCancelPendingRotationProposal");
                handler.removeCallbacks(runnable);
                handler.postDelayed(runnable, 20000L);
                return;
            }
            z2 = true;
            if (!z2) {
            }
            m2940a(obj, "mIconResId", m2930a(obj, str));
            m2931a(f2817k, "updateIcon", m2930a(obj, "mLightIconColor"), m2930a(obj, "mDarkIconColor"));
            m2938a((ImageView) m2930a(f2817k, "mKeyButtonView"), m2943a);
            f2820n = i;
            if (!((Boolean) m2931a(obj, "canShowRotationButton", new Object[0])).booleanValue()) {
            }
        } catch (Throwable th) {
            Log.e(f2807a, "Rotation proposal failed rotation=" + i, th);
        }
    }

    /* renamed from: a */
    private static boolean m2942a() {
        if (f2816j != null) {
            return true;
        }
        if (!f2818l && f2815i != null) {
            try {
                Context context = f2815i;
                Object newInstance = Class.forName("com.android.systemui.navigationbar.views.NavigationBarView", false, f2814h).getConstructor(Context.class, AttributeSet.class).newInstance(new ContextThemeWrapper(context, context.getApplicationInfo().theme), null);
                m2931a(newInstance, "setRotationPolicyWrapper", Class.forName("com.android.systemui.rotation.impl.RotationPolicyWrapperImpl", false, f2814h).getConstructor(Context.class).newInstance(f2815i));
                m2931a(newInstance, "updateRotationButton", new Object[0]);
                Object m2930a = m2930a(newInstance, "mRotationButtonController");
                Object m2930a2 = m2930a(m2930a, "mRotationButton");
                m2951c((ImageView) m2930a(m2930a2, "mKeyButtonView"));
                m2940a(m2930a2, "mUpdatesCallback", (Object) null);
                Object m2930a3 = m2930a(m2930a2, "mPositionCalculator");
                Boolean bool = Boolean.TRUE;
                m2940a(m2930a3, "floatingRotationButtonPositionLeft", bool);
                m2940a(m2930a, "mNavBarMode", (Object) 2);
                m2940a(m2930a, "mListenersRegistered", bool);
                Class<?> cls = Class.forName("com.android.systemui.shared.system.TaskStackChangeListeners", false, f2814h);
                Object obj = cls.getField("INSTANCE").get(null);
                for (Method method : cls.getMethods()) {
                    if (method.getName().equals("registerTaskStackListener")) {
                        method.invoke(obj, m2930a(m2930a, "mTaskStackListener"));
                    }
                }
                Class.forName(WorkspaceProtocol.INTERFACE).getMethod("watchRotation", Class.forName("android.view.IRotationWatcher"), Integer.TYPE).invoke(Class.forName("android.view.WindowManagerGlobal").getMethod("getWindowManagerService", null).invoke(null, null), m2930a(m2930a, "mRotationWatcher"), 0);
                m2940a(m2930a, "mRotationWatcherRegistered", Boolean.TRUE);
                f2816j = m2930a;
                f2817k = m2930a2;
                Log.i(f2807a, "Native rotation button ready light=" + Integer.toHexString(((Integer) m2930a(m2930a, "mLightIconColor")).intValue()) + " dark=" + Integer.toHexString(((Integer) m2930a(m2930a, "mDarkIconColor")).intValue()));
                return true;
            } catch (Throwable th) {
                f2818l = true;
                Log.e(f2807a, "Native rotation button unavailable", th);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ boolean m2944a(View view, MotionEvent motionEvent) {
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

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [android.graphics.drawable.LayerDrawable] */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.widget.ImageView, java.lang.Object] */
    /* renamed from: b */
    public static void m2948b(ImageView imageView) {
        try {
            float intValue = ((Integer) m2930a((Object) imageView, "mDiameter")).intValue() / 2.0f;
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(intValue);
            gradientDrawable.setColor(f2823q ? -1204143554 : -939524097);
            gradientDrawable.setStroke(Math.max(1, Math.round(f2815i.getResources().getDisplayMetrics().density * 0.5f)), f2823q ? 620756991 : 251658240);
            imageView.setElevation(f2815i.getResources().getDisplayMetrics().density * 6.0f);
            try {
                Object invoke = View.class.getMethod("getViewRootImpl", null).invoke(imageView, null);
                if (invoke != null) {
                    Drawable drawable = (Drawable) invoke.getClass().getMethod("createBackgroundBlurDrawable", null).invoke(invoke, null);
                    drawable.getClass().getMethod("setBlurRadius", Integer.TYPE).invoke(drawable, 40);
                    drawable.getClass().getMethod("setCornerRadius", Float.TYPE).invoke(drawable, Float.valueOf(intValue));
                    gradientDrawable = new LayerDrawable(new Drawable[]{drawable, gradientDrawable});
                }
            } catch (ReflectiveOperationException e) {
                Log.w(f2807a, "Rotation button blur unavailable; glass only", e);
            }
            imageView.setBackground(gradientDrawable);
        } catch (ReflectiveOperationException e2) {
            Log.w(f2807a, "Rotation button diameter unreadable", e2);
        }
    }

    /* renamed from: a */
    private static void m2938a(ImageView imageView, boolean z) {
        f2823q = (f2815i.getResources().getConfiguration().uiMode & 48) == 32;
        imageView.setImageDrawable(new d(f2823q ? -1 : -14935010, z));
        m2948b(imageView);
    }

    /* renamed from: a */
    private static boolean m2943a(int i, int i2) {
        return i2 != (i + 1) % 4;
    }

    /* renamed from: a */
    private static Field m2933a(Class<?> cls, String str) throws NoSuchFieldException {
        for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            try {
                Field declaredField = cls2.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField;
            } catch (NoSuchFieldException e) {
            }
        }
        throw new NoSuchFieldException(cls.getName() + "." + str);
    }

    /* renamed from: a */
    private static Object m2930a(Object obj, String str) throws ReflectiveOperationException {
        return m2933a(obj.getClass(), str).get(obj);
    }

    /* renamed from: a */
    private static void m2940a(Object obj, String str, Object obj2) throws ReflectiveOperationException {
        m2933a(obj.getClass(), str).set(obj, obj2);
    }

    /* renamed from: a */
    private static Object m2931a(Object obj, String str, Object... objArr) throws ReflectiveOperationException {
        for (Method method : obj.getClass().getMethods()) {
            if (method.getName().equals(str) && method.getParameterTypes().length == objArr.length) {
                return method.invoke(obj, objArr);
            }
        }
        throw new NoSuchMethodException(obj.getClass().getName() + "." + str);
    }
}
