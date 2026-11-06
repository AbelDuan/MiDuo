.class public final synthetic Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda65;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/n;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/n;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda65;->f$0:Ldev/duo/workspaceprobe/n;

    iput p2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda65;->f$1:I

    iput p3, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda65;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda65;->f$0:Ldev/duo/workspaceprobe/n;

    iget v1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda65;->f$1:I

    iget v2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda65;->f$2:I

    check-cast p1, Ldev/duo/taskcore/WorkspaceSession;

    invoke-static {v0, v1, v2, p1}, Ldev/duo/workspaceprobe/n;->$r8$lambda$_EwlhSwGdcoTEsfwJudxBr7fteQ(Ldev/duo/workspaceprobe/n;IILdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method
