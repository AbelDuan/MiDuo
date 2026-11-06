.class public final Ldev/duo/taskcore/WorkspaceWm;
.super Ljava/lang/Object;
.source "WorkspaceWm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/taskcore/WorkspaceWm$Session;,
        Ldev/duo/taskcore/WorkspaceWm$Saved;,
        Ldev/duo/taskcore/WorkspaceWm$Source;
    }
.end annotation


# static fields
.field private static final HIDDEN_BY_ORGANIZER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TaskCoreWm"


# instance fields
.field private activityFinishing:Ljava/lang/reflect/Field;

.field private activityTask:Ljava/lang/reflect/Method;

.field private activityToken:Ljava/lang/reflect/Field;

.field private activityTransitions:Ljava/lang/reflect/Field;

.field private activityType:Ljava/lang/reflect/Method;

.field private anyTaskForId:Ljava/lang/reflect/Method;

.field private applyTransaction:Ljava/lang/reflect/Method;

.field private atm:Ljava/lang/Object;

.field private currentUser:Ljava/lang/reflect/Field;

.field private focusableRaw:Ljava/lang/reflect/Field;

.field private focusedRoot:Ljava/lang/reflect/Method;

.field private forceHidden:Ljava/lang/reflect/Field;

.field private getDisplayContent:Ljava/lang/reflect/Method;

.field private getDisplayId:Ljava/lang/reflect/Method;

.field private getParent:Ljava/lang/reflect/Method;

.field private getProcess:Ljava/lang/reflect/Method;

.field private getRequestedBounds:Ljava/lang/reflect/Method;

.field private getRequestedMode:Ljava/lang/reflect/Method;

.field private getSurfaceControl:Ljava/lang/reflect/Method;

.field private globalLock:Ljava/lang/Object;

.field private inTransition:Ljava/lang/reflect/Method;

.field private interceptBackSet:Ljava/lang/reflect/Field;

.field private lastActivity:Ljava/lang/reflect/Field;

.field private volatile lastCallState:I

.field private launchCookie:Ljava/lang/reflect/Method;

.field private optionsFromBundle:Ljava/lang/reflect/Method;

.field private originatingIntent:Ljava/lang/reflect/Field;

.field private pendingRestore:Ldev/duo/taskcore/WorkspaceWm$Session;

.field private processMap:Ljava/lang/reflect/Field;

.field private remoteToken:Ljava/lang/reflect/Field;

.field private reparentSurface:Ljava/lang/reflect/Method;

.field private root:Ljava/lang/Object;

.field private final sendingSource:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ldev/duo/taskcore/WorkspaceWm$Source;",
            ">;"
        }
    .end annotation
.end field

.field private volatile session:Ldev/duo/taskcore/WorkspaceWm$Session;

.field private sourceActivity:Ljava/lang/reflect/Field;

.field private starterRequest:Ljava/lang/reflect/Field;

.field private successfulStart:Ljava/lang/reflect/Method;

.field private systemContext:Landroid/content/Context;

.field private systemUiUid:I

.field private taskIdField:Ljava/lang/reflect/Field;

.field private taskUser:Ljava/lang/reflect/Field;

.field private toToken:Ljava/lang/reflect/Method;

.field private tocField:Ljava/lang/reflect/Field;

.field private topResumed:Ljava/lang/reflect/Method;

.field private transitionAborted:Ljava/lang/reflect/Method;

.field private volatile transitionController:Ljava/lang/Object;

.field private transitionToken:Ljava/lang/reflect/Method;

.field private trimmable:Ljava/lang/reflect/Field;

.field private final unrestored:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private updateSurfacePosition:Ljava/lang/reflect/Method;

.field private visibleRequested:Ljava/lang/reflect/Method;

.field private wctBack:Ljava/lang/reflect/Method;

.field private wctBounds:Ljava/lang/reflect/Method;

.field private wctFocusable:Ljava/lang/reflect/Method;

.field private wctHidden:Ljava/lang/reflect/Method;

.field private wctMode:Ljava/lang/reflect/Method;

.field private wctNew:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private wctTrim:Ljava/lang/reflect/Method;

.field private wmHandler:Landroid/os/Handler;

.field private wms:Ljava/lang/Object;

.field private wocField:Ljava/lang/reflect/Field;

.field private wpcHasThread:Ljava/lang/reflect/Method;

.field private wpcName:Ljava/lang/reflect/Field;

.field private wpcPid:Ljava/lang/reflect/Method;

.field private wpcRemoved:Ljava/lang/reflect/Method;

.field private wpcUid:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Ldev/duo/taskcore/WorkspaceWm;->systemUiUid:I

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceWm;->unrestored:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceWm;->sendingSource:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static synthetic access$000(Ldev/duo/taskcore/WorkspaceWm;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceWm;->wmHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Ldev/duo/taskcore/WorkspaceWm;)Ljava/lang/Object;
    .locals 0

    .line 30
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceWm;->globalLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Ldev/duo/taskcore/WorkspaceWm;)Ldev/duo/taskcore/WorkspaceWm$Session;
    .locals 0

    .line 30
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    return-object p0
.end method

.method static synthetic access$202(Ldev/duo/taskcore/WorkspaceWm;Ldev/duo/taskcore/WorkspaceWm$Session;)Ldev/duo/taskcore/WorkspaceWm$Session;
    .locals 0

    .line 30
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    return-object p1
.end method

.method static synthetic access$300(Ldev/duo/taskcore/WorkspaceWm;Ldev/duo/taskcore/WorkspaceWm$Session;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceWm;->restoreOrDefer(Ldev/duo/taskcore/WorkspaceWm$Session;)V

    return-void
.end method

.method private static callEvent(Ldev/duo/taskcore/WorkspaceWm$Session;IZ)Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;
    .locals 11

    .line 500
    new-instance v0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    iget-wide v1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->epoch:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, p1

    move v10, p2

    invoke-direct/range {v0 .. v10}, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;-><init>(JILandroid/os/IBinder;IILandroid/os/IBinder;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;Z)V

    return-object v0
.end method

.method private crossAppLocked(Ldev/duo/taskcore/WorkspaceWm$Session;Ljava/lang/Object;Ljava/lang/Object;I)Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 485
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Ldev/duo/taskcore/WorkspaceWm;->sourceActivity:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v0, Ldev/duo/taskcore/WorkspaceWm;->lastActivity:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 486
    const/4 v5, 0x0

    if-eqz v4, :cond_9

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 487
    :cond_0
    iget-object v6, v0, Ldev/duo/taskcore/WorkspaceWm;->activityTask:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->activityTask:Ljava/lang/reflect/Method;

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v8, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 488
    if-eqz v6, :cond_8

    if-eqz v8, :cond_8

    if-ne v6, v8, :cond_1

    goto/16 :goto_4

    .line 489
    :cond_1
    iget-object v9, v1, Ldev/duo/taskcore/WorkspaceWm$Session;->saved:Ljava/util/Map;

    iget-object v10, v0, Ldev/duo/taskcore/WorkspaceWm;->taskIdField:Ljava/lang/reflect/Field;

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldev/duo/taskcore/WorkspaceWm$Saved;

    .line 490
    if-eqz v9, :cond_7

    iget-object v9, v9, Ldev/duo/taskcore/WorkspaceWm$Saved;->task:Ljava/lang/Object;

    if-eq v9, v6, :cond_2

    goto :goto_3

    .line 491
    :cond_2
    iget-object v6, v0, Ldev/duo/taskcore/WorkspaceWm;->taskUser:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    iget-object v9, v0, Ldev/duo/taskcore/WorkspaceWm;->currentUser:Ljava/lang/reflect/Field;

    iget-object v10, v0, Ldev/duo/taskcore/WorkspaceWm;->root:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    if-ne v6, v9, :cond_6

    iget-object v6, v0, Ldev/duo/taskcore/WorkspaceWm;->getDisplayId:Ljava/lang/reflect/Method;

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 492
    :cond_3
    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v5, v0, Ldev/duo/taskcore/WorkspaceWm;->transitionToken:Ljava/lang/reflect/Method;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/os/IBinder;

    :goto_0
    move-object/from16 v16, v5

    .line 494
    iget-object v3, v0, Ldev/duo/taskcore/WorkspaceWm;->activityType:Ljava/lang/reflect/Method;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    const/4 v3, 0x4

    goto :goto_1

    :cond_5
    const/4 v3, 0x3

    :goto_1
    move v14, v3

    .line 495
    new-instance v9, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    iget-wide v10, v1, Ldev/duo/taskcore/WorkspaceWm$Session;->epoch:J

    new-instance v13, Landroid/os/Binder;

    invoke-direct {v13}, Landroid/os/Binder;-><init>()V

    .line 496
    invoke-direct {v0, v2}, Ldev/duo/taskcore/WorkspaceWm;->taskRef(Ljava/lang/Object;)Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    move-result-object v17

    invoke-direct {v0, v4}, Ldev/duo/taskcore/WorkspaceWm;->taskRef(Ljava/lang/Object;)Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    move-result-object v18

    const/16 v19, 0x0

    const/4 v12, 0x1

    move/from16 v15, p4

    invoke-direct/range {v9 .. v19}, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;-><init>(JILandroid/os/IBinder;IILandroid/os/IBinder;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;Z)V

    .line 495
    return-object v9

    .line 491
    :cond_6
    :goto_2
    return-object v5

    .line 490
    :cond_7
    :goto_3
    return-object v5

    .line 488
    :cond_8
    :goto_4
    return-object v5

    .line 486
    :cond_9
    :goto_5
    return-object v5
.end method

.method private dispatch(IJLandroid/os/IBinder;IILandroid/os/Parcel;Landroid/os/Parcel;)Ljava/lang/String;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 657
    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v2, p8

    iget-object v8, v1, Ldev/duo/taskcore/WorkspaceWm;->globalLock:Ljava/lang/Object;

    monitor-enter v8

    .line 658
    :try_start_0
    invoke-direct {v1, v5, v6}, Ldev/duo/taskcore/WorkspaceWm;->processLocked(II)Ljava/lang/Object;

    move-result-object v7

    .line 659
    if-nez v7, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "caller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not the current SystemUI main process"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 660
    :cond_0
    iget-object v3, v1, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    .line 661
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 691
    move-object/from16 v4, p4

    move-object v12, v7

    move v7, v6

    move-wide/from16 v5, p2

    if-eqz v3, :cond_1c

    iget-wide v13, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->epoch:J

    goto/16 :goto_4

    .line 683
    :sswitch_0
    if-nez v3, :cond_1

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_1
    iget-wide v4, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->epoch:J

    :goto_0
    invoke-virtual {v2, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 684
    if-nez v3, :cond_2

    move v0, v10

    goto :goto_1

    :cond_2
    iget-object v0, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->saved:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget v10, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->revision:I

    :goto_2
    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Ldev/duo/taskcore/WorkspaceWm;->unrestored:Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Ldev/duo/taskcore/WorkspaceWm;->pendingRestore:Ldev/duo/taskcore/WorkspaceWm$Session;

    if-nez v3, :cond_4

    const-string v1, ""

    goto :goto_3

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " pending="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceWm;->pendingRestore:Ldev/duo/taskcore/WorkspaceWm$Session;

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceWm$Session;->saved:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 687
    monitor-exit v8

    return-object v11

    .line 663
    :sswitch_1
    invoke-virtual/range {p7 .. p7}, Landroid/os/Parcel;->readInt()I

    .line 664
    invoke-virtual/range {p7 .. p7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 665
    if-nez p4, :cond_5

    const-string v0, "no owner binder"

    monitor-exit v8

    return-object v0

    .line 666
    :cond_5
    if-eqz v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 667
    :cond_6
    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceWm;->unrestored:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrestored tasks from an earlier session "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceWm;->unrestored:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 668
    :cond_7
    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceWm;->pendingRestore:Ldev/duo/taskcore/WorkspaceWm$Session;

    if-eqz v0, :cond_8

    const-string v0, "previous session restore pending"

    monitor-exit v8

    return-object v0

    .line 669
    :cond_8
    if-eqz v3, :cond_9

    iget-boolean v0, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->dead:Z

    if-nez v0, :cond_9

    iget-object v0, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->owner:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->epoch:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " still open"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 670
    :cond_9
    if-eqz v3, :cond_b

    .line 671
    iput-object v11, v1, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    .line 672
    invoke-direct {v1, v3}, Ldev/duo/taskcore/WorkspaceWm;->restoreOrDefer(Ldev/duo/taskcore/WorkspaceWm$Session;)V

    .line 673
    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceWm;->unrestored:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceWm;->pendingRestore:Ldev/duo/taskcore/WorkspaceWm$Session;

    if-eqz v0, :cond_b

    :cond_a
    const-string v0, "previous session not restored"

    monitor-exit v8

    return-object v0

    .line 675
    :cond_b
    new-instance v0, Ldev/duo/taskcore/WorkspaceWm$Session;

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v7}, Ldev/duo/taskcore/WorkspaceWm$Session;-><init>(Ldev/duo/taskcore/WorkspaceWm;JLandroid/os/IBinder;IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    :try_start_1
    invoke-interface {v4, v0, v10}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 678
    :try_start_2
    iput-object v0, v1, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    .line 679
    iget v2, v1, Ldev/duo/taskcore/WorkspaceWm;->lastCallState:I

    invoke-static {v0, v2, v9}, Ldev/duo/taskcore/WorkspaceWm;->callEvent(Ldev/duo/taskcore/WorkspaceWm$Session;IZ)Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ldev/duo/taskcore/WorkspaceWm;->postSource(Ldev/duo/taskcore/WorkspaceWm$Session;Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V

    .line 680
    monitor-exit v8

    return-object v11

    .line 677
    :catch_0
    move-exception v0

    const-string v0, "owner already dead"

    monitor-exit v8

    return-object v0

    .line 691
    :goto_4
    cmp-long v13, v13, v5

    if-nez v13, :cond_1c

    iget-boolean v13, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->dead:Z

    if-eqz v13, :cond_c

    goto/16 :goto_e

    .line 692
    :cond_c
    iget-object v13, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->owner:Landroid/os/IBinder;

    if-ne v13, v4, :cond_1b

    iget v4, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->pid:I

    if-ne v4, v7, :cond_1b

    iget-object v4, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->process:Ljava/lang/Object;

    if-eq v4, v12, :cond_d

    goto/16 :goto_d

    .line 693
    :cond_d
    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    .line 754
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 713
    :pswitch_1
    iget-object v0, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->fsis:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iput-boolean v9, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->fsiLeftByUser:Z

    .line 714
    :cond_e
    monitor-exit v8

    return-object v11

    .line 707
    :pswitch_2
    iget-object v0, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->transitionSources:Ljava/util/Map;

    invoke-virtual/range {p7 .. p7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 708
    if-nez v0, :cond_f

    goto :goto_5

    :cond_f
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v10

    :goto_5
    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    invoke-virtual {v1, v2}, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->write(Landroid/os/Parcel;)V

    goto :goto_6

    .line 710
    :cond_10
    monitor-exit v8

    return-object v11

    .line 704
    :pswitch_3
    iget-object v0, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->registeredSources:Ljava/util/Map;

    invoke-virtual/range {p7 .. p7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    monitor-exit v8

    return-object v11

    .line 695
    :pswitch_4
    invoke-virtual/range {p7 .. p7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p7 .. p7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p7 .. p7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 696
    invoke-virtual/range {p7 .. p7}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 697
    if-eqz v0, :cond_14

    if-eqz v2, :cond_14

    if-eq v6, v9, :cond_11

    if-eq v6, v4, :cond_11

    goto :goto_8

    .line 699
    :cond_11
    iget-boolean v4, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->returning:Z

    if-nez v4, :cond_13

    iget-object v4, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->registeredSources:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    iget-object v4, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->fsis:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_7

    .line 700
    :cond_12
    iget-object v4, v3, Ldev/duo/taskcore/WorkspaceWm$Session;->registeredSources:Ljava/util/Map;

    new-instance v7, Ldev/duo/taskcore/WorkspaceWm$Source;

    move-object/from16 p4, v0

    move-object/from16 p2, v1

    move-object/from16 p5, v2

    move-object/from16 p3, v3

    move-object/from16 p6, v5

    move/from16 p7, v6

    move-object/from16 p1, v7

    invoke-direct/range {p1 .. p7}, Ldev/duo/taskcore/WorkspaceWm$Source;-><init>(Ldev/duo/taskcore/WorkspaceWm;Ldev/duo/taskcore/WorkspaceWm$Session;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;I)V

    move-object/from16 v1, p1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    monitor-exit v8

    return-object v11

    .line 699
    :cond_13
    :goto_7
    const-string v0, "source/session already in use"

    monitor-exit v8

    return-object v0

    .line 698
    :cond_14
    :goto_8
    const-string v0, "invalid source registration"

    monitor-exit v8

    return-object v0

    .line 738
    :pswitch_5
    move-object v0, v3

    iget-object v0, v0, Ldev/duo/taskcore/WorkspaceWm$Session;->saved:Ljava/util/Map;

    new-instance v1, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda15;-><init>()V

    move-object/from16 v3, p7

    invoke-static {v0, v3, v1}, Ldev/duo/taskcore/WorkspaceProtocol;->withdraw(Ljava/util/Map;Landroid/os/Parcel;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 750
    :pswitch_6
    move-object v0, v3

    iget-object v2, v0, Ldev/duo/taskcore/WorkspaceWm$Session;->owner:Landroid/os/IBinder;

    invoke-interface {v2, v0, v10}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 751
    iput-object v11, v1, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    .line 752
    monitor-exit v8

    return-object v11

    .line 746
    :pswitch_7
    move-object v0, v3

    iput-boolean v9, v0, Ldev/duo/taskcore/WorkspaceWm$Session;->returning:Z

    .line 747
    monitor-exit v8

    return-object v11

    .line 740
    :pswitch_8
    move-object v0, v3

    move-object/from16 v3, p7

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 741
    iget v2, v0, Ldev/duo/taskcore/WorkspaceWm$Session;->revision:I

    if-gt v1, v2, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stale revision "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Ldev/duo/taskcore/WorkspaceWm$Session;->revision:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 742
    :cond_15
    iput v1, v0, Ldev/duo/taskcore/WorkspaceWm$Session;->revision:I

    .line 743
    monitor-exit v8

    return-object v11

    .line 716
    :pswitch_9
    move-object v0, v3

    move-object/from16 v3, p7

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 717
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 718
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 719
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 720
    invoke-direct {v1, v7, v12}, Ldev/duo/taskcore/WorkspaceWm;->liveTaskLocked(ILandroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v3

    .line 721
    if-nez v3, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not a live current-user default-display task with this token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 722
    :cond_16
    iget-object v13, v0, Ldev/duo/taskcore/WorkspaceWm$Session;->saved:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ldev/duo/taskcore/WorkspaceWm$Saved;

    .line 724
    if-eqz v13, :cond_17

    iget-object v13, v13, Ldev/duo/taskcore/WorkspaceWm$Saved;->token:Landroid/os/IBinder;

    if-ne v13, v12, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " still leased in session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 725
    :cond_17
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->getRequestedBounds:Ljava/lang/reflect/Method;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 726
    iget-object v6, v1, Ldev/duo/taskcore/WorkspaceWm;->interceptBackSet:Ljava/lang/reflect/Field;

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->tocField:Ljava/lang/reflect/Field;

    iget-object v14, v1, Ldev/duo/taskcore/WorkspaceWm;->atm:Ljava/lang/Object;

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 727
    new-instance v13, Ldev/duo/taskcore/WorkspaceWm$Saved;

    iget-object v14, v1, Ldev/duo/taskcore/WorkspaceWm;->taskUser:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    iget-object v15, v1, Ldev/duo/taskcore/WorkspaceWm;->getDisplayId:Ljava/lang/reflect/Method;

    move/from16 p4, v4

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v15, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v15, v1, Ldev/duo/taskcore/WorkspaceWm;->getParent:Ljava/lang/reflect/Method;

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v15, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    new-instance v16, Ldev/duo/taskcore/TaskBinding$Snapshot;

    iget-object v15, v1, Ldev/duo/taskcore/WorkspaceWm;->getRequestedMode:Ljava/lang/reflect/Method;

    move-object/from16 v23, v11

    new-array v11, v10, [Ljava/lang/Object;

    .line 728
    invoke-virtual {v15, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 729
    if-eqz v5, :cond_19

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_18

    goto :goto_9

    :cond_18
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v18, v11

    goto :goto_a

    :cond_19
    :goto_9
    move-object/from16 v18, v23

    :goto_a
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->trimmable:Ljava/lang/reflect/Field;

    .line 730
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v19

    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->focusableRaw:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v20

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceWm;->forceHidden:Ljava/lang/reflect/Field;

    .line 731
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1a

    const/16 v21, 0x1

    goto :goto_b

    :cond_1a
    move/from16 v21, v10

    :goto_b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    invoke-direct/range {v16 .. v22}, Ldev/duo/taskcore/TaskBinding$Snapshot;-><init>(ILandroid/graphics/Rect;ZZZZ)V

    move-object/from16 p4, v3

    move/from16 p3, v4

    move/from16 p1, v7

    move-object/from16 p5, v9

    move-object/from16 p6, v12

    move-object/from16 p0, v13

    move/from16 p2, v14

    move-object/from16 p7, v16

    invoke-direct/range {p0 .. p7}, Ldev/duo/taskcore/WorkspaceWm$Saved;-><init>(IIILjava/lang/Object;Ljava/lang/Object;Landroid/os/IBinder;Ldev/duo/taskcore/TaskBinding$Snapshot;)V

    move-object/from16 v3, p0

    move/from16 v1, p1

    .line 732
    iget-object v0, v0, Ldev/duo/taskcore/WorkspaceWm$Session;->saved:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    iget-object v0, v3, Ldev/duo/taskcore/WorkspaceWm$Saved;->snapshot:Ldev/duo/taskcore/TaskBinding$Snapshot;

    invoke-virtual {v0, v2}, Ldev/duo/taskcore/TaskBinding$Snapshot;->write(Landroid/os/Parcel;)V

    .line 734
    monitor-exit v8

    return-object v23

    .line 754
    :goto_c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown op "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 692
    :cond_1b
    :goto_d
    const-string v0, "owner/process mismatch"

    monitor-exit v8

    return-object v0

    .line 691
    :cond_1c
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static findReturning(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 577
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 578
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p2, :cond_0

    return-object v3

    .line 577
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 579
    :cond_1
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " -> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fsiEvent(Ldev/duo/taskcore/WorkspaceWm$Source;ILdev/duo/taskcore/WorkspaceProtocol$TaskRef;Landroid/os/IBinder;Z)Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;
    .locals 11

    .line 572
    new-instance v0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    iget-object v1, p1, Ldev/duo/taskcore/WorkspaceWm$Source;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    iget-wide v1, v1, Ldev/duo/taskcore/WorkspaceWm$Session;->epoch:J

    iget-object v4, p1, Ldev/duo/taskcore/WorkspaceWm$Source;->request:Landroid/os/IBinder;

    iget-object v3, p1, Ldev/duo/taskcore/WorkspaceWm$Source;->result:Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    iget v6, v3, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->startResult:I

    iget-object v8, p1, Ldev/duo/taskcore/WorkspaceWm$Source;->fsiTarget:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    const/4 v5, 0x2

    move v3, p2

    move-object v9, p3

    move-object v7, p4

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;-><init>(JILandroid/os/IBinder;IILandroid/os/IBinder;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;Z)V

    return-object v0
.end method

.method private handle(Landroid/os/Parcel;Landroid/os/Parcel;II)V
    .locals 17

    .line 583
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    .line 584
    nop

    .line 585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 587
    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_6

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 589
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 590
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 591
    move-wide v5, v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 592
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 594
    move/from16 v7, p3

    move-wide v12, v5

    move/from16 v6, p4

    invoke-direct {v0, v7, v6}, Ldev/duo/taskcore/WorkspaceWm;->permissionProblem(II)Ljava/lang/String;

    move-result-object v5

    .line 595
    if-eqz v5, :cond_0

    move-object v14, v5

    move v5, v10

    move v0, v11

    goto/16 :goto_1

    .line 596
    :cond_0
    const/4 v5, 0x2

    if-eq v1, v10, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocol "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v14, v0

    move v0, v11

    goto/16 :goto_1

    .line 597
    :cond_1
    const/4 v1, 0x7

    const-string v14, ""

    if-ne v2, v1, :cond_2

    :try_start_1
    sget-object v0, Ldev/duo/taskcore/WorkspaceProtocol;->buildId:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v11

    move v5, v0

    goto :goto_1

    .line 598
    :cond_2
    sget-object v1, Ldev/duo/taskcore/WorkspaceProtocol;->buildId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 599
    nop

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server build "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ldev/duo/taskcore/WorkspaceProtocol;->buildId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff08\u7cfb\u7edf\u7aef\u5c1a\u672a\u52a0\u8f7d\u672c\u7248\u672c\uff0c\u6682\u4e0d\u80fd\u8fdb\u5165\u5de5\u4f5c\u53f0\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    move v0, v11

    goto :goto_1

    .line 602
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 603
    move v1, v2

    move v5, v7

    move-wide v2, v12

    move-object/from16 v7, p1

    :try_start_2
    invoke-direct/range {v0 .. v8}, Ldev/duo/taskcore/WorkspaceWm;->dispatch(IJLandroid/os/IBinder;IILandroid/os/Parcel;Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 604
    :try_start_3
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    if-eqz v1, :cond_4

    const/4 v2, 0x3

    move-object v14, v1

    move v5, v2

    goto :goto_0

    .line 606
    :cond_4
    move v5, v11

    .line 607
    :goto_0
    iget-object v0, v0, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    .line 608
    if-nez v0, :cond_5

    move v0, v11

    goto :goto_1

    :cond_5
    iget v0, v0, Ldev/duo/taskcore/WorkspaceWm$Session;->revision:I

    .line 614
    :goto_1
    goto :goto_3

    .line 604
    :catchall_0
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 587
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 610
    :catchall_1
    move-exception v0

    .line 611
    nop

    .line 612
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v1, v0

    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 613
    const-string v1, "TaskCoreWm"

    const-string v2, "request failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x5

    move v0, v11

    .line 615
    :goto_3
    invoke-static {}, Ldev/duo/taskcore/WorkspaceProtocol;->magic()I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    invoke-virtual {v9, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    move v10, v11

    :goto_4
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    invoke-virtual {v9, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 620
    if-nez v5, :cond_9

    invoke-virtual {v8}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    invoke-virtual {v9, v8, v11, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 621
    :cond_9
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 622
    return-void
.end method

.method private installSourceHooks(Lio/github/libxposed/api/XposedInterface;Ljava/lang/ClassLoader;)V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 233
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "com.android.server.am.ActivityManagerService"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 234
    const-string v5, "com.android.server.am.PendingIntentRecord"

    invoke-static {v5, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 235
    const-string v6, "com.android.server.wm.ActivityRecord"

    invoke-static {v6, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 236
    const-string v6, "com.android.server.wm.ActivityStarter"

    invoke-static {v6, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 237
    const-string v8, "com.android.server.wm.ActivityStarter$Request"

    invoke-static {v8, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 238
    const-string v9, "com.android.server.wm.Transition"

    invoke-static {v9, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 239
    const-string v9, "com.android.server.wm.WindowContainer"

    invoke-static {v9, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    .line 240
    const-string v10, "com.android.server.wm.ConfigurationContainer"

    invoke-static {v10, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v10

    .line 241
    const-string v11, "com.android.server.wm.Task"

    invoke-static {v11, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v11

    .line 242
    const-string v13, "com.android.server.wm.RootWindowContainer"

    invoke-static {v13, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v13

    .line 243
    const-string v14, "android.app.ActivityOptions"

    invoke-static {v14, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v14

    .line 244
    const-string v15, "android.app.IApplicationThread"

    invoke-static {v15, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v16

    .line 245
    const-string v15, "android.content.IIntentReceiver"

    invoke-static {v15, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v21

    .line 246
    const-string v15, "android.content.IIntentSender"

    invoke-static {v15, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v17

    .line 247
    const-string v15, "mRequest"

    invoke-virtual {v6, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    iput-object v15, v0, Ldev/duo/taskcore/WorkspaceWm;->starterRequest:Ljava/lang/reflect/Field;

    .line 248
    const-string v15, "originatingPendingIntent"

    invoke-virtual {v8, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    iput-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->originatingIntent:Ljava/lang/reflect/Field;

    .line 249
    const-string v8, "mLastStartActivityRecord"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    iput-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->lastActivity:Ljava/lang/reflect/Field;

    .line 250
    const-string v8, "mSourceRecord"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    iput-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->sourceActivity:Ljava/lang/reflect/Field;

    .line 251
    const-string v8, "com.android.server.wm.WindowToken"

    invoke-static {v8, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    const-string v15, "token"

    invoke-virtual {v8, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    iput-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->activityToken:Ljava/lang/reflect/Field;

    .line 252
    const-string v8, "finishing"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    iput-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->activityFinishing:Ljava/lang/reflect/Field;

    .line 253
    const-string v8, "mTransitionController"

    invoke-virtual {v9, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    iput-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->activityTransitions:Ljava/lang/reflect/Field;

    .line 254
    const-string v8, "mTaskId"

    invoke-virtual {v11, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    iput-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->taskIdField:Ljava/lang/reflect/Field;

    .line 255
    const-string v8, "getTask"

    new-array v15, v4, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->activityTask:Ljava/lang/reflect/Method;

    .line 256
    const-string v8, "getToken"

    new-array v15, v4, [Ljava/lang/Class;

    invoke-virtual {v12, v8, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->transitionToken:Ljava/lang/reflect/Method;

    .line 257
    const-string v8, "isAborted"

    new-array v15, v4, [Ljava/lang/Class;

    invoke-virtual {v12, v8, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->transitionAborted:Ljava/lang/reflect/Method;

    .line 258
    const-string v8, "isVisibleRequested"

    new-array v15, v4, [Ljava/lang/Class;

    invoke-virtual {v9, v8, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->visibleRequested:Ljava/lang/reflect/Method;

    .line 259
    const-string v8, "getTopDisplayFocusedRootTask"

    new-array v9, v4, [Ljava/lang/Class;

    invoke-virtual {v13, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->focusedRoot:Ljava/lang/reflect/Method;

    .line 260
    const-string v8, "getTopResumedActivity"

    new-array v9, v4, [Ljava/lang/Class;

    invoke-virtual {v11, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->topResumed:Ljava/lang/reflect/Method;

    .line 261
    const-string v8, "getActivityType"

    new-array v9, v4, [Ljava/lang/Class;

    invoke-virtual {v10, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->activityType:Ljava/lang/reflect/Method;

    .line 262
    const-class v8, Landroid/app/ActivityManager;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    const-string v10, "isStartResultSuccessful"

    invoke-virtual {v8, v10, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->successfulStart:Ljava/lang/reflect/Method;

    .line 263
    const-class v8, Landroid/os/Bundle;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    const-string v9, "fromBundle"

    invoke-virtual {v14, v9, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->optionsFromBundle:Ljava/lang/reflect/Method;

    .line 264
    const-string v8, "getLaunchCookie"

    new-array v9, v4, [Ljava/lang/Class;

    invoke-virtual {v14, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->launchCookie:Ljava/lang/reflect/Method;

    .line 265
    const/16 v8, 0x12

    new-array v9, v8, [Ljava/lang/reflect/AccessibleObject;

    iget-object v10, v0, Ldev/duo/taskcore/WorkspaceWm;->starterRequest:Ljava/lang/reflect/Field;

    aput-object v10, v9, v4

    iget-object v10, v0, Ldev/duo/taskcore/WorkspaceWm;->originatingIntent:Ljava/lang/reflect/Field;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget-object v10, v0, Ldev/duo/taskcore/WorkspaceWm;->lastActivity:Ljava/lang/reflect/Field;

    const/4 v15, 0x2

    aput-object v10, v9, v15

    const/4 v10, 0x3

    iget-object v13, v0, Ldev/duo/taskcore/WorkspaceWm;->sourceActivity:Ljava/lang/reflect/Field;

    aput-object v13, v9, v10

    const/4 v10, 0x4

    iget-object v13, v0, Ldev/duo/taskcore/WorkspaceWm;->activityToken:Ljava/lang/reflect/Field;

    aput-object v13, v9, v10

    const/4 v10, 0x5

    iget-object v13, v0, Ldev/duo/taskcore/WorkspaceWm;->activityFinishing:Ljava/lang/reflect/Field;

    aput-object v13, v9, v10

    const/4 v10, 0x6

    iget-object v13, v0, Ldev/duo/taskcore/WorkspaceWm;->activityTransitions:Ljava/lang/reflect/Field;

    aput-object v13, v9, v10

    const/4 v10, 0x7

    iget-object v13, v0, Ldev/duo/taskcore/WorkspaceWm;->taskIdField:Ljava/lang/reflect/Field;

    aput-object v13, v9, v10

    const/16 v10, 0x8

    iget-object v13, v0, Ldev/duo/taskcore/WorkspaceWm;->activityTask:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0x9

    iget-object v13, v0, Ldev/duo/taskcore/WorkspaceWm;->transitionToken:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0xa

    iget-object v13, v0, Ldev/duo/taskcore/WorkspaceWm;->transitionAborted:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0xb

    iget-object v13, v0, Ldev/duo/taskcore/WorkspaceWm;->visibleRequested:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0xc

    iget-object v13, v0, Ldev/duo/taskcore/WorkspaceWm;->focusedRoot:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0xd

    iget-object v13, v0, Ldev/duo/taskcore/WorkspaceWm;->topResumed:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0xe

    iget-object v13, v0, Ldev/duo/taskcore/WorkspaceWm;->activityType:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0xf

    iget-object v13, v0, Ldev/duo/taskcore/WorkspaceWm;->successfulStart:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0x10

    iget-object v13, v0, Ldev/duo/taskcore/WorkspaceWm;->optionsFromBundle:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0x11

    iget-object v13, v0, Ldev/duo/taskcore/WorkspaceWm;->launchCookie:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    move v10, v4

    :goto_0
    if-ge v10, v8, :cond_0

    aget-object v13, v9, v10

    .line 267
    invoke-virtual {v13, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 265
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 269
    :cond_0
    const-class v18, Landroid/os/IBinder;

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v20, Landroid/content/Intent;

    move-object/from16 v22, v21

    const-class v21, Ljava/lang/String;

    const-class v23, Ljava/lang/String;

    const-class v24, Landroid/os/Bundle;

    filled-new-array/range {v16 .. v24}, [Ljava/lang/Class;

    move-result-object v8

    const-string v9, "sendIntentSender"

    invoke-virtual {v3, v9, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v8, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda0;-><init>(Ldev/duo/taskcore/WorkspaceWm;)V

    .line 270
    invoke-interface {v3, v8}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 309
    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v18, Landroid/content/Intent;

    const-class v19, Ljava/lang/String;

    const-class v20, Landroid/os/IBinder;

    move-object/from16 v21, v22

    const-class v22, Ljava/lang/String;

    const-class v23, Landroid/os/IBinder;

    const-class v24, Ljava/lang/String;

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v26, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v27, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v28, Landroid/os/Bundle;

    sget-object v29, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v30, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array/range {v16 .. v30}, [Ljava/lang/Class;

    move-result-object v3

    const-string v8, "sendInner"

    invoke-virtual {v5, v8, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v5, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda1;-><init>(Ldev/duo/taskcore/WorkspaceWm;)V

    .line 311
    invoke-interface {v3, v5}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 318
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 319
    const-string v3, "android.window.RemoteTransition"

    invoke-static {v3, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v11

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object v8, v14

    filled-new-array/range {v7 .. v13}, [Ljava/lang/Class;

    move-result-object v3

    .line 318
    const-string v5, "handleStartResult"

    invoke-virtual {v6, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v5, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda2;-><init>(Ldev/duo/taskcore/WorkspaceWm;)V

    .line 319
    invoke-interface {v3, v5}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 415
    const-string v3, "makeFinishingLocked"

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v7, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v5, "removeImmediately"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v7, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/reflect/Method;

    move-result-object v3

    move v5, v4

    :goto_1
    if-ge v5, v15, :cond_1

    aget-object v6, v3, v5

    .line 416
    invoke-interface {v1, v6}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v6

    new-instance v7, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0}, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda3;-><init>(Ldev/duo/taskcore/WorkspaceWm;)V

    invoke-interface {v6, v7}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 415
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 434
    :cond_1
    const-string v3, "com.android.server.TelephonyRegistry"

    invoke-static {v3, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 435
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    const-string v6, "notifyCallStateForAllSubs"

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v5, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0}, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda4;-><init>(Ldev/duo/taskcore/WorkspaceWm;)V

    invoke-interface {v3, v5}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 445
    const-string v3, "com.android.server.wm.ActivityTaskSupervisor"

    invoke-static {v3, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 446
    const-string v5, "com.android.server.wm.ActivityTaskManagerService"

    invoke-static {v5, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 447
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Landroid/os/Bundle;

    filled-new-array {v6, v7}, [Ljava/lang/Class;

    move-result-object v6

    const-string v7, "startActivityFromRecents"

    invoke-virtual {v5, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-interface {v1, v5}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v5

    new-instance v6, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda5;

    invoke-direct {v6, v0}, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda5;-><init>(Ldev/duo/taskcore/WorkspaceWm;)V

    invoke-interface {v5, v6}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 457
    const-class v5, Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    const-string v6, "updateTopResumedActivityIfNeeded"

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v5, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda6;

    invoke-direct {v5, v0}, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda6;-><init>(Ldev/duo/taskcore/WorkspaceWm;)V

    invoke-interface {v3, v5}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 462
    const-string v3, "com.android.server.wm.WindowOrganizerController"

    invoke-static {v3, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 463
    const-class v5, Landroid/os/IBinder;

    .line 464
    const-string v6, "android.window.WindowContainerTransaction"

    invoke-static {v6, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    .line 463
    const-string v6, "finishTransition"

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v5, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda7;

    invoke-direct {v5, v0}, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda7;-><init>(Ldev/duo/taskcore/WorkspaceWm;)V

    .line 464
    invoke-interface {v3, v5}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 469
    const-string v3, "abort"

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v12, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v5, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda8;

    invoke-direct {v5, v0}, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda8;-><init>(Ldev/duo/taskcore/WorkspaceWm;)V

    invoke-interface {v3, v5}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 474
    const-string v3, "com.android.server.wm.TransitionController"

    invoke-static {v3, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 475
    const-string v3, "validateStatesOnIdle"

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v1

    new-instance v2, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda9;-><init>(Ldev/duo/taskcore/WorkspaceWm;)V

    invoke-interface {v1, v2}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 480
    return-void
.end method

.method static synthetic lambda$dispatch$17(Ldev/duo/taskcore/WorkspaceWm$Saved;)Landroid/os/IBinder;
    .locals 0

    .line 738
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceWm$Saved;->token:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic lambda$installSourceHooks$4(Landroid/os/IBinder;)Ljava/util/Map;
    .locals 0

    .line 333
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$installSourceHooks$5(Landroid/os/IBinder;)Ljava/util/Map;
    .locals 0

    .line 350
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$installSourceHooks$6(Landroid/os/IBinder;)Ljava/util/Map;
    .locals 0

    .line 370
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$postSource$15(Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;Ldev/duo/taskcore/WorkspaceWm$Session;)V
    .locals 4

    .line 513
    const-string v0, "TaskCoreWm"

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 515
    :try_start_0
    const-string v2, "dev.duo.taskcore.WorkspaceEvents"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 516
    invoke-static {}, Ldev/duo/taskcore/WorkspaceProtocol;->magic()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v3, Ldev/duo/taskcore/WorkspaceProtocol;->buildId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0, v1}, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->write(Landroid/os/Parcel;)V

    .line 518
    iget-object p1, p1, Ldev/duo/taskcore/WorkspaceWm$Session;->owner:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v1, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 519
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source callback rejected for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->request:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 521
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 520
    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "source callback failed"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 522
    return-void

    .line 521
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method private liveTaskLocked(ILandroid/os/IBinder;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 648
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm;->anyTaskForId:Ljava/lang/reflect/Method;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->root:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 649
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->remoteToken:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_0

    goto :goto_1

    .line 650
    :cond_0
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceWm;->taskUser:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->currentUser:Ljava/lang/reflect/Field;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceWm;->root:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    if-eq p2, v1, :cond_1

    return-object v0

    .line 651
    :cond_1
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceWm;->getDisplayId:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceWm;->getDisplayContent:Ljava/lang/reflect/Method;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->root:Ljava/lang/Object;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 652
    :cond_2
    return-object p1

    .line 651
    :cond_3
    :goto_0
    return-object v0

    .line 649
    :cond_4
    :goto_1
    return-object v0
.end method

.method private permissionProblem(II)Ljava/lang/String;
    .locals 4

    .line 625
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm;->systemContext:Landroid/content/Context;

    .line 626
    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v1, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_3

    .line 627
    const-string v1, "android.permission.MANAGE_ACTIVITY_TASKS"

    invoke-virtual {v0, v1, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 629
    :cond_0
    iget p2, p0, Ldev/duo/taskcore/WorkspaceWm;->systemUiUid:I

    if-gez p2, :cond_1

    .line 630
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 631
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "com.android.systemui"

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p2, p0, Ldev/duo/taskcore/WorkspaceWm;->systemUiUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 632
    :catch_0
    move-exception p1

    :try_start_1
    const-string p1, "systemui not installed"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 632
    return-object p1

    .line 633
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 635
    :cond_1
    :goto_1
    iget p2, p0, Ldev/duo/taskcore/WorkspaceWm;->systemUiUid:I

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "caller uid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is not SystemUI"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    .line 628
    :cond_3
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "caller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " lacks window/task permission"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private postFsiProbe(Landroid/os/IBinder;)V
    .locals 2

    .line 526
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm;->wmHandler:Landroid/os/Handler;

    new-instance v1, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda10;-><init>(Ldev/duo/taskcore/WorkspaceWm;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 568
    return-void
.end method

.method private postSource(Ldev/duo/taskcore/WorkspaceWm$Session;Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V
    .locals 2

    .line 512
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm;->wmHandler:Landroid/os/Handler;

    new-instance v1, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda14;

    invoke-direct {v1, p2, p1}, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda14;-><init>(Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;Ldev/duo/taskcore/WorkspaceWm$Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 523
    return-void
.end method

.method private processLocked(II)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 640
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm;->getProcess:Ljava/lang/reflect/Method;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->processMap:Ljava/lang/reflect/Field;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceWm;->atm:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 641
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceWm;->wpcRemoved:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceWm;->wpcHasThread:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 642
    :cond_0
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceWm;->wpcPid:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_3

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceWm;->wpcUid:Ljava/lang/reflect/Field;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2

    if-eq p2, p1, :cond_1

    goto :goto_1

    .line 643
    :cond_1
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceWm;->wpcName:Ljava/lang/reflect/Field;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "com.android.systemui"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    return-object v0

    .line 642
    :cond_3
    :goto_1
    return-object v1

    .line 641
    :cond_4
    :goto_2
    return-object v1
.end method

.method private restoreLocked(Ldev/duo/taskcore/WorkspaceWm$Session;)V
    .locals 10

    .line 781
    const-string v0, "TaskCoreWm"

    iget-object p1, p1, Ldev/duo/taskcore/WorkspaceWm$Session;->saved:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/taskcore/WorkspaceWm$Saved;

    .line 783
    :try_start_0
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceWm;->anyTaskForId:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceWm;->root:Ljava/lang/Object;

    iget v4, v1, Ldev/duo/taskcore/WorkspaceWm$Saved;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 784
    if-eqz v2, :cond_0

    iget-object v3, v1, Ldev/duo/taskcore/WorkspaceWm$Saved;->task:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceWm;->remoteToken:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceWm$Saved;->token:Landroid/os/IBinder;

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 786
    :cond_1
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceWm;->getParent:Ljava/lang/reflect/Method;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 787
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceWm;->getRequestedMode:Ljava/lang/reflect/Method;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x6

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceWm;->taskUser:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    iget v6, v1, Ldev/duo/taskcore/WorkspaceWm$Saved;->userId:I

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceWm;->getDisplayId:Ljava/lang/reflect/Method;

    new-array v6, v5, [Ljava/lang/Object;

    .line 788
    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v6, v1, Ldev/duo/taskcore/WorkspaceWm$Saved;->displayId:I

    if-ne v4, v6, :cond_6

    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceWm$Saved;->parent:Ljava/lang/Object;

    if-eq v3, v4, :cond_2

    goto/16 :goto_4

    .line 792
    :cond_2
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceWm;->toToken:Ljava/lang/reflect/Method;

    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceWm$Saved;->token:Landroid/os/IBinder;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 793
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceWm;->wctNew:Ljava/lang/reflect/Constructor;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 794
    iget-object v6, v1, Ldev/duo/taskcore/WorkspaceWm$Saved;->snapshot:Ldev/duo/taskcore/TaskBinding$Snapshot;

    .line 795
    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceWm;->wctMode:Ljava/lang/reflect/Method;

    iget v8, v6, Ldev/duo/taskcore/TaskBinding$Snapshot;->windowingMode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceWm;->wctBounds:Ljava/lang/reflect/Method;

    iget-object v8, v6, Ldev/duo/taskcore/TaskBinding$Snapshot;->bounds:Landroid/graphics/Rect;

    if-nez v8, :cond_3

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v8, Landroid/graphics/Rect;

    iget-object v9, v6, Ldev/duo/taskcore/TaskBinding$Snapshot;->bounds:Landroid/graphics/Rect;

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_1
    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceWm;->wctFocusable:Ljava/lang/reflect/Method;

    iget-boolean v8, v6, Ldev/duo/taskcore/TaskBinding$Snapshot;->focusable:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceWm;->wctHidden:Ljava/lang/reflect/Method;

    iget-boolean v8, v6, Ldev/duo/taskcore/TaskBinding$Snapshot;->hidden:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceWm;->wctBack:Ljava/lang/reflect/Method;

    iget-boolean v8, v6, Ldev/duo/taskcore/TaskBinding$Snapshot;->interceptBack:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceWm;->wctTrim:Ljava/lang/reflect/Method;

    iget-boolean v8, v6, Ldev/duo/taskcore/TaskBinding$Snapshot;->trimmable:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceWm;->applyTransaction:Ljava/lang/reflect/Method;

    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceWm;->wocField:Ljava/lang/reflect/Field;

    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceWm;->atm:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceWm;->getParent:Ljava/lang/reflect/Method;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 803
    const/4 v4, 0x0

    if-nez v3, :cond_4

    move-object v3, v4

    goto :goto_2

    :cond_4
    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceWm;->getSurfaceControl:Ljava/lang/reflect/Method;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    .line 804
    :goto_2
    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceWm;->getSurfaceControl:Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl;

    .line 805
    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 807
    new-instance v7, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v7}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 808
    :try_start_1
    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceWm;->reparentSurface:Ljava/lang/reflect/Method;

    filled-new-array {v7, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceWm;->updateSurfacePosition:Ljava/lang/reflect/Method;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v7, v5, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 811
    invoke-static {v7, v5, v4}, Ldev/duo/taskcore/Tx;->windowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    .line 812
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 813
    :try_start_2
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restored task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Ldev/duo/taskcore/WorkspaceWm$Saved;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Ldev/duo/taskcore/TaskBinding$Snapshot;->windowingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 818
    goto/16 :goto_6

    .line 807
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2

    .line 806
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "no valid surface/parent to restore"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 789
    :cond_6
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Ldev/duo/taskcore/WorkspaceWm$Saved;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changed by the system (mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceWm;->getRequestedMode:Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): not overwritten"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 790
    goto/16 :goto_0

    .line 815
    :catchall_2
    move-exception v2

    .line 816
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceWm;->unrestored:Ljava/util/Map;

    iget v4, v1, Ldev/duo/taskcore/WorkspaceWm$Saved;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    instance-of v5, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v5, :cond_7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_5

    :cond_7
    move-object v5, v2

    :goto_5
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restore failed for task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Ldev/duo/taskcore/WorkspaceWm$Saved;->taskId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 819
    :goto_6
    goto/16 :goto_0

    .line 820
    :cond_8
    return-void
.end method

.method private restoreOrDefer(Ldev/duo/taskcore/WorkspaceWm$Session;)V
    .locals 7

    .line 761
    const-string v0, "TaskCoreWm"

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->transitionController:Ljava/lang/Object;

    .line 762
    iget-object v2, p1, Ldev/duo/taskcore/WorkspaceWm$Session;->saved:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/duo/taskcore/WorkspaceWm$Saved;

    .line 764
    if-eqz v1, :cond_0

    :try_start_0
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceWm;->inTransition:Ljava/lang/reflect/Method;

    iget-object v5, v3, Ldev/duo/taskcore/WorkspaceWm$Saved;->task:Ljava/lang/Object;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 765
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm;->pendingRestore:Ldev/duo/taskcore/WorkspaceWm$Session;

    .line 766
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restore of session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Ldev/duo/taskcore/WorkspaceWm$Session;->epoch:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deferred: task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v3, v3, Ldev/duo/taskcore/WorkspaceWm$Saved;->taskId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in transition"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    return-void

    .line 769
    :catch_0
    move-exception v3

    .line 770
    const-string v4, "inTransition check failed"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 771
    :cond_0
    nop

    .line 772
    :goto_1
    goto :goto_0

    .line 773
    :cond_1
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceWm;->restoreLocked(Ldev/duo/taskcore/WorkspaceWm$Session;)V

    .line 774
    return-void
.end method

.method private taskRef(Ljava/lang/Object;)Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 505
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm;->activityTask:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 506
    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 507
    :cond_0
    move-object v2, v0

    new-instance v0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceWm;->taskIdField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceWm;->taskUser:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceWm;->getDisplayId:Ljava/lang/reflect/Method;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceWm;->activityType:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    .line 508
    invoke-virtual {v6, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceWm;->remoteToken:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceWm;->activityToken:Ljava/lang/reflect/Field;

    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/IBinder;

    move v7, v4

    move v4, v1

    move v1, v3

    move v3, v5

    move-object v5, v2

    move v2, v7

    invoke-direct/range {v0 .. v6}, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;-><init>(IIIILandroid/os/IBinder;Landroid/os/IBinder;)V

    .line 507
    return-object v0
.end method


# virtual methods
.method public install(Lio/github/libxposed/api/XposedInterface;Ljava/lang/ClassLoader;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 122
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.android.server.wm."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "WindowManagerService"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ActivityTaskManagerService"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "RootWindowContainer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "Task"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "TaskFragment"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    .line 128
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "WindowContainer"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v10

    .line 129
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ConfigurationContainer"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v11

    .line 130
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "WindowContainer$RemoteToken"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 131
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "TaskOrganizerController"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v13

    .line 132
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "WindowOrganizerController"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v3, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v14

    .line 133
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v3, "WindowProcessControllerMap"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x0

    invoke-static {v3, v15, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 134
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v7, "WindowProcessController"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    invoke-static {v7, v15, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 135
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "TransitionController"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x0

    invoke-static {v2, v15, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 136
    move-object/from16 v17, v0

    const-string v0, "android.window.WindowContainerTransaction"

    invoke-static {v0, v15, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 137
    move-object/from16 v18, v0

    const-string v0, "android.window.WindowContainerToken"

    invoke-static {v0, v15, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 139
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v15, v8}, [Ljava/lang/Class;

    move-result-object v8

    const-string v15, "anyTaskForId"

    invoke-virtual {v5, v15, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, v1, Ldev/duo/taskcore/WorkspaceWm;->anyTaskForId:Ljava/lang/reflect/Method;

    .line 140
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    const-string v15, "getDisplayContent"

    invoke-virtual {v5, v15, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, v1, Ldev/duo/taskcore/WorkspaceWm;->getDisplayContent:Ljava/lang/reflect/Method;

    .line 141
    const-string v8, "mCurrentUser"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->currentUser:Ljava/lang/reflect/Field;

    .line 142
    const-string v5, "mUserId"

    invoke-virtual {v6, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->taskUser:Ljava/lang/reflect/Field;

    .line 143
    const-string v5, "mIsTrimmableFromRecents"

    invoke-virtual {v6, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->trimmable:Ljava/lang/reflect/Field;

    .line 144
    const-string v5, "getDisplayId"

    const/4 v15, 0x0

    new-array v6, v15, [Ljava/lang/Class;

    invoke-virtual {v9, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->getDisplayId:Ljava/lang/reflect/Method;

    .line 145
    const-string v5, "mForceHiddenFlags"

    invoke-virtual {v9, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->forceHidden:Ljava/lang/reflect/Field;

    .line 146
    const-string v5, "getRequestedOverrideWindowingMode"

    new-array v6, v15, [Ljava/lang/Class;

    invoke-virtual {v11, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->getRequestedMode:Ljava/lang/reflect/Method;

    .line 147
    const-string v5, "getRequestedOverrideBounds"

    new-array v6, v15, [Ljava/lang/Class;

    invoke-virtual {v11, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->getRequestedBounds:Ljava/lang/reflect/Method;

    .line 148
    const-string v5, "mIsFocusable"

    invoke-virtual {v10, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->focusableRaw:Ljava/lang/reflect/Field;

    .line 149
    const-string v5, "mRemoteToken"

    invoke-virtual {v10, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->remoteToken:Ljava/lang/reflect/Field;

    .line 150
    const/4 v15, 0x0

    new-array v5, v15, [Ljava/lang/Class;

    const-string v6, "getParent"

    invoke-virtual {v10, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->getParent:Ljava/lang/reflect/Method;

    .line 151
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->getParent:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    if-eq v5, v10, :cond_0

    invoke-static {v10, v6, v10}, Ldev/duo/taskcore/WorkspaceWm;->findReturning(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->getParent:Ljava/lang/reflect/Method;

    .line 152
    :cond_0
    const-string v5, "getSurfaceControl"

    const/4 v15, 0x0

    new-array v6, v15, [Ljava/lang/Class;

    invoke-virtual {v10, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->getSurfaceControl:Ljava/lang/reflect/Method;

    .line 153
    const-class v5, Landroid/view/SurfaceControl$Transaction;

    const-class v6, Landroid/view/SurfaceControl;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    const-string v6, "reparentSurfaceControl"

    invoke-virtual {v10, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->reparentSurface:Ljava/lang/reflect/Method;

    .line 155
    const-class v5, Landroid/view/SurfaceControl$Transaction;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    const-string v6, "updateSurfacePosition"

    invoke-virtual {v10, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->updateSurfacePosition:Ljava/lang/reflect/Method;

    .line 156
    const-string v5, "toWindowContainerToken"

    const/4 v15, 0x0

    new-array v6, v15, [Ljava/lang/Class;

    invoke-virtual {v12, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->toToken:Ljava/lang/reflect/Method;

    .line 157
    const-string v5, "mInterceptBackPressedOnRootTasks"

    invoke-virtual {v13, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->interceptBackSet:Ljava/lang/reflect/Field;

    .line 158
    const-string v5, "mTaskOrganizerController"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->tocField:Ljava/lang/reflect/Field;

    .line 159
    const-string v5, "mWindowOrganizerController"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->wocField:Ljava/lang/reflect/Field;

    .line 160
    const-string v5, "applyTransaction"

    filled-new-array/range {v18 .. v18}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceWm;->applyTransaction:Ljava/lang/reflect/Method;

    .line 161
    const-string v5, "mProcessMap"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v1, Ldev/duo/taskcore/WorkspaceWm;->processMap:Ljava/lang/reflect/Field;

    .line 162
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getProcess"

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v1, Ldev/duo/taskcore/WorkspaceWm;->getProcess:Ljava/lang/reflect/Method;

    .line 163
    const-string v3, "mName"

    invoke-virtual {v7, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v1, Ldev/duo/taskcore/WorkspaceWm;->wpcName:Ljava/lang/reflect/Field;

    .line 164
    const-string v3, "mUid"

    invoke-virtual {v7, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v1, Ldev/duo/taskcore/WorkspaceWm;->wpcUid:Ljava/lang/reflect/Field;

    .line 165
    const-string v3, "getPid"

    const/4 v15, 0x0

    new-array v4, v15, [Ljava/lang/Class;

    invoke-virtual {v7, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v1, Ldev/duo/taskcore/WorkspaceWm;->wpcPid:Ljava/lang/reflect/Method;

    .line 166
    const-string v3, "isRemoved"

    new-array v4, v15, [Ljava/lang/Class;

    invoke-virtual {v7, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v1, Ldev/duo/taskcore/WorkspaceWm;->wpcRemoved:Ljava/lang/reflect/Method;

    .line 167
    const-string v3, "hasThread"

    new-array v4, v15, [Ljava/lang/Class;

    invoke-virtual {v7, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v1, Ldev/duo/taskcore/WorkspaceWm;->wpcHasThread:Ljava/lang/reflect/Method;

    .line 168
    const-string v3, "inTransition"

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v1, Ldev/duo/taskcore/WorkspaceWm;->inTransition:Ljava/lang/reflect/Method;

    .line 169
    new-array v3, v15, [Ljava/lang/Class;

    move-object/from16 v4, v18

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    iput-object v3, v1, Ldev/duo/taskcore/WorkspaceWm;->wctNew:Ljava/lang/reflect/Constructor;

    .line 170
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v5, "setWindowingMode"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v1, Ldev/duo/taskcore/WorkspaceWm;->wctMode:Ljava/lang/reflect/Method;

    .line 171
    const-class v3, Landroid/graphics/Rect;

    filled-new-array {v0, v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v5, "setBounds"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v1, Ldev/duo/taskcore/WorkspaceWm;->wctBounds:Ljava/lang/reflect/Method;

    .line 172
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v5, "setFocusable"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v1, Ldev/duo/taskcore/WorkspaceWm;->wctFocusable:Ljava/lang/reflect/Method;

    .line 173
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v5, "setHidden"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v1, Ldev/duo/taskcore/WorkspaceWm;->wctHidden:Ljava/lang/reflect/Method;

    .line 174
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v5, "setInterceptBackPressedOnTaskRoot"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v1, Ldev/duo/taskcore/WorkspaceWm;->wctBack:Ljava/lang/reflect/Method;

    .line 175
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v3}, [Ljava/lang/Class;

    move-result-object v0

    const-string v3, "setTaskTrimmableFromRecents"

    invoke-virtual {v4, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Ldev/duo/taskcore/WorkspaceWm;->wctTrim:Ljava/lang/reflect/Method;

    .line 176
    const-string v0, "mGlobalLock"

    move-object/from16 v3, v17

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v4, "mRoot"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 177
    const-string v5, "mAtmService"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const-string v6, "mH"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 178
    const-string v7, "mContext"

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 179
    const/16 v8, 0x21

    new-array v9, v8, [Ljava/lang/reflect/AccessibleObject;

    iget-object v10, v1, Ldev/duo/taskcore/WorkspaceWm;->anyTaskForId:Ljava/lang/reflect/Method;

    const/16 v16, 0x0

    aput-object v10, v9, v16

    iget-object v10, v1, Ldev/duo/taskcore/WorkspaceWm;->getDisplayContent:Ljava/lang/reflect/Method;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget-object v10, v1, Ldev/duo/taskcore/WorkspaceWm;->currentUser:Ljava/lang/reflect/Field;

    const/4 v12, 0x2

    aput-object v10, v9, v12

    const/4 v10, 0x3

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->taskUser:Ljava/lang/reflect/Field;

    aput-object v13, v9, v10

    const/4 v10, 0x4

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->trimmable:Ljava/lang/reflect/Field;

    aput-object v13, v9, v10

    const/4 v10, 0x5

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->getDisplayId:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/4 v10, 0x6

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->forceHidden:Ljava/lang/reflect/Field;

    aput-object v13, v9, v10

    const/4 v10, 0x7

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->getRequestedMode:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0x8

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->getRequestedBounds:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0x9

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->focusableRaw:Ljava/lang/reflect/Field;

    aput-object v13, v9, v10

    const/16 v10, 0xa

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->remoteToken:Ljava/lang/reflect/Field;

    aput-object v13, v9, v10

    const/16 v10, 0xb

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->getParent:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0xc

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->getSurfaceControl:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0xd

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->reparentSurface:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0xe

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->updateSurfacePosition:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0xf

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->toToken:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0x10

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->interceptBackSet:Ljava/lang/reflect/Field;

    aput-object v13, v9, v10

    const/16 v10, 0x11

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->tocField:Ljava/lang/reflect/Field;

    aput-object v13, v9, v10

    const/16 v10, 0x12

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->wocField:Ljava/lang/reflect/Field;

    aput-object v13, v9, v10

    const/16 v10, 0x13

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->applyTransaction:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0x14

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->processMap:Ljava/lang/reflect/Field;

    aput-object v13, v9, v10

    const/16 v10, 0x15

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->getProcess:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0x16

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->wpcName:Ljava/lang/reflect/Field;

    aput-object v13, v9, v10

    const/16 v10, 0x17

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->wpcUid:Ljava/lang/reflect/Field;

    aput-object v13, v9, v10

    const/16 v10, 0x18

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->wpcPid:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0x19

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->wpcRemoved:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0x1a

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->wpcHasThread:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0x1b

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceWm;->inTransition:Ljava/lang/reflect/Method;

    aput-object v13, v9, v10

    const/16 v10, 0x1c

    aput-object v0, v9, v10

    const/16 v10, 0x1d

    aput-object v4, v9, v10

    const/16 v10, 0x1e

    aput-object v5, v9, v10

    const/16 v10, 0x1f

    aput-object v6, v9, v10

    const/16 v10, 0x20

    aput-object v7, v9, v10

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v8, :cond_1

    aget-object v10, v9, v15

    .line 184
    invoke-virtual {v10, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 179
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 187
    :cond_1
    const-string v8, "validateStatesOnIdle"

    const/4 v15, 0x0

    new-array v9, v15, [Ljava/lang/Class;

    invoke-virtual {v2, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 188
    const-string v9, "android.window.ITransitionPlayer"

    move-object/from16 v10, p2

    invoke-static {v9, v15, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    const-string v11, "unregisterTransitionPlayer"

    invoke-virtual {v2, v11, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    filled-new-array {v8, v2}, [Ljava/lang/reflect/Method;

    move-result-object v2

    .line 187
    nop

    :goto_1
    if-ge v15, v12, :cond_2

    aget-object v8, v2, v15

    .line 189
    move-object/from16 v9, p1

    invoke-interface {v9, v8}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v8

    new-instance v11, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda16;

    invoke-direct {v11, v1}, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda16;-><init>(Ldev/duo/taskcore/WorkspaceWm;)V

    invoke-interface {v8, v11}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 187
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 200
    :cond_2
    move-object/from16 v9, p1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v8, Landroid/os/Parcel;

    const-class v11, Landroid/os/Parcel;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v8, v11, v12}, [Ljava/lang/Class;

    move-result-object v2

    const-string v8, "onTransact"

    invoke-virtual {v3, v8, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v9, v2}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v8

    move-object v2, v0

    new-instance v0, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda17;

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda17;-><init>(Ldev/duo/taskcore/WorkspaceWm;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    invoke-interface {v8, v0}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 227
    invoke-direct/range {p0 .. p2}, Ldev/duo/taskcore/WorkspaceWm;->installSourceHooks(Lio/github/libxposed/api/XposedInterface;Ljava/lang/ClassLoader;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server bridge installed code=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xf40201

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " build="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ldev/duo/taskcore/WorkspaceProtocol;->buildId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskCoreWm"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method synthetic lambda$install$0$dev-duo-taskcore-WorkspaceWm(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 190
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 191
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm;->transitionController:Ljava/lang/Object;

    .line 192
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceWm;->pendingRestore:Ldev/duo/taskcore/WorkspaceWm$Session;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceWm;->globalLock:Ljava/lang/Object;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceWm;->globalLock:Ljava/lang/Object;

    monitor-enter p1

    .line 193
    :try_start_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->pendingRestore:Ldev/duo/taskcore/WorkspaceWm$Session;

    .line 194
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Ldev/duo/taskcore/WorkspaceWm;->pendingRestore:Ldev/duo/taskcore/WorkspaceWm$Session;

    invoke-direct {p0, v1}, Ldev/duo/taskcore/WorkspaceWm;->restoreOrDefer(Ldev/duo/taskcore/WorkspaceWm$Session;)V

    .line 195
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 196
    :cond_1
    :goto_0
    return-object v0
.end method

.method synthetic lambda$install$1$dev-duo-taskcore-WorkspaceWm(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 201
    const/4 v0, 0x0

    invoke-interface {p6, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xf40201

    if-eq v0, v1, :cond_0

    invoke-interface {p6}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 202
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p6, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    .line 203
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 205
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 207
    :try_start_0
    const-string v4, "android.view.IWindowManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    nop

    .line 212
    invoke-virtual {v0}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {}, Ldev/duo/taskcore/WorkspaceProtocol;->magic()I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->wms:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 217
    invoke-interface {p6}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->wms:Ljava/lang/Object;

    .line 218
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->wms:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm;->globalLock:Ljava/lang/Object;

    .line 219
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceWm;->wms:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm;->root:Ljava/lang/Object;

    .line 220
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceWm;->wms:Ljava/lang/Object;

    invoke-virtual {p3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm;->atm:Ljava/lang/Object;

    .line 221
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceWm;->wms:Ljava/lang/Object;

    invoke-virtual {p4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm;->wmHandler:Landroid/os/Handler;

    .line 222
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceWm;->wms:Ljava/lang/Object;

    invoke-virtual {p5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm;->systemContext:Landroid/content/Context;

    .line 224
    :cond_2
    const/4 p1, 0x2

    invoke-interface {p6, p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcel;

    invoke-direct {p0, v0, p1, v2, v3}, Ldev/duo/taskcore/WorkspaceWm;->handle(Landroid/os/Parcel;Landroid/os/Parcel;II)V

    .line 225
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 213
    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 214
    invoke-interface {p6}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 208
    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 210
    invoke-interface {p6}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$installSourceHooks$10$dev-duo-taskcore-WorkspaceWm(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 448
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    .line 451
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm;->successfulStart:Ljava/lang/reflect/Method;

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm;->globalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    .line 453
    if-eqz v1, :cond_0

    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceWm$Session;->fsis:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ldev/duo/taskcore/WorkspaceWm$Session;->fsiLeftByUser:Z

    .line 454
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 455
    :cond_1
    :goto_0
    return-object p1
.end method

.method synthetic lambda$installSourceHooks$11$dev-duo-taskcore-WorkspaceWm(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 458
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    .line 459
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceWm;->postFsiProbe(Landroid/os/IBinder;)V

    .line 460
    :cond_0
    return-object p1
.end method

.method synthetic lambda$installSourceHooks$12$dev-duo-taskcore-WorkspaceWm(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 465
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 466
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceWm;->postFsiProbe(Landroid/os/IBinder;)V

    .line 467
    :cond_0
    return-object v0
.end method

.method synthetic lambda$installSourceHooks$13$dev-duo-taskcore-WorkspaceWm(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 470
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 471
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->transitionToken:Ljava/lang/reflect/Method;

    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceWm;->postFsiProbe(Landroid/os/IBinder;)V

    .line 472
    :cond_0
    return-object v0
.end method

.method synthetic lambda$installSourceHooks$14$dev-duo-taskcore-WorkspaceWm(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 476
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    .line 477
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceWm;->postFsiProbe(Landroid/os/IBinder;)V

    .line 478
    :cond_0
    return-object p1
.end method

.method synthetic lambda$installSourceHooks$2$dev-duo-taskcore-WorkspaceWm(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 271
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 272
    if-eqz v1, :cond_9

    const-string v2, "dev.duo.taskcore.source"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 273
    :cond_0
    const-string v2, "dev.duo.taskcore.source"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 274
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IInterface;

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 275
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 278
    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    if-eqz v7, :cond_8

    .line 279
    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceWm;->globalLock:Ljava/lang/Object;

    monitor-enter v7

    .line 280
    :try_start_0
    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    .line 281
    if-eqz v8, :cond_7

    iget-boolean v9, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->dead:Z

    if-nez v9, :cond_7

    iget v9, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->uid:I

    if-ne v9, v5, :cond_7

    iget v5, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->pid:I

    if-ne v5, v6, :cond_7

    .line 282
    iget-object v5, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->registeredSources:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/duo/taskcore/WorkspaceWm$Source;

    .line 283
    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceWm;->optionsFromBundle:Ljava/lang/reflect/Method;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 284
    if-nez v5, :cond_1

    move-object v5, v8

    goto :goto_0

    :cond_1
    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceWm;->launchCookie:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 285
    :goto_0
    if-eqz v2, :cond_6

    iget-object v6, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->piTarget:Landroid/os/IBinder;

    if-ne v6, v4, :cond_6

    iget-object v4, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->cookie:Landroid/os/IBinder;

    if-ne v4, v5, :cond_6

    .line 287
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 288
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArgs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 289
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 290
    const-string v1, "dev.duo.taskcore.source"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 291
    aput-object v5, v4, v0

    .line 292
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm;->sendingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/duo/taskcore/WorkspaceWm$Source;

    .line 293
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->sendingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 295
    :try_start_1
    invoke-interface {p1, v4}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 296
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->globalLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 297
    :try_start_2
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    iget-object v5, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    if-ne v4, v5, :cond_3

    iget-object v4, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    iget-boolean v4, v4, Ldev/duo/taskcore/WorkspaceWm$Session;->dead:Z

    if-nez v4, :cond_3

    iget-object v4, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->result:Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    if-eqz v4, :cond_3

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceWm;->successfulStart:Ljava/lang/reflect/Method;

    move-object v5, p1

    check-cast v5, Ljava/lang/Integer;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 298
    invoke-virtual {v4, v8, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 299
    iput-boolean v3, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->sendCompleted:Z

    .line 300
    iget v4, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->kind:I

    if-ne v4, v3, :cond_2

    iget-object v4, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    iget-object v4, v4, Ldev/duo/taskcore/WorkspaceWm$Session;->fsis:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 301
    iget-object v4, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    iput-boolean v3, v4, Ldev/duo/taskcore/WorkspaceWm$Session;->fsiLeftByUser:Z

    .line 302
    :cond_2
    iget-object v3, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    iget-object v2, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->result:Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    invoke-direct {p0, v3, v2}, Ldev/duo/taskcore/WorkspaceWm;->postSource(Ldev/duo/taskcore/WorkspaceWm$Session;Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V

    .line 303
    invoke-direct {p0, v8}, Ldev/duo/taskcore/WorkspaceWm;->postFsiProbe(Landroid/os/IBinder;)V

    .line 305
    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    nop

    .line 307
    if-nez v0, :cond_4

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm;->sendingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->sendingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 306
    :goto_1
    return-object p1

    .line 305
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 307
    :catchall_1
    move-exception p1

    if-nez v0, :cond_5

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm;->sendingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->sendingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_2
    throw p1

    .line 286
    :cond_6
    :try_start_5
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "source target/cookie mismatch"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 281
    :cond_7
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "source session/caller mismatch"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 287
    :catchall_2
    move-exception p1

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    .line 278
    :cond_8
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "source session/caller mismatch"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 272
    :cond_9
    :goto_3
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$installSourceHooks$3$dev-duo-taskcore-WorkspaceWm(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm;->sendingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/duo/taskcore/WorkspaceWm$Source;

    .line 313
    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 314
    :cond_0
    iget-object v1, v0, Ldev/duo/taskcore/WorkspaceWm$Source;->record:Ljava/lang/Object;

    .line 315
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Ldev/duo/taskcore/WorkspaceWm$Source;->record:Ljava/lang/Object;

    .line 316
    :try_start_0
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, v0, Ldev/duo/taskcore/WorkspaceWm$Source;->record:Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v1, v0, Ldev/duo/taskcore/WorkspaceWm$Source;->record:Ljava/lang/Object;

    throw p1
.end method

.method synthetic lambda$installSourceHooks$7$dev-duo-taskcore-WorkspaceWm(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 320
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ldev/duo/taskcore/WorkspaceWm;->sendingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/duo/taskcore/WorkspaceWm$Source;

    .line 321
    invoke-interface {v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v3

    .line 323
    iget-object v4, v0, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    .line 324
    nop

    .line 325
    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v4, :cond_3

    iget-object v9, v4, Ldev/duo/taskcore/WorkspaceWm$Session;->fsis:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v0, Ldev/duo/taskcore/WorkspaceWm;->successfulStart:Ljava/lang/reflect/Method;

    invoke-interface {v1, v6}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 326
    iget-object v9, v0, Ldev/duo/taskcore/WorkspaceWm;->sourceActivity:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v0, Ldev/duo/taskcore/WorkspaceWm;->lastActivity:Ljava/lang/reflect/Field;

    invoke-virtual {v10, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 327
    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    if-eq v9, v10, :cond_3

    iget-object v11, v0, Ldev/duo/taskcore/WorkspaceWm;->activityTask:Ljava/lang/reflect/Method;

    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 328
    invoke-interface {v1, v5}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v11

    .line 329
    if-nez v11, :cond_0

    move-object v11, v7

    goto :goto_0

    :cond_0
    iget-object v12, v0, Ldev/duo/taskcore/WorkspaceWm;->transitionToken:Ljava/lang/reflect/Method;

    new-array v13, v8, [Ljava/lang/Object;

    invoke-virtual {v12, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/IBinder;

    .line 330
    :goto_0
    iget-object v12, v4, Ldev/duo/taskcore/WorkspaceWm$Session;->fsis:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    move v12, v8

    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ldev/duo/taskcore/WorkspaceWm$Source;

    iget-object v14, v13, Ldev/duo/taskcore/WorkspaceWm$Source;->activities:Ljava/util/Map;

    invoke-interface {v14, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 331
    iget-object v12, v13, Ldev/duo/taskcore/WorkspaceWm$Source;->activities:Ljava/util/Map;

    iget-object v14, v0, Ldev/duo/taskcore/WorkspaceWm;->activityTask:Ljava/lang/reflect/Method;

    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual {v14, v10, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v12, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-direct {v0, v10}, Ldev/duo/taskcore/WorkspaceWm;->taskRef(Ljava/lang/Object;)Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    move-result-object v12

    iput-object v12, v13, Ldev/duo/taskcore/WorkspaceWm$Source;->fsiTarget:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    .line 333
    if-eqz v11, :cond_1

    iget-object v12, v4, Ldev/duo/taskcore/WorkspaceWm$Session;->transitionSources:Ljava/util/Map;

    new-instance v14, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda11;

    invoke-direct {v14}, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v12, v11, v14}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    iget-object v14, v13, Ldev/duo/taskcore/WorkspaceWm$Source;->request:Landroid/os/IBinder;

    move-object v15, v12

    new-instance v12, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    move-object/from16 v24, v9

    iget-wide v8, v4, Ldev/duo/taskcore/WorkspaceWm$Session;->epoch:J

    iget-object v5, v13, Ldev/duo/taskcore/WorkspaceWm$Source;->request:Landroid/os/IBinder;

    .line 335
    invoke-interface {v1, v6}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v13, v13, Ldev/duo/taskcore/WorkspaceWm$Source;->fsiTarget:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x1

    const/16 v17, 0x2

    move-object/from16 v19, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v11

    move-object/from16 v20, v13

    move-wide/from16 v25, v8

    move-object v8, v14

    move-wide/from16 v13, v25

    invoke-direct/range {v12 .. v22}, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;-><init>(JILandroid/os/IBinder;IILandroid/os/IBinder;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;Z)V

    .line 334
    invoke-interface {v5, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 333
    :cond_1
    move-object/from16 v24, v9

    move-object/from16 v19, v11

    .line 337
    :goto_2
    const/4 v12, 0x1

    goto :goto_3

    .line 330
    :cond_2
    move-object/from16 v24, v9

    move-object/from16 v19, v11

    :goto_3
    move-object/from16 v11, v19

    move-object/from16 v9, v24

    const/4 v5, 0x5

    const/4 v8, 0x0

    goto :goto_1

    .line 341
    :cond_3
    const/4 v12, 0x0

    :cond_4
    if-eqz v2, :cond_17

    iget-object v5, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->record:Ljava/lang/Object;

    if-eqz v5, :cond_17

    iget-object v5, v0, Ldev/duo/taskcore/WorkspaceWm;->originatingIntent:Ljava/lang/reflect/Field;

    iget-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->starterRequest:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v8, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->record:Ljava/lang/Object;

    if-ne v5, v8, :cond_17

    iget-object v5, v0, Ldev/duo/taskcore/WorkspaceWm;->successfulStart:Ljava/lang/reflect/Method;

    .line 342
    invoke-interface {v1, v6}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_b

    .line 357
    :cond_5
    iget-object v4, v0, Ldev/duo/taskcore/WorkspaceWm;->lastActivity:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 358
    if-nez v4, :cond_6

    move-object v5, v7

    goto :goto_4

    :cond_6
    iget-object v5, v0, Ldev/duo/taskcore/WorkspaceWm;->activityTask:Ljava/lang/reflect/Method;

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 359
    :goto_4
    if-nez v5, :cond_7

    invoke-interface {v1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 360
    :cond_7
    iget-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->taskUser:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iget-object v9, v0, Ldev/duo/taskcore/WorkspaceWm;->currentUser:Ljava/lang/reflect/Field;

    iget-object v10, v0, Ldev/duo/taskcore/WorkspaceWm;->root:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    if-ne v8, v9, :cond_16

    iget-object v8, v0, Ldev/duo/taskcore/WorkspaceWm;->getDisplayId:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_8

    goto/16 :goto_a

    .line 362
    :cond_8
    iget-object v8, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    .line 363
    iget-object v9, v0, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    if-ne v9, v8, :cond_15

    iget-boolean v9, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->dead:Z

    if-eqz v9, :cond_9

    goto/16 :goto_9

    .line 364
    :cond_9
    const/4 v9, 0x5

    invoke-interface {v1, v9}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v9

    .line 365
    if-nez v9, :cond_a

    move-object/from16 v18, v7

    goto :goto_5

    :cond_a
    iget-object v10, v0, Ldev/duo/taskcore/WorkspaceWm;->transitionToken:Ljava/lang/reflect/Method;

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    invoke-virtual {v10, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/IBinder;

    move-object/from16 v18, v10

    .line 366
    :goto_5
    iput-object v4, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->activity:Ljava/lang/Object;

    iput-object v5, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->task:Ljava/lang/Object;

    .line 367
    iget-object v10, v0, Ldev/duo/taskcore/WorkspaceWm;->activityTransitions:Ljava/lang/reflect/Field;

    invoke-virtual {v10, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v0, Ldev/duo/taskcore/WorkspaceWm;->transitionController:Ljava/lang/Object;

    .line 368
    new-instance v11, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    iget-wide v12, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->epoch:J

    iget-object v15, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->request:Landroid/os/IBinder;

    iget v10, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->kind:I

    .line 369
    invoke-interface {v1, v6}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-direct {v0, v4}, Ldev/duo/taskcore/WorkspaceWm;->taskRef(Ljava/lang/Object;)Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v14, 0x1

    move/from16 v16, v10

    invoke-direct/range {v11 .. v21}, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;-><init>(JILandroid/os/IBinder;IILandroid/os/IBinder;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;Z)V

    move-object/from16 v10, v18

    iput-object v11, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->result:Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    .line 370
    if-eqz v10, :cond_b

    iget-object v11, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->transitionSources:Ljava/util/Map;

    new-instance v12, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda13;

    invoke-direct {v12}, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    iget-object v12, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->request:Landroid/os/IBinder;

    iget-object v13, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->result:Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_b
    iget v11, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->kind:I

    if-ne v11, v6, :cond_d

    iget-object v11, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->fsis:Ljava/util/Map;

    iget-object v12, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->request:Landroid/os/IBinder;

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 372
    iget-object v11, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->fsis:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 373
    iget-object v11, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->fsiMembers:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    iget-object v11, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->fsiMembers:Ljava/util/Map;

    iget-object v12, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->members:Ljava/util/Map;

    invoke-interface {v11, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 374
    iput-object v7, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->fsiForeground:Landroid/os/IBinder;

    const/4 v11, 0x0

    iput-boolean v11, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->fsiLeftByUser:Z

    .line 376
    :cond_c
    iget-object v11, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->activities:Ljava/util/Map;

    invoke-interface {v11, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v4, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->result:Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    iget-object v4, v4, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->target:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    iput-object v4, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->fsiTarget:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    .line 378
    iget-object v4, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->fsis:Ljava/util/Map;

    iget-object v5, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->request:Landroid/os/IBinder;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_d
    invoke-interface {v1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v4

    .line 381
    if-eqz v9, :cond_f

    iget-object v5, v0, Ldev/duo/taskcore/WorkspaceWm;->transitionAborted:Ljava/lang/reflect/Method;

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 382
    iget-object v5, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->transitionSources:Ljava/util/Map;

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 383
    if-eqz v5, :cond_e

    .line 384
    iget-object v9, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->request:Landroid/os/IBinder;

    invoke-interface {v5, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->transitionSources:Ljava/util/Map;

    invoke-interface {v5, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_e
    move-object/from16 v18, v7

    goto :goto_6

    .line 390
    :cond_f
    move-object/from16 v18, v10

    :goto_6
    iget-object v5, v0, Ldev/duo/taskcore/WorkspaceWm;->lastActivity:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 391
    if-eqz v3, :cond_14

    iget-object v5, v0, Ldev/duo/taskcore/WorkspaceWm;->activityTask:Ljava/lang/reflect/Method;

    const/4 v11, 0x0

    new-array v9, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 392
    iget-object v5, v0, Ldev/duo/taskcore/WorkspaceWm;->activityTask:Ljava/lang/reflect/Method;

    new-array v9, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 393
    iget-object v9, v0, Ldev/duo/taskcore/WorkspaceWm;->taskUser:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    iget-object v10, v0, Ldev/duo/taskcore/WorkspaceWm;->currentUser:Ljava/lang/reflect/Field;

    iget-object v12, v0, Ldev/duo/taskcore/WorkspaceWm;->root:Ljava/lang/Object;

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    if-ne v9, v10, :cond_12

    iget-object v9, v0, Ldev/duo/taskcore/WorkspaceWm;->getDisplayId:Ljava/lang/reflect/Method;

    new-array v10, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_10

    move-object/from16 v10, v18

    goto :goto_7

    .line 402
    :cond_10
    iput-object v3, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->activity:Ljava/lang/Object;

    iput-object v5, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->task:Ljava/lang/Object;

    .line 403
    new-instance v11, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    iget-wide v12, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->epoch:J

    iget-object v15, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->request:Landroid/os/IBinder;

    iget v9, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->kind:I

    .line 404
    invoke-interface {v1, v6}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-direct {v0, v3}, Ldev/duo/taskcore/WorkspaceWm;->taskRef(Ljava/lang/Object;)Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v14, 0x1

    move/from16 v16, v9

    invoke-direct/range {v11 .. v21}, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;-><init>(JILandroid/os/IBinder;IILandroid/os/IBinder;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;Z)V

    move-object/from16 v10, v18

    iput-object v11, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->result:Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    .line 405
    if-eqz v10, :cond_11

    iget-object v1, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->transitionSources:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v8, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->request:Landroid/os/IBinder;

    iget-object v9, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->result:Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_11
    iget v1, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->kind:I

    if-ne v1, v6, :cond_14

    .line 407
    iget-object v1, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->activities:Ljava/util/Map;

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v1, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->result:Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->target:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    iput-object v1, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->fsiTarget:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    goto :goto_8

    .line 393
    :cond_12
    move-object/from16 v10, v18

    .line 394
    :goto_7
    iget-object v0, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->transitionSources:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 395
    if-eqz v0, :cond_13

    .line 396
    iget-object v1, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->request:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->transitionSources:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_13
    iget-object v0, v8, Ldev/duo/taskcore/WorkspaceWm$Session;->fsis:Ljava/util/Map;

    iget-object v1, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->request:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v7, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->result:Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    .line 400
    return-object v4

    .line 411
    :cond_14
    :goto_8
    invoke-direct {v0, v7}, Ldev/duo/taskcore/WorkspaceWm;->postFsiProbe(Landroid/os/IBinder;)V

    .line 412
    return-object v4

    .line 363
    :cond_15
    :goto_9
    invoke-interface {v1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 361
    :cond_16
    :goto_a
    invoke-interface {v1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 345
    :cond_17
    :goto_b
    nop

    .line 346
    if-nez v2, :cond_18

    if-nez v12, :cond_18

    if-eqz v4, :cond_18

    iget-boolean v2, v4, Ldev/duo/taskcore/WorkspaceWm$Session;->dead:Z

    if-nez v2, :cond_18

    iget-boolean v2, v4, Ldev/duo/taskcore/WorkspaceWm$Session;->returning:Z

    if-nez v2, :cond_18

    iget-object v2, v0, Ldev/duo/taskcore/WorkspaceWm;->successfulStart:Ljava/lang/reflect/Method;

    .line 347
    invoke-interface {v1, v6}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 348
    const/4 v9, 0x5

    invoke-interface {v1, v9}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v6}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v0, v4, v3, v2, v5}, Ldev/duo/taskcore/WorkspaceWm;->crossAppLocked(Ldev/duo/taskcore/WorkspaceWm$Session;Ljava/lang/Object;Ljava/lang/Object;I)Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    move-result-object v2

    goto :goto_c

    .line 349
    :cond_18
    move-object v2, v7

    :goto_c
    if-eqz v2, :cond_19

    iget-object v3, v2, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->transition:Landroid/os/IBinder;

    if-eqz v3, :cond_19

    .line 350
    iget-object v3, v4, Ldev/duo/taskcore/WorkspaceWm$Session;->transitionSources:Ljava/util/Map;

    iget-object v5, v2, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->transition:Landroid/os/IBinder;

    new-instance v6, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda12;

    invoke-direct {v6}, Ldev/duo/taskcore/WorkspaceWm$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    iget-object v5, v2, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->request:Landroid/os/IBinder;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_19
    invoke-interface {v1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v1

    .line 352
    if-eqz v2, :cond_1a

    iget-object v3, v2, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->transition:Landroid/os/IBinder;

    if-nez v3, :cond_1a

    invoke-direct {v0, v4, v2}, Ldev/duo/taskcore/WorkspaceWm;->postSource(Ldev/duo/taskcore/WorkspaceWm$Session;Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V

    .line 353
    :cond_1a
    if-eqz v12, :cond_1b

    invoke-direct {v0, v7}, Ldev/duo/taskcore/WorkspaceWm;->postFsiProbe(Landroid/os/IBinder;)V

    .line 354
    :cond_1b
    return-object v1
.end method

.method synthetic lambda$installSourceHooks$8$dev-duo-taskcore-WorkspaceWm(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 417
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 418
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    .line 419
    if-eqz v1, :cond_3

    .line 420
    nop

    .line 421
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceWm;->globalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 422
    :try_start_0
    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceWm$Session;->fsis:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldev/duo/taskcore/WorkspaceWm$Source;

    iget-object v5, v4, Ldev/duo/taskcore/WorkspaceWm$Source;->activities:Ljava/util/Map;

    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 423
    nop

    .line 424
    const-string v3, "removeImmediately"

    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getExecutable()Ljava/lang/reflect/Executable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Executable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v4, Ldev/duo/taskcore/WorkspaceWm$Source;->removedActivities:Ljava/util/Set;

    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 426
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    if-eqz v3, :cond_3

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceWm;->postFsiProbe(Landroid/os/IBinder;)V

    goto :goto_1

    .line 426
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 429
    :cond_3
    :goto_1
    return-object v0
.end method

.method synthetic lambda$installSourceHooks$9$dev-duo-taskcore-WorkspaceWm(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 436
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 437
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 438
    iget v2, p0, Ldev/duo/taskcore/WorkspaceWm;->lastCallState:I

    if-eq p1, v2, :cond_0

    .line 439
    iput p1, p0, Ldev/duo/taskcore/WorkspaceWm;->lastCallState:I

    .line 440
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    .line 441
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Ldev/duo/taskcore/WorkspaceWm$Session;->dead:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceWm;->wmHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    invoke-static {v2, p1, v1}, Ldev/duo/taskcore/WorkspaceWm;->callEvent(Ldev/duo/taskcore/WorkspaceWm$Session;IZ)Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Ldev/duo/taskcore/WorkspaceWm;->postSource(Ldev/duo/taskcore/WorkspaceWm$Session;Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V

    .line 443
    :cond_0
    return-object v0
.end method

.method synthetic lambda$postFsiProbe$16$dev-duo-taskcore-WorkspaceWm(Landroid/os/IBinder;)V
    .locals 15

    .line 528
    move-object/from16 v4, p1

    :try_start_0
    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceWm;->globalLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :try_start_1
    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceWm;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    .line 530
    if-eqz v7, :cond_10

    iget-boolean v0, v7, Ldev/duo/taskcore/WorkspaceWm$Session;->dead:Z

    if-eqz v0, :cond_0

    goto/16 :goto_8

    .line 531
    :cond_0
    if-eqz v4, :cond_1

    iget-object v0, v7, Ldev/duo/taskcore/WorkspaceWm$Session;->transitionSources:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_1
    iget-object v0, v7, Ldev/duo/taskcore/WorkspaceWm$Session;->fsis:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v6

    return-void

    .line 533
    :cond_2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm;->focusedRoot:Ljava/lang/reflect/Method;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->root:Ljava/lang/Object;

    const/4 v8, 0x0

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 534
    const/4 v9, 0x0

    if-nez v0, :cond_3

    move-object v10, v9

    goto :goto_0

    :cond_3
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm;->topResumed:Ljava/lang/reflect/Method;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    .line 535
    :goto_0
    if-nez v10, :cond_4

    move-object v3, v9

    goto :goto_1

    :cond_4
    invoke-direct {p0, v10}, Ldev/duo/taskcore/WorkspaceWm;->taskRef(Ljava/lang/Object;)Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    move-result-object v0

    move-object v3, v0

    .line 536
    :goto_1
    if-nez v3, :cond_5

    monitor-exit v6

    return-void

    .line 537
    :cond_5
    nop

    .line 538
    iget-object v0, v7, Ldev/duo/taskcore/WorkspaceWm$Session;->fsis:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v9

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/taskcore/WorkspaceWm$Source;

    goto :goto_2

    .line 539
    :cond_6
    iget-boolean v0, v1, Ldev/duo/taskcore/WorkspaceWm$Source;->sendCompleted:Z

    if-eqz v0, :cond_7

    iget-object v0, v7, Ldev/duo/taskcore/WorkspaceWm$Session;->fsiForeground:Landroid/os/IBinder;

    iget-object v2, v3, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->activityToken:Landroid/os/IBinder;

    if-eq v0, v2, :cond_7

    .line 540
    iget-object v0, v3, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->activityToken:Landroid/os/IBinder;

    iput-object v0, v7, Ldev/duo/taskcore/WorkspaceWm$Session;->fsiForeground:Landroid/os/IBinder;

    .line 541
    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceWm;->fsiEvent(Ldev/duo/taskcore/WorkspaceWm$Source;ILdev/duo/taskcore/WorkspaceProtocol$TaskRef;Landroid/os/IBinder;Z)Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    move-result-object v1

    invoke-direct {p0, v7, v1}, Ldev/duo/taskcore/WorkspaceWm;->postSource(Ldev/duo/taskcore/WorkspaceWm$Session;Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V

    .line 543
    :cond_7
    nop

    .line 544
    iget-object v1, v7, Ldev/duo/taskcore/WorkspaceWm$Session;->fsis:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_d

    .line 545
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/duo/taskcore/WorkspaceWm$Source;

    .line 546
    iget-object v5, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->activities:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 547
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 548
    iget-object v12, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->removedActivities:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    iget-object v12, p0, Ldev/duo/taskcore/WorkspaceWm;->activityFinishing:Ljava/lang/reflect/Field;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, p0, Ldev/duo/taskcore/WorkspaceWm;->visibleRequested:Ljava/lang/reflect/Method;

    .line 549
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    new-array v14, v8, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_5

    :cond_8
    move v12, v8

    goto :goto_6

    :cond_9
    :goto_5
    move v12, v4

    .line 550
    :goto_6
    if-eqz v12, :cond_a

    iget-object v12, p0, Ldev/duo/taskcore/WorkspaceWm;->inTransition:Ljava/lang/reflect/Method;

    iget-object v13, p0, Ldev/duo/taskcore/WorkspaceWm;->transitionController:Ljava/lang/Object;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_a

    iget-object v12, p0, Ldev/duo/taskcore/WorkspaceWm;->inTransition:Ljava/lang/reflect/Method;

    iget-object v13, p0, Ldev/duo/taskcore/WorkspaceWm;->transitionController:Ljava/lang/Object;

    .line 551
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_a

    .line 552
    iget-object v12, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->removedActivities:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v12, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 554
    :cond_a
    goto :goto_4

    .line 555
    :cond_b
    iget-boolean v4, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->sendCompleted:Z

    if-eqz v4, :cond_c

    iget-object v4, v2, Ldev/duo/taskcore/WorkspaceWm$Source;->activities:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceWm;->inTransition:Ljava/lang/reflect/Method;

    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceWm;->transitionController:Ljava/lang/Object;

    iget-object v11, p0, Ldev/duo/taskcore/WorkspaceWm;->activityTask:Ljava/lang/reflect/Method;

    new-array v12, v8, [Ljava/lang/Object;

    .line 556
    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_c

    .line 557
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    move-object v9, v2

    .line 559
    :cond_c
    goto/16 :goto_3

    .line 560
    :cond_d
    if-eqz v9, :cond_f

    iget-object v1, v7, Ldev/duo/taskcore/WorkspaceWm$Session;->fsis:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 561
    iget-boolean v1, v7, Ldev/duo/taskcore/WorkspaceWm$Session;->fsiLeftByUser:Z

    if-nez v1, :cond_e

    iget-object v1, v7, Ldev/duo/taskcore/WorkspaceWm$Session;->fsiMembers:Ljava/util/Map;

    iget v2, v3, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v3, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskToken:Landroid/os/IBinder;

    if-ne v1, v2, :cond_e

    move v5, v4

    goto :goto_7

    :cond_e
    move v5, v8

    .line 562
    :goto_7
    const/4 v2, 0x3

    move-object v0, p0

    move-object/from16 v4, p1

    move-object v1, v9

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceWm;->fsiEvent(Ldev/duo/taskcore/WorkspaceWm$Source;ILdev/duo/taskcore/WorkspaceProtocol$TaskRef;Landroid/os/IBinder;Z)Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    move-result-object v1

    invoke-direct {p0, v7, v1}, Ldev/duo/taskcore/WorkspaceWm;->postSource(Ldev/duo/taskcore/WorkspaceWm$Session;Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V

    .line 563
    iget-object v0, v7, Ldev/duo/taskcore/WorkspaceWm$Session;->fsiMembers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 565
    :cond_f
    monitor-exit v6

    .line 566
    goto :goto_9

    .line 530
    :cond_10
    :goto_8
    monitor-exit v6

    return-void

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 566
    :catch_0
    move-exception v0

    const-string v1, "TaskCoreWm"

    const-string v2, "FSI state read failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    :goto_9
    return-void
.end method
