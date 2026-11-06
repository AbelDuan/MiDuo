.class final Lbtm/m/os4/systemuihook/hypermusiccover/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "[MCGate] "

.field private static final b:Landroid/os/Handler;

.field private static final c:F = 0.045f

.field private static final d:F = 0.1f

.field private static final e:J = 0x15eL

.field private static final f:J = 0xc8L

.field private static final g:Landroid/view/animation/Interpolator;

.field private static final h:J = 0x1770L

.field private static i:Landroid/animation/AnimatorSet;

.field private static j:Z

.field private static volatile k:Z

.field private static final l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/f;->b:Landroid/os/Handler;

    .line 10
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/f;->g:Landroid/view/animation/Interpolator;

    .line 25
    new-instance v0, Lbtm/m/os4/systemuihook/hypermusiccover/f$a;

    invoke-direct {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/f$a;-><init>()V

    sput-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/f;->l:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/View;)V
    .locals 4

    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/f;->k:Z

    .line 16
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/f;->b:Landroid/os/Handler;

    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/f;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    const/4 v0, 0x0

    const-wide/16 v1, 0xc8

    invoke-static {p0, v0, v1, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/f;->a(Landroid/view/View;FJ)V

    return-void
.end method

.method static a(Landroid/view/View;F)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x3d3851ec    # 0.045f

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    .line 2
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/f;->b()V

    .line 3
    sput-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/f;->j:Z

    .line 4
    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/f;->b(Landroid/view/View;)V

    return-void

    :cond_1
    const v0, 0x3dcccccd    # 0.1f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    .line 8
    sget-boolean p1, Lbtm/m/os4/systemuihook/hypermusiccover/f;->j:Z

    if-nez p1, :cond_3

    .line 9
    const/4 p1, 0x1

    sput-boolean p1, Lbtm/m/os4/systemuihook/hypermusiccover/f;->j:Z

    .line 10
    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/f;->d(Landroid/view/View;)V

    return-void

    .line 12
    :cond_2
    sget-boolean p1, Lbtm/m/os4/systemuihook/hypermusiccover/f;->j:Z

    if-eqz p1, :cond_3

    .line 13
    sput-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/f;->j:Z

    .line 14
    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/f;->a(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static a(Landroid/view/View;FJ)V
    .locals 3

    .line 21
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/f;->b()V

    .line 22
    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const-string p1, "alpha"

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 23
    invoke-virtual {p0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 24
    sget-object p1, Lbtm/m/os4/systemuihook/hypermusiccover/f;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 25
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 26
    new-array p2, v0, [Landroid/animation/Animator;

    aput-object p0, p2, v2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 27
    sput-object p1, Lbtm/m/os4/systemuihook/hypermusiccover/f;->i:Landroid/animation/AnimatorSet;

    .line 28
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/f;->k:Z

    return v0
.end method

.method private static b()V
    .locals 2

    .line 6
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/f;->i:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/f;->i:Landroid/animation/AnimatorSet;

    .line 10
    :try_start_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private static b(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/f;->b(Landroid/view/View;F)V

    .line 2
    sget-boolean p0, Lbtm/m/os4/systemuihook/hypermusiccover/f;->k:Z

    if-eqz p0, :cond_0

    return-void

    .line 3
    :cond_0
    const/4 p0, 0x1

    sput-boolean p0, Lbtm/m/os4/systemuihook/hypermusiccover/f;->k:Z

    .line 4
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/f;->b:Landroid/os/Handler;

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/f;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    const-wide/16 v1, 0x1770

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static b(Landroid/view/View;F)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 13
    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[MCGate] could not set the panel\'s alpha: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static c(Landroid/view/View;)V
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/f;->b(Landroid/view/View;F)V

    return-void
.end method

.method static c()Z
    .locals 1

    .line 2
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/f;->k:Z

    return v0
.end method

.method static d()V
    .locals 2

    .line 4
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/f;->b()V

    .line 5
    const/4 v0, 0x0

    sput-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/f;->j:Z

    .line 6
    sput-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/f;->k:Z

    .line 7
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/f;->b:Landroid/os/Handler;

    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/f;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->M()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/f;->c(Landroid/view/View;)V

    return-void
.end method

.method private static d(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    sput-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/f;->k:Z

    .line 2
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/f;->b:Landroid/os/Handler;

    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/f;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    const-wide/16 v1, 0x15e

    invoke-static {p0, v0, v1, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/f;->a(Landroid/view/View;FJ)V

    return-void
.end method
