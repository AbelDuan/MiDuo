.class final Ldev/duo/workspaceprobe/l;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field static final m:I = 0x2c

.field static final n:I = 0xe

.field static final o:I = 0x12

.field static final p:I = 0xa


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

.field final f:Landroid/widget/TextView;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/duo/workspaceprobe/i;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ldev/duo/workspaceprobe/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private final l:Landroid/widget/BaseAdapter;


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

.method public static synthetic $r8$lambda$t51VMUbdN0zZGo4bpr4KCdncMHs(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/l;->c(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;FLjava/lang/Runnable;Ljava/util/function/Consumer;)V
    .locals 10
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
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Ldev/duo/workspaceprobe/l;->g:Ljava/util/List;

    .line 3
    const-string v0, ""

    iput-object v0, p0, Ldev/duo/workspaceprobe/l;->h:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ldev/duo/workspaceprobe/l;->i:Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ldev/duo/workspaceprobe/l;->j:Ljava/util/Map;

    .line 7
    new-instance v1, Ldev/duo/workspaceprobe/l$a;

    invoke-direct {v1, p0}, Ldev/duo/workspaceprobe/l$a;-><init>(Ldev/duo/workspaceprobe/l;)V

    iput-object v1, p0, Ldev/duo/workspaceprobe/l;->l:Landroid/widget/BaseAdapter;

    .line 64
    iput p2, p0, Ldev/duo/workspaceprobe/l;->a:F

    iput-object p4, p0, Ldev/duo/workspaceprobe/l;->c:Ljava/util/function/Consumer;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->b(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Ldev/duo/workspaceprobe/l;->b:Z

    .line 65
    const/4 p4, 0x1

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    const/high16 v2, 0x41e00000    # 28.0f

    invoke-direct {p0, v2}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v3

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-direct {p0, v4}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v5

    invoke-direct {p0, v2}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v2

    invoke-direct {p0, v4}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v4

    invoke-virtual {p0, v3, v5, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 67
    const/high16 v2, 0x42080000    # 34.0f

    invoke-direct {p0, v2}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p2, v2}, Ldev/duo/workspaceprobe/l;->a(ZF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 70
    const-string v4, "\u9009\u62e9\u5e94\u7528"

    const/16 v5, 0x16

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Ldev/duo/workspaceprobe/l;->a(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42400000    # 48.0f

    invoke-direct {p0, v7}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    const-string v4, "\u00d7"

    const/16 v5, 0x1c

    invoke-direct {p0, v4, v5, v6}, Ldev/duo/workspaceprobe/l;->a(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    .line 72
    const-string v5, "\u5173\u95ed\u5e94\u7528\u5217\u8868"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 73
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 74
    new-instance v5, Ldev/duo/workspaceprobe/l$$ExternalSyntheticLambda1;

    invoke-direct {v5, p3}, Ldev/duo/workspaceprobe/l$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42300000    # 44.0f

    invoke-direct {p0, v5}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v7

    invoke-direct {p0, v5}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v9

    invoke-direct {p3, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    const-string p3, "\u641c\u7d22\u5e94\u7528"

    invoke-direct {p0, p3, v3, p4}, Ldev/duo/workspaceprobe/l;->a(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p3

    iput-object p3, p0, Ldev/duo/workspaceprobe/l;->f:Landroid/widget/TextView;

    .line 78
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 79
    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {p0, v2}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v4

    invoke-direct {p0, v2}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v2

    invoke-virtual {p3, v4, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 80
    new-instance v2, Ldev/duo/workspaceprobe/m;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-direct {p0, v4}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v4

    invoke-static {p2}, Ldev/duo/workspaceprobe/l;->b(Z)I

    move-result v7

    invoke-direct {v2, v4, v7}, Ldev/duo/workspaceprobe/m;-><init>(II)V

    const/4 v4, 0x0

    invoke-virtual {p3, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 81
    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p0, v2}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v7

    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 82
    const/high16 v7, 0x41b00000    # 22.0f

    invoke-direct {p0, v7}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {p2, v7}, Ldev/duo/workspaceprobe/l;->b(ZF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v5}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v5

    const/4 v7, -0x1

    invoke-direct {p2, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    invoke-direct {p0, v2}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result v2

    iput v2, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 85
    invoke-virtual {p0, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-direct {p0, v0, v3, p4}, Ldev/duo/workspaceprobe/l;->a(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p2

    iput-object p2, p0, Ldev/duo/workspaceprobe/l;->e:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    new-instance p2, Landroid/widget/ListView;

    invoke-direct {p2, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ldev/duo/workspaceprobe/l;->d:Landroid/widget/ListView;

    .line 89
    invoke-virtual {p2, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 90
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v7, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    const-string p1, "\u6b63\u5728\u8bfb\u53d6\u5e94\u7528\u2026"

    invoke-virtual {p0, p1}, Ldev/duo/workspaceprobe/l;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(F)I
    .locals 1

    .line 5
    iget v0, p0, Ldev/duo/workspaceprobe/l;->a:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/l;F)I
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result p0

    return p0
.end method

.method static a(Z)I
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    const p0, -0xd0d09

    return p0

    :cond_0
    const p0, -0xe3e3e2

    return p0
.end method

.method private static a(ZF)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 44
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    if-eqz p0, :cond_0

    const v1, -0x38d3d3d2

    goto :goto_0

    :cond_0
    const v1, -0x380a0a09

    .line 46
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 47
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz p0, :cond_1

    const p0, 0x33ffffff

    goto :goto_1

    :cond_1
    const p0, -0x61000001

    .line 48
    :goto_1
    const/4 p1, 0x2

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method static a(Landroid/content/Context;FLjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/view/View;
    .locals 9

    .line 49
    invoke-static {p0}, Ldev/duo/workspaceprobe/b;->b(Landroid/content/Context;)Z

    move-result v0

    .line 50
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v3, p1

    .line 52
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 53
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v3, 0x41c00000    # 24.0f

    mul-float/2addr v3, p1

    .line 54
    invoke-static {v0, v3}, Ldev/duo/workspaceprobe/l;->a(ZF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 55
    const-string v3, "\u21c4  \u66f4\u6362"

    const-string v4, "\u2296  \u79fb\u9664"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 56
    filled-new-array {p2, p3}, [Ljava/lang/Runnable;

    move-result-object p2

    const/4 p3, 0x0

    move v4, p3

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    .line 58
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 59
    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v6, p1

    .line 60
    invoke-virtual {v5, p3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    if-ne v4, v2, :cond_1

    if-eqz v0, :cond_0

    const/16 v6, -0x7071

    goto :goto_1

    :cond_0
    const v6, -0x39d0d1

    goto :goto_1

    .line 61
    :cond_1
    invoke-static {v0}, Ldev/duo/workspaceprobe/l;->a(Z)I

    move-result v6

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41600000    # 14.0f

    mul-float/2addr v6, p1

    .line 62
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6, p3, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 63
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 64
    aget-object v6, p2, v4

    .line 65
    new-instance v7, Ldev/duo/workspaceprobe/l$$ExternalSyntheticLambda0;

    invoke-direct {v7, v6}, Ldev/duo/workspaceprobe/l$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42500000    # 52.0f

    mul-float/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v8, -0x1

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v4, :cond_3

    .line 68
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_2

    const v6, 0x21ffffff

    goto :goto_2

    :cond_2
    const/high16 v6, 0x1a000000

    .line 69
    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 70
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method static a(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/view/View;
    .locals 7

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    const-string v1, "miui_split_handler_view_bg"

    const-string v2, "drawable"

    const-string v3, "com.android.wm.shell"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 74
    const-string v4, "miui_split_handler_btn_pressed"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 75
    const-string v5, "swap_split_btn"

    invoke-virtual {v0, v5, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 76
    const-string v5, "split_divider_handle_parent_padding"

    const-string v6, "dimen"

    invoke-virtual {v0, v5, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 79
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 81
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 83
    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 84
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 88
    const-string p0, "\u5de6\u53f3\u5207\u6362"

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 89
    new-instance p0, Ldev/duo/workspaceprobe/l$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/l$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, -0x2

    invoke-direct {p0, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v5

    .line 91
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MIUI split handle resources missing: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/l;Ljava/lang/String;IZ)Landroid/widget/TextView;
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Ldev/duo/workspaceprobe/l;->a(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;IZ)Landroid/widget/TextView;
    .locals 2

    .line 6
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    .line 8
    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/l;->a(F)I

    move-result p1

    int-to-float p1, p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz p3, :cond_0

    .line 9
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/l;->b:Z

    invoke-static {p1}, Ldev/duo/workspaceprobe/l;->b(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/l;->b:Z

    invoke-static {p1}, Ldev/duo/workspaceprobe/l;->a(Z)I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/l;)Ljava/util/List;
    .locals 0

    .line 2
    iget-object p0, p0, Ldev/duo/workspaceprobe/l;->i:Ljava/util/List;

    return-object p0
.end method

.method private a()V
    .locals 6

    .line 26
    iget-object v0, p0, Ldev/duo/workspaceprobe/l;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 27
    iget-object v0, p0, Ldev/duo/workspaceprobe/l;->g:Ljava/util/List;

    .line 28
    const/4 v1, 0x0

    iput v1, p0, Ldev/duo/workspaceprobe/l;->k:I

    .line 29
    iget-object v2, p0, Ldev/duo/workspaceprobe/l;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iget-object v2, p0, Ldev/duo/workspaceprobe/l;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/duo/workspaceprobe/i;

    iget-object v4, v3, Ldev/duo/workspaceprobe/i;->g:Ljava/lang/String;

    iget-object v5, p0, Ldev/duo/workspaceprobe/l;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    iget v2, p0, Ldev/duo/workspaceprobe/l;->k:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget v2, p0, Ldev/duo/workspaceprobe/l;->k:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/duo/workspaceprobe/i;

    iget v2, v2, Ldev/duo/workspaceprobe/i;->e:I

    if-ltz v2, :cond_2

    iget v2, p0, Ldev/duo/workspaceprobe/l;->k:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ldev/duo/workspaceprobe/l;->k:I

    goto :goto_1

    .line 34
    :cond_2
    iget v2, p0, Ldev/duo/workspaceprobe/l;->k:I

    if-lez v2, :cond_3

    iget-object v3, p0, Ldev/duo/workspaceprobe/l;->i:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_3
    iget v2, p0, Ldev/duo/workspaceprobe/l;->k:I

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 37
    iget-object v3, p0, Ldev/duo/workspaceprobe/l;->i:Ljava/util/List;

    add-int/lit8 v4, v2, 0x5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v0, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_2

    .line 38
    :cond_4
    iget-object v2, p0, Ldev/duo/workspaceprobe/l;->l:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 39
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 40
    iget-object v2, p0, Ldev/duo/workspaceprobe/l;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6ca1\u6709\u627e\u5230\u201c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ldev/duo/workspaceprobe/l;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u201d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    const-string v3, ""

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v2, p0, Ldev/duo/workspaceprobe/l;->e:Landroid/widget/TextView;

    const/16 v3, 0x8

    if-eqz v0, :cond_6

    move v4, v1

    goto :goto_4

    :cond_6
    move v4, v3

    :goto_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v2, p0, Ldev/duo/workspaceprobe/l;->d:Landroid/widget/ListView;

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v3, v1

    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_8

    .line 43
    iget-object v0, p0, Ldev/duo/workspaceprobe/l;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_8
    return-void
.end method

.method private static synthetic a(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 92
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic b(Ldev/duo/workspaceprobe/l;)I
    .locals 0

    .line 2
    iget p0, p0, Ldev/duo/workspaceprobe/l;->k:I

    return p0
.end method

.method static b(Z)I
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    const p0, -0x676761

    return p0

    :cond_0
    const p0, -0x939390

    return p0
.end method

.method static b(ZF)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 3
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    if-eqz p0, :cond_0

    const p0, 0x1fffffff

    goto :goto_0

    :cond_0
    const/high16 p0, 0xf000000

    .line 4
    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private static synthetic b(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 9
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic c(Ldev/duo/workspaceprobe/l;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/workspaceprobe/l;->h:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic c(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic d(Ldev/duo/workspaceprobe/l;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/workspaceprobe/l;->j:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic e(Ldev/duo/workspaceprobe/l;)Ljava/util/function/Consumer;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/workspaceprobe/l;->c:Ljava/util/function/Consumer;

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 2

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/workspaceprobe/l;->h:Ljava/lang/String;

    .line 25
    iget-object p1, p0, Ldev/duo/workspaceprobe/l;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/l;->a()V

    :cond_0
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldev/duo/workspaceprobe/i;",
            ">;)V"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Ldev/duo/workspaceprobe/l;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 21
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u6ca1\u6709\u53ef\u6dfb\u52a0\u7684\u5e94\u7528"

    invoke-virtual {p0, p1}, Ldev/duo/workspaceprobe/l;->b(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_0
    iput-object p1, p0, Ldev/duo/workspaceprobe/l;->g:Ljava/util/List;

    .line 23
    invoke-direct {p0}, Ldev/duo/workspaceprobe/l;->a()V

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

    .line 11
    iget-object v0, p0, Ldev/duo/workspaceprobe/l;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x0

    move v1, v0

    .line 12
    :goto_0
    iget-object v2, p0, Ldev/duo/workspaceprobe/l;->d:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 13
    iget-object v2, p0, Ldev/duo/workspaceprobe/l;->d:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 14
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move v3, v0

    .line 15
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 16
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 17
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldev/duo/workspaceprobe/i;

    if-eqz v5, :cond_0

    .line 18
    iget-object v6, v5, Ldev/duo/workspaceprobe/i;->a:Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 19
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

.method b(Ljava/lang/String;)V
    .locals 2

    .line 6
    iget-object v0, p0, Ldev/duo/workspaceprobe/l;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ldev/duo/workspaceprobe/l;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Ldev/duo/workspaceprobe/l;->l:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    iget-object v0, p0, Ldev/duo/workspaceprobe/l;->d:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Ldev/duo/workspaceprobe/l;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ldev/duo/workspaceprobe/l;->e:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
