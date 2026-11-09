.class public final synthetic Ldev/duo/taskcore/j$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceShell;

.field public final synthetic f$1:Ldev/duo/taskcore/WorkspaceSession$Refused;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceShell;Ldev/duo/taskcore/WorkspaceSession$Refused;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda14;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iput-object p2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda14;->f$1:Ldev/duo/taskcore/WorkspaceSession$Refused;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda14;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iget-object v1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda14;->f$1:Ldev/duo/taskcore/WorkspaceSession$Refused;

    invoke-static {v0, v1}, Ldev/duo/taskcore/WorkspaceShell;->$r8$lambda$qVxrbQ-uQMI431nyp5iV6H4v9Ro(Ldev/duo/taskcore/WorkspaceShell;Ldev/duo/taskcore/WorkspaceSession$Refused;)V

    return-void
.end method
