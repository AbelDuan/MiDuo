.class final Ldev/duo/taskcore/WorkspaceShell$Pending;
.super Ljava/lang/Object;
.source "WorkspaceShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Pending"
.end annotation


# instance fields
.field final done:Ldev/duo/taskcore/WorkspaceSession$Done;

.field final giveBack:Z

.field lateReported:Z

.field final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/duo/taskcore/TaskBinding;",
            ">;"
        }
    .end annotation
.end field

.field primary:Ldev/duo/taskcore/TaskBinding;

.field remoteFinished:Z

.field remoteHandler:Ljava/lang/Object;

.field remoteInfo:Ljava/lang/Object;

.field reported:Z

.field timedOut:Z


# direct methods
.method constructor <init>(ZLjava/util/List;Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ldev/duo/taskcore/TaskBinding;",
            ">;",
            "Ldev/duo/taskcore/WorkspaceSession$Done;",
            ")V"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceShell$Pending;->giveBack:Z

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceShell$Pending;->members:Ljava/util/List;

    iput-object p3, p0, Ldev/duo/taskcore/WorkspaceShell$Pending;->done:Ldev/duo/taskcore/WorkspaceSession$Done;

    .line 170
    return-void
.end method


# virtual methods
.method finalResult(ZLjava/lang/String;)V
    .locals 3

    .line 187
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceShell$Pending;->timedOut:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceShell$Pending;->report(ZLjava/lang/String;)V

    return-void

    .line 188
    :cond_0
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceShell$Pending;->lateReported:Z

    if-eqz v0, :cond_1

    return-void

    .line 189
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceShell$Pending;->lateReported:Z

    .line 190
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceShell$Pending;->giveBack:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell$Pending;->done:Ldev/duo/taskcore/WorkspaceSession$Done;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "late: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "late attach result ignored (session already returning): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TaskCoreShell"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return-void
.end method

.method report(ZLjava/lang/String;)V
    .locals 1

    .line 173
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceShell$Pending;->reported:Z

    if-eqz v0, :cond_0

    return-void

    .line 174
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceShell$Pending;->reported:Z

    .line 175
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell$Pending;->done:Ldev/duo/taskcore/WorkspaceSession$Done;

    invoke-interface {v0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    .line 176
    return-void
.end method

.method timeout(Ljava/lang/String;)V
    .locals 3

    .line 180
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceShell$Pending;->reported:Z

    if-eqz v0, :cond_0

    return-void

    .line 181
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceShell$Pending;->timedOut:Z

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceShell$Pending;->reported:Z

    .line 182
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell$Pending;->done:Ldev/duo/taskcore/WorkspaceSession$Done;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    .line 183
    return-void
.end method
