.class final Ldev/duo/workspaceprobe/m;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/RectF;

.field private c:I

.field private final d:[Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/RectF;

.field private g:[Landroid/graphics/Rect;

.field private h:Landroid/graphics/Rect;

.field i:F

.field private j:F

.field private k:Z


# direct methods
.method constructor <init>(Landroid/content/Context;I[Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/workspaceprobe/m;->a:Landroid/graphics/Paint;

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/m;->b:Landroid/graphics/RectF;

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/m;->e:Landroid/graphics/Rect;

    .line 7
    new-instance p1, Landroid/graphics/RectF;

    const v0, 0x4513c000    # 2364.0f

    const/high16 v1, 0x44d10000    # 1672.0f

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Ldev/duo/workspaceprobe/m;->f:Landroid/graphics/RectF;

    .line 8
    const/4 p1, 0x0

    new-array v0, p1, [Landroid/graphics/Rect;

    iput-object v0, p0, Ldev/duo/workspaceprobe/m;->g:[Landroid/graphics/Rect;

    .line 16
    iput p2, p0, Ldev/duo/workspaceprobe/m;->c:I

    .line 17
    iput-object p3, p0, Ldev/duo/workspaceprobe/m;->d:[Landroid/graphics/drawable/Drawable;

    .line 18
    array-length p2, p3

    :goto_0
    if-ge p1, p2, :cond_1

    aget-object v0, p3, p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V
    .locals 3

    .line 14
    iget-object v0, p0, Ldev/duo/workspaceprobe/m;->a:Landroid/graphics/Paint;

    iget v1, p0, Ldev/duo/workspaceprobe/m;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object v0, p0, Ldev/duo/workspaceprobe/m;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16
    iget-object v0, p0, Ldev/duo/workspaceprobe/m;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ldev/duo/workspaceprobe/n;->a(F)F

    move-result v0

    .line 17
    iget-object v1, p0, Ldev/duo/workspaceprobe/m;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Ldev/duo/workspaceprobe/m;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-nez p2, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/m;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v1, p3, 0x2

    sub-int/2addr v0, v1

    iget-object v2, p0, Ldev/duo/workspaceprobe/m;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v2, v1

    add-int v1, v0, p3

    add-int/2addr p3, v2

    .line 20
    invoke-virtual {p2, v0, v2, v1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 21
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 22
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/m;->k:Z

    return-void
.end method

.method a(FF)V
    .locals 0

    .line 2
    iput p1, p0, Ldev/duo/workspaceprobe/m;->i:F

    .line 3
    iput p2, p0, Ldev/duo/workspaceprobe/m;->j:F

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method a(I)V
    .locals 0

    .line 1
    iput p1, p0, Ldev/duo/workspaceprobe/m;->c:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method a(Landroid/graphics/Rect;[Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    .line 6
    iget-object v0, p0, Ldev/duo/workspaceprobe/m;->f:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Ldev/duo/workspaceprobe/m;->e:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget v4, p0, Ldev/duo/workspaceprobe/m;->i:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v5, v3

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v5

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v2, v6

    mul-float/2addr v2, v4

    add-float/2addr v6, v2

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 10
    iput-object p1, p0, Ldev/duo/workspaceprobe/m;->e:Landroid/graphics/Rect;

    .line 11
    iput-object p2, p0, Ldev/duo/workspaceprobe/m;->g:[Landroid/graphics/Rect;

    .line 12
    iput-object p3, p0, Ldev/duo/workspaceprobe/m;->h:Landroid/graphics/Rect;

    .line 13
    const/4 p1, 0x0

    iput p1, p0, Ldev/duo/workspaceprobe/m;->i:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/m;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    :goto_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 3
    iget-object v2, p0, Ldev/duo/workspaceprobe/m;->b:Landroid/graphics/RectF;

    iget-object v3, p0, Ldev/duo/workspaceprobe/m;->f:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Ldev/duo/workspaceprobe/m;->e:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    iget v7, p0, Ldev/duo/workspaceprobe/m;->i:F

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    iget v6, v3, Landroid/graphics/RectF;->top:F

    iget v8, v5, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float/2addr v8, v6

    mul-float/2addr v8, v7

    add-float/2addr v6, v8

    iget v8, v3, Landroid/graphics/RectF;->right:F

    iget v9, v5, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v9, v8

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v3

    mul-float/2addr v5, v7

    add-float/2addr v3, v5

    invoke-virtual {v2, v4, v6, v8, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    iget-object v2, p0, Ldev/duo/workspaceprobe/m;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    const/16 v3, 0xb4

    const/16 v4, 0xff

    invoke-direct {p0, p1, v2, v3, v4}, Ldev/duo/workspaceprobe/m;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 6
    iget v2, p0, Ldev/duo/workspaceprobe/m;->j:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_4

    iget-object v2, p0, Ldev/duo/workspaceprobe/m;->h:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    goto :goto_3

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    iget-object v2, p0, Ldev/duo/workspaceprobe/m;->h:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p1, v3, v4, v0, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 9
    :goto_1
    iget-object v0, p0, Ldev/duo/workspaceprobe/m;->g:[Landroid/graphics/Rect;

    array-length v2, v0

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    iget-object v4, p0, Ldev/duo/workspaceprobe/m;->d:[Landroid/graphics/drawable/Drawable;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 10
    aget-object v0, v0, v1

    if-nez v0, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    iget-object v1, p0, Ldev/duo/workspaceprobe/m;->b:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 13
    iget-object v1, p0, Ldev/duo/workspaceprobe/m;->b:Landroid/graphics/RectF;

    iget v4, p0, Ldev/duo/workspaceprobe/m;->j:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    neg-float v4, v5

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v4, v0

    invoke-virtual {v1, v4, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 14
    iget-object v0, p0, Ldev/duo/workspaceprobe/m;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    iget v1, p0, Ldev/duo/workspaceprobe/m;->j:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/16 v4, 0x78

    invoke-direct {p0, p1, v0, v4, v1}, Ldev/duo/workspaceprobe/m;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    :goto_2
    move v1, v2

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    :goto_3
    return-void
.end method
