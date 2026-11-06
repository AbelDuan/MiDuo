.class public final synthetic Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ldev/duo/taskcore/WorkspaceShell$Play;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceShell;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$3:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$4:Ljava/lang/Object;

.field public final synthetic f$5:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda3;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda3;->f$2:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda3;->f$3:Landroid/view/SurfaceControl$Transaction;

    iput-object p5, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Object;

    iput-object p6, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda3;->f$5:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()Z
    .locals 6

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda3;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda3;->f$2:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda3;->f$3:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Object;

    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda3;->f$5:Ljava/lang/Integer;

    invoke-virtual/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceShell;->lambda$startAnimation$57$dev-duo-taskcore-WorkspaceShell(Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method
