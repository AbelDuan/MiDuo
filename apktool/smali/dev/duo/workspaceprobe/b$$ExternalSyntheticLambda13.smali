.class public final synthetic Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda13;->f$0:Landroid/view/SurfaceControl;

    iput p2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda13;->f$1:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda13;->f$0:Landroid/view/SurfaceControl;

    iget v1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda13;->f$1:I

    invoke-static {v0, v1, p1}, Ldev/duo/workspaceprobe/b;->$r8$lambda$xTlBTWPJAjGhS2mxfYeUNAcsgvE(Landroid/view/SurfaceControl;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
