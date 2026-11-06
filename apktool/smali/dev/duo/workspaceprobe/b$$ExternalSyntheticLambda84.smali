.class public final synthetic Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda84;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/b;

.field public final synthetic f$1:Landroid/view/SurfaceControl;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/b;Landroid/view/SurfaceControl;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda84;->f$0:Ldev/duo/workspaceprobe/b;

    iput-object p2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda84;->f$1:Landroid/view/SurfaceControl;

    iput p3, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda84;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda84;->f$0:Ldev/duo/workspaceprobe/b;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda84;->f$1:Landroid/view/SurfaceControl;

    iget v2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda84;->f$2:I

    invoke-static {v0, v1, v2}, Ldev/duo/workspaceprobe/b;->$r8$lambda$4unNVCQrS1EZf_5PqEaCQRmNrsA(Ldev/duo/workspaceprobe/b;Landroid/view/SurfaceControl;I)V

    return-void
.end method
