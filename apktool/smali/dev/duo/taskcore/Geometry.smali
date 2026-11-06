.class public final Ldev/duo/taskcore/Geometry;
.super Ljava/lang/Object;
.source "Geometry.java"


# static fields
.field public static final EDGE:I = 0x28

.field public static final GAP:I = 0x18

.field public static final SLOTS:I = 0x4


# instance fields
.field public final display:Landroid/graphics/Rect;

.field public final logical:Landroid/graphics/Rect;

.field public final slotScale:F

.field public final slots:[Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 12

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    .line 15
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    .line 20
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Ldev/duo/taskcore/Geometry;->display:Landroid/graphics/Rect;

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, -0x50

    .line 22
    add-int/lit8 v2, v1, -0x48

    div-int/2addr v2, v0

    .line 23
    int-to-float v3, v2

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/lit8 v4, v4, -0x50

    add-int/lit8 v4, v4, -0x18

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v5, v3

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v5, v5, -0x50

    add-int/lit8 v5, v5, -0x18

    sub-int/2addr v5, v4

    .line 27
    iget-object v6, p0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v7, -0x28

    sub-int/2addr v7, v4

    iget v8, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v8, v8, 0x28

    iget v9, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v9, v9, -0x28

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v10, v10, -0x28

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 28
    int-to-float v6, v5

    int-to-float v4, v4

    div-float/2addr v6, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Ldev/duo/taskcore/Geometry;->slotScale:F

    .line 29
    iget v3, p0, Ldev/duo/taskcore/Geometry;->slotScale:F

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Ldev/duo/taskcore/Geometry;->slotScale:F

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 30
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 31
    iget v6, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x28

    add-int/lit8 v7, v2, 0x18

    mul-int/2addr v7, v4

    add-int/2addr v6, v7

    sub-int v7, v2, v1

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 32
    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v7, v7, 0x28

    sub-int v8, v5, v3

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    .line 33
    iget-object v8, p0, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v7, v3

    add-int v11, v6, v1

    invoke-direct {v9, v7, v6, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v9, v8, v4

    .line 30
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public static between(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 52
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 53
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p2

    add-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 52
    invoke-virtual {p3, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 54
    return-object p3
.end method


# virtual methods
.method public mainFollowing(F)Landroid/graphics/Rect;
    .locals 5

    .line 39
    iget-object v0, p0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget-object p1, p0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float p1, v0, p1

    iget-object v1, p0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    .line 40
    iget-object p1, p0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 41
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v3, p0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, p1

    add-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v2, v0, p1, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public matrixFor(Landroid/graphics/Rect;)[F
    .locals 4

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 47
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget-object v2, p0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

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
