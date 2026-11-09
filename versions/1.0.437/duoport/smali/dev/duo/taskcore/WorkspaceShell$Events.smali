.class public interface abstract Ldev/duo/taskcore/WorkspaceShell$Events;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Events"
.end annotation


# virtual methods
.method public abstract a(ILandroid/os/IBinder;)V
.end method

.method public abstract a(ILjava/lang/Object;)V
.end method

.method public abstract a(ILjava/lang/Object;II)V
.end method

.method public a(JILjava/lang/Object;)V
    .locals 0

    .line 3
    return-void
.end method

.method public a(JILjava/lang/Object;Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V
    .locals 0

    .line 5
    return-void
.end method

.method public abstract a(Ldev/duo/taskcore/WorkspaceSession;)V
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-interface {p0, p1}, Ldev/duo/taskcore/WorkspaceShell$Events;->b(Ljava/lang/String;)V

    return-void
.end method

.method public abstract a([Ljava/lang/String;Ldev/duo/taskcore/WorkspaceSession$Done;)V
.end method

.method public a(ILjava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 4
    const/4 p1, 0x0

    return p1
.end method

.method public abstract b(I)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract c(I)V
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public abstract d(I)V
.end method

.method public e()V
    .locals 0

    .line 2
    return-void
.end method

.method public e(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    invoke-interface {p0}, Ldev/duo/taskcore/WorkspaceShell$Events;->k()Z

    move-result v0

    return v0
.end method

.method public h(I)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "non-multi-window task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ldev/duo/taskcore/WorkspaceShell$Events;->b(Ljava/lang/String;)V

    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public i()Landroid/view/SurfaceControl;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
