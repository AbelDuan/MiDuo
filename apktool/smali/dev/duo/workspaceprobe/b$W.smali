.class final Ldev/duo/workspaceprobe/b$W;
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
    name = "W"
.end annotation


# static fields
.field static final v:I = 0x18

.field static final w:I = 0x6e

.field static final x:I = 0x12

.field static final y:I = 0x80


# instance fields
.field final a:Ldev/duo/workspaceprobe/b$d0;

.field final b:Landroid/view/View;

.field final c:Landroid/view/View;

.field final d:Ljava/lang/String;

.field private final e:Landroid/graphics/drawable/Drawable;

.field private final f:Landroid/view/WindowManager;

.field private final g:F

.field private final h:F

.field private final i:F

.field private final j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:Landroid/widget/FrameLayout;

.field private o:Landroid/widget/ImageView;

.field private p:Z

.field private q:Z

.field private r:Ldev/duo/workspaceprobe/b$K;

.field private s:Landroid/widget/ScrollView;

.field private t:I

.field final synthetic u:Ldev/duo/workspaceprobe/b;


# direct methods
.method public static synthetic $r8$lambda$5sG35pB9Is8s5YMVGd5UTA8hoq0(Ldev/duo/workspaceprobe/b$W;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$W;->j()V

    return-void
.end method

.method public static synthetic $r8$lambda$ajf3pLHKJCJ6kUM99i0Pz9BPXI8(Ldev/duo/workspaceprobe/b$W;Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/b$W;->b(Landroid/view/View;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$iuiSUCx_jB7x8g1dUtrQDQYJsuE(Ldev/duo/workspaceprobe/b$W;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$W;->g()V

    return-void
.end method

.method public static synthetic $r8$lambda$zkhrNp4qV1syuNPaDNmGY-slJuk(Ldev/duo/workspaceprobe/b$W;Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/b$W;->a(Landroid/view/View;F)V

    return-void
.end method

.method constructor <init>(Ldev/duo/workspaceprobe/b;Ldev/duo/workspaceprobe/b$d0;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$W;->f:Landroid/view/WindowManager;

    .line 6
    const/4 p1, -0x1

    iput p1, p0, Ldev/duo/workspaceprobe/b$W;->k:I

    .line 14
    iput p1, p0, Ldev/duo/workspaceprobe/b$W;->t:I

    .line 18
    iput-object p2, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    .line 19
    iput-object p3, p0, Ldev/duo/workspaceprobe/b$W;->b:Landroid/view/View;

    .line 20
    iput-object p4, p0, Ldev/duo/workspaceprobe/b$W;->c:Landroid/view/View;

    .line 21
    iput-object p5, p0, Ldev/duo/workspaceprobe/b$W;->d:Ljava/lang/String;

    .line 22
    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p6

    :cond_0
    iput-object p6, p0, Ldev/duo/workspaceprobe/b$W;->e:Landroid/graphics/drawable/Drawable;

    .line 24
    iget p1, p2, Ldev/duo/workspaceprobe/b$d0;->m:F

    iput p1, p0, Ldev/duo/workspaceprobe/b$W;->l:F

    iput p1, p0, Ldev/duo/workspaceprobe/b$W;->g:F

    .line 25
    iget p1, p2, Ldev/duo/workspaceprobe/b$d0;->n:F

    iput p1, p0, Ldev/duo/workspaceprobe/b$W;->m:F

    iput p1, p0, Ldev/duo/workspaceprobe/b$W;->h:F

    .line 26
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result p1

    iput p1, p0, Ldev/duo/workspaceprobe/b$W;->i:F

    .line 27
    iget-object p1, p2, Ldev/duo/workspaceprobe/b$d0;->o:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Ldev/duo/workspaceprobe/b$W;->j:I

    return-void
.end method

.method private a(Ldev/duo/workspaceprobe/b$K;)I
    .locals 4

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v1}, Ldev/duo/workspaceprobe/b;->k(Ldev/duo/workspaceprobe/b;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 54
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 56
    :cond_0
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v1}, Ldev/duo/workspaceprobe/b;->w(Ldev/duo/workspaceprobe/b;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    iget v2, v2, Ldev/duo/workspaceprobe/b;->G1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 57
    iget v2, p0, Ldev/duo/workspaceprobe/b$W;->m:F

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    aget v1, v1, v3

    :goto_0
    int-to-float v1, v1

    sub-float/2addr v2, v1

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v1}, Ldev/duo/workspaceprobe/b;->x(Ldev/duo/workspaceprobe/b;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float/2addr v2, v1

    iget-object p1, p1, Ldev/duo/workspaceprobe/b$K;->j:Landroid/widget/LinearLayout;

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, p1

    const/high16 p1, 0x42960000    # 75.0f

    add-float/2addr v2, p1

    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v3

    const/16 v0, 0x96

    invoke-static {v2, v0, p1}, Ldev/duo/hookprobe/J;->a(FII)I

    move-result p1

    return p1
.end method

.method private a()V
    .locals 11

    const-string v1, "DuoRail"

    .line 17
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    iget-object v2, v2, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$W;->n:Landroid/widget/FrameLayout;

    .line 18
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    iget-object v2, v2, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$W;->o:Landroid/widget/ImageView;

    .line 19
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->n:Landroid/widget/FrameLayout;

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->o:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x80

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    const v9, 0x1000118

    const/4 v10, -0x3

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x7e1

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 30
    const/16 v0, 0x33

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 31
    const/4 v0, 0x3

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 32
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 33
    const-string v0, "DuoSidebarCarry"

    invoke-virtual {v5, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    :try_start_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->f:Landroid/view/WindowManager;

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->n:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2, v5}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/b$W;->p:Z

    .line 43
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->c:Landroid/view/View;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 44
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->o:Landroid/widget/ImageView;

    const v2, 0x3f8f5c29    # 1.12f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 45
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 46
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->o:Landroid/widget/ImageView;

    const v2, 0x3f6b851f    # 0.92f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 47
    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$W;->e()V

    .line 48
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sidebar carry start "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    .line 50
    const-string v2, "Sidebar carry unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$W;->n:Landroid/widget/FrameLayout;

    .line 52
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    iput-object v0, v1, Ldev/duo/workspaceprobe/b$d0;->l:Ldev/duo/workspaceprobe/b$W;

    return-void
.end method

.method private a(I)V
    .locals 8

    .line 60
    iget v0, p0, Ldev/duo/workspaceprobe/b$W;->j:I

    if-ltz v0, :cond_5

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    iget-object v1, v1, Ldev/duo/workspaceprobe/b$d0;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$d0;->o:Ljava/util/List;

    iget v1, p0, Ldev/duo/workspaceprobe/b$W;->j:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->b:Landroid/view/View;

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 62
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b$d0;->a(Ldev/duo/workspaceprobe/b$d0;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x3

    int-to-float v2, v1

    div-float/2addr v0, v2

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 63
    :goto_0
    iget-object v4, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    iget-object v4, v4, Ldev/duo/workspaceprobe/b$d0;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 64
    iget-object v4, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    iget-object v4, v4, Ldev/duo/workspaceprobe/b$d0;->o:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 65
    iget v5, p0, Ldev/duo/workspaceprobe/b$W;->j:I

    if-ne v3, v5, :cond_2

    .line 66
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-ltz p1, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x78

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_2
    if-ltz p1, :cond_3

    if-ge v5, p1, :cond_3

    if-le v3, v5, :cond_3

    if-gt v3, p1, :cond_3

    add-int/lit8 v5, v3, -0x1

    goto :goto_2

    :cond_3
    if-ltz p1, :cond_4

    if-ge p1, v5, :cond_4

    if-lt v3, p1, :cond_4

    if-ge v3, v5, :cond_4

    add-int/lit8 v5, v3, 0x1

    goto :goto_2

    :cond_4
    move v5, v3

    .line 72
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    rem-int/lit8 v6, v5, 0x3

    rem-int/lit8 v7, v3, 0x3

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v0

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    div-int/2addr v5, v1

    div-int/lit8 v6, v3, 0x3

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 73
    const-wide/16 v5, 0xb4

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-static {}, Ldev/duo/workspaceprobe/b;->c()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    return-void
.end method

.method private synthetic a(Landroid/view/View;F)V
    .locals 0

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$W;->j()V

    return-void
.end method

.method private a(Ldev/duo/workspaceprobe/b$K;I)V
    .locals 5

    if-gez p2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->k(Ldev/duo/workspaceprobe/b;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    .line 75
    :goto_1
    iget-object v2, p1, Ldev/duo/workspaceprobe/b$K;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    if-ltz p2, :cond_2

    if-ltz v0, :cond_1

    if-le v1, v0, :cond_1

    add-int/lit8 v2, v1, -0x1

    goto :goto_2

    :cond_1
    move v2, v1

    :goto_2
    if-eq v1, v0, :cond_3

    if-lt v2, p2, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    move v2, v1

    .line 81
    :cond_3
    :goto_3
    iget-object v3, p1, Ldev/duo/workspaceprobe/b$K;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-ne v1, v0, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    sub-int/2addr v2, v1

    int-to-float v2, v2

    const/high16 v4, 0x43160000    # 150.0f

    mul-float/2addr v2, v4

    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-ne v1, v0, :cond_5

    const v3, 0x3e99999a    # 0.3f

    goto :goto_5

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 83
    const-wide/16 v3, 0xa0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-static {}, Ldev/duo/workspaceprobe/b;->c()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private a(Z)V
    .locals 9

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/b$W;->q:Z

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Ldev/duo/workspaceprobe/b$W;->p:Z

    .line 86
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    const/4 v3, 0x0

    iput-object v3, v2, Ldev/duo/workspaceprobe/b$d0;->l:Ldev/duo/workspaceprobe/b$W;

    .line 87
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->b:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 88
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->r:Ldev/duo/workspaceprobe/b$K;

    if-eqz v2, :cond_0

    iget-object v2, v2, Ldev/duo/workspaceprobe/b$K;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Ldev/duo/workspaceprobe/b$e0;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->r:Ldev/duo/workspaceprobe/b$K;

    iget-object v2, v2, Ldev/duo/workspaceprobe/b$K;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Ldev/duo/workspaceprobe/b$e0;

    invoke-static {v2}, Ldev/duo/workspaceprobe/b$e0;->a(Ldev/duo/workspaceprobe/b$e0;)V

    .line 90
    :cond_0
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->s:Landroid/widget/ScrollView;

    instance-of v3, v2, Ldev/duo/workspaceprobe/b$e0;

    if-eqz v3, :cond_2

    iget-object v3, p0, Ldev/duo/workspaceprobe/b$W;->r:Ldev/duo/workspaceprobe/b$K;

    if-eqz v3, :cond_1

    iget-object v3, v3, Ldev/duo/workspaceprobe/b$K;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 91
    :cond_1
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->s:Landroid/widget/ScrollView;

    check-cast v2, Ldev/duo/workspaceprobe/b$e0;

    invoke-static {v2}, Ldev/duo/workspaceprobe/b$e0;->a(Ldev/duo/workspaceprobe/b$e0;)V

    :cond_2
    const-wide/16 v2, 0xa0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "DuoRail"

    if-eqz p1, :cond_4

    .line 92
    iget-object v7, p0, Ldev/duo/workspaceprobe/b$W;->r:Ldev/duo/workspaceprobe/b$K;

    if-eqz v7, :cond_4

    iget v7, p0, Ldev/duo/workspaceprobe/b$W;->t:I

    if-ltz v7, :cond_4

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->k(Ldev/duo/workspaceprobe/b;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    iget v0, p0, Ldev/duo/workspaceprobe/b$W;->t:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sidebar carry drop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldev/duo/workspaceprobe/b$W;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-virtual {v0, v5}, Ldev/duo/workspaceprobe/b;->B(I)V

    .line 98
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Ldev/duo/workspaceprobe/b$W$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/duo/workspaceprobe/b$W$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/b$W;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 99
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->c:Landroid/view/View;

    iget v1, p0, Ldev/duo/workspaceprobe/b$W;->i:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 100
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->k(Ldev/duo/workspaceprobe/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v0, p1}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;Ljava/util/List;)V

    return-void

    .line 101
    :cond_3
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->l(Ldev/duo/workspaceprobe/b;)V

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 104
    iget v7, p0, Ldev/duo/workspaceprobe/b$W;->k:I

    if-ltz v7, :cond_5

    iget v8, p0, Ldev/duo/workspaceprobe/b$W;->j:I

    if-eq v7, v8, :cond_5

    iget-object v7, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    iget-object v7, v7, Ldev/duo/workspaceprobe/b$d0;->o:Ljava/util/List;

    iget-object v8, p0, Ldev/duo/workspaceprobe/b$W;->b:Landroid/view/View;

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    iget v8, p0, Ldev/duo/workspaceprobe/b$W;->j:I

    if-ne v7, v8, :cond_5

    .line 105
    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$W;->d()V

    return-void

    :cond_5
    if-eqz p1, :cond_6

    .line 108
    iget-object v7, p0, Ldev/duo/workspaceprobe/b$W;->r:Ldev/duo/workspaceprobe/b$K;

    if-eqz v7, :cond_6

    .line 109
    iget-object v7, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    iget-object v7, v7, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    const-string v8, "\u6700\u591a\u56fa\u5b9a 12 \u4e2a\u5e94\u7528"

    invoke-static {v7, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 110
    :cond_6
    iget-object v7, p0, Ldev/duo/workspaceprobe/b$W;->r:Ldev/duo/workspaceprobe/b$K;

    const/4 v8, -0x1

    if-eqz v7, :cond_7

    invoke-direct {p0, v7, v8}, Ldev/duo/workspaceprobe/b$W;->a(Ldev/duo/workspaceprobe/b$K;I)V

    .line 111
    :cond_7
    iget v7, p0, Ldev/duo/workspaceprobe/b$W;->k:I

    if-ltz v7, :cond_8

    invoke-direct {p0, v8}, Ldev/duo/workspaceprobe/b$W;->a(I)V

    .line 112
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sidebar carry "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_9

    const-string p1, "back "

    goto :goto_0

    :cond_9
    const-string p1, "cancel "

    :goto_0
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v7, p0, Ldev/duo/workspaceprobe/b$W;->d:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$W;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_a

    .line 114
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$W;->o:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Ldev/duo/workspaceprobe/b$W$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ldev/duo/workspaceprobe/b$W$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/b$W;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_a
    nop

    .line 117
    new-array p1, v5, [I

    .line 118
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->c:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 119
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->o:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    aget v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    aget p1, p1, v0

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-static {}, Ldev/duo/workspaceprobe/b;->c()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Ldev/duo/workspaceprobe/b$W$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ldev/duo/workspaceprobe/b$W$$ExternalSyntheticLambda1;-><init>(Ldev/duo/workspaceprobe/b$W;)V

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private b()Ldev/duo/workspaceprobe/b$K;
    .locals 6

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->v(Ldev/duo/workspaceprobe/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    iget v1, v1, Ldev/duo/workspaceprobe/b;->G1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/duo/workspaceprobe/b$K;

    .line 2
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v1}, Ldev/duo/workspaceprobe/b;->w(Ldev/duo/workspaceprobe/b;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    iget v2, v2, Ldev/duo/workspaceprobe/b;->G1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 3
    iget-object v3, v0, Ldev/duo/workspaceprobe/b$K;->i:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    iget v4, v3, Ldev/duo/workspaceprobe/b;->G1:I

    .line 4
    invoke-static {v3, v4}, Ldev/duo/workspaceprobe/b;->b(Ldev/duo/workspaceprobe/b;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const/4 v3, 0x1

    aget v3, v1, v3

    iget-object v4, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v4}, Ldev/duo/workspaceprobe/b;->x(Ldev/duo/workspaceprobe/b;)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 6
    iget v4, p0, Ldev/duo/workspaceprobe/b$W;->l:F

    const/4 v5, 0x0

    aget v1, v1, v5

    int-to-float v1, v1

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_1

    iget v1, p0, Ldev/duo/workspaceprobe/b$W;->m:F

    cmpl-float v4, v1, v3

    if-ltz v4, :cond_1

    iget-object v4, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v4}, Ldev/duo/workspaceprobe/b;->y(Ldev/duo/workspaceprobe/b;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    return-object v0

    :cond_1
    :goto_0
    return-object v2
.end method

.method private synthetic b(Landroid/view/View;F)V
    .locals 3

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 9
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->o:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Ldev/duo/workspaceprobe/b;->c()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Ldev/duo/workspaceprobe/b$W$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Ldev/duo/workspaceprobe/b$W$$ExternalSyntheticLambda2;-><init>(Ldev/duo/workspaceprobe/b$W;Landroid/view/View;F)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private d()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    invoke-static {v1}, Ldev/duo/workspaceprobe/b$d0;->b(Ldev/duo/workspaceprobe/b$d0;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget v1, p0, Ldev/duo/workspaceprobe/b$W;->k:I

    iget v2, p0, Ldev/duo/workspaceprobe/b$W;->j:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    invoke-static {v1, v0}, Ldev/duo/workspaceprobe/b$d0;->a(Ldev/duo/workspaceprobe/b$d0;Ljava/util/List;)Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, [Ljava/lang/Object;

    aget-object v5, v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sidebar panel move "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ldev/duo/workspaceprobe/b$W;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ldev/duo/workspaceprobe/b$W;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DuoRail"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ldev/duo/workspaceprobe/b;->B(I)V

    .line 9
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->A(Ldev/duo/workspaceprobe/b;)Ljava/util/List;

    move-result-object v2

    const/16 v4, 0x190

    invoke-static {v2, v1, v1, v4}, Ldev/duo/hookprobe/J;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/duo/workspaceprobe/b;->b(Ldev/duo/workspaceprobe/b;Ljava/util/List;)V

    .line 10
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    invoke-virtual {v0}, Ldev/duo/workspaceprobe/b$d0;->d()V

    .line 11
    iget v0, p0, Ldev/duo/workspaceprobe/b$W;->k:I

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    iget-object v1, v1, Ldev/duo/workspaceprobe/b$d0;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$d0;->o:Ljava/util/List;

    iget v1, p0, Ldev/duo/workspaceprobe/b$W;->k:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 13
    :cond_2
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_3

    .line 14
    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$W;->j()V

    return-void

    .line 15
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 16
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 17
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    invoke-static {v1}, Ldev/duo/workspaceprobe/b$d0;->a(Ldev/duo/workspaceprobe/b$d0;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v3, Ldev/duo/workspaceprobe/b$W$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2, v0}, Ldev/duo/workspaceprobe/b$W$$ExternalSyntheticLambda3;-><init>(Ldev/duo/workspaceprobe/b$W;Landroid/view/View;F)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private e()V
    .locals 5

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->o:Landroid/widget/ImageView;

    iget v1, p0, Ldev/duo/workspaceprobe/b$W;->l:F

    const/high16 v2, 0x42800000    # 64.0f

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 2
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->o:Landroid/widget/ImageView;

    iget v1, p0, Ldev/duo/workspaceprobe/b$W;->m:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 3
    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$W;->b()Ldev/duo/workspaceprobe/b$K;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/b$W;->a(Ldev/duo/workspaceprobe/b$K;)I

    move-result v2

    .line 5
    :goto_0
    iget-object v3, p0, Ldev/duo/workspaceprobe/b$W;->r:Ldev/duo/workspaceprobe/b$K;

    if-ne v0, v3, :cond_1

    iget v4, p0, Ldev/duo/workspaceprobe/b$W;->t:I

    if-eq v2, v4, :cond_3

    :cond_1
    if-eqz v3, :cond_2

    if-eq v3, v0, :cond_2

    .line 6
    invoke-direct {p0, v3, v1}, Ldev/duo/workspaceprobe/b$W;->a(Ldev/duo/workspaceprobe/b$K;I)V

    .line 7
    :cond_2
    iput-object v0, p0, Ldev/duo/workspaceprobe/b$W;->r:Ldev/duo/workspaceprobe/b$K;

    .line 8
    iput v2, p0, Ldev/duo/workspaceprobe/b$W;->t:I

    if-eqz v0, :cond_3

    .line 9
    invoke-direct {p0, v0, v2}, Ldev/duo/workspaceprobe/b$W;->a(Ldev/duo/workspaceprobe/b$K;I)V

    :cond_3
    if-nez v0, :cond_4

    .line 11
    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$W;->i()I

    move-result v1

    goto :goto_1

    :cond_4
    nop

    .line 12
    :goto_1
    iget v0, p0, Ldev/duo/workspaceprobe/b$W;->k:I

    if-eq v1, v0, :cond_5

    .line 13
    iput v1, p0, Ldev/duo/workspaceprobe/b$W;->k:I

    .line 14
    invoke-direct {p0, v1}, Ldev/duo/workspaceprobe/b$W;->a(I)V

    :cond_5
    return-void
.end method

.method private synthetic g()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->c:Landroid/view/View;

    iget v1, p0, Ldev/duo/workspaceprobe/b$W;->i:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$W;->j()V

    return-void
.end method

.method private h()[I
    .locals 4

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b$d0;->a(Ldev/duo/workspaceprobe/b$d0;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    filled-new-array {v2, v1, v3, v0}, [I

    move-result-object v0

    return-object v0
.end method

.method private i()I
    .locals 11

    .line 1
    iget v0, p0, Ldev/duo/workspaceprobe/b$W;->j:I

    const/4 v1, -0x1

    if-ltz v0, :cond_2

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    iget-boolean v0, v0, Ldev/duo/workspaceprobe/b$d0;->p:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$d0;->o:Ljava/util/List;

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->b:Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget v2, p0, Ldev/duo/workspaceprobe/b$W;->j:I

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$W;->h()[I

    move-result-object v0

    .line 3
    iget v2, p0, Ldev/duo/workspaceprobe/b$W;->l:F

    const/4 v3, 0x0

    aget v4, v0, v3

    int-to-float v5, v4

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_2

    const/4 v5, 0x2

    aget v6, v0, v5

    add-int/2addr v4, v6

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_2

    iget v2, p0, Ldev/duo/workspaceprobe/b$W;->m:F

    const/4 v4, 0x1

    aget v6, v0, v4

    int-to-float v7, v6

    cmpg-float v7, v2, v7

    if-ltz v7, :cond_2

    const/4 v7, 0x3

    aget v0, v0, v7

    add-int/2addr v6, v0

    int-to-float v0, v6

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-array v0, v5, [I

    .line 5
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    invoke-static {v1}, Ldev/duo/workspaceprobe/b$d0;->a(Ldev/duo/workspaceprobe/b$d0;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    invoke-static {v1}, Ldev/duo/workspaceprobe/b$d0;->a(Ldev/duo/workspaceprobe/b$d0;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float v7, v1, v2

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v8, v1

    .line 7
    iget v1, p0, Ldev/duo/workspaceprobe/b$W;->l:F

    aget v2, v0, v3

    int-to-float v2, v2

    sub-float v5, v1, v2

    iget v1, p0, Ldev/duo/workspaceprobe/b$W;->m:F

    aget v0, v0, v4

    int-to-float v0, v0

    sub-float v6, v1, v0

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$d0;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v9, 0x3

    invoke-static/range {v5 .. v10}, Ldev/duo/hookprobe/J;->a(FFFFII)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private j()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->n:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->f:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    const-string v1, "DuoRail"

    const-string v2, "Sidebar carry remove failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$W;->n:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method a(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Ldev/duo/workspaceprobe/b$W;->l:F

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Ldev/duo/workspaceprobe/b$W;->m:F

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 5
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/b$W;->p:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$W;->e()V

    return-void

    .line 6
    :cond_0
    iget p1, p0, Ldev/duo/workspaceprobe/b$W;->l:F

    iget v1, p0, Ldev/duo/workspaceprobe/b$W;->g:F

    sub-float/2addr p1, v1

    float-to-double v1, p1

    iget p1, p0, Ldev/duo/workspaceprobe/b$W;->m:F

    iget v3, p0, Ldev/duo/workspaceprobe/b$W;->h:F

    sub-float/2addr p1, v3

    float-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x4038000000000000L    # 24.0

    cmpl-double p1, v1, v3

    if-lez p1, :cond_5

    .line 7
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->m(Ldev/duo/workspaceprobe/b;)V

    .line 8
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-virtual {p1, v0}, Ldev/duo/workspaceprobe/b;->B(I)V

    .line 9
    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$W;->a()V

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 12
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/b$W;->p:Z

    if-eqz p1, :cond_2

    invoke-direct {p0, v1}, Ldev/duo/workspaceprobe/b$W;->a(Z)V

    return-void

    .line 13
    :cond_2
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    iput-object v0, p1, Ldev/duo/workspaceprobe/b$d0;->l:Ldev/duo/workspaceprobe/b$W;

    return-void

    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 15
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/b$W;->p:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b$W;->a(Z)V

    return-void

    .line 16
    :cond_4
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    iput-object v0, p1, Ldev/duo/workspaceprobe/b$d0;->l:Ldev/duo/workspaceprobe/b$W;

    :cond_5
    return-void
.end method

.method c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/b$W;->q:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/b$W;->q:Z

    .line 3
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/b$W;->p:Z

    .line 4
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    const/4 v1, 0x0

    iput-object v1, v0, Ldev/duo/workspaceprobe/b$d0;->l:Ldev/duo/workspaceprobe/b$W;

    .line 5
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->r:Ldev/duo/workspaceprobe/b$K;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Ldev/duo/workspaceprobe/b$W;->a(Ldev/duo/workspaceprobe/b$K;I)V

    .line 7
    :cond_1
    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$W;->j()V

    return-void
.end method

.method f()V
    .locals 13

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ldev/duo/workspaceprobe/b;->B(I)V

    .line 4
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->s(Ldev/duo/workspaceprobe/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$W;->a()V

    return-void

    .line 5
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 6
    iget-object v3, p0, Ldev/duo/workspaceprobe/b$W;->c:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 8
    const/4 v3, 0x0

    aget v4, v2, v3

    iget-object v5, p0, Ldev/duo/workspaceprobe/b$W;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit16 v4, v4, 0x1bc

    const/16 v5, 0x3ab

    if-gt v4, v5, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    const/16 v5, 0x18

    if-eqz v4, :cond_2

    .line 9
    aget v3, v2, v3

    iget-object v6, p0, Ldev/duo/workspaceprobe/b$W;->c:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    goto :goto_1

    :cond_2
    aget v3, v2, v3

    add-int/lit16 v3, v3, -0x1bc

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_1
    move v9, v3

    .line 10
    iget-object v3, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v3}, Ldev/duo/workspaceprobe/b;->m(Ldev/duo/workspaceprobe/b;)V

    .line 11
    iget-object v6, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    new-instance v5, Ldev/duo/workspaceprobe/b$b0;

    iget-object v7, p0, Ldev/duo/workspaceprobe/b$W;->d:Ljava/lang/String;

    invoke-static {v6}, Ldev/duo/workspaceprobe/b;->k(Ldev/duo/workspaceprobe/b;)Ljava/util/List;

    move-result-object v3

    iget-object v8, p0, Ldev/duo/workspaceprobe/b$W;->d:Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    aget v1, v2, v1

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$W;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v0

    add-int v10, v1, v2

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/16 v0, 0x1a4

    int-to-float v0, v0

    :goto_2
    move v11, v0

    .line 12
    const/4 v12, 0x1

    invoke-direct/range {v5 .. v12}, Ldev/duo/workspaceprobe/b$b0;-><init>(Ldev/duo/workspaceprobe/b;Ljava/lang/String;ZIIFZ)V

    .line 13
    invoke-static {v6, v5}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;Ldev/duo/workspaceprobe/b$b0;)Ldev/duo/workspaceprobe/b$b0;

    .line 15
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->o(Ldev/duo/workspaceprobe/b;)Ldev/duo/workspaceprobe/b$b0;

    move-result-object v0

    invoke-virtual {v0}, Ldev/duo/workspaceprobe/b$b0;->d()V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sidebar panel hold "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$W;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuoRail"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public run()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/b$W;->q:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Ldev/duo/workspaceprobe/b$W;->p:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->r:Ldev/duo/workspaceprobe/b$K;

    const/4 v1, -0x2

    const/16 v2, 0x12

    const/16 v3, -0x12

    const/high16 v4, 0x42dc0000    # 110.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, v0, Ldev/duo/workspaceprobe/b$K;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 4
    iget-object v7, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v7}, Ldev/duo/workspaceprobe/b;->w(Ldev/duo/workspaceprobe/b;)Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    iget v8, v8, Ldev/duo/workspaceprobe/b;->G1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 5
    iget v8, p0, Ldev/duo/workspaceprobe/b$W;->m:F

    if-nez v7, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    aget v5, v7, v5

    :goto_0
    int-to-float v5, v5

    sub-float/2addr v8, v5

    iget-object v5, p0, Ldev/duo/workspaceprobe/b$W;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v5}, Ldev/duo/workspaceprobe/b;->x(Ldev/duo/workspaceprobe/b;)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v8, v5

    cmpg-float v4, v8, v4

    if-gez v4, :cond_2

    move v2, v3

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x6e

    int-to-float v3, v3

    cmpl-float v3, v8, v3

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v6

    .line 7
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v3

    if-eqz v2, :cond_4

    .line 8
    invoke-virtual {v0, v6, v2}, Landroid/view/View;->scrollBy(II)V

    .line 9
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-eq v2, v3, :cond_9

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$W;->s:Landroid/widget/ScrollView;

    iput v1, p0, Ldev/duo/workspaceprobe/b$W;->t:I

    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$W;->e()V

    goto :goto_3

    .line 10
    :cond_5
    iget v0, p0, Ldev/duo/workspaceprobe/b$W;->k:I

    if-ltz v0, :cond_9

    .line 11
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->a:Ldev/duo/workspaceprobe/b$d0;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b$d0;->a(Ldev/duo/workspaceprobe/b$d0;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 12
    iget v7, p0, Ldev/duo/workspaceprobe/b$W;->m:F

    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$W;->h()[I

    move-result-object v8

    aget v5, v8, v5

    int-to-float v5, v5

    sub-float/2addr v7, v5

    cmpg-float v4, v7, v4

    if-gez v4, :cond_6

    move v2, v3

    goto :goto_2

    .line 13
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x6e

    int-to-float v3, v3

    cmpl-float v3, v7, v3

    if-lez v3, :cond_7

    goto :goto_2

    :cond_7
    move v2, v6

    .line 14
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v3

    if-eqz v2, :cond_8

    .line 15
    invoke-virtual {v0, v6, v2}, Landroid/view/View;->scrollBy(II)V

    .line 16
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-eq v0, v3, :cond_9

    iput v1, p0, Ldev/duo/workspaceprobe/b$W;->k:I

    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$W;->e()V

    .line 18
    :cond_9
    :goto_3
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$W;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_a
    :goto_4
    return-void
.end method
