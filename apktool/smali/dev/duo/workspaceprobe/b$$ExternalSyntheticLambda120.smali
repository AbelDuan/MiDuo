.class public final synthetic Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda120;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/b;

.field public final synthetic f$1:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/b;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda120;->f$0:Ldev/duo/workspaceprobe/b;

    iput-object p2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda120;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p3, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda120;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda120;->f$0:Ldev/duo/workspaceprobe/b;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda120;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda120;->f$2:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Ldev/duo/workspaceprobe/b;->$r8$lambda$RTFhS-B-cYbGwL8Hvz0d7YXkAGA(Ldev/duo/workspaceprobe/b;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V

    return-void
.end method
