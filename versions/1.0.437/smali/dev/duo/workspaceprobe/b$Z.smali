.class final Ldev/duo/workspaceprobe/b$Z;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Z"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:I

.field private final c:I

.field private d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$Z;->a:Landroid/graphics/Paint;

    .line 6
    iput p2, p0, Ldev/duo/workspaceprobe/b$Z;->b:I

    iput p3, p0, Ldev/duo/workspaceprobe/b$Z;->c:I

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/b$Z;->d:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Ldev/duo/workspaceprobe/b$Z;->d:Z

    if-eqz p1, :cond_1

    .line 3
    const-string p1, "\u5b8c\u6210"

    goto :goto_0

    :cond_1
    const-string p1, "\u7f16\u8f91"

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    .line 2
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$Z;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$Z;->a:Landroid/graphics/Paint;

    iget v3, p0, Ldev/duo/workspaceprobe/b$Z;->b:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$Z;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$Z;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$Z;->a:Landroid/graphics/Paint;

    const v2, 0x3d23d70a    # 0.04f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$Z;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 8
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$Z;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 9
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$Z;->a:Landroid/graphics/Paint;

    iget v2, p0, Ldev/duo/workspaceprobe/b$Z;->c:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 11
    iget-boolean v2, p0, Ldev/duo/workspaceprobe/b$Z;->d:Z

    const v3, 0x3f333333    # 0.7f

    const v4, 0x3f051eb8    # 0.52f

    if-eqz v2, :cond_0

    const v2, 0x3ea3d70a    # 0.32f

    mul-float/2addr v2, v0

    mul-float/2addr v4, v0

    .line 12
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const v2, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v0

    const v4, 0x3f266666    # 0.65f

    mul-float/2addr v4, v0

    .line 13
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float/2addr v3, v0

    const v2, 0x3ebd70a4    # 0.37f

    mul-float/2addr v0, v2

    .line 14
    invoke-virtual {v1, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_0
    mul-float/2addr v4, v0

    const v2, 0x3e9eb852    # 0.31f

    mul-float/2addr v2, v0

    .line 17
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const v4, 0x3eb851ec    # 0.36f

    mul-float/2addr v4, v0

    .line 18
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 19
    invoke-virtual {v1, v2, v2, v2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    const v5, 0x3f23d70a    # 0.64f

    mul-float/2addr v5, v0

    .line 20
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const v6, 0x3f30a3d7    # 0.69f

    mul-float/2addr v6, v0

    .line 21
    invoke-virtual {v1, v2, v6, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 22
    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 23
    invoke-virtual {v1, v6, v6, v6, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    const v2, 0x3ef5c28f    # 0.48f

    mul-float/2addr v2, v0

    .line 24
    invoke-virtual {v1, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const v2, 0x3eeb851f    # 0.46f

    mul-float/2addr v2, v0

    const v4, 0x3f0a3d71    # 0.54f

    mul-float/2addr v4, v0

    .line 25
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float/2addr v3, v0

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v2

    .line 26
    invoke-virtual {v1, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 28
    :goto_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$Z;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
