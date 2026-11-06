.class public final synthetic Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceHost;

.field public final synthetic f$1:[Ldev/duo/taskcore/TaskBinding;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda10;->f$0:Ldev/duo/taskcore/WorkspaceHost;

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda10;->f$1:[Ldev/duo/taskcore/TaskBinding;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda10;->f$0:Ldev/duo/taskcore/WorkspaceHost;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda10;->f$1:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v0, v1}, Ldev/duo/taskcore/WorkspaceHost;->lambda$sendCardsAway$8$dev-duo-taskcore-WorkspaceHost([Ldev/duo/taskcore/TaskBinding;)V

    return-void
.end method
