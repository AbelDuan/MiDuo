.class final Ldev/duo/workspaceprobe/b$Q;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Q"
.end annotation


# static fields
.field static final i:I = 0x88

.field private static final j:F = 58.0f

.field private static final k:F = 4.5f


# instance fields
.field private final a:I

.field b:I

.field private c:F

.field private final d:Landroid/graphics/Paint;

.field private final e:Ldev/duo/workspaceprobe/b$N;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Path;

.field private final h:Landroid/graphics/Path;


# direct methods
.method public static synthetic $r8$lambda$0_Jkcu_f0qFDgW0Z_KtbjGC3KFQ(Ldev/duo/workspaceprobe/b$Q;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/b$Q;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ELC4XycirZKl2O1qZFuN23rbXVw(Ldev/duo/workspaceprobe/b$Q;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b$Q;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 p1, -0x1

    iput p1, p0, Ldev/duo/workspaceprobe/b$Q;->b:I

    .line 3
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Ldev/duo/workspaceprobe/b$Q;->c:F

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$Q;->d:Landroid/graphics/Paint;

    .line 5
    new-instance v1, Ldev/duo/workspaceprobe/b$N;

    const/high16 v2, 0x42680000    # 58.0f

    invoke-direct {v1, v2, v0}, Ldev/duo/workspaceprobe/b$N;-><init>(FI)V

    iput-object v1, p0, Ldev/duo/workspaceprobe/b$Q;->e:Ldev/duo/workspaceprobe/b$N;

    .line 6
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Ldev/duo/workspaceprobe/b$Q;->f:Landroid/graphics/Paint;

    .line 7
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->g:Landroid/graphics/Path;

    .line 8
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->h:Landroid/graphics/Path;

    .line 11
    iput p2, p0, Ldev/duo/workspaceprobe/b$Q;->a:I

    .line 13
    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/high16 v4, 0x42880000    # 68.0f

    invoke-virtual {v0, v4, v4, v2, p2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 14
    const p2, 0x1ffffff

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    const/high16 p2, 0x40e00000    # 7.0f

    const/4 v0, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v4, 0x14000000

    invoke-virtual {p1, p2, v0, v2, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 16
    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/high16 v0, 0x42fc0000    # 126.0f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, p2, p1, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    const/high16 p1, 0x40900000    # 4.5f

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 20
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 21
    new-instance p1, Ldev/duo/workspaceprobe/b$Q$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Ldev/duo/workspaceprobe/b$Q$$ExternalSyntheticLambda1;-><init>(Ldev/duo/workspaceprobe/b$Q;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/b$Q;)Ldev/duo/workspaceprobe/b$N;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/workspaceprobe/b$Q;->e:Ldev/duo/workspaceprobe/b$N;

    return-object p0
.end method

.method private a(FFJ)V
    .locals 2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 6
    iget p1, p0, Ldev/duo/workspaceprobe/b$Q;->c:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    new-instance p2, Ldev/duo/workspaceprobe/b$Q$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Ldev/duo/workspaceprobe/b$Q$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/b$Q;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 10
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Ldev/duo/workspaceprobe/b$Q;->c:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static a(Landroid/graphics/Path;FFFFF)V
    .locals 15

    const/high16 v0, 0x40100000    # 2.25f

    sub-float v2, p1, v0

    sub-float v3, p2, v0

    add-float v4, p3, v0

    add-float v5, p4, v0

    add-float v6, p5, v0

    .line 11
    sget-object v14, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v7, v6

    move-object v1, p0

    move-object v8, v14

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    add-float v8, p1, v0

    add-float v9, p2, v0

    sub-float v10, p3, v0

    sub-float v11, p4, v0

    sub-float v0, p5, v0

    .line 14
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v12

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 15
    move-object v7, p0

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    const p1, 0x3f733333    # 0.95f

    const p2, 0x3f0ccccd    # 0.55f

    const-wide/16 v0, 0x5a

    invoke-direct {p0, p1, p2, v0, v1}, Ldev/duo/workspaceprobe/b$Q;->a(FFJ)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 4
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    const-wide/16 v0, 0xb4

    invoke-direct {p0, p1, p1, v0, v1}, Ldev/duo/workspaceprobe/b$Q;->a(FFJ)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->h:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 3
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x42640000    # 57.0f

    const/high16 v2, 0x42880000    # 68.0f

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->e:Ldev/duo/workspaceprobe/b$N;

    invoke-virtual {v0, p1}, Ldev/duo/workspaceprobe/b$N;->draw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-static {}, Ldev/duo/workspaceprobe/b;->a()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->f:Landroid/graphics/Paint;

    iget v1, p0, Ldev/duo/workspaceprobe/b$Q;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->f:Landroid/graphics/Paint;

    iget v1, p0, Ldev/duo/workspaceprobe/b$Q;->c:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 9
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 10
    iget v0, p0, Ldev/duo/workspaceprobe/b$Q;->a:I

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->g:Landroid/graphics/Path;

    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v3, 0x42960000    # 75.0f

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->g:Landroid/graphics/Path;

    const/high16 v1, 0x42680000    # 58.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->g:Landroid/graphics/Path;

    const/high16 v1, 0x42ac0000    # 86.0f

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->g:Landroid/graphics/Path;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$Q;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->g:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 21
    iget v0, p0, Ldev/duo/workspaceprobe/b$Q;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 25
    rem-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v1, v2

    const/high16 v3, 0x423c0000    # 47.0f

    add-float v5, v1, v3

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float v6, v1, v3

    .line 26
    iget-object v4, p0, Ldev/duo/workspaceprobe/b$Q;->g:Landroid/graphics/Path;

    const/high16 v1, 0x41900000    # 18.0f

    add-float v7, v5, v1

    add-float v8, v6, v1

    const/high16 v9, 0x40d00000    # 6.5f

    invoke-static/range {v4 .. v9}, Ldev/duo/workspaceprobe/b$Q;->a(Landroid/graphics/Path;FFFFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->g:Landroid/graphics/Path;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$Q;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 31
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 32
    const/high16 v0, 0x42340000    # 45.0f

    const/high16 v1, 0x42540000    # 53.0f

    const/high16 v2, 0x42a60000    # 83.0f

    const/high16 v3, 0x42ba0000    # 93.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipOutRect(FFFF)Z

    .line 33
    iget-object v4, p0, Ldev/duo/workspaceprobe/b$Q;->g:Landroid/graphics/Path;

    const/high16 v8, 0x429c0000    # 78.0f

    const/high16 v9, 0x41080000    # 8.5f

    const/high16 v5, 0x42680000    # 58.0f

    const/high16 v6, 0x42400000    # 48.0f

    const/high16 v7, 0x42ac0000    # 86.0f

    invoke-static/range {v4 .. v9}, Ldev/duo/workspaceprobe/b$Q;->a(Landroid/graphics/Path;FFFFF)V

    .line 34
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->g:Landroid/graphics/Path;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$Q;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 36
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 37
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$Q;->g:Landroid/graphics/Path;

    const/high16 v5, 0x42b00000    # 88.0f

    const/high16 v6, 0x41080000    # 8.5f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x42680000    # 58.0f

    const/high16 v4, 0x429c0000    # 78.0f

    invoke-static/range {v1 .. v6}, Ldev/duo/workspaceprobe/b$Q;->a(Landroid/graphics/Path;FFFFF)V

    .line 38
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$Q;->g:Landroid/graphics/Path;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$Q;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
