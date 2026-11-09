.class Ldev/duo/taskcore/WorkspaceHost$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldev/duo/taskcore/Frames$Scheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/taskcore/WorkspaceHost;


# direct methods
.method constructor <init>(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$2;->a:Ldev/duo/taskcore/WorkspaceHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldev/duo/taskcore/Frames$Driver;)V
    .locals 1

    .line 1
    iget-object v0, p1, Ldev/duo/taskcore/Frames$Driver;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ldev/duo/taskcore/g$b$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ldev/duo/taskcore/g$b$$ExternalSyntheticLambda0;-><init>(Ldev/duo/taskcore/Frames$Driver;)V

    iput-object v0, p1, Ldev/duo/taskcore/Frames$Driver;->b:Ljava/lang/Object;

    .line 2
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p1, p1, Ldev/duo/taskcore/Frames$Driver;->b:Ljava/lang/Object;

    check-cast p1, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public b(Ldev/duo/taskcore/Frames$Driver;)V
    .locals 1

    .line 1
    iget-object v0, p1, Ldev/duo/taskcore/Frames$Driver;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p1, p1, Ldev/duo/taskcore/Frames$Driver;->b:Ljava/lang/Object;

    check-cast p1, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method
