.class final Ldev/duo/hookprobe/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/reflect/Method;

.field private final e:Ljava/lang/reflect/Method;

.field private final f:Ljava/lang/reflect/Method;

.field private final g:Ljava/lang/reflect/Method;

.field private final h:Ljava/lang/reflect/Method;

.field private final i:Ljava/lang/reflect/Method;

.field private final j:Ljava/lang/reflect/Method;

.field private final k:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private final m:I

.field private final n:Landroid/view/DisplayCutout;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/DisplayCutout;

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v0, p0, Ldev/duo/hookprobe/Q;->n:Landroid/view/DisplayCutout;

    .line 5
    const-string v0, "android.view.InsetsState"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/Q;->a:Ljava/lang/Class;

    .line 6
    const-string v2, "getDisplayFrame"

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Ldev/duo/hookprobe/Q;->b:Ljava/lang/reflect/Method;

    .line 7
    const-string v2, "getDisplayCutout"

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Ldev/duo/hookprobe/Q;->c:Ljava/lang/reflect/Method;

    .line 8
    const-class v2, Landroid/view/DisplayCutout;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setDisplayCutout"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/Q;->d:Ljava/lang/reflect/Method;

    .line 9
    const-string v0, "android.view.InsetsSource"

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 10
    const-string v0, "getType"

    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/Q;->e:Ljava/lang/reflect/Method;

    .line 11
    const-string v0, "getFrame"

    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/Q;->f:Ljava/lang/reflect/Method;

    .line 12
    const-class v0, Landroid/graphics/Rect;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setFrame"

    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/Q;->g:Ljava/lang/reflect/Method;

    .line 13
    const-class v0, Landroid/graphics/Rect;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "updateSideHint"

    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/Q;->h:Ljava/lang/reflect/Method;

    .line 14
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/hookprobe/Q;->k:Ljava/lang/reflect/Constructor;

    if-eqz p2, :cond_0

    .line 15
    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v3

    :goto_0
    iput-object p2, p0, Ldev/duo/hookprobe/Q;->l:Ljava/lang/reflect/Constructor;

    .line 16
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    const-string v1, "setVisible"

    invoke-virtual {p1, v1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Ldev/duo/hookprobe/Q;->i:Ljava/lang/reflect/Method;

    .line 17
    const-class p2, Landroid/view/DisplayCutout;

    const-class v1, Landroid/graphics/Rect;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "replaceSafeInsets"

    invoke-virtual {p2, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Ldev/duo/hookprobe/Q;->j:Ljava/lang/reflect/Method;

    .line 18
    const-class p2, Ljava/lang/Object;

    filled-new-array {p2, v0, v0}, [Ljava/lang/Class;

    move-result-object p2

    const-string v0, "createId"

    invoke-virtual {p1, v0, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 19
    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Ldev/duo/hookprobe/Q;->m:I

    return-void
.end method

.method static a(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/16 v1, 0x6b0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v1, 0x490

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v1, 0x3c3

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    const-string p0, "outer"

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v1, 0x688

    const/16 v2, 0x93c

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-ne p0, v2, :cond_4

    :cond_3
    const-string p0, "inner"

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/Object;)Landroid/graphics/Rect;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/Q;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    return-object p1
.end method

.method a(Ljava/lang/Object;Landroid/util/SparseArray;Landroid/graphics/Rect;IZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/SparseArray<",
            "*>;",
            "Landroid/graphics/Rect;",
            "IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p5, :cond_6

    .line 6
    iget-object p5, p0, Ldev/duo/hookprobe/Q;->c:Ljava/lang/reflect/Method;

    invoke-virtual {p5, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/DisplayCutout;

    if-nez p5, :cond_0

    .line 7
    iget-object p5, p0, Ldev/duo/hookprobe/Q;->n:Landroid/view/DisplayCutout;

    .line 8
    :cond_0
    iget-object v2, p0, Ldev/duo/hookprobe/Q;->j:Ljava/lang/reflect/Method;

    new-instance v3, Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v4

    .line 10
    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v5

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v6

    invoke-direct {v3, v4, p4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 11
    invoke-virtual {v2, p5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/DisplayCutout;

    .line 14
    iget v2, p0, Ldev/duo/hookprobe/Q;->m:I

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 15
    iget-object v2, p0, Ldev/duo/hookprobe/Q;->k:Ljava/lang/reflect/Constructor;

    iget v3, p0, Ldev/duo/hookprobe/Q;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 16
    :cond_1
    iget-object v3, p0, Ldev/duo/hookprobe/Q;->l:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 17
    :cond_2
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v5, p3, Landroid/graphics/Rect;->top:I

    iget v6, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p4, v5

    invoke-direct {v3, v4, v5, v6, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 18
    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p4

    if-ge v1, p4, :cond_5

    .line 19
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    .line 20
    iget-object v4, p0, Ldev/duo/hookprobe/Q;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v4, p4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v5

    if-eq v4, v5, :cond_3

    goto :goto_2

    .line 21
    :cond_3
    iget-object v4, p0, Ldev/duo/hookprobe/Q;->l:Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_4

    .line 22
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v4, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 23
    invoke-virtual {p2, v1, p4}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 25
    :cond_4
    iget-object v4, p0, Ldev/duo/hookprobe/Q;->g:Ljava/lang/reflect/Method;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v4, p0, Ldev/duo/hookprobe/Q;->h:Ljava/lang/reflect/Method;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 28
    :cond_5
    iget-object p4, p0, Ldev/duo/hookprobe/Q;->g:Ljava/lang/reflect/Method;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object p4, p0, Ldev/duo/hookprobe/Q;->i:Ljava/lang/reflect/Method;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object p4, p0, Ldev/duo/hookprobe/Q;->h:Ljava/lang/reflect/Method;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget p3, p0, Ldev/duo/hookprobe/Q;->m:I

    invoke-virtual {p2, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    iget-object p2, p0, Ldev/duo/hookprobe/Q;->d:Ljava/lang/reflect/Method;

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    nop

    .line 36
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p5

    add-int/lit8 p5, p5, -0x1

    move v2, v1

    :goto_3
    if-ltz p5, :cond_c

    .line 37
    invoke-virtual {p2, p5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 38
    iget-object v4, p0, Ldev/duo/hookprobe/Q;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 39
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 40
    iget-object v4, p0, Ldev/duo/hookprobe/Q;->l:Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_7

    .line 41
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 42
    invoke-virtual {p2, p5, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 44
    :cond_7
    iget-object v4, p0, Ldev/duo/hookprobe/Q;->g:Ljava/lang/reflect/Method;

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-direct {v5, v1, v1, v6, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 47
    :cond_8
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v5

    if-eq v4, v5, :cond_9

    goto :goto_4

    .line 48
    :cond_9
    iget-object v4, p0, Ldev/duo/hookprobe/Q;->f:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    if-nez v2, :cond_b

    .line 49
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p3, Landroid/graphics/Rect;->top:I

    if-gt v5, v6, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_b

    .line 50
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-lt v5, v6, :cond_b

    .line 52
    iget-object v5, p0, Ldev/duo/hookprobe/Q;->l:Ljava/lang/reflect/Constructor;

    if-eqz v5, :cond_a

    .line 53
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 54
    invoke-virtual {p2, p5, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 56
    :cond_a
    iget-object v5, p0, Ldev/duo/hookprobe/Q;->g:Ljava/lang/reflect/Method;

    new-instance v6, Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int v9, v8, p4

    invoke-direct {v6, v7, v8, v4, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 59
    :cond_b
    invoke-virtual {p2, p5}, Landroid/util/SparseArray;->removeAt(I)V

    :goto_4
    add-int/lit8 p5, p5, -0x1

    goto/16 :goto_3

    .line 62
    :cond_c
    iget-object p2, p0, Ldev/duo/hookprobe/Q;->d:Ljava/lang/reflect/Method;

    new-instance v2, Landroid/view/DisplayCutout;

    invoke-static {v1, p4, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
