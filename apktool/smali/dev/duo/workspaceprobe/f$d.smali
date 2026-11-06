.class final Ldev/duo/workspaceprobe/f$d;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/f$d;->a:Landroid/graphics/Paint;

    .line 5
    iput-boolean p2, p0, Ldev/duo/workspaceprobe/f$d;->b:Z

    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 9
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-boolean v5, p0, Ldev/duo/workspaceprobe/f$d;->b:Z

    if-eqz v5, :cond_0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1, v5, v6, v4, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_0
    const/high16 v5, 0x41e00000    # 28.0f

    mul-float/2addr v3, v5

    const/high16 v5, 0x42580000    # 54.0f

    div-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    sub-float/2addr v4, v5

    sub-float/2addr v2, v5

    .line 6
    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x41c00000    # 24.0f

    div-float/2addr v3, v2

    .line 7
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 8
    iget-object v2, p0, Ldev/duo/workspaceprobe/f$d;->a:Landroid/graphics/Paint;

    const v3, 0x3ff33333    # 1.9f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    iget-object v9, p0, Ldev/duo/workspaceprobe/f$d;->a:Landroid/graphics/Paint;

    const/high16 v7, 0x43960000    # 300.0f

    const/4 v8, 0x0

    const v2, 0x406ccccd    # 3.7f

    const v3, 0x406ccccd    # 3.7f

    const v4, 0x41a26666    # 20.3f

    const v5, 0x41a26666    # 20.3f

    const/high16 v6, -0x3e100000    # -30.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 10
    iget-object v6, p0, Ldev/duo/workspaceprobe/f$d;->a:Landroid/graphics/Paint;

    const/high16 v4, 0x41400000    # 12.0f

    const v5, 0x406ccccd    # 3.7f

    const v2, 0x411e6666    # 9.9f

    const v3, 0x3fe66666    # 1.8f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 11
    iget-object v6, p0, Ldev/duo/workspaceprobe/f$d;->a:Landroid/graphics/Paint;

    const v4, 0x411e6666    # 9.9f

    const v5, 0x40b33333    # 5.6f

    const/high16 v2, 0x41400000    # 12.0f

    const v3, 0x406ccccd    # 3.7f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 12
    iget-object v7, p0, Ldev/duo/workspaceprobe/f$d;->a:Landroid/graphics/Paint;

    const v5, 0x3f8ccccd    # 1.1f

    const v6, 0x3f8ccccd    # 1.1f

    const v1, 0x411ccccd    # 9.8f

    const v2, 0x41066666    # 8.4f

    const v3, 0x41633333    # 14.2f

    const v4, 0x4179999a    # 15.6f

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
