.class public interface abstract Ldev/duo/taskcore/WorkspaceSession$Platform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Platform"
.end annotation


# virtual methods
.method public abstract a()Ldev/duo/taskcore/Geometry;
.end method

.method public abstract a(J)Ljava/lang/String;
.end method

.method public a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract a(JILdev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation
.end method

.method public abstract a(JLdev/duo/taskcore/TaskBinding;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation
.end method

.method public abstract a(JLjava/lang/String;)V
.end method

.method public abstract a(Ldev/duo/taskcore/TaskBinding;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation
.end method

.method public abstract a(Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V
.end method

.method public abstract a(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V
.end method

.method public a(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 0

    .line 3
    const-string p1, "nothing to bring"

    const/4 p2, 0x1

    invoke-interface {p4, p2, p1}, Ldev/duo/taskcore/WorkspaceSession$Done;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public abstract a(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;ZLdev/duo/taskcore/WorkspaceSession$Done;)V
.end method

.method public abstract a(Ldev/duo/taskcore/WorkspaceSession;)V
.end method

.method public a(Ljava/util/List;Ldev/duo/taskcore/Geometry;Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldev/duo/taskcore/TaskBinding;",
            ">;",
            "Ldev/duo/taskcore/Geometry;",
            "Ldev/duo/taskcore/WorkspaceSession$Done;",
            ")V"
        }
    .end annotation

    .line 2
    const-string p1, "relayout unsupported"

    const/4 p2, 0x0

    invoke-interface {p3, p2, p1}, Ldev/duo/taskcore/WorkspaceSession$Done;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V
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

    .line 4
    invoke-interface {p0, p1, p2, p3}, Ldev/duo/taskcore/WorkspaceSession$Platform;->b(Ljava/util/List;Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    return-void
.end method

.method public b(I)I
    .locals 0

    .line 1
    const/4 p1, -0x1

    return p1
.end method

.method public abstract b(JLdev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/TaskBinding$Snapshot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation
.end method

.method public abstract b(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation
.end method

.method public abstract b(Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V
.end method

.method public abstract b(Ljava/util/List;Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V
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

.method public abstract b(Ldev/duo/taskcore/TaskBinding;)Z
.end method

.method public abstract c(I)Ldev/duo/taskcore/TaskBinding$Origin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation
.end method

.method public abstract c(Ldev/duo/taskcore/TaskBinding;)V
.end method

.method public abstract d(Ldev/duo/taskcore/TaskBinding;)Ljava/lang/String;
.end method

.method public e(Ldev/duo/taskcore/TaskBinding;)V
    .locals 0

    return-void
.end method

.method public f(Ldev/duo/taskcore/TaskBinding;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
