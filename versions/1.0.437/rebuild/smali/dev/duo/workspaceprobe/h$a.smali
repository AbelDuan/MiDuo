.class final Ldev/duo/workspaceprobe/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:F

.field final b:[F

.field final c:[F

.field final d:Ljava/lang/String;

.field final e:[Landroid/graphics/Path;

.field final f:[Landroid/graphics/RectF;


# direct methods
.method constructor <init>(F[FLjava/lang/String;[F[[F)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ldev/duo/workspaceprobe/h$a;->a:F

    .line 3
    iput-object p2, p0, Ldev/duo/workspaceprobe/h$a;->b:[F

    .line 4
    iput-object p3, p0, Ldev/duo/workspaceprobe/h$a;->d:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Ldev/duo/workspaceprobe/h$a;->c:[F

    .line 6
    array-length p1, p5

    new-array p1, p1, [Landroid/graphics/Path;

    iput-object p1, p0, Ldev/duo/workspaceprobe/h$a;->e:[Landroid/graphics/Path;

    .line 7
    array-length p1, p5

    new-array p1, p1, [Landroid/graphics/RectF;

    iput-object p1, p0, Ldev/duo/workspaceprobe/h$a;->f:[Landroid/graphics/RectF;

    const/4 p1, 0x0

    move p2, p1

    .line 9
    :goto_0
    array-length p3, p5

    if-ge p2, p3, :cond_1

    .line 10
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 11
    aget-object p3, p5, p2

    move p4, p1

    .line 12
    :goto_1
    array-length v1, p3

    if-ge p4, v1, :cond_0

    .line 13
    aget v1, p3, p4

    float-to-int v1, v1

    packed-switch v1, :pswitch_data_0

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :pswitch_0
    add-int/lit8 v1, p4, 0x1

    .line 19
    aget v1, p3, v1

    add-int/lit8 v2, p4, 0x2

    aget v2, p3, v2

    neg-float v2, v2

    add-int/lit8 v3, p4, 0x3

    aget v3, p3, v3

    add-int/lit8 v4, p4, 0x4

    aget v4, p3, v4

    neg-float v4, v4

    add-int/lit8 v5, p4, 0x5

    aget v5, p3, v5

    add-int/lit8 v6, p4, 0x6

    aget v6, p3, v6

    neg-float v6, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 p4, p4, 0x7

    goto :goto_1

    :pswitch_1
    add-int/lit8 v1, p4, 0x1

    .line 20
    aget v1, p3, v1

    add-int/lit8 v2, p4, 0x2

    aget v2, p3, v2

    neg-float v2, v2

    add-int/lit8 v3, p4, 0x3

    aget v3, p3, v3

    add-int/lit8 v4, p4, 0x4

    aget v4, p3, v4

    neg-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 p4, p4, 0x5

    goto :goto_1

    :pswitch_2
    add-int/lit8 v1, p4, 0x1

    .line 21
    aget v1, p3, v1

    add-int/lit8 v2, p4, 0x2

    aget v2, p3, v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 p4, p4, 0x3

    goto :goto_1

    :pswitch_3
    add-int/lit8 v1, p4, 0x1

    .line 22
    aget v1, p3, v1

    add-int/lit8 v2, p4, 0x2

    aget v2, p3, v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    add-int/lit8 p4, p4, 0x3

    goto :goto_1

    .line 29
    :cond_0
    iget-object p3, p0, Ldev/duo/workspaceprobe/h$a;->e:[Landroid/graphics/Path;

    aput-object v0, p3, p2

    .line 30
    iget-object p3, p0, Ldev/duo/workspaceprobe/h$a;->f:[Landroid/graphics/RectF;

    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    aput-object p4, p3, p2

    .line 31
    iget-object p3, p0, Ldev/duo/workspaceprobe/h$a;->f:[Landroid/graphics/RectF;

    aget-object p3, p3, p2

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;)V

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(CC)F
    .locals 3

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Ldev/duo/workspaceprobe/h$a;->c:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Ldev/duo/workspaceprobe/h$a;->d:Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Ldev/duo/workspaceprobe/h$a;->d:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object p1, p0, Ldev/duo/workspaceprobe/h$a;->c:[F

    aget p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/h$a;Ljava/lang/String;F)F
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/h$a;->a(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/h$a;Ljava/lang/String;IF)F
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Ldev/duo/workspaceprobe/h$a;->a(Ljava/lang/String;IF)F

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;F)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-direct {p0, p1, v2, p2}, Ldev/duo/workspaceprobe/h$a;->a(Ljava/lang/String;IF)F

    move-result v3

    add-float/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Ldev/duo/workspaceprobe/h$a;->f:[Landroid/graphics/RectF;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ldev/duo/workspaceprobe/h;->a(C)I

    move-result p1

    aget-object p1, p2, p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    return v0
.end method

.method private a(Ljava/lang/String;IF)F
    .locals 2

    add-int/lit8 v0, p2, -0x1

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 6
    iget-object p2, p0, Ldev/duo/workspaceprobe/h$a;->b:[F

    invoke-static {v0}, Ldev/duo/workspaceprobe/h;->a(C)I

    move-result v1

    aget p2, p2, v1

    invoke-direct {p0, v0, p1}, Ldev/duo/workspaceprobe/h$a;->a(CC)F

    move-result p1

    add-float/2addr p2, p1

    add-float/2addr p2, p3

    return p2
.end method
