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
import dev.duo.taskcore.Geometry;
import dev.duo.taskcore.SystemGate;
import dev.duo.taskcore.TaskBinding;
import dev.duo.taskcore.WorkspaceHost;
import dev.duo.taskcore.WorkspaceProtocol;
import dev.duo.taskcore.WorkspaceSession;
import dev.duo.taskcore.WorkspaceShell;
import dev.duo.workspaceprobe.b;
import dev.duo.workspaceprobe.b.R;
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

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class n implements WorkspaceShell.Events, WorkspaceHost.Actions {
    private static final String a = "DuoWorkbench";
    private static final String b = "com.lsposed.miduo";
    private static final int c = 140;
    private static final int d = 300;
    private static final int e = 220;
    private static final int f = 200;
    private static final int g = 16777217;
    private static final int h = 2000;
    private static final long i = 5000;
    private static final int j = 60;
    static final int k = 32;
    static final int l = 120;
    private static final int m = 16777218;
    private static final int n = 60;
    private static final int o = 460;
    private static final long p = 320;
    private static final long q = 180;
    private static final int r = 12;
    private static final float s = 160.0f;
    private static final int t = 10;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;
    private float F;
    private float G;
    private int[] H;
    private Runnable J;
    private dev.duo.workspaceprobe.b.R K;
    private dev.duo.workspaceprobe.b.R L;
    private m M;
    private ValueAnimator N;
    private boolean O;
    private boolean P;
    private dev.duo.workspaceprobe.b.R Q;
    private dev.duo.workspaceprobe.b.R R;
    private Thread S;
    private IBinder U;
    private ExecutorService Y;
    private j Z;
    private float a0;
    private float b0;
    private boolean c0;
    private boolean d0;
    private boolean e0;
    private boolean f0;
    private volatile Object g0;
    private Object h0;
    private Method i0;
    private i m0;
    private ValueAnimator n0;
    private final dev.duo.workspaceprobe.b u;
    private WorkspaceShell w;
    private volatile WorkspaceSession x;
    private WorkspaceHost y;
    private o z;
    private final p v = new p();
    private long A = SystemClock.uptimeMillis();
    private int I = -1;
    private int T_fld= -1;
    private int V = -1;
    private Rect W = new Rect();
    private final Map<String, Bitmap> X = Collections.synchronizedMap(new a(16, 0.75f, true));
    private int j0 = Integer.MIN_VALUE;
    private int k0 = Integer.MIN_VALUE;
    private int l0 = -1;

    class a extends LinkedHashMap<String, Bitmap> {
        a(int i, float f, boolean z) {
            super(i, f, z);
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<String, Bitmap> entry) {
            return size() > 12;
        }
    }

    class b extends AnimatorListenerAdapter {
        final /* synthetic */ Runnable a;

        b(Runnable runnable) {
            this.a = runnable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (dev.duo.workspaceprobe.n.this.N == animator) {
                dev.duo.workspaceprobe.n.this.N = null;
                this.a.run();
            }
        }
    }

    n(dev.duo.workspaceprobe.b bVar) {
        this.u = bVar;
    }

    private void b(float f2) {
        if (this.L == null) {
            return;
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            transaction.setAlpha(this.L.b, f2).apply();
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
    public void c() {
        this.c0 = false;
        this.d0 = false;
        ValueAnimator valueAnimator = this.N;
        if (valueAnimator != null) {
            this.N = null;
            valueAnimator.cancel();
        }
        a(this.L);
        this.L = null;
        this.M = null;
        this.Z = null;
    }

    private Rect e() {
        Point point = new Point();
        ((DisplayManager) this.u.i4.getSystemService(DisplayManager.class)).getDisplay(0).getRealSize(point);
        return new Rect(0, 0, point.x, point.y);
    }

    private boolean f() {
        WorkspaceShell workspaceShell = this.w;
        SystemGate systemGate = workspaceShell == null ? null : workspaceShell.systemGate();
        if (systemGate != null && !systemGate.blocksActions() && !systemGate.requiresClose() && this.w != null) {
            dev.duo.workspaceprobe.b bVar = this.u;
            if (bVar.i4 != null && !bVar.I1 && !bVar.L1 && !bVar.N1 && ((this.x == null || this.x.state() == WorkspaceSession.State.PAUSED) && this.u.v0() && this.u.p2() && this.u.R0())) {
                Rect e2 = e();
                if (e2.width() == 2364 && e2.height() == 1672) {
                    return true;
                }
            }
        }
        return false;
    }

    private void g() {
        WorkspaceSession workspaceSession = this.x;
        WorkspaceHost workspaceHost = this.y;
        if (workspaceSession == null || workspaceHost == null) {
            return;
        }
        if (this.Z != null || a(workspaceSession, workspaceHost)) {
            this.P = false;
            Geometry geometry = workspaceHost.geometry();
            final j jVar = this.Z;
            final Rect mainFollowing = geometry.mainFollowing(this.a0);
            final Rect rect = new Rect(0, 0, 2364, 1672);
            final Rect[] rectArr = new Rect[4];
            final Rect[] rectArr2 = new Rect[4];
            for (int i2 = 0; i2 < 4; i2++) {
                Rect rect2 = new Rect(geometry.slots[i2]);
                rectArr[i2] = rect2;
                rect2.offset(-Math.round(this.a0), 0);
                Rect rect3 = new Rect(geometry.slots[i2]);
                rectArr2[i2] = rect3;
                rect3.offset(-(geometry.slots[i2].right + 40), 0);
            }
            final float f2 = this.b0;
            this.c0 = true;
            this.d0 = false;
            a(p, new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda25
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    dev.duo.workspaceprobe.n.this.a(rectArr, rectArr2, jVar, mainFollowing, rect, f2, valueAnimator);
                }
            }, new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.n.this.k();
                }
            });
        }
    }

    private void h() {
        final Choreographer choreographer = Choreographer.getInstance();
        choreographer.postFrameCallback(new Choreographer.FrameCallback() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda36
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j2) {
                dev.duo.workspaceprobe.n.this.a(choreographer, j2);
            }
        });
    }

    private void i() {
        if (this.L != null && this.O && this.P) {
            a(q, new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda29
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    dev.duo.workspaceprobe.n.this.b(valueAnimator);
                }
            }, new n$$ExternalSyntheticLambda9(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        o oVar;
        WorkspaceSession workspaceSession = this.x;
        if (workspaceSession == null || (oVar = this.z) == null) {
            return;
        }
        try {
            oVar.a(WorkspaceShell.members(workspaceSession));
        } catch (RuntimeException e2) {
            Log.e(a, "Video isolation not rolled back to the session members", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        this.c0 = false;
        if (this.d0) {
            this.d0 = false;
            h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        this.O = true;
        i();
    }

    private boolean o() {
        Method method;
        Object obj = this.g0;
        if (obj != null && (method = this.i0) != null) {
            try {
                if (!((Boolean) method.invoke(obj, Integer.valueOf(this.j0))).booleanValue()) {
                    if (!((Boolean) this.i0.invoke(obj, Integer.valueOf(this.k0))).booleanValue()) {
                        return false;
                    }
                }
                return true;
            } catch (ReflectiveOperationException e2) {
                Log.e(a, "Device state unreadable: treated as folded", e2);
            }
        }
        return true;
    }

    private int p() {
        return dev.duo.workspaceprobe.b.b(this.u.i4) ? -14935010 : -1;
    }

    private void q() {
        ExecutorService executorService;
        a((Collection<String>) Collections.singleton(this.u.F1));
        synchronized (this) {
            executorService = this.Y;
        }
        if (executorService == null) {
            return;
        }
        final Context context = this.u.i4;
        executorService.execute(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.n.this.a(context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        Context context = this.u.i4;
        if (context == null) {
            return;
        }
        PowerManager powerManager = (PowerManager) context.getSystemService(PowerManager.class);
        SystemGate systemGate = this.w.systemGate();
        final boolean z = true;
        final boolean z2 = (powerManager == null || powerManager.isInteractive()) ? false : true;
        if (!z2 && systemGate != null && !systemGate.requiresPause()) {
            z = false;
        }
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda67
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).setLocked(z, z2);
            }
        });
    }

    private int s() {
        Resources resources = this.u.i4.getResources();
        String[] strArr = {"status_bar_height", "status_bar_height_landscape", "status_bar_height_portrait"};
        int i2 = 0;
        for (int i3 = 0; i3 < 3; i3++) {
            int identifier = resources.getIdentifier(strArr[i3], "dimen", "android");
            if (identifier != 0) {
                i2 = Math.max(i2, resources.getDimensionPixelSize(identifier));
            }
        }
        return i2;
    }

    private Map<Integer, String> t() {
        HashMap hashMap = new HashMap();
        for (ActivityManager.RunningTaskInfo runningTaskInfo : ((ActivityManager) this.u.i4.getSystemService(ActivityManager.class)).getRunningTasks(12)) {
            try {
                String a2 = o.a(runningTaskInfo);
                if (a2 != null) {
                    hashMap.put(Integer.valueOf(runningTaskInfo.taskId), a2);
                }
            } catch (ReflectiveOperationException e2) {
                Log.w(a, "Task member unreadable " + runningTaskInfo.taskId, e2);
            }
        }
        return hashMap;
    }

    private Map<Integer, String> u() {
        HashMap hashMap = new HashMap();
        for (ActivityManager.RunningTaskInfo runningTaskInfo : ((ActivityManager) this.u.i4.getSystemService(ActivityManager.class)).getRunningTasks(12)) {
            if (runningTaskInfo.baseActivity != null) {
                hashMap.put(Integer.valueOf(runningTaskInfo.taskId), runningTaskInfo.baseActivity.getPackageName());
            }
        }
        return hashMap;
    }

    private void v() {
        if (this.h0 != null || this.u.i4 == null) {
            return;
        }
        try {
            Class<?> cls = Class.forName("android.hardware.devicestate.DeviceStateManager");
            Class<?> cls2 = Class.forName("android.hardware.devicestate.DeviceStateManager$DeviceStateCallback");
            Class<?> cls3 = Class.forName("android.hardware.devicestate.DeviceState");
            this.i0 = cls3.getMethod("hasProperty", Integer.TYPE);
            this.j0 = cls3.getField("PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_OUTER_PRIMARY").getInt(null);
            this.k0 = cls3.getField("PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_CLOSED").getInt(null);
            Object newProxyInstance = Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new InvocationHandler() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda10
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method, Object[] objArr) {
                    Object a2;
                    a2 = dev.duo.workspaceprobe.n.this.a(obj, method, objArr);
                    return a2;
                }
            });
            Method method = cls.getMethod("registerCallback", Executor.class, cls2);
            Object systemService = this.u.i4.getSystemService(cls);
            Handler handler = this.u.A1;
            Objects.requireNonNull(handler);
            method.invoke(systemService, new g$b$$ExternalSyntheticLambda1(handler), newProxyInstance);
            this.h0 = newProxyInstance;
        } catch (ReflectiveOperationException | RuntimeException e2) {
            Log.e(a, "Device state unavailable: any display change ends the workbench", e2);
        }
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public boolean acceptsOverlay() {
        WorkspaceSession workspaceSession = this.x;
        return (workspaceSession == null || workspaceSession.closing() || this.f0 || workspaceSession.state() != WorkspaceSession.State.ACTIVE || !workspaceSession.acceptsAdopt()) ? false : true;
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public boolean adopt(int i2, String str) {
        WorkspaceSession workspaceSession = this.x;
        if (workspaceSession == null || str == null || "com.lsposed.miduo".equals(str) || this.f0) {
            return false;
        }
        WorkspaceSession.State state = workspaceSession.state();
        if (state == WorkspaceSession.State.PAUSED && workspaceSession.interstitialPending() && workspaceSession.acceptsAdopt()) {
            return true;
        }
        return (state == WorkspaceSession.State.ACTIVE || state == WorkspaceSession.State.TRANSITIONING || state == WorkspaceSession.State.ATTACHING) && workspaceSession.acceptsAdopt();
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void adoptReady(final int i2) {
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda48
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                dev.duo.workspaceprobe.n.this.a(i2, (WorkspaceSession) obj);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceHost.Actions
    public void barCancel() {
        WorkspaceHost workspaceHost;
        if (this.Z == null || this.f0 || (workspaceHost = this.y) == null) {
            return;
        }
        final Geometry geometry = workspaceHost.geometry();
        final float f2 = this.a0;
        final float f3 = this.b0;
        a(q, new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda34
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                dev.duo.workspaceprobe.n.this.a(geometry, f2, f3, valueAnimator);
            }
        }, new n$$ExternalSyntheticLambda9(this));
    }

    @Override // dev.duo.taskcore.WorkspaceHost.Actions
    public void barDrag(float f2) {
        WorkspaceSession workspaceSession = this.x;
        WorkspaceHost workspaceHost = this.y;
        if (workspaceSession == null || workspaceHost == null || this.f0 || workspaceSession.state() != WorkspaceSession.State.ACTIVE) {
            return;
        }
        if (this.Z != null || a(workspaceSession, workspaceHost)) {
            ValueAnimator valueAnimator = this.N;
            if (valueAnimator != null) {
                this.N = null;
                valueAnimator.cancel();
            }
            a(workspaceHost.geometry(), f2, Math.min(1.0f, f2 / s));
        }
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public boolean canAnimateGroup() {
        WorkspaceSession workspaceSession = this.x;
        return (workspaceSession == null || this.y == null || this.f0 || workspaceSession.closing() || workspaceSession.state() != WorkspaceSession.State.ACTIVE) ? false : true;
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void changed(final WorkspaceSession workspaceSession) {
        final TaskBinding[] taskBindingArr = new TaskBinding[4];
        for (int i2 = 0; i2 < 4; i2++) {
            taskBindingArr[i2] = workspaceSession.slot(i2);
        }
        final WorkspaceSession.State state = workspaceSession.state();
        final boolean closing = workspaceSession.closing();
        if (closing || state == WorkspaceSession.State.CLOSED || state == WorkspaceSession.State.RETURN_FAILED) {
            this.w.clearRecentsGroup();
        } else if (state == WorkspaceSession.State.ACTIVE || state == WorkspaceSession.State.PAUSED) {
            this.w.registerRecentsGroup(workspaceSession.main(), taskBindingArr);
        }
        final String[] members = WorkspaceShell.members(workspaceSession);
        final String workspaceSession2 = workspaceSession.toString();
        this.u.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda72
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.n.this.a(workspaceSession, state, closing, workspaceSession2, taskBindingArr, members);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceHost.Actions
    public void exit() {
        this.f0 = true;
        d();
        g();
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda16
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).close("bar exit", true);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void external(final String str) {
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda52
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                n.a(str, (WorkspaceSession) obj);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void focused(final int i2, final Object obj) {
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda63
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                ((WorkspaceSession) obj2).systemFocused(i2, obj);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void interstitial(final int i2) {
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda30
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                n.c(i2, (WorkspaceSession) obj);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void isolate(final String[] strArr, final WorkspaceSession.Done done) {
        this.u.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.n.this.a(strArr, done);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public boolean keepsOverlay() {
        WorkspaceSession workspaceSession = this.x;
        if (workspaceSession == null || workspaceSession.closing() || this.f0 || !workspaceSession.acceptsAdopt()) {
            return false;
        }
        WorkspaceSession.State state = workspaceSession.state();
        return state == WorkspaceSession.State.ACTIVE || state == WorkspaceSession.State.TRANSITIONING || state == WorkspaceSession.State.ATTACHING;
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void keyguardExitAborted() {
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda68
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).keyguardExitAborted();
            }
        });
        this.u.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda69
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.n.this.r();
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void launched(final int i2, final IBinder iBinder) {
        this.u.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.n.this.a(iBinder, i2);
            }
        });
    }

    void m() {
        WorkspaceSession workspaceSession = this.x;
        if (workspaceSession != null) {
            dev.duo.workspaceprobe.b bVar = this.u;
            if (bVar.i4 == null) {
                return;
            }
            if (!bVar.v0()) {
                a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda53
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((WorkspaceSession) obj).close("master off", false);
                    }
                });
                return;
            }
            Rect e2 = e();
            if (e2.equals(this.W)) {
                a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda56
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((WorkspaceSession) obj).setDisplayMismatch(false);
                    }
                });
            } else {
                final boolean z = workspaceSession.state() == WorkspaceSession.State.PAUSED;
                if (o() || !z) {
                    final String str = (o() ? "folded, display " : "display changed ") + e2.width() + "x" + e2.height();
                    a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda55
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            n.a(str, z, (WorkspaceSession) obj);
                        }
                    });
                    return;
                }
                a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda54
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((WorkspaceSession) obj).setDisplayMismatch(true);
                    }
                });
            }
            r();
        }
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void memberToBack(final int i2) {
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda49
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).memberToBack(i2, null);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void memberToFront(final int i2) {
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).systemFocused(i2, null);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceHost.Actions
    public void menu(final int i2) {
        WorkspaceHost workspaceHost = this.y;
        if (workspaceHost == null) {
            return;
        }
        Rect rect = workspaceHost.geometry().slots[i2];
        float width = rect.width() / 172.0f;
        a(l.a(this.u.i4, width, new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda42
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.n.this.b(i2);
            }
        }, new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.n.this.c(i2);
            }
        }), rect.right + 24, Math.max(rect.top, s() + 12), Math.round(220.0f * width), Math.round(122.0f * width), rect, width * 24.0f);
    }

    void n() {
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda45
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).close("workbench off", false);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public boolean ownsNotificationLaunch() {
        WorkspaceSession workspaceSession = this.x;
        return workspaceSession != null && !workspaceSession.closing() && workspaceSession.state() == WorkspaceSession.State.ACTIVE && workspaceSession.acceptsAdopt();
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void pipFinished(final long j2, final int i2, final Object obj, final boolean z) {
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                n.a(j2, i2, obj, z, (WorkspaceSession) obj2);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void pipStarting(final long j2, final int i2, final Object obj) {
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda75
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                n.a(j2, i2, obj, (WorkspaceSession) obj2);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceHost.Actions
    public void plus(final int i2) {
        a(i2, new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda3
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                dev.duo.workspaceprobe.n.this.c(i2, (i) obj);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public boolean recentsReturned() {
        WorkspaceSession workspaceSession = this.x;
        return workspaceSession != null && workspaceSession.recentsReturned();
    }

    @Override // dev.duo.taskcore.WorkspaceHost.Actions
    public void reorder(final int i2, final int i3) {
        d();
        final WorkspaceHost workspaceHost = this.y;
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda20
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                dev.duo.workspaceprobe.n.this.a(i2, i3, workspaceHost, (WorkspaceSession) obj);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public boolean resumeRequested(String str, Object obj) {
        WorkspaceSession workspaceSession = this.x;
        return workspaceSession != null && workspaceSession.userResume(str, obj);
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void sourceEvent(final WorkspaceProtocol.SourceEvent sourceEvent) {
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda24
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                n.a(WorkspaceProtocol.SourceEvent.this, (WorkspaceSession) obj);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceHost.Actions
    public void swap(final int i2) {
        d();
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda47
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).swap(i2);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void systemSurface(final String str) {
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda57
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).systemSurface(str);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void taskChanged(final int i2, final Object obj, final int i3, final int i4) {
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda64
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                ((WorkspaceSession) obj2).memberChanged(i2, obj, i3, i4);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public void taskGone(final int i2) {
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda11
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).taskGone(i2, null);
            }
        });
    }

    @Override // dev.duo.taskcore.WorkspaceShell.Events
    public SurfaceControl unlocking() {
        WorkspaceSession workspaceSession = this.x;
        WorkspaceHost workspaceHost = this.y;
        if (workspaceSession == null || workspaceHost == null || !workspaceSession.unlocking()) {
            return null;
        }
        return workspaceHost.root();
    }

    void w() {
        Runnable runnable = this.J;
        if (runnable != null) {
            this.u.A1.removeCallbacks(runnable);
        }
        this.J = null;
        this.E = false;
        this.D = false;
        this.C = false;
        this.H = null;
        this.I = -1;
        a(this.K);
        this.K = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public void c(final int i2, final i iVar) {
        for (ActivityManager.RunningTaskInfo runningTaskInfo : ((ActivityManager) this.u.i4.getSystemService(ActivityManager.class)).getRunningTasks(k)) {
            ComponentName componentName = runningTaskInfo.baseActivity;
            if (componentName != null && iVar.a.equals(componentName.getPackageName())) {
                final int i3 = runningTaskInfo.taskId;
                try {
                    if (a(i2, o.a(runningTaskInfo))) {
                        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda65
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                dev.duo.workspaceprobe.n.this.b(i2, i3, (WorkspaceSession) obj);
                            }
                        });
                        return;
                    }
                    return;
                } catch (ReflectiveOperationException e2) {
                    Log.e(a, "Task member unreadable " + i3 + ": not taken", e2);
                    return;
                }
            }
        }
        if (a(i2, (Process.myUid() / 100000) + ":" + iVar.a)) {
            try {
                final IBinder launch = this.w.launch(new Intent().setClassName(iVar.a, iVar.b));
                this.U = launch;
                this.V = i2;
                this.u.A1.postDelayed(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda66
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.n.this.a(launch, iVar);
                    }
                }, i);
            } catch (ReflectiveOperationException | RuntimeException e3) {
                Log.e(a, "Launch " + iVar.a + " failed", e3);
                j();
            }
        }
    }

    static float a(float f2) {
        return Math.max(0.0f, Math.min(1.0f, (2364.0f - f2) / 591.0f)) * 32.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(m mVar, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        mVar.a(floatValue, floatValue);
    }

    void a(ClassLoader classLoader) {
        try {
            WorkspaceShell workspaceShell = new WorkspaceShell(this.u, classLoader);
            this.w = workspaceShell;
            workspaceShell.install();
            Log.i(a, "TaskView workbench core installed 1.0.415-1-05e92cb34b03 wmProtocol=" + WorkspaceProtocol.buildId);
        } catch (ReflectiveOperationException | RuntimeException e2) {
            this.w = null;
            Log.e(a, "TaskView workbench core unavailable: the corner stays the App's", e2);
        }
        if (this.w != null) {
            this.v.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(ValueAnimator valueAnimator) {
        b(1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.L == null) {
            return;
        }
        final m mVar = this.M;
        mVar.a(new Rect(0, 0, 2364, 1672), new Rect[0], null);
        a(q, new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda32
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                dev.duo.workspaceprobe.n.this.a(mVar, valueAnimator);
            }
        }, new n$$ExternalSyntheticLambda9(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(final int i2) {
        d();
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda28
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WorkspaceSession) obj).remove(i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(int i2, WorkspaceSession workspaceSession) {
        if (workspaceSession.enterFrom(i2)) {
            return;
        }
        Log.w(a, "Corner entry refused: " + workspaceSession.log());
        this.u.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.n.this.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final int i2) {
        d();
        a(i2, new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda59
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                dev.duo.workspaceprobe.n.this.b(i2, (i) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(int i2, WorkspaceSession workspaceSession) {
        if (workspaceSession.callActive()) {
            workspaceSession.callScreen();
        } else {
            workspaceSession.interstitial(i2);
        }
    }

    void a(Object obj) {
        final SystemGate systemGate;
        if (this.w == null) {
            return;
        }
        try {
            systemGate = SystemGate.read(obj);
        } catch (ReflectiveOperationException | RuntimeException e2) {
            Log.e(a, "Shade state unreadable: treated as unknown (blocked, workbench returns)", e2);
            systemGate = SystemGate.UNKNOWN;
        }
        this.w.setSystemGate(systemGate);
        this.u.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.n.this.a(systemGate);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final int i2, final i iVar) {
        this.l0 = i2;
        this.m0 = iVar;
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda35
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                dev.duo.workspaceprobe.n.this.a(i2, iVar, (WorkspaceSession) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(l lVar, Map map) {
        if (lVar.isAttachedToWindow()) {
            lVar.a((Map<String, Drawable>) map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(int i2, int i3, WorkspaceSession workspaceSession) {
        if (workspaceSession.add(i2, i3)) {
            return;
        }
        Log.w(a, "Task " + i3 + " not taken into slot " + i2 + ": " + workspaceSession.log());
        this.u.A1.post(new n$$ExternalSyntheticLambda44(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final SystemGate systemGate) {
        boolean z = systemGate.blocksActions() || systemGate.requiresClose();
        if (z) {
            if (this.C) {
                b();
                w();
            }
            d();
        }
        WorkspaceHost workspaceHost = this.y;
        if (workspaceHost != null) {
            workspaceHost.setBlocked(z);
        }
        if (systemGate.requiresClose()) {
            a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda71
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    n.a(SystemGate.this, (WorkspaceSession) obj);
                }
            });
        } else {
            r();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(SystemGate systemGate, WorkspaceSession workspaceSession) {
        workspaceSession.close("system: " + (systemGate.unknown ? "state unknown" : "switching user"), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        final dev.duo.workspaceprobe.b.R r2 = this.Q;
        final dev.duo.workspaceprobe.b.R r3 = this.R;
        this.R = null;
        this.Q = null;
        final ValueAnimator valueAnimator = this.n0;
        if (valueAnimator != null) {
            this.n0 = null;
            Objects.requireNonNull(valueAnimator);
            a("popup animation", new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    valueAnimator.cancel();
                }
            });
        }
        final Thread thread = this.S;
        if (thread != null) {
            this.S = null;
            Objects.requireNonNull(thread);
            a("picker thread", new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    thread.interrupt();
                }
            });
        }
        a("popup", new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                n.a(dev.duo.workspaceprobe.b.R.this);
            }
        });
        a("popup outside", new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                n.a(dev.duo.workspaceprobe.b.R.this);
            }
        });
    }

    void a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (this.C) {
                w();
            }
            WorkspaceSession workspaceSession = this.x;
            if (workspaceSession != null && workspaceSession.state() == WorkspaceSession.State.RETURN_FAILED && motionEvent.getRawX() >= 2224.0f && motionEvent.getRawY() >= 1532.0f) {
                a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda76
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((WorkspaceSession) obj).retryReturn();
                    }
                });
                return;
            }
            if (motionEvent.getRawX() < 2224.0f || motionEvent.getRawY() < 1532.0f || !f()) {
                return;
            }
            this.C = true;
            this.F = motionEvent.getRawX();
            this.G = motionEvent.getRawY();
            Runnable runnable = new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda77
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.n.this.a();
                }
            };
            this.J = runnable;
            this.u.A1.postDelayed(runnable, 300L);
            if (this.u.i4 != null) {
                q();
                return;
            }
            return;
        }
        if (this.C) {
            if (actionMasked != 5 && actionMasked != 3) {
                float max = Math.max(0.0f, this.F - motionEvent.getRawX());
                float max2 = Math.max(0.0f, this.G - motionEvent.getRawY());
                if (!this.D) {
                    float hypot = (float) Math.hypot(motionEvent.getRawX() - this.F, motionEvent.getRawY() - this.G);
                    if (actionMasked == 1 || hypot > ViewConfiguration.get(this.u.i4).getScaledTouchSlop()) {
                        w();
                        return;
                    }
                    return;
                }
                boolean z = Math.hypot((double) max, (double) max2) >= 220.0d;
                if (actionMasked == 2) {
                    a(max, max2, z);
                    return;
                }
                if (actionMasked == 1) {
                    int[] iArr = this.H;
                    int i2 = this.I;
                    w();
                    if (z && iArr != null && i2 >= 0) {
                        a(i2);
                        return;
                    } else if (z && iArr != null) {
                        a(iArr);
                        return;
                    } else {
                        b();
                        return;
                    }
                }
                return;
            }
            b();
            w();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.J = null;
        if (this.C && f()) {
            if (!this.B) {
                this.w.attachContext(this.u.i4);
                this.B = true;
            }
            if (!this.w.ready()) {
                Log.w(a, "Corner: core not ready " + this.w.readiness());
                w();
                return;
            }
            int[] pickTasks = WorkspaceShell.pickTasks(this.u.i4, Collections.singleton("com.lsposed.miduo"));
            WorkspaceSession workspaceSession = this.x;
            this.I = -1;
            if (workspaceSession != null && pickTasks != null) {
                if (workspaceSession.state() != WorkspaceSession.State.PAUSED) {
                    w();
                    return;
                } else {
                    int i2 = pickTasks[0];
                    this.I = i2;
                    pickTasks = a(workspaceSession, i2);
                }
            }
            SurfaceControl surfaceControl = this.u.D1;
            if (pickTasks != null && surfaceControl != null) {
                try {
                    dev.duo.workspaceprobe.b bVar = this.u;
                    Objects.requireNonNull(bVar);
                    this.K = new dev.duo.workspaceprobe.b.R(bVar, "workbench_handle", (View) new k(this.u.i4), 0.0f, 0, f, f, 0, 0.0f, true);
                    try {
                        a(surfaceControl, pickTasks);
                        if (!this.u.E0()) {
                            c();
                            w();
                            return;
                        }
                        this.H = pickTasks;
                        this.D = true;
                        this.u.B(2);
                        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                        try {
                            transaction.reparent(this.K.b, surfaceControl).setPosition(this.K.b, 2164.0f, 1472.0f).setCrop(this.K.b, new Rect(0, 0, f, f)).setLayer(this.K.b, g).setVisibility(this.K.b, true).apply();
                            transaction.close();
                        } finally {
                        }
                    } catch (RuntimeException e2) {
                        Log.e(a, "Entry mask unavailable", e2);
                        a(this.K);
                        this.K = null;
                        w();
                    }
                } catch (RuntimeException e3) {
                    Log.e(a, "Handle unavailable", e3);
                    w();
                }
            } else {
                w();
            }
        } else {
            w();
        }
    }

    private void a(float f2, float f3, boolean z) {
        dev.duo.workspaceprobe.b.R r2 = this.K;
        if (r2 == null) {
            return;
        }
        float hypot = (float) Math.hypot(f2, f3);
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            transaction.setPosition(r2.b, 2164.0f - f2, 1472.0f - f3);
            dev.duo.workspaceprobe.b.R r3 = this.L;
            if (r3 != null) {
                transaction.setAlpha(r3.b, Math.min(1.0f, hypot / 60.0f));
                this.M.a(Math.min(1.0f, hypot / 460.0f), 0.0f);
            }
            transaction.apply();
            transaction.close();
            if (z != this.E) {
                this.E = z;
                ((k) r2.d).a(z);
                if (z) {
                    this.u.B(2);
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

    private void a(SurfaceControl surfaceControl, int[] iArr) {
        Geometry geometry = new Geometry(e());
        Drawable[] drawableArr = new Drawable[5];
        Map<Integer, String> u = u();
        for (int i2 = 0; i2 < iArr.length && i2 < 5; i2++) {
            drawableArr[i2] = a(u.get(Integer.valueOf(iArr[i2])));
        }
        m mVar = new m(this.u.i4, p(), drawableArr);
        this.M = mVar;
        mVar.a(geometry.logical, new Rect[0], null);
        dev.duo.workspaceprobe.b bVar = this.u;
        Objects.requireNonNull(bVar);
        this.L = new dev.duo.workspaceprobe.b.R(bVar, "workbench_stage", (View) this.M, 0.0f, 0, 2364, 1672, 0, 0.0f, true);
        this.P = false;
        this.O = false;
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            transaction.reparent(this.L.b, surfaceControl).setCrop(this.L.b, new Rect(0, 0, 2364, 1672)).setLayer(this.L.b, m).setAlpha(this.L.b, 0.0f).setVisibility(this.L.b, true).apply();
            transaction.close();
        } finally {
        }
    }

    private synchronized void a(Collection<String> collection) {
        if (this.u.i4 != null && collection != null && !collection.isEmpty()) {
            if (this.Y == null) {
                this.Y = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda73
                    @Override // java.util.concurrent.ThreadFactory
                    public final Thread newThread(Runnable runnable) {
                        Thread a2;
                        a2 = n.a(runnable);
                        return a2;
                    }
                });
            }
            final ArrayList arrayList = new ArrayList(collection);
            final Context context = this.u.i4;
            this.Y.execute(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda74
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.n.this.a(arrayList, context);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread a(Runnable runnable) {
        Thread thread = new Thread(runnable, "DuoWorkbenchIcons");
        thread.setDaemon(true);
        return thread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, Context context) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str != null && !this.X.containsKey(str)) {
                try {
                    Drawable applicationIcon = context.getPackageManager().getApplicationIcon(str);
                    Bitmap createBitmap = Bitmap.createBitmap(180, 180, Bitmap.Config.ARGB_8888);
                    applicationIcon.setBounds(0, 0, 180, 180);
                    applicationIcon.draw(new Canvas(createBitmap));
                    this.X.put(str, createBitmap);
                } catch (PackageManager.NameNotFoundException | RuntimeException e2) {
                    Log.w(a, "Plate icon not prepared for " + str + ": " + e2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Context context) {
        try {
            ArrayList arrayList = new ArrayList();
            for (ActivityManager.RecentTaskInfo recentTaskInfo : ((ActivityManager) context.getSystemService(ActivityManager.class)).getRecentTasks(8, 2)) {
                Intent intent = recentTaskInfo.baseIntent;
                ComponentName component = (intent == null || intent.getComponent() == null) ? recentTaskInfo.baseActivity : recentTaskInfo.baseIntent.getComponent();
                if (component != null && !arrayList.contains(component.getPackageName())) {
                    arrayList.add(component.getPackageName());
                }
            }
            a((Collection<String>) arrayList);
        } catch (RuntimeException e2) {
            Log.w(a, "Entry icons not prepared: " + e2);
        }
    }

    private Drawable a(String str) {
        Bitmap bitmap = str == null ? null : this.X.get(str);
        if (bitmap != null) {
            BitmapDrawable bitmapDrawable = new BitmapDrawable(this.u.i4.getResources(), bitmap);
            bitmapDrawable.setFilterBitmap(true);
            return bitmapDrawable;
        }
        if (str == null) {
            return null;
        }
        try {
            return this.u.i4.getPackageManager().getApplicationIcon(str);
        } catch (PackageManager.NameNotFoundException e2) {
            return null;
        }
    }

    private void a(long j2, ValueAnimator.AnimatorUpdateListener animatorUpdateListener, Runnable runnable) {
        ValueAnimator valueAnimator = this.N;
        this.N = null;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(j2);
        ofFloat.setInterpolator(new DecelerateInterpolator(2.0f));
        ofFloat.addUpdateListener(animatorUpdateListener);
        ofFloat.addListener(new b(runnable));
        this.N = ofFloat;
        ofFloat.start();
    }

    private void a(Geometry geometry, int i2) {
        if (this.L == null) {
            return;
        }
        Rect[] rectArr = new Rect[4];
        for (int i3 = 0; i3 < 4; i3++) {
            rectArr[i3] = geometry.slots[i3];
        }
        Rect[] rectArr2 = geometry.slots;
        Rect rect = new Rect(0, rectArr2[0].top, geometry.logical.left, rectArr2[3].bottom);
        final m mVar = this.M;
        mVar.a(geometry.logical, rectArr, rect);
        b(1.0f);
        a(p, new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda22
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                n.b(dev.duo.workspaceprobe.m.this, valueAnimator);
            }
        }, new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.n.this.l();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(m mVar, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        mVar.a(floatValue, 0.0f);
        b(1.0f - floatValue);
    }

    private boolean a(WorkspaceSession workspaceSession, WorkspaceHost workspaceHost) {
        SurfaceControl surfaceControl = this.u.D1;
        if (surfaceControl == null) {
            return false;
        }
        c();
        Drawable[] drawableArr = new Drawable[5];
        drawableArr[0] = workspaceSession.main() == null ? null : a(workspaceSession.main().origin.packageName);
        int i2 = 0;
        while (i2 < 4) {
            TaskBinding slot = workspaceSession.slot(i2);
            i2++;
            drawableArr[i2] = slot == null ? null : a(slot.origin.packageName);
        }
        j jVar = new j(this.u.i4, p(), drawableArr);
        try {
            dev.duo.workspaceprobe.b bVar = this.u;
            Objects.requireNonNull(bVar);
            this.L = new dev.duo.workspaceprobe.b.R(bVar, "workbench_exit", (View) jVar, 0.0f, 0, 2364, 1672, 0, 0.0f, true);
            this.Z = jVar;
            this.O = true;
            this.a0 = 0.0f;
            this.b0 = 0.0f;
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                transaction.reparent(this.L.b, surfaceControl).setLayer(this.L.b, m).setAlpha(this.L.b, 0.0f).setVisibility(this.L.b, true).apply();
                transaction.close();
                a(workspaceHost.geometry(), 0.0f, 0.0f);
                return true;
            } finally {
            }
        } catch (RuntimeException e2) {
            Log.e(a, "Exit mask unavailable", e2);
            return false;
        }
    }

    private void a(Geometry geometry, float f2, float f3) {
        j jVar = this.Z;
        if (jVar == null || geometry == null) {
            return;
        }
        Rect[] rectArr = new Rect[4];
        for (int i2 = 0; i2 < 4; i2++) {
            Rect rect = new Rect(geometry.slots[i2]);
            rectArr[i2] = rect;
            rect.offset(-Math.round(f2), 0);
        }
        jVar.a(geometry.mainFollowing(f2), rectArr);
        b(f3);
        this.a0 = f2;
        this.b0 = f3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Geometry geometry, float f2, float f3, ValueAnimator valueAnimator) {
        float floatValue = 1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue();
        a(geometry, f2 * floatValue, f3 * floatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Rect[] rectArr, Rect[] rectArr2, j jVar, Rect rect, Rect rect2, float f2, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        Rect[] rectArr3 = new Rect[4];
        for (int i2 = 0; i2 < 4; i2++) {
            rectArr3[i2] = Geometry.between(rectArr[i2], rectArr2[i2], floatValue, new Rect());
        }
        jVar.a(Geometry.between(rect, rect2, floatValue, new Rect()), rectArr3);
        float min = Math.min(1.0f, f2 + ((1.0f - f2) * Math.min(1.0f, floatValue * 3.0f)));
        b(min);
        this.b0 = min;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Choreographer choreographer, long j2) {
        choreographer.postFrameCallback(new Choreographer.FrameCallback() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda78
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j3) {
                dev.duo.workspaceprobe.n.this.a(j3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j2) {
        if (this.L == null) {
            return;
        }
        a(q, new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                dev.duo.workspaceprobe.n.this.a(valueAnimator);
            }
        }, new n$$ExternalSyntheticLambda9(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        b(1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(dev.duo.workspaceprobe.b.R r2) {
        if (r2 == null) {
            return;
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            transaction.reparent(r2.b, null).apply();
            transaction.close();
            r2.b();
        } catch (Throwable th) {
            try {
                transaction.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private void a(final int[] iArr) {
        if (this.x == null && f()) {
            String[] strArr = new String[5];
            Map<Integer, String> t2 = t();
            for (int i2 = 0; i2 < iArr.length && i2 < 5; i2++) {
                strArr[i2] = t2.get(Integer.valueOf(iArr[i2]));
            }
            try {
                if (this.z == null) {
                    dev.duo.workspaceprobe.b bVar = this.u;
                    this.z = new o(bVar.i4, bVar.A1);
                }
                this.z.a(strArr);
                this.W = e();
                v();
                this.w.prepare(this, this.W);
                a(new Geometry(this.W), iArr.length - 1);
                WorkspaceHost host = this.w.host();
                this.y = host;
                host.setActions(this);
                this.y.open();
                WorkspaceShell workspaceShell = this.w;
                long j2 = this.A + 1;
                this.A = j2;
                final WorkspaceSession workspaceSession = new WorkspaceSession(workspaceShell, j2);
                this.x = workspaceSession;
                final int[] copyOfRange = Arrays.copyOfRange(iArr, 1, iArr.length);
                Log.i(a, "Enter session " + workspaceSession.epoch + ": main " + iArr[0] + " subs " + Arrays.toString(copyOfRange));
                this.w.shellHandler().post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda33
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.a(WorkspaceSession.this, iArr, copyOfRange);
                    }
                });
            } catch (RuntimeException e2) {
                Log.e(a, "Video isolation not ready: workbench not opened", e2);
                o oVar = this.z;
                if (oVar != null) {
                    oVar.a();
                    this.z = null;
                }
                b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(WorkspaceSession workspaceSession, int[] iArr, int[] iArr2) {
        workspaceSession.open(iArr[0], iArr2);
    }

    private static int[] a(WorkspaceSession workspaceSession, int i2) {
        int[] iArr = new int[5];
        Arrays.fill(iArr, -1);
        TaskBinding main = workspaceSession.main();
        int i3 = 0;
        if (main != null) {
            iArr[0] = main.origin.taskId;
        }
        boolean z = main != null && main.origin.taskId == i2;
        for (int i4 = 0; i4 < 4; i4++) {
            TaskBinding slot = workspaceSession.slot(i4);
            if (slot != null) {
                int i5 = slot.origin.taskId;
                iArr[i4 + 1] = i5;
                z |= i5 == i2;
            }
        }
        if (z) {
            return iArr;
        }
        int[] iArr2 = new int[5];
        Arrays.fill(iArr2, -1);
        iArr2[0] = i2;
        ArrayList arrayList = new ArrayList();
        int i6 = iArr[0];
        if (i6 >= 0) {
            arrayList.add(Integer.valueOf(i6));
        }
        boolean z2 = iArr[0] < 0;
        for (int i7 = 1; i7 < 5; i7++) {
            int i8 = iArr[i7];
            if (i8 >= 0) {
                arrayList.add(Integer.valueOf(i8));
            } else if (z2) {
                arrayList.add(-1);
            } else {
                z2 = true;
            }
        }
        while (i3 < 4 && i3 < arrayList.size()) {
            int i9 = i3 + 1;
            iArr2[i9] = ((Integer) arrayList.get(i3)).intValue();
            i3 = i9;
        }
        return iArr2;
    }

    private void a(final int i2) {
        WorkspaceSession workspaceSession = this.x;
        if (workspaceSession != null && this.y != null && f()) {
            a(new Geometry(this.W), 4);
            Log.i(a, "Corner into paused session " + workspaceSession.epoch + ": incoming " + i2);
            a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda31
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    dev.duo.workspaceprobe.n.this.b(i2, (WorkspaceSession) obj);
                }
            });
            return;
        }
        b();
    }

    private void a(final Consumer<WorkspaceSession> consumer) {
        final WorkspaceSession workspaceSession = this.x;
        WorkspaceShell workspaceShell = this.w;
        Handler shellHandler = workspaceShell == null ? null : workspaceShell.shellHandler();
        if (workspaceSession == null || shellHandler == null) {
            return;
        }
        shellHandler.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda51
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.n.this.a(workspaceSession, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(WorkspaceSession workspaceSession, Consumer consumer) {
        if (this.x == workspaceSession) {
            consumer.accept(workspaceSession);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, boolean z, WorkspaceSession workspaceSession) {
        workspaceSession.close(str, !z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public /* synthetic */ Object a(Object obj, Method method, Object[] objArr) throws Throwable {
        char c2;
        String name = method.getName();
        name.getClass();
        switch (name.hashCode()) {
            case -1776922004:
                if (name.equals("toString")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1295482945:
                if (name.equals("equals")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 147696667:
                if (name.equals("hashCode")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1593995928:
                if (name.equals("onDeviceStateChanged")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 1:
                break;
            case 3:
                this.g0 = objArr[0];
                m();
                break;
        }
        return null;
    }

    void a(boolean z) {
        WorkspaceHost workspaceHost = this.y;
        if (workspaceHost != null) {
            workspaceHost.setNight(z);
        }
        m mVar = this.M;
        if (mVar != null) {
            mVar.a(z ? -14935010 : -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, int i3, final WorkspaceHost workspaceHost, WorkspaceSession workspaceSession) {
        if (workspaceSession.reorder(i2, i3) || workspaceHost == null) {
            return;
        }
        this.u.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.resettle();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final int i2, final i iVar, WorkspaceSession workspaceSession) {
        if (workspaceSession.remove(i2)) {
            return;
        }
        Log.w(a, "Replace in slot " + i2 + " cancelled: remove refused " + workspaceSession.log());
        this.u.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.n.this.a(i2, iVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, i iVar) {
        if (this.l0 == i2 && this.m0 == iVar) {
            this.l0 = -1;
            this.m0 = null;
        }
    }

    private void a(int i2, final Consumer<i> consumer) {
        WorkspaceHost workspaceHost = this.y;
        if (workspaceHost == null) {
            return;
        }
        Rect rect = workspaceHost.geometry().logical;
        Rect rect2 = i2 < 0 ? rect : this.y.geometry().slots[i2];
        float min = Math.min(2.0f, this.y.geometry().slots[0].width() / 172.0f);
        final l lVar = new l(this.u.i4, min, new n$$ExternalSyntheticLambda17(this), new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda18
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                dev.duo.workspaceprobe.n.this.a(consumer, (i) obj);
            }
        });
        int max = Math.max(rect.top, s() + 12);
        if (a(lVar, rect.left, max, Math.min(rect.width(), Math.round(620.0f * min)), rect.bottom - max, rect2, min * 34.0f)) {
            final HashSet hashSet = new HashSet();
            WorkspaceSession workspaceSession = this.x;
            if (workspaceSession != null) {
                for (String str : WorkspaceShell.members(workspaceSession)) {
                    if (str != null) {
                        hashSet.add(str.substring(str.indexOf(58) + 1));
                    }
                }
            }
            hashSet.add("com.lsposed.miduo");
            final Context context = this.u.i4;
            Thread thread = new Thread(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.n.this.a(context, hashSet, lVar);
                }
            }, "workbench-picker");
            this.S = thread;
            thread.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Consumer consumer, i iVar) {
        d();
        consumer.accept(iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Context context, Set set, final l lVar) {
        try {
            PackageManager packageManager = context.getPackageManager();
            HashMap hashMap = new HashMap();
            final List<i> a2 = a(context, (Set<String>) set, hashMap);
            if (Thread.currentThread().isInterrupted()) {
                return;
            }
            this.u.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    n.a(dev.duo.workspaceprobe.l.this, a2);
                }
            });
            final HashMap hashMap2 = new HashMap();
            for (i iVar : a2) {
                if (Thread.currentThread().isInterrupted()) {
                    return;
                }
                String str = iVar.a;
                hashMap2.put(str, ((ResolveInfo) hashMap.get(str)).loadIcon(packageManager));
                if (hashMap2.size() == 10) {
                    HashMap hashMap3 = new HashMap();
                    this.u.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda13
                        @Override // java.lang.Runnable
                        public final void run() {
                            n.a(dev.duo.workspaceprobe.l.this, hashMap2);
                        }
                    });
                    hashMap2 = hashMap3;
                }
            }
            if (hashMap2.isEmpty()) {
                return;
            }
            this.u.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    n.b(dev.duo.workspaceprobe.l.this, hashMap2);
                }
            });
        } catch (RuntimeException e2) {
            Log.e(a, "App list unavailable", e2);
            this.u.A1.post(new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.l.this.a("无法读取应用列表，请关闭后重试");
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(l lVar, List list) {
        if (lVar.isAttachedToWindow()) {
            lVar.a((List<i>) list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(l lVar, Map map) {
        if (lVar.isAttachedToWindow()) {
            lVar.a((Map<String, Drawable>) map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(IBinder iBinder, i iVar) {
        if (this.U != iBinder) {
            return;
        }
        this.w.cancelLaunch(iBinder);
        this.U = null;
        Log.w(a, "Launch of " + iVar.a + " not seen in " + i + "ms: slot stays empty");
        j();
    }

    private boolean a(int i2, String str) {
        int i3;
        WorkspaceSession workspaceSession = this.x;
        if (workspaceSession != null && str != null) {
            String[] members = WorkspaceShell.members(workspaceSession);
            if (i2 >= 0 && (i3 = i2 + 1) < members.length) {
                members[i3] = str;
                try {
                    if (this.z == null) {
                        dev.duo.workspaceprobe.b bVar = this.u;
                        this.z = new o(bVar.i4, bVar.A1);
                    }
                    this.z.a(members);
                    return true;
                } catch (RuntimeException e2) {
                    Log.e(a, "Video isolation not ready: " + str + " not opened in slot " + i2, e2);
                    j();
                }
            }
        }
        return false;
    }

    private static List<i> a(Context context, Set<String> set, Map<String, ResolveInfo> map) {
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
                linkedHashMap2.put(str, new i(str, resolveInfo.activityInfo.name, String.valueOf(resolveInfo.loadLabel(packageManager)), linkedHashMap.containsKey(str) ? ((Integer) linkedHashMap.get(str)).intValue() : -1, arrayList.indexOf(str), a(resolveInfo.activityInfo)));
            }
        }
        ArrayList arrayList2 = new ArrayList(linkedHashMap2.values());
        final Collator collator = Collator.getInstance(Locale.CHINA);
        arrayList2.sort(new Comparator() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda21
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int a2;
                a2 = n.a(collator, (i) obj, (i) obj2);
                return a2;
            }
        });
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(Collator collator, i iVar, i iVar2) {
        int i2 = iVar.e;
        if (i2 >= 0 || iVar2.e >= 0) {
            if (i2 < 0) {
                i2 = Integer.MAX_VALUE;
            }
            int i3 = iVar2.e;
            int compare = Integer.compare(i2, i3 >= 0 ? i3 : Integer.MAX_VALUE);
            if (compare != 0) {
                return compare;
            }
        }
        return collator.compare(iVar.c, iVar2.c);
    }

    private static boolean a(ActivityInfo activityInfo) {
        try {
            return ActivityInfo.class.getField("resizeMode").getInt(activityInfo) == 0;
        } catch (ReflectiveOperationException | RuntimeException e2) {
            return false;
        }
    }

    private boolean a(View view, final int i2, final int i3, int i4, int i5, Rect rect, float f2) {
        d();
        WorkspaceHost workspaceHost = this.y;
        if (workspaceHost == null) {
            return false;
        }
        View view2 = new View(this.u.i4);
        view2.setOnTouchListener(new View.OnTouchListener() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda61
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view3, MotionEvent motionEvent) {
                boolean a2;
                a2 = dev.duo.workspaceprobe.n.this.a(view3, motionEvent);
                return a2;
            }
        });
        try {
            dev.duo.workspaceprobe.b bVar = this.u;
            Objects.requireNonNull(bVar);
            this.R = bVar.new R("workbench_popup_outside", view2, 0.0f, 0, 2364, 1672, 0, 0.0f, 8);
            dev.duo.workspaceprobe.b bVar2 = this.u;
            Objects.requireNonNull(bVar2);
            this.Q = bVar2.new R("workbench_popup", view, 0.0f, 0, i4, i5, 0, 0.0f, 8);
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                transaction.reparent(this.R.b, workspaceHost.root()).setLayer(this.R.b, h).setVisibility(this.R.b, true);
                transaction.reparent(this.Q.b, workspaceHost.root()).setLayer(this.Q.b, 2001).setPosition(this.Q.b, i2, i3).setCrop(this.Q.b, new Rect(0, 0, i4, i5)).setVisibility(this.Q.b, true).setAlpha(this.Q.b, 0.0f).setScale(this.Q.b, 0.08f, 0.08f).setPosition(this.Q.b, rect.centerX(), rect.centerY());
                try {
                    SurfaceControl.Transaction.class.getMethod("setCornerRadius", SurfaceControl.class, Float.TYPE).invoke(transaction, this.Q.b, Float.valueOf(f2));
                    SurfaceControl.Transaction.class.getMethod("setBackgroundBlurRadius", SurfaceControl.class, Integer.TYPE).invoke(transaction, this.Q.b, 60);
                } catch (ReflectiveOperationException e2) {
                    Log.w(a, "Popup blur unavailable", e2);
                }
                transaction.apply();
                transaction.close();
                final dev.duo.workspaceprobe.b.R r2 = this.Q;
                final float centerX = rect.centerX();
                final float centerY = rect.centerY();
                ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                this.n0 = ofFloat;
                ofFloat.setDuration(220L);
                this.n0.setInterpolator(new DecelerateInterpolator(1.5f));
                this.n0.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda62
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        dev.duo.workspaceprobe.n.this.a(r2, centerX, i2, centerY, i3, valueAnimator);
                    }
                });
                this.n0.start();
                return true;
            } finally {
            }
        } catch (RuntimeException e3) {
            Log.e(a, "Popup unavailable", e3);
            d();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 1) {
            d();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.workspaceprobe.b.R r2, float f2, int i2, float f3, int i3, ValueAnimator valueAnimator) {
        if (r2 != this.Q) {
            return;
        }
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float f4 = (0.92f * floatValue) + 0.08f;
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            transaction.setPosition(r2.b, f2 + ((i2 - f2) * floatValue), f3 + ((i3 - f3) * floatValue)).setScale(r2.b, f4, f4).setAlpha(r2.b, floatValue).apply();
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

    private static void a(String str, Runnable runnable) {
        try {
            runnable.run();
        } catch (RuntimeException e2) {
            Log.e(a, "close step failed: " + str, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(long j2, int i2, Object obj, WorkspaceSession workspaceSession) {
        if (workspaceSession.epoch == j2) {
            workspaceSession.pipStarting(i2, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(long j2, int i2, Object obj, boolean z, WorkspaceSession workspaceSession) {
        if (workspaceSession.epoch == j2) {
            workspaceSession.pipFinished(i2, obj, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(WorkspaceProtocol.SourceEvent sourceEvent, WorkspaceSession workspaceSession) {
        WorkspaceProtocol.TaskRef taskRef;
        if (workspaceSession.epoch != sourceEvent.epoch) {
            return;
        }
        int i2 = sourceEvent.event;
        if (i2 == 3) {
            workspaceSession.interruptionFinished(sourceEvent.returnedToMember);
            return;
        }
        if (i2 == 4) {
            workspaceSession.callState(sourceEvent.startResult, sourceEvent.returnedToMember);
            return;
        }
        if (i2 != 1 || (taskRef = sourceEvent.target) == null) {
            return;
        }
        int i3 = sourceEvent.kind;
        if (i3 == 2) {
            workspaceSession.interruptionStarted(taskRef.taskId);
            return;
        }
        if (i3 == 4) {
            WorkspaceProtocol.TaskRef taskRef2 = sourceEvent.foreground;
            if (taskRef2 != null) {
                workspaceSession.mainLeftToHome(taskRef2.taskId, taskRef2.taskToken, taskRef.taskId);
                return;
            }
            return;
        }
        if (i3 == 3) {
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
    public /* synthetic */ void a(String[] strArr, WorkspaceSession.Done done) {
        try {
            if (this.u.i4 != null) {
                if (this.z == null) {
                    dev.duo.workspaceprobe.b bVar = this.u;
                    this.z = new o(bVar.i4, bVar.A1);
                }
                this.z.a(strArr);
                done.done(true, "isolated");
                return;
            }
            throw new IllegalStateException("no context");
        } catch (RuntimeException e2) {
            Log.e(a, "Video isolation failed: closing the workbench", e2);
            done.done(false, String.valueOf(e2));
        }
    }

    private static String[] a(String[] strArr) {
        String[] strArr2 = new String[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            String str = strArr[i2];
            strArr2[i2] = str == null ? null : str.substring(str.indexOf(58) + 1);
        }
        return strArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, WorkspaceSession workspaceSession) {
        if (workspaceSession.adopt(i2)) {
            return;
        }
        this.w.adoptRefused(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, WorkspaceSession workspaceSession) {
        if (workspaceSession.callActive()) {
            workspaceSession.callScreen();
        } else {
            workspaceSession.leave(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(IBinder iBinder, final int i2) {
        if (this.U != iBinder) {
            this.w.revealTask(i2);
            return;
        }
        this.U = null;
        final int i3 = this.V;
        a(new Consumer() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda70
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                dev.duo.workspaceprobe.n.this.a(i3, i2, (WorkspaceSession) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, int i3, WorkspaceSession workspaceSession) {
        if (workspaceSession.add(i2, i3)) {
            return;
        }
        Log.w(a, "Launched task " + i3 + " not taken: " + workspaceSession.log());
        this.w.revealTask(i3);
        this.u.A1.post(new n$$ExternalSyntheticLambda44(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(WorkspaceSession workspaceSession, WorkspaceSession.State state, boolean z, String str, TaskBinding[] taskBindingArr, String[] strArr) {
        final WorkspaceHost workspaceHost = this.y;
        if (workspaceHost == null || this.x != workspaceSession) {
            return;
        }
        this.v.a(state, z, workspaceSession.epoch);
        boolean z2 = false;
        if (state == WorkspaceSession.State.PAUSED) {
            if (this.e0) {
                return;
            }
            this.e0 = true;
            d();
            workspaceHost.setShown(false);
            return;
        }
        if (this.e0 && state == WorkspaceSession.State.ACTIVE) {
            this.e0 = false;
            workspaceHost.setShown(true);
        }
        if (z && !this.f0 && !this.e0 && state != WorkspaceSession.State.CLOSED) {
            workspaceHost.setShown(false);
        }
        WorkspaceSession.State state2 = WorkspaceSession.State.CLOSED;
        if (state == state2 || state == WorkspaceSession.State.RETURN_FAILED) {
            this.e0 = false;
            this.f0 = false;
        }
        if (state == state2) {
            if (this.L != null) {
                if (!this.O) {
                    b();
                } else if (this.c0) {
                    this.d0 = true;
                } else {
                    h();
                }
            }
            this.l0 = -1;
            this.m0 = null;
            a("popup", new n$$ExternalSyntheticLambda17(this));
            final IBinder iBinder = this.U;
            this.U = null;
            if (iBinder != null) {
                a("launch", new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda37
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.n.this.a(iBinder);
                    }
                });
            }
            final o oVar = this.z;
            this.z = null;
            if (oVar != null) {
                a("audio", new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda38
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.o.this.a();
                    }
                });
            }
            a("host", new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda39
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHost.this.close();
                }
            });
            this.y = null;
            this.x = null;
            Log.i(a, "Closed: " + str);
            return;
        }
        if (state == WorkspaceSession.State.RETURN_FAILED) {
            this.l0 = -1;
            this.m0 = null;
            a("retain tasks only", new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda40
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHost.this.retainTasksOnly();
                }
            });
            if (this.L != null) {
                a("stage", new n$$ExternalSyntheticLambda9(this));
            }
            a("popup", new n$$ExternalSyntheticLambda17(this));
            final o oVar2 = this.z;
            this.z = null;
            if (oVar2 != null) {
                a("audio", new Runnable() { // from class: dev.duo.workspaceprobe.n$$ExternalSyntheticLambda38
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.workspaceprobe.o.this.a();
                    }
                });
            }
            Log.e(a, "RETURN_FAILED " + str);
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
        if (!this.P && this.L != null) {
            this.P = true;
            i();
        }
        a((Collection<String>) Arrays.asList(a(strArr)));
        int i2 = this.T;
        if (i2 >= 0 && taskBindingArr[i2] == null) {
            this.T = -1;
            plus(i2);
        }
        int i3 = this.l0;
        if (i3 < 0 || taskBindingArr[i3] != null) {
            return;
        }
        i iVar = this.m0;
        this.l0 = -1;
        this.m0 = null;
        if (iVar != null) {
            c(i3, iVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(IBinder iBinder) {
        this.w.cancelLaunch(iBinder);
    }
}
