.class Lbtm/m/os4/systemuihook/hypermusiccover/h$e;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtm/m/os4/systemuihook/hypermusiccover/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 11

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->g()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_4

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-gtz v1, :cond_0

    move-object v5, p2

    goto :goto_3

    .line 8
    :cond_0
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->h()[F

    move-result-object v1

    .line 9
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->b()F

    move-result v2

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v10

    div-float v2, v10, v4

    float-to-double v3, v10

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 18
    const/4 v4, 0x0

    aget v5, v1, v4

    cmpg-float v5, v5, v2

    if-gez v5, :cond_1

    const/4 v6, 0x3

    aget v6, v1, v6

    cmpg-float v6, v6, v2

    if-gez v6, :cond_1

    neg-int v6, v3

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    const/4 v7, 0x1

    if-gez v5, :cond_2

    .line 19
    aget v5, v1, v7

    cmpg-float v5, v5, v2

    if-gez v5, :cond_2

    neg-int v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    .line 20
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 21
    aget v7, v1, v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_3

    const/4 v7, 0x2

    aget v1, v1, v7

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    add-int v8, p1, v3

    float-to-int v9, v0

    .line 22
    move v7, v5

    move-object v5, p2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    .line 1
    :cond_4
    move-object v5, p2

    .line 23
    :goto_3
    invoke-virtual {v5}, Landroid/graphics/Outline;->setEmpty()V

    return-void
.end method
