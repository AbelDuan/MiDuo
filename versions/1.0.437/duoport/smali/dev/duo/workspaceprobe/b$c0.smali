.class final Ldev/duo/workspaceprobe/b$c0;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c0"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field b:Z

.field c:Z

.field d:F

.field private e:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$xHoB3l74DIWAAOOKNBbdd6cyBu4(Ldev/duo/workspaceprobe/b$c0;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b$c0;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$c0;->a:Landroid/graphics/Paint;

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Ldev/duo/workspaceprobe/b$c0;->d:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Ldev/duo/workspaceprobe/b$c0;->c:Z

    .line 2
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$c0;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    :cond_0
    iget v0, p0, Ldev/duo/workspaceprobe/b$c0;->d:F

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$c0;->e:Landroid/animation/ValueAnimator;

    .line 4
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$c0;->e:Landroid/animation/ValueAnimator;

    invoke-static {}, Ldev/duo/workspaceprobe/b;->c()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$c0;->e:Landroid/animation/ValueAnimator;

    new-instance v0, Ldev/duo/workspaceprobe/b$c0$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ldev/duo/workspaceprobe/b$c0$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/b$c0;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$c0;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    .line 2
    iget-object v1, v0, Ldev/duo/workspaceprobe/b$c0;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v1, v0, Ldev/duo/workspaceprobe/b$c0;->a:Landroid/graphics/Paint;

    iget-boolean v2, v0, Ldev/duo/workspaceprobe/b$c0;->b:Z

    if-eqz v2, :cond_0

    const v2, 0x1fffffff

    goto :goto_0

    :cond_0
    const/high16 v2, 0x14000000

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x3e8f5c29    # 0.28f

    mul-float v6, v4, v1

    .line 6
    iget-object v8, v0, Ldev/duo/workspaceprobe/b$c0;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v7, v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 7
    move v9, v4

    move v10, v5

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$c0;->a:Landroid/graphics/Paint;

    const v11, -0x71716d

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget v2, v0, Ldev/duo/workspaceprobe/b$c0;->d:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v12

    const/high16 v13, 0x437f0000    # 255.0f

    const v14, 0x3e99999a    # 0.3f

    if-gez v3, :cond_2

    .line 10
    iget-object v3, v0, Ldev/duo/workspaceprobe/b$c0;->a:Landroid/graphics/Paint;

    sub-float v2, v12, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 11
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 12
    iget v2, v0, Ldev/duo/workspaceprobe/b$c0;->d:F

    const/high16 v3, 0x42b40000    # 90.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v9, v3

    div-float v5, v10, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 13
    iget v2, v0, Ldev/duo/workspaceprobe/b$c0;->d:F

    mul-float/2addr v2, v14

    sub-float v2, v12, v2

    invoke-virtual {v1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    const v2, 0x3e947ae1    # 0.29f

    mul-float v15, v9, v2

    const v2, 0x3d99999a    # 0.075f

    mul-float v16, v9, v2

    mul-float v2, v15, v3

    sub-float v4, v9, v2

    sub-float v4, v4, v16

    div-float v17, v4, v3

    sub-float v5, v10, v2

    sub-float v5, v5, v16

    div-float v18, v5, v3

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 16
    rem-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    add-float v4, v15, v16

    mul-float/2addr v3, v4

    add-float v3, v17, v3

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v4

    add-float v5, v18, v5

    add-float v4, v3, v15

    move v6, v2

    move v2, v3

    move v3, v5

    add-float v5, v3, v15

    move v7, v6

    mul-float v6, v15, v14

    .line 17
    iget-object v8, v0, Ldev/duo/workspaceprobe/b$c0;->a:Landroid/graphics/Paint;

    move/from16 v19, v7

    move v7, v6

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v19, 0x1

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 21
    :cond_2
    iget v2, v0, Ldev/duo/workspaceprobe/b$c0;->d:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    return-void

    .line 22
    :cond_3
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$c0;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$c0;->a:Landroid/graphics/Paint;

    iget v4, v0, Ldev/duo/workspaceprobe/b$c0;->d:F

    mul-float/2addr v4, v13

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 24
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    neg-float v2, v9

    const v4, 0x3df5c28f    # 0.12f

    mul-float/2addr v2, v4

    .line 25
    iget v4, v0, Ldev/duo/workspaceprobe/b$c0;->d:F

    sub-float/2addr v12, v4

    mul-float/2addr v2, v12

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 26
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$c0;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$c0;->a:Landroid/graphics/Paint;

    const v3, 0x3d6147ae    # 0.055f

    mul-float v4, v9, v3

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$c0;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 29
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$c0;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 30
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    const v3, 0x3edc28f6    # 0.43f

    mul-float v4, v9, v3

    mul-float v5, v10, v14

    .line 31
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    const v3, 0x3f1eb852    # 0.62f

    mul-float/2addr v3, v9

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, v10

    .line 32
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const v3, 0x3f333333    # 0.7f

    mul-float v5, v10, v3

    .line 33
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 34
    iget-object v0, v0, Ldev/duo/workspaceprobe/b$c0;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 35
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
