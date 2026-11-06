.class public final synthetic Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/n;

.field public final synthetic f$1:Ldev/duo/taskcore/Geometry;

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/n;Ldev/duo/taskcore/Geometry;FF)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda34;->f$0:Ldev/duo/workspaceprobe/n;

    iput-object p2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda34;->f$1:Ldev/duo/taskcore/Geometry;

    iput p3, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda34;->f$2:F

    iput p4, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda34;->f$3:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda34;->f$0:Ldev/duo/workspaceprobe/n;

    iget-object v1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda34;->f$1:Ldev/duo/taskcore/Geometry;

    iget v2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda34;->f$2:F

    iget v3, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda34;->f$3:F

    invoke-static {v0, v1, v2, v3, p1}, Ldev/duo/workspaceprobe/n;->$r8$lambda$uwZX3iK4LeW13dLWKtbjZ8MBJTI(Ldev/duo/workspaceprobe/n;Ldev/duo/taskcore/Geometry;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
