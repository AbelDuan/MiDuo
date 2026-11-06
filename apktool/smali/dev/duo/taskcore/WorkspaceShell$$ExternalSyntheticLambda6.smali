.class public final synthetic Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ldev/duo/taskcore/WorkspaceSession$Done;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Ldev/duo/taskcore/WorkspaceSession$Done;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda6;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda6;->f$1:Landroid/os/Handler;

    iput-object p3, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda6;->f$2:Ldev/duo/taskcore/WorkspaceSession$Done;

    return-void
.end method


# virtual methods
.method public final done(ZLjava/lang/String;)V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda6;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda6;->f$1:Landroid/os/Handler;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda6;->f$2:Ldev/duo/taskcore/WorkspaceSession$Done;

    invoke-static {v0, v1, v2, p1, p2}, Ldev/duo/taskcore/WorkspaceShell;->lambda$isolate$65(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;Ldev/duo/taskcore/WorkspaceSession$Done;ZLjava/lang/String;)V

    return-void
.end method
