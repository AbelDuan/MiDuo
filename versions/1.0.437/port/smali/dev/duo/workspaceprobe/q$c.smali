.class final Ldev/duo/workspaceprobe/q$c;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field b:I

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 p1, -0x1

    iput p1, p0, Ldev/duo/workspaceprobe/q$c;->b:I

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/workspaceprobe/q$c;->c:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Ldev/duo/workspaceprobe/q$c;->d:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/q$c;->e:Landroid/graphics/RectF;

    .line 5
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/q$c;->f:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/q$c;->g:Landroid/graphics/Path;

    .line 9
    iput-object p2, p0, Ldev/duo/workspaceprobe/q$c;->a:Ljava/lang/String;

    .line 10
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    const p2, 0x4014cccc    # 2.3249998f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 12
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 13
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 14
    const p1, 0x4194cccc    # 18.599998f

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 15
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 p2, 0x258

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 16
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-static {}, Ldev/duo/workspaceprobe/b;->m()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2
    iget v0, p0, Ldev/duo/workspaceprobe/q$c;->b:I

    const v2, 0xffffff

    and-int/2addr v0, v2

    const/high16 v2, 0x73000000

    or-int/2addr v0, v2

    .line 3
    iget-object v2, p0, Ldev/duo/workspaceprobe/q$c;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v2, p0, Ldev/duo/workspaceprobe/q$c;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Ldev/duo/workspaceprobe/q$c;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v2

    .line 6
    iget-object v3, p0, Ldev/duo/workspaceprobe/q$c;->e:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8
    iget-object v0, p0, Ldev/duo/workspaceprobe/q$c;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 9
    iget-object v0, p0, Ldev/duo/workspaceprobe/q$c;->f:Landroid/graphics/Path;

    iget-object v3, p0, Ldev/duo/workspaceprobe/q$c;->e:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const v5, 0x421e1999

    invoke-virtual {v0, v3, v5, v5, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 10
    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v3, p0, Ldev/duo/workspaceprobe/q$c;->f:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 11
    iget-object v3, p0, Ldev/duo/workspaceprobe/q$c;->g:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 12
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    :goto_0
    cmpg-float v5, v1, v3

    const/4 v6, 0x1

    if-gez v5, :cond_0

    const v5, 0x40df3333    # 6.975f

    add-float/2addr v5, v1

    .line 13
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v7, p0, Ldev/duo/workspaceprobe/q$c;->g:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v5, v7, v6}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    const v5, 0x41466666    # 12.4f

    add-float/2addr v1, v5

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/q$c;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    iget-object v0, p0, Ldev/duo/workspaceprobe/q$c;->g:Landroid/graphics/Path;

    iget-object v1, p0, Ldev/duo/workspaceprobe/q$c;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 17
    iget-object v1, p0, Ldev/duo/workspaceprobe/q$c;->d:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 18
    :goto_1
    iget-object v3, p0, Ldev/duo/workspaceprobe/q$c;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_1

    .line 19
    iget-object v3, p0, Ldev/duo/workspaceprobe/q$c;->a:Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v4

    .line 20
    iget-object v7, p0, Ldev/duo/workspaceprobe/q$c;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    int-to-float v7, v7

    div-float/2addr v7, v2

    sub-float/2addr v4, v7

    const/high16 v7, 0x41ba0000    # 23.25f

    mul-float/2addr v4, v7

    add-float/2addr v4, v0

    iget v7, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v8, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v7, v8

    div-float/2addr v7, v2

    sub-float/2addr v4, v7

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v2

    iget-object v8, p0, Ldev/duo/workspaceprobe/q$c;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v4, v5

    goto :goto_1

    :cond_1
    return-void
.end method
