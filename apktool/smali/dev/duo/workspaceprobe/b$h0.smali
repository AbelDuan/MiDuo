.class final Ldev/duo/workspaceprobe/b$h0;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h0"
.end annotation


# static fields
.field static final A:F = 257.0f

.field static final B:F = 226.0f

.field static final C:I = 0xcd

.field static final D:I

.field static final E:I = 0x1a4

.field private static final F:I

.field private static final G:I = 0x1a0

.field private static final H:I = 0x195

.field private static final I:I = 0xf

.field private static final J:Landroid/graphics/Path;

.field private static final K:Landroid/graphics/Typeface;

.field private static final L:Landroid/graphics/Typeface;

.field static final a:F = 48.6f

.field static final b:F = 98.0f

.field static final c:F = 146.0f

.field private static final d:F = 8.067599f

.field private static final e:F = 6.804f

.field private static final f:F = 6.804f

.field private static final g:F = 31.0f

.field private static final h:F = 149.0f

.field private static final i:F = 28.0f

.field private static final j:F = 152.0f

.field private static final k:[F

.field private static final l:F = 5.1029997f

.field private static final m:F = 29.986198f

.field private static final n:F = 64.400604f

.field private static final o:F = 21.869999f

.field private static final p:F = 2.916f

.field private static final q:F = 5.0f

.field private static final r:F = 35.235f

.field private static final s:F = 9.72f

.field private static final t:F = 13.122f

.field private static final u:F = 4.131f

.field private static final v:F = 33.534f

.field private static final w:F = -3.645f

.field static final x:F = 224.0f

.field static final y:F = 28.0f

.field static final z:F = 6.0f


# instance fields
.field private final A0:Landroid/graphics/RectF;

.field private final B0:Landroid/graphics/Path;

.field M:F

.field N:Z

.field O:Z

.field P:Z

.field Q:Z

.field R:Z

.field S:Z

.field T:Z

.field U:Z

.field V:Z

.field W:F

.field a0:[Landroid/graphics/drawable/Drawable;

.field b0:I

.field c0:Ljava/lang/String;

.field d0:I

.field e0:I

.field f0:Z

.field g0:I

.field private final h0:Landroid/graphics/Paint;

.field private final i0:Landroid/graphics/Path;

.field private final j0:Landroid/graphics/Matrix;

.field private k0:Z

.field private l0:Z

.field private m0:Z

.field private n0:Z

.field private o0:F

.field private p0:F

.field private q0:F

.field private r0:I

.field private s0:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final t0:Landroid/graphics/Rect;

.field private final u0:Landroid/graphics/Rect;

.field private final v0:Landroid/graphics/Paint;

.field private final w0:Landroid/graphics/Paint;

.field private final x0:Landroid/graphics/Rect;

.field private final y0:Landroid/graphics/Paint;

.field private final z0:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$Dw_ePY76qiiauf2HoVban42t85k(Ldev/duo/workspaceprobe/b$h0;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Ldev/duo/workspaceprobe/b$h0;->a(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Ldev/duo/workspaceprobe/b$h0;->k:[F

    .line 19
    const-wide v0, 0x4071e999a0000000L    # 286.6000061035156

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Ldev/duo/workspaceprobe/b$h0;->D:I

    .line 21
    const-wide v0, 0x4069555d00000000L    # 202.6676025390625

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Ldev/duo/workspaceprobe/b$h0;->F:I

    .line 40
    invoke-static {}, Ldev/duo/workspaceprobe/b$h0;->b()Landroid/graphics/Path;

    move-result-object v0

    sput-object v0, Ldev/duo/workspaceprobe/b$h0;->J:Landroid/graphics/Path;

    .line 41
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v1, 0x258

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Ldev/duo/workspaceprobe/b$h0;->K:Landroid/graphics/Typeface;

    .line 42
    const/16 v1, 0x2bc

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Ldev/duo/workspaceprobe/b$h0;->L:Landroid/graphics/Typeface;

    return-void

    :array_0
    .array-data 4
        0x42f20000    # 121.0f
        0x42cb0000    # 101.5f
        0x42a00000    # 80.0f
        0x426c0000    # 59.0f
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ldev/duo/workspaceprobe/b$h0;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 17

    .line 2
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Ldev/duo/workspaceprobe/b$h0;->M:F

    .line 5
    const/4 v2, 0x1

    iput-boolean v2, v0, Ldev/duo/workspaceprobe/b$h0;->R:Z

    iput-boolean v2, v0, Ldev/duo/workspaceprobe/b$h0;->T:Z

    .line 7
    iput v1, v0, Ldev/duo/workspaceprobe/b$h0;->W:F

    .line 8
    const/4 v3, 0x0

    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v4, v0, Ldev/duo/workspaceprobe/b$h0;->a0:[Landroid/graphics/drawable/Drawable;

    .line 9
    const/4 v4, -0x1

    iput v4, v0, Ldev/duo/workspaceprobe/b$h0;->b0:I

    .line 10
    const-string v5, ""

    iput-object v5, v0, Ldev/duo/workspaceprobe/b$h0;->c0:Ljava/lang/String;

    .line 11
    iput v4, v0, Ldev/duo/workspaceprobe/b$h0;->d0:I

    .line 12
    iput v4, v0, Ldev/duo/workspaceprobe/b$h0;->e0:I

    .line 14
    iput v4, v0, Ldev/duo/workspaceprobe/b$h0;->g0:I

    .line 15
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Ldev/duo/workspaceprobe/b$h0;->h0:Landroid/graphics/Paint;

    .line 16
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v0, Ldev/duo/workspaceprobe/b$h0;->i0:Landroid/graphics/Path;

    .line 17
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, v0, Ldev/duo/workspaceprobe/b$h0;->j0:Landroid/graphics/Matrix;

    .line 24
    const/16 v5, 0x195

    iput v5, v0, Ldev/duo/workspaceprobe/b$h0;->r0:I

    .line 26
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v0, Ldev/duo/workspaceprobe/b$h0;->t0:Landroid/graphics/Rect;

    .line 27
    new-instance v7, Landroid/graphics/Rect;

    sget v8, Ldev/duo/workspaceprobe/b$h0;->F:I

    const/16 v9, 0xcd

    invoke-direct {v7, v3, v8, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, v0, Ldev/duo/workspaceprobe/b$h0;->u0:Landroid/graphics/Rect;

    .line 28
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Ldev/duo/workspaceprobe/b$h0;->v0:Landroid/graphics/Paint;

    .line 29
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v0, Ldev/duo/workspaceprobe/b$h0;->w0:Landroid/graphics/Paint;

    .line 30
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v0, Ldev/duo/workspaceprobe/b$h0;->x0:Landroid/graphics/Rect;

    .line 31
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, v0, Ldev/duo/workspaceprobe/b$h0;->y0:Landroid/graphics/Paint;

    .line 32
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v0, Ldev/duo/workspaceprobe/b$h0;->z0:Landroid/graphics/Paint;

    .line 33
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Ldev/duo/workspaceprobe/b$h0;->A0:Landroid/graphics/RectF;

    .line 34
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Ldev/duo/workspaceprobe/b$h0;->B0:Landroid/graphics/Path;

    .line 40
    const/high16 v2, 0x40c00000    # 6.0f

    const/4 v10, 0x0

    const/high16 v11, 0x26000000

    invoke-virtual {v4, v2, v10, v1, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 41
    const-string v4, "23:59"

    const v12, 0x41efe3bc

    invoke-static {v4, v12, v3}, Ldev/duo/workspaceprobe/h;->a(Ljava/lang/String;FZ)F

    move-result v4

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v4, v12

    add-float/2addr v4, v2

    const v12, 0x4262ab9f

    invoke-static {v12, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v12, 0x42c40000    # 98.0f

    sub-float v13, v12, v4

    float-to-double v13, v13

    .line 42
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    const-wide v14, 0x403c6a1680000000L    # 28.414405822753906

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    add-float/2addr v4, v12

    float-to-double v1, v4

    .line 43
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const-wide v15, 0x4069555d00000000L    # 202.6676025390625

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    .line 44
    invoke-virtual {v6, v13, v14, v1, v10}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p2, :cond_0

    .line 47
    :try_start_0
    const-string v1, "android.view.ViewTreeObserver$OnComputeInternalInsetsListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 48
    const-string v6, "android.view.ViewTreeObserver$InternalInsetsInfo"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 49
    const-string v10, "setTouchableInsets"

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v11}, [Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 50
    const-string v11, "touchableRegion"

    invoke-virtual {v6, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 51
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v13

    new-instance v14, Ldev/duo/workspaceprobe/b$h0$$ExternalSyntheticLambda0;

    invoke-direct {v14, v0, v10, v6}, Ldev/duo/workspaceprobe/b$h0$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/b$h0;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    invoke-static {v11, v13, v14}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v6

    .line 61
    const-class v10, Landroid/view/ViewTreeObserver;

    const-string v11, "addOnComputeInternalInsetsListener"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Status touch region unavailable"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    nop

    .line 64
    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 66
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v6, 0x2bc

    invoke-static {v1, v6, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 67
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v4, 0x26000000

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-virtual {v7, v12, v2, v0, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 70
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 72
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onComputeInternalInsets"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    aget-object p3, p5, v1

    const/4 p4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    aget-object p1, p5, v1

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Region;

    .line 5
    iget-boolean p2, p0, Ldev/duo/workspaceprobe/b$h0;->k0:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ldev/duo/workspaceprobe/b$h0;->c()Landroid/graphics/Region;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "equals"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    aget-object p1, p5, v1

    if-ne p3, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hashCode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "DuoStatusInsets"

    return-object p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/graphics/Canvas;FFI)V
    .locals 8

    .line 24
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$h0;->z0:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    if-nez v1, :cond_0

    .line 26
    iget v2, p0, Ldev/duo/workspaceprobe/b$h0;->d0:I

    goto :goto_1

    :cond_0
    iget v2, p0, Ldev/duo/workspaceprobe/b$h0;->e0:I

    :goto_1
    move v3, v0

    :goto_2
    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    .line 28
    iget-object v4, p0, Ldev/duo/workspaceprobe/b$h0;->z0:Landroid/graphics/Paint;

    if-ge v3, v2, :cond_1

    iget v5, p0, Ldev/duo/workspaceprobe/b$h0;->g0:I

    goto :goto_3

    :cond_1
    move v5, p4

    :goto_3
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, v3

    const/high16 v5, 0x3fc00000    # 1.5f

    sub-float/2addr v4, v5

    const v5, 0x4151f3b6    # 13.122f

    mul-float/2addr v4, v5

    add-float/2addr v4, p2

    int-to-float v6, v1

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v6, v7

    mul-float/2addr v6, v5

    add-float/2addr v6, p3

    .line 29
    iget-object v5, p0, Ldev/duo/workspaceprobe/b$h0;->z0:Landroid/graphics/Paint;

    const v7, 0x40843127    # 4.131f

    invoke-virtual {p1, v4, v6, v7, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFIF)V
    .locals 14

    .line 30
    move/from16 v0, p2

    move/from16 v1, p3

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$h0;->y0:Landroid/graphics/Paint;

    const v3, 0x40d9ba5e    # 6.804f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    if-nez v2, :cond_0

    const v3, 0x3f170a3d    # 0.59f

    goto :goto_1

    :cond_0
    const v3, 0x3ec28f5c    # 0.38f

    :goto_1
    const v4, 0x42426666    # 48.6f

    mul-float/2addr v3, v4

    .line 33
    iget-object v4, p0, Ldev/duo/workspaceprobe/b$h0;->y0:Landroid/graphics/Paint;

    iget v5, p0, Ldev/duo/workspaceprobe/b$h0;->b0:I

    rsub-int/lit8 v6, v2, 0x2

    if-lt v5, v6, :cond_1

    iget v5, p0, Ldev/duo/workspaceprobe/b$h0;->g0:I

    goto :goto_2

    :cond_1
    move/from16 v5, p4

    :goto_2
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v4, p0, Ldev/duo/workspaceprobe/b$h0;->A0:Landroid/graphics/RectF;

    sub-float v5, v0, v3

    sub-float v6, v1, v3

    add-float v7, v0, v3

    add-float/2addr v3, v1

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 35
    iget-object v9, p0, Ldev/duo/workspaceprobe/b$h0;->A0:Landroid/graphics/RectF;

    iget-object v13, p0, Ldev/duo/workspaceprobe/b$h0;->y0:Landroid/graphics/Paint;

    const/high16 v11, 0x42a80000    # 84.0f

    const/4 v12, 0x0

    const/high16 v10, 0x43640000    # 228.0f

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_2
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$h0;->y0:Landroid/graphics/Paint;

    move/from16 v3, p5

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$h0;->B0:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 40
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$h0;->B0:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 41
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$h0;->A0:Landroid/graphics/RectF;

    const v3, 0x41043127    # 8.262f

    sub-float v4, v0, v3

    sub-float v5, v1, v3

    add-float/2addr v0, v3

    add-float/2addr v1, v3

    invoke-virtual {v2, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 42
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$h0;->B0:Landroid/graphics/Path;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$h0;->A0:Landroid/graphics/RectF;

    const/high16 v2, 0x43640000    # 228.0f

    const/high16 v3, 0x42a80000    # 84.0f

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 43
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$h0;->B0:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 44
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$h0;->z0:Landroid/graphics/Paint;

    iget v1, p0, Ldev/duo/workspaceprobe/b$h0;->b0:I

    if-ltz v1, :cond_3

    iget v1, p0, Ldev/duo/workspaceprobe/b$h0;->g0:I

    goto :goto_3

    :cond_3
    move/from16 v1, p4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$h0;->z0:Landroid/graphics/Paint;

    const v1, 0x401b851f    # 2.43f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$h0;->B0:Landroid/graphics/Path;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$h0;->z0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 7

    .line 22
    iget-boolean v2, p0, Ldev/duo/workspaceprobe/b$h0;->S:Z

    iget-object v5, p0, Ldev/duo/workspaceprobe/b$h0;->i0:Landroid/graphics/Path;

    iget-object v6, p0, Ldev/duo/workspaceprobe/b$h0;->j0:Landroid/graphics/Matrix;

    move-object v0, p2

    move v1, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v6}, Ldev/duo/workspaceprobe/h;->a(Ljava/lang/String;FZFFLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 23
    iget-object p2, p0, Ldev/duo/workspaceprobe/b$h0;->i0:Landroid/graphics/Path;

    iget-object p3, p0, Ldev/duo/workspaceprobe/b$h0;->h0:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 21
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/b$h0;->l0:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ldev/duo/workspaceprobe/b$h0;->r0:I

    sget v1, Ldev/duo/workspaceprobe/b$h0;->F:I

    add-int/lit8 v1, v1, 0xf

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/b$h0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldev/duo/workspaceprobe/b$h0;->k0:Z

    return p0
.end method

.method private static b()Landroid/graphics/Path;
    .locals 10

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 3
    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const v5, 0x403ccccd    # 2.95f

    move-object v7, v6

    const v6, 0x403ccccd    # 2.95f

    const v1, -0x3e80cccd    # -15.95f

    const v2, -0x3fc33333    # -2.95f

    const v3, 0x4197999a    # 18.95f

    const v4, 0x403ccccd    # 2.95f

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 4
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 5
    const v2, -0x3e80cccd    # -15.95f

    const v3, -0x3fc33333    # -2.95f

    const v4, -0x3ee0cccd    # -9.95f

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 6
    sget-object v2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 8
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    int-to-float v3, v2

    const/high16 v4, -0x3fe00000    # -2.5f

    mul-float/2addr v4, v3

    .line 9
    const v5, -0x3e80cccd    # -15.95f

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v6, -0x3f180000    # -7.25f

    mul-float/2addr v6, v3

    .line 10
    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v6, -0x3f080000    # -7.75f

    mul-float/2addr v6, v3

    .line 11
    const v7, -0x3e89999a    # -15.4f

    invoke-virtual {v1, v5, v6, v7, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 12
    const v5, -0x3ea9999a    # -13.4f

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const v5, -0x3f166666    # -7.3f

    mul-float/2addr v5, v3

    .line 13
    const v7, -0x3eb1999a    # -12.9f

    const v8, -0x3eb5999a    # -12.65f

    invoke-virtual {v1, v7, v6, v8, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 14
    const v5, -0x3edccccd    # -10.2f

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 16
    sget-object v5, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 17
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 18
    const v6, -0x3f933333    # -3.7f

    invoke-virtual {v1, v6, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const v6, -0x3e8b3333    # -15.3f

    mul-float/2addr v6, v3

    .line 19
    const v7, -0x3f11999a    # -7.45f

    invoke-virtual {v1, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v7, -0x3e7c0000    # -16.5f

    mul-float/2addr v7, v3

    .line 20
    const v8, -0x3f366666    # -6.3f

    const v9, -0x3f5b3333    # -5.15f

    invoke-virtual {v1, v8, v7, v9, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    const v6, -0x3f74cccd    # -4.35f

    mul-float/2addr v6, v3

    .line 21
    const v7, 0x40bb3333    # 5.85f

    invoke-virtual {v1, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const v6, -0x3fbccccd    # -3.05f

    mul-float/2addr v6, v3

    const v7, -0x3fc33333    # -2.95f

    mul-float/2addr v3, v7

    .line 22
    const v7, 0x40f33333    # 7.6f

    const/high16 v8, 0x41680000    # 14.5f

    invoke-virtual {v1, v7, v6, v8, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 23
    invoke-virtual {v1, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 24
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 25
    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    .line 27
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 28
    const v2, 0x3f82246b

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method static synthetic b(Ldev/duo/workspaceprobe/b$h0;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$h0;->a()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Ldev/duo/workspaceprobe/b$h0;)I
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/workspaceprobe/b$h0;->r0:I

    return p0
.end method


# virtual methods
.method a(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$h0;->s0:Ljava/util/function/Consumer;

    return-void
.end method

.method a(Z)V
    .locals 1

    .line 9
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/b$h0;->k0:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 10
    :cond_0
    iput-boolean p1, p0, Ldev/duo/workspaceprobe/b$h0;->k0:Z

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_1

    .line 12
    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/duo/workspaceprobe/b$h0;->m0:Z

    iput-boolean p1, p0, Ldev/duo/workspaceprobe/b$h0;->n0:Z

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method a(ZI)V
    .locals 3

    .line 14
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/b$h0;->l0:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Ldev/duo/workspaceprobe/b$h0;->r0:I

    if-ne v0, p2, :cond_0

    return-void

    .line 15
    :cond_0
    iput-boolean p1, p0, Ldev/duo/workspaceprobe/b$h0;->l0:Z

    .line 16
    iput p2, p0, Ldev/duo/workspaceprobe/b$h0;->r0:I

    .line 17
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$h0;->u0:Landroid/graphics/Rect;

    sget v0, Ldev/duo/workspaceprobe/b$h0;->F:I

    const/16 v1, 0xcd

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 18
    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$h0;->a()Z

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v2, p0, Ldev/duo/workspaceprobe/b$h0;->m0:Z

    iput-boolean v2, p0, Ldev/duo/workspaceprobe/b$h0;->n0:Z

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method c()Landroid/graphics/Region;
    .locals 3

    .line 2
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$h0;->t0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 3
    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$h0;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$h0;->u0:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_0
    return-object v0
.end method

.method d(Ldev/duo/workspaceprobe/b$h0;)V
    .locals 1

    .line 1
    iget v0, p1, Ldev/duo/workspaceprobe/b$h0;->M:F

    iput v0, p0, Ldev/duo/workspaceprobe/b$h0;->M:F

    iget v0, p1, Ldev/duo/workspaceprobe/b$h0;->d0:I

    iput v0, p0, Ldev/duo/workspaceprobe/b$h0;->d0:I

    iget v0, p1, Ldev/duo/workspaceprobe/b$h0;->e0:I

    iput v0, p0, Ldev/duo/workspaceprobe/b$h0;->e0:I

    iget-boolean v0, p1, Ldev/duo/workspaceprobe/b$h0;->f0:Z

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/b$h0;->f0:Z

    .line 2
    iget-boolean v0, p1, Ldev/duo/workspaceprobe/b$h0;->N:Z

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/b$h0;->N:Z

    iget-boolean v0, p1, Ldev/duo/workspaceprobe/b$h0;->P:Z

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/b$h0;->P:Z

    .line 3
    iget-object v0, p1, Ldev/duo/workspaceprobe/b$h0;->a0:[Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$h0;->a0:[Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p1, Ldev/duo/workspaceprobe/b$h0;->V:Z

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/b$h0;->V:Z

    .line 4
    iget v0, p1, Ldev/duo/workspaceprobe/b$h0;->b0:I

    iput v0, p0, Ldev/duo/workspaceprobe/b$h0;->b0:I

    iget-boolean v0, p1, Ldev/duo/workspaceprobe/b$h0;->O:Z

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/b$h0;->O:Z

    iget-object v0, p1, Ldev/duo/workspaceprobe/b$h0;->c0:Ljava/lang/String;

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$h0;->c0:Ljava/lang/String;

    .line 5
    iget-boolean v0, p1, Ldev/duo/workspaceprobe/b$h0;->Q:Z

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/b$h0;->Q:Z

    iget-boolean v0, p1, Ldev/duo/workspaceprobe/b$h0;->R:Z

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/b$h0;->R:Z

    iget-boolean v0, p1, Ldev/duo/workspaceprobe/b$h0;->S:Z

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/b$h0;->S:Z

    iget-boolean p1, p1, Ldev/duo/workspaceprobe/b$h0;->T:Z

    iput-boolean p1, p0, Ldev/duo/workspaceprobe/b$h0;->T:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ldev/duo/workspaceprobe/b;->a()I

    move-result v2

    int-to-float v2, v2

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2
    iget-boolean v2, v0, Ldev/duo/workspaceprobe/b$h0;->S:Z

    if-eqz v2, :cond_0

    const v2, 0x40d9ba5e    # 6.804f

    move v9, v2

    goto :goto_0

    :cond_0
    const v9, 0x410114e3

    .line 3
    :goto_0
    iget v2, v0, Ldev/duo/workspaceprobe/b$h0;->g0:I

    const v10, 0xffffff

    and-int v3, v2, v10

    const/high16 v4, 0x4d000000    # 1.34217728E8f

    or-int v11, v3, v4

    .line 4
    iget-object v3, v0, Ldev/duo/workspaceprobe/b$h0;->h0:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$h0;->y0:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget v2, v0, Ldev/duo/workspaceprobe/b$h0;->W:F

    cmpl-float v2, v2, v7

    const v12, 0x42c2cccd    # 97.4f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x42c40000    # 98.0f

    if-lez v2, :cond_3

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 8
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    const-string v4, ":0"

    goto :goto_1

    :cond_1
    const-string v4, ":"

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 11
    iget v2, v0, Ldev/duo/workspaceprobe/b$h0;->W:F

    cmpg-float v2, v2, v14

    if-gez v2, :cond_2

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    sub-float v5, v12, v9

    iget v2, v0, Ldev/duo/workspaceprobe/b$h0;->W:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result v2

    move v6, v2

    goto :goto_2

    :cond_2
    const/4 v6, -0x1

    .line 13
    :goto_2
    const v3, 0x41efe3bc

    const v5, 0x4280cd1c

    move-object/from16 v1, p1

    move v4, v15

    move-object/from16 v2, v16

    invoke-direct/range {v0 .. v5}, Ldev/duo/workspaceprobe/b$h0;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    move-object v15, v0

    move/from16 v16, v4

    if-ltz v6, :cond_4

    .line 14
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    .line 6
    :cond_3
    move/from16 v16, v15

    move-object v15, v0

    .line 16
    :cond_4
    :goto_3
    iget-boolean v6, v15, Ldev/duo/workspaceprobe/b$h0;->Q:Z

    if-nez v6, :cond_5

    .line 17
    iget-boolean v3, v15, Ldev/duo/workspaceprobe/b$h0;->R:Z

    if-eqz v3, :cond_5

    iget v3, v15, Ldev/duo/workspaceprobe/b$h0;->b0:I

    if-gez v3, :cond_5

    iget-boolean v3, v15, Ldev/duo/workspaceprobe/b$h0;->O:Z

    if-eqz v3, :cond_5

    iget-object v3, v15, Ldev/duo/workspaceprobe/b$h0;->c0:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v17, 0x1

    goto :goto_4

    :cond_5
    const/16 v17, 0x0

    .line 18
    :goto_4
    iget-boolean v3, v15, Ldev/duo/workspaceprobe/b$h0;->f0:Z

    if-eqz v3, :cond_6

    if-nez v6, :cond_6

    if-nez v17, :cond_6

    const/16 v18, 0x1

    goto :goto_5

    :cond_6
    const/16 v18, 0x0

    :goto_5
    if-nez v6, :cond_8

    if-nez v17, :cond_8

    if-eqz v18, :cond_7

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v3, 0x1

    :goto_7
    if-eqz v3, :cond_9

    const/high16 v4, 0x41e00000    # 28.0f

    goto :goto_8

    :cond_9
    const/high16 v4, 0x41f80000    # 31.0f

    :goto_8
    if-eqz v3, :cond_a

    const/high16 v3, 0x43180000    # 152.0f

    goto :goto_9

    :cond_a
    const/high16 v3, 0x43150000    # 149.0f

    .line 23
    :goto_9
    iget-object v5, v15, Ldev/duo/workspaceprobe/b$h0;->A0:Landroid/graphics/RectF;

    const v0, 0x4312999a    # 146.6f

    const v2, 0x4342999a    # 194.6f

    const v21, 0x410114e3

    const v8, 0x4245999a    # 49.4f

    invoke-virtual {v5, v8, v12, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 24
    iget-boolean v0, v15, Ldev/duo/workspaceprobe/b$h0;->N:Z

    if-eqz v0, :cond_b

    const v0, -0xcb38a7

    :goto_a
    move v8, v0

    goto :goto_b

    :cond_b
    iget v0, v15, Ldev/duo/workspaceprobe/b$h0;->M:F

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_c

    const v0, -0xc4d0

    goto :goto_a

    :cond_c
    iget v0, v15, Ldev/duo/workspaceprobe/b$h0;->g0:I

    goto :goto_a

    .line 25
    :goto_b
    iget v0, v15, Ldev/duo/workspaceprobe/b$h0;->M:F

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v2, 0x3cf5c28f    # 0.03f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 26
    iget-boolean v0, v15, Ldev/duo/workspaceprobe/b$h0;->P:Z

    const/high16 v22, 0x42c80000    # 100.0f

    const/high16 v23, 0x40000000    # 2.0f

    const v24, 0x42426666    # 48.6f

    if-eqz v0, :cond_e

    iget-boolean v0, v15, Ldev/duo/workspaceprobe/b$h0;->T:Z

    if-eqz v0, :cond_e

    .line 27
    iget v0, v15, Ldev/duo/workspaceprobe/b$h0;->M:F

    mul-float v0, v0, v22

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    iget-boolean v2, v15, Ldev/duo/workspaceprobe/b$h0;->S:Z

    const v5, 0x41aef5c2    # 21.869999f

    invoke-static {v0, v5, v2}, Ldev/duo/workspaceprobe/h;->a(Ljava/lang/String;FZ)F

    move-result v2

    div-float v2, v2, v23

    const/high16 v5, 0x40a00000    # 5.0f

    add-float/2addr v2, v5

    div-float v5, v9, v23

    add-float/2addr v2, v5

    div-float v2, v2, v24

    .line 29
    invoke-static {v14, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->asin(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    double-to-float v13, v13

    const/high16 v14, 0x43870000    # 270.0f

    sub-float v2, v14, v13

    sub-float/2addr v2, v3

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v4, v5

    sub-float v25, v4, v13

    add-float v4, v2, v25

    mul-float/2addr v12, v4

    .line 31
    iget-object v4, v15, Ldev/duo/workspaceprobe/b$h0;->y0:Landroid/graphics/Paint;

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v1, v15, Ldev/duo/workspaceprobe/b$h0;->A0:Landroid/graphics/RectF;

    iget-object v5, v15, Ldev/duo/workspaceprobe/b$h0;->y0:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move/from16 v19, v3

    move v3, v2

    move/from16 v2, v19

    move-object/from16 v19, v0

    move/from16 v26, v10

    move/from16 v20, v14

    const/4 v10, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 33
    move/from16 v27, v2

    iget-object v1, v15, Ldev/duo/workspaceprobe/b$h0;->A0:Landroid/graphics/RectF;

    add-float v2, v13, v20

    iget-object v5, v15, Ldev/duo/workspaceprobe/b$h0;->y0:Landroid/graphics/Paint;

    move v13, v3

    move/from16 v3, v25

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 34
    move/from16 v20, v2

    iget-object v0, v15, Ldev/duo/workspaceprobe/b$h0;->y0:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v1, v15, Ldev/duo/workspaceprobe/b$h0;->A0:Landroid/graphics/RectF;

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v5, v15, Ldev/duo/workspaceprobe/b$h0;->y0:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v2, v27

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    cmpl-float v0, v12, v13

    if-lez v0, :cond_d

    .line 36
    iget-object v1, v15, Ldev/duo/workspaceprobe/b$h0;->A0:Landroid/graphics/RectF;

    sub-float v3, v12, v13

    iget-object v5, v15, Ldev/duo/workspaceprobe/b$h0;->y0:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v2, v20

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_d
    nop

    .line 37
    const v3, 0x41aef5c2    # 21.869999f

    const v5, 0x42de8083    # 111.251f

    move-object/from16 v1, p1

    move-object v0, v15

    move/from16 v4, v16

    move-object/from16 v2, v19

    invoke-direct/range {v0 .. v5}, Ldev/duo/workspaceprobe/b$h0;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto :goto_c

    .line 26
    :cond_e
    move v2, v3

    move/from16 v26, v10

    const/4 v10, 0x0

    const/4 v14, 0x1

    .line 37
    sub-float v3, v2, v4

    const/high16 v0, 0x43b40000    # 360.0f

    sub-float v3, v0, v3

    .line 40
    iget-object v0, v15, Ldev/duo/workspaceprobe/b$h0;->y0:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v1, v15, Ldev/duo/workspaceprobe/b$h0;->A0:Landroid/graphics/RectF;

    iget-object v5, v15, Ldev/duo/workspaceprobe/b$h0;->y0:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 42
    iget-object v0, v15, Ldev/duo/workspaceprobe/b$h0;->y0:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v1, v15, Ldev/duo/workspaceprobe/b$h0;->A0:Landroid/graphics/RectF;

    mul-float/2addr v3, v12

    iget-object v5, v15, Ldev/duo/workspaceprobe/b$h0;->y0:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_c
    if-eqz v6, :cond_10

    .line 46
    iget v0, v15, Ldev/duo/workspaceprobe/b$h0;->b0:I

    if-ltz v0, :cond_f

    const v3, 0x431abf7d

    move-object/from16 v1, p1

    move v5, v9

    move v4, v11

    move-object v0, v15

    move/from16 v2, v16

    invoke-direct/range {v0 .. v5}, Ldev/duo/workspaceprobe/b$h0;->a(Landroid/graphics/Canvas;FFIF)V

    move v4, v2

    goto :goto_d

    :cond_f
    move-object/from16 v1, p1

    move-object v0, v15

    move/from16 v4, v16

    .line 47
    :goto_d
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$h0;->z0:Landroid/graphics/Paint;

    iget v3, v0, Ldev/duo/workspaceprobe/b$h0;->g0:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$h0;->z0:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 50
    const v2, 0x43353c29    # 181.235f

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    sget-object v2, Ldev/duo/workspaceprobe/b$h0;->J:Landroid/graphics/Path;

    iget-object v3, v0, Ldev/duo/workspaceprobe/b$h0;->z0:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 52
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    move v2, v4

    goto/16 :goto_15

    :cond_10
    move-object/from16 v1, p1

    move v5, v9

    move-object v0, v15

    move/from16 v4, v16

    if-eqz v17, :cond_14

    .line 55
    iget-boolean v2, v0, Ldev/duo/workspaceprobe/b$h0;->f0:Z

    if-eqz v2, :cond_11

    const v2, 0x430e5ae1

    invoke-direct {v0, v1, v4, v2, v11}, Ldev/duo/workspaceprobe/b$h0;->a(Landroid/graphics/Canvas;FFI)V

    goto :goto_10

    :cond_11
    const v2, 0x40f2ffff

    mul-float v9, v5, v2

    div-float v9, v9, v21

    const v2, 0x42078c66

    add-float/2addr v2, v9

    div-float v2, v2, v23

    sub-float v15, v4, v2

    .line 58
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$h0;->z0:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move v2, v10

    :goto_e
    const/4 v3, 0x4

    if-ge v2, v3, :cond_13

    int-to-float v3, v2

    mul-float v5, v3, v23

    const v6, 0x40f9999a    # 7.8f

    add-float/2addr v5, v6

    const v6, 0x3ff2ffff

    mul-float/2addr v5, v6

    .line 61
    iget-object v6, v0, Ldev/duo/workspaceprobe/b$h0;->z0:Landroid/graphics/Paint;

    iget v7, v0, Ldev/duo/workspaceprobe/b$h0;->d0:I

    if-ge v2, v7, :cond_12

    iget v7, v0, Ldev/duo/workspaceprobe/b$h0;->g0:I

    goto :goto_f

    :cond_12
    move v7, v11

    :goto_f
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v6, v0, Ldev/duo/workspaceprobe/b$h0;->A0:Landroid/graphics/RectF;

    const v7, 0x4134bb32

    mul-float/2addr v3, v7

    add-float/2addr v3, v15

    const v7, 0x431abb9a

    sub-float v5, v7, v5

    add-float v8, v3, v9

    invoke-virtual {v6, v3, v5, v8, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 63
    iget-object v3, v0, Ldev/duo/workspaceprobe/b$h0;->A0:Landroid/graphics/RectF;

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v9

    iget-object v6, v0, Ldev/duo/workspaceprobe/b$h0;->z0:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 66
    :cond_13
    :goto_10
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$h0;->c0:Ljava/lang/String;

    const v3, 0x41aef5c2    # 21.869999f

    const v5, 0x43402b85    # 192.17f

    invoke-direct/range {v0 .. v5}, Ldev/duo/workspaceprobe/b$h0;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    move v2, v4

    goto/16 :goto_15

    :cond_14
    if-eqz v18, :cond_15

    const v2, 0x411b851f    # 9.72f

    goto :goto_11

    :cond_15
    move v2, v7

    .line 69
    :goto_11
    iget v3, v0, Ldev/duo/workspaceprobe/b$h0;->b0:I

    if-gez v3, :cond_16

    iget-boolean v3, v0, Ldev/duo/workspaceprobe/b$h0;->O:Z

    if-eqz v3, :cond_16

    iget-object v3, v0, Ldev/duo/workspaceprobe/b$h0;->c0:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    .line 70
    iget-object v3, v0, Ldev/duo/workspaceprobe/b$h0;->v0:Landroid/graphics/Paint;

    iget v5, v0, Ldev/duo/workspaceprobe/b$h0;->g0:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v3, v0, Ldev/duo/workspaceprobe/b$h0;->v0:Landroid/graphics/Paint;

    iget-object v5, v0, Ldev/duo/workspaceprobe/b$h0;->c0:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v8, v0, Ldev/duo/workspaceprobe/b$h0;->x0:Landroid/graphics/Rect;

    invoke-virtual {v3, v5, v10, v6, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 72
    iget-object v3, v0, Ldev/duo/workspaceprobe/b$h0;->c0:Ljava/lang/String;

    const v5, 0x4315e354    # 149.888f

    sub-float/2addr v5, v2

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$h0;->x0:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    sub-float/2addr v5, v2

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$h0;->v0:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v2, v4

    move v4, v11

    goto :goto_12

    :cond_16
    const v3, 0x432477cf

    sub-float/2addr v3, v2

    .line 73
    move v2, v4

    move v4, v11

    invoke-direct/range {v0 .. v5}, Ldev/duo/workspaceprobe/b$h0;->a(Landroid/graphics/Canvas;FFIF)V

    .line 75
    :goto_12
    iget-object v3, v0, Ldev/duo/workspaceprobe/b$h0;->z0:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz v18, :cond_17

    .line 76
    const v3, 0x433388b4

    invoke-direct {v0, v1, v2, v3, v4}, Ldev/duo/workspaceprobe/b$h0;->a(Landroid/graphics/Canvas;FFI)V

    goto :goto_15

    :cond_17
    move v3, v10

    .line 77
    :goto_13
    sget-object v5, Ldev/duo/workspaceprobe/b$h0;->k:[F

    array-length v6, v5

    if-ge v3, v6, :cond_19

    .line 78
    aget v5, v5, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 79
    iget-object v7, v0, Ldev/duo/workspaceprobe/b$h0;->z0:Landroid/graphics/Paint;

    iget v8, v0, Ldev/duo/workspaceprobe/b$h0;->d0:I

    if-ge v3, v8, :cond_18

    iget v11, v0, Ldev/duo/workspaceprobe/b$h0;->g0:I

    goto :goto_14

    :cond_18
    move v11, v4

    :goto_14
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v7, v7, v24

    add-float v15, v2, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v24

    const/high16 v6, 0x43120000    # 146.0f

    add-float/2addr v6, v5

    iget-object v5, v0, Ldev/duo/workspaceprobe/b$h0;->z0:Landroid/graphics/Paint;

    const v7, 0x40a34bc6    # 5.1029997f

    invoke-virtual {v1, v15, v6, v7, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 83
    :cond_19
    :goto_15
    iget-boolean v3, v0, Ldev/duo/workspaceprobe/b$h0;->P:Z

    if-eqz v3, :cond_1a

    iget-boolean v3, v0, Ldev/duo/workspaceprobe/b$h0;->T:Z

    if-nez v3, :cond_1a

    move v3, v14

    goto :goto_16

    :cond_1a
    move v3, v10

    :goto_16
    if-eqz v3, :cond_1c

    .line 85
    iget-object v4, v0, Ldev/duo/workspaceprobe/b$h0;->w0:Landroid/graphics/Paint;

    iget v5, v0, Ldev/duo/workspaceprobe/b$h0;->g0:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v4, v0, Ldev/duo/workspaceprobe/b$h0;->w0:Landroid/graphics/Paint;

    iget-boolean v5, v0, Ldev/duo/workspaceprobe/b$h0;->S:Z

    if-eqz v5, :cond_1b

    sget-object v5, Ldev/duo/workspaceprobe/b$h0;->K:Landroid/graphics/Typeface;

    goto :goto_17

    :cond_1b
    sget-object v5, Ldev/duo/workspaceprobe/b$h0;->L:Landroid/graphics/Typeface;

    :goto_17
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Ldev/duo/workspaceprobe/b$h0;->M:F

    mul-float v5, v5, v22

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Ldev/duo/workspaceprobe/b$h0;->w0:Landroid/graphics/Paint;

    const/high16 v6, 0x43600000    # 224.0f

    invoke-virtual {v1, v4, v2, v6, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 89
    :cond_1c
    iget-boolean v4, v0, Ldev/duo/workspaceprobe/b$h0;->U:Z

    if-eqz v4, :cond_1f

    iget-object v4, v0, Ldev/duo/workspaceprobe/b$h0;->a0:[Landroid/graphics/drawable/Drawable;

    array-length v4, v4

    if-lez v4, :cond_1f

    if-eqz v3, :cond_1d

    const v3, 0x43808000    # 257.0f

    goto :goto_18

    :cond_1d
    const/high16 v3, 0x43620000    # 226.0f

    .line 91
    :goto_18
    iget-object v4, v0, Ldev/duo/workspaceprobe/b$h0;->a0:[Landroid/graphics/drawable/Drawable;

    array-length v5, v4

    const/high16 v6, 0x41600000    # 14.0f

    if-ge v10, v5, :cond_1e

    int-to-float v5, v10

    .line 92
    array-length v7, v4

    sub-int/2addr v7, v14

    int-to-float v7, v7

    div-float v7, v7, v23

    sub-float/2addr v5, v7

    const/high16 v7, 0x42080000    # 34.0f

    mul-float/2addr v5, v7

    add-float v15, v2, v5

    .line 93
    aget-object v4, v4, v10

    sub-float v5, v15, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-float v7, v3, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-float/2addr v15, v6

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, v5, v7, v8, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 94
    iget-object v4, v0, Ldev/duo/workspaceprobe/b$h0;->a0:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v10

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    .line 96
    :cond_1e
    iget-boolean v4, v0, Ldev/duo/workspaceprobe/b$h0;->V:Z

    if-eqz v4, :cond_1f

    .line 97
    iget-object v4, v0, Ldev/duo/workspaceprobe/b$h0;->z0:Landroid/graphics/Paint;

    iget v5, v0, Ldev/duo/workspaceprobe/b$h0;->g0:I

    and-int v5, v5, v26

    const/high16 v7, -0x38000000    # -131072.0f

    or-int/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v13, -0x1

    :goto_19
    if-gt v13, v14, :cond_1f

    int-to-float v4, v13

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    add-float v15, v2, v4

    add-float v4, v3, v6

    const/high16 v5, 0x41400000    # 12.0f

    add-float/2addr v4, v5

    .line 98
    iget-object v5, v0, Ldev/duo/workspaceprobe/b$h0;->z0:Landroid/graphics/Paint;

    const v7, 0x40266666    # 2.6f

    invoke-virtual {v1, v15, v4, v7, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_19

    :cond_1f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 3
    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$h0;->a()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$h0;->s0:Ljava/util/function/Consumer;

    if-eqz v2, :cond_0

    sget v2, Ldev/duo/workspaceprobe/b$h0;->F:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Ldev/duo/workspaceprobe/b$h0;->r0:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 4
    :goto_0
    iget-boolean v5, p0, Ldev/duo/workspaceprobe/b$h0;->n0:Z

    if-eqz v5, :cond_6

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Ldev/duo/workspaceprobe/b$h0;->o0:F

    sub-float/2addr p1, v0

    float-to-double v5, p1

    iget p1, p0, Ldev/duo/workspaceprobe/b$h0;->p0:F

    sub-float/2addr v1, p1

    float-to-double v0, v1

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    iget p1, p0, Ldev/duo/workspaceprobe/b$h0;->q0:F

    float-to-double v5, p1

    cmpl-double p1, v0, v5

    if-lez p1, :cond_5

    iput-boolean v3, p0, Ldev/duo/workspaceprobe/b$h0;->m0:Z

    goto :goto_2

    :cond_1
    const/4 p1, 0x5

    if-ne v0, p1, :cond_2

    .line 8
    iput-boolean v3, p0, Ldev/duo/workspaceprobe/b$h0;->m0:Z

    goto :goto_2

    :cond_2
    if-eq v0, v4, :cond_3

    const/4 p1, 0x3

    if-ne v0, p1, :cond_5

    .line 10
    :cond_3
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/b$h0;->m0:Z

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    if-ne v0, v4, :cond_4

    move p1, v4

    goto :goto_1

    :cond_4
    move p1, v3

    .line 11
    :goto_1
    iput-boolean v3, p0, Ldev/duo/workspaceprobe/b$h0;->m0:Z

    iput-boolean v3, p0, Ldev/duo/workspaceprobe/b$h0;->n0:Z

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$h0;->s0:Ljava/util/function/Consumer;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return v4

    :cond_6
    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    .line 17
    iput-boolean v4, p0, Ldev/duo/workspaceprobe/b$h0;->m0:Z

    iput-boolean v4, p0, Ldev/duo/workspaceprobe/b$h0;->n0:Z

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Ldev/duo/workspaceprobe/b$h0;->o0:F

    .line 19
    iput v1, p0, Ldev/duo/workspaceprobe/b$h0;->p0:F

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Ldev/duo/workspaceprobe/b$h0;->q0:F

    return v4

    .line 23
    :cond_7
    iget-boolean v2, p0, Ldev/duo/workspaceprobe/b$h0;->l0:Z

    if-eqz v2, :cond_8

    if-nez v0, :cond_8

    iget v0, p0, Ldev/duo/workspaceprobe/b$h0;->r0:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_8

    return v3

    .line 26
    :cond_8
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
