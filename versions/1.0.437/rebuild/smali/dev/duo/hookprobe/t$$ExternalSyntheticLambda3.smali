.class public final synthetic Ldev/duo/hookprobe/t$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:Ldev/duo/workspaceprobe/b;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;JLandroid/view/View;Ldev/duo/workspaceprobe/b;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda3;->f$0:Landroid/os/IBinder;

    iput-wide p2, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda3;->f$1:J

    iput-object p4, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda3;->f$2:Landroid/view/View;

    iput-object p5, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda3;->f$3:Ldev/duo/workspaceprobe/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda3;->f$0:Landroid/os/IBinder;

    iget-wide v1, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda3;->f$1:J

    iget-object v3, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda3;->f$2:Landroid/view/View;

    iget-object v4, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda3;->f$3:Ldev/duo/workspaceprobe/b;

    invoke-static {v0, v1, v2, v3, v4}, Ldev/duo/hookprobe/t;->$r8$lambda$cTDpC1wgzrCWcLV413dcOCjQpXs(Landroid/os/IBinder;JLandroid/view/View;Ldev/duo/workspaceprobe/b;)V

    return-void
.end method
