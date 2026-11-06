.class final Ldev/duo/hookprobe/RailCustomActivity$e;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/RailCustomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Landroid/graphics/Paint;

.field final synthetic e:Ldev/duo/hookprobe/RailCustomActivity;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/RailCustomActivity;III)V
    .locals 1

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->e:Ldev/duo/hookprobe/RailCustomActivity;

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->d:Landroid/graphics/Paint;

    .line 8
    iput p2, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->a:I

    .line 9
    iput p3, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->b:I

    .line 10
    iput p4, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->c:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v0, :cond_5

    if-gtz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-float v2, v1

    .line 3
    iget v3, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->b:I

    int-to-float v3, v3

    mul-float v8, v2, v3

    .line 4
    iget-object v2, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->e:Ldev/duo/hookprobe/RailCustomActivity;

    const v3, 0x3f666666    # 0.9f

    invoke-static {v2, v3}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;F)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 7
    iget v3, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->a:I

    neg-int v3, v3

    mul-int/2addr v3, v1

    int-to-float v1, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    int-to-float v0, v0

    sub-float/2addr v0, v3

    sub-float v4, v8, v3

    invoke-direct {v1, v3, v3, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 9
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->d:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 10
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->d:Landroid/graphics/Paint;

    sget-boolean v4, Ldev/duo/hookprobe/T;->a:Z

    if-eqz v4, :cond_1

    const/high16 v4, 0x33000000

    goto :goto_0

    :cond_1
    const/high16 v4, 0x14000000

    :goto_0
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->e:Ldev/duo/hookprobe/RailCustomActivity;

    const v7, 0x3fcccccd    # 1.6f

    invoke-static {v6, v7}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, v1, Landroid/graphics/RectF;->right:F

    iget v9, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->e:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v10, v7}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v9, v7

    invoke-direct {v0, v4, v5, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v4, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->c:I

    int-to-float v4, v4

    iget-object v5, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 14
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->d:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    .line 15
    sget-boolean v5, Ldev/duo/hookprobe/T;->a:Z

    if-eqz v5, :cond_2

    const v6, -0xb5b5b0

    goto :goto_1

    :cond_2
    const/4 v6, -0x1

    :goto_1
    move v9, v6

    if-eqz v5, :cond_3

    const v5, -0xdcdcd6

    goto :goto_2

    :cond_3
    const v5, -0x181611

    :goto_2
    move v10, v5

    .line 16
    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 17
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 20
    iget v0, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->c:I

    int-to-float v0, v0

    iget-object v4, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 21
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 22
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->d:Landroid/graphics/Paint;

    sget-boolean v2, Ldev/duo/hookprobe/T;->a:Z

    if-eqz v2, :cond_4

    const v2, 0x40ffffff    # 7.9999995f

    goto :goto_3

    :cond_4
    const/high16 v2, 0x1f000000

    :goto_3
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    iget v0, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->c:I

    int-to-float v0, v0

    iget-object v2, p0, Ldev/duo/hookprobe/RailCustomActivity$e;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_4
    return-void
.end method
