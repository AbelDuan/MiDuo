.class public final synthetic Ldev/duo/workspaceprobe/p$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/p;

.field public final synthetic f$1:Landroid/net/LocalServerSocket;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/p;Landroid/net/LocalServerSocket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/p$$ExternalSyntheticLambda1;->f$0:Ldev/duo/workspaceprobe/p;

    iput-object p2, p0, Ldev/duo/workspaceprobe/p$$ExternalSyntheticLambda1;->f$1:Landroid/net/LocalServerSocket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/p$$ExternalSyntheticLambda1;->f$0:Ldev/duo/workspaceprobe/p;

    iget-object v1, p0, Ldev/duo/workspaceprobe/p$$ExternalSyntheticLambda1;->f$1:Landroid/net/LocalServerSocket;

    invoke-static {v0, v1}, Ldev/duo/workspaceprobe/p;->$r8$lambda$g3ZnLkNzcIKLyG-iIsnxy1I6P78(Ldev/duo/workspaceprobe/p;Landroid/net/LocalServerSocket;)V

    return-void
.end method
