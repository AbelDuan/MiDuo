.class Ldev/duo/hookprobe/RailCustomActivity$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/RailCustomActivity;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/function/Predicate;

.field final synthetic c:Ldev/duo/hookprobe/RailCustomActivity;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/RailCustomActivity;Ljava/util/List;Ljava/util/function/Predicate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/RailCustomActivity$a;->c:Ldev/duo/hookprobe/RailCustomActivity;

    iput-object p2, p0, Ldev/duo/hookprobe/RailCustomActivity$a;->a:Ljava/util/List;

    iput-object p3, p0, Ldev/duo/hookprobe/RailCustomActivity$a;->b:Ljava/util/function/Predicate;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$a;->a:Ljava/util/List;

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
    .locals 4

    .line 1
    iget-object p2, p0, Ldev/duo/hookprobe/RailCustomActivity$a;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/duo/hookprobe/RailCustomActivity$f;

    .line 2
    iget-object p2, p0, Ldev/duo/hookprobe/RailCustomActivity$a;->c:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {p2}, Ldev/duo/hookprobe/U;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p2

    .line 3
    iget-object p3, p0, Ldev/duo/hookprobe/RailCustomActivity$a;->c:Ldev/duo/hookprobe/RailCustomActivity;

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {p3, v0}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;F)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 4
    iget-object p3, p0, Ldev/duo/hookprobe/RailCustomActivity$a;->c:Ldev/duo/hookprobe/RailCustomActivity;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p3, v0}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;F)I

    move-result p3

    iget-object v1, p0, Ldev/duo/hookprobe/RailCustomActivity$a;->c:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v1, v0}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;F)I

    move-result v1

    iget-object v2, p0, Ldev/duo/hookprobe/RailCustomActivity$a;->c:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v2, v0}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;F)I

    move-result v2

    iget-object v3, p0, Ldev/duo/hookprobe/RailCustomActivity$a;->c:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v3, v0}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;F)I

    move-result v0

    invoke-virtual {p2, p3, v1, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 5
    iget-object p3, p0, Ldev/duo/hookprobe/RailCustomActivity$a;->c:Ldev/duo/hookprobe/RailCustomActivity;

    iget-object v0, p1, Ldev/duo/hookprobe/RailCustomActivity$f;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p3, v0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object p3

    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$a;->c:Ldev/duo/hookprobe/RailCustomActivity;

    .line 6
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1, v1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 7
    invoke-virtual {p2, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object p3, p0, Ldev/duo/hookprobe/RailCustomActivity$a;->c:Ldev/duo/hookprobe/RailCustomActivity;

    sget v0, Ldev/duo/hookprobe/U;->b:I

    const/high16 v1, 0x41700000    # 15.0f

    const/16 v2, 0x1f4

    invoke-static {p3, v1, v0, v2}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object p3

    .line 10
    iget-object v0, p1, Ldev/duo/hookprobe/RailCustomActivity$f;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 12
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 13
    invoke-static {}, Ldev/duo/hookprobe/U;->b()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 14
    iget-object v1, p0, Ldev/duo/hookprobe/RailCustomActivity$a;->c:Ldev/duo/hookprobe/RailCustomActivity;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 15
    invoke-virtual {p2, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object p3, p0, Ldev/duo/hookprobe/RailCustomActivity$a;->b:Ljava/util/function/Predicate;

    iget-object p1, p1, Ldev/duo/hookprobe/RailCustomActivity$f;->a:Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    iget-object p1, p0, Ldev/duo/hookprobe/RailCustomActivity$a;->c:Ldev/duo/hookprobe/RailCustomActivity;

    const p3, -0xcb57ad

    const/16 v0, 0x258

    invoke-static {p1, v2, p3, v0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object p1

    .line 18
    const-string p3, "\u5df2\u6dfb\u52a0"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-object p2
.end method
