.class public final synthetic Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ldev/duo/taskcore/WorkspaceSession$Done;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceSession;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ldev/duo/taskcore/TaskBinding;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceSession;ILdev/duo/taskcore/TaskBinding;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda10;->f$0:Ldev/duo/taskcore/WorkspaceSession;

    iput p2, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda10;->f$1:I

    iput-object p3, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda10;->f$2:Ldev/duo/taskcore/TaskBinding;

    return-void
.end method


# virtual methods
.method public final done(ZLjava/lang/String;)V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda10;->f$0:Ldev/duo/taskcore/WorkspaceSession;

    iget v1, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda10;->f$1:I

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda10;->f$2:Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v0, v1, v2, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->lambda$attachNext$2$dev-duo-taskcore-WorkspaceSession(ILdev/duo/taskcore/TaskBinding;ZLjava/lang/String;)V

    return-void
.end method
