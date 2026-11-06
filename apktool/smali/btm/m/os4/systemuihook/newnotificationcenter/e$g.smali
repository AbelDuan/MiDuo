.class final Lbtm/m/os4/systemuihook/newnotificationcenter/e$g;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtm/m/os4/systemuihook/newnotificationcenter/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field private b:Z

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$q6K2sSRL-dce6hW_xywiNzuaFOs(Lbtm/m/os4/systemuihook/newnotificationcenter/e$g;)V
    .locals 0

    invoke-direct {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$g;->a()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lbtm/m/os4/systemuihook/newnotificationcenter/e$g$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$g$$ExternalSyntheticLambda0;-><init>(Lbtm/m/os4/systemuihook/newnotificationcenter/e$g;)V

    iput-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$g;->c:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$g;->b:Z

    .line 2
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->u()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$g;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$g;->b:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$g;->b()V

    .line 2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->u()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$g;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$g;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$g;->b:Z

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$g;->c:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    iput-boolean p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$g;->b:Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$g;->b()V

    :cond_0
    return-void
.end method
