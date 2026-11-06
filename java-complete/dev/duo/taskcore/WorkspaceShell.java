package dev.duo.taskcore;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.TaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.HardwareRenderer;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RenderNode;
import android.hardware.HardwareBuffer;
import android.media.Image;
import android.media.ImageReader;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.Process;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import android.view.SurfaceControl;
import android.view.SurfaceHolder;
import android.view.View;
import dev.duo.taskcore.TaskBinding;
import dev.duo.taskcore.WorkspaceProtocol;
import dev.duo.taskcore.WorkspaceSession;
import dev.duo.taskcore.WorkspaceShell;
import dev.duo.workspaceprobe.WorkspaceHome;
import io.github.libxposed.api.XposedInterface;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class WorkspaceShell implements dev.duo.taskcore.WorkspaceSession.Platform {
    private static final long HOST_READY_MS = 3000;
    private static final int MODE_FULLSCREEN = 1;
    private static final int MODE_MULTI_WINDOW = 6;
    private static final int OVERLAY_TASK_LAYER = 900;
    static final String TAG = "TaskCoreShell";
    private static final long TRANSITION_MS = 5000;
    private static final int TRANSIT_CHANGE = 6;
    private static final int TYPE_STANDARD = 1;
    private volatile long activeEpoch;
    private Method addListenerForTaskId;
    private volatile boolean adoptDelivered;
    private volatile IBinder awaitedCookie;
    private GroupMotion buildingGroup;
    private Field cfgWindow;
    private Method changeLeash;
    private Method changeTask;
    private volatile Context context;
    private volatile SurfaceControl displayArea;
    private Events events;
    private Method finishCallback;
    private AtomicBoolean finishing;
    private volatile TaskBinding focusedMain;
    private volatile SystemGate gate;
    private Geometry geometry;
    private Method getPendingInfo;
    private Method getRunningTaskInfo;
    private Method getTaskLeash;
    private Method getTaskListener;
    private GroupMotion groupMotion;
    private Class<?> handlerClass;
    private Object handlerProxy;
    private WorkspaceHost host;
    private long imageEpoch;
    private long imageFrame;
    private Handler imageHandler;
    private HandlerThread imageThread;
    private Method infoActivityType;
    private Method infoChanges;
    private Field infoDisplay;
    private Method infoKeyguardGoingAway;
    private Method infoMode;
    private Field infoParent;
    private Field infoPosition;
    private Field infoToken;
    private Field infoUser;
    private IBinder keyguardExit;
    private Field launchCookies;
    private Field launcherProxyField;
    private volatile Object launcherService;
    private volatile IBinder launching;
    private Class<?> listenerClass;
    private final ClassLoader loader;
    private Field mainExecutor;
    private Object nativePipState;
    private Class<?> observerClass;
    private Object observerProxy;
    private Method oneShotConsumed;
    private Method oneShotMerge;
    private Constructor<?> oneShotNew;
    private Method oneShotStart;
    private Field oneShotToken;
    private volatile Object organizer;
    private Method prepareOpenAnimation;
    private volatile Object recents;
    private Method recentsChanged;
    private volatile List<Integer> recentsGroup;
    private List<Rect> recentsRects;
    private Method removeListener;
    private Method reqTrigger;
    private Constructor<?> requestResultNew;
    private dev.duo.taskcore.WorkspaceProtocol.Client server;
    private Method setListener;
    private volatile Handler shell;
    private Method startTransition;
    private Field taskConfig;
    private Field taskListeners;
    private volatile Object taskViewTransitions;
    private Method tokenAsBinder;
    private Class<?> tokenClass;
    private volatile Object transitions;
    private Class<?> tvClass;
    private Constructor<?> tvNew;
    private Method tvRelease;
    private Class<?> tvcClass;
    private Constructor<?> tvcNew;
    private Field tvcSurface;
    private Method unregisterTaskView;
    private Method wcBounds;
    private Method wctBack;
    private Method wctBounds;
    private Class<?> wctClass;
    private Method wctFocusable;
    private Method wctHidden;
    private Method wctMode;
    private Constructor<?> wctNew;
    private Method wctReorder;
    private Method wctTrim;
    private final XposedInterface xposed;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final Set<IBinder> handledSources = new HashSet();
    private final ThreadLocal<SourceSend> sendingSource = new ThreadLocal<>();
    private final Map<Object, Rect> owned = Collections.synchronizedMap(new IdentityHashMap());
    private final Set<TaskBinding> live = Collections.newSetFromMap(new IdentityHashMap());
    private final Map<IBinder, TaskBinding> pipSources = new HashMap();
    private final Map<Object, Pending> pending = new HashMap();
    private final Map<IBinder, Pending> remoteRestores = new HashMap();
    private final Map<IBinder, Integer> claims = new HashMap();
    private final Set<Integer> hiddenUntilAttached = new HashSet();
    private final Map<IBinder, SurfaceControl.Transaction> finishTs = new HashMap();
    private final Map<IBinder, List<IBinder>> mergedInto = new HashMap();
    private final Map<Integer, SurfaceControl> overlays = new HashMap();
    private final Map<IBinder, Integer> overlayClaims = new HashMap();
    private volatile int awaitedTask = -1;
    private volatile int adoptTask = -1;

    /* JADX INFO: Access modifiers changed from: private */
    interface Play {
        boolean run() throws ReflectiveOperationException;
    }

    public interface Events {
        void changed(WorkspaceSession workspaceSession);

        void external(String str);

        void focused(int i, Object obj);

        void isolate(String[] strArr, dev.duo.taskcore.WorkspaceSession.Done done);

        void launched(int i, IBinder iBinder);

        void memberToBack(int i);

        void memberToFront(int i);

        void taskChanged(int i, Object obj, int i2, int i3);

        void taskGone(int i);

        default void pipStarting(long j, int i, Object obj) {
        }

        default void pipFinished(long j, int i, Object obj, boolean z) {
        }

        default void sourceEvent(dev.duo.taskcore.WorkspaceProtocol.SourceEvent sourceEvent) {
        }

        default boolean adopt(int i, String str) {
            return false;
        }

        default void adoptReady(int i) {
        }

        default boolean resumeRequested(String str, Object obj) {
            return false;
        }

        default boolean canAnimateGroup() {
            return false;
        }

        default boolean recentsReturned() {
            return false;
        }

        default SurfaceControl unlocking() {
            return null;
        }

        default boolean ownsNotificationLaunch() {
            return false;
        }

        default void interstitial(int i) {
            external("non-multi-window task " + i);
        }

        default boolean acceptsOverlay() {
            return false;
        }

        default boolean keepsOverlay() {
            return acceptsOverlay();
        }

        default void keyguardExitAborted() {
        }

        default void systemSurface(String str) {
            external(str);
        }
    }

    private static final class SourceSend {
        final PendingIntent intent;
        final int kind;

        SourceSend(PendingIntent pendingIntent, int i) {
            this.intent = pendingIntent;
            this.kind = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class GroupMotion {
        Object controller;
        IBinder finishToken;
        boolean finishing;
        final WorkspaceHost host;
        Object info;
        SurfaceControl leash;
        final TaskBinding main;
        final List<TaskBinding> members;
        boolean restore;
        boolean returning;
        SurfaceControl.Transaction start;
        IBinder token;

        GroupMotion(WorkspaceHost workspaceHost, TaskBinding taskBinding, List<TaskBinding> list) {
            this.host = workspaceHost;
            this.main = taskBinding;
            this.members = list;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class Pending {
        final dev.duo.taskcore.WorkspaceSession.Done done;
        final boolean giveBack;
        boolean lateReported;
        final List<TaskBinding> members;
        TaskBinding primary;
        boolean remoteFinished;
        Object remoteHandler;
        Object remoteInfo;
        boolean reported;
        boolean timedOut;

        Pending(boolean z, List<TaskBinding> list, dev.duo.taskcore.WorkspaceSession.Done done) {
            this.giveBack = z;
            this.members = list;
            this.done = done;
        }

        void report(boolean z, String str) {
            if (this.reported) {
                return;
            }
            this.reported = true;
            this.done.done(z, str);
        }

        void timeout(String str) {
            if (this.reported) {
                return;
            }
            this.timedOut = true;
            this.reported = true;
            this.done.done(false, "timeout: " + str);
        }

        void finalResult(boolean z, String str) {
            if (!this.timedOut) {
                report(z, str);
                return;
            }
            if (this.lateReported) {
                return;
            }
            this.lateReported = true;
            if (!this.giveBack) {
                Log.w(dev.duo.taskcore.WorkspaceShell.TAG, "late attach result ignored (session already returning): " + str);
            } else {
                this.done.done(z, "late: " + str);
            }
        }
    }

    public WorkspaceShell(XposedInterface xposedInterface, ClassLoader classLoader) {
        this.xposed = xposedInterface;
        this.loader = classLoader;
    }

    public boolean ready() {
        return (this.shell == null || this.context == null || this.displayArea == null) ? false : true;
    }

    public Handler shellHandler() {
        return this.shell;
    }

    public String readiness() {
        return "shell=" + (this.taskViewTransitions != null) + " context=" + (this.context != null) + " displayArea=" + (this.displayArea != null);
    }

    public void install() throws ReflectiveOperationException {
        try {
            WorkspaceHome.preload();
        } catch (LinkageError e) {
            Log.e(TAG, "workbench image library not loaded at install", e);
        }
        installNotificationSources();
        int i = 0;
        Class<?> cls = Class.forName("com.android.wm.shell.taskview.TaskViewTransitions", false, this.loader);
        Class<?> cls2 = Class.forName("com.android.wm.shell.ShellTaskOrganizer", false, this.loader);
        Class<?> cls3 = Class.forName("com.android.wm.shell.transition.Transitions", false, this.loader);
        this.tvClass = Class.forName("com.android.wm.shell.taskview.TaskView", false, this.loader);
        this.tvcClass = Class.forName("com.android.wm.shell.taskview.TaskViewTaskController", false, this.loader);
        Class<?> cls4 = Class.forName("com.android.wm.shell.taskview.TaskViewController", false, this.loader);
        this.listenerClass = Class.forName("com.android.wm.shell.taskview.TaskView$Listener", false, this.loader);
        this.handlerClass = Class.forName("com.android.wm.shell.transition.Transitions$TransitionHandler", false, this.loader);
        this.observerClass = Class.forName("com.android.wm.shell.transition.Transitions$TransitionObserver", false, this.loader);
        Class<?> cls5 = Class.forName("com.android.wm.shell.ShellTaskOrganizer$TaskListener", false, this.loader);
        this.wctClass = Class.forName("android.window.WindowContainerTransaction", false, this.loader);
        this.tokenClass = Class.forName("android.window.WindowContainerToken", false, this.loader);
        Class<?> cls6 = Class.forName("android.window.TransitionInfo", false, this.loader);
        Class<?> cls7 = Class.forName("android.window.TransitionInfo$Change", false, this.loader);
        this.tvcNew = this.tvcClass.getConstructor(Context.class, cls2, cls4);
        this.tvNew = this.tvClass.getConstructor(Context.class, cls4, this.tvcClass);
        this.wctNew = this.wctClass.getConstructor(new Class[0]);
        this.getRunningTaskInfo = cls2.getMethod("getRunningTaskInfo", Integer.TYPE);
        this.getTaskLeash = cls2.getMethod("getTaskLeash", Integer.TYPE);
        this.getTaskListener = cls2.getDeclaredMethod("getTaskListener", ActivityManager.RunningTaskInfo.class);
        this.getTaskListener.setAccessible(true);
        this.addListenerForTaskId = cls2.getMethod("addListenerForTaskId", cls5, Integer.TYPE);
        this.removeListener = cls2.getMethod("removeListener", cls5);
        this.taskListeners = cls2.getDeclaredField("mTaskListeners");
        this.taskListeners.setAccessible(true);
        this.prepareOpenAnimation = cls.getMethod("prepareOpenAnimation", this.tvcClass, Boolean.TYPE, SurfaceControl.Transaction.class, SurfaceControl.Transaction.class, ActivityManager.RunningTaskInfo.class, SurfaceControl.class, this.wctClass);
        this.unregisterTaskView = cls.getMethod("unregisterTaskView", this.tvcClass);
        this.startTransition = cls3.getMethod("startTransition", Integer.TYPE, this.wctClass, this.handlerClass);
        this.getPendingInfo = this.tvcClass.getMethod("getPendingInfo", new Class[0]);
        this.tvcSurface = this.tvcClass.getField("mSurfaceControl");
        this.setListener = this.tvClass.getMethod("setListener", Executor.class, this.listenerClass);
        this.tvRelease = this.tvClass.getMethod("release", new Class[0]);
        this.wctMode = this.wctClass.getMethod("setWindowingMode", this.tokenClass, Integer.TYPE);
        this.wctBounds = this.wctClass.getMethod("setBounds", this.tokenClass, Rect.class);
        this.wctHidden = this.wctClass.getMethod("setHidden", this.tokenClass, Boolean.TYPE);
        this.wctFocusable = this.wctClass.getMethod("setFocusable", this.tokenClass, Boolean.TYPE);
        this.wctBack = this.wctClass.getMethod("setInterceptBackPressedOnTaskRoot", this.tokenClass, Boolean.TYPE);
        this.wctTrim = this.wctClass.getMethod("setTaskTrimmableFromRecents", this.tokenClass, Boolean.TYPE);
        this.wctReorder = this.wctClass.getMethod("reorder", this.tokenClass, Boolean.TYPE);
        this.tokenAsBinder = this.tokenClass.getMethod("asBinder", new Class[0]);
        this.infoMode = TaskInfo.class.getMethod("getWindowingMode", new Class[0]);
        this.infoActivityType = TaskInfo.class.getMethod("getActivityType", new Class[0]);
        this.infoToken = TaskInfo.class.getField("token");
        this.infoDisplay = TaskInfo.class.getField("displayId");
        this.infoUser = TaskInfo.class.getField("userId");
        this.infoParent = TaskInfo.class.getField("parentTaskId");
        this.infoPosition = TaskInfo.class.getField("positionInParent");
        this.infoChanges = cls6.getMethod("getChanges", new Class[0]);
        this.taskConfig = TaskInfo.class.getField("configuration");
        this.cfgWindow = Configuration.class.getField("windowConfiguration");
        this.wcBounds = Class.forName("android.app.WindowConfiguration", false, this.loader).getMethod("getBounds", new Class[0]);
        this.changeTask = cls7.getMethod("getTaskInfo", new Class[0]);
        this.changeLeash = cls7.getMethod("getLeash", new Class[0]);
        this.finishCallback = Class.forName("com.android.wm.shell.transition.Transitions$TransitionFinishCallback", false, this.loader).getMethod("onTransitionFinished", this.wctClass);
        Class<?> cls8 = Class.forName("com.android.wm.shell.transition.OneShotRemoteHandler", false, this.loader);
        this.oneShotNew = cls8.getConstructor(Class.forName("com.android.wm.shell.common.ShellExecutor", false, this.loader), Class.forName("android.window.RemoteTransition", false, this.loader));
        this.oneShotToken = cls8.getField("mTransition");
        this.mainExecutor = cls3.getDeclaredField("mMainExecutor");
        this.mainExecutor.setAccessible(true);
        this.oneShotStart = cls8.getMethod("startAnimation", IBinder.class, cls6, SurfaceControl.Transaction.class, SurfaceControl.Transaction.class, this.finishCallback.getDeclaringClass());
        this.oneShotMerge = cls8.getMethod("mergeAnimation", IBinder.class, cls6, SurfaceControl.Transaction.class, SurfaceControl.Transaction.class, IBinder.class, this.finishCallback.getDeclaringClass());
        this.oneShotConsumed = cls8.getMethod("onTransitionConsumed", IBinder.class, Boolean.TYPE, SurfaceControl.Transaction.class);
        this.requestResultNew = Class.forName("com.android.wm.shell.transition.Transitions$RequestResult", false, this.loader).getConstructor(this.wctClass, this.handlerClass);
        this.infoKeyguardGoingAway = cls6.getMethod("isKeyguardGoingAway", new Class[0]);
        Method method = cls3.getMethod("addHandler", this.handlerClass);
        Field declaredField = cls.getDeclaredField("mTaskOrganizer");
        Field declaredField2 = cls.getDeclaredField("mTransitions");
        Field declaredField3 = cls.getDeclaredField("mShellExecutor");
        declaredField.setAccessible(true);
        declaredField2.setAccessible(true);
        declaredField3.setAccessible(true);
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        for (int length = declaredConstructors.length; i < length; length = length) {
            Constructor<?>[] constructorArr = declaredConstructors;
            final Method method2 = method;
            final Field field = declaredField;
            final Field field2 = declaredField2;
            final Field field3 = declaredField3;
            this.xposed.hook(constructorArr[i]).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda48
                public final Object intercept(XposedInterface.Chain chain) {
                    return dev.duo.taskcore.WorkspaceShell.this.m182lambda$install$0$devduotaskcoreWorkspaceShell(field, field2, method2, field3, chain);
                }
            });
            i++;
            declaredField = field;
            method = method2;
            cls7 = cls7;
            declaredField3 = field3;
            declaredField2 = field2;
            declaredConstructors = constructorArr;
        }
        Class<?> cls9 = cls7;
        Class<?> cls10 = Class.forName("com.android.wm.shell.recents.RecentTasksController", false, this.loader);
        for (Constructor<?> constructor : cls10.getDeclaredConstructors()) {
            this.xposed.hook(constructor).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda59
                public final Object intercept(XposedInterface.Chain chain) {
                    return dev.duo.taskcore.WorkspaceShell.this.m183lambda$install$1$devduotaskcoreWorkspaceShell(chain);
                }
            });
        }
        Class<?> cls11 = Class.forName("com.android.wm.shell.shared.GroupedTaskInfo", false, this.loader);
        Class<?> cls12 = Class.forName("com.android.wm.shell.shared.split.SplitBounds", false, this.loader);
        final Method method3 = cls11.getMethod("getTaskInfoList", new Class[0]);
        final Method method4 = cls11.getMethod("forMultipleSplitTasks", List.class, cls12);
        final Constructor<?> constructor2 = cls12.getConstructor(Integer.TYPE, List.class, List.class, Boolean.TYPE);
        Method declaredMethod = cls10.getDeclaredMethod("notifyRecentTasksChanged", new Class[0]);
        declaredMethod.setAccessible(true);
        this.recentsChanged = declaredMethod;
        Class<?> cls13 = Class.forName("com.android.systemui.LauncherProxyService", false, this.loader);
        this.launcherProxyField = cls13.getField("mLauncherProxy");
        Constructor<?>[] declaredConstructors2 = cls13.getDeclaredConstructors();
        int length2 = declaredConstructors2.length;
        int i2 = 0;
        while (i2 < length2) {
            this.xposed.hook(declaredConstructors2[i2]).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda60
                public final Object intercept(XposedInterface.Chain chain) {
                    return dev.duo.taskcore.WorkspaceShell.this.m193lambda$install$2$devduotaskcoreWorkspaceShell(chain);
                }
            });
            i2++;
            declaredConstructors2 = declaredConstructors2;
        }
        this.xposed.hook(cls10.getDeclaredMethod("getRecentTasks", Integer.TYPE, Integer.TYPE, Integer.TYPE)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda61
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m196lambda$install$3$devduotaskcoreWorkspaceShell(method3, constructor2, method4, chain);
            }
        });
        Class<?> cls14 = Class.forName("com.android.wm.shell.recents.RecentsTransitionHandler$RecentsController", false, this.loader);
        Class<?> cls15 = Class.forName("com.android.wm.shell.recents.RecentsTransitionHandler", false, this.loader);
        this.xposed.hook(cls15.getDeclaredMethod("getFinishMergeTransaction", IBinder.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda62
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m197lambda$install$4$devduotaskcoreWorkspaceShell(chain);
            }
        });
        this.xposed.hook(Class.forName("com.android.wm.shell.multitasking.miuifreeform.MiuiFreeformModeController", false, this.loader).getDeclaredMethod("adjustRecentMiniSurfaceIfNeed", cls6, SurfaceControl.Transaction.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda63
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m198lambda$install$5$devduotaskcoreWorkspaceShell(chain);
            }
        });
        installGroupMotion(cls15, cls14, cls6, cls9);
        final Field declaredField4 = cls14.getDeclaredField("mAwaitingCancelCompletion");
        final Field declaredField5 = cls14.getDeclaredField("mFinishCB");
        final Field declaredField6 = cls14.getDeclaredField("mKeyguardLocked");
        declaredField4.setAccessible(true);
        declaredField5.setAccessible(true);
        declaredField6.setAccessible(true);
        final Method declaredMethod2 = cls14.getDeclaredMethod("isSyntheticTransition", new Class[0]);
        declaredMethod2.setAccessible(true);
        this.xposed.hook(cls14.getDeclaredMethod("finishInner", Boolean.TYPE, Boolean.TYPE, Class.forName("com.android.internal.os.IResultReceiver", false, this.loader), String.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda64
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m199lambda$install$6$devduotaskcoreWorkspaceShell(declaredField4, declaredField6, declaredField5, declaredMethod2, chain);
            }
        });
        try {
            this.xposed.hook(Class.forName("com.android.wm.shell.multiplesplit.MultipleSplitRootTaskOrganizer", false, this.loader).getDeclaredMethod("startMultipleSplits", Bundle.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda65
                public final Object intercept(XposedInterface.Chain chain) {
                    return dev.duo.taskcore.WorkspaceShell.this.m200lambda$install$7$devduotaskcoreWorkspaceShell(chain);
                }
            });
        } catch (ReflectiveOperationException e2) {
            Log.w(TAG, "multi-split launch hook unavailable: recents card relies on member to-front", e2);
        }
        Class<?> cls16 = Class.forName("com.android.wm.shell.RootTaskDisplayAreaOrganizer", false, this.loader);
        Class<?> cls17 = Class.forName("android.window.DisplayAreaInfo", false, this.loader);
        final Field field4 = cls17.getField("displayId");
        this.xposed.hook(cls16.getDeclaredMethod("onDisplayAreaAppeared", cls17, SurfaceControl.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda66
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m201lambda$install$8$devduotaskcoreWorkspaceShell(field4, chain);
            }
        });
        this.xposed.hook(cls16.getDeclaredMethod("onDisplayAreaVanished", cls17)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda67
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m202lambda$install$9$devduotaskcoreWorkspaceShell(field4, chain);
            }
        });
        this.xposed.hook(this.tvClass.getMethod("getCurrentBoundsOnScreen", new Class[0])).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda49
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m184lambda$install$10$devduotaskcoreWorkspaceShell(chain);
            }
        });
        final Method method5 = cls4.getMethod("setTaskBounds", this.tvcClass, Rect.class);
        final Field declaredField7 = this.tvClass.getDeclaredField("mTaskViewController");
        final Field declaredField8 = this.tvClass.getDeclaredField("mTaskViewTaskController");
        declaredField7.setAccessible(true);
        declaredField8.setAccessible(true);
        Method[] methodArr = {this.tvClass.getMethod("onLocationChanged", new Class[0]), this.tvClass.getMethod("surfaceChanged", SurfaceHolder.class, Integer.TYPE, Integer.TYPE, Integer.TYPE)};
        for (int i3 = 0; i3 < 2; i3++) {
            this.xposed.hook(methodArr[i3]).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda50
                public final Object intercept(XposedInterface.Chain chain) {
                    return dev.duo.taskcore.WorkspaceShell.this.m185lambda$install$11$devduotaskcoreWorkspaceShell(method5, declaredField7, declaredField8, chain);
                }
            });
        }
        Class<?> cls18 = Class.forName("android.window.TransitionRequestInfo", false, this.loader);
        final Method method6 = cls18.getMethod("getTriggerTask", new Class[0]);
        final Method method7 = cls18.getMethod("getType", new Class[0]);
        final Field field5 = TaskInfo.class.getField("launchCookies");
        this.reqTrigger = method6;
        this.launchCookies = field5;
        this.xposed.hook(cls3.getDeclaredMethod("requestStartTransition", IBinder.class, cls18)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda51
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m187lambda$install$13$devduotaskcoreWorkspaceShell(method7, method6, field5, chain);
            }
        });
        final Field field6 = TaskInfo.class.getField("isFocused");
        this.xposed.hook(cls2.getDeclaredMethod("onTaskInfoChanged", ActivityManager.RunningTaskInfo.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda52
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m188lambda$install$14$devduotaskcoreWorkspaceShell(field6, field5, chain);
            }
        });
        this.xposed.hook(cls2.getDeclaredMethod("onTaskAppeared", ActivityManager.RunningTaskInfo.class, SurfaceControl.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda53
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m189lambda$install$15$devduotaskcoreWorkspaceShell(chain);
            }
        });
        Class<?> cls19 = Class.forName("com.android.wm.shell.pip2.phone.PipTransition", false, this.loader);
        Class<?> cls20 = Class.forName("android.window.TransitionRequestInfo$PipChange", false, this.loader);
        Class<?> cls21 = Class.forName("com.android.wm.shell.pip2.phone.PipTransitionState", false, this.loader);
        final Method method8 = cls20.getMethod("getTaskInfo", new Class[0]);
        final Field declaredField9 = cls19.getDeclaredField("mPipTransitionState");
        declaredField9.setAccessible(true);
        final Method method9 = cls21.getMethod("getState", new Class[0]);
        final Method method10 = cls21.getMethod("getPinnedTaskLeash", new Class[0]);
        this.xposed.hook(cls19.getDeclaredMethod("getEnterPipTransaction", IBinder.class, cls20)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda54
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m190lambda$install$16$devduotaskcoreWorkspaceShell(method8, declaredField9, chain);
            }
        });
        this.xposed.hook(Class.forName("android.window.WindowOrganizer", false, this.loader).getDeclaredMethod("finishTransition", IBinder.class, this.wctClass)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda55
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m191lambda$install$18$devduotaskcoreWorkspaceShell(method9, method10, chain);
            }
        });
        this.xposed.hook(cls19.getDeclaredMethod("onPipTransitionStateChanged", Integer.TYPE, Integer.TYPE, Bundle.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda56
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m192lambda$install$19$devduotaskcoreWorkspaceShell(chain);
            }
        });
        this.handlerProxy = Proxy.newProxyInstance(this.loader, new Class[]{this.handlerClass}, new InvocationHandler() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda57
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method11, Object[] objArr) {
                return dev.duo.taskcore.WorkspaceShell.this.m194lambda$install$20$devduotaskcoreWorkspaceShell(obj, method11, objArr);
            }
        });
        this.observerProxy = Proxy.newProxyInstance(this.loader, new Class[]{this.observerClass}, new InvocationHandler() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda58
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method11, Object[] objArr) {
                return dev.duo.taskcore.WorkspaceShell.this.m195lambda$install$22$devduotaskcoreWorkspaceShell(obj, method11, objArr);
            }
        });
    }

    /* renamed from: lambda$install$0$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m182lambda$install$0$devduotaskcoreWorkspaceShell(Field field, Field field2, Method method, Field field3, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        Object thisObject = chain.getThisObject();
        if (this.taskViewTransitions != null) {
            Log.w(TAG, "second TaskViewTransitions ignored");
            return proceed;
        }
        this.taskViewTransitions = thisObject;
        this.organizer = field.get(thisObject);
        this.transitions = field2.get(thisObject);
        try {
            this.transitions.getClass().getMethod("registerObserver", this.observerClass).invoke(this.transitions, this.observerProxy);
        } catch (ReflectiveOperationException e) {
            Log.e(TAG, "transition observer not registered: members may fall out of their cards", e);
        }
        try {
            method.invoke(this.transitions, this.handlerProxy);
        } catch (ReflectiveOperationException e2) {
            Log.e(TAG, "transition handler not added: external launches cannot be claimed", e2);
        }
        Object obj = field3.get(thisObject);
        this.shell = new Handler((Looper) obj.getClass().getMethod("getLooper", new Class[0]).invoke(obj, new Object[0]));
        Log.i(TAG, "captured TaskViewTransitions " + thisObject);
        return proceed;
    }

    /* renamed from: lambda$install$1$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m183lambda$install$1$devduotaskcoreWorkspaceShell(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (this.recents == null) {
            this.recents = chain.getThisObject();
            Log.i(TAG, "captured RecentTasksController");
        }
        return proceed;
    }

    /* renamed from: lambda$install$2$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m193lambda$install$2$devduotaskcoreWorkspaceShell(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        this.launcherService = chain.getThisObject();
        return proceed;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: lambda$install$3$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m196lambda$install$3$devduotaskcoreWorkspaceShell(Method method, Constructor constructor, Method method2, XposedInterface.Chain chain) throws Throwable {
        ArrayList arrayList;
        List<Integer> list = this.recentsGroup;
        int i = 0;
        int intValue = ((Integer) chain.getArg(0)).intValue();
        if (list == null || intValue <= 0) {
            return chain.proceed();
        }
        Object[] array = chain.getArgs().toArray();
        array[0] = Integer.MAX_VALUE;
        ArrayList arrayList2 = (ArrayList) chain.proceed(array);
        ArrayList arrayList3 = arrayList2.size() > intValue ? new ArrayList(arrayList2.subList(0, intValue)) : arrayList2;
        HashMap hashMap = new HashMap();
        ArrayList arrayList4 = new ArrayList();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            int i2 = i;
            int i3 = i2;
            for (TaskInfo taskInfo : (List) method.invoke(next, new Object[i])) {
                int i4 = i;
                if (list.contains(Integer.valueOf(taskInfo.taskId))) {
                    Iterator<TaskBinding> it2 = this.live.iterator();
                    TaskBinding taskBinding = null;
                    while (it2.hasNext()) {
                        TaskBinding next2 = it2.next();
                        ArrayList arrayList5 = arrayList2;
                        Iterator<TaskBinding> it3 = it2;
                        if (next2.origin.taskId == taskInfo.taskId && !released(next2)) {
                            taskBinding = next2;
                        }
                        arrayList2 = arrayList5;
                        it2 = it3;
                    }
                    arrayList = arrayList2;
                    if (taskBinding == null || taskBinding.origin.userId != this.infoUser.getInt(taskInfo) || taskBinding.origin.displayId != this.infoDisplay.getInt(taskInfo)) {
                        return arrayList3;
                    }
                    hashMap.put(Integer.valueOf(taskInfo.taskId), taskInfo);
                    i2 = 1;
                } else {
                    arrayList = arrayList2;
                    i3 = 1;
                }
                i = i4;
                arrayList2 = arrayList;
            }
            ArrayList arrayList6 = arrayList2;
            int i5 = i;
            if (i2 != 0 && i3 != 0) {
                return arrayList3;
            }
            if (i2 != 0) {
                arrayList4.add(next);
            }
            i = i5;
            arrayList2 = arrayList6;
        }
        ArrayList arrayList7 = arrayList2;
        boolean z = i;
        if (hashMap.size() != list.size()) {
            return arrayList3;
        }
        ArrayList arrayList8 = new ArrayList();
        Iterator<Integer> it4 = list.iterator();
        while (it4.hasNext()) {
            arrayList8.add((TaskInfo) hashMap.get(Integer.valueOf(it4.next().intValue())));
        }
        Object invoke = method2.invoke(null, arrayList8, constructor.newInstance(Integer.valueOf(z ? 1 : 0), this.recentsRects, list, Boolean.valueOf(z)));
        ArrayList arrayList9 = new ArrayList();
        Iterator it5 = arrayList7.iterator();
        boolean z2 = z ? 1 : 0;
        while (it5.hasNext()) {
            Object next3 = it5.next();
            if (!arrayList4.contains(next3)) {
                arrayList9.add(next3);
            } else if (!z2) {
                arrayList9.add(invoke);
                z2 = true;
            }
        }
        return arrayList9.size() > intValue ? new ArrayList(arrayList9.subList(z ? 1 : 0, intValue)) : arrayList9;
    }

    /* renamed from: lambda$install$4$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m197lambda$install$4$devduotaskcoreWorkspaceShell(XposedInterface.Chain chain) throws Throwable {
        SurfaceControl.Transaction transaction = (SurfaceControl.Transaction) chain.proceed();
        if (transaction != null) {
            reclaimMembers(transaction);
            finishGroupSurface(transaction);
        }
        return transaction;
    }

    /* renamed from: lambda$install$5$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m198lambda$install$5$devduotaskcoreWorkspaceShell(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        reclaimMembers((SurfaceControl.Transaction) chain.getArg(1));
        finishGroupSurface((SurfaceControl.Transaction) chain.getArg(1));
        return proceed;
    }

    /* renamed from: lambda$install$6$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m199lambda$install$6$devduotaskcoreWorkspaceShell(Field field, Field field2, Field field3, Method method, XposedInterface.Chain chain) throws Throwable {
        Object thisObject = chain.getThisObject();
        String str = (String) chain.getArg(3);
        if (this.activeEpoch != 0 && ((Boolean) chain.getArg(0)).booleanValue() && (("requested".equals(str) || "requested-merge-fenced".equals(str)) && !field.getBoolean(thisObject) && !field2.getBoolean(thisObject) && field3.get(thisObject) != null && !((Boolean) method.invoke(thisObject, new Object[0])).booleanValue())) {
            this.server.userSelected(this.activeEpoch);
        }
        return chain.proceed();
    }

    /* renamed from: lambda$install$7$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m200lambda$install$7$devduotaskcoreWorkspaceShell(XposedInterface.Chain chain) throws Throwable {
        List<Integer> list = this.recentsGroup;
        Events events = this.events;
        Bundle bundle = (Bundle) chain.getArg(0);
        Set<Integer> bundleTaskIds = bundleTaskIds(bundle);
        if ((bundle == null ? -1 : bundle.getInt("multiple_launch_way")) == 0 && list != null && events != null && bundleTaskIds.size() == list.size() && list.containsAll(bundleTaskIds)) {
            Object invoke = ActivityOptions.class.getMethod("getRemoteTransition", new Class[0]).invoke(ActivityOptions.class.getMethod("fromBundle", Bundle.class).invoke(null, bundle), new Object[0]);
            if (events.resumeRequested("recents card", invoke)) {
                Log.i(TAG, "workbench card restore " + bundleTaskIds + " remote=" + (invoke != null));
                return null;
            }
        }
        return chain.proceed();
    }

    /* renamed from: lambda$install$8$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m201lambda$install$8$devduotaskcoreWorkspaceShell(Field field, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (field.getInt(chain.getArg(0)) == 0) {
            this.displayArea = (SurfaceControl) chain.getArg(1);
        }
        return proceed;
    }

    /* renamed from: lambda$install$9$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m202lambda$install$9$devduotaskcoreWorkspaceShell(Field field, XposedInterface.Chain chain) throws Throwable {
        if (field.getInt(chain.getArg(0)) == 0) {
            this.displayArea = null;
            Events events = this.events;
            if (events != null) {
                events.external("display area vanished");
            }
        }
        return chain.proceed();
    }

    /* renamed from: lambda$install$10$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m184lambda$install$10$devduotaskcoreWorkspaceShell(XposedInterface.Chain chain) throws Throwable {
        Rect rect = this.owned.get(chain.getThisObject());
        return rect == null ? chain.proceed() : new Rect(rect);
    }

    /* renamed from: lambda$install$11$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m185lambda$install$11$devduotaskcoreWorkspaceShell(Method method, Field field, Field field2, XposedInterface.Chain chain) throws Throwable {
        Rect rect = this.owned.get(chain.getThisObject());
        if (rect == null) {
            return chain.proceed();
        }
        method.invoke(field.get(chain.getThisObject()), field2.get(chain.getThisObject()), new Rect(rect));
        return null;
    }

    /* renamed from: lambda$install$13$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m187lambda$install$13$devduotaskcoreWorkspaceShell(Method method, Method method2, Field field, XposedInterface.Chain chain) throws Throwable {
        String packageName;
        Events events = this.events;
        if (events != null) {
            int intValue = ((Integer) method.invoke(chain.getArg(1), new Object[0])).intValue();
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) method2.invoke(chain.getArg(1), new Object[0]);
            if (this.activeEpoch != 0 && ((intValue == 1 || intValue == 3) && runningTaskInfo != null && this.infoDisplay.getInt(runningTaskInfo) == 0)) {
                for (dev.duo.taskcore.WorkspaceProtocol.SourceEvent sourceEvent : this.server.lookupSource(this.activeEpoch, (IBinder) chain.getArg(0))) {
                    if (sourceEvent.target != null && sourceEvent.target.taskToken == this.tokenAsBinder.invoke(this.infoToken.get(runningTaskInfo), new Object[0])) {
                        onSourceEvent(sourceEvent);
                        if (sourceEvent.kind != 2 && sourceEvent.kind != 4) {
                        }
                        return chain.proceed();
                    }
                }
            }
            if ((intValue == 1 || intValue == 3) && runningTaskInfo != null && this.hiddenUntilAttached.contains(Integer.valueOf(runningTaskInfo.taskId))) {
                this.claims.put((IBinder) chain.getArg(0), Integer.valueOf(runningTaskInfo.taskId));
                Log.i(TAG, "follow-up launch of task " + runningTaskInfo.taskId + " kept hidden until it is in its card");
                return chain.proceed();
            }
            if (intValue == 4 && runningTaskInfo != null && this.infoDisplay.getInt(runningTaskInfo) == 0 && isOwnedTask(runningTaskInfo.taskId)) {
                events.memberToBack(runningTaskInfo.taskId);
            } else if ((intValue == 1 || intValue == 3) && runningTaskInfo != null && this.infoDisplay.getInt(runningTaskInfo) == 0 && isOwnedTask(runningTaskInfo.taskId)) {
                events.memberToFront(runningTaskInfo.taskId);
            } else if ((intValue == 1 || intValue == 3) && runningTaskInfo != null && this.infoDisplay.getInt(runningTaskInfo) == 0) {
                IBinder iBinder = this.launching;
                List list = (List) field.get(runningTaskInfo);
                if (iBinder != null && list != null && list.contains(iBinder)) {
                    this.claims.put((IBinder) chain.getArg(0), Integer.valueOf(runningTaskInfo.taskId));
                    this.hiddenUntilAttached.add(Integer.valueOf(runningTaskInfo.taskId));
                    this.launching = null;
                    this.awaitedCookie = iBinder;
                    this.awaitedTask = runningTaskInfo.taskId;
                    if (this.getRunningTaskInfo.invoke(this.organizer, Integer.valueOf(runningTaskInfo.taskId)) != null) {
                        deliverLaunched(runningTaskInfo.taskId);
                    }
                } else {
                    int intValue2 = ((Integer) TaskInfo.class.getMethod("getActivityType", new Class[0]).invoke(runningTaskInfo, new Object[0])).intValue();
                    if (runningTaskInfo.baseActivity != null) {
                        packageName = runningTaskInfo.baseActivity.getPackageName();
                    } else {
                        packageName = runningTaskInfo.topActivity != null ? runningTaskInfo.topActivity.getPackageName() : null;
                    }
                    boolean z = TaskInfo.class.getField("supportsMultiWindow").getBoolean(runningTaskInfo);
                    boolean z2 = TaskInfo.class.getField("isTopActivityTransparent").getBoolean(runningTaskInfo);
                    if (intValue2 == 1 && !z && z2 && events.acceptsOverlay()) {
                        Log.i(TAG, "non-member " + packageName + " task " + runningTaskInfo.taskId + " is a non-resizable dialog: shown inside the main area");
                        this.overlays.put(Integer.valueOf(runningTaskInfo.taskId), null);
                        this.overlayClaims.put((IBinder) chain.getArg(0), Integer.valueOf(runningTaskInfo.taskId));
                    } else if (intValue2 == 1 && !z) {
                        Log.i(TAG, "non-member " + packageName + " task " + runningTaskInfo.taskId + " cannot be multi-window: not adopted");
                        events.interstitial(runningTaskInfo.taskId);
                    } else if (intValue2 != 1 || !events.adopt(runningTaskInfo.taskId, packageName)) {
                        if (intValue2 != 1) {
                            events.systemSurface("external " + (intValue != 1 ? "to-front" : "open") + " system task " + runningTaskInfo.taskId + " type " + intValue2);
                        } else {
                            events.external("external " + (intValue != 1 ? "to-front" : "open") + " task " + runningTaskInfo.taskId);
                        }
                    } else {
                        this.adoptDelivered = false;
                        this.adoptTask = runningTaskInfo.taskId;
                        this.claims.put((IBinder) chain.getArg(0), Integer.valueOf(runningTaskInfo.taskId));
                        this.hiddenUntilAttached.add(Integer.valueOf(runningTaskInfo.taskId));
                        Log.i(TAG, "non-member " + packageName + " task " + runningTaskInfo.taskId + " opened: adopting into the main area");
                        final int i = runningTaskInfo.taskId;
                        if (this.getRunningTaskInfo.invoke(this.organizer, Integer.valueOf(i)) != null) {
                            deliverAdopt(i);
                        } else {
                            this.shell.postDelayed(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda9
                                @Override // java.lang.Runnable
                                public final void run() {
                                    dev.duo.taskcore.WorkspaceShell.this.m186lambda$install$12$devduotaskcoreWorkspaceShell(i);
                                }
                            }, HOST_READY_MS);
                        }
                    }
                }
            }
        }
        return chain.proceed();
    }

    /* renamed from: lambda$install$12$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ void m186lambda$install$12$devduotaskcoreWorkspaceShell(int i) {
        if (this.adoptTask != i || this.adoptDelivered) {
            return;
        }
        Log.w(TAG, "task " + i + " never appeared: not adopted");
        adoptRefused(i);
    }

    /* renamed from: lambda$install$14$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m188lambda$install$14$devduotaskcoreWorkspaceShell(Field field, Field field2, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        Events events = this.events;
        ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) chain.getArg(0);
        if (events != null && runningTaskInfo != null && this.infoToken.get(runningTaskInfo) != null) {
            events.taskChanged(runningTaskInfo.taskId, this.tokenAsBinder.invoke(this.infoToken.get(runningTaskInfo), new Object[0]), ((Integer) this.infoMode.invoke(runningTaskInfo, new Object[0])).intValue(), this.infoParent.getInt(runningTaskInfo));
        }
        if (events != null && runningTaskInfo != null && field.getBoolean(runningTaskInfo) && this.infoDisplay.getInt(runningTaskInfo) == 0) {
            List list = (List) field2.get(runningTaskInfo);
            IBinder iBinder = this.launching;
            IBinder iBinder2 = this.awaitedCookie;
            if (!(list != null && ((iBinder != null && list.contains(iBinder)) || (iBinder2 != null && list.contains(iBinder2)))) && runningTaskInfo.taskId != this.adoptTask && !this.overlays.containsKey(Integer.valueOf(runningTaskInfo.taskId))) {
                events.focused(runningTaskInfo.taskId, this.tokenAsBinder.invoke(this.infoToken.get(runningTaskInfo), new Object[0]));
            }
        }
        return proceed;
    }

    /* renamed from: lambda$install$15$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m189lambda$install$15$devduotaskcoreWorkspaceShell(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) chain.getArg(0);
        if (runningTaskInfo != null && runningTaskInfo.taskId == this.awaitedTask) {
            deliverLaunched(runningTaskInfo.taskId);
        }
        if (runningTaskInfo != null && runningTaskInfo.taskId == this.adoptTask && !this.adoptDelivered) {
            deliverAdopt(runningTaskInfo.taskId);
        }
        return proceed;
    }

    /* renamed from: lambda$install$16$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m190lambda$install$16$devduotaskcoreWorkspaceShell(Method method, Field field, XposedInterface.Chain chain) throws Throwable {
        ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) method.invoke(chain.getArg(1), new Object[0]);
        Object invoke = this.tokenAsBinder.invoke(this.infoToken.get(runningTaskInfo), new Object[0]);
        Iterator<TaskBinding> it = this.live.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            TaskBinding next = it.next();
            if (next.origin.taskId == runningTaskInfo.taskId && next.origin.tokenBinder == invoke) {
                this.nativePipState = field.get(chain.getThisObject());
                this.pipSources.put((IBinder) chain.getArg(0), next);
                if (this.events != null) {
                    this.events.pipStarting(next.epoch, runningTaskInfo.taskId, invoke);
                }
            }
        }
        return chain.proceed();
    }

    /* renamed from: lambda$install$18$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m191lambda$install$18$devduotaskcoreWorkspaceShell(Method method, Method method2, XposedInterface.Chain chain) throws Throwable {
        final TaskBinding remove = this.pipSources.remove((IBinder) chain.getArg(0));
        final boolean z = remove != null && ((Integer) method.invoke(this.nativePipState, new Object[0])).intValue() == 4;
        SurfaceControl surfaceControl = z ? (SurfaceControl) method2.invoke(this.nativePipState, new Object[0]) : null;
        Object proceed = chain.proceed();
        if (remove != null) {
            if (z && this.host != null) {
                this.host.belowSystemPip(surfaceControl);
            }
            final Events events = this.events;
            if (events != null) {
                this.shell.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda33
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.taskcore.WorkspaceShell.Events.this.pipFinished(r1.epoch, r1.origin.taskId, remove.origin.tokenBinder, z);
                    }
                });
            }
        }
        return proceed;
    }

    /* renamed from: lambda$install$19$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m192lambda$install$19$devduotaskcoreWorkspaceShell(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (((Integer) chain.getArg(1)).intValue() == 9 && this.host != null) {
            this.host.belowSystemPip(null);
        }
        return proceed;
    }

    /* renamed from: lambda$install$20$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m194lambda$install$20$devduotaskcoreWorkspaceShell(Object obj, Method method, Object[] objArr) throws Throwable {
        return onHandler(method, objArr);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: lambda$install$22$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m195lambda$install$22$devduotaskcoreWorkspaceShell(Object obj, Method method, Object[] objArr) throws Throwable {
        char c;
        String name = method.getName();
        switch (name.hashCode()) {
            case -1776922004:
                if (name.equals("toString")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -1542447834:
                if (name.equals("onTransitionFinished")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1295482945:
                if (name.equals("equals")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 147696667:
                if (name.equals("hashCode")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 881252719:
                if (name.equals("onTransitionReady")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1406393568:
                if (name.equals("onTransitionMerged")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                onTransitionReady((IBinder) objArr[0], objArr[1], (SurfaceControl.Transaction) objArr[2], (SurfaceControl.Transaction) objArr[3]);
                return null;
            case 1:
                this.mergedInto.computeIfAbsent((IBinder) objArr[1], new Function() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda14
                    @Override // java.util.function.Function
                    public final Object apply(Object obj2) {
                        return dev.duo.taskcore.WorkspaceShell.lambda$install$21((IBinder) obj2);
                    }
                }).add((IBinder) objArr[0]);
                GroupMotion groupMotion = this.groupMotion;
                if (groupMotion != null && (groupMotion.token == objArr[0] || groupMotion.finishToken == objArr[0])) {
                    groupMotion.finishToken = (IBinder) objArr[1];
                }
                return null;
            case 2:
                IBinder iBinder = (IBinder) objArr[0];
                if (iBinder == this.keyguardExit) {
                    this.keyguardExit = null;
                    Events events = this.events;
                    if (((Boolean) objArr[1]).booleanValue() && events != null) {
                        events.keyguardExitAborted();
                    }
                }
                this.claims.remove(iBinder);
                this.overlayClaims.remove(iBinder);
                GroupMotion groupMotion2 = this.groupMotion;
                if (groupMotion2 != null && groupMotion2.finishing && !groupMotion2.restore) {
                    groupMotion2.returning = (groupMotion2.returning || ((Boolean) objArr[1]).booleanValue()) && this.events != null && this.events.recentsReturned();
                }
                SurfaceControl.Transaction finishTransactionOf = finishTransactionOf(iBinder);
                reclaimMembers(finishTransactionOf);
                finishGroupSurface(finishTransactionOf);
                return null;
            case 3:
                return Integer.valueOf(System.identityHashCode(obj));
            case 4:
                return Boolean.valueOf(objArr[0] == obj);
            case 5:
                return "TaskCoreTransitionObserver";
            default:
                return null;
        }
    }

    static /* synthetic */ List lambda$install$21(IBinder iBinder) {
        return new ArrayList();
    }

    private void installGroupMotion(Class<?> cls, Class<?> cls2, final Class<?> cls3, final Class<?> cls4) throws ReflectiveOperationException {
        final Class<?> cls5 = Class.forName("com.android.wm.shell.recents.IRecentsAnimationRunner", false, this.loader);
        Class<?> declaringClass = this.finishCallback.getDeclaringClass();
        final Field declaredField = cls2.getDeclaredField("mTransition");
        final Field declaredField2 = cls2.getDeclaredField("mListener");
        declaredField.setAccessible(true);
        declaredField2.setAccessible(true);
        this.xposed.hook(cls.getDeclaredMethod("startRecentsTransition", PendingIntent.class, Intent.class, Bundle.class, this.wctClass, Class.forName("android.app.IApplicationThread", false, this.loader), cls5)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda15
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m203lambda$installGroupMotion$23$devduotaskcoreWorkspaceShell(chain);
            }
        });
        this.xposed.hook(cls2.getDeclaredMethod("start", cls3, SurfaceControl.Transaction.class, SurfaceControl.Transaction.class, declaringClass)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda16
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m204lambda$installGroupMotion$25$devduotaskcoreWorkspaceShell(declaredField, declaredField2, cls5, chain);
            }
        });
        final Class<?> cls6 = Class.forName("com.android.wm.shell.shared.TransitionUtil", false, this.loader);
        Class<?> cls7 = Class.forName("android.view.RemoteAnimationTarget", false, this.loader);
        final Field[] fieldArr = new Field[4];
        String[] strArr = {"localBounds", "screenSpaceBounds", "startBounds", "clipRect"};
        for (int i = 0; i < 4; i++) {
            fieldArr[i] = cls7.getField(strArr[i]);
            fieldArr[i].setAccessible(true);
        }
        final Field field = cls7.getField("position");
        final Field field2 = cls7.getField("contentInsets");
        final Field field3 = cls7.getField("windowConfiguration");
        field.setAccessible(true);
        field2.setAccessible(true);
        field3.setAccessible(true);
        this.xposed.hook(cls6.getDeclaredMethod("newTarget", cls4, Integer.TYPE, SurfaceControl.class, Boolean.TYPE)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda17
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m205lambda$installGroupMotion$26$devduotaskcoreWorkspaceShell(cls6, cls4, cls3, fieldArr, field, field2, field3, chain);
            }
        });
        this.xposed.hook(cls2.getDeclaredMethod("checkOpeningTaskMatch", Boolean.TYPE, Boolean.TYPE)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda18
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m206lambda$installGroupMotion$27$devduotaskcoreWorkspaceShell(chain);
            }
        });
        this.xposed.hook(cls2.getDeclaredMethod("checkForceToHome", Boolean.TYPE)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda19
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m207lambda$installGroupMotion$28$devduotaskcoreWorkspaceShell(chain);
            }
        });
        this.xposed.hook(Class.forName("com.android.wm.shell.transition.Transitions", false, this.loader).getDeclaredMethod("onFinish", IBinder.class, this.wctClass)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda20
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m208lambda$installGroupMotion$29$devduotaskcoreWorkspaceShell(chain);
            }
        });
    }

    /* renamed from: lambda$installGroupMotion$23$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m203lambda$installGroupMotion$23$devduotaskcoreWorkspaceShell(XposedInterface.Chain chain) throws Throwable {
        Events events = this.events;
        if (this.groupMotion != null || events == null || !events.canAnimateGroup() || this.focusedMain == null || this.live.isEmpty()) {
            return chain.proceed();
        }
        GroupMotion groupMotion = new GroupMotion(this.host, this.focusedMain, new ArrayList(this.live));
        publishGroupFrame();
        this.groupMotion = groupMotion;
        groupMotion.host.beginSystemAnimation();
        try {
            groupMotion.token = (IBinder) chain.proceed();
            return groupMotion.token;
        } finally {
            if (groupMotion.token == null) {
                groupMotion.host.abandonSystemAnimation();
                this.groupMotion = null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: lambda$installGroupMotion$25$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m204lambda$installGroupMotion$25$devduotaskcoreWorkspaceShell(Field field, Field field2, Class cls, XposedInterface.Chain chain) throws Throwable {
        final GroupMotion groupMotion = this.groupMotion;
        if (groupMotion == null || groupMotion.token != field.get(chain.getThisObject())) {
            return chain.proceed();
        }
        groupMotion.controller = chain.getThisObject();
        groupMotion.info = chain.getArg(0);
        groupMotion.start = (SurfaceControl.Transaction) chain.getArg(1);
        final Object obj = field2.get(groupMotion.controller);
        field2.set(groupMotion.controller, Proxy.newProxyInstance(this.loader, new Class[]{cls}, new InvocationHandler() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda41
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj2, Method method, Object[] objArr) {
                return dev.duo.taskcore.WorkspaceShell.lambda$installGroupMotion$24(dev.duo.taskcore.WorkspaceShell.GroupMotion.this, obj, obj2, method, objArr);
            }
        }));
        this.buildingGroup = groupMotion;
        try {
            return chain.proceed();
        } finally {
            this.buildingGroup = null;
            groupMotion.start = null;
        }
    }

    static /* synthetic */ Object lambda$installGroupMotion$24(GroupMotion groupMotion, Object obj, Object obj2, Method method, Object[] objArr) throws Throwable {
        boolean z;
        if ((method.getName().equals("onAnimationStart") || method.getName().equals("onTasksAppeared")) && groupMotion.leash != null) {
            boolean equals = method.getName().equals("onAnimationStart");
            Object obj3 = objArr[equals ? 1 : 0];
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < Array.getLength(obj3); i++) {
                Object obj4 = Array.get(obj3, i);
                int i2 = obj4.getClass().getField("taskId").getInt(obj4);
                Iterator<TaskBinding> it = groupMotion.members.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    if (it.next().origin.taskId == i2) {
                        z = true;
                        break;
                    }
                }
                if (!z || i2 == groupMotion.main.origin.taskId) {
                    arrayList.add(obj4);
                }
            }
            Object newInstance = Array.newInstance(obj3.getClass().getComponentType(), arrayList.size());
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                Array.set(newInstance, i3, arrayList.get(i3));
            }
            objArr[equals ? 1 : 0] = newInstance;
        }
        try {
            return method.invoke(obj, objArr);
        } catch (InvocationTargetException e) {
            throw e.getCause();
        }
    }

    /* renamed from: lambda$installGroupMotion$26$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m205lambda$installGroupMotion$26$devduotaskcoreWorkspaceShell(Class cls, Class cls2, Class cls3, Field[] fieldArr, Field field, Field field2, Field field3, XposedInterface.Chain chain) throws Throwable {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        TaskBinding taskBinding;
        Object proceed = chain.proceed();
        GroupMotion groupMotion = this.buildingGroup;
        if (groupMotion == null || (runningTaskInfo = (ActivityManager.RunningTaskInfo) this.changeTask.invoke(chain.getArg(0), new Object[0])) == null) {
            return proceed;
        }
        Iterator<TaskBinding> it = groupMotion.members.iterator();
        while (true) {
            if (!it.hasNext()) {
                taskBinding = null;
                break;
            }
            taskBinding = it.next();
            if (taskBinding.lease == dev.duo.taskcore.TaskBinding.Lease.SURFACE_ATTACHED && taskBinding.origin.taskId == runningTaskInfo.taskId && taskBinding.origin.tokenBinder == this.tokenAsBinder.invoke(this.infoToken.get(runningTaskInfo), new Object[0])) {
                break;
            }
        }
        if (taskBinding == null) {
            return proceed;
        }
        SurfaceControl surfaceControl = (SurfaceControl) this.changeLeash.invoke(chain.getArg(0), new Object[0]);
        if (taskBinding != groupMotion.main || !((Boolean) SurfaceControl.class.getMethod("isSameSurface", SurfaceControl.class).invoke(chain.getArg(2), surfaceControl)).booleanValue()) {
            placeGroupMembers(groupMotion, groupMotion.start);
            if (taskBinding == groupMotion.main) {
                groupMotion.leash = (SurfaceControl) chain.getArg(2);
                Object invoke = cls3.getMethod("getRoot", Integer.TYPE).invoke(groupMotion.info, Integer.valueOf(((Integer) cls.getMethod("rootIndexFor", cls2, cls3).invoke(null, chain.getArg(0), groupMotion.info)).intValue()));
                Point point = (Point) invoke.getClass().getMethod("getOffset", new Class[0]).invoke(invoke, new Object[0]);
                groupMotion.start.reparent(groupMotion.host.root(), groupMotion.leash).setPosition(groupMotion.host.root(), 0.0f, 0.0f).setLayer(groupMotion.host.root(), 0).setVisibility(groupMotion.host.root(), true).setPosition(groupMotion.leash, -point.x, -point.y).setCrop(groupMotion.leash, null).setAlpha(groupMotion.leash, 1.0f);
                Rect rect = this.geometry.display;
                for (Field field4 : fieldArr) {
                    field4.set(proceed, new Rect(rect));
                }
                field.set(proceed, new Point(rect.left, rect.top));
                field2.set(proceed, new Rect());
                Object obj = field3.get(proceed);
                Object newInstance = obj.getClass().getConstructor(new Class[0]).newInstance(new Object[0]);
                obj.getClass().getMethod("setTo", obj.getClass()).invoke(newInstance, obj);
                obj.getClass().getMethod("setBounds", Rect.class).invoke(newInstance, new Rect(rect));
                obj.getClass().getMethod("setAppBounds", Rect.class).invoke(newInstance, new Rect(rect));
                field3.set(proceed, newInstance);
                Log.i(TAG, "whole workbench animation target " + runningTaskInfo.taskId + " " + rect);
            }
            return proceed;
        }
        Log.e(TAG, "whole workbench needs a separate animation leash; keeping native target");
        return proceed;
    }

    /* renamed from: lambda$installGroupMotion$27$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m206lambda$installGroupMotion$27$devduotaskcoreWorkspaceShell(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        GroupMotion groupMotion = this.groupMotion;
        if (groupMotion != null && groupMotion.controller == chain.getThisObject()) {
            groupMotion.returning = Boolean.TRUE.equals(((Pair) proceed).first);
        }
        return proceed;
    }

    /* renamed from: lambda$installGroupMotion$28$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m207lambda$installGroupMotion$28$devduotaskcoreWorkspaceShell(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        GroupMotion groupMotion = this.groupMotion;
        if (groupMotion != null && groupMotion.controller == chain.getThisObject() && Boolean.TRUE.equals(proceed)) {
            groupMotion.returning = false;
        }
        return proceed;
    }

    /* renamed from: lambda$installGroupMotion$29$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m208lambda$installGroupMotion$29$devduotaskcoreWorkspaceShell(XposedInterface.Chain chain) throws Throwable {
        GroupMotion groupMotion = this.groupMotion;
        boolean z = false;
        List<IBinder> list = this.mergedInto.get(chain.getArg(0));
        if (groupMotion != null && (groupMotion.token == chain.getArg(0) || groupMotion.finishToken == chain.getArg(0) || (list != null && list.contains(groupMotion.token)))) {
            z = true;
        }
        if (z) {
            groupMotion.finishing = true;
        }
        try {
            return chain.proceed();
        } finally {
            if (z && this.groupMotion == groupMotion) {
                groupMotion.host.abandonSystemAnimation();
                this.groupMotion = null;
                if (groupMotion.restore && groupMotion.leash != null) {
                    groupMotion.leash.release();
                }
            }
        }
    }

    private void placeGroupMembers(GroupMotion groupMotion, SurfaceControl.Transaction transaction) throws ReflectiveOperationException {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        for (TaskBinding taskBinding : groupMotion.members) {
            if (taskBinding.lease == dev.duo.taskcore.TaskBinding.Lease.SURFACE_ATTACHED && (runningTaskInfo = (ActivityManager.RunningTaskInfo) this.getRunningTaskInfo.invoke(this.organizer, Integer.valueOf(taskBinding.origin.taskId))) != null && this.infoParent.getInt(runningTaskInfo) == -1 && this.tokenAsBinder.invoke(this.infoToken.get(runningTaskInfo), new Object[0]) == taskBinding.origin.tokenBinder && this.infoUser.getInt(runningTaskInfo) == taskBinding.origin.userId && this.infoDisplay.getInt(runningTaskInfo) == taskBinding.origin.displayId) {
                placeIfApplied(transaction, taskBinding, runningTaskInfo);
            }
        }
    }

    private void finishGroupSurface(SurfaceControl.Transaction transaction) throws ReflectiveOperationException {
        GroupMotion groupMotion = this.groupMotion;
        if (groupMotion != null && groupMotion.finishing && transaction != null) {
            if (groupMotion.returning) {
                placeGroupMembers(groupMotion, transaction);
            }
            groupMotion.host.finishSystemAnimation(transaction, this.displayArea, Boolean.valueOf(groupMotion.returning));
            if (!groupMotion.restore || groupMotion.leash == null || !groupMotion.leash.isValid()) {
                return;
            }
            transaction.reparent(groupMotion.leash, null);
        }
    }

    private void onTransitionReady(IBinder iBinder, Object obj, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2) {
        SurfaceControl unlocking;
        if (transaction2 != null) {
            this.finishTs.put(iBinder, transaction2);
        }
        Events events = this.events;
        if (events == null || transaction == null) {
            return;
        }
        try {
            if (((Boolean) this.infoKeyguardGoingAway.invoke(obj, new Object[0])).booleanValue() && (unlocking = events.unlocking()) != null && unlocking.isValid()) {
                this.keyguardExit = iBinder;
                transaction.setVisibility(unlocking, true);
                Log.i(TAG, "keyguard going away: workbench root shown in the same transition");
            }
        } catch (ReflectiveOperationException e) {
            Log.e(TAG, "keyguard flag unreadable: unlock falls back to the shade signal", e);
        }
    }

    private SurfaceControl.Transaction finishTransactionOf(IBinder iBinder) {
        SurfaceControl.Transaction remove = this.finishTs.remove(iBinder);
        List<IBinder> remove2 = this.mergedInto.remove(iBinder);
        if (remove2 != null) {
            for (IBinder iBinder2 : remove2) {
                SurfaceControl.Transaction remove3 = this.finishTs.remove(iBinder2);
                this.claims.remove(iBinder2);
                if (remove3 != null) {
                    remove = remove3;
                }
            }
        }
        return remove;
    }

    private void reclaimMembers(SurfaceControl.Transaction transaction) {
        reclaimMembers(transaction, false);
    }

    private void reclaimMembers(SurfaceControl.Transaction transaction, boolean z) {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        boolean z2;
        if (this.live.isEmpty() && this.overlays.isEmpty()) {
            return;
        }
        Rect rect = this.geometry == null ? null : this.geometry.logical;
        if (rect == null) {
            return;
        }
        try {
            SurfaceControl.Transaction transaction2 = new SurfaceControl.Transaction();
            SurfaceControl.Transaction transaction3 = transaction != null ? transaction : transaction2;
            try {
                Iterator it = new ArrayList(this.live).iterator();
                boolean z3 = false;
                while (it.hasNext()) {
                    TaskBinding taskBinding = (TaskBinding) it.next();
                    if (taskBinding.lease == dev.duo.taskcore.TaskBinding.Lease.SURFACE_ATTACHED && (runningTaskInfo = (ActivityManager.RunningTaskInfo) this.getRunningTaskInfo.invoke(this.organizer, Integer.valueOf(taskBinding.origin.taskId))) != null && this.tokenAsBinder.invoke(this.infoToken.get(runningTaskInfo), new Object[0]) == taskBinding.origin.tokenBinder && ((Integer) this.infoMode.invoke(runningTaskInfo, new Object[0])).intValue() == 6 && this.infoParent.getInt(runningTaskInfo) == -1) {
                        SurfaceControl surfaceControl = (SurfaceControl) taskBinding.origin.leash;
                        SurfaceControl surfaceControl2 = (SurfaceControl) this.tvcSurface.get(taskBinding.controller);
                        if (surfaceControl != null && surfaceControl.isValid() && surfaceControl2 != null && surfaceControl2.isValid()) {
                            SurfaceControl.Transaction alpha = transaction3.reparent(surfaceControl, surfaceControl2).setPosition(surfaceControl, 0.0f, 0.0f).setScale(surfaceControl, 1.0f, 1.0f).setAlpha(surfaceControl, 1.0f);
                            if (!z && !TaskInfo.class.getField("isVisible").getBoolean(runningTaskInfo)) {
                                z2 = false;
                                alpha.setVisibility(surfaceControl, z2);
                                dev.duo.taskcore.Tx.windowCrop(transaction3, surfaceControl, rect.width(), rect.height());
                                z3 = true;
                            }
                            z2 = true;
                            alpha.setVisibility(surfaceControl, z2);
                            dev.duo.taskcore.Tx.windowCrop(transaction3, surfaceControl, rect.width(), rect.height());
                            z3 = true;
                        }
                    }
                }
                if ((placeOverlays(transaction3) | z3) && transaction == null) {
                    transaction2.apply();
                }
                transaction2.close();
            } finally {
            }
        } catch (ReflectiveOperationException e) {
            Log.e(TAG, "reclaim members failed", e);
        }
    }

    private void installNotificationSources() throws ReflectiveOperationException {
        Method declaredMethod;
        String[] strArr = {"StatusBarNotificationActivityStarter$$ExternalSyntheticLambda12", "StatusBarNotificationActivityStarterInjectorImpl$startNotificationIntentInjected$1"};
        int i = 0;
        while (i < 2) {
            Class<?> cls = Class.forName("com.android.systemui.statusbar.phone." + strArr[i], false, this.loader);
            final Field declaredField = cls.getDeclaredField(i == 0 ? "f$3" : "$intent");
            declaredField.setAccessible(true);
            if (i == 0) {
                declaredMethod = cls.getDeclaredMethod("startPendingIntent", Class.forName("android.view.RemoteAnimationAdapter", false, this.loader));
            } else {
                declaredMethod = cls.getDeclaredMethod("run", new Class[0]);
            }
            this.xposed.hook(declaredMethod).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda27
                public final Object intercept(XposedInterface.Chain chain) {
                    return dev.duo.taskcore.WorkspaceShell.this.m209x4dcd114b(declaredField, chain);
                }
            });
            i++;
        }
        Class<?> cls2 = Class.forName("com.android.systemui.statusbar.notification.collection.NotificationEntry", false, this.loader);
        final Field declaredField2 = cls2.getDeclaredField("mSbn");
        declaredField2.setAccessible(true);
        Class<?> cls3 = Class.forName("com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter", false, this.loader);
        this.xposed.hook(cls3.getDeclaredMethod("startNotificationIntentPublic", PendingIntent.class, Intent.class, cls2, Class.forName("com.android.systemui.statusbar.notification.row.ExpandableNotificationRow", false, this.loader), Boolean.TYPE, Boolean.TYPE, Boolean.TYPE)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda28
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m210xcba4cd4c(chain);
            }
        });
        this.xposed.hook(cls3.getDeclaredMethod("launchFullScreenIntent", cls2)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda29
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m211x497c894d(declaredField2, chain);
            }
        });
        Class<?> cls4 = Class.forName("android.content.IIntentSender", false, this.loader);
        final Method method = PendingIntent.class.getMethod("getTarget", new Class[0]);
        final Method method2 = IInterface.class.getMethod("asBinder", new Class[0]);
        final Method method3 = ActivityOptions.class.getMethod("fromBundle", Bundle.class);
        final Method method4 = ActivityOptions.class.getMethod("getLaunchCookie", new Class[0]);
        this.xposed.hook(Class.forName("android.app.IActivityManager$Stub$Proxy", false, this.loader).getDeclaredMethod("sendIntentSender", Class.forName("android.app.IApplicationThread", false, this.loader), cls4, IBinder.class, Integer.TYPE, Intent.class, String.class, Class.forName("android.content.IIntentReceiver", false, this.loader), String.class, Bundle.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda30
            public final Object intercept(XposedInterface.Chain chain) {
                return dev.duo.taskcore.WorkspaceShell.this.m213x452c014f(method2, method, method3, method4, chain);
            }
        });
    }

    /* renamed from: lambda$installNotificationSources$30$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m209x4dcd114b(Field field, XposedInterface.Chain chain) throws Throwable {
        SourceSend sourceSend = this.sendingSource.get();
        this.sendingSource.set(new SourceSend((PendingIntent) field.get(chain.getThisObject()), 1));
        try {
            Object proceed = chain.proceed();
            ThreadLocal<SourceSend> threadLocal = this.sendingSource;
            if (sourceSend == null) {
                threadLocal.remove();
            } else {
                threadLocal.set(sourceSend);
            }
            return proceed;
        } catch (Throwable th) {
            ThreadLocal<SourceSend> threadLocal2 = this.sendingSource;
            if (sourceSend == null) {
                threadLocal2.remove();
            } else {
                threadLocal2.set(sourceSend);
            }
            throw th;
        }
    }

    /* renamed from: lambda$installNotificationSources$31$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m210xcba4cd4c(XposedInterface.Chain chain) throws Throwable {
        Events events = this.events;
        if (this.activeEpoch == 0 || events == null || !((Boolean) chain.getArg(4)).booleanValue() || !((Boolean) chain.getArg(6)).booleanValue() || !events.ownsNotificationLaunch()) {
            return chain.proceed();
        }
        Object[] array = chain.getArgs().toArray();
        array[4] = false;
        return chain.proceed(array);
    }

    /* renamed from: lambda$installNotificationSources$32$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m211x497c894d(Field field, XposedInterface.Chain chain) throws Throwable {
        Notification notification = ((StatusBarNotification) field.get(chain.getArg(0))).getNotification();
        if (!"call".equals(notification.category) && !"alarm".equals(notification.category)) {
            return chain.proceed();
        }
        SourceSend sourceSend = this.sendingSource.get();
        this.sendingSource.set(new SourceSend(notification.fullScreenIntent, 2));
        try {
            Object proceed = chain.proceed();
            ThreadLocal<SourceSend> threadLocal = this.sendingSource;
            if (sourceSend == null) {
                threadLocal.remove();
            } else {
                threadLocal.set(sourceSend);
            }
            return proceed;
        } catch (Throwable th) {
            ThreadLocal<SourceSend> threadLocal2 = this.sendingSource;
            if (sourceSend == null) {
                threadLocal2.remove();
            } else {
                threadLocal2.set(sourceSend);
            }
            throw th;
        }
    }

    /* renamed from: lambda$installNotificationSources$34$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m213x452c014f(Method method, Method method2, Method method3, Method method4, XposedInterface.Chain chain) throws Throwable {
        SourceSend sourceSend = this.sendingSource.get();
        long j = this.activeEpoch;
        if (sourceSend != null && sourceSend.intent != null && j != 0) {
            IBinder iBinder = (IBinder) method.invoke(chain.getArg(1), new Object[0]);
            if (iBinder != method.invoke(method2.invoke(sourceSend.intent, new Object[0]), new Object[0])) {
                return chain.proceed();
            }
            Bundle bundle = (Bundle) chain.getArg(8);
            Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
            Object invoke = method3.invoke(null, bundle);
            IBinder iBinder2 = invoke != null ? (IBinder) method4.invoke(invoke, new Object[0]) : null;
            Binder binder = new Binder();
            try {
                this.server.registerSource(j, binder, iBinder, iBinder2, sourceSend.kind);
                bundle2.putBinder(dev.duo.taskcore.WorkspaceProtocol.SOURCE_KEY, binder);
                Object[] array = chain.getArgs().toArray();
                array[8] = bundle2;
                try {
                    Object proceed = chain.proceed(array);
                    try {
                        this.server.cancelSource(j, binder);
                    } catch (dev.duo.taskcore.WorkspaceSession.Refused e) {
                        Log.e(TAG, "notification source cleanup refused", e);
                    }
                    return proceed;
                } finally {
                }
            } catch (dev.duo.taskcore.WorkspaceSession.Refused e2) {
                Log.e(TAG, "notification source refused", e2);
                this.shell.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.taskcore.WorkspaceShell.this.m212xc754454e(e2);
                    }
                });
                return chain.proceed();
            }
        } else {
            return chain.proceed();
        }
    }

    /* renamed from: lambda$installNotificationSources$33$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ void m212xc754454e(dev.duo.taskcore.WorkspaceSession.Refused refused) {
        if (this.events != null) {
            this.events.external("notification source refused: " + refused.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSourceEvent(dev.duo.taskcore.WorkspaceProtocol.SourceEvent sourceEvent) {
        if (sourceEvent.epoch != this.activeEpoch || this.events == null) {
            return;
        }
        if (sourceEvent.event == 1) {
            if (this.handledSources.add(sourceEvent.request)) {
                this.events.sourceEvent(sourceEvent);
                if (sourceEvent.kind == 1 && sourceEvent.transition == null && sourceEvent.target != null && !isOwnedTask(sourceEvent.target.taskId)) {
                    try {
                        ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) this.getRunningTaskInfo.invoke(this.organizer, Integer.valueOf(sourceEvent.target.taskId));
                        if (runningTaskInfo != null && this.tokenAsBinder.invoke(this.infoToken.get(runningTaskInfo), new Object[0]) == sourceEvent.target.taskToken) {
                            if (this.events.adopt(runningTaskInfo.taskId, (runningTaskInfo.baseActivity != null ? runningTaskInfo.baseActivity : runningTaskInfo.topActivity).getPackageName())) {
                                this.events.adoptReady(runningTaskInfo.taskId);
                                return;
                            }
                            return;
                        }
                        return;
                    } catch (ReflectiveOperationException e) {
                        throw new IllegalStateException("notification result task", e);
                    }
                }
                return;
            }
            return;
        }
        this.events.sourceEvent(sourceEvent);
    }

    public void attachContext(Context context) {
        this.context = context;
        try {
            this.server = dev.duo.taskcore.WorkspaceProtocol.Client.connect();
            this.server.setSourceListener(new Executor() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda36
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    dev.duo.taskcore.WorkspaceShell.this.m177lambda$attachContext$35$devduotaskcoreWorkspaceShell(runnable);
                }
            }, new Consumer() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda37
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    dev.duo.taskcore.WorkspaceShell.this.onSourceEvent((dev.duo.taskcore.WorkspaceProtocol.SourceEvent) obj);
                }
            });
        } catch (ReflectiveOperationException e) {
            Log.e(TAG, "WMS binder unavailable", e);
        }
    }

    /* renamed from: lambda$attachContext$35$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ void m177lambda$attachContext$35$devduotaskcoreWorkspaceShell(Runnable runnable) {
        this.shell.post(runnable);
    }

    public void prepare(Events events, Rect rect) {
        this.events = events;
        this.geometry = new Geometry(rect);
        this.host = new WorkspaceHost(this.context, this.displayArea, this.geometry);
        final Rect rect2 = new Rect(this.geometry.logical);
        this.shell.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda42
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.WorkspaceShell.this.m215lambda$prepare$36$devduotaskcoreWorkspaceShell(rect2);
            }
        });
    }

    /* renamed from: lambda$prepare$36$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ void m215lambda$prepare$36$devduotaskcoreWorkspaceShell(Rect rect) {
        if (this.live.isEmpty()) {
            returnOrphans(rect);
        }
    }

    private void returnOrphans(Rect rect) {
        try {
            ArrayList arrayList = new ArrayList();
            Object obj = null;
            for (ActivityManager.RunningTaskInfo runningTaskInfo : ((ActivityManager) this.context.getSystemService(ActivityManager.class)).getRunningTasks(32)) {
                if (this.infoDisplay.getInt(runningTaskInfo) == 0 && this.infoParent.getInt(runningTaskInfo) == -1 && ((Integer) this.infoMode.invoke(runningTaskInfo, new Object[0])).intValue() == 6 && ((Integer) this.infoActivityType.invoke(runningTaskInfo, new Object[0])).intValue() == 1 && !TaskInfo.class.getField("isVisible").getBoolean(runningTaskInfo) && rect.equals(this.wcBounds.invoke(this.cfgWindow.get(this.taskConfig.get(runningTaskInfo)), new Object[0]))) {
                    Object obj2 = this.infoToken.get(runningTaskInfo);
                    if (obj == null) {
                        obj = this.wctNew.newInstance(new Object[0]);
                    }
                    this.wctMode.invoke(obj, obj2, 1);
                    this.wctBounds.invoke(obj, obj2, new Rect());
                    this.wctFocusable.invoke(obj, obj2, true);
                    this.wctBack.invoke(obj, obj2, false);
                    this.wctTrim.invoke(obj, obj2, true);
                    arrayList.add(runningTaskInfo.taskId + (runningTaskInfo.baseActivity == null ? "" : "(" + runningTaskInfo.baseActivity.getPackageName() + ")"));
                }
            }
            if (obj == null) {
                return;
            }
            this.startTransition.invoke(this.transitions, 6, obj, null);
            Log.w(TAG, "orphaned workbench tasks returned to fullscreen " + arrayList);
        } catch (ReflectiveOperationException | RuntimeException e) {
            Log.e(TAG, "orphaned workbench tasks not returned", e);
        }
    }

    public WorkspaceHost host() {
        return this.host;
    }

    public IBinder launch(Intent intent) throws ReflectiveOperationException {
        Binder binder = new Binder();
        ActivityOptions makeBasic = ActivityOptions.makeBasic();
        ActivityOptions.class.getMethod("setLaunchCookie", IBinder.class).invoke(makeBasic, binder);
        this.launching = binder;
        this.context.startActivity(intent.addFlags(268435456), makeBasic.toBundle());
        return binder;
    }

    private void deliverLaunched(int i) {
        IBinder iBinder = this.awaitedCookie;
        this.awaitedTask = -1;
        this.awaitedCookie = null;
        Events events = this.events;
        if (events == null || iBinder == null) {
            return;
        }
        events.launched(i, iBinder);
    }

    public void cancelLaunch(IBinder iBinder) {
        if (this.launching == iBinder) {
            this.launching = null;
        }
        if (this.awaitedCookie == iBinder) {
            int i = this.awaitedTask;
            this.awaitedCookie = null;
            this.awaitedTask = -1;
            if (i >= 0) {
                revealTask(i);
            }
        }
    }

    public static int[] pickTasks(Context context, Set<String> set) {
        int i;
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService(ActivityManager.class)).getRunningTasks(12);
        ArrayList arrayList = new ArrayList();
        try {
            Iterator<ActivityManager.RunningTaskInfo> it = runningTasks.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ActivityManager.RunningTaskInfo next = it.next();
                if (next.getClass().getField("displayId").getInt(next) == 0 && ((Integer) TaskInfo.class.getMethod("getWindowingMode", new Class[0]).invoke(next, new Object[0])).intValue() == 1 && ((Integer) TaskInfo.class.getMethod("getActivityType", new Class[0]).invoke(next, new Object[0])).intValue() == 1) {
                    String packageName = next.baseActivity == null ? null : next.baseActivity.getPackageName();
                    if (packageName != null && !set.contains(packageName) && !"com.android.systemui".equals(packageName)) {
                        if (arrayList.isEmpty() && !next.getClass().getField("isVisible").getBoolean(next)) {
                            return null;
                        }
                        arrayList.add(Integer.valueOf(next.taskId));
                        if (arrayList.size() == 5) {
                            break;
                        }
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            int size = arrayList.size();
            int[] iArr = new int[size];
            for (i = 0; i < size; i++) {
                iArr[i] = ((Integer) arrayList.get(i)).intValue();
            }
            return iArr;
        } catch (ReflectiveOperationException e) {
            Log.e(TAG, "task info unreadable", e);
            return null;
        }
    }

    public static String[] members(WorkspaceSession workspaceSession) {
        String[] strArr = new String[5];
        TaskBinding main = workspaceSession.main();
        int i = 0;
        if (main != null) {
            strArr[0] = main.origin.userId + ":" + main.origin.packageName;
        }
        while (i < 4) {
            TaskBinding slot = workspaceSession.slot(i);
            i++;
            strArr[i] = slot == null ? null : slot.origin.userId + ":" + slot.origin.packageName;
        }
        return strArr;
    }

    private boolean isOwnedTask(int i) {
        synchronized (this.owned) {
            for (Object obj : this.owned.keySet()) {
                try {
                    Object invoke = this.getPendingInfo.invoke(this.tvClass.getMethod("getController", new Class[0]).invoke(obj, new Object[0]), new Object[0]);
                    ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) this.tvClass.getMethod("getTaskInfo", new Class[0]).invoke(obj, new Object[0]);
                    if ((runningTaskInfo != null && runningTaskInfo.taskId == i) || (invoke != null && ((ActivityManager.RunningTaskInfo) invoke).taskId == i)) {
                        return true;
                    }
                } catch (ReflectiveOperationException e) {
                }
            }
            return false;
        }
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public Geometry geometry() {
        return this.geometry;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object[]] */
    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public dev.duo.taskcore.TaskBinding.Origin inspect(int i) throws dev.duo.taskcore.WorkspaceSession.Refused {
        int i2;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        String str;
        ComponentName componentName;
        try {
            Method method = this.getRunningTaskInfo;
            Object obj = this.organizer;
            i2 = new Object[]{Integer.valueOf(i)};
            runningTaskInfo = (ActivityManager.RunningTaskInfo) method.invoke(obj, i2);
        } catch (ReflectiveOperationException e) {
            e = e;
            i2 = i;
        }
        try {
            if (runningTaskInfo == null) {
                throw new dev.duo.taskcore.WorkspaceSession.Refused("task " + i + " not running");
            }
            SurfaceControl surfaceControl = (SurfaceControl) this.getTaskLeash.invoke(this.organizer, Integer.valueOf(i));
            Object obj2 = this.infoToken.get(runningTaskInfo);
            if (surfaceControl == null || !surfaceControl.isValid() || obj2 == null) {
                throw new dev.duo.taskcore.WorkspaceSession.Refused("task " + i + " has no leash/token");
            }
            if (((Integer) this.infoMode.invoke(runningTaskInfo, new Object[0])).intValue() != 1) {
                throw new dev.duo.taskcore.WorkspaceSession.Refused("task " + i + " not fullscreen");
            }
            if (((Integer) this.infoActivityType.invoke(runningTaskInfo, new Object[0])).intValue() != 1) {
                throw new dev.duo.taskcore.WorkspaceSession.Refused("task " + i + " not standard");
            }
            if (this.infoDisplay.getInt(runningTaskInfo) != 0) {
                throw new dev.duo.taskcore.WorkspaceSession.Refused("task " + i + " not on default display");
            }
            if (this.infoParent.getInt(runningTaskInfo) != -1) {
                throw new dev.duo.taskcore.WorkspaceSession.Refused("task " + i + " has a parent task");
            }
            if (!TaskInfo.class.getField("supportsMultiWindow").getBoolean(runningTaskInfo)) {
                throw new dev.duo.taskcore.WorkspaceSession.Refused("task " + i + " does not support multi-window");
            }
            Object obj3 = ((SparseArray) this.taskListeners.get(this.organizer)).get(i);
            if (obj3 != null) {
                throw new dev.duo.taskcore.WorkspaceSession.Refused("task " + i + " owned by " + obj3.getClass().getName());
            }
            Object invoke = this.getTaskListener.invoke(this.organizer, runningTaskInfo);
            String name = invoke == null ? "null" : invoke.getClass().getName();
            if (!name.endsWith("FullscreenTaskListener")) {
                throw new dev.duo.taskcore.WorkspaceSession.Refused("task " + i + " owner " + name);
            }
            if (runningTaskInfo.baseActivity != null) {
                componentName = runningTaskInfo.baseActivity;
            } else {
                if (runningTaskInfo.topActivity == null) {
                    str = "?";
                    return new dev.duo.taskcore.TaskBinding.Origin(i, this.infoUser.getInt(runningTaskInfo), 0, obj2, this.tokenAsBinder.invoke(obj2, new Object[0]), runningTaskInfo, surfaceControl, str, name);
                }
                componentName = runningTaskInfo.topActivity;
            }
            str = componentName.getPackageName();
            return new dev.duo.taskcore.TaskBinding.Origin(i, this.infoUser.getInt(runningTaskInfo), 0, obj2, this.tokenAsBinder.invoke(obj2, new Object[0]), runningTaskInfo, surfaceControl, str, name);
        } catch (ReflectiveOperationException e2) {
            e = e2;
            throw new dev.duo.taskcore.WorkspaceSession.Refused("inspect " + i2 + ": " + e);
        }
    }

    private dev.duo.taskcore.WorkspaceProtocol.Client server() throws dev.duo.taskcore.WorkspaceSession.Refused {
        if (this.server == null) {
            throw new dev.duo.taskcore.WorkspaceSession.Refused("WMS binder unavailable");
        }
        return this.server;
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public void serverOpen(long j) throws dev.duo.taskcore.WorkspaceSession.Refused {
        final int hashCode = Process.myUserHandle().hashCode();
        server().hello();
        server().call(1, j, new dev.duo.taskcore.WorkspaceProtocol.Client.Writer() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda34
            @Override // dev.duo.taskcore.WorkspaceProtocol.Client.Writer
            public final void write(Parcel parcel) {
                dev.duo.taskcore.WorkspaceShell.lambda$serverOpen$37(hashCode, parcel);
            }
        }, null);
        this.activeEpoch = j;
        this.handledSources.clear();
    }

    static /* synthetic */ void lambda$serverOpen$37(int i, Parcel parcel) {
        parcel.writeInt(i);
        parcel.writeInt(0);
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public dev.duo.taskcore.TaskBinding.Snapshot serverSnapshot(long j, final TaskBinding taskBinding) throws dev.duo.taskcore.WorkspaceSession.Refused {
        return (dev.duo.taskcore.TaskBinding.Snapshot) server().call(2, j, new dev.duo.taskcore.WorkspaceProtocol.Client.Writer() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda21
            @Override // dev.duo.taskcore.WorkspaceProtocol.Client.Writer
            public final void write(Parcel parcel) {
                dev.duo.taskcore.WorkspaceShell.lambda$serverSnapshot$38(dev.duo.taskcore.TaskBinding.this, parcel);
            }
        }, new dev.duo.taskcore.WorkspaceProtocol.Client.Reader() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda22
            @Override // dev.duo.taskcore.WorkspaceProtocol.Client.Reader
            public final Object read(Parcel parcel) {
                return dev.duo.taskcore.TaskBinding.Snapshot.read(parcel);
            }
        });
    }

    static /* synthetic */ void lambda$serverSnapshot$38(TaskBinding taskBinding, Parcel parcel) {
        parcel.writeInt(taskBinding.origin.taskId);
        parcel.writeStrongBinder((IBinder) taskBinding.origin.tokenBinder);
        parcel.writeInt(taskBinding.origin.userId);
        parcel.writeInt(taskBinding.origin.displayId);
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public void serverLayout(long j, final int i, TaskBinding taskBinding, TaskBinding[] taskBindingArr) throws dev.duo.taskcore.WorkspaceSession.Refused {
        server().call(3, j, new dev.duo.taskcore.WorkspaceProtocol.Client.Writer() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda11
            @Override // dev.duo.taskcore.WorkspaceProtocol.Client.Writer
            public final void write(Parcel parcel) {
                parcel.writeInt(i);
            }
        }, null);
        if (this.server.lastRevision != i) {
            throw new dev.duo.taskcore.WorkspaceSession.Refused("layout revision " + this.server.lastRevision + " != " + i);
        }
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public void serverBeginReturn(long j, final String str) {
        try {
            server().call(4, j, new dev.duo.taskcore.WorkspaceProtocol.Client.Writer() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda31
                @Override // dev.duo.taskcore.WorkspaceProtocol.Client.Writer
                public final void write(Parcel parcel) {
                    parcel.writeString(str);
                }
            }, null);
        } catch (dev.duo.taskcore.WorkspaceSession.Refused e) {
            Log.w(TAG, "begin return not published: " + e.getMessage());
        }
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public void serverRelease(long j, final TaskBinding taskBinding) throws dev.duo.taskcore.WorkspaceSession.Refused {
        server().call(8, j, new dev.duo.taskcore.WorkspaceProtocol.Client.Writer() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda8
            @Override // dev.duo.taskcore.WorkspaceProtocol.Client.Writer
            public final void write(Parcel parcel) {
                dev.duo.taskcore.WorkspaceProtocol.writeRelease(parcel, r0.origin.taskId, (IBinder) dev.duo.taskcore.TaskBinding.this.origin.tokenBinder);
            }
        }, null);
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public String serverFinishReturn(long j) {
        try {
            server().call(5, j, null, null);
            this.activeEpoch = 0L;
            this.handledSources.clear();
            Iterator it = new ArrayList(this.hiddenUntilAttached).iterator();
            while (it.hasNext()) {
                revealTask(((Integer) it.next()).intValue());
            }
            this.claims.clear();
            return null;
        } catch (dev.duo.taskcore.WorkspaceSession.Refused e) {
            return e.getMessage();
        }
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public void createHost(final TaskBinding taskBinding, final dev.duo.taskcore.WorkspaceSession.Done done) {
        final Handler handler = this.shell;
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        final dev.duo.taskcore.WorkspaceSession.Done done2 = new dev.duo.taskcore.WorkspaceSession.Done() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda45
            @Override // dev.duo.taskcore.WorkspaceSession.Done
            public final void done(boolean z, String str) {
                dev.duo.taskcore.WorkspaceShell.lambda$createHost$43(atomicBoolean, handler, done, z, str);
            }
        };
        this.main.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.WorkspaceShell.this.m179lambda$createHost$47$devduotaskcoreWorkspaceShell(taskBinding, done2, handler);
            }
        });
    }

    static /* synthetic */ void lambda$createHost$43(AtomicBoolean atomicBoolean, Handler handler, final dev.duo.taskcore.WorkspaceSession.Done done, final boolean z, final String str) {
        if (atomicBoolean.compareAndSet(false, true)) {
            handler.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.WorkspaceSession.Done.this.done(z, str);
                }
            });
        }
    }

    /* renamed from: lambda$createHost$47$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ void m179lambda$createHost$47$devduotaskcoreWorkspaceShell(final TaskBinding taskBinding, final dev.duo.taskcore.WorkspaceSession.Done done, final Handler handler) {
        try {
            Object newInstance = this.tvcNew.newInstance(this.context, this.organizer, this.taskViewTransitions);
            Object newInstance2 = this.tvNew.newInstance(this.context, this.taskViewTransitions, newInstance);
            taskBinding.controller = newInstance;
            taskBinding.taskView = newInstance2;
            this.owned.put(newInstance2, new Rect(this.geometry.logical));
            Object newProxyInstance = Proxy.newProxyInstance(this.loader, new Class[]{this.listenerClass}, new InvocationHandler() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda12
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method, Object[] objArr) {
                    return dev.duo.taskcore.WorkspaceShell.this.m178lambda$createHost$45$devduotaskcoreWorkspaceShell(done, handler, taskBinding, obj, method, objArr);
                }
            });
            Method method = this.setListener;
            Handler handler2 = this.main;
            Objects.requireNonNull(handler2);
            method.invoke(newInstance2, new Runnable() { public void run() { } }, newProxyInstance);
            this.host.addTask(taskBinding, (View) newInstance2);
            this.main.postDelayed(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.WorkspaceSession.Done.this.done(false, "surface not created in 3000ms");
                }
            }, HOST_READY_MS);
        } catch (Throwable th) {
            Log.e(TAG, "create host " + taskBinding, th);
            done.done(false, String.valueOf(th));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: lambda$createHost$45$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m178lambda$createHost$45$devduotaskcoreWorkspaceShell(dev.duo.taskcore.WorkspaceSession.Done done, Handler handler, TaskBinding taskBinding, Object obj, Method method, Object[] objArr) throws Throwable {
        char c;
        String name = method.getName();
        switch (name.hashCode()) {
            case -1776922004:
                if (name.equals("toString")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1756535783:
                if (name.equals("onTaskRemovalStarted")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1295482945:
                if (name.equals("equals")) {
                    c = 3;
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
            case 1713123189:
                if (name.equals("onInitialized")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                done.done(true, "initialized");
                return null;
            case 1:
                final int intValue = ((Integer) objArr[0]).intValue();
                final Events events = this.events;
                if (events != null) {
                    handler.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda23
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.taskcore.WorkspaceShell.Events.this.taskGone(intValue);
                        }
                    });
                    return null;
                }
                return null;
            case 2:
                return Integer.valueOf(System.identityHashCode(obj));
            case 3:
                return Boolean.valueOf(obj == objArr[0]);
            case 4:
                return "TaskCoreListener#" + taskBinding.origin.taskId;
            default:
                return null;
        }
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public void takeOwner(TaskBinding taskBinding) throws dev.duo.taskcore.WorkspaceSession.Refused {
        try {
            this.addListenerForTaskId.invoke(this.organizer, taskBinding.controller, Integer.valueOf(taskBinding.origin.taskId));
            try {
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) this.getRunningTaskInfo.invoke(this.organizer, Integer.valueOf(taskBinding.origin.taskId));
                Object invoke = runningTaskInfo == null ? null : this.getTaskListener.invoke(this.organizer, runningTaskInfo);
                boolean z = false;
                if (invoke != taskBinding.controller) {
                    if (invoke != null && invoke.getClass().getName().equals(taskBinding.origin.originalOwner)) {
                        z = true;
                    }
                    throw new dev.duo.taskcore.WorkspaceSession.Refused("owner not transferred (owner now " + (invoke != null ? invoke.getClass().getName() : null) + ")", true ^ z);
                }
                try {
                    ActivityManager.RunningTaskInfo runningTaskInfo2 = (ActivityManager.RunningTaskInfo) this.getPendingInfo.invoke(taskBinding.controller, new Object[0]);
                    if (runningTaskInfo2 == null || this.tokenAsBinder.invoke(this.infoToken.get(runningTaskInfo2), new Object[0]) != taskBinding.origin.tokenBinder) {
                        throw new dev.duo.taskcore.WorkspaceSession.Refused("pending info does not match task token", true);
                    }
                } catch (ReflectiveOperationException e) {
                    throw new dev.duo.taskcore.WorkspaceSession.Refused("owner check: " + e, true);
                }
            } catch (ReflectiveOperationException e2) {
                throw new dev.duo.taskcore.WorkspaceSession.Refused("owner read: " + e2, true);
            }
        } catch (InvocationTargetException e3) {
            if (e3.getCause() instanceof IllegalArgumentException) {
                throw new dev.duo.taskcore.WorkspaceSession.Refused("addListenerForTaskId: " + e3.getCause());
            }
            throw new dev.duo.taskcore.WorkspaceSession.Refused("addListenerForTaskId: " + e3.getCause(), true);
        } catch (ReflectiveOperationException e4) {
            throw new dev.duo.taskcore.WorkspaceSession.Refused("addListenerForTaskId: " + e4);
        }
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public void attach(TaskBinding taskBinding, dev.duo.taskcore.WorkspaceSession.Done done) {
        try {
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) this.getRunningTaskInfo.invoke(this.organizer, Integer.valueOf(taskBinding.origin.taskId));
            SurfaceControl surfaceControl = (SurfaceControl) this.getTaskLeash.invoke(this.organizer, Integer.valueOf(taskBinding.origin.taskId));
            if (runningTaskInfo != null && surfaceControl != null && this.tokenAsBinder.invoke(this.infoToken.get(runningTaskInfo), new Object[0]) == taskBinding.origin.tokenBinder) {
                Object obj = taskBinding.origin.token;
                Object newInstance = this.wctNew.newInstance(new Object[0]);
                this.wctMode.invoke(newInstance, obj, 6);
                this.wctBounds.invoke(newInstance, obj, new Rect(this.geometry.logical));
                this.wctHidden.invoke(newInstance, obj, false);
                this.wctFocusable.invoke(newInstance, obj, true);
                this.wctReorder.invoke(newInstance, obj, true);
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                boolean booleanValue = ((Boolean) this.prepareOpenAnimation.invoke(this.taskViewTransitions, taskBinding.controller, true, transaction, null, runningTaskInfo, surfaceControl, newInstance)).booleanValue();
                this.wctBack.invoke(newInstance, obj, false);
                transaction.apply();
                if (!booleanValue) {
                    done.done(false, "TaskView surface not ready in prepareOpenAnimation");
                    return;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(taskBinding);
                track(this.startTransition.invoke(this.transitions, 6, newInstance, this.handlerProxy), new Pending(false, arrayList, done));
                return;
            }
            done.done(false, "task changed before attach");
        } catch (Throwable th) {
            Log.e(TAG, "attach " + taskBinding, th);
            done.done(false, String.valueOf(th));
        }
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public void giveBack(List<TaskBinding> list, TaskBinding taskBinding, dev.duo.taskcore.WorkspaceSession.Done done) {
        giveBack(list, taskBinding, false, done);
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public void giveBackInPlace(List<TaskBinding> list, TaskBinding taskBinding, dev.duo.taskcore.WorkspaceSession.Done done) {
        giveBack(list, taskBinding, true, done);
    }

    private void giveBack(List<TaskBinding> list, TaskBinding taskBinding, boolean z, dev.duo.taskcore.WorkspaceSession.Done done) {
        try {
            Object newInstance = this.wctNew.newInstance(new Object[0]);
            ArrayList arrayList = new ArrayList();
            for (TaskBinding taskBinding2 : list) {
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) this.getRunningTaskInfo.invoke(this.organizer, Integer.valueOf(taskBinding2.origin.taskId));
                if (runningTaskInfo != null && this.tokenAsBinder.invoke(this.infoToken.get(runningTaskInfo), new Object[0]) == taskBinding2.origin.tokenBinder) {
                    Object invoke = this.getTaskListener.invoke(this.organizer, runningTaskInfo);
                    int intValue = ((Integer) this.infoMode.invoke(runningTaskInfo, new Object[0])).intValue();
                    if (intValue == 6 && this.infoParent.getInt(runningTaskInfo) == -1 && this.infoDisplay.getInt(runningTaskInfo) == taskBinding2.origin.displayId && this.infoUser.getInt(runningTaskInfo) == taskBinding2.origin.userId && invoke == taskBinding2.controller) {
                        Object obj = taskBinding2.origin.token;
                        dev.duo.taskcore.TaskBinding.Snapshot snapshot = taskBinding2.snapshot;
                        this.wctMode.invoke(newInstance, obj, Integer.valueOf(snapshot.windowingMode));
                        this.wctBounds.invoke(newInstance, obj, snapshot.bounds == null ? new Rect() : new Rect(snapshot.bounds));
                        this.wctFocusable.invoke(newInstance, obj, Boolean.valueOf(snapshot.focusable));
                        this.wctHidden.invoke(newInstance, obj, Boolean.valueOf(snapshot.hidden));
                        this.wctBack.invoke(newInstance, obj, Boolean.valueOf(snapshot.interceptBack));
                        this.wctTrim.invoke(newInstance, obj, Boolean.valueOf(snapshot.trimmable));
                        if (taskBinding2 != taskBinding && !z) {
                            this.wctReorder.invoke(newInstance, obj, false);
                        }
                        arrayList.add(taskBinding2);
                    }
                    if (invoke == taskBinding2.controller && returnedByWm(taskBinding2, runningTaskInfo)) {
                        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                        try {
                            if (restoreLeash(transaction, taskBinding2, runningTaskInfo)) {
                                transaction.apply();
                            }
                            transaction.close();
                        } finally {
                        }
                    }
                    taskBinding2.handedOver = true;
                    Log.w(TAG, taskBinding2 + " changed by the system (mode " + intValue + ", parent " + this.infoParent.getInt(runningTaskInfo) + ", display " + this.infoDisplay.getInt(runningTaskInfo) + ", owner " + (invoke == null ? null : invoke.getClass().getName()) + "): not overwritten");
                }
            }
            if (taskBinding != null && arrayList.contains(taskBinding)) {
                this.wctReorder.invoke(newInstance, taskBinding.origin.token, true);
            }
            if (arrayList.isEmpty()) {
                done.done(true, "nothing left under this lease to give back");
            } else {
                track(this.startTransition.invoke(this.transitions, 6, newInstance, this.handlerProxy), new Pending(true, arrayList, done));
            }
        } catch (Throwable th) {
            Log.e(TAG, "give back " + list, th);
            done.done(false, String.valueOf(th));
        }
    }

    private void keepMembersOnTop(Object obj) throws ReflectiveOperationException {
        TaskBinding taskBinding = this.focusedMain;
        ArrayList<TaskBinding> arrayList = new ArrayList();
        for (TaskBinding taskBinding2 : this.live) {
            if (taskBinding2.lease == dev.duo.taskcore.TaskBinding.Lease.SURFACE_ATTACHED && taskBinding2 != taskBinding) {
                arrayList.add(taskBinding2);
            }
        }
        if (taskBinding != null && this.live.contains(taskBinding) && taskBinding.lease == dev.duo.taskcore.TaskBinding.Lease.SURFACE_ATTACHED) {
            arrayList.add(taskBinding);
        }
        for (TaskBinding taskBinding3 : arrayList) {
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) this.getRunningTaskInfo.invoke(this.organizer, Integer.valueOf(taskBinding3.origin.taskId));
            if (runningTaskInfo != null && this.tokenAsBinder.invoke(this.infoToken.get(runningTaskInfo), new Object[0]) == taskBinding3.origin.tokenBinder && ((Integer) this.infoMode.invoke(runningTaskInfo, new Object[0])).intValue() == 6 && this.infoParent.getInt(runningTaskInfo) == -1) {
                this.wctReorder.invoke(obj, taskBinding3.origin.token, true);
            }
        }
    }

    private void track(final Object obj, final Pending pending) {
        if (obj == null) {
            pending.report(false, "startTransition returned null");
        } else {
            this.pending.put(obj, pending);
            this.shell.postDelayed(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda43
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.WorkspaceShell.this.m221lambda$track$48$devduotaskcoreWorkspaceShell(obj, pending);
                }
            }, TRANSITION_MS);
        }
    }

    /* renamed from: lambda$track$48$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ void m221lambda$track$48$devduotaskcoreWorkspaceShell(Object obj, Pending pending) {
        if (this.pending.get(obj) == pending) {
            pending.timeout("transition not ready in 5000ms");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private Object onHandler(Method method, Object[] objArr) throws Throwable {
        char c;
        String name = method.getName();
        switch (name.hashCode()) {
            case -1776922004:
                if (name.equals("toString")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -1436557156:
                if (name.equals("onTransitionConsumed")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1295482945:
                if (name.equals("equals")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -1252600276:
                if (name.equals("mergeAnimation")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -602796528:
                if (name.equals("getHandlerForTakeover")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 147696667:
                if (name.equals("hashCode")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 399571913:
                if (name.equals("takeOverAnimation")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 764167490:
                if (name.equals("startAnimation")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1673289543:
                if (name.equals("handleRequest")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1686304659:
                if (name.equals("handleRequestOnly")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1879460237:
                if (name.equals("canHandleTransition")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1999276837:
                if (name.equals("getTransitionType")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                boolean z = objArr.length == 6;
                return Boolean.valueOf(startAnimation((IBinder) objArr[0], objArr[1], (SurfaceControl.Transaction) objArr[z ? (char) 3 : (char) 2], (SurfaceControl.Transaction) objArr[z ? (char) 4 : (char) 3], objArr[z ? (char) 5 : (char) 4]));
            case 1:
                this.claims.remove(objArr[0]);
                this.overlayClaims.remove(objArr[0]);
                Pending remove = this.pending.remove(objArr[0]);
                if (remove == null) {
                    remove = this.remoteRestores.remove(objArr[0]);
                }
                if (remove != null) {
                    if (remove.remoteHandler != null) {
                        this.oneShotConsumed.invoke(remove.remoteHandler, objArr[0], objArr[1], objArr[2]);
                        GroupMotion groupMotion = this.groupMotion;
                        if (groupMotion != null && groupMotion.restore && groupMotion.token == objArr[0]) {
                            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                            try {
                                SurfaceControl.Transaction transaction2 = objArr[2] == null ? transaction : (SurfaceControl.Transaction) objArr[2];
                                groupMotion.host.finishSystemAnimation(transaction2, this.displayArea, null);
                                transaction2.reparent(groupMotion.leash, null);
                                if (objArr[2] == null) {
                                    transaction.apply();
                                }
                                transaction.close();
                                this.groupMotion = null;
                                groupMotion.leash.release();
                            } finally {
                            }
                        }
                        closeRemoteInfo(remove);
                    }
                    String str = ((Boolean) objArr[1]).booleanValue() ? "transition aborted" : "transition consumed by another handler";
                    if (!remove.giveBack) {
                        m222lambda$verifyAttach$49$devduotaskcoreWorkspaceShell(remove, str, SystemClock.uptimeMillis() + TRANSITION_MS);
                    } else {
                        m223lambda$verifyReturn$50$devduotaskcoreWorkspaceShell(remove, str, SystemClock.uptimeMillis() + TRANSITION_MS);
                    }
                }
                return null;
            case 2:
                Pending pending = this.remoteRestores.get((IBinder) objArr[4]);
                if (pending != null) {
                    this.oneShotMerge.invoke(pending.remoteHandler, objArr);
                }
                return null;
            case 3:
            case 4:
                if (!this.claims.containsKey((IBinder) objArr[0]) && !this.overlayClaims.containsKey((IBinder) objArr[0])) {
                    return null;
                }
                try {
                    Object newInstance = this.wctNew.newInstance(new Object[0]);
                    if (this.claims.containsKey((IBinder) objArr[0])) {
                        keepMembersOnTop(newInstance);
                    }
                    if (!"handleRequest".equals(method.getName())) {
                        newInstance = this.requestResultNew.newInstance(newInstance, this.handlerProxy);
                    }
                    return newInstance;
                } catch (ReflectiveOperationException | RuntimeException e) {
                    Log.e(TAG, "claim of " + objArr[0] + " failed: left to the system", e);
                    this.claims.remove(objArr[0]);
                    this.overlayClaims.remove(objArr[0]);
                    return null;
                }
            case 5:
                return null;
            case dev.duo.taskcore.WorkspaceProtocol.QUERY /* 6 */:
            case 7:
                return Boolean.FALSE;
            case dev.duo.taskcore.WorkspaceProtocol.RELEASE_TASK /* 8 */:
                return -1;
            case dev.duo.taskcore.WorkspaceProtocol.REGISTER_SOURCE /* 9 */:
                return Integer.valueOf(System.identityHashCode(this.handlerProxy));
            case dev.duo.taskcore.WorkspaceProtocol.CANCEL_SOURCE /* 10 */:
                return Boolean.valueOf(objArr[0] == this.handlerProxy);
            case dev.duo.taskcore.WorkspaceProtocol.LOOKUP_SOURCE /* 11 */:
                return "TaskCoreTransitionHandler";
            default:
                return null;
        }
    }

    private boolean placeIfApplied(SurfaceControl.Transaction transaction, TaskBinding taskBinding, ActivityManager.RunningTaskInfo runningTaskInfo) throws ReflectiveOperationException {
        Rect rect = this.geometry == null ? null : this.geometry.logical;
        Rect rect2 = (Rect) this.wcBounds.invoke(this.cfgWindow.get(this.taskConfig.get(runningTaskInfo)), new Object[0]);
        if (rect == null || ((Integer) this.infoMode.invoke(runningTaskInfo, new Object[0])).intValue() != 6 || !rect.equals(rect2)) {
            return false;
        }
        SurfaceControl surfaceControl = (SurfaceControl) taskBinding.origin.leash;
        SurfaceControl surfaceControl2 = (SurfaceControl) this.tvcSurface.get(taskBinding.controller);
        if (surfaceControl == null || !surfaceControl.isValid() || surfaceControl2 == null || !surfaceControl2.isValid()) {
            return false;
        }
        transaction.reparent(surfaceControl, surfaceControl2).setPosition(surfaceControl, 0.0f, 0.0f).setScale(surfaceControl, 1.0f, 1.0f).setAlpha(surfaceControl, 1.0f).setVisibility(surfaceControl, true);
        dev.duo.taskcore.Tx.windowCrop(transaction, surfaceControl, rect.width(), rect.height());
        this.live.add(taskBinding);
        this.hiddenUntilAttached.remove(Integer.valueOf(taskBinding.origin.taskId));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: verifyAttach, reason: merged with bridge method [inline-methods] */
    public void m222lambda$verifyAttach$49$devduotaskcoreWorkspaceShell(final Pending pending, final String str, final long j) {
        String str2;
        ReflectiveOperationException reflectiveOperationException;
        Throwable th;
        Rect rect = this.geometry == null ? null : this.geometry.logical;
        ArrayList arrayList = new ArrayList();
        try {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                for (TaskBinding taskBinding : pending.members) {
                    try {
                        if (!released(taskBinding)) {
                            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) this.getRunningTaskInfo.invoke(this.organizer, Integer.valueOf(taskBinding.origin.taskId));
                            if (runningTaskInfo != null && this.tokenAsBinder.invoke(this.infoToken.get(runningTaskInfo), new Object[0]) == taskBinding.origin.tokenBinder) {
                                Rect rect2 = (Rect) this.wcBounds.invoke(this.cfgWindow.get(this.taskConfig.get(runningTaskInfo)), new Object[0]);
                                if (((Integer) this.infoMode.invoke(runningTaskInfo, new Object[0])).intValue() == 6 && rect != null && rect.equals(rect2)) {
                                    SurfaceControl surfaceControl = (SurfaceControl) taskBinding.origin.leash;
                                    SurfaceControl surfaceControl2 = (SurfaceControl) this.tvcSurface.get(taskBinding.controller);
                                    if (surfaceControl != null && surfaceControl.isValid() && surfaceControl2 != null && surfaceControl2.isValid()) {
                                        transaction.reparent(surfaceControl, surfaceControl2).setPosition(surfaceControl, 0.0f, 0.0f).setScale(surfaceControl, 1.0f, 1.0f).setAlpha(surfaceControl, 1.0f).setVisibility(surfaceControl, true);
                                        dev.duo.taskcore.Tx.windowCrop(transaction, surfaceControl, rect.width(), rect.height());
                                    }
                                    arrayList.add(taskBinding + " surface gone");
                                }
                                arrayList.add(taskBinding + " not applied yet");
                            }
                            arrayList.add(taskBinding + " vanished");
                        }
                    } catch (Throwable th2) {
                        throw th2;
                        str2 = str;
                        try {
                            try {
                                transaction.close();
                                throw th;
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                                throw th;
                            }
                        } catch (ReflectiveOperationException e) {
                            e = e;
                            reflectiveOperationException = e;
                            pending.finalResult(false, str2 + "; task state unreadable: " + reflectiveOperationException);
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    transaction.close();
                    if (SystemClock.uptimeMillis() >= j) {
                        pending.finalResult(false, str + "; " + String.join("; ", arrayList));
                        return;
                    } else {
                        this.shell.postDelayed(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda7
                            @Override // java.lang.Runnable
                            public final void run() {
                                dev.duo.taskcore.WorkspaceShell.this.m222lambda$verifyAttach$49$devduotaskcoreWorkspaceShell(pending, str, j);
                            }
                        }, 50L);
                        return;
                    }
                }
                transaction.apply();
                for (TaskBinding taskBinding2 : pending.members) {
                    if (!released(taskBinding2)) {
                        this.live.add(taskBinding2);
                        this.hiddenUntilAttached.remove(Integer.valueOf(taskBinding2.origin.taskId));
                    }
                }
                pending.finalResult(true, "attached in another transition (" + str + ")");
                try {
                    transaction.close();
                } catch (ReflectiveOperationException e2) {
                    reflectiveOperationException = e2;
                    str2 = str;
                    pending.finalResult(false, str2 + "; task state unreadable: " + reflectiveOperationException);
                }
            } catch (Throwable th4) {
                str2 = str;
                throw th4;
            }
        } catch (ReflectiveOperationException e3) {
            e = e3;
            str2 = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: verifyReturn, reason: merged with bridge method [inline-methods] */
    public void m223lambda$verifyReturn$50$devduotaskcoreWorkspaceShell(final Pending pending, final String str, final long j) {
        StringBuilder append;
        String join;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        try {
            String stillLeased = stillLeased(pending.members);
            if (stillLeased != null) {
                if (SystemClock.uptimeMillis() >= j) {
                    pending.finalResult(false, str + "; " + stillLeased);
                    return;
                } else {
                    this.shell.postDelayed(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.taskcore.WorkspaceShell.this.m223lambda$verifyReturn$50$devduotaskcoreWorkspaceShell(pending, str, j);
                        }
                    }, 50L);
                    return;
                }
            }
            ArrayList arrayList = new ArrayList();
            try {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    for (TaskBinding taskBinding : pending.members) {
                        if (!released(taskBinding) && (runningTaskInfo = (ActivityManager.RunningTaskInfo) this.getRunningTaskInfo.invoke(this.organizer, Integer.valueOf(taskBinding.origin.taskId))) != null && this.tokenAsBinder.invoke(this.infoToken.get(runningTaskInfo), new Object[0]) == taskBinding.origin.tokenBinder) {
                            if (returnedByWm(taskBinding, runningTaskInfo) && !restoreLeash(transaction, taskBinding, runningTaskInfo)) {
                                arrayList.add(taskBinding + " leash could not be restored");
                            }
                        }
                    }
                    transaction.apply();
                    transaction.close();
                } finally {
                }
            } catch (ReflectiveOperationException e) {
                arrayList.add("task state unreadable: " + e);
            }
            boolean isEmpty = arrayList.isEmpty();
            if (arrayList.isEmpty()) {
                append = new StringBuilder().append("returned in another transition (").append(str);
                join = ")";
            } else {
                append = new StringBuilder().append(str).append("; ");
                join = String.join("; ", arrayList);
            }
            pending.finalResult(isEmpty, append.append(join).toString());
        } catch (ReflectiveOperationException e2) {
            pending.finalResult(false, str + "; task state unreadable: " + e2);
        }
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public void bringToFront(TaskBinding taskBinding, TaskBinding[] taskBindingArr, Object obj, dev.duo.taskcore.WorkspaceSession.Done done) {
        int i;
        try {
            Object newInstance = this.wctNew.newInstance(new Object[0]);
            ArrayList arrayList = new ArrayList();
            for (TaskBinding taskBinding2 : taskBindingArr) {
                if (taskBinding2 != null && taskBinding2.lease == dev.duo.taskcore.TaskBinding.Lease.SURFACE_ATTACHED) {
                    arrayList.add(taskBinding2);
                }
            }
            if (taskBinding != null && taskBinding.lease == dev.duo.taskcore.TaskBinding.Lease.SURFACE_ATTACHED) {
                arrayList.add(taskBinding);
            }
            if (arrayList.isEmpty()) {
                done.done(true, "empty workbench");
                return;
            }
            Iterator it = arrayList.iterator();
            while (true) {
                i = 6;
                if (!it.hasNext()) {
                    break;
                }
                TaskBinding taskBinding3 = (TaskBinding) it.next();
                this.wctMode.invoke(newInstance, taskBinding3.origin.token, 6);
                this.wctBounds.invoke(newInstance, taskBinding3.origin.token, new Rect(this.geometry.logical));
                this.wctHidden.invoke(newInstance, taskBinding3.origin.token, false);
                this.wctReorder.invoke(newInstance, taskBinding3.origin.token, true);
            }
            Pending pending = new Pending(false, arrayList, done);
            pending.primary = taskBinding;
            if (obj != null) {
                pending.remoteHandler = this.oneShotNew.newInstance(this.mainExecutor.get(this.transitions), obj);
            }
            Method method = this.startTransition;
            Object obj2 = this.transitions;
            if (obj != null) {
                i = 3;
            }
            IBinder iBinder = (IBinder) method.invoke(obj2, Integer.valueOf(i), newInstance, this.handlerProxy);
            if (pending.remoteHandler != null) {
                this.oneShotToken.set(pending.remoteHandler, iBinder);
            }
            track(iBinder, pending);
        } catch (Throwable th) {
            Log.e(TAG, "bring to front", th);
            done.done(false, String.valueOf(th));
        }
    }

    private IBinder groupImagePeer() throws IllegalAccessException {
        Object obj = this.launcherService;
        IInterface iInterface = obj == null ? null : (IInterface) this.launcherProxyField.get(obj);
        if (iInterface == null) {
            throw new IllegalStateException("launcher image peer is not connected");
        }
        return iInterface.asBinder();
    }

    private void publishGroupFrame() {
        WorkspaceHost workspaceHost = this.host;
        List<Integer> list = this.recentsGroup;
        if (workspaceHost == null || list == null || list.isEmpty() || this.activeEpoch == 0 || this.focusedMain == null) {
            return;
        }
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        HardwareBuffer hardwareBuffer = null;
        try {
            try {
                Object invoke = Class.forName("android.window.ScreenCaptureInternal").getMethod("captureLayers", SurfaceControl.class, Rect.class, Float.TYPE).invoke(null, workspaceHost.root(), new Rect(this.geometry.display), Float.valueOf(Math.min(1.0f, 1000.0f / Math.max(r5.width(), r5.height()))));
                Log.i(TAG, "workbench capture on shell thread " + ((SystemClock.elapsedRealtimeNanos() - elapsedRealtimeNanos) / 1000) + "us");
                if (invoke == null) {
                    throw new IllegalStateException("workbench layer capture returned null");
                }
                final HardwareBuffer hardwareBuffer2 = (HardwareBuffer) invoke.getClass().getMethod("getHardwareBuffer", new Class[0]).invoke(invoke, new Object[0]);
                try {
                    try {
                        if (hardwareBuffer2 == null) {
                            throw new IllegalStateException("workbench capture has no buffer");
                        }
                        final ColorSpace colorSpace = (ColorSpace) invoke.getClass().getMethod("getColorSpace", new Class[0]).invoke(invoke, new Object[0]);
                        final long j = this.activeEpoch;
                        final long j2 = this.imageFrame + 1;
                        this.imageFrame = j2;
                        this.imageEpoch = j;
                        int size = list.size();
                        final int[] iArr = new int[size];
                        for (int i = 0; i < size; i++) {
                            iArr[i] = list.get(i).intValue();
                        }
                        final int i2 = this.focusedMain.origin.taskId;
                        final IBinder groupImagePeer = groupImagePeer();
                        imageThread().post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda35
                            @Override // java.lang.Runnable
                            public final void run() {
                                dev.duo.taskcore.WorkspaceShell.this.m216lambda$publishGroupFrame$51$devduotaskcoreWorkspaceShell(groupImagePeer, j, j2, iArr, i2, hardwareBuffer2, colorSpace);
                            }
                        });
                    } catch (LinkageError | ReflectiveOperationException | RuntimeException e) {
                        e = e;
                        hardwareBuffer = hardwareBuffer2;
                        Log.e(TAG, "workbench image capture failed", e);
                        if (hardwareBuffer != null) {
                            hardwareBuffer.close();
                        }
                    }
                } catch (Throwable th) {

                    hardwareBuffer = hardwareBuffer2;
                    if (hardwareBuffer != null) {
                        hardwareBuffer.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        } catch (LinkageError | ReflectiveOperationException | RuntimeException e2) {
            e = e2;
        }
    }

    private Handler imageThread() {
        if (this.imageHandler == null) {
            this.imageThread = new HandlerThread("TaskCoreImage");
            this.imageThread.start();
            this.imageHandler = new Handler(this.imageThread.getLooper());
        }
        return this.imageHandler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(17:0|1|2|3|(3:36|37|(7:39|11|12|(1:14)|(1:20)|17|18))|(1:6)(1:35)|7|8|9|10|11|12|(0)|(0)|17|18|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(7:(3:36|37|(7:39|11|12|(1:14)|(1:20)|17|18))|11|12|(0)|(0)|17|18) */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x007d, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0081, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x008c, code lost:
    
        r16 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007f, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0086, code lost:
    
        r16 = r3;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0064 A[Catch: RemoteException | LinkageError | RuntimeException -> 0x007d, all -> 0x0099, TRY_LEAVE, TryCatch #0 {RemoteException | LinkageError | RuntimeException -> 0x007d, blocks: (B:12:0x0039, B:14:0x0064), top: B:11:0x0039 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009c  */
    /* renamed from: sendGroupFrame, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m216lambda$publishGroupFrame$51$devduotaskcoreWorkspaceShell(IBinder iBinder, final long j, final long j2, int[] iArr, int i, HardwareBuffer hardwareBuffer, ColorSpace colorSpace) {
        HardwareBuffer hardwareBuffer2;
        HardwareBuffer hardwareBuffer3;
        ColorSpace colorSpace2;
        int publish;
        try {
            colorSpace2 = ColorSpace.get(ColorSpace.Named.SRGB);
        } catch (RemoteException | LinkageError | RuntimeException e) {
            e = e;
            hardwareBuffer2 = hardwareBuffer;
        } catch (Throwable th) {

            hardwareBuffer2 = hardwareBuffer;
        }
        try {
            if (colorSpace != null) {
                try {
                } catch (RemoteException | LinkageError | RuntimeException e2) {
                    e = e2;
                    hardwareBuffer3 = hardwareBuffer;
                    Log.e(TAG, "workbench image send failed", e);
                    if (hardwareBuffer3 == null) {
                    }
                    hardwareBuffer3.close();
                    return;
                } catch (Throwable th2) {
                    throw th2;
                    hardwareBuffer3 = hardwareBuffer;
                    if (hardwareBuffer3 != null) {
                    }
                    throw th;
                }
                if (colorSpace.getId() == colorSpace2.getId()) {
                    hardwareBuffer3 = hardwareBuffer;
                    colorSpace2 = colorSpace;
                    publish = WorkspaceHome.publish(this.context, iBinder, j, j2, iArr, i, hardwareBuffer3, colorSpace2.getId(), hardwareBuffer3.getWidth(), hardwareBuffer3.getHeight(), new ResultReceiver(this.shell) { // from class: dev.duo.taskcore.WorkspaceShell.1
                        @Override // android.os.ResultReceiver
                        protected void onReceiveResult(int i2, Bundle bundle) {
                            if (j == dev.duo.taskcore.WorkspaceShell.this.imageEpoch && j2 == dev.duo.taskcore.WorkspaceShell.this.imageFrame) {
                                if (i2 < 0) {
                                    Log.e(dev.duo.taskcore.WorkspaceShell.TAG, "workbench image rejected: " + bundle);
                                    return;
                                }
                                Log.i(dev.duo.taskcore.WorkspaceShell.TAG, "workbench image " + j2 + " receiver=" + i2);
                                if (i2 == 0 || i2 == 1) {
                                    try {
                                        dev.duo.taskcore.WorkspaceShell.this.recentsChanged.invoke(dev.duo.taskcore.WorkspaceShell.this.recents, new Object[0]);
                                    } catch (ReflectiveOperationException e3) {
                                        Log.e(dev.duo.taskcore.WorkspaceShell.TAG, "workbench image refresh failed", e3);
                                    }
                                }
                            }
                        }
                    });
                    if (publish < 0) {
                        Log.e(TAG, "workbench image publish rejected: " + publish);
                    }
                    if (hardwareBuffer3 == null) {
                        return;
                    }
                    hardwareBuffer3.close();
                    return;
                }
            }
            publish = WorkspaceHome.publish(this.context, iBinder, j, j2, iArr, i, hardwareBuffer3, colorSpace2.getId(), hardwareBuffer3.getWidth(), hardwareBuffer3.getHeight(), new ResultReceiver(this.shell) { // from class: dev.duo.taskcore.WorkspaceShell.1
                @Override // android.os.ResultReceiver
                protected void onReceiveResult(int i2, Bundle bundle) {
                    if (j == dev.duo.taskcore.WorkspaceShell.this.imageEpoch && j2 == dev.duo.taskcore.WorkspaceShell.this.imageFrame) {
                        if (i2 < 0) {
                            Log.e(dev.duo.taskcore.WorkspaceShell.TAG, "workbench image rejected: " + bundle);
                            return;
                        }
                        Log.i(dev.duo.taskcore.WorkspaceShell.TAG, "workbench image " + j2 + " receiver=" + i2);
                        if (i2 == 0 || i2 == 1) {
                            try {
                                dev.duo.taskcore.WorkspaceShell.this.recentsChanged.invoke(dev.duo.taskcore.WorkspaceShell.this.recents, new Object[0]);
                            } catch (ReflectiveOperationException e3) {
                                Log.e(dev.duo.taskcore.WorkspaceShell.TAG, "workbench image refresh failed", e3);
                            }
                        }
                    }
                }
            });
            if (publish < 0) {
            }
            if (hardwareBuffer3 == null) {
            }
            hardwareBuffer3.close();
            return;
        } catch (Throwable th3) {
            throw th3;
            if (hardwareBuffer3 != null) {
                hardwareBuffer3.close();
            }
            throw th;
        }
        hardwareBuffer2 = hardwareBuffer;
        HardwareBuffer srgb = toSrgb(hardwareBuffer2, colorSpace == null ? colorSpace2 : colorSpace);
        hardwareBuffer2.close();
        hardwareBuffer3 = srgb;
    }

    private static HardwareBuffer toSrgb(HardwareBuffer hardwareBuffer, ColorSpace colorSpace) {
        int width = hardwareBuffer.getWidth();
        int height = hardwareBuffer.getHeight();
        Bitmap wrapHardwareBuffer = Bitmap.wrapHardwareBuffer(hardwareBuffer, colorSpace);
        if (wrapHardwareBuffer == null) {
            throw new IllegalStateException("workbench capture not wrappable " + hardwareBuffer.getFormat());
        }
        ImageReader newInstance = ImageReader.newInstance(width, height, 1, 1, 768L);
        HardwareRenderer hardwareRenderer = new HardwareRenderer();
        try {
            RenderNode renderNode = new RenderNode("workbench-srgb");
            renderNode.setPosition(0, 0, width, height);
            renderNode.beginRecording().drawBitmap(wrapHardwareBuffer, 0.0f, 0.0f, (Paint) null);
            renderNode.endRecording();
            hardwareRenderer.setContentRoot(renderNode);
            hardwareRenderer.setSurface(newInstance.getSurface());
            int syncAndDraw = hardwareRenderer.createRenderRequest().setWaitForPresent(true).syncAndDraw();
            if ((syncAndDraw & 2) != 0 || (syncAndDraw & 4) != 0) {
                throw new IllegalStateException("workbench sRGB draw failed " + syncAndDraw);
            }
            Image acquireNextImage = newInstance.acquireNextImage();
            if (acquireNextImage == null) {
                throw new IllegalStateException("workbench sRGB frame missing");
            }
            try {
                return acquireNextImage.getHardwareBuffer();
            } finally {
                acquireNextImage.close();
            }
        } finally {
            hardwareRenderer.destroy();
            newInstance.close();
            wrapHardwareBuffer.recycle();
        }
    }

    public void registerRecentsGroup(final TaskBinding taskBinding, final TaskBinding[] taskBindingArr) {
        Handler handler = this.shell;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.WorkspaceShell.this.m217lambda$registerRecentsGroup$52$devduotaskcoreWorkspaceShell(taskBinding, taskBindingArr);
            }
        });
    }

    /* renamed from: lambda$registerRecentsGroup$52$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ void m217lambda$registerRecentsGroup$52$devduotaskcoreWorkspaceShell(TaskBinding taskBinding, TaskBinding[] taskBindingArr) {
        Object obj = this.recents;
        if (obj == null || this.geometry == null) {
            Log.w(TAG, "recents group not registered: controller " + obj);
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        if (taskBinding != null && !released(taskBinding)) {
            hashMap.put(Integer.valueOf(taskBinding.origin.taskId), new Rect(this.geometry.logical));
        }
        for (int i = 0; i < taskBindingArr.length; i++) {
            if (taskBindingArr[i] != null && !released(taskBindingArr[i])) {
                hashMap.put(Integer.valueOf(taskBindingArr[i].origin.taskId), new Rect(this.geometry.slots[i]));
            }
        }
        arrayList.addAll(hashMap.keySet());
        Collections.sort(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add((Rect) hashMap.get(Integer.valueOf(((Integer) it.next()).intValue())));
        }
        if (arrayList.isEmpty()) {
            clearRecentsGroupNow();
            return;
        }
        if (arrayList.equals(this.recentsGroup) && arrayList2.equals(this.recentsRects)) {
            return;
        }
        boolean equals = arrayList.equals(this.recentsGroup);
        this.recentsRects = arrayList2;
        this.recentsGroup = arrayList;
        try {
            this.recentsChanged.invoke(obj, new Object[0]);
            if (!equals && this.events != null && this.events.canAnimateGroup()) {
                publishGroupFrame();
            }
            Log.i(TAG, "workbench recent identity updated " + arrayList);
        } catch (ReflectiveOperationException e) {
            Log.e(TAG, "recents group not registered", e);
        }
    }

    public void clearRecentsGroup() {
        Handler handler = this.shell;
        if (handler != null) {
            handler.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda40
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.WorkspaceShell.this.clearRecentsGroupNow();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRecentsGroupNow() {
        List<Integer> list = this.recentsGroup;
        Object obj = this.recents;
        if (list == null || obj == null) {
            return;
        }
        this.recentsGroup = null;
        this.recentsRects = null;
        if (this.imageEpoch != 0) {
            final long j = this.imageEpoch;
            final long j2 = this.imageFrame;
            try {
                final IBinder groupImagePeer = groupImagePeer();
                imageThread().post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda24
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.taskcore.WorkspaceShell.lambda$clearRecentsGroupNow$53(groupImagePeer, j, j2);
                    }
                });
            } catch (IllegalAccessException | RuntimeException e) {
                Log.e(TAG, "workbench image clear failed", e);
            }
            this.imageEpoch = 0L;
        }
        try {
            this.recentsChanged.invoke(obj, new Object[0]);
            Log.i(TAG, "recents group cleared " + list);
        } catch (ReflectiveOperationException e2) {
            Log.e(TAG, "recents group not cleared " + list, e2);
        }
    }

    static /* synthetic */ void lambda$clearRecentsGroupNow$53(IBinder iBinder, long j, long j2) {
        try {
            int clear = WorkspaceHome.clear(iBinder, j, j2);
            if (clear < 0) {
                Log.e(TAG, "workbench image clear rejected: " + clear);
            }
        } catch (RemoteException | RuntimeException e) {
            Log.e(TAG, "workbench image clear failed", e);
        }
    }

    private static Set<Integer> bundleTaskIds(Bundle bundle) {
        HashSet hashSet = new HashSet();
        if (bundle == null) {
            return hashSet;
        }
        Object obj = bundle.get("multiple_launch_taskIds");
        int i = 0;
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            int length = iArr.length;
            while (i < length) {
                hashSet.add(Integer.valueOf(iArr[i]));
                i++;
            }
        } else if (obj instanceof Collection) {
            for (Object obj2 : (Collection) obj) {
                if (obj2 instanceof Number) {
                    hashSet.add(Integer.valueOf(((Number) obj2).intValue()));
                }
            }
        } else if (obj instanceof String) {
            String[] split = ((String) obj).split("[,; ]+");
            int length2 = split.length;
            while (i < length2) {
                try {
                    hashSet.add(Integer.valueOf(Integer.parseInt(split[i].trim())));
                } catch (NumberFormatException e) {
                }
                i++;
            }
        }
        return hashSet;
    }

    private void deliverAdopt(int i) {
        this.adoptDelivered = true;
        Events events = this.events;
        if (events != null) {
            events.adoptReady(i);
        }
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public void adoptRefused(int i) {
        if (i == this.adoptTask) {
            this.adoptTask = -1;
        }
        revealTask(i);
        Events events = this.events;
        if (events != null) {
            events.external("adopt refused " + i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    private boolean playLaunchHidden(Object obj, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2, Object obj2, int i) throws ReflectiveOperationException {
        Rect rect = this.geometry == null ? null : this.geometry.logical;
        int i2 = 0;
        for (Object obj3 : (List) this.infoChanges.invoke(obj, new Object[0])) {
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) this.changeTask.invoke(obj3, new Object[i2]);
            SurfaceControl surfaceControl = (SurfaceControl) this.changeLeash.invoke(obj3, new Object[i2]);
            if (runningTaskInfo == null || surfaceControl == null) {
                i2 = 0;
            } else if (surfaceControl.isValid()) {
                if (runningTaskInfo.taskId != i) {
                    Iterator it = new ArrayList(this.live).iterator();
                    while (it.hasNext()) {
                        TaskBinding taskBinding = (TaskBinding) it.next();
                        if (taskBinding.lease != dev.duo.taskcore.TaskBinding.Lease.SURFACE_ATTACHED || taskBinding.origin.taskId != runningTaskInfo.taskId) {
                            i2 = 0;
                        } else if (rect != null) {
                            SurfaceControl surfaceControl2 = (SurfaceControl) this.tvcSurface.get(taskBinding.controller);
                            if (surfaceControl2 == null) {
                                i2 = 0;
                            } else if (surfaceControl2.isValid()) {
                                SurfaceControl.Transaction[] transactionArr = {transaction, transaction2};
                                for (int i3 = i2 == true ? 1 : 0; i3 < 2; i3++) {
                                    SurfaceControl.Transaction transaction3 = transactionArr[i3];
                                    transaction3.reparent(surfaceControl, surfaceControl2).setPosition(surfaceControl, 0.0f, 0.0f).setScale(surfaceControl, 1.0f, 1.0f).setAlpha(surfaceControl, 1.0f).setVisibility(surfaceControl, true);
                                    dev.duo.taskcore.Tx.windowCrop(transaction3, surfaceControl, rect.width(), rect.height());
                                }
                                i2 = 0;
                            }
                        }
                    }
                    i2 = 0;
                } else {
                    transaction.setVisibility(surfaceControl, i2);
                    transaction2.setVisibility(surfaceControl, i2);
                }
            }
        }
        transaction.apply();
        if (this.finishing != null) {
            this.finishing.set(true);
        }
        this.finishCallback.invoke(obj2, null);
        return true;
    }

    private boolean playOverlay(Object obj, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2, Object obj2, int i) throws ReflectiveOperationException {
        SurfaceControl surfaceControl;
        Rect rect = this.geometry == null ? null : this.geometry.logical;
        for (Object obj3 : (List) this.infoChanges.invoke(obj, new Object[0])) {
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) this.changeTask.invoke(obj3, new Object[0]);
            SurfaceControl surfaceControl2 = (SurfaceControl) this.changeLeash.invoke(obj3, new Object[0]);
            if (runningTaskInfo != null && surfaceControl2 != null) {
                if (surfaceControl2.isValid()) {
                    if (runningTaskInfo.taskId == i) {
                        SurfaceControl surfaceControl3 = (SurfaceControl) this.getTaskLeash.invoke(this.organizer, Integer.valueOf(i));
                        Map<Integer, SurfaceControl> map = this.overlays;
                        Integer valueOf = Integer.valueOf(i);
                        if (surfaceControl3 != null && surfaceControl3.isValid()) {
                            surfaceControl2 = surfaceControl3;
                        }
                        map.put(valueOf, surfaceControl2);
                    } else {
                        Iterator it = new ArrayList(this.live).iterator();
                        while (it.hasNext()) {
                            TaskBinding taskBinding = (TaskBinding) it.next();
                            if (taskBinding.lease == dev.duo.taskcore.TaskBinding.Lease.SURFACE_ATTACHED && taskBinding.origin.taskId == runningTaskInfo.taskId && rect != null && (surfaceControl = (SurfaceControl) this.tvcSurface.get(taskBinding.controller)) != null && surfaceControl.isValid()) {
                                SurfaceControl.Transaction[] transactionArr = {transaction, transaction2};
                                for (int i2 = 0; i2 < 2; i2++) {
                                    SurfaceControl.Transaction transaction3 = transactionArr[i2];
                                    transaction3.reparent(surfaceControl2, surfaceControl).setPosition(surfaceControl2, 0.0f, 0.0f).setScale(surfaceControl2, 1.0f, 1.0f).setAlpha(surfaceControl2, 1.0f).setVisibility(surfaceControl2, true);
                                    dev.duo.taskcore.Tx.windowCrop(transaction3, surfaceControl2, rect.width(), rect.height());
                                }
                            }
                        }
                    }
                }
            }
        }
        placeOverlays(transaction);
        placeOverlays(transaction2);
        transaction.apply();
        if (this.finishing != null) {
            this.finishing.set(true);
        }
        this.finishCallback.invoke(obj2, null);
        return true;
    }

    private boolean placeOverlays(SurfaceControl.Transaction transaction) {
        boolean z = false;
        if (this.overlays.isEmpty()) {
            return false;
        }
        WorkspaceHost workspaceHost = this.host;
        Rect rect = this.geometry == null ? null : this.geometry.logical;
        SurfaceControl root = workspaceHost == null ? null : workspaceHost.root();
        Iterator<Map.Entry<Integer, SurfaceControl>> it = this.overlays.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Integer, SurfaceControl> next = it.next();
            try {
                if (this.getRunningTaskInfo.invoke(this.organizer, next.getKey()) == null) {
                    it.remove();
                } else {
                    SurfaceControl value = next.getValue();
                    if (value != null && value.isValid()) {
                        Events events = this.events;
                        if (events != null && events.keepsOverlay() && root != null && root.isValid() && rect != null) {
                            transaction.reparent(value, root).setPosition(value, 0.0f, 0.0f).setScale(value, 1.0f, 1.0f).setAlpha(value, 1.0f).setLayer(value, OVERLAY_TASK_LAYER).setCrop(value, new Rect(rect)).setVisibility(value, true);
                            z = true;
                        } else {
                            SurfaceControl surfaceControl = this.displayArea;
                            if (surfaceControl != null && surfaceControl.isValid()) {
                                transaction.reparent(value, surfaceControl).setCrop(value, null).setVisibility(value, true);
                            }
                            it.remove();
                            z = true;
                        }
                    }
                }
            } catch (ReflectiveOperationException e) {
                Log.e(TAG, "overlay task " + next.getKey() + " unreadable: kept, not moved", e);
            }
        }
        return z;
    }

    public void revealTask(final int i) {
        Handler handler = this.shell;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda68
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.WorkspaceShell.this.m218lambda$revealTask$55$devduotaskcoreWorkspaceShell(i);
            }
        });
    }

    /* renamed from: lambda$revealTask$55$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ void m218lambda$revealTask$55$devduotaskcoreWorkspaceShell(final int i) {
        if (isOwnedTask(i)) {
            return;
        }
        this.hiddenUntilAttached.remove(Integer.valueOf(i));
        this.claims.values().removeIf(new Predicate() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda44
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return dev.duo.taskcore.WorkspaceShell.lambda$revealTask$54(i, (Integer) obj);
            }
        });
        try {
            SurfaceControl surfaceControl = (SurfaceControl) this.getTaskLeash.invoke(this.organizer, Integer.valueOf(i));
            if (surfaceControl != null && surfaceControl.isValid()) {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    transaction.setVisibility(surfaceControl, true).apply();
                    transaction.close();
                } finally {
                }
            }
        } catch (ReflectiveOperationException e) {
            Log.e(TAG, "reveal " + i, e);
        }
    }

    static /* synthetic */ boolean lambda$revealTask$54(int i, Integer num) {
        return num.intValue() == i;
    }

    private boolean returnedByWm(TaskBinding taskBinding, ActivityManager.RunningTaskInfo runningTaskInfo) throws ReflectiveOperationException {
        int intValue = ((Integer) this.infoMode.invoke(runningTaskInfo, new Object[0])).intValue();
        return (intValue == 1 || intValue == 0) && this.infoParent.getInt(runningTaskInfo) == -1 && this.infoDisplay.getInt(runningTaskInfo) == taskBinding.origin.displayId && this.infoUser.getInt(runningTaskInfo) == taskBinding.origin.userId;
    }

    private boolean restoreLeash(SurfaceControl.Transaction transaction, TaskBinding taskBinding, ActivityManager.RunningTaskInfo runningTaskInfo) throws ReflectiveOperationException {
        SurfaceControl surfaceControl = (SurfaceControl) taskBinding.origin.leash;
        SurfaceControl surfaceControl2 = this.displayArea;
        if (surfaceControl == null || !surfaceControl.isValid() || surfaceControl2 == null || !surfaceControl2.isValid()) {
            return false;
        }
        Point point = (Point) this.infoPosition.get(runningTaskInfo);
        transaction.reparent(surfaceControl, surfaceControl2).setScale(surfaceControl, 1.0f, 1.0f).setPosition(surfaceControl, point.x, point.y).setCrop(surfaceControl, null).setAlpha(surfaceControl, 1.0f);
        dev.duo.taskcore.Tx.windowCrop(transaction, surfaceControl, null);
        transaction.setVisibility(surfaceControl, TaskInfo.class.getField("isVisible").getBoolean(runningTaskInfo));
        Log.i(TAG, taskBinding + " returned outside our transition: leash restored to the task area");
        return true;
    }

    private String stillLeased(List<TaskBinding> list) throws ReflectiveOperationException {
        ArrayList arrayList = new ArrayList();
        for (TaskBinding taskBinding : list) {
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) this.getRunningTaskInfo.invoke(this.organizer, Integer.valueOf(taskBinding.origin.taskId));
            if (runningTaskInfo != null && this.tokenAsBinder.invoke(this.infoToken.get(runningTaskInfo), new Object[0]) == taskBinding.origin.tokenBinder && ((Integer) this.infoMode.invoke(runningTaskInfo, new Object[0])).intValue() == 6 && this.infoParent.getInt(runningTaskInfo) == -1) {
                arrayList.add(taskBinding + " still multi-window");
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return String.join("; ", arrayList);
    }

    private void closeRemoteInfo(Pending pending) throws ReflectiveOperationException {
        Object obj = pending.remoteInfo;
        pending.remoteInfo = null;
        if (obj != null) {
            obj.getClass().getMethod("releaseAllSurfaces", new Class[0]).invoke(obj, new Object[0]);
        }
    }

    private boolean playRestoreRemote(final IBinder iBinder, Object obj, SurfaceControl.Transaction transaction, final SurfaceControl.Transaction transaction2, final Object obj2, final Pending pending) throws ReflectiveOperationException {
        Iterator it;
        TaskBinding taskBinding;
        Object invoke = obj.getClass().getMethod("localRemoteCopy", new Class[0]).invoke(obj, new Object[0]);
        pending.remoteInfo = invoke;
        Iterator it2 = ((List) this.infoChanges.invoke(invoke, new Object[0])).iterator();
        Object obj3 = null;
        while (it2.hasNext()) {
            Object next = it2.next();
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) this.changeTask.invoke(next, new Object[0]);
            if (runningTaskInfo == null) {
                it = it2;
            } else {
                Iterator<TaskBinding> it3 = pending.members.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        it = it2;
                        taskBinding = null;
                        break;
                    }
                    taskBinding = it3.next();
                    if (taskBinding.origin.taskId != runningTaskInfo.taskId) {
                        it = it2;
                    } else {
                        it = it2;
                        if (taskBinding.origin.tokenBinder == this.tokenAsBinder.invoke(this.infoToken.get(runningTaskInfo), new Object[0])) {
                            break;
                        }
                    }
                    it2 = it;
                }
                if (taskBinding != null) {
                    if (taskBinding == pending.primary) {
                        obj3 = next;
                        it2 = it;
                    } else {
                        ((SurfaceControl) this.changeLeash.invoke(next, new Object[0])).release();
                        SurfaceControl surfaceControl = (SurfaceControl) next.getClass().getMethod("getSnapshot", new Class[0]).invoke(next, new Object[0]);
                        if (surfaceControl != null) {
                            surfaceControl.release();
                        }
                        it.remove();
                    }
                }
            }
            it2 = it;
        }
        if (obj3 == null) {
            throw new IllegalStateException("restore transition has no primary workbench member");
        }
        Object invoke2 = invoke.getClass().getMethod("getRoot", Integer.TYPE).invoke(invoke, Integer.valueOf(((Integer) Class.forName("com.android.wm.shell.shared.TransitionUtil", false, this.loader).getMethod("rootIndexFor", obj3.getClass(), invoke.getClass()).invoke(null, obj3, invoke)).intValue()));
        SurfaceControl surfaceControl2 = (SurfaceControl) invoke2.getClass().getMethod("getLeash", new Class[0]).invoke(invoke2, new Object[0]);
        Point point = (Point) invoke2.getClass().getMethod("getOffset", new Class[0]).invoke(invoke2, new Object[0]);
        final GroupMotion groupMotion = new GroupMotion(this.host, pending.primary, pending.members);
        groupMotion.token = iBinder;
        groupMotion.restore = true;
        groupMotion.returning = true;
        SurfaceControl.Builder hidden = new SurfaceControl.Builder().setName("TaskCore group restore").setParent(surfaceControl2).setHidden(true);
        SurfaceControl.Builder.class.getMethod("setContainerLayer", new Class[0]).invoke(hidden, new Object[0]);
        groupMotion.leash = hidden.build();
        this.groupMotion = groupMotion;
        groupMotion.host.beginSystemAnimation();
        transaction.reparent(groupMotion.host.root(), groupMotion.leash).setPosition(groupMotion.host.root(), 0.0f, 0.0f).setLayer(groupMotion.host.root(), 0).setVisibility(groupMotion.host.root(), true).setPosition(groupMotion.leash, -point.x, -point.y).setVisibility(groupMotion.leash, true);
        reclaimMembers(transaction, true);
        Field declaredField = obj3.getClass().getDeclaredField("mLeash");
        declaredField.setAccessible(true);
        ((SurfaceControl) declaredField.get(obj3)).release();
        declaredField.set(obj3, SurfaceControl.class.getConstructor(SurfaceControl.class, String.class).newInstance(groupMotion.leash, "TaskCore group remote"));
        obj3.getClass().getMethod("setStartAbsBounds", Rect.class).invoke(obj3, new Rect(this.geometry.display));
        obj3.getClass().getMethod("setEndAbsBounds", Rect.class).invoke(obj3, new Rect(this.geometry.display));
        obj3.getClass().getMethod("setEndRelOffset", Integer.TYPE, Integer.TYPE).invoke(obj3, 0, 0);
        this.remoteRestores.put(iBinder, pending);
        if (!((Boolean) this.oneShotStart.invoke(pending.remoteHandler, iBinder, invoke, transaction, transaction2, Proxy.newProxyInstance(this.loader, new Class[]{this.finishCallback.getDeclaringClass()}, new InvocationHandler() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda32
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj4, Method method, Object[] objArr) {
                return dev.duo.taskcore.WorkspaceShell.this.m214lambda$playRestoreRemote$56$devduotaskcoreWorkspaceShell(iBinder, pending, transaction2, groupMotion, obj2, obj4, method, objArr);
            }
        }))).booleanValue()) {
            throw new IllegalStateException("OneShotRemoteHandler rejected its bound transition");
        }
        Log.i(TAG, "whole workbench restore remote started " + iBinder);
        return true;
    }

    /* renamed from: lambda$playRestoreRemote$56$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ Object m214lambda$playRestoreRemote$56$devduotaskcoreWorkspaceShell(IBinder iBinder, Pending pending, SurfaceControl.Transaction transaction, GroupMotion groupMotion, Object obj, Object obj2, Method method, Object[] objArr) throws Throwable {
        if (method.getName().equals("onTransitionFinished")) {
            if (this.remoteRestores.remove(iBinder) != pending) {
                return null;
            }
            pending.remoteFinished = true;
            try {
                reclaimMembers(transaction);
                groupMotion.finishing = true;
                finishGroupSurface(transaction);
                this.finishCallback.invoke(obj, objArr);
                pending.finalResult(true, "group restore remote finished");
                Log.i(TAG, "whole workbench restore remote finished " + iBinder);
                return null;
            } finally {
                closeRemoteInfo(pending);
            }
        }
        if (method.getName().equals("toString")) {
            return "TaskCoreGroupRestoreFinish";
        }
        if (method.getName().equals("hashCode")) {
            return Integer.valueOf(System.identityHashCode(obj2));
        }
        if (method.getName().equals("equals")) {
            return Boolean.valueOf(objArr[0] == obj2);
        }
        return null;
    }

    private boolean startAnimation(IBinder iBinder, final Object obj, final SurfaceControl.Transaction transaction, final SurfaceControl.Transaction transaction2, final Object obj2) throws ReflectiveOperationException {
        final Integer remove = this.claims.remove(iBinder);
        if (remove != null && this.hiddenUntilAttached.contains(remove)) {
            return guarded(iBinder, transaction, obj2, new Play() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda3
                @Override // dev.duo.taskcore.WorkspaceShell.Play
                public final boolean run() {
                    return dev.duo.taskcore.WorkspaceShell.this.m219lambda$startAnimation$57$devduotaskcoreWorkspaceShell(obj, transaction, transaction2, obj2, remove);
                }
            });
        }
        final Integer remove2 = this.overlayClaims.remove(iBinder);
        if (remove2 != null && this.overlays.containsKey(remove2)) {
            return guarded(iBinder, transaction, obj2, new Play() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda4
                @Override // dev.duo.taskcore.WorkspaceShell.Play
                public final boolean run() {
                    return dev.duo.taskcore.WorkspaceShell.this.m220lambda$startAnimation$58$devduotaskcoreWorkspaceShell(obj, transaction, transaction2, obj2, remove2);
                }
            });
        }
        Pending remove3 = this.pending.remove(iBinder);
        if (remove3 == null) {
            return false;
        }
        boolean[] zArr = {false};
        try {
            return playPending(iBinder, obj, transaction, transaction2, obj2, remove3, zArr);
        } catch (ReflectiveOperationException | RuntimeException e) {
            Log.e(TAG, "pending transition " + iBinder + " failed while playing", e);
            if (!zArr[0]) {
                try {
                    transaction.apply();
                    this.finishCallback.invoke(obj2, null);
                } catch (Throwable th) {
                    Log.e(TAG, "pending transition " + iBinder + " could not be finished", th);
                }
            }
            remove3.finalResult(false, "playback failed: " + e);
            return true;
        }
    }

    /* renamed from: lambda$startAnimation$57$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ boolean m219lambda$startAnimation$57$devduotaskcoreWorkspaceShell(Object obj, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2, Object obj2, Integer num) throws ReflectiveOperationException {
        return playLaunchHidden(obj, transaction, transaction2, obj2, num.intValue());
    }

    /* renamed from: lambda$startAnimation$58$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ boolean m220lambda$startAnimation$58$devduotaskcoreWorkspaceShell(Object obj, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2, Object obj2, Integer num) throws ReflectiveOperationException {
        return playOverlay(obj, transaction, transaction2, obj2, num.intValue());
    }

    /* JADX WARN: Code restructure failed: missing block: B:118:0x02c9, code lost:
    
        if (r28.giveBack != false) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x02cf, code lost:
    
        if (placeIfApplied(r25, r8, r10) == false) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02d1, code lost:
    
        android.util.Log.i(dev.duo.taskcore.WorkspaceShell.TAG, r8 + " applied outside our transition: leash placed into its card");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean playPending(IBinder iBinder, Object obj, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2, Object obj2, Pending pending, boolean[] zArr) throws ReflectiveOperationException {
        Rect rect;
        Iterator<TaskBinding> it;
        Rect rect2 = this.geometry.logical;
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        int i = 0;
        Iterator it2 = ((List) this.infoChanges.invoke(obj, new Object[0])).iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) this.changeTask.invoke(next, new Object[i]);
            SurfaceControl surfaceControl = (SurfaceControl) this.changeLeash.invoke(next, new Object[i]);
            if (runningTaskInfo != null) {
                Object obj3 = this.infoToken.get(runningTaskInfo);
                Iterator<TaskBinding> it3 = pending.members.iterator();
                TaskBinding taskBinding = null;
                while (it3.hasNext()) {
                    TaskBinding next2 = it3.next();
                    Iterator it4 = it2;
                    if (next2.origin.taskId == runningTaskInfo.taskId && obj3 != null) {
                        it = it3;
                        if (this.tokenAsBinder.invoke(obj3, new Object[0]) == next2.origin.tokenBinder && this.infoUser.getInt(runningTaskInfo) == next2.origin.userId && this.infoDisplay.getInt(runningTaskInfo) == next2.origin.displayId) {
                            taskBinding = next2;
                        }
                    } else {
                        it = it3;
                    }
                    it2 = it4;
                    it3 = it;
                }
                Iterator it5 = it2;
                if (taskBinding == null) {
                    it2 = it5;
                    i = 0;
                } else if (released(taskBinding)) {
                    hashSet.add(taskBinding);
                    it2 = it5;
                    i = 0;
                } else if (surfaceControl == null || !surfaceControl.isValid()) {
                    arrayList.add(taskBinding + " has no valid leash in the transition");
                    it2 = it5;
                    rect2 = rect2;
                    i = 0;
                } else if (!pending.giveBack) {
                    int intValue = ((Integer) this.infoMode.invoke(runningTaskInfo, new Object[0])).intValue();
                    Rect rect3 = (Rect) this.wcBounds.invoke(this.cfgWindow.get(this.taskConfig.get(runningTaskInfo)), new Object[0]);
                    if (intValue != 6 || !rect2.equals(rect3)) {
                        arrayList.add(taskBinding + " WM not applied: mode " + intValue + " bounds " + rect3);
                        it2 = it5;
                        i = 0;
                    } else {
                        SurfaceControl surfaceControl2 = (SurfaceControl) this.tvcSurface.get(taskBinding.controller);
                        if (surfaceControl2 == null || !surfaceControl2.isValid()) {
                            arrayList.add(taskBinding + " TaskView surface gone");
                            it2 = it5;
                            i = 0;
                        } else {
                            transaction.reparent(surfaceControl, surfaceControl2).setPosition(surfaceControl, 0.0f, 0.0f).setVisibility(surfaceControl, true);
                            dev.duo.taskcore.Tx.windowCrop(transaction, surfaceControl, rect2.width(), rect2.height());
                            transaction2.reparent(surfaceControl, surfaceControl2).setPosition(surfaceControl, 0.0f, 0.0f);
                            dev.duo.taskcore.Tx.windowCrop(transaction2, surfaceControl, rect2.width(), rect2.height());
                            this.live.add(taskBinding);
                            this.hiddenUntilAttached.remove(Integer.valueOf(taskBinding.origin.taskId));
                            if (taskBinding.origin.taskId == this.adoptTask) {
                                this.adoptTask = -1;
                            }
                            rect = rect2;
                            hashSet.add(taskBinding);
                            it2 = it5;
                            rect2 = rect;
                            i = 0;
                        }
                    }
                } else {
                    SurfaceControl surfaceControl3 = this.displayArea;
                    if (surfaceControl3 == null || !surfaceControl3.isValid()) {
                        arrayList.add(taskBinding + " task display area gone");
                        it2 = it5;
                        rect2 = rect2;
                        i = 0;
                    } else {
                        Point point = (Point) this.infoPosition.get(runningTaskInfo);
                        SurfaceControl.Transaction[] transactionArr = {transaction, transaction2};
                        int i2 = 0;
                        while (i2 < 2) {
                            SurfaceControl.Transaction transaction3 = transactionArr[i2];
                            transaction3.reparent(surfaceControl, surfaceControl3).setScale(surfaceControl, 1.0f, 1.0f).setPosition(surfaceControl, point.x, point.y).setCrop(surfaceControl, null).setAlpha(surfaceControl, 1.0f);
                            dev.duo.taskcore.Tx.windowCrop(transaction3, surfaceControl, null);
                            i2++;
                            rect2 = rect2;
                            surfaceControl3 = surfaceControl3;
                        }
                        rect = rect2;
                        transaction.setVisibility(surfaceControl, true);
                        hashSet.add(taskBinding);
                        it2 = it5;
                        rect2 = rect;
                        i = 0;
                    }
                }
            }
        }
        Iterator<TaskBinding> it6 = pending.members.iterator();
        while (it6.hasNext()) {
            TaskBinding next3 = it6.next();
            if (!hashSet.contains(next3) && !released(next3)) {
                ActivityManager.RunningTaskInfo runningTaskInfo2 = (ActivityManager.RunningTaskInfo) this.getRunningTaskInfo.invoke(this.organizer, Integer.valueOf(next3.origin.taskId));
                boolean z = runningTaskInfo2 != null && this.tokenAsBinder.invoke(this.infoToken.get(runningTaskInfo2), new Object[0]) == next3.origin.tokenBinder;
                if (z && pending.giveBack && next3.controller != null && returnedByWm(next3, runningTaskInfo2)) {
                    if (!restoreLeash(transaction, next3, runningTaskInfo2)) {
                        arrayList.add(next3 + " returned by WM but its leash could not be restored");
                    }
                } else if (z) {
                    arrayList.add(next3 + " not moved by the transition");
                } else if (pending.giveBack) {
                    Log.i(TAG, next3 + " vanished before return: nothing to give back");
                } else {
                    arrayList.add(next3 + " vanished before attach");
                }
            }
        }
        if (pending.remoteHandler != null) {
            try {
                if (arrayList.isEmpty()) {
                    boolean playRestoreRemote = playRestoreRemote(iBinder, obj, transaction, transaction2, obj2, pending);
                    zArr[0] = true;
                    return playRestoreRemote;
                }
                this.oneShotConsumed.invoke(pending.remoteHandler, iBinder, true, transaction2);
            } catch (ReflectiveOperationException | RuntimeException e) {
                Log.e(TAG, "group restore remote failed", e);
                if (pending.remoteFinished) {
                    pending.finalResult(false, "remote finish failed: " + e);
                    return true;
                }
                arrayList.add("remote restore: " + e);
                this.remoteRestores.remove(iBinder);
                this.oneShotConsumed.invoke(pending.remoteHandler, iBinder, true, transaction2);
                GroupMotion groupMotion = this.groupMotion;
                if (groupMotion != null && groupMotion.token == iBinder) {
                    groupMotion.finishing = true;
                    groupMotion.returning = false;
                    finishGroupSurface(transaction2);
                }
                closeRemoteInfo(pending);
            }
        }
        transaction.apply();
        zArr[0] = true;
        this.finishCallback.invoke(obj2, null);
        pending.finalResult(arrayList.isEmpty(), arrayList.isEmpty() ? pending.giveBack ? "returned" : "attached" : String.join("; ", arrayList));
        return true;
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public boolean takenBySystem(TaskBinding taskBinding) {
        try {
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) this.getRunningTaskInfo.invoke(this.organizer, Integer.valueOf(taskBinding.origin.taskId));
            if (runningTaskInfo != null && this.tokenAsBinder.invoke(this.infoToken.get(runningTaskInfo), new Object[0]) == taskBinding.origin.tokenBinder) {
                if (((Integer) this.infoMode.invoke(runningTaskInfo, new Object[0])).intValue() == 6 && this.infoParent.getInt(runningTaskInfo) == -1 && this.infoDisplay.getInt(runningTaskInfo) == taskBinding.origin.displayId && this.infoUser.getInt(runningTaskInfo) == taskBinding.origin.userId) {
                    if (this.getTaskListener.invoke(this.organizer, runningTaskInfo) == taskBinding.controller) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        } catch (ReflectiveOperationException e) {
            Log.e(TAG, "task state unreadable " + taskBinding + ": left to the normal return", e);
            return false;
        }
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public void releaseToSystem(TaskBinding taskBinding) {
        this.live.remove(taskBinding);
        this.hiddenUntilAttached.remove(Integer.valueOf(taskBinding.origin.taskId));
        try {
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) this.getRunningTaskInfo.invoke(this.organizer, Integer.valueOf(taskBinding.origin.taskId));
            SurfaceControl surfaceControl = (SurfaceControl) taskBinding.origin.leash;
            if (runningTaskInfo != null && surfaceControl != null && surfaceControl.isValid()) {
                int i = this.infoParent.getInt(runningTaskInfo);
                SurfaceControl surfaceControl2 = i == -1 ? this.displayArea : (SurfaceControl) this.getTaskLeash.invoke(this.organizer, Integer.valueOf(i));
                if (surfaceControl2 != null && surfaceControl2.isValid()) {
                    Point point = (Point) this.infoPosition.get(runningTaskInfo);
                    SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                    try {
                        transaction.reparent(surfaceControl, surfaceControl2).setScale(surfaceControl, 1.0f, 1.0f).setPosition(surfaceControl, point.x, point.y).setCrop(surfaceControl, null).setAlpha(surfaceControl, 1.0f);
                        dev.duo.taskcore.Tx.windowCrop(transaction, surfaceControl, null);
                        transaction.setVisibility(surfaceControl, TaskInfo.class.getField("isVisible").getBoolean(runningTaskInfo));
                        transaction.apply();
                        transaction.close();
                        Log.i(TAG, taskBinding + " taken by the system (parent " + i + "): leash handed back now");
                        return;
                    } finally {
                    }
                }
                Log.w(TAG, taskBinding + " taken by the system: parent " + i + " leash unknown, left to its transition");
            }
        } catch (ReflectiveOperationException e) {
            Log.e(TAG, "hand back " + taskBinding, e);
        }
    }

    private static boolean released(TaskBinding taskBinding) {
        return taskBinding.lease == dev.duo.taskcore.TaskBinding.Lease.RELEASED;
    }

    private boolean guarded(IBinder iBinder, SurfaceControl.Transaction transaction, Object obj, Play play) {
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        this.finishing = atomicBoolean;
        try {
            return play.run();
        } catch (Throwable th) {
            try {
                Log.e(TAG, "claimed transition " + iBinder + " failed while playing", th);
                if (!atomicBoolean.get()) {
                    try {
                        transaction.apply();
                        this.finishCallback.invoke(obj, null);
                    } catch (Throwable th2) {
                        Log.e(TAG, "claimed transition " + iBinder + " could not be finished", th2);
                        this.finishing = null;
                        return true;
                    }
                }
                this.finishing = null;
                return true;
            } finally {
                this.finishing = null;
            }
        }
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public String releaseOwner(TaskBinding taskBinding) {
        this.live.remove(taskBinding);
        try {
            this.removeListener.invoke(this.organizer, taskBinding.controller);
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) this.getRunningTaskInfo.invoke(this.organizer, Integer.valueOf(taskBinding.origin.taskId));
            if (runningTaskInfo != null) {
                Object invoke = this.getTaskListener.invoke(this.organizer, runningTaskInfo);
                String name = invoke == null ? "null" : invoke.getClass().getName();
                if (invoke == taskBinding.controller) {
                    return "owner after return still this controller";
                }
                int intValue = ((Integer) this.infoMode.invoke(runningTaskInfo, new Object[0])).intValue();
                if (!taskBinding.handedOver && intValue == 6) {
                    return "windowing mode still multi-window after return (owner " + name + ")";
                }
                Log.i(TAG, taskBinding + " handed to " + name + " mode " + intValue + (taskBinding.handedOver ? " (system choice kept)" : ""));
            }
            this.unregisterTaskView.invoke(this.taskViewTransitions, taskBinding.controller);
            this.tvcClass.getMethod("resetTaskInfo", new Class[0]).invoke(taskBinding.controller, new Object[0]);
            return null;
        } catch (Throwable th) {
            Log.e(TAG, "release owner " + taskBinding, th);
            return String.valueOf(th);
        }
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public void destroyHost(final TaskBinding taskBinding) {
        if (this.shell != null) {
            this.shell.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.WorkspaceShell.this.m180lambda$destroyHost$59$devduotaskcoreWorkspaceShell(taskBinding);
                }
            });
        }
        final Object obj = taskBinding.taskView;
        this.main.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.WorkspaceShell.this.m181lambda$destroyHost$60$devduotaskcoreWorkspaceShell(obj, taskBinding);
            }
        });
    }

    /* renamed from: lambda$destroyHost$59$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ void m180lambda$destroyHost$59$devduotaskcoreWorkspaceShell(TaskBinding taskBinding) {
        this.live.remove(taskBinding);
    }

    /* renamed from: lambda$destroyHost$60$dev-duo-taskcore-WorkspaceShell, reason: not valid java name */
    /* synthetic */ void m181lambda$destroyHost$60$devduotaskcoreWorkspaceShell(Object obj, TaskBinding taskBinding) {
        if (obj != null) {
            try {
                this.owned.remove(obj);
                this.tvRelease.invoke(obj, new Object[0]);
            } catch (Throwable th) {
                Log.e(TAG, "TaskView release " + taskBinding, th);
            }
        }
        this.host.m144lambda$close$11$devduotaskcoreWorkspaceHost(taskBinding);
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public void place(final TaskBinding taskBinding, TaskBinding[] taskBindingArr, final boolean z, final dev.duo.taskcore.WorkspaceSession.Done done) {
        this.focusedMain = taskBinding;
        final Handler handler = this.shell;
        final WorkspaceHost workspaceHost = this.host;
        final TaskBinding[] taskBindingArr2 = (TaskBinding[]) taskBindingArr.clone();
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        final Runnable runnable = new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.WorkspaceShell.lambda$place$62(atomicBoolean, handler, done);
            }
        };
        this.main.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.taskcore.WorkspaceShell.lambda$place$63(dev.duo.taskcore.WorkspaceHost.this, runnable, taskBinding, taskBindingArr2, z);
            }
        });
    }

    static /* synthetic */ void lambda$place$62(AtomicBoolean atomicBoolean, Handler handler, final dev.duo.taskcore.WorkspaceSession.Done done) {
        if (atomicBoolean.compareAndSet(false, true)) {
            handler.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.WorkspaceSession.Done.this.done(true, "placed");
                }
            });
        }
    }

    static /* synthetic */ void lambda$place$63(WorkspaceHost workspaceHost, Runnable runnable, TaskBinding taskBinding, TaskBinding[] taskBindingArr, boolean z) {
        if (workspaceHost == null) {
            runnable.run();
        } else {
            workspaceHost.place(taskBinding, taskBindingArr, z, runnable);
        }
    }

    public void setSystemGate(SystemGate systemGate) {
        this.gate = systemGate;
    }

    public SystemGate systemGate() {
        return this.gate;
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public boolean focus(TaskBinding taskBinding) {
        this.focusedMain = taskBinding;
        SystemGate systemGate = this.gate;
        if (taskBinding == null || systemGate == null || systemGate.blocksActions() || systemGate.requiresClose()) {
            Log.i(TAG, "focus for " + taskBinding + " left to the system (" + systemGate + ")");
            return true;
        }
        try {
            Object invoke = Class.forName("android.app.ActivityTaskManager").getMethod("getService", new Class[0]).invoke(null, new Object[0]);
            invoke.getClass().getMethod("setFocusedTask", Integer.TYPE).invoke(invoke, Integer.valueOf(taskBinding.origin.taskId));
            return true;
        } catch (Throwable th) {
            Log.e(TAG, "setFocusedTask " + taskBinding + " failed", th);
            return false;
        }
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public void isolate(TaskBinding taskBinding, TaskBinding[] taskBindingArr, final dev.duo.taskcore.WorkspaceSession.Done done) {
        Events events = this.events;
        final Handler handler = this.shell;
        String[] strArr = new String[5];
        if (taskBinding != null) {
            strArr[0] = taskBinding.origin.userId + ":" + taskBinding.origin.packageName;
        }
        int i = 0;
        while (i < taskBindingArr.length) {
            int i2 = i + 1;
            strArr[i2] = taskBindingArr[i] == null ? null : taskBindingArr[i].origin.userId + ":" + taskBindingArr[i].origin.packageName;
            i = i2;
        }
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        if (events == null) {
            done.done(false, "no events");
        } else {
            events.isolate(strArr, new dev.duo.taskcore.WorkspaceSession.Done() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda6
                @Override // dev.duo.taskcore.WorkspaceSession.Done
                public final void done(boolean z, String str) {
                    dev.duo.taskcore.WorkspaceShell.lambda$isolate$65(atomicBoolean, handler, done, z, str);
                }
            });
        }
    }

    static /* synthetic */ void lambda$isolate$65(AtomicBoolean atomicBoolean, Handler handler, final dev.duo.taskcore.WorkspaceSession.Done done, final boolean z, final String str) {
        if (atomicBoolean.compareAndSet(false, true)) {
            handler.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceShell$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.taskcore.WorkspaceSession.Done.this.done(z, str);
                }
            });
        }
    }

    @Override // dev.duo.taskcore.WorkspaceSession.Platform
    public void changed(WorkspaceSession workspaceSession) {
        if (!this.overlays.isEmpty()) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                if (placeOverlays(transaction)) {
                    transaction.apply();
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
        Events events = this.events;
        if (events != null) {
            events.changed(workspaceSession);
        }
    }
}
