package dev.duo.taskcore;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import android.view.SurfaceControl;
import dev.duo.taskcore.TaskBinding;
import dev.duo.taskcore.WorkspaceProtocol;
import dev.duo.taskcore.WorkspaceWm;
import io.github.libxposed.api.XposedInterface;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

/* loaded from: classes.dex */
public final class WorkspaceWm {
    private static final int HIDDEN_BY_ORGANIZER = 2;
    private static final String TAG = "TaskCoreWm";
    private Field activityFinishing;
    private Method activityTask;
    private Field activityToken;
    private Field activityTransitions;
    private Method activityType;
    private Method anyTaskForId;
    private Method applyTransaction;
    private Object atm;
    private Field currentUser;
    private Field focusableRaw;
    private Method focusedRoot;
    private Field forceHidden;
    private Method getDisplayContent;
    private Method getDisplayId;
    private Method getParent;
    private Method getProcess;
    private Method getRequestedBounds;
    private Method getRequestedMode;
    private Method getSurfaceControl;
    private Object globalLock;
    private Method inTransition;
    private Field interceptBackSet;
    private Field lastActivity;
    private volatile int lastCallState;
    private Method launchCookie;
    private Method optionsFromBundle;
    private Field originatingIntent;
    private Session pendingRestore;
    private Field processMap;
    private Field remoteToken;
    private Method reparentSurface;
    private Object root;
    private volatile Session session;
    private Field sourceActivity;
    private Field starterRequest;
    private Method successfulStart;
    private Context systemContext;
    private Field taskIdField;
    private Field taskUser;
    private Method toToken;
    private Field tocField;
    private Method topResumed;
    private Method transitionAborted;
    private volatile Object transitionController;
    private Method transitionToken;
    private Field trimmable;
    private Method updateSurfacePosition;
    private Method visibleRequested;
    private Method wctBack;
    private Method wctBounds;
    private Method wctFocusable;
    private Method wctHidden;
    private Method wctMode;
    private Constructor<?> wctNew;
    private Method wctTrim;
    private Handler wmHandler;
    private Object wms;
    private Field wocField;
    private Method wpcHasThread;
    private Field wpcName;
    private Method wpcPid;
    private Method wpcRemoved;
    private Field wpcUid;
    private int systemUiUid = -1;
    private final Map<Integer, String> unrestored = new LinkedHashMap();
    private final ThreadLocal<Source> sendingSource = new ThreadLocal<>();

    private final class Source {
        Object activity;
        final IBinder cookie;
        WorkspaceProtocol.TaskRef fsiTarget;
        final int kind;
        final IBinder piTarget;
        Object record;
        final IBinder request;
        WorkspaceProtocol.SourceEvent result;
        boolean sendCompleted;
        final Session session;
        Object task;
        final Map<Integer, IBinder> members = new LinkedHashMap();
        final Map<Object, Object> activities = new LinkedHashMap();
        final Set<Object> removedActivities = new HashSet();

        Source(Session session, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, int i) {
            this.session = session;
            this.request = iBinder;
            this.piTarget = iBinder2;
            this.cookie = iBinder3;
            this.kind = i;
            for (Saved saved : session.saved.values()) {
                this.members.put(Integer.valueOf(saved.taskId), saved.token);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class Saved {
        final int displayId;
        final Object parent;
        final TaskBinding.Snapshot snapshot;
        final Object task;
        final int taskId;
        final IBinder token;
        final int userId;

        Saved(int i, int i2, int i3, Object obj, Object obj2, IBinder iBinder, TaskBinding.Snapshot snapshot) {
            this.taskId = i;
            this.userId = i2;
            this.displayId = i3;
            this.task = obj;
            this.parent = obj2;
            this.token = iBinder;
            this.snapshot = snapshot;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class Session implements IBinder.DeathRecipient {
        boolean dead;
        final long epoch;
        IBinder fsiForeground;
        boolean fsiLeftByUser;
        final IBinder owner;
        final int pid;
        final Object process;
        boolean returning;
        int revision;
        final int uid;
        final Map<Integer, Saved> saved = new LinkedHashMap();
        final Map<IBinder, Source> registeredSources = new LinkedHashMap();
        final Map<IBinder, Map<IBinder, WorkspaceProtocol.SourceEvent>> transitionSources = new LinkedHashMap();
        final Map<IBinder, Source> fsis = new LinkedHashMap();
        final Map<Integer, IBinder> fsiMembers = new LinkedHashMap();

        Session(long j, IBinder iBinder, int i, int i2, Object obj) {
            this.epoch = j;
            this.owner = iBinder;
            this.uid = i;
            this.pid = i2;
            this.process = obj;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            this.dead = true;
            WorkspaceWm.this.wmHandler.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceWm$Session$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    WorkspaceWm.Session.this.m3417lambda$binderDied$0$devduotaskcoreWorkspaceWm$Session();
                }
            });
        }

        /* renamed from: lambda$binderDied$0$dev-duo-taskcore-WorkspaceWm$Session, reason: not valid java name */
        /* synthetic */ void m3417lambda$binderDied$0$devduotaskcoreWorkspaceWm$Session() {
            synchronized (WorkspaceWm.this.globalLock) {
                if (WorkspaceWm.this.session != this) {
                    return;
                }
                Log.w(WorkspaceWm.TAG, "SystemUI died with session " + this.epoch + ": restoring " + this.saved.keySet());
                WorkspaceWm.this.session = null;
                WorkspaceWm.this.restoreOrDefer(this);
            }
        }
    }

    public void install(XposedInterface xposedInterface, ClassLoader classLoader) throws ReflectiveOperationException {
        Class<?> cls = Class.forName("com.android.server.wm.WindowManagerService", false, classLoader);
        Class<?> cls2 = Class.forName("com.android.server.wm.ActivityTaskManagerService", false, classLoader);
        Class<?> cls3 = Class.forName("com.android.server.wm.RootWindowContainer", false, classLoader);
        Class<?> cls4 = Class.forName("com.android.server.wm.Task", false, classLoader);
        Class<?> cls5 = Class.forName("com.android.server.wm.TaskFragment", false, classLoader);
        Class<?> cls6 = Class.forName("com.android.server.wm.WindowContainer", false, classLoader);
        Class<?> cls7 = Class.forName("com.android.server.wm.ConfigurationContainer", false, classLoader);
        Class<?> cls8 = Class.forName("com.android.server.wm.WindowContainer$RemoteToken", false, classLoader);
        Class<?> cls9 = Class.forName("com.android.server.wm.TaskOrganizerController", false, classLoader);
        Class<?> cls10 = Class.forName("com.android.server.wm.WindowOrganizerController", false, classLoader);
        Class<?> cls11 = Class.forName("com.android.server.wm.WindowProcessControllerMap", false, classLoader);
        Class<?> cls12 = Class.forName("com.android.server.wm.WindowProcessController", false, classLoader);
        Class<?> cls13 = Class.forName("com.android.server.wm.TransitionController", false, classLoader);
        Class<?> cls14 = Class.forName("android.window.WindowContainerTransaction", false, classLoader);
        Class<?> cls15 = Class.forName("android.window.WindowContainerToken", false, classLoader);
        this.anyTaskForId = cls3.getDeclaredMethod("anyTaskForId", Integer.TYPE, Integer.TYPE);
        this.getDisplayContent = cls3.getDeclaredMethod("getDisplayContent", Integer.TYPE);
        this.currentUser = cls3.getDeclaredField("mCurrentUser");
        this.taskUser = cls4.getDeclaredField("mUserId");
        this.trimmable = cls4.getDeclaredField("mIsTrimmableFromRecents");
        this.getDisplayId = cls5.getDeclaredMethod("getDisplayId", new Class[0]);
        this.forceHidden = cls5.getDeclaredField("mForceHiddenFlags");
        this.getRequestedMode = cls7.getDeclaredMethod("getRequestedOverrideWindowingMode", new Class[0]);
        this.getRequestedBounds = cls7.getDeclaredMethod("getRequestedOverrideBounds", new Class[0]);
        this.focusableRaw = cls6.getDeclaredField("mIsFocusable");
        this.remoteToken = cls6.getDeclaredField("mRemoteToken");
        this.getParent = cls6.getDeclaredMethod("getParent", new Class[0]);
        if (this.getParent.getReturnType() != cls6) {
            this.getParent = findReturning(cls6, "getParent", cls6);
        }
        this.getSurfaceControl = cls6.getDeclaredMethod("getSurfaceControl", new Class[0]);
        this.reparentSurface = cls6.getDeclaredMethod("reparentSurfaceControl", SurfaceControl.Transaction.class, SurfaceControl.class);
        this.updateSurfacePosition = cls6.getDeclaredMethod("updateSurfacePosition", SurfaceControl.Transaction.class);
        this.toToken = cls8.getDeclaredMethod("toWindowContainerToken", new Class[0]);
        this.interceptBackSet = cls9.getDeclaredField("mInterceptBackPressedOnRootTasks");
        this.tocField = cls2.getDeclaredField("mTaskOrganizerController");
        this.wocField = cls2.getDeclaredField("mWindowOrganizerController");
        this.applyTransaction = cls10.getDeclaredMethod("applyTransaction", cls14);
        this.processMap = cls2.getDeclaredField("mProcessMap");
        this.getProcess = cls11.getDeclaredMethod("getProcess", Integer.TYPE);
        this.wpcName = cls12.getDeclaredField("mName");
        this.wpcUid = cls12.getDeclaredField("mUid");
        this.wpcPid = cls12.getDeclaredMethod("getPid", new Class[0]);
        this.wpcRemoved = cls12.getDeclaredMethod("isRemoved", new Class[0]);
        this.wpcHasThread = cls12.getDeclaredMethod("hasThread", new Class[0]);
        this.inTransition = cls13.getDeclaredMethod("inTransition", cls6);
        this.wctNew = cls14.getConstructor(new Class[0]);
        this.wctMode = cls14.getMethod("setWindowingMode", cls15, Integer.TYPE);
        this.wctBounds = cls14.getMethod("setBounds", cls15, Rect.class);
        this.wctFocusable = cls14.getMethod("setFocusable", cls15, Boolean.TYPE);
        this.wctHidden = cls14.getMethod("setHidden", cls15, Boolean.TYPE);
        this.wctBack = cls14.getMethod("setInterceptBackPressedOnTaskRoot", cls15, Boolean.TYPE);
        this.wctTrim = cls14.getMethod("setTaskTrimmableFromRecents", cls15, Boolean.TYPE);
        final Field declaredField = cls.getDeclaredField("mGlobalLock");
        final Field declaredField2 = cls.getDeclaredField("mRoot");
        final Field declaredField3 = cls.getDeclaredField("mAtmService");
        final Field declaredField4 = cls.getDeclaredField("mH");
        final Field declaredField5 = cls.getDeclaredField("mContext");
        AccessibleObject[] accessibleObjectArr = {this.anyTaskForId, this.getDisplayContent, this.currentUser, this.taskUser, this.trimmable, this.getDisplayId, this.forceHidden, this.getRequestedMode, this.getRequestedBounds, this.focusableRaw, this.remoteToken, this.getParent, this.getSurfaceControl, this.reparentSurface, this.updateSurfacePosition, this.toToken, this.interceptBackSet, this.tocField, this.wocField, this.applyTransaction, this.processMap, this.getProcess, this.wpcName, this.wpcUid, this.wpcPid, this.wpcRemoved, this.wpcHasThread, this.inTransition, declaredField, declaredField2, declaredField3, declaredField4, declaredField5};
        for (int i = 0; i < 33; i++) {
            accessibleObjectArr[i].setAccessible(true);
        }
        Method[] methodArr = {cls13.getDeclaredMethod("validateStatesOnIdle", new Class[0]), cls13.getDeclaredMethod("unregisterTransitionPlayer", Class.forName("android.window.ITransitionPlayer", false, classLoader))};
        for (int i2 = 0; i2 < 2; i2++) {
            xposedInterface.hook(methodArr[i2]).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda16
                public final Object intercept(XposedInterface.Chain chain) {
                    return WorkspaceWm.this.m3404lambda$install$0$devduotaskcoreWorkspaceWm(chain);
                }
            });
        }
        xposedInterface.hook(cls.getDeclaredMethod("onTransact", Integer.TYPE, Parcel.class, Parcel.class, Integer.TYPE)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda17
            public final Object intercept(XposedInterface.Chain chain) {
                return WorkspaceWm.this.m3405lambda$install$1$devduotaskcoreWorkspaceWm(declaredField, declaredField2, declaredField3, declaredField4, declaredField5, chain);
            }
        });
        installSourceHooks(xposedInterface, classLoader);
        Log.i(TAG, "server bridge installed code=0x" + Integer.toHexString(WorkspaceProtocol.TRANSACTION) + " build=" + WorkspaceProtocol.buildId);
    }

    /* renamed from: lambda$install$0$dev-duo-taskcore-WorkspaceWm, reason: not valid java name */
    /* synthetic */ Object m3404lambda$install$0$devduotaskcoreWorkspaceWm(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        this.transitionController = chain.getThisObject();
        if (this.pendingRestore != null && this.globalLock != null) {
            synchronized (this.globalLock) {
                Session session = this.pendingRestore;
                if (session != null) {
                    this.pendingRestore = null;
                    restoreOrDefer(session);
                }
            }
        }
        return proceed;
    }

    /* renamed from: lambda$install$1$dev-duo-taskcore-WorkspaceWm, reason: not valid java name */
    /* synthetic */ Object m3405lambda$install$1$devduotaskcoreWorkspaceWm(Field field, Field field2, Field field3, Field field4, Field field5, XposedInterface.Chain chain) throws Throwable {
        if (((Integer) chain.getArg(0)).intValue() != 15991297) {
            return chain.proceed();
        }
        Parcel parcel = (Parcel) chain.getArg(1);
        int dataPosition = parcel.dataPosition();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        try {
            parcel.enforceInterface(WorkspaceProtocol.INTERFACE);
            if (parcel.dataAvail() < 4 || parcel.readInt() != WorkspaceProtocol.magic()) {
                parcel.setDataPosition(dataPosition);
                return chain.proceed();
            }
            if (this.wms == null) {
                this.wms = chain.getThisObject();
                this.globalLock = field.get(this.wms);
                this.root = field2.get(this.wms);
                this.atm = field3.get(this.wms);
                this.wmHandler = (Handler) field4.get(this.wms);
                this.systemContext = (Context) field5.get(this.wms);
            }
            handle(parcel, (Parcel) chain.getArg(2), callingUid, callingPid);
            return Boolean.TRUE;
        } catch (SecurityException e) {
            parcel.setDataPosition(dataPosition);
            return chain.proceed();
        }
    }

    private void installSourceHooks(XposedInterface xposedInterface, ClassLoader classLoader) throws ReflectiveOperationException {
        Class<?> cls = Class.forName("com.android.server.am.ActivityManagerService", false, classLoader);
        Class<?> cls2 = Class.forName("com.android.server.am.PendingIntentRecord", false, classLoader);
        Class<?> cls3 = Class.forName("com.android.server.wm.ActivityRecord", false, classLoader);
        Class<?> cls4 = Class.forName("com.android.server.wm.ActivityStarter", false, classLoader);
        Class<?> cls5 = Class.forName("com.android.server.wm.ActivityStarter$Request", false, classLoader);
        Class<?> cls6 = Class.forName("com.android.server.wm.Transition", false, classLoader);
        Class<?> cls7 = Class.forName("com.android.server.wm.WindowContainer", false, classLoader);
        Class<?> cls8 = Class.forName("com.android.server.wm.ConfigurationContainer", false, classLoader);
        Class<?> cls9 = Class.forName("com.android.server.wm.Task", false, classLoader);
        Class<?> cls10 = Class.forName("com.android.server.wm.RootWindowContainer", false, classLoader);
        Class<?> cls11 = Class.forName("android.app.ActivityOptions", false, classLoader);
        Class<?> cls12 = Class.forName("android.app.IApplicationThread", false, classLoader);
        Class<?> cls13 = Class.forName("android.content.IIntentReceiver", false, classLoader);
        Class<?> cls14 = Class.forName("android.content.IIntentSender", false, classLoader);
        this.starterRequest = cls4.getDeclaredField("mRequest");
        this.originatingIntent = cls5.getDeclaredField("originatingPendingIntent");
        this.lastActivity = cls4.getDeclaredField("mLastStartActivityRecord");
        this.sourceActivity = cls4.getDeclaredField("mSourceRecord");
        this.activityToken = Class.forName("com.android.server.wm.WindowToken", false, classLoader).getDeclaredField("token");
        this.activityFinishing = cls3.getDeclaredField("finishing");
        this.activityTransitions = cls7.getDeclaredField("mTransitionController");
        this.taskIdField = cls9.getDeclaredField("mTaskId");
        this.activityTask = cls3.getDeclaredMethod("getTask", new Class[0]);
        this.transitionToken = cls6.getDeclaredMethod("getToken", new Class[0]);
        this.transitionAborted = cls6.getDeclaredMethod("isAborted", new Class[0]);
        this.visibleRequested = cls7.getDeclaredMethod("isVisibleRequested", new Class[0]);
        this.focusedRoot = cls10.getDeclaredMethod("getTopDisplayFocusedRootTask", new Class[0]);
        this.topResumed = cls9.getDeclaredMethod("getTopResumedActivity", new Class[0]);
        this.activityType = cls8.getDeclaredMethod("getActivityType", new Class[0]);
        this.successfulStart = ActivityManager.class.getDeclaredMethod("isStartResultSuccessful", Integer.TYPE);
        this.optionsFromBundle = cls11.getDeclaredMethod("fromBundle", Bundle.class);
        this.launchCookie = cls11.getDeclaredMethod("getLaunchCookie", new Class[0]);
        AccessibleObject[] accessibleObjectArr = {this.starterRequest, this.originatingIntent, this.lastActivity, this.sourceActivity, this.activityToken, this.activityFinishing, this.activityTransitions, this.taskIdField, this.activityTask, this.transitionToken, this.transitionAborted, this.visibleRequested, this.focusedRoot, this.topResumed, this.activityType, this.successfulStart, this.optionsFromBundle, this.launchCookie};
        for (int i = 0; i < 18; i++) {
            accessibleObjectArr[i].setAccessible(true);
        }
        xposedInterface.hook(cls.getDeclaredMethod("sendIntentSender", cls12, cls14, IBinder.class, Integer.TYPE, Intent.class, String.class, cls13, String.class, Bundle.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda0
            public final Object intercept(XposedInterface.Chain chain) {
                return WorkspaceWm.this.m3411lambda$installSourceHooks$2$devduotaskcoreWorkspaceWm(chain);
            }
        });
        xposedInterface.hook(cls2.getDeclaredMethod("sendInner", cls12, Integer.TYPE, Intent.class, String.class, IBinder.class, cls13, String.class, IBinder.class, String.class, Integer.TYPE, Integer.TYPE, Integer.TYPE, Bundle.class, Integer.TYPE, Integer.TYPE)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda1
            public final Object intercept(XposedInterface.Chain chain) {
                return WorkspaceWm.this.m3412lambda$installSourceHooks$3$devduotaskcoreWorkspaceWm(chain);
            }
        });
        xposedInterface.hook(cls4.getDeclaredMethod("handleStartResult", cls3, cls11, Integer.TYPE, Boolean.TYPE, Class.forName("android.window.RemoteTransition", false, classLoader), cls6, Integer.TYPE)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda2
            public final Object intercept(XposedInterface.Chain chain) {
                return WorkspaceWm.this.m3413lambda$installSourceHooks$7$devduotaskcoreWorkspaceWm(chain);
            }
        });
        Method[] methodArr = {cls3.getDeclaredMethod("makeFinishingLocked", new Class[0]), cls3.getDeclaredMethod("removeImmediately", new Class[0])};
        for (int i2 = 0; i2 < 2; i2++) {
            xposedInterface.hook(methodArr[i2]).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda3
                public final Object intercept(XposedInterface.Chain chain) {
                    return WorkspaceWm.this.m3414lambda$installSourceHooks$8$devduotaskcoreWorkspaceWm(chain);
                }
            });
        }
        xposedInterface.hook(Class.forName("com.android.server.TelephonyRegistry", false, classLoader).getDeclaredMethod("notifyCallStateForAllSubs", Integer.TYPE, String.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda4
            public final Object intercept(XposedInterface.Chain chain) {
                return WorkspaceWm.this.m3415lambda$installSourceHooks$9$devduotaskcoreWorkspaceWm(chain);
            }
        });
        Class<?> cls15 = Class.forName("com.android.server.wm.ActivityTaskSupervisor", false, classLoader);
        xposedInterface.hook(Class.forName("com.android.server.wm.ActivityTaskManagerService", false, classLoader).getDeclaredMethod("startActivityFromRecents", Integer.TYPE, Bundle.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda5
            public final Object intercept(XposedInterface.Chain chain) {
                return WorkspaceWm.this.m3406lambda$installSourceHooks$10$devduotaskcoreWorkspaceWm(chain);
            }
        });
        xposedInterface.hook(cls15.getDeclaredMethod("updateTopResumedActivityIfNeeded", String.class)).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda6
            public final Object intercept(XposedInterface.Chain chain) {
                return WorkspaceWm.this.m3407lambda$installSourceHooks$11$devduotaskcoreWorkspaceWm(chain);
            }
        });
        xposedInterface.hook(Class.forName("com.android.server.wm.WindowOrganizerController", false, classLoader).getDeclaredMethod("finishTransition", IBinder.class, Class.forName("android.window.WindowContainerTransaction", false, classLoader))).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda7
            public final Object intercept(XposedInterface.Chain chain) {
                return WorkspaceWm.this.m3408lambda$installSourceHooks$12$devduotaskcoreWorkspaceWm(chain);
            }
        });
        xposedInterface.hook(cls6.getDeclaredMethod("abort", new Class[0])).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda8
            public final Object intercept(XposedInterface.Chain chain) {
                return WorkspaceWm.this.m3409lambda$installSourceHooks$13$devduotaskcoreWorkspaceWm(chain);
            }
        });
        xposedInterface.hook(Class.forName("com.android.server.wm.TransitionController", false, classLoader).getDeclaredMethod("validateStatesOnIdle", new Class[0])).intercept(new XposedInterface.Hooker() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda9
            public final Object intercept(XposedInterface.Chain chain) {
                return WorkspaceWm.this.m3410lambda$installSourceHooks$14$devduotaskcoreWorkspaceWm(chain);
            }
        });
    }

    /* renamed from: lambda$installSourceHooks$2$dev-duo-taskcore-WorkspaceWm, reason: not valid java name */
    /* synthetic */ Object m3411lambda$installSourceHooks$2$devduotaskcoreWorkspaceWm(XposedInterface.Chain chain) throws Throwable {
        Source remove;
        Bundle bundle = (Bundle) chain.getArg(8);
        if (bundle == null || !bundle.containsKey(WorkspaceProtocol.SOURCE_KEY)) {
            return chain.proceed();
        }
        IBinder binder = bundle.getBinder(WorkspaceProtocol.SOURCE_KEY);
        IBinder asBinder = ((IInterface) chain.getArg(1)).asBinder();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        if (this.session == null) {
            throw new SecurityException("source session/caller mismatch");
        }
        synchronized (this.globalLock) {
            Session session = this.session;
            if (session == null || session.dead || session.uid != callingUid || session.pid != callingPid) {
                throw new SecurityException("source session/caller mismatch");
            }
            remove = session.registeredSources.remove(binder);
            Object invoke = this.optionsFromBundle.invoke(null, bundle);
            IBinder iBinder = invoke == null ? null : (IBinder) this.launchCookie.invoke(invoke, new Object[0]);
            if (remove == null || remove.piTarget != asBinder || remove.cookie != iBinder) {
                throw new SecurityException("source target/cookie mismatch");
            }
        }
        Object[] array = chain.getArgs().toArray();
        Bundle bundle2 = new Bundle(bundle);
        bundle2.remove(WorkspaceProtocol.SOURCE_KEY);
        array[8] = bundle2;
        Source source = this.sendingSource.get();
        this.sendingSource.set(remove);
        try {
            Object proceed = chain.proceed(array);
            synchronized (this.globalLock) {
                if (this.session == remove.session && !remove.session.dead && remove.result != null && ((Boolean) this.successfulStart.invoke(null, (Integer) proceed)).booleanValue()) {
                    remove.sendCompleted = true;
                    if (remove.kind == 1 && !remove.session.fsis.isEmpty()) {
                        remove.session.fsiLeftByUser = true;
                    }
                    postSource(remove.session, remove.result);
                    postFsiProbe(null);
                }
            }
            if (source == null) {
                this.sendingSource.remove();
            } else {
                this.sendingSource.set(source);
            }
            return proceed;
        } catch (Throwable th) {
            if (source == null) {
                this.sendingSource.remove();
            } else {
                this.sendingSource.set(source);
            }
            throw th;
        }
    }

    /* renamed from: lambda$installSourceHooks$3$dev-duo-taskcore-WorkspaceWm, reason: not valid java name */
    /* synthetic */ Object m3412lambda$installSourceHooks$3$devduotaskcoreWorkspaceWm(XposedInterface.Chain chain) throws Throwable {
        Source source = this.sendingSource.get();
        if (source == null) {
            return chain.proceed();
        }
        Object obj = source.record;
        source.record = chain.getThisObject();
        try {
            return chain.proceed();
        } finally {
            source.record = obj;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x0355  */
    /* renamed from: lambda$installSourceHooks$7$dev-duo-taskcore-WorkspaceWm, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    /* synthetic */ Object m3413lambda$installSourceHooks$7$devduotaskcoreWorkspaceWm(XposedInterface.Chain chain) throws Throwable {
        boolean z;
        WorkspaceProtocol.SourceEvent sourceEvent;
        IBinder iBinder;
        IBinder iBinder2;
        Object obj;
        IBinder iBinder3;
        Source source = this.sendingSource.get();
        Object thisObject = chain.getThisObject();
        Session session = this.session;
        int i = 0;
        if (session != null && !session.fsis.isEmpty() && ((Boolean) this.successfulStart.invoke(null, (Integer) chain.getArg(2))).booleanValue()) {
            Object obj2 = this.sourceActivity.get(thisObject);
            Object obj3 = this.lastActivity.get(thisObject);
            if (obj2 != null && obj3 != null && obj2 != obj3 && this.activityTask.invoke(obj3, new Object[0]) != null) {
                Object arg = chain.getArg(5);
                IBinder iBinder4 = arg == null ? null : (IBinder) this.transitionToken.invoke(arg, new Object[0]);
                z = false;
                for (Source source2 : session.fsis.values()) {
                    if (source2.activities.containsKey(obj2)) {
                        source2.activities.put(obj3, this.activityTask.invoke(obj3, new Object[i]));
                        source2.fsiTarget = taskRef(obj3);
                        if (iBinder4 == null) {
                            obj = obj2;
                            iBinder3 = iBinder4;
                        } else {
                            obj = obj2;
                            iBinder3 = iBinder4;
                            session.transitionSources.computeIfAbsent(iBinder4, new Function() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda11
                                @Override // java.util.function.Function
                                public final Object apply(Object obj4) {
                                    return WorkspaceWm.lambda$installSourceHooks$4((IBinder) obj4);
                                }
                            }).put(source2.request, new WorkspaceProtocol.SourceEvent(session.epoch, 1, source2.request, 2, ((Integer) chain.getArg(2)).intValue(), iBinder3, source2.fsiTarget, null, false));
                        }
                        z = true;
                    } else {
                        obj = obj2;
                        iBinder3 = iBinder4;
                    }
                    iBinder4 = iBinder3;
                    obj2 = obj;
                    i = 0;
                }
                if (source != null || source.record == null || this.originatingIntent.get(this.starterRequest.get(thisObject)) != source.record || !((Boolean) this.successfulStart.invoke(null, (Integer) chain.getArg(2))).booleanValue()) {
                    if (source != null && !z && session != null && !session.dead && !session.returning && ((Boolean) this.successfulStart.invoke(null, (Integer) chain.getArg(2))).booleanValue()) {
                        sourceEvent = crossAppLocked(session, thisObject, chain.getArg(5), ((Integer) chain.getArg(2)).intValue());
                    } else {
                        sourceEvent = null;
                    }
                    if (sourceEvent != null && sourceEvent.transition != null) {
                        session.transitionSources.computeIfAbsent(sourceEvent.transition, new Function() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda12
                            @Override // java.util.function.Function
                            public final Object apply(Object obj4) {
                                return WorkspaceWm.lambda$installSourceHooks$5((IBinder) obj4);
                            }
                        }).put(sourceEvent.request, sourceEvent);
                    }
                    Object proceed = chain.proceed();
                    if (sourceEvent != null && sourceEvent.transition == null) {
                        postSource(session, sourceEvent);
                    }
                    if (z) {
                        postFsiProbe(null);
                    }
                    return proceed;
                }
                Object obj4 = this.lastActivity.get(thisObject);
                Object invoke = obj4 == null ? null : this.activityTask.invoke(obj4, new Object[0]);
                if (invoke == null) {
                    return chain.proceed();
                }
                if (this.taskUser.getInt(invoke) != this.currentUser.getInt(this.root) || ((Integer) this.getDisplayId.invoke(invoke, new Object[0])).intValue() != 0) {
                    return chain.proceed();
                }
                Session session2 = source.session;
                if (this.session != session2 || session2.dead) {
                    return chain.proceed();
                }
                Object arg2 = chain.getArg(5);
                IBinder iBinder5 = arg2 == null ? null : (IBinder) this.transitionToken.invoke(arg2, new Object[0]);
                source.activity = obj4;
                source.task = invoke;
                this.transitionController = this.activityTransitions.get(obj4);
                IBinder iBinder6 = iBinder5;
                source.result = new WorkspaceProtocol.SourceEvent(session2.epoch, 1, source.request, source.kind, ((Integer) chain.getArg(2)).intValue(), iBinder5, taskRef(obj4), null, false);
                if (iBinder6 != null) {
                    session2.transitionSources.computeIfAbsent(iBinder6, new Function() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda13
                        @Override // java.util.function.Function
                        public final Object apply(Object obj5) {
                            return WorkspaceWm.lambda$installSourceHooks$6((IBinder) obj5);
                        }
                    }).put(source.request, source.result);
                }
                if (source.kind == 2 && !session2.fsis.containsKey(source.request)) {
                    if (session2.fsis.isEmpty()) {
                        session2.fsiMembers.clear();
                        session2.fsiMembers.putAll(source.members);
                        session2.fsiForeground = null;
                        session2.fsiLeftByUser = false;
                    }
                    source.activities.put(obj4, invoke);
                    source.fsiTarget = source.result.target;
                    session2.fsis.put(source.request, source);
                }
                Object proceed2 = chain.proceed();
                if (arg2 != null && ((Boolean) this.transitionAborted.invoke(arg2, new Object[0])).booleanValue()) {
                    Map<IBinder, WorkspaceProtocol.SourceEvent> map = session2.transitionSources.get(iBinder6);
                    if (map != null) {
                        map.remove(source.request);
                        if (map.isEmpty()) {
                            session2.transitionSources.remove(iBinder6);
                        }
                    }
                    iBinder = null;
                } else {
                    iBinder = iBinder6;
                }
                Object obj5 = this.lastActivity.get(thisObject);
                if (obj5 != null && this.activityTask.invoke(obj5, new Object[0]) != null) {
                    Object invoke2 = this.activityTask.invoke(obj5, new Object[0]);
                    if (this.taskUser.getInt(invoke2) == this.currentUser.getInt(this.root)) {
                        if (((Integer) this.getDisplayId.invoke(invoke2, new Object[0])).intValue() != 0) {
                            iBinder2 = iBinder;
                        } else {
                            source.activity = obj5;
                            source.task = invoke2;
                            IBinder iBinder7 = iBinder;
                            source.result = new WorkspaceProtocol.SourceEvent(session2.epoch, 1, source.request, source.kind, ((Integer) chain.getArg(2)).intValue(), iBinder, taskRef(obj5), null, false);
                            if (iBinder7 != null) {
                                session2.transitionSources.get(iBinder7).put(source.request, source.result);
                            }
                            if (source.kind == 2) {
                                source.activities.put(obj5, invoke2);
                                source.fsiTarget = source.result.target;
                            }
                        }
                    } else {
                        iBinder2 = iBinder;
                    }
                    Map<IBinder, WorkspaceProtocol.SourceEvent> map2 = session2.transitionSources.get(iBinder2);
                    if (map2 != null) {
                        map2.remove(source.request);
                        if (map2.isEmpty()) {
                            session2.transitionSources.remove(iBinder2);
                        }
                    }
                    session2.fsis.remove(source.request);
                    source.result = null;
                    return proceed2;
                }
                postFsiProbe(null);
                return proceed2;
            }
        }
        z = false;
        if (source != null) {
        }
        if (source != null) {
        }
        sourceEvent = null;
        if (sourceEvent != null) {
            session.transitionSources.computeIfAbsent(sourceEvent.transition, new Function() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda12
                @Override // java.util.function.Function
                public final Object apply(Object obj42) {
                    return WorkspaceWm.lambda$installSourceHooks$5((IBinder) obj42);
                }
            }).put(sourceEvent.request, sourceEvent);
        }
        Object proceed3 = chain.proceed();
        if (sourceEvent != null) {
            postSource(session, sourceEvent);
        }
        if (z) {
        }
        return proceed3;
    }

    static /* synthetic */ Map lambda$installSourceHooks$4(IBinder iBinder) {
        return new LinkedHashMap();
    }

    static /* synthetic */ Map lambda$installSourceHooks$5(IBinder iBinder) {
        return new LinkedHashMap();
    }

    static /* synthetic */ Map lambda$installSourceHooks$6(IBinder iBinder) {
        return new LinkedHashMap();
    }

    /* renamed from: lambda$installSourceHooks$8$dev-duo-taskcore-WorkspaceWm, reason: not valid java name */
    /* synthetic */ Object m3414lambda$installSourceHooks$8$devduotaskcoreWorkspaceWm(XposedInterface.Chain chain) throws Throwable {
        boolean z;
        Object proceed = chain.proceed();
        Session session = this.session;
        if (session != null) {
            synchronized (this.globalLock) {
                z = false;
                for (Source source : session.fsis.values()) {
                    if (source.activities.containsKey(chain.getThisObject())) {
                        if ("removeImmediately".equals(chain.getExecutable().getName())) {
                            source.removedActivities.add(chain.getThisObject());
                        }
                        z = true;
                    }
                }
            }
            if (z) {
                postFsiProbe(null);
            }
        }
        return proceed;
    }

    /* renamed from: lambda$installSourceHooks$9$dev-duo-taskcore-WorkspaceWm, reason: not valid java name */
    /* synthetic */ Object m3415lambda$installSourceHooks$9$devduotaskcoreWorkspaceWm(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        int intValue = ((Integer) chain.getArg(0)).intValue();
        if (intValue != this.lastCallState) {
            this.lastCallState = intValue;
            Session session = this.session;
            if (session != null && !session.dead && this.wmHandler != null) {
                postSource(session, callEvent(session, intValue, false));
            }
        }
        return proceed;
    }

    /* renamed from: lambda$installSourceHooks$10$dev-duo-taskcore-WorkspaceWm, reason: not valid java name */
    /* synthetic */ Object m3406lambda$installSourceHooks$10$devduotaskcoreWorkspaceWm(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (this.session != null && ((Boolean) this.successfulStart.invoke(null, (Integer) proceed)).booleanValue()) {
            synchronized (this.globalLock) {
                Session session = this.session;
                if (session != null && !session.fsis.isEmpty()) {
                    session.fsiLeftByUser = true;
                }
            }
        }
        return proceed;
    }

    /* renamed from: lambda$installSourceHooks$11$dev-duo-taskcore-WorkspaceWm, reason: not valid java name */
    /* synthetic */ Object m3407lambda$installSourceHooks$11$devduotaskcoreWorkspaceWm(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (this.session != null) {
            postFsiProbe(null);
        }
        return proceed;
    }

    /* renamed from: lambda$installSourceHooks$12$dev-duo-taskcore-WorkspaceWm, reason: not valid java name */
    /* synthetic */ Object m3408lambda$installSourceHooks$12$devduotaskcoreWorkspaceWm(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (this.session != null) {
            postFsiProbe((IBinder) chain.getArg(0));
        }
        return proceed;
    }

    /* renamed from: lambda$installSourceHooks$13$dev-duo-taskcore-WorkspaceWm, reason: not valid java name */
    /* synthetic */ Object m3409lambda$installSourceHooks$13$devduotaskcoreWorkspaceWm(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (this.session != null) {
            postFsiProbe((IBinder) this.transitionToken.invoke(chain.getThisObject(), new Object[0]));
        }
        return proceed;
    }

    /* renamed from: lambda$installSourceHooks$14$dev-duo-taskcore-WorkspaceWm, reason: not valid java name */
    /* synthetic */ Object m3410lambda$installSourceHooks$14$devduotaskcoreWorkspaceWm(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        if (this.session != null) {
            postFsiProbe(null);
        }
        return proceed;
    }

    private WorkspaceProtocol.SourceEvent crossAppLocked(Session session, Object obj, Object obj2, int i) throws ReflectiveOperationException {
        Saved saved;
        Object obj3 = this.sourceActivity.get(obj);
        Object obj4 = this.lastActivity.get(obj);
        IBinder iBinder = null;
        if (obj3 == null || obj4 == null) {
            return null;
        }
        Object invoke = this.activityTask.invoke(obj3, new Object[0]);
        Object invoke2 = this.activityTask.invoke(obj4, new Object[0]);
        if (invoke == null || invoke2 == null || invoke == invoke2 || (saved = session.saved.get(Integer.valueOf(this.taskIdField.getInt(invoke)))) == null || saved.task != invoke || this.taskUser.getInt(invoke2) != this.currentUser.getInt(this.root) || ((Integer) this.getDisplayId.invoke(invoke2, new Object[0])).intValue() != 0) {
            return null;
        }
        if (obj2 != null) {
            iBinder = (IBinder) this.transitionToken.invoke(obj2, new Object[0]);
        }
        return new WorkspaceProtocol.SourceEvent(session.epoch, 1, new Binder(), ((Integer) this.activityType.invoke(invoke2, new Object[0])).intValue() == 2 ? 4 : 3, i, iBinder, taskRef(obj4), taskRef(obj3), false);
    }

    private static WorkspaceProtocol.SourceEvent callEvent(Session session, int i, boolean z) {
        return new WorkspaceProtocol.SourceEvent(session.epoch, 4, null, 0, i, null, null, null, z);
    }

    private WorkspaceProtocol.TaskRef taskRef(Object obj) throws ReflectiveOperationException {
        Object invoke = this.activityTask.invoke(obj, new Object[0]);
        if (invoke == null) {
            return null;
        }
        return new WorkspaceProtocol.TaskRef(this.taskIdField.getInt(invoke), this.taskUser.getInt(invoke), ((Integer) this.getDisplayId.invoke(invoke, new Object[0])).intValue(), ((Integer) this.activityType.invoke(invoke, new Object[0])).intValue(), (IBinder) this.remoteToken.get(invoke), (IBinder) this.activityToken.get(obj));
    }

    private void postSource(final Session session, final WorkspaceProtocol.SourceEvent sourceEvent) {
        this.wmHandler.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceWm.lambda$postSource$15(WorkspaceProtocol.SourceEvent.this, session);
            }
        });
    }

    static /* synthetic */ void lambda$postSource$15(WorkspaceProtocol.SourceEvent sourceEvent, Session session) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                obtain.writeInterfaceToken(WorkspaceProtocol.EVENT_INTERFACE);
                obtain.writeInt(WorkspaceProtocol.magic());
                obtain.writeInt(1);
                obtain.writeString(WorkspaceProtocol.buildId);
                sourceEvent.write(obtain);
                if (!session.owner.transact(1, obtain, null, 1)) {
                    Log.e(TAG, "source callback rejected for " + sourceEvent.request);
                }
            } catch (RemoteException e) {
                Log.e(TAG, "source callback failed", e);
            }
        } finally {
            obtain.recycle();
        }
    }

    private void postFsiProbe(final IBinder iBinder) {
        this.wmHandler.post(new Runnable() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                WorkspaceWm.this.m3416lambda$postFsiProbe$16$devduotaskcoreWorkspaceWm(iBinder);
            }
        });
    }

    /* renamed from: lambda$postFsiProbe$16$dev-duo-taskcore-WorkspaceWm, reason: not valid java name */
    /* synthetic */ void m3416lambda$postFsiProbe$16$devduotaskcoreWorkspaceWm(IBinder iBinder) {
        boolean z;
        try {
            synchronized (this.globalLock) {
                Session session = this.session;
                if (session != null && !session.dead) {
                    if (iBinder != null) {
                        session.transitionSources.remove(iBinder);
                    }
                    if (session.fsis.isEmpty()) {
                        return;
                    }
                    Object invoke = this.focusedRoot.invoke(this.root, new Object[0]);
                    Source source = null;
                    Object invoke2 = invoke == null ? null : this.topResumed.invoke(invoke, new Object[0]);
                    WorkspaceProtocol.TaskRef taskRef = invoke2 == null ? null : taskRef(invoke2);
                    if (taskRef == null) {
                        return;
                    }
                    Iterator<Source> it = session.fsis.values().iterator();
                    Source source2 = null;
                    while (it.hasNext()) {
                        source2 = it.next();
                    }
                    if (source2.sendCompleted && session.fsiForeground != taskRef.activityToken) {
                        session.fsiForeground = taskRef.activityToken;
                        postSource(session, fsiEvent(source2, 2, taskRef, iBinder, false));
                    }
                    Iterator<Source> it2 = session.fsis.values().iterator();
                    while (it2.hasNext()) {
                        Source next = it2.next();
                        Iterator<Map.Entry<Object, Object>> it3 = next.activities.entrySet().iterator();
                        while (it3.hasNext()) {
                            Map.Entry<Object, Object> next2 = it3.next();
                            if (!next.removedActivities.contains(next2.getKey()) && (!this.activityFinishing.getBoolean(next2.getKey()) || ((Boolean) this.visibleRequested.invoke(next2.getKey(), new Object[0])).booleanValue())) {
                                z = false;
                                if (z && !((Boolean) this.inTransition.invoke(this.transitionController, next2.getKey())).booleanValue() && !((Boolean) this.inTransition.invoke(this.transitionController, next2.getValue())).booleanValue()) {
                                    next.removedActivities.remove(next2.getKey());
                                    it3.remove();
                                }
                            }
                            z = true;
                            if (z) {
                                next.removedActivities.remove(next2.getKey());
                                it3.remove();
                            }
                        }
                        if (next.sendCompleted && next.activities.isEmpty() && !((Boolean) this.inTransition.invoke(this.transitionController, this.activityTask.invoke(invoke2, new Object[0]))).booleanValue()) {
                            it2.remove();
                            source = next;
                        }
                    }
                    if (source != null && session.fsis.isEmpty()) {
                        postSource(session, fsiEvent(source, 3, taskRef, iBinder, !session.fsiLeftByUser && session.fsiMembers.get(Integer.valueOf(taskRef.taskId)) == taskRef.taskToken));
                        session.fsiMembers.clear();
                    }
                }
            }
        } catch (ReflectiveOperationException e) {
            Log.e(TAG, "FSI state read failed", e);
        }
    }

    private WorkspaceProtocol.SourceEvent fsiEvent(Source source, int i, WorkspaceProtocol.TaskRef taskRef, IBinder iBinder, boolean z) {
        return new WorkspaceProtocol.SourceEvent(source.session.epoch, i, source.request, 2, source.result.startResult, iBinder, source.fsiTarget, taskRef, z);
    }

    private static Method findReturning(Class<?> cls, String str, Class<?> cls2) throws NoSuchMethodException {
        for (Method method : cls.getDeclaredMethods()) {
            if (method.getName().equals(str) && method.getParameterTypes().length == 0 && method.getReturnType() == cls2) {
                return method;
            }
        }
        throw new NoSuchMethodException(cls.getName() + "." + str + " -> " + cls2.getName());
    }

    private void handle(Parcel parcel, Parcel parcel2, int i, int i2) {
        String valueOf;
        int i3;
        int i4;
        Parcel obtain = Parcel.obtain();
        try {
        } catch (Throwable th) {
            valueOf = String.valueOf(th instanceof InvocationTargetException ? th.getCause() : th);
            Log.e(TAG, "request failed", th);
            i3 = 5;
            i4 = 0;
        }
        if (parcel.dataAvail() > 4096) {
            throw new IllegalArgumentException("request too large");
        }
        int readInt = parcel.readInt();
        int readInt2 = parcel.readInt();
        long readLong = parcel.readLong();
        IBinder readStrongBinder = parcel.readStrongBinder();
        String readString = parcel.readString();
        String permissionProblem = permissionProblem(i, i2);
        if (permissionProblem != null) {
            valueOf = permissionProblem;
            i3 = 1;
            i4 = 0;
        } else {
            i3 = 2;
            if (readInt != 1) {
                valueOf = "protocol " + readInt;
                i4 = 0;
            } else {
                valueOf = "";
                if (readInt2 == 7) {
                    obtain.writeString(WorkspaceProtocol.buildId);
                    i4 = 0;
                    i3 = 0;
                } else if (!WorkspaceProtocol.buildId.equals(readString)) {
                    valueOf = "server build " + WorkspaceProtocol.buildId + " != client " + readString + "（系统端尚未加载本版本，暂不能进入工作台）";
                    i4 = 0;
                } else {
                    long clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        String dispatch = dispatch(readInt2, readLong, readStrongBinder, i, i2, parcel, obtain);
                        if (dispatch != null) {
                            valueOf = dispatch;
                            i3 = 3;
                        } else {
                            i3 = 0;
                        }
                        Session session = this.session;
                        i4 = session == null ? 0 : session.revision;
                    } finally {
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                    }
                }
            }
        }
        parcel2.writeInt(WorkspaceProtocol.magic());
        parcel2.writeInt(i3);
        parcel2.writeInt(i3 != 0 ? 0 : 1);
        parcel2.writeInt(i4);
        parcel2.writeString(valueOf);
        if (i3 == 0) {
            parcel2.appendFrom(obtain, 0, obtain.dataSize());
        }
        obtain.recycle();
    }

    private String permissionProblem(int i, int i2) {
        Context context = this.systemContext;
        if (context.checkPermission("android.permission.INTERNAL_SYSTEM_WINDOW", i2, i) != 0 || context.checkPermission("android.permission.MANAGE_ACTIVITY_TASKS", i2, i) != 0) {
            return "caller " + i + "/" + i2 + " lacks window/task permission";
        }
        if (this.systemUiUid < 0) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                this.systemUiUid = context.getPackageManager().getApplicationInfo("com.android.systemui", 0).uid;
            } catch (PackageManager.NameNotFoundException e) {
                return "systemui not installed";
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        if (i == this.systemUiUid) {
            return null;
        }
        return "caller uid " + i + " is not SystemUI";
    }

    private Object processLocked(int i, int i2) throws ReflectiveOperationException {
        Object invoke = this.getProcess.invoke(this.processMap.get(this.atm), Integer.valueOf(i2));
        if (invoke != null && !((Boolean) this.wpcRemoved.invoke(invoke, new Object[0])).booleanValue() && ((Boolean) this.wpcHasThread.invoke(invoke, new Object[0])).booleanValue() && ((Integer) this.wpcPid.invoke(invoke, new Object[0])).intValue() == i2 && this.wpcUid.getInt(invoke) == i && "com.android.systemui".equals(this.wpcName.get(invoke))) {
            return invoke;
        }
        return null;
    }

    private Object liveTaskLocked(int i, IBinder iBinder) throws ReflectiveOperationException {
        Object invoke = this.anyTaskForId.invoke(this.root, Integer.valueOf(i), 0);
        if (invoke == null || this.remoteToken.get(invoke) != iBinder || this.taskUser.getInt(invoke) != this.currentUser.getInt(this.root) || ((Integer) this.getDisplayId.invoke(invoke, new Object[0])).intValue() != 0 || this.getDisplayContent.invoke(this.root, 0) == null) {
            return null;
        }
        return invoke;
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x033b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String dispatch(int i, long j, IBinder iBinder, int i2, int i3, Parcel parcel, Parcel parcel2) throws ReflectiveOperationException {
        Rect rect;
        synchronized (this.globalLock) {
            Object processLocked = processLocked(i2, i3);
            if (processLocked == null) {
                return "caller " + i2 + "/" + i3 + " is not the current SystemUI main process";
            }
            Session session = this.session;
            int i4 = 0;
            switch (i) {
                case 1:
                    parcel.readInt();
                    int readInt = parcel.readInt();
                    if (iBinder == null) {
                        return "no owner binder";
                    }
                    if (readInt != 0) {
                        return "display " + readInt + " not supported";
                    }
                    if (!this.unrestored.isEmpty()) {
                        return "unrestored tasks from an earlier session " + this.unrestored;
                    }
                    if (this.pendingRestore != null) {
                        return "previous session restore pending";
                    }
                    if (session != null && !session.dead && session.owner.pingBinder()) {
                        return "session " + session.epoch + " still open";
                    }
                    if (session != null) {
                        this.session = null;
                        restoreOrDefer(session);
                        if (!this.unrestored.isEmpty() || this.pendingRestore != null) {
                            return "previous session not restored";
                        }
                    }
                    Session session2 = new Session(j, iBinder, i2, i3, processLocked);
                    try {
                        iBinder.linkToDeath(session2, 0);
                        this.session = session2;
                        postSource(session2, callEvent(session2, this.lastCallState, true));
                        return null;
                    } catch (RemoteException e) {
                        return "owner already dead";
                    }
                case WorkspaceProtocol.QUERY /* 6 */:
                    parcel2.writeLong(session == null ? 0L : session.epoch);
                    parcel2.writeInt(session == null ? 0 : session.saved.size());
                    if (session != null) {
                        i4 = session.revision;
                    }
                    parcel2.writeInt(i4);
                    parcel2.writeString(this.unrestored + (this.pendingRestore == null ? "" : " pending=" + this.pendingRestore.saved.keySet()));
                    return null;
                default:
                    if (session != null && session.epoch == j && !session.dead) {
                        if (session.owner == iBinder && session.pid == i3 && session.process == processLocked) {
                            switch (i) {
                                case 2:
                                    int readInt2 = parcel.readInt();
                                    IBinder readStrongBinder = parcel.readStrongBinder();
                                    parcel.readInt();
                                    parcel.readInt();
                                    Object liveTaskLocked = liveTaskLocked(readInt2, readStrongBinder);
                                    if (liveTaskLocked == null) {
                                        return "task " + readInt2 + " not a live current-user default-display task with this token";
                                    }
                                    Saved saved = session.saved.get(Integer.valueOf(readInt2));
                                    if (saved != null && saved.token == readStrongBinder) {
                                        return "task " + readInt2 + " still leased in session " + j;
                                    }
                                    Rect rect2 = (Rect) this.getRequestedBounds.invoke(liveTaskLocked, new Object[0]);
                                    Set set = (Set) this.interceptBackSet.get(this.tocField.get(this.atm));
                                    int i5 = this.taskUser.getInt(liveTaskLocked);
                                    int intValue = ((Integer) this.getDisplayId.invoke(liveTaskLocked, new Object[0])).intValue();
                                    Object invoke = this.getParent.invoke(liveTaskLocked, new Object[0]);
                                    int intValue2 = ((Integer) this.getRequestedMode.invoke(liveTaskLocked, new Object[0])).intValue();
                                    if (rect2 != null && !rect2.isEmpty()) {
                                        rect = new Rect(rect2);
                                        Saved saved2 = new Saved(readInt2, i5, intValue, liveTaskLocked, invoke, readStrongBinder, new TaskBinding.Snapshot(intValue2, rect, this.trimmable.getBoolean(liveTaskLocked), this.focusableRaw.getBoolean(liveTaskLocked), (this.forceHidden.getInt(liveTaskLocked) & 2) == 0, set.contains(Integer.valueOf(readInt2))));
                                        session.saved.put(Integer.valueOf(readInt2), saved2);
                                        saved2.snapshot.write(parcel2);
                                        return null;
                                    }
                                    rect = null;
                                    Saved saved22 = new Saved(readInt2, i5, intValue, liveTaskLocked, invoke, readStrongBinder, new TaskBinding.Snapshot(intValue2, rect, this.trimmable.getBoolean(liveTaskLocked), this.focusableRaw.getBoolean(liveTaskLocked), (this.forceHidden.getInt(liveTaskLocked) & 2) == 0, set.contains(Integer.valueOf(readInt2))));
                                    session.saved.put(Integer.valueOf(readInt2), saved22);
                                    saved22.snapshot.write(parcel2);
                                    return null;
                                case 3:
                                    int readInt3 = parcel.readInt();
                                    if (readInt3 <= session.revision) {
                                        return "stale revision " + readInt3 + " <= " + session.revision;
                                    }
                                    session.revision = readInt3;
                                    return null;
                                case 4:
                                    session.returning = true;
                                    return null;
                                case 5:
                                    session.owner.unlinkToDeath(session, 0);
                                    this.session = null;
                                    return null;
                                case WorkspaceProtocol.QUERY /* 6 */:
                                case 7:
                                default:
                                    return "unknown op " + i;
                                case WorkspaceProtocol.RELEASE_TASK /* 8 */:
                                    return WorkspaceProtocol.withdraw(session.saved, parcel, new Function() { // from class: dev.duo.taskcore.WorkspaceWm$$ExternalSyntheticLambda15
                                        @Override // java.util.function.Function
                                        public final Object apply(Object obj) {
                                            IBinder iBinder2;
                                            iBinder2 = ((WorkspaceWm.Saved) obj).token;
                                            return iBinder2;
                                        }
                                    });
                                case WorkspaceProtocol.REGISTER_SOURCE /* 9 */:
                                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                                    IBinder readStrongBinder3 = parcel.readStrongBinder();
                                    IBinder readStrongBinder4 = parcel.readStrongBinder();
                                    int readInt4 = parcel.readInt();
                                    if (readStrongBinder2 != null && readStrongBinder3 != null && (readInt4 == 1 || readInt4 == 2)) {
                                        if (!session.returning && !session.registeredSources.containsKey(readStrongBinder2) && !session.fsis.containsKey(readStrongBinder2)) {
                                            session.registeredSources.put(readStrongBinder2, new Source(session, readStrongBinder2, readStrongBinder3, readStrongBinder4, readInt4));
                                            return null;
                                        }
                                        return "source/session already in use";
                                    }
                                    return "invalid source registration";
                                case WorkspaceProtocol.CANCEL_SOURCE /* 10 */:
                                    session.registeredSources.remove(parcel.readStrongBinder());
                                    return null;
                                case WorkspaceProtocol.LOOKUP_SOURCE /* 11 */:
                                    Map<IBinder, WorkspaceProtocol.SourceEvent> map = session.transitionSources.get(parcel.readStrongBinder());
                                    if (map != null) {
                                        i4 = map.size();
                                    }
                                    parcel2.writeInt(i4);
                                    if (map != null) {
                                        Iterator<WorkspaceProtocol.SourceEvent> it = map.values().iterator();
                                        while (it.hasNext()) {
                                            it.next().write(parcel2);
                                        }
                                    }
                                    return null;
                                case 12:
                                    if (!session.fsis.isEmpty()) {
                                        session.fsiLeftByUser = true;
                                    }
                                    return null;
                            }
                        }
                        return "owner/process mismatch";
                    }
                    return "no session " + j;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreOrDefer(Session session) {
        Object obj = this.transitionController;
        for (Saved saved : session.saved.values()) {
            if (obj != null) {
                try {
                    if (((Boolean) this.inTransition.invoke(obj, saved.task)).booleanValue()) {
                        this.pendingRestore = session;
                        Log.w(TAG, "restore of session " + session.epoch + " deferred: task " + saved.taskId + " in transition");
                        return;
                    }
                    continue;
                } catch (ReflectiveOperationException e) {
                    Log.e(TAG, "inTransition check failed", e);
                }
            }
        }
        restoreLocked(session);
    }

    private void restoreLocked(Session session) {
        for (Saved saved : session.saved.values()) {
            try {
                Object invoke = this.anyTaskForId.invoke(this.root, Integer.valueOf(saved.taskId), 0);
                if (invoke != null && invoke == saved.task && this.remoteToken.get(invoke) == saved.token) {
                    Object invoke2 = this.getParent.invoke(invoke, new Object[0]);
                    if (((Integer) this.getRequestedMode.invoke(invoke, new Object[0])).intValue() == 6 && this.taskUser.getInt(invoke) == saved.userId && ((Integer) this.getDisplayId.invoke(invoke, new Object[0])).intValue() == saved.displayId && invoke2 == saved.parent) {
                        Object invoke3 = this.toToken.invoke(saved.token, new Object[0]);
                        Object newInstance = this.wctNew.newInstance(new Object[0]);
                        TaskBinding.Snapshot snapshot = saved.snapshot;
                        this.wctMode.invoke(newInstance, invoke3, Integer.valueOf(snapshot.windowingMode));
                        this.wctBounds.invoke(newInstance, invoke3, snapshot.bounds == null ? new Rect() : new Rect(snapshot.bounds));
                        this.wctFocusable.invoke(newInstance, invoke3, Boolean.valueOf(snapshot.focusable));
                        this.wctHidden.invoke(newInstance, invoke3, Boolean.valueOf(snapshot.hidden));
                        this.wctBack.invoke(newInstance, invoke3, Boolean.valueOf(snapshot.interceptBack));
                        this.wctTrim.invoke(newInstance, invoke3, Boolean.valueOf(snapshot.trimmable));
                        this.applyTransaction.invoke(this.wocField.get(this.atm), newInstance);
                        Object invoke4 = this.getParent.invoke(invoke, new Object[0]);
                        SurfaceControl surfaceControl = invoke4 == null ? null : (SurfaceControl) this.getSurfaceControl.invoke(invoke4, new Object[0]);
                        SurfaceControl surfaceControl2 = (SurfaceControl) this.getSurfaceControl.invoke(invoke, new Object[0]);
                        if (surfaceControl2 == null || surfaceControl == null || !surfaceControl2.isValid() || !surfaceControl.isValid()) {
                            throw new IllegalStateException("no valid surface/parent to restore");
                        }
                        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                        try {
                            this.reparentSurface.invoke(invoke, transaction, surfaceControl);
                            this.updateSurfacePosition.invoke(invoke, transaction);
                            transaction.setScale(surfaceControl2, 1.0f, 1.0f).setCrop(surfaceControl2, null).setAlpha(surfaceControl2, 1.0f);
                            C0132Tx.windowCrop(transaction, surfaceControl2, null);
                            transaction.apply();
                            transaction.close();
                            Log.i(TAG, "restored task " + saved.taskId + " mode=" + snapshot.windowingMode);
                        } finally {
                        }
                    }
                    Log.w(TAG, "task " + saved.taskId + " changed by the system (mode " + this.getRequestedMode.invoke(invoke, new Object[0]) + "): not overwritten");
                }
            } catch (Throwable th) {
                this.unrestored.put(Integer.valueOf(saved.taskId), String.valueOf(th instanceof InvocationTargetException ? th.getCause() : th));
                Log.e(TAG, "restore failed for task " + saved.taskId, th);
            }
        }
    }
}
