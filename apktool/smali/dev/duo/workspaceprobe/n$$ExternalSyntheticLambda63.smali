.class public final synthetic Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda63;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda63;->f$0:I

    iput-object p2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda63;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget v0, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda63;->f$0:I

    iget-object v1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda63;->f$1:Ljava/lang/Object;

    check-cast p1, Ldev/duo/taskcore/WorkspaceSession;

    invoke-static {v0, v1, p1}, Ldev/duo/workspaceprobe/n;->$r8$lambda$Fyznz5nZ6rBX9e4QltU7FsRD2kU(ILjava/lang/Object;Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method
