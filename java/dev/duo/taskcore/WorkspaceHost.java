package dev.duo.taskcore;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import android.view.Choreographer;
import android.view.MotionEvent;
import android.view.SurfaceControl;
import android.view.SurfaceControlViewHost;
import android.view.SurfaceView;
import android.view.View;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.widget.Button;
import android.widget.FrameLayout;
import dev.duo.taskcore.Frames;
import dev.duo.taskcore.WorkspaceHost;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class WorkspaceHost {
    private static final int BACKDROP = 0;
    private static final long BACK_MS = 180;
    private static final float BAR_GO = 0.35f;
    private static final int BAR_H = 220;
    private static final int BAR_SLOP = 30;
    private static final int BAR_W = 6;
    private static final float CORNER = 32.0f;
    private static final float EASE = 0.35f;
    private static final long HOLD_MS = 300;
    private static final float LIFT = 1.05f;
    private static final int LIFTED = 30;
    private static final long MOVE_MS = 300;
    private static final int OVERLAY = 1000;
    private static final int ROOT_LAYER = 16777216;
    private static Handler anim;
    private Actions actions;
    private Panel backdrop;
    private volatile boolean barActive;
    private volatile float barDx;
    private volatile boolean blocked;
    private final Context context;
    private volatile float dragDy;
    private final Geometry geometry;
    private volatile boolean interactive;
    private boolean leaving;
    private volatile TaskBinding mainBinding;
    private boolean night;
    private Panel overlay;
    private OverlayView overlayView;
    private Frames.Driver parked;
    private int placing;
    private View plate;
    private volatile boolean released;
    private final SurfaceControl root;
    private boolean systemAnimation;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final Map<TaskBinding, Item> items = Collections.synchronizedMap(new HashMap());
    private TaskBinding[] slotView = new TaskBinding[4];
    private final Frames frames = new Frames(new Frames.Scheduler() { // from class: dev.duo.taskcore.WorkspaceHost.2
        @Override // dev.duo.taskcore.Frames.Scheduler
        public void post(final Frames.Driver driver) {
            if (driver.handle == null) {
                Objects.requireNonNull(driver);
                driver.handle = new Choreographer.FrameCallback() { // from class: dev.duo.taskcore.WorkspaceHost$2$$ExternalSyntheticLambda0
                    @Override // android.view.Choreographer.FrameCallback
                    public final void doFrame(long j) {
                        Frames.Driver.this.frame(j);
                    }
                };
            }
            Choreographer.getInstance().postFrameCallback((Choreographer.FrameCallback) driver.handle);
        }

        @Override // dev.duo.taskcore.Frames.Scheduler
        public void remove(Frames.Driver driver) {
            if (driver.handle != null) {
                Choreographer.getInstance().removeFrameCallback((Choreographer.FrameCallback) driver.handle);
            }
        }
    });
    private volatile int dragFrom = -1;
    private volatile int dragTo = -1;

    public interface Actions {
        void exit();

        void menu(int i);

        void plus(int i);

        void reorder(int i, int i2);

        void swap(int i);

        default void barDrag(float f) {
        }

        default void barCancel() {
        }
    }

    public synchronized void setShown(boolean z) {
        if (this.released) {
            return;
        }
        if (this.systemAnimation) {
            return;
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            if (this.root.isValid()) {
                transaction.setVisibility(this.root, z).apply();
            }
            transaction.close();
            if (this.overlayView != null) {
                if (!z) {
                    this.overlayView.dropFocus();
                }
                this.overlayView.showBar(z && !this.leaving);
            }
        } finally {
        }
    }

    synchronized void beginSystemAnimation() {
        this.systemAnimation = true;
    }

    synchronized void abandonSystemAnimation() {
        this.systemAnimation = false;
    }

    synchronized void finishSystemAnimation(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, Boolean bool) {
        if (!this.released && this.root.isValid()) {
            transaction.reparent(this.root, surfaceControl).setPosition(this.root, 0.0f, 0.0f).setScale(this.root, 1.0f, 1.0f).setAlpha(this.root, 1.0f).setLayer(this.root, ROOT_LAYER).setCrop(this.root, null);
            if (bool != null) {
                transaction.setVisibility(this.root, bool.booleanValue());
            }
        }
        this.systemAnimation = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class Panel {
        final SurfaceControlViewHost host;
        final SurfaceControlViewHost.SurfacePackage pkg;
        private boolean released;
        final SurfaceControl surface;

        Panel(SurfaceControlViewHost surfaceControlViewHost) {
            this.host = surfaceControlViewHost;
            this.pkg = surfaceControlViewHost.getSurfacePackage();
            this.surface = this.pkg.getSurfaceControl();
        }

        void release() {
            if (this.released) {
                return;
            }
            this.released = true;
            try {
                this.host.release();
            } finally {
                this.pkg.release();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class Item {
        final Panel host;
        final SurfaceControl motion;
        final Rect shown = new Rect();
        final Rect rest = new Rect();
        int layer = 10;

        Item(Panel panel, SurfaceControl surfaceControl) {
            this.host = panel;
            this.motion = surfaceControl;
        }
    }

    WorkspaceHost(Context context, SurfaceControl surfaceControl, Geometry geometry) {
        this.context = context;
        this.geometry = geometry;
        this.root = new SurfaceControl.Builder().setName("TaskCore root").setParent(surfaceControl).setHidden(true).build();
    }

    static synchronized Handler animHandler() {
        Handler handler;
        synchronized (WorkspaceHost.class) {
            if (anim == null) {
                HandlerThread handlerThread = new HandlerThread("TaskCoreAnim", -8);
                handlerThread.start();
                anim = new Handler(handlerThread.getLooper());
            }
            handler = anim;
        }
        return handler;
    }

    public void setActions(Actions actions) {
        this.actions = actions;
    }

    public SurfaceControl root() {
        return this.root;
    }

    public void belowSystemPip(SurfaceControl surfaceControl) throws ReflectiveOperationException {
        if (this.released) {
            return;
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            if (surfaceControl == null) {
                transaction.setLayer(this.root, ROOT_LAYER);
            } else {
                SurfaceControl.Transaction.class.getMethod("setRelativeLayer", SurfaceControl.class, SurfaceControl.class, Integer.TYPE).invoke(transaction, this.root, surfaceControl, -1);
            }
            transaction.apply();
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

    public Geometry geometry() {
        return this.geometry;
    }

    private static boolean systemNight(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    public void open() {
        this.night = systemNight(this.context);
        Rect displayRect = displayRect(this.context);
        this.plate = new View(this.context) { // from class: dev.duo.taskcore.WorkspaceHost.1
            boolean downInMain;
            final Paint plus = new Paint(1);

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                if (WorkspaceHost.this.mainBinding == null && !WorkspaceHost.this.leaving) {
                    Rect rect = WorkspaceHost.this.geometry.logical;
                    this.plus.setColor(WorkspaceHost.this.night ? -8947849 : -6710887);
                    this.plus.setStrokeWidth(5.0f);
                    canvas.drawLine(rect.centerX() - 24, rect.centerY(), rect.centerX() + 24, rect.centerY(), this.plus);
                    canvas.drawLine(rect.centerX(), rect.centerY() - 24, rect.centerX(), rect.centerY() + 24, this.plus);
                }
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getActionMasked() == 0) {
                    this.downInMain = WorkspaceHost.this.mainBinding == null && WorkspaceHost.this.geometry.logical.contains((int) motionEvent.getX(), (int) motionEvent.getY());
                }
                if (motionEvent.getActionMasked() == 1 && this.downInMain && WorkspaceHost.this.mainBinding == null && WorkspaceHost.this.geometry.logical.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                    performClick();
                }
                if (motionEvent.getActionMasked() == 3) {
                    this.downInMain = false;
                }
                return true;
            }

            @Override // android.view.View
            public boolean performClick() {
                super.performClick();
                if (WorkspaceHost.this.mainBinding == null && WorkspaceHost.this.overlayView != null && WorkspaceHost.this.overlayView.open() && WorkspaceHost.this.actions != null) {
                    WorkspaceHost.this.actions.plus(-1);
                    return true;
                }
                return true;
            }
        };
        this.plate.setContentDescription("选择大窗应用");
        this.plate.setBackgroundColor(plateColor(this.night));
        this.backdrop = panel(this.plate, displayRect.width(), displayRect.height(), 8);
        this.overlayView = new OverlayView(this.context);
        this.overlayView.colors(this.night);
        this.overlay = panel(this.overlayView, this.geometry.logical.left, displayRect.height(), 8);
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            transaction.setLayer(this.root, ROOT_LAYER).setVisibility(this.root, true);
            transaction.reparent(this.backdrop.surface, this.root).setLayer(this.backdrop.surface, 0).setVisibility(this.backdrop.surface, true);
            transaction.reparent(this.overlay.surface, this.root).setLayer(this.overlay.surface, OVERLAY).setVisibility(this.overlay.surface, true);
            transaction.apply();
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

    private static int plateColor(boolean z) {
        return z ? -15724528 : -986894;
    }

    public void setNight(boolean z) {
        if (this.plate == null || z == this.night) {
            return;
        }
        this.night = z;
        this.plate.setBackgroundColor(plateColor(this.night));
        this.overlayView.colors(this.night);
        this.overlayView.invalidate();
    }

    private Panel panel(View view, int i, int i2, int i3) {
        return panel(view, i, i2, i3, true);
    }

    private Panel panel(View view, int i, int i2, int i3, boolean z) {
        SurfaceControlViewHost surfaceControlViewHost = new SurfaceControlViewHost(this.context, ((DisplayManager) this.context.getSystemService(DisplayManager.class)).getDisplay(0), null);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(i, i2, 2, i3, -3);
        if (!z) {
            try {
                Field field = WindowManager.LayoutParams.class.getField("inputFeatures");
                field.setInt(layoutParams, WindowManager.LayoutParams.class.getField("INPUT_FEATURE_NO_INPUT_CHANNEL").getInt(null) | field.getInt(layoutParams));
            } catch (ReflectiveOperationException e) {
                surfaceControlViewHost.release();
                throw new IllegalStateException("panel flags " + i3, e);
            }
        }
        SurfaceControlViewHost.class.getMethod("setView", View.class, WindowManager.LayoutParams.class).invoke(surfaceControlViewHost, view, layoutParams);
        return new Panel(surfaceControlViewHost);
    }

    static Rect displayRect(Context context) {
        Point point = new Point();
        ((DisplayManager) context.getSystemService(DisplayManager.class)).getDisplay(0).getRealSize(point);
        return new Rect(0, 0, point.x, point.y);
    }

    void addTask(TaskBinding taskBinding, View view) {
        final Rect rect = this.geometry.logical;
        FrameLayout frameLayout = new FrameLayout(this.context);
        if (view instanceof SurfaceView) {
            ((SurfaceView) view).setZOrderOnTop(true);
        }
        frameLayout.addView(view, new FrameLayout.LayoutParams(rect.width(), rect.height()));
        final Panel panel = panel(frameLayout, rect.width(), rect.height(), 24, false);
        final SurfaceControl build = new SurfaceControl.Builder().setName("TaskCore motion #" + taskBinding.origin.taskId).setParent(this.root).setHidden(false).build();
        final Item item = new Item(panel, build);
        taskBinding.host = panel;
        taskBinding.motionRoot = build;
        this.items.put(taskBinding, item);
        final Rect rect2 = new Rect(taskBinding.physical);
        animHandler().post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.m3328lambda$addTask$0$devduotaskcoreWorkspaceHost(panel, build, rect, item, rect2);
            }
        });
        refreshOverlay();
    }

    /* renamed from: lambda$addTask$0$dev-duo-taskcore-WorkspaceHost, reason: not valid java name */
    /* synthetic */ void m3328lambda$addTask$0$devduotaskcoreWorkspaceHost(Panel panel, SurfaceControl surfaceControl, Rect rect, Item item, Rect rect2) {
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            SurfaceControl surfaceControl2 = panel.surface;
            transaction.reparent(surfaceControl2, surfaceControl).setPosition(surfaceControl2, rect.left, rect.top).setVisibility(surfaceControl2, true);
            write(transaction, item, rect2, 1.0f, item.layer);
            transaction.apply();
            transaction.close();
            item.rest.set(rect2);
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void write(SurfaceControl.Transaction transaction, Item item, Rect rect, float f, int i) {
        Rect rect2;
        if (item.motion.isValid()) {
            if (f != 1.0f) {
                float f2 = f - 1.0f;
                int round = Math.round((rect.width() * f2) / 2.0f);
                int round2 = Math.round((rect.height() * f2) / 2.0f);
                rect2 = new Rect(rect.left - round, rect.top - round2, rect.right + round, rect.bottom + round2);
            } else {
                rect2 = rect;
            }
            float[] matrixFor = this.geometry.matrixFor(rect2);
            transaction.setScale(item.motion, matrixFor[0], matrixFor[0]).setPosition(item.motion, matrixFor[1], matrixFor[2]).setCrop(item.motion, this.geometry.logical).setLayer(item.motion, i);
            C0132Tx.corner(transaction, item.motion, CORNER / matrixFor[0]);
            item.shown.set(rect);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Item item(TaskBinding taskBinding) {
        if (taskBinding == null) {
            return null;
        }
        return this.items.get(taskBinding);
    }

    private void run(Frames.Driver driver) {
        this.frames.run(driver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float durationScale() {
        return ValueAnimator.getDurationScale();
    }

    private void tween(final Map<Item, Rect> map, final Map<Item, Integer> map2, long j, Runnable runnable) {
        float durationScale = durationScale();
        if (durationScale <= 0.0f || this.released) {
            run(null);
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                for (Map.Entry<Item, Rect> entry : map.entrySet()) {
                    write(transaction, entry.getKey(), entry.getValue(), 1.0f, map2 == null ? entry.getKey().layer : map2.get(entry.getKey()).intValue());
                }
                transaction.apply();
                transaction.close();
                if (runnable != null) {
                    runnable.run();
                }
            } finally {
            }
        } else {
            final float f = j * durationScale * 1000000.0f;
            final HashMap hashMap = new HashMap();
            for (Item item : map.keySet()) {
                hashMap.put(item, new Rect(item.shown));
            }
            final long[] jArr = {-1};
            final Rect rect = new Rect();
            Frames.Driver driver = new Frames.Driver() { // from class: dev.duo.taskcore.WorkspaceHost.3
                @Override // dev.duo.taskcore.Frames.Driver
                void frame(long j2) {
                    if (!WorkspaceHost.this.frames.current(this)) {
                        return;
                    }
                    if (jArr[0] < 0) {
                        jArr[0] = j2;
                    }
                    float min = Math.min(1.0f, (j2 - jArr[0]) / f);
                    float f2 = 1.0f - min;
                    float f3 = 1.0f - (f2 * f2);
                    SurfaceControl.Transaction transaction2 = new SurfaceControl.Transaction();
                    try {
                        for (Map.Entry entry2 : map.entrySet()) {
                            WorkspaceHost.this.write(transaction2, (Item) entry2.getKey(), Geometry.between((Rect) hashMap.get(entry2.getKey()), (Rect) entry2.getValue(), f3, rect), 1.0f, map2 == null ? ((Item) entry2.getKey()).layer : ((Integer) map2.get(entry2.getKey())).intValue());
                        }
                        transaction2.apply();
                        transaction2.close();
                        if (min >= 1.0f || WorkspaceHost.this.released) {
                            WorkspaceHost.this.frames.done(this);
                        } else {
                            WorkspaceHost.this.frames.next(this);
                        }
                    } finally {
                    }
                }
            };
            driver.end = runnable;
            run(driver);
        }
    }

    void place(TaskBinding taskBinding, TaskBinding[] taskBindingArr, final boolean z, final Runnable runnable) {
        final HashMap hashMap = new HashMap();
        final HashMap hashMap2 = new HashMap();
        Item item = item(taskBinding);
        this.mainBinding = taskBinding;
        if (item != null) {
            hashMap.put(item, new Rect(taskBinding.physical));
            hashMap2.put(item, 20);
        }
        for (int i = 0; i < taskBindingArr.length; i++) {
            Item item2 = item(taskBindingArr[i]);
            if (item2 != null) {
                hashMap.put(item2, new Rect(taskBindingArr[i].physical));
                hashMap2.put(item2, Integer.valueOf(i + 10));
            }
        }
        this.placing++;
        if (this.overlayView != null) {
            this.overlayView.abandon();
        }
        if (z && this.overlayView != null) {
            this.overlayView.showBar(false);
        }
        refreshOverlay();
        animHandler().post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.m3339lambda$place$3$devduotaskcoreWorkspaceHost(hashMap, hashMap2, runnable, z);
            }
        });
    }

    /* renamed from: lambda$place$3$dev-duo-taskcore-WorkspaceHost, reason: not valid java name */
    /* synthetic */ void m3339lambda$place$3$devduotaskcoreWorkspaceHost(Map map, Map map2, final Runnable runnable, boolean z) {
        WorkspaceHost workspaceHost;
        Map map3;
        Map map4;
        for (Map.Entry entry : map.entrySet()) {
            ((Item) entry.getKey()).rest.set((Rect) entry.getValue());
            ((Item) entry.getKey()).layer = ((Integer) map2.get(entry.getKey())).intValue();
        }
        Runnable runnable2 = new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.m3338lambda$place$2$devduotaskcoreWorkspaceHost(runnable);
            }
        };
        if (!z) {
            workspaceHost = this;
            map3 = map;
            map4 = map2;
        } else if (!map.isEmpty()) {
            tween(map, map2, 300L, runnable2);
            return;
        } else {
            workspaceHost = this;
            map3 = map;
            map4 = map2;
        }
        run(null);
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            for (Map.Entry entry2 : map3.entrySet()) {
                workspaceHost.write(transaction, (Item) entry2.getKey(), (Rect) entry2.getValue(), 1.0f, ((Integer) map4.get(entry2.getKey())).intValue());
                workspaceHost = this;
            }
            transaction.apply();
            transaction.close();
            runnable2.run();
        } finally {
        }
    }

    /* renamed from: lambda$place$2$dev-duo-taskcore-WorkspaceHost, reason: not valid java name */
    /* synthetic */ void m3338lambda$place$2$devduotaskcoreWorkspaceHost(final Runnable runnable) {
        this.main.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.m3337lambda$place$1$devduotaskcoreWorkspaceHost(runnable);
            }
        });
    }

    /* renamed from: lambda$place$1$dev-duo-taskcore-WorkspaceHost, reason: not valid java name */
    /* synthetic */ void m3337lambda$place$1$devduotaskcoreWorkspaceHost(Runnable runnable) {
        this.placing--;
        if (this.placing == 0 && this.overlayView != null && !this.leaving) {
            this.overlayView.showBar(true);
        }
        refreshOverlay();
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wakeFrames() {
        animHandler().post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.m3345lambda$wakeFrames$4$devduotaskcoreWorkspaceHost();
            }
        });
    }

    /* renamed from: lambda$wakeFrames$4$dev-duo-taskcore-WorkspaceHost, reason: not valid java name */
    /* synthetic */ void m3345lambda$wakeFrames$4$devduotaskcoreWorkspaceHost() {
        Frames.Driver driver = this.parked;
        this.parked = null;
        if (driver != null) {
            this.frames.next(driver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startDragFrames() {
        final TaskBinding[] taskBindingArr = (TaskBinding[]) this.slotView.clone();
        animHandler().post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.m3344lambda$startDragFrames$5$devduotaskcoreWorkspaceHost(taskBindingArr);
            }
        });
    }

    /* renamed from: lambda$startDragFrames$5$dev-duo-taskcore-WorkspaceHost, reason: not valid java name */
    /* synthetic */ void m3344lambda$startDragFrames$5$devduotaskcoreWorkspaceHost(final TaskBinding[] taskBindingArr) {
        run(new Frames.Driver() { // from class: dev.duo.taskcore.WorkspaceHost.4
            int lastFrom = -2;
            int lastTo = -2;
            float lastDy = Float.NaN;

            @Override // dev.duo.taskcore.Frames.Driver
            void frame(long j) {
                int i;
                if (WorkspaceHost.this.frames.current(this) && !WorkspaceHost.this.released) {
                    int i2 = WorkspaceHost.this.dragFrom;
                    int i3 = WorkspaceHost.this.dragTo;
                    float f = WorkspaceHost.this.dragDy;
                    if (i2 < 0) {
                        WorkspaceHost.this.frames.done(this);
                        return;
                    }
                    boolean z = i2 == this.lastFrom && i3 == this.lastTo && f == this.lastDy;
                    this.lastFrom = i2;
                    this.lastTo = i3;
                    this.lastDy = f;
                    SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                    boolean z2 = false;
                    int i4 = 0;
                    while (i4 < taskBindingArr.length) {
                        try {
                            Item item = WorkspaceHost.this.item(taskBindingArr[i4]);
                            if (item != null) {
                                if (i4 == i2) {
                                    Rect rect = new Rect(item.rest);
                                    rect.offset(0, Math.round(f));
                                    if (!z || !rect.equals(item.shown)) {
                                        WorkspaceHost.this.write(transaction, item, rect, WorkspaceHost.LIFT, 30);
                                        z2 = true;
                                    }
                                } else {
                                    if (i2 >= i3 || i4 <= i2 || i4 > i3) {
                                        i = (i2 <= i3 || i4 < i3 || i4 >= i2) ? i4 : i4 + 1;
                                    } else {
                                        i = i4 - 1;
                                    }
                                    Rect between = Geometry.between(item.shown, WorkspaceHost.this.geometry.slots[i], WorkspaceHost.durationScale() <= 0.0f ? 1.0f : 0.35f, new Rect());
                                    if (!z || !between.equals(item.shown)) {
                                        WorkspaceHost.this.write(transaction, item, between, 1.0f, item.layer);
                                        z2 = true;
                                    }
                                }
                            }
                            i4++;
                        } finally {
                        }
                    }
                    if (z2) {
                        transaction.apply();
                    }
                    transaction.close();
                    WorkspaceHost workspaceHost = WorkspaceHost.this;
                    if (z2) {
                        workspaceHost.frames.next(this);
                    } else {
                        workspaceHost.parked = this;
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startBarFrames() {
        final TaskBinding[] taskBindingArr = (TaskBinding[]) this.slotView.clone();
        animHandler().post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.m3343lambda$startBarFrames$6$devduotaskcoreWorkspaceHost(taskBindingArr);
            }
        });
    }

    /* renamed from: lambda$startBarFrames$6$dev-duo-taskcore-WorkspaceHost, reason: not valid java name */
    /* synthetic */ void m3343lambda$startBarFrames$6$devduotaskcoreWorkspaceHost(final TaskBinding[] taskBindingArr) {
        run(new Frames.Driver() { // from class: dev.duo.taskcore.WorkspaceHost.5
            float lastDx = Float.NaN;

            @Override // dev.duo.taskcore.Frames.Driver
            void frame(long j) {
                if (WorkspaceHost.this.frames.current(this) && !WorkspaceHost.this.released) {
                    if (!WorkspaceHost.this.barActive) {
                        WorkspaceHost.this.frames.done(this);
                        return;
                    }
                    float f = WorkspaceHost.this.barDx;
                    if (f == this.lastDx) {
                        WorkspaceHost.this.parked = this;
                        return;
                    }
                    this.lastDx = f;
                    SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                    try {
                        for (TaskBinding taskBinding : taskBindingArr) {
                            Item item = WorkspaceHost.this.item(taskBinding);
                            if (item != null) {
                                Rect rect = new Rect(item.rest);
                                rect.offset(-Math.round(f), 0);
                                WorkspaceHost.this.write(transaction, item, rect, 1.0f, item.layer);
                            }
                        }
                        Item item2 = WorkspaceHost.this.item(WorkspaceHost.this.mainBinding);
                        if (item2 != null) {
                            WorkspaceHost.this.write(transaction, item2, WorkspaceHost.this.geometry.mainFollowing(f), 1.0f, item2.layer);
                        }
                        transaction.apply();
                        transaction.close();
                        WorkspaceHost.this.frames.next(this);
                    } finally {
                    }
                }
            }
        });
    }

    public void setInteractive(boolean z) {
        if (this.interactive == z) {
            return;
        }
        this.interactive = z;
        if (!z && this.overlayView != null) {
            this.overlayView.abandon();
        }
        refreshOverlay();
    }

    public void setBlocked(boolean z) {
        if (this.blocked == z) {
            return;
        }
        this.blocked = z;
        if (z && this.overlayView != null) {
            this.overlayView.abandon();
        }
        refreshOverlay();
    }

    public void resettle() {
        settleBack();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void settleBack() {
        final TaskBinding[] taskBindingArr = (TaskBinding[]) this.slotView.clone();
        final TaskBinding taskBinding = this.mainBinding;
        animHandler().post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.m3342lambda$settleBack$7$devduotaskcoreWorkspaceHost(taskBindingArr, taskBinding);
            }
        });
    }

    /* renamed from: lambda$settleBack$7$dev-duo-taskcore-WorkspaceHost, reason: not valid java name */
    /* synthetic */ void m3342lambda$settleBack$7$devduotaskcoreWorkspaceHost(TaskBinding[] taskBindingArr, TaskBinding taskBinding) {
        HashMap hashMap = new HashMap();
        for (TaskBinding taskBinding2 : taskBindingArr) {
            Item item = item(taskBinding2);
            if (item != null) {
                hashMap.put(item, new Rect(item.rest));
            }
        }
        Item item2 = item(taskBinding);
        if (item2 != null) {
            hashMap.put(item2, new Rect(item2.rest));
        }
        tween(hashMap, null, BACK_MS, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendCardsAway() {
        this.leaving = true;
        if (this.overlayView != null) {
            this.overlayView.showBar(false);
        }
        final TaskBinding[] taskBindingArr = (TaskBinding[]) this.slotView.clone();
        animHandler().post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.m3341lambda$sendCardsAway$8$devduotaskcoreWorkspaceHost(taskBindingArr);
            }
        });
    }

    /* renamed from: lambda$sendCardsAway$8$dev-duo-taskcore-WorkspaceHost, reason: not valid java name */
    /* synthetic */ void m3341lambda$sendCardsAway$8$devduotaskcoreWorkspaceHost(TaskBinding[] taskBindingArr) {
        HashMap hashMap = new HashMap();
        for (TaskBinding taskBinding : taskBindingArr) {
            Item item = item(taskBinding);
            if (item != null) {
                Rect rect = new Rect(item.rest);
                rect.offset(-(rect.right + 40), 0);
                hashMap.put(item, rect);
            }
        }
        tween(hashMap, null, BACK_MS, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: removeTask, reason: merged with bridge method [inline-methods] */
    public void m3330lambda$close$11$devduotaskcoreWorkspaceHost(TaskBinding taskBinding) {
        final Item remove = this.items.remove(taskBinding);
        if (remove == null) {
            return;
        }
        animHandler().post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.m3340lambda$removeTask$9$devduotaskcoreWorkspaceHost(remove);
            }
        });
        refreshOverlay();
    }

    /* renamed from: lambda$removeTask$9$dev-duo-taskcore-WorkspaceHost, reason: not valid java name */
    /* synthetic */ void m3340lambda$removeTask$9$devduotaskcoreWorkspaceHost(Item item) {
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            if (item.motion.isValid()) {
                transaction.reparent(item.motion, null).apply();
            }
            transaction.close();
            item.motion.release();
            Handler handler = this.main;
            final Panel panel = item.host;
            Objects.requireNonNull(panel);
            handler.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHost.Panel.this.release();
                }
            });
        } catch (Throwable th) {
            try {
                transaction.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public void close() {
        this.released = true;
        step("drop focus", new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.m3329lambda$close$10$devduotaskcoreWorkspaceHost();
            }
        });
        Iterator it = new ArrayList(this.items.keySet()).iterator();
        while (it.hasNext()) {
            final TaskBinding taskBinding = (TaskBinding) it.next();
            step("remove " + taskBinding, new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHost.this.m3330lambda$close$11$devduotaskcoreWorkspaceHost(taskBinding);
                }
            });
        }
        animHandler().post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.m3336lambda$close$17$devduotaskcoreWorkspaceHost();
            }
        });
    }

    /* renamed from: lambda$close$10$dev-duo-taskcore-WorkspaceHost, reason: not valid java name */
    /* synthetic */ void m3329lambda$close$10$devduotaskcoreWorkspaceHost() {
        if (this.overlayView != null) {
            this.overlayView.dropFocus();
        }
    }

    /* renamed from: lambda$close$12$dev-duo-taskcore-WorkspaceHost, reason: not valid java name */
    /* synthetic */ void m3331lambda$close$12$devduotaskcoreWorkspaceHost() {
        run(null);
    }

    /* renamed from: lambda$close$17$dev-duo-taskcore-WorkspaceHost, reason: not valid java name */
    /* synthetic */ void m3336lambda$close$17$devduotaskcoreWorkspaceHost() {
        step("stop animation", new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.m3331lambda$close$12$devduotaskcoreWorkspaceHost();
            }
        });
        this.main.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.m3335lambda$close$16$devduotaskcoreWorkspaceHost();
            }
        });
    }

    /* renamed from: lambda$close$16$dev-duo-taskcore-WorkspaceHost, reason: not valid java name */
    /* synthetic */ void m3335lambda$close$16$devduotaskcoreWorkspaceHost() {
        step("detach root", new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.m3332lambda$close$13$devduotaskcoreWorkspaceHost();
            }
        });
        final SurfaceControl surfaceControl = this.root;
        Objects.requireNonNull(surfaceControl);
        step("release root", new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                surfaceControl.release();
            }
        });
        step("release backdrop", new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.m3333lambda$close$14$devduotaskcoreWorkspaceHost();
            }
        });
        step("release overlay", new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceHost.this.m3334lambda$close$15$devduotaskcoreWorkspaceHost();
            }
        });
    }

    /* renamed from: lambda$close$13$dev-duo-taskcore-WorkspaceHost, reason: not valid java name */
    /* synthetic */ void m3332lambda$close$13$devduotaskcoreWorkspaceHost() {
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            if (this.root.isValid()) {
                transaction.reparent(this.root, null).apply();
            }
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

    /* renamed from: lambda$close$14$dev-duo-taskcore-WorkspaceHost, reason: not valid java name */
    /* synthetic */ void m3333lambda$close$14$devduotaskcoreWorkspaceHost() {
        if (this.backdrop != null) {
            this.backdrop.release();
        }
    }

    /* renamed from: lambda$close$15$dev-duo-taskcore-WorkspaceHost, reason: not valid java name */
    /* synthetic */ void m3334lambda$close$15$devduotaskcoreWorkspaceHost() {
        if (this.overlay != null) {
            this.overlay.release();
        }
    }

    private static void step(String str, Runnable runnable) {
        try {
            runnable.run();
        } catch (RuntimeException e) {
            Log.e("DuoWorkbench", "host close step failed: " + str, e);
        }
    }

    public void retainTasksOnly() {
        if (this.overlayView != null) {
            this.overlayView.dropFocus();
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        try {
            if (this.backdrop != null && this.backdrop.surface.isValid()) {
                transaction.setVisibility(this.backdrop.surface, false);
            }
            if (this.overlay != null && this.overlay.surface.isValid()) {
                transaction.setVisibility(this.overlay.surface, false);
            }
            transaction.apply();
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

    public void showMain(TaskBinding taskBinding) {
        this.mainBinding = taskBinding;
        if (this.plate != null) {
            this.plate.setImportantForAccessibility(taskBinding == null ? 1 : 2);
            this.plate.invalidate();
        }
    }

    public void showSlots(TaskBinding[] taskBindingArr) {
        TaskBinding[] taskBindingArr2 = this.slotView;
        this.slotView = (TaskBinding[]) taskBindingArr.clone();
        if (this.overlayView != null) {
            this.overlayView.slotsChanged(taskBindingArr2);
        }
        refreshOverlay();
    }

    private void refreshOverlay() {
        if (this.overlayView == null) {
            return;
        }
        this.overlayView.invalidate();
        if (!this.overlayView.open()) {
            this.overlayView.dropFocus();
        }
        this.overlayView.sendAccessibilityEvent(2048);
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class OverlayView extends View {
        private static final int ACTION_DOWN_ID = 2131427330;
        private static final int ACTION_UP_ID = 2131427329;
        private static final int BAR_NODE = 4;
        private final AccessibilityManager a11y;
        private final Paint bar;
        private ValueAnimator barAnim;
        private float barShown;
        private int downSlot;
        private float downX;
        private float downY;
        private boolean held;
        private final Runnable hold;
        private final Map<String, CharSequence> labels;
        private boolean moved;
        private final AccessibilityNodeProvider nodes;
        private final VirtualFocus state;
        private final Paint stroke;

        void showBar(boolean z) {
            float f = z ? 1.0f : 0.0f;
            if (this.barAnim != null) {
                this.barAnim.cancel();
                this.barAnim = null;
            }
            if (this.barShown == f) {
                return;
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.barShown, f);
            ofFloat.setDuration(z ? 160L : 100L);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.taskcore.WorkspaceHost$OverlayView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    WorkspaceHost.OverlayView.this.m3347lambda$showBar$0$devduotaskcoreWorkspaceHost$OverlayView(valueAnimator);
                }
            });
            this.barAnim = ofFloat;
            ofFloat.start();
        }

        /* renamed from: lambda$showBar$0$dev-duo-taskcore-WorkspaceHost$OverlayView, reason: not valid java name */
        /* synthetic */ void m3347lambda$showBar$0$devduotaskcoreWorkspaceHost$OverlayView(ValueAnimator valueAnimator) {
            this.barShown = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        /* renamed from: lambda$new$1$dev-duo-taskcore-WorkspaceHost$OverlayView, reason: not valid java name */
        /* synthetic */ void m3346lambda$new$1$devduotaskcoreWorkspaceHost$OverlayView() {
            if (this.downSlot >= 0 && WorkspaceHost.this.slotView[this.downSlot] != null) {
                this.held = true;
                performHapticFeedback(0);
                WorkspaceHost.this.dragFrom = WorkspaceHost.this.dragTo = this.downSlot;
                WorkspaceHost.this.dragDy = 0.0f;
                WorkspaceHost.this.startDragFrames();
            }
        }

        OverlayView(Context context) {
            super(context);
            this.stroke = new Paint(1);
            this.bar = new Paint(1);
            this.barShown = 1.0f;
            this.state = new VirtualFocus();
            this.downSlot = -2;
            this.hold = new Runnable() { // from class: dev.duo.taskcore.WorkspaceHost$OverlayView$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceHost.OverlayView.this.m3346lambda$new$1$devduotaskcoreWorkspaceHost$OverlayView();
                }
            };
            this.labels = new HashMap();
            this.nodes = new AccessibilityNodeProvider() { // from class: dev.duo.taskcore.WorkspaceHost.OverlayView.1
                @Override // android.view.accessibility.AccessibilityNodeProvider
                public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
                    Rect rect;
                    if (i == -1) {
                        AccessibilityNodeInfo accessibilityNodeInfo = new AccessibilityNodeInfo(OverlayView.this);
                        OverlayView.this.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                        accessibilityNodeInfo.setContentDescription("工作台副窗列");
                        for (int i2 = 0; i2 <= 4; i2++) {
                            accessibilityNodeInfo.addChild(OverlayView.this, i2);
                        }
                        return accessibilityNodeInfo;
                    }
                    if (i < 0 || i > 4) {
                        return null;
                    }
                    AccessibilityNodeInfo accessibilityNodeInfo2 = new AccessibilityNodeInfo(OverlayView.this, i);
                    accessibilityNodeInfo2.setParent(OverlayView.this);
                    accessibilityNodeInfo2.setPackageName(WorkspaceHost.this.context.getPackageName());
                    accessibilityNodeInfo2.setClassName(Button.class.getName());
                    OverlayView overlayView = OverlayView.this;
                    if (i != 4) {
                        rect = WorkspaceHost.this.geometry.slots[i];
                    } else {
                        rect = overlayView.barRect();
                    }
                    int[] iArr = new int[2];
                    OverlayView.this.getLocationOnScreen(iArr);
                    Rect rect2 = new Rect(rect);
                    rect2.offset(iArr[0], iArr[1]);
                    accessibilityNodeInfo2.setBoundsInScreen(rect2);
                    accessibilityNodeInfo2.setVisibleToUser(true);
                    boolean open = OverlayView.this.open();
                    accessibilityNodeInfo2.setEnabled(open);
                    accessibilityNodeInfo2.setClickable(true);
                    accessibilityNodeInfo2.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
                    boolean z = OverlayView.this.state.focused == i;
                    accessibilityNodeInfo2.setAccessibilityFocused(z);
                    if (z) {
                        accessibilityNodeInfo2.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                    } else if (open) {
                        accessibilityNodeInfo2.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_ACCESSIBILITY_FOCUS);
                    }
                    accessibilityNodeInfo2.setContentDescription(OverlayView.this.describe(i));
                    if (i != 4 && WorkspaceHost.this.slotView[i] != null) {
                        accessibilityNodeInfo2.setLongClickable(true);
                        accessibilityNodeInfo2.addAction(new AccessibilityNodeInfo.AccessibilityAction(32, "管理（更换/移除）"));
                        if (i > 0) {
                            accessibilityNodeInfo2.addAction(new AccessibilityNodeInfo.AccessibilityAction(OverlayView.ACTION_UP_ID, "上移"));
                        }
                        if (i < 3) {
                            accessibilityNodeInfo2.addAction(new AccessibilityNodeInfo.AccessibilityAction(OverlayView.ACTION_DOWN_ID, "下移"));
                        }
                    }
                    return accessibilityNodeInfo2;
                }

                @Override // android.view.accessibility.AccessibilityNodeProvider
                public boolean performAction(int i, int i2, Bundle bundle) {
                    if (i == -1) {
                        return OverlayView.this.performAccessibilityAction(i2, bundle);
                    }
                    if (i < 0 || i > 4) {
                        return false;
                    }
                    if (i2 != 128) {
                        if (WorkspaceHost.this.actions == null || !OverlayView.this.open()) {
                            return false;
                        }
                        if (i2 == 64) {
                            int[] focus = OverlayView.this.state.focus(i);
                            if (focus == null) {
                                return false;
                            }
                            OverlayView.this.invalidate();
                            OverlayView.this.send(focus[0], 65536);
                            OverlayView.this.send(focus[1], 32768);
                            return true;
                        }
                        if (i != 4) {
                            TaskBinding taskBinding = WorkspaceHost.this.slotView[i];
                            if (i2 == 16) {
                                Actions actions = WorkspaceHost.this.actions;
                                if (taskBinding != null) {
                                    actions.swap(i);
                                } else {
                                    actions.plus(i);
                                }
                                return true;
                            }
                            if (taskBinding == null) {
                                return false;
                            }
                            if (i2 == 32) {
                                WorkspaceHost.this.actions.menu(i);
                                return true;
                            }
                            if (i2 == OverlayView.ACTION_UP_ID && i > 0) {
                                WorkspaceHost.this.actions.reorder(i, i - 1);
                                return true;
                            }
                            if (i2 == OverlayView.ACTION_DOWN_ID && i < 3) {
                                WorkspaceHost.this.actions.reorder(i, i + 1);
                                return true;
                            }
                            return false;
                        }
                        if (i2 == 16) {
                            WorkspaceHost.this.actions.exit();
                            return true;
                        }
                        return false;
                    }
                    if (!OverlayView.this.state.clear(i)) {
                        return false;
                    }
                    OverlayView.this.invalidate();
                    OverlayView.this.send(i, 65536);
                    return true;
                }

                @Override // android.view.accessibility.AccessibilityNodeProvider
                public AccessibilityNodeInfo findFocus(int i) {
                    if (i == 2 && OverlayView.this.state.focused != Integer.MIN_VALUE) {
                        return createAccessibilityNodeInfo(OverlayView.this.state.focused);
                    }
                    return null;
                }
            };
            this.stroke.setStyle(Paint.Style.STROKE);
            this.stroke.setStrokeWidth(3.0f);
            setImportantForAccessibility(1);
            this.a11y = (AccessibilityManager) context.getSystemService(AccessibilityManager.class);
        }

        private CharSequence label(TaskBinding taskBinding) {
            String str = taskBinding.origin.packageName;
            CharSequence charSequence = this.labels.get(str);
            if (charSequence == null) {
                try {
                    charSequence = WorkspaceHost.this.context.getPackageManager().getApplicationLabel(WorkspaceHost.this.context.getPackageManager().getApplicationInfo(str, 0));
                } catch (PackageManager.NameNotFoundException e) {
                    charSequence = str;
                }
                this.labels.put(str, charSequence);
            }
            return charSequence;
        }

        boolean open() {
            return Frames.acceptsGesture(WorkspaceHost.this.blocked, WorkspaceHost.this.interactive, WorkspaceHost.this.placing);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public CharSequence describe(int i) {
            return i == 4 ? "退出工作台" : WorkspaceHost.this.slotView[i] == null ? "空位 " + (i + 1) + "，添加应用" : "副窗 " + (i + 1) + "：" + ((Object) label(WorkspaceHost.this.slotView[i])) + "，点按换到主区";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void send(int i, int i2) {
            if (i == Integer.MIN_VALUE || !this.a11y.isEnabled() || getParent() == null) {
                return;
            }
            AccessibilityEvent accessibilityEvent = new AccessibilityEvent(i2);
            accessibilityEvent.setPackageName(WorkspaceHost.this.context.getPackageName());
            accessibilityEvent.setClassName(Button.class.getName());
            accessibilityEvent.setSource(this, i);
            accessibilityEvent.setContentDescription(describe(i));
            getParent().requestSendAccessibilityEvent(this, accessibilityEvent);
        }

        private void moveHover(int i) {
            int[] hover = this.state.hover(i);
            if (hover == null) {
                return;
            }
            send(hover[1], 128);
            send(hover[0], 256);
        }

        void dropFocus() {
            moveHover(Integer.MIN_VALUE);
            send(this.state.clearAll(), 65536);
        }

        void slotsChanged(TaskBinding[] taskBindingArr) {
            if (stale(this.state.focused, taskBindingArr) || stale(this.state.hovered, taskBindingArr)) {
                dropFocus();
            }
        }

        private boolean stale(int i, TaskBinding[] taskBindingArr) {
            return i >= 0 && i < 4 && taskBindingArr[i] != WorkspaceHost.this.slotView[i];
        }

        private int nodeAt(float f, float f2) {
            int slotAt;
            if (!open() || (slotAt = slotAt(f, f2)) == -2) {
                return Integer.MIN_VALUE;
            }
            if (slotAt == -1) {
                return 4;
            }
            return slotAt;
        }

        @Override // android.view.View
        protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
            if (this.a11y.isEnabled() && this.a11y.isTouchExplorationEnabled()) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 9 || actionMasked == 7) {
                    int nodeAt = nodeAt(motionEvent.getX(), motionEvent.getY());
                    moveHover(nodeAt);
                    if (nodeAt != Integer.MIN_VALUE) {
                        return true;
                    }
                } else if (actionMasked == 10 && this.state.hovered != Integer.MIN_VALUE) {
                    moveHover(Integer.MIN_VALUE);
                    return true;
                }
            }
            return super.dispatchHoverEvent(motionEvent);
        }

        @Override // android.view.View
        public AccessibilityNodeProvider getAccessibilityNodeProvider() {
            return this.nodes;
        }

        void colors(boolean z) {
            this.stroke.setColor(z ? 1728053247 : 1140850688);
            this.bar.setColor(z ? -2130706433 : 1426063360);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Rect barRect() {
            int i = (WorkspaceHost.this.geometry.logical.left - 12) - 3;
            int centerY = WorkspaceHost.this.geometry.logical.centerY();
            return new Rect(i, centerY - 110, i + 6, centerY + 110);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            Canvas canvas2;
            int i = 0;
            while (i < 4) {
                if (WorkspaceHost.this.slotView[i] == null) {
                    if (WorkspaceHost.this.leaving) {
                        canvas2 = canvas;
                    } else {
                        Rect rect = new Rect(WorkspaceHost.this.geometry.slots[i]);
                        if (WorkspaceHost.this.barActive) {
                            rect.offset(-Math.round(WorkspaceHost.this.barDx), 0);
                        }
                        canvas.drawRoundRect(new RectF(rect), WorkspaceHost.CORNER, WorkspaceHost.CORNER, this.stroke);
                        float centerX = rect.centerX();
                        float centerY = rect.centerY();
                        Canvas canvas3 = canvas;
                        canvas3.drawLine(centerX - 30.0f, centerY, centerX + 30.0f, centerY, this.stroke);
                        canvas2 = canvas3;
                        canvas2.drawLine(centerX, centerY - 30.0f, centerX, centerY + 30.0f, this.stroke);
                    }
                } else {
                    canvas2 = canvas;
                }
                i++;
                canvas = canvas2;
            }
            Canvas canvas4 = canvas;
            RectF rectF = new RectF(barRect());
            rectF.offset(-WorkspaceHost.this.barDx, 0.0f);
            if (this.barShown > 0.0f) {
                int alpha = this.bar.getAlpha();
                this.bar.setAlpha(Math.round(alpha * this.barShown));
                canvas4.drawRoundRect(rectF, 3.0f, 3.0f, this.bar);
                this.bar.setAlpha(alpha);
            }
        }

        private int slotAt(float f, float f2) {
            Rect barRect = barRect();
            if (f >= barRect.left - 30 && f <= barRect.right + 30 && f2 >= barRect.top && f2 <= barRect.bottom) {
                return -1;
            }
            for (int i = 0; i < 4; i++) {
                if (WorkspaceHost.this.geometry.slots[i].contains((int) f, (int) f2)) {
                    return i;
                }
            }
            return -2;
        }

        private int nearestSlot(float f) {
            int i = 0;
            for (int i2 = 1; i2 < 4; i2++) {
                if (Math.abs(WorkspaceHost.this.geometry.slots[i2].centerY() - f) < Math.abs(WorkspaceHost.this.geometry.slots[i].centerY() - f)) {
                    i = i2;
                }
            }
            return i;
        }

        void abandon() {
            WorkspaceHost.this.main.removeCallbacks(this.hold);
            if (this.downSlot == -1 && WorkspaceHost.this.actions != null) {
                WorkspaceHost.this.actions.barCancel();
            }
            if (this.downSlot == -1 || this.held) {
                WorkspaceHost.this.settleBack();
            }
            this.downSlot = -2;
            this.held = false;
            WorkspaceHost.this.barActive = false;
            WorkspaceHost.this.barDx = 0.0f;
            WorkspaceHost.this.dragFrom = WorkspaceHost.this.dragTo = -1;
            WorkspaceHost.this.wakeFrames();
            invalidate();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if ((motionEvent.getFlags() & 2048) != 0 && motionEvent.getActionMasked() == 0) {
                this.downSlot = -2;
                return true;
            }
            if (motionEvent.getActionMasked() == 0 && !Frames.acceptsGesture(WorkspaceHost.this.blocked, WorkspaceHost.this.interactive, WorkspaceHost.this.placing)) {
                this.downSlot = -2;
                return true;
            }
            if (this.downSlot == -2 && !this.held && motionEvent.getActionMasked() != 0) {
                return true;
            }
            switch (motionEvent.getActionMasked()) {
                case 0:
                    this.moved = false;
                    this.held = false;
                    this.downX = motionEvent.getX();
                    this.downY = motionEvent.getY();
                    this.downSlot = slotAt(this.downX, this.downY);
                    if (this.downSlot == -1) {
                        WorkspaceHost.this.barActive = true;
                        WorkspaceHost.this.barDx = 0.0f;
                        WorkspaceHost.this.startBarFrames();
                        break;
                    } else if (this.downSlot >= 0 && WorkspaceHost.this.slotView[this.downSlot] != null) {
                        WorkspaceHost.this.main.postDelayed(this.hold, 300L);
                        break;
                    }
                    break;
                case 1:
                    WorkspaceHost.this.main.removeCallbacks(this.hold);
                    int i = this.downSlot;
                    int slotAt = slotAt(motionEvent.getX(), motionEvent.getY());
                    this.downSlot = -2;
                    if (i == -1) {
                        boolean z = WorkspaceHost.this.barDx >= ((float) WorkspaceHost.this.geometry.logical.left) * 0.35f;
                        WorkspaceHost.this.barActive = false;
                        WorkspaceHost.this.barDx = 0.0f;
                        WorkspaceHost.this.wakeFrames();
                        invalidate();
                        if (!z || WorkspaceHost.this.actions == null) {
                            WorkspaceHost.this.settleBack();
                            if (WorkspaceHost.this.actions != null) {
                                WorkspaceHost.this.actions.barCancel();
                                break;
                            }
                        } else {
                            WorkspaceHost.this.sendCardsAway();
                            WorkspaceHost.this.actions.exit();
                            break;
                        }
                    } else if (!this.held) {
                        if (WorkspaceHost.this.actions != null && i != -2 && slotAt == i) {
                            if (WorkspaceHost.this.slotView[i] != null) {
                                WorkspaceHost.this.actions.swap(i);
                                break;
                            } else {
                                WorkspaceHost.this.actions.plus(i);
                                break;
                            }
                        }
                    } else {
                        this.held = false;
                        int i2 = WorkspaceHost.this.dragFrom;
                        int i3 = WorkspaceHost.this.dragTo;
                        WorkspaceHost.this.dragFrom = WorkspaceHost.this.dragTo = -1;
                        WorkspaceHost.this.wakeFrames();
                        if (WorkspaceHost.this.actions == null || i2 == i3) {
                            WorkspaceHost.this.settleBack();
                            if (!this.moved && WorkspaceHost.this.actions != null) {
                                WorkspaceHost.this.actions.menu(i);
                                break;
                            }
                        } else {
                            WorkspaceHost.this.actions.reorder(i2, i3);
                            break;
                        }
                    }
                    break;
                case 2:
                    if (this.downSlot == -1) {
                        WorkspaceHost.this.barDx = Math.max(0.0f, this.downX - motionEvent.getX());
                        WorkspaceHost.this.wakeFrames();
                        invalidate();
                        if (WorkspaceHost.this.actions != null) {
                            WorkspaceHost.this.actions.barDrag(WorkspaceHost.this.barDx);
                            break;
                        }
                    } else if (this.held) {
                        this.moved = true;
                        WorkspaceHost.this.dragDy = motionEvent.getY() - this.downY;
                        WorkspaceHost.this.dragTo = nearestSlot(WorkspaceHost.this.geometry.slots[WorkspaceHost.this.dragFrom].centerY() + WorkspaceHost.this.dragDy);
                        WorkspaceHost.this.wakeFrames();
                        break;
                    } else if (this.downSlot != -2 && slotAt(motionEvent.getX(), motionEvent.getY()) != this.downSlot) {
                        WorkspaceHost.this.main.removeCallbacks(this.hold);
                        this.downSlot = -2;
                        break;
                    }
                    break;
                case 3:
                    abandon();
                    break;
            }
            return true;
        }
    }
}
