.class final Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtm/m/os4/systemuihook/newnotificationcenter/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:I

.field private c:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;->a:Landroid/graphics/Paint;

    .line 3
    iput v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;->b:I

    .line 8
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, v2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {p0, p1, v1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;->a(IFF)V

    return-void
.end method

.method a(IFF)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;->b:I

    .line 3
    iput p3, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;->c:F

    .line 4
    iget-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;->c:F

    .line 2
    iget v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;->b:I

    int-to-float v0, v0

    sub-float v3, v0, v1

    iget-object v5, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;->a:Landroid/graphics/Paint;

    move v2, v1

    move v4, v3

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3
    iget p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;->b:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    iget-object v5, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;->a:Landroid/graphics/Paint;

    move v3, v1

    move v4, p1

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    iget p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;->b:I

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
