.class final Ldev/duo/workspaceprobe/j;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:I

.field private final c:[Landroid/graphics/drawable/Drawable;

.field private final d:Landroid/graphics/RectF;

.field private final e:[Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Landroid/content/Context;I[Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/workspaceprobe/j;->a:Landroid/graphics/Paint;

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/j;->d:Landroid/graphics/RectF;

    .line 10
    iput p2, p0, Ldev/duo/workspaceprobe/j;->b:I

    .line 11
    iput-object p3, p0, Ldev/duo/workspaceprobe/j;->c:[Landroid/graphics/drawable/Drawable;

    .line 12
    array-length p1, p3

    const/4 p2, 0x0

    move v1, p2

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p3, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_1
    array-length p1, p3

    sub-int/2addr p1, v0

    new-array p1, p1, [Landroid/graphics/RectF;

    iput-object p1, p0, Ldev/duo/workspaceprobe/j;->e:[Landroid/graphics/RectF;

    .line 14
    :goto_1
    iget-object p1, p0, Ldev/duo/workspaceprobe/j;->e:[Landroid/graphics/RectF;

    array-length p3, p1

    if-ge p2, p3, :cond_2

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    aput-object p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .line 4
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/j;->a:Landroid/graphics/Paint;

    iget v1, p0, Ldev/duo/workspaceprobe/j;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ldev/duo/workspaceprobe/o;->a(FF)F

    move-result v0

    .line 7
    iget-object v1, p0, Ldev/duo/workspaceprobe/j;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-nez p3, :cond_1

    :goto_0
    return-void

    .line 9
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v1, p4, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p2, v1

    add-int v1, v0, p4

    add-int/2addr p4, p2

    .line 10
    invoke-virtual {p3, v0, p2, v1, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    const/16 p2, 0xff

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 12
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method a(Landroid/graphics/Rect;[Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/j;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/j;->e:[Landroid/graphics/RectF;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, Ldev/duo/workspaceprobe/j;->e:[Landroid/graphics/RectF;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v2, v2, v0

    iget-object v3, p0, Ldev/duo/workspaceprobe/j;->c:[Landroid/graphics/drawable/Drawable;

    add-int/lit8 v0, v0, 0x1

    aget-object v3, v3, v0

    const/16 v4, 0x78

    invoke-direct {p0, p1, v2, v3, v4}, Ldev/duo/workspaceprobe/j;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/j;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Ldev/duo/workspaceprobe/j;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v2, v1

    const/16 v2, 0xb4

    invoke-direct {p0, p1, v0, v1, v2}, Ldev/duo/workspaceprobe/j;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method
