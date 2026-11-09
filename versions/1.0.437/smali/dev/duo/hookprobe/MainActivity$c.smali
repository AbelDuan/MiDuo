.class Ldev/duo/hookprobe/MainActivity$c;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/MainActivity;->d()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/hookprobe/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$sP-gYoKfog0PQbtyw8OuQmxXz1c(Ldev/duo/hookprobe/MainActivity$c;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/MainActivity$c;->a(II)V

    return-void
.end method

.method constructor <init>(Ldev/duo/hookprobe/MainActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/MainActivity$c;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic a(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 4
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 7
    iget-object p1, p0, Ldev/duo/hookprobe/MainActivity$c;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/MainActivity;->b(Ldev/duo/hookprobe/MainActivity;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ldev/duo/hookprobe/MainActivity$c;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/MainActivity;->b(Ldev/duo/hookprobe/MainActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    .line 10
    iget-object p1, p0, Ldev/duo/hookprobe/MainActivity$c;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/MainActivity;->b(Ldev/duo/hookprobe/MainActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 15
    :cond_1
    new-instance p1, Ldev/duo/hookprobe/MainActivity$c$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0, v1}, Ldev/duo/hookprobe/MainActivity$c$$ExternalSyntheticLambda0;-><init>(Ldev/duo/hookprobe/MainActivity$c;II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/MainActivity$c;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/MainActivity;->b(Ldev/duo/hookprobe/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/hookprobe/MainActivity$c;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/MainActivity;->b(Ldev/duo/hookprobe/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method
