.class public final Ldev/duo/taskcore/WorkspaceSession;
.super Ljava/lang/Object;
.source "WorkspaceSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/taskcore/WorkspaceSession$State;,
        Ldev/duo/taskcore/WorkspaceSession$Platform;,
        Ldev/duo/taskcore/WorkspaceSession$Refused;,
        Ldev/duo/taskcore/WorkspaceSession$Done;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TaskCore"


# instance fields
.field private adoptAnimate:Z

.field private adopting:I

.field private final attachQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/duo/taskcore/TaskBinding;",
            ">;"
        }
    .end annotation
.end field

.field private callFront:I

.field private callFrontToken:Ljava/lang/Object;

.field private callIdle:Z

.field private callInterrupted:Z

.field private callState:I

.field private closeReason:Ljava/lang/String;

.field private closing:Z

.field private detachedForInterruption:Z

.field private displayMismatch:Z

.field public final epoch:J

.field private failure:Ljava/lang/String;

.field private followingSystem:Z

.field private frontTarget:Ldev/duo/taskcore/TaskBinding;

.field private fsiActive:Z

.field private generation:I

.field private interruption:Z

.field private interruptionOk:Z

.field private interruptionReturned:Z

.field private interruptionTask:I

.field private interruptionWasActive:Z

.field private interstitialTask:I

.field private lateOwned:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/duo/taskcore/TaskBinding;",
            ">;"
        }
    .end annotation
.end field

.field private locked:Z

.field private final log:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private main:Ldev/duo/taskcore/TaskBinding;

.field private mainBackedOut:Z

.field private final mainHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/duo/taskcore/TaskBinding$Origin;",
            ">;"
        }
    .end annotation
.end field

.field private mainToFront:Z

.field private op:I

.field private opSerial:I

.field private pendingAdopt:I

.field private pendingPause:Ljava/lang/String;

.field private final platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

.field private restoreWithIncoming:Z

.field private resumeAfterUnlock:Z

.field private resuming:Z

.field private retrying:Z

.field private revision:I

.field private selfHomeTask:I

.field private final slots:[Ldev/duo/taskcore/TaskBinding;

.field private state:Ldev/duo/taskcore/WorkspaceSession$State;

.field private systemTarget:Ldev/duo/taskcore/TaskBinding;

.field private unlockedInTransition:Z

.field private userLeft:Z


# direct methods
.method public constructor <init>(Ldev/duo/taskcore/WorkspaceSession$Platform;J)V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->IDLE:Ldev/duo/taskcore/WorkspaceSession$State;

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->mainHistory:Ljava/util/List;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruptionTask:I

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldev/duo/taskcore/WorkspaceSession;->interruptionOk:Z

    .line 98
    iput v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callFront:I

    .line 105
    iput v0, p0, Ldev/duo/taskcore/WorkspaceSession;->adopting:I

    .line 107
    iput v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interstitialTask:I

    .line 111
    iput v0, p0, Ldev/duo/taskcore/WorkspaceSession;->selfHomeTask:I

    .line 117
    const/4 v1, 0x4

    new-array v1, v1, [Ldev/duo/taskcore/TaskBinding;

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->attachQueue:Ljava/util/List;

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->log:Ljava/util/List;

    .line 411
    iput v0, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingAdopt:I

    .line 125
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    .line 126
    iput-wide p2, p0, Ldev/duo/taskcore/WorkspaceSession;->epoch:J

    .line 127
    return-void
.end method

.method private accept(I)Z
    .locals 2

    .line 1243
    iget v0, p0, Ldev/duo/taskcore/WorkspaceSession;->op:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const-string p1, "stale callback ignored"

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    return v1

    .line 1244
    :cond_0
    iput v1, p0, Ldev/duo/taskcore/WorkspaceSession;->op:I

    .line 1245
    const/4 p1, 0x1

    return p1
.end method

.method private adoptAfterInterstitial(I)Z
    .locals 5

    .line 457
    const-string v0, "adopt after interstitial "

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->prepare(I)Ldev/duo/taskcore/TaskBinding;

    move-result-object v2
    :try_end_0
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    nop

    .line 459
    const/4 v3, -0x1

    iput v3, p0, Ldev/duo/taskcore/WorkspaceSession;->interstitialTask:I

    .line 460
    iput-boolean v1, p0, Ldev/duo/taskcore/WorkspaceSession;->userLeft:Z

    .line 461
    iget-object v3, v2, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    invoke-direct {p0, v3}, Ldev/duo/taskcore/WorkspaceSession;->recordReturn(Ldev/duo/taskcore/TaskBinding$Origin;)V

    .line 462
    iget-object v3, v2, Ldev/duo/taskcore/TaskBinding;->physical:Landroid/graphics/Rect;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {v4}, Ldev/duo/taskcore/WorkspaceSession$Platform;->geometry()Ldev/duo/taskcore/Geometry;

    move-result-object v4

    iget-object v4, v4, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 463
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->attachQueue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    iput p1, p0, Ldev/duo/taskcore/WorkspaceSession;->adopting:I

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 466
    const/4 p1, 0x1

    invoke-direct {p0, v2, p1, v1}, Ldev/duo/taskcore/WorkspaceSession;->insertIncoming(Ldev/duo/taskcore/TaskBinding;ZZ)V

    .line 467
    return p1

    .line 458
    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " refused: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Ldev/duo/taskcore/WorkspaceSession$Refused;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    return v1
.end method

.method private attachNext()V
    .locals 6

    .line 181
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->returnAll()V

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->attachQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 183
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->restoreWithIncoming:Z

    if-eqz v0, :cond_1

    .line 184
    iput-boolean v1, p0, Ldev/duo/taskcore/WorkspaceSession;->restoreWithIncoming:Z

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->resuming:Z

    .line 186
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->begin()I

    move-result v0

    .line 187
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v3}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ldev/duo/taskcore/TaskBinding;

    new-instance v4, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0, v0}, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda12;-><init>(Ldev/duo/taskcore/WorkspaceSession;I)V

    const/4 v0, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Ldev/duo/taskcore/WorkspaceSession$Platform;->bringToFront(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    .line 193
    return-void

    .line 195
    :cond_1
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->begin()I

    move-result v0

    .line 196
    iget-boolean v2, p0, Ldev/duo/taskcore/WorkspaceSession;->adoptAnimate:Z

    .line 197
    iput-boolean v1, p0, Ldev/duo/taskcore/WorkspaceSession;->adoptAnimate:Z

    .line 198
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v4}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ldev/duo/taskcore/TaskBinding;

    new-instance v5, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0, v0, v2}, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda13;-><init>(Ldev/duo/taskcore/WorkspaceSession;IZ)V

    invoke-interface {v1, v3, v4, v2, v5}, Ldev/duo/taskcore/WorkspaceSession$Platform;->place(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;ZLdev/duo/taskcore/WorkspaceSession$Done;)V

    .line 202
    return-void

    .line 204
    :cond_2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->attachQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/duo/taskcore/TaskBinding;

    .line 205
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->begin()I

    move-result v1

    .line 206
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    new-instance v3, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, v1, v0}, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda14;-><init>(Ldev/duo/taskcore/WorkspaceSession;ILdev/duo/taskcore/TaskBinding;)V

    invoke-interface {v2, v0, v3}, Ldev/duo/taskcore/WorkspaceSession$Platform;->createHost(Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    .line 244
    return-void
.end method

.method private begin()I
    .locals 3

    .line 1237
    iget v0, p0, Ldev/duo/taskcore/WorkspaceSession;->op:I

    if-nez v0, :cond_0

    .line 1238
    iget v0, p0, Ldev/duo/taskcore/WorkspaceSession;->opSerial:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldev/duo/taskcore/WorkspaceSession;->opSerial:I

    iput v0, p0, Ldev/duo/taskcore/WorkspaceSession;->op:I

    return v0

    .line 1237
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "platform op "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldev/duo/taskcore/WorkspaceSession;->op:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " still running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beginInterruption(I)V
    .locals 4

    .line 675
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 677
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v3, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->resumeAfterUnlock:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->userLeft:Z

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruptionWasActive:Z

    .line 678
    iput-boolean v2, p0, Ldev/duo/taskcore/WorkspaceSession;->interruptionOk:Z

    .line 680
    :cond_2
    iput-boolean v2, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    .line 681
    iput-boolean v1, p0, Ldev/duo/taskcore/WorkspaceSession;->interruptionReturned:Z

    .line 682
    if-ltz p1, :cond_3

    iput p1, p0, Ldev/duo/taskcore/WorkspaceSession;->interruptionTask:I

    .line 683
    :cond_3
    const-string p1, "system interruption"

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingPause:Ljava/lang/String;

    .line 684
    const/4 p1, -0x1

    iput p1, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingAdopt:I

    .line 685
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne p1, v0, :cond_5

    :cond_4
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->detachForInterruption()V

    .line 686
    :cond_5
    return-void
.end method

.method private detachForInterruption()V
    .locals 5

    .line 745
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->detachedForInterruption:Z

    if-eqz v0, :cond_0

    return-void

    .line 746
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->detachedForInterruption:Z

    .line 747
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingPause:Ljava/lang/String;

    .line 748
    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->systemTarget:Ldev/duo/taskcore/TaskBinding;

    .line 749
    const/4 v1, -0x1

    iput v1, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingAdopt:I

    .line 750
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 751
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->members()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v3}, Ldev/duo/taskcore/TaskBinding;->owned()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 752
    sget-object v4, Ldev/duo/taskcore/TaskBinding$Lease;->RETURN_REQUESTED:Ldev/duo/taskcore/TaskBinding$Lease;

    iput-object v4, v3, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    .line 753
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    :cond_1
    goto :goto_0

    .line 755
    :cond_2
    iget v2, p0, Ldev/duo/taskcore/WorkspaceSession;->interruptionTask:I

    invoke-virtual {p0, v2, v0}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object v0

    .line 756
    sget-object v2, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, v2}, Ldev/duo/taskcore/WorkspaceSession;->set(Ldev/duo/taskcore/WorkspaceSession$State;)V

    .line 757
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->begin()I

    move-result v2

    .line 759
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    new-instance v4, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v2, v1}, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda4;-><init>(Ldev/duo/taskcore/WorkspaceSession;ILjava/util/List;)V

    invoke-interface {v3, v1, v0, v4}, Ldev/duo/taskcore/WorkspaceSession$Platform;->giveBackInPlace(Ljava/util/List;Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    .line 775
    return-void
.end method

.method private dismissTo(Ldev/duo/taskcore/TaskBinding;Ljava/lang/String;)V
    .locals 1

    .line 1066
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-eqz v0, :cond_0

    return-void

    .line 1067
    :cond_0
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->frontTarget:Ldev/duo/taskcore/TaskBinding;

    .line 1068
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Ldev/duo/taskcore/WorkspaceSession;->close(Ljava/lang/String;Z)V

    .line 1069
    return-void
.end method

.method private drop(Ldev/duo/taskcore/TaskBinding;)Z
    .locals 4

    .line 1224
    iget-object v0, p1, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v1, Ldev/duo/taskcore/TaskBinding$Lease;->OBSERVED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v0, v1, :cond_0

    sget-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->RELEASED:Ldev/duo/taskcore/TaskBinding$Lease;

    iput-object v0, p1, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    .line 1225
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1227
    :cond_2
    :try_start_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    iget-wide v2, p0, Ldev/duo/taskcore/WorkspaceSession;->epoch:J

    invoke-interface {v1, v2, v3, p1}, Ldev/duo/taskcore/WorkspaceSession$Platform;->serverRelease(JLdev/duo/taskcore/TaskBinding;)V
    :try_end_0
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    const/4 p1, 0x1

    return p1

    .line 1229
    :catch_0
    move-exception v1

    .line 1230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snapshot not withdrawn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ldev/duo/taskcore/WorkspaceSession$Refused;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 1231
    const-string p1, "snapshot not withdrawn"

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->fail(Ljava/lang/String;)V

    .line 1232
    return v0
.end method

.method private dropIdleCall()V
    .locals 1

    .line 733
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callInterrupted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callIdle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->finishCall(Z)V

    .line 734
    :cond_0
    return-void
.end method

.method private end(Ldev/duo/taskcore/WorkspaceSession$State;Ljava/lang/String;)V
    .locals 1

    .line 1254
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    .line 1255
    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->CLOSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->mainHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1256
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->mainBackedOut:Z

    .line 1257
    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne p1, v0, :cond_1

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->failure:Ljava/lang/String;

    .line 1258
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 1259
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {p1, p0}, Ldev/duo/taskcore/WorkspaceSession$Platform;->changed(Ldev/duo/taskcore/WorkspaceSession;)V

    .line 1260
    return-void
.end method

.method private endInterruption()V
    .locals 4

    .line 786
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->fsiActive:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callInterrupted:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 787
    :cond_0
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruptionOk:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruptionWasActive:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 788
    :goto_0
    iput-boolean v2, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    .line 789
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Ldev/duo/taskcore/WorkspaceSession;->detachedForInterruption:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Ldev/duo/taskcore/WorkspaceSession;->interruptionReturned:Z

    .line 790
    if-nez v0, :cond_3

    iput-boolean v2, p0, Ldev/duo/taskcore/WorkspaceSession;->resumeAfterUnlock:Z

    .line 791
    :cond_3
    const-string v1, "system interruption"

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingPause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingPause:Ljava/lang/String;

    .line 792
    :cond_4
    if-eqz v0, :cond_5

    const-string v0, "interruption finished"

    invoke-virtual {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->resume(Ljava/lang/String;)V

    .line 793
    :cond_5
    return-void

    .line 786
    :cond_6
    :goto_2
    return-void
.end method

.method private endWithServer(Ljava/lang/String;)V
    .locals 3

    .line 1202
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    iget-wide v1, p0, Ldev/duo/taskcore/WorkspaceSession;->epoch:J

    invoke-interface {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$Platform;->serverFinishReturn(J)Ljava/lang/String;

    move-result-object v0

    .line 1203
    if-eqz v0, :cond_0

    sget-object p1, Ldev/duo/taskcore/WorkspaceSession$State;->RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server session not cleared: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ldev/duo/taskcore/WorkspaceSession;->end(Ldev/duo/taskcore/WorkspaceSession$State;Ljava/lang/String;)V

    goto :goto_0

    .line 1204
    :cond_0
    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->CLOSED:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, v0, p1}, Ldev/duo/taskcore/WorkspaceSession;->end(Ldev/duo/taskcore/WorkspaceSession$State;Ljava/lang/String;)V

    .line 1205
    :goto_0
    return-void
.end method

.method private fail(Ljava/lang/String;)V
    .locals 1

    .line 364
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldev/duo/taskcore/WorkspaceSession;->close(Ljava/lang/String;Z)V

    goto :goto_0

    .line 365
    :cond_0
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->returnAll()V

    .line 366
    :goto_0
    return-void
.end method

.method private finishCall(Z)V
    .locals 1

    .line 723
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callInterrupted:Z

    .line 724
    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callIdle:Z

    .line 725
    const/4 v0, -0x1

    iput v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callFront:I

    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callFrontToken:Ljava/lang/Object;

    .line 727
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruptionOk:Z

    and-int/2addr p1, v0

    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->interruptionOk:Z

    .line 728
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->endInterruption()V

    .line 729
    return-void
.end method

.method private finishReturn()V
    .locals 4

    .line 1183
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->members()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/taskcore/TaskBinding;

    .line 1185
    iget-object v2, v1, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v3, Ldev/duo/taskcore/TaskBinding$Lease;->OBSERVED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v3, Ldev/duo/taskcore/TaskBinding$Lease;->TASK_GONE:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v2, v3, :cond_1

    .line 1186
    :cond_0
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {v2, v1}, Ldev/duo/taskcore/WorkspaceSession$Platform;->destroyHost(Ldev/duo/taskcore/TaskBinding;)V

    .line 1187
    iget-object v2, v1, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v3, Ldev/duo/taskcore/TaskBinding$Lease;->OBSERVED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v2, v3, :cond_1

    sget-object v2, Ldev/duo/taskcore/TaskBinding$Lease;->RELEASED:Ldev/duo/taskcore/TaskBinding$Lease;

    iput-object v2, v1, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    .line 1189
    :cond_1
    goto :goto_0

    .line 1191
    :cond_2
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->members()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/taskcore/TaskBinding;

    .line 1192
    invoke-virtual {v1}, Ldev/duo/taskcore/TaskBinding;->owned()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v3, Ldev/duo/taskcore/TaskBinding$Lease;->OWNER_RETURNED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v2, v3, :cond_3

    goto :goto_2

    .line 1196
    :cond_3
    goto :goto_1

    .line 1193
    :cond_4
    :goto_2
    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "still holding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->failure:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, ""

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->failure:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ldev/duo/taskcore/WorkspaceSession;->end(Ldev/duo/taskcore/WorkspaceSession$State;Ljava/lang/String;)V

    .line 1194
    return-void

    .line 1197
    :cond_6
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closeReason:Ljava/lang/String;

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->endWithServer(Ljava/lang/String;)V

    .line 1198
    return-void
.end method

.method private followSystemTarget()V
    .locals 4

    .line 1072
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->systemTarget:Ldev/duo/taskcore/TaskBinding;

    .line 1073
    const/4 v1, 0x0

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->systemTarget:Ldev/duo/taskcore/TaskBinding;

    .line 1074
    if-eqz v0, :cond_4

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-eq v0, v1, :cond_4

    iget-boolean v1, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ldev/duo/taskcore/TaskBinding;->owned()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1075
    :cond_0
    nop

    .line 1076
    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object v3, v3, v2

    if-ne v3, v0, :cond_1

    move v1, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1077
    :cond_2
    if-ltz v1, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Ldev/duo/taskcore/WorkspaceSession;->swap(IZ)Z

    .line 1078
    :cond_3
    return-void

    .line 1074
    :cond_4
    :goto_1
    return-void
.end method

.method private insertIncoming(Ldev/duo/taskcore/TaskBinding;ZZ)V
    .locals 10

    .line 481
    const/4 v0, 0x0

    .line 482
    :goto_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    :cond_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, v2

    .line 484
    :goto_1
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ldev/duo/taskcore/TaskBinding;->owned()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v7, p1

    move v8, p2

    move v9, p3

    goto :goto_2

    .line 485
    :cond_2
    sget-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->RETURN_REQUESTED:Ldev/duo/taskcore/TaskBinding$Lease;

    iput-object v0, v6, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->begin()I

    move-result v5

    .line 488
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    new-instance v3, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda0;

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v3 .. v9}, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda0;-><init>(Ldev/duo/taskcore/WorkspaceSession;ILdev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/TaskBinding;ZZ)V

    invoke-interface {v1, v0, v2, v3}, Ldev/duo/taskcore/WorkspaceSession$Platform;->giveBack(Ljava/util/List;Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    .line 495
    return-void

    .line 484
    :cond_3
    move-object v7, p1

    move v8, p2

    move v9, p3

    :goto_2
    invoke-direct {p0, v7, v8, v9}, Ldev/duo/taskcore/WorkspaceSession;->placeIncoming(Ldev/duo/taskcore/TaskBinding;ZZ)V

    return-void
.end method

.method private isMain(ILjava/lang/Object;)Z
    .locals 1

    .line 719
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object v0, v0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v0, v0, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$taskGone$8(ILjava/lang/Object;Ldev/duo/taskcore/TaskBinding$Origin;)Z
    .locals 1

    .line 352
    iget v0, p2, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    if-ne v0, p0, :cond_1

    if-eqz p1, :cond_0

    iget-object p0, p2, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private lateReturn(Ljava/util/List;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldev/duo/taskcore/TaskBinding;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1141
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->lateOwned:Ljava/util/List;

    if-ne v0, p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    const-string p2, "late"

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 1145
    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->lateOwned:Ljava/util/List;

    .line 1146
    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->failure:Ljava/lang/String;

    .line 1147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "late return confirmed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 1148
    sget-object p2, Ldev/duo/taskcore/WorkspaceSession$State;->RETURNING:Ldev/duo/taskcore/WorkspaceSession$State;

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    .line 1149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldev/duo/taskcore/TaskBinding;

    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceSession;->settle(Ldev/duo/taskcore/TaskBinding;)V

    goto :goto_0

    .line 1150
    :cond_1
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->finishReturn()V

    .line 1151
    return-void

    .line 1142
    :cond_2
    :goto_1
    const-string p1, "stale callback ignored"

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 1143
    return-void
.end method

.method private note(Ljava/lang/String;)V
    .locals 3

    .line 1263
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->log:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ldev/duo/taskcore/WorkspaceSession;->epoch:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaskCore"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    return-void
.end method

.method private placeIncoming(Ldev/duo/taskcore/TaskBinding;ZZ)V
    .locals 6

    .line 498
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->returnAll()V

    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 500
    move v0, v1

    .line 501
    :goto_0
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_1
    nop

    :goto_1
    if-lez v0, :cond_2

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 503
    :cond_2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    aput-object v3, v0, v1

    .line 505
    :cond_3
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    .line 506
    nop

    :goto_2
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    array-length p1, p1

    if-ge v1, p1, :cond_5

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object p1, p1, v1

    if-eqz p1, :cond_4

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object p1, p1, v1

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding;->physical:Landroid/graphics/Rect;

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {v0}, Ldev/duo/taskcore/WorkspaceSession$Platform;->geometry()Ldev/duo/taskcore/Geometry;

    move-result-object v0

    iget-object v0, v0, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 507
    :cond_5
    if-eqz p3, :cond_6

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->mainHistory:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 508
    :cond_6
    if-eqz p2, :cond_7

    .line 509
    iput-boolean v2, p0, Ldev/duo/taskcore/WorkspaceSession;->restoreWithIncoming:Z

    .line 510
    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->detachedForInterruption:Z

    if-eqz p1, :cond_8

    const-string p1, "corner incoming"

    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->resume(Ljava/lang/String;)V

    return-void

    .line 511
    :cond_7
    iput-boolean v2, p0, Ldev/duo/taskcore/WorkspaceSession;->adoptAnimate:Z

    .line 512
    :cond_8
    sget-object p1, Ldev/duo/taskcore/WorkspaceSession$State;->ATTACHING:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->set(Ldev/duo/taskcore/WorkspaceSession$State;)V

    .line 513
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->attachNext()V

    .line 514
    return-void
.end method

.method private prepare(I)Ldev/duo/taskcore/TaskBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation

    .line 174
    new-instance v0, Ldev/duo/taskcore/TaskBinding;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {v1, p1}, Ldev/duo/taskcore/WorkspaceSession$Platform;->inspect(I)Ldev/duo/taskcore/TaskBinding$Origin;

    move-result-object p1

    iget-wide v1, p0, Ldev/duo/taskcore/WorkspaceSession;->epoch:J

    iget v3, p0, Ldev/duo/taskcore/WorkspaceSession;->generation:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ldev/duo/taskcore/WorkspaceSession;->generation:I

    invoke-direct {v0, p1, v1, v2, v3}, Ldev/duo/taskcore/TaskBinding;-><init>(Ldev/duo/taskcore/TaskBinding$Origin;JI)V

    .line 175
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    iget-wide v1, p0, Ldev/duo/taskcore/WorkspaceSession;->epoch:J

    invoke-interface {p1, v1, v2, v0}, Ldev/duo/taskcore/WorkspaceSession$Platform;->serverSnapshot(JLdev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/TaskBinding$Snapshot;

    move-result-object p1

    iput-object p1, v0, Ldev/duo/taskcore/TaskBinding;->snapshot:Ldev/duo/taskcore/TaskBinding$Snapshot;

    .line 176
    return-object v0
.end method

.method private reconcileGone()Z
    .locals 8

    .line 964
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object v0, v0, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v3, Ldev/duo/taskcore/TaskBinding$Lease;->TASK_GONE:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 965
    :goto_0
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->members()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldev/duo/taskcore/TaskBinding;

    .line 966
    iget-object v6, v5, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v7, Ldev/duo/taskcore/TaskBinding$Lease;->TASK_GONE:Ldev/duo/taskcore/TaskBinding$Lease;

    if-eq v6, v7, :cond_1

    goto :goto_1

    .line 967
    :cond_1
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {v4, v5}, Ldev/duo/taskcore/WorkspaceSession$Platform;->destroyHost(Ldev/duo/taskcore/TaskBinding;)V

    .line 968
    invoke-direct {p0, v5}, Ldev/duo/taskcore/WorkspaceSession;->drop(Ldev/duo/taskcore/TaskBinding;)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    .line 969
    :cond_2
    nop

    .line 970
    move v4, v1

    goto :goto_1

    .line 971
    :cond_3
    if-eqz v0, :cond_4

    const/4 v3, 0x0

    iput-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    .line 972
    :cond_4
    if-nez v4, :cond_5

    return v2

    .line 973
    :cond_5
    if-eqz v0, :cond_6

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v3, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v3, :cond_6

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->restoreMain()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Ldev/duo/taskcore/WorkspaceSession;->mainBackedOut:Z

    return v1

    .line 974
    :cond_6
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->begin()I

    move-result v0

    .line 975
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    .line 976
    sget-object v4, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v3, v4, :cond_7

    const-string v3, "paused member gone"

    iput-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingPause:Ljava/lang/String;

    .line 977
    :cond_7
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v5}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ldev/duo/taskcore/TaskBinding;

    new-instance v6, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v0}, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda1;-><init>(Ldev/duo/taskcore/WorkspaceSession;I)V

    invoke-interface {v3, v4, v5, v2, v6}, Ldev/duo/taskcore/WorkspaceSession$Platform;->place(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;ZLdev/duo/taskcore/WorkspaceSession$Done;)V

    .line 980
    return v1
.end method

.method private recordReturn(Ldev/duo/taskcore/TaskBinding$Origin;)V
    .locals 4

    .line 472
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->mainHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 473
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->mainHistory:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/taskcore/TaskBinding$Origin;

    .line 474
    iget v2, v1, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    iget v3, p1, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    iget-object v2, p1, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->mainHistory:Ljava/util/List;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->mainHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    .line 472
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_1
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-eqz p1, :cond_2

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->mainHistory:Ljava/util/List;

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object v0, v0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_2
    return-void
.end method

.method private removeBackgrounded()Z
    .locals 5

    .line 932
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-boolean v0, v0, Ldev/duo/taskcore/TaskBinding;->toBack:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object v0, v0, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v1, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->remove(I)Z

    move-result v0

    return v0

    .line 933
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 934
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object v2, v2, v1

    .line 935
    if-eqz v2, :cond_1

    iget-boolean v3, v2, Ldev/duo/taskcore/TaskBinding;->toBack:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v4, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v3, v4, :cond_1

    .line 936
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing backgrounded member "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p0, v1}, Ldev/duo/taskcore/WorkspaceSession;->remove(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    .line 933
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 940
    :cond_2
    return v0
.end method

.method private restoreMain()Z
    .locals 6

    .line 521
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->locked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v2, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v2, :cond_7

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingPause:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 522
    :cond_0
    :goto_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->mainHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 523
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->mainHistory:Ljava/util/List;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->mainHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/duo/taskcore/TaskBinding$Origin;

    .line 524
    iget v2, v0, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    iget-object v4, v0, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object v2

    .line 525
    if-eqz v2, :cond_3

    .line 526
    nop

    .line 527
    const/4 v0, -0x1

    move v4, v1

    :goto_1
    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object v5, v5, v4

    if-ne v5, v2, :cond_1

    move v0, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 528
    :cond_2
    if-ltz v0, :cond_0

    iget-object v2, v2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v4, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v2, v4, :cond_0

    invoke-direct {p0, v0, v1}, Ldev/duo/taskcore/WorkspaceSession;->swap(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 532
    :cond_3
    :try_start_0
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    iget v4, v0, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-interface {v2, v4}, Ldev/duo/taskcore/WorkspaceSession$Platform;->inspect(I)Ldev/duo/taskcore/TaskBinding$Origin;

    move-result-object v2

    .line 533
    iget-object v4, v2, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    iget-object v5, v0, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-ne v4, v5, :cond_0

    iget v4, v2, Ldev/duo/taskcore/TaskBinding$Origin;->userId:I

    iget v5, v0, Ldev/duo/taskcore/TaskBinding$Origin;->userId:I

    if-ne v4, v5, :cond_0

    iget v2, v2, Ldev/duo/taskcore/TaskBinding$Origin;->displayId:I

    iget v4, v0, Ldev/duo/taskcore/TaskBinding$Origin;->displayId:I
    :try_end_0
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v4, :cond_4

    goto :goto_0

    .line 534
    :cond_4
    nop

    .line 535
    iget v0, v0, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-virtual {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->adopt(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    .line 536
    :cond_5
    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return target unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession$Refused;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 537
    :cond_6
    return v1

    .line 521
    :cond_7
    :goto_2
    return v1
.end method

.method private resume(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 875
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->locked:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->displayMismatch:Z

    if-eqz v0, :cond_0

    goto/16 :goto_9

    .line 876
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->userLeft:Z

    .line 877
    const/4 v1, -0x1

    iput v1, p0, Ldev/duo/taskcore/WorkspaceSession;->interstitialTask:I

    .line 878
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 879
    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruptionReturned:Z

    .line 880
    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->detachedForInterruption:Z

    if-eqz p1, :cond_b

    .line 881
    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->detachedForInterruption:Z

    .line 882
    nop

    :goto_0
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    array-length p1, p1

    if-ge v1, p1, :cond_a

    .line 883
    if-gez v1, :cond_1

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object p1, p1, v1

    .line 884
    :goto_1
    if-nez p1, :cond_2

    goto/16 :goto_8

    .line 885
    :cond_2
    iget-object p2, p1, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->OBSERVED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne p2, v0, :cond_3

    goto/16 :goto_8

    .line 886
    :cond_3
    nop

    .line 888
    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v0, v0, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->prepare(I)Ldev/duo/taskcore/TaskBinding;

    move-result-object v0
    :try_end_0
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_0 .. :try_end_0} :catch_1

    .line 889
    :try_start_1
    iget-object v2, v0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v2, v2, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    iget-object v3, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v3, v3, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-ne v2, v3, :cond_5

    iget-object v2, v0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v2, v2, Ldev/duo/taskcore/TaskBinding$Origin;->userId:I

    iget-object v3, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v3, v3, Ldev/duo/taskcore/TaskBinding$Origin;->userId:I

    if-ne v2, v3, :cond_5

    iget-object v2, v0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v2, v2, Ldev/duo/taskcore/TaskBinding$Origin;->displayId:I

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget p1, p1, Ldev/duo/taskcore/TaskBinding$Origin;->displayId:I

    if-eq v2, p1, :cond_4

    goto :goto_2

    :cond_4
    move-object p2, v0

    goto :goto_3

    .line 891
    :cond_5
    :goto_2
    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->drop(Ldev/duo/taskcore/TaskBinding;)Z

    move-result p1
    :try_end_1
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p1, :cond_6

    return-void

    .line 892
    :cond_6
    nop

    .line 894
    :goto_3
    goto :goto_5

    :catch_0
    move-exception p1

    move-object p2, v0

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interrupted member unavailable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession$Refused;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 895
    :goto_5
    if-gez v1, :cond_7

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    goto :goto_6

    :cond_7
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aput-object p2, p1, v1

    .line 896
    :goto_6
    if-eqz p2, :cond_9

    .line 897
    iget-object p1, p2, Ldev/duo/taskcore/TaskBinding;->physical:Landroid/graphics/Rect;

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {v0}, Ldev/duo/taskcore/WorkspaceSession$Platform;->geometry()Ldev/duo/taskcore/Geometry;

    move-result-object v0

    if-gez v1, :cond_8

    iget-object v0, v0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    goto :goto_7

    :cond_8
    iget-object v0, v0, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object v0, v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 898
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->attachQueue:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    :cond_9
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 901
    :cond_a
    sget-object p1, Ldev/duo/taskcore/WorkspaceSession$State;->ATTACHING:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->set(Ldev/duo/taskcore/WorkspaceSession$State;)V

    .line 902
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->attachNext()V

    .line 903
    return-void

    .line 905
    :cond_b
    sget-object p1, Ldev/duo/taskcore/WorkspaceSession$State;->TRANSITIONING:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->set(Ldev/duo/taskcore/WorkspaceSession$State;)V

    .line 906
    const/4 p1, 0x1

    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->resuming:Z

    .line 907
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->begin()I

    move-result p1

    .line 908
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v2}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ldev/duo/taskcore/TaskBinding;

    new-instance v3, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1}, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda6;-><init>(Ldev/duo/taskcore/WorkspaceSession;I)V

    invoke-interface {v0, v1, v2, p2, v3}, Ldev/duo/taskcore/WorkspaceSession$Platform;->bringToFront(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    .line 913
    return-void

    .line 875
    :cond_c
    :goto_9
    return-void
.end method

.method private returnAll()V
    .locals 5

    .line 1096
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->RETURNING:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->CLOSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 1097
    :cond_0
    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->RETURNING:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->set(Ldev/duo/taskcore/WorkspaceSession$State;)V

    .line 1098
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->attachQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1099
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1100
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    iget-wide v2, p0, Ldev/duo/taskcore/WorkspaceSession;->epoch:J

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceSession;->closeReason:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Ldev/duo/taskcore/WorkspaceSession$Platform;->serverBeginReturn(JLjava/lang/String;)V

    .line 1101
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->members()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/duo/taskcore/TaskBinding;

    .line 1103
    iget-object v3, v2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v4, Ldev/duo/taskcore/TaskBinding$Lease;->OWNER_RETURNED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Ldev/duo/taskcore/WorkspaceSession;->retrying:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Ldev/duo/taskcore/WorkspaceSession;->withdraw(Ldev/duo/taskcore/TaskBinding;)V

    goto :goto_0

    .line 1104
    :cond_2
    invoke-virtual {v2}, Ldev/duo/taskcore/TaskBinding;->owned()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 1108
    :cond_3
    iget-boolean v3, p0, Ldev/duo/taskcore/WorkspaceSession;->resuming:Z

    if-nez v3, :cond_4

    iget-object v3, v2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v4, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {v3, v2}, Ldev/duo/taskcore/WorkspaceSession$Platform;->takenBySystem(Ldev/duo/taskcore/TaskBinding;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "member "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v4, v4, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already chosen by the system: released before the return"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 1110
    const/4 v3, 0x1

    iput-boolean v3, v2, Ldev/duo/taskcore/TaskBinding;->handedOver:Z

    .line 1111
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {v3, v2}, Ldev/duo/taskcore/WorkspaceSession$Platform;->releaseToSystem(Ldev/duo/taskcore/TaskBinding;)V

    .line 1112
    invoke-direct {p0, v2}, Ldev/duo/taskcore/WorkspaceSession;->settle(Ldev/duo/taskcore/TaskBinding;)V

    .line 1113
    invoke-virtual {v2}, Ldev/duo/taskcore/TaskBinding;->owned()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 1115
    :cond_4
    sget-object v3, Ldev/duo/taskcore/TaskBinding$Lease;->RETURN_REQUESTED:Ldev/duo/taskcore/TaskBinding$Lease;

    iput-object v3, v2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    .line 1116
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    goto :goto_0

    .line 1118
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->finishReturn()V

    return-void

    .line 1119
    :cond_6
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->frontTarget:Ldev/duo/taskcore/TaskBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->frontTarget:Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v1}, Ldev/duo/taskcore/TaskBinding;->owned()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->frontTarget:Ldev/duo/taskcore/TaskBinding;

    goto :goto_1

    .line 1120
    :cond_7
    iget-boolean v1, p0, Ldev/duo/taskcore/WorkspaceSession;->mainToFront:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-eqz v1, :cond_8

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v1}, Ldev/duo/taskcore/TaskBinding;->owned()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    .line 1121
    :cond_8
    :goto_1
    const/4 v1, -0x1

    iput v1, p0, Ldev/duo/taskcore/WorkspaceSession;->adopting:I

    .line 1122
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->begin()I

    move-result v1

    .line 1123
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    new-instance v4, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, v1, v0}, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda7;-><init>(Ldev/duo/taskcore/WorkspaceSession;ILjava/util/List;)V

    invoke-interface {v3, v0, v2, v4}, Ldev/duo/taskcore/WorkspaceSession$Platform;->giveBack(Ljava/util/List;Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    .line 1135
    return-void

    .line 1096
    :cond_9
    :goto_2
    return-void
.end method

.method private set(Ldev/duo/taskcore/WorkspaceSession$State;)V
    .locals 0

    .line 1249
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    .line 1250
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {p1, p0}, Ldev/duo/taskcore/WorkspaceSession$Platform;->changed(Ldev/duo/taskcore/WorkspaceSession;)V

    .line 1251
    return-void
.end method

.method private settle(Ldev/duo/taskcore/TaskBinding;)V
    .locals 4

    .line 1158
    iget-object v0, p1, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v1, Ldev/duo/taskcore/TaskBinding$Lease;->RELEASED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v0, v1, :cond_0

    return-void

    .line 1159
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {v0, p1}, Ldev/duo/taskcore/WorkspaceSession$Platform;->releaseOwner(Ldev/duo/taskcore/TaskBinding;)Ljava/lang/String;

    move-result-object v0

    .line 1160
    if-eqz v0, :cond_2

    .line 1161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->failure:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->failure:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->failure:Ljava/lang/String;

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "owner not returned "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 1163
    return-void

    .line 1165
    :cond_2
    sget-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->OWNER_RETURNED:Ldev/duo/taskcore/TaskBinding$Lease;

    iput-object v0, p1, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    .line 1166
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {v0, p1}, Ldev/duo/taskcore/WorkspaceSession$Platform;->destroyHost(Ldev/duo/taskcore/TaskBinding;)V

    .line 1167
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->withdraw(Ldev/duo/taskcore/TaskBinding;)V

    .line 1168
    return-void
.end method

.method private settleLayout(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 370
    const/4 v0, -0x1

    iput v0, p0, Ldev/duo/taskcore/WorkspaceSession;->adopting:I

    .line 371
    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " place failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " place failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->fail(Ljava/lang/String;)V

    return-void

    .line 372
    :cond_0
    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->returnAll()V

    return-void

    .line 374
    :cond_1
    :try_start_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    iget-wide v1, p0, Ldev/duo/taskcore/WorkspaceSession;->epoch:J

    iget p1, p0, Ldev/duo/taskcore/WorkspaceSession;->revision:I

    add-int/lit8 v3, p1, 0x1

    iput v3, p0, Ldev/duo/taskcore/WorkspaceSession;->revision:I

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {p1}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [Ldev/duo/taskcore/TaskBinding;

    invoke-interface/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceSession$Platform;->serverLayout(JILdev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;)V
    :try_end_0
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    nop

    .line 380
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->begin()I

    move-result p1

    .line 381
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v1}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ldev/duo/taskcore/TaskBinding;

    new-instance v2, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1, p3}, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda11;-><init>(Ldev/duo/taskcore/WorkspaceSession;ILjava/lang/String;)V

    invoke-interface {p2, v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$Platform;->isolate(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    .line 408
    return-void

    .line 375
    :catch_0
    move-exception v0

    move-object p1, v0

    .line 376
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " layout not acked: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession$Refused;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 377
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " layout not acked"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->fail(Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method private swap(IZ)Z
    .locals 3

    .line 255
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object v0, v0, p1

    .line 256
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v2, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    iput-boolean p2, p0, Ldev/duo/taskcore/WorkspaceSession;->followingSystem:Z

    .line 258
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {p2}, Ldev/duo/taskcore/WorkspaceSession$Platform;->geometry()Ldev/duo/taskcore/Geometry;

    move-result-object p2

    .line 259
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    aput-object v2, v1, p1

    .line 260
    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    .line 261
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object v0, v0, Ldev/duo/taskcore/TaskBinding;->physical:Landroid/graphics/Rect;

    iget-object v1, p2, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 262
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object v0, v0, p1

    iget-object v0, v0, Ldev/duo/taskcore/TaskBinding;->physical:Landroid/graphics/Rect;

    iget-object p2, p2, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object p1, p2, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 263
    :cond_1
    sget-object p1, Ldev/duo/taskcore/WorkspaceSession$State;->TRANSITIONING:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->set(Ldev/duo/taskcore/WorkspaceSession$State;)V

    .line 264
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->begin()I

    move-result p1

    .line 265
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v1}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ldev/duo/taskcore/TaskBinding;

    new-instance v2, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1}, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda9;-><init>(Ldev/duo/taskcore/WorkspaceSession;I)V

    const/4 p1, 0x1

    invoke-interface {p2, v0, v1, p1, v2}, Ldev/duo/taskcore/WorkspaceSession$Platform;->place(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;ZLdev/duo/taskcore/WorkspaceSession$Done;)V

    .line 269
    return p1

    .line 256
    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private trackCallFocus(ILjava/lang/Object;)V
    .locals 1

    .line 738
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callInterrupted:Z

    if-nez v0, :cond_0

    return-void

    .line 739
    :cond_0
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callIdle:Z

    if-nez v0, :cond_1

    iput p1, p0, Ldev/duo/taskcore/WorkspaceSession;->callFront:I

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->callFrontToken:Ljava/lang/Object;

    return-void

    .line 740
    :cond_1
    iget v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callFront:I

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callFrontToken:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callFrontToken:Ljava/lang/Object;

    if-ne p2, v0, :cond_3

    :cond_2
    return-void

    .line 741
    :cond_3
    invoke-direct {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->isMain(ILjava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->finishCall(Z)V

    .line 742
    return-void
.end method

.method private withdraw(Ldev/duo/taskcore/TaskBinding;)V
    .locals 4

    .line 1173
    :try_start_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    iget-wide v1, p0, Ldev/duo/taskcore/WorkspaceSession;->epoch:J

    invoke-interface {v0, v1, v2, p1}, Ldev/duo/taskcore/WorkspaceSession$Platform;->serverRelease(JLdev/duo/taskcore/TaskBinding;)V
    :try_end_0
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    nop

    .line 1179
    sget-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->RELEASED:Ldev/duo/taskcore/TaskBinding$Lease;

    iput-object v0, p1, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    .line 1180
    return-void

    .line 1174
    :catch_0
    move-exception v0

    .line 1175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->failure:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->failure:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession$Refused;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->failure:Ljava/lang/String;

    .line 1176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snapshot not withdrawn "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession$Refused;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 1177
    return-void
.end method


# virtual methods
.method public acceptsAdopt()Z
    .locals 1

    .line 416
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    if-nez v0, :cond_0

    iget v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public add(II)Z
    .locals 3

    .line 277
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_5

    if-gez p1, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 278
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "task "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " already a member"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    return v2

    .line 281
    :cond_2
    :try_start_0
    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceSession;->prepare(I)Ldev/duo/taskcore/TaskBinding;

    move-result-object p2
    :try_end_0
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    nop

    .line 286
    iget-object v0, p2, Ldev/duo/taskcore/TaskBinding;->physical:Landroid/graphics/Rect;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {v1}, Ldev/duo/taskcore/WorkspaceSession$Platform;->geometry()Ldev/duo/taskcore/Geometry;

    move-result-object v1

    if-gez p1, :cond_3

    iget-object v1, v1, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    goto :goto_0

    :cond_3
    iget-object v1, v1, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object v1, v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 287
    if-gez p1, :cond_4

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->mainHistory:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aput-object p2, v0, p1

    .line 288
    :goto_1
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->attachQueue:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object p1, Ldev/duo/taskcore/WorkspaceSession$State;->ATTACHING:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->set(Ldev/duo/taskcore/WorkspaceSession$State;)V

    .line 290
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->attachNext()V

    .line 291
    const/4 p1, 0x1

    return p1

    .line 282
    :catch_0
    move-exception p1

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " refused: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession$Refused;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 284
    return v2

    .line 277
    :cond_5
    :goto_2
    return v2
.end method

.method public adopt(I)Z
    .locals 5

    .line 423
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->interstitialPending()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->locked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->displayMismatch:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->acceptsAdopt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {p0, p1, v2}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->adoptAfterInterstitial(I)Z

    move-result p1

    return p1

    .line 425
    :cond_0
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v3, Ldev/duo/taskcore/WorkspaceSession$State;->CLOSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v3, Ldev/duo/taskcore/WorkspaceSession$State;->RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v3, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v3, :cond_5

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->acceptsAdopt()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 426
    :cond_1
    invoke-virtual {p0, p1, v2}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    .line 427
    :cond_2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v3, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 429
    :cond_3
    :try_start_0
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->prepare(I)Ldev/duo/taskcore/TaskBinding;

    move-result-object v0
    :try_end_0
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    nop

    .line 431
    iget-object v3, v0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    invoke-direct {p0, v3}, Ldev/duo/taskcore/WorkspaceSession;->recordReturn(Ldev/duo/taskcore/TaskBinding$Origin;)V

    .line 432
    iget-object v3, v0, Ldev/duo/taskcore/TaskBinding;->physical:Landroid/graphics/Rect;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {v4}, Ldev/duo/taskcore/WorkspaceSession$Platform;->geometry()Ldev/duo/taskcore/Geometry;

    move-result-object v4

    iget-object v4, v4, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 433
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->attachQueue:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    iput p1, p0, Ldev/duo/taskcore/WorkspaceSession;->adopting:I

    .line 435
    sget-object p1, Ldev/duo/taskcore/WorkspaceSession$State;->TRANSITIONING:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->set(Ldev/duo/taskcore/WorkspaceSession$State;)V

    .line 436
    invoke-direct {p0, v0, v1, v1}, Ldev/duo/taskcore/WorkspaceSession;->insertIncoming(Ldev/duo/taskcore/TaskBinding;ZZ)V

    .line 437
    return v2

    .line 430
    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adopt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " refused: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession$Refused;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    return v1

    .line 427
    :cond_4
    :goto_0
    iput p1, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingAdopt:I

    return v2

    .line 425
    :cond_5
    :goto_1
    return v1
.end method

.method public busy()Z
    .locals 1

    .line 135
    iget v0, p0, Ldev/duo/taskcore/WorkspaceSession;->op:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public callActive()Z
    .locals 1

    .line 705
    iget v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public callScreen()V
    .locals 2

    .line 709
    iget v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callState:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callInterrupted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->CLOSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 710
    :cond_0
    const-string v0, "call screen: pausing for the call"

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 711
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callInterrupted:Z

    .line 712
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callIdle:Z

    .line 713
    const/4 v0, -0x1

    iput v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callFront:I

    .line 714
    const/4 v1, 0x0

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->callFrontToken:Ljava/lang/Object;

    .line 715
    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->beginInterruption(I)V

    .line 716
    return-void

    .line 709
    :cond_1
    :goto_0
    return-void
.end method

.method public callState(IZ)V
    .locals 2

    .line 694
    iput p1, p0, Ldev/duo/taskcore/WorkspaceSession;->callState:I

    .line 695
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 696
    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->callIdle:Z

    .line 697
    if-nez p2, :cond_0

    iget p1, p0, Ldev/duo/taskcore/WorkspaceSession;->adopting:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->callScreen()V

    .line 698
    :cond_0
    return-void

    .line 700
    :cond_1
    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->callInterrupted:Z

    if-nez p1, :cond_2

    return-void

    .line 701
    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->callIdle:Z

    .line 702
    iget p2, p0, Ldev/duo/taskcore/WorkspaceSession;->callFront:I

    if-ltz p2, :cond_3

    iget p2, p0, Ldev/duo/taskcore/WorkspaceSession;->callFront:I

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->callFrontToken:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Ldev/duo/taskcore/WorkspaceSession;->isMain(ILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_3
    iget p2, p0, Ldev/duo/taskcore/WorkspaceSession;->callFront:I

    if-ltz p2, :cond_4

    move v0, p1

    :cond_4
    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->finishCall(Z)V

    .line 703
    :cond_5
    return-void
.end method

.method public close(Ljava/lang/String;Z)V
    .locals 2

    .line 1085
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->CLOSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1086
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    .line 1087
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->closeReason:Ljava/lang/String;

    .line 1088
    iput-boolean p2, p0, Ldev/duo/taskcore/WorkspaceSession;->mainToFront:Z

    .line 1089
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "close: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 1090
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->IDLE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne p2, v0, :cond_1

    sget-object p2, Ldev/duo/taskcore/WorkspaceSession$State;->CLOSED:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, p2, p1}, Ldev/duo/taskcore/WorkspaceSession;->end(Ldev/duo/taskcore/WorkspaceSession$State;Ljava/lang/String;)V

    return-void

    .line 1091
    :cond_1
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {p1, p0}, Ldev/duo/taskcore/WorkspaceSession$Platform;->changed(Ldev/duo/taskcore/WorkspaceSession;)V

    .line 1092
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->returnAll()V

    .line 1093
    :cond_2
    return-void

    .line 1085
    :cond_3
    :goto_0
    return-void
.end method

.method public closing()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    return v0
.end method

.method public crossAppToMember(IILjava/lang/Object;)V
    .locals 1

    .line 564
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object v0, v0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v0, v0, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    if-eq v0, p1, :cond_0

    goto :goto_2

    .line 565
    :cond_0
    invoke-virtual {p0, p2, p3}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object p1

    .line 566
    if-eqz p1, :cond_5

    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-eq p1, p3, :cond_5

    invoke-virtual {p1}, Ldev/duo/taskcore/TaskBinding;->owned()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0, p2}, Ldev/duo/taskcore/WorkspaceSession;->slotOf(I)I

    move-result p3

    if-gez p3, :cond_1

    goto :goto_1

    .line 567
    :cond_1
    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq p3, v0, :cond_2

    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->TRANSITIONING:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq p3, v0, :cond_2

    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->ATTACHING:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq p3, v0, :cond_2

    return-void

    .line 568
    :cond_2
    iget-object p3, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    invoke-direct {p0, p3}, Ldev/duo/taskcore/WorkspaceSession;->recordReturn(Ldev/duo/taskcore/TaskBinding$Origin;)V

    .line 569
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq p3, v0, :cond_3

    goto :goto_0

    .line 570
    :cond_3
    invoke-virtual {p0, p2}, Ldev/duo/taskcore/WorkspaceSession;->slotOf(I)I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->swap(IZ)Z

    .line 571
    return-void

    .line 569
    :cond_4
    :goto_0
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->systemTarget:Ldev/duo/taskcore/TaskBinding;

    return-void

    .line 566
    :cond_5
    :goto_1
    return-void

    .line 564
    :cond_6
    :goto_2
    return-void
.end method

.method public enterFrom(I)Z
    .locals 3

    .line 653
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->dropIdleCall()V

    .line 654
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->locked:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->displayMismatch:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 655
    :cond_0
    iput-boolean v2, p0, Ldev/duo/taskcore/WorkspaceSession;->userLeft:Z

    .line 656
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string p1, "corner member"

    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->resume(Ljava/lang/String;)V

    return v1

    .line 658
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->prepare(I)Ldev/duo/taskcore/TaskBinding;

    move-result-object p1
    :try_end_0
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    nop

    .line 660
    iget-object v0, p1, Ldev/duo/taskcore/TaskBinding;->physical:Landroid/graphics/Rect;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {v2}, Ldev/duo/taskcore/WorkspaceSession$Platform;->geometry()Ldev/duo/taskcore/Geometry;

    move-result-object v2

    iget-object v2, v2, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 661
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->attachQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    invoke-direct {p0, p1, v1, v1}, Ldev/duo/taskcore/WorkspaceSession;->insertIncoming(Ldev/duo/taskcore/TaskBinding;ZZ)V

    .line 663
    return v1

    .line 659
    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "corner task refused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession$Refused;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    return v2

    .line 654
    :cond_2
    :goto_0
    return v2
.end method

.method public failure()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->failure:Ljava/lang/String;

    return-object v0
.end method

.method public find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;
    .locals 3

    .line 1217
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->members()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/taskcore/TaskBinding;

    .line 1218
    iget-object v2, v1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v2, v2, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    if-ne v2, p1, :cond_0

    if-eqz p2, :cond_1

    iget-object v2, v1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v2, v2, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-ne v2, p2, :cond_0

    :cond_1
    return-object v1

    .line 1219
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public interruptionFinished(Z)V
    .locals 1

    .line 779
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->fsiActive:Z

    .line 780
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruptionOk:Z

    and-int/2addr p1, v0

    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->interruptionOk:Z

    .line 781
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->endInterruption()V

    .line 782
    return-void
.end method

.method public interruptionStarted(I)V
    .locals 2

    .line 668
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->CLOSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->fsiActive:Z

    .line 670
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->beginInterruption(I)V

    .line 671
    return-void

    .line 668
    :cond_1
    :goto_0
    return-void
.end method

.method public interstitial(I)V
    .locals 3

    .line 445
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->CLOSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->userLeft:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v1, :cond_1

    iget v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interstitialTask:I

    if-gez v0, :cond_1

    return-void

    .line 447
    :cond_1
    iput p1, p0, Ldev/duo/taskcore/WorkspaceSession;->interstitialTask:I

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interstitial "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": stepping aside"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->pause(Ljava/lang/String;)V

    .line 450
    return-void

    .line 445
    :cond_2
    :goto_0
    return-void
.end method

.method public interstitialPending()Z
    .locals 1

    .line 452
    iget v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interstitialTask:I

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->userLeft:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keyguardExitAborted()V
    .locals 1

    .line 838
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->unlockedInTransition:Z

    if-nez v0, :cond_0

    return-void

    .line 839
    :cond_0
    const-string v0, "keyguard exit aborted"

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 840
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->unlockedInTransition:Z

    .line 841
    return-void
.end method

.method synthetic lambda$attachNext$0$dev-duo-taskcore-WorkspaceSession(IZLjava/lang/String;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->accept(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 189
    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->resuming:Z

    .line 190
    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "resume with incoming task failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->fail(Ljava/lang/String;)V

    return-void

    .line 191
    :cond_1
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->attachNext()V

    .line 192
    return-void
.end method

.method synthetic lambda$attachNext$1$dev-duo-taskcore-WorkspaceSession(IZZLjava/lang/String;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->accept(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 200
    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "adopt"

    goto :goto_0

    :cond_1
    const-string p1, "enter"

    :goto_0
    invoke-direct {p0, p3, p4, p1}, Ldev/duo/taskcore/WorkspaceSession;->settleLayout(ZLjava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method synthetic lambda$attachNext$2$dev-duo-taskcore-WorkspaceSession(ILdev/duo/taskcore/TaskBinding;ZLjava/lang/String;)V
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->accept(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 239
    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object p3, Ldev/duo/taskcore/TaskBinding$Lease;->TASK_GONE:Ldev/duo/taskcore/TaskBinding$Lease;

    if-eq p1, p3, :cond_1

    sget-object p1, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    iput-object p1, p2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    .line 241
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->attachNext()V

    .line 242
    return-void

    .line 240
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "attach failed "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    const-string p1, "attach failed"

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->fail(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$attachNext$3$dev-duo-taskcore-WorkspaceSession(ILdev/duo/taskcore/TaskBinding;ZLjava/lang/String;)V
    .locals 2

    .line 207
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->accept(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 208
    :cond_0
    const-string p1, ": "

    if-eqz p3, :cond_7

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 218
    :cond_1
    :try_start_0
    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {p3, p2}, Ldev/duo/taskcore/WorkspaceSession$Platform;->takeOwner(Ldev/duo/taskcore/TaskBinding;)V
    :try_end_0
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    nop

    .line 234
    iget-object p1, p2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object p3, Ldev/duo/taskcore/TaskBinding$Lease;->TASK_GONE:Ldev/duo/taskcore/TaskBinding$Lease;

    if-eq p1, p3, :cond_2

    sget-object p1, Ldev/duo/taskcore/TaskBinding$Lease;->OWNER_ACQUIRED:Ldev/duo/taskcore/TaskBinding$Lease;

    iput-object p1, p2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    .line 235
    :cond_2
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->begin()I

    move-result p1

    .line 236
    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    new-instance p4, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda10;

    invoke-direct {p4, p0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda10;-><init>(Ldev/duo/taskcore/WorkspaceSession;ILdev/duo/taskcore/TaskBinding;)V

    invoke-interface {p3, p2, p4}, Ldev/duo/taskcore/WorkspaceSession$Platform;->attach(Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    .line 243
    return-void

    .line 219
    :catch_0
    move-exception p3

    .line 220
    iget-boolean p4, p3, Ldev/duo/taskcore/WorkspaceSession$Refused;->held:Z

    if-eqz p4, :cond_4

    .line 222
    iget-object p4, p2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->TASK_GONE:Ldev/duo/taskcore/TaskBinding$Lease;

    if-eq p4, v0, :cond_3

    sget-object p4, Ldev/duo/taskcore/TaskBinding$Lease;->OWNER_ACQUIRED:Ldev/duo/taskcore/TaskBinding$Lease;

    iput-object p4, p2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    .line 223
    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "owner unverified "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Ldev/duo/taskcore/WorkspaceSession$Refused;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 224
    const-string p1, "owner unverified"

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->fail(Ljava/lang/String;)V

    .line 225
    return-void

    .line 227
    :cond_4
    iget-object p4, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {p4, p2}, Ldev/duo/taskcore/WorkspaceSession$Platform;->destroyHost(Ldev/duo/taskcore/TaskBinding;)V

    .line 228
    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceSession;->drop(Ldev/duo/taskcore/TaskBinding;)Z

    move-result p4

    if-nez p4, :cond_5

    return-void

    .line 229
    :cond_5
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "owner refused "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Ldev/duo/taskcore/WorkspaceSession$Refused;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-ne p2, p1, :cond_6

    const-string p1, "main owner refused"

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->fail(Ljava/lang/String;)V

    return-void

    .line 231
    :cond_6
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->attachNext()V

    .line 232
    return-void

    .line 210
    :cond_7
    :goto_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {v0, p2}, Ldev/duo/taskcore/WorkspaceSession$Platform;->destroyHost(Ldev/duo/taskcore/TaskBinding;)V

    .line 211
    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceSession;->drop(Ldev/duo/taskcore/TaskBinding;)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 212
    :cond_8
    if-nez p3, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "host not ready for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 213
    :cond_9
    if-nez p3, :cond_a

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-ne p2, p1, :cond_a

    const-string p1, "main host not ready"

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->fail(Ljava/lang/String;)V

    return-void

    .line 214
    :cond_a
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->attachNext()V

    .line 215
    return-void
.end method

.method synthetic lambda$detachForInterruption$12$dev-duo-taskcore-WorkspaceSession(ILjava/util/List;ZLjava/lang/String;)V
    .locals 0

    .line 760
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->accept(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 761
    :cond_0
    if-nez p3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "interruption return failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->fail(Ljava/lang/String;)V

    return-void

    .line 762
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldev/duo/taskcore/TaskBinding;

    .line 763
    iget-object p3, p2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object p4, Ldev/duo/taskcore/TaskBinding$Lease;->TASK_GONE:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne p3, p4, :cond_3

    .line 764
    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {p3, p2}, Ldev/duo/taskcore/WorkspaceSession$Platform;->destroyHost(Ldev/duo/taskcore/TaskBinding;)V

    .line 765
    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceSession;->drop(Ldev/duo/taskcore/TaskBinding;)Z

    move-result p3

    if-nez p3, :cond_2

    return-void

    .line 766
    :cond_2
    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-ne p2, p3, :cond_4

    const/4 p2, 0x0

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    goto :goto_1

    .line 768
    :cond_3
    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceSession;->settle(Ldev/duo/taskcore/TaskBinding;)V

    .line 769
    iget-object p2, p2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object p3, Ldev/duo/taskcore/TaskBinding$Lease;->RELEASED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-eq p2, p3, :cond_4

    const-string p1, "interruption owner not returned"

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->fail(Ljava/lang/String;)V

    return-void

    .line 771
    :cond_4
    :goto_1
    goto :goto_0

    .line 772
    :cond_5
    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-eqz p1, :cond_6

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->returnAll()V

    return-void

    .line 773
    :cond_6
    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->interruptionReturned:Z

    if-eqz p1, :cond_7

    const-string p1, "interruption finished"

    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->resume(Ljava/lang/String;)V

    .line 774
    :cond_7
    return-void
.end method

.method synthetic lambda$insertIncoming$10$dev-duo-taskcore-WorkspaceSession(ILdev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/TaskBinding;ZZZLjava/lang/String;)V
    .locals 0

    .line 489
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->accept(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 490
    :cond_0
    if-nez p6, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "overflow return failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->fail(Ljava/lang/String;)V

    return-void

    .line 491
    :cond_1
    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceSession;->settle(Ldev/duo/taskcore/TaskBinding;)V

    .line 492
    iget-object p1, p2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object p2, Ldev/duo/taskcore/TaskBinding$Lease;->RELEASED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-eq p1, p2, :cond_2

    const-string p1, "overflow not settled"

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->fail(Ljava/lang/String;)V

    return-void

    .line 493
    :cond_2
    invoke-direct {p0, p3, p4, p5}, Ldev/duo/taskcore/WorkspaceSession;->placeIncoming(Ldev/duo/taskcore/TaskBinding;ZZ)V

    .line 494
    return-void
.end method

.method synthetic lambda$mainLeftToHome$11$dev-duo-taskcore-WorkspaceSession(IZLjava/lang/String;)V
    .locals 0

    .line 556
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->accept(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 557
    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->resuming:Z

    .line 558
    const-string p1, "raise"

    invoke-direct {p0, p2, p3, p1}, Ldev/duo/taskcore/WorkspaceSession;->settleLayout(ZLjava/lang/String;Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method synthetic lambda$reconcileGone$14$dev-duo-taskcore-WorkspaceSession(IZLjava/lang/String;)V
    .locals 0

    .line 978
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->accept(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "gone"

    invoke-direct {p0, p2, p3, p1}, Ldev/duo/taskcore/WorkspaceSession;->settleLayout(ZLjava/lang/String;Ljava/lang/String;)V

    .line 979
    :cond_0
    return-void
.end method

.method synthetic lambda$remove$6$dev-duo-taskcore-WorkspaceSession(IZLjava/lang/String;)V
    .locals 0

    .line 344
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->accept(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "remove"

    invoke-direct {p0, p2, p3, p1}, Ldev/duo/taskcore/WorkspaceSession;->settleLayout(ZLjava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_0
    return-void
.end method

.method synthetic lambda$remove$7$dev-duo-taskcore-WorkspaceSession(ILdev/duo/taskcore/TaskBinding;IZLjava/lang/String;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->accept(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 329
    :cond_0
    if-nez p4, :cond_1

    .line 331
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "remove give back failed "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 332
    const-string p1, "remove failed"

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->fail(Ljava/lang/String;)V

    .line 333
    return-void

    .line 335
    :cond_1
    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceSession;->settle(Ldev/duo/taskcore/TaskBinding;)V

    .line 336
    iget-object p1, p2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object p2, Ldev/duo/taskcore/TaskBinding$Lease;->RELEASED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-eq p1, p2, :cond_2

    .line 338
    const-string p1, "remove not settled"

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->fail(Ljava/lang/String;)V

    .line 339
    return-void

    .line 341
    :cond_2
    const/4 p1, 0x0

    if-gez p3, :cond_3

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aput-object p1, p2, p3

    .line 342
    :goto_0
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->begin()I

    move-result p1

    .line 343
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object p4, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {p4}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ldev/duo/taskcore/TaskBinding;

    new-instance p5, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda5;

    invoke-direct {p5, p0, p1}, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda5;-><init>(Ldev/duo/taskcore/WorkspaceSession;I)V

    const/4 p1, 0x0

    invoke-interface {p2, p3, p4, p1, p5}, Ldev/duo/taskcore/WorkspaceSession$Platform;->place(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;ZLdev/duo/taskcore/WorkspaceSession$Done;)V

    .line 346
    return-void
.end method

.method synthetic lambda$reorder$5$dev-duo-taskcore-WorkspaceSession(IZLjava/lang/String;)V
    .locals 0

    .line 312
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->accept(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 313
    :cond_0
    const-string p1, "reorder"

    invoke-direct {p0, p2, p3, p1}, Ldev/duo/taskcore/WorkspaceSession;->settleLayout(ZLjava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method synthetic lambda$resume$13$dev-duo-taskcore-WorkspaceSession(IZLjava/lang/String;)V
    .locals 0

    .line 909
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->accept(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 910
    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->resuming:Z

    .line 911
    const-string p1, "resume"

    invoke-direct {p0, p2, p3, p1}, Ldev/duo/taskcore/WorkspaceSession;->settleLayout(ZLjava/lang/String;Ljava/lang/String;)V

    .line 912
    return-void
.end method

.method synthetic lambda$returnAll$15$dev-duo-taskcore-WorkspaceSession(ILjava/util/List;ZLjava/lang/String;)V
    .locals 1

    .line 1124
    iget v0, p0, Ldev/duo/taskcore/WorkspaceSession;->op:I

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p2, p3, p4}, Ldev/duo/taskcore/WorkspaceSession;->lateReturn(Ljava/util/List;ZLjava/lang/String;)V

    return-void

    .line 1125
    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Ldev/duo/taskcore/WorkspaceSession;->op:I

    .line 1126
    if-nez p3, :cond_2

    .line 1128
    if-eqz p4, :cond_1

    const-string p1, "timeout"

    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->lateOwned:Ljava/util/List;

    .line 1129
    :cond_1
    sget-object p1, Ldev/duo/taskcore/WorkspaceSession$State;->RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "give back failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " holding "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->end(Ldev/duo/taskcore/WorkspaceSession$State;Ljava/lang/String;)V

    .line 1130
    return-void

    .line 1132
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldev/duo/taskcore/TaskBinding;

    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceSession;->settle(Ldev/duo/taskcore/TaskBinding;)V

    goto :goto_0

    .line 1133
    :cond_3
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->finishReturn()V

    .line 1134
    return-void
.end method

.method synthetic lambda$settleLayout$9$dev-duo-taskcore-WorkspaceSession(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 382
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->accept(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 383
    :cond_0
    if-nez p3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " isolation failed: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " isolation failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->fail(Ljava/lang/String;)V

    return-void

    .line 384
    :cond_1
    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->returnAll()V

    return-void

    .line 387
    :cond_2
    const-string p1, "remove"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_3

    const-string p1, "reorder"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "raise"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->followingSystem:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->systemTarget:Ldev/duo/taskcore/TaskBinding;

    if-nez p1, :cond_3

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingPause:Ljava/lang/String;

    if-nez p1, :cond_3

    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->locked:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    move p1, p3

    .line 388
    :goto_0
    iput-boolean p3, p0, Ldev/duo/taskcore/WorkspaceSession;->followingSystem:Z

    .line 389
    if-eqz p1, :cond_4

    iget-object p4, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-eqz p4, :cond_4

    iget-object p4, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object p4, p4, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne p4, v0, :cond_4

    iget-object p4, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    invoke-interface {p4, v0}, Ldev/duo/taskcore/WorkspaceSession$Platform;->focus(Ldev/duo/taskcore/TaskBinding;)Z

    move-result p4

    if-nez p4, :cond_4

    .line 390
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " focus request failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->fail(Ljava/lang/String;)V

    .line 391
    return-void

    .line 393
    :cond_4
    const/4 p2, -0x1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-eqz p1, :cond_5

    iput p2, p0, Ldev/duo/taskcore/WorkspaceSession;->selfHomeTask:I

    .line 394
    :cond_5
    sget-object p1, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->set(Ldev/duo/taskcore/WorkspaceSession$State;)V

    .line 395
    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    if-eqz p1, :cond_6

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->detachForInterruption()V

    return-void

    .line 396
    :cond_6
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->reconcileGone()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 397
    :cond_7
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-nez p1, :cond_8

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->restoreMain()Z

    move-result p1

    if-eqz p1, :cond_8

    iput-boolean p3, p0, Ldev/duo/taskcore/WorkspaceSession;->mainBackedOut:Z

    return-void

    .line 398
    :cond_8
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-nez p1, :cond_9

    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->mainBackedOut:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingPause:Ljava/lang/String;

    if-nez p1, :cond_9

    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->locked:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->mainHistory:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 399
    iput-boolean p3, p0, Ldev/duo/taskcore/WorkspaceSession;->mainBackedOut:Z

    .line 400
    const-string p1, "main area backed out to the end"

    invoke-virtual {p0, p1, p3}, Ldev/duo/taskcore/WorkspaceSession;->close(Ljava/lang/String;Z)V

    .line 401
    return-void

    .line 403
    :cond_9
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingPause:Ljava/lang/String;

    if-eqz p1, :cond_a

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingPause:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingPause:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->pause(Ljava/lang/String;)V

    return-void

    .line 404
    :cond_a
    iget p1, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingAdopt:I

    if-ltz p1, :cond_c

    iget p1, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingAdopt:I

    iput p2, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingAdopt:I

    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->adopt(I)Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {p2, p1}, Ldev/duo/taskcore/WorkspaceSession$Platform;->adoptRefused(I)V

    :cond_b
    return-void

    .line 405
    :cond_c
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->removeBackgrounded()Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    .line 406
    :cond_d
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->followSystemTarget()V

    .line 407
    return-void
.end method

.method synthetic lambda$swap$4$dev-duo-taskcore-WorkspaceSession(IZLjava/lang/String;)V
    .locals 0

    .line 266
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->accept(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 267
    :cond_0
    const-string p1, "swap"

    invoke-direct {p0, p2, p3, p1}, Ldev/duo/taskcore/WorkspaceSession;->settleLayout(ZLjava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public leave(Ljava/lang/String;)V
    .locals 1

    .line 812
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-eqz v0, :cond_0

    return-void

    .line 813
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interstitialTask:I

    .line 814
    iput v0, p0, Ldev/duo/taskcore/WorkspaceSession;->selfHomeTask:I

    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->userLeft:Z

    .line 816
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->resumeAfterUnlock:Z

    .line 817
    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->pause(Ljava/lang/String;)V

    .line 818
    return-void
.end method

.method public log()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->log:Ljava/util/List;

    return-object v0
.end method

.method public main()Ldev/duo/taskcore/TaskBinding;
    .locals 1

    .line 130
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    return-object v0
.end method

.method public mainLeftToHome(ILjava/lang/Object;I)V
    .locals 1

    .line 545
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object v0, v0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v0, v0, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    if-ne v0, p1, :cond_3

    if-eqz p2, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object v0, v0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v0, v0, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-eq v0, p2, :cond_0

    goto :goto_1

    .line 547
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "main "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " started home itself: treated as leaving the main area"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 548
    iput p3, p0, Ldev/duo/taskcore/WorkspaceSession;->selfHomeTask:I

    .line 549
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    const/4 p2, 0x1

    iput-boolean p2, p1, Ldev/duo/taskcore/TaskBinding;->toBack:Z

    .line 550
    iput-boolean p2, p0, Ldev/duo/taskcore/WorkspaceSession;->mainBackedOut:Z

    .line 551
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object p3, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne p1, p3, :cond_2

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 552
    :cond_1
    sget-object p1, Ldev/duo/taskcore/WorkspaceSession$State;->TRANSITIONING:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->set(Ldev/duo/taskcore/WorkspaceSession$State;)V

    .line 553
    iput-boolean p2, p0, Ldev/duo/taskcore/WorkspaceSession;->resuming:Z

    .line 554
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->begin()I

    move-result p1

    .line 555
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {p3}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ldev/duo/taskcore/TaskBinding;

    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda3;-><init>(Ldev/duo/taskcore/WorkspaceSession;I)V

    const/4 p1, 0x0

    invoke-interface {p2, p1, p3, p1, v0}, Ldev/duo/taskcore/WorkspaceSession$Platform;->bringToFront(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    .line 560
    return-void

    .line 551
    :cond_2
    :goto_0
    return-void

    .line 546
    :cond_3
    :goto_1
    return-void
.end method

.method public memberChanged(ILjava/lang/Object;II)V
    .locals 11

    .line 1033
    invoke-virtual {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object p2

    .line 1034
    if-nez p2, :cond_0

    return-void

    .line 1035
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne p4, v4, :cond_2

    if-eq p3, v1, :cond_1

    if-eq p3, v3, :cond_1

    if-eqz p3, :cond_1

    if-ne p3, v0, :cond_2

    iget-boolean v5, p2, Ldev/duo/taskcore/TaskBinding;->enteringPip:Z

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v3

    .line 1040
    :goto_1
    const-string v6, ")"

    const-string v7, " taken over (mode "

    const-string v8, ", parent "

    const-string v9, "member "

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Ldev/duo/taskcore/WorkspaceSession;->resuming:Z

    if-eqz v5, :cond_3

    if-eq p4, v4, :cond_6

    :cond_3
    iget-object v5, p2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v10, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-eq v5, v10, :cond_4

    iget-object v5, p2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v10, Ldev/duo/taskcore/TaskBinding$Lease;->RETURN_REQUESTED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v5, v10, :cond_6

    .line 1045
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " taken into another container (mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): released now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 1046
    iput-boolean v3, p2, Ldev/duo/taskcore/TaskBinding;->handedOver:Z

    .line 1047
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {v0, p2}, Ldev/duo/taskcore/WorkspaceSession$Platform;->releaseToSystem(Ldev/duo/taskcore/TaskBinding;)V

    .line 1048
    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceSession;->settle(Ldev/duo/taskcore/TaskBinding;)V

    .line 1049
    iget-boolean p2, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Ldev/duo/taskcore/WorkspaceSession;->close(Ljava/lang/String;Z)V

    .line 1050
    :cond_5
    return-void

    .line 1052
    :cond_6
    iget-object v5, p2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v10, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v5, v10, :cond_c

    iget-boolean v5, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v5, :cond_c

    iget-boolean v5, p0, Ldev/duo/taskcore/WorkspaceSession;->resuming:Z

    if-nez v5, :cond_c

    iget-boolean v5, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    if-nez v5, :cond_c

    iget-boolean v5, p0, Ldev/duo/taskcore/WorkspaceSession;->detachedForInterruption:Z

    if-eqz v5, :cond_7

    goto :goto_2

    .line 1053
    :cond_7
    if-ne p3, v1, :cond_8

    if-ne p4, v4, :cond_8

    return-void

    .line 1054
    :cond_8
    if-ne p3, v0, :cond_9

    iget-boolean v0, p2, Ldev/duo/taskcore/TaskBinding;->enteringPip:Z

    if-eqz v0, :cond_9

    return-void

    .line 1055
    :cond_9
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v1, :cond_b

    if-ne p4, v4, :cond_b

    if-eq p3, v3, :cond_a

    if-nez p3, :cond_b

    .line 1058
    :cond_a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " reopened full screen"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ldev/duo/taskcore/WorkspaceSession;->dismissTo(Ldev/duo/taskcore/TaskBinding;Ljava/lang/String;)V

    .line 1059
    return-void

    .line 1061
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Ldev/duo/taskcore/WorkspaceSession;->close(Ljava/lang/String;Z)V

    .line 1062
    return-void

    .line 1052
    :cond_c
    :goto_2
    return-void
.end method

.method public memberToBack(ILjava/lang/Object;)V
    .locals 2

    .line 921
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->TRANSITIONING:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 922
    :cond_0
    invoke-virtual {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object p1

    .line 923
    if-eqz p1, :cond_4

    iget-object p2, p1, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 924
    :cond_1
    const/4 p2, 0x1

    iput-boolean p2, p1, Ldev/duo/taskcore/TaskBinding;->toBack:Z

    .line 925
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-ne p1, v0, :cond_2

    iput-boolean p2, p0, Ldev/duo/taskcore/WorkspaceSession;->mainBackedOut:Z

    .line 926
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "member moved itself to back "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 927
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object p2, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->removeBackgrounded()Z

    .line 928
    :cond_3
    return-void

    .line 923
    :cond_4
    :goto_0
    return-void

    .line 921
    :cond_5
    :goto_1
    return-void
.end method

.method public members()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldev/duo/taskcore/TaskBinding;",
            ">;"
        }
    .end annotation

    .line 1209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1210
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1211
    :cond_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1212
    :cond_2
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->attachQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/duo/taskcore/TaskBinding;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1213
    :cond_4
    return-object v0
.end method

.method public open(I[I)V
    .locals 6

    .line 139
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->IDLE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v1, :cond_2

    .line 140
    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->PREPARING:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->set(Ldev/duo/taskcore/WorkspaceSession$State;)V

    .line 142
    :try_start_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    iget-wide v1, p0, Ldev/duo/taskcore/WorkspaceSession;->epoch:J

    invoke-interface {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$Platform;->serverOpen(J)V
    :try_end_0
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_0 .. :try_end_0} :catch_3

    .line 146
    nop

    .line 147
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {v0}, Ldev/duo/taskcore/WorkspaceSession$Platform;->geometry()Ldev/duo/taskcore/Geometry;

    move-result-object v0

    .line 149
    :try_start_1
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->prepare(I)Ldev/duo/taskcore/TaskBinding;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;
    :try_end_1
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_1 .. :try_end_1} :catch_2

    .line 154
    nop

    .line 155
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object v1, v1, Ldev/duo/taskcore/TaskBinding;->physical:Landroid/graphics/Rect;

    iget-object v2, v0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 156
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->attachQueue:Ljava/util/List;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    nop

    .line 158
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    array-length v3, p2

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 159
    aget v3, p2, v1

    if-ne v3, p1, :cond_0

    goto :goto_2

    .line 161
    :cond_0
    :try_start_2
    aget v3, p2, v1

    invoke-direct {p0, v3}, Ldev/duo/taskcore/WorkspaceSession;->prepare(I)Ldev/duo/taskcore/TaskBinding;

    move-result-object v3

    .line 162
    iget-object v4, v3, Ldev/duo/taskcore/TaskBinding;->physical:Landroid/graphics/Rect;

    iget-object v5, v0, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 163
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;
    :try_end_2
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v5, v2, 0x1

    :try_start_3
    aput-object v3, v4, v2

    .line 164
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->attachQueue:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_3 .. :try_end_3} :catch_0

    .line 167
    move v2, v5

    goto :goto_2

    .line 165
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v3

    move v5, v2

    move-object v2, v3

    .line 166
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sub "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " skipped: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ldev/duo/taskcore/WorkspaceSession$Refused;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    move v2, v5

    .line 158
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    sget-object p1, Ldev/duo/taskcore/WorkspaceSession$State;->ATTACHING:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->set(Ldev/duo/taskcore/WorkspaceSession$State;)V

    .line 170
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->attachNext()V

    .line 171
    return-void

    .line 150
    :catch_2
    move-exception p1

    .line 152
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "main refused: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession$Refused;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->endWithServer(Ljava/lang/String;)V

    .line 153
    return-void

    .line 143
    :catch_3
    move-exception p1

    .line 144
    sget-object p2, Ldev/duo/taskcore/WorkspaceSession$State;->CLOSED:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server refused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession$Refused;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ldev/duo/taskcore/WorkspaceSession;->end(Ldev/duo/taskcore/WorkspaceSession$State;Ljava/lang/String;)V

    .line 145
    return-void

    .line 139
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "open twice "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pause(Ljava/lang/String;)V
    .locals 2

    .line 800
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 801
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 805
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->systemTarget:Ldev/duo/taskcore/TaskBinding;

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 807
    sget-object p1, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->set(Ldev/duo/taskcore/WorkspaceSession$State;)V

    .line 808
    return-void

    .line 802
    :cond_2
    :goto_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->TRANSITIONING:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->ATTACHING:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingPause:Ljava/lang/String;

    .line 803
    :cond_4
    return-void

    .line 800
    :cond_5
    :goto_1
    return-void
.end method

.method public pipFinished(ILjava/lang/Object;Z)V
    .locals 0

    .line 636
    invoke-virtual {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object p1

    .line 637
    if-nez p1, :cond_0

    return-void

    .line 638
    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p1, Ldev/duo/taskcore/TaskBinding;->enteringPip:Z

    .line 639
    if-eqz p3, :cond_5

    iget-boolean p2, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-eqz p2, :cond_1

    goto :goto_0

    .line 640
    :cond_1
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->mainHistory:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 641
    :cond_2
    const/4 p2, 0x1

    iput-boolean p2, p1, Ldev/duo/taskcore/TaskBinding;->toBack:Z

    .line 642
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object p2, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result p1

    if-nez p1, :cond_3

    .line 643
    const-string p1, "PiP while paused"

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingPause:Ljava/lang/String;

    .line 644
    sget-object p1, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    .line 646
    :cond_3
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object p2, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->removeBackgrounded()Z

    .line 647
    :cond_4
    return-void

    .line 639
    :cond_5
    :goto_0
    return-void
.end method

.method public pipStarting(ILjava/lang/Object;)V
    .locals 0

    .line 630
    invoke-virtual {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object p1

    .line 631
    if-eqz p1, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p1, Ldev/duo/taskcore/TaskBinding;->enteringPip:Z

    .line 632
    :cond_0
    return-void
.end method

.method public recentsReturned()Z
    .locals 4

    .line 859
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->locked:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->displayMismatch:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->detachedForInterruption:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 860
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v2, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    .line 861
    :cond_1
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v2, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v2, :cond_2

    return v1

    .line 862
    :cond_2
    iput-boolean v1, p0, Ldev/duo/taskcore/WorkspaceSession;->userLeft:Z

    .line 863
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingPause:Ljava/lang/String;

    .line 864
    const-string v0, "recents gesture returned to workbench"

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 865
    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->set(Ldev/duo/taskcore/WorkspaceSession$State;)V

    .line 866
    return v3

    .line 859
    :cond_3
    :goto_0
    return v1
.end method

.method public remove(I)Z
    .locals 5

    .line 320
    if-gez p1, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object v0, v0, p1

    .line 321
    :goto_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v2, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 322
    :cond_1
    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->TRANSITIONING:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, v1}, Ldev/duo/taskcore/WorkspaceSession;->set(Ldev/duo/taskcore/WorkspaceSession$State;)V

    .line 323
    sget-object v1, Ldev/duo/taskcore/TaskBinding$Lease;->RETURN_REQUESTED:Ldev/duo/taskcore/TaskBinding$Lease;

    iput-object v1, v0, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    .line 324
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 325
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->begin()I

    move-result v2

    .line 327
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    new-instance v4, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0, v2, v0, p1}, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda15;-><init>(Ldev/duo/taskcore/WorkspaceSession;ILdev/duo/taskcore/TaskBinding;I)V

    const/4 p1, 0x0

    invoke-interface {v3, v1, p1, v4}, Ldev/duo/taskcore/WorkspaceSession$Platform;->giveBack(Ljava/util/List;Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    .line 347
    const/4 p1, 0x1

    return p1

    .line 321
    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public reorder(II)Z
    .locals 8

    .line 302
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_5

    if-eq p1, p2, :cond_5

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    .line 303
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    invoke-interface {v0}, Ldev/duo/taskcore/WorkspaceSession$Platform;->geometry()Ldev/duo/taskcore/Geometry;

    move-result-object v0

    .line 304
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object v1, v1, p1

    .line 305
    const/4 v3, 0x1

    if-le p2, p1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    .line 306
    :goto_0
    nop

    :goto_1
    if-eq p1, p2, :cond_2

    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    add-int v7, p1, v4

    aget-object v6, v6, v7

    aput-object v6, v5, p1

    move p1, v7

    goto :goto_1

    .line 307
    :cond_2
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aput-object v1, p1, p2

    .line 308
    nop

    :goto_2
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    array-length p1, p1

    if-ge v2, p1, :cond_4

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object p1, p1, v2

    if-eqz p1, :cond_3

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object p1, p1, v2

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding;->physical:Landroid/graphics/Rect;

    iget-object p2, v0, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object p2, p2, v2

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 309
    :cond_4
    sget-object p1, Ldev/duo/taskcore/WorkspaceSession$State;->TRANSITIONING:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->set(Ldev/duo/taskcore/WorkspaceSession$State;)V

    .line 310
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->begin()I

    move-result p1

    .line 311
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->platform:Ldev/duo/taskcore/WorkspaceSession$Platform;

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v1}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ldev/duo/taskcore/TaskBinding;

    new-instance v2, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda2;-><init>(Ldev/duo/taskcore/WorkspaceSession;I)V

    invoke-interface {p2, v0, v1, v3, v2}, Ldev/duo/taskcore/WorkspaceSession$Platform;->place(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;ZLdev/duo/taskcore/WorkspaceSession$Done;)V

    .line 315
    return v3

    .line 302
    :cond_5
    :goto_3
    return v2
.end method

.method public resume(Ljava/lang/String;)V
    .locals 1

    .line 871
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldev/duo/taskcore/WorkspaceSession;->resume(Ljava/lang/String;Ljava/lang/Object;)V

    .line 872
    return-void
.end method

.method public retryReturn()V
    .locals 2

    .line 948
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v1, :cond_1

    iget v0, p0, Ldev/duo/taskcore/WorkspaceSession;->op:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 949
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retry return after: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->failure:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 950
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->failure:Ljava/lang/String;

    .line 951
    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->lateOwned:Ljava/util/List;

    .line 952
    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->TRANSITIONING:Ldev/duo/taskcore/WorkspaceSession$State;

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    .line 953
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->retrying:Z

    .line 954
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->returnAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->retrying:Z

    .line 955
    return-void

    .line 954
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->retrying:Z

    throw v1

    .line 948
    :cond_1
    :goto_0
    return-void
.end method

.method public setDisplayMismatch(Z)V
    .locals 0

    .line 627
    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->displayMismatch:Z

    return-void
.end method

.method public setLocked(Z)V
    .locals 1

    .line 585
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldev/duo/taskcore/WorkspaceSession;->setLocked(ZZ)V

    return-void
.end method

.method public setLocked(ZZ)V
    .locals 2

    .line 592
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->unlockedInTransition:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 593
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->unlockedInTransition:Z

    .line 594
    :cond_2
    iget-boolean p2, p0, Ldev/duo/taskcore/WorkspaceSession;->locked:Z

    if-ne p2, p1, :cond_3

    return-void

    .line 595
    :cond_3
    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->locked:Z

    .line 596
    const-string p2, "locked"

    if-eqz p1, :cond_6

    .line 598
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne p1, v1, :cond_4

    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->interruptionReturned:Z

    if-eqz p1, :cond_5

    :cond_4
    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->userLeft:Z

    if-nez p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->resumeAfterUnlock:Z

    .line 599
    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->resumeAfterUnlock:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0, p2}, Ldev/duo/taskcore/WorkspaceSession;->pause(Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_6
    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->resumeAfterUnlock:Z

    if-eqz p1, :cond_8

    .line 601
    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->resumeAfterUnlock:Z

    .line 602
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingPause:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingPause:Ljava/lang/String;

    .line 603
    :cond_7
    const-string p1, "unlocked"

    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->resume(Ljava/lang/String;)V

    .line 605
    :cond_8
    :goto_0
    return-void
.end method

.method public slot(I)Ldev/duo/taskcore/TaskBinding;
    .locals 1

    .line 131
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public slotOf(I)I
    .locals 2

    .line 296
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object v1, v1, v0

    iget-object v1, v1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v1, v1, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public state()Ldev/duo/taskcore/WorkspaceSession$State;
    .locals 1

    .line 129
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    return-object v0
.end method

.method public swap(I)Z
    .locals 1

    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldev/duo/taskcore/WorkspaceSession;->swap(IZ)Z

    move-result p1

    .line 249
    if-eqz p1, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->mainHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 250
    :cond_0
    return p1
.end method

.method public systemFocused(ILjava/lang/Object;)V
    .locals 3

    .line 992
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->trackCallFocus(ILjava/lang/Object;)V

    return-void

    .line 993
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_b

    .line 997
    invoke-virtual {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object p2

    .line 998
    iget v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interstitialTask:I

    const/4 v1, 0x1

    if-ltz v0, :cond_4

    .line 1000
    iget v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interstitialTask:I

    if-ne p1, v0, :cond_1

    return-void

    .line 1001
    :cond_1
    const/4 v0, -0x1

    if-eqz p2, :cond_2

    iput v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interstitialTask:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "interstitial closed, back to member "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->resume(Ljava/lang/String;)V

    goto :goto_0

    .line 1002
    :cond_2
    invoke-virtual {p0, p1, v2}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object p1

    if-nez p1, :cond_3

    iput v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interstitialTask:I

    iput-boolean v1, p0, Ldev/duo/taskcore/WorkspaceSession;->userLeft:Z

    .line 1003
    :cond_3
    :goto_0
    return-void

    .line 1005
    :cond_4
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->locked:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->resumeAfterUnlock:Z

    if-eqz v0, :cond_5

    goto :goto_1

    .line 1006
    :cond_5
    if-nez p2, :cond_7

    .line 1007
    invoke-virtual {p0, p1, v2}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object p1

    if-nez p1, :cond_6

    iput-boolean v1, p0, Ldev/duo/taskcore/WorkspaceSession;->userLeft:Z

    .line 1008
    :cond_6
    return-void

    .line 1010
    :cond_7
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->detachedForInterruption:Z

    if-nez v0, :cond_8

    iget-object v0, p2, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v1, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v0, v1, :cond_9

    .line 1011
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "member "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " opened outside the workbench"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ldev/duo/taskcore/WorkspaceSession;->dismissTo(Ldev/duo/taskcore/TaskBinding;Ljava/lang/String;)V

    .line 1012
    :cond_9
    return-void

    .line 1005
    :cond_a
    :goto_1
    return-void

    .line 1014
    :cond_b
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->TRANSITIONING:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v1, :cond_c

    goto :goto_2

    .line 1015
    :cond_c
    iget v0, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingAdopt:I

    if-ne p1, v0, :cond_d

    return-void

    .line 1016
    :cond_d
    invoke-virtual {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object p2

    .line 1017
    if-nez p2, :cond_10

    .line 1020
    iget p2, p0, Ldev/duo/taskcore/WorkspaceSession;->selfHomeTask:I

    if-ne p1, p2, :cond_e

    return-void

    .line 1021
    :cond_e
    invoke-virtual {p0, p1, v2}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object p2

    if-nez p2, :cond_f

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-eqz p2, :cond_f

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    iget-boolean p2, p2, Ldev/duo/taskcore/TaskBinding;->toBack:Z

    if-nez p2, :cond_f

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "system focused non-member task "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->leave(Ljava/lang/String;)V

    .line 1022
    :cond_f
    return-void

    .line 1026
    :cond_10
    return-void

    .line 1014
    :cond_11
    :goto_2
    return-void
.end method

.method public systemSurface(Ljava/lang/String;)V
    .locals 2

    .line 825
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-eqz v0, :cond_0

    return-void

    .line 826
    :cond_0
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    if-eqz v0, :cond_1

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user left during interruption: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 828
    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->interruptionOk:Z

    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->userLeft:Z

    .line 830
    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->resumeAfterUnlock:Z

    .line 831
    return-void

    .line 833
    :cond_1
    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->leave(Ljava/lang/String;)V

    .line 834
    return-void
.end method

.method public taskGone(ILjava/lang/Object;)V
    .locals 2

    .line 352
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->mainHistory:Ljava/util/List;

    new-instance v1, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2}, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 353
    invoke-virtual {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object p1

    .line 354
    if-eqz p1, :cond_5

    iget-object p2, p1, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->TASK_GONE:Ldev/duo/taskcore/TaskBinding$Lease;

    if-eq p2, v0, :cond_5

    iget-object p2, p1, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->RELEASED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 355
    :cond_0
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-ne p1, p2, :cond_1

    iget-boolean p2, p1, Ldev/duo/taskcore/TaskBinding;->enteringPip:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->mainHistory:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 356
    :cond_1
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-ne p1, p2, :cond_3

    iget-boolean p2, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->TRANSITIONING:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne p2, v0, :cond_3

    :cond_2
    const/4 p2, 0x1

    iput-boolean p2, p0, Ldev/duo/taskcore/WorkspaceSession;->mainBackedOut:Z

    .line 357
    :cond_3
    :goto_0
    sget-object p2, Ldev/duo/taskcore/TaskBinding$Lease;->TASK_GONE:Ldev/duo/taskcore/TaskBinding$Lease;

    iput-object p2, p1, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    .line 358
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "task gone "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez p1, :cond_4

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->reconcileGone()Z

    .line 360
    :cond_4
    return-void

    .line 354
    :cond_5
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ldev/duo/taskcore/WorkspaceSession;->epoch:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " main="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1269
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, " s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession;->slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1270
    :cond_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->failure:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " failure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->failure:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlocking()Z
    .locals 3

    .line 613
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->locked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->resumeAfterUnlock:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v2, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->detachedForInterruption:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->displayMismatch:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->userLeft:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 615
    :cond_0
    iput-boolean v1, p0, Ldev/duo/taskcore/WorkspaceSession;->locked:Z

    .line 616
    iput-boolean v1, p0, Ldev/duo/taskcore/WorkspaceSession;->resumeAfterUnlock:Z

    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->unlockedInTransition:Z

    .line 618
    const-string v1, "locked"

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingPause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->pendingPause:Ljava/lang/String;

    .line 619
    :cond_1
    const-string v1, "resume: keyguard going away"

    invoke-direct {p0, v1}, Ldev/duo/taskcore/WorkspaceSession;->note(Ljava/lang/String;)V

    .line 620
    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->followingSystem:Z

    .line 621
    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->TRANSITIONING:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-direct {p0, v1}, Ldev/duo/taskcore/WorkspaceSession;->set(Ldev/duo/taskcore/WorkspaceSession$State;)V

    .line 622
    const-string v1, "keyguard going away"

    const-string v2, "unlock"

    invoke-direct {p0, v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession;->settleLayout(ZLjava/lang/String;Ljava/lang/String;)V

    .line 623
    return v0

    .line 614
    :cond_2
    :goto_0
    return v1
.end method

.method public userResume(Ljava/lang/String;)V
    .locals 2

    .line 845
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->dropIdleCall()V

    .line 846
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->resume(Ljava/lang/String;)V

    .line 847
    :cond_0
    return-void
.end method

.method public userResume(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .line 851
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->dropIdleCall()V

    .line 852
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->locked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->displayMismatch:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->detachedForInterruption:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 853
    :cond_0
    invoke-direct {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->resume(Ljava/lang/String;Ljava/lang/Object;)V

    .line 854
    const/4 p1, 0x1

    return p1

    .line 852
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public userSelected(I)V
    .locals 3

    .line 575
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceSession;->dropIdleCall()V

    .line 576
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->locked:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->closing:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceSession;->interruption:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 577
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v1, :cond_1

    const-string p1, "user selected a member"

    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->resume(Ljava/lang/String;)V

    return-void

    .line 578
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object v0

    .line 579
    if-eqz v0, :cond_6

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->main:Ldev/duo/taskcore/TaskBinding;

    if-eq v0, v1, :cond_6

    invoke-virtual {v0}, Ldev/duo/taskcore/TaskBinding;->owned()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 580
    :cond_2
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->busy()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession;->state:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v2, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 581
    :cond_3
    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->slotOf(I)I

    move-result p1

    .line 582
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ldev/duo/taskcore/WorkspaceSession;->swap(IZ)Z

    .line 583
    :cond_4
    return-void

    .line 580
    :cond_5
    :goto_0
    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceSession;->systemTarget:Ldev/duo/taskcore/TaskBinding;

    return-void

    .line 579
    :cond_6
    :goto_1
    return-void

    .line 576
    :cond_7
    :goto_2
    return-void
.end method
