.class public interface abstract Ldev/duo/taskcore/WorkspaceShell$Events;
.super Ljava/lang/Object;
.source "WorkspaceShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Events"
.end annotation


# virtual methods
.method public acceptsOverlay()Z
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public adopt(ILjava/lang/String;)Z
    .locals 0

    .line 47
    const/4 p1, 0x0

    return p1
.end method

.method public adoptReady(I)V
    .locals 0

    .line 49
    return-void
.end method

.method public canAnimateGroup()Z
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public abstract changed(Ldev/duo/taskcore/WorkspaceSession;)V
.end method

.method public abstract external(Ljava/lang/String;)V
.end method

.method public abstract focused(ILjava/lang/Object;)V
.end method

.method public interstitial(I)V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "non-multi-window task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ldev/duo/taskcore/WorkspaceShell$Events;->external(Ljava/lang/String;)V

    return-void
.end method

.method public abstract isolate([Ljava/lang/String;Ldev/duo/taskcore/WorkspaceSession$Done;)V
.end method

.method public keepsOverlay()Z
    .locals 1

    .line 72
    invoke-interface {p0}, Ldev/duo/taskcore/WorkspaceShell$Events;->acceptsOverlay()Z

    move-result v0

    return v0
.end method

.method public keyguardExitAborted()V
    .locals 0

    .line 74
    return-void
.end method

.method public abstract launched(ILandroid/os/IBinder;)V
.end method

.method public abstract memberToBack(I)V
.end method

.method public abstract memberToFront(I)V
.end method

.method public ownsNotificationLaunch()Z
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public pipFinished(JILjava/lang/Object;Z)V
    .locals 0

    .line 38
    return-void
.end method

.method public pipStarting(JILjava/lang/Object;)V
    .locals 0

    .line 37
    return-void
.end method

.method public recentsReturned()Z
    .locals 1

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public resumeRequested(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 60
    const/4 p1, 0x0

    return p1
.end method

.method public sourceEvent(Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V
    .locals 0

    .line 39
    return-void
.end method

.method public systemSurface(Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-interface {p0, p1}, Ldev/duo/taskcore/WorkspaceShell$Events;->external(Ljava/lang/String;)V

    return-void
.end method

.method public abstract taskChanged(ILjava/lang/Object;II)V
.end method

.method public abstract taskGone(I)V
.end method

.method public unlocking()Landroid/view/SurfaceControl;
    .locals 1

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method
