.class final Lbtm/m/os4/systemuihook/hypermusiccover/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtm/m/os4/systemuihook/hypermusiccover/i$a;
    }
.end annotation


# static fields
.field private static final k:F = 0.004f

.field private static final l:F = 0.002f

.field private static final m:F = 0.02f

.field private static final n:F = 0.064f

.field private static o:Landroid/view/Choreographer;


# instance fields
.field a:F

.field b:F

.field c:F

.field private final d:Lbtm/m/os4/systemuihook/hypermusiccover/i$a;

.field private e:F

.field private f:F

.field private g:F

.field private h:Z

.field private i:Z

.field private j:J


# direct methods
.method constructor <init>(Lbtm/m/os4/systemuihook/hypermusiccover/i$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->a:F

    .line 3
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->b:F

    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->c:F

    .line 16
    iput-object p1, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->d:Lbtm/m/os4/systemuihook/hypermusiccover/i$a;

    return-void
.end method

.method private static a()Landroid/view/Choreographer;
    .locals 1

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->o:Landroid/view/Choreographer;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    .line 4
    sput-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->o:Landroid/view/Choreographer;

    :cond_0
    return-object v0
.end method

.method private b(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    return v0

    .line 4
    :cond_0
    iget v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->c:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method private b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->i:Z

    .line 3
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->a()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method private d(F)V
    .locals 7

    const v0, 0x3b83126f    # 0.004f

    div-float v0, p1, v0

    float-to-double v0, v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    int-to-float v1, v0

    div-float/2addr p1, v1

    .line 10
    iget v1, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->b:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->a:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    iget v3, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->a:F

    neg-float v3, v3

    iget v4, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->e:F

    iget v5, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->g:F

    sub-float v5, v4, v5

    mul-float/2addr v3, v5

    iget v5, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->f:F

    mul-float v6, v1, v5

    sub-float/2addr v3, v6

    mul-float/2addr v3, p1

    add-float/2addr v5, v3

    .line 13
    iput v5, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->f:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    .line 14
    iput v4, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->e:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method a(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 5
    :cond_0
    iget v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->c:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    .line 6
    :cond_1
    iput p1, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->g:F

    .line 7
    const/4 p1, 0x1

    iput-boolean p1, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->h:Z

    .line 23
    invoke-direct {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->b()V

    return-void
.end method

.method a(FFF)V
    .locals 2

    .line 24
    invoke-virtual {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->d()V

    .line 25
    invoke-direct {p0, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->b(F)F

    move-result p1

    iput p1, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->e:F

    .line 26
    iput p3, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->f:F

    .line 27
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->j:J

    .line 28
    invoke-virtual {p0, p2}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->a(F)V

    return-void
.end method

.method c(F)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->d()V

    .line 3
    invoke-direct {p0, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->b(F)F

    move-result p1

    iput p1, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->e:F

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->f:F

    .line 14
    iget-object v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->d:Lbtm/m/os4/systemuihook/hypermusiccover/i$a;

    invoke-interface {v0, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/i$a;->a(F)V

    return-void
.end method

.method c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->h:Z

    return v0
.end method

.method d()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->h:Z

    .line 2
    const/4 v1, 0x0

    iput v1, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->f:F

    .line 5
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->a()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 6
    iput-boolean v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->i:Z

    return-void
.end method

.method public doFrame(J)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->i:Z

    .line 2
    iget-boolean v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-wide v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->j:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 6
    iput-wide p1, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->j:J

    .line 7
    invoke-direct {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->b()V

    return-void

    :cond_1
    sub-long v0, p1, v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    .line 11
    iput-wide p1, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->j:J

    const/4 p1, 0x0

    cmpg-float p2, v0, p1

    if-gtz p2, :cond_2

    .line 13
    invoke-direct {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->b()V

    return-void

    :cond_2
    const p2, 0x3d83126f    # 0.064f

    cmpl-float v1, v0, p2

    if-lez v1, :cond_3

    move v0, p2

    .line 18
    :cond_3
    invoke-direct {p0, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->d(F)V

    .line 19
    iget p2, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->e:F

    invoke-direct {p0, p2}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->b(F)F

    move-result p2

    iput p2, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->e:F

    .line 20
    iget-object v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->d:Lbtm/m/os4/systemuihook/hypermusiccover/i$a;

    invoke-interface {v0, p2}, Lbtm/m/os4/systemuihook/hypermusiccover/i$a;->a(F)V

    .line 22
    iget p2, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->e:F

    iget v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->g:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v0, 0x3b03126f    # 0.002f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_4

    iget p2, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->f:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v0, 0x3ca3d70a    # 0.02f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_4

    .line 23
    iget p2, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->g:F

    iput p2, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->e:F

    .line 24
    iput p1, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->f:F

    .line 25
    iget-object p1, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->d:Lbtm/m/os4/systemuihook/hypermusiccover/i$a;

    invoke-interface {p1, p2}, Lbtm/m/os4/systemuihook/hypermusiccover/i$a;->a(F)V

    .line 26
    invoke-virtual {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->d()V

    return-void

    .line 28
    :cond_4
    invoke-direct {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->b()V

    return-void
.end method

.method e()F
    .locals 1

    .line 1
    iget v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->e:F

    return v0
.end method
