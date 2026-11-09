.class public final synthetic Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda16;->f$0:Z

    iput-boolean p2, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda16;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda16;->f$0:Z

    iget-boolean v1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda16;->f$1:Z

    check-cast p1, Ldev/duo/taskcore/WorkspaceSession;

    invoke-static {v0, v1, p1}, Ldev/duo/workspaceprobe/o;->$r8$lambda$fE_F7Y1AJm7OYDNu4MV5swgNLXk(ZZLdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method
