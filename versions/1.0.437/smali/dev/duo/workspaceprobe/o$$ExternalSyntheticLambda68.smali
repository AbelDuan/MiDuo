.class public final synthetic Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda68;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/o;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ldev/duo/taskcore/b;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/o;ZLdev/duo/taskcore/b;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda68;->f$0:Ldev/duo/workspaceprobe/o;

    iput-boolean p2, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda68;->f$1:Z

    iput-object p3, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda68;->f$2:Ldev/duo/taskcore/b;

    iput-boolean p4, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda68;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda68;->f$0:Ldev/duo/workspaceprobe/o;

    iget-boolean v1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda68;->f$1:Z

    iget-object v2, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda68;->f$2:Ldev/duo/taskcore/b;

    iget-boolean v3, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda68;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Ldev/duo/workspaceprobe/o;->$r8$lambda$uEoq8iirZSASfQ-zvgRKNvbo8H4(Ldev/duo/workspaceprobe/o;ZLdev/duo/taskcore/b;Z)V

    return-void
.end method
