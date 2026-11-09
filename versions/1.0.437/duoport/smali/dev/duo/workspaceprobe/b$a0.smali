.class final Ldev/duo/workspaceprobe/b$a0;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a0"
.end annotation


# static fields
.field static final d:I


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$a0;->c:Landroid/graphics/Paint;

    .line 4
    iput p2, p0, Ldev/duo/workspaceprobe/b$a0;->a:I

    iput p3, p0, Ldev/duo/workspaceprobe/b$a0;->b:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$a0;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$a0;->c:Landroid/graphics/Paint;

    const v2, 0x3db851ec    # 0.09f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$a0;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 5
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$a0;->c:Landroid/graphics/Paint;

    iget v2, p0, Ldev/duo/workspaceprobe/b$a0;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget v1, p0, Ldev/duo/workspaceprobe/b$a0;->a:I

    if-nez v1, :cond_0

    const v1, 0x3ed70a3d    # 0.42f

    mul-float/2addr v1, v0

    const v2, 0x3e8f5c29    # 0.28f

    mul-float/2addr v2, v0

    .line 7
    iget-object v3, p0, Ldev/duo/workspaceprobe/b$a0;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v1, 0x3f2147ae    # 0.63f

    mul-float v3, v0, v1

    const v1, 0x3f5c28f6    # 0.86f

    mul-float v5, v0, v1

    .line 8
    iget-object v7, p0, Ldev/duo/workspaceprobe/b$a0;->c:Landroid/graphics/Paint;

    move v4, v3

    move v6, v5

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
