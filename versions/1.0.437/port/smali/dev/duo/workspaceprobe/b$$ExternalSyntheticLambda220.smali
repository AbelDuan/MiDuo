.class public final synthetic Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda220;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/b;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic f$3:Z

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/b;Ljava/lang/String;Landroid/app/ActivityManager$RunningTaskInfo;ZIZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda220;->f$0:Ldev/duo/workspaceprobe/b;

    iput-object p2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda220;->f$1:Ljava/lang/String;

    iput-object p3, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda220;->f$2:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-boolean p4, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda220;->f$3:Z

    iput p5, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda220;->f$4:I

    iput-boolean p6, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda220;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda220;->f$0:Ldev/duo/workspaceprobe/b;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda220;->f$1:Ljava/lang/String;

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda220;->f$2:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v3, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda220;->f$3:Z

    iget v4, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda220;->f$4:I

    iget-boolean v5, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda220;->f$5:Z

    invoke-static/range {v0 .. v5}, Ldev/duo/workspaceprobe/b;->$r8$lambda$LztjuEQ5vaHeMdzsjh9D_zfDhJQ(Ldev/duo/workspaceprobe/b;Ljava/lang/String;Landroid/app/ActivityManager$RunningTaskInfo;ZIZ)V

    return-void
.end method
