.class public final synthetic Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/n;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/n;Landroid/os/IBinder;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda41;->f$0:Ldev/duo/workspaceprobe/n;

    iput-object p2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda41;->f$1:Landroid/os/IBinder;

    iput p3, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda41;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda41;->f$0:Ldev/duo/workspaceprobe/n;

    iget-object v1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda41;->f$1:Landroid/os/IBinder;

    iget v2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda41;->f$2:I

    invoke-static {v0, v1, v2}, Ldev/duo/workspaceprobe/n;->$r8$lambda$ZS8SZg-tQJDwpSbVLma3tSqXeRo(Ldev/duo/workspaceprobe/n;Landroid/os/IBinder;I)V

    return-void
.end method
