.class final Ldev/duo/hookprobe/RailCustomActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldev/duo/hookprobe/RailCustomActivity$j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/RailCustomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "i"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field final synthetic d:Ldev/duo/hookprobe/RailCustomActivity;


# direct methods
.method private constructor <init>(Ldev/duo/hookprobe/RailCustomActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldev/duo/hookprobe/RailCustomActivity;Ldev/duo/hookprobe/RailCustomActivity$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/RailCustomActivity$i;-><init>(Ldev/duo/hookprobe/RailCustomActivity;)V

    return-void
.end method

.method private a(Landroid/view/View;FF)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 7
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 9
    iget-object v2, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v2}, Ldev/duo/hookprobe/RailCustomActivity;->b(Ldev/duo/hookprobe/RailCustomActivity;)Ldev/duo/hookprobe/RailCustomActivity$j;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 10
    iget-object v2, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;F)I

    move-result v2

    neg-int v2, v2

    iget-object v4, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v4, v3}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    float-to-int p2, p2

    float-to-int p3, p3

    .line 11
    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 12
    :cond_1
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    return p2
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 30
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldev/duo/hookprobe/J;->e([Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldev/duo/hookprobe/J;->f([Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->b:I

    if-eq v0, v1, :cond_1

    .line 31
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/RailCustomActivity;->d(Ldev/duo/hookprobe/RailCustomActivity;)V

    .line 32
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/RailCustomActivity;->e(Ldev/duo/hookprobe/RailCustomActivity;)V

    .line 34
    :cond_1
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/RailCustomActivity;->f(Ldev/duo/hookprobe/RailCustomActivity;)V

    return-void
.end method

.method public a(F)V
    .locals 5

    .line 13
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/RailCustomActivity;->b(Ldev/duo/hookprobe/RailCustomActivity;)Ldev/duo/hookprobe/RailCustomActivity$j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 15
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/RailCustomActivity;->b(Ldev/duo/hookprobe/RailCustomActivity;)Ldev/duo/hookprobe/RailCustomActivity$j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    move v2, v1

    .line 16
    :goto_0
    iget-object v3, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v3}, Ldev/duo/hookprobe/RailCustomActivity;->b(Ldev/duo/hookprobe/RailCustomActivity;)Ldev/duo/hookprobe/RailCustomActivity$j;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 17
    iget-object v3, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v3}, Ldev/duo/hookprobe/RailCustomActivity;->b(Ldev/duo/hookprobe/RailCustomActivity;)Ldev/duo/hookprobe/RailCustomActivity$j;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    int-to-float v0, v2

    .line 19
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    add-float/2addr v0, p1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_2
    :goto_1
    iget-boolean p1, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->c:Z

    if-eqz p1, :cond_3

    .line 24
    iget-object p1, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;)[Ljava/lang/String;

    move-result-object p1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {p1, v0}, Ldev/duo/hookprobe/J;->b([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 25
    :cond_3
    iget-object p1, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1, v0}, Ldev/duo/hookprobe/J;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_5

    .line 26
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 27
    :cond_4
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    iget-object p1, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/RailCustomActivity;->c(Ldev/duo/hookprobe/RailCustomActivity;)V

    .line 29
    iget-object p1, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/RailCustomActivity;->b(Ldev/duo/hookprobe/RailCustomActivity;)Ldev/duo/hookprobe/RailCustomActivity$j;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    :cond_5
    :goto_3
    return-void
.end method

.method public a(FF)Z
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/RailCustomActivity;->g(Ldev/duo/hookprobe/RailCustomActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/RailCustomActivity;->h(Ldev/duo/hookprobe/RailCustomActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/RailCustomActivity;->i(Ldev/duo/hookprobe/RailCustomActivity;)Ldev/duo/hookprobe/o;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/RailCustomActivity;->j(Ldev/duo/hookprobe/RailCustomActivity;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ldev/duo/hookprobe/RailCustomActivity$i;->a(Landroid/view/View;FF)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->c:Z

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/RailCustomActivity;->k(Ldev/duo/hookprobe/RailCustomActivity;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ldev/duo/hookprobe/RailCustomActivity$i;->a(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->c:Z

    .line 5
    :goto_0
    iget-object p1, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldev/duo/hookprobe/J;->e([Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->a:I

    .line 6
    iget-object p1, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->d:Ldev/duo/hookprobe/RailCustomActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/RailCustomActivity;->a(Ldev/duo/hookprobe/RailCustomActivity;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldev/duo/hookprobe/J;->f([Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ldev/duo/hookprobe/RailCustomActivity$i;->b:I

    return v2

    :cond_2
    :goto_1
    return v1
.end method
