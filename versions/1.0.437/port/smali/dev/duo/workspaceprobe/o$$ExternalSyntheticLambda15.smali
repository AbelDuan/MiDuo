.class public final synthetic Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda15;->f$0:I

    iput-object p2, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    iput p3, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda15;->f$2:I

    iput p4, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda15;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget v0, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda15;->f$0:I

    iget-object v1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    iget v2, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda15;->f$2:I

    iget v3, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda15;->f$3:I

    check-cast p1, Ldev/duo/taskcore/WorkspaceSession;

    invoke-static {v0, v1, v2, v3, p1}, Ldev/duo/workspaceprobe/o;->$r8$lambda$jWoVd9P7BsOahiwIgvxwd6zXel0(ILjava/lang/Object;IILdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method
