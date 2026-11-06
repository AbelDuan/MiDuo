.class public final synthetic Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ldev/duo/taskcore/WorkspaceSession$Done;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceSession;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceSession;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda3;->f$0:Ldev/duo/taskcore/WorkspaceSession;

    iput p2, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final done(ZLjava/lang/String;)V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda3;->f$0:Ldev/duo/taskcore/WorkspaceSession;

    iget v1, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda3;->f$1:I

    invoke-virtual {v0, v1, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->lambda$mainLeftToHome$11$dev-duo-taskcore-WorkspaceSession(IZLjava/lang/String;)V

    return-void
.end method
