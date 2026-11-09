.class final Ldev/duo/hookprobe/RailCustomActivity$g;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/RailCustomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# static fields
.field static final o:I = 0x0

.field static final p:I = 0x1

.field static final q:I = 0x2

.field static final r:I = 0x3


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/graphics/drawable/Drawable;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/PathEffect;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:I

.field private n:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    .line 3
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->j:Landroid/graphics/Paint;

    .line 12
    iput p2, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->a:I

    .line 13
    iput-object p9, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->f:Ljava/lang/String;

    .line 14
    iput p3, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->b:I

    .line 15
    iput-object p4, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->c:Landroid/graphics/drawable/Drawable;

    .line 16
    iput-object p5, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->d:Ljava/lang/String;

    .line 17
    iput p6, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->e:I

    .line 18
    iput-object p7, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->g:Ljava/lang/String;

    .line 19
    iput p8, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->h:I

    .line 20
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 21
    new-instance p2, Landroid/graphics/DashPathEffect;

    const p3, 0x4059999a    # 3.4f

    invoke-static {p1, p3}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40266666    # 2.6f

    invoke-static {p1, p4}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    const/4 p4, 0x2

    new-array p4, p4, [F

    const/4 p5, 0x0

    aput p3, p4, p5

    aput p1, p4, v1

    const/4 p1, 0x0

    invoke-direct {p2, p4, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object p2, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->k:Landroid/graphics/PathEffect;

    .line 22
    invoke-virtual {p0, p5}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private a(F)F
    .locals 3

    .line 5
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->g:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 7
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    iget-object p1, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 9
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, p1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private a(I)F
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40f00000    # 7.5f

    invoke-static {v0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41280000    # 10.5f

    invoke-static {v1, v2}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    int-to-float p1, p1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private a(IF)I
    .locals 3

    .line 10
    iget v0, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->b:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p2, v0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private static a(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;
    .locals 4

    .line 28
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    return-object p0

    .line 29
    :cond_0
    nop

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const-string v1, "\u2026"

    if-lez v0, :cond_2

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    cmpg-float v2, v2, p2

    if-gtz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private a(Landroid/graphics/Canvas;FFF)V
    .locals 10

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    int-to-float v0, p4

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    sub-float v3, p2, v2

    .line 14
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-float v2, p3, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 15
    iget-object v4, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    add-int p2, v3, p4

    add-int/2addr p4, v2

    .line 16
    invoke-virtual {v4, v3, v2, p2, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    iget-object p2, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 18
    :cond_0
    iget v4, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->e:I

    if-ltz v4, :cond_2

    .line 19
    iget-object p2, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->n:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->e:I

    iget v6, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->h:I

    const/4 v8, 0x0

    const/high16 v9, 0x41c00000    # 24.0f

    const v7, 0x40066666    # 2.1f

    invoke-static/range {v4 .. v9}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;IIFZF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->n:Landroid/graphics/drawable/Drawable;

    .line 20
    :cond_1
    iget-object p2, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->n:Landroid/graphics/drawable/Drawable;

    add-int p3, v3, p4

    add-int/2addr p4, v2

    invoke-virtual {p2, v3, v2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 21
    iget-object p2, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 22
    :cond_2
    iget-object p4, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->d:Ljava/lang/String;

    if-eqz p4, :cond_3

    .line 23
    iget-object p4, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 24
    iget-object p4, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    iget v2, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->h:I

    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    iget-object p4, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v2, v3}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f3851ec    # 0.72f

    mul-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 26
    iget-object p4, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p4

    .line 27
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->d:Ljava/lang/String;

    iget v2, p4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget p4, p4, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, p4

    div-float/2addr v2, v1

    sub-float/2addr p3, v2

    iget-object p4, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .line 12
    const-string v0, "back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "home"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "recents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Ljava/lang/String;)F
    .locals 1

    if-nez p0, :cond_0

    const p0, 0x3f0f5c29    # 0.56f

    return p0

    .line 8
    :cond_0
    invoke-static {p0}, Ldev/duo/hookprobe/I;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    .line 9
    :cond_1
    const-string v0, "screenrecord"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "eyecare"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    const-string v0, "app:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x3f11a7b9

    return p0

    :cond_3
    const p0, 0x3f1611a8

    return p0

    :cond_4
    :goto_0
    const p0, 0x3f1ee584

    return p0
.end method

.method private b(Landroid/graphics/Canvas;FFF)V
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->j:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x3fcccccd    # 1.6f

    invoke-static {v0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 4
    iget-object v1, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->j:Landroid/graphics/Paint;

    sget-boolean v2, Ldev/duo/hookprobe/U;->a:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x33000000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x10000000

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    add-float/2addr p3, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x3f99999a    # 1.2f

    invoke-static {v0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    iget-object v1, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->j:Landroid/graphics/Paint;

    sget-boolean v1, Ldev/duo/hookprobe/U;->a:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x48000000    # 131072.0f

    goto :goto_1

    :cond_1
    const/high16 v1, 0x1c000000

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$g;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v7, :cond_e

    if-gtz v2, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-direct {v0, v2}, Ldev/duo/hookprobe/RailCustomActivity$g;->a(I)F

    move-result v8

    .line 4
    invoke-direct {v0, v8}, Ldev/duo/hookprobe/RailCustomActivity$g;->a(F)F

    move-result v9

    const/4 v10, 0x0

    cmpg-float v3, v9, v10

    if-gtz v3, :cond_1

    move v3, v10

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v3, v4}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    :goto_0
    int-to-float v11, v2

    sub-float v4, v11, v9

    sub-float/2addr v4, v3

    .line 7
    invoke-direct {v0, v7, v4}, Ldev/duo/hookprobe/RailCustomActivity$g;->a(IF)I

    move-result v3

    int-to-float v12, v7

    const/high16 v13, 0x40000000    # 2.0f

    div-float v14, v12, v13

    int-to-float v5, v3

    sub-float v6, v4, v5

    div-float/2addr v6, v13

    .line 9
    invoke-static {v10, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    div-float v15, v5, v13

    add-float/2addr v6, v15

    .line 11
    move/from16 v16, v10

    iget v10, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->a:I

    move/from16 v17, v13

    const/4 v13, 0x2

    if-ne v10, v13, :cond_3

    .line 12
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->j:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->j:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x3fa66666    # 1.3f

    invoke-static {v3, v4}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->j:Landroid/graphics/Paint;

    sget-boolean v3, Ldev/duo/hookprobe/U;->a:Z

    if-eqz v3, :cond_2

    const v3, 0x4dffffff    # 5.3687088E8f

    goto :goto_1

    :cond_2
    const/high16 v3, 0x30000000

    :goto_1
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->j:Landroid/graphics/Paint;

    iget-object v3, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->k:Landroid/graphics/PathEffect;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 16
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v15}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->j:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v6, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 17
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->j:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 18
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 19
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    sget v3, Ldev/duo/hookprobe/U;->d:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static {v3, v4}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ee66666    # 0.45f

    mul-float/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 21
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 22
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v3, v2

    div-float v3, v3, v17

    sub-float/2addr v6, v3

    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    const-string v3, "+"

    invoke-virtual {v1, v3, v14, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v3, v14

    goto/16 :goto_4

    :cond_3
    const/4 v13, 0x3

    if-ne v10, v13, :cond_9

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v4, v17

    invoke-static {v3, v4}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v7, v2}, Ldev/duo/hookprobe/RailCustomActivity$g;->a(IF)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 25
    iget-object v3, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->g:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v14

    const/high16 v17, 0x40000000    # 2.0f

    goto :goto_2

    :cond_4
    int-to-float v3, v2

    const/high16 v17, 0x40000000    # 2.0f

    div-float v3, v3, v17

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    :goto_2
    div-float v4, v11, v17

    int-to-float v5, v2

    .line 27
    invoke-direct {v0, v1, v3, v4, v5}, Ldev/duo/hookprobe/RailCustomActivity$g;->b(Landroid/graphics/Canvas;FFF)V

    .line 28
    iget-object v6, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_5

    iget v6, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->m:I

    if-eq v6, v2, :cond_6

    .line 29
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Ldev/duo/hookprobe/RailCustomActivity;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->l:Landroid/graphics/drawable/Drawable;

    .line 30
    iput v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->m:I

    .line 31
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v10, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 33
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const/high16 v17, 0x40000000    # 2.0f

    div-float v10, v5, v17

    sub-float v2, v3, v10

    sub-float v6, v4, v10

    .line 34
    invoke-virtual {v1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 35
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 36
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 37
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->f:Ljava/lang/String;

    invoke-static {v2}, Ldev/duo/hookprobe/RailCustomActivity$g;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 38
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->j:Landroid/graphics/Paint;

    iget v6, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->h:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->f:Ljava/lang/String;

    iget-object v6, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->j:Landroid/graphics/Paint;

    invoke-static/range {v1 .. v6}, Ldev/duo/hookprobe/RailCustomActivity;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 41
    :cond_7
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->f:Ljava/lang/String;

    invoke-static {v2}, Ldev/duo/hookprobe/RailCustomActivity$g;->b(Ljava/lang/String;)F

    move-result v2

    mul-float/2addr v5, v2

    invoke-direct {v0, v1, v3, v4, v5}, Ldev/duo/hookprobe/RailCustomActivity$g;->a(Landroid/graphics/Canvas;FFF)V

    .line 43
    :goto_3
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->g:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 44
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 45
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    sget v5, Ldev/duo/hookprobe/U;->c:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v5, v6}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    add-float/2addr v3, v10

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v2, v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v12, v3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v12, v5

    invoke-static {v2, v12}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 49
    iget-object v5, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->g:Ljava/lang/String;

    iget-object v6, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    invoke-static {v5, v6, v2}, Ldev/duo/hookprobe/RailCustomActivity$g;->a(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v2

    .line 50
    iget-object v5, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 51
    iget v6, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v6, v5

    const/high16 v17, 0x40000000    # 2.0f

    div-float v6, v6, v17

    sub-float/2addr v4, v6

    iget-object v5, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v3, v14

    goto/16 :goto_4

    .line 43
    :cond_8
    move v3, v14

    goto :goto_4

    .line 51
    :cond_9
    if-nez v10, :cond_d

    .line 54
    invoke-direct {v0, v1, v14, v6, v5}, Ldev/duo/hookprobe/RailCustomActivity$g;->b(Landroid/graphics/Canvas;FFF)V

    .line 55
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    iget v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->m:I

    if-eq v2, v3, :cond_b

    .line 56
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Ldev/duo/hookprobe/RailCustomActivity;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->l:Landroid/graphics/drawable/Drawable;

    .line 57
    iput v3, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->m:I

    .line 58
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 60
    :cond_b
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    sub-float v2, v14, v15

    sub-float v3, v6, v15

    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 62
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 63
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 64
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->f:Ljava/lang/String;

    invoke-static {v2}, Ldev/duo/hookprobe/RailCustomActivity$g;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 65
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->j:Landroid/graphics/Paint;

    iget v3, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->h:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->f:Ljava/lang/String;

    move v4, v6

    iget-object v6, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->j:Landroid/graphics/Paint;

    move v3, v14

    invoke-static/range {v1 .. v6}, Ldev/duo/hookprobe/RailCustomActivity;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 68
    :cond_c
    move v4, v6

    move v3, v14

    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->f:Ljava/lang/String;

    invoke-static {v2}, Ldev/duo/hookprobe/RailCustomActivity$g;->b(Ljava/lang/String;)F

    move-result v2

    mul-float/2addr v5, v2

    invoke-direct {v0, v1, v3, v4, v5}, Ldev/duo/hookprobe/RailCustomActivity$g;->a(Landroid/graphics/Canvas;FFF)V

    goto :goto_4

    :cond_d
    move v3, v14

    const/high16 v17, 0x40000000    # 2.0f

    div-float v2, v4, v17

    const v5, 0x3f1eb852    # 0.62f

    mul-float/2addr v12, v5

    mul-float/2addr v4, v5

    .line 71
    invoke-static {v12, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Ldev/duo/hookprobe/RailCustomActivity$g;->a(Landroid/graphics/Canvas;FFF)V

    :goto_4
    cmpl-float v2, v9, v16

    if-lez v2, :cond_e

    .line 74
    iget v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->a:I

    const/4 v13, 0x3

    if-eq v2, v13, :cond_e

    .line 75
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 76
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    sget v4, Ldev/duo/hookprobe/U;->c:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object v2, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->g:Ljava/lang/String;

    iget-object v4, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v5, v6}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v7, v5

    int-to-float v5, v7

    invoke-static {v2, v4, v5}, Ldev/duo/hookprobe/RailCustomActivity$g;->a(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v2

    .line 79
    iget-object v4, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 80
    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v11, v4

    iget-object v0, v0, Ldev/duo/hookprobe/RailCustomActivity$g;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v11, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_e
    :goto_5
    return-void
.end method
