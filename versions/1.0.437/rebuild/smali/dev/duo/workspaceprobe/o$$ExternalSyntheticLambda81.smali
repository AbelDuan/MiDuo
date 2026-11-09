.class public final synthetic Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda81;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JILjava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda81;->f$0:J

    iput p3, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda81;->f$1:I

    iput-object p4, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda81;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-wide v0, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda81;->f$0:J

    iget v2, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda81;->f$1:I

    iget-object v3, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda81;->f$2:Ljava/lang/Object;

    check-cast p1, Ldev/duo/taskcore/WorkspaceSession;

    invoke-static {v0, v1, v2, v3, p1}, Ldev/duo/workspaceprobe/o;->$r8$lambda$HnvNJ4cqRtYEapUG3DMOar5ybio(JILjava/lang/Object;Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method
