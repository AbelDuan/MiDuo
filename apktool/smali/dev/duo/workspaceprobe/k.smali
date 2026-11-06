.class final Ldev/duo/workspaceprobe/k;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/RectF;

.field private c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
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

    .line 8
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 2
    iget-object v2, v0, Ldev/duo/workspaceprobe/k;->b:Landroid/graphics/RectF;

    const/high16 v3, 0x42200000    # 40.0f

    sub-float/2addr v1, v3

    const/high16 v3, 0x430c0000    # 140.0f

    sub-float v3, v1, v3

    invoke-virtual {v2, v3, v3, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3
    iget-boolean v1, v0, Ldev/duo/workspaceprobe/k;->c:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x41800000    # 16.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41400000    # 12.0f

    .line 4
    :goto_0
    iget-object v2, v0, Ldev/duo/workspaceprobe/k;->a:Landroid/graphics/Paint;

    const/high16 v3, 0x40c00000    # 6.0f

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object v2, v0, Ldev/duo/workspaceprobe/k;->a:Landroid/graphics/Paint;

    const/high16 v3, 0x55000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v5, v0, Ldev/duo/workspaceprobe/k;->b:Landroid/graphics/RectF;

    iget-object v9, v0, Ldev/duo/workspaceprobe/k;->a:Landroid/graphics/Paint;

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 7
    iget-object v2, v0, Ldev/duo/workspaceprobe/k;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object v1, v0, Ldev/duo/workspaceprobe/k;->a:Landroid/graphics/Paint;

    iget-boolean v2, v0, Ldev/duo/workspaceprobe/k;->c:Z

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    const v2, -0x22000001

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object v11, v0, Ldev/duo/workspaceprobe/k;->b:Landroid/graphics/RectF;

    iget-object v15, v0, Ldev/duo/workspaceprobe/k;->a:Landroid/graphics/Paint;

    const/high16 v13, 0x42b40000    # 90.0f

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method
