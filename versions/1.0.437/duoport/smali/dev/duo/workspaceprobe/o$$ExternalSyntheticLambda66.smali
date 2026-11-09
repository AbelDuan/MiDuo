.class public final synthetic Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda66;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/o;

.field public final synthetic f$1:Ldev/duo/taskcore/Geometry;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/o;Ldev/duo/taskcore/Geometry;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda66;->f$0:Ldev/duo/workspaceprobe/o;

    iput-object p2, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda66;->f$1:Ldev/duo/taskcore/Geometry;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda66;->f$0:Ldev/duo/workspaceprobe/o;

    iget-object v1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda66;->f$1:Ldev/duo/taskcore/Geometry;

    check-cast p1, Ldev/duo/taskcore/WorkspaceSession;

    invoke-static {v0, v1, p1}, Ldev/duo/workspaceprobe/o;->$r8$lambda$M9FOH8HLnF64QpJoFDkXYHGN1KI(Ldev/duo/workspaceprobe/o;Ldev/duo/taskcore/Geometry;Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method
