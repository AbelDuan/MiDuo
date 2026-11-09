.class final Ldev/duo/hookprobe/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x531

    const/16 v2, 0x356

    invoke-static {v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, p0, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    int-to-float v2, v2

    const/16 v5, 0x530

    int-to-float v5, v5

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v2, v5, v6, v7}, Ldev/duo/hookprobe/d;->a(FFII)F

    move-result v6

    .line 7
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 8
    invoke-virtual {v7, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    sub-float v8, v2, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v6

    sub-float p0, v5, p0

    div-float/2addr p0, v9

    invoke-virtual {v7, v8, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 10
    invoke-virtual {v4, v7}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 11
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 12
    const/high16 p0, 0x42600000    # 56.0f

    invoke-static {v2, v5, p0}, Ldev/duo/hookprobe/d;->a(FFF)[F

    move-result-object p0

    invoke-static {p0}, Ldev/duo/hookprobe/e;->a([F)Landroid/graphics/Path;

    move-result-object p0

    invoke-virtual {v1, p0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private static a([F)Landroid/graphics/Path;
    .locals 8

    .line 13
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    move v7, v1

    .line 14
    :goto_0
    array-length v1, p0

    if-ge v7, v1, :cond_3

    .line 15
    aget v1, p0, v7

    float-to-int v1, v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v7, 0x1

    .line 20
    aget v1, p0, v1

    add-int/lit8 v2, v7, 0x2

    aget v2, p0, v2

    add-int/lit8 v3, v7, 0x3

    aget v3, p0, v3

    add-int/lit8 v4, v7, 0x4

    aget v4, p0, v4

    add-int/lit8 v5, v7, 0x5

    aget v5, p0, v5

    add-int/lit8 v6, v7, 0x6

    aget v6, p0, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v7, v7, 0x7

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v7, 0x1

    .line 21
    aget v1, p0, v1

    add-int/lit8 v2, v7, 0x2

    aget v2, p0, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v7, v7, 0x3

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v7, 0x1

    .line 22
    aget v1, p0, v1

    add-int/lit8 v2, v7, 0x2

    aget v2, p0, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    add-int/lit8 v7, v7, 0x3

    goto :goto_0

    :cond_3
    return-object v0
.end method
