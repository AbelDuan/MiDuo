.class public final Ldev/duo/taskcore/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:I = 0x28

.field public static final h:I = 0x18

.field public static final i:I = 0x4

.field public static final j:I = 0x3


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/graphics/Rect;

.field public final c:Z

.field public final d:[Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Rect;

.field public final f:F


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldev/duo/taskcore/b;-><init>(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Z)V
    .locals 16

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Ldev/duo/taskcore/b;->a:Landroid/graphics/Rect;

    .line 7
    const/4 v4, 0x3

    new-array v5, v4, [Landroid/graphics/Rect;

    iput-object v5, v0, Ldev/duo/taskcore/b;->d:[Landroid/graphics/Rect;

    .line 17
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v5, v0, Ldev/duo/taskcore/b;->b:Landroid/graphics/Rect;

    .line 18
    iput-boolean v2, v0, Ldev/duo/taskcore/b;->c:Z

    .line 19
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/lit8 v6, v5, -0x50

    add-int/lit16 v5, v5, -0x98

    .line 20
    const/4 v7, 0x4

    div-int/2addr v5, v7

    int-to-float v8, v5

    int-to-float v6, v6

    div-float/2addr v8, v6

    .line 23
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/lit8 v9, v9, -0x68

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v10, v8

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 24
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/lit8 v10, v10, -0x68

    sub-int/2addr v10, v9

    if-eqz v2, :cond_0

    .line 25
    iget v11, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v11, v11, 0x28

    goto :goto_0

    :cond_0
    iget v11, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v11, v11, -0x28

    sub-int/2addr v11, v9

    .line 26
    :goto_0
    iget v12, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v12, v12, 0x28

    add-int v13, v11, v9

    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v14, v14, -0x28

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    int-to-float v3, v10

    int-to-float v9, v9

    div-float/2addr v3, v9

    .line 27
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Ldev/duo/taskcore/b;->f:F

    mul-float/2addr v9, v3

    .line 28
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 29
    new-array v6, v7, [Landroid/graphics/Rect;

    const/4 v9, 0x0

    move v11, v9

    :goto_1
    if-ge v11, v7, :cond_2

    .line 31
    iget v12, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v12, v12, 0x28

    add-int/lit8 v13, v5, 0x18

    mul-int/2addr v13, v11

    add-int/2addr v12, v13

    sub-int v13, v5, v3

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    if-eqz v2, :cond_1

    .line 32
    iget v13, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v13, v13, -0x28

    sub-int/2addr v13, v10

    goto :goto_2

    :cond_1
    iget v13, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v13, v13, 0x28

    :goto_2
    sub-int v14, v10, v8

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    .line 33
    new-instance v14, Landroid/graphics/Rect;

    add-int v15, v13, v8

    add-int v7, v12, v3

    invoke-direct {v14, v13, v12, v15, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v14, v6, v11

    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x4

    goto :goto_1

    :cond_2
    nop

    .line 35
    aget-object v1, v6, v9

    iput-object v1, v0, Ldev/duo/taskcore/b;->e:Landroid/graphics/Rect;

    :goto_3
    if-ge v9, v4, :cond_3

    .line 36
    iget-object v1, v0, Ldev/duo/taskcore/b;->d:[Landroid/graphics/Rect;

    add-int/lit8 v2, v9, 0x1

    aget-object v3, v6, v2

    aput-object v3, v1, v9

    move v9, v2

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static a(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 9
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p2

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p2

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v2

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v2, p2

    add-float/2addr v3, v2

    .line 10
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, p0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p2

    add-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 11
    invoke-virtual {p3, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p3
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 5

    .line 5
    iget-boolean v0, p0, Ldev/duo/taskcore/b;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Ldev/duo/taskcore/b;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Ldev/duo/taskcore/b;->b:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Ldev/duo/taskcore/b;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Ldev/duo/taskcore/b;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public a(F)Landroid/graphics/Rect;
    .locals 5

    .line 1
    iget-object v0, p0, Ldev/duo/taskcore/b;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget-object p1, p0, Ldev/duo/taskcore/b;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float p1, v0, p1

    iget-object v1, p0, Ldev/duo/taskcore/b;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    .line 2
    iget-object p1, p0, Ldev/duo/taskcore/b;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 3
    iget-boolean v2, p0, Ldev/duo/taskcore/b;->c:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Ldev/duo/taskcore/b;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    add-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v4, p1

    add-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v2, v3, p1, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .line 4
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Ldev/duo/taskcore/b;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v3, p0, Ldev/duo/taskcore/b;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, p1

    add-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v2, v0, p1, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public a(Landroid/graphics/Rect;)[F
    .locals 4

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Ldev/duo/taskcore/b;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 8
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Ldev/duo/taskcore/b;->a:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v1, v3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr p1, v2

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    const/4 v0, 0x2

    aput p1, v2, v0

    return-object v2
.end method

.method public b()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/taskcore/b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/b;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0xc

    return v0

    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/b;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0xc

    return v0
.end method

.method public b(Landroid/graphics/Rect;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Ldev/duo/taskcore/b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/b;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x28

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x28

    neg-int v0, v0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/taskcore/b;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
