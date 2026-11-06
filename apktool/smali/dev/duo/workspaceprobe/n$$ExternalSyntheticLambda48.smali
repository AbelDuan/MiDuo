.class public final synthetic Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/n;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/n;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda48;->f$0:Ldev/duo/workspaceprobe/n;

    iput p2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda48;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda48;->f$0:Ldev/duo/workspaceprobe/n;

    iget v1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda48;->f$1:I

    check-cast p1, Ldev/duo/taskcore/WorkspaceSession;

    invoke-static {v0, v1, p1}, Ldev/duo/workspaceprobe/n;->$r8$lambda$kZxaLHPL3_ltSGt1Qgf-MJ8NDrA(Ldev/duo/workspaceprobe/n;ILdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method
