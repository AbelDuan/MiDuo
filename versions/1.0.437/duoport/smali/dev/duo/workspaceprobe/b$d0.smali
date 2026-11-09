.class final Ldev/duo/workspaceprobe/b$d0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d0"
.end annotation


# static fields
.field static final a:I = 0x3c3

.field static final b:I = 0xc8

.field static final c:I = 0x131

.field static final d:I = 0x2df

.field static final e:I = 0x51e

.field static final f:I = 0x38

.field static final g:I = 0x3

.field static final h:I = 0x80

.field static final i:I = 0x1c


# instance fields
.field private A:Z

.field B:Ldev/duo/workspaceprobe/b$W;

.field C:F

.field D:F

.field final E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field F:Z

.field final synthetic G:Ldev/duo/workspaceprobe/b;

.field final j:Ldev/duo/workspaceprobe/b$K;

.field final k:I

.field final l:I

.field final m:I

.field final n:I

.field final o:I

.field final p:F

.field private final q:Landroid/view/WindowManager;

.field private final r:Z

.field private final s:I

.field private final t:I

.field private final u:Landroid/widget/FrameLayout;

.field private final v:Landroid/widget/FrameLayout;

.field private final w:Landroid/widget/LinearLayout;

.field private final x:Landroid/widget/EditText;

.field private final y:Ldev/duo/workspaceprobe/b$Z;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6UG7b7eKYIelUEtxxacNDoIYy_U(Ldev/duo/workspaceprobe/b$d0;ZLjava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/workspaceprobe/b$d0;->a(ZLjava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jtz4vJ6wALd4Xw-D3lRD_ZvETs8(Ldev/duo/workspaceprobe/b$d0;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$d0;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$Uu4XhWrSjbMQd78Vay2rAvY9YTU(Ldev/duo/workspaceprobe/b$d0;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/duo/workspaceprobe/b$d0;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$c8xmV9KI-j6js4Ba8Zsf2Fvenx0(Ldev/duo/workspaceprobe/b$d0;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/b$d0;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fFEhqAGDbbiOHE8yfOFb5B70Fi0(Ldev/duo/workspaceprobe/b$d0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b$d0;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gdNM2ZUgScdOElUeyaZA1JmJ0Vw(Ldev/duo/workspaceprobe/b$d0;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/workspaceprobe/b$d0;->a(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mbSjdsh2UVMr8DHHFk7ni2y7sTo(Ldev/duo/workspaceprobe/b$d0;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$d0;->b()V

    return-void
.end method

.method public static synthetic $r8$lambda$pR1KhfbZsnGhCW3cT4_atKfxWWg(Ldev/duo/workspaceprobe/b$d0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b$d0;->a(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Ldev/duo/workspaceprobe/b;Ldev/duo/workspaceprobe/b$K;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v3, v1, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    const-class v4, Landroid/view/WindowManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, v0, Ldev/duo/workspaceprobe/b$d0;->q:Landroid/view/WindowManager;

    .line 3
    iget-object v3, v1, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-static {v3}, Ldev/duo/workspaceprobe/b;->b(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, v0, Ldev/duo/workspaceprobe/b$d0;->r:Z

    if-eqz v3, :cond_0

    const v4, -0xd0d09

    goto :goto_0

    :cond_0
    const v4, -0xe3e3e2

    .line 4
    :goto_0
    iput v4, v0, Ldev/duo/workspaceprobe/b$d0;->s:I

    if-eqz v3, :cond_1

    const v5, -0xd3d3d2

    goto :goto_1

    :cond_1
    const v5, -0x1b1b18

    :goto_1
    iput v5, v0, Ldev/duo/workspaceprobe/b$d0;->t:I

    .line 11
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v6, v0, Ldev/duo/workspaceprobe/b$d0;->z:Ljava/util/List;

    .line 17
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Ldev/duo/workspaceprobe/b$d0;->E:Ljava/util/List;

    .line 21
    iput-object v2, v0, Ldev/duo/workspaceprobe/b$d0;->j:Ldev/duo/workspaceprobe/b$K;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    .line 22
    :cond_2
    iget-object v2, v2, Ldev/duo/workspaceprobe/b$K;->a:Ldev/duo/workspaceprobe/q;

    :goto_2
    const v6, 0x4437c000    # 735.0f

    const/16 v7, 0x28

    const/16 v8, 0x2df

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v2, :cond_3

    .line 24
    iput v10, v0, Ldev/duo/workspaceprobe/b$d0;->k:I

    const/16 v2, 0x3c3

    iput v2, v0, Ldev/duo/workspaceprobe/b$d0;->l:I

    const/16 v2, 0x6b0

    iput v2, v0, Ldev/duo/workspaceprobe/b$d0;->m:I

    const/16 v2, 0xc8

    iput v2, v0, Ldev/duo/workspaceprobe/b$d0;->n:I

    const/16 v2, 0x131

    iput v2, v0, Ldev/duo/workspaceprobe/b$d0;->o:I

    iput v6, v0, Ldev/duo/workspaceprobe/b$d0;->p:F

    goto :goto_3

    .line 26
    :cond_3
    invoke-virtual {v2}, Ldev/duo/workspaceprobe/q;->b()[I

    move-result-object v11

    .line 27
    aget v12, v11, v10

    iput v12, v0, Ldev/duo/workspaceprobe/b$d0;->k:I

    .line 28
    aget v11, v11, v9

    iput v11, v0, Ldev/duo/workspaceprobe/b$d0;->l:I

    .line 29
    invoke-virtual {v2}, Ldev/duo/workspaceprobe/q;->i()I

    move-result v11

    iput v11, v0, Ldev/duo/workspaceprobe/b$d0;->m:I

    .line 30
    const/16 v13, 0x1c

    invoke-virtual {v2, v8, v13}, Ldev/duo/workspaceprobe/q;->a(II)I

    move-result v13

    sub-int/2addr v13, v12

    iput v13, v0, Ldev/duo/workspaceprobe/b$d0;->n:I

    .line 31
    invoke-virtual {v2}, Ldev/duo/workspaceprobe/q;->k()Landroid/graphics/Rect;

    move-result-object v12

    add-int/lit16 v11, v11, -0x546

    .line 33
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    add-int/lit16 v12, v12, -0x28f

    .line 34
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v0, Ldev/duo/workspaceprobe/b$d0;->o:I

    .line 36
    invoke-virtual {v2}, Ldev/duo/workspaceprobe/q;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v6, 0x0

    :cond_4
    iput v6, v0, Ldev/duo/workspaceprobe/b$d0;->p:F

    .line 38
    :goto_3
    new-instance v2, Ldev/duo/workspaceprobe/b$d0$a;

    iget-object v6, v1, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-direct {v2, v0, v6, v1}, Ldev/duo/workspaceprobe/b$d0$a;-><init>(Ldev/duo/workspaceprobe/b$d0;Landroid/content/Context;Ldev/duo/workspaceprobe/b;)V

    iput-object v2, v0, Ldev/duo/workspaceprobe/b$d0;->u:Landroid/widget/FrameLayout;

    .line 47
    new-instance v6, Ldev/duo/workspaceprobe/b$d0$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Ldev/duo/workspaceprobe/b$d0$$ExternalSyntheticLambda1;-><init>(Ldev/duo/workspaceprobe/b$d0;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51
    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v11, v1, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-direct {v6, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Ldev/duo/workspaceprobe/b$d0;->v:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_5

    const v11, -0x8e3e3e2

    goto :goto_4

    :cond_5
    const v11, -0x80b0b0a

    .line 52
    :goto_4
    const/high16 v12, 0x42800000    # 64.0f

    invoke-static {v11, v12}, Ldev/duo/workspaceprobe/b;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    const/high16 v11, 0x41c00000    # 24.0f

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 54
    invoke-virtual {v6, v9}, Landroid/view/View;->setClickable(Z)V

    .line 55
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v12, v1, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    const/16 v12, 0x38

    invoke-virtual {v11, v12, v12, v12, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 58
    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v14, v1, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    const/16 v14, 0x10

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 60
    new-instance v15, Landroid/widget/EditText;

    iget-object v8, v1, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-direct {v15, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Ldev/duo/workspaceprobe/b$d0;->x:Landroid/widget/EditText;

    .line 61
    const-string v8, "\u641c\u7d22\u5e94\u7528"

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 63
    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {v15, v10, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 64
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v3, :cond_6

    const v8, -0x7f0d0d09

    goto :goto_5

    :cond_6
    const v8, -0x7fc3c3bd

    .line 65
    :goto_5
    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 66
    const/high16 v8, 0x42600000    # 56.0f

    invoke-static {v5, v8}, Ldev/duo/workspaceprobe/b;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    const/16 v8, 0x70

    const/16 v9, 0x20

    invoke-virtual {v15, v8, v10, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 68
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 69
    const/4 v7, 0x3

    invoke-virtual {v15, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 70
    new-instance v7, Landroid/widget/FrameLayout;

    iget-object v9, v1, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v9, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v9, Ldev/duo/workspaceprobe/b$a0;

    iget-object v8, v1, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    if-eqz v3, :cond_7

    const v3, -0x51514e

    goto :goto_6

    :cond_7
    const v3, -0xc3c3bd

    :goto_6
    invoke-direct {v9, v8, v10, v3}, Ldev/duo/workspaceprobe/b$a0;-><init>(Landroid/content/Context;II)V

    .line 73
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 74
    iput v14, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 75
    const/16 v8, 0x26

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 76
    invoke-virtual {v7, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0x70

    invoke-direct {v3, v10, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    new-instance v3, Ldev/duo/workspaceprobe/b$Z;

    iget-object v7, v1, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-direct {v3, v7, v5, v4}, Ldev/duo/workspaceprobe/b$Z;-><init>(Landroid/content/Context;II)V

    iput-object v3, v0, Ldev/duo/workspaceprobe/b$d0;->y:Ldev/duo/workspaceprobe/b$Z;

    .line 79
    new-instance v5, Ldev/duo/workspaceprobe/b$d0$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Ldev/duo/workspaceprobe/b$d0$$ExternalSyntheticLambda2;-><init>(Ldev/duo/workspaceprobe/b$d0;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x70

    invoke-direct {v5, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    const/16 v7, 0x20

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 82
    invoke-virtual {v13, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v3, Landroid/widget/TextView;

    iget-object v5, v1, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 85
    const-string v5, "\u5168\u90e8\u5c0f\u7a97\u5e94\u7528"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const/high16 v5, 0x42100000    # 36.0f

    invoke-virtual {v3, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 87
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v5, 0x1f4

    invoke-static {v4, v5, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    const/16 v7, 0x28

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 91
    const/16 v7, 0xc

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 92
    const/16 v7, 0x14

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 93
    invoke-virtual {v11, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v3, Landroid/widget/ScrollView;

    iget-object v4, v1, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v3, v10}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 96
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 97
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 98
    const/16 v7, 0x78

    invoke-virtual {v3, v7}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 99
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v9, v1, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Ldev/duo/workspaceprobe/b$d0;->w:Landroid/widget/LinearLayout;

    .line 100
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 102
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v4, v9, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v11, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x51e

    const/16 v5, 0x2df

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 106
    iget v4, v0, Ldev/duo/workspaceprobe/b$d0;->n:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 107
    iget v4, v0, Ldev/duo/workspaceprobe/b$d0;->o:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 108
    invoke-virtual {v2, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v2, Ldev/duo/workspaceprobe/b$d0$b;

    invoke-direct {v2, v0, v1}, Ldev/duo/workspaceprobe/b$d0$b;-><init>(Ldev/duo/workspaceprobe/b$d0;Ldev/duo/workspaceprobe/b;)V

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 10

    .line 21
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    iget-object v1, v1, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 24
    const/4 v2, 0x0

    const/16 v3, 0x1c

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 25
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    iget-object v4, v4, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    iget-object v5, v5, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {v4, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x80

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 29
    const/16 v6, 0x10

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 30
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 31
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object v5, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    invoke-static {v5}, Ldev/duo/workspaceprobe/b;->m(Ldev/duo/workspaceprobe/b;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 33
    iget-object v6, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    invoke-static {v6}, Ldev/duo/workspaceprobe/b;->v(Ldev/duo/workspaceprobe/b;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v5, :cond_0

    .line 34
    new-instance v6, Ldev/duo/workspaceprobe/b$V;

    iget-object v7, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    iget-object v7, v7, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-direct {v6, v7, v1}, Ldev/duo/workspaceprobe/b$V;-><init>(Landroid/content/Context;Z)V

    .line 35
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x35

    const/16 v9, 0x30

    invoke-direct {v7, v9, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    :cond_0
    iget-object v6, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    invoke-static {v6}, Ldev/duo/workspaceprobe/b;->v(Ldev/duo/workspaceprobe/b;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    const v6, 0x3eb33333    # 0.35f

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 38
    :cond_1
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x90

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    iget-object v7, v7, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 42
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 43
    const/16 v1, 0x11

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 44
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v6, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    iget-boolean v1, p0, Ldev/duo/workspaceprobe/b$d0;->r:Z

    if-eqz v1, :cond_2

    const v1, -0x330d0d09

    goto :goto_0

    :cond_2
    const v1, -0x33c3c3bd    # -4.934478E7f

    :goto_0
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v7, -0x2

    invoke-direct {v1, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    const/4 v2, 0x6

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 48
    invoke-virtual {v0, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50
    new-instance p2, Ldev/duo/workspaceprobe/b$d0$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, v5, p1}, Ldev/duo/workspaceprobe/b$d0$$ExternalSyntheticLambda3;-><init>(Ldev/duo/workspaceprobe/b$d0;ZLjava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance p2, Ldev/duo/workspaceprobe/b$d0$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, v4, p1, p3}, Ldev/duo/workspaceprobe/b$d0$$ExternalSyntheticLambda4;-><init>(Ldev/duo/workspaceprobe/b$d0;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 64
    new-instance p1, Ldev/duo/workspaceprobe/b$d0$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v3}, Ldev/duo/workspaceprobe/b$d0$$ExternalSyntheticLambda5;-><init>(Ldev/duo/workspaceprobe/b$d0;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/b$d0;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/workspaceprobe/b$d0;->w:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/b$d0;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$d0;->z:Ljava/util/List;

    return-object p1
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 4
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->v(Ldev/duo/workspaceprobe/b;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ldev/duo/workspaceprobe/b;->c(Ldev/duo/workspaceprobe/b;Z)V

    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 1

    .line 5
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->k(Ldev/duo/workspaceprobe/b;)Ldev/duo/workspaceprobe/b$d0;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$d0;->z:Ljava/util/List;

    .line 7
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/b$d0;->d()V

    return-void
.end method

.method private synthetic a(ZLjava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 65
    iget-object p3, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    invoke-static {p3}, Ldev/duo/workspaceprobe/b;->v(Ldev/duo/workspaceprobe/b;)Z

    move-result p3

    if-eqz p3, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    invoke-static {p1, p2}, Ldev/duo/workspaceprobe/b;->g(Ldev/duo/workspaceprobe/b;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 66
    :cond_1
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->p(Ldev/duo/workspaceprobe/b;)V

    .line 67
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->w(Ldev/duo/workspaceprobe/b;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    invoke-static {p1, p2}, Ldev/duo/workspaceprobe/b;->i(Ldev/duo/workspaceprobe/b;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_2
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    invoke-static {p1, p2}, Ldev/duo/workspaceprobe/b;->j(Ldev/duo/workspaceprobe/b;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->p(Ldev/duo/workspaceprobe/b;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic a(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 72
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Ldev/duo/workspaceprobe/b$d0;->C:F

    .line 73
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Ldev/duo/workspaceprobe/b$d0;->D:F

    .line 74
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->B:Ldev/duo/workspaceprobe/b$W;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$W;->b:Landroid/view/View;

    if-ne v2, p2, :cond_0

    .line 75
    invoke-virtual {v0, p3}, Ldev/duo/workspaceprobe/b$W;->a(Landroid/view/MotionEvent;)V

    return v1

    .line 78
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-nez p2, :cond_1

    .line 79
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x3f6b851f    # 0.92f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x5a

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_3

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xb4

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    :goto_0
    return v1
.end method

.method private synthetic a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View;)Z
    .locals 9

    .line 69
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->B:Ldev/duo/workspaceprobe/b$W;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 70
    :cond_0
    new-instance v2, Ldev/duo/workspaceprobe/b$W;

    iget-object v3, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v5, p4

    invoke-direct/range {v2 .. v8}, Ldev/duo/workspaceprobe/b$W;-><init>(Ldev/duo/workspaceprobe/b;Ldev/duo/workspaceprobe/b$d0;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, v4, Ldev/duo/workspaceprobe/b$d0;->B:Ldev/duo/workspaceprobe/b$W;

    .line 71
    invoke-virtual {v2}, Ldev/duo/workspaceprobe/b$W;->f()V

    return v1
.end method

.method static synthetic b(Ldev/duo/workspaceprobe/b$d0;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/workspaceprobe/b$d0;->z:Ljava/util/List;

    return-object p0
.end method

.method private synthetic b()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->q:Landroid/view/WindowManager;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$d0;->u:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    const-string v1, "DuoRail"

    const-string v2, "Sidebar panel remove failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic c()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->x(Ldev/duo/workspaceprobe/b;)Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    iget-object v1, v1, Ldev/duo/workspaceprobe/b;->D1:Landroid/os/Handler;

    new-instance v2, Ldev/duo/workspaceprobe/b$d0$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Ldev/duo/workspaceprobe/b$d0$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/b$d0;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 8
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/b$d0;->A:Z

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/b$d0;->A:Z

    .line 10
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    iget-object v1, v1, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1

    .line 11
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$d0;->x:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 12
    :cond_1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->B:Ldev/duo/workspaceprobe/b$W;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ldev/duo/workspaceprobe/b$W;->c()V

    .line 13
    :cond_2
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 14
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Ldev/duo/workspaceprobe/b$d0$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Ldev/duo/workspaceprobe/b$d0$$ExternalSyntheticLambda6;-><init>(Ldev/duo/workspaceprobe/b$d0;)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 20
    const-string v0, "DuoRail"

    const-string v1, "Sidebar panel close"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method d()V
    .locals 14

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->y:Ldev/duo/workspaceprobe/b$Z;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    invoke-static {v1}, Ldev/duo/workspaceprobe/b;->v(Ldev/duo/workspaceprobe/b;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ldev/duo/workspaceprobe/b$Z;->a(Z)V

    .line 2
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->x:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Ldev/duo/workspaceprobe/b$d0;->F:Z

    .line 8
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$d0;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 9
    aget-object v8, v6, v4

    check-cast v8, Ljava/lang/String;

    aget-object v9, v6, v2

    check-cast v9, Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 11
    invoke-virtual {v8, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    nop

    .line 12
    rem-int/lit8 v10, v5, 0x3

    const/4 v11, -0x2

    if-nez v10, :cond_1

    .line 13
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v10, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    iget-object v10, v10, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-direct {v3, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 15
    iget-object v10, p0, Ldev/duo/workspaceprobe/b$d0;->w:Landroid/widget/LinearLayout;

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    invoke-direct {v12, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    nop

    .line 17
    const/4 v10, 0x2

    aget-object v6, v6, v10

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v8, v9, v6}, Ldev/duo/workspaceprobe/b$d0;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v6

    .line 18
    iget-object v8, p0, Ldev/duo/workspaceprobe/b$d0;->E:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v4, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 22
    const/4 v0, 0x3

    rem-int/2addr v5, v0

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    if-ge v5, v0, :cond_3

    .line 23
    new-instance v1, Landroid/view/View;

    iget-object v6, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    iget-object v6, v6, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method e()V
    .locals 8

    .line 1
    const-string v1, "DuoRail"

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Ldev/duo/workspaceprobe/b$d0;->l:I

    iget v3, p0, Ldev/duo/workspaceprobe/b$d0;->k:I

    sub-int v3, v0, v3

    const v6, 0x1000120

    const/4 v7, -0x3

    const/4 v4, -0x1

    const/16 v5, 0x7e1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 8
    const/16 v0, 0x33

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 9
    const/4 v3, 0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 10
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 11
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 13
    iget v0, p0, Ldev/duo/workspaceprobe/b$d0;->k:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 14
    const-string v0, "DuoSidebarPanel"

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 16
    :try_start_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->q:Landroid/view/WindowManager;

    iget-object v4, p0, Ldev/duo/workspaceprobe/b$d0;->u:Landroid/widget/FrameLayout;

    invoke-interface {v0, v4, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/b$d0;->A:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->j:Ldev/duo/workspaceprobe/b$K;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$K;->a:Ldev/duo/workspaceprobe/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->r(Ldev/duo/workspaceprobe/b;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->t(Ldev/duo/workspaceprobe/b;)I

    move-result v0

    .line 25
    :goto_0
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$d0;->v:Landroid/widget/FrameLayout;

    iget v4, p0, Ldev/duo/workspaceprobe/b$d0;->p:F

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 26
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$d0;->v:Landroid/widget/FrameLayout;

    iget v4, p0, Ldev/duo/workspaceprobe/b$d0;->o:I

    sub-int/2addr v0, v4

    const/16 v4, 0x51e

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 27
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->v:Landroid/widget/FrameLayout;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 28
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 29
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->v:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 30
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    const v4, 0x3f333333    # 0.7f

    invoke-direct {v3, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 31
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 32
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 33
    const-string v0, "Sidebar panel open"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->u(Ldev/duo/workspaceprobe/b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Ldev/duo/workspaceprobe/b$d0$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Ldev/duo/workspaceprobe/b$d0$$ExternalSyntheticLambda7;-><init>(Ldev/duo/workspaceprobe/b$d0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    .line 35
    const-string v2, "Sidebar panel unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d0;->G:Ldev/duo/workspaceprobe/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;Ldev/duo/workspaceprobe/b$d0;)Ldev/duo/workspaceprobe/b$d0;

    return-void
.end method
