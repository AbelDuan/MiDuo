.class final Ldev/duo/workspaceprobe/k;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/RectF;

.field private c:Z

.field private final d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/workspaceprobe/k;->a:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/k;->b:Landroid/graphics/RectF;

    .line 10
    iput-boolean p2, p0, Ldev/duo/workspaceprobe/k;->d:Z

    .line 11
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ldev/duo/workspaceprobe/k;->c:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget-boolean v1, p0, Ldev/duo/workspaceprobe/k;->d:Z

    const/high16 v2, 0x430c0000    # 140.0f

    const/high16 v3, 0x42200000    # 40.0f

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    sub-float v4, v0, v3

    sub-float/2addr v4, v2

    :goto_0
    if-eqz v1, :cond_1

    const/high16 v1, 0x42b40000    # 90.0f

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v7, v1

    .line 3
    iget-object v1, p0, Ldev/duo/workspaceprobe/k;->b:Landroid/graphics/RectF;

    sub-float/2addr v0, v3

    sub-float v3, v0, v2

    add-float/2addr v2, v4

    invoke-virtual {v1, v4, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/k;->c:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_2

    :cond_2
    const/high16 v0, 0x41400000    # 12.0f

    .line 5
    :goto_2
    iget-object v1, p0, Ldev/duo/workspaceprobe/k;->a:Landroid/graphics/Paint;

    const/high16 v2, 0x40c00000    # 6.0f

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v1, p0, Ldev/duo/workspaceprobe/k;->a:Landroid/graphics/Paint;

    const/high16 v2, 0x55000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v6, p0, Ldev/duo/workspaceprobe/k;->b:Landroid/graphics/RectF;

    iget-object v10, p0, Ldev/duo/workspaceprobe/k;->a:Landroid/graphics/Paint;

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 8
    iget-object p1, p0, Ldev/duo/workspaceprobe/k;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    iget-object p1, p0, Ldev/duo/workspaceprobe/k;->a:Landroid/graphics/Paint;

    iget-boolean v0, p0, Ldev/duo/workspaceprobe/k;->c:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    goto :goto_3

    :cond_3
    const v0, -0x22000001

    :goto_3
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v6, p0, Ldev/duo/workspaceprobe/k;->b:Landroid/graphics/RectF;

    iget-object v10, p0, Ldev/duo/workspaceprobe/k;->a:Landroid/graphics/Paint;

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method
