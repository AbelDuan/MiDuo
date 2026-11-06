.class public final synthetic Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceShell;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ldev/duo/taskcore/TaskBinding;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/Object;Ldev/duo/taskcore/TaskBinding;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda2;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda2;->f$2:Ldev/duo/taskcore/TaskBinding;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda2;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda2;->f$2:Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceShell;->lambda$destroyHost$60$dev-duo-taskcore-WorkspaceShell(Ljava/lang/Object;Ldev/duo/taskcore/TaskBinding;)V

    return-void
.end method
