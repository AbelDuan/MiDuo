.class Ldev/duo/hookprobe/RailCustomActivity$c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/RailCustomActivity;->a(Landroid/content/Context;IF)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    iput p1, p0, Ldev/duo/hookprobe/RailCustomActivity$c;->b:I

    iput p2, p0, Ldev/duo/hookprobe/RailCustomActivity$c;->c:I

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/hookprobe/RailCustomActivity$c;->a:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41c00000    # 24.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$c;->a:Landroid/graphics/Paint;

    iget v1, p0, Ldev/duo/hookprobe/RailCustomActivity$c;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$c;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$c;->a:Landroid/graphics/Paint;

    const v1, 0x3fe66666    # 1.8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object v9, p0, Ldev/duo/hookprobe/RailCustomActivity$c;->a:Landroid/graphics/Paint;

    const/high16 v7, 0x40600000    # 3.5f

    const/high16 v8, 0x40600000    # 3.5f

    const/high16 v3, 0x40200000    # 2.5f

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v5, 0x41ac0000    # 21.5f

    const/high16 v6, 0x41900000    # 18.0f

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 8
    iget-object p1, p0, Ldev/duo/hookprobe/RailCustomActivity$c;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    const/4 p1, 0x3

    new-array v0, p1, [F

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget v3, v0, v1

    iget-object v4, p0, Ldev/duo/hookprobe/RailCustomActivity$c;->a:Landroid/graphics/Paint;

    const/high16 v5, 0x41500000    # 13.0f

    const v6, 0x3ff33333    # 1.9f

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    return-void

    :array_0
    .array-data 4
        0x40e00000    # 7.0f
        0x41400000    # 12.0f
        0x41880000    # 17.0f
    .end array-data
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Ldev/duo/hookprobe/RailCustomActivity$c;->c:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Ldev/duo/hookprobe/RailCustomActivity$c;->c:I

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
