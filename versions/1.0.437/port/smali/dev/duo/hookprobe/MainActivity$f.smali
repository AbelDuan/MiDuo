.class final Ldev/duo/hookprobe/MainActivity$f;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/hookprobe/MainActivity;


# direct methods
.method private constructor <init>(Ldev/duo/hookprobe/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldev/duo/hookprobe/MainActivity;Ldev/duo/hookprobe/MainActivity$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/MainActivity$f;-><init>(Ldev/duo/hookprobe/MainActivity;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    if-nez p2, :cond_0

    .line 1
    const-string p1, "\u672a\u5f00\u542f Duo"

    return-object p1

    .line 2
    :cond_0
    iget-object p2, p0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {p2}, Ldev/duo/hookprobe/MainActivity;->l(Ldev/duo/hookprobe/MainActivity;)Ldev/duo/hookprobe/o;

    move-result-object p2

    const-string v0, "inner"

    invoke-virtual {p2, p1, v0}, Ldev/duo/hookprobe/o;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const-string v1, "outer"

    if-nez p2, :cond_1

    iget-object p2, p0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {p2}, Ldev/duo/hookprobe/MainActivity;->l(Ldev/duo/hookprobe/MainActivity;)Ldev/duo/hookprobe/o;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Ldev/duo/hookprobe/o;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "\u9ad8\u5ea6\u8ddf\u968f\u5168\u5c40"

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {p2}, Ldev/duo/hookprobe/MainActivity;->l(Ldev/duo/hookprobe/MainActivity;)Ldev/duo/hookprobe/o;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Ldev/duo/hookprobe/o;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget-object v2, p0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v2}, Ldev/duo/hookprobe/MainActivity;->l(Ldev/duo/hookprobe/MainActivity;)Ldev/duo/hookprobe/o;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ldev/duo/hookprobe/o;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne p2, v2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9ad8\u5ea6 "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v1}, Ldev/duo/hookprobe/MainActivity;->l(Ldev/duo/hookprobe/MainActivity;)Ldev/duo/hookprobe/o;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ldev/duo/hookprobe/o;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "px"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5185\u5c4f "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v2, p0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v2}, Ldev/duo/hookprobe/MainActivity;->l(Ldev/duo/hookprobe/MainActivity;)Ldev/duo/hookprobe/o;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Ldev/duo/hookprobe/o;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " / \u5916\u5c4f "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/MainActivity;->l(Ldev/duo/hookprobe/MainActivity;)Ldev/duo/hookprobe/o;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Ldev/duo/hookprobe/o;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    :goto_0
    iget-object v0, p0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/MainActivity;->l(Ldev/duo/hookprobe/MainActivity;)Ldev/duo/hookprobe/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldev/duo/hookprobe/o;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 6
    const-string v0, "\u4fa7\u680f\u8ddf\u968f\u5168\u5c40"

    goto :goto_1

    :cond_3
    const-string v1, "black"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u4fa7\u680f\u9ed1\u8272"

    goto :goto_1

    :cond_4
    const-string v0, "\u4fa7\u680f\u767d\u8272"

    .line 7
    :goto_1
    sget-object v1, Ldev/duo/hookprobe/P;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Ldev/duo/hookprobe/P;->p:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, 0x1

    .line 8
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " \u00b7 "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz v1, :cond_8

    iget-object v0, p0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/MainActivity;->i(Ldev/duo/hookprobe/MainActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/MainActivity;->d(Ldev/duo/hookprobe/MainActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    const-string p1, " \u00b7 \u7b49\u5f85\u6388\u6743"

    goto :goto_5

    :cond_8
    :goto_4
    const-string p1, ""

    :goto_5
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/MainActivity;->f(Ldev/duo/hookprobe/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/MainActivity;->f(Ldev/duo/hookprobe/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-nez p2, :cond_0

    .line 1
    new-instance v2, Ldev/duo/hookprobe/MainActivity$j;

    iget-object v3, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-direct {v2, v3}, Ldev/duo/hookprobe/MainActivity$j;-><init>(Ldev/duo/hookprobe/MainActivity;)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/duo/hookprobe/MainActivity$j;

    .line 2
    :goto_0
    iget-object v3, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v3}, Ldev/duo/hookprobe/MainActivity;->f(Ldev/duo/hookprobe/MainActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/duo/hookprobe/MainActivity$g;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    .line 3
    :goto_1
    iget-object v7, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v7}, Ldev/duo/hookprobe/MainActivity;->f(Ldev/duo/hookprobe/MainActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-ne v1, v7, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v5

    .line 4
    :goto_2
    iget-object v7, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static {v7, v8}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v7

    int-to-float v7, v7

    .line 5
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 6
    iget-object v9, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v9}, Ldev/duo/hookprobe/MainActivity;->g(Ldev/duo/hookprobe/MainActivity;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v3, Ldev/duo/hookprobe/MainActivity$g;->a:Ljava/lang/String;

    iget-object v10, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v10}, Ldev/duo/hookprobe/MainActivity;->h(Ldev/duo/hookprobe/MainActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    sget v9, Ldev/duo/hookprobe/U;->w:I

    goto :goto_3

    :cond_3
    sget v9, Ldev/duo/hookprobe/U;->i:I

    :goto_3
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v9, 0x0

    if-eqz v6, :cond_4

    move v10, v7

    goto :goto_4

    :cond_4
    move v10, v9

    :goto_4
    if-eqz v6, :cond_5

    move v11, v7

    goto :goto_5

    :cond_5
    move v11, v9

    :goto_5
    if-eqz v6, :cond_6

    move v12, v7

    goto :goto_6

    :cond_6
    move v12, v9

    :goto_6
    if-eqz v6, :cond_7

    move v13, v7

    goto :goto_7

    :cond_7
    move v13, v9

    :goto_7
    if-eqz v1, :cond_8

    move v14, v7

    goto :goto_8

    :cond_8
    move v14, v9

    :goto_8
    if-eqz v1, :cond_9

    move v15, v7

    goto :goto_9

    :cond_9
    move v15, v9

    :goto_9
    if-eqz v1, :cond_a

    move/from16 v16, v7

    goto :goto_a

    :cond_a
    move/from16 v16, v9

    :goto_a
    if-eqz v1, :cond_b

    goto :goto_b

    :cond_b
    move v7, v9

    .line 8
    :goto_b
    const/16 v9, 0x8

    move/from16 p2, v4

    new-array v4, v9, [F

    aput v10, v4, v5

    aput v11, v4, p2

    const/4 v10, 0x2

    aput v12, v4, v10

    const/4 v10, 0x3

    aput v13, v4, v10

    const/4 v10, 0x4

    aput v14, v4, v10

    const/4 v11, 0x5

    aput v15, v4, v11

    const/4 v11, 0x6

    aput v16, v4, v11

    const/4 v11, 0x7

    aput v7, v4, v11

    .line 9
    invoke-virtual {v8, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 11
    iget-object v4, v2, Ldev/duo/hookprobe/MainActivity$j;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object v4, v2, Ldev/duo/hookprobe/MainActivity$j;->b:Landroid/widget/LinearLayout;

    iget-object v7, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v7, v8}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v7

    const/high16 v8, 0x40800000    # 4.0f

    if-eqz v6, :cond_c

    iget-object v6, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v6, v8}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v6

    goto :goto_c

    :cond_c
    move v6, v5

    :goto_c
    if-eqz v1, :cond_d

    iget-object v11, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v11, v8}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v8

    goto :goto_d

    :cond_d
    move v8, v5

    :goto_d
    invoke-virtual {v4, v7, v6, v5, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 13
    iget-object v4, v2, Ldev/duo/hookprobe/MainActivity$j;->g:Landroid/view/View;

    if-eqz v1, :cond_e

    goto :goto_e

    :cond_e
    move v10, v5

    :goto_e
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v1, v2, Ldev/duo/hookprobe/MainActivity$j;->c:Landroid/widget/ImageView;

    iget-object v4, v3, Ldev/duo/hookprobe/MainActivity$g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object v1, v2, Ldev/duo/hookprobe/MainActivity$j;->d:Landroid/widget/TextView;

    iget-object v4, v3, Ldev/duo/hookprobe/MainActivity$g;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v1, v2, Ldev/duo/hookprobe/MainActivity$j;->b:Landroid/widget/LinearLayout;

    iget-boolean v4, v3, Ldev/duo/hookprobe/MainActivity$g;->d:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_f

    const v4, 0x3ee66666    # 0.45f

    goto :goto_f

    :cond_f
    move v4, v6

    :goto_f
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 17
    iget-boolean v1, v3, Ldev/duo/hookprobe/MainActivity$g;->d:Z

    const v4, 0x47767680    # 63094.5f

    const/high16 v7, 0x41300000    # 11.0f

    if-eqz v1, :cond_10

    .line 18
    iget-object v1, v2, Ldev/duo/hookprobe/MainActivity$j;->e:Landroid/widget/TextView;

    iget-object v3, v3, Ldev/duo/hookprobe/MainActivity$g;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v1, v2, Ldev/duo/hookprobe/MainActivity$j;->f:Landroid/widget/TextView;

    const-string v3, "\u4e0d\u53ef\u7528"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v1, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v1, v7}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v5, v1}, Ldev/duo/hookprobe/U;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 21
    iget-object v0, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v0, v6}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v0

    move/from16 v3, p2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 22
    iget-object v0, v2, Ldev/duo/hookprobe/MainActivity$j;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 23
    iget-object v0, v2, Ldev/duo/hookprobe/MainActivity$j;->f:Landroid/widget/TextView;

    sget v1, Ldev/duo/hookprobe/U;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    iget-object v0, v2, Ldev/duo/hookprobe/MainActivity$j;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object v0, v2, Ldev/duo/hookprobe/MainActivity$j;->a:Landroid/widget/LinearLayout;

    return-object v0

    .line 27
    :cond_10
    iget-object v1, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v1}, Ldev/duo/hookprobe/MainActivity;->l(Ldev/duo/hookprobe/MainActivity;)Ldev/duo/hookprobe/o;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v1}, Ldev/duo/hookprobe/MainActivity;->l(Ldev/duo/hookprobe/MainActivity;)Ldev/duo/hookprobe/o;

    move-result-object v1

    iget-object v8, v3, Ldev/duo/hookprobe/MainActivity$g;->a:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ldev/duo/hookprobe/o;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_10

    :cond_11
    move v1, v5

    .line 28
    :goto_10
    iget-object v8, v2, Ldev/duo/hookprobe/MainActivity$j;->e:Landroid/widget/TextView;

    iget-object v10, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v10}, Ldev/duo/hookprobe/MainActivity;->l(Ldev/duo/hookprobe/MainActivity;)Ldev/duo/hookprobe/o;

    move-result-object v10

    if-nez v10, :cond_12

    iget-object v10, v3, Ldev/duo/hookprobe/MainActivity$g;->a:Ljava/lang/String;

    goto :goto_11

    :cond_12
    iget-object v10, v3, Ldev/duo/hookprobe/MainActivity$g;->a:Ljava/lang/String;

    invoke-direct {v0, v10, v1}, Ldev/duo/hookprobe/MainActivity$f;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    :goto_11
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v8, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v8}, Ldev/duo/hookprobe/MainActivity;->l(Ldev/duo/hookprobe/MainActivity;)Ldev/duo/hookprobe/o;

    move-result-object v8

    if-eqz v8, :cond_13

    iget-object v8, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    iget-object v3, v3, Ldev/duo/hookprobe/MainActivity$g;->a:Ljava/lang/String;

    invoke-static {v8, v3}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    goto :goto_12

    :cond_13
    move v3, v5

    :goto_12
    if-nez v1, :cond_14

    .line 30
    const-string v8, "\u5173"

    goto :goto_13

    :cond_14
    if-eqz v3, :cond_15

    const-string v8, "\u5355\u72ec"

    goto :goto_13

    :cond_15
    const-string v8, "\u5f00"

    .line 31
    :goto_13
    iget-object v10, v2, Ldev/duo/hookprobe/MainActivity$j;->f:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_16

    if-nez v3, :cond_16

    .line 32
    sget v8, Ldev/duo/hookprobe/U;->f:I

    goto :goto_14

    :cond_16
    move v8, v5

    :goto_14
    iget-object v10, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v10, v7}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v8, v7}, Ldev/duo/hookprobe/U;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    if-eqz v1, :cond_17

    if-eqz v3, :cond_19

    .line 33
    :cond_17
    iget-object v3, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v3, v6}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v3

    const/4 v6, 0x1

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v1, :cond_18

    sget v4, Ldev/duo/hookprobe/U;->b:I

    const v6, 0xffffff

    and-int/2addr v4, v6

    const/high16 v6, -0x74000000

    or-int/2addr v4, v6

    :cond_18
    invoke-virtual {v7, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 34
    :cond_19
    iget-object v3, v2, Ldev/duo/hookprobe/MainActivity$j;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    iget-object v3, v2, Ldev/duo/hookprobe/MainActivity$j;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_1a

    sget v1, Ldev/duo/hookprobe/U;->b:I

    goto :goto_15

    :cond_1a
    sget v1, Ldev/duo/hookprobe/U;->e:I

    :goto_15
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    iget-object v1, v2, Ldev/duo/hookprobe/MainActivity$j;->f:Landroid/widget/TextView;

    iget-object v0, v0, Ldev/duo/hookprobe/MainActivity$f;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/MainActivity;->l(Ldev/duo/hookprobe/MainActivity;)Ldev/duo/hookprobe/o;

    move-result-object v0

    if-nez v0, :cond_1b

    move v5, v9

    :cond_1b
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object v0, v2, Ldev/duo/hookprobe/MainActivity$j;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method
