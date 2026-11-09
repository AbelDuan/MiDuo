.class public final Ldev/duo/taskcore/WorkspaceHost;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/taskcore/WorkspaceHost$Item;,
        Ldev/duo/taskcore/WorkspaceHost$Actions;,
        Ldev/duo/taskcore/WorkspaceHost$OverlayView;,
        Ldev/duo/taskcore/WorkspaceHost$Panel;
    }
.end annotation


# static fields
.field private static final a:I = 0x1000000

.field private static final b:I = 0x0

.field private static final c:I = 0x3e8

.field private static final d:I = 0x1e

.field private static final e:J = 0x12cL

.field private static final f:J = 0x12cL

.field private static final g:J = 0xb4L

.field private static final h:F = 32.0f

.field private static final i:F = 1.05f

.field private static final j:F = 0.35f

.field private static final k:F = 0.35f

.field private static final l:I = 0x6

.field private static final m:I = 0xdc

.field private static final n:I = 0x1e

.field private static final o:I = 0x6

.field private static p:Landroid/os/Handler;


# instance fields
.field private A:Z

.field private volatile B:Z

.field private C:[Ldev/duo/taskcore/TaskBinding;

.field private volatile D:Ldev/duo/taskcore/TaskBinding;

.field private E:Z

.field private F:Z

.field private G:Landroid/view/SurfaceControl;

.field private final H:Ldev/duo/taskcore/Frames;

.field private volatile I:I

.field private volatile J:I

.field private volatile K:F

.field private volatile L:F

.field private volatile M:Z

.field private N:Ldev/duo/taskcore/Frames$Driver;

.field private volatile O:Z

.field private volatile P:Z

.field private Q:I

.field private R:I

.field private final q:Landroid/content/Context;

.field private volatile r:Ldev/duo/taskcore/Geometry;

.field private final s:Landroid/view/SurfaceControl;

.field private final t:Landroid/os/Handler;

.field private final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ldev/duo/taskcore/TaskBinding;",
            "Ldev/duo/taskcore/WorkspaceHost$Item;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ldev/duo/taskcore/WorkspaceHost$Panel;

.field private w:Ldev/duo/taskcore/WorkspaceHost$Panel;

.field private x:Landroid/view/View;

.field private y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

.field private z:Ldev/duo/taskcore/WorkspaceHost$Actions;


# direct methods
.method public static synthetic $r8$lambda$1rrg8tnpNybH7PqouiEK9S9eSyY(Ldev/duo/taskcore/WorkspaceHost;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceHost;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5wtL8kPFt2R94m8u39zONTvNjjI(Ldev/duo/taskcore/WorkspaceHost;ZLdev/duo/taskcore/Geometry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceHost;->a(ZLdev/duo/taskcore/Geometry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BIZDxex9-fk--p2RUsg8xCQny84(Ldev/duo/taskcore/WorkspaceHost;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Runnable;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/duo/taskcore/WorkspaceHost;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$EiSa-bRPmQULFHf7ww4yJshtgK0(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->k()V

    return-void
.end method

.method public static synthetic $r8$lambda$KUjHP37xB-G2uSpOaZBOVZ2vU7c(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceHost;->c([Ldev/duo/taskcore/TaskBinding;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P_EAZDfRKAP304qHibL5hFBkZtw(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceHost;->b([Ldev/duo/taskcore/TaskBinding;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q6x9Rws3pTBdrxz7NTPuSyz20wI(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->l()V

    return-void
.end method

.method public static synthetic $r8$lambda$Uq2poGlr9-sN9cyGrgJjhgUmfiU(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->h()V

    return-void
.end method

.method public static synthetic $r8$lambda$WFZ5YZeHh523GuS6vxsWfg05gc4(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->j()V

    return-void
.end method

.method public static synthetic $r8$lambda$bjXypdnQvRaQfjZHUu96oWJ0AiQ(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/TaskBinding;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceHost;->b(Ldev/duo/taskcore/TaskBinding;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fLPB_d-p-9QGOtyBgxR56fval3M(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->m()V

    return-void
.end method

.method public static synthetic $r8$lambda$gT85ykPXgBAoQ7E7Ugay-1-tpW4(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/WorkspaceHost$Item;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceHost;->a(Ldev/duo/taskcore/WorkspaceHost$Item;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hI3NPXQ7-JPuPdEQCZ58_yC8wXI(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/WorkspaceHost$Panel;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ldev/duo/taskcore/WorkspaceHost;->a(Ldev/duo/taskcore/WorkspaceHost$Panel;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i03sXzpMH_JuvwHSeqKjat-9l-Y(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceHost;->a([Ldev/duo/taskcore/TaskBinding;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lXKtCn-QagDYvAQ8Ozr8mK8HTSI(Ldev/duo/taskcore/WorkspaceHost;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceHost;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$owz27HYZeP_T4Sae76U9F60UKvo(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->n()V

    return-void
.end method

.method public static synthetic $r8$lambda$pTbKq1niF1XAAuzB2NM2QGPDlz0(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/Geometry;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceHost;->a(Ldev/duo/taskcore/Geometry;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$pu00ziDeUh0jgzcXKzglvv4ZR3w(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->i()V

    return-void
.end method

.method public static synthetic $r8$lambda$v7aQxEhcYwYPdW7faR7Zw8CTSlI(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/TaskBinding;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceHost;->a([Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/TaskBinding;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wKCYotf1RCHMyeWwIave178iZ-8(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->o()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/SurfaceControl;Ldev/duo/taskcore/Geometry;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->t:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->u:Ljava/util/Map;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Ldev/duo/taskcore/TaskBinding;

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->C:[Ldev/duo/taskcore/TaskBinding;

    .line 324
    new-instance v0, Ldev/duo/taskcore/Frames;

    new-instance v1, Ldev/duo/taskcore/WorkspaceHost$2;

    invoke-direct {v1, p0}, Ldev/duo/taskcore/WorkspaceHost$2;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    invoke-direct {v0, v1}, Ldev/duo/taskcore/Frames;-><init>(Ldev/duo/taskcore/Frames$Scheduler;)V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->H:Ldev/duo/taskcore/Frames;

    .line 416
    const/4 v0, -0x1

    iput v0, p0, Ldev/duo/taskcore/WorkspaceHost;->I:I

    iput v0, p0, Ldev/duo/taskcore/WorkspaceHost;->J:I

    .line 637
    iput v0, p0, Ldev/duo/taskcore/WorkspaceHost;->R:I

    .line 638
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->q:Landroid/content/Context;

    .line 639
    iput-object p3, p0, Ldev/duo/taskcore/WorkspaceHost;->r:Ldev/duo/taskcore/Geometry;

    .line 640
    new-instance p1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string p3, "TaskCore root"

    invoke-virtual {p1, p3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    return-void
.end method

.method static synthetic a(Ldev/duo/taskcore/WorkspaceHost;F)F
    .locals 0

    .line 4
    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost;->L:F

    return p1
.end method

.method static synthetic a(Ldev/duo/taskcore/WorkspaceHost;I)I
    .locals 0

    .line 5
    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost;->I:I

    return p1
.end method

.method private static a(Z)I
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    const p0, -0xefeff0

    return p0

    :cond_0
    const p0, -0xf0f0e

    return p0
.end method

.method static a(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    .line 89
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 90
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 91
    new-instance p0, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v1, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method static synthetic a(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/Frames$Driver;)Ldev/duo/taskcore/Frames$Driver;
    .locals 0

    .line 6
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->N:Ldev/duo/taskcore/Frames$Driver;

    return-object p1
.end method

.method static synthetic a(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/TaskBinding;
    .locals 0

    .line 2
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceHost;->D:Ldev/duo/taskcore/TaskBinding;

    return-object p0
.end method

.method private a(Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 137
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/duo/taskcore/WorkspaceHost$Item;

    return-object p1
.end method

.method static synthetic a(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceHost;->a(Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/view/View;III)Ldev/duo/taskcore/WorkspaceHost$Panel;
    .locals 6

    .line 70
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceHost;->a(Landroid/view/View;IIIZ)Ldev/duo/taskcore/WorkspaceHost$Panel;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/view/View;IIIZ)Ldev/duo/taskcore/WorkspaceHost$Panel;
    .locals 10

    .line 71
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->q:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/view/SurfaceControlViewHost;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->q:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    .line 73
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, 0x2

    const/4 v9, -0x3

    move v5, p2

    move v6, p3

    move v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    if-nez p5, :cond_0

    .line 77
    :try_start_0
    const-class p2, Landroid/view/WindowManager$LayoutParams;

    const-string p3, "inputFeatures"

    invoke-virtual {p2, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 78
    const-class p3, Landroid/view/WindowManager$LayoutParams;

    const-string p4, "INPUT_FEATURE_NO_INPUT_CHANNEL"

    invoke-virtual {p3, p4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p3

    .line 79
    invoke-virtual {p2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p4

    or-int/2addr p3, p4

    invoke-virtual {p2, v4, p3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 81
    :cond_0
    const-class p2, Landroid/view/SurfaceControlViewHost;

    const-string p3, "setView"

    const-class p4, Landroid/view/View;

    const-class p5, Landroid/view/WindowManager$LayoutParams;

    filled-new-array {p4, p5}, [Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    new-instance p1, Ldev/duo/taskcore/WorkspaceHost$Panel;

    invoke-direct {p1, v1}, Ldev/duo/taskcore/WorkspaceHost$Panel;-><init>(Landroid/view/SurfaceControlViewHost;)V

    return-object p1

    .line 79
    :catch_0
    move-exception v0

    move-object p1, v0

    .line 87
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 88
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "panel flags "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private a(Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    .line 18
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->G:Landroid/view/SurfaceControl;

    const/high16 v1, 0x1000000

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    :try_start_0
    const-class v2, Landroid/view/SurfaceControl$Transaction;

    const-string v3, "setRelativeLayer"

    const-class v4, Landroid/view/SurfaceControl;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    .line 22
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 24
    const-string v2, "DuoWorkbench"

    const-string v3, "root below floating window unavailable: kept on top"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void

    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private a(Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;FI)V
    .locals 5

    .line 126
    iget-object v0, p2, Ldev/duo/taskcore/WorkspaceHost$Item;->b:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p4, v0

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p4, v0

    mul-float/2addr v1, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p4

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p4

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, p4

    iget v4, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p4

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    move-object v0, p3

    .line 132
    :goto_0
    iget-object p4, p0, Ldev/duo/taskcore/WorkspaceHost;->r:Ldev/duo/taskcore/Geometry;

    invoke-virtual {p4, v0}, Ldev/duo/taskcore/Geometry;->a(Landroid/graphics/Rect;)[F

    move-result-object p4

    .line 133
    iget-object v0, p2, Ldev/duo/taskcore/WorkspaceHost$Item;->b:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    aget v2, p4, v1

    invoke-virtual {p1, v0, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p2, Ldev/duo/taskcore/WorkspaceHost$Item;->b:Landroid/view/SurfaceControl;

    const/4 v3, 0x1

    aget v3, p4, v3

    const/4 v4, 0x2

    aget v4, p4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p2, Ldev/duo/taskcore/WorkspaceHost$Item;->b:Landroid/view/SurfaceControl;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceHost;->r:Ldev/duo/taskcore/Geometry;

    iget-object v3, v3, Ldev/duo/taskcore/Geometry;->a:Landroid/graphics/Rect;

    .line 134
    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p2, Ldev/duo/taskcore/WorkspaceHost$Item;->b:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, p5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 135
    iget-object p5, p2, Ldev/duo/taskcore/WorkspaceHost$Item;->b:Landroid/view/SurfaceControl;

    aget p4, p4, v1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr v0, p4

    invoke-static {p1, p5, v0}, Ldev/duo/taskcore/Tx;->a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)V

    .line 136
    iget-object p1, p2, Ldev/duo/taskcore/WorkspaceHost$Item;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private a(Ldev/duo/taskcore/Frames$Driver;)V
    .locals 1

    .line 138
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->H:Ldev/duo/taskcore/Frames;

    invoke-virtual {v0, p1}, Ldev/duo/taskcore/Frames;->d(Ldev/duo/taskcore/Frames$Driver;)V

    return-void
.end method

.method private synthetic a(Ldev/duo/taskcore/Geometry;Z)V
    .locals 8

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceHost;->a(Ldev/duo/taskcore/Frames$Driver;)V

    .line 40
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->r:Ldev/duo/taskcore/Geometry;

    .line 41
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 42
    :try_start_0
    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceHost;->u:Ljava/util/Map;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ldev/duo/taskcore/WorkspaceHost$Item;

    .line 44
    iget-object v1, v3, Ldev/duo/taskcore/WorkspaceHost$Item;->a:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceHost$Panel;->c:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, v3, Ldev/duo/taskcore/WorkspaceHost$Item;->a:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceHost$Panel;->c:Landroid/view/SurfaceControl;

    iget-object v4, p1, Ldev/duo/taskcore/Geometry;->a:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v1, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 46
    new-instance v4, Landroid/graphics/Rect;

    iget-object v1, v3, Ldev/duo/taskcore/WorkspaceHost$Item;->c:Landroid/graphics/Rect;

    invoke-direct {v4, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v6, v3, Ldev/duo/taskcore/WorkspaceHost$Item;->e:I

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ldev/duo/taskcore/WorkspaceHost;->a(Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;FI)V

    goto :goto_0

    .line 48
    :cond_1
    move-object v1, p0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceHost;->w:Ldev/duo/taskcore/WorkspaceHost$Panel;

    if-eqz v0, :cond_2

    iget-object v0, v0, Ldev/duo/taskcore/WorkspaceHost$Panel;->c:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceHost;->w:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v0, v0, Ldev/duo/taskcore/WorkspaceHost$Panel;->c:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Ldev/duo/taskcore/Geometry;->a()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 50
    :cond_2
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 52
    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceHost;->t:Landroid/os/Handler;

    new-instance v2, Ldev/duo/taskcore/g$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p2, p1}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda10;-><init>(Ldev/duo/taskcore/WorkspaceHost;ZLdev/duo/taskcore/Geometry;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 46
    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 53
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 49
    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 54
    :try_start_5
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method private synthetic a(Ldev/duo/taskcore/WorkspaceHost$Item;)V
    .locals 3

    .line 238
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 239
    :try_start_0
    iget-object v1, p1, Ldev/duo/taskcore/WorkspaceHost$Item;->b:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Ldev/duo/taskcore/WorkspaceHost$Item;->b:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 241
    iget-object v0, p1, Ldev/duo/taskcore/WorkspaceHost$Item;->b:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 242
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->t:Landroid/os/Handler;

    iget-object p1, p1, Ldev/duo/taskcore/WorkspaceHost$Item;->a:Ldev/duo/taskcore/WorkspaceHost$Panel;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldev/duo/taskcore/g$$ExternalSyntheticLambda19;

    invoke-direct {v1, p1}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda19;-><init>(Ldev/duo/taskcore/WorkspaceHost$Panel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 239
    :catchall_0
    move-exception p1

    .line 243
    :try_start_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method private synthetic a(Ldev/duo/taskcore/WorkspaceHost$Panel;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;)V
    .locals 6

    .line 118
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 119
    :try_start_0
    iget-object p1, p1, Ldev/duo/taskcore/WorkspaceHost$Panel;->c:Landroid/view/SurfaceControl;

    .line 120
    invoke-virtual {v1, p1, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p2, p1, v0, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 121
    iget v5, p4, Ldev/duo/taskcore/WorkspaceHost$Item;->e:I

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceHost;->a(Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;FI)V

    .line 122
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 124
    iget-object p1, v2, Ldev/duo/taskcore/WorkspaceHost$Item;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 125
    :try_start_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method static synthetic a(Ldev/duo/taskcore/WorkspaceHost;Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;FI)V
    .locals 0

    .line 8
    invoke-direct/range {p0 .. p5}, Ldev/duo/taskcore/WorkspaceHost;->a(Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;FI)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Runnable;)V
    .locals 3

    .line 220
    iget v0, p0, Ldev/duo/taskcore/WorkspaceHost;->Q:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ldev/duo/taskcore/WorkspaceHost;->Q:I

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Ldev/duo/taskcore/WorkspaceHost;->E:Z

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->b(Z)V

    .line 222
    :cond_0
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->q()V

    .line 223
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 244
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "host close step failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DuoWorkbench"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;JLjava/lang/Runnable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ldev/duo/taskcore/WorkspaceHost$Item;",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Map<",
            "Ldev/duo/taskcore/WorkspaceHost$Item;",
            "Ljava/lang/Integer;",
            ">;J",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->f()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-lez v2, :cond_2

    .line 140
    iget-boolean v2, p0, Ldev/duo/taskcore/WorkspaceHost;->B:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    long-to-float v2, p3

    mul-float/2addr v2, v1

    const v1, 0x49742400    # 1000000.0f

    mul-float v3, v2, v1

    .line 151
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 152
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/duo/taskcore/WorkspaceHost$Item;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, v2, Ldev/duo/taskcore/WorkspaceHost$Item;->c:Landroid/graphics/Rect;

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    :cond_1
    const/4 v1, 0x1

    new-array v2, v1, [J

    const-wide/16 v6, -0x1

    const/4 v1, 0x0

    aput-wide v6, v2, v1

    .line 154
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 155
    new-instance v0, Ldev/duo/taskcore/WorkspaceHost$3;

    move-object v1, p0

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ldev/duo/taskcore/WorkspaceHost$3;-><init>(Ldev/duo/taskcore/WorkspaceHost;[JFLjava/util/Map;Ljava/util/Map;Landroid/graphics/Rect;Ljava/util/Map;)V

    .line 170
    move-object v1, v0

    iput-object p5, v1, Ldev/duo/taskcore/Frames$Driver;->a:Ljava/lang/Runnable;

    .line 171
    invoke-direct {p0, v1}, Ldev/duo/taskcore/WorkspaceHost;->a(Ldev/duo/taskcore/Frames$Driver;)V

    return-void

    :cond_2
    :goto_1
    nop

    .line 172
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ldev/duo/taskcore/WorkspaceHost;->a(Ldev/duo/taskcore/Frames$Driver;)V

    .line 173
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 174
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 175
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/duo/taskcore/WorkspaceHost$Item;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    if-nez p2, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/duo/taskcore/WorkspaceHost$Item;

    iget v2, v2, Ldev/duo/taskcore/WorkspaceHost$Item;->e:I

    move v5, v2

    goto :goto_3

    .line 176
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v5, v2

    .line 175
    :goto_3
    nop

    .line 176
    move-object v2, v3

    move-object v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceHost;->a(Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;FI)V

    goto :goto_2

    .line 177
    :cond_4
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    if-eqz p5, :cond_5

    .line 179
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void

    .line 175
    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 180
    :try_start_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2
.end method

.method private synthetic a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Runnable;Z)V
    .locals 9

    .line 196
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/duo/taskcore/WorkspaceHost$Item;

    iget-object v2, v2, Ldev/duo/taskcore/WorkspaceHost$Item;->d:Landroid/graphics/Rect;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/duo/taskcore/WorkspaceHost$Item;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Ldev/duo/taskcore/WorkspaceHost$Item;->e:I

    goto :goto_0

    .line 197
    :cond_0
    new-instance v8, Ldev/duo/taskcore/g$$ExternalSyntheticLambda16;

    invoke-direct {v8, p0, p3}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda16;-><init>(Ldev/duo/taskcore/WorkspaceHost;Ljava/lang/Runnable;)V

    if-eqz p4, :cond_2

    .line 203
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    move-object v0, p0

    move-object v4, p1

    move-object p1, p2

    goto :goto_1

    .line 212
    :cond_1
    const-wide/16 v6, 0x12c

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Ldev/duo/taskcore/WorkspaceHost;->a(Ljava/util/Map;Ljava/util/Map;JLjava/lang/Runnable;)V

    return-void

    .line 197
    :cond_2
    move-object v0, p0

    move-object v4, p1

    move-object p1, p2

    .line 212
    :goto_1
    nop

    .line 213
    const/4 p2, 0x0

    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceHost;->a(Ldev/duo/taskcore/Frames$Driver;)V

    .line 214
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 215
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Ldev/duo/taskcore/WorkspaceHost$Item;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Landroid/graphics/Rect;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceHost;->a(Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;FI)V

    move-object v0, p0

    goto :goto_2

    .line 216
    :cond_3
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 218
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    return-void

    .line 215
    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 219
    :try_start_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
.end method

.method private synthetic a(ZLdev/duo/taskcore/Geometry;)V
    .locals 7

    if-eqz p1, :cond_4

    .line 55
    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceHost;->B:Z

    if-nez p1, :cond_4

    .line 56
    iget-object p1, p2, Ldev/duo/taskcore/Geometry;->b:Landroid/graphics/Rect;

    iget-object v0, p2, Ldev/duo/taskcore/Geometry;->a:Landroid/graphics/Rect;

    .line 57
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->v:Ldev/duo/taskcore/WorkspaceHost$Panel;

    if-eqz v1, :cond_0

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceHost$Panel;->a:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControlViewHost;->relayout(II)V

    .line 58
    :cond_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->w:Ldev/duo/taskcore/WorkspaceHost$Panel;

    if-eqz v1, :cond_1

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceHost$Panel;->a:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p2}, Ldev/duo/taskcore/Geometry;->a()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/view/SurfaceControlViewHost;->relayout(II)V

    .line 59
    :cond_1
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->u:Ljava/util/Map;

    monitor-enter p1

    .line 60
    :try_start_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->u:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/duo/taskcore/WorkspaceHost$Item;

    .line 61
    iget-object v3, v2, Ldev/duo/taskcore/WorkspaceHost$Item;->a:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v3, v3, Ldev/duo/taskcore/WorkspaceHost$Panel;->a:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v3

    .line 62
    instance-of v4, v3, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 63
    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    :cond_2
    iget-object v2, v2, Ldev/duo/taskcore/WorkspaceHost$Item;->a:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v2, v2, Ldev/duo/taskcore/WorkspaceHost$Panel;->a:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControlViewHost;->relayout(II)V

    goto :goto_0

    .line 66
    :cond_3
    monitor-exit p1

    goto :goto_1

    .line 63
    :catchall_0
    move-exception p2

    .line 66
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 68
    :cond_4
    :goto_1
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Ldev/duo/taskcore/Geometry;->a()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {p1, p2}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->a(Ldev/duo/taskcore/WorkspaceHost$OverlayView;I)I

    .line 69
    :cond_5
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->q()V

    return-void
.end method

.method private synthetic a([Ldev/duo/taskcore/TaskBinding;)V
    .locals 6

    .line 229
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 230
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 231
    invoke-direct {p0, v3}, Ldev/duo/taskcore/WorkspaceHost;->a(Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 233
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, v3, Ldev/duo/taskcore/WorkspaceHost$Item;->d:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 234
    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceHost;->r:Ldev/duo/taskcore/Geometry;

    invoke-virtual {v5, v4}, Ldev/duo/taskcore/Geometry;->b(Landroid/graphics/Rect;)V

    .line 235
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 237
    const/4 v2, 0x0

    const-wide/16 v3, 0xb4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceHost;->a(Ljava/util/Map;Ljava/util/Map;JLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a([Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/TaskBinding;)V
    .locals 6

    .line 224
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 225
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Ldev/duo/taskcore/WorkspaceHost;->a(Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, v3, Ldev/duo/taskcore/WorkspaceHost$Item;->d:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_1
    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceHost;->a(Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 227
    new-instance p2, Landroid/graphics/Rect;

    iget-object v0, p1, Ldev/duo/taskcore/WorkspaceHost$Item;->d:Landroid/graphics/Rect;

    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    nop

    .line 228
    const/4 v2, 0x0

    const-wide/16 v3, 0xb4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceHost;->a(Ljava/util/Map;Ljava/util/Map;JLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Ldev/duo/taskcore/WorkspaceHost;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceHost;->M:Z

    return p1
.end method

.method static synthetic b()F
    .locals 1

    .line 4
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->f()F

    move-result v0

    return v0
.end method

.method static synthetic b(Ldev/duo/taskcore/WorkspaceHost;F)F
    .locals 0

    .line 3
    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost;->K:F

    return p1
.end method

.method static synthetic b(Ldev/duo/taskcore/WorkspaceHost;I)I
    .locals 0

    .line 2
    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost;->J:I

    return p1
.end method

.method private synthetic b(Ldev/duo/taskcore/TaskBinding;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceHost;->c(Ldev/duo/taskcore/TaskBinding;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/Runnable;)V
    .locals 2

    .line 14
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->t:Landroid/os/Handler;

    new-instance v1, Ldev/duo/taskcore/g$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda9;-><init>(Ldev/duo/taskcore/WorkspaceHost;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic b([Ldev/duo/taskcore/TaskBinding;)V
    .locals 1

    .line 15
    new-instance v0, Ldev/duo/taskcore/WorkspaceHost$5;

    invoke-direct {v0, p0, p1}, Ldev/duo/taskcore/WorkspaceHost$5;-><init>(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;)V

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceHost;->a(Ldev/duo/taskcore/Frames$Driver;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 1

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Ldev/duo/taskcore/WorkspaceHost;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldev/duo/taskcore/WorkspaceHost;->E:Z

    return p0
.end method

.method static declared-synchronized c()Landroid/os/Handler;
    .locals 4

    const-class v0, Ldev/duo/taskcore/WorkspaceHost;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Ldev/duo/taskcore/WorkspaceHost;->p:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "TaskCoreAnim"

    const/4 v3, -0x8

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 5
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Ldev/duo/taskcore/WorkspaceHost;->p:Landroid/os/Handler;

    .line 7
    :cond_0
    sget-object v1, Ldev/duo/taskcore/WorkspaceHost;->p:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic c([Ldev/duo/taskcore/TaskBinding;)V
    .locals 1

    .line 8
    new-instance v0, Ldev/duo/taskcore/WorkspaceHost$4;

    invoke-direct {v0, p0, p1}, Ldev/duo/taskcore/WorkspaceHost$4;-><init>(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;)V

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceHost;->a(Ldev/duo/taskcore/Frames$Driver;)V

    return-void
.end method

.method static synthetic c(Ldev/duo/taskcore/WorkspaceHost;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldev/duo/taskcore/WorkspaceHost;->O:Z

    return p0
.end method

.method static synthetic d(Ldev/duo/taskcore/WorkspaceHost;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldev/duo/taskcore/WorkspaceHost;->P:Z

    return p0
.end method

.method static synthetic e(Ldev/duo/taskcore/WorkspaceHost;)I
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/taskcore/WorkspaceHost;->Q:I

    return p0
.end method

.method private static f()F
    .locals 1

    .line 2
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    return v0
.end method

.method static synthetic f(Ldev/duo/taskcore/WorkspaceHost;)[Ldev/duo/taskcore/TaskBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceHost;->C:[Ldev/duo/taskcore/TaskBinding;

    return-object p0
.end method

.method static synthetic g(Ldev/duo/taskcore/WorkspaceHost;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldev/duo/taskcore/WorkspaceHost;->M:Z

    return p0
.end method

.method static synthetic h(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Geometry;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceHost;->r:Ldev/duo/taskcore/Geometry;

    return-object p0
.end method

.method private synthetic h()V
    .locals 1

    .line 2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->c()V

    :cond_0
    return-void
.end method

.method static synthetic i(Ldev/duo/taskcore/WorkspaceHost;)F
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/taskcore/WorkspaceHost;->L:F

    return p0
.end method

.method private synthetic i()V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceHost;->a(Ldev/duo/taskcore/Frames$Driver;)V

    return-void
.end method

.method static synthetic j(Ldev/duo/taskcore/WorkspaceHost;)I
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/taskcore/WorkspaceHost;->R:I

    return p0
.end method

.method private synthetic j()V
    .locals 3

    .line 2
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 3
    :try_start_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    .line 3
    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method static synthetic k(Ldev/duo/taskcore/WorkspaceHost;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceHost;->t:Landroid/os/Handler;

    return-object p0
.end method

.method private synthetic k()V
    .locals 1

    .line 2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->v:Ldev/duo/taskcore/WorkspaceHost$Panel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost$Panel;->a()V

    :cond_0
    return-void
.end method

.method private synthetic l()V
    .locals 1

    .line 2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->w:Ldev/duo/taskcore/WorkspaceHost$Panel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost$Panel;->a()V

    :cond_0
    return-void
.end method

.method static synthetic l(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->v()V

    return-void
.end method

.method static synthetic m(Ldev/duo/taskcore/WorkspaceHost;)I
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/taskcore/WorkspaceHost;->I:I

    return p0
.end method

.method private synthetic m()V
    .locals 2

    .line 2
    new-instance v0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda12;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    const-string v1, "detach root"

    invoke-static {v1, v0}, Ldev/duo/taskcore/WorkspaceHost;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldev/duo/taskcore/g$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda13;-><init>(Landroid/view/SurfaceControl;)V

    const-string v0, "release root"

    invoke-static {v0, v1}, Ldev/duo/taskcore/WorkspaceHost;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 8
    new-instance v0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda14;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    const-string v1, "release backdrop"

    invoke-static {v1, v0}, Ldev/duo/taskcore/WorkspaceHost;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 9
    new-instance v0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda15;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    const-string v1, "release overlay"

    invoke-static {v1, v0}, Ldev/duo/taskcore/WorkspaceHost;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic n(Ldev/duo/taskcore/WorkspaceHost;)I
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/taskcore/WorkspaceHost;->J:I

    return p0
.end method

.method private synthetic n()V
    .locals 2

    .line 2
    new-instance v0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda7;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    const-string v1, "stop animation"

    invoke-static {v1, v0}, Ldev/duo/taskcore/WorkspaceHost;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->t:Landroid/os/Handler;

    new-instance v1, Ldev/duo/taskcore/g$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda8;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic o()V
    .locals 2

    .line 2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->N:Ldev/duo/taskcore/Frames$Driver;

    const/4 v1, 0x0

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->N:Ldev/duo/taskcore/Frames$Driver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->H:Ldev/duo/taskcore/Frames;

    invoke-virtual {v1, v0}, Ldev/duo/taskcore/Frames;->c(Ldev/duo/taskcore/Frames$Driver;)V

    :cond_0
    return-void
.end method

.method static synthetic o(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->y()V

    return-void
.end method

.method static synthetic p(Ldev/duo/taskcore/WorkspaceHost;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceHost;->x:Landroid/view/View;

    return-object p0
.end method

.method private q()V
    .locals 2

    .line 2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 4
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->c()V

    .line 7
    :cond_1
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method static synthetic q(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->w()V

    return-void
.end method

.method static synthetic r(Ldev/duo/taskcore/WorkspaceHost;)F
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/taskcore/WorkspaceHost;->K:F

    return p0
.end method

.method static synthetic s(Ldev/duo/taskcore/WorkspaceHost;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldev/duo/taskcore/WorkspaceHost;->A:Z

    return p0
.end method

.method static synthetic t(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->u()V

    return-void
.end method

.method private u()V
    .locals 3

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->E:Z

    .line 3
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->x:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 4
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->b(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->C:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v0}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/duo/taskcore/TaskBinding;

    .line 6
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->c()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Ldev/duo/taskcore/g$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, v0}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda17;-><init>(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic u(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->x()V

    return-void
.end method

.method static synthetic v(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$OverlayView;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    return-object p0
.end method

.method private v()V
    .locals 4

    .line 2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->C:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v0}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/duo/taskcore/TaskBinding;

    .line 3
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->D:Ldev/duo/taskcore/TaskBinding;

    .line 4
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->c()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Ldev/duo/taskcore/g$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v1}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda2;-><init>(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/TaskBinding;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic w(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceHost;->z:Ldev/duo/taskcore/WorkspaceHost$Actions;

    return-object p0
.end method

.method private w()V
    .locals 3

    .line 2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->C:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v0}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/duo/taskcore/TaskBinding;

    .line 3
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->c()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Ldev/duo/taskcore/g$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, v0}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda20;-><init>(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic x(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Frames;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceHost;->H:Ldev/duo/taskcore/Frames;

    return-object p0
.end method

.method private x()V
    .locals 3

    .line 2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->C:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v0}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/duo/taskcore/TaskBinding;

    .line 3
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->c()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Ldev/duo/taskcore/g$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda0;-><init>(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private y()V
    .locals 2

    .line 2
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldev/duo/taskcore/g$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda18;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic y(Ldev/duo/taskcore/WorkspaceHost;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldev/duo/taskcore/WorkspaceHost;->B:Z

    return p0
.end method

.method static synthetic z(Ldev/duo/taskcore/WorkspaceHost;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceHost;->q:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 9
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 9
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/Boolean;)V
    .locals 2

    monitor-enter p0

    .line 10
    :try_start_0
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->B:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    .line 12
    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 13
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceHost;->a(Landroid/view/SurfaceControl$Transaction;)V

    if-eqz p3, :cond_0

    .line 14
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    nop

    .line 16
    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceHost;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 9
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Landroid/view/SurfaceControl;)V
    .locals 1

    .line 27
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->B:Z

    if-eqz v0, :cond_0

    return-void

    .line 28
    :cond_0
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->G:Landroid/view/SurfaceControl;

    .line 29
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 30
    :try_start_0
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceHost;->a(Landroid/view/SurfaceControl$Transaction;)V

    .line 31
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 33
    :try_start_1
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
.end method

.method a(Ldev/duo/taskcore/Geometry;)V
    .locals 3

    .line 34
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->B:Z

    if-eqz v0, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v0, p1, Ldev/duo/taskcore/Geometry;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->r:Ldev/duo/taskcore/Geometry;

    iget-object v1, v1, Ldev/duo/taskcore/Geometry;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 38
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->c()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Ldev/duo/taskcore/g$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1, v0}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda11;-><init>(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/Geometry;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a(Ldev/duo/taskcore/TaskBinding;Landroid/view/View;)V
    .locals 12

    .line 92
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->r:Ldev/duo/taskcore/Geometry;

    iget-object v5, v0, Ldev/duo/taskcore/Geometry;->a:Landroid/graphics/Rect;

    .line 93
    new-instance v7, Landroid/widget/FrameLayout;

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->q:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 97
    instance-of v0, p2, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 98
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/16 v10, 0x18

    const/4 v11, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Ldev/duo/taskcore/WorkspaceHost;->a(Landroid/view/View;IIIZ)Ldev/duo/taskcore/WorkspaceHost$Panel;

    move-result-object v3

    .line 101
    move-object v2, v6

    new-instance p2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskCore motion #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Ldev/duo/taskcore/TaskBinding;->a:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v1, v1, Ldev/duo/taskcore/TaskBinding$Origin;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    iget-object v0, v2, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    .line 102
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    .line 103
    new-instance v6, Ldev/duo/taskcore/WorkspaceHost$Item;

    invoke-direct {v6, v3, v4}, Ldev/duo/taskcore/WorkspaceHost$Item;-><init>(Ldev/duo/taskcore/WorkspaceHost$Panel;Landroid/view/SurfaceControl;)V

    .line 104
    iput-object v3, p1, Ldev/duo/taskcore/TaskBinding;->h:Ljava/lang/Object;

    .line 105
    iput-object v4, p1, Ldev/duo/taskcore/TaskBinding;->i:Ljava/lang/Object;

    .line 106
    iget-object p2, v2, Ldev/duo/taskcore/WorkspaceHost;->u:Ljava/util/Map;

    invoke-interface {p2, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v7, Landroid/graphics/Rect;

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding;->m:Landroid/graphics/Rect;

    invoke-direct {v7, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 108
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->c()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Ldev/duo/taskcore/g$$ExternalSyntheticLambda21;

    invoke-direct/range {v1 .. v7}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda21;-><init>(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/WorkspaceHost$Panel;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->q()V

    return-void
.end method

.method a(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;ZLjava/lang/Runnable;)V
    .locals 6

    .line 181
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 182
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 183
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceHost;->a(Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;

    move-result-object v0

    .line 184
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->D:Ldev/duo/taskcore/TaskBinding;

    if-eqz v0, :cond_0

    .line 185
    new-instance v1, Landroid/graphics/Rect;

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding;->m:Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x14

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    .line 186
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 187
    aget-object v1, p2, v0

    invoke-direct {p0, v1}, Ldev/duo/taskcore/WorkspaceHost;->a(Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 188
    new-instance v4, Landroid/graphics/Rect;

    aget-object v5, p2, v0

    iget-object v5, v5, Ldev/duo/taskcore/TaskBinding;->m:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v0, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_2
    iget p2, p0, Ldev/duo/taskcore/WorkspaceHost;->Q:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ldev/duo/taskcore/WorkspaceHost;->Q:I

    .line 191
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->a()V

    :cond_3
    if-eqz p3, :cond_4

    .line 193
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->b(Z)V

    .line 194
    :cond_4
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->q()V

    .line 195
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->c()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda6;

    move-object v1, p0

    move v5, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda6;-><init>(Ldev/duo/taskcore/WorkspaceHost;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Runnable;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ldev/duo/taskcore/WorkspaceHost$Actions;)V
    .locals 0

    .line 17
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->z:Ldev/duo/taskcore/WorkspaceHost$Actions;

    return-void
.end method

.method public a(I)Z
    .locals 3

    .line 246
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ltz p1, :cond_1

    .line 247
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->C:[Ldev/duo/taskcore/TaskBinding;

    aget-object v2, v2, p1

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Ldev/duo/taskcore/WorkspaceHost;->E:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 248
    :goto_0
    iget v0, p0, Ldev/duo/taskcore/WorkspaceHost;->R:I

    if-eq p1, v0, :cond_2

    .line 249
    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost;->R:I

    .line 250
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    if-ltz p1, :cond_2

    .line 251
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_2
    if-ltz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public b(Landroid/view/SurfaceControl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->B:Z

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    if-nez p1, :cond_1

    .line 7
    :try_start_0
    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceHost;->a(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_0

    .line 8
    :cond_1
    const-class v1, Landroid/view/SurfaceControl$Transaction;

    const-string v2, "setRelativeLayer"

    const-class v3, Landroid/view/SurfaceControl;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    .line 9
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method public b(Z)V
    .locals 1

    .line 16
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->O:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 17
    :cond_0
    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceHost;->O:Z

    if-eqz p1, :cond_1

    .line 18
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->a()V

    .line 19
    :cond_1
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->q()V

    return-void
.end method

.method c(Ldev/duo/taskcore/TaskBinding;)V
    .locals 2

    .line 13
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/duo/taskcore/WorkspaceHost$Item;

    if-nez p1, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldev/duo/taskcore/g$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda1;-><init>(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/WorkspaceHost$Item;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->q()V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 9
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->P:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 10
    :cond_0
    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceHost;->P:Z

    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->a()V

    .line 12
    :cond_1
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->q()V

    return-void
.end method

.method declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 2
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d(Ldev/duo/taskcore/TaskBinding;)V
    .locals 1

    .line 8
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->D:Ldev/duo/taskcore/TaskBinding;

    .line 9
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->x:Landroid/view/View;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 10
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 11
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->x:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->x:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Ldev/duo/taskcore/WorkspaceHost;->A:Z

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceHost;->A:Z

    .line 5
    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->a(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->A:Z

    invoke-virtual {p1, v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->a(Z)V

    .line 7
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d([Ldev/duo/taskcore/TaskBinding;)V
    .locals 1

    .line 12
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->C:[Ldev/duo/taskcore/TaskBinding;

    .line 13
    invoke-virtual {p1}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ldev/duo/taskcore/TaskBinding;

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->C:[Ldev/duo/taskcore/TaskBinding;

    .line 14
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->a([Ldev/duo/taskcore/TaskBinding;)V

    .line 15
    :cond_0
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->q()V

    return-void
.end method

.method public e()V
    .locals 6

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->B:Z

    .line 13
    new-instance v0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda3;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    const-string v1, "drop focus"

    invoke-static {v1, v0}, Ldev/duo/taskcore/WorkspaceHost;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->u:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ldev/duo/taskcore/TaskBinding;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ldev/duo/taskcore/g$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v3}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda4;-><init>(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/TaskBinding;)V

    invoke-static {v4, v5}, Ldev/duo/taskcore/WorkspaceHost;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldev/duo/taskcore/g$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Ldev/duo/taskcore/g$$ExternalSyntheticLambda5;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized e(Z)V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->B:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->F:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 7
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz v0, :cond_5

    if-nez p1, :cond_3

    .line 8
    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->c()V

    .line 9
    :cond_3
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceHost;->E:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->b(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    .line 5
    :catchall_0
    move-exception p1

    .line 10
    :try_start_3
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    .line 1
    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public g()Ldev/duo/taskcore/Geometry;
    .locals 1

    .line 2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->r:Ldev/duo/taskcore/Geometry;

    return-object v0
.end method

.method public p()V
    .locals 6

    .line 2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->q:Landroid/content/Context;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->A:Z

    .line 3
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->q:Landroid/content/Context;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->a(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 4
    new-instance v1, Ldev/duo/taskcore/WorkspaceHost$1;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->q:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Ldev/duo/taskcore/WorkspaceHost$1;-><init>(Ldev/duo/taskcore/WorkspaceHost;Landroid/content/Context;)V

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->x:Landroid/view/View;

    .line 29
    const-string v2, "\u9009\u62e9\u5927\u7a97\u5e94\u7528"

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->x:Landroid/view/View;

    iget-boolean v2, p0, Ldev/duo/taskcore/WorkspaceHost;->A:Z

    invoke-static {v2}, Ldev/duo/taskcore/WorkspaceHost;->a(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 32
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, v1, v2, v3, v4}, Ldev/duo/taskcore/WorkspaceHost;->a(Landroid/view/View;III)Ldev/duo/taskcore/WorkspaceHost$Panel;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->v:Ldev/duo/taskcore/WorkspaceHost$Panel;

    .line 33
    new-instance v1, Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->q:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;-><init>(Ldev/duo/taskcore/WorkspaceHost;Landroid/content/Context;)V

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    .line 34
    iget-boolean v2, p0, Ldev/duo/taskcore/WorkspaceHost;->A:Z

    invoke-virtual {v1, v2}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->a(Z)V

    .line 35
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->r:Ldev/duo/taskcore/Geometry;

    invoke-virtual {v1}, Ldev/duo/taskcore/Geometry;->a()Landroid/graphics/Rect;

    move-result-object v1

    .line 36
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {p0, v2, v3, v0, v4}, Ldev/duo/taskcore/WorkspaceHost;->a(Landroid/view/View;III)Ldev/duo/taskcore/WorkspaceHost$Panel;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->w:Ldev/duo/taskcore/WorkspaceHost$Panel;

    .line 37
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 38
    :try_start_0
    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceHost;->a(Landroid/view/SurfaceControl$Transaction;)V

    .line 39
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 40
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->v:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v2, v2, Ldev/duo/taskcore/WorkspaceHost$Panel;->c:Landroid/view/SurfaceControl;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceHost;->v:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v4, v4, Ldev/duo/taskcore/WorkspaceHost$Panel;->c:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceHost;->v:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v4, v4, Ldev/duo/taskcore/WorkspaceHost$Panel;->c:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 41
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->w:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v2, v2, Ldev/duo/taskcore/WorkspaceHost$Panel;->c:Landroid/view/SurfaceControl;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceHost;->w:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v4, v4, Ldev/duo/taskcore/WorkspaceHost$Panel;->c:Landroid/view/SurfaceControl;

    const/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceHost;->w:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v4, v4, Ldev/duo/taskcore/WorkspaceHost$Panel;->c:Landroid/view/SurfaceControl;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v1, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->w:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v2, v2, Ldev/duo/taskcore/WorkspaceHost$Panel;->c:Landroid/view/SurfaceControl;

    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 43
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    :catchall_0
    move-exception v1

    .line 45
    :try_start_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public r()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->v()V

    return-void
.end method

.method public s()V
    .locals 3

    .line 2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->y:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->c()V

    .line 3
    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4
    :try_start_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->v:Ldev/duo/taskcore/WorkspaceHost$Panel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceHost$Panel;->c:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->v:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceHost$Panel;->c:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 5
    :cond_1
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->w:Ldev/duo/taskcore/WorkspaceHost$Panel;

    if-eqz v1, :cond_2

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceHost$Panel;->c:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->w:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceHost$Panel;->c:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 6
    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    .line 4
    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public t()Landroid/view/SurfaceControl;
    .locals 1

    .line 2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->s:Landroid/view/SurfaceControl;

    return-object v0
.end method
