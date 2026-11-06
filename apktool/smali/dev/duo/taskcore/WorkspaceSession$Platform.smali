.class public interface abstract Ldev/duo/taskcore/WorkspaceSession$Platform;
.super Ljava/lang/Object;
.source "WorkspaceSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Platform"
.end annotation


# virtual methods
.method public adoptRefused(I)V
    .locals 0

    .line 68
    return-void
.end method

.method public abstract attach(Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V
.end method

.method public bringToFront(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 0

    .line 65
    const/4 p1, 0x1

    const-string p2, "nothing to bring"

    invoke-interface {p4, p1, p2}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    return-void
.end method

.method public abstract changed(Ldev/duo/taskcore/WorkspaceSession;)V
.end method

.method public abstract createHost(Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V
.end method

.method public abstract destroyHost(Ldev/duo/taskcore/TaskBinding;)V
.end method

.method public abstract focus(Ldev/duo/taskcore/TaskBinding;)Z
.end method

.method public abstract geometry()Ldev/duo/taskcore/Geometry;
.end method

.method public abstract giveBack(Ljava/util/List;Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldev/duo/taskcore/TaskBinding;",
            ">;",
            "Ldev/duo/taskcore/TaskBinding;",
            "Ldev/duo/taskcore/WorkspaceSession$Done;",
            ")V"
        }
    .end annotation
.end method

.method public giveBackInPlace(Ljava/util/List;Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldev/duo/taskcore/TaskBinding;",
            ">;",
            "Ldev/duo/taskcore/TaskBinding;",
            "Ldev/duo/taskcore/WorkspaceSession$Done;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-interface {p0, p1, p2, p3}, Ldev/duo/taskcore/WorkspaceSession$Platform;->giveBack(Ljava/util/List;Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    return-void
.end method

.method public abstract inspect(I)Ldev/duo/taskcore/TaskBinding$Origin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation
.end method

.method public abstract isolate(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V
.end method

.method public abstract place(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;ZLdev/duo/taskcore/WorkspaceSession$Done;)V
.end method

.method public abstract releaseOwner(Ldev/duo/taskcore/TaskBinding;)Ljava/lang/String;
.end method

.method public releaseToSystem(Ldev/duo/taskcore/TaskBinding;)V
    .locals 0

    .line 74
    return-void
.end method

.method public abstract serverBeginReturn(JLjava/lang/String;)V
.end method

.method public abstract serverFinishReturn(J)Ljava/lang/String;
.end method

.method public abstract serverLayout(JILdev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation
.end method

.method public abstract serverOpen(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation
.end method

.method public abstract serverRelease(JLdev/duo/taskcore/TaskBinding;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation
.end method

.method public abstract serverSnapshot(JLdev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/TaskBinding$Snapshot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation
.end method

.method public abstract takeOwner(Ldev/duo/taskcore/TaskBinding;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation
.end method

.method public takenBySystem(Ldev/duo/taskcore/TaskBinding;)Z
    .locals 0

    .line 80
    const/4 p1, 0x0

    return p1
.end method
