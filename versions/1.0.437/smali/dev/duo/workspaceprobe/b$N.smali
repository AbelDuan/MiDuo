.class final Ldev/duo/workspaceprobe/b$N;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "N"
.end annotation


# static fields
.field static final h:I = 0x5

.field static final i:F = 8.0f

.field static final j:I = 0x0

.field static final k:I = 0x1

.field static final l:I = 0x2


# instance fields
.field private final a:F

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private g:I


# direct methods
.method constructor <init>(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldev/duo/workspaceprobe/b$N;-><init>(FI)V

    return-void
.end method

.method constructor <init>(FI)V
    .locals 3

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$N;->b:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$N;->c:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$N;->d:Landroid/graphics/Paint;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$N;->e:Landroid/graphics/Paint;

    .line 7
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Ldev/duo/workspaceprobe/b$N;->f:Landroid/graphics/Paint;

    .line 14
    iput p1, p0, Ldev/duo/workspaceprobe/b$N;->a:F

    .line 15
    iput p2, p0, Ldev/duo/workspaceprobe/b$N;->g:I

    .line 16
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private a(FFFFZ)V
    .locals 26

    .line 5
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    iget-object v3, v0, Ldev/duo/workspaceprobe/b$N;->b:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    add-float v8, p2, v2

    const v5, 0x40ffffff    # 7.9999995f

    const v13, 0x66ffffff

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/4 v12, 0x4

    const/4 v6, 0x3

    if-eqz p5, :cond_0

    .line 6
    new-array v7, v12, [I

    const v9, -0x73000001

    aput v9, v7, v16

    const v9, 0x4dffffff    # 5.3687088E8f

    aput v9, v7, v15

    aput v5, v7, v14

    aput v13, v7, v6

    move-object v9, v7

    goto :goto_0

    :cond_0
    nop

    .line 7
    new-array v7, v12, [I

    aput v13, v7, v16

    const v9, 0x2effffff

    aput v9, v7, v15

    const v9, 0x26ffffff

    aput v9, v7, v14

    aput v5, v7, v6

    move-object v9, v7

    :goto_0
    new-array v10, v12, [F

    fill-array-data v10, :array_0

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v25, v14

    move-object/from16 v11, v24

    move v14, v6

    move/from16 v6, p2

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 8
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 12
    iget-object v3, v0, Ldev/duo/workspaceprobe/b$N;->c:Landroid/graphics/Paint;

    new-instance v17, Landroid/graphics/RadialGradient;

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v1

    add-float v18, p1, v4

    const v4, 0x3df5c28f    # 0.12f

    mul-float/2addr v4, v2

    const v5, 0x3ee66666    # 0.45f

    mul-float/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    add-float v19, p2, v4

    const v4, 0x400ccccd    # 2.2f

    mul-float/2addr v4, v1

    .line 13
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float v20, v4, v5

    if-eqz p5, :cond_1

    const v4, -0x7f000001

    goto :goto_1

    :cond_1
    const v4, 0x59ffffff

    :goto_1
    move/from16 v21, v4

    const v22, 0xffffff

    move-object/from16 v23, v24

    invoke-direct/range {v17 .. v23}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 14
    move-object/from16 v4, v17

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 17
    iget-object v3, v0, Ldev/duo/workspaceprobe/b$N;->d:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v2

    iget v6, v0, Ldev/duo/workspaceprobe/b$N;->a:F

    const v7, 0x3fcccccd    # 1.6f

    mul-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v7, v8, v4

    if-eqz p5, :cond_2

    const/high16 v4, 0xd000000

    goto :goto_2

    :cond_2
    const/high16 v4, 0x8000000

    :goto_2
    move v11, v4

    .line 18
    const/4 v6, 0x0

    move v9, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v4, v12

    move-object/from16 v12, v24

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 19
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 21
    iget-object v3, v0, Ldev/duo/workspaceprobe/b$N;->e:Landroid/graphics/Paint;

    new-instance v17, Landroid/graphics/LinearGradient;

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v1

    add-float v20, p1, v5

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v21, p2, v6

    const v6, -0x66000001

    const v7, 0x33ffffff

    const/4 v8, -0x1

    filled-new-array {v8, v6, v7, v13}, [I

    move-result-object v22

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    move/from16 v18, p1

    move/from16 v19, p2

    move-object/from16 v23, v4

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v4, v17

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 24
    iget-object v0, v0, Ldev/duo/workspaceprobe/b$N;->f:Landroid/graphics/Paint;

    new-instance v17, Landroid/graphics/LinearGradient;

    add-float v20, p1, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float v21, p2, v1

    if-eqz p5, :cond_3

    .line 25
    new-array v1, v14, [I

    const/high16 v2, 0xf000000

    aput v2, v1, v16

    const/high16 v2, 0x1a000000

    aput v2, v1, v15

    const/high16 v2, 0x29000000

    aput v2, v1, v25

    goto :goto_3

    :cond_3
    new-array v1, v14, [I

    const/high16 v2, 0xa000000

    aput v2, v1, v16

    const/high16 v2, 0x12000000

    aput v2, v1, v15

    const/high16 v2, 0x1f000000

    aput v2, v1, v25

    :goto_3
    move-object/from16 v22, v1

    new-array v1, v14, [F

    fill-array-data v1, :array_2

    move/from16 v18, p1

    move/from16 v19, p2

    move-object/from16 v23, v1

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 26
    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method a(I)V
    .locals 1

    .line 1
    iget v0, p0, Ldev/duo/workspaceprobe/b$N;->g:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Ldev/duo/workspaceprobe/b$N;->g:I

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldev/duo/workspaceprobe/b$N;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v1

    .line 3
    iget v8, v0, Ldev/duo/workspaceprobe/b$N;->a:F

    iget-object v10, v0, Ldev/duo/workspaceprobe/b$N;->b:Landroid/graphics/Paint;

    move v9, v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 4
    iget v8, v0, Ldev/duo/workspaceprobe/b$N;->a:F

    iget-object v10, v0, Ldev/duo/workspaceprobe/b$N;->c:Landroid/graphics/Paint;

    move v9, v8

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 5
    iget v8, v0, Ldev/duo/workspaceprobe/b$N;->a:F

    iget-object v10, v0, Ldev/duo/workspaceprobe/b$N;->d:Landroid/graphics/Paint;

    move v9, v8

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 6
    iget v1, v0, Ldev/duo/workspaceprobe/b$N;->g:I

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v12, v4, v1

    add-float v13, v5, v1

    sub-float v14, v6, v1

    sub-float v15, v7, v1

    .line 7
    iget v2, v0, Ldev/duo/workspaceprobe/b$N;->a:F

    sub-float v16, v2, v1

    iget-object v1, v0, Ldev/duo/workspaceprobe/b$N;->f:Landroid/graphics/Paint;

    move/from16 v17, v16

    move-object/from16 v11, p1

    move-object/from16 v18, v1

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x3fe00000    # 1.75f

    add-float v12, v4, v1

    add-float v13, v5, v1

    sub-float v14, v6, v1

    sub-float v15, v7, v1

    .line 9
    iget v2, v0, Ldev/duo/workspaceprobe/b$N;->a:F

    sub-float v16, v2, v1

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$N;->e:Landroid/graphics/Paint;

    move/from16 v17, v16

    move-object/from16 v18, v0

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    const/high16 v1, 0x3f400000    # 0.75f

    add-float v12, v4, v1

    add-float v13, v5, v1

    sub-float v14, v6, v1

    sub-float v15, v7, v1

    .line 13
    iget v2, v0, Ldev/duo/workspaceprobe/b$N;->a:F

    sub-float v16, v2, v1

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$N;->e:Landroid/graphics/Paint;

    move/from16 v17, v16

    move-object/from16 v11, p1

    move-object/from16 v18, v0

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v5, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 2
    iget v6, v0, Ldev/duo/workspaceprobe/b$N;->g:I

    if-eqz v6, :cond_1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move/from16 v26, v4

    move v4, v1

    move/from16 v1, v26

    invoke-direct/range {v0 .. v5}, Ldev/duo/workspaceprobe/b$N;->a(FFFFZ)V

    return-void

    .line 4
    :cond_1
    move/from16 v26, v4

    move v4, v1

    move/from16 v1, v26

    iget-object v13, v0, Ldev/duo/workspaceprobe/b$N;->b:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/LinearGradient;

    add-float v18, v2, v4

    const v6, 0x5ffffff

    const v7, 0xdffffff

    const v14, 0x14ffffff

    const v8, 0x6ffffff

    filled-new-array {v14, v8, v6, v7}, [I

    move-result-object v10

    const/4 v15, 0x4

    new-array v11, v15, [F

    fill-array-data v11, :array_0

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v7, v2

    move/from16 v9, v18

    move-object/from16 v12, v21

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 8
    iget-object v5, v0, Ldev/duo/workspaceprobe/b$N;->c:Landroid/graphics/Paint;

    new-instance v19, Landroid/graphics/RadialGradient;

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v6, v3

    add-float v20, v1, v6

    const v6, 0x3df5c28f    # 0.12f

    mul-float/2addr v6, v4

    const v7, 0x3ee66666    # 0.45f

    mul-float/2addr v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float/2addr v6, v2

    const v7, 0x400ccccd    # 2.2f

    mul-float/2addr v7, v3

    .line 9
    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x3f400000    # 0.75f

    mul-float v22, v7, v8

    const v23, 0x1fffffff

    const v24, 0xffffff

    move-object/from16 v25, v21

    move/from16 v21, v6

    invoke-direct/range {v19 .. v25}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 10
    move-object/from16 v6, v19

    move-object/from16 v21, v25

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 14
    iget-object v5, v0, Ldev/duo/workspaceprobe/b$N;->d:Landroid/graphics/Paint;

    move v6, v14

    new-instance v14, Landroid/graphics/LinearGradient;

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v4

    iget v8, v0, Ldev/duo/workspaceprobe/b$N;->a:F

    const v9, 0x3fcccccd    # 1.6f

    mul-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    sub-float v16, v18, v7

    const v19, 0xffffff

    const v20, 0x12ffffff

    move v7, v15

    const/4 v15, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 17
    iget-object v0, v0, Ldev/duo/workspaceprobe/b$N;->e:Landroid/graphics/Paint;

    move v5, v3

    new-instance v3, Landroid/graphics/LinearGradient;

    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v8, v5

    add-float/2addr v8, v1

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v5, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    add-float/2addr v4, v2

    const v5, 0x33ffffff

    const v9, 0x2effffff

    const v10, -0x59000001

    filled-new-array {v10, v5, v6, v9}, [I

    move-result-object v5

    new-array v9, v7, [F

    fill-array-data v9, :array_1

    move v7, v4

    move v6, v8

    move-object/from16 v10, v21

    move v4, v1

    move-object v8, v5

    move v5, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
