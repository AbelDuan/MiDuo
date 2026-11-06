.class final Ldev/duo/hookprobe/T;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/hookprobe/T$f;,
        Ldev/duo/hookprobe/T$d;,
        Ldev/duo/hookprobe/T$e;
    }
.end annotation


# static fields
.field private static A:I = 0x0

.field private static B:I = 0x0

.field static final C:I = -0xcb57ad

.field static final D:I = -0x26cfdb

.field static final E:I = -0xd6700

.field static final F:I = 0x0

.field static final G:I = 0x1

.field static final H:I = 0x2

.field static final I:I = 0x3

.field static final J:I = 0x4

.field private static final K:[I

.field static final L:Ljava/lang/String; = "tab"

.field static final M:I = 0x0

.field static final N:I = 0x1

.field static final O:I = 0x2

.field static final P:I = 0x3

.field static final Q:I = 0x4

.field static final R:I = 0x5

.field static final S:I = 0x6

.field static final T:I = 0x7

.field static final U:I = 0x8

.field static final V:I = 0x9

.field static final W:I = 0xa

.field static final X:I = 0xb

.field static final Y:I = 0xc

.field static final Z:I = 0xd

.field static a:Z = false

.field static final a0:I = 0xe

.field static b:I = 0x0

.field static final b0:I = 0xf

.field static c:I = 0x0

.field static final c0:I = 0x258

.field static d:I = 0x0

.field static final d0:I = 0x348

.field static e:I = 0x0

.field static final e0:I = 0x280

.field static f:I = 0x0

.field static final f0:I = 0xac

.field static g:I = 0x0

.field static final g0:I = 0x14

.field static h:I = 0x0

.field static final h0:I = 0x28

.field static i:I = 0x0

.field static final i0:F = 205.0f

.field static j:I = 0x0

.field static final j0:F = 220.0f

.field static k:I = 0x0

.field static final k0:F = 204.5f

.field static l:I = 0x0

.field static final l0:F = 114.0f

.field static m:I = 0x0

.field static final m0:F = 234.0f

.field static n:I = 0x0

.field static final n0:F = 78.0f

.field static o:I

.field static p:I

.field static q:I

.field static r:I

.field static s:I

.field static t:I

.field static u:I

.field static v:I

.field static w:I

.field static x:I

.field private static y:I

.field private static z:I


# direct methods
.method public static synthetic $r8$lambda$FRiGGcfeF_fz9l5NOLNs3vEy6VU(Ljava/util/function/IntConsumer;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/T;->a(Ljava/util/function/IntConsumer;ILandroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    filled-new-array {v2, v3, v4, v0}, [I

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/T;->K:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;F)I
    .locals 0

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static a(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 4

    .line 69
    sget v0, Ldev/duo/hookprobe/T;->b:I

    const/high16 v1, 0x41a00000    # 20.0f

    const/16 v2, 0x2bc

    invoke-static {p0, v1, v0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const/high16 p1, 0x41b00000    # 22.0f

    invoke-static {p0, p1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, p1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, p1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p1

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 72
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 73
    new-instance v0, Ldev/duo/hookprobe/T$a;

    const v1, 0x1090003

    invoke-direct {v0, p0, v1, p2, p0}, Ldev/duo/hookprobe/T$a;-><init>(Landroid/content/Context;I[Ljava/lang/String;Landroid/app/Activity;)V

    .line 83
    invoke-static {p0, p1}, Ldev/duo/hookprobe/T;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldev/duo/hookprobe/T;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;IIFZF)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 143
    invoke-static {p0, p5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p5

    .line 144
    new-instance p0, Ldev/duo/hookprobe/T$c;

    move v0, p4

    move p4, p1

    move p1, p2

    move p2, p3

    move p3, v0

    invoke-direct/range {p0 .. p5}, Ldev/duo/hookprobe/T$c;-><init>(IFZII)V

    return-object p0
.end method

.method static a(IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 33
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 34
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 35
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private static a(IFFF)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 28
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 29
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    const v1, 0xffffff

    and-int/2addr v1, p0

    .line 30
    filled-new-array {p0, v1}, [I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 31
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 32
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    return-object v0
.end method

.method static a(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 36
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    filled-new-array {p0, p1}, [I

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 37
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    return-object v0
.end method

.method static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    .locals 1

    .line 145
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method static a()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 52
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method static a(Landroid/content/Context;FF)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 53
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, p1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p0, p2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p0

    invoke-direct {v0, p1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method static a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 54
    invoke-static {p1, p2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return-object p0
.end method

.method static a(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 1

    .line 50
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object v0
.end method

.method static a(Landroid/content/Context;IILjava/util/function/IntConsumer;)Landroid/widget/LinearLayout;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v6, p2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez v6, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    move v9, v7

    :goto_0
    if-eqz v9, :cond_1

    .line 147
    invoke-static {v0}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ldev/duo/hookprobe/T;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    :goto_1
    move-object v10, v1

    if-eqz v9, :cond_2

    const/high16 v1, 0x40800000    # 4.0f

    goto :goto_2

    :cond_2
    const/high16 v1, 0x40a00000    # 5.0f

    .line 148
    :goto_2
    invoke-static {v0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v12

    .line 149
    invoke-virtual {v10, v12, v12, v12, v12}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v9, :cond_3

    int-to-float v1, v6

    div-float/2addr v1, v13

    .line 150
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    goto :goto_3

    :cond_3
    const/high16 v1, 0x41f80000    # 31.0f

    :goto_3
    invoke-static {v10, v1}, Ldev/duo/hookprobe/T;->a(Landroid/view/View;F)V

    .line 151
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 152
    const-string v1, "\u5c0f\u529f\u80fd"

    const-string v2, "UI"

    const-string v3, "\u9996\u9875"

    const-string v4, "App"

    const-string v5, ""

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v14

    .line 153
    const/16 v1, 0xd

    const/16 v2, 0xe

    const/4 v15, 0x2

    filled-new-array {v7, v8, v1, v2}, [I

    move-result-object v16

    move v1, v7

    .line 154
    :goto_4
    sget-object v2, Ldev/duo/hookprobe/T;->K:[I

    array-length v3, v2

    if-ge v1, v3, :cond_e

    .line 155
    aget v2, v2, v1

    move/from16 v3, p1

    if-ne v2, v3, :cond_4

    move/from16 v17, v8

    goto :goto_5

    :cond_4
    move/from16 v17, v7

    .line 157
    :goto_5
    invoke-static {v0}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 158
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 159
    const/high16 v5, 0x41b00000    # 22.0f

    invoke-static {v0, v5, v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 160
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 161
    move/from16 v18, v1

    aget v1, v16, v2

    if-eqz v17, :cond_5

    sget v19, Ldev/duo/hookprobe/T;->b:I

    goto :goto_6

    :cond_5
    sget v19, Ldev/duo/hookprobe/T;->c:I

    :goto_6
    if-eqz v17, :cond_6

    const v20, 0x400ccccd    # 2.2f

    goto :goto_7

    :cond_6
    move/from16 v20, v13

    :goto_7
    if-eqz v17, :cond_7

    if-eq v1, v15, :cond_7

    move-object/from16 v21, v4

    move v4, v8

    goto :goto_8

    :cond_7
    move-object/from16 v21, v4

    move v4, v7

    :goto_8
    move-object/from16 v22, v5

    const/high16 v5, 0x41b00000    # 22.0f

    move v7, v2

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v13, v21

    const/16 v11, 0x11

    move/from16 v20, v15

    move-object/from16 v15, v22

    invoke-static/range {v0 .. v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;IIFZF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v13, v1, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v17, :cond_8

    .line 162
    sget v1, Ldev/duo/hookprobe/T;->b:I

    goto :goto_9

    :cond_8
    sget v1, Ldev/duo/hookprobe/T;->c:I

    :goto_9
    if-eqz v17, :cond_9

    const/16 v2, 0x2bc

    goto :goto_a

    :cond_9
    const/16 v2, 0x258

    :goto_a
    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v0, v3, v1, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v1

    .line 163
    aget-object v2, v14, v7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 165
    invoke-static {}, Ldev/duo/hookprobe/T;->c()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 166
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 167
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 168
    invoke-virtual {v13, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v17, :cond_b

    .line 170
    sget v1, Ldev/duo/hookprobe/T;->q:I

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {v0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ldev/duo/hookprobe/T;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 171
    sget-boolean v1, Ldev/duo/hookprobe/T;->a:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    :goto_b
    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 173
    :cond_b
    aget-object v1, v14, v7

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    new-instance v1, Ldev/duo/hookprobe/T$$ExternalSyntheticLambda0;

    move-object/from16 v2, p3

    invoke-direct {v1, v2, v7}, Ldev/duo/hookprobe/T$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-virtual {v13, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v9, :cond_c

    .line 176
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v15, v12, 0x2

    sub-int v3, v6, v15

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v0, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_c

    :cond_c
    const/high16 v1, 0x42900000    # 72.0f

    const/high16 v3, 0x42500000    # 52.0f

    invoke-static {v0, v1, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    :goto_c
    if-eqz v9, :cond_d

    if-lez v18, :cond_d

    .line 177
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_d

    .line 176
    :cond_d
    const/high16 v3, 0x40800000    # 4.0f

    .line 178
    :goto_d
    invoke-virtual {v10, v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v18, 0x1

    move/from16 v15, v20

    const/4 v7, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    goto/16 :goto_4

    :cond_e
    return-object v10
.end method

.method static a(Landroid/content/Context;FII)Landroid/widget/TextView;
    .locals 1

    .line 45
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 47
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 p1, 0x0

    invoke-static {p0, p3, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 55
    sget v0, Ldev/duo/hookprobe/T;->c:I

    const/high16 v1, 0x41500000    # 13.0f

    const/16 v2, 0x258

    invoke-static {p0, v1, v0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {p0, p1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p1

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;
    .locals 4

    if-eqz p2, :cond_0

    .line 58
    sget v0, Ldev/duo/hookprobe/T;->o:I

    goto :goto_0

    :cond_0
    sget v0, Ldev/duo/hookprobe/T;->b:I

    :goto_0
    const/16 v1, 0x258

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2, v0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 62
    invoke-static {p0, p3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 63
    invoke-static {p0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    if-eqz p2, :cond_1

    .line 64
    sget p2, Ldev/duo/hookprobe/T;->n:I

    goto :goto_1

    :cond_1
    sget p2, Ldev/duo/hookprobe/T;->f:I

    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    invoke-static {p0, p3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p2, p0}, Ldev/duo/hookprobe/T;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 66
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-object v0
.end method

.method static a(Landroid/app/Activity;)V
    .locals 7

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Ldev/duo/hookprobe/T;->a:Z

    const v1, -0xb7b7b6

    const v4, -0x71716d

    const v5, -0x51514e

    if-eqz v0, :cond_1

    .line 5
    const v0, -0xa0a09

    sput v0, Ldev/duo/hookprobe/T;->b:I

    const v6, -0x676763

    sput v6, Ldev/duo/hookprobe/T;->c:I

    sput v4, Ldev/duo/hookprobe/T;->d:I

    const v4, -0x9c9c9a

    sput v4, Ldev/duo/hookprobe/T;->e:I

    .line 6
    const v4, 0x3d767680

    sput v4, Ldev/duo/hookprobe/T;->f:I

    const v4, 0x2e767680

    sput v4, Ldev/duo/hookprobe/T;->g:I

    const v4, 0x14ffffff

    sput v4, Ldev/duo/hookprobe/T;->h:I

    const v6, -0xd5d5d2

    sput v6, Ldev/duo/hookprobe/T;->i:I

    sput v4, Ldev/duo/hookprobe/T;->j:I

    .line 7
    sput v5, Ldev/duo/hookprobe/T;->k:I

    const v4, -0xd3d3d2

    sput v4, Ldev/duo/hookprobe/T;->l:I

    const v5, 0x5c787880

    sput v5, Ldev/duo/hookprobe/T;->m:I

    const v5, -0x7f898980

    sput v5, Ldev/duo/hookprobe/T;->n:I

    sput v0, Ldev/duo/hookprobe/T;->o:I

    .line 8
    const v0, -0x739c9c9a

    sput v0, Ldev/duo/hookprobe/T;->p:I

    sput v0, Ldev/duo/hookprobe/T;->q:I

    const v0, -0xb5b5b1

    sput v0, Ldev/duo/hookprobe/T;->r:I

    const v0, -0xd3d3d0

    sput v0, Ldev/duo/hookprobe/T;->s:I

    .line 9
    const v0, -0xc5c5c4

    sput v0, Ldev/duo/hookprobe/T;->t:I

    sput v4, Ldev/duo/hookprobe/T;->u:I

    const v0, -0x1a1a16

    sput v0, Ldev/duo/hookprobe/T;->v:I

    const v0, -0xc5c5c2

    sput v0, Ldev/duo/hookprobe/T;->w:I

    .line 10
    sput v1, Ldev/duo/hookprobe/T;->x:I

    .line 11
    const v0, -0xeeeeed

    sput v0, Ldev/duo/hookprobe/T;->y:I

    const v0, -0xd5d4d0

    sput v0, Ldev/duo/hookprobe/T;->z:I

    const v0, -0xdddcd9

    sput v0, Ldev/duo/hookprobe/T;->A:I

    const v0, -0xdcdbd6

    sput v0, Ldev/duo/hookprobe/T;->B:I

    goto :goto_1

    :cond_1
    nop

    .line 13
    const v0, -0xe2e2e1    # -2.0884E38f

    sput v0, Ldev/duo/hookprobe/T;->b:I

    const v6, -0x91918d

    sput v6, Ldev/duo/hookprobe/T;->c:I

    sput v4, Ldev/duo/hookprobe/T;->d:I

    sput v5, Ldev/duo/hookprobe/T;->e:I

    .line 14
    const v4, 0x1f767680

    sput v4, Ldev/duo/hookprobe/T;->f:I

    const v4, 0x14767680

    sput v4, Ldev/duo/hookprobe/T;->g:I

    const v4, 0x173c3c43

    sput v4, Ldev/duo/hookprobe/T;->h:I

    const v4, -0x30303

    sput v4, Ldev/duo/hookprobe/T;->i:I

    const/4 v4, -0x1

    sput v4, Ldev/duo/hookprobe/T;->j:I

    .line 15
    sput v0, Ldev/duo/hookprobe/T;->k:I

    sput v4, Ldev/duo/hookprobe/T;->l:I

    const v6, 0x3d787880

    sput v6, Ldev/duo/hookprobe/T;->m:I

    sput v0, Ldev/duo/hookprobe/T;->n:I

    sput v4, Ldev/duo/hookprobe/T;->o:I

    .line 16
    sput v4, Ldev/duo/hookprobe/T;->p:I

    sput v4, Ldev/duo/hookprobe/T;->q:I

    sput v1, Ldev/duo/hookprobe/T;->r:I

    sput v0, Ldev/duo/hookprobe/T;->s:I

    .line 17
    const v0, -0x2e2e2a

    sput v0, Ldev/duo/hookprobe/T;->t:I

    sput v5, Ldev/duo/hookprobe/T;->u:I

    sput v4, Ldev/duo/hookprobe/T;->v:I

    const v0, -0x141411

    sput v0, Ldev/duo/hookprobe/T;->w:I

    .line 18
    const v0, -0x383834

    sput v0, Ldev/duo/hookprobe/T;->x:I

    .line 19
    const v0, -0xd0d0b

    sput v0, Ldev/duo/hookprobe/T;->y:I

    sput v4, Ldev/duo/hookprobe/T;->z:I

    const v0, -0x191815

    sput v0, Ldev/duo/hookprobe/T;->A:I

    const v0, -0x1c1b18

    sput v0, Ldev/duo/hookprobe/T;->B:I

    :goto_1
    nop

    .line 22
    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v3}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    sget-boolean v0, Ldev/duo/hookprobe/T;->a:Z

    const/16 v1, 0x18

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-interface {p0, v3, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    return-void
.end method

.method static a(Landroid/app/AlertDialog;)V
    .locals 10

    .line 84
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 85
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Ldev/duo/hookprobe/T;->i:I

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ldev/duo/hookprobe/T;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x440c0000    # 560.0f

    invoke-static {v0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 88
    const/4 v1, -0x3

    const/4 v2, -0x1

    filled-new-array {v2, v3, v1}, [I

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x3

    if-ge v4, v6, :cond_5

    aget v6, v1, v4

    .line 90
    invoke-virtual {p0, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 91
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_4

    :cond_0
    if-ne v6, v2, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v3

    .line 93
    :goto_1
    invoke-virtual {v7, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 94
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v9, 0x258

    invoke-static {v8, v9, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz v6, :cond_2

    .line 96
    sget v8, Ldev/duo/hookprobe/T;->o:I

    goto :goto_2

    :cond_2
    sget v8, Ldev/duo/hookprobe/T;->b:I

    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v6, :cond_3

    .line 97
    sget v6, Ldev/duo/hookprobe/T;->n:I

    goto :goto_3

    :cond_3
    sget v6, Ldev/duo/hookprobe/T;->f:I

    :goto_3
    const/high16 v8, 0x41900000    # 18.0f

    invoke-static {v0, v8}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6, v8}, Ldev/duo/hookprobe/T;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 98
    const/high16 v6, 0x42180000    # 38.0f

    invoke-static {v0, v6}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 99
    invoke-static {v0, v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v0, v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v7, v6, v3, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    nop

    .line 101
    const v0, 0x102000b

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_6

    .line 103
    sget v0, Ldev/duo/hookprobe/T;->c:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_6
    return-void
.end method

.method static a(Landroid/view/View;F)V
    .locals 3

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    sget v1, Ldev/duo/hookprobe/T;->i:I

    invoke-static {v0, p1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v1, p1}, Ldev/duo/hookprobe/T;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    .line 40
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget v2, Ldev/duo/hookprobe/T;->j:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 41
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 42
    const/high16 p1, 0x40400000    # 3.0f

    invoke-static {v0, p1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 43
    sget-boolean p1, Ldev/duo/hookprobe/T;->a:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x66000000

    goto :goto_0

    :cond_0
    const/high16 p1, 0x22000000

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineAmbientShadowColor(I)V

    .line 44
    sget-boolean p1, Ldev/duo/hookprobe/T;->a:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x55000000

    goto :goto_1

    :cond_1
    const/high16 p1, 0x14000000

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    return-void
.end method

.method static a(Landroid/widget/EditText;)V
    .locals 5

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    sget v1, Ldev/duo/hookprobe/T;->b:I

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    sget v1, Ldev/duo/hookprobe/T;->d:I

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 108
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 109
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 110
    sget v1, Ldev/duo/hookprobe/T;->f:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v3}, Ldev/duo/hookprobe/T;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-static {v0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v1, v4, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method static a(Landroid/widget/SeekBar;)V
    .locals 7

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 128
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    .line 129
    sget-boolean v3, Ldev/duo/hookprobe/T;->a:Z

    if-eqz v3, :cond_0

    const v3, 0x52767680

    goto :goto_0

    :cond_0
    const v3, 0x2e767680

    :goto_0
    invoke-static {v3, v1}, Ldev/duo/hookprobe/T;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ClipDrawable;

    sget v5, Ldev/duo/hookprobe/T;->k:I

    invoke-static {v5, v1}, Ldev/duo/hookprobe/T;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    const v5, 0x800003

    const/4 v6, 0x1

    invoke-direct {v4, v1, v5, v6}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v3, v1, v5

    aput-object v4, v1, v6

    invoke-direct {v2, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 130
    const/high16 v1, 0x1020000

    invoke-virtual {v2, v5, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 131
    const v1, 0x102000d

    invoke-virtual {v2, v6, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 132
    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setMinHeight(I)V

    .line 134
    invoke-static {v0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setMaxHeight(I)V

    .line 135
    sget-boolean v1, Ldev/duo/hookprobe/T;->a:Z

    if-eqz v1, :cond_1

    const v1, -0x2e2e2a

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ldev/duo/hookprobe/T;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 136
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x26000000

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 137
    const/high16 v2, 0x42080000    # 34.0f

    invoke-static {v0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 138
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {p0, v5}, Landroid/widget/SeekBar;->setSplitTrack(Z)V

    .line 140
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 141
    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v2, v5, v0, v5}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method static a(Landroid/widget/SeekBar;I)V
    .locals 0

    .line 142
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method static a(Landroid/widget/Switch;)V
    .locals 7

    .line 112
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 114
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 115
    sget v3, Ldev/duo/hookprobe/T;->l:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 116
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget-boolean v3, Ldev/duo/hookprobe/T;->a:Z

    if-eqz v3, :cond_0

    const/high16 v3, 0x33000000

    goto :goto_0

    :cond_0
    const/high16 v3, 0x1f000000

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 117
    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {v0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 118
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v2}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ldev/duo/hookprobe/T;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 120
    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v4, v2, [I

    const v5, 0x10100a0

    filled-new-array {v5}, [I

    move-result-object v5

    filled-new-array {v5, v4}, [[I

    move-result-object v4

    sget v5, Ldev/duo/hookprobe/T;->k:I

    sget v6, Ldev/duo/hookprobe/T;->m:I

    filled-new-array {v5, v6}, [I

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 121
    const/high16 v3, 0x42500000    # 52.0f

    invoke-static {v0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v0, v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 122
    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {p0, v2}, Landroid/widget/Switch;->setShowText(Z)V

    .line 124
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-static {v0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setSwitchMinWidth(I)V

    return-void
.end method

.method static a(Landroid/widget/TextView;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 67
    sget v0, Ldev/duo/hookprobe/T;->o:I

    goto :goto_0

    :cond_0
    sget v0, Ldev/duo/hookprobe/T;->b:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p1, :cond_1

    .line 68
    sget p1, Ldev/duo/hookprobe/T;->n:I

    goto :goto_1

    :cond_1
    sget p1, Ldev/duo/hookprobe/T;->f:I

    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Ldev/duo/hookprobe/T;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static synthetic a(Ljava/util/function/IntConsumer;ILandroid/view/View;)V
    .locals 0

    .line 179
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method static b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Ldev/duo/hookprobe/T;->y:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sget v2, Ldev/duo/hookprobe/T;->z:I

    int-to-float p0, p0

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v3, p0

    .line 4
    const/4 v4, 0x0

    invoke-static {v2, v4, v4, v3}, Ldev/duo/hookprobe/T;->a(IFFF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    sget v4, Ldev/duo/hookprobe/T;->A:I

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr p0, v5

    .line 5
    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    invoke-static {v4, v5, v6, p0}, Ldev/duo/hookprobe/T;->a(IFFF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    sget v4, Ldev/duo/hookprobe/T;->B:I

    .line 6
    const v6, 0x3ecccccd    # 0.4f

    invoke-static {v4, v6, v5, v3}, Ldev/duo/hookprobe/T;->a(IFFF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object p0, v4, v1

    const/4 p0, 0x3

    aput-object v3, v4, p0

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private static b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 12
    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {p0, v0}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v0

    .line 13
    new-instance v1, Ldev/duo/hookprobe/T$b;

    invoke-direct {v1, p1, p0, v0}, Ldev/duo/hookprobe/T$b;-><init>(ILandroid/content/Context;I)V

    return-object v1
.end method

.method static b(Landroid/widget/EditText;)Landroid/view/View;
    .locals 5

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    invoke-static {v0}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 10
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v2

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v0, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 11
    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method static b()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 7
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object v0
.end method

.method static c()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 3
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method static c(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-object v0
.end method
