package dev.duo.taskcore;

import android.graphics.Rect;
import android.util.Log;
import dev.duo.taskcore.TaskBinding;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final class WorkspaceSession {
    public static final String TAG = "TaskCore";
    private boolean adoptAnimate;
    private Object callFrontToken;
    private boolean callIdle;
    private boolean callInterrupted;
    private int callState;
    private String closeReason;
    private boolean closing;
    private boolean detachedForInterruption;
    private boolean displayMismatch;
    public final long epoch;
    private String failure;
    private boolean followingSystem;
    private TaskBinding frontTarget;
    private boolean fsiActive;
    private int generation;
    private boolean interruption;
    private boolean interruptionReturned;
    private boolean interruptionWasActive;
    private List<TaskBinding> lateOwned;
    private boolean locked;
    private TaskBinding main;
    private boolean mainBackedOut;
    private boolean mainToFront;

    /* renamed from: op */
    private int f1972op;
    private int opSerial;
    private String pendingPause;
    private final Platform platform;
    private boolean restoreWithIncoming;
    private boolean resumeAfterUnlock;
    private boolean resuming;
    private boolean retrying;
    private int revision;
    private TaskBinding systemTarget;
    private boolean unlockedInTransition;
    private boolean userLeft;
    private State state = State.IDLE;
    private final List<TaskBinding.Origin> mainHistory = new ArrayList();
    private int interruptionTask = -1;
    private boolean interruptionOk = true;
    private int callFront = -1;
    private int adopting = -1;
    private int interstitialTask = -1;
    private int selfHomeTask = -1;
    private final TaskBinding[] slots = new TaskBinding[4];
    private final List<TaskBinding> attachQueue = new ArrayList();
    private final List<String> log = new ArrayList();
    private int pendingAdopt = -1;

    public interface Done {
        void done(boolean z, String str);
    }

    public enum State {
        IDLE,
        PREPARING,
        ATTACHING,
        ACTIVE,
        TRANSITIONING,
        RETURNING,
        CLOSED,
        RETURN_FAILED,
        PAUSED
    }

    public static final class Refused extends Exception {
        public final boolean held;

        public Refused(String str) {
            this(str, false);
        }

        public Refused(String str, boolean z) {
            super(str);
            this.held = z;
        }
    }

    public interface Platform {
        void attach(TaskBinding taskBinding, Done done);

        void changed(WorkspaceSession workspaceSession);

        void createHost(TaskBinding taskBinding, Done done);

        void destroyHost(TaskBinding taskBinding);

        boolean focus(TaskBinding taskBinding);

        Geometry geometry();

        void giveBack(List<TaskBinding> list, TaskBinding taskBinding, Done done);

        TaskBinding.Origin inspect(int i) throws Refused;

        void isolate(TaskBinding taskBinding, TaskBinding[] taskBindingArr, Done done);

        void place(TaskBinding taskBinding, TaskBinding[] taskBindingArr, boolean z, Done done);

        String releaseOwner(TaskBinding taskBinding);

        void serverBeginReturn(long j, String str);

        String serverFinishReturn(long j);

        void serverLayout(long j, int i, TaskBinding taskBinding, TaskBinding[] taskBindingArr) throws Refused;

        void serverOpen(long j) throws Refused;

        void serverRelease(long j, TaskBinding taskBinding) throws Refused;

        TaskBinding.Snapshot serverSnapshot(long j, TaskBinding taskBinding) throws Refused;

        void takeOwner(TaskBinding taskBinding) throws Refused;

        default void bringToFront(TaskBinding taskBinding, TaskBinding[] taskBindingArr, Object obj, Done done) {
            done.done(true, "nothing to bring");
        }

        default void adoptRefused(int i) {
        }

        default void giveBackInPlace(List<TaskBinding> list, TaskBinding taskBinding, Done done) {
            giveBack(list, taskBinding, done);
        }

        default void releaseToSystem(TaskBinding taskBinding) {
        }

        default boolean takenBySystem(TaskBinding taskBinding) {
            return false;
        }
    }

    public WorkspaceSession(Platform platform, long j) {
        this.platform = platform;
        this.epoch = j;
    }

    public State state() {
        return this.state;
    }

    public TaskBinding main() {
        return this.main;
    }

    public TaskBinding slot(int i) {
        return this.slots[i];
    }

    public boolean closing() {
        return this.closing;
    }

    public String failure() {
        return this.failure;
    }

    public List<String> log() {
        return this.log;
    }

    public boolean busy() {
        return this.f1972op != 0;
    }

    public void open(int i, int[] iArr) {
        int i2;
        Refused e;
        if (this.state != State.IDLE) {
            throw new IllegalStateException("open twice " + this.state);
        }
        set(State.PREPARING);
        try {
            this.platform.serverOpen(this.epoch);
            Geometry geometry = this.platform.geometry();
            try {
                this.main = prepare(i);
                this.main.physical.set(geometry.logical);
                this.attachQueue.add(this.main);
                int i3 = 0;
                for (int i4 = 0; iArr != null && i4 < iArr.length && i3 < this.slots.length; i4++) {
                    if (iArr[i4] != i) {
                        try {
                            TaskBinding prepare = prepare(iArr[i4]);
                            prepare.physical.set(geometry.slots[i3]);
                            i2 = i3 + 1;
                            try {
                                this.slots[i3] = prepare;
                                this.attachQueue.add(prepare);
                                i3 = i2;
                            } catch (Refused e2) {
                                e = e2;
                                note("sub " + iArr[i4] + " skipped: " + e.getMessage());
                                i3 = i2;
                            }
                        } catch (Refused e3) {
                            i2 = i3;
                            e = e3;
                        }
                    }
                }
                set(State.ATTACHING);
                attachNext();
            } catch (Refused e4) {
                endWithServer("main refused: " + e4.getMessage());
            }
        } catch (Refused e5) {
            end(State.CLOSED, "server refused: " + e5.getMessage());
        }
    }

    private TaskBinding prepare(int i) throws Refused {
        TaskBinding.Origin inspect = this.platform.inspect(i);
        long j = this.epoch;
        int i2 = this.generation + 1;
        this.generation = i2;
        TaskBinding taskBinding = new TaskBinding(inspect, j, i2);
        taskBinding.snapshot = this.platform.serverSnapshot(this.epoch, taskBinding);
        return taskBinding;
    }

    private void attachNext() {
        if (this.closing) {
            returnAll();
            return;
        }
        if (this.attachQueue.isEmpty()) {
            if (this.restoreWithIncoming) {
                this.restoreWithIncoming = false;
                this.resuming = true;
                final int begin = begin();
                this.platform.bringToFront(this.main, (TaskBinding[]) this.slots.clone(), null, new Done() { // from class: dev.duo.taskcore.WorkspaceSession$$ExternalSyntheticLambda12
                    @Override // dev.duo.taskcore.WorkspaceSession.Done
                    public final void done(boolean z, String str) {
                        WorkspaceSession.this.m3348lambda$attachNext$0$devduotaskcoreWorkspaceSession(begin, z, str);
                    }
                });
                return;
            }
            final int begin2 = begin();
            final boolean z = this.adoptAnimate;
            this.adoptAnimate = false;
            this.platform.place(this.main, (TaskBinding[]) this.slots.clone(), z, new Done() { // from class: dev.duo.taskcore.WorkspaceSession$$ExternalSyntheticLambda13
                @Override // dev.duo.taskcore.WorkspaceSession.Done
                public final void done(boolean z2, String str) {
                    WorkspaceSession.this.m3349lambda$attachNext$1$devduotaskcoreWorkspaceSession(begin2, z, z2, str);
                }
            });
            return;
        }
        final TaskBinding remove = this.attachQueue.remove(0);
        final int begin3 = begin();
        this.platform.createHost(remove, new Done() { // from class: dev.duo.taskcore.WorkspaceSession$$ExternalSyntheticLambda14
            @Override // dev.duo.taskcore.WorkspaceSession.Done
            public final void done(boolean z2, String str) {
                WorkspaceSession.this.m3351lambda$attachNext$3$devduotaskcoreWorkspaceSession(begin3, remove, z2, str);
            }
        });
    }

    /* renamed from: lambda$attachNext$0$dev-duo-taskcore-WorkspaceSession, reason: not valid java name */
    /* synthetic */ void m3348lambda$attachNext$0$devduotaskcoreWorkspaceSession(int i, boolean z, String str) {
        if (accept(i)) {
            this.resuming = false;
            if (z) {
                attachNext();
            } else {
                fail("resume with incoming task failed: " + str);
            }
        }
    }

    /* renamed from: lambda$attachNext$1$dev-duo-taskcore-WorkspaceSession, reason: not valid java name */
    /* synthetic */ void m3349lambda$attachNext$1$devduotaskcoreWorkspaceSession(int i, boolean z, boolean z2, String str) {
        if (accept(i)) {
            settleLayout(z2, str, z ? "adopt" : "enter");
        }
    }

    /* renamed from: lambda$attachNext$3$dev-duo-taskcore-WorkspaceSession, reason: not valid java name */
    /* synthetic */ void m3351lambda$attachNext$3$devduotaskcoreWorkspaceSession(int i, final TaskBinding taskBinding, boolean z, String str) {
        if (accept(i)) {
            if (!z || this.closing) {
                this.platform.destroyHost(taskBinding);
                if (drop(taskBinding)) {
                    if (!z) {
                        note("host not ready for " + taskBinding + ": " + str);
                    }
                    if (z || taskBinding != this.main) {
                        attachNext();
                        return;
                    } else {
                        fail("main host not ready");
                        return;
                    }
                }
                return;
            }
            try {
                this.platform.takeOwner(taskBinding);
                if (taskBinding.lease != TaskBinding.Lease.TASK_GONE) {
                    taskBinding.lease = TaskBinding.Lease.OWNER_ACQUIRED;
                }
                final int begin = begin();
                this.platform.attach(taskBinding, new Done() { // from class: dev.duo.taskcore.WorkspaceSession$$ExternalSyntheticLambda10
                    @Override // dev.duo.taskcore.WorkspaceSession.Done
                    public final void done(boolean z2, String str2) {
                        WorkspaceSession.this.m3350lambda$attachNext$2$devduotaskcoreWorkspaceSession(begin, taskBinding, z2, str2);
                    }
                });
            } catch (Refused e) {
                if (e.held) {
                    if (taskBinding.lease != TaskBinding.Lease.TASK_GONE) {
                        taskBinding.lease = TaskBinding.Lease.OWNER_ACQUIRED;
                    }
                    note("owner unverified " + taskBinding + ": " + e.getMessage());
                    fail("owner unverified");
                    return;
                }
                this.platform.destroyHost(taskBinding);
                if (drop(taskBinding)) {
                    note("owner refused " + taskBinding + ": " + e.getMessage());
                    if (taskBinding == this.main) {
                        fail("main owner refused");
                    } else {
                        attachNext();
                    }
                }
            }
        }
    }

    /* renamed from: lambda$attachNext$2$dev-duo-taskcore-WorkspaceSession, reason: not valid java name */
    /* synthetic */ void m3350lambda$attachNext$2$devduotaskcoreWorkspaceSession(int i, TaskBinding taskBinding, boolean z, String str) {
        if (accept(i)) {
            if (!z || taskBinding.lease == TaskBinding.Lease.TASK_GONE) {
                note("attach failed " + taskBinding + ": " + str);
                fail("attach failed");
            } else {
                taskBinding.lease = TaskBinding.Lease.SURFACE_ATTACHED;
                attachNext();
            }
        }
    }

    public boolean swap(int i) {
        boolean swap = swap(i, false);
        if (swap) {
            this.mainHistory.clear();
        }
        return swap;
    }

    private boolean swap(int i, boolean z) {
        TaskBinding taskBinding = this.slots[i];
        if (this.state != State.ACTIVE || busy() || this.closing || taskBinding == null) {
            return false;
        }
        this.followingSystem = z;
        Geometry geometry = this.platform.geometry();
        this.slots[i] = this.main;
        this.main = taskBinding;
        this.main.physical.set(geometry.logical);
        if (this.slots[i] != null) {
            this.slots[i].physical.set(geometry.slots[i]);
        }
        set(State.TRANSITIONING);
        final int begin = begin();
        this.platform.place(this.main, (TaskBinding[]) this.slots.clone(), true, new Done() { // from class: dev.duo.taskcore.WorkspaceSession$$ExternalSyntheticLambda9
            @Override // dev.duo.taskcore.WorkspaceSession.Done
            public final void done(boolean z2, String str) {
                WorkspaceSession.this.m3361lambda$swap$4$devduotaskcoreWorkspaceSession(begin, z2, str);
            }
        });
        return true;
    }

    /* renamed from: lambda$swap$4$dev-duo-taskcore-WorkspaceSession, reason: not valid java name */
    /* synthetic */ void m3361lambda$swap$4$devduotaskcoreWorkspaceSession(int i, boolean z, String str) {
        if (accept(i)) {
            settleLayout(z, str, "swap");
        }
    }

    public boolean add(int i, int i2) {
        if (this.state != State.ACTIVE || busy() || this.closing || (i >= 0 ? this.slots[i] != null : this.main != null)) {
            return false;
        }
        if (find(i2, null) != null) {
            note("task " + i2 + " already a member");
            return false;
        }
        try {
            TaskBinding prepare = prepare(i2);
            Rect rect = prepare.physical;
            Geometry geometry = this.platform.geometry();
            rect.set(i < 0 ? geometry.logical : geometry.slots[i]);
            if (i < 0) {
                this.mainHistory.clear();
                this.main = prepare;
            } else {
                this.slots[i] = prepare;
            }
            this.attachQueue.add(prepare);
            set(State.ATTACHING);
            attachNext();
            return true;
        } catch (Refused e) {
            note("add " + i2 + " refused: " + e.getMessage());
            return false;
        }
    }

    public int slotOf(int i) {
        for (int i2 = 0; i2 < this.slots.length; i2++) {
            if (this.slots[i2] != null && this.slots[i2].origin.taskId == i) {
                return i2;
            }
        }
        return -1;
    }

    public boolean reorder(int i, int i2) {
        if (this.state != State.ACTIVE || busy() || this.closing || i == i2 || this.slots[i] == null) {
            return false;
        }
        Geometry geometry = this.platform.geometry();
        TaskBinding taskBinding = this.slots[i];
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            int i4 = i + i3;
            this.slots[i] = this.slots[i4];
            i = i4;
        }
        this.slots[i2] = taskBinding;
        for (int i5 = 0; i5 < this.slots.length; i5++) {
            if (this.slots[i5] != null) {
                this.slots[i5].physical.set(geometry.slots[i5]);
            }
        }
        set(State.TRANSITIONING);
        final int begin = begin();
        this.platform.place(this.main, (TaskBinding[]) this.slots.clone(), true, new Done() { // from class: dev.duo.taskcore.WorkspaceSession$$ExternalSyntheticLambda2
            @Override // dev.duo.taskcore.WorkspaceSession.Done
            public final void done(boolean z, String str) {
                WorkspaceSession.this.m3357lambda$reorder$5$devduotaskcoreWorkspaceSession(begin, z, str);
            }
        });
        return true;
    }

    /* renamed from: lambda$reorder$5$dev-duo-taskcore-WorkspaceSession, reason: not valid java name */
    /* synthetic */ void m3357lambda$reorder$5$devduotaskcoreWorkspaceSession(int i, boolean z, String str) {
        if (accept(i)) {
            settleLayout(z, str, "reorder");
        }
    }

    public boolean remove(final int i) {
        final TaskBinding taskBinding = i < 0 ? this.main : this.slots[i];
        if (this.state != State.ACTIVE || busy() || this.closing || taskBinding == null) {
            return false;
        }
        set(State.TRANSITIONING);
        taskBinding.lease = TaskBinding.Lease.RETURN_REQUESTED;
        ArrayList arrayList = new ArrayList();
        arrayList.add(taskBinding);
        final int begin = begin();
        this.platform.giveBack(arrayList, null, new Done() { // from class: dev.duo.taskcore.WorkspaceSession$$ExternalSyntheticLambda15
            @Override // dev.duo.taskcore.WorkspaceSession.Done
            public final void done(boolean z, String str) {
                WorkspaceSession.this.m3356lambda$remove$7$devduotaskcoreWorkspaceSession(begin, taskBinding, i, z, str);
            }
        });
        return true;
    }

    /* renamed from: lambda$remove$7$dev-duo-taskcore-WorkspaceSession, reason: not valid java name */
    /* synthetic */ void m3356lambda$remove$7$devduotaskcoreWorkspaceSession(int i, TaskBinding taskBinding, int i2, boolean z, String str) {
        if (accept(i)) {
            if (!z) {
                note("remove give back failed " + taskBinding + ": " + str);
                fail("remove failed");
                return;
            }
            settle(taskBinding);
            if (taskBinding.lease != TaskBinding.Lease.RELEASED) {
                fail("remove not settled");
                return;
            }
            if (i2 < 0) {
                this.main = null;
            } else {
                this.slots[i2] = null;
            }
            final int begin = begin();
            this.platform.place(this.main, (TaskBinding[]) this.slots.clone(), false, new Done() { // from class: dev.duo.taskcore.WorkspaceSession$$ExternalSyntheticLambda5
                @Override // dev.duo.taskcore.WorkspaceSession.Done
                public final void done(boolean z2, String str2) {
                    WorkspaceSession.this.m3355lambda$remove$6$devduotaskcoreWorkspaceSession(begin, z2, str2);
                }
            });
        }
    }

    /* renamed from: lambda$remove$6$dev-duo-taskcore-WorkspaceSession, reason: not valid java name */
    /* synthetic */ void m3355lambda$remove$6$devduotaskcoreWorkspaceSession(int i, boolean z, String str) {
        if (accept(i)) {
            settleLayout(z, str, "remove");
        }
    }

    static /* synthetic */ boolean lambda$taskGone$8(int i, Object obj, TaskBinding.Origin origin) {
        return origin.taskId == i && (obj == null || origin.tokenBinder == obj);
    }

    public void taskGone(final int i, final Object obj) {
        this.mainHistory.removeIf(new Predicate() { // from class: dev.duo.taskcore.WorkspaceSession$$ExternalSyntheticLambda8
            @Override // java.util.function.Predicate
            public final boolean test(Object obj2) {
                return WorkspaceSession.lambda$taskGone$8(i, obj, (TaskBinding.Origin) obj2);
            }
        });
        TaskBinding find = find(i, obj);
        if (find == null || find.lease == TaskBinding.Lease.TASK_GONE || find.lease == TaskBinding.Lease.RELEASED) {
            return;
        }
        if (find == this.main && find.enteringPip) {
            this.mainHistory.clear();
        } else if (find == this.main && !this.closing && (this.state == State.ACTIVE || this.state == State.TRANSITIONING)) {
            this.mainBackedOut = true;
        }
        find.lease = TaskBinding.Lease.TASK_GONE;
        note("task gone " + find);
        if (busy() || this.closing) {
            return;
        }
        reconcileGone();
    }

    private void fail(String str) {
        if (this.closing) {
            returnAll();
        } else {
            close(str, false);
        }
    }

    private void settleLayout(boolean z, String str, final String str2) {
        this.adopting = -1;
        if (!z) {
            note(str2 + " place failed: " + str);
            fail(str2 + " place failed");
            return;
        }
        if (this.closing) {
            returnAll();
            return;
        }
        try {
            Platform platform = this.platform;
            long j = this.epoch;
            int i = this.revision + 1;
            this.revision = i;
            platform.serverLayout(j, i, this.main, (TaskBinding[]) this.slots.clone());
            final int begin = begin();
            this.platform.isolate(this.main, (TaskBinding[]) this.slots.clone(), new Done() { // from class: dev.duo.taskcore.WorkspaceSession$$ExternalSyntheticLambda11
                @Override // dev.duo.taskcore.WorkspaceSession.Done
                public final void done(boolean z2, String str3) {
                    WorkspaceSession.this.m3360lambda$settleLayout$9$devduotaskcoreWorkspaceSession(begin, str2, z2, str3);
                }
            });
        } catch (Refused e) {
            note(str2 + " layout not acked: " + e.getMessage());
            fail(str2 + " layout not acked");
        }
    }

    /* renamed from: lambda$settleLayout$9$dev-duo-taskcore-WorkspaceSession, reason: not valid java name */
    /* synthetic */ void m3360lambda$settleLayout$9$devduotaskcoreWorkspaceSession(int i, String str, boolean z, String str2) {
        if (accept(i)) {
            if (!z) {
                note(str + " isolation failed: " + str2);
                fail(str + " isolation failed");
                return;
            }
            if (this.closing) {
                returnAll();
                return;
            }
            boolean z2 = ("remove".equals(str) || "reorder".equals(str) || "raise".equals(str) || this.followingSystem || this.systemTarget != null || this.pendingPause != null || this.locked) ? false : true;
            this.followingSystem = false;
            if (z2 && this.main != null && this.main.lease == TaskBinding.Lease.SURFACE_ATTACHED && !this.platform.focus(this.main)) {
                fail(str + " focus request failed");
                return;
            }
            if (z2 && this.main != null) {
                this.selfHomeTask = -1;
            }
            set(State.ACTIVE);
            if (this.interruption) {
                detachForInterruption();
                return;
            }
            if (reconcileGone()) {
                return;
            }
            if (this.main == null && restoreMain()) {
                this.mainBackedOut = false;
                return;
            }
            if (this.main == null && this.mainBackedOut && this.pendingPause == null && !this.locked && this.mainHistory.isEmpty()) {
                this.mainBackedOut = false;
                close("main area backed out to the end", false);
                return;
            }
            if (this.pendingPause != null) {
                String str3 = this.pendingPause;
                this.pendingPause = null;
                pause(str3);
            } else {
                if (this.pendingAdopt >= 0) {
                    int i2 = this.pendingAdopt;
                    this.pendingAdopt = -1;
                    if (adopt(i2)) {
                        return;
                    }
                    this.platform.adoptRefused(i2);
                    return;
                }
                if (removeBackgrounded()) {
                    return;
                }
                followSystemTarget();
            }
        }
    }

    public boolean acceptsAdopt() {
        return !this.interruption && this.callState == 0;
    }

    public boolean adopt(int i) {
        if (this.state == State.PAUSED && interstitialPending() && !busy() && !this.locked && !this.displayMismatch && acceptsAdopt() && find(i, null) == null) {
            return adoptAfterInterstitial(i);
        }
        if (this.closing || this.state == State.CLOSED || this.state == State.RETURN_FAILED || this.state == State.PAUSED || !acceptsAdopt()) {
            return false;
        }
        if (find(i, null) != null) {
            return true;
        }
        if (this.state != State.ACTIVE || busy()) {
            this.pendingAdopt = i;
            return true;
        }
        try {
            TaskBinding prepare = prepare(i);
            recordReturn(prepare.origin);
            prepare.physical.set(this.platform.geometry().logical);
            this.attachQueue.add(prepare);
            this.adopting = i;
            set(State.TRANSITIONING);
            insertIncoming(prepare, false, false);
            return true;
        } catch (Refused e) {
            note("adopt " + i + " refused: " + e.getMessage());
            return false;
        }
    }

    public void interstitial(int i) {
        if (this.closing || this.state == State.CLOSED || this.state == State.RETURN_FAILED || this.userLeft) {
            return;
        }
        if (this.state != State.PAUSED || this.interstitialTask >= 0) {
            this.interstitialTask = i;
            note("interstitial " + i + ": stepping aside");
            pause("interstitial " + i);
        }
    }

    public boolean interstitialPending() {
        return (this.interstitialTask < 0 || this.userLeft || this.closing) ? false : true;
    }

    private boolean adoptAfterInterstitial(int i) {
        try {
            TaskBinding prepare = prepare(i);
            this.interstitialTask = -1;
            this.userLeft = false;
            recordReturn(prepare.origin);
            prepare.physical.set(this.platform.geometry().logical);
            this.attachQueue.add(prepare);
            this.adopting = i;
            note("adopt after interstitial " + i);
            insertIncoming(prepare, true, false);
            return true;
        } catch (Refused e) {
            note("adopt after interstitial " + i + " refused: " + e.getMessage());
            return false;
        }
    }

    private void recordReturn(TaskBinding.Origin origin) {
        for (int i = 0; i < this.mainHistory.size(); i++) {
            TaskBinding.Origin origin2 = this.mainHistory.get(i);
            if (origin2.taskId == origin.taskId && origin2.tokenBinder == origin.tokenBinder) {
                this.mainHistory.subList(i, this.mainHistory.size()).clear();
                return;
            }
        }
        if (this.main != null) {
            this.mainHistory.add(this.main.origin);
        }
    }

    private void insertIncoming(final TaskBinding taskBinding, final boolean z, final boolean z2) {
        TaskBinding taskBinding2;
        boolean z3;
        boolean z4;
        int i = 0;
        while (i < this.slots.length && this.slots[i] != null) {
            i++;
        }
        final TaskBinding taskBinding3 = (this.main == null || i != this.slots.length) ? null : this.slots[this.slots.length - 1];
        if (taskBinding3 == null) {
            taskBinding2 = taskBinding;
            z3 = z;
            z4 = z2;
        } else {
            if (taskBinding3.owned()) {
                taskBinding3.lease = TaskBinding.Lease.RETURN_REQUESTED;
                ArrayList arrayList = new ArrayList();
                arrayList.add(taskBinding3);
                final int begin = begin();
                this.platform.giveBack(arrayList, null, new Done() { // from class: dev.duo.taskcore.WorkspaceSession$$ExternalSyntheticLambda0
                    @Override // dev.duo.taskcore.WorkspaceSession.Done
                    public final void done(boolean z5, String str) {
                        WorkspaceSession.this.m3352lambda$insertIncoming$10$devduotaskcoreWorkspaceSession(begin, taskBinding3, taskBinding, z, z2, z5, str);
                    }
                });
                return;
            }
            taskBinding2 = taskBinding;
            z3 = z;
            z4 = z2;
        }
        placeIncoming(taskBinding2, z3, z4);
    }

    /* renamed from: lambda$insertIncoming$10$dev-duo-taskcore-WorkspaceSession, reason: not valid java name */
    /* synthetic */ void m3352lambda$insertIncoming$10$devduotaskcoreWorkspaceSession(int i, TaskBinding taskBinding, TaskBinding taskBinding2, boolean z, boolean z2, boolean z3, String str) {
        if (accept(i)) {
            if (!z3) {
                fail("overflow return failed: " + str);
                return;
            }
            settle(taskBinding);
            if (taskBinding.lease != TaskBinding.Lease.RELEASED) {
                fail("overflow not settled");
            } else {
                placeIncoming(taskBinding2, z, z2);
            }
        }
    }

    private void placeIncoming(TaskBinding taskBinding, boolean z, boolean z2) {
        if (this.closing) {
            returnAll();
            return;
        }
        if (this.main != null) {
            int i = 0;
            while (i < this.slots.length - 1 && this.slots[i] != null) {
                i++;
            }
            while (i > 0) {
                this.slots[i] = this.slots[i - 1];
                i--;
            }
            this.slots[0] = this.main;
        }
        this.main = taskBinding;
        for (int i2 = 0; i2 < this.slots.length; i2++) {
            if (this.slots[i2] != null) {
                this.slots[i2].physical.set(this.platform.geometry().slots[i2]);
            }
        }
        if (z2) {
            this.mainHistory.clear();
        }
        if (z) {
            this.restoreWithIncoming = true;
            if (this.detachedForInterruption) {
                resume("corner incoming");
                return;
            }
        } else {
            this.adoptAnimate = true;
        }
        set(State.ATTACHING);
        attachNext();
    }

    private boolean restoreMain() {
        if (this.locked || this.closing || this.state != State.ACTIVE || busy() || this.pendingPause != null) {
            return false;
        }
        while (!this.mainHistory.isEmpty()) {
            TaskBinding.Origin remove = this.mainHistory.remove(this.mainHistory.size() - 1);
            TaskBinding find = find(remove.taskId, remove.tokenBinder);
            if (find != null) {
                int i = -1;
                for (int i2 = 0; i2 < this.slots.length; i2++) {
                    if (this.slots[i2] == find) {
                        i = i2;
                    }
                }
                if (i >= 0 && find.lease == TaskBinding.Lease.SURFACE_ATTACHED && swap(i, false)) {
                    return true;
                }
            } else {
                try {
                    TaskBinding.Origin inspect = this.platform.inspect(remove.taskId);
                    if (inspect.tokenBinder == remove.tokenBinder && inspect.userId == remove.userId && inspect.displayId == remove.displayId && adopt(remove.taskId)) {
                        return true;
                    }
                } catch (Refused e) {
                    note("return target unavailable: " + e.getMessage());
                }
            }
        }
        return false;
    }

    public void mainLeftToHome(int i, Object obj, int i2) {
        if (this.closing || this.interruption || this.main == null || this.main.origin.taskId != i) {
            return;
        }
        if (obj != null && this.main.origin.tokenBinder != obj) {
            return;
        }
        note("main " + i + " started home itself: treated as leaving the main area");
        this.selfHomeTask = i2;
        this.main.toBack = true;
        this.mainBackedOut = true;
        if (this.state != State.ACTIVE || busy()) {
            return;
        }
        set(State.TRANSITIONING);
        this.resuming = true;
        final int begin = begin();
        this.platform.bringToFront(null, (TaskBinding[]) this.slots.clone(), null, new Done() { // from class: dev.duo.taskcore.WorkspaceSession$$ExternalSyntheticLambda3
            @Override // dev.duo.taskcore.WorkspaceSession.Done
            public final void done(boolean z, String str) {
                WorkspaceSession.this.m3353lambda$mainLeftToHome$11$devduotaskcoreWorkspaceSession(begin, z, str);
            }
        });
    }

    /* renamed from: lambda$mainLeftToHome$11$dev-duo-taskcore-WorkspaceSession, reason: not valid java name */
    /* synthetic */ void m3353lambda$mainLeftToHome$11$devduotaskcoreWorkspaceSession(int i, boolean z, String str) {
        if (accept(i)) {
            this.resuming = false;
            settleLayout(z, str, "raise");
        }
    }

    public void crossAppToMember(int i, int i2, Object obj) {
        TaskBinding find;
        if (this.closing || this.interruption || this.main == null || this.main.origin.taskId != i || (find = find(i2, obj)) == null || find == this.main || !find.owned() || slotOf(i2) < 0) {
            return;
        }
        if (this.state == State.ACTIVE || this.state == State.TRANSITIONING || this.state == State.ATTACHING) {
            recordReturn(find.origin);
            if (busy() || this.state != State.ACTIVE) {
                this.systemTarget = find;
            } else {
                swap(slotOf(i2), true);
            }
        }
    }

    public void userSelected(int i) {
        dropIdleCall();
        if (this.locked || this.closing || this.interruption) {
            return;
        }
        if (this.state == State.PAUSED) {
            resume("user selected a member");
            return;
        }
        TaskBinding find = find(i, null);
        if (find == null || find == this.main || !find.owned()) {
            return;
        }
        if (busy() || this.state != State.ACTIVE) {
            this.systemTarget = find;
            return;
        }
        int slotOf = slotOf(i);
        if (slotOf >= 0) {
            swap(slotOf, true);
        }
    }

    public void setLocked(boolean z) {
        setLocked(z, false);
    }

    public void setLocked(boolean z, boolean z2) {
        if (z && this.unlockedInTransition && !z2) {
            return;
        }
        boolean z3 = false;
        if (!z || z2) {
            this.unlockedInTransition = false;
        }
        if (this.locked == z) {
            return;
        }
        this.locked = z;
        if (z) {
            if ((this.state != State.PAUSED || this.interruption || this.interruptionReturned) && !this.closing && !this.userLeft) {
                z3 = true;
            }
            this.resumeAfterUnlock = z3;
            if (this.resumeAfterUnlock) {
                pause("locked");
                return;
            }
            return;
        }
        if (this.resumeAfterUnlock) {
            this.resumeAfterUnlock = false;
            if ("locked".equals(this.pendingPause)) {
                this.pendingPause = null;
            }
            resume("unlocked");
        }
    }

    public boolean unlocking() {
        if (!this.locked || !this.resumeAfterUnlock || this.state != State.PAUSED || busy() || this.closing || this.interruption || this.detachedForInterruption || this.displayMismatch || this.userLeft) {
            return false;
        }
        this.locked = false;
        this.resumeAfterUnlock = false;
        this.unlockedInTransition = true;
        if ("locked".equals(this.pendingPause)) {
            this.pendingPause = null;
        }
        note("resume: keyguard going away");
        this.followingSystem = true;
        set(State.TRANSITIONING);
        settleLayout(true, "keyguard going away", "unlock");
        return true;
    }

    public void setDisplayMismatch(boolean z) {
        this.displayMismatch = z;
    }

    public void pipStarting(int i, Object obj) {
        TaskBinding find = find(i, obj);
        if (find != null) {
            find.enteringPip = true;
        }
    }

    public void pipFinished(int i, Object obj, boolean z) {
        TaskBinding find = find(i, obj);
        if (find == null) {
            return;
        }
        find.enteringPip = false;
        if (!z || this.closing) {
            return;
        }
        if (find == this.main) {
            this.mainHistory.clear();
        }
        find.toBack = true;
        if (this.state == State.PAUSED && !busy()) {
            this.pendingPause = "PiP while paused";
            this.state = State.ACTIVE;
        }
        if (this.state != State.ACTIVE || busy()) {
            return;
        }
        removeBackgrounded();
    }

    public boolean enterFrom(int i) {
        dropIdleCall();
        if (this.state != State.PAUSED || this.closing || busy() || this.locked || this.interruption || this.displayMismatch) {
            return false;
        }
        this.userLeft = false;
        if (find(i, null) != null) {
            resume("corner member");
            return true;
        }
        try {
            TaskBinding prepare = prepare(i);
            prepare.physical.set(this.platform.geometry().logical);
            this.attachQueue.add(prepare);
            insertIncoming(prepare, true, true);
            return true;
        } catch (Refused e) {
            note("corner task refused: " + e.getMessage());
            return false;
        }
    }

    public void interruptionStarted(int i) {
        if (this.closing || this.state == State.CLOSED || this.state == State.RETURN_FAILED) {
            return;
        }
        this.fsiActive = true;
        beginInterruption(i);
    }

    private void beginInterruption(int i) {
        if (!this.interruption) {
            this.interruptionWasActive = (this.state != State.PAUSED || this.resumeAfterUnlock) && !this.userLeft;
            this.interruptionOk = true;
        }
        this.interruption = true;
        this.interruptionReturned = false;
        if (i >= 0) {
            this.interruptionTask = i;
        }
        this.pendingPause = "system interruption";
        this.pendingAdopt = -1;
        if (busy()) {
            return;
        }
        if (this.state == State.ACTIVE || this.state == State.PAUSED) {
            detachForInterruption();
        }
    }

    public void callState(int i, boolean z) {
        this.callState = i;
        boolean z2 = false;
        if (i != 0) {
            this.callIdle = false;
            if (z || this.adopting < 0) {
                return;
            }
            callScreen();
            return;
        }
        if (this.callInterrupted) {
            this.callIdle = true;
            if (this.callFront < 0 || isMain(this.callFront, this.callFrontToken)) {
                if (this.callFront >= 0) {
                    z2 = true;
                }
                finishCall(z2);
            }
        }
    }

    public boolean callActive() {
        return this.callState != 0;
    }

    public void callScreen() {
        if (this.callState == 0 || this.callInterrupted || this.closing || this.state == State.CLOSED || this.state == State.RETURN_FAILED) {
            return;
        }
        note("call screen: pausing for the call");
        this.callInterrupted = true;
        this.callIdle = false;
        this.callFront = -1;
        this.callFrontToken = null;
        beginInterruption(-1);
    }

    private boolean isMain(int i, Object obj) {
        return this.main != null && this.main.origin.taskId == i && (obj == null || this.main.origin.tokenBinder == obj);
    }

    private void finishCall(boolean z) {
        this.callInterrupted = false;
        this.callIdle = false;
        this.callFront = -1;
        this.callFrontToken = null;
        this.interruptionOk = z & this.interruptionOk;
        endInterruption();
    }

    private void dropIdleCall() {
        if (!this.callInterrupted || !this.callIdle) {
            return;
        }
        finishCall(false);
    }

    private void trackCallFocus(int i, Object obj) {
        if (this.callInterrupted) {
            if (!this.callIdle) {
                this.callFront = i;
                this.callFrontToken = obj;
            } else {
                if (i == this.callFront && (obj == null || this.callFrontToken == null || obj == this.callFrontToken)) {
                    return;
                }
                finishCall(isMain(i, obj));
            }
        }
    }

    private void detachForInterruption() {
        if (this.detachedForInterruption) {
            return;
        }
        this.detachedForInterruption = true;
        this.pendingPause = null;
        this.systemTarget = null;
        this.pendingAdopt = -1;
        final ArrayList arrayList = new ArrayList();
        for (TaskBinding taskBinding : members()) {
            if (taskBinding.owned()) {
                taskBinding.lease = TaskBinding.Lease.RETURN_REQUESTED;
                arrayList.add(taskBinding);
            }
        }
        TaskBinding find = find(this.interruptionTask, null);
        set(State.PAUSED);
        final int begin = begin();
        this.platform.giveBackInPlace(arrayList, find, new Done() { // from class: dev.duo.taskcore.WorkspaceSession$$ExternalSyntheticLambda4
            @Override // dev.duo.taskcore.WorkspaceSession.Done
            public final void done(boolean z, String str) {
                WorkspaceSession.this.m2124x4cdfebc6(begin, arrayList, z, str);
            }
        });
    }

    /* renamed from: lambda$detachForInterruption$12$dev-duo-taskcore-WorkspaceSession */
    /* synthetic */ void m2124x4cdfebc6(int i, List list, boolean z, String str) {
        if (accept(i)) {
            if (!z) {
                fail("interruption return failed: " + str);
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                TaskBinding taskBinding = (TaskBinding) it.next();
                if (taskBinding.lease == TaskBinding.Lease.TASK_GONE) {
                    this.platform.destroyHost(taskBinding);
                    if (!drop(taskBinding)) {
                        return;
                    }
                    if (taskBinding == this.main) {
                        this.main = null;
                    }
                } else {
                    settle(taskBinding);
                    if (taskBinding.lease != TaskBinding.Lease.RELEASED) {
                        fail("interruption owner not returned");
                        return;
                    }
                }
            }
            if (this.closing) {
                returnAll();
            } else {
                if (this.interruption || !this.interruptionReturned) {
                    return;
                }
                resume("interruption finished");
            }
        }
    }

    public void interruptionFinished(boolean z) {
        this.fsiActive = false;
        this.interruptionOk = z & this.interruptionOk;
        endInterruption();
    }

    private void endInterruption() {
        if (this.fsiActive || this.callInterrupted || !this.interruption) {
            return;
        }
        boolean z = this.interruptionOk && this.interruptionWasActive;
        this.interruption = false;
        this.interruptionReturned = z && this.detachedForInterruption;
        if (!z) {
            this.resumeAfterUnlock = false;
        }
        if ("system interruption".equals(this.pendingPause)) {
            this.pendingPause = null;
        }
        if (z) {
            resume("interruption finished");
        }
    }

    public void pause(String str) {
        if (this.closing || this.state == State.PAUSED) {
            return;
        }
        if (this.state != State.ACTIVE || busy()) {
            if (this.state == State.TRANSITIONING || this.state == State.ATTACHING || busy()) {
                this.pendingPause = str;
                return;
            }
            return;
        }
        this.systemTarget = null;
        note("pause: " + str);
        set(State.PAUSED);
    }

    public void leave(String str) {
        if (this.closing) {
            return;
        }
        this.interstitialTask = -1;
        this.selfHomeTask = -1;
        this.userLeft = true;
        this.resumeAfterUnlock = false;
        pause(str);
    }

    public void systemSurface(String str) {
        if (this.closing) {
            return;
        }
        if (this.interruption) {
            note("user left during interruption: " + str);
            this.interruptionOk = false;
            this.userLeft = true;
            this.resumeAfterUnlock = false;
            return;
        }
        leave(str);
    }

    public void keyguardExitAborted() {
        if (this.unlockedInTransition) {
            note("keyguard exit aborted");
            this.unlockedInTransition = false;
        }
    }

    public void userResume(String str) {
        dropIdleCall();
        if (this.state == State.PAUSED) {
            resume(str);
        }
    }

    public boolean userResume(String str, Object obj) {
        dropIdleCall();
        if (this.state != State.PAUSED || this.closing || busy() || this.locked || this.interruption || this.displayMismatch || this.detachedForInterruption) {
            return false;
        }
        resume(str, obj);
        return true;
    }

    public boolean recentsReturned() {
        if (this.closing || busy() || this.locked || this.interruption || this.displayMismatch || this.detachedForInterruption) {
            return false;
        }
        if (this.state == State.ACTIVE) {
            return true;
        }
        if (this.state != State.PAUSED) {
            return false;
        }
        this.userLeft = false;
        this.pendingPause = null;
        note("recents gesture returned to workbench");
        set(State.ACTIVE);
        return true;
    }

    public void resume(String str) {
        resume(str, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void resume(String str, Object obj) {
        TaskBinding prepare;
        if (this.state != State.PAUSED || this.closing || busy() || this.locked || this.interruption || this.displayMismatch) {
            return;
        }
        this.userLeft = false;
        int i = -1;
        this.interstitialTask = -1;
        note("resume: " + str);
        this.interruptionReturned = false;
        if (this.detachedForInterruption) {
            this.detachedForInterruption = false;
            while (i < this.slots.length) {
                TaskBinding taskBinding = i < 0 ? this.main : this.slots[i];
                if (taskBinding != null && taskBinding.lease != TaskBinding.Lease.OBSERVED) {
                    TaskBinding taskBinding2 = null;
                    try {
                        prepare = prepare(taskBinding.origin.taskId);
                    } catch (Refused e) {
                        e = e;
                    }
                    try {
                    } catch (Refused e2) {
                        e = e2;
                        taskBinding2 = prepare;
                        note("interrupted member unavailable: " + e.getMessage());
                        if (i < 0) {
                        }
                        if (taskBinding2 != null) {
                        }
                        i++;
                    }
                    if (prepare.origin.tokenBinder == taskBinding.origin.tokenBinder && prepare.origin.userId == taskBinding.origin.userId && prepare.origin.displayId == taskBinding.origin.displayId) {
                        taskBinding2 = prepare;
                        if (i < 0) {
                            this.main = taskBinding2;
                        } else {
                            this.slots[i] = taskBinding2;
                        }
                        if (taskBinding2 != null) {
                            Rect rect = taskBinding2.physical;
                            Geometry geometry = this.platform.geometry();
                            rect.set(i < 0 ? geometry.logical : geometry.slots[i]);
                            this.attachQueue.add(taskBinding2);
                        }
                    }
                    if (!drop(prepare)) {
                        return;
                    }
                    if (i < 0) {
                    }
                    if (taskBinding2 != null) {
                    }
                }
                i++;
            }
            set(State.ATTACHING);
            attachNext();
            return;
        }
        set(State.TRANSITIONING);
        this.resuming = true;
        final int begin = begin();
        this.platform.bringToFront(this.main, (TaskBinding[]) this.slots.clone(), obj, new Done() { // from class: dev.duo.taskcore.WorkspaceSession$$ExternalSyntheticLambda6
            @Override // dev.duo.taskcore.WorkspaceSession.Done
            public final void done(boolean z, String str2) {
                WorkspaceSession.this.m3358lambda$resume$13$devduotaskcoreWorkspaceSession(begin, z, str2);
            }
        });
    }

    /* renamed from: lambda$resume$13$dev-duo-taskcore-WorkspaceSession, reason: not valid java name */
    /* synthetic */ void m3358lambda$resume$13$devduotaskcoreWorkspaceSession(int i, boolean z, String str) {
        if (accept(i)) {
            this.resuming = false;
            settleLayout(z, str, "resume");
        }
    }

    public void memberToBack(int i, Object obj) {
        TaskBinding find;
        if (this.closing) {
            return;
        }
        if ((this.state != State.ACTIVE && this.state != State.TRANSITIONING) || (find = find(i, obj)) == null || find.lease != TaskBinding.Lease.SURFACE_ATTACHED) {
            return;
        }
        find.toBack = true;
        if (find == this.main) {
            this.mainBackedOut = true;
        }
        note("member moved itself to back " + find);
        if (this.state != State.ACTIVE || busy()) {
            return;
        }
        removeBackgrounded();
    }

    private boolean removeBackgrounded() {
        if (this.main != null && this.main.toBack && this.main.lease == TaskBinding.Lease.SURFACE_ATTACHED) {
            return remove(-1);
        }
        for (int i = 0; i < this.slots.length; i++) {
            TaskBinding taskBinding = this.slots[i];
            if (taskBinding != null && taskBinding.toBack && taskBinding.lease == TaskBinding.Lease.SURFACE_ATTACHED) {
                note("removing backgrounded member " + taskBinding);
                if (remove(i)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void retryReturn() {
        if (this.state != State.RETURN_FAILED || this.f1972op != 0) {
            return;
        }
        note("retry return after: " + this.failure);
        this.failure = null;
        this.lateOwned = null;
        this.state = State.TRANSITIONING;
        this.retrying = true;
        try {
            returnAll();
        } finally {
            this.retrying = false;
        }
    }

    private boolean reconcileGone() {
        boolean z = this.main != null && this.main.lease == TaskBinding.Lease.TASK_GONE;
        boolean z2 = false;
        for (TaskBinding taskBinding : members()) {
            if (taskBinding.lease == TaskBinding.Lease.TASK_GONE) {
                this.platform.destroyHost(taskBinding);
                if (!drop(taskBinding)) {
                    return true;
                }
                z2 = true;
            }
        }
        if (z) {
            this.main = null;
        }
        if (!z2) {
            return false;
        }
        if (z && this.state == State.ACTIVE && restoreMain()) {
            this.mainBackedOut = false;
            return true;
        }
        final int begin = begin();
        if (this.state == State.PAUSED) {
            this.pendingPause = "paused member gone";
        }
        this.platform.place(this.main, (TaskBinding[]) this.slots.clone(), false, new Done() { // from class: dev.duo.taskcore.WorkspaceSession$$ExternalSyntheticLambda1
            @Override // dev.duo.taskcore.WorkspaceSession.Done
            public final void done(boolean z3, String str) {
                WorkspaceSession.this.m3354lambda$reconcileGone$14$devduotaskcoreWorkspaceSession(begin, z3, str);
            }
        });
        return true;
    }

    /* renamed from: lambda$reconcileGone$14$dev-duo-taskcore-WorkspaceSession, reason: not valid java name */
    /* synthetic */ void m3354lambda$reconcileGone$14$devduotaskcoreWorkspaceSession(int i, boolean z, String str) {
        if (accept(i)) {
            settleLayout(z, str, "gone");
        }
    }

    public void systemFocused(int i, Object obj) {
        if (this.interruption) {
            trackCallFocus(i, obj);
            return;
        }
        if (this.state == State.PAUSED && !this.closing) {
            TaskBinding find = find(i, obj);
            if (this.interstitialTask >= 0) {
                if (i == this.interstitialTask) {
                    return;
                }
                if (find != null) {
                    this.interstitialTask = -1;
                    resume("interstitial closed, back to member " + i);
                    return;
                } else {
                    if (find(i, null) == null) {
                        this.interstitialTask = -1;
                        this.userLeft = true;
                        return;
                    }
                    return;
                }
            }
            if (this.locked || this.resumeAfterUnlock) {
                return;
            }
            if (find == null) {
                if (find(i, null) == null) {
                    this.userLeft = true;
                    return;
                }
                return;
            } else {
                if (this.detachedForInterruption || find.lease == TaskBinding.Lease.SURFACE_ATTACHED) {
                    dismissTo(find, "member " + i + " opened outside the workbench");
                    return;
                }
                return;
            }
        }
        if (this.closing) {
            return;
        }
        if ((this.state == State.ACTIVE || this.state == State.TRANSITIONING) && i != this.pendingAdopt && find(i, obj) == null && i != this.selfHomeTask && find(i, null) == null && this.main != null && !this.main.toBack) {
            leave("system focused non-member task " + i);
        }
    }

    public void memberChanged(int i, Object obj, int i2, int i3) {
        TaskBinding find = find(i, obj);
        if (find == null) {
            return;
        }
        if (((i3 == -1 && (i2 == 6 || i2 == 1 || i2 == 0 || (i2 == 2 && find.enteringPip))) ? false : true) && ((!this.resuming || i3 != -1) && (find.lease == TaskBinding.Lease.SURFACE_ATTACHED || find.lease == TaskBinding.Lease.RETURN_REQUESTED))) {
            note("member " + i + " taken into another container (mode " + i2 + ", parent " + i3 + "): released now");
            find.handedOver = true;
            this.platform.releaseToSystem(find);
            settle(find);
            if (!this.closing) {
                close("member " + i + " taken over (mode " + i2 + ", parent " + i3 + ")", false);
                return;
            }
            return;
        }
        if (find.lease != TaskBinding.Lease.SURFACE_ATTACHED || this.closing || this.resuming || this.interruption || this.detachedForInterruption) {
            return;
        }
        if (i2 == 6 && i3 == -1) {
            return;
        }
        if (i2 == 2 && find.enteringPip) {
            return;
        }
        if (this.state != State.PAUSED || i3 != -1 || (i2 != 1 && i2 != 0)) {
            close("member " + i + " taken over (mode " + i2 + ", parent " + i3 + ")", false);
        } else {
            dismissTo(find, "member " + i + " reopened full screen");
        }
    }

    private void dismissTo(TaskBinding taskBinding, String str) {
        if (this.closing) {
            return;
        }
        this.frontTarget = taskBinding;
        close(str, false);
    }

    private void followSystemTarget() {
        TaskBinding taskBinding = this.systemTarget;
        this.systemTarget = null;
        if (taskBinding == null || taskBinding == this.main || this.closing || !taskBinding.owned()) {
            return;
        }
        int i = -1;
        for (int i2 = 0; i2 < this.slots.length; i2++) {
            if (this.slots[i2] == taskBinding) {
                i = i2;
            }
        }
        if (i >= 0) {
            swap(i, true);
        }
    }

    public void close(String str, boolean z) {
        if (this.closing || this.state == State.CLOSED || this.state == State.RETURN_FAILED) {
            return;
        }
        this.closing = true;
        this.closeReason = str;
        this.mainToFront = z;
        note("close: " + str);
        if (this.state == State.IDLE) {
            end(State.CLOSED, str);
            return;
        }
        this.platform.changed(this);
        if (!busy()) {
            returnAll();
        }
    }

    private void returnAll() {
        if (this.state == State.RETURNING || this.state == State.CLOSED || this.state == State.RETURN_FAILED) {
            return;
        }
        set(State.RETURNING);
        this.attachQueue.clear();
        final ArrayList arrayList = new ArrayList();
        this.platform.serverBeginReturn(this.epoch, this.closeReason);
        for (TaskBinding taskBinding : members()) {
            if (taskBinding.lease == TaskBinding.Lease.OWNER_RETURNED) {
                if (this.retrying) {
                    withdraw(taskBinding);
                }
            } else if (taskBinding.owned()) {
                if (!this.resuming && taskBinding.lease == TaskBinding.Lease.SURFACE_ATTACHED && this.platform.takenBySystem(taskBinding)) {
                    note("member " + taskBinding.origin.taskId + " already chosen by the system: released before the return");
                    taskBinding.handedOver = true;
                    this.platform.releaseToSystem(taskBinding);
                    settle(taskBinding);
                    if (!taskBinding.owned()) {
                    }
                }
                taskBinding.lease = TaskBinding.Lease.RETURN_REQUESTED;
                arrayList.add(taskBinding);
            }
        }
        if (arrayList.isEmpty()) {
            finishReturn();
            return;
        }
        TaskBinding taskBinding2 = null;
        if (this.frontTarget != null) {
            if (this.frontTarget.owned()) {
                taskBinding2 = this.frontTarget;
            }
        } else if (this.mainToFront && this.main != null && this.main.owned()) {
            taskBinding2 = this.main;
        }
        this.adopting = -1;
        final int begin = begin();
        this.platform.giveBack(arrayList, taskBinding2, new Done() { // from class: dev.duo.taskcore.WorkspaceSession$$ExternalSyntheticLambda7
            @Override // dev.duo.taskcore.WorkspaceSession.Done
            public final void done(boolean z, String str) {
                WorkspaceSession.this.m3359lambda$returnAll$15$devduotaskcoreWorkspaceSession(begin, arrayList, z, str);
            }
        });
    }

    /* renamed from: lambda$returnAll$15$dev-duo-taskcore-WorkspaceSession, reason: not valid java name */
    /* synthetic */ void m3359lambda$returnAll$15$devduotaskcoreWorkspaceSession(int i, List list, boolean z, String str) {
        if (this.f1972op != i) {
            lateReturn(list, z, str);
            return;
        }
        this.f1972op = 0;
        if (!z) {
            if (str != null && str.startsWith("timeout")) {
                this.lateOwned = list;
            }
            end(State.RETURN_FAILED, "give back failed: " + str + " holding " + list);
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            settle((TaskBinding) it.next());
        }
        finishReturn();
    }

    private void lateReturn(List<TaskBinding> list, boolean z, String str) {
        if (this.state != State.RETURN_FAILED || this.lateOwned != list || !z || str == null || !str.startsWith("late")) {
            note("stale callback ignored");
            return;
        }
        this.lateOwned = null;
        this.failure = null;
        note("late return confirmed: " + str);
        this.state = State.RETURNING;
        Iterator<TaskBinding> it = list.iterator();
        while (it.hasNext()) {
            settle(it.next());
        }
        finishReturn();
    }

    private void settle(TaskBinding taskBinding) {
        if (taskBinding.lease == TaskBinding.Lease.RELEASED) {
            return;
        }
        String releaseOwner = this.platform.releaseOwner(taskBinding);
        if (releaseOwner != null) {
            this.failure = (this.failure == null ? "" : this.failure + "; ") + taskBinding + ": " + releaseOwner;
            note("owner not returned " + taskBinding + ": " + releaseOwner);
        } else {
            taskBinding.lease = TaskBinding.Lease.OWNER_RETURNED;
            this.platform.destroyHost(taskBinding);
            withdraw(taskBinding);
        }
    }

    private void withdraw(TaskBinding taskBinding) {
        try {
            this.platform.serverRelease(this.epoch, taskBinding);
            taskBinding.lease = TaskBinding.Lease.RELEASED;
        } catch (Refused e) {
            this.failure = (this.failure == null ? "" : this.failure + "; ") + taskBinding + ": " + e.getMessage();
            note("snapshot not withdrawn " + taskBinding + ": " + e.getMessage());
        }
    }

    private void finishReturn() {
        for (TaskBinding taskBinding : members()) {
            if (taskBinding.lease == TaskBinding.Lease.OBSERVED || taskBinding.lease == TaskBinding.Lease.TASK_GONE) {
                this.platform.destroyHost(taskBinding);
                if (taskBinding.lease == TaskBinding.Lease.OBSERVED) {
                    taskBinding.lease = TaskBinding.Lease.RELEASED;
                }
            }
        }
        for (TaskBinding taskBinding2 : members()) {
            if (taskBinding2.owned() || taskBinding2.lease == TaskBinding.Lease.OWNER_RETURNED) {
                end(State.RETURN_FAILED, "still holding " + taskBinding2 + (this.failure == null ? "" : " " + this.failure));
                return;
            }
        }
        endWithServer(this.closeReason);
    }

    private void endWithServer(String str) {
        String serverFinishReturn = this.platform.serverFinishReturn(this.epoch);
        if (serverFinishReturn == null) {
            end(State.CLOSED, str);
        } else {
            end(State.RETURN_FAILED, "server session not cleared: " + serverFinishReturn);
        }
    }

    public List<TaskBinding> members() {
        ArrayList arrayList = new ArrayList();
        if (this.main != null) {
            arrayList.add(this.main);
        }
        for (TaskBinding taskBinding : this.slots) {
            if (taskBinding != null) {
                arrayList.add(taskBinding);
            }
        }
        for (TaskBinding taskBinding2 : this.attachQueue) {
            if (!arrayList.contains(taskBinding2)) {
                arrayList.add(taskBinding2);
            }
        }
        return arrayList;
    }

    public TaskBinding find(int i, Object obj) {
        for (TaskBinding taskBinding : members()) {
            if (taskBinding.origin.taskId == i && (obj == null || taskBinding.origin.tokenBinder == obj)) {
                return taskBinding;
            }
        }
        return null;
    }

    private boolean drop(TaskBinding taskBinding) {
        if (taskBinding.lease == TaskBinding.Lease.OBSERVED) {
            taskBinding.lease = TaskBinding.Lease.RELEASED;
        }
        for (int i = 0; i < this.slots.length; i++) {
            if (this.slots[i] == taskBinding) {
                this.slots[i] = null;
            }
        }
        try {
            this.platform.serverRelease(this.epoch, taskBinding);
            return true;
        } catch (Refused e) {
            note("snapshot not withdrawn " + taskBinding + ": " + e.getMessage());
            fail("snapshot not withdrawn");
            return false;
        }
    }

    private int begin() {
        if (this.f1972op != 0) {
            throw new IllegalStateException("platform op " + this.f1972op + " still running");
        }
        int i = this.opSerial + 1;
        this.opSerial = i;
        this.f1972op = i;
        return i;
    }

    private boolean accept(int i) {
        if (this.f1972op != i) {
            note("stale callback ignored");
            return false;
        }
        this.f1972op = 0;
        return true;
    }

    private void set(State state) {
        this.state = state;
        this.platform.changed(this);
    }

    private void end(State state, String str) {
        this.state = state;
        if (state == State.CLOSED) {
            this.mainHistory.clear();
        }
        this.mainBackedOut = false;
        if (state == State.RETURN_FAILED) {
            this.failure = str;
        }
        note(state + ": " + str);
        this.platform.changed(this);
    }

    private void note(String str) {
        this.log.add(str);
        Log.i(TAG, "session " + this.epoch + " " + str);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("session " + this.epoch + " " + this.state + " main=" + this.main);
        for (int i = 0; i < this.slots.length; i++) {
            sb.append(" s").append(i).append('=').append(this.slots[i]);
        }
        if (this.failure != null) {
            sb.append(" failure=").append(this.failure);
        }
        return sb.toString();
    }
}
