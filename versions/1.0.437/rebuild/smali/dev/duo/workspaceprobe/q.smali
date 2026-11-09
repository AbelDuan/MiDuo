.class final Ldev/duo/workspaceprobe/q;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/workspaceprobe/q$b;,
        Ldev/duo/workspaceprobe/q$d;,
        Ldev/duo/workspaceprobe/q$c;,
        Ldev/duo/workspaceprobe/q$a;
    }
.end annotation


# static fields
.field static final a:F = 0.775f

.field private static final b:F = 116.25f

.field private static final c:F = 89.899994f

.field private static final d:F = 150.0f

.field private static final e:F = 28.0f

.field private static final f:F = 34.0f

.field private static final g:F = 98.0f

.field private static final h:F = 118.0f

.field private static final i:F = 56.0f

.field private static final j:F = 88.0f

.field private static final k:F = 78.0f

.field private static final l:I = 0xcd

.field private static final m:I = 0x104

.field private static final n:[F

.field private static final o:[F

.field private static final p:Ldev/duo/workspaceprobe/q$d;

.field private static final q:Ldev/duo/workspaceprobe/q$d;

.field private static final r:Ldev/duo/workspaceprobe/q$d;

.field private static final s:Ldev/duo/workspaceprobe/q$d;


# instance fields
.field private A:F

.field private B:Ldev/duo/taskcore/Geometry;

.field private final C:Landroid/graphics/Rect;

.field private D:Ldev/duo/workspaceprobe/b$K;

.field private E:Z

.field private final F:Landroid/graphics/RectF;

.field private G:Z

.field private H:Z

.field private I:[Ljava/lang/String;

.field private final t:Ldev/duo/workspaceprobe/b;

.field private final u:Ldev/duo/workspaceprobe/b$h0;

.field private final v:Landroid/widget/FrameLayout;

.field private final w:Ldev/duo/workspaceprobe/q$b;

.field private final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/duo/workspaceprobe/b$J;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ldev/duo/workspaceprobe/q$d;

.field private z:F


# direct methods
.method public static synthetic $r8$lambda$DqeEIMkmKvH62dGHnCcNEQtEMxM(Ldev/duo/workspaceprobe/q;Ldev/duo/workspaceprobe/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/q;->b(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c1ynipUWav1ZkrYtG_L3_kjfPBA(Ldev/duo/workspaceprobe/q;Ldev/duo/workspaceprobe/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/q;->a(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xORZW45vy7D5H79xYnthZDUsSnc(Ldev/duo/workspaceprobe/q;Ljava/lang/String;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/q;->b(Ljava/lang/String;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yJrbrnB5juvzmekAOtFY9vMguU4(Ldev/duo/workspaceprobe/q;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/q;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 23

    .line 1
    const/4 v0, 0x3

    new-array v11, v0, [F

    fill-array-data v11, :array_0

    sput-object v11, Ldev/duo/workspaceprobe/q;->n:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Ldev/duo/workspaceprobe/q;->o:[F

    .line 4
    new-instance v1, Ldev/duo/workspaceprobe/q$d;

    const v9, 0x43758000    # 245.5f

    const v10, 0x43b4e000    # 361.75f

    const-string v2, "land-left"

    const/high16 v3, 0x42a20000    # 81.0f

    const/high16 v4, 0x42fa0000    # 125.0f

    const/4 v5, 0x2

    const/high16 v6, 0x42a20000    # 81.0f

    const/high16 v7, 0x43870000    # 270.0f

    const v8, 0x3f466666    # 0.775f

    invoke-direct/range {v1 .. v11}, Ldev/duo/workspaceprobe/q$d;-><init>(Ljava/lang/String;FFIFFFFF[F)V

    sput-object v1, Ldev/duo/workspaceprobe/q;->p:Ldev/duo/workspaceprobe/q$d;

    .line 7
    new-instance v1, Ldev/duo/workspaceprobe/q$d;

    const v9, 0x433d8000    # 189.5f

    const v10, 0x42928000    # 73.25f

    const-string v2, "land-right"

    const/high16 v3, 0x43b50000    # 362.0f

    const/high16 v4, 0x434d0000    # 205.0f

    const/4 v5, 0x0

    const/high16 v6, 0x43b50000    # 362.0f

    const/high16 v7, 0x43a00000    # 320.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v11}, Ldev/duo/workspaceprobe/q$d;-><init>(Ljava/lang/String;FFIFFFFF[F)V

    sput-object v1, Ldev/duo/workspaceprobe/q;->q:Ldev/duo/workspaceprobe/q$d;

    .line 8
    new-instance v12, Ldev/duo/workspaceprobe/q$d;

    const v20, 0x4299b333    # 76.85f

    const v21, 0x43652666    # 229.15f

    const-string v13, "port-left"

    const v14, 0x43652666    # 229.15f

    const v15, 0x42d7999a    # 107.8f

    const/16 v16, 0x0

    const/high16 v17, 0x429a0000    # 77.0f

    const/high16 v18, 0x43140000    # 148.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v22, v0

    invoke-direct/range {v12 .. v22}, Ldev/duo/workspaceprobe/q$d;-><init>(Ljava/lang/String;FFIFFFFF[F)V

    sput-object v12, Ldev/duo/workspaceprobe/q;->r:Ldev/duo/workspaceprobe/q$d;

    .line 9
    new-instance v12, Ldev/duo/workspaceprobe/q$d;

    const-string v13, "port-right"

    const/16 v16, 0x2

    const/high16 v18, 0x42dc0000    # 110.0f

    const v19, 0x3f466666    # 0.775f

    invoke-direct/range {v12 .. v22}, Ldev/duo/workspaceprobe/q$d;-><init>(Ljava/lang/String;FFIFFFFF[F)V

    sput-object v12, Ldev/duo/workspaceprobe/q;->s:Ldev/duo/workspaceprobe/q$d;

    return-void

    :array_0
    .array-data 4
        0x42928000    # 73.25f
        0x433d8000    # 189.5f
        0x4398e000    # 305.75f
    .end array-data

    :array_1
    .array-data 4
        0x437b547b    # 251.33f
        0x43b7ca3d
        0x43f1ea3d
    .end array-data
.end method

.method constructor <init>(Ldev/duo/workspaceprobe/b;Landroid/content/Context;Z)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/q;->x:Ljava/util/List;

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/q;->C:Landroid/graphics/Rect;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/q;->F:Landroid/graphics/RectF;

    .line 18
    iput-object p1, p0, Ldev/duo/workspaceprobe/q;->t:Ldev/duo/workspaceprobe/b;

    .line 19
    iput-boolean p3, p0, Ldev/duo/workspaceprobe/q;->G:Z

    .line 20
    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 21
    new-instance p3, Ldev/duo/workspaceprobe/b$h0;

    const/4 v0, 0x0

    invoke-direct {p3, p2, v0}, Ldev/duo/workspaceprobe/b$h0;-><init>(Landroid/content/Context;Z)V

    iput-object p3, p0, Ldev/duo/workspaceprobe/q;->u:Ldev/duo/workspaceprobe/b$h0;

    .line 22
    iput-boolean v0, p3, Ldev/duo/workspaceprobe/b$h0;->U:Z

    .line 23
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/q;->v:Landroid/widget/FrameLayout;

    .line 24
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0xcd

    const/16 v3, 0x104

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    const-string p3, "\u63a7\u5236\u4e2d\u5fc3"

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 26
    new-instance p3, Ldev/duo/workspaceprobe/q$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Ldev/duo/workspaceprobe/q$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/q;Ldev/duo/workspaceprobe/b;)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    new-instance p3, Ldev/duo/workspaceprobe/q$b;

    invoke-direct {p3, p2}, Ldev/duo/workspaceprobe/q$b;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Ldev/duo/workspaceprobe/q;->w:Ldev/duo/workspaceprobe/q$b;

    .line 28
    const-string p2, "\u901a\u77e5\u4e2d\u5fc3"

    invoke-virtual {p3, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 29
    new-instance p2, Ldev/duo/workspaceprobe/q$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Ldev/duo/workspaceprobe/q$$ExternalSyntheticLambda1;-><init>(Ldev/duo/workspaceprobe/q;Ldev/duo/workspaceprobe/b;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a()V
    .locals 4

    .line 41
    invoke-direct {p0}, Ldev/duo/workspaceprobe/q;->d()I

    move-result v0

    .line 42
    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->u:Ldev/duo/workspaceprobe/b$h0;

    iput v0, v1, Ldev/duo/workspaceprobe/b$h0;->h0:I

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 44
    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->w:Ldev/duo/workspaceprobe/q$b;

    iput v0, v1, Ldev/duo/workspaceprobe/q$b;->e:I

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 46
    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/duo/workspaceprobe/b$J;

    iget-boolean v3, p0, Ldev/duo/workspaceprobe/q;->G:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Ldev/duo/workspaceprobe/b$J;->a(II)V

    goto :goto_0

    .line 47
    :cond_0
    iget-boolean v1, p0, Ldev/duo/workspaceprobe/q;->E:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->t:Ldev/duo/workspaceprobe/b;

    iget-object v2, p0, Ldev/duo/workspaceprobe/q;->D:Ldev/duo/workspaceprobe/b$K;

    iget-boolean v3, p0, Ldev/duo/workspaceprobe/q;->G:Z

    invoke-virtual {v1, v2, v3}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b$K;Z)V

    :cond_1
    const/4 v1, 0x0

    .line 48
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Ldev/duo/workspaceprobe/q$c;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Ldev/duo/workspaceprobe/q$c;

    iput v0, v2, Ldev/duo/workspaceprobe/q$c;->b:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private a(Landroid/view/View;FFFF)V
    .locals 1

    .line 37
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    invoke-direct {v0, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 38
    iget p4, p0, Ldev/duo/workspaceprobe/q;->z:F

    add-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 39
    iget p2, p0, Ldev/duo/workspaceprobe/q;->A:F

    add-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 40
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic a(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/q;->H:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Ldev/duo/workspaceprobe/b;->q(Landroid/view/View;)V

    invoke-virtual {p1}, Ldev/duo/workspaceprobe/b;->z0()V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;FF)V
    .locals 9

    .line 18
    new-instance v0, Ldev/duo/workspaceprobe/b$J;

    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->t:Ldev/duo/workspaceprobe/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Ldev/duo/workspaceprobe/b$J;-><init>(Ldev/duo/workspaceprobe/b;Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    new-instance v1, Ldev/duo/workspaceprobe/q$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Ldev/duo/workspaceprobe/q$$ExternalSyntheticLambda2;-><init>(Ldev/duo/workspaceprobe/q;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "wechat"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alipay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    new-instance v2, Ldev/duo/workspaceprobe/q$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Ldev/duo/workspaceprobe/q$$ExternalSyntheticLambda3;-><init>(Ldev/duo/workspaceprobe/q;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 25
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 27
    new-instance v4, Ldev/duo/workspaceprobe/q$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v4, p1}, Ldev/duo/workspaceprobe/q$a;-><init>(Landroid/content/Context;)V

    .line 28
    const/high16 p1, 0x40e00000    # 7.0f

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 29
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x88

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 30
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 31
    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    const/high16 p1, 0x42960000    # 75.0f

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 33
    const v1, 0x3f466666    # 0.775f

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    sub-float v5, p2, p1

    sub-float v6, p3, p1

    .line 34
    const/high16 v7, 0x43160000    # 150.0f

    const/high16 v8, 0x43160000    # 150.0f

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Ldev/duo/workspaceprobe/q;->a(Landroid/view/View;FFFF)V

    .line 35
    iget-object p1, v3, Ldev/duo/workspaceprobe/q;->x:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 36
    iget-boolean p2, p0, Ldev/duo/workspaceprobe/q;->H:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Ldev/duo/workspaceprobe/q;->t:Ldev/duo/workspaceprobe/b;

    invoke-virtual {p2, p1}, Ldev/duo/workspaceprobe/b;->A(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(F)V
    .locals 9

    .line 2
    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->D:Ldev/duo/workspaceprobe/b$K;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->t:Ldev/duo/workspaceprobe/b;

    invoke-virtual {v0, p0}, Ldev/duo/workspaceprobe/b;->b(Ldev/duo/workspaceprobe/q;)Ldev/duo/workspaceprobe/b$K;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/workspaceprobe/q;->D:Ldev/duo/workspaceprobe/b$K;

    .line 3
    :cond_0
    invoke-static {}, Ldev/duo/workspaceprobe/b;->u2()I

    move-result v0

    invoke-static {}, Ldev/duo/workspaceprobe/b;->t2()I

    move-result v1

    .line 4
    iget-object v2, p0, Ldev/duo/workspaceprobe/q;->D:Ldev/duo/workspaceprobe/b$K;

    iget-object v4, v2, Ldev/duo/workspaceprobe/b$K;->d:Landroid/widget/FrameLayout;

    .line 5
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 6
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 7
    const v2, 0x3f466666    # 0.775f

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 8
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    int-to-float v7, v0

    mul-float v0, v7, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    sub-float v5, p1, v3

    .line 9
    iget-object p1, p0, Ldev/duo/workspaceprobe/q;->y:Ldev/duo/workspaceprobe/q$d;

    iget-object p1, p1, Ldev/duo/workspaceprobe/q$d;->i:[F

    const/4 v3, 0x0

    aget p1, p1, v3

    const v3, 0x4252cccc    # 52.699997f

    sub-float v6, p1, v3

    int-to-float v8, v1

    .line 10
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Ldev/duo/workspaceprobe/q;->a(Landroid/view/View;FFFF)V

    .line 11
    iget-object p1, v3, Ldev/duo/workspaceprobe/q;->F:Landroid/graphics/RectF;

    iget v1, v3, Ldev/duo/workspaceprobe/q;->z:F

    add-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget v4, v3, Ldev/duo/workspaceprobe/q;->A:F

    add-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iget v7, v3, Ldev/duo/workspaceprobe/q;->z:F

    add-float/2addr v5, v7

    .line 12
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget v0, v3, Ldev/duo/workspaceprobe/q;->A:F

    add-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v8, v2

    add-float/2addr v0, v8

    .line 13
    invoke-virtual {p1, v1, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 15
    const/4 p1, 0x1

    iput-boolean p1, v3, Ldev/duo/workspaceprobe/q;->E:Z

    .line 16
    iget-object p1, v3, Ldev/duo/workspaceprobe/q;->t:Ldev/duo/workspaceprobe/b;

    iget-object v0, v3, Ldev/duo/workspaceprobe/q;->D:Ldev/duo/workspaceprobe/b$K;

    invoke-virtual {p1, v0}, Ldev/duo/workspaceprobe/b;->b(Ldev/duo/workspaceprobe/b$K;)V

    return-void
.end method

.method private synthetic b(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/q;->H:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Ldev/duo/workspaceprobe/b;->q(Landroid/view/View;)V

    invoke-virtual {p1}, Ldev/duo/workspaceprobe/b;->A0()V

    :cond_0
    return-void
.end method

.method private synthetic b(Ljava/lang/String;Landroid/view/View;)Z
    .locals 0

    .line 19
    iget-boolean p2, p0, Ldev/duo/workspaceprobe/q;->H:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Ldev/duo/workspaceprobe/q;->t:Ldev/duo/workspaceprobe/b;

    invoke-virtual {p2, p1}, Ldev/duo/workspaceprobe/b;->A(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private d()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/q;->G:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const v0, -0xcfcdc8

    return v0
.end method


# virtual methods
.method a(II)I
    .locals 2

    .line 15
    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->B:Ldev/duo/taskcore/Geometry;

    invoke-virtual {v0}, Ldev/duo/taskcore/Geometry;->b()I

    move-result v0

    .line 16
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/q;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/2addr v0, p2

    return v0

    :cond_0
    sub-int/2addr v0, p2

    sub-int/2addr v0, p1

    return v0
.end method

.method a(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 53
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method a(Ldev/duo/taskcore/Geometry;Landroid/graphics/Rect;)V
    .locals 5

    .line 2
    iget-object v0, p1, Ldev/duo/taskcore/Geometry;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p1, Ldev/duo/taskcore/Geometry;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 3
    iget-boolean v0, p1, Ldev/duo/taskcore/Geometry;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Ldev/duo/workspaceprobe/q;->s:Ldev/duo/workspaceprobe/q$d;

    goto :goto_0

    :cond_0
    sget-object v0, Ldev/duo/workspaceprobe/q;->r:Ldev/duo/workspaceprobe/q$d;

    goto :goto_0

    :cond_1
    iget-boolean v0, p1, Ldev/duo/taskcore/Geometry;->c:Z

    if-eqz v0, :cond_2

    sget-object v0, Ldev/duo/workspaceprobe/q;->q:Ldev/duo/workspaceprobe/q$d;

    goto :goto_0

    :cond_2
    sget-object v0, Ldev/duo/workspaceprobe/q;->p:Ldev/duo/workspaceprobe/q$d;

    .line 4
    :goto_0
    iget-object v1, p1, Ldev/duo/taskcore/Geometry;->e:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 5
    iput-object p1, p0, Ldev/duo/workspaceprobe/q;->B:Ldev/duo/taskcore/Geometry;

    .line 6
    iget-object p1, p0, Ldev/duo/workspaceprobe/q;->y:Ldev/duo/workspaceprobe/q$d;

    const/4 v3, 0x0

    if-ne v0, p1, :cond_3

    iget p1, p0, Ldev/duo/workspaceprobe/q;->z:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_3

    iget p1, p0, Ldev/duo/workspaceprobe/q;->A:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_3

    iget-object p1, p0, Ldev/duo/workspaceprobe/q;->C:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    move p1, v3

    .line 7
    :goto_1
    iget-object v4, p0, Ldev/duo/workspaceprobe/q;->C:Landroid/graphics/Rect;

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_4

    return-void

    .line 9
    :cond_4
    iget-object p1, p0, Ldev/duo/workspaceprobe/q;->t:Ldev/duo/workspaceprobe/b;

    invoke-virtual {p1, p0, v3}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/q;Z)V

    .line 10
    iput-object v0, p0, Ldev/duo/workspaceprobe/q;->y:Ldev/duo/workspaceprobe/q$d;

    .line 11
    iput v2, p0, Ldev/duo/workspaceprobe/q;->z:F

    .line 12
    iput v1, p0, Ldev/duo/workspaceprobe/q;->A:F

    .line 13
    const/4 p1, 0x0

    iput-object p1, p0, Ldev/duo/workspaceprobe/q;->I:[Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/q;->g()V

    return-void
.end method

.method a(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Ldev/duo/workspaceprobe/q;->H:Z

    return-void
.end method

.method a(F)Z
    .locals 3

    .line 17
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/q;->f()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->B:Ldev/duo/taskcore/Geometry;

    invoke-virtual {v0}, Ldev/duo/taskcore/Geometry;->b()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->B:Ldev/duo/taskcore/Geometry;

    invoke-virtual {v0}, Ldev/duo/taskcore/Geometry;->b()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method b(Z)V
    .locals 1

    .line 20
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/q;->G:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 21
    :cond_0
    iput-boolean p1, p0, Ldev/duo/workspaceprobe/q;->G:Z

    .line 22
    invoke-direct {p0}, Ldev/duo/workspaceprobe/q;->a()V

    return-void
.end method

.method b()[I
    .locals 2

    .line 17
    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->B:Ldev/duo/taskcore/Geometry;

    invoke-virtual {v0}, Ldev/duo/taskcore/Geometry;->b()I

    move-result v0

    .line 18
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/q;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->B:Ldev/duo/taskcore/Geometry;

    iget-object v1, v1, Ldev/duo/taskcore/Geometry;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->B:Ldev/duo/taskcore/Geometry;

    iget-object v1, v1, Ldev/duo/taskcore/Geometry;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    filled-new-array {v1, v0}, [I

    move-result-object v0

    return-object v0
.end method

.method c()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->u:Ldev/duo/workspaceprobe/b$h0;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2
    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->w:Ldev/duo/workspaceprobe/q$b;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 3
    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/workspaceprobe/b$J;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Ldev/duo/workspaceprobe/q$c;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5
    :cond_2
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/q;->E:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->t:Ldev/duo/workspaceprobe/b;

    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->D:Ldev/duo/workspaceprobe/b$K;

    invoke-virtual {v0, v1}, Ldev/duo/workspaceprobe/b;->i(Ldev/duo/workspaceprobe/b$K;)V

    :cond_3
    return-void
.end method

.method e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->y:Ldev/duo/workspaceprobe/q$d;

    if-nez v0, :cond_0

    const-string v0, "-"

    return-object v0

    :cond_0
    iget-object v0, v0, Ldev/duo/workspaceprobe/q$d;->a:Ljava/lang/String;

    return-object v0
.end method

.method f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->B:Ldev/duo/taskcore/Geometry;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Ldev/duo/taskcore/Geometry;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method g()V
    .locals 13

    .line 1
    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->y:Ldev/duo/workspaceprobe/q$d;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->t:Ldev/duo/workspaceprobe/b;

    iget-object v6, v1, Ldev/duo/workspaceprobe/b;->a6:[Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    const/4 v7, 0x0

    iput-boolean v7, p0, Ldev/duo/workspaceprobe/q;->E:Z

    .line 6
    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->v:Landroid/widget/FrameLayout;

    iget-object v2, p0, Ldev/duo/workspaceprobe/q;->y:Ldev/duo/workspaceprobe/q$d;

    iget v3, v2, Ldev/duo/workspaceprobe/q$d;->b:F

    const/high16 v8, 0x42600000    # 56.0f

    sub-float/2addr v3, v8

    iget v2, v2, Ldev/duo/workspaceprobe/q$d;->c:F

    const/high16 v9, 0x42b00000    # 88.0f

    sub-float/2addr v2, v9

    const/high16 v4, 0x42e00000    # 112.0f

    const/high16 v5, 0x43260000    # 166.0f

    move v0, v3

    move v3, v2

    move v2, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ldev/duo/workspaceprobe/q;->a(Landroid/view/View;FFFF)V

    .line 7
    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->u:Ldev/duo/workspaceprobe/b$h0;

    iget-object v2, p0, Ldev/duo/workspaceprobe/q;->y:Ldev/duo/workspaceprobe/q$d;

    iget v2, v2, Ldev/duo/workspaceprobe/q$d;->b:F

    const/high16 v3, 0x42c40000    # 98.0f

    sub-float v3, v2, v3

    sub-float/2addr v2, v8

    sub-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setX(F)V

    .line 8
    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->u:Ldev/duo/workspaceprobe/b$h0;

    iget-object v2, p0, Ldev/duo/workspaceprobe/q;->y:Ldev/duo/workspaceprobe/q$d;

    iget v2, v2, Ldev/duo/workspaceprobe/q$d;->c:F

    const/high16 v3, 0x42ec0000    # 118.0f

    sub-float v3, v2, v3

    sub-float/2addr v2, v9

    sub-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setY(F)V

    .line 9
    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->w:Ldev/duo/workspaceprobe/q$b;

    iget-object v2, p0, Ldev/duo/workspaceprobe/q;->y:Ldev/duo/workspaceprobe/q$d;

    iget v3, v2, Ldev/duo/workspaceprobe/q$d;->g:I

    iput v3, v1, Ldev/duo/workspaceprobe/q$b;->c:I

    const/4 v8, 0x2

    const/4 v4, 0x1

    if-ne v3, v8, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_0
    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v7

    :goto_1
    const/high16 v3, 0x42c00000    # 96.0f

    if-eqz v5, :cond_3

    move v9, v3

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    const/high16 v9, 0x42100000    # 36.0f

    goto :goto_2

    :cond_4
    const/high16 v9, 0x42d00000    # 104.0f

    :goto_2
    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_6

    const/high16 v3, 0x42fc0000    # 126.0f

    goto :goto_3

    :cond_6
    const/high16 v3, 0x42680000    # 58.0f

    :goto_3
    if-eqz v5, :cond_7

    const/high16 v4, 0x42400000    # 48.0f

    :goto_4
    move v10, v4

    goto :goto_5

    :cond_7
    if-eqz v4, :cond_8

    const/high16 v4, 0x42500000    # 52.0f

    goto :goto_4

    :cond_8
    const/high16 v4, 0x41900000    # 18.0f

    goto :goto_4

    .line 14
    :goto_5
    iget v4, v2, Ldev/duo/workspaceprobe/q$d;->d:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float v12, v9, v11

    sub-float/2addr v4, v12

    iget v2, v2, Ldev/duo/workspaceprobe/q$d;->e:F

    sub-float/2addr v2, v10

    move-object v0, p0

    move v5, v3

    move v3, v2

    move v2, v4

    move v4, v9

    invoke-direct/range {v0 .. v5}, Ldev/duo/workspaceprobe/q;->a(Landroid/view/View;FFFF)V

    .line 15
    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->w:Ldev/duo/workspaceprobe/q$b;

    invoke-virtual {v1, v12}, Landroid/view/View;->setPivotX(F)V

    .line 16
    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->w:Ldev/duo/workspaceprobe/q$b;

    invoke-virtual {v1, v10}, Landroid/view/View;->setPivotY(F)V

    .line 17
    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->w:Ldev/duo/workspaceprobe/q$b;

    iget-object v2, p0, Ldev/duo/workspaceprobe/q;->y:Ldev/duo/workspaceprobe/q$d;

    iget v2, v2, Ldev/duo/workspaceprobe/q$d;->f:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 18
    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->w:Ldev/duo/workspaceprobe/q$b;

    iget-object v2, p0, Ldev/duo/workspaceprobe/q;->y:Ldev/duo/workspaceprobe/q$d;

    iget v2, v2, Ldev/duo/workspaceprobe/q$d;->f:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    move v9, v7

    :goto_6
    if-ge v9, v8, :cond_f

    .line 20
    invoke-static {v6, v9}, Ldev/duo/hookprobe/J;->c([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 21
    iget-object v2, p0, Ldev/duo/workspaceprobe/q;->y:Ldev/duo/workspaceprobe/q$d;

    iget-object v2, v2, Ldev/duo/workspaceprobe/q$d;->h:[F

    aget v2, v2, v9

    .line 22
    const-string v3, "sidebar"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 23
    invoke-direct {p0, v2}, Ldev/duo/workspaceprobe/q;->b(F)V

    goto :goto_9

    :cond_9
    if-eqz v1, :cond_a

    .line 27
    new-instance v1, Ldev/duo/workspaceprobe/q$c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Dock"

    invoke-direct {v1, v3, v4}, Ldev/duo/workspaceprobe/q$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    iget-object v3, p0, Ldev/duo/workspaceprobe/q;->y:Ldev/duo/workspaceprobe/q$d;

    iget-object v3, v3, Ldev/duo/workspaceprobe/q$d;->i:[F

    aget v3, v3, v7

    const v4, 0x4233cccc    # 44.949997f

    sub-float/2addr v3, v4

    sub-float/2addr v2, v4

    sub-float/2addr v2, v11

    sub-float/2addr v3, v11

    .line 29
    const v4, 0x42bbcccc    # 93.899994f

    const v5, 0x43a33333    # 326.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ldev/duo/workspaceprobe/q;->a(Landroid/view/View;FFFF)V

    goto :goto_9

    :cond_a
    move v1, v7

    :goto_7
    const/4 v3, 0x3

    if-ge v1, v3, :cond_e

    .line 33
    invoke-static {v9, v1}, Ldev/duo/hookprobe/J;->a(II)I

    move-result v3

    aget-object v3, v6, v3

    if-eqz v3, :cond_d

    .line 34
    const-string v4, "-"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_8

    .line 35
    :cond_b
    const-string v4, "app:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_c

    goto :goto_8

    .line 36
    :cond_c
    iget-object v4, p0, Ldev/duo/workspaceprobe/q;->y:Ldev/duo/workspaceprobe/q$d;

    iget-object v4, v4, Ldev/duo/workspaceprobe/q$d;->i:[F

    aget v4, v4, v1

    invoke-direct {p0, v3, v2, v4}, Ldev/duo/workspaceprobe/q;->a(Ljava/lang/String;FF)V

    :cond_d
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 39
    :cond_f
    iput-object v6, p0, Ldev/duo/workspaceprobe/q;->I:[Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ldev/duo/workspaceprobe/q;->a()V

    .line 41
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/q;->h()V

    return-void
.end method

.method h()V
    .locals 4

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->t:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->Z0:Ldev/duo/workspaceprobe/b$h0;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->u:Ldev/duo/workspaceprobe/b$h0;

    invoke-virtual {v1, v0}, Ldev/duo/workspaceprobe/b$h0;->d(Ldev/duo/workspaceprobe/b$h0;)V

    .line 4
    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->w:Ldev/duo/workspaceprobe/q$b;

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$h0;->a0:[Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Ldev/duo/workspaceprobe/q$b;->a:[Landroid/graphics/drawable/Drawable;

    .line 5
    iget-boolean v2, v0, Ldev/duo/workspaceprobe/b$h0;->V:Z

    iput-boolean v2, v1, Ldev/duo/workspaceprobe/q$b;->b:Z

    .line 6
    iget v0, v0, Ldev/duo/workspaceprobe/b$h0;->b0:I

    iput v0, v1, Ldev/duo/workspaceprobe/q$b;->d:I

    .line 8
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->u:Ldev/duo/workspaceprobe/b$h0;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 9
    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->w:Ldev/duo/workspaceprobe/q$b;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 10
    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/workspaceprobe/b$J;

    iget-object v2, v1, Ldev/duo/workspaceprobe/b$J;->a:Ljava/lang/String;

    const-string v3, "lastapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ldev/duo/workspaceprobe/q;->t:Ldev/duo/workspaceprobe/b;

    invoke-virtual {v2}, Ldev/duo/workspaceprobe/b;->q2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldev/duo/workspaceprobe/b$J;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method i()I
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->B:Ldev/duo/taskcore/Geometry;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->C:Landroid/graphics/Rect;

    :goto_0
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0

    :cond_0
    iget-object v0, v0, Ldev/duo/taskcore/Geometry;->b:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method j()Ldev/duo/workspaceprobe/b$K;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/q;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/workspaceprobe/q;->D:Ldev/duo/workspaceprobe/b$K;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method k()Landroid/graphics/Rect;
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Ldev/duo/workspaceprobe/q;->C:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Ldev/duo/workspaceprobe/q;->F:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Ldev/duo/workspaceprobe/q;->C:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Ldev/duo/workspaceprobe/q;->F:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Ldev/duo/workspaceprobe/q;->C:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Ldev/duo/workspaceprobe/q;->F:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    .line 2
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Ldev/duo/workspaceprobe/q;->C:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Ldev/duo/workspaceprobe/q;->F:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/q;->H:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/q;->H:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
