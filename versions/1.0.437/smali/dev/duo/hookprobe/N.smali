.class public final Ldev/duo/hookprobe/N;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field public static final d:I = -0xf83ea0

.field public static final e:I = -0xe98801

.field private static final f:F = 68.0f


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Path;

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldev/duo/hookprobe/N;->a:Landroid/graphics/Paint;

    .line 3
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Ldev/duo/hookprobe/N;->b:Landroid/graphics/Path;

    .line 4
    const/16 v1, 0xff

    iput v1, p0, Ldev/duo/hookprobe/N;->c:I

    .line 7
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 9
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ldev/duo/hookprobe/N;
    .locals 1

    .line 1
    const-string v0, "wechat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ldev/duo/hookprobe/N;

    const v0, -0xf83ea0

    invoke-direct {p0, v0}, Ldev/duo/hookprobe/N;-><init>(I)V

    return-object p0

    .line 2
    :cond_0
    const-string v0, "alipay"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ldev/duo/hookprobe/N;

    const v0, -0xe98801    # -2.0000725E38f

    invoke-direct {p0, v0}, Ldev/duo/hookprobe/N;-><init>(I)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/N;->a:Landroid/graphics/Paint;

    iget v1, p0, Ldev/duo/hookprobe/N;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/N;->b:Landroid/graphics/Path;

    iget-object v1, p0, Ldev/duo/hookprobe/N;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42880000    # 68.0f

    div-float/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    const/high16 v4, 0x41a80000    # 21.0f

    mul-float/2addr v4, v1

    const/high16 v5, 0x41300000    # 11.0f

    mul-float/2addr v5, v1

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float/2addr v6, v1

    const/high16 v7, 0x41600000    # 14.0f

    mul-float/2addr v7, v1

    .line 3
    iget-object v8, v0, Ldev/duo/hookprobe/N;->a:Landroid/graphics/Paint;

    const/high16 v9, 0x40900000    # 4.5f

    mul-float/2addr v1, v9

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    iget-object v1, v0, Ldev/duo/hookprobe/N;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    const/4 v8, -0x1

    :goto_0
    const/4 v9, 0x1

    if-gt v8, v9, :cond_1

    const/4 v10, -0x1

    :goto_1
    if-gt v10, v9, :cond_0

    .line 7
    iget-object v11, v0, Ldev/duo/hookprobe/N;->b:Landroid/graphics/Path;

    int-to-float v12, v8

    mul-float v13, v12, v4

    add-float/2addr v13, v2

    int-to-float v14, v10

    sub-float v15, v4, v5

    mul-float v16, v14, v15

    add-float v1, v3, v16

    invoke-virtual {v11, v13, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 8
    iget-object v1, v0, Ldev/duo/hookprobe/N;->b:Landroid/graphics/Path;

    sub-float v11, v4, v6

    mul-float v16, v14, v11

    add-float v9, v3, v16

    invoke-virtual {v1, v13, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    iget-object v1, v0, Ldev/duo/hookprobe/N;->b:Landroid/graphics/Path;

    mul-float/2addr v14, v4

    add-float/2addr v14, v3

    mul-float/2addr v11, v12

    add-float/2addr v11, v2

    invoke-virtual {v1, v13, v14, v11, v14}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 10
    iget-object v1, v0, Ldev/duo/hookprobe/N;->b:Landroid/graphics/Path;

    mul-float/2addr v12, v15

    add-float/2addr v12, v2

    invoke-virtual {v1, v12, v14}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v10, v10, 0x2

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    .line 13
    :cond_1
    iget-object v1, v0, Ldev/duo/hookprobe/N;->b:Landroid/graphics/Path;

    sub-float v4, v2, v7

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 14
    iget-object v0, v0, Ldev/duo/hookprobe/N;->b:Landroid/graphics/Path;

    add-float/2addr v2, v7

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Ldev/duo/hookprobe/N;->c:I

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
