.class public final synthetic Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/o;

.field public final synthetic f$1:Ldev/duo/taskcore/Geometry;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/o;Ldev/duo/taskcore/Geometry;ZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda30;->f$0:Ldev/duo/workspaceprobe/o;

    iput-object p2, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda30;->f$1:Ldev/duo/taskcore/Geometry;

    iput-boolean p3, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda30;->f$2:Z

    iput-object p4, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda30;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda30;->f$0:Ldev/duo/workspaceprobe/o;

    iget-object v1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda30;->f$1:Ldev/duo/taskcore/Geometry;

    iget-boolean v2, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda30;->f$2:Z

    iget-object v3, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda30;->f$3:Ljava/lang/String;

    check-cast p1, Ldev/duo/taskcore/WorkspaceSession;

    invoke-static {v0, v1, v2, v3, p1}, Ldev/duo/workspaceprobe/o;->$r8$lambda$t2QiFl3s86E5QqF1Hp0d6vWTB58(Ldev/duo/workspaceprobe/o;Ldev/duo/taskcore/Geometry;ZLjava/lang/String;Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method
