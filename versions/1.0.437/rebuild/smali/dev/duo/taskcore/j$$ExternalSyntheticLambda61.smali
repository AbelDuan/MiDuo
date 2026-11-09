.class public final synthetic Ldev/duo/taskcore/j$$ExternalSyntheticLambda61;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceShell;

.field public final synthetic f$1:Ldev/duo/taskcore/TaskBinding;

.field public final synthetic f$2:[Ldev/duo/taskcore/TaskBinding;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceShell;Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda61;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iput-object p2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda61;->f$1:Ldev/duo/taskcore/TaskBinding;

    iput-object p3, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda61;->f$2:[Ldev/duo/taskcore/TaskBinding;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda61;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iget-object v1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda61;->f$1:Ldev/duo/taskcore/TaskBinding;

    iget-object v2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda61;->f$2:[Ldev/duo/taskcore/TaskBinding;

    invoke-static {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceShell;->$r8$lambda$23nrtcTNEjzUa0k-i0sNG6z1bew(Ldev/duo/taskcore/WorkspaceShell;Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;)V

    return-void
.end method
