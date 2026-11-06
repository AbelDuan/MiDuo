.class abstract Ldev/duo/hookprobe/f$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "f"
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/widget/SeekBar;

.field final c:Landroid/widget/TextView;

.field final d:Landroid/widget/TextView;

.field final e:Landroid/widget/ImageView;

.field final f:Landroid/widget/LinearLayout;

.field final g:Landroid/widget/LinearLayout;

.field final synthetic h:Ldev/duo/hookprobe/f;


# direct methods
.method public static synthetic $r8$lambda$TY0PM2s5w6gF-8IRxl11V_QH5bg(Ldev/duo/hookprobe/f$f;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/f$f;->a(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Ldev/duo/hookprobe/f;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;IIIZZ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    iput-object v1, v0, Ldev/duo/hookprobe/f$f;->h:Ldev/duo/hookprobe/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput v4, v0, Ldev/duo/hookprobe/f$f;->a:I

    .line 3
    invoke-static {v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    iput-object v5, v0, Ldev/duo/hookprobe/f$f;->g:Landroid/widget/LinearLayout;

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v7, 0x0

    if-nez p9, :cond_0

    .line 4
    invoke-static {v1, v6}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result v8

    invoke-static {v1, v6}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result v9

    invoke-virtual {v5, v7, v8, v7, v9}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    const/4 v8, -0x1

    if-eqz p8, :cond_1

    .line 6
    new-instance v9, Landroid/view/View;

    invoke-static {v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7
    sget v10, Ldev/duo/hookprobe/T;->h:I

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-static {v1, v11}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result v11

    const/4 v12, 0x1

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-direct {v10, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_1
    invoke-static {v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;)Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Ldev/duo/hookprobe/T;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 11
    invoke-static {v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;)Landroid/app/Activity;

    move-result-object v10

    invoke-static {v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;)Landroid/app/Activity;

    move-result-object v11

    sget v13, Ldev/duo/hookprobe/T;->d:I

    const/4 v15, 0x0

    const/high16 v16, 0x41a00000    # 20.0f

    const v14, 0x3fe66666    # 1.8f

    move/from16 v12, p5

    invoke-static/range {v11 .. v16}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;IIFZF)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v10, v11}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-static {v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;)Landroid/app/Activity;

    move-result-object v11

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v11, v12, v12}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-static {v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;)Landroid/app/Activity;

    move-result-object v10

    if-eqz p9, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v6, 0x41700000    # 15.0f

    :goto_0
    sget v11, Ldev/duo/hookprobe/T;->b:I

    const/16 v12, 0x258

    invoke-static {v10, v6, v11, v12}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v6

    .line 13
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x41200000    # 10.0f

    if-eqz p9, :cond_3

    move v13, v10

    goto :goto_1

    :cond_3
    move v13, v11

    .line 14
    :goto_1
    invoke-static {v1, v13}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result v13

    invoke-virtual {v6, v13, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 15
    invoke-static {}, Ldev/duo/hookprobe/T;->b()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v9, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    invoke-static {v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;)Landroid/app/Activity;

    move-result-object v6

    sget v13, Ldev/duo/hookprobe/T;->b:I

    const/high16 v14, 0x41b00000    # 22.0f

    const/16 v15, 0x320

    invoke-static {v6, v14, v13, v15}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, v0, Ldev/duo/hookprobe/f$f;->c:Landroid/widget/TextView;

    .line 17
    const-string v13, "tnum"

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    invoke-static {v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;)Landroid/app/Activity;

    move-result-object v6

    sget v13, Ldev/duo/hookprobe/T;->d:I

    const/high16 v14, 0x41500000    # 13.0f

    invoke-static {v6, v14, v13, v12}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v6

    .line 20
    move-object/from16 v13, p4

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v1, v13}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result v13

    const/high16 v14, 0x40c00000    # 6.0f

    invoke-static {v1, v14}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result v15

    invoke-virtual {v6, v13, v15, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 22
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 24
    new-instance v6, Landroid/widget/SeekBar;

    invoke-static {v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;)Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Ldev/duo/hookprobe/f$f;->b:Landroid/widget/SeekBar;

    .line 25
    invoke-static {v6}, Ldev/duo/hookprobe/T;->a(Landroid/widget/SeekBar;)V

    sub-int v4, p7, v4

    .line 26
    invoke-virtual {v6, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 27
    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 28
    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 29
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {v1, v4}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result v4

    invoke-direct {v3, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 30
    const/high16 v4, 0x41880000    # 17.0f

    invoke-static {v1, v4}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result v8

    neg-int v8, v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 31
    invoke-static {v1, v4}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result v4

    neg-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 32
    invoke-virtual {v5, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-static {v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Ldev/duo/hookprobe/T;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/f$f;->f:Landroid/widget/LinearLayout;

    .line 34
    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v1, v4}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result v4

    invoke-static {v1, v10}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result v6

    invoke-virtual {v3, v4, v7, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 35
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-static {v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;)Landroid/app/Activity;

    move-result-object v8

    sget-boolean v9, Ldev/duo/hookprobe/T;->a:Z

    if-eqz v9, :cond_4

    const v9, -0xd3d3d2

    goto :goto_2

    :cond_4
    sget v9, Ldev/duo/hookprobe/T;->b:I

    :goto_2
    const/4 v13, 0x0

    const/high16 v15, 0x41200000    # 10.0f

    const/16 v16, 0x6

    const/high16 v17, 0x40800000    # 4.0f

    move-object/from16 p3, v8

    move/from16 p5, v9

    move/from16 p7, v13

    move/from16 p8, v15

    move/from16 p4, v16

    move/from16 p6, v17

    invoke-static/range {p3 .. p8}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;IIFZF)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v6, v8}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v6

    iput-object v6, v0, Ldev/duo/hookprobe/f$f;->e:Landroid/widget/ImageView;

    .line 37
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v1, v11}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result v9

    invoke-static {v1, v11}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result v11

    const/16 v13, 0x11

    invoke-direct {v8, v9, v11, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-static {v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;)Landroid/app/Activity;

    move-result-object v6

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v6, v8, v8}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-static {v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;)Landroid/app/Activity;

    move-result-object v4

    sget v6, Ldev/duo/hookprobe/T;->c:I

    invoke-static {v4, v10, v6, v12}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, v0, Ldev/duo/hookprobe/f$f;->d:Landroid/widget/TextView;

    .line 40
    invoke-static {v1, v14}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result v6

    invoke-virtual {v4, v6, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 41
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    new-instance v4, Ldev/duo/hookprobe/f$f$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Ldev/duo/hookprobe/f$f$$ExternalSyntheticLambda0;-><init>(Ldev/duo/hookprobe/f$f;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v1, v4}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result v1

    const/4 v4, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldev/duo/hookprobe/f$f;->i()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Ldev/duo/hookprobe/f$f;->h()V

    .line 3
    iget-object v0, p0, Ldev/duo/hookprobe/f$f;->b:Landroid/widget/SeekBar;

    new-instance v1, Ldev/duo/hookprobe/f$f$a;

    invoke-direct {v1, p0}, Ldev/duo/hookprobe/f$f$a;-><init>(Ldev/duo/hookprobe/f$f;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method abstract a(I)V
.end method

.method abstract b()Z
.end method

.method abstract c()I
.end method

.method abstract d()Z
.end method

.method abstract e()Ljava/lang/String;
.end method

.method abstract f()V
.end method

.method g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldev/duo/hookprobe/f$f;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method h()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ldev/duo/hookprobe/f$f;->g()Z

    move-result v0

    .line 2
    iget-object v1, p0, Ldev/duo/hookprobe/f$f;->b:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Ldev/duo/hookprobe/f$f;->c()I

    move-result v2

    iget v3, p0, Ldev/duo/hookprobe/f$f;->a:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    iget-object v1, p0, Ldev/duo/hookprobe/f$f;->b:Landroid/widget/SeekBar;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-object v1, p0, Ldev/duo/hookprobe/f$f;->b:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    sget v2, Ldev/duo/hookprobe/T;->x:I

    goto :goto_0

    :cond_0
    sget v2, Ldev/duo/hookprobe/T;->k:I

    :goto_0
    invoke-static {v1, v2}, Ldev/duo/hookprobe/T;->a(Landroid/widget/SeekBar;I)V

    .line 5
    iget-object v1, p0, Ldev/duo/hookprobe/f$f;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Ldev/duo/hookprobe/f$f;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p0, Ldev/duo/hookprobe/f$f;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sget v2, Ldev/duo/hookprobe/T;->e:I

    goto :goto_1

    :cond_1
    sget v2, Ldev/duo/hookprobe/T;->b:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object v1, p0, Ldev/duo/hookprobe/f$f;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Ldev/duo/hookprobe/f$f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v1, p0, Ldev/duo/hookprobe/f$f;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget v2, Ldev/duo/hookprobe/T;->o:I

    goto :goto_2

    :cond_2
    sget v2, Ldev/duo/hookprobe/T;->c:I

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 9
    sget v2, Ldev/duo/hookprobe/T;->n:I

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    iget-object v3, p0, Ldev/duo/hookprobe/f$f;->h:Ldev/duo/hookprobe/f;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v3, v4}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ldev/duo/hookprobe/T;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v0, :cond_4

    .line 10
    iget-object v4, p0, Ldev/duo/hookprobe/f$f;->h:Ldev/duo/hookprobe/f;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const v5, 0x4d767680    # 2.58435072E8f

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 11
    :cond_4
    iget-object v4, p0, Ldev/duo/hookprobe/f$f;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 12
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 13
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    if-eqz v0, :cond_5

    .line 14
    sget v4, Ldev/duo/hookprobe/T;->o:I

    goto :goto_4

    :cond_5
    move v4, v1

    :goto_4
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-nez v0, :cond_6

    .line 15
    iget-object v4, p0, Ldev/duo/hookprobe/f$f;->h:Ldev/duo/hookprobe/f;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-static {v4, v5}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const v4, 0x73767680

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 16
    :cond_6
    iget-object v3, p0, Ldev/duo/hookprobe/f$f;->e:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 17
    iget-object v2, p0, Ldev/duo/hookprobe/f$f;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x4

    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Ldev/duo/hookprobe/f$f;->h:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->b(Ldev/duo/hookprobe/f;)V

    return-void
.end method

.method i()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/f$f;->h:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ldev/duo/hookprobe/f$f;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ldev/duo/hookprobe/f$f;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Ldev/duo/hookprobe/f$f;->a(I)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Ldev/duo/hookprobe/f$f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Ldev/duo/hookprobe/f$f;->f()V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Ldev/duo/hookprobe/f$f;->h:Ldev/duo/hookprobe/f;

    const-string v1, "\u5199\u5165\u5931\u8d25"

    invoke-static {v0, v1}, Ldev/duo/hookprobe/f;->b(Ldev/duo/hookprobe/f;Ljava/lang/String;)V

    return-void
.end method
