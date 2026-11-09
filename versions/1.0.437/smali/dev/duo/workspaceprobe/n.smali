.class final Ldev/duo/workspaceprobe/n;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/RectF;

.field private c:I

.field private d:I

.field private final e:[Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/Rect;

.field private final g:Landroid/graphics/RectF;

.field private h:[Landroid/graphics/Rect;

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Rect;

.field private final l:Landroid/graphics/Paint;

.field m:F

.field private n:F


# direct methods
.method constructor <init>(Landroid/content/Context;I[Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/workspaceprobe/n;->a:Landroid/graphics/Paint;

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/n;->b:Landroid/graphics/RectF;

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/n;->f:Landroid/graphics/Rect;

    .line 9
    const/4 p1, 0x0

    new-array v0, p1, [Landroid/graphics/Rect;

    iput-object v0, p0, Ldev/duo/workspaceprobe/n;->h:[Landroid/graphics/Rect;

    .line 14
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/n;->l:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/n;->g:Landroid/graphics/RectF;

    .line 21
    iput p2, p0, Ldev/duo/workspaceprobe/n;->c:I

    .line 22
    invoke-static {p2}, Ldev/duo/workspaceprobe/n;->a(I)I

    move-result p2

    iput p2, p0, Ldev/duo/workspaceprobe/n;->d:I

    .line 23
    iput-object p3, p0, Ldev/duo/workspaceprobe/n;->e:[Landroid/graphics/drawable/Drawable;

    .line 24
    array-length p2, p3

    :goto_0
    if-ge p1, p2, :cond_1

    aget-object p4, p3, p1

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(I)I
    .locals 1

    .line 1
    const v0, -0xe3e3e2

    if-ne p0, v0, :cond_0

    const p0, -0xefeff0

    return p0

    :cond_0
    const p0, -0xf0f0e

    return p0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V
    .locals 3

    .line 16
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->a:Landroid/graphics/Paint;

    iget v1, p0, Ldev/duo/workspaceprobe/n;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 18
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ldev/duo/workspaceprobe/o;->a(FF)F

    move-result v0

    .line 19
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-nez p2, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v1, p3, 0x2

    sub-int/2addr v0, v1

    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v2, v1

    add-int v1, v0, p3

    add-int/2addr p3, v2

    .line 22
    invoke-virtual {p2, v0, v2, v1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 23
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 24
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method a(FF)V
    .locals 0

    .line 2
    iput p1, p0, Ldev/duo/workspaceprobe/n;->m:F

    .line 3
    iput p2, p0, Ldev/duo/workspaceprobe/n;->n:F

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0

    .line 5
    iput-object p1, p0, Ldev/duo/workspaceprobe/n;->j:Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    iput-object p1, p0, Ldev/duo/workspaceprobe/n;->k:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method a(Landroid/graphics/Rect;[Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    .line 8
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->g:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->f:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget v4, p0, Ldev/duo/workspaceprobe/n;->m:F

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

    .line 12
    iput-object p1, p0, Ldev/duo/workspaceprobe/n;->f:Landroid/graphics/Rect;

    .line 13
    iput-object p2, p0, Ldev/duo/workspaceprobe/n;->h:[Landroid/graphics/Rect;

    .line 14
    iput-object p3, p0, Ldev/duo/workspaceprobe/n;->i:Landroid/graphics/Rect;

    .line 15
    const/4 p1, 0x0

    iput p1, p0, Ldev/duo/workspaceprobe/n;->m:F

    return-void
.end method

.method b(I)V
    .locals 0

    .line 1
    iput p1, p0, Ldev/duo/workspaceprobe/n;->c:I

    invoke-static {p1}, Ldev/duo/workspaceprobe/n;->a(I)I

    move-result p1

    iput p1, p0, Ldev/duo/workspaceprobe/n;->d:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget v0, p0, Ldev/duo/workspaceprobe/n;->d:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 3
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->g:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Ldev/duo/workspaceprobe/n;->f:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v5, v3

    iget v6, p0, Ldev/duo/workspaceprobe/n;->m:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget v7, v4, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v7, v5

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v7, v2, Landroid/graphics/RectF;->right:F

    iget v8, v4, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float/2addr v8, v7

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    invoke-virtual {v1, v3, v5, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->e:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v3, 0xb4

    const/16 v4, 0xff

    invoke-direct {p0, p1, v1, v3, v4}, Ldev/duo/workspaceprobe/n;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 6
    iget v1, p0, Ldev/duo/workspaceprobe/n;->n:F

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-lez v1, :cond_6

    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->i:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->i:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 9
    :goto_0
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->h:[Landroid/graphics/Rect;

    array-length v4, v1

    const/high16 v5, 0x437f0000    # 255.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-ge v2, v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    iget-object v7, p0, Ldev/duo/workspaceprobe/n;->e:[Landroid/graphics/drawable/Drawable;

    array-length v7, v7

    if-ge v4, v7, :cond_3

    .line 10
    aget-object v1, v1, v2

    if-nez v1, :cond_1

    goto :goto_2

    .line 12
    :cond_1
    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->b:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 14
    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->b:Landroid/graphics/RectF;

    iget-object v7, p0, Ldev/duo/workspaceprobe/n;->i:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-lez v7, :cond_2

    iget v7, p0, Ldev/duo/workspaceprobe/n;->n:F

    sub-float/2addr v6, v7

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    goto :goto_1

    :cond_2
    iget v7, p0, Ldev/duo/workspaceprobe/n;->n:F

    sub-float/2addr v6, v7

    neg-float v6, v6

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    :goto_1
    mul-float/2addr v6, v1

    invoke-virtual {v2, v6, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 15
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->e:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v4

    iget v2, p0, Ldev/duo/workspaceprobe/n;->n:F

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/16 v5, 0x78

    invoke-direct {p0, p1, v1, v5, v2}, Ldev/duo/workspaceprobe/n;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    :goto_2
    move v2, v4

    goto :goto_0

    .line 17
    :cond_3
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->j:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->k:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    .line 19
    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_4

    iget v2, p0, Ldev/duo/workspaceprobe/n;->n:F

    sub-float/2addr v6, v2

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    mul-float/2addr v6, v0

    goto :goto_3

    :cond_4
    iget v0, p0, Ldev/duo/workspaceprobe/n;->n:F

    sub-float/2addr v6, v0

    neg-float v0, v6

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float v6, v0, v1

    .line 20
    :goto_3
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->l:Landroid/graphics/Paint;

    iget v1, p0, Ldev/duo/workspaceprobe/n;->n:F

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 21
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->j:Landroid/graphics/Bitmap;

    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->k:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v6

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v3, p0, Ldev/duo/workspaceprobe/n;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 23
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    :goto_4
    return-void
.end method
