.class public final synthetic Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ldev/duo/taskcore/WorkspaceSession$Done;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceSession;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ldev/duo/taskcore/TaskBinding;

.field public final synthetic f$3:Ldev/duo/taskcore/TaskBinding;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceSession;ILdev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/TaskBinding;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda0;->f$0:Ldev/duo/taskcore/WorkspaceSession;

    iput p2, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda0;->f$2:Ldev/duo/taskcore/TaskBinding;

    iput-object p4, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda0;->f$3:Ldev/duo/taskcore/TaskBinding;

    iput-boolean p5, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda0;->f$4:Z

    iput-boolean p6, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda0;->f$5:Z

    return-void
.end method


# virtual methods
.method public final done(ZLjava/lang/String;)V
    .locals 8

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda0;->f$0:Ldev/duo/taskcore/WorkspaceSession;

    iget v1, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda0;->f$2:Ldev/duo/taskcore/TaskBinding;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda0;->f$3:Ldev/duo/taskcore/TaskBinding;

    iget-boolean v4, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda0;->f$4:Z

    iget-boolean v5, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda0;->f$5:Z

    move v6, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Ldev/duo/taskcore/WorkspaceSession;->lambda$insertIncoming$10$dev-duo-taskcore-WorkspaceSession(ILdev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/TaskBinding;ZZZLjava/lang/String;)V

    return-void
.end method
