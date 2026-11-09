.class final Ldev/duo/workspaceprobe/b$S;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "S"
.end annotation


# static fields
.field static final e:I = 0x30

.field private static final f:F = 20.0f


# instance fields
.field a:I

.field b:Z

.field private final c:Ldev/duo/workspaceprobe/b$N;

.field private final d:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$OoB1M9mw1V592TQWF6DpeBwojJ8(Ldev/duo/workspaceprobe/b$S;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/b$S;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    const p1, -0xcfcdc8

    iput p1, p0, Ldev/duo/workspaceprobe/b$S;->a:I

    .line 4
    new-instance p1, Ldev/duo/workspaceprobe/b$N;

    const/high16 v0, 0x41a00000    # 20.0f

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Ldev/duo/workspaceprobe/b$N;-><init>(FI)V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$S;->c:Ldev/duo/workspaceprobe/b$N;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$S;->d:Landroid/graphics/Paint;

    .line 9
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p1, v2, v1, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 11
    new-instance p1, Ldev/duo/workspaceprobe/b$S$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Ldev/duo/workspaceprobe/b$S$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/b$S;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/b$S;)Ldev/duo/workspaceprobe/b$N;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/workspaceprobe/b$S;->c:Ldev/duo/workspaceprobe/b$N;

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x3f666666    # 0.9f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x5a

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$S;->c:Ldev/duo/workspaceprobe/b$N;

    invoke-virtual {v2, p1}, Ldev/duo/workspaceprobe/b$N;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-static {}, Ldev/duo/workspaceprobe/b;->a()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3
    iget-boolean v2, p0, Ldev/duo/workspaceprobe/b$S;->b:Z

    if-eqz v2, :cond_0

    const v3, -0xdca535

    goto :goto_0

    :cond_0
    iget v3, p0, Ldev/duo/workspaceprobe/b$S;->a:I

    :goto_0
    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v4, 0x41c00000    # 24.0f

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$S;->d:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$S;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$S;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$S;->d:Landroid/graphics/Paint;

    const/high16 v5, 0x41940000    # 18.5f

    invoke-virtual {p1, v4, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 10
    :cond_1
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$S;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    const v2, 0x3f555555

    invoke-virtual {p1, v2, v2, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 13
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$S;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$S;->d:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    iget-object v6, p0, Ldev/duo/workspaceprobe/b$S;->d:Landroid/graphics/Paint;

    const/high16 v4, 0x41d80000    # 27.0f

    const/high16 v5, 0x41a80000    # 21.0f

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x42000000    # 32.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 16
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$S;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 17
    iget-object v6, p0, Ldev/duo/workspaceprobe/b$S;->d:Landroid/graphics/Paint;

    const/high16 v4, 0x41f80000    # 31.0f

    const/high16 v5, 0x41c80000    # 25.0f

    const/high16 v2, 0x41b80000    # 23.0f

    const/high16 v3, 0x41880000    # 17.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 18
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$S;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$S;->d:Landroid/graphics/Paint;

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v3, 0x40900000    # 4.5f

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {p1, v4, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
