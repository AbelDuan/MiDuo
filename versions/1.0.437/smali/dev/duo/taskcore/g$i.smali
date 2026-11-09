.class final Ldev/duo/taskcore/g$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# instance fields
.field final a:Landroid/view/SurfaceControlViewHost;

.field final b:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field final c:Landroid/view/SurfaceControl;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/view/SurfaceControlViewHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldev/duo/taskcore/g$i;->a:Landroid/view/SurfaceControlViewHost;

    .line 3
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/taskcore/g$i;->b:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 4
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/taskcore/g$i;->c:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ldev/duo/taskcore/g$i;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/g$i;->d:Z

    .line 3
    :try_start_0
    iget-object v0, p0, Ldev/duo/taskcore/g$i;->a:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldev/duo/taskcore/g$i;->b:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    return-void

    :catchall_0
    move-exception v0

    .line 4
    iget-object v1, p0, Ldev/duo/taskcore/g$i;->b:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    throw v0
.end method
