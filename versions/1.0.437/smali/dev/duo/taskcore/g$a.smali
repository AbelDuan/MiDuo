.class Ldev/duo/taskcore/g$a;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/taskcore/g;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroid/graphics/Paint;

.field b:Z

.field final synthetic c:Ldev/duo/taskcore/g;


# direct methods
.method constructor <init>(Ldev/duo/taskcore/g;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/taskcore/g$a;->c:Ldev/duo/taskcore/g;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/taskcore/g$a;->a:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    iget-object v0, p0, Ldev/duo/taskcore/g$a;->c:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/d;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ldev/duo/taskcore/g$a;->c:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->b(Ldev/duo/taskcore/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/g$a;->c:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->h(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/b;

    move-result-object v0

    iget-object v0, v0, Ldev/duo/taskcore/b;->a:Landroid/graphics/Rect;

    .line 3
    iget-object v1, p0, Ldev/duo/taskcore/g$a;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Ldev/duo/taskcore/g$a;->c:Ldev/duo/taskcore/g;

    invoke-static {v2}, Ldev/duo/taskcore/g;->s(Ldev/duo/taskcore/g;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, -0x888889

    goto :goto_0

    :cond_1
    const v2, -0x666667

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v1, p0, Ldev/duo/taskcore/g$a;->a:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    add-int/lit8 v1, v1, -0x18

    int-to-float v3, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    int-to-float v5, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Ldev/duo/taskcore/g$a;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float v9, p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    add-int/lit8 p1, p1, -0x18

    int-to-float v10, p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float v11, p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    add-int/lit8 p1, p1, 0x18

    int-to-float v12, p1

    iget-object v13, p0, Ldev/duo/taskcore/g$a;->a:Landroid/graphics/Paint;

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Ldev/duo/taskcore/g$a;->c:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/g$a;->c:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->h(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/b;

    move-result-object v0

    iget-object v0, v0, Ldev/duo/taskcore/b;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Ldev/duo/taskcore/g$a;->b:Z

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Ldev/duo/taskcore/g$a;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldev/duo/taskcore/g$a;->c:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/d;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ldev/duo/taskcore/g$a;->c:Ldev/duo/taskcore/g;

    .line 4
    invoke-static {v0}, Ldev/duo/taskcore/g;->h(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/b;

    move-result-object v0

    iget-object v0, v0, Ldev/duo/taskcore/b;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ldev/duo/taskcore/g$a;->performClick()Z

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iput-boolean v1, p0, Ldev/duo/taskcore/g$a;->b:Z

    :cond_3
    return v2
.end method

.method public performClick()Z
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 2
    iget-object v0, p0, Ldev/duo/taskcore/g$a;->c:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/g$a;->c:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->v(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/g$a;->c:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->v(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$h;

    move-result-object v0

    invoke-virtual {v0}, Ldev/duo/taskcore/g$h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/g$a;->c:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/g$a;->c:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Ldev/duo/taskcore/g$f;->a(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
