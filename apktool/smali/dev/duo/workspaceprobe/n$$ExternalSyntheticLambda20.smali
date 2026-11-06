.class public final synthetic Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/n;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ldev/duo/taskcore/WorkspaceHost;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/n;IILdev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda20;->f$0:Ldev/duo/workspaceprobe/n;

    iput p2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda20;->f$1:I

    iput p3, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda20;->f$2:I

    iput-object p4, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda20;->f$3:Ldev/duo/taskcore/WorkspaceHost;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda20;->f$0:Ldev/duo/workspaceprobe/n;

    iget v1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda20;->f$1:I

    iget v2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda20;->f$2:I

    iget-object v3, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda20;->f$3:Ldev/duo/taskcore/WorkspaceHost;

    check-cast p1, Ldev/duo/taskcore/WorkspaceSession;

    invoke-static {v0, v1, v2, v3, p1}, Ldev/duo/workspaceprobe/n;->$r8$lambda$MaUH7DRk4LgCywrvkQZg1mPyS30(Ldev/duo/workspaceprobe/n;IILdev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method
