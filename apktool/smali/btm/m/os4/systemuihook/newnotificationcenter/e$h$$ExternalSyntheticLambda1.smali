.class public final synthetic Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/animation/TimeInterpolator;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;IILandroid/animation/TimeInterpolator;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda1;->f$0:Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;

    iput p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda1;->f$3:Landroid/animation/TimeInterpolator;

    iput-boolean p5, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda1;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda1;->f$0:Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;

    iget v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda1;->f$3:Landroid/animation/TimeInterpolator;

    iget-boolean v4, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda1;->f$4:Z

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->$r8$lambda$vS1mhxqrR52PsHtZEezGCSuldtI(Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;IILandroid/animation/TimeInterpolator;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
