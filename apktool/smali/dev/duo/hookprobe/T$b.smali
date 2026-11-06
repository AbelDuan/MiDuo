.class Ldev/duo/hookprobe/T$b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/T;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroid/graphics/Paint;

.field final synthetic b:I

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:I


# direct methods
.method constructor <init>(ILandroid/content/Context;I)V
    .locals 0

    .line 1
    iput p1, p0, Ldev/duo/hookprobe/T$b;->b:I

    iput-object p2, p0, Ldev/duo/hookprobe/T$b;->c:Landroid/content/Context;

    iput p3, p0, Ldev/duo/hookprobe/T$b;->d:I

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/hookprobe/T$b;->a:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/T$b;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget v0, p0, Ldev/duo/hookprobe/T$b;->b:I

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Ldev/duo/hookprobe/T$b;->a:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v5, p0, Ldev/duo/hookprobe/T$b;->a:Landroid/graphics/Paint;

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x1

    const/high16 v2, 0x42b40000    # 90.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 6
    iget-object p1, p0, Ldev/duo/hookprobe/T$b;->a:Landroid/graphics/Paint;

    const v2, -0xe2e2e1    # -2.0884E38f

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v5, p0, Ldev/duo/hookprobe/T$b;->a:Landroid/graphics/Paint;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object p1, v0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Ldev/duo/hookprobe/T$b;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v0, p0, Ldev/duo/hookprobe/T$b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 12
    :goto_0
    iget-object v0, p0, Ldev/duo/hookprobe/T$b;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object v0, p0, Ldev/duo/hookprobe/T$b;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Ldev/duo/hookprobe/T$b;->c:Landroid/content/Context;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    iget-object v0, p0, Ldev/duo/hookprobe/T$b;->a:Landroid/graphics/Paint;

    sget-boolean v2, Ldev/duo/hookprobe/T;->a:Z

    if-eqz v2, :cond_1

    const v2, 0x40ffffff    # 7.9999995f

    goto :goto_1

    :cond_1
    const/high16 v2, 0x24000000

    :goto_1
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object v0, p0, Ldev/duo/hookprobe/T$b;->c:Landroid/content/Context;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Ldev/duo/hookprobe/T$b;->c:Landroid/content/Context;

    invoke-static {v3, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 16
    iget-object v0, p0, Ldev/duo/hookprobe/T$b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Ldev/duo/hookprobe/T$b;->d:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Ldev/duo/hookprobe/T$b;->d:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
