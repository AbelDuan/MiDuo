.class final Ldev/duo/workspaceprobe/b$X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "X"
.end annotation


# static fields
.field static final l:I = 0x6e

.field static final m:I = 0x12


# instance fields
.field final a:Landroid/widget/LinearLayout;

.field final b:Landroid/widget/ScrollView;

.field final c:Landroid/view/View;

.field final d:I

.field final e:I

.field final f:I

.field final g:F

.field final h:F

.field i:F

.field j:I

.field final synthetic k:Ldev/duo/workspaceprobe/b;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/b;Landroid/widget/LinearLayout;Landroid/view/View;IIF)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$X;->k:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ldev/duo/workspaceprobe/b$X;->a:Landroid/widget/LinearLayout;

    .line 3
    iput p6, p0, Ldev/duo/workspaceprobe/b$X;->h:F

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Ldev/duo/workspaceprobe/b$X;->b:Landroid/widget/ScrollView;

    .line 5
    iput-object p3, p0, Ldev/duo/workspaceprobe/b$X;->c:Landroid/view/View;

    .line 6
    iput p4, p0, Ldev/duo/workspaceprobe/b$X;->d:I

    .line 7
    iput p5, p0, Ldev/duo/workspaceprobe/b$X;->e:I

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    iput p2, p0, Ldev/duo/workspaceprobe/b$X;->f:I

    .line 9
    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->l(Ldev/duo/workspaceprobe/b;)F

    move-result p1

    iput p1, p0, Ldev/duo/workspaceprobe/b$X;->i:F

    iput p1, p0, Ldev/duo/workspaceprobe/b$X;->g:F

    .line 10
    iput p4, p0, Ldev/duo/workspaceprobe/b$X;->j:I

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 13
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$X;->k:Ldev/duo/workspaceprobe/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;Ldev/duo/workspaceprobe/b$X;)Ldev/duo/workspaceprobe/b$X;

    .line 14
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$X;->b:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$X;->b:Landroid/widget/ScrollView;

    instance-of v1, v0, Ldev/duo/workspaceprobe/b$e0;

    if-eqz v1, :cond_0

    check-cast v0, Ldev/duo/workspaceprobe/b$e0;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b$e0;->a(Ldev/duo/workspaceprobe/b$e0;)V

    .line 16
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$X;->k:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->m(Ldev/duo/workspaceprobe/b;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Ldev/duo/workspaceprobe/b$X;->d:I

    iget v2, p0, Ldev/duo/workspaceprobe/b$X;->j:I

    invoke-static {v0, v1, v2}, Ldev/duo/hookprobe/J;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sidebar drag end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string v2, "drop "

    goto :goto_0

    :cond_1
    const-string v2, "cancel "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldev/duo/workspaceprobe/b$X;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldev/duo/workspaceprobe/b$X;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DuoRail"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 18
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$X;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$X;->a:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Ldev/duo/workspaceprobe/b$X;->k:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->m(Ldev/duo/workspaceprobe/b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 19
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$X;->k:Ldev/duo/workspaceprobe/b;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ldev/duo/workspaceprobe/b;->B(I)V

    .line 20
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$X;->k:Ldev/duo/workspaceprobe/b;

    invoke-static {p1, v0}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;Ljava/util/List;)V

    return-void

    .line 21
    :cond_2
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$X;->k:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->n(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method

.method private b()V
    .locals 7

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$X;->c:Landroid/view/View;

    iget v1, p0, Ldev/duo/workspaceprobe/b$X;->i:F

    iget v2, p0, Ldev/duo/workspaceprobe/b$X;->g:F

    sub-float/2addr v1, v2

    iget v2, p0, Ldev/duo/workspaceprobe/b$X;->h:F

    div-float/2addr v1, v2

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$X;->b:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Ldev/duo/workspaceprobe/b$X;->f:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$X;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$X;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x42400000    # 48.0f

    add-float/2addr v0, v1

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$X;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 3
    iget v1, p0, Ldev/duo/workspaceprobe/b$X;->e:I

    const/16 v2, 0x96

    invoke-static {v0, v2, v1}, Ldev/duo/hookprobe/J;->a(FII)I

    move-result v0

    .line 4
    iget v1, p0, Ldev/duo/workspaceprobe/b$X;->j:I

    if-ne v0, v1, :cond_0

    goto :goto_3

    .line 5
    :cond_0
    iput v0, p0, Ldev/duo/workspaceprobe/b$X;->j:I

    const/4 v1, 0x0

    move v3, v1

    .line 6
    :goto_0
    iget v4, p0, Ldev/duo/workspaceprobe/b$X;->e:I

    if-ge v3, v4, :cond_4

    .line 7
    iget v4, p0, Ldev/duo/workspaceprobe/b$X;->d:I

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    if-ge v4, v0, :cond_2

    if-le v3, v4, :cond_2

    if-gt v3, v0, :cond_2

    const/16 v4, -0x96

    goto :goto_1

    :cond_2
    if-le v4, v0, :cond_3

    if-lt v3, v0, :cond_3

    if-ge v3, v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    .line 9
    :goto_1
    iget-object v5, p0, Ldev/duo/workspaceprobe/b$X;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0xa0

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$X;->b:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 2
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$X;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$X;->c:Landroid/view/View;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 4
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$X;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f8f5c29    # 1.12f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$X;->b:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sidebar drag start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$X;->k:Ldev/duo/workspaceprobe/b;

    invoke-static {v1}, Ldev/duo/workspaceprobe/b;->m(Ldev/duo/workspaceprobe/b;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Ldev/duo/workspaceprobe/b$X;->d:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldev/duo/workspaceprobe/b$X;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuoRail"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Ldev/duo/workspaceprobe/b$X;->i:F

    .line 10
    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$X;->b()V

    return-void

    :cond_0
    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    .line 11
    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b$X;->a(Z)V

    return-void

    :cond_1
    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    .line 12
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b$X;->a(Z)V

    :cond_2
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$X;->k:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->j(Ldev/duo/workspaceprobe/b;)Ldev/duo/workspaceprobe/b$X;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$X;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$X;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$X;->b:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42400000    # 48.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x42dc0000    # 110.0f

    cmpg-float v1, v0, v1

    const/4 v2, 0x0

    if-gez v1, :cond_1

    const/16 v0, -0x12

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$X;->b:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x6e

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/16 v0, 0x12

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 5
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$X;->b:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 6
    iget-object v3, p0, Ldev/duo/workspaceprobe/b$X;->b:Landroid/widget/ScrollView;

    invoke-virtual {v3, v2, v0}, Landroid/view/View;->scrollBy(II)V

    .line 7
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$X;->b:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$X;->b()V

    .line 9
    :cond_3
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$X;->b:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
