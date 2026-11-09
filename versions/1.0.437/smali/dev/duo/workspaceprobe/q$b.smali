.class final Ldev/duo/workspaceprobe/q$b;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field static final h:I = 0x0

.field static final i:I = 0x1

.field static final j:I = 0x2

.field static final k:F = 104.0f

.field static final l:F = 36.0f

.field static final m:F = 22.0f

.field static final n:F = 96.0f

.field static final o:F = 8.0f

.field static final p:F = 6.0f

.field static final q:F = 37.0f


# instance fields
.field a:[Landroid/graphics/drawable/Drawable;

.field b:Z

.field c:I

.field d:I

.field e:I

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 p1, 0x0

    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Ldev/duo/workspaceprobe/q$b;->a:[Landroid/graphics/drawable/Drawable;

    .line 5
    const/4 v0, -0x1

    iput v0, p0, Ldev/duo/workspaceprobe/q$b;->e:I

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/q$b;->f:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/q$b;->g:Landroid/graphics/Paint;

    .line 10
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 11
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v2, 0x258

    invoke-static {v1, v2, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget v0, p0, Ldev/duo/workspaceprobe/q$b;->d:I

    iget-object v1, p0, Ldev/duo/workspaceprobe/q$b;->a:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object v4, p0, Ldev/duo/workspaceprobe/q$b;->a:[Landroid/graphics/drawable/Drawable;

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 3
    rem-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    const/high16 v6, 0x422c0000    # 43.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x41000000    # 8.0f

    add-float/2addr v5, v7

    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v8, v7

    .line 4
    iget-object v6, p0, Ldev/duo/workspaceprobe/q$b;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/high16 v10, 0x42140000    # 37.0f

    add-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v6, v7, v9, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    iget-object v5, p0, Ldev/duo/workspaceprobe/q$b;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-le v0, v2, :cond_3

    .line 9
    iget-object v2, p0, Ldev/duo/workspaceprobe/q$b;->g:Landroid/graphics/Paint;

    iget v3, p0, Ldev/duo/workspaceprobe/q$b;->e:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    const/high16 v4, -0x27000000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v2, p0, Ldev/duo/workspaceprobe/q$b;->g:Landroid/graphics/Paint;

    sub-int/2addr v0, v1

    const/16 v1, 0x9

    if-le v0, v1, :cond_2

    const/high16 v1, 0x41880000    # 17.0f

    goto :goto_2

    :cond_2
    const/high16 v1, 0x41a00000    # 20.0f

    :goto_2
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 11
    iget-object v1, p0, Ldev/duo/workspaceprobe/q$b;->g:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    const/high16 v1, 0x428b0000    # 69.5f

    sub-float v2, v1, v2

    iget-object v3, p0, Ldev/duo/workspaceprobe/q$b;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-static {}, Ldev/duo/workspaceprobe/b;->m()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2
    iget v0, p0, Ldev/duo/workspaceprobe/q$b;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/q$b;->a(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4
    :goto_0
    iget-object v3, p0, Ldev/duo/workspaceprobe/q$b;->a:[Landroid/graphics/drawable/Drawable;

    array-length v3, v3

    const/4 v4, 0x3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v6, 0x41900000    # 18.0f

    move v7, v6

    :goto_1
    const/high16 v8, 0x41600000    # 14.0f

    if-ge v1, v3, :cond_4

    const/high16 v7, 0x42080000    # 34.0f

    if-eqz v0, :cond_2

    move v9, v4

    goto :goto_2

    :cond_2
    int-to-float v9, v1

    add-int/lit8 v10, v3, -0x1

    int-to-float v10, v10

    div-float/2addr v10, v5

    sub-float/2addr v9, v10

    mul-float/2addr v9, v7

    add-float/2addr v9, v4

    :goto_2
    if-eqz v0, :cond_3

    int-to-float v10, v1

    mul-float/2addr v10, v7

    add-float/2addr v10, v6

    move v7, v10

    goto :goto_3

    :cond_3
    move v7, v6

    .line 10
    :goto_3
    iget-object v10, p0, Ldev/duo/workspaceprobe/q$b;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v1

    sub-float v11, v9, v8

    .line 11
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    sub-float v12, v7, v8

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v10, v11, v12, v9, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_4
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/q$b;->b:Z

    if-eqz v0, :cond_5

    if-lez v3, :cond_5

    .line 15
    iget-object v0, p0, Ldev/duo/workspaceprobe/q$b;->f:Landroid/graphics/Paint;

    iget v1, p0, Ldev/duo/workspaceprobe/q$b;->e:I

    const v3, 0xffffff

    and-int/2addr v1, v3

    const/high16 v3, -0x38000000    # -131072.0f

    or-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, -0x1

    :goto_4
    if-gt v0, v2, :cond_5

    int-to-float v1, v0

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    add-float v3, v7, v8

    const/high16 v5, 0x41400000    # 12.0f

    add-float/2addr v3, v5

    .line 16
    iget-object v5, p0, Ldev/duo/workspaceprobe/q$b;->f:Landroid/graphics/Paint;

    const v6, 0x40266666    # 2.6f

    invoke-virtual {p1, v1, v3, v6, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method
