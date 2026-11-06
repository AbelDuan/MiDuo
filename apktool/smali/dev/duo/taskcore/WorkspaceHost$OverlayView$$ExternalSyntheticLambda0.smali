.class public final synthetic Ldev/duo/taskcore/WorkspaceHost$OverlayView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceHost$OverlayView;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceHost$OverlayView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$$ExternalSyntheticLambda0;->f$0:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$$ExternalSyntheticLambda0;->f$0:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {v0, p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->lambda$showBar$0$dev-duo-taskcore-WorkspaceHost$OverlayView(Landroid/animation/ValueAnimator;)V

    return-void
.end method
