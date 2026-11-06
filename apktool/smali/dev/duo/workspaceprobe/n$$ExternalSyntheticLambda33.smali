.class public final synthetic Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceSession;

.field public final synthetic f$1:[I

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceSession;[I[I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda33;->f$0:Ldev/duo/taskcore/WorkspaceSession;

    iput-object p2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda33;->f$1:[I

    iput-object p3, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda33;->f$2:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda33;->f$0:Ldev/duo/taskcore/WorkspaceSession;

    iget-object v1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda33;->f$1:[I

    iget-object v2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda33;->f$2:[I

    invoke-static {v0, v1, v2}, Ldev/duo/workspaceprobe/n;->$r8$lambda$6falM0xx69hyr-QTiKxrkF8Vz5Y(Ldev/duo/taskcore/WorkspaceSession;[I[I)V

    return-void
.end method
