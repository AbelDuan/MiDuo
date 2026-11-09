.class public final synthetic Ldev/duo/taskcore/j$$ExternalSyntheticLambda71;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceShell;

.field public final synthetic f$1:Ldev/duo/taskcore/TaskBinding;

.field public final synthetic f$2:Ldev/duo/taskcore/WorkspaceSession$Done;

.field public final synthetic f$3:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceShell;Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda71;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iput-object p2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda71;->f$1:Ldev/duo/taskcore/TaskBinding;

    iput-object p3, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda71;->f$2:Ldev/duo/taskcore/WorkspaceSession$Done;

    iput-object p4, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda71;->f$3:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda71;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iget-object v1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda71;->f$1:Ldev/duo/taskcore/TaskBinding;

    iget-object v2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda71;->f$2:Ldev/duo/taskcore/WorkspaceSession$Done;

    iget-object v3, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda71;->f$3:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Ldev/duo/taskcore/WorkspaceShell;->$r8$lambda$tx0zftJ-6rpMQ5NahJZfCXNKEcY(Ldev/duo/taskcore/WorkspaceShell;Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;Landroid/os/Handler;)V

    return-void
.end method
