.class final Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtm/m/os4/systemuihook/newnotificationcenter/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Z

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field final g:I

.field final h:F

.field final i:F

.field final j:F

.field final k:F

.field final l:F

.field final m:F

.field final n:F

.field final o:F

.field final p:F

.field final q:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->a:Z

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->b:I

    .line 4
    const-string v0, "getSuperTranslationX"

    invoke-static {p1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->h:F

    .line 5
    const-string v0, "getSuperTranslationY"

    invoke-static {p1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->i:F

    .line 6
    const-string v0, "getSuperTranslationZ"

    invoke-static {p1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->j:F

    .line 7
    const-string v0, "getSuperScaleX"

    invoke-static {p1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->k:F

    .line 8
    const-string v0, "getSuperScaleY"

    invoke-static {p1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->l:F

    .line 9
    const-string v0, "getSuperAlpha"

    invoke-static {p1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->m:F

    .line 10
    const-string v0, "getSuperTransitionAlpha"

    invoke-static {p1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->n:F

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v0

    iput v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->o:F

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result v0

    iput v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->p:F

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->q:Landroid/graphics/Rect;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 15
    const-string v1, "getActualHeight"

    invoke-static {p1, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->c:I

    if-eqz p2, :cond_2

    .line 16
    const-string v1, "getClipTopAmount"

    invoke-static {p1, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->d:I

    if-eqz p2, :cond_3

    .line 17
    const-string v1, "getClipBottomAmount"

    invoke-static {p1, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    iput v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->e:I

    if-eqz p2, :cond_4

    .line 18
    const-string v1, "getExtClipBottomAmount"

    invoke-static {p1, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_4
    iput v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->f:I

    if-eqz p2, :cond_5

    .line 22
    :try_start_0
    const-string p2, "getInjector"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "dimForeground"

    invoke-static {p1, p2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 23
    instance-of p2, p1, Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 26
    :cond_5
    const/4 p1, -0x1

    :goto_5
    iput p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->g:I

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v0

    iget v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->o:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result v0

    iget v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->p:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 3
    :cond_1
    iget v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->h:F

    const-string v1, "TranslationX"

    invoke-static {p1, v1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;F)V

    .line 4
    iget v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->i:F

    const-string v1, "TranslationY"

    invoke-static {p1, v1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;F)V

    .line 5
    iget v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->j:F

    const-string v1, "TranslationZ"

    invoke-static {p1, v1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;F)V

    .line 6
    iget v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->k:F

    const-string v1, "ScaleX"

    invoke-static {p1, v1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;F)V

    .line 7
    iget v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->l:F

    const-string v1, "ScaleY"

    invoke-static {p1, v1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;F)V

    .line 8
    iget v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->m:F

    const-string v1, "Alpha"

    invoke-static {p1, v1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;F)V

    .line 9
    iget v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->n:F

    const-string v1, "TransitionAlpha"

    invoke-static {p1, v1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;F)V

    .line 10
    iget-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->a:Z

    if-eqz v0, :cond_3

    .line 11
    const-string v0, "getActualHeight"

    invoke-static {p1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->c:I

    if-eq v0, v1, :cond_2

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setActualHeight"

    invoke-static {p1, v1, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_2
    iget v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->d:I

    const-string v1, "ClipTopAmount"

    invoke-static {p1, v1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;I)V

    .line 15
    iget v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->e:I

    const-string v1, "ClipBottomAmount"

    invoke-static {p1, v1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;I)V

    .line 16
    iget v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->f:I

    const-string v1, "ExtClipBottomAmount"

    invoke-static {p1, v1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Ljava/lang/String;I)V

    .line 17
    iget v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->g:I

    if-ltz v0, :cond_3

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getInjector"

    invoke-static {p1, v1, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "dimForeground"

    invoke-static {v0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    iget v2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->g:I

    if-eq v1, v2, :cond_3

    .line 20
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 24
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->q:Landroid/graphics/Rect;

    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_0
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->q:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 26
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->b:I

    if-eq v0, v1, :cond_6

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method
