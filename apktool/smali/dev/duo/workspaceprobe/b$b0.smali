.class final Ldev/duo/workspaceprobe/b$b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b0"
.end annotation


# static fields
.field static final i:I = 0x1a4

.field static final j:I = 0x3b7

.field static final k:I = 0x80

.field static final l:I = 0x70

.field static final m:I = 0x3

.field static final n:I = 0x3c

.field static final o:I = 0x6b0


# instance fields
.field private final a:Landroid/view/WindowManager;

.field private final b:Landroid/widget/FrameLayout;

.field private final c:Landroid/widget/LinearLayout;

.field private final d:F

.field private final e:F

.field private final f:Z

.field private g:Z

.field final synthetic h:Ldev/duo/workspaceprobe/b;


# direct methods
.method public static synthetic $r8$lambda$0E9wlNPuRpfxxSTQS9KZvAUK3Dg(Ldev/duo/workspaceprobe/b$b0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b$b0;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7A1gOeKBUsxckcOb-1Vy8pvhnHo(Ldev/duo/workspaceprobe/b$b0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b$b0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7y-W-sUrX9B57uY7FsG0RVBTs_w(Ldev/duo/workspaceprobe/b$b0;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/b$b0;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$O9iBg4EkkkKBKZVaf9Sd2CZU3CM(Ldev/duo/workspaceprobe/b$b0;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$b0;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$OetybmVmAYGuADS2PZ3UlbGZyJA(Ldev/duo/workspaceprobe/b$b0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b$b0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q6MUShZJfyEQonpe_WRjaVSckIk(Ldev/duo/workspaceprobe/b$b0;Ljava/lang/String;ZLjava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/duo/workspaceprobe/b$b0;->a(Ljava/lang/String;ZLjava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bMMSFHadRelwGTrHAj2T4F4-3Wk(Ldev/duo/workspaceprobe/b$b0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b$b0;->d(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ldev/duo/workspaceprobe/b;Ljava/lang/String;ZIIFZ)V
    .locals 8

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$b0;->h:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$b0;->a:Landroid/view/WindowManager;

    .line 10
    iput p6, p0, Ldev/duo/workspaceprobe/b$b0;->d:F

    .line 11
    iput-boolean p7, p0, Ldev/duo/workspaceprobe/b$b0;->f:Z

    .line 12
    iget-object p6, p1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-static {p6}, Ldev/duo/workspaceprobe/b;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const p6, -0xd0d09

    goto :goto_0

    :cond_0
    const p6, -0xe3e3e2

    :goto_0
    move v3, p6

    .line 14
    new-instance p6, Ldev/duo/workspaceprobe/b$b0$a;

    iget-object p7, p1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-direct {p6, p0, p7, p1}, Ldev/duo/workspaceprobe/b$b0$a;-><init>(Ldev/duo/workspaceprobe/b$b0;Landroid/content/Context;Ldev/duo/workspaceprobe/b;)V

    iput-object p6, p0, Ldev/duo/workspaceprobe/b$b0;->b:Landroid/widget/FrameLayout;

    .line 23
    new-instance p7, Ldev/duo/workspaceprobe/b$b0$$ExternalSyntheticLambda2;

    invoke-direct {p7, p0}, Ldev/duo/workspaceprobe/b$b0$$ExternalSyntheticLambda2;-><init>(Ldev/duo/workspaceprobe/b$b0;)V

    invoke-virtual {p6, p7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 27
    new-instance p6, Landroid/widget/LinearLayout;

    iget-object p7, p1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-direct {p6, p7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p6, p0, Ldev/duo/workspaceprobe/b$b0;->c:Landroid/widget/LinearLayout;

    .line 28
    const/4 p7, 0x1

    invoke-virtual {p6, p7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz v2, :cond_1

    const v0, -0x8d3d3d2

    goto :goto_1

    :cond_1
    const v0, -0x8000001

    .line 29
    :goto_1
    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Ldev/duo/workspaceprobe/b;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 30
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {p6, v0}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 31
    invoke-virtual {p6, p7}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    .line 32
    invoke-virtual {p6, p7}, Landroid/view/View;->setClickable(Z)V

    .line 33
    new-instance p6, Landroid/widget/LinearLayout;

    iget-object v0, p1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-direct {p6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/16 v0, 0x10

    invoke-virtual {p6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 35
    const/16 v0, 0x24

    const/4 v7, 0x0

    invoke-virtual {p6, v0, v7, v0, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 36
    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v4, Landroid/widget/TextView;

    iget-object v0, p1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    :try_start_0
    invoke-static {p1, p2}, Ldev/duo/workspaceprobe/b;->e(Ldev/duo/workspaceprobe/b;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 40
    :goto_2
    invoke-static {p1, p2}, Ldev/duo/workspaceprobe/b;->f(Ldev/duo/workspaceprobe/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v0, 0x48

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p6, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-virtual {v4, p7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 43
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 44
    const/high16 p1, 0x42100000    # 36.0f

    invoke-virtual {v4, v7, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 p7, 0x1f4

    invoke-static {p1, p7, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 47
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p7, -0x2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v7, p7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 48
    const/16 p7, 0x18

    iput p7, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 49
    invoke-virtual {p6, v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$b0;->c:Landroid/widget/LinearLayout;

    new-instance p7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/16 v1, 0x80

    invoke-direct {p7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p6, p7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance v6, Ldev/duo/workspaceprobe/b$b0$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, p2}, Ldev/duo/workspaceprobe/b$b0$$ExternalSyntheticLambda3;-><init>(Ldev/duo/workspaceprobe/b$b0;Ljava/lang/String;)V

    const-string v4, "\u5168\u5c4f\u6253\u5f00"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ldev/duo/workspaceprobe/b$b0;->a(ZILjava/lang/String;ZLjava/lang/Runnable;)V

    .line 52
    new-instance v6, Ldev/duo/workspaceprobe/b$b0$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, p2}, Ldev/duo/workspaceprobe/b$b0$$ExternalSyntheticLambda4;-><init>(Ldev/duo/workspaceprobe/b$b0;Ljava/lang/String;)V

    const-string v4, "\u5c0f\u7a97\u6253\u5f00"

    invoke-direct/range {v1 .. v6}, Ldev/duo/workspaceprobe/b$b0;->a(ZILjava/lang/String;ZLjava/lang/Runnable;)V

    if-eqz p3, :cond_2

    .line 53
    new-instance v6, Ldev/duo/workspaceprobe/b$b0$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, p2}, Ldev/duo/workspaceprobe/b$b0$$ExternalSyntheticLambda5;-><init>(Ldev/duo/workspaceprobe/b$b0;Ljava/lang/String;)V

    const-string v4, "\u4ece\u4fa7\u680f\u79fb\u9664"

    const/4 v5, 0x0

    const v3, -0xc4d0

    invoke-direct/range {v1 .. v6}, Ldev/duo/workspaceprobe/b$b0;->a(ZILjava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_3

    .line 54
    :cond_2
    new-instance v6, Ldev/duo/workspaceprobe/b$b0$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0, p2}, Ldev/duo/workspaceprobe/b$b0$$ExternalSyntheticLambda6;-><init>(Ldev/duo/workspaceprobe/b$b0;Ljava/lang/String;)V

    const-string v4, "\u56fa\u5b9a\u5230\u4fa7\u680f"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Ldev/duo/workspaceprobe/b$b0;->a(ZILjava/lang/String;ZLjava/lang/Runnable;)V

    :goto_3
    add-int/lit16 p1, p5, -0xe9

    .line 56
    const/16 p2, 0x4a1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 p2, 0x3c

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p5, p1

    .line 57
    const/16 p2, 0x1d3

    invoke-static {p2, p5}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {v7, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, v1, Ldev/duo/workspaceprobe/b$b0;->e:F

    .line 58
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p5, 0x1a4

    invoke-direct {p3, p5, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 60
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 61
    iget-object p1, v1, Ldev/duo/workspaceprobe/b$b0;->b:Landroid/widget/FrameLayout;

    iget-object p2, v1, Ldev/duo/workspaceprobe/b$b0;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 4
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/b$b0;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$b0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->m(Ldev/duo/workspaceprobe/b;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$b0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->n(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/b$b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$b0;->a()V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$b0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {v0, p1}, Ldev/duo/workspaceprobe/b;->j(Ldev/duo/workspaceprobe/b;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;ZLjava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    .line 27
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sidebar menu "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p4, p0, Ldev/duo/workspaceprobe/b$b0;->f:Z

    if-eqz p4, :cond_0

    const-string p4, " (panel)"

    goto :goto_0

    :cond_0
    const-string p4, ""

    :goto_0
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "DuoRail"

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 28
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$b0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->n(Ldev/duo/workspaceprobe/b;)V

    goto :goto_1

    .line 29
    :cond_1
    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$b0;->a()V

    .line 30
    :goto_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private a(ZILjava/lang/String;ZLjava/lang/Runnable;)V
    .locals 6

    .line 6
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$b0;->h:Ldev/duo/workspaceprobe/b;

    iget-object v1, v1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x1f000000

    if-eqz p1, :cond_0

    const v2, 0x26ffffff

    goto :goto_0

    :cond_0
    move v2, v1

    .line 7
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$b0;->c:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$b0;->h:Ldev/duo/workspaceprobe/b;

    iget-object v2, v2, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 12
    const/16 v2, 0x2c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 13
    const/high16 v2, 0x42180000    # 38.0f

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 14
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    new-instance p2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_1

    const v1, 0x33ffffff

    .line 16
    :cond_1
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v2, 0x0

    invoke-direct {p2, p1, v2, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 17
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    new-instance p1, Ldev/duo/workspaceprobe/b$b0$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p3, p4, p5}, Ldev/duo/workspaceprobe/b$b0$$ExternalSyntheticLambda1;-><init>(Ldev/duo/workspaceprobe/b$b0;Ljava/lang/String;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$b0;->c:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p3, 0x70

    invoke-direct {p2, v5, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$b0;->a()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$b0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {v0, p1}, Ldev/duo/workspaceprobe/b;->i(Ldev/duo/workspaceprobe/b;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic c()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$b0;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$b0;->b:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    const-string v1, "DuoRail"

    const-string v2, "Sidebar menu remove failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$b0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {v0, p1}, Ldev/duo/workspaceprobe/b;->h(Ldev/duo/workspaceprobe/b;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$b0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {v0, p1}, Ldev/duo/workspaceprobe/b;->g(Ldev/duo/workspaceprobe/b;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 3

    .line 2
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/b$b0;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/b$b0;->g:Z

    .line 4
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$b0;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$b0;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Ldev/duo/workspaceprobe/b$b0$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/duo/workspaceprobe/b$b0$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/b$b0;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method d()V
    .locals 8

    const-string v1, "DuoRail"

    .line 2
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const v6, 0x1000100

    const/4 v7, -0x3

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x7e1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 9
    const/16 v0, 0x33

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 10
    const/4 v0, 0x3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 11
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 12
    const-string v0, "DuoSidebarMenu"

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    :try_start_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$b0;->a:Landroid/view/WindowManager;

    iget-object v3, p0, Ldev/duo/workspaceprobe/b$b0;->b:Landroid/widget/FrameLayout;

    invoke-interface {v0, v3, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/b$b0;->g:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$b0;->c:Landroid/widget/LinearLayout;

    iget v2, p0, Ldev/duo/workspaceprobe/b$b0;->d:F

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 22
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$b0;->c:Landroid/widget/LinearLayout;

    iget v2, p0, Ldev/duo/workspaceprobe/b$b0;->e:F

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 23
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$b0;->c:Landroid/widget/LinearLayout;

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 24
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$b0;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 25
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$b0;->c:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 26
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$b0;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 27
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 28
    const-string v0, "Sidebar menu open"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    .line 29
    const-string v2, "Sidebar menu unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$b0;->h:Ldev/duo/workspaceprobe/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;Ldev/duo/workspaceprobe/b$b0;)Ldev/duo/workspaceprobe/b$b0;

    return-void
.end method
