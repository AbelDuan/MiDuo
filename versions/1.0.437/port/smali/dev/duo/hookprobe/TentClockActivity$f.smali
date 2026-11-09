.class final Ldev/duo/hookprobe/TentClockActivity$f;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/TentClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/ColorMatrixColorFilter;

.field private final e:J

.field private f:I

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    const v1, 0x44298000    # 678.0f

    const/high16 v2, 0x43e90000    # 466.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Ldev/duo/hookprobe/TentClockActivity$f;->c:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    iput-object v0, p0, Ldev/duo/hookprobe/TentClockActivity$f;->d:Landroid/graphics/ColorMatrixColorFilter;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldev/duo/hookprobe/TentClockActivity$f;->e:J

    .line 9
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ldev/duo/hookprobe/TentClockActivity$f;->g:J

    .line 15
    const-string v0, "tent_clock"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "face"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ldev/duo/hookprobe/TentClockActivity$f;->k:I

    .line 19
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v2, "analog-cardinal-dark-dial.png"

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    :try_start_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 21
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz p1, :cond_0

    .line 22
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 23
    :cond_0
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 21
    :catch_1
    move-exception p1

    move-object v2, v0

    :goto_1
    move-object v0, p1

    .line 23
    :cond_1
    :goto_2
    if-nez v2, :cond_2

    .line 28
    const-string p1, "DuoStandby"

    const-string v3, "Awake clock dial unavailable, drawing without it"

    invoke-static {p1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :cond_2
    iput-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->a:Landroid/graphics/Bitmap;

    .line 31
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v2, 0x1f4

    invoke-static {v0, v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    :array_0
    .array-data 4
        0x3f266666    # 0.65f
        0x0
        0x0
        0x0
        -0x3f59999a    # -5.2f
        0x0
        0x3f266666    # 0.65f
        0x0
        0x0
        -0x3f59999a    # -5.2f
        0x0
        0x0
        0x3f266666    # 0.65f
        0x0
        -0x3f59999a    # -5.2f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic a(Ldev/duo/hookprobe/TentClockActivity$f;)I
    .locals 0

    .line 3
    iget p0, p0, Ldev/duo/hookprobe/TentClockActivity$f;->k:I

    return p0
.end method

.method static synthetic a(Ldev/duo/hookprobe/TentClockActivity$f;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Ldev/duo/hookprobe/TentClockActivity$f;->g:J

    return-wide p1
.end method

.method private a(I)V
    .locals 2

    .line 4
    iget v0, p0, Ldev/duo/hookprobe/TentClockActivity$f;->k:I

    add-int/2addr v0, p1

    const/4 p1, 0x4

    invoke-static {v0, p1}, Ljava/lang/Math;->floorMod(II)I

    move-result p1

    iput p1, p0, Ldev/duo/hookprobe/TentClockActivity$f;->k:I

    .line 5
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ldev/duo/hookprobe/TentClockActivity$f;->g:J

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tent_clock"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget v0, p0, Ldev/duo/hookprobe/TentClockActivity$f;->k:I

    const-string v1, "face"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFFZZ)V
    .locals 13

    .line 8
    iget-object v0, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz p6, :cond_0

    const/16 v2, 0xc

    goto :goto_1

    :cond_0
    const/16 v2, 0x3c

    :goto_1
    if-ge v1, v2, :cond_11

    int-to-double v2, v1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    if-eqz p6, :cond_1

    const/4 v4, 0x6

    goto :goto_2

    :cond_1
    const/16 v4, 0x1e

    :goto_2
    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    if-eqz p6, :cond_2

    move/from16 v3, p4

    goto :goto_5

    .line 12
    :cond_2
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x38d1b717    # 1.0E-4f

    cmpg-float v3, v3, v5

    const v6, 0x461c4000    # 10000.0f

    if-gez v3, :cond_3

    move v3, v6

    goto :goto_3

    :cond_3
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, p4, v3

    .line 13
    :goto_3
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v5, v7, v5

    if-gez v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v6, p5, v5

    .line 14
    :goto_4
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_5
    if-nez p6, :cond_6

    .line 16
    rem-int/lit8 v5, v1, 0x5

    if-nez v5, :cond_5

    goto :goto_6

    :cond_5
    move v5, v0

    goto :goto_7

    :cond_6
    :goto_6
    const/4 v5, 0x1

    :goto_7
    if-eqz p6, :cond_7

    const/high16 v6, 0x41700000    # 15.0f

    goto :goto_9

    :cond_7
    if-eqz p7, :cond_9

    if-eqz v5, :cond_8

    const/16 v6, 0x22

    goto :goto_8

    :cond_8
    const/16 v6, 0x12

    :goto_8
    int-to-float v6, v6

    goto :goto_9

    :cond_9
    if-eqz v5, :cond_a

    const/high16 v6, 0x42140000    # 37.0f

    goto :goto_9

    :cond_a
    const/high16 v6, 0x41a00000    # 20.0f

    .line 18
    :goto_9
    iget-object v7, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    if-eqz v5, :cond_b

    const v8, -0x595b61

    goto :goto_a

    :cond_b
    if-eqz p7, :cond_c

    const v8, -0xb27f4b

    goto :goto_a

    :cond_c
    const v8, -0xb7b7b8

    :goto_a
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object v7, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    if-eqz p6, :cond_d

    const/high16 v5, 0x40a00000    # 5.0f

    goto :goto_b

    :cond_d
    if-eqz v5, :cond_f

    if-eqz p7, :cond_e

    const/high16 v5, 0x40800000    # 4.0f

    goto :goto_b

    :cond_e
    const v5, 0x406ccccd    # 3.7f

    goto :goto_b

    :cond_f
    if-eqz p7, :cond_10

    const/high16 v5, 0x40200000    # 2.5f

    goto :goto_b

    :cond_10
    const/high16 v5, 0x40000000    # 2.0f

    :goto_b
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sub-float v5, v3, v6

    mul-float v6, v5, v4

    add-float v8, p2, v6

    mul-float/2addr v5, v2

    sub-float v9, p3, v5

    mul-float/2addr v4, v3

    add-float v10, p2, v4

    mul-float/2addr v3, v2

    sub-float v11, p3, v3

    .line 20
    iget-object v12, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FIIFFFI)V
    .locals 0

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float p3, p3

    int-to-float p4, p4

    .line 87
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 88
    iget-object p2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    invoke-virtual {p2, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object p2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget-object p2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    sget-object p7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    add-float p2, p4, p6

    sub-float/2addr p4, p5

    .line 91
    iget-object p5, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    move-object p6, p1

    move p1, p3

    move-object p0, p6

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 92
    invoke-virtual {p6}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljava/util/Calendar;)V
    .locals 13

    .line 71
    const/high16 v2, 0x43010000    # 129.0f

    const/high16 v3, 0x42fc0000    # 126.0f

    const/high16 v4, 0x42980000    # 76.0f

    const/high16 v5, 0x42980000    # 76.0f

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Ldev/duo/hookprobe/TentClockActivity$f;->a(Landroid/graphics/Canvas;FFFFZZ)V

    .line 72
    const v2, 0x43de8000    # 445.0f

    const/high16 v3, 0x43620000    # 226.0f

    const/high16 v4, 0x43350000    # 181.0f

    const/high16 v5, 0x432f0000    # 175.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Ldev/duo/hookprobe/TentClockActivity$f;->a(Landroid/graphics/Canvas;FFFFZZ)V

    .line 73
    iget-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    const-string v3, "sans-serif-rounded"

    const/4 v12, 0x1

    invoke-static {v3, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 74
    iget-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    const v3, -0x474748

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    const/4 v2, 0x6

    const/16 v3, 0x9

    const/16 v4, 0xc

    const/4 v5, 0x3

    filled-new-array {v4, v5, v2, v3}, [I

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    aget v5, v2, v4

    int-to-double v6, v5

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    div-double/2addr v6, v8

    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x42e80000    # 116.0f

    mul-float/2addr v8, v9

    const v10, 0x43de8000    # 445.0f

    add-float/2addr v8, v10

    .line 78
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v9

    const/high16 v7, 0x43620000    # 226.0f

    sub-float/2addr v7, v6

    const/high16 v6, 0x41880000    # 17.0f

    add-float/2addr v7, v6

    iget-object v6, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    .line 79
    invoke-virtual {p1, v5, v8, v7, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    :cond_0
    iget-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v5, 0x1f4

    invoke-static {v4, v5, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 83
    const/16 v3, 0x81

    const/16 v4, 0x7e

    const/high16 v5, 0x422c0000    # 43.0f

    const/high16 v6, 0x429a0000    # 77.0f

    const/high16 v7, 0x429c0000    # 78.0f

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const v10, 0x3fcccccd    # 1.6f

    const v11, -0x29294a

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Ldev/duo/hookprobe/TentClockActivity$f;->a(Landroid/graphics/Canvas;Ljava/util/Calendar;IIFFFFFFI)V

    .line 84
    const/16 v3, 0x1bd

    const/16 v4, 0xe2

    const/high16 v5, 0x42d60000    # 107.0f

    const/high16 v6, 0x43320000    # 178.0f

    const/high16 v7, 0x43320000    # 178.0f

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x41200000    # 10.0f

    const v10, 0x400ccccd    # 2.2f

    invoke-direct/range {v0 .. v11}, Ldev/duo/hookprobe/TentClockActivity$f;->a(Landroid/graphics/Canvas;Ljava/util/Calendar;IIFFFFFFI)V

    .line 85
    invoke-direct {p0, p1, p2, v12}, Ldev/duo/hookprobe/TentClockActivity$f;->a(Landroid/graphics/Canvas;Ljava/util/Calendar;Z)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljava/util/Calendar;IIFFFFFFI)V
    .locals 14

    .line 21
    move-object/from16 v0, p2

    move/from16 v4, p3

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 22
    rem-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v10

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v11, 0x41f00000    # 30.0f

    mul-float v3, v1, v11

    const/4 v12, 0x0

    const/16 v13, 0x153

    if-ne v4, v13, :cond_0

    const/high16 v1, 0x41500000    # 13.0f

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v12

    :goto_0
    const v9, -0x222223

    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p8

    invoke-direct/range {v1 .. v9}, Ldev/duo/hookprobe/TentClockActivity$f;->a(Landroid/graphics/Canvas;FIIFFFI)V

    mul-int/lit8 v10, v10, 0x6

    int-to-float v3, v10

    if-ne v4, v13, :cond_1

    const/high16 v12, 0x41600000    # 14.0f

    :cond_1
    move v7, v12

    .line 23
    const v9, -0x222223

    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p6

    move/from16 v8, p9

    invoke-direct/range {v1 .. v9}, Ldev/duo/hookprobe/TentClockActivity$f;->a(Landroid/graphics/Canvas;FIIFFFI)V

    .line 24
    iget v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->f:I

    const/high16 v9, 0x40c00000    # 6.0f

    if-eqz v2, :cond_4

    .line 25
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-float v2, v2

    .line 26
    iget v3, p0, Ldev/duo/hookprobe/TentClockActivity$f;->f:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    add-float/2addr v2, v0

    :cond_2
    mul-float/2addr v2, v9

    if-ne v4, v13, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v11, 0x41200000    # 10.0f

    :goto_1
    move v6, v11

    .line 27
    move-object v0, p0

    move-object v1, p1

    move/from16 v5, p7

    move/from16 v7, p10

    move/from16 v8, p11

    move v3, v4

    move/from16 v4, p4

    invoke-direct/range {v0 .. v8}, Ldev/duo/hookprobe/TentClockActivity$f;->a(Landroid/graphics/Canvas;FIIFFFI)V

    move v4, v3

    .line 29
    :cond_4
    iget-object v0, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    move/from16 v8, p11

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v4

    move/from16 v5, p4

    int-to-float v3, v5

    const/16 v5, 0x1bd

    const/16 v6, 0x81

    if-ne v4, v6, :cond_5

    const/high16 v9, 0x40a00000    # 5.0f

    goto :goto_2

    :cond_5
    if-ne v4, v5, :cond_6

    const/high16 v9, 0x41100000    # 9.0f

    .line 30
    :cond_6
    :goto_2
    iget-object v7, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v9, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 31
    iget-object v7, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    if-ne v4, v13, :cond_7

    const/4 v8, -0x1

    goto :goto_3

    :cond_7
    const/high16 v8, -0x1000000

    :goto_3
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    if-ne v4, v6, :cond_8

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_4

    :cond_8
    if-ne v4, v5, :cond_9

    const/high16 v4, 0x40600000    # 3.5f

    goto :goto_4

    :cond_9
    const v4, 0x4019999a    # 2.4f

    .line 32
    :goto_4
    iget-object v1, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljava/util/Calendar;Z)V
    .locals 24

    .line 33
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz p3, :cond_0

    const v4, -0x48301f

    goto :goto_0

    :cond_0
    const v4, -0xff8501

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x5

    if-nez p3, :cond_1

    .line 36
    iget-object v7, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    const-string v8, "serif"

    invoke-static {v8, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 37
    iget-object v7, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    const/high16 v8, 0x43960000    # 300.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v7, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v7, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    const v8, 0x70ff453a

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    const v9, 0x43ae8000    # 349.0f

    const v10, 0x43ca8000    # 405.0f

    invoke-virtual {v1, v7, v9, v10, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 40
    :cond_1
    iget-object v7, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v9, 0x1f4

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 41
    iget-object v7, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v7, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    if-eqz p3, :cond_2

    const/high16 v9, 0x41700000    # 15.0f

    goto :goto_1

    :cond_2
    const/high16 v9, 0x41c80000    # 25.0f

    :goto_1
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    iget-object v7, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    if-eqz p3, :cond_3

    const v11, -0x29294a

    goto :goto_2

    :cond_3
    const v11, -0x30c3cd

    :goto_2
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v7, v0, Ldev/duo/hookprobe/TentClockActivity$f;->j:Ljava/lang/String;

    if-eqz p3, :cond_4

    const/high16 v11, 0x423c0000    # 47.0f

    goto :goto_3

    :cond_4
    const/high16 v11, 0x422c0000    # 43.0f

    :goto_3
    const/high16 v12, 0x42700000    # 60.0f

    if-eqz p3, :cond_5

    const/high16 v13, 0x43860000    # 268.0f

    goto :goto_4

    :cond_5
    move v13, v12

    :goto_4
    iget-object v14, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v11, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-nez p3, :cond_6

    .line 44
    iget-object v7, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v7, v0, Ldev/duo/hookprobe/TentClockActivity$f;->h:Ljava/lang/String;

    iget-object v11, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    const v13, 0x441ec000    # 635.0f

    invoke-virtual {v1, v7, v13, v12, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 45
    :cond_6
    iget-object v7, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v7, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    if-eqz p3, :cond_7

    const/high16 v11, 0x41500000    # 13.0f

    goto :goto_5

    :cond_7
    const/high16 v11, 0x41c80000    # 25.0f

    :goto_5
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v7, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    const-string v7, "\u516d"

    const-string v11, "\u4e94"

    const-string v12, "\u56db"

    const-string v13, "\u4e09"

    const-string v14, "\u4e8c"

    const-string v15, "\u4e00"

    const-string v16, "F"

    const-string v17, "W"

    const-string v18, "M"

    const/16 v19, 0x6

    const-string v20, "S"

    const/16 v21, 0x3

    const-string v22, "T"

    const/16 v23, 0x4

    const/4 v8, 0x7

    const/4 v9, 0x1

    if-eqz p3, :cond_9

    if-eqz v3, :cond_8

    .line 46
    new-array v3, v8, [Ljava/lang/String;

    const-string v16, "\u65e5"

    aput-object v16, v3, v10

    aput-object v15, v3, v9

    aput-object v14, v3, v5

    aput-object v13, v3, v21

    aput-object v12, v3, v23

    aput-object v11, v3, v6

    aput-object v7, v3, v19

    goto :goto_6

    :cond_8
    nop

    .line 47
    new-array v3, v8, [Ljava/lang/String;

    aput-object v20, v3, v10

    aput-object v18, v3, v9

    aput-object v22, v3, v5

    aput-object v17, v3, v21

    aput-object v22, v3, v23

    aput-object v16, v3, v6

    aput-object v20, v3, v19

    goto :goto_6

    :cond_9
    if-eqz v3, :cond_a

    .line 48
    new-array v3, v8, [Ljava/lang/String;

    aput-object v15, v3, v10

    aput-object v14, v3, v9

    aput-object v13, v3, v5

    aput-object v12, v3, v21

    aput-object v11, v3, v23

    aput-object v7, v3, v6

    const-string v7, "\u65e5"

    aput-object v7, v3, v19

    goto :goto_6

    :cond_a
    nop

    .line 49
    new-array v3, v8, [Ljava/lang/String;

    aput-object v18, v3, v10

    aput-object v22, v3, v9

    aput-object v17, v3, v5

    aput-object v22, v3, v21

    aput-object v16, v3, v23

    aput-object v20, v3, v6

    aput-object v20, v3, v19

    :goto_6
    move v7, v10

    :goto_7
    if-ge v7, v8, :cond_e

    .line 50
    aget-object v11, v3, v7

    if-eqz p3, :cond_b

    const/16 v12, 0x33

    goto :goto_8

    :cond_b
    const/16 v12, 0x42

    :goto_8
    int-to-float v12, v12

    int-to-float v13, v7

    if-eqz p3, :cond_c

    const/high16 v14, 0x41cc0000    # 25.5f

    goto :goto_9

    :cond_c
    const/high16 v14, 0x42b00000    # 88.0f

    :goto_9
    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    if-eqz p3, :cond_d

    const/high16 v13, 0x43920000    # 292.0f

    goto :goto_a

    :cond_d
    const/high16 v13, 0x42d40000    # 106.0f

    .line 51
    :goto_a
    iget-object v14, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    .line 52
    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 54
    :cond_e
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    invoke-virtual {v3, v6, v9}, Ljava/util/Calendar;->set(II)V

    if-eqz p3, :cond_f

    .line 55
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v7, v9

    goto :goto_b

    :cond_f
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v6

    rem-int/2addr v7, v8

    :goto_b
    neg-int v7, v7

    .line 56
    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->add(II)V

    move v7, v10

    :goto_c
    const/16 v8, 0x2a

    if-ge v7, v8, :cond_1e

    .line 58
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v8, v11, :cond_10

    .line 59
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v8, v11, :cond_10

    move v8, v9

    goto :goto_d

    :cond_10
    move v8, v10

    :goto_d
    if-eqz p3, :cond_11

    if-nez v8, :cond_11

    goto/16 :goto_17

    :cond_11
    if-eqz p3, :cond_12

    const/16 v11, 0x33

    goto :goto_e

    :cond_12
    const/16 v11, 0x42

    :goto_e
    int-to-float v11, v11

    .line 61
    rem-int/lit8 v12, v7, 0x7

    int-to-float v12, v12

    if-eqz p3, :cond_13

    const/high16 v13, 0x41cc0000    # 25.5f

    goto :goto_f

    :cond_13
    const/high16 v13, 0x42b00000    # 88.0f

    :goto_f
    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    if-eqz p3, :cond_14

    const/16 v12, 0x13e

    goto :goto_10

    :cond_14
    const/16 v12, 0xa2

    .line 62
    :goto_10
    div-int/lit8 v13, v7, 0x7

    if-eqz p3, :cond_15

    const/16 v14, 0x1b

    goto :goto_11

    :cond_15
    const/16 v14, 0x34

    :goto_11
    mul-int/2addr v13, v14

    add-int/2addr v12, v13

    int-to-float v12, v12

    if-eqz v8, :cond_16

    .line 63
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-ne v13, v14, :cond_16

    move v13, v9

    goto :goto_12

    :cond_16
    move v13, v10

    :goto_12
    if-eqz v13, :cond_1a

    .line 65
    iget-object v14, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    if-eqz p3, :cond_17

    const v15, -0x29294a

    goto :goto_13

    :cond_17
    move v15, v4

    :goto_13
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p3, :cond_18

    move/from16 v14, v23

    goto :goto_14

    :cond_18
    const/16 v14, 0x9

    :goto_14
    int-to-float v14, v14

    sub-float v14, v12, v14

    if-eqz p3, :cond_19

    const/high16 v15, 0x41400000    # 12.0f

    goto :goto_15

    :cond_19
    const/high16 v15, 0x41c80000    # 25.0f

    .line 66
    :goto_15
    iget-object v5, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v14, v15, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 68
    :cond_1a
    iget-object v5, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    if-eqz v13, :cond_1c

    if-eqz p3, :cond_1b

    const v8, -0xf7f7f8

    goto :goto_16

    :cond_1b
    const v8, -0xf9e5cd

    goto :goto_16

    :cond_1c
    if-eqz v8, :cond_1d

    move v8, v4

    goto :goto_16

    :cond_1d
    const v8, 0x4d007aff    # 1.3472152E8f

    :goto_16
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v8, v0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v11, v12, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_17
    add-int/lit8 v7, v7, 0x1

    .line 70
    invoke-virtual {v3, v6, v9}, Ljava/util/Calendar;->add(II)V

    const/4 v5, 0x2

    goto/16 :goto_c

    :cond_1e
    return-void
.end method

.method static synthetic a(Ldev/duo/hookprobe/TentClockActivity$f;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/TentClockActivity$f;->a(I)V

    return-void
.end method

.method static synthetic b(Ldev/duo/hookprobe/TentClockActivity$f;I)I
    .locals 0

    .line 1
    iput p1, p0, Ldev/duo/hookprobe/TentClockActivity$f;->f:I

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    iget v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->k:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const v2, -0xf9e5cd

    goto :goto_0

    :cond_0
    const/high16 v2, -0x1000000

    :goto_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Ldev/duo/hookprobe/TentClockActivity$f;->e:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x2bf20

    div-long/2addr v4, v6

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    const-wide/16 v6, 0x9

    rem-long/2addr v4, v6

    .line 4
    const-wide/16 v6, 0x3

    rem-long v8, v4, v6

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    const-wide/16 v12, 0x2

    mul-long/2addr v8, v12

    long-to-float v2, v8

    .line 5
    div-long/2addr v4, v6

    sub-long/2addr v4, v10

    mul-long/2addr v4, v12

    long-to-float v4, v4

    .line 6
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x44298000    # 678.0f

    div-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x43e90000    # 466.0f

    div-float/2addr v4, v5

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 8
    iget-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 10
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    .line 11
    iget-wide v6, p0, Ldev/duo/hookprobe/TentClockActivity$f;->g:J

    cmp-long v2, v6, v4

    const/4 v6, 0x3

    if-eqz v2, :cond_4

    .line 12
    iput-wide v4, p0, Ldev/duo/hookprobe/TentClockActivity$f;->g:J

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "HH:mm"

    goto :goto_1

    :cond_1
    const-string v2, "h:mm"

    .line 15
    :goto_1
    invoke-static {v2, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->h:Ljava/lang/String;

    .line 17
    iget v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->k:I

    if-eq v2, v3, :cond_2

    if-ne v2, v6, :cond_3

    .line 18
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v4, "yMMMM"

    invoke-static {v2, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {v2, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 20
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->j:Ljava/lang/String;

    .line 22
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v4, "EEEd"

    invoke-static {v2, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-static {v2, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->i:Ljava/lang/String;

    .line 26
    :cond_4
    iget v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->k:I

    if-ne v2, v3, :cond_5

    .line 27
    const/4 v2, 0x0

    invoke-direct {p0, p1, v8, v2}, Ldev/duo/hookprobe/TentClockActivity$f;->a(Landroid/graphics/Canvas;Ljava/util/Calendar;Z)V

    goto/16 :goto_3

    :cond_5
    if-ne v2, v6, :cond_6

    .line 29
    invoke-direct {p0, p1, v8}, Ldev/duo/hookprobe/TentClockActivity$f;->a(Landroid/graphics/Canvas;Ljava/util/Calendar;)V

    goto/16 :goto_3

    :cond_6
    if-nez v2, :cond_7

    .line 32
    iget-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_8

    .line 33
    iget-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    iget-object v3, p0, Ldev/duo/hookprobe/TentClockActivity$f;->d:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 34
    iget-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->a:Landroid/graphics/Bitmap;

    iget-object v3, p0, Ldev/duo/hookprobe/TentClockActivity$f;->c:Landroid/graphics/RectF;

    iget-object v4, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 35
    iget-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_2

    :cond_7
    nop

    .line 37
    const v2, 0x43a98000    # 339.0f

    const/high16 v3, 0x43690000    # 233.0f

    const v4, 0x43998000    # 307.0f

    const/high16 v5, 0x43490000    # 201.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Ldev/duo/hookprobe/TentClockActivity$f;->a(Landroid/graphics/Canvas;FFFFZZ)V

    .line 38
    :cond_8
    :goto_2
    iget-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    const v3, -0x47494e

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 40
    iget-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 41
    iget-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->h:Ljava/lang/String;

    iget-object v3, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    const/high16 v4, 0x43750000    # 245.0f

    const/high16 v5, 0x43710000    # 241.0f

    invoke-virtual {p1, v2, v4, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 42
    iget-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$f;->i:Ljava/lang/String;

    iget-object v3, p0, Ldev/duo/hookprobe/TentClockActivity$f;->b:Landroid/graphics/Paint;

    const v4, 0x43da8000    # 437.0f

    invoke-virtual {p1, v2, v4, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 43
    const/16 v3, 0x153

    const/16 v4, 0xe9

    const/high16 v5, 0x42dc0000    # 110.0f

    const/high16 v6, 0x433b0000    # 187.0f

    const/high16 v7, 0x43430000    # 195.0f

    move-object v2, v8

    const/high16 v8, 0x41300000    # 11.0f

    const/high16 v9, 0x41100000    # 9.0f

    const/high16 v10, 0x40200000    # 2.5f

    const/16 v11, -0x60f6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Ldev/duo/hookprobe/TentClockActivity$f;->a(Landroid/graphics/Canvas;Ljava/util/Calendar;IIFFFFFFI)V

    .line 45
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
