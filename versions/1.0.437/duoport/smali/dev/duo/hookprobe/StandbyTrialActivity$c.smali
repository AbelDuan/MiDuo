.class final Ldev/duo/hookprobe/StandbyTrialActivity$c;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/StandbyTrialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->b:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    const v1, 0x44298000    # 678.0f

    const/high16 v2, 0x43e90000    # 466.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->c:Landroid/graphics/RectF;

    .line 10
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "analog-cardinal-dark-dial.png"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 12
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz p1, :cond_0

    .line 13
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 14
    :cond_0
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 12
    :catch_1
    move-exception p1

    move-object v1, v0

    :goto_1
    move-object v0, p1

    .line 14
    :cond_1
    :goto_2
    if-nez v1, :cond_2

    .line 19
    const-string p1, "DuoStandby"

    const-string v2, "Trial clock dial unavailable, drawing without it"

    invoke-static {p1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    :cond_2
    iput-object v1, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->a:Landroid/graphics/Bitmap;

    .line 22
    iget-object p1, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFFI)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    const v0, 0x43a98000    # 339.0f

    const/high16 v1, 0x43690000    # 233.0f

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3
    iget-object p2, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->b:Landroid/graphics/Paint;

    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object p2, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->b:Landroid/graphics/Paint;

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object p2, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->b:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    add-float v4, p4, v1

    sub-float v6, v1, p3

    .line 6
    iget-object v7, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->b:Landroid/graphics/Paint;

    const v3, 0x43a98000    # 339.0f

    const v5, 0x43a98000    # 339.0f

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 7
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    const v2, -0xf7f7f8

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x44298000    # 678.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x43e90000    # 466.0f

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v2

    sub-float/2addr v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v2

    sub-float/2addr v6, v5

    div-float/2addr v6, v3

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6
    iget-object v2, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v3, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->c:Landroid/graphics/RectF;

    iget-object v4, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->b:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 7
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 8
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 9
    iget-object v6, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->b:Landroid/graphics/Paint;

    const v8, -0xc0f15

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v6, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->b:Landroid/graphics/Paint;

    const/high16 v8, 0x41b00000    # 22.0f

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 11
    iget-object v6, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->b:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "HH:mm:ss"

    goto :goto_0

    :cond_1
    const-string v6, "h:mm:ss"

    .line 14
    :goto_0
    invoke-static {v6, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 15
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->b:Landroid/graphics/Paint;

    .line 16
    const/high16 v9, 0x43750000    # 245.0f

    const/high16 v10, 0x43710000    # 241.0f

    invoke-virtual {p1, v6, v9, v10, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v8, "EEEd"

    invoke-static {v6, v8}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-static {v6, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->b:Landroid/graphics/Paint;

    .line 23
    const v8, 0x43da8000    # 437.0f

    invoke-virtual {p1, v2, v8, v10, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 26
    rem-int/2addr v3, v4

    int-to-float v2, v3

    int-to-float v8, v5

    const/high16 v9, 0x42700000    # 60.0f

    div-float v3, v8, v9

    add-float/2addr v2, v3

    int-to-float v10, v7

    const/high16 v3, 0x45610000    # 3600.0f

    div-float v3, v10, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v2, v3

    const/high16 v5, 0x41300000    # 11.0f

    const/4 v6, -0x1

    const/high16 v3, 0x42dc0000    # 110.0f

    const/high16 v4, 0x41500000    # 13.0f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ldev/duo/hookprobe/StandbyTrialActivity$c;->a(Landroid/graphics/Canvas;FFFFI)V

    div-float/2addr v10, v9

    add-float/2addr v8, v10

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float v2, v8, v9

    .line 27
    const/high16 v3, 0x433b0000    # 187.0f

    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v5, 0x41100000    # 9.0f

    invoke-direct/range {v0 .. v6}, Ldev/duo/hookprobe/StandbyTrialActivity$c;->a(Landroid/graphics/Canvas;FFFFI)V

    mul-int/lit8 v7, v7, 0x6

    int-to-float v2, v7

    .line 28
    const/high16 v4, 0x41b00000    # 22.0f

    const/high16 v5, 0x40200000    # 2.5f

    const/16 v6, -0x60f6

    invoke-direct/range {v0 .. v6}, Ldev/duo/hookprobe/StandbyTrialActivity$c;->a(Landroid/graphics/Canvas;FFFFI)V

    .line 29
    iget-object v2, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->b:Landroid/graphics/Paint;

    const/16 v3, -0x60f6

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v2, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->b:Landroid/graphics/Paint;

    const v3, 0x43a98000    # 339.0f

    const/high16 v4, 0x43690000    # 233.0f

    invoke-virtual {p1, v3, v4, v9, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 31
    iget-object v2, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->b:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity$c;->b:Landroid/graphics/Paint;

    const v2, 0x4019999a    # 2.4f

    invoke-virtual {p1, v3, v4, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
