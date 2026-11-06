.class final Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtm/m/os4/systemuihook/newnotificationcenter/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;

.field private final d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

.field private final e:Landroid/view/View;

.field private final f:Landroid/graphics/drawable/GradientDrawable;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Rect;

.field private final i:Ljava/lang/Runnable;

.field private j:Landroid/animation/ValueAnimator;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I


# direct methods
.method public static synthetic $r8$lambda$ECgZoDijHEbIBLUWihXtQzHvOac(Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OBFthP6xBdVERnPiIPgrmmitNXA(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VE6jguxzpL7vumJ5u1BQB-AtTqs(Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;)V
    .locals 0

    invoke-direct {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->e()V

    return-void
.end method

.method public static synthetic $r8$lambda$rXGJW7cq4xA7oT-9tmLpcdQHYZw(Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vS1mhxqrR52PsHtZEezGCSuldtI(Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;IILandroid/animation/TimeInterpolator;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(IILandroid/animation/TimeInterpolator;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yImHnt9LeDISkWv-wt4m9sJLHVs(Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->f:Landroid/graphics/drawable/GradientDrawable;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->g:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->h:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda2;-><init>(Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;)V

    iput-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->i:Ljava/lang/Runnable;

    .line 14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 16
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    .line 17
    const-string v2, "Notification Center"

    const-string v3, "\u901a\u77e5\u30bb\u30f3\u30bf\u30fc"

    const-string v4, "\u901a\u77e5\u4e2d\u5fc3"

    invoke-direct {p0, p1, v4, v2, v3}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 20
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 21
    const v3, 0x800013

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x41c40000    # 24.5f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/16 v6, 0xc

    invoke-direct {p0, v6}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v6

    invoke-virtual {v1, v5, v0, v6, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 23
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 24
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    const v7, 0x800003

    invoke-direct {v5, v6, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->b:Landroid/widget/ImageView;

    .line 26
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 27
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x18

    invoke-direct {p0, v6}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v7

    invoke-direct {p0, v6}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v8

    invoke-direct {v5, v7, v8, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 30
    invoke-direct {p0, v6}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 31
    invoke-virtual {p0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->e:Landroid/view/View;

    .line 34
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 35
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 36
    new-instance v3, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda3;-><init>(Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 42
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x54

    invoke-direct {p0, v5}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->b(I)I

    move-result v6

    const/16 v7, 0x28

    invoke-direct {p0, v7}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->b(I)I

    move-result v8

    const v9, 0x800015

    invoke-direct {v3, v6, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 44
    const/16 v6, 0x17

    invoke-direct {p0, v6}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 45
    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    new-instance v1, Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;

    invoke-direct {v1, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->c:Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;

    .line 48
    new-instance v3, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const-string v3, "\u6e05\u9664"

    const-string v8, "Clear"

    const-string v10, "\u6d88\u53bb"

    invoke-direct {p0, p1, v3, v8, v10}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v5}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v5

    invoke-direct {p0, v7}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->b(I)I

    move-result v7

    invoke-direct {v11, v5, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 52
    invoke-direct {p0, v6}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v5

    iput v5, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 53
    invoke-virtual {p0, v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance v1, Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    invoke-direct {v1, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    .line 55
    new-instance v5, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda5;-><init>(Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-direct {p0, p1, v3, v8, v10}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v5, v1, Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;->b:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3, v8, v10}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v4, v4, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance p1, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda6;-><init>(Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    invoke-virtual {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->b(Z)V

    return-void
.end method

.method private a(F)F
    .locals 1

    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private a(I)I
    .locals 1

    int-to-float p1, p1

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private a(II)I
    .locals 2

    int-to-float p2, p2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    .line 181
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string p1, "zh"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .line 185
    :goto_0
    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p3

    :cond_1
    const-string p3, "ja"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p4

    :cond_2
    return-object p2
.end method

.method private a()V
    .locals 8

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44570000    # 860.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    return-void

    :cond_0
    const/high16 v2, 0x42900000    # 72.0f

    mul-float/2addr v2, v0

    .line 65
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->m:I

    const/high16 v2, 0x42d40000    # 106.0f

    mul-float/2addr v2, v0

    .line 66
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->n:I

    const/high16 v2, 0x41b80000    # 23.0f

    mul-float/2addr v2, v0

    .line 67
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const v3, 0x404ccccd    # 3.2f

    mul-float/2addr v3, v0

    .line 69
    iget-object v4, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    iget-object v4, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;->a:Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v3, v5

    invoke-virtual {v4, v2, v3, v6}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;->a(IFF)V

    .line 70
    iget-object v3, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    iget-object v3, v3, Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;->a:Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 71
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 72
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 73
    iget v4, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->m:I

    sub-int/2addr v4, v2

    const/4 v2, 0x2

    div-int/2addr v4, v2

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 74
    iget-object v4, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    iget-object v4, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;->a:Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v3, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    iget-object v3, v3, Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;->b:Landroid/widget/TextView;

    const/high16 v4, 0x41cc0000    # 25.5f

    mul-float/2addr v0, v4

    .line 76
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 77
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 78
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v7, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->h:Landroid/graphics/Rect;

    invoke-virtual {v3, v6, v4, v0, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 79
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 80
    iget v3, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->m:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 81
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 82
    iget-object v3, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    iget v3, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->m:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 85
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 86
    iget-object v3, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->e:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 88
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->j:Landroid/animation/ValueAnimator;

    .line 89
    iget-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->k:Z

    if-eqz v0, :cond_2

    iget v3, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->n:I

    goto :goto_0

    :cond_2
    iget v3, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->m:I

    :goto_0
    if-eqz v0, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_3
    invoke-direct {p0, v3, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(IF)V

    .line 90
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->f:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->m:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 91
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->z()I

    move-result v0

    const/4 v1, 0x1

    const/16 v3, 0xff

    if-ne v0, v2, :cond_4

    .line 92
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->A()I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 93
    :goto_1
    iget-object v2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 94
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->z()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 95
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v1

    const/16 v2, 0x5a

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_2

    .line 97
    :cond_5
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 99
    :goto_2
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->e:Landroid/view/View;

    iget-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(IF)V
    .locals 3

    .line 46
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 47
    iget-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 48
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v2, p1, :cond_0

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v2, p1, :cond_1

    .line 49
    :cond_0
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 50
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 51
    iget-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const p1, 0x3ecccccd    # 0.4f

    div-float p1, p2, p1

    .line 54
    invoke-direct {p0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const p1, 0x3e4ccccd    # 0.2f

    sub-float/2addr p2, p1

    const p1, 0x3ee66666    # 0.45f

    div-float/2addr p2, p1

    .line 55
    invoke-direct {p0, p2}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(F)F

    move-result p1

    .line 56
    iget-object p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    iget-object p2, p2, Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;->a:Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 57
    iget-object p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    iget-object p2, p2, Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;->a:Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 58
    iget-object p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    iget-object p2, p2, Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;->a:Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    .line 59
    iget-object p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    iget-object p2, p2, Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 60
    iget-object p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    iget-object p2, p2, Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;->b:Landroid/widget/TextView;

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v0

    const v0, 0x3f333333    # 0.7f

    add-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 61
    iget-object p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    iget-object p2, p2, Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setScaleY(F)V

    return-void
.end method

.method private synthetic a(IILandroid/animation/TimeInterpolator;ZLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 43
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p5

    int-to-float v0, p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    .line 44
    invoke-interface {p3, p5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 45
    iget p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->m:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p5, p2, p5

    :goto_0
    invoke-direct {p0, p1, p5}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(IF)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    .line 101
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->z()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 102
    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "clearMiBackgroundBlendColor"

    invoke-direct {p0, p1, v3, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "setPassWindowBlurEnabled"

    invoke-direct {p0, p1, v4, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "setMiViewBlurMode"

    invoke-direct {p0, p1, v4, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "setMiBackgroundBlurMode"

    invoke-direct {p0, p1, v4, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->z()I

    move-result v1

    if-nez v1, :cond_1

    .line 107
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->k()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->m()I

    move-result v1

    .line 108
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "setMiBackgroundBlurRadius"

    invoke-direct {p0, p1, v4, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_6

    .line 111
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->n()I

    move-result v0

    .line 112
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->z()I

    move-result v1

    if-nez v1, :cond_2

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    mul-int/lit8 v4, v0, 0x2

    const/16 v5, 0x1f4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "setMiGlassBlurRadius"

    invoke-direct {p0, p1, v4, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 114
    :cond_2
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    const/16 v1, 0x15

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "setMiBloomStroke"

    invoke-direct {p0, p1, v4, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :cond_3
    :goto_2
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->z()I

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->o()I

    move-result v1

    goto :goto_3

    :cond_4
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->p()I

    move-result v1

    .line 121
    :goto_3
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->z()I

    move-result v4

    if-nez v4, :cond_5

    .line 122
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->q()I

    move-result v4

    goto :goto_4

    :cond_5
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->r()I

    move-result v4

    .line 123
    :goto_4
    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v2}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-direct {p0, v1, v4}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "addMiBackgroundBlendColor"

    invoke-direct {p0, p1, v2, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->z()I

    move-result v1

    if-nez v1, :cond_6

    .line 126
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->s()F

    move-result v1

    .line 127
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->t()I

    move-result v2

    .line 128
    invoke-direct {p0, p1, v0, v1, v2}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/view/View;IFI)V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x43340000    # 180.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3d4ccccd    # 0.05f
        0x41000000    # 8.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3f733333    # 0.95f
        -0x41000000    # -0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method private a(Landroid/view/View;IFI)V
    .locals 15

    move-object/from16 v1, p1

    .line 129
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 130
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 131
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    const/4 v0, 0x3

    if-ge v4, v0, :cond_1

    .line 133
    aget-object v6, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v6, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    :try_start_1
    const-string v7, "com.miui.systemui.util.MiGlassCompat"

    invoke-static {v7, v3, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    :cond_1
    move-object v2, v5

    .line 136
    :goto_2
    if-eqz v2, :cond_2

    .line 141
    const/16 v4, 0x64

    move/from16 v6, p2

    :try_start_2
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 142
    const/16 v7, 0x2a

    new-array v7, v7, [F

    const v8, 0x3f2b851f    # 0.67f

    aput v8, v7, v3

    const v3, 0x3e23d70a    # 0.16f

    const/4 v8, 0x1

    aput v3, v7, v8

    const v3, 0x3db851ec    # 0.09f

    const/4 v9, 0x2

    aput v3, v7, v9

    const/4 v3, 0x0

    aput v3, v7, v0

    .line 143
    const v0, 0x3ecccccd    # 0.4f

    move/from16 v10, p3

    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v10, 0x4

    aput v0, v7, v10

    const/4 v0, 0x5

    const v10, 0x3fb33333    # 1.4f

    aput v10, v7, v0

    const/4 v0, 0x6

    const v11, -0x435c28f6    # -0.02f

    aput v11, v7, v0

    const/4 v0, 0x7

    const v11, 0x3e99999a    # 0.3f

    aput v11, v7, v0

    const/16 v0, 0x8

    const v12, 0x3f19999a    # 0.6f

    aput v12, v7, v0

    const/16 v0, 0x9

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v7, v0

    const/16 v0, 0xa

    const v14, 0x3cf5c28f    # 0.03f

    aput v14, v7, v0

    const/16 v0, 0xb

    aput v13, v7, v0

    const/16 v0, 0xc

    aput v13, v7, v0

    const/16 v0, 0xd

    aput v13, v7, v0

    const/16 v0, 0xe

    const v14, 0x3dcccccd    # 0.1f

    aput v14, v7, v0

    const/16 v0, 0xf

    const v14, 0x3e4ccccd    # 0.2f

    aput v14, v7, v0

    const/16 v0, 0x10

    aput v11, v7, v0

    const/16 v0, 0x11

    aput v13, v7, v0

    const/16 v0, 0x12

    aput v13, v7, v0

    const/16 v0, 0x13

    const/high16 v11, 0x42900000    # 72.0f

    aput v11, v7, v0

    const/16 v0, 0x14

    const v11, 0x40733333    # 3.8f

    aput v11, v7, v0

    const/16 v0, 0x15

    const/high16 v11, 0x42a00000    # 80.0f

    aput v11, v7, v0

    const/16 v0, 0x16

    const/high16 v11, 0x44480000    # 800.0f

    aput v11, v7, v0

    const/16 v0, 0x17

    const v11, 0x3f99999a    # 1.2f

    aput v11, v7, v0

    const/16 v0, 0x18

    aput v13, v7, v0

    const/16 v0, 0x19

    const v11, -0x41333333    # -0.4f

    aput v11, v7, v0

    const/16 v0, 0x1a

    aput v12, v7, v0

    const/16 v0, 0x1b

    const v11, -0x40b33333    # -0.8f

    aput v11, v7, v0

    const/16 v0, 0x1c

    aput v10, v7, v0

    const/16 v0, 0x1d

    const v10, 0x3f333333    # 0.7f

    aput v10, v7, v0

    const/16 v0, 0x1e

    const v10, 0x3f4ccccd    # 0.8f

    aput v10, v7, v0

    const/16 v0, 0x1f

    const v10, 0x3f933333    # 1.15f

    aput v10, v7, v0

    const/16 v0, 0x20

    const/high16 v10, 0x40800000    # 4.0f

    aput v10, v7, v0

    const/16 v11, 0x21

    const/high16 v12, 0x40000000    # 2.0f

    aput v12, v7, v11

    const/16 v11, 0x22

    aput v3, v7, v11

    const/16 v11, 0x23

    aput v3, v7, v11

    const/16 v11, 0x24

    aput v3, v7, v11

    const/16 v11, 0x25

    aput v3, v7, v11

    const/16 v11, 0x26

    aput v3, v7, v11

    const/16 v11, 0x27

    aput v3, v7, v11

    const/16 v11, 0x28

    aput v3, v7, v11

    const/16 v11, 0x29

    aput v3, v7, v11

    .line 148
    move/from16 v3, p4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, -0x64

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v10

    aput v3, v7, v0

    .line 149
    const-string v0, "setMiGlassBlurRadius"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    filled-new-array {v4, v3, v3}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 150
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    mul-int/2addr v6, v9

    const/16 v9, 0x1f4

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v1, v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "setMiViewMaterialTypeCompat"

    const-class v4, Landroid/view/View;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 152
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 154
    :try_start_3
    const-string v0, "setMiGlassSdfMaxSizeCompat"

    const-class v3, Landroid/view/View;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 155
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 157
    :goto_3
    :try_start_4
    const-string v0, "setMiGlassCompat"

    const-class v3, Landroid/view/View;

    const-class v4, [F

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {v1, v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 159
    :cond_2
    new-instance v0, Ljava/lang/ClassNotFoundException;

    const-string v1, "MiGlassCompat"

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 136
    :catchall_2
    move-exception v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IOSShade] clear button MiGlass unavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private synthetic a(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_1

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/view/View;)V

    return-void
.end method

.method private varargs a(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 180
    :try_start_0
    invoke-static {p1, p2, p3}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    return-void
.end method

.method private a(ZZ)V
    .locals 7

    .line 19
    iput-boolean p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->k:Z

    .line 20
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 21
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->j:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 22
    iget v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->n:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->m:I

    :goto_0
    move v4, v0

    if-eqz p2, :cond_4

    .line 23
    iget p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->m:I

    if-nez p2, :cond_2

    move-object v2, p0

    move v6, p1

    goto :goto_2

    .line 27
    :cond_2
    iget-object p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->e:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eqz p1, :cond_3

    .line 31
    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    const v0, 0x3fb33333    # 1.4f

    invoke-direct {p2, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    move-object v5, p2

    goto :goto_1

    .line 32
    :cond_3
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const v0, 0x3fcccccd    # 1.6f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object v5, p2

    :goto_1
    nop

    .line 33
    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 34
    const-wide/16 v0, 0x1a4

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 35
    new-instance v1, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda1;

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda1;-><init>(Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;IILandroid/animation/TimeInterpolator;Z)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 40
    iput-object p2, v2, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->j:Landroid/animation/ValueAnimator;

    .line 41
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 22
    :cond_4
    move-object v2, p0

    move v6, p1

    .line 41
    :goto_2
    if-eqz v6, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 42
    :goto_3
    invoke-direct {p0, v4, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(IF)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Landroid/view/View;FF)Z
    .locals 1

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p3, p2

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 2
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->v()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->c:Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;

    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v0, v3, v4}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-nez p2, :cond_3

    return v2

    :cond_3
    if-ne p2, v2, :cond_5

    if-eqz p1, :cond_4

    .line 7
    invoke-direct {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->g()V

    goto :goto_2

    .line 8
    :cond_4
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->x()V

    :cond_5
    :goto_2
    return v2
.end method

.method private b(F)F
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    return p1
.end method

.method private b(I)I
    .locals 1

    int-to-float p1, p1

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const v0, 0x3f6b851f    # 0.92f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private b()V
    .locals 11

    .line 6
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Notification Center"

    const-string v3, "\u901a\u77e5\u30bb\u30f3\u30bf\u30fc"

    const-string v4, "\u901a\u77e5\u4e2d\u5fc3"

    invoke-direct {p0, v1, v4, v2, v3}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 10
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 11
    iput-boolean v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->l:Z

    .line 12
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x41c40000    # 24.5f

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/16 v6, 0xc

    invoke-direct {p0, v6}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v7

    invoke-virtual {v0, v4, v1, v7, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 13
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 14
    const/16 v4, 0x18

    invoke-direct {p0, v4}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v7

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 15
    invoke-direct {p0, v4}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v7

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 16
    invoke-direct {p0, v4}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v7

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 17
    iget-object v7, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->b:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->d()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 19
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 22
    :cond_0
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->d()I

    move-result v0

    const/4 v7, 0x5

    const/4 v8, 0x6

    if-eq v0, v7, :cond_2

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->d()I

    move-result v0

    if-ne v0, v8, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v5

    .line 23
    :goto_1
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->d()I

    move-result v7

    const/4 v9, 0x2

    const/4 v10, 0x4

    if-eq v7, v9, :cond_3

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->d()I

    move-result v7

    if-eq v7, v10, :cond_3

    if-eqz v0, :cond_7

    .line 25
    :cond_3
    :try_start_0
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->d()I

    move-result v7

    if-eq v7, v10, :cond_5

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->d()I

    move-result v7

    if-ne v7, v8, :cond_4

    goto :goto_2

    .line 27
    :cond_4
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->e()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 28
    :cond_5
    :goto_2
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->f()Ljava/lang/String;

    move-result-object v7

    .line 27
    :goto_3
    nop

    .line 29
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->e()Ljava/lang/String;

    move-result-object v7

    .line 30
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v7, v9}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->a(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 32
    iget-object v9, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->b:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 33
    iget-object v7, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->b:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v0, :cond_7

    .line 35
    iget-object v7, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 27
    :catch_0
    move-exception v2

    .line 40
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[IOSShade] header icon unreadable: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    :cond_7
    const/4 v2, 0x3

    if-eqz v0, :cond_9

    .line 44
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->d()I

    move-result v7

    if-ne v7, v8, :cond_8

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 45
    iget-object v7, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_8
    iget-object v7, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->h()I

    move-result v8

    add-int/lit8 v8, v8, 0x64

    int-to-float v8, v8

    mul-float/2addr v8, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v8, v3

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 48
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->i()I

    move-result v7

    add-int/lit8 v7, v7, 0x64

    int-to-float v7, v7

    const/high16 v8, 0x41c00000    # 24.0f

    mul-float/2addr v7, v8

    div-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {p0, v3}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v3

    .line 49
    iget-object v7, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->b:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 50
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 51
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 52
    invoke-direct {p0, v4}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v8

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 53
    iget-object v8, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->b:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v7, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->j()I

    move-result v3

    invoke-direct {p0, v3}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v3

    add-int/2addr v4, v3

    invoke-direct {p0, v6}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v3

    invoke-virtual {v7, v4, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_4

    .line 55
    :cond_9
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->d()I

    move-result v3

    if-ne v3, v2, :cond_a

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 56
    iget-object v3, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_a
    :goto_4
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->v()I

    move-result v3

    if-ne v3, v2, :cond_b

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_b

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x44570000    # 860.0f

    div-float/2addr v0, v2

    .line 61
    iget-object v2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 62
    iget-object v2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    const/high16 v3, 0x425e0000    # 55.5f

    mul-float/2addr v3, v0

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 63
    iget-object v2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 64
    iget-object v2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 65
    iget-object v3, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v7, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->g:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v1, v2, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 66
    iget-object v2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    const/high16 v3, 0x41b80000    # 23.0f

    mul-float/2addr v0, v3

    iget-object v3, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v6}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 67
    iput-boolean v5, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->l:Z

    goto :goto_5

    .line 69
    :cond_b
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    :goto_5
    return-void
.end method

.method private static synthetic b(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->x()V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->g()V

    return-void
.end method

.method private d()F
    .locals 2

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->v()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->v()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x3fd9999a    # 1.7f

    return v0

    :cond_1
    const v0, 0x40066666    # 2.1f

    return v0
.end method

.method private synthetic e()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Z)V

    return-void
.end method

.method private f()I
    .locals 3

    .line 1
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v0

    .line 3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v0

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v1

    int-to-float v1, v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->k:Z

    if-nez v0, :cond_1

    .line 4
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(ZZ)V

    .line 5
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->i:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    nop

    .line 7
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(ZZ)V

    .line 8
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->x()V

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 1

    .line 17
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 18
    iget-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(ZZ)V

    :cond_0
    return-void
.end method

.method a(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 12
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->v()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->c:Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const v2, 0x3f7fbe77    # 0.999f

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->w()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->w()[I

    move-result-object v3

    aget v3, v3, v2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->w()[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sub-float/2addr p1, v3

    const/4 v3, 0x0

    cmpl-float v5, v1, v3

    if-ltz v5, :cond_2

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_2

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    return v4

    :cond_2
    :goto_1
    return v2
.end method

.method b(Z)V
    .locals 4

    .line 2
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->c:Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->c:Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ee66666    # 0.45f

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 4
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method c()V
    .locals 9

    .line 2
    invoke-direct {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->b()V

    .line 3
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->v()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 4
    :goto_0
    iget-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->c:Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;

    const/16 v4, 0x8

    if-eqz v0, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    if-eqz v0, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_3

    .line 7
    invoke-direct {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a()V

    return-void

    :cond_3
    nop

    .line 10
    invoke-virtual {p0, v3}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Z)V

    .line 11
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->c:Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->v()I

    move-result v1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Clear"

    const-string v6, "\u6d88\u53bb"

    const-string v7, "\u6e05\u9664"

    invoke-direct {p0, v4, v7, v5, v6}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 13
    const v5, 0x4146b852    # 12.42f

    invoke-virtual {v0, v1, v4, v5}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;->a(ILjava/lang/String;F)V

    .line 15
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->c:Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    invoke-direct {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->f()I

    move-result v1

    .line 20
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->v()I

    move-result v4

    const v5, 0x3f970a3d    # 1.18f

    if-ne v4, v2, :cond_4

    int-to-float v1, v1

    mul-float/2addr v1, v5

    .line 22
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v4, v1

    goto :goto_2

    :cond_4
    int-to-float v4, v1

    .line 25
    invoke-direct {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d()F

    move-result v6

    mul-float/2addr v4, v6

    const v6, 0x3f9c28f6    # 1.22f

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v8, v4

    move v4, v1

    move v1, v8

    .line 27
    :goto_2
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 28
    const/16 v6, 0x28

    invoke-direct {p0, v6}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->b(I)I

    move-result v6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 29
    const/16 v6, 0x17

    invoke-direct {p0, v6}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 30
    iget-object v6, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->c:Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object v6, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->e:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 33
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 34
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 35
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->v()I

    move-result v0

    if-ne v0, v2, :cond_5

    goto :goto_3

    :cond_5
    const/high16 v5, 0x3f800000    # 1.0f

    .line 37
    :goto_3
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->y()F

    move-result v1

    const v4, 0x3f6b851f    # 0.92f

    mul-float/2addr v1, v4

    mul-float/2addr v1, v5

    invoke-direct {p0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->b(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 40
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->z()I

    move-result v0

    const/4 v1, 0x2

    const/16 v4, 0xff

    if-ne v0, v1, :cond_6

    .line 41
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->A()I

    move-result v0

    goto :goto_4

    :cond_6
    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 42
    :goto_4
    iget-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 43
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->z()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 44
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0, v2}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(I)I

    move-result v1

    const/16 v2, 0x5a

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_5

    .line 46
    :cond_7
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 48
    :goto_5
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->e:Landroid/view/View;

    iget-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->c:Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 50
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    move-object p1, p0

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->v()I

    move-result p2

    const/4 p3, 0x3

    const/4 p4, 0x0

    if-ne p2, p3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean p2, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->l:Z

    if-nez p2, :cond_1

    iget-object p2, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x44570000    # 860.0f

    div-float/2addr p2, p3

    .line 9
    iget-boolean p3, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->l:Z

    const/high16 p4, 0x40000000    # 2.0f

    if-eqz p3, :cond_2

    .line 10
    iget-object p3, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object p5, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getBaseline()I

    move-result p5

    add-int/2addr p3, p5

    int-to-float p3, p3

    iget-object p5, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->g:Landroid/graphics/Rect;

    iget v0, p5, Landroid/graphics/Rect;->top:I

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p5

    int-to-float p5, v0

    div-float/2addr p5, p4

    add-float/2addr p3, p5

    .line 11
    iget-object p5, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p4

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p2, v1

    add-float/2addr v0, p2

    sub-float/2addr v0, p3

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 13
    :cond_2
    iget-object p2, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    iget-object p2, p2, Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;->b:Landroid/widget/TextView;

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2}, Landroid/widget/TextView;->getBaseline()I

    move-result p5

    add-int/2addr p3, p5

    int-to-float p3, p3

    iget-object p5, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->h:Landroid/graphics/Rect;

    iget v0, p5, Landroid/graphics/Rect;->top:I

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p5

    int-to-float p5, v0

    div-float/2addr p5, p4

    add-float/2addr p3, p5

    .line 15
    iget-object p1, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->d:Lbtm/m/os4/systemuihook/newnotificationcenter/e$f;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p4

    sub-float/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void

    .line 16
    :cond_3
    :goto_0
    iget-object p1, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->v()I

    move-result p2

    const/4 p4, 0x3

    if-ne p2, p4, :cond_0

    if-eq p1, p3, :cond_0

    new-instance p1, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$h$$ExternalSyntheticLambda0;-><init>(Lbtm/m/os4/systemuihook/newnotificationcenter/e$h;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
