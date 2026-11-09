.class final Ldev/duo/hookprobe/RailCustomActivity$h;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/RailCustomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/hookprobe/RailCustomActivity$h;->a:Landroid/graphics/Paint;

    .line 7
    iput-boolean p2, p0, Ldev/duo/hookprobe/RailCustomActivity$h;->b:Z

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

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

    int-to-float v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v6, v1

    .line 2
    iget-object v1, v0, Ldev/duo/hookprobe/RailCustomActivity$h;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v1, v0, Ldev/duo/hookprobe/RailCustomActivity$h;->a:Landroid/graphics/Paint;

    sget-boolean v2, Ldev/duo/hookprobe/U;->a:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, -0xa5a59e

    goto :goto_0

    :cond_0
    const v2, -0xdc5c5c0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, -0x1a1a16

    goto :goto_0

    :cond_2
    const v2, -0xd000001

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x3e99999a    # 0.3f

    mul-float v7, v5, v1

    .line 4
    iget-object v9, v0, Ldev/duo/hookprobe/RailCustomActivity$h;->a:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v8, v7

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 5
    iget-object v1, v0, Ldev/duo/hookprobe/RailCustomActivity$h;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v1, v0, Ldev/duo/hookprobe/RailCustomActivity$h;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 7
    iget-object v1, v0, Ldev/duo/hookprobe/RailCustomActivity$h;->a:Landroid/graphics/Paint;

    const v2, 0x3da3d70a    # 0.08f

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object v1, v0, Ldev/duo/hookprobe/RailCustomActivity$h;->a:Landroid/graphics/Paint;

    sget v2, Ldev/duo/hookprobe/U;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-boolean v1, v0, Ldev/duo/hookprobe/RailCustomActivity$h;->b:Z

    if-eqz v1, :cond_3

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float v11, v5, v1

    const v2, 0x3f266666    # 0.65f

    mul-float v12, v6, v2

    mul-float v13, v5, v2

    mul-float v14, v6, v1

    .line 10
    iget-object v15, v0, Ldev/duo/hookprobe/RailCustomActivity$h;->a:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v1, 0x3ed70a3d    # 0.42f

    mul-float v12, v6, v1

    mul-float v13, v5, v1

    .line 11
    iget-object v15, v0, Ldev/duo/hookprobe/RailCustomActivity$h;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_3
    const v1, 0x3eb33333    # 0.35f

    mul-float v11, v5, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v12, v6, v2

    mul-float v13, v5, v2

    mul-float v14, v6, v1

    .line 13
    iget-object v15, v0, Ldev/duo/hookprobe/RailCustomActivity$h;->a:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v1, 0x3f147ae1    # 0.58f

    mul-float v11, v5, v1

    mul-float v14, v6, v1

    .line 14
    iget-object v15, v0, Ldev/duo/hookprobe/RailCustomActivity$h;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
