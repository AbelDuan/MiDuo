.class final Ldev/duo/hookprobe/T$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field final a:Landroid/widget/LinearLayout;

.field final b:[Landroid/widget/LinearLayout;

.field final c:[Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$ivmz8vkqnNFz5pR41Shk4W-AEys(Ljava/util/function/IntConsumer;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/T$e;->a(Ljava/util/function/IntConsumer;ILandroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;[ILjava/util/function/IntConsumer;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ldev/duo/hookprobe/T;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/T$e;->a:Landroid/widget/LinearLayout;

    .line 3
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p1, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    .line 4
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 5
    sget v1, Ldev/duo/hookprobe/T;->f:I

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {p1, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ldev/duo/hookprobe/T;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    array-length v0, p2

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Ldev/duo/hookprobe/T$e;->b:[Landroid/widget/LinearLayout;

    .line 7
    array-length v0, p2

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Ldev/duo/hookprobe/T$e;->c:[Landroid/widget/TextView;

    const/4 v0, 0x0

    move v1, v0

    .line 8
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 9
    invoke-static {p1}, Ldev/duo/hookprobe/T;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 10
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    if-eqz p3, :cond_0

    .line 12
    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {p1, v3, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 13
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {p1, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 14
    aget v4, p3, v1

    invoke-static {p1, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p1, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    :cond_0
    sget v3, Ldev/duo/hookprobe/T;->b:I

    const/high16 v4, 0x41600000    # 14.0f

    const/16 v5, 0x258

    invoke-static {p1, v4, v3, v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v3

    .line 17
    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 19
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    new-instance v4, Ldev/duo/hookprobe/T$e$$ExternalSyntheticLambda0;

    invoke-direct {v4, p4, v1}, Ldev/duo/hookprobe/T$e$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    aget-object v4, p2, v1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v4, p0, Ldev/duo/hookprobe/T$e;->a:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42100000    # 36.0f

    invoke-static {p1, v6}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object v4, p0, Ldev/duo/hookprobe/T$e;->b:[Landroid/widget/LinearLayout;

    aput-object v2, v4, v1

    .line 25
    iget-object v2, p0, Ldev/duo/hookprobe/T$e;->c:[Landroid/widget/TextView;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic a(Ljava/util/function/IntConsumer;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 7

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/T$e;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    iget-object v3, p0, Ldev/duo/hookprobe/T$e;->b:[Landroid/widget/LinearLayout;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 5
    :goto_1
    aget-object v3, v3, v2

    if-eqz v4, :cond_1

    sget v5, Ldev/duo/hookprobe/T;->p:I

    const/high16 v6, 0x41880000    # 17.0f

    invoke-static {v0, v6}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Ldev/duo/hookprobe/T;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v3, p0, Ldev/duo/hookprobe/T$e;->b:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    if-eqz v4, :cond_2

    sget-boolean v5, Ldev/duo/hookprobe/T;->a:Z

    if-nez v5, :cond_2

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-static {v0, v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 7
    iget-object v3, p0, Ldev/duo/hookprobe/T$e;->b:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method a(Z)V
    .locals 4

    .line 8
    iget-object v0, p0, Ldev/duo/hookprobe/T$e;->b:[Landroid/widget/LinearLayout;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/T$e;->a:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method
