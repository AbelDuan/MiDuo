.class final Ldev/duo/workspaceprobe/b$e0;
.super Landroid/widget/ScrollView;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e0"
.end annotation


# static fields
.field static final h:I = 0x50


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/LinearGradient;

.field private e:Landroid/graphics/LinearGradient;

.field private final f:Landroid/graphics/Matrix;

.field final synthetic g:Ldev/duo/workspaceprobe/b;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$e0;->g:Ldev/duo/workspaceprobe/b;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$e0;->f:Landroid/graphics/Matrix;

    return-void
.end method

.method private a()V
    .locals 2

    .line 6
    invoke-virtual {p0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    const-wide/16 v0, 0x50

    invoke-virtual {p0, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/b$e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$e0;->a()V

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/b$e0;->b:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean p1, p0, Ldev/duo/workspaceprobe/b$e0;->b:Z

    xor-int/lit8 p1, p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Ldev/duo/workspaceprobe/b$e0;->a:Z

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 4
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/b$e0;->a:Z

    .line 5
    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$e0;->a()V

    .line 7
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3
    :goto_0
    iget-boolean v6, v0, Ldev/duo/workspaceprobe/b$e0;->b:Z

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eqz v6, :cond_1

    int-to-float v6, v1

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v9

    .line 4
    :goto_1
    iget-boolean v10, v0, Ldev/duo/workspaceprobe/b$e0;->b:Z

    if-eqz v10, :cond_2

    sub-int/2addr v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v9

    :goto_2
    cmpg-float v7, v6, v9

    if-gtz v7, :cond_3

    cmpg-float v7, v4, v9

    if-gtz v7, :cond_3

    .line 6
    invoke-super/range {p0 .. p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 9
    :cond_3
    iget-object v7, v0, Ldev/duo/workspaceprobe/b$e0;->c:Landroid/graphics/Paint;

    const/high16 v10, 0x437f0000    # 255.0f

    if-nez v7, :cond_5

    .line 10
    invoke-static {}, Ldev/duo/workspaceprobe/b;->b()[F

    move-result-object v7

    array-length v7, v7

    .line 11
    new-array v11, v7, [I

    new-array v12, v7, [I

    .line 12
    new-array v13, v7, [F

    :goto_3
    if-ge v5, v7, :cond_4

    int-to-float v14, v5

    add-int/lit8 v15, v7, -0x1

    move/from16 v16, v8

    int-to-float v8, v15

    div-float/2addr v14, v8

    .line 14
    aput v14, v13, v5

    .line 15
    invoke-static {}, Ldev/duo/workspaceprobe/b;->b()[F

    move-result-object v8

    aget v8, v8, v5

    sub-float v8, v16, v8

    mul-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    shl-int/lit8 v8, v8, 0x18

    aput v8, v12, v5

    .line 16
    invoke-static {}, Ldev/duo/workspaceprobe/b;->b()[F

    move-result-object v8

    sub-int/2addr v15, v5

    aget v8, v8, v15

    sub-float v8, v16, v8

    mul-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    shl-int/lit8 v8, v8, 0x18

    aput v8, v11, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v8, v16

    goto :goto_3

    .line 18
    :cond_4
    move-object/from16 v16, v11

    new-instance v11, Landroid/graphics/LinearGradient;

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v14, 0x0

    const/high16 v15, 0x41a00000    # 20.0f

    move-object/from16 v17, v12

    const/4 v12, 0x0

    move-object/from16 v5, v17

    move-object/from16 v17, v13

    const/4 v13, 0x0

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v11, v0, Ldev/duo/workspaceprobe/b$e0;->d:Landroid/graphics/LinearGradient;

    .line 19
    new-instance v12, Landroid/graphics/LinearGradient;

    const/4 v15, 0x0

    const/high16 v16, 0x41a00000    # 20.0f

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v5

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v12, v0, Ldev/duo/workspaceprobe/b$e0;->e:Landroid/graphics/LinearGradient;

    .line 20
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Ldev/duo/workspaceprobe/b$e0;->c:Landroid/graphics/Paint;

    .line 21
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_5
    int-to-float v13, v1

    int-to-float v14, v2

    add-int/2addr v3, v1

    int-to-float v15, v3

    .line 23
    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v2

    .line 24
    move/from16 v18, v15

    invoke-super/range {p0 .. p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    cmpl-float v5, v6, v9

    if-lez v5, :cond_6

    .line 26
    iget-object v5, v0, Ldev/duo/workspaceprobe/b$e0;->f:Landroid/graphics/Matrix;

    invoke-virtual {v5, v9, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 27
    iget-object v5, v0, Ldev/duo/workspaceprobe/b$e0;->d:Landroid/graphics/LinearGradient;

    iget-object v7, v0, Ldev/duo/workspaceprobe/b$e0;->f:Landroid/graphics/Matrix;

    invoke-virtual {v5, v7}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 28
    iget-object v5, v0, Ldev/duo/workspaceprobe/b$e0;->c:Landroid/graphics/Paint;

    iget-object v7, v0, Ldev/duo/workspaceprobe/b$e0;->d:Landroid/graphics/LinearGradient;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 29
    iget-object v5, v0, Ldev/duo/workspaceprobe/b$e0;->c:Landroid/graphics/Paint;

    mul-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    add-int/lit8 v1, v1, 0x14

    int-to-float v15, v1

    .line 30
    iget-object v1, v0, Ldev/duo/workspaceprobe/b$e0;->c:Landroid/graphics/Paint;

    const/4 v12, 0x0

    move-object/from16 v11, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    cmpl-float v1, v4, v9

    if-lez v1, :cond_7

    .line 33
    iget-object v1, v0, Ldev/duo/workspaceprobe/b$e0;->f:Landroid/graphics/Matrix;

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    invoke-virtual {v1, v9, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 34
    iget-object v1, v0, Ldev/duo/workspaceprobe/b$e0;->e:Landroid/graphics/LinearGradient;

    iget-object v5, v0, Ldev/duo/workspaceprobe/b$e0;->f:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 35
    iget-object v1, v0, Ldev/duo/workspaceprobe/b$e0;->c:Landroid/graphics/Paint;

    iget-object v5, v0, Ldev/duo/workspaceprobe/b$e0;->e:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 36
    iget-object v1, v0, Ldev/duo/workspaceprobe/b$e0;->c:Landroid/graphics/Paint;

    mul-float/2addr v4, v10

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 37
    iget-object v0, v0, Ldev/duo/workspaceprobe/b$e0;->c:Landroid/graphics/Paint;

    const/4 v15, 0x0

    move-object/from16 v19, v0

    move/from16 v16, v3

    move/from16 v17, v14

    move-object/from16 v14, p1

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 39
    :cond_7
    move-object/from16 v11, p1

    invoke-virtual {v11, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2
    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$e0;->a()V

    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/b$e0;->a:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$e0;->g:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->h(Ldev/duo/workspaceprobe/b;)Ldev/duo/workspaceprobe/b$X;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$e0;->g:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->i(Ldev/duo/workspaceprobe/b;)Ldev/duo/workspaceprobe/b$d0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$e0;->g:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->i(Ldev/duo/workspaceprobe/b;)Ldev/duo/workspaceprobe/b$d0;

    move-result-object v0

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$d0;->l:Ldev/duo/workspaceprobe/b$W;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x43160000    # 150.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit16 v2, v2, 0x96

    .line 4
    div-int/lit16 v3, v0, 0x96

    mul-int/lit16 v3, v3, 0x96

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6
    iget-boolean v4, p0, Ldev/duo/workspaceprobe/b$e0;->b:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-boolean v4, p0, Ldev/duo/workspaceprobe/b$e0;->b:Z

    if-eqz v4, :cond_3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v3

    .line 8
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-eq v0, v2, :cond_4

    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_4
    :goto_2
    return-void
.end method
