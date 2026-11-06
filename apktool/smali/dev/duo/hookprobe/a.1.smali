.class final Ldev/duo/hookprobe/a;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Landroid/graphics/Matrix;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/Path;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/view/ScaleGestureDetector;

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/a;->b:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/a;->c:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/a;->d:Landroid/graphics/Path;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldev/duo/hookprobe/a;->e:Landroid/graphics/Paint;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldev/duo/hookprobe/a;->f:Landroid/graphics/Paint;

    .line 7
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Ldev/duo/hookprobe/a;->g:Landroid/graphics/Paint;

    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Ldev/duo/hookprobe/a;->o:F

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Ldev/duo/hookprobe/a;->p:F

    iput v3, p0, Ldev/duo/hookprobe/a;->q:F

    .line 15
    iput-object p2, p0, Ldev/duo/hookprobe/a;->a:Landroid/graphics/Bitmap;

    .line 16
    sget-boolean p2, Ldev/duo/hookprobe/T;->a:Z

    if-eqz p2, :cond_0

    const p2, 0x111113

    goto :goto_0

    :cond_0
    const p2, 0xf2f2f5

    :goto_0
    const/high16 v3, -0x27000000

    or-int/2addr p2, v3

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    sget p2, Ldev/duo/hookprobe/T;->b:I

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    invoke-static {p1, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Ldev/duo/hookprobe/a$a;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/a$a;-><init>(Ldev/duo/hookprobe/a;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Ldev/duo/hookprobe/a;->h:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic a(Ldev/duo/hookprobe/a;)F
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/hookprobe/a;->j:F

    return p0
.end method

.method static synthetic a(Ldev/duo/hookprobe/a;F)F
    .locals 0

    .line 2
    iput p1, p0, Ldev/duo/hookprobe/a;->i:F

    return p1
.end method

.method private a()V
    .locals 4

    .line 6
    iget v0, p0, Ldev/duo/hookprobe/a;->k:F

    iget-object v1, p0, Ldev/duo/hookprobe/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Ldev/duo/hookprobe/a;->i:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Ldev/duo/hookprobe/a;->c:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v1, v3, v2}, Ldev/duo/hookprobe/d;->a(FFFF)F

    move-result v0

    iput v0, p0, Ldev/duo/hookprobe/a;->k:F

    .line 7
    iget v0, p0, Ldev/duo/hookprobe/a;->l:F

    iget-object v1, p0, Ldev/duo/hookprobe/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Ldev/duo/hookprobe/a;->i:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Ldev/duo/hookprobe/a;->c:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1, v3, v2}, Ldev/duo/hookprobe/d;->a(FFFF)F

    move-result v0

    iput v0, p0, Ldev/duo/hookprobe/a;->l:F

    .line 8
    iget-object v0, p0, Ldev/duo/hookprobe/a;->b:Landroid/graphics/Matrix;

    iget v1, p0, Ldev/duo/hookprobe/a;->i:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 9
    iget-object v0, p0, Ldev/duo/hookprobe/a;->b:Landroid/graphics/Matrix;

    iget v1, p0, Ldev/duo/hookprobe/a;->k:F

    iget v2, p0, Ldev/duo/hookprobe/a;->l:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 10
    iget v0, p0, Ldev/duo/hookprobe/a;->i:F

    iget v1, p0, Ldev/duo/hookprobe/a;->j:F

    div-float/2addr v0, v1

    iput v0, p0, Ldev/duo/hookprobe/a;->o:F

    .line 11
    iget-object v0, p0, Ldev/duo/hookprobe/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Ldev/duo/hookprobe/a;->k:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Ldev/duo/hookprobe/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Ldev/duo/hookprobe/a;->i:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Ldev/duo/hookprobe/a;->p:F

    .line 12
    iget-object v0, p0, Ldev/duo/hookprobe/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, p0, Ldev/duo/hookprobe/a;->l:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Ldev/duo/hookprobe/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Ldev/duo/hookprobe/a;->i:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Ldev/duo/hookprobe/a;->q:F

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method static synthetic b(Ldev/duo/hookprobe/a;)F
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/hookprobe/a;->i:F

    return p0
.end method

.method static synthetic b(Ldev/duo/hookprobe/a;F)F
    .locals 0

    .line 2
    iput p1, p0, Ldev/duo/hookprobe/a;->k:F

    return p1
.end method

.method static synthetic c(Ldev/duo/hookprobe/a;)F
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/hookprobe/a;->k:F

    return p0
.end method

.method static synthetic c(Ldev/duo/hookprobe/a;F)F
    .locals 0

    .line 2
    iput p1, p0, Ldev/duo/hookprobe/a;->l:F

    return p1
.end method

.method static synthetic d(Ldev/duo/hookprobe/a;)F
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/hookprobe/a;->l:F

    return p0
.end method

.method static synthetic e(Ldev/duo/hookprobe/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/hookprobe/a;->a()V

    return-void
.end method


# virtual methods
.method a(FFF)V
    .locals 0

    .line 3
    iput p1, p0, Ldev/duo/hookprobe/a;->o:F

    .line 4
    iput p2, p0, Ldev/duo/hookprobe/a;->p:F

    .line 5
    iput p3, p0, Ldev/duo/hookprobe/a;->q:F

    return-void
.end method

.method b()F
    .locals 1

    .line 3
    iget v0, p0, Ldev/duo/hookprobe/a;->p:F

    return v0
.end method

.method c()F
    .locals 1

    .line 3
    iget v0, p0, Ldev/duo/hookprobe/a;->q:F

    return v0
.end method

.method d()Landroid/graphics/Bitmap;
    .locals 5

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x356

    const/16 v2, 0x530

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 5
    iget-object v2, p0, Ldev/duo/hookprobe/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const v3, 0x44558000    # 854.0f

    div-float/2addr v3, v2

    .line 6
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 7
    iget-object v2, p0, Ldev/duo/hookprobe/a;->c:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8
    iget-object v2, p0, Ldev/duo/hookprobe/a;->a:Landroid/graphics/Bitmap;

    iget-object v3, p0, Ldev/duo/hookprobe/a;->b:Landroid/graphics/Matrix;

    iget-object v4, p0, Ldev/duo/hookprobe/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method e()F
    .locals 1

    .line 2
    iget v0, p0, Ldev/duo/hookprobe/a;->o:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/a;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Ldev/duo/hookprobe/a;->b:Landroid/graphics/Matrix;

    iget-object v2, p0, Ldev/duo/hookprobe/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/a;->d:Landroid/graphics/Path;

    iget-object v1, p0, Ldev/duo/hookprobe/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3
    iget-object v0, p0, Ldev/duo/hookprobe/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v0, v1

    const v1, 0x44558000    # 854.0f

    div-float/2addr v0, v1

    .line 4
    iget-object v1, p0, Ldev/duo/hookprobe/a;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Ldev/duo/hookprobe/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 p4, 0x41000000    # 8.0f

    invoke-static {p3, p4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p4

    int-to-float p4, p4

    invoke-static {p1, p2, p3, v0, p4}, Ldev/duo/hookprobe/d;->a(IIFFF)[F

    move-result-object p3

    .line 2
    iget-object p4, p0, Ldev/duo/hookprobe/a;->c:Landroid/graphics/RectF;

    const/4 v0, 0x0

    aget v0, p3, v0

    const/4 v1, 0x1

    aget v1, p3, v1

    const/4 v2, 0x2

    aget v2, p3, v2

    const/4 v3, 0x3

    aget p3, p3, v3

    invoke-virtual {p4, v0, v1, v2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3
    iget-object p3, p0, Ldev/duo/hookprobe/a;->c:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    iget-object p4, p0, Ldev/duo/hookprobe/a;->c:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p4

    iget-object v0, p0, Ldev/duo/hookprobe/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Ldev/duo/hookprobe/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p3, p4, v0, v1}, Ldev/duo/hookprobe/d;->a(FFII)F

    move-result p3

    iput p3, p0, Ldev/duo/hookprobe/a;->j:F

    .line 4
    iget p4, p0, Ldev/duo/hookprobe/a;->o:F

    mul-float/2addr p3, p4

    iput p3, p0, Ldev/duo/hookprobe/a;->i:F

    .line 5
    iget-object p3, p0, Ldev/duo/hookprobe/a;->c:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    iget-object p4, p0, Ldev/duo/hookprobe/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    int-to-float p4, p4

    iget v0, p0, Ldev/duo/hookprobe/a;->i:F

    mul-float/2addr p4, v0

    iget v0, p0, Ldev/duo/hookprobe/a;->p:F

    mul-float/2addr p4, v0

    sub-float/2addr p3, p4

    iput p3, p0, Ldev/duo/hookprobe/a;->k:F

    .line 6
    iget-object p3, p0, Ldev/duo/hookprobe/a;->c:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    iget-object p4, p0, Ldev/duo/hookprobe/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-float p4, p4

    iget v0, p0, Ldev/duo/hookprobe/a;->i:F

    mul-float/2addr p4, v0

    iget v0, p0, Ldev/duo/hookprobe/a;->q:F

    mul-float/2addr p4, v0

    sub-float/2addr p3, p4

    iput p3, p0, Ldev/duo/hookprobe/a;->l:F

    .line 7
    iget-object p3, p0, Ldev/duo/hookprobe/a;->c:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const/high16 p4, 0x42600000    # 56.0f

    mul-float/2addr p3, p4

    const p4, 0x44558000    # 854.0f

    div-float/2addr p3, p4

    .line 8
    iget-object p4, p0, Ldev/duo/hookprobe/a;->d:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    .line 9
    iget-object p4, p0, Ldev/duo/hookprobe/a;->d:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p4, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 10
    iget-object v1, p0, Ldev/duo/hookprobe/a;->d:Landroid/graphics/Path;

    int-to-float v4, p1

    int-to-float v5, p2

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 11
    iget-object p1, p0, Ldev/duo/hookprobe/a;->d:Landroid/graphics/Path;

    iget-object p2, p0, Ldev/duo/hookprobe/a;->c:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, p3, p3, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 12
    invoke-direct {p0}, Ldev/duo/hookprobe/a;->a()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/a;->h:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 7
    iget-object v0, p0, Ldev/duo/hookprobe/a;->h:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 8
    iget v0, p0, Ldev/duo/hookprobe/a;->k:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v3, p0, Ldev/duo/hookprobe/a;->m:F

    sub-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Ldev/duo/hookprobe/a;->k:F

    .line 9
    iget v0, p0, Ldev/duo/hookprobe/a;->l:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Ldev/duo/hookprobe/a;->n:F

    sub-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Ldev/duo/hookprobe/a;->l:F

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Ldev/duo/hookprobe/a;->m:F

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Ldev/duo/hookprobe/a;->n:F

    .line 12
    invoke-direct {p0}, Ldev/duo/hookprobe/a;->a()V

    goto :goto_2

    :cond_1
    :goto_0
    if-ne v0, v1, :cond_2

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 14
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Ldev/duo/hookprobe/a;->m:F

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Ldev/duo/hookprobe/a;->n:F

    :cond_3
    :goto_2
    return v2
.end method
