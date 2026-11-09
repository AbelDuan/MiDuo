.class final Ldev/duo/hookprobe/MainActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "j"
.end annotation


# instance fields
.field final a:Landroid/widget/LinearLayout;

.field final b:Landroid/widget/LinearLayout;

.field final c:Landroid/widget/ImageView;

.field final d:Landroid/widget/TextView;

.field final e:Landroid/widget/TextView;

.field final f:Landroid/widget/TextView;

.field final g:Landroid/view/View;

.field final synthetic h:Ldev/duo/hookprobe/MainActivity;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/MainActivity;)V
    .locals 14

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/MainActivity$j;->h:Ldev/duo/hookprobe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ldev/duo/hookprobe/U;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Ldev/duo/hookprobe/MainActivity$j;->a:Landroid/widget/LinearLayout;

    .line 3
    invoke-static {p1}, Ldev/duo/hookprobe/U;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Ldev/duo/hookprobe/MainActivity$j;->b:Landroid/widget/LinearLayout;

    .line 4
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Ldev/duo/hookprobe/MainActivity$j;->c:Landroid/widget/ImageView;

    .line 5
    sget v4, Ldev/duo/hookprobe/U;->b:I

    const/high16 v5, 0x41800000    # 16.0f

    const/16 v7, 0x258

    invoke-static {p1, v5, v4, v7}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Ldev/duo/hookprobe/MainActivity$j;->d:Landroid/widget/TextView;

    .line 6
    sget v5, Ldev/duo/hookprobe/U;->d:I

    const/16 v8, 0x190

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {p1, v9, v5, v8}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Ldev/duo/hookprobe/MainActivity$j;->e:Landroid/widget/TextView;

    .line 7
    sget v8, Ldev/duo/hookprobe/U;->b:I

    const/high16 v10, 0x41300000    # 11.0f

    invoke-static {p1, v10, v8, v7}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, p0, Ldev/duo/hookprobe/MainActivity$j;->f:Landroid/widget/TextView;

    .line 8
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Ldev/duo/hookprobe/MainActivity$j;->g:Landroid/view/View;

    .line 11
    invoke-static {p1}, Ldev/duo/hookprobe/MainActivity;->j(Ldev/duo/hookprobe/MainActivity;)I

    move-result v10

    invoke-static {p1}, Ldev/duo/hookprobe/MainActivity;->j(Ldev/duo/hookprobe/MainActivity;)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v2, v10, v12, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 12
    invoke-virtual {v2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    const/high16 v0, 0x42280000    # 42.0f

    invoke-static {p1, v0, v0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-static {p1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 16
    invoke-static {p1}, Ldev/duo/hookprobe/U;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 17
    invoke-static {p1, v9}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v0

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p1, v2}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v2

    invoke-static {p1, v9}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v3

    invoke-virtual {v11, v12, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 18
    invoke-static {p1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 19
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 20
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 21
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 23
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 24
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p1, v2}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v2

    invoke-virtual {v5, v12, v2, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 25
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    invoke-static {}, Ldev/duo/hookprobe/U;->b()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    const/16 v0, 0x11

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 28
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {p1, v0}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v2

    invoke-static {p1, v0}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v0

    invoke-virtual {v7, v2, v12, v0, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 29
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p1, v2}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 30
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p1, v2}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 31
    invoke-virtual {v11, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {p1, v0, v0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 33
    invoke-static {p1, v2}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 34
    sget v2, Ldev/duo/hookprobe/U;->x:I

    const/4 v4, 0x0

    const/high16 v5, 0x41500000    # 13.0f

    const/4 v1, 0x4

    const/high16 v3, 0x40400000    # 3.0f

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;IIFZF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v11, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    sget v1, Ldev/duo/hookprobe/U;->h:I

    invoke-virtual {v8, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {p1, v2}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-static {}, Ldev/duo/hookprobe/U;->b()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 39
    invoke-static {p1, v9}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;F)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 40
    invoke-virtual {v6, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
