.class public final synthetic Ldev/duo/taskcore/j$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceSession$Done;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda15;->f$0:Ldev/duo/taskcore/WorkspaceSession$Done;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda15;->f$0:Ldev/duo/taskcore/WorkspaceSession$Done;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceShell;->$r8$lambda$jdeLh8DqMm5U153LMUpPB3AHY4k(Ldev/duo/taskcore/WorkspaceSession$Done;)V

    return-void
.end method
