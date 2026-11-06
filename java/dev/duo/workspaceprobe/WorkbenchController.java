package dev.duo.workspaceprobe;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import android.view.Choreographer;
import android.view.MotionEvent;
import android.view.SurfaceControl;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import dev.duo.fold.g$b$$ExternalSyntheticLambda1;
import dev.duo.taskcore.Geometry;
import dev.duo.taskcore.SystemGate;
import dev.duo.taskcore.TaskBinding;
import dev.duo.taskcore.WorkspaceHost;
import dev.duo.taskcore.WorkspaceProtocol;
import dev.duo.taskcore.WorkspaceSession;
import dev.duo.taskcore.WorkspaceShell;
import dev.duo.workspaceprobe.WorkspaceHooks;
import dev.duo.workspaceprobe.WorkspaceHooks.R;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.function.Consumer;

/* renamed from: dev.duo.workspaceprobe.n */
/* loaded from: classes.dex */
final class WorkbenchController implements WorkspaceShell.Events, WorkspaceHost.Actions {

    /* renamed from: a */
    private static final String f2877a = "DuoWorkbench";

    /* renamed from: b */
    private static final String f2878b = "dev.duo.hookprobe";

    /* renamed from: c */
    private static final int f2879c = 140;

    /* renamed from: d */
    private static final int f2880d = 300;

    /* renamed from: e */
    private static final int f2881e = 220;

    /* renamed from: f */
    private static final int f2882f = 200;

    /* renamed from: g */
    private static final int f2883g = 16777217;

    /* renamed from: h */
    private static final int f2884h = 2000;

    /* renamed from: i */
    private static final long f2885i = 5000;

    /* renamed from: j */
    private static final int f2886j = 60;

    /* renamed from: k */
    static final int f2887k = 32;

    /* renamed from: l */
    static final int f2888l = 120;

    /* renamed from: m */
    private static final int f2889m = 16777218;

    /* renamed from: n */
    private static final int f2890n = 60;

    /* renamed from: o */
    private static final int f2891o = 460;

    /* renamed from: p */
    private static final long f2892p = 320;

    /* renamed from: q */
    private static final long f2893q = 180;

    /* renamed from: r */
    private static final int f2894r = 12;

    /* renamed from: s */
    private static final float f2895s = 160.0f;

    /* renamed from: t */
    private static final int f2896t = 10;

    /* renamed from: B */
    private boolean f2898B;

    /* renamed from: C */
    private boolean f2899C;

    /* renamed from: D */
    private boolean f2900D;

    /* renamed from: E */
    private boolean f2901E;

    /* renamed from: F */
    private float f2902F;

    /* renamed from: G */
    private float f2903G;

    /* renamed from: H */
    private int[] f2904H;

    /* renamed from: J */
    private Runnable f2906J;

    /* renamed from: K */
    private WorkspaceHooks.R f2907K;

    /* renamed from: L */
    private WorkspaceHooks.R f2908L;

    /* renamed from: M */
    private WorkbenchStageView f2909M;

    /* renamed from: N */
    private ValueAnimator f2910N;

    /* renamed from: O */
    private boolean f2911O;

    /* renamed from: P */
    private boolean f2912P;

    /* renamed from: Q */
    private WorkspaceHooks.R f2913Q;

    /* renamed from: R */
    private WorkspaceHooks.R f2914R;

    /* renamed from: S */
    private Thread f2915S;

    /* renamed from: U */
    private IBinder f2917U;

    /* renamed from: Y */
    private ExecutorService f2921Y;

    /* renamed from: Z */
    private WorkbenchSlotView f2922Z;

    /* renamed from: a0 */
    private float f2923a0;

    /* renamed from: b0 */
    private float f2924b0;

    /* renamed from: c0 */
    private boolean f2925c0;

    /* renamed from: d0 */
    private boolean f2926d0;

    /* renamed from: e0 */
    private boolean f2927e0;

    /* renamed from: f0 */
    private boolean f2928f0;

    /* renamed from: g0 */
    private volatile Object f2929g0;

    /* renamed from: h0 */
    private Object f2930h0;

    /* renamed from: i0 */
    private Method f2931i0;

    /* renamed from: m0 */
    private AppItemDto f2935m0;

    /* renamed from: n0 */
    private ValueAnimator f2936n0;

    /* renamed from: u */
    private final WorkspaceHooks f2937u;

    /* renamed from: w */
    private WorkspaceShell f2939w;

    /* renamed from: x */
    private volatile WorkspaceSession f2940x;

    /* renamed from: y */
    private WorkspaceHost f2941y;

    /* renamed from: z */
    private AudioFocusSilencer f2942z;

    /* renamed from: v */
    private final WorkbenchLocalApi f2938v = new WorkbenchLocalApi();

    /* renamed from: A */
    private long f2897A = SystemClock.uptimeMillis();

    /* renamed from: I */
    private int f2905I = -1;

    /* renamed from: T */
    private int f2916T = -1;

    /* renamed from: V */
    private int f2918V = -1;

    /* renamed from: W */
    private Rect f2919W = new Rect();

    /* renamed from: X */
    private final Map<String, Bitmap> f2920X = Collections.synchronizedMap(new a(16, 0.75f, true));

    /* renamed from: j0 */
    private int f2932j0 = Integer.MIN_VALUE;

    /* renamed from: k0 */
    private int f2933k0 = Integer.MIN_VALUE;

    /* renamed from: l0 */
    private int f2934l0 = -1;

    /* renamed from: dev.duo.workspaceprobe.n$a */
    class a extends LinkedHashMap<String, Bitmap> {
        a(int i, float f, boolean z) {
            super(i, f, z);
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<String, Bitmap> entry) {
            return size() > 12;
        }
    }

    /* renamed from: dev.duo.workspaceprobe.n$b */
    class b extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ Runnable f2944a;

        b(Runnable runnable) {
            this.f2944a = runnable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (WorkbenchController.this.f2910N == animator) {
                WorkbenchController.this.f2910N = null;
                this.f2944a.run();
            }
        }
    }

    WorkbenchController(WorkspaceHooks c0143b) {
        this.f2937u = c0143b;
    }

    /* renamed from: b */
    private void m3056b(float f) {
        if (this.f2908L == null) {
            return;
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            transaction.setAlpha(this.f2908L.f2504b, f).apply();
            transaction.close();
        } catch (Throwable th) {
            try {
                transaction.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m3067c() {
        this.f2925c0 = false;
        this.f2926d0 = false;
        ValueAnimator valueAnimator = this.f2910N;
        if (valueAnimator != null) {
            this.f2910N = null;
            valueAnimator.cancel();
        }
        m3031a(this.f2908L);
        this.f2908L = null;
        this.f2909M = null;
        this.f2922Z = null;
    }

    /* renamed from: e */
    private Rect m3077e() {
        Point point = new Point();
        ((DisplayManager) this.f2937u.f2301i4.getSystemService(DisplayManager.class)).getDisplay(0).getRealSize(point);
        return new Rect(0, 0, point.x, point.y);
    }

    /* renamed from: f */
    private boolean m3082f() {
        WorkspaceShell workspaceShell = this.f2939w;
        SystemGate systemGate = workspaceShell == null ? null : workspaceShell.systemGate();
        if (systemGate != null && !systemGate.blocksActions() && !systemGate.requiresClose() && this.f2939w != null) {
            WorkspaceHooks c0143b = this.f2937u;
            if (c0143b.f2301i4 != null && !c0143b.f2124I1 && !c0143b.f2145L1 && !c0143b.f2159N1 && ((this.f2940x == null || this.f2940x.state() == WorkspaceSession.State.PAUSED) && this.f2937u.m2791v0() && this.f2937u.m2790p2() && this.f2937u.m2788R0())) {
                Rect m3077e = m3077e();
                if (m3077e.width() == 2364 && m3077e.height() == 1672) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: g */
    private void m3083g() {
        WorkspaceSession workspaceSession = this.f2940x;
        WorkspaceHost workspaceHost = this.f2941y;
        if (workspaceSession == null || workspaceHost == null) {
            return;
        }
        if (this.f2922Z != null || m3052a(workspaceSession, workspaceHost)) {
            this.f2912P = false;
            Geometry geometry = workspaceHost.geometry();
            final WorkbenchSlotView c0151j = this.f2922Z;
            final Rect mainFollowing = geometry.mainFollowing(this.f2923a0);
            final Rect rect = new Rect(0, 0, 2364, 1672);
            final Rect[] rectArr = new Rect[4];
            final Rect[] rectArr2 = new Rect[4];
            for (int i = 0; i < 4; i++) {
                Rect rect2 = new Rect(geometry.slots[i]);
                rectArr[i] = rect2;
                rect2.offset(-Math.round(this.f2923a0), 0);
                Rect rect3 = new Rect(geometry.slots[i]);
                rectArr2[i] = rect3;
                rect3.offset(-(geometry.slots[i].right + 40), 0);
            }
            final float f = this.f2924b0;
            this.f2925c0 = true;
            this.f2926d0 = false;
            m3012a(f2892p, new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda25
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    WorkbenchController.this.m3046a(rectArr, rectArr2, c0151j, mainFollowing, rect, f, valueAnimator);
                }
            }, new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    WorkbenchController.this.m3089k();
                }
            });
        }
    }

    /* renamed from: h */
    private void m3085h() {
        final Choreographer choreographer = Choreographer.getInstance();
        choreographer.postFrameCallback(new Choreographer.FrameCallback() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda36
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                WorkbenchController.this.m3019a(choreographer, j);
            }
        });
    }

    /* renamed from: i */
    private void m3087i() {
        if (this.f2908L != null && this.f2911O && this.f2912P) {
            m3012a(f2893q, new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda29
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    WorkbenchController.this.m3061b(valueAnimator);
                }
            }, new n$$ExternalSyntheticLambda9(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public void m3088j() {
        AudioFocusSilencer c0156o;
        WorkspaceSession workspaceSession = this.f2940x;
        if (workspaceSession == null || (c0156o = this.f2942z) == null) {
            return;
        }
        try {
            c0156o.m3131a(WorkspaceShell.members(workspaceSession));
        } catch (RuntimeException e) {
            Log.e(f2877a, "Video isolation not rolled back to the session members", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ void m3089k() {
        this.f2925c0 = false;
        if (this.f2926d0) {
            this.f2926d0 = false;
            m3085h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ void m3090l() {
        this.f2911O = true;
        m3087i();
    }

    /* renamed from: o */
    private boolean m3091o() {
        Method method;
        Object obj = this.f2929g0;
        if (obj != null && (method = this.f2931i0) != null) {
            try {
                if (!((Boolean) method.invoke(obj, Integer.valueOf(this.f2932j0))).booleanValue()) {
                    if (!((Boolean) this.f2931i0.invoke(obj, Integer.valueOf(this.f2933k0))).booleanValue()) {
                        return false;
                    }
                }
                return true;
            } catch (ReflectiveOperationException e) {
                Log.e(f2877a, "Device state unreadable: treated as folded", e);
            }
        }
        return true;
    }

    /* renamed from: p */
    private int m3092p() {
        return WorkspaceHooks.m2488b(this.f2937u.f2301i4) ? -14935010 : -1;
    }

    /* renamed from: q */
    private void m3093q() {
        ExecutorService executorService;
        m3040a((Collection<String>) Collections.singleton(this.f2937u.f2103F1));
        synchronized (this) {
            executorService = this.f2921Y;
        }
        if (executorService == null) {
            return;
        }
        final Context context = this.f2937u.f2301i4;
        executorService.execute(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                WorkbenchController.this.m3014a(context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m3094r() {
        Context context = this.f2937u.f2301i4;
        if (context == null) {
            return;
        }
        PowerManager powerManager = (PowerManager) context.getSystemService(PowerManager.class);
        SystemGate systemGate = this.f2939w.systemGate();
        final boolean z = true;
        final boolean z2 = (powerManager == null || powerManager.isInteractive()) ? false : true;
        if (!z2 && systemGate != null && !systemGate.requiresPause()) {
            z = false;
        }
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda67
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).setLocked(z, z2);
            }
        });
    }

    /* renamed from: s */
    private int m3095s() {
        Resources resources = this.f2937u.f2301i4.getResources();
        String[] strArr = {"status_bar_height", "status_bar_height_landscape", "status_bar_height_portrait"};
        int i = 0;
        for (int i2 = 0; i2 < 3; i2++) {
            int identifier = resources.getIdentifier(strArr[i2], "dimen", "android");
            if (identifier != 0) {
                i = Math.max(i, resources.getDimensionPixelSize(identifier));
            }
        }
        return i;
    }

    /* renamed from: t */
    private Map<Integer, String> m3096t() {
        HashMap hashMap = new HashMap();
        for (ActivityManager.RunningTaskInfo runningTaskInfo : ((ActivityManager) this.f2937u.f2301i4.getSystemService(ActivityManager.class)).getRunningTasks(12)) {
            try {
                String m3106a = AudioFocusSilencer.m3106a(runningTaskInfo);
                if (m3106a != null) {
                    hashMap.put(Integer.valueOf(runningTaskInfo.taskId), m3106a);
                }
            } catch (ReflectiveOperationException e) {
                Log.w(f2877a, "Task member unreadable " + runningTaskInfo.taskId, e);
            }
        }
        return hashMap;
    }

    /* renamed from: u */
    private Map<Integer, String> m3097u() {
        HashMap hashMap = new HashMap();
        for (ActivityManager.RunningTaskInfo runningTaskInfo : ((ActivityManager) this.f2937u.f2301i4.getSystemService(ActivityManager.class)).getRunningTasks(12)) {
            if (runningTaskInfo.baseActivity != null) {
                hashMap.put(Integer.valueOf(runningTaskInfo.taskId), runningTaskInfo.baseActivity.getPackageName());
            }
        }
        return hashMap;
    }

    /* renamed from: v */
    private void m3098v() {
        if (this.f2930h0 != null || this.f2937u.f2301i4 == null) {
            return;
        }
        try {
            Class<?> cls = Class.forName("android.hardware.devicestate.DeviceStateManager");
            Class<?> cls2 = Class.forName("android.hardware.devicestate.DeviceStateManager$DeviceStateCallback");
            Class<?> cls3 = Class.forName("android.hardware.devicestate.DeviceState");
            this.f2931i0 = cls3.getMethod("hasProperty", Integer.TYPE);
            this.f2932j0 = cls3.getField("PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_OUTER_PRIMARY").getInt(null);
            this.f2933k0 = cls3.getField("PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_CLOSED").getInt(null);
            Object newProxyInstance = Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new InvocationHandler() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda10
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method, Object[] objArr) {
                    Object m2995a;
                    m2995a = WorkbenchController.this.m2995a(obj, method, objArr);
                    return m2995a;
                }
            });
            Method method = cls.getMethod("registerCallback", Executor.class, cls2);
            Object systemService = this.f2937u.f2301i4.getSystemService(cls);
            Handler handler = this.f2937u.f2071A1;
            Objects.requireNonNull(handler);
            method.invoke(systemService, new g$b$$ExternalSyntheticLambda1(handler), newProxyInstance);
            this.f2930h0 = newProxyInstance;
        } catch (ReflectiveOperationException | RuntimeException e) {
            Log.e(f2877a, "Device state unavailable: any display change ends the workbench", e);
        }
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public boolean acceptsOverlay() {
        WorkspaceSession workspaceSession = this.f2940x;
        return (workspaceSession == null || workspaceSession.closing() || this.f2928f0 || workspaceSession.state() != WorkspaceSession.State.ACTIVE || !workspaceSession.acceptsAdopt()) ? false : true;
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public boolean adopt(int i, String str) {
        WorkspaceSession workspaceSession = this.f2940x;
        if (workspaceSession == null || str == null || "dev.duo.hookprobe".equals(str) || this.f2928f0) {
            return false;
        }
        WorkspaceSession.State state = workspaceSession.state();
        if (state == WorkspaceSession.State.PAUSED && workspaceSession.interstitialPending() && workspaceSession.acceptsAdopt()) {
            return true;
        }
        return (state == WorkspaceSession.State.ACTIVE || state == WorkspaceSession.State.TRANSITIONING || state == WorkspaceSession.State.ATTACHING) && workspaceSession.acceptsAdopt();
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void adoptReady(final int i) {
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda48
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WorkbenchController.this.m3003a(i, (WorkspaceSession) obj);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceHost.Actions
    public void barCancel() {
        WorkspaceHost workspaceHost;
        if (this.f2922Z == null || this.f2928f0 || (workspaceHost = this.f2941y) == null) {
            return;
        }
        final Geometry geometry = workspaceHost.geometry();
        final float f = this.f2923a0;
        final float f2 = this.f2924b0;
        m3012a(f2893q, new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda34
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                WorkbenchController.this.m3022a(geometry, f, f2, valueAnimator);
            }
        }, new n$$ExternalSyntheticLambda9(this));
    }

    @Override // dev.duo.taskcore.WorkspaceHost.Actions
    public void barDrag(float f) {
        WorkspaceSession workspaceSession = this.f2940x;
        WorkspaceHost workspaceHost = this.f2941y;
        if (workspaceSession == null || workspaceHost == null || this.f2928f0 || workspaceSession.state() != WorkspaceSession.State.ACTIVE) {
            return;
        }
        if (this.f2922Z != null || m3052a(workspaceSession, workspaceHost)) {
            ValueAnimator valueAnimator = this.f2910N;
            if (valueAnimator != null) {
                this.f2910N = null;
                valueAnimator.cancel();
            }
            m3021a(workspaceHost.geometry(), f, Math.min(1.0f, f / f2895s));
        }
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public boolean canAnimateGroup() {
        WorkspaceSession workspaceSession = this.f2940x;
        return (workspaceSession == null || this.f2941y == null || this.f2928f0 || workspaceSession.closing() || workspaceSession.state() != WorkspaceSession.State.ACTIVE) ? false : true;
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void changed(final WorkspaceSession workspaceSession) {
        final TaskBinding[] taskBindingArr = new TaskBinding[4];
        for (int i = 0; i < 4; i++) {
            taskBindingArr[i] = workspaceSession.slot(i);
        }
        final WorkspaceSession.State state = workspaceSession.state();
        final boolean closing = workspaceSession.closing();
        if (closing || state == WorkspaceSession.State.CLOSED || state == WorkspaceSession.State.RETURN_FAILED) {
            this.f2939w.clearRecentsGroup();
        } else if (state == WorkspaceSession.State.ACTIVE || state == WorkspaceSession.State.PAUSED) {
            this.f2939w.registerRecentsGroup(workspaceSession.main(), taskBindingArr);
        }
        final String[] members = WorkspaceShell.members(workspaceSession);
        final String workspaceSession2 = workspaceSession.toString();
        this.f2937u.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda72
            @Override // java.lang.Runnable
            public final void run() {
                WorkbenchController.this.m3028a(workspaceSession, state, closing, workspaceSession2, taskBindingArr, members);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceHost.Actions
    public void exit() {
        this.f2928f0 = true;
        m3073d();
        m3083g();
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda16
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).close("bar exit", true);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void external(final String str) {
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda52
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WorkbenchController.m3037a(str, (WorkspaceSession) obj);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void focused(final int i, final Object obj) {
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda63
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                ((WorkspaceSession) obj2).systemFocused(i, obj);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void interstitial(final int i) {
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda30
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WorkbenchController.m3069c(i, (WorkspaceSession) obj);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void isolate(final String[] strArr, final WorkspaceSession.Done done) {
        this.f2937u.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                WorkbenchController.this.m3047a(strArr, done);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public boolean keepsOverlay() {
        WorkspaceSession workspaceSession = this.f2940x;
        if (workspaceSession == null || workspaceSession.closing() || this.f2928f0 || !workspaceSession.acceptsAdopt()) {
            return false;
        }
        WorkspaceSession.State state = workspaceSession.state();
        return state == WorkspaceSession.State.ACTIVE || state == WorkspaceSession.State.TRANSITIONING || state == WorkspaceSession.State.ATTACHING;
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void keyguardExitAborted() {
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda68
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).keyguardExitAborted();
            }
        });
        this.f2937u.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda69
            @Override // java.lang.Runnable
            public final void run() {
                WorkbenchController.this.m3094r();
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void launched(final int i, final IBinder iBinder) {
        this.f2937u.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                WorkbenchController.this.m3017a(iBinder, i);
            }
        });
    }

    /* renamed from: m */
    void m3103m() {
        WorkspaceSession workspaceSession = this.f2940x;
        if (workspaceSession != null) {
            WorkspaceHooks c0143b = this.f2937u;
            if (c0143b.f2301i4 == null) {
                return;
            }
            if (!c0143b.m2791v0()) {
                m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda53
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((WorkspaceSession) obj).close("master off", false);
                    }
                });
                return;
            }
            Rect m3077e = m3077e();
            if (m3077e.equals(this.f2919W)) {
                m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda56
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((WorkspaceSession) obj).setDisplayMismatch(false);
                    }
                });
            } else {
                final boolean z = workspaceSession.state() == WorkspaceSession.State.PAUSED;
                if (m3091o() || !z) {
                    final String str = (m3091o() ? "folded, display " : "display changed ") + m3077e.width() + "x" + m3077e.height();
                    m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda55
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            WorkbenchController.m3039a(str, z, (WorkspaceSession) obj);
                        }
                    });
                    return;
                }
                m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda54
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((WorkspaceSession) obj).setDisplayMismatch(true);
                    }
                });
            }
            m3094r();
        }
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void memberToBack(final int i) {
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda49
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).memberToBack(i, null);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void memberToFront(final int i) {
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).systemFocused(i, null);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceHost.Actions
    public void menu(final int i) {
        WorkspaceHost workspaceHost = this.f2941y;
        if (workspaceHost == null) {
            return;
        }
        Rect rect = workspaceHost.geometry().slots[i];
        float width = rect.width() / 172.0f;
        m3050a(AppListAdapter.m2972a(this.f2937u.f2301i4, width, new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda42
            @Override // java.lang.Runnable
            public final void run() {
                WorkbenchController.this.m3057b(i);
            }
        }, new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                WorkbenchController.this.m3068c(i);
            }
        }), rect.right + 24, Math.max(rect.top, m3095s() + 12), Math.round(220.0f * width), Math.round(122.0f * width), rect, width * 24.0f);
    }

    /* renamed from: n */
    void m3104n() {
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda45
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).close("workbench off", false);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public boolean ownsNotificationLaunch() {
        WorkspaceSession workspaceSession = this.f2940x;
        return workspaceSession != null && !workspaceSession.closing() && workspaceSession.state() == WorkspaceSession.State.ACTIVE && workspaceSession.acceptsAdopt();
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void pipFinished(final long j, final int i, final Object obj, final boolean z) {
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                WorkbenchController.m3011a(j, i, obj, z, (WorkspaceSession) obj2);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void pipStarting(final long j, final int i, final Object obj) {
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda75
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                WorkbenchController.m3010a(j, i, obj, (WorkspaceSession) obj2);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceHost.Actions
    public void plus(final int i) {
        m3008a(i, new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda3
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WorkbenchController.this.m3070c(i, (AppItemDto) obj);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public boolean recentsReturned() {
        WorkspaceSession workspaceSession = this.f2940x;
        return workspaceSession != null && workspaceSession.recentsReturned();
    }

    @Override // dev.duo.taskcore.WorkspaceHost.Actions
    public void reorder(final int i, final int i2) {
        m3073d();
        final WorkspaceHost workspaceHost = this.f2941y;
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda20
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WorkbenchController.this.m3001a(i, i2, workspaceHost, (WorkspaceSession) obj);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public boolean resumeRequested(String str, Object obj) {
        WorkspaceSession workspaceSession = this.f2940x;
        return workspaceSession != null && workspaceSession.userResume(str, obj);
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void sourceEvent(final WorkspaceProtocol.SourceEvent sourceEvent) {
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda24
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WorkbenchController.m3026a(WorkspaceProtocol.SourceEvent.this, (WorkspaceSession) obj);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceHost.Actions
    public void swap(final int i) {
        m3073d();
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda47
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).swap(i);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void systemSurface(final String str) {
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda57
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).systemSurface(str);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void taskChanged(final int i, final Object obj, final int i2, final int i3) {
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda64
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                ((WorkspaceSession) obj2).memberChanged(i, obj, i2, i3);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void taskGone(final int i) {
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda11
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).taskGone(i, null);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public SurfaceControl unlocking() {
        WorkspaceSession workspaceSession = this.f2940x;
        WorkspaceHost workspaceHost = this.f2941y;
        if (workspaceSession == null || workspaceHost == null || !workspaceSession.unlocking()) {
            return null;
        }
        return workspaceHost.root();
    }

    /* renamed from: w */
    void m3105w() {
        Runnable runnable = this.f2906J;
        if (runnable != null) {
            this.f2937u.f2071A1.removeCallbacks(runnable);
        }
        this.f2906J = null;
        this.f2901E = false;
        this.f2900D = false;
        this.f2899C = false;
        this.f2904H = null;
        this.f2905I = -1;
        m3031a(this.f2907K);
        this.f2907K = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public void m3070c(final int i, final AppItemDto c0150i) {
        for (ActivityManager.RunningTaskInfo runningTaskInfo : ((ActivityManager) this.f2937u.f2301i4.getSystemService(ActivityManager.class)).getRunningTasks(f2887k)) {
            ComponentName componentName = runningTaskInfo.baseActivity;
            if (componentName != null && c0150i.f2842a.equals(componentName.getPackageName())) {
                final int i2 = runningTaskInfo.taskId;
                try {
                    if (m3048a(i, AudioFocusSilencer.m3106a(runningTaskInfo))) {
                        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda65
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                WorkbenchController.this.m3058b(i, i2, (WorkspaceSession) obj);
                            }
                        });
                        return;
                    }
                    return;
                } catch (ReflectiveOperationException e) {
                    Log.e(f2877a, "Task member unreadable " + i2 + ": not taken", e);
                    return;
                }
            }
        }
        if (m3048a(i, (Process.myUid() / 100000) + ":" + c0150i.f2842a)) {
            try {
                final IBinder launch = this.f2939w.launch(new Intent().setClassName(c0150i.f2842a, c0150i.f2843b));
                this.f2917U = launch;
                this.f2918V = i;
                this.f2937u.f2071A1.postDelayed(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda66
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkbenchController.this.m3018a(launch, c0150i);
                    }
                }, f2885i);
            } catch (ReflectiveOperationException | RuntimeException e2) {
                Log.e(f2877a, "Launch " + c0150i.f2842a + " failed", e2);
                m3088j();
            }
        }
    }

    /* renamed from: a */
    static float m2990a(float f) {
        return Math.max(0.0f, Math.min(1.0f, (2364.0f - f) / 591.0f)) * 32.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ void m3065b(WorkbenchStageView c0154m, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        c0154m.m2987a(floatValue, floatValue);
    }

    /* renamed from: a */
    void m3100a(ClassLoader classLoader) {
        try {
            WorkspaceShell workspaceShell = new WorkspaceShell(this.f2937u, classLoader);
            this.f2939w = workspaceShell;
            workspaceShell.install();
            Log.i(f2877a, "TaskView workbench core installed 1.0.415-1-05e92cb34b03 wmProtocol=" + WorkspaceProtocol.buildId);
        } catch (ReflectiveOperationException | RuntimeException e) {
            this.f2939w = null;
            Log.e(f2877a, "TaskView workbench core unavailable: the corner stays the App's", e);
        }
        if (this.f2939w != null) {
            this.f2938v.m3141a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m3061b(ValueAnimator valueAnimator) {
        m3056b(1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3055b() {
        if (this.f2908L == null) {
            return;
        }
        final WorkbenchStageView c0154m = this.f2909M;
        c0154m.m2989a(new Rect(0, 0, 2364, 1672), new Rect[0], null);
        m3012a(f2893q, new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda32
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                WorkbenchController.this.m3036a(c0154m, valueAnimator);
            }
        }, new n$$ExternalSyntheticLambda9(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m3068c(final int i) {
        m3073d();
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda28
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).remove(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m3059b(int i, WorkspaceSession workspaceSession) {
        if (workspaceSession.enterFrom(i)) {
            return;
        }
        Log.w(f2877a, "Corner entry refused: " + workspaceSession.log());
        this.f2937u.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                WorkbenchController.this.m3055b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m3057b(final int i) {
        m3073d();
        m3008a(i, new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda59
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WorkbenchController.this.m3060b(i, (AppItemDto) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ void m3069c(int i, WorkspaceSession workspaceSession) {
        if (workspaceSession.callActive()) {
            workspaceSession.callScreen();
        } else {
            workspaceSession.interstitial(i);
        }
    }

    /* renamed from: a */
    void m3101a(Object obj) {
        final SystemGate systemGate;
        if (this.f2939w == null) {
            return;
        }
        try {
            systemGate = SystemGate.read(obj);
        } catch (ReflectiveOperationException | RuntimeException e) {
            Log.e(f2877a, "Shade state unreadable: treated as unknown (blocked, workbench returns)", e);
            systemGate = SystemGate.UNKNOWN;
        }
        this.f2939w.setSystemGate(systemGate);
        this.f2937u.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                WorkbenchController.this.m3024a(systemGate);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m3060b(final int i, final AppItemDto c0150i) {
        this.f2934l0 = i;
        this.f2935m0 = c0150i;
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda35
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WorkbenchController.this.m3005a(i, c0150i, (WorkspaceSession) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ void m3064b(AppListAdapter c0153l, Map map) {
        if (c0153l.isAttachedToWindow()) {
            c0153l.m2983a((Map<String, Drawable>) map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m3058b(int i, int i2, WorkspaceSession workspaceSession) {
        if (workspaceSession.add(i, i2)) {
            return;
        }
        Log.w(f2877a, "Task " + i2 + " not taken into slot " + i + ": " + workspaceSession.log());
        this.f2937u.f2071A1.post(new n$$ExternalSyntheticLambda44(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3024a(final SystemGate systemGate) {
        boolean z = systemGate.blocksActions() || systemGate.requiresClose();
        if (z) {
            if (this.f2899C) {
                m3055b();
                m3105w();
            }
            m3073d();
        }
        WorkspaceHost workspaceHost = this.f2941y;
        if (workspaceHost != null) {
            workspaceHost.setBlocked(z);
        }
        if (systemGate.requiresClose()) {
            m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda71
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    WorkbenchController.m3025a(SystemGate.this, (WorkspaceSession) obj);
                }
            });
        } else {
            m3094r();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m3025a(SystemGate systemGate, WorkspaceSession workspaceSession) {
        workspaceSession.close("system: " + (systemGate.unknown ? "state unknown" : "switching user"), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m3073d() {
        final WorkspaceHooks.R r = this.f2913Q;
        final WorkspaceHooks.R r2 = this.f2914R;
        this.f2914R = null;
        this.f2913Q = null;
        final ValueAnimator valueAnimator = this.f2936n0;
        if (valueAnimator != null) {
            this.f2936n0 = null;
            Objects.requireNonNull(valueAnimator);
            m3038a("popup animation", new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    valueAnimator.cancel();
                }
            });
        }
        final Thread thread = this.f2915S;
        if (thread != null) {
            this.f2915S = null;
            Objects.requireNonNull(thread);
            m3038a("picker thread", new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    thread.interrupt();
                }
            });
        }
        m3038a("popup", new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                WorkbenchController.m3031a(WorkspaceHooks.R.this);
            }
        });
        m3038a("popup outside", new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                WorkbenchController.m3031a(WorkspaceHooks.R.this);
            }
        });
    }

    /* renamed from: a */
    void m3099a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (this.f2899C) {
                m3105w();
            }
            WorkspaceSession workspaceSession = this.f2940x;
            if (workspaceSession != null && workspaceSession.state() == WorkspaceSession.State.RETURN_FAILED && motionEvent.getRawX() >= 2224.0f && motionEvent.getRawY() >= 1532.0f) {
                m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda76
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((WorkspaceSession) obj).retryReturn();
                    }
                });
                return;
            }
            if (motionEvent.getRawX() < 2224.0f || motionEvent.getRawY() < 1532.0f || !m3082f()) {
                return;
            }
            this.f2899C = true;
            this.f2902F = motionEvent.getRawX();
            this.f2903G = motionEvent.getRawY();
            Runnable runnable = new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda77
                @Override // java.lang.Runnable
                public final void run() {
                    WorkbenchController.this.m2998a();
                }
            };
            this.f2906J = runnable;
            this.f2937u.f2071A1.postDelayed(runnable, 300L);
            if (this.f2937u.f2301i4 != null) {
                m3093q();
                return;
            }
            return;
        }
        if (this.f2899C) {
            if (actionMasked != 5 && actionMasked != 3) {
                float max = Math.max(0.0f, this.f2902F - motionEvent.getRawX());
                float max2 = Math.max(0.0f, this.f2903G - motionEvent.getRawY());
                if (!this.f2900D) {
                    float hypot = (float) Math.hypot(motionEvent.getRawX() - this.f2902F, motionEvent.getRawY() - this.f2903G);
                    if (actionMasked == 1 || hypot > ViewConfiguration.get(this.f2937u.f2301i4).getScaledTouchSlop()) {
                        m3105w();
                        return;
                    }
                    return;
                }
                boolean z = Math.hypot((double) max, (double) max2) >= 220.0d;
                if (actionMasked == 2) {
                    m2999a(max, max2, z);
                    return;
                }
                if (actionMasked == 1) {
                    int[] iArr = this.f2904H;
                    int i = this.f2905I;
                    m3105w();
                    if (z && iArr != null && i >= 0) {
                        m3000a(i);
                        return;
                    } else if (z && iArr != null) {
                        m3045a(iArr);
                        return;
                    } else {
                        m3055b();
                        return;
                    }
                }
                return;
            }
            m3055b();
            m3105w();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m2998a() {
        this.f2906J = null;
        if (this.f2899C && m3082f()) {
            if (!this.f2898B) {
                this.f2939w.attachContext(this.f2937u.f2301i4);
                this.f2898B = true;
            }
            if (!this.f2939w.ready()) {
                Log.w(f2877a, "Corner: core not ready " + this.f2939w.readiness());
                m3105w();
                return;
            }
            int[] pickTasks = WorkspaceShell.pickTasks(this.f2937u.f2301i4, Collections.singleton("dev.duo.hookprobe"));
            WorkspaceSession workspaceSession = this.f2940x;
            this.f2905I = -1;
            if (workspaceSession != null && pickTasks != null) {
                if (workspaceSession.state() != WorkspaceSession.State.PAUSED) {
                    m3105w();
                    return;
                } else {
                    int i = pickTasks[0];
                    this.f2905I = i;
                    pickTasks = m3053a(workspaceSession, i);
                }
            }
            SurfaceControl surfaceControl = this.f2937u.f2089D1;
            if (pickTasks != null && surfaceControl != null) {
                try {
                    WorkspaceHooks c0143b = this.f2937u;
                    Objects.requireNonNull(c0143b);
                    this.f2907K = new WorkspaceHooks.R(c0143b, "workbench_handle", (View) new WorkbenchHandleView(this.f2937u.f2301i4), 0.0f, 0, f2882f, f2882f, 0, 0.0f, true);
                    try {
                        m3020a(surfaceControl, pickTasks);
                        if (!this.f2937u.m2787E0()) {
                            m3067c();
                            m3105w();
                            return;
                        }
                        this.f2904H = pickTasks;
                        this.f2900D = true;
                        this.f2937u.m2783B(2);
                        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                        try {
                            transaction.reparent(this.f2907K.f2504b, surfaceControl).setPosition(this.f2907K.f2504b, 2164.0f, 1472.0f).setCrop(this.f2907K.f2504b, new Rect(0, 0, f2882f, f2882f)).setLayer(this.f2907K.f2504b, f2883g).setVisibility(this.f2907K.f2504b, true).apply();
                            transaction.close();
                        } finally {
                        }
                    } catch (RuntimeException e) {
                        Log.e(f2877a, "Entry mask unavailable", e);
                        m3031a(this.f2907K);
                        this.f2907K = null;
                        m3105w();
                    }
                } catch (RuntimeException e2) {
                    Log.e(f2877a, "Handle unavailable", e2);
                    m3105w();
                }
            } else {
                m3105w();
            }
        } else {
            m3105w();
        }
    }

    /* renamed from: a */
    private void m2999a(float f, float f2, boolean z) {
        WorkspaceHooks.R r = this.f2907K;
        if (r == null) {
            return;
        }
        float hypot = (float) Math.hypot(f, f2);
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            transaction.setPosition(r.f2504b, 2164.0f - f, 1472.0f - f2);
            WorkspaceHooks.R r2 = this.f2908L;
            if (r2 != null) {
                transaction.setAlpha(r2.f2504b, Math.min(1.0f, hypot / 60.0f));
                this.f2909M.m2987a(Math.min(1.0f, hypot / 460.0f), 0.0f);
            }
            transaction.apply();
            transaction.close();
            if (z != this.f2901E) {
                this.f2901E = z;
                ((WorkbenchHandleView) r.f2506d).m2968a(z);
                if (z) {
                    this.f2937u.m2783B(2);
                }
            }
        } catch (Throwable th) {
            try {
                transaction.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* renamed from: a */
    private void m3020a(SurfaceControl surfaceControl, int[] iArr) {
        Geometry geometry = new Geometry(m3077e());
        Drawable[] drawableArr = new Drawable[5];
        Map<Integer, String> m3097u = m3097u();
        for (int i = 0; i < iArr.length && i < 5; i++) {
            drawableArr[i] = m2994a(m3097u.get(Integer.valueOf(iArr[i])));
        }
        WorkbenchStageView c0154m = new WorkbenchStageView(this.f2937u.f2301i4, m3092p(), drawableArr);
        this.f2909M = c0154m;
        c0154m.m2989a(geometry.logical, new Rect[0], null);
        WorkspaceHooks c0143b = this.f2937u;
        Objects.requireNonNull(c0143b);
        this.f2908L = new WorkspaceHooks.R(c0143b, "workbench_stage", (View) this.f2909M, 0.0f, 0, 2364, 1672, 0, 0.0f, true);
        this.f2912P = false;
        this.f2911O = false;
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            transaction.reparent(this.f2908L.f2504b, surfaceControl).setCrop(this.f2908L.f2504b, new Rect(0, 0, 2364, 1672)).setLayer(this.f2908L.f2504b, f2889m).setAlpha(this.f2908L.f2504b, 0.0f).setVisibility(this.f2908L.f2504b, true).apply();
            transaction.close();
        } finally {
        }
    }

    /* renamed from: a */
    private synchronized void m3040a(Collection<String> collection) {
        if (this.f2937u.f2301i4 != null && collection != null && !collection.isEmpty()) {
            if (this.f2921Y == null) {
                this.f2921Y = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda73
                    @Override // java.util.concurrent.ThreadFactory
                    public final Thread newThread(Runnable runnable) {
                        Thread m2996a;
                        m2996a = WorkbenchController.m2996a(runnable);
                        return m2996a;
                    }
                });
            }
            final ArrayList arrayList = new ArrayList(collection);
            final Context context = this.f2937u.f2301i4;
            this.f2921Y.execute(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda74
                @Override // java.lang.Runnable
                public final void run() {
                    WorkbenchController.this.m3041a(arrayList, context);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Thread m2996a(Runnable runnable) {
        Thread thread = new Thread(runnable, "DuoWorkbenchIcons");
        thread.setDaemon(true);
        return thread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3041a(List list, Context context) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str != null && !this.f2920X.containsKey(str)) {
                try {
                    Drawable applicationIcon = context.getPackageManager().getApplicationIcon(str);
                    Bitmap createBitmap = Bitmap.createBitmap(180, 180, Bitmap.Config.ARGB_8888);
                    applicationIcon.setBounds(0, 0, 180, 180);
                    applicationIcon.draw(new Canvas(createBitmap));
                    this.f2920X.put(str, createBitmap);
                } catch (PackageManager.NameNotFoundException | RuntimeException e) {
                    Log.w(f2877a, "Plate icon not prepared for " + str + ": " + e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3014a(Context context) {
        try {
            ArrayList arrayList = new ArrayList();
            for (ActivityManager.RecentTaskInfo recentTaskInfo : ((ActivityManager) context.getSystemService(ActivityManager.class)).getRecentTasks(8, 2)) {
                Intent intent = recentTaskInfo.baseIntent;
                ComponentName component = (intent == null || intent.getComponent() == null) ? recentTaskInfo.baseActivity : recentTaskInfo.baseIntent.getComponent();
                if (component != null && !arrayList.contains(component.getPackageName())) {
                    arrayList.add(component.getPackageName());
                }
            }
            m3040a((Collection<String>) arrayList);
        } catch (RuntimeException e) {
            Log.w(f2877a, "Entry icons not prepared: " + e);
        }
    }

    /* renamed from: a */
    private Drawable m2994a(String str) {
        Bitmap bitmap = str == null ? null : this.f2920X.get(str);
        if (bitmap != null) {
            BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f2937u.f2301i4.getResources(), bitmap);
            bitmapDrawable.setFilterBitmap(true);
            return bitmapDrawable;
        }
        if (str == null) {
            return null;
        }
        try {
            return this.f2937u.f2301i4.getPackageManager().getApplicationIcon(str);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: a */
    private void m3012a(long j, ValueAnimator.AnimatorUpdateListener animatorUpdateListener, Runnable runnable) {
        ValueAnimator valueAnimator = this.f2910N;
        this.f2910N = null;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(j);
        ofFloat.setInterpolator(new DecelerateInterpolator(2.0f));
        ofFloat.addUpdateListener(animatorUpdateListener);
        ofFloat.addListener(new b(runnable));
        this.f2910N = ofFloat;
        ofFloat.start();
    }

    /* renamed from: a */
    private void m3023a(Geometry geometry, int i) {
        if (this.f2908L == null) {
            return;
        }
        Rect[] rectArr = new Rect[4];
        for (int i2 = 0; i2 < 4; i2++) {
            rectArr[i2] = geometry.slots[i2];
        }
        Rect[] rectArr2 = geometry.slots;
        Rect rect = new Rect(0, rectArr2[0].top, geometry.logical.left, rectArr2[3].bottom);
        final WorkbenchStageView c0154m = this.f2909M;
        c0154m.m2989a(geometry.logical, rectArr, rect);
        m3056b(1.0f);
        m3012a(f2892p, new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda22
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                WorkbenchController.m3065b(WorkbenchStageView.this, valueAnimator);
            }
        }, new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                WorkbenchController.this.m3090l();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3036a(WorkbenchStageView c0154m, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        c0154m.m2987a(floatValue, 0.0f);
        m3056b(1.0f - floatValue);
    }

    /* renamed from: a */
    private boolean m3052a(WorkspaceSession workspaceSession, WorkspaceHost workspaceHost) {
        SurfaceControl surfaceControl = this.f2937u.f2089D1;
        if (surfaceControl == null) {
            return false;
        }
        m3067c();
        Drawable[] drawableArr = new Drawable[5];
        drawableArr[0] = workspaceSession.main() == null ? null : m2994a(workspaceSession.main().origin.packageName);
        int i = 0;
        while (i < 4) {
            TaskBinding slot = workspaceSession.slot(i);
            i++;
            drawableArr[i] = slot == null ? null : m2994a(slot.origin.packageName);
        }
        WorkbenchSlotView c0151j = new WorkbenchSlotView(this.f2937u.f2301i4, m3092p(), drawableArr);
        try {
            WorkspaceHooks c0143b = this.f2937u;
            Objects.requireNonNull(c0143b);
            this.f2908L = new WorkspaceHooks.R(c0143b, "workbench_exit", (View) c0151j, 0.0f, 0, 2364, 1672, 0, 0.0f, true);
            this.f2922Z = c0151j;
            this.f2911O = true;
            this.f2923a0 = 0.0f;
            this.f2924b0 = 0.0f;
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                transaction.reparent(this.f2908L.f2504b, surfaceControl).setLayer(this.f2908L.f2504b, f2889m).setAlpha(this.f2908L.f2504b, 0.0f).setVisibility(this.f2908L.f2504b, true).apply();
                transaction.close();
                m3021a(workspaceHost.geometry(), 0.0f, 0.0f);
                return true;
            } finally {
            }
        } catch (RuntimeException e) {
            Log.e(f2877a, "Exit mask unavailable", e);
            return false;
        }
    }

    /* renamed from: a */
    private void m3021a(Geometry geometry, float f, float f2) {
        WorkbenchSlotView c0151j = this.f2922Z;
        if (c0151j == null || geometry == null) {
            return;
        }
        Rect[] rectArr = new Rect[4];
        for (int i = 0; i < 4; i++) {
            Rect rect = new Rect(geometry.slots[i]);
            rectArr[i] = rect;
            rect.offset(-Math.round(f), 0);
        }
        c0151j.m2967a(geometry.mainFollowing(f), rectArr);
        m3056b(f2);
        this.f2923a0 = f;
        this.f2924b0 = f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3022a(Geometry geometry, float f, float f2, ValueAnimator valueAnimator) {
        float floatValue = 1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue();
        m3021a(geometry, f * floatValue, f2 * floatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3046a(Rect[] rectArr, Rect[] rectArr2, WorkbenchSlotView c0151j, Rect rect, Rect rect2, float f, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        Rect[] rectArr3 = new Rect[4];
        for (int i = 0; i < 4; i++) {
            rectArr3[i] = Geometry.between(rectArr[i], rectArr2[i], floatValue, new Rect());
        }
        c0151j.m2967a(Geometry.between(rect, rect2, floatValue, new Rect()), rectArr3);
        float min = Math.min(1.0f, f + ((1.0f - f) * Math.min(1.0f, floatValue * 3.0f)));
        m3056b(min);
        this.f2924b0 = min;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3019a(Choreographer choreographer, long j) {
        choreographer.postFrameCallback(new Choreographer.FrameCallback() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda78
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j2) {
                WorkbenchController.this.m3009a(j2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3009a(long j) {
        if (this.f2908L == null) {
            return;
        }
        m3012a(f2893q, new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                WorkbenchController.this.m3013a(valueAnimator);
            }
        }, new n$$ExternalSyntheticLambda9(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3013a(ValueAnimator valueAnimator) {
        m3056b(1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static void m3031a(WorkspaceHooks.R r) {
        if (r == null) {
            return;
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            transaction.reparent(r.f2504b, null).apply();
            transaction.close();
            r.m2818b();
        } catch (Throwable th) {
            try {
                transaction.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* renamed from: a */
    private void m3045a(final int[] iArr) {
        if (this.f2940x == null && m3082f()) {
            String[] strArr = new String[5];
            Map<Integer, String> m3096t = m3096t();
            for (int i = 0; i < iArr.length && i < 5; i++) {
                strArr[i] = m3096t.get(Integer.valueOf(iArr[i]));
            }
            try {
                if (this.f2942z == null) {
                    WorkspaceHooks c0143b = this.f2937u;
                    this.f2942z = new AudioFocusSilencer(c0143b.f2301i4, c0143b.f2071A1);
                }
                this.f2942z.m3131a(strArr);
                this.f2919W = m3077e();
                m3098v();
                this.f2939w.prepare(this, this.f2919W);
                m3023a(new Geometry(this.f2919W), iArr.length - 1);
                WorkspaceHost host = this.f2939w.host();
                this.f2941y = host;
                host.setActions(this);
                this.f2941y.open();
                WorkspaceShell workspaceShell = this.f2939w;
                long j = this.f2897A + 1;
                this.f2897A = j;
                final WorkspaceSession workspaceSession = new WorkspaceSession(workspaceShell, j);
                this.f2940x = workspaceSession;
                final int[] copyOfRange = Arrays.copyOfRange(iArr, 1, iArr.length);
                Log.i(f2877a, "Enter session " + workspaceSession.epoch + ": main " + iArr[0] + " subs " + Arrays.toString(copyOfRange));
                this.f2939w.shellHandler().post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda33
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkbenchController.m3030a(WorkspaceSession.this, iArr, copyOfRange);
                    }
                });
            } catch (RuntimeException e) {
                Log.e(f2877a, "Video isolation not ready: workbench not opened", e);
                AudioFocusSilencer c0156o = this.f2942z;
                if (c0156o != null) {
                    c0156o.m3130a();
                    this.f2942z = null;
                }
                m3055b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m3030a(WorkspaceSession workspaceSession, int[] iArr, int[] iArr2) {
        workspaceSession.open(iArr[0], iArr2);
    }

    /* renamed from: a */
    private static int[] m3053a(WorkspaceSession workspaceSession, int i) {
        int[] iArr = new int[5];
        Arrays.fill(iArr, -1);
        TaskBinding main = workspaceSession.main();
        int i2 = 0;
        if (main != null) {
            iArr[0] = main.origin.taskId;
        }
        boolean z = main != null && main.origin.taskId == i;
        for (int i3 = 0; i3 < 4; i3++) {
            TaskBinding slot = workspaceSession.slot(i3);
            if (slot != null) {
                int i4 = slot.origin.taskId;
                iArr[i3 + 1] = i4;
                z |= i4 == i;
            }
        }
        if (z) {
            return iArr;
        }
        int[] iArr2 = new int[5];
        Arrays.fill(iArr2, -1);
        iArr2[0] = i;
        ArrayList arrayList = new ArrayList();
        int i5 = iArr[0];
        if (i5 >= 0) {
            arrayList.add(Integer.valueOf(i5));
        }
        boolean z2 = iArr[0] < 0;
        for (int i6 = 1; i6 < 5; i6++) {
            int i7 = iArr[i6];
            if (i7 >= 0) {
                arrayList.add(Integer.valueOf(i7));
            } else if (z2) {
                arrayList.add(-1);
            } else {
                z2 = true;
            }
        }
        while (i2 < 4 && i2 < arrayList.size()) {
            int i8 = i2 + 1;
            iArr2[i8] = ((Integer) arrayList.get(i2)).intValue();
            i2 = i8;
        }
        return iArr2;
    }

    /* renamed from: a */
    private void m3000a(final int i) {
        WorkspaceSession workspaceSession = this.f2940x;
        if (workspaceSession != null && this.f2941y != null && m3082f()) {
            m3023a(new Geometry(this.f2919W), 4);
            Log.i(f2877a, "Corner into paused session " + workspaceSession.epoch + ": incoming " + i);
            m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda31
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    WorkbenchController.this.m3059b(i, (WorkspaceSession) obj);
                }
            });
            return;
        }
        m3055b();
    }

    /* renamed from: a */
    private void m3042a(final Consumer<WorkspaceSession> consumer) {
        final WorkspaceSession workspaceSession = this.f2940x;
        WorkspaceShell workspaceShell = this.f2939w;
        Handler shellHandler = workspaceShell == null ? null : workspaceShell.shellHandler();
        if (workspaceSession == null || shellHandler == null) {
            return;
        }
        shellHandler.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda51
            @Override // java.lang.Runnable
            public final void run() {
                WorkbenchController.this.m3029a(workspaceSession, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3029a(WorkspaceSession workspaceSession, Consumer consumer) {
        if (this.f2940x == workspaceSession) {
            consumer.accept(workspaceSession);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m3039a(String str, boolean z, WorkspaceSession workspaceSession) {
        workspaceSession.close(str, !z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ Object m2995a(Object obj, Method method, Object[] objArr) throws Throwable {
        char c;
        String name = method.getName();
        name.getClass();
        switch (name.hashCode()) {
            case -1776922004:
                if (name.equals("toString")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1295482945:
                if (name.equals("equals")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 147696667:
                if (name.equals("hashCode")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1593995928:
                if (name.equals("onDeviceStateChanged")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 1:
                break;
            case 3:
                this.f2929g0 = objArr[0];
                m3103m();
                break;
        }
        return null;
    }

    /* renamed from: a */
    void m3102a(boolean z) {
        WorkspaceHost workspaceHost = this.f2941y;
        if (workspaceHost != null) {
            workspaceHost.setNight(z);
        }
        WorkbenchStageView c0154m = this.f2909M;
        if (c0154m != null) {
            c0154m.m2988a(z ? -14935010 : -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3001a(int i, int i2, final WorkspaceHost workspaceHost, WorkspaceSession workspaceSession) {
        if (workspaceSession.reorder(i, i2) || workspaceHost == null) {
            return;
        }
        this.f2937u.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.resettle();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3005a(final int i, final AppItemDto c0150i, WorkspaceSession workspaceSession) {
        if (workspaceSession.remove(i)) {
            return;
        }
        Log.w(f2877a, "Replace in slot " + i + " cancelled: remove refused " + workspaceSession.log());
        this.f2937u.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                WorkbenchController.this.m3004a(i, c0150i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3004a(int i, AppItemDto c0150i) {
        if (this.f2934l0 == i && this.f2935m0 == c0150i) {
            this.f2934l0 = -1;
            this.f2935m0 = null;
        }
    }

    /* renamed from: a */
    private void m3008a(int i, final Consumer<AppItemDto> consumer) {
        WorkspaceHost workspaceHost = this.f2941y;
        if (workspaceHost == null) {
            return;
        }
        Rect rect = workspaceHost.geometry().logical;
        Rect rect2 = i < 0 ? rect : this.f2941y.geometry().slots[i];
        float min = Math.min(2.0f, this.f2941y.geometry().slots[0].width() / 172.0f);
        final AppListAdapter c0153l = new AppListAdapter(this.f2937u.f2301i4, min, new n$$ExternalSyntheticLambda17(this), new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda18
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WorkbenchController.this.m3043a(consumer, (AppItemDto) obj);
            }
        });
        int max = Math.max(rect.top, m3095s() + 12);
        if (m3050a(c0153l, rect.left, max, Math.min(rect.width(), Math.round(620.0f * min)), rect.bottom - max, rect2, min * 34.0f)) {
            final HashSet hashSet = new HashSet();
            WorkspaceSession workspaceSession = this.f2940x;
            if (workspaceSession != null) {
                for (String str : WorkspaceShell.members(workspaceSession)) {
                    if (str != null) {
                        hashSet.add(str.substring(str.indexOf(58) + 1));
                    }
                }
            }
            hashSet.add("dev.duo.hookprobe");
            final Context context = this.f2937u.f2301i4;
            Thread thread = new Thread(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    WorkbenchController.this.m3015a(context, hashSet, c0153l);
                }
            }, "workbench-picker");
            this.f2915S = thread;
            thread.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3043a(Consumer consumer, AppItemDto c0150i) {
        m3073d();
        consumer.accept(c0150i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3015a(Context context, Set set, final AppListAdapter c0153l) {
        try {
            PackageManager packageManager = context.getPackageManager();
            HashMap hashMap = new HashMap();
            final List<AppItemDto> m2997a = m2997a(context, (Set<String>) set, hashMap);
            if (Thread.currentThread().isInterrupted()) {
                return;
            }
            this.f2937u.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    WorkbenchController.m3034a(AppListAdapter.this, m2997a);
                }
            });
            final HashMap hashMap2 = new HashMap();
            for (AppItemDto c0150i : m2997a) {
                if (Thread.currentThread().isInterrupted()) {
                    return;
                }
                String str = c0150i.f2842a;
                hashMap2.put(str, ((ResolveInfo) hashMap.get(str)).loadIcon(packageManager));
                if (hashMap2.size() == 10) {
                    HashMap hashMap3 = new HashMap();
                    this.f2937u.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda13
                        @Override // java.lang.Runnable
                        public final void run() {
                            WorkbenchController.m3035a(AppListAdapter.this, hashMap2);
                        }
                    });
                    hashMap2 = hashMap3;
                }
            }
            if (hashMap2.isEmpty()) {
                return;
            }
            this.f2937u.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    WorkbenchController.m3064b(AppListAdapter.this, hashMap2);
                }
            });
        } catch (RuntimeException e) {
            Log.e(f2877a, "App list unavailable", e);
            this.f2937u.f2071A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    AppListAdapter.this.m2981a("无法读取应用列表，请关闭后重试");
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m3034a(AppListAdapter c0153l, List list) {
        if (c0153l.isAttachedToWindow()) {
            c0153l.m2982a((List<AppItemDto>) list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m3035a(AppListAdapter c0153l, Map map) {
        if (c0153l.isAttachedToWindow()) {
            c0153l.m2983a((Map<String, Drawable>) map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3018a(IBinder iBinder, AppItemDto c0150i) {
        if (this.f2917U != iBinder) {
            return;
        }
        this.f2939w.cancelLaunch(iBinder);
        this.f2917U = null;
        Log.w(f2877a, "Launch of " + c0150i.f2842a + " not seen in " + f2885i + "ms: slot stays empty");
        m3088j();
    }

    /* renamed from: a */
    private boolean m3048a(int i, String str) {
        int i2;
        WorkspaceSession workspaceSession = this.f2940x;
        if (workspaceSession != null && str != null) {
            String[] members = WorkspaceShell.members(workspaceSession);
            if (i >= 0 && (i2 = i + 1) < members.length) {
                members[i2] = str;
                try {
                    if (this.f2942z == null) {
                        WorkspaceHooks c0143b = this.f2937u;
                        this.f2942z = new AudioFocusSilencer(c0143b.f2301i4, c0143b.f2071A1);
                    }
                    this.f2942z.m3131a(members);
                    return true;
                } catch (RuntimeException e) {
                    Log.e(f2877a, "Video isolation not ready: " + str + " not opened in slot " + i, e);
                    m3088j();
                }
            }
        }
        return false;
    }

    /* renamed from: a */
    private static List<AppItemDto> m2997a(Context context, Set<String> set, Map<String, ResolveInfo> map) {
        PackageManager packageManager = context.getPackageManager();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (ActivityManager.RecentTaskInfo recentTaskInfo : ((ActivityManager) context.getSystemService(ActivityManager.class)).getRecentTasks(64, 2)) {
            ComponentName componentName = recentTaskInfo.baseActivity;
            String packageName = componentName != null ? componentName.getPackageName() : null;
            if (packageName != null && !linkedHashMap.containsKey(packageName)) {
                linkedHashMap.put(packageName, Integer.valueOf(recentTaskInfo.taskId));
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.keySet());
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER"), 0)) {
            if (Thread.currentThread().isInterrupted()) {
                return Collections.EMPTY_LIST;
            }
            String str = resolveInfo.activityInfo.packageName;
            if (!set.contains(str) && !"com.miui.home".equals(str) && !linkedHashMap2.containsKey(str)) {
                map.put(str, resolveInfo);
                linkedHashMap2.put(str, new AppItemDto(str, resolveInfo.activityInfo.name, String.valueOf(resolveInfo.loadLabel(packageManager)), linkedHashMap.containsKey(str) ? ((Integer) linkedHashMap.get(str)).intValue() : -1, arrayList.indexOf(str), m3049a(resolveInfo.activityInfo)));
            }
        }
        ArrayList arrayList2 = new ArrayList(linkedHashMap2.values());
        final Collator collator = Collator.getInstance(Locale.CHINA);
        arrayList2.sort(new Comparator() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda21
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m2991a;
                m2991a = WorkbenchController.m2991a(collator, (AppItemDto) obj, (AppItemDto) obj2);
                return m2991a;
            }
        });
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ int m2991a(Collator collator, AppItemDto c0150i, AppItemDto c0150i2) {
        int i = c0150i.f2846e;
        if (i >= 0 || c0150i2.f2846e >= 0) {
            if (i < 0) {
                i = Integer.MAX_VALUE;
            }
            int i2 = c0150i2.f2846e;
            int compare = Integer.compare(i, i2 >= 0 ? i2 : Integer.MAX_VALUE);
            if (compare != 0) {
                return compare;
            }
        }
        return collator.compare(c0150i.f2844c, c0150i2.f2844c);
    }

    /* renamed from: a */
    private static boolean m3049a(ActivityInfo activityInfo) {
        try {
            return ActivityInfo.class.getField("resizeMode").getInt(activityInfo) == 0;
        } catch (ReflectiveOperationException | RuntimeException e) {
            return false;
        }
    }

    /* renamed from: a */
    private boolean m3050a(View view, final int i, final int i2, int i3, int i4, Rect rect, float f) {
        m3073d();
        WorkspaceHost workspaceHost = this.f2941y;
        if (workspaceHost == null) {
            return false;
        }
        View view2 = new View(this.f2937u.f2301i4);
        view2.setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda61
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view3, MotionEvent motionEvent) {
                boolean m3051a;
                m3051a = WorkbenchController.this.m3051a(view3, motionEvent);
                return m3051a;
            }
        });
        try {
            WorkspaceHooks c0143b = this.f2937u;
            Objects.requireNonNull(c0143b);
            this.f2914R = c0143b.new R("workbench_popup_outside", view2, 0.0f, 0, 2364, 1672, 0, 0.0f, 8);
            WorkspaceHooks c0143b2 = this.f2937u;
            Objects.requireNonNull(c0143b2);
            this.f2913Q = c0143b2.new R("workbench_popup", view, 0.0f, 0, i3, i4, 0, 0.0f, 8);
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                transaction.reparent(this.f2914R.f2504b, workspaceHost.root()).setLayer(this.f2914R.f2504b, f2884h).setVisibility(this.f2914R.f2504b, true);
                transaction.reparent(this.f2913Q.f2504b, workspaceHost.root()).setLayer(this.f2913Q.f2504b, 2001).setPosition(this.f2913Q.f2504b, i, i2).setCrop(this.f2913Q.f2504b, new Rect(0, 0, i3, i4)).setVisibility(this.f2913Q.f2504b, true).setAlpha(this.f2913Q.f2504b, 0.0f).setScale(this.f2913Q.f2504b, 0.08f, 0.08f).setPosition(this.f2913Q.f2504b, rect.centerX(), rect.centerY());
                try {
                    SurfaceControl.Transaction.class.getMethod("setCornerRadius", SurfaceControl.class, Float.TYPE).invoke(transaction, this.f2913Q.f2504b, Float.valueOf(f));
                    SurfaceControl.Transaction.class.getMethod("setBackgroundBlurRadius", SurfaceControl.class, Integer.TYPE).invoke(transaction, this.f2913Q.f2504b, 60);
                } catch (ReflectiveOperationException e) {
                    Log.w(f2877a, "Popup blur unavailable", e);
                }
                transaction.apply();
                transaction.close();
                final WorkspaceHooks.R r = this.f2913Q;
                final float centerX = rect.centerX();
                final float centerY = rect.centerY();
                ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                this.f2936n0 = ofFloat;
                ofFloat.setDuration(220L);
                this.f2936n0.setInterpolator(new DecelerateInterpolator(1.5f));
                this.f2936n0.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda62
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        WorkbenchController.this.m3032a(r, centerX, i, centerY, i2, valueAnimator);
                    }
                });
                this.f2936n0.start();
                return true;
            } finally {
            }
        } catch (RuntimeException e2) {
            Log.e(f2877a, "Popup unavailable", e2);
            m3073d();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ boolean m3051a(View view, MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 1) {
            m3073d();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3032a(WorkspaceHooks.R r, float f, int i, float f2, int i2, ValueAnimator valueAnimator) {
        if (r != this.f2913Q) {
            return;
        }
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float f3 = (0.92f * floatValue) + 0.08f;
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            transaction.setPosition(r.f2504b, f + ((i - f) * floatValue), f2 + ((i2 - f2) * floatValue)).setScale(r.f2504b, f3, f3).setAlpha(r.f2504b, floatValue).apply();
            transaction.close();
        } catch (Throwable th) {
            try {
                transaction.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* renamed from: a */
    private static void m3038a(String str, Runnable runnable) {
        try {
            runnable.run();
        } catch (RuntimeException e) {
            Log.e(f2877a, "close step failed: " + str, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m3010a(long j, int i, Object obj, WorkspaceSession workspaceSession) {
        if (workspaceSession.epoch == j) {
            workspaceSession.pipStarting(i, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m3011a(long j, int i, Object obj, boolean z, WorkspaceSession workspaceSession) {
        if (workspaceSession.epoch == j) {
            workspaceSession.pipFinished(i, obj, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m3026a(WorkspaceProtocol.SourceEvent sourceEvent, WorkspaceSession workspaceSession) {
        WorkspaceProtocol.TaskRef taskRef;
        if (workspaceSession.epoch != sourceEvent.epoch) {
            return;
        }
        int i = sourceEvent.event;
        if (i == 3) {
            workspaceSession.interruptionFinished(sourceEvent.returnedToMember);
            return;
        }
        if (i == 4) {
            workspaceSession.callState(sourceEvent.startResult, sourceEvent.returnedToMember);
            return;
        }
        if (i != 1 || (taskRef = sourceEvent.target) == null) {
            return;
        }
        int i2 = sourceEvent.kind;
        if (i2 == 2) {
            workspaceSession.interruptionStarted(taskRef.taskId);
            return;
        }
        if (i2 == 4) {
            WorkspaceProtocol.TaskRef taskRef2 = sourceEvent.foreground;
            if (taskRef2 != null) {
                workspaceSession.mainLeftToHome(taskRef2.taskId, taskRef2.taskToken, taskRef.taskId);
                return;
            }
            return;
        }
        if (i2 == 3) {
            WorkspaceProtocol.TaskRef taskRef3 = sourceEvent.foreground;
            if (taskRef3 != null) {
                workspaceSession.crossAppToMember(taskRef3.taskId, taskRef.taskId, taskRef.taskToken);
                return;
            }
            return;
        }
        if (workspaceSession.find(taskRef.taskId, taskRef.taskToken) != null) {
            workspaceSession.userSelected(sourceEvent.target.taskId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3047a(String[] strArr, WorkspaceSession.Done done) {
        try {
            if (this.f2937u.f2301i4 != null) {
                if (this.f2942z == null) {
                    WorkspaceHooks c0143b = this.f2937u;
                    this.f2942z = new AudioFocusSilencer(c0143b.f2301i4, c0143b.f2071A1);
                }
                this.f2942z.m3131a(strArr);
                done.done(true, "isolated");
                return;
            }
            throw new IllegalStateException("no context");
        } catch (RuntimeException e) {
            Log.e(f2877a, "Video isolation failed: closing the workbench", e);
            done.done(false, String.valueOf(e));
        }
    }

    /* renamed from: a */
    private static String[] m3054a(String[] strArr) {
        String[] strArr2 = new String[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            String str = strArr[i];
            strArr2[i] = str == null ? null : str.substring(str.indexOf(58) + 1);
        }
        return strArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3003a(int i, WorkspaceSession workspaceSession) {
        if (workspaceSession.adopt(i)) {
            return;
        }
        this.f2939w.adoptRefused(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m3037a(String str, WorkspaceSession workspaceSession) {
        if (workspaceSession.callActive()) {
            workspaceSession.callScreen();
        } else {
            workspaceSession.leave(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3017a(IBinder iBinder, final int i) {
        if (this.f2917U != iBinder) {
            this.f2939w.revealTask(i);
            return;
        }
        this.f2917U = null;
        final int i2 = this.f2918V;
        m3042a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda70
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WorkbenchController.this.m3002a(i2, i, (WorkspaceSession) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3002a(int i, int i2, WorkspaceSession workspaceSession) {
        if (workspaceSession.add(i, i2)) {
            return;
        }
        Log.w(f2877a, "Launched task " + i2 + " not taken: " + workspaceSession.log());
        this.f2939w.revealTask(i2);
        this.f2937u.f2071A1.post(new n$$ExternalSyntheticLambda44(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3028a(WorkspaceSession workspaceSession, WorkspaceSession.State state, boolean z, String str, TaskBinding[] taskBindingArr, String[] strArr) {
        final WorkspaceHost workspaceHost = this.f2941y;
        if (workspaceHost == null || this.f2940x != workspaceSession) {
            return;
        }
        this.f2938v.m3142a(state, z, workspaceSession.epoch);
        boolean z2 = false;
        if (state == WorkspaceSession.State.PAUSED) {
            if (this.f2927e0) {
                return;
            }
            this.f2927e0 = true;
            m3073d();
            workspaceHost.setShown(false);
            return;
        }
        if (this.f2927e0 && state == WorkspaceSession.State.ACTIVE) {
            this.f2927e0 = false;
            workspaceHost.setShown(true);
        }
        if (z && !this.f2928f0 && !this.f2927e0 && state != WorkspaceSession.State.CLOSED) {
            workspaceHost.setShown(false);
        }
        WorkspaceSession.State state2 = WorkspaceSession.State.CLOSED;
        if (state == state2 || state == WorkspaceSession.State.RETURN_FAILED) {
            this.f2927e0 = false;
            this.f2928f0 = false;
        }
        if (state == state2) {
            if (this.f2908L != null) {
                if (!this.f2911O) {
                    m3055b();
                } else if (this.f2925c0) {
                    this.f2926d0 = true;
                } else {
                    m3085h();
                }
            }
            this.f2934l0 = -1;
            this.f2935m0 = null;
            m3038a("popup", new n$$ExternalSyntheticLambda17(this));
            final IBinder iBinder = this.f2917U;
            this.f2917U = null;
            if (iBinder != null) {
                m3038a("launch", new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda37
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkbenchController.this.m3016a(iBinder);
                    }
                });
            }
            final AudioFocusSilencer c0156o = this.f2942z;
            this.f2942z = null;
            if (c0156o != null) {
                m3038a("audio", new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda38
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioFocusSilencer.this.m3130a();
                    }
                });
            }
            m3038a("host", new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda39
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHost.this.close();
                }
            });
            this.f2941y = null;
            this.f2940x = null;
            Log.i(f2877a, "Closed: " + str);
            return;
        }
        if (state == WorkspaceSession.State.RETURN_FAILED) {
            this.f2934l0 = -1;
            this.f2935m0 = null;
            m3038a("retain tasks only", new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda40
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHost.this.retainTasksOnly();
                }
            });
            if (this.f2908L != null) {
                m3038a("stage", new n$$ExternalSyntheticLambda9(this));
            }
            m3038a("popup", new n$$ExternalSyntheticLambda17(this));
            final AudioFocusSilencer c0156o2 = this.f2942z;
            this.f2942z = null;
            if (c0156o2 != null) {
                m3038a("audio", new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda38
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioFocusSilencer.this.m3130a();
                    }
                });
            }
            Log.e(f2877a, "RETURN_FAILED " + str);
            return;
        }
        workspaceHost.showSlots(taskBindingArr);
        workspaceHost.showMain(workspaceSession.main());
        WorkspaceSession.State state3 = WorkspaceSession.State.ACTIVE;
        if (state == state3 && !z) {
            z2 = true;
        }
        workspaceHost.setInteractive(z2);
        if (state != state3 || z) {
            return;
        }
        if (!this.f2912P && this.f2908L != null) {
            this.f2912P = true;
            m3087i();
        }
        m3040a((Collection<String>) Arrays.asList(m3054a(strArr)));
        int i = this.f2916T;
        if (i >= 0 && taskBindingArr[i] == null) {
            this.f2916T = -1;
            plus(i);
        }
        int i2 = this.f2934l0;
        if (i2 < 0 || taskBindingArr[i2] != null) {
            return;
        }
        AppItemDto c0150i = this.f2935m0;
        this.f2934l0 = -1;
        this.f2935m0 = null;
        if (c0150i != null) {
            m3070c(i2, c0150i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3016a(IBinder iBinder) {
        this.f2939w.cancelLaunch(iBinder);
    }
}
