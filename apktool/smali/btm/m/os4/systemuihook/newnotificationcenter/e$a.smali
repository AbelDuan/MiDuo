.class Lbtm/m/os4/systemuihook/newnotificationcenter/e$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtm/m/os4/systemuihook/newnotificationcenter/e;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->a()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eq v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->a(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 3
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->b()V

    return-void
.end method
