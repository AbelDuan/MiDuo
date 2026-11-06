.class public final synthetic Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceHost;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda15;->f$0:Ldev/duo/taskcore/WorkspaceHost;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda15;->f$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost;->lambda$close$15$dev-duo-taskcore-WorkspaceHost()V

    return-void
.end method
