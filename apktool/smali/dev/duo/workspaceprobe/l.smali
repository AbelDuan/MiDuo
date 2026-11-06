.class final Ldev/duo/workspaceprobe/l;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:Z

.field private final c:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ldev/duo/workspaceprobe/i;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/widget/ListView;

.field private final e:Landroid/widget/TextView;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ldev/duo/workspaceprobe/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Landroid/widget/BaseAdapter;


# direct methods
.method public static synthetic $r8$lambda$75srHVhHtJ6EviLKpB4U8lSHwdI(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/l;->b(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$94JhD3xyju4BhuURhGRYUtwhJBo(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/l;->a(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;FLjava/lang/Runnable;Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "F",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Ldev/duo/workspaceprobe/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/l;->f:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/l;->g:Ljava/util/Map;

    .line 5
    new-instance v0, Ldev/duo/workspaceprobe/l$a;

    invoke-direct {v0, p0}, Ldev/duo/workspaceprobe/l$a;-><init>(Ldev/duo/workspaceprobe/l;)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/l;->i:Landroid/widget/BaseAdapter;

    .line 62
    iput p2, p0, Ldev/duo/workspaceprobe/l;->a:F

    iput-object p4, p0, Ldev/duo/workspaceprobe/l;->c:Ljava/util/function/Consumer;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->b(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Ldev/duo/workspaceprobe/l;->b:Z

    .line 63
    const/4 p4, 0x1

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 64
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-direct {p0, v1}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v2

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-direct {p0, v3}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v4

    invoke-direct {p0, v1}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v1

    invoke-direct {p0, v3}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v3

    invoke-virtual {p0, v2, v4, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 65
    const/high16 v1, 0x42080000    # 34.0f

    invoke-direct {p0, v1}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p2, v1}, Ldev/duo/workspaceprobe/l;->a(ZF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 66
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 68
    const-string v2, "\u9009\u62e9\u5e94\u7528"

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Ldev/duo/workspaceprobe/l;->a(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42400000    # 48.0f

    invoke-direct {p0, v5}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    const-string v2, "\u00d7"

    const/16 v3, 0x1c

    invoke-direct {p0, v2, v3, v4}, Ldev/duo/workspaceprobe/l;->a(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 70
    const-string v3, "\u5173\u95ed\u5e94\u7528\u5217\u8868"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 71
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 72
    new-instance v3, Ldev/duo/workspaceprobe/l$$ExternalSyntheticLambda1;

    invoke-direct {v3, p3}, Ldev/duo/workspaceprobe/l$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42300000    # 44.0f

    invoke-direct {p0, v3}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v5

    invoke-direct {p0, v3}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v3

    invoke-direct {p3, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    const-string p2, ""

    invoke-direct {p0, p2, v1, p4}, Ldev/duo/workspaceprobe/l;->a(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p2

    iput-object p2, p0, Ldev/duo/workspaceprobe/l;->e:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    new-instance p2, Landroid/widget/ListView;

    invoke-direct {p2, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ldev/duo/workspaceprobe/l;->d:Landroid/widget/ListView;

    .line 78
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 79
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    const-string p1, "\u6b63\u5728\u8bfb\u53d6\u5e94\u7528\u2026"

    invoke-virtual {p0, p1}, Ldev/duo/workspaceprobe/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(F)I
    .locals 1

    .line 4
    iget v0, p0, Ldev/duo/workspaceprobe/l;->a:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/l;F)I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result p0

    return p0
.end method

.method private static a(ZF)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 32
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    if-eqz p0, :cond_0

    const v1, -0x33e1dacc    # -4.1456848E7f

    goto :goto_0

    :cond_0
    const v1, -0x2e070503

    .line 33
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 34
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz p0, :cond_1

    const p0, 0x33ffffff

    goto :goto_1

    :cond_1
    const p0, -0x61000001

    .line 35
    :goto_1
    const/4 p1, 0x2

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method static a(Landroid/content/Context;FLjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/view/View;
    .locals 9

    .line 36
    invoke-static {p0}, Ldev/duo/workspaceprobe/b;->b(Landroid/content/Context;)Z

    move-result v0

    .line 37
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v3, p1

    .line 39
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 40
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v3, 0x41c00000    # 24.0f

    mul-float/2addr v3, p1

    .line 41
    invoke-static {v0, v3}, Ldev/duo/workspaceprobe/l;->a(ZF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 42
    const-string v3, "\u21c4  \u66f4\u6362"

    const-string v4, "\u2296  \u79fb\u9664"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 43
    filled-new-array {p2, p3}, [Ljava/lang/Runnable;

    move-result-object p2

    const/4 p3, 0x0

    move v4, p3

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_5

    .line 45
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 46
    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v6, p1

    .line 47
    invoke-virtual {v5, p3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    if-ne v4, v2, :cond_1

    if-eqz v0, :cond_0

    const/16 v6, -0x7071

    goto :goto_1

    :cond_0
    const v6, -0x39d0d1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const v6, -0xb0905

    goto :goto_1

    :cond_2
    const v6, -0xe8dfcd

    .line 48
    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41600000    # 14.0f

    mul-float/2addr v6, p1

    .line 49
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6, p3, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 50
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 51
    aget-object v6, p2, v4

    .line 52
    new-instance v7, Ldev/duo/workspaceprobe/l$$ExternalSyntheticLambda0;

    invoke-direct {v7, v6}, Ldev/duo/workspaceprobe/l$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42500000    # 52.0f

    mul-float/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v8, -0x1

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v4, :cond_4

    .line 55
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_3

    const v6, 0x21ffffff

    goto :goto_2

    :cond_3
    const v6, 0x1a172033

    .line 56
    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/l;Ljava/lang/String;IZ)Landroid/widget/TextView;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Ldev/duo/workspaceprobe/l;->a(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;IZ)Landroid/widget/TextView;
    .locals 2

    .line 5
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    .line 7
    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result p1

    int-to-float p1, p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz p3, :cond_1

    .line 8
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/l;->b:Z

    if-eqz p1, :cond_0

    const p1, -0x554c3b

    goto :goto_0

    :cond_0
    const p1, -0xa49a88

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/l;->b:Z

    if-eqz p1, :cond_2

    const p1, -0xb0905

    goto :goto_0

    :cond_2
    const p1, -0xe8dfcd

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/l;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/workspaceprobe/l;->f:Ljava/util/List;

    return-object p0
.end method

.method private static synthetic a(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic b(Ldev/duo/workspaceprobe/l;)I
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/workspaceprobe/l;->h:I

    return p0
.end method

.method private static synthetic b(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic c(Ldev/duo/workspaceprobe/l;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/workspaceprobe/l;->g:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Ldev/duo/workspaceprobe/l;)Ljava/util/function/Consumer;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/workspaceprobe/l;->c:Ljava/util/function/Consumer;

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 2

    .line 10
    iget-object v0, p0, Ldev/duo/workspaceprobe/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ldev/duo/workspaceprobe/l;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Ldev/duo/workspaceprobe/l;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    iget-object v0, p0, Ldev/duo/workspaceprobe/l;->d:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Ldev/duo/workspaceprobe/l;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ldev/duo/workspaceprobe/l;->e:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldev/duo/workspaceprobe/i;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Ldev/duo/workspaceprobe/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    iget-object v0, p0, Ldev/duo/workspaceprobe/l;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 24
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u6ca1\u6709\u53ef\u6dfb\u52a0\u7684\u5e94\u7528"

    invoke-virtual {p0, p1}, Ldev/duo/workspaceprobe/l;->a(Ljava/lang/String;)V

    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ldev/duo/workspaceprobe/l;->h:I

    .line 26
    :goto_0
    iget v1, p0, Ldev/duo/workspaceprobe/l;->h:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v1, p0, Ldev/duo/workspaceprobe/l;->h:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/workspaceprobe/i;

    iget v1, v1, Ldev/duo/workspaceprobe/i;->e:I

    if-ltz v1, :cond_1

    iget v1, p0, Ldev/duo/workspaceprobe/l;->h:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ldev/duo/workspaceprobe/l;->h:I

    goto :goto_0

    .line 27
    :cond_1
    iget v1, p0, Ldev/duo/workspaceprobe/l;->h:I

    if-lez v1, :cond_2

    iget-object v2, p0, Ldev/duo/workspaceprobe/l;->f:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_2
    iget v1, p0, Ldev/duo/workspaceprobe/l;->h:I

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 29
    iget-object v2, p0, Ldev/duo/workspaceprobe/l;->f:Ljava/util/List;

    add-int/lit8 v3, v1, 0x5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {p1, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_1

    .line 30
    :cond_3
    iget-object p1, p0, Ldev/duo/workspaceprobe/l;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Ldev/duo/workspaceprobe/l;->d:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Ldev/duo/workspaceprobe/l;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method a(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Ldev/duo/workspaceprobe/l;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x0

    move v1, v0

    .line 14
    :goto_0
    iget-object v2, p0, Ldev/duo/workspaceprobe/l;->d:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 15
    iget-object v2, p0, Ldev/duo/workspaceprobe/l;->d:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 16
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move v3, v0

    .line 17
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 18
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 19
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldev/duo/workspaceprobe/i;

    if-eqz v5, :cond_0

    .line 20
    iget-object v6, v5, Ldev/duo/workspaceprobe/i;->a:Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 21
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, v5, Ldev/duo/workspaceprobe/i;->a:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
