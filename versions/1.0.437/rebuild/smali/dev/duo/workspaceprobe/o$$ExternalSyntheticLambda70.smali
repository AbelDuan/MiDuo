.class public final synthetic Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda70;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/o;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Ldev/duo/taskcore/WorkspaceSession$Done;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/o;[Ljava/lang/String;Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda70;->f$0:Ldev/duo/workspaceprobe/o;

    iput-object p2, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda70;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda70;->f$2:Ldev/duo/taskcore/WorkspaceSession$Done;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda70;->f$0:Ldev/duo/workspaceprobe/o;

    iget-object v1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda70;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda70;->f$2:Ldev/duo/taskcore/WorkspaceSession$Done;

    invoke-static {v0, v1, v2}, Ldev/duo/workspaceprobe/o;->$r8$lambda$lE0-BkGPN_5ydqiWPfHA_TVK4iU(Ldev/duo/workspaceprobe/o;[Ljava/lang/String;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    return-void
.end method
