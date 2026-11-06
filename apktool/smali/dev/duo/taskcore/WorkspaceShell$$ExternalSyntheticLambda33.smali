.class public final synthetic Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceShell$Events;

.field public final synthetic f$1:Ldev/duo/taskcore/TaskBinding;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceShell$Events;Ldev/duo/taskcore/TaskBinding;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda33;->f$0:Ldev/duo/taskcore/WorkspaceShell$Events;

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda33;->f$1:Ldev/duo/taskcore/TaskBinding;

    iput-boolean p3, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda33;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda33;->f$0:Ldev/duo/taskcore/WorkspaceShell$Events;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda33;->f$1:Ldev/duo/taskcore/TaskBinding;

    iget-boolean v2, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda33;->f$2:Z

    invoke-static {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceShell;->lambda$install$17(Ldev/duo/taskcore/WorkspaceShell$Events;Ldev/duo/taskcore/TaskBinding;Z)V

    return-void
.end method
