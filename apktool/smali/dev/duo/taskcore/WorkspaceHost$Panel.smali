.class final Ldev/duo/taskcore/WorkspaceHost$Panel;
.super Ljava/lang/Object;
.source "WorkspaceHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Panel"
.end annotation


# instance fields
.field final host:Landroid/view/SurfaceControlViewHost;

.field final pkg:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private released:Z

.field final surface:Landroid/view/SurfaceControl;


# direct methods
.method constructor <init>(Landroid/view/SurfaceControlViewHost;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$Panel;->host:Landroid/view/SurfaceControlViewHost;

    .line 113
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$Panel;->pkg:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 114
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$Panel;->pkg:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$Panel;->surface:Landroid/view/SurfaceControl;

    .line 115
    return-void
.end method


# virtual methods
.method release()V
    .locals 2

    .line 118
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost$Panel;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost$Panel;->released:Z

    .line 120
    :try_start_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$Panel;->host:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$Panel;->pkg:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$Panel;->pkg:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    throw v0
.end method
