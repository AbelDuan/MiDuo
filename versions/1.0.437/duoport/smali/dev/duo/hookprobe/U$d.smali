.class final Ldev/duo/hookprobe/U$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field final a:Landroid/widget/FrameLayout;

.field final b:Landroid/widget/FrameLayout;

.field final c:I

.field final d:Z

.field final e:Z

.field final f:Z

.field final g:I

.field private final h:I

.field private final i:I

.field private final j:Landroid/app/Activity;

.field private k:Landroid/widget/FrameLayout;

.field private l:Ldev/duo/hookprobe/U$f;

.field private m:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$1EnHwHunkGZlZ6yMZ8O1eZIYf4c(Ldev/duo/hookprobe/U$d;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/U$d;->a(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldev/duo/hookprobe/U$d;->j:Landroid/app/Activity;

    .line 3
    invoke-static {p1}, Ldev/duo/hookprobe/U;->a(Landroid/app/Activity;)V

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 7
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p0, Ldev/duo/hookprobe/U$d;->i:I

    .line 8
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Ldev/duo/hookprobe/U$d;->c:I

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    const/16 v4, 0x258

    if-lt v2, v4, :cond_1

    if-eqz v3, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    .line 10
    :goto_1
    iput-boolean v7, p0, Ldev/duo/hookprobe/U$d;->d:Z

    if-eqz v7, :cond_2

    const/16 v8, 0x348

    if-lt v2, v8, :cond_2

    move v8, v5

    goto :goto_2

    :cond_2
    move v8, v6

    .line 11
    :goto_2
    iput-boolean v8, p0, Ldev/duo/hookprobe/U$d;->e:Z

    if-lt v2, v4, :cond_3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move v5, v6

    .line 12
    :goto_3
    iput-boolean v5, p0, Ldev/duo/hookprobe/U$d;->f:Z

    .line 13
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    if-eqz v7, :cond_4

    goto :goto_4

    .line 14
    :cond_4
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v6

    :goto_4
    or-int/2addr v2, v6

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 17
    iget v2, v0, Landroid/graphics/Insets;->top:I

    iput v2, p0, Ldev/duo/hookprobe/U$d;->g:I

    .line 18
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    iput v0, p0, Ldev/duo/hookprobe/U$d;->h:I

    .line 19
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldev/duo/hookprobe/U$d;->a:Landroid/widget/FrameLayout;

    .line 20
    invoke-static {p1}, Ldev/duo/hookprobe/U;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Ldev/duo/hookprobe/U$d;->b:Landroid/widget/FrameLayout;

    .line 22
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz v7, :cond_5

    .line 24
    const/16 v4, 0x14

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 25
    const/16 v4, 0xd4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 27
    :cond_5
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    new-instance v2, Ldev/duo/hookprobe/U$d$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Ldev/duo/hookprobe/U$d$$ExternalSyntheticLambda0;-><init>(Ldev/duo/hookprobe/U$d;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v8, :cond_6

    if-eqz v5, :cond_9

    .line 39
    :cond_6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x434d0000    # 205.0f

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v3, 0x435c0000    # 220.0f

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 40
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    if-eqz v8, :cond_7

    const v2, 0x434c8000    # 204.5f

    goto :goto_5

    :cond_7
    const/high16 v2, 0x436a0000    # 234.0f

    :goto_5
    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eqz v8, :cond_8

    const/high16 v1, 0x42e40000    # 114.0f

    goto :goto_6

    :cond_8
    const/high16 v1, 0x429c0000    # 78.0f

    .line 41
    :goto_6
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 42
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ldev/duo/hookprobe/U$d;->k:Landroid/widget/FrameLayout;

    .line 43
    new-instance v1, Ldev/duo/hookprobe/U$f;

    invoke-direct {v1, p1}, Ldev/duo/hookprobe/U$f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ldev/duo/hookprobe/U$d;->l:Ldev/duo/hookprobe/U$f;

    .line 44
    iget-object p1, p0, Ldev/duo/hookprobe/U$d;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    or-int/2addr v0, v1

    iget-boolean v1, p0, Ldev/duo/hookprobe/U$d;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    :goto_0
    or-int/2addr v0, v1

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p2

    .line 3
    iget v0, p2, Landroid/graphics/Insets;->left:I

    iget v1, p2, Landroid/graphics/Insets;->top:I

    iget v2, p2, Landroid/graphics/Insets;->right:I

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    sget-object p1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p1
.end method


# virtual methods
.method a(I)I
    .locals 2

    .line 19
    iget-boolean v0, p0, Ldev/duo/hookprobe/U$d;->d:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 20
    :cond_0
    iget-boolean v0, p0, Ldev/duo/hookprobe/U$d;->f:Z

    if-eqz v0, :cond_1

    const/16 p1, 0x14

    return p1

    .line 21
    :cond_1
    iget-object v0, p0, Ldev/duo/hookprobe/U$d;->j:Landroid/app/Activity;

    add-int/lit16 p1, p1, -0x280

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method a()V
    .locals 4

    .line 6
    iget-object v0, p0, Ldev/duo/hookprobe/U$d;->k:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/U$d;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Ldev/duo/hookprobe/U$d;->k:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method a(ILjava/util/function/IntConsumer;)V
    .locals 4

    .line 8
    iget-object v0, p0, Ldev/duo/hookprobe/U$d;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ldev/duo/hookprobe/U$d;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/U$d;->j:Landroid/app/Activity;

    iget-boolean v1, p0, Ldev/duo/hookprobe/U$d;->d:Z

    const/16 v2, 0xac

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-static {v0, p1, v1, p2}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;IILjava/util/function/IntConsumer;)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/hookprobe/U$d;->m:Landroid/view/View;

    .line 11
    iget-boolean p1, p0, Ldev/duo/hookprobe/U$d;->d:Z

    const/4 p2, -0x2

    if-eqz p1, :cond_2

    .line 12
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const v0, 0x800015

    invoke-direct {p1, v2, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 13
    const/16 p2, 0x14

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 15
    :cond_2
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x51

    invoke-direct {p1, p2, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 16
    iget-boolean p2, p0, Ldev/duo/hookprobe/U$d;->f:Z

    if-eqz p2, :cond_3

    iget p2, p0, Ldev/duo/hookprobe/U$d;->h:I

    rsub-int/lit8 p2, p2, 0x28

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    :cond_3
    iget-object p2, p0, Ldev/duo/hookprobe/U$d;->j:Landroid/app/Activity;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p2, v0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result p2

    :goto_1
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 18
    :goto_2
    iget-object p2, p0, Ldev/duo/hookprobe/U$d;->a:Landroid/widget/FrameLayout;

    iget-object v0, p0, Ldev/duo/hookprobe/U$d;->m:Landroid/view/View;

    invoke-virtual {p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method a(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Ldev/duo/hookprobe/U$d;->l:Ldev/duo/hookprobe/U$f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ldev/duo/hookprobe/U$f;->b(Z)V

    :cond_0
    return-void
.end method

.method b()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Ldev/duo/hookprobe/U$d;->d:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    return v0

    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/U$d;->j:Landroid/app/Activity;

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method c()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/hookprobe/U$d;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/hookprobe/U$d;->k:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/high16 v0, 0x436a0000    # 234.0f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method d()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Ldev/duo/hookprobe/U$d;->e:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42e40000    # 114.0f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Ldev/duo/hookprobe/U$d;->g:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/U$d;->j:Landroid/app/Activity;

    iget-boolean v1, p0, Ldev/duo/hookprobe/U$d;->f:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x41000000    # 8.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x41900000    # 18.0f

    :goto_0
    invoke-static {v0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method e()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Ldev/duo/hookprobe/U$d;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ldev/duo/hookprobe/U$d;->c:I

    int-to-float v0, v0

    iget-object v1, p0, Ldev/duo/hookprobe/U$d;->j:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43680000    # 232.0f

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Ldev/duo/hookprobe/U$d;->c:I

    return v0
.end method
