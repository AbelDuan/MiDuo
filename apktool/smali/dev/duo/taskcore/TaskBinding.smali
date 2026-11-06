.class public final Ldev/duo/taskcore/TaskBinding;
.super Ljava/lang/Object;
.source "TaskBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/taskcore/TaskBinding$Lease;,
        Ldev/duo/taskcore/TaskBinding$Origin;,
        Ldev/duo/taskcore/TaskBinding$Snapshot;
    }
.end annotation


# instance fields
.field public controller:Ljava/lang/Object;

.field public enteringPip:Z

.field public final epoch:J

.field public final generation:I

.field public handedOver:Z

.field public host:Ljava/lang/Object;

.field public lease:Ldev/duo/taskcore/TaskBinding$Lease;

.field public motionRoot:Ljava/lang/Object;

.field public final origin:Ldev/duo/taskcore/TaskBinding$Origin;

.field public final physical:Landroid/graphics/Rect;

.field public snapshot:Ldev/duo/taskcore/TaskBinding$Snapshot;

.field public taskView:Ljava/lang/Object;

.field public toBack:Z


# direct methods
.method public constructor <init>(Ldev/duo/taskcore/TaskBinding$Origin;JI)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->OBSERVED:Ldev/duo/taskcore/TaskBinding$Lease;

    iput-object v0, p0, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/TaskBinding;->physical:Landroid/graphics/Rect;

    .line 79
    iput-object p1, p0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iput-wide p2, p0, Ldev/duo/taskcore/TaskBinding;->epoch:J

    iput p4, p0, Ldev/duo/taskcore/TaskBinding;->generation:I

    .line 80
    return-void
.end method


# virtual methods
.method public owned()Z
    .locals 2

    .line 84
    iget-object v0, p0, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v1, Ldev/duo/taskcore/TaskBinding$Lease;->OWNER_ACQUIRED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v1, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v1, Ldev/duo/taskcore/TaskBinding$Lease;->RETURN_REQUESTED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v1, v1, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v1, v1, Ldev/duo/taskcore/TaskBinding$Origin;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v1, v1, Ldev/duo/taskcore/TaskBinding$Origin;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldev/duo/taskcore/TaskBinding;->generation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
