.class public final synthetic Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda51;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/n;

.field public final synthetic f$1:Ldev/duo/taskcore/WorkspaceSession;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/n;Ldev/duo/taskcore/WorkspaceSession;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda51;->f$0:Ldev/duo/workspaceprobe/n;

    iput-object p2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda51;->f$1:Ldev/duo/taskcore/WorkspaceSession;

    iput-object p3, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda51;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda51;->f$0:Ldev/duo/workspaceprobe/n;

    iget-object v1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda51;->f$1:Ldev/duo/taskcore/WorkspaceSession;

    iget-object v2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda51;->f$2:Ljava/util/function/Consumer;

    invoke-static {v0, v1, v2}, Ldev/duo/workspaceprobe/n;->$r8$lambda$8WAIe6E6dGgp5wBkPsSw8ckiE9c(Ldev/duo/workspaceprobe/n;Ldev/duo/taskcore/WorkspaceSession;Ljava/util/function/Consumer;)V

    return-void
.end method
