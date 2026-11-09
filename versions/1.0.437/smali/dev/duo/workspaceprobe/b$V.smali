.class final Ldev/duo/workspaceprobe/b$V;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "V"
.end annotation


# static fields
.field static final c:I = 0x30


# instance fields
.field private final a:Z

.field private final b:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$V;->b:Landroid/graphics/Paint;

    .line 4
    iput-boolean p2, p0, Ldev/duo/workspaceprobe/b$V;->a:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v4, v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v7, v2, v1

    .line 2
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$V;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$V;->b:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$V;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$V;->b:Landroid/graphics/Paint;

    iget-boolean v3, p0, Ldev/duo/workspaceprobe/b$V;->a:Z

    if-eqz v3, :cond_0

    const v3, -0xcb7d01

    goto :goto_0

    :cond_0
    const v3, -0xc4d0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40400000    # 3.0f

    sub-float v1, v0, v1

    .line 6
    iget-object v3, p0, Ldev/duo/workspaceprobe/b$V;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 7
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$V;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$V;->b:Landroid/graphics/Paint;

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$V;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const v1, 0x3ed70a3d    # 0.42f

    mul-float/2addr v0, v1

    sub-float v6, v4, v0

    add-float v8, v4, v0

    .line 10
    iget-object v10, p0, Ldev/duo/workspaceprobe/b$V;->b:Landroid/graphics/Paint;

    move v9, v7

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 11
    move-object v3, v5

    iget-boolean p1, p0, Ldev/duo/workspaceprobe/b$V;->a:Z

    if-eqz p1, :cond_1

    sub-float v5, v7, v0

    add-float/2addr v7, v0

    iget-object v8, p0, Ldev/duo/workspaceprobe/b$V;->b:Landroid/graphics/Paint;

    move v6, v4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method
