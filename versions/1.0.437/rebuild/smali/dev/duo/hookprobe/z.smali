.class final Ldev/duo/hookprobe/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/graphics/Typeface;

.field private static final b:Landroid/graphics/Typeface;

.field private static final c:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "sans-serif-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/z;->a:Landroid/graphics/Typeface;

    .line 2
    const-string v0, "sans-serif"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/z;->b:Landroid/graphics/Typeface;

    .line 3
    const-string v0, "sans-serif-medium"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/z;->c:Landroid/graphics/Typeface;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;ZLandroid/os/Bundle;)Landroid/graphics/Bitmap;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "battery"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "calendar"

    if-nez v3, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "weather"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672a\u77e5\u7ec4\u4ef6\u7c7b\u578b\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    .line 2
    :cond_2
    move-object/from16 v3, p2

    .line 3
    :goto_1
    const/16 v5, 0x190

    if-eqz v1, :cond_3

    const/16 v6, 0x356

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    const/high16 v7, 0x431e0000    # 158.0f

    if-eqz v1, :cond_4

    const/high16 v8, 0x43a90000    # 338.0f

    goto :goto_3

    :cond_4
    move v8, v7

    :goto_3
    int-to-float v9, v6

    div-float v10, v9, v8

    .line 6
    const v11, 0x4022067b

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 7
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 8
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    mul-float v11, v8, v10

    sub-float/2addr v9, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v9, v11

    mul-float v12, v10, v7

    const/high16 v13, 0x43c80000    # 400.0f

    sub-float/2addr v13, v12

    div-float/2addr v13, v11

    .line 9
    invoke-virtual {v6, v9, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10
    invoke-virtual {v6, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 11
    new-instance v9, Landroid/text/TextPaint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/text/TextPaint;-><init>(I)V

    .line 12
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 13
    new-instance v12, Landroid/graphics/RectF;

    const/4 v13, 0x0

    invoke-direct {v12, v13, v13, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/high16 v13, 0x41d80000    # 27.0f

    invoke-virtual {v11, v12, v13, v13, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v12, 0x3

    if-eqz v7, :cond_5

    .line 15
    new-instance v13, Landroid/graphics/LinearGradient;

    const v7, 0x3eb33333    # 0.35f

    mul-float v16, v8, v7

    const v7, 0x55aca8a1

    const v10, 0x4df9f4eb    # 5.24197216E8f

    const v14, 0x4a353039    # 2968590.2f

    filled-new-array {v14, v7, v10}, [I

    move-result-object v18

    new-array v7, v12, [F

    fill-array-data v7, :array_0

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v15, 0x0

    const/high16 v17, 0x431e0000    # 158.0f

    const/4 v14, 0x0

    move-object/from16 v19, v7

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_5

    .line 18
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 19
    const/4 v7, -0x1

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 21
    :cond_6
    const-string v7, "isNight"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 22
    new-instance v13, Landroid/graphics/LinearGradient;

    const/high16 v14, 0x3e800000    # 0.25f

    mul-float v16, v8, v14

    const/4 v14, 0x2

    const/4 v15, 0x0

    if-eqz v7, :cond_7

    .line 23
    new-array v7, v12, [I

    const v17, -0xefe4c7

    aput v17, v7, v15

    const v15, -0xdfc49b

    aput v15, v7, v10

    const v10, -0xc9a77f

    aput v10, v7, v14

    move-object/from16 v18, v7

    goto :goto_4

    :cond_7
    nop

    .line 24
    new-array v7, v12, [I

    const v17, -0xdb9b59

    aput v17, v7, v15

    const v15, -0xc47834

    aput v15, v7, v10

    const v10, -0x915929

    aput v10, v7, v14

    move-object/from16 v18, v7

    :goto_4
    new-array v7, v12, [F

    fill-array-data v7, :array_1

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v17, 0x431e0000    # 158.0f

    move-object/from16 v19, v7

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 25
    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 30
    :goto_5
    invoke-virtual {v6, v11, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 31
    const/4 v7, 0x0

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 32
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 33
    invoke-virtual {v6, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v6, v9, v1, v3}, Ldev/duo/hookprobe/z;->a(Landroid/graphics/Canvas;Landroid/text/TextPaint;ZLandroid/os/Bundle;)V

    goto :goto_6

    .line 35
    :cond_8
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v6, v9, v1, v3}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;ZLandroid/os/Bundle;)V

    goto :goto_6

    .line 36
    :cond_9
    invoke-static {v6, v9, v1, v3}, Ldev/duo/hookprobe/z;->c(Landroid/graphics/Canvas;Landroid/text/TextPaint;ZLandroid/os/Bundle;)V

    .line 37
    :goto_6
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 39
    const v0, 0x38ffffff

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v8, v1

    const v2, 0x431d8000    # 157.5f

    invoke-direct {v0, v1, v1, v8, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x41d40000    # 26.5f

    invoke-virtual {v6, v0, v1, v1, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_a
    return-object v5

    :array_0
    .array-data 4
        0x0
        0x3f2e147b    # 0.68f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFIIZ)V
    .locals 6

    .line 60
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 61
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 p2, 0x42880000    # 68.0f

    div-float/2addr p4, p2

    .line 62
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 63
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 65
    const/high16 p2, 0x40c00000    # 6.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    const p2, 0x24ffffff

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    const/high16 p2, 0x42080000    # 34.0f

    const/high16 p3, 0x41d80000    # 27.0f

    invoke-virtual {p0, p2, p2, p3, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-ltz p5, :cond_2

    const/16 p2, 0x14

    if-gt p5, p2, :cond_0

    if-nez p7, :cond_0

    const p2, -0xbac6

    goto :goto_0

    :cond_0
    const p2, -0xce2ea8

    .line 69
    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x42740000    # 61.0f

    if-lez p5, :cond_1

    .line 70
    new-instance v1, Landroid/graphics/RectF;

    const/high16 p3, 0x40e00000    # 7.0f

    invoke-direct {v1, p3, p3, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 p3, 0x64

    invoke-static {p5, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40666666    # 3.6f

    mul-float v3, p3, p4

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    .line 69
    :cond_1
    move-object v0, p0

    move-object v5, p1

    .line 71
    :goto_1
    invoke-static {v0, v5, p6}, Ldev/duo/hookprobe/z;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    if-eqz p7, :cond_3

    .line 73
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    const/4 p0, -0x1

    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 76
    const/high16 p1, 0x42600000    # 56.0f

    const/high16 p3, 0x421c0000    # 39.0f

    invoke-virtual {p0, p1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 p3, 0x42480000    # 50.0f

    const/high16 p4, 0x42440000    # 49.0f

    invoke-virtual {p0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 p3, 0x425c0000    # 55.0f

    invoke-virtual {p0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77
    const/high16 p3, 0x42500000    # 52.0f

    const/high16 p4, 0x42640000    # 57.0f

    invoke-virtual {p0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 p3, 0x42340000    # 45.0f

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0, p1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    .line 78
    invoke-virtual {v0, p0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 67
    :cond_2
    move-object v0, p0

    move-object v5, p1

    .line 81
    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 82
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .locals 13

    .line 83
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    const v2, 0x3fd9999a    # 1.7f

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/high16 v6, 0x42400000    # 48.0f

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v2, 0x40400000    # 3.0f

    if-nez p2, :cond_0

    .line 88
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v3, 0x41d80000    # 27.0f

    const/high16 v4, 0x42240000    # 41.0f

    invoke-direct {v1, v3, v7, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v1, v2, v2, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 89
    const/high16 v1, 0x42000000    # 32.0f

    const/high16 v2, 0x41b80000    # 23.0f

    const/high16 v3, 0x42100000    # 36.0f

    const/high16 v4, 0x41b80000    # 23.0f

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 90
    const/high16 v2, 0x42340000    # 45.0f

    const/high16 v4, 0x42340000    # 45.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    const/high16 v3, 0x42280000    # 42.0f

    const/high16 v8, 0x42180000    # 38.0f

    const/high16 v9, 0x41f00000    # 30.0f

    const/high16 v10, 0x422c0000    # 43.0f

    const/high16 v11, 0x41c80000    # 25.0f

    const/4 v4, 0x1

    const/high16 v12, 0x41d00000    # 26.0f

    if-ne p2, v4, :cond_1

    .line 93
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v12, v11, v3, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p0, v1, v2, v2, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 94
    const/high16 v1, 0x42300000    # 44.0f

    const/high16 v2, 0x41f80000    # 31.0f

    const/high16 v3, 0x42300000    # 44.0f

    const/high16 v4, 0x420c0000    # 35.0f

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 95
    const/high16 v1, 0x42080000    # 34.0f

    const/high16 v2, 0x41e80000    # 29.0f

    const/high16 v3, 0x42080000    # 34.0f

    const/high16 v4, 0x42080000    # 34.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 96
    const/high16 v2, 0x42080000    # 34.0f

    const/high16 v3, 0x42140000    # 37.0f

    const/high16 v4, 0x42100000    # 36.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 97
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v9, v7, v8, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v2, v2, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 99
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v9, v10, v8, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v1, v2, v2, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 101
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x41e80000    # 29.0f

    const/high16 v4, 0x41a80000    # 21.0f

    const/high16 v10, 0x42040000    # 33.0f

    invoke-direct {v1, v7, v4, v2, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v1, p1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 103
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x42380000    # 46.0f

    invoke-direct {v1, v12, v12, v9, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {p0, v1, v7, v7, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 104
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v9, 0x421c0000    # 39.0f

    invoke-direct {v1, v9, v4, v6, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v1, p1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 105
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v8, v12, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v1, v7, v7, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 107
    :cond_2
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v3, 0x41980000    # 19.0f

    const/high16 v6, 0x42440000    # 49.0f

    invoke-direct {v1, v3, v11, v6, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v1, v2, v2, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 108
    const v1, 0x3fb33333    # 1.4f

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_4

    move v3, v1

    :goto_1
    const/4 v6, 0x5

    if-ge v3, v6, :cond_3

    mul-int/lit8 v6, v3, 0x5

    add-int/lit8 v6, v6, 0x18

    int-to-float v6, v6

    mul-int/lit8 v7, v2, 0x5

    add-int/lit8 v7, v7, 0x1e

    int-to-float v7, v7

    .line 110
    invoke-virtual {p0, v6, v7, p1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 111
    const/high16 v1, 0x41d80000    # 27.0f

    const/high16 v2, 0x421c0000    # 39.0f

    const/high16 v3, 0x42240000    # 41.0f

    const/high16 v4, 0x421c0000    # 39.0f

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/text/TextPaint;IZFFF)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    const/4 v1, 0x4

    const/16 v7, 0x8

    const/4 v9, 0x1

    if-lt v6, v1, :cond_0

    const/4 v1, 0x6

    if-le v6, v1, :cond_3

    :cond_0
    if-lt v6, v7, :cond_1

    const/16 v1, 0xc

    if-le v6, v1, :cond_3

    :cond_1
    const/16 v1, 0x16

    if-eq v6, v1, :cond_3

    const/16 v1, 0x19

    if-ne v6, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v10, v9

    :goto_1
    const/16 v1, 0xd

    if-lt v6, v1, :cond_4

    const/16 v1, 0x11

    if-gt v6, v1, :cond_4

    move v11, v9

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    const/4 v1, 0x7

    if-ne v6, v1, :cond_5

    move v12, v9

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eq v6, v14, :cond_8

    if-eq v6, v13, :cond_8

    const/16 v1, 0x12

    if-lt v6, v1, :cond_6

    const/16 v1, 0x15

    if-le v6, v1, :cond_8

    :cond_6
    const/16 v1, 0x17

    if-ne v6, v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    move v15, v9

    .line 170
    :goto_5
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 171
    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x41c00000    # 24.0f

    div-float v2, p6, v1

    .line 172
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 173
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x40a00000    # 5.0f

    const/16 v3, -0x29f6

    const/high16 v8, 0x41700000    # 15.0f

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v13, 0x41400000    # 12.0f

    if-eqz v6, :cond_a

    if-ne v6, v9, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v17, v7

    const/high16 v8, 0x41100000    # 9.0f

    move v7, v2

    goto/16 :goto_9

    .line 175
    :cond_a
    :goto_6
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    if-ne v6, v9, :cond_b

    .line 176
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const v1, 0x3f47ae14    # 0.78f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_b
    if-eqz p3, :cond_c

    .line 178
    const/16 v1, -0x1443

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 180
    invoke-virtual {v1, v8, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 181
    const/high16 v17, 0x40400000    # 3.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x41880000    # 17.0f

    const/high16 v21, 0x41300000    # 11.0f

    const/high16 v22, 0x41a80000    # 21.0f

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 182
    const/high16 v17, 0x41880000    # 17.0f

    const/high16 v18, 0x41b80000    # 23.0f

    const/high16 v19, 0x41a80000    # 21.0f

    const/high16 v20, 0x41980000    # 19.0f

    const/high16 v21, 0x41b00000    # 22.0f

    const/high16 v22, 0x41700000    # 15.0f

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 183
    const/high16 v17, 0x41500000    # 13.0f

    const/high16 v18, 0x41900000    # 18.0f

    const/high16 v19, 0x41000000    # 8.0f

    const/high16 v20, 0x41100000    # 9.0f

    const/high16 v21, 0x41700000    # 15.0f

    const/high16 v22, 0x40000000    # 2.0f

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 184
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 185
    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move/from16 v17, v7

    const/high16 v8, 0x41100000    # 9.0f

    move v7, v2

    goto :goto_8

    :cond_c
    nop

    .line 187
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    invoke-virtual {v0, v13, v13, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 189
    const v1, 0x3fe66666    # 1.8f

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 190
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v7, :cond_d

    int-to-double v2, v1

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v16

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    div-double v2, v2, v16

    .line 193
    const/high16 v16, 0x41100000    # 9.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v3, v4, v16

    add-float/2addr v3, v13

    mul-float v5, v2, v16

    add-float/2addr v5, v13

    const/high16 v17, 0x41300000    # 11.0f

    mul-float v4, v4, v17

    add-float/2addr v4, v13

    mul-float v2, v2, v17

    add-float/2addr v2, v13

    .line 194
    move/from16 v17, v7

    move/from16 v8, v16

    const/high16 v7, 0x40a00000    # 5.0f

    move/from16 v16, v1

    move v1, v3

    move v3, v4

    move v4, v2

    move v2, v5

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v16, 0x1

    const/16 v3, -0x29f6

    const/high16 v8, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    move v2, v7

    move/from16 v7, v17

    goto :goto_7

    .line 190
    :cond_d
    move/from16 v17, v7

    const/high16 v8, 0x41100000    # 9.0f

    move v7, v2

    .line 197
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->restore()V

    :goto_9
    if-eq v6, v9, :cond_10

    if-nez v10, :cond_10

    if-nez v11, :cond_10

    if-nez v12, :cond_10

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    goto :goto_a

    :cond_e
    if-eqz v6, :cond_f

    .line 231
    sget-object v8, Ldev/duo/hookprobe/z;->a:Landroid/graphics/Typeface;

    const/high16 v6, 0x41b00000    # 22.0f

    const/4 v7, -0x1

    const-string v2, "?"

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v5, 0x41c00000    # 24.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->a(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    goto/16 :goto_d

    .line 197
    :cond_f
    move-object/from16 v0, p0

    goto/16 :goto_d

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v5, p1

    .line 231
    :goto_a
    nop

    .line 232
    const v1, -0x120c06

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    const/high16 v1, 0x40e00000    # 7.0f

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v1, v13, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 234
    invoke-virtual {v0, v13, v8, v7, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 235
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v13, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 236
    new-instance v3, Landroid/graphics/RectF;

    const/high16 v4, 0x41a80000    # 21.0f

    const/high16 v6, 0x41800000    # 16.0f

    invoke-direct {v3, v2, v13, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v3, v14, v14, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 237
    const v2, 0x3fd9999a    # 1.7f

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 238
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    if-eqz v10, :cond_11

    .line 240
    const v1, -0x742501

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v8, 0x0

    :goto_b
    const/4 v6, 0x3

    if-ge v8, v6, :cond_15

    mul-int/lit8 v1, v8, 0x5

    add-int/lit8 v2, v1, 0x7

    int-to-float v2, v2

    add-int/lit8 v1, v1, 0x5

    int-to-float v3, v1

    .line 241
    move v1, v2

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_b

    :cond_11
    if-eqz v11, :cond_13

    .line 243
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    const v0, 0x3f99999a    # 1.2f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v8, 0x0

    :goto_c
    const/4 v6, 0x2

    if-ge v8, v6, :cond_12

    mul-int/lit8 v0, v8, 0x8

    add-int/lit8 v0, v0, 0x8

    int-to-float v7, v0

    sub-float v1, v7, v14

    add-float v3, v7, v14

    .line 247
    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v4, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v7, v0

    add-float v3, v7, v0

    .line 248
    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v4, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 249
    const/high16 v2, 0x41b00000    # 22.0f

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 244
    :cond_12
    move-object/from16 v0, p0

    goto :goto_d

    .line 249
    :cond_13
    move-object/from16 v0, p0

    if-eqz v12, :cond_14

    .line 252
    const/16 v2, -0x29f6

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 254
    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v13, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {v2, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v2, v13, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 255
    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-virtual {v2, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 256
    invoke-virtual {v0, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_d

    :cond_14
    if-eqz v15, :cond_15

    .line 258
    const v1, -0x2f1e13

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x41980000    # 19.0f

    const/high16 v3, 0x41a80000    # 21.0f

    const/high16 v4, 0x41980000    # 19.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 260
    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x41b00000    # 22.0f

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 265
    :cond_15
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V
    .locals 9

    .line 266
    move-object/from16 v8, p8

    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 267
    invoke-virtual {p1, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 268
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p2, p1, p5, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    sub-float v3, p3, p2

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFI)V
    .locals 13

    .line 270
    const/16 v0, 0xa

    const/16 v1, 0x20

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xd

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 271
    sget-object v0, Ldev/duo/hookprobe/z;->b:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 272
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 273
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 274
    const/4 v2, 0x1

    const/4 v3, 0x0

    move/from16 v9, p5

    invoke-virtual {p1, p2, v2, v9, v3}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v2

    if-lez v2, :cond_0

    .line 275
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 276
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    :cond_1
    nop

    .line 277
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    mul-int/lit8 v3, v1, 0x11

    int-to-float v3, v3

    add-float v8, p4, v3

    sget-object v12, Ldev/duo/hookprobe/z;->b:Landroid/graphics/Typeface;

    const/high16 v10, 0x41400000    # 12.0f

    move-object v4, p0

    move-object v5, p1

    move/from16 v7, p3

    move/from16 v11, p6

    invoke-static/range {v4 .. v12}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    .line 278
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/util/ArrayList;FFZ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/text/TextPaint;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;FFZ)V"
        }
    .end annotation

    .line 112
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v10

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Landroid/os/Bundle;

    .line 115
    const-string v7, "allDay"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_1
    move v11, v5

    goto :goto_1

    .line 112
    :cond_2
    move v11, v10

    .line 119
    :goto_1
    new-instance v2, Ldev/duo/hookprobe/z$a;

    invoke-direct {v2}, Ldev/duo/hookprobe/z$a;-><init>()V

    invoke-static {v9, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz p5, :cond_3

    const/high16 v2, 0x42940000    # 74.0f

    goto :goto_2

    :cond_3
    const/high16 v2, 0x42a00000    # 80.0f

    :goto_2
    const/high16 v12, 0x40000000    # 2.0f

    if-lez v11, :cond_7

    .line 126
    const v2, -0xf57b01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40d00000    # 6.5f

    add-float v3, p3, v2

    .line 127
    const/high16 v4, 0x42a40000    # 82.0f

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 128
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move v5, v10

    :goto_3
    const/16 v6, 0xa

    if-ge v5, v6, :cond_6

    int-to-double v6, v5

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v13

    const-wide/high16 v13, 0x4014000000000000L    # 5.0

    div-double/2addr v6, v13

    const-wide v13, -0x4006de04abbbd2e8L    # -1.5707963267948966

    add-double/2addr v6, v13

    .line 131
    rem-int/lit8 v8, v5, 0x2

    if-nez v8, :cond_4

    const/high16 v8, 0x40900000    # 4.5f

    goto :goto_4

    :cond_4
    move v8, v12

    .line 132
    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v13, v8

    add-float/2addr v13, v3

    .line 133
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v8

    add-float/2addr v6, v4

    if-nez v5, :cond_5

    .line 134
    invoke-virtual {v2, v13, v6}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_5

    :cond_5
    invoke-virtual {v2, v13, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 136
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 137
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u9879\u5168\u5929\u65e5\u7a0b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41880000    # 17.0f

    move v4, v3

    add-float v3, p3, v4

    sub-float v5, p4, v4

    sget-object v8, Ldev/duo/hookprobe/z;->c:Landroid/graphics/Typeface;

    const/high16 v6, 0x41400000    # 12.0f

    const v7, -0xeeeeef

    const/high16 v4, 0x42ac0000    # 86.0f

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    const/high16 v2, 0x42bc0000    # 94.0f

    .line 142
    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p5, :cond_8

    .line 143
    const-string v0, "\u660e\u5929\u6ca1\u6709\u5176\u4ed6\u65e5\u7a0b"

    goto :goto_6

    :cond_8
    const-string v0, "\u4eca\u5929\u6ca1\u6709\u5176\u4ed6\u65e5\u7a0b"

    :goto_6
    move-object v2, v0

    if-lez v11, :cond_9

    const/high16 v0, 0x42e00000    # 112.0f

    goto :goto_7

    :cond_9
    const/high16 v0, 0x42c40000    # 98.0f

    :goto_7
    move v4, v0

    .line 144
    sget-object v8, Ldev/duo/hookprobe/z;->b:Landroid/graphics/Typeface;

    .line 145
    const/high16 v6, 0x41400000    # 12.0f

    const v7, -0x6f6f69

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v5, p4

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    return-void

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    const/high16 v4, 0x42820000    # 65.0f

    add-float/2addr v4, v2

    const/high16 v5, 0x43120000    # 146.0f

    cmpg-float v4, v4, v5

    const/4 v11, 0x2

    const/4 v5, 0x1

    if-gtz v4, :cond_b

    move v4, v11

    goto :goto_8

    :cond_b
    move v4, v5

    .line 150
    :goto_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v4, :cond_c

    if-ne v4, v11, :cond_c

    move v13, v5

    goto :goto_9

    .line 151
    :cond_c
    move v13, v4

    :goto_9
    new-instance v14, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v5, "HH:mm"

    invoke-direct {v14, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 152
    :goto_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v6, 0x41400000    # 12.0f

    if-ge v10, v4, :cond_e

    .line 153
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/os/Bundle;

    .line 154
    if-eqz p5, :cond_d

    const v4, -0x50ad22

    goto :goto_b

    :cond_d
    const v4, -0xbac6

    :goto_b
    const-string v5, "color"

    invoke-virtual {v15, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const v5, 0xffffff

    and-int/2addr v4, v5

    const/high16 v5, -0x1000000

    or-int/2addr v4, v5

    .line 155
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    .line 157
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v4

    rsub-int v4, v4, 0xff

    div-int/lit8 v4, v4, 0xc

    rsub-int v4, v4, 0xff

    .line 158
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v5

    rsub-int v5, v5, 0xff

    div-int/lit8 v5, v5, 0xc

    rsub-int v5, v5, 0xff

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    rsub-int v8, v8, 0xff

    div-int/lit8 v8, v8, 0xc

    rsub-int v8, v8, 0xff

    .line 159
    invoke-static {v4, v5, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    new-instance v4, Landroid/graphics/RectF;

    add-float v5, v3, p4

    const/high16 v8, 0x41f00000    # 30.0f

    add-float/2addr v8, v2

    invoke-direct {v4, v3, v2, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v0, v4, v5, v5, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 162
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    add-float v3, p3, v12

    .line 163
    move-object v5, v1

    move v4, v8

    move/from16 v1, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 164
    move/from16 v16, v2

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v0

    mul-int/2addr v0, v11

    div-int/lit8 v0, v0, 0x3

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v1

    mul-int/2addr v1, v11

    div-int/lit8 v1, v1, 0x3

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    mul-int/2addr v2, v11

    div-int/lit8 v2, v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 165
    const-string v1, "title"

    const-string v2, "\u672a\u547d\u540d\u65e5\u7a0b"

    invoke-virtual {v15, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v1, 0x40c00000    # 6.0f

    add-float v3, p3, v1

    add-float v4, v16, v6

    const/high16 v1, 0x41200000    # 10.0f

    sub-float v5, p4, v1

    sget-object v8, Ldev/duo/hookprobe/z;->c:Landroid/graphics/Typeface;

    const/high16 v6, 0x41300000    # 11.0f

    move-object/from16 v1, p1

    move/from16 v17, v7

    move v7, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2013"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "end"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v0, 0x41c80000    # 25.0f

    add-float v4, v16, v0

    sget-object v8, Ldev/duo/hookprobe/z;->b:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, v17

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    add-int/lit8 v10, v10, 0x1

    const/high16 v0, 0x420c0000    # 35.0f

    add-float v2, v16, v0

    move-object/from16 v0, p0

    move/from16 v3, p3

    goto/16 :goto_a

    .line 169
    :cond_e
    move/from16 v16, v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v13, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fd8\u6709 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u9879\u65e5\u7a0b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-float v4, v16, v6

    sget-object v8, Ldev/duo/hookprobe/z;->b:Landroid/graphics/Typeface;

    const/high16 v6, 0x41300000    # 11.0f

    const v7, -0x6f6f69

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v5, p4

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    :cond_f
    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/text/TextPaint;ZLandroid/os/Bundle;)V
    .locals 23

    .line 43
    move-object/from16 v0, p3

    const-string v1, "error"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    const-string v1, "phoneLevel"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v1, "%"

    const-string v4, "charging"

    if-nez p2, :cond_2

    .line 46
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    const/high16 v10, 0x42860000    # 67.0f

    const/4 v12, 0x0

    const/high16 v8, 0x41300000    # 11.0f

    const/high16 v9, 0x41200000    # 10.0f

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-static/range {v6 .. v13}, Ldev/duo/hookprobe/z;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFIIZ)V

    .line 47
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-gez v11, :cond_0

    const-string v0, "\u2014"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object/from16 v16, v0

    sget-object v22, Ldev/duo/hookprobe/z;->a:Landroid/graphics/Typeface;

    const/high16 v20, 0x42300000    # 44.0f

    const/16 v21, -0x1

    const/high16 v17, 0x41400000    # 12.0f

    const/high16 v18, 0x430c0000    # 140.0f

    const/high16 v19, 0x43060000    # 134.0f

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    invoke-static/range {v14 .. v22}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    return-void

    .line 48
    :cond_1
    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v7, 0x42ce0000    # 103.0f

    const/high16 v8, 0x43060000    # 134.0f

    const/4 v9, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static/range {v3 .. v9}, Ldev/duo/hookprobe/z;->a(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFI)V

    return-void

    :cond_2
    nop

    .line 51
    const-string v6, "wearableLevel"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 52
    const-string v7, "headsetLevel"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "keyboardLevel"

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    filled-new-array {v11, v6, v7, v3}, [I

    move-result-object v3

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    const/4 v8, 0x4

    if-ge v7, v8, :cond_5

    int-to-float v8, v7

    const v9, 0x42a15555

    mul-float/2addr v8, v9

    const/high16 v9, 0x41500000    # 13.0f

    add-float/2addr v8, v9

    const/high16 v9, 0x40400000    # 3.0f

    add-float v16, v8, v9

    .line 55
    aget v19, v3, v7

    if-nez v7, :cond_3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    move/from16 v21, v9

    goto :goto_2

    :cond_3
    move/from16 v21, v6

    :goto_2
    const/high16 v17, 0x42080000    # 34.0f

    const/high16 v18, 0x42800000    # 64.0f

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v20, v7

    invoke-static/range {v14 .. v21}, Ldev/duo/hookprobe/z;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFIIZ)V

    .line 56
    aget v9, v3, v7

    if-ltz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget v10, v3, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/high16 v9, 0x420c0000    # 35.0f

    add-float v17, v8, v9

    sget-object v22, Ldev/duo/hookprobe/z;->b:Landroid/graphics/Typeface;

    const/high16 v20, 0x41a00000    # 20.0f

    const/16 v21, -0x1

    const/high16 v18, 0x42fa0000    # 125.0f

    const/high16 v19, 0x428c0000    # 70.0f

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    invoke-static/range {v14 .. v22}, Ldev/duo/hookprobe/z;->a(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 58
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "deviceError"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_6
    move-object/from16 v16, v5

    .line 59
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v22, Ldev/duo/hookprobe/z;->c:Landroid/graphics/Typeface;

    const/high16 v20, 0x41300000    # 11.0f

    const/16 v21, -0x1

    const/high16 v17, 0x41800000    # 16.0f

    const/high16 v18, 0x43130000    # 147.0f

    const/high16 v19, 0x43990000    # 306.0f

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    invoke-static/range {v14 .. v22}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    :cond_7
    return-void
.end method

.method private static b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V
    .locals 1

    .line 24
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    invoke-virtual {p1, p7}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    invoke-virtual {p1, p8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 27
    invoke-virtual {p1, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 28
    sget-object p6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 29
    const/16 p6, 0xa

    const/16 p7, 0x20

    invoke-virtual {p2, p6, p7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    const/16 p6, 0xd

    invoke-virtual {p2, p6, p7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 30
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p2, p1, p5, p6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static b(Landroid/graphics/Canvas;Landroid/text/TextPaint;ZLandroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v9, p3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "now"

    invoke-virtual {v9, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v2, "EEEE"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/high16 v11, 0x430f0000    # 143.0f

    const/high16 v12, 0x42fc0000    # 126.0f

    if-eqz p2, :cond_0

    move v5, v11

    goto :goto_0

    :cond_0
    move v5, v12

    .line 4
    :goto_0
    sget-object v8, Ldev/duo/hookprobe/z;->c:Landroid/graphics/Typeface;

    .line 5
    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41d00000    # 26.0f

    const/high16 v6, 0x41300000    # 11.0f

    const v7, -0xc4d0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    .line 7
    move-object v13, v8

    const/4 v14, 0x5

    invoke-virtual {v10, v14}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v8, Ldev/duo/hookprobe/z;->a:Landroid/graphics/Typeface;

    const/high16 v6, 0x42100000    # 36.0f

    const/high16 v7, -0x1000000

    const/high16 v4, 0x42780000    # 62.0f

    const/high16 v5, 0x42fc0000    # 126.0f

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    if-eqz p2, :cond_1

    .line 9
    const v0, -0x131311

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    const/high16 v1, 0x43330000    # 179.0f

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x43330000    # 179.0f

    const/high16 v4, 0x430e0000    # 142.0f

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 12
    const/4 v15, 0x1

    invoke-virtual {v10, v14, v15}, Ljava/util/Calendar;->add(II)V

    .line 13
    const/high16 v6, 0x41300000    # 11.0f

    const v7, -0x939390

    const-string v2, "\u660e\u5929"

    const/high16 v3, 0x43440000    # 196.0f

    const/high16 v4, 0x41d00000    # 26.0f

    const/high16 v5, 0x42fc0000    # 126.0f

    move-object/from16 v1, p1

    move-object v8, v13

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6708 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v14}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u65e5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Ldev/duo/hookprobe/z;->b:Landroid/graphics/Typeface;

    const/high16 v6, 0x41b00000    # 22.0f

    const/high16 v7, -0x1000000

    const/high16 v4, 0x426c0000    # 59.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    .line 17
    :cond_1
    const-string v0, "error"

    const-string v1, ""

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    move v5, v11

    goto :goto_1

    :cond_2
    move v5, v12

    .line 19
    :goto_1
    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x42b60000    # 91.0f

    const v6, -0x939390

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v6}, Ldev/duo/hookprobe/z;->a(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFI)V

    return-void

    .line 22
    :cond_3
    const-string v0, "todayEvents"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz p2, :cond_4

    move v4, v11

    goto :goto_2

    :cond_4
    move v4, v12

    :goto_2
    const/4 v5, 0x0

    const/high16 v3, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v5}, Ldev/duo/hookprobe/z;->a(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/util/ArrayList;FFZ)V

    if-eqz p2, :cond_5

    .line 23
    const-string v0, "tomorrowEvents"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/high16 v4, 0x42fc0000    # 126.0f

    const/4 v5, 0x1

    const/high16 v3, 0x43440000    # 196.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v5}, Ldev/duo/hookprobe/z;->a(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/util/ArrayList;FFZ)V

    :cond_5
    return-void
.end method

.method private static c(Landroid/graphics/Canvas;Landroid/text/TextPaint;ZLandroid/os/Bundle;)V
    .locals 19

    move-object/from16 v9, p3

    const/high16 v10, 0x42fc0000    # 126.0f

    if-eqz p2, :cond_0

    const/high16 v0, 0x42de0000    # 111.0f

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v10

    .line 1
    :goto_0
    const-string v0, "city"

    const-string v11, ""

    invoke-virtual {v9, v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5929\u6c14"

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v2, v12

    :goto_1
    sget-object v8, Ldev/duo/hookprobe/z;->c:Landroid/graphics/Typeface;

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, -0x1

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41f80000    # 31.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    .line 3
    move-object v13, v8

    const-string v0, "error"

    invoke-virtual {v9, v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    const-string v12, "temperature"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_a

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "\u00b0"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    sget-object v8, Ldev/duo/hookprobe/z;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 10
    const/high16 v0, 0x42440000    # 49.0f

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    mul-float v3, v5, v0

    .line 11
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 12
    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x429c0000    # 78.0f

    const/4 v7, -0x1

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    .line 13
    move v7, v5

    const-string v14, "isNight"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 14
    const-string v15, "conditionCode"

    const/4 v8, -0x1

    invoke-virtual {v9, v15, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 15
    const-string v0, "condition"

    invoke-virtual {v9, v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "\u5929\u6c14\u672a\u77e5"

    :cond_3
    move-object v11, v0

    if-nez p2, :cond_4

    .line 17
    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x42b60000    # 91.0f

    const/high16 v6, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v6}, Ldev/duo/hookprobe/z;->a(Landroid/graphics/Canvas;Landroid/text/TextPaint;IZFFF)V

    :cond_4
    if-eqz p2, :cond_5

    const/high16 v0, 0x42c60000    # 99.0f

    goto :goto_2

    :cond_5
    const/high16 v0, 0x42fe0000    # 127.0f

    :goto_2
    move v4, v0

    .line 18
    move v0, v3

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v6, 0x41400000    # 12.0f

    move v5, v7

    const/4 v7, -0x1

    move-object v1, v13

    move v13, v8

    move-object v8, v1

    move-object/from16 v1, p1

    move-object v2, v11

    move v11, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    .line 19
    const-string v0, "high"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v16, "\u2014"

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object/from16 v0, v16

    .line 20
    :goto_3
    const-string v1, "low"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_7
    move-object/from16 v1, v16

    .line 21
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6700\u9ad8 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u3000\u6700\u4f4e "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_8

    const/high16 v0, 0x42e40000    # 114.0f

    goto :goto_5

    :cond_8
    const/high16 v0, 0x430e0000    # 142.0f

    :goto_5
    move v4, v0

    const/high16 v6, 0x41300000    # 11.0f

    const/4 v7, -0x1

    const/high16 v3, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    if-nez p2, :cond_9

    return-void

    .line 23
    :cond_9
    const-string v0, "hourly"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_9

    .line 28
    :cond_a
    new-instance v9, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v2, "H\u65f6"

    invoke-direct {v9, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v1, 0x0

    .line 29
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    int-to-float v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    const v4, 0x420f3333    # 35.8f

    mul-float/2addr v3, v4

    const/high16 v4, 0x43100000    # 144.0f

    add-float/2addr v3, v4

    .line 32
    const-string v4, "time"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_b
    move-object/from16 v4, v16

    :goto_7
    sget-object v8, Ldev/duo/hookprobe/z;->c:Landroid/graphics/Typeface;

    const/high16 v6, 0x41300000    # 11.0f

    const/4 v7, -0x1

    move-object v5, v2

    move-object v2, v4

    const/high16 v4, 0x42180000    # 38.0f

    move-object/from16 v17, v5

    const/high16 v5, 0x42040000    # 33.0f

    move/from16 v18, v1

    move-object/from16 p2, v9

    move-object/from16 v9, v17

    move-object/from16 v1, p1

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->a(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    .line 34
    move v7, v3

    invoke-virtual {v9, v15, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v9, v14, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/high16 v0, 0x41180000    # 9.5f

    sub-float v4, v7, v0

    const/high16 v5, 0x42500000    # 52.0f

    const/high16 v6, 0x41980000    # 19.0f

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Ldev/duo/hookprobe/z;->a(Landroid/graphics/Canvas;Landroid/text/TextPaint;IZFFF)V

    .line 35
    invoke-virtual {v9, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_8

    :cond_c
    move-object/from16 v2, v16

    :goto_8
    sget-object v8, Ldev/duo/hookprobe/z;->b:Landroid/graphics/Typeface;

    const/high16 v6, 0x41600000    # 14.0f

    move v3, v7

    const/4 v7, -0x1

    const/high16 v4, 0x42c00000    # 96.0f

    const/high16 v5, 0x42040000    # 33.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->a(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    add-int/lit8 v1, v18, 0x1

    move-object/from16 v9, p2

    move-object/from16 v0, v17

    goto/16 :goto_6

    .line 38
    :cond_d
    sget-object v8, Ldev/duo/hookprobe/z;->b:Landroid/graphics/Typeface;

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v7, -0x1

    const-string v2, "\u5c0f\u65f6\u9884\u62a5"

    const/high16 v3, 0x43100000    # 144.0f

    const/high16 v4, 0x430c0000    # 140.0f

    const/high16 v5, 0x43310000    # 177.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    return-void

    .line 39
    :cond_e
    :goto_9
    const-string v0, "hourlyError"

    const-string v1, "\u6682\u65e0\u5c0f\u65f6\u9884\u62a5"

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v8, Ldev/duo/hookprobe/z;->b:Landroid/graphics/Typeface;

    const/high16 v6, 0x41400000    # 12.0f

    const/4 v7, -0x1

    const/high16 v3, 0x43100000    # 144.0f

    const/high16 v4, 0x42980000    # 76.0f

    const/high16 v5, 0x43330000    # 179.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v8}, Ldev/duo/hookprobe/z;->b(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFFILandroid/graphics/Typeface;)V

    return-void

    .line 40
    :cond_f
    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, "\u6682\u65e0\u5929\u6c14\u6570\u636e"

    :cond_10
    move-object v2, v0

    if-eqz p2, :cond_11

    const/high16 v10, 0x43990000    # 306.0f

    :cond_11
    move v5, v10

    const/4 v6, -0x1

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x42980000    # 76.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v6}, Ldev/duo/hookprobe/z;->a(Landroid/graphics/Canvas;Landroid/text/TextPaint;Ljava/lang/String;FFFI)V

    return-void
.end method
