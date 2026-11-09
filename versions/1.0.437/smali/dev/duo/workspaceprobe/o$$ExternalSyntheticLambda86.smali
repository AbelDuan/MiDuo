.class public final synthetic Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda86;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/o;

.field public final synthetic f$1:Ldev/duo/taskcore/b;

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/o;Ldev/duo/taskcore/b;FF)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda86;->f$0:Ldev/duo/workspaceprobe/o;

    iput-object p2, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda86;->f$1:Ldev/duo/taskcore/b;

    iput p3, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda86;->f$2:F

    iput p4, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda86;->f$3:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda86;->f$0:Ldev/duo/workspaceprobe/o;

    iget-object v1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda86;->f$1:Ldev/duo/taskcore/b;

    iget v2, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda86;->f$2:F

    iget v3, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda86;->f$3:F

    invoke-static {v0, v1, v2, v3, p1}, Ldev/duo/workspaceprobe/o;->$r8$lambda$pvVKaNwPA-ogFa026ELqR-_nd0k(Ldev/duo/workspaceprobe/o;Ldev/duo/taskcore/b;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
