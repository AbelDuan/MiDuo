.class Ldev/duo/workspaceprobe/l$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/workspaceprobe/l;


# direct methods
.method public static synthetic $r8$lambda$Egxr-1CW0g6N2sjUnCRolWblkS0(Ldev/duo/workspaceprobe/l$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/l$a;->a(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Ldev/duo/workspaceprobe/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/duo/workspaceprobe/i;

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v0, p1, Ldev/duo/workspaceprobe/i;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    invoke-static {v0}, Ldev/duo/workspaceprobe/l;->e(Ldev/duo/workspaceprobe/l;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    invoke-static {v0}, Ldev/duo/workspaceprobe/l;->a(Ldev/duo/workspaceprobe/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    invoke-static {v0}, Ldev/duo/workspaceprobe/l;->a(Ldev/duo/workspaceprobe/l;)Ljava/util/List;

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    check-cast v2, Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x5

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v8, v0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    iget-object v8, v0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    const/16 v9, 0xe

    invoke-static {v8, v5, v9, v6}, Ldev/duo/workspaceprobe/l;->a(Ldev/duo/workspaceprobe/l;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v8

    .line 6
    iget-object v9, v0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    const/high16 v10, 0x41b00000    # 22.0f

    invoke-static {v9, v10}, Ldev/duo/workspaceprobe/l;->a(Ldev/duo/workspaceprobe/l;F)I

    move-result v9

    iget-object v10, v0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v10, v11}, Ldev/duo/workspaceprobe/l;->a(Ldev/duo/workspaceprobe/l;F)I

    move-result v10

    invoke-virtual {v8, v7, v9, v7, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 7
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, v0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v9, v7

    :goto_0
    if-ge v9, v4, :cond_0

    .line 11
    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v11, v0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 13
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 14
    iget-object v11, v0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v11, v12}, Ldev/duo/workspaceprobe/l;->a(Ldev/duo/workspaceprobe/l;F)I

    move-result v11

    invoke-virtual {v10, v7, v7, v7, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 15
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v11, v7, v12, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance v11, Landroid/widget/ImageView;

    iget-object v13, v0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v14, v0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    const/high16 v15, 0x42880000    # 68.0f

    invoke-static {v14, v15}, Ldev/duo/workspaceprobe/l;->a(Ldev/duo/workspaceprobe/l;F)I

    move-result v14

    iget-object v3, v0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    invoke-static {v3, v15}, Ldev/duo/workspaceprobe/l;->a(Ldev/duo/workspaceprobe/l;F)I

    move-result v3

    invoke-direct {v13, v14, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object v3, v0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    const/16 v11, 0xd

    invoke-static {v3, v5, v11, v7}, Ldev/duo/workspaceprobe/l;->a(Ldev/duo/workspaceprobe/l;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v3

    .line 18
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 19
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 20
    const/16 v11, 0x11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 21
    iget-object v11, v0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    const/high16 v13, 0x41000000    # 8.0f

    invoke-static {v11, v13}, Ldev/duo/workspaceprobe/l;->a(Ldev/duo/workspaceprobe/l;F)I

    move-result v11

    invoke-virtual {v3, v7, v11, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 22
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    invoke-direct {v11, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    new-instance v3, Ldev/duo/workspaceprobe/l$a$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Ldev/duo/workspaceprobe/l$a$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/l$a;)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v9, v9, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    nop

    .line 29
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 30
    iget-object v8, v0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    invoke-static {v8}, Ldev/duo/workspaceprobe/l;->b(Ldev/duo/workspaceprobe/l;)I

    move-result v8

    if-lez v8, :cond_1

    if-ne v1, v6, :cond_1

    goto :goto_1

    :cond_1
    move v8, v7

    goto :goto_2

    :cond_2
    :goto_1
    move v8, v6

    :goto_2
    if-eqz v8, :cond_3

    move v9, v7

    goto :goto_3

    :cond_3
    const/16 v9, 0x8

    .line 31
    :goto_3
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    if-eqz v8, :cond_6

    .line 32
    iget-object v8, v0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    invoke-static {v8}, Ldev/duo/workspaceprobe/l;->c(Ldev/duo/workspaceprobe/l;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "\u641c\u7d22\u7ed3\u679c"

    goto :goto_4

    :cond_4
    if-nez v1, :cond_5

    iget-object v8, v0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    invoke-static {v8}, Ldev/duo/workspaceprobe/l;->b(Ldev/duo/workspaceprobe/l;)I

    move-result v8

    if-lez v8, :cond_5

    const-string v8, "\u6700\u8fd1\u4f7f\u7528"

    goto :goto_4

    :cond_5
    const-string v8, "\u5168\u90e8\u5e94\u7528"

    :goto_4
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    nop

    .line 33
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 34
    iget-object v8, v0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    invoke-static {v8}, Ldev/duo/workspaceprobe/l;->a(Ldev/duo/workspaceprobe/l;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move v8, v7

    :goto_5
    if-ge v8, v4, :cond_f

    .line 36
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 37
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    move v10, v7

    goto :goto_6

    :cond_7
    const/4 v10, 0x4

    :goto_6
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 38
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    if-ge v8, v10, :cond_8

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/duo/workspaceprobe/i;

    goto :goto_7

    :cond_8
    move-object v10, v11

    .line 39
    :goto_7
    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 40
    move-object v12, v9

    check-cast v12, Landroid/widget/LinearLayout;

    .line 41
    invoke-virtual {v12, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    if-nez v10, :cond_9

    move-object v14, v11

    goto :goto_8

    :cond_9
    iget-object v14, v0, Ldev/duo/workspaceprobe/l$a;->a:Ldev/duo/workspaceprobe/l;

    invoke-static {v14}, Ldev/duo/workspaceprobe/l;->d(Ldev/duo/workspaceprobe/l;)Ljava/util/Map;

    move-result-object v14

    iget-object v15, v10, Ldev/duo/workspaceprobe/i;->a:Ljava/lang/String;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/Drawable;

    :goto_8
    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {v12, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-nez v10, :cond_a

    move-object v13, v5

    goto :goto_9

    :cond_a
    iget-object v13, v10, Ldev/duo/workspaceprobe/i;->c:Ljava/lang/String;

    :goto_9
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v10, :cond_b

    goto :goto_a

    .line 43
    :cond_b
    iget-boolean v11, v10, Ldev/duo/workspaceprobe/i;->f:Z

    if-eqz v11, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v10, Ldev/duo/workspaceprobe/i;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\uff0c\u4e0d\u652f\u6301\u5728\u5de5\u4f5c\u53f0\u4e2d\u6253\u5f00"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    :cond_c
    iget-object v11, v10, Ldev/duo/workspaceprobe/i;->c:Ljava/lang/String;

    :goto_a
    invoke-virtual {v9, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_d

    .line 44
    iget-boolean v11, v10, Ldev/duo/workspaceprobe/i;->f:Z

    if-eqz v11, :cond_d

    const v11, 0x3eb33333    # 0.35f

    goto :goto_b

    :cond_d
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_b
    invoke-virtual {v9, v11}, Landroid/view/View;->setAlpha(F)V

    if-eqz v10, :cond_e

    .line 45
    iget-boolean v10, v10, Ldev/duo/workspaceprobe/i;->f:Z

    if-nez v10, :cond_e

    move v10, v6

    goto :goto_c

    :cond_e
    move v10, v7

    :goto_c
    invoke-virtual {v9, v10}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    :cond_f
    return-object v2
.end method
