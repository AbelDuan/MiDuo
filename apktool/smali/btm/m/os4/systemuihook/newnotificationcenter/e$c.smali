.class final Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtm/m/os4/systemuihook/newnotificationcenter/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;

.field private final b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 5
    new-instance v0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;

    invoke-direct {v0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;->a:Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;

    .line 6
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;->b:Landroid/widget/TextView;

    .line 7
    const/4 p1, -0x1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 9
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 10
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method a(ILjava/lang/String;F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;->b:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    if-ne p1, v0, :cond_1

    move p1, p3

    goto :goto_1

    :cond_1
    move p1, p2

    .line 5
    :goto_1
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;->a:Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, p2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, p2

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const v2, 0x3f733333    # 0.95f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 8
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;->a:Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;

    invoke-virtual {v0, p3}, Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;->a(I)V

    .line 9
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;->a:Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 11
    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez p1, :cond_5

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    int-to-float p1, p3

    const p2, 0x3e8f5c29    # 0.28f

    mul-float/2addr p1, p2

    .line 12
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_5

    :cond_5
    :goto_4
    nop

    :goto_5
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 13
    iget-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/e$c;->a:Lbtm/m/os4/systemuihook/newnotificationcenter/e$d;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
