.class public final Ldev/duo/taskcore/WorkspaceHost;
.super Ljava/lang/Object;
.source "WorkspaceHost.java"


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
.field private static final BACKDROP:I = 0x0

.field private static final BACK_MS:J = 0xb4L

.field private static final BAR_GO:F = 0.35f

.field private static final BAR_H:I = 0xdc

.field private static final BAR_SLOP:I = 0x1e

.field private static final BAR_W:I = 0x6

.field private static final CORNER:F = 32.0f

.field private static final EASE:F = 0.35f

.field private static final HOLD_MS:J = 0x12cL

.field private static final LIFT:F = 1.05f

.field private static final LIFTED:I = 0x1e

.field private static final MOVE_MS:J = 0x12cL

.field private static final OVERLAY:I = 0x3e8

.field private static final ROOT_LAYER:I = 0x1000000

.field private static anim:Landroid/os/Handler;


# instance fields
.field private actions:Ldev/duo/taskcore/WorkspaceHost$Actions;

.field private backdrop:Ldev/duo/taskcore/WorkspaceHost$Panel;

.field private volatile barActive:Z

.field private volatile barDx:F

.field private volatile blocked:Z

.field private final context:Landroid/content/Context;

.field private volatile dragDy:F

.field private volatile dragFrom:I

.field private volatile dragTo:I

.field private final frames:Ldev/duo/taskcore/Frames;

.field private final geometry:Ldev/duo/taskcore/Geometry;

.field private volatile interactive:Z

.field private final items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ldev/duo/taskcore/TaskBinding;",
            "Ldev/duo/taskcore/WorkspaceHost$Item;",
            ">;"
        }
    .end annotation
.end field

.field private leaving:Z

.field private final main:Landroid/os/Handler;

.field private volatile mainBinding:Ldev/duo/taskcore/TaskBinding;

.field private night:Z

.field private overlay:Ldev/duo/taskcore/WorkspaceHost$Panel;

.field private overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

.field private parked:Ldev/duo/taskcore/Frames$Driver;

.field private placing:I

.field private plate:Landroid/view/View;

.field private volatile released:Z

.field private final root:Landroid/view/SurfaceControl;

.field private slotView:[Ldev/duo/taskcore/TaskBinding;

.field private systemAnimation:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/SurfaceControl;Ldev/duo/taskcore/Geometry;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->main:Landroid/os/Handler;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->items:Ljava/util/Map;

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Ldev/duo/taskcore/TaskBinding;

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->slotView:[Ldev/duo/taskcore/TaskBinding;

    .line 308
    new-instance v0, Ldev/duo/taskcore/Frames;

    new-instance v1, Ldev/duo/taskcore/WorkspaceHost$2;

    invoke-direct {v1, p0}, Ldev/duo/taskcore/WorkspaceHost$2;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    invoke-direct {v0, v1}, Ldev/duo/taskcore/Frames;-><init>(Ldev/duo/taskcore/Frames$Scheduler;)V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->frames:Ldev/duo/taskcore/Frames;

    .line 400
    const/4 v0, -0x1

    iput v0, p0, Ldev/duo/taskcore/WorkspaceHost;->dragFrom:I

    iput v0, p0, Ldev/duo/taskcore/WorkspaceHost;->dragTo:I

    .line 136
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->context:Landroid/content/Context;

    .line 137
    iput-object p3, p0, Ldev/duo/taskcore/WorkspaceHost;->geometry:Ldev/duo/taskcore/Geometry;

    .line 138
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

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    .line 139
    return-void
.end method

.method static synthetic access$000(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/TaskBinding;
    .locals 0

    .line 34
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceHost;->mainBinding:Ldev/duo/taskcore/TaskBinding;

    return-object p0
.end method

.method static synthetic access$100(Ldev/duo/taskcore/WorkspaceHost;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Ldev/duo/taskcore/WorkspaceHost;->leaving:Z

    return p0
.end method

.method static synthetic access$1000(Ldev/duo/taskcore/WorkspaceHost;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Ldev/duo/taskcore/WorkspaceHost;->blocked:Z

    return p0
.end method

.method static synthetic access$1100(Ldev/duo/taskcore/WorkspaceHost;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Ldev/duo/taskcore/WorkspaceHost;->interactive:Z

    return p0
.end method

.method static synthetic access$1200(Ldev/duo/taskcore/WorkspaceHost;)I
    .locals 0

    .line 34
    iget p0, p0, Ldev/duo/taskcore/WorkspaceHost;->placing:I

    return p0
.end method

.method static synthetic access$1300(Ldev/duo/taskcore/WorkspaceHost;)[Ldev/duo/taskcore/TaskBinding;
    .locals 0

    .line 34
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceHost;->slotView:[Ldev/duo/taskcore/TaskBinding;

    return-object p0
.end method

.method static synthetic access$1800(Ldev/duo/taskcore/WorkspaceHost;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Ldev/duo/taskcore/WorkspaceHost;->barActive:Z

    return p0
.end method

.method static synthetic access$1802(Ldev/duo/taskcore/WorkspaceHost;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceHost;->barActive:Z

    return p1
.end method

.method static synthetic access$1900(Ldev/duo/taskcore/WorkspaceHost;)F
    .locals 0

    .line 34
    iget p0, p0, Ldev/duo/taskcore/WorkspaceHost;->barDx:F

    return p0
.end method

.method static synthetic access$1902(Ldev/duo/taskcore/WorkspaceHost;F)F
    .locals 0

    .line 34
    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost;->barDx:F

    return p1
.end method

.method static synthetic access$200(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Geometry;
    .locals 0

    .line 34
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceHost;->geometry:Ldev/duo/taskcore/Geometry;

    return-object p0
.end method

.method static synthetic access$2000(Ldev/duo/taskcore/WorkspaceHost;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceHost;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2100(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->settleBack()V

    return-void
.end method

.method static synthetic access$2200(Ldev/duo/taskcore/WorkspaceHost;)I
    .locals 0

    .line 34
    iget p0, p0, Ldev/duo/taskcore/WorkspaceHost;->dragFrom:I

    return p0
.end method

.method static synthetic access$2202(Ldev/duo/taskcore/WorkspaceHost;I)I
    .locals 0

    .line 34
    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost;->dragFrom:I

    return p1
.end method

.method static synthetic access$2300(Ldev/duo/taskcore/WorkspaceHost;)I
    .locals 0

    .line 34
    iget p0, p0, Ldev/duo/taskcore/WorkspaceHost;->dragTo:I

    return p0
.end method

.method static synthetic access$2302(Ldev/duo/taskcore/WorkspaceHost;I)I
    .locals 0

    .line 34
    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost;->dragTo:I

    return p1
.end method

.method static synthetic access$2400(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->wakeFrames()V

    return-void
.end method

.method static synthetic access$2500(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->startBarFrames()V

    return-void
.end method

.method static synthetic access$2600(Ldev/duo/taskcore/WorkspaceHost;)F
    .locals 0

    .line 34
    iget p0, p0, Ldev/duo/taskcore/WorkspaceHost;->dragDy:F

    return p0
.end method

.method static synthetic access$2602(Ldev/duo/taskcore/WorkspaceHost;F)F
    .locals 0

    .line 34
    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost;->dragDy:F

    return p1
.end method

.method static synthetic access$2700(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->sendCardsAway()V

    return-void
.end method

.method static synthetic access$2800(Ldev/duo/taskcore/WorkspaceHost;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->startDragFrames()V

    return-void
.end method

.method static synthetic access$2902(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/Frames$Driver;)Ldev/duo/taskcore/Frames$Driver;
    .locals 0

    .line 34
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->parked:Ldev/duo/taskcore/Frames$Driver;

    return-object p1
.end method

.method static synthetic access$300(Ldev/duo/taskcore/WorkspaceHost;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Ldev/duo/taskcore/WorkspaceHost;->night:Z

    return p0
.end method

.method static synthetic access$3000(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceHost;->item(Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100()F
    .locals 1

    .line 34
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->durationScale()F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$OverlayView;
    .locals 0

    .line 34
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    return-object p0
.end method

.method static synthetic access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;
    .locals 0

    .line 34
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceHost;->actions:Ldev/duo/taskcore/WorkspaceHost$Actions;

    return-object p0
.end method

.method static synthetic access$600(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Frames;
    .locals 0

    .line 34
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceHost;->frames:Ldev/duo/taskcore/Frames;

    return-object p0
.end method

.method static synthetic access$700(Ldev/duo/taskcore/WorkspaceHost;Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;FI)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p5}, Ldev/duo/taskcore/WorkspaceHost;->write(Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;FI)V

    return-void
.end method

.method static synthetic access$800(Ldev/duo/taskcore/WorkspaceHost;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Ldev/duo/taskcore/WorkspaceHost;->released:Z

    return p0
.end method

.method static synthetic access$900(Ldev/duo/taskcore/WorkspaceHost;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceHost;->context:Landroid/content/Context;

    return-object p0
.end method

.method static declared-synchronized animHandler()Landroid/os/Handler;
    .locals 4

    const-class v0, Ldev/duo/taskcore/WorkspaceHost;

    monitor-enter v0

    .line 143
    :try_start_0
    sget-object v1, Ldev/duo/taskcore/WorkspaceHost;->anim:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "TaskCoreAnim"

    const/4 v3, -0x8

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 145
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 146
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Ldev/duo/taskcore/WorkspaceHost;->anim:Landroid/os/Handler;

    .line 148
    :cond_0
    sget-object v1, Ldev/duo/taskcore/WorkspaceHost;->anim:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 142
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static displayRect(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    .line 255
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 256
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 257
    new-instance p0, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v1, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private static durationScale()F
    .locals 1

    .line 321
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    return v0
.end method

.method private item(Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;
    .locals 1

    .line 305
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->items:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/duo/taskcore/WorkspaceHost$Item;

    :goto_0
    return-object p1
.end method

.method private panel(Landroid/view/View;III)Ldev/duo/taskcore/WorkspaceHost$Panel;
    .locals 6

    .line 228
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceHost;->panel(Landroid/view/View;IIIZ)Ldev/duo/taskcore/WorkspaceHost$Panel;

    move-result-object p1

    return-object p1
.end method

.method private panel(Landroid/view/View;IIIZ)Ldev/duo/taskcore/WorkspaceHost$Panel;
    .locals 11

    .line 236
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->context:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 237
    new-instance v1, Landroid/view/SurfaceControlViewHost;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->context:Landroid/content/Context;

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Landroid/os/IBinder;

    invoke-direct {v1, v2, v0, v3}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    .line 238
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    const/4 v8, 0x2

    const/4 v10, -0x3

    move v6, p2

    move v7, p3

    move v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 241
    if-nez p5, :cond_0

    .line 242
    :try_start_0
    const-class p2, Landroid/view/WindowManager$LayoutParams;

    const-string p3, "inputFeatures"

    invoke-virtual {p2, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 243
    const-class p3, Landroid/view/WindowManager$LayoutParams;

    const-string v0, "INPUT_FEATURE_NO_INPUT_CHANNEL"

    invoke-virtual {p3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p3

    .line 244
    invoke-virtual {p2, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr p3, v0

    invoke-virtual {p2, v5, p3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 246
    :cond_0
    const-class p2, Landroid/view/SurfaceControlViewHost;

    const-string p3, "setView"

    const-class v0, Landroid/view/View;

    const-class v2, Landroid/view/WindowManager$LayoutParams;

    filled-new-array {v0, v2}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    filled-new-array {p1, v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    nop

    .line 251
    new-instance p1, Ldev/duo/taskcore/WorkspaceHost$Panel;

    invoke-direct {p1, v1}, Ldev/duo/taskcore/WorkspaceHost$Panel;-><init>(Landroid/view/SurfaceControlViewHost;)V

    return-object p1

    .line 247
    :catch_0
    move-exception v0

    move-object p1, v0

    .line 248
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 249
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "panel flags "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static plateColor(Z)I
    .locals 0

    .line 217
    if-eqz p0, :cond_0

    const p0, -0xefeff0

    goto :goto_0

    :cond_0
    const p0, -0xf0f0e

    :goto_0
    return p0
.end method

.method private refreshOverlay()V
    .locals 2

    .line 612
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-nez v0, :cond_0

    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->invalidate()V

    .line 614
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->open()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->dropFocus()V

    .line 616
    :cond_1
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->sendAccessibilityEvent(I)V

    .line 617
    return-void
.end method

.method private run(Ldev/duo/taskcore/Frames$Driver;)V
    .locals 1

    .line 318
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->frames:Ldev/duo/taskcore/Frames;

    invoke-virtual {v0, p1}, Ldev/duo/taskcore/Frames;->run(Ldev/duo/taskcore/Frames$Driver;)V

    return-void
.end method

.method private sendCardsAway()V
    .locals 3

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->leaving:Z

    .line 527
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->showBar(Z)V

    .line 528
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->slotView:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v0}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/duo/taskcore/TaskBinding;

    .line 529
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->animHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda10;-><init>(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 540
    return-void
.end method

.method private settleBack()V
    .locals 4

    .line 513
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->slotView:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v0}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/duo/taskcore/TaskBinding;

    .line 514
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->mainBinding:Ldev/duo/taskcore/TaskBinding;

    .line 515
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->animHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0, v0, v1}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda19;-><init>(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/TaskBinding;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 522
    return-void
.end method

.method private startBarFrames()V
    .locals 3

    .line 455
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->slotView:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v0}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/duo/taskcore/TaskBinding;

    .line 456
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->animHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda4;-><init>(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 480
    return-void
.end method

.method private startDragFrames()V
    .locals 3

    .line 417
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->slotView:[Ldev/duo/taskcore/TaskBinding;

    invoke-virtual {v0}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/duo/taskcore/TaskBinding;

    .line 418
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->animHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda11;-><init>(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 451
    return-void
.end method

.method private static step(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 579
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

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

    .line 580
    :goto_0
    return-void
.end method

.method private static systemNight(Landroid/content/Context;)Z
    .locals 1

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private tween(Ljava/util/Map;Ljava/util/Map;JLjava/lang/Runnable;)V
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

    .line 325
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->durationScale()F

    move-result v1

    .line 326
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-lez v2, :cond_2

    iget-boolean v2, p0, Ldev/duo/taskcore/WorkspaceHost;->released:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 336
    :cond_0
    long-to-float v2, p3

    mul-float/2addr v2, v1

    const v1, 0x49742400    # 1000000.0f

    mul-float v3, v2, v1

    .line 337
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 338
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

    iget-object v6, v2, Ldev/duo/taskcore/WorkspaceHost$Item;->shown:Landroid/graphics/Rect;

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 339
    :cond_1
    const/4 v1, 0x1

    new-array v2, v1, [J

    const-wide/16 v6, -0x1

    const/4 v1, 0x0

    aput-wide v6, v2, v1

    .line 340
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 341
    new-instance v0, Ldev/duo/taskcore/WorkspaceHost$3;

    move-object v1, p0

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ldev/duo/taskcore/WorkspaceHost$3;-><init>(Ldev/duo/taskcore/WorkspaceHost;[JFLjava/util/Map;Ljava/util/Map;Landroid/graphics/Rect;Ljava/util/Map;)V

    .line 356
    move-object v1, v0

    iput-object p5, v1, Ldev/duo/taskcore/Frames$Driver;->end:Ljava/lang/Runnable;

    .line 357
    invoke-direct {p0, v1}, Ldev/duo/taskcore/WorkspaceHost;->run(Ldev/duo/taskcore/Frames$Driver;)V

    .line 358
    return-void

    .line 327
    :cond_2
    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ldev/duo/taskcore/WorkspaceHost;->run(Ldev/duo/taskcore/Frames$Driver;)V

    .line 328
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 329
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

    .line 330
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

    iget v2, v2, Ldev/duo/taskcore/WorkspaceHost$Item;->layer:I

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_3
    move v5, v2

    move-object v2, v3

    move-object v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceHost;->write(Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;FI)V

    goto :goto_2

    .line 331
    :cond_4
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 333
    if-eqz p5, :cond_5

    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 334
    :cond_5
    return-void

    .line 328
    :catchall_0
    move-exception v0

    move-object v2, v0

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

.method private wakeFrames()V
    .locals 2

    .line 412
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->animHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda2;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 413
    return-void
.end method

.method private write(Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;FI)V
    .locals 5

    .line 292
    iget-object v0, p2, Ldev/duo/taskcore/WorkspaceHost$Item;->motion:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    nop

    .line 294
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p4, v0

    if-eqz v1, :cond_1

    .line 295
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

    .line 296
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

    .line 294
    :cond_1
    move-object v0, p3

    .line 298
    :goto_0
    iget-object p4, p0, Ldev/duo/taskcore/WorkspaceHost;->geometry:Ldev/duo/taskcore/Geometry;

    invoke-virtual {p4, v0}, Ldev/duo/taskcore/Geometry;->matrixFor(Landroid/graphics/Rect;)[F

    move-result-object p4

    .line 299
    iget-object v0, p2, Ldev/duo/taskcore/WorkspaceHost$Item;->motion:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    aget v2, p4, v1

    aget v3, p4, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p2, Ldev/duo/taskcore/WorkspaceHost$Item;->motion:Landroid/view/SurfaceControl;

    const/4 v3, 0x1

    aget v3, p4, v3

    const/4 v4, 0x2

    aget v4, p4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p2, Ldev/duo/taskcore/WorkspaceHost$Item;->motion:Landroid/view/SurfaceControl;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceHost;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v3, v3, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    .line 300
    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p2, Ldev/duo/taskcore/WorkspaceHost$Item;->motion:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, p5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 301
    iget-object p5, p2, Ldev/duo/taskcore/WorkspaceHost$Item;->motion:Landroid/view/SurfaceControl;

    const/high16 v0, 0x42000000    # 32.0f

    aget p4, p4, v1

    div-float/2addr v0, p4

    invoke-static {p1, p5, v0}, Ldev/duo/taskcore/Tx;->corner(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)V

    .line 302
    iget-object p1, p2, Ldev/duo/taskcore/WorkspaceHost$Item;->shown:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 303
    return-void
.end method


# virtual methods
.method declared-synchronized abandonSystemAnimation()V
    .locals 1

    monitor-enter p0

    .line 90
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->systemAnimation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method addTask(Ldev/duo/taskcore/TaskBinding;Landroid/view/View;)V
    .locals 12

    .line 262
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v5, v0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    .line 263
    new-instance v7, Landroid/widget/FrameLayout;

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->context:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 267
    instance-of v0, p2, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 268
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/16 v10, 0x18

    const/4 v11, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Ldev/duo/taskcore/WorkspaceHost;->panel(Landroid/view/View;IIIZ)Ldev/duo/taskcore/WorkspaceHost$Panel;

    move-result-object v3

    .line 271
    move-object v2, v6

    new-instance p2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskCore motion #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v1, v1, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    iget-object v0, v2, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    .line 272
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    .line 273
    new-instance v6, Ldev/duo/taskcore/WorkspaceHost$Item;

    invoke-direct {v6, v3, v4}, Ldev/duo/taskcore/WorkspaceHost$Item;-><init>(Ldev/duo/taskcore/WorkspaceHost$Panel;Landroid/view/SurfaceControl;)V

    .line 274
    iput-object v3, p1, Ldev/duo/taskcore/TaskBinding;->host:Ljava/lang/Object;

    .line 275
    iput-object v4, p1, Ldev/duo/taskcore/TaskBinding;->motionRoot:Ljava/lang/Object;

    .line 276
    iget-object p2, v2, Ldev/duo/taskcore/WorkspaceHost;->items:Ljava/util/Map;

    invoke-interface {p2, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v7, Landroid/graphics/Rect;

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding;->physical:Landroid/graphics/Rect;

    invoke-direct {v7, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 278
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->animHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda8;

    invoke-direct/range {v1 .. v7}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda8;-><init>(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/WorkspaceHost$Panel;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->refreshOverlay()V

    .line 288
    return-void
.end method

.method declared-synchronized beginSystemAnimation()V
    .locals 1

    monitor-enter p0

    .line 89
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->systemAnimation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public belowSystemPip(Landroid/view/SurfaceControl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 158
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 160
    if-nez p1, :cond_1

    :try_start_0
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 161
    :cond_1
    const-class v1, Landroid/view/SurfaceControl$Transaction;

    const-string v2, "setRelativeLayer"

    const-class v3, Landroid/view/SurfaceControl;

    const-class v4, Landroid/view/SurfaceControl;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4, v5}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    .line 162
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :goto_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 165
    return-void

    .line 159
    :catchall_0
    move-exception p1

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

.method public close()V
    .locals 4

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->released:Z

    .line 561
    new-instance v0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda16;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    const-string v1, "drop focus"

    invoke-static {v1, v0}, Ldev/duo/taskcore/WorkspaceHost;->step(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 562
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->items:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/taskcore/TaskBinding;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0, v1}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda17;-><init>(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/TaskBinding;)V

    invoke-static {v2, v3}, Ldev/duo/taskcore/WorkspaceHost;->step(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 563
    :cond_0
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->animHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda18;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 576
    return-void
.end method

.method declared-synchronized finishSystemAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/Boolean;)V
    .locals 2

    monitor-enter p0

    .line 93
    :try_start_0
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->released:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    .line 95
    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    const/high16 v1, 0x1000000

    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 96
    if-eqz p3, :cond_0

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 98
    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceHost;->systemAnimation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public geometry()Ldev/duo/taskcore/Geometry;
    .locals 1

    .line 167
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->geometry:Ldev/duo/taskcore/Geometry;

    return-object v0
.end method

.method synthetic lambda$addTask$0$dev-duo-taskcore-WorkspaceHost(Ldev/duo/taskcore/WorkspaceHost$Panel;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;)V
    .locals 6

    .line 279
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 280
    :try_start_0
    iget-object p1, p1, Ldev/duo/taskcore/WorkspaceHost$Panel;->surface:Landroid/view/SurfaceControl;

    .line 281
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

    .line 282
    iget v5, p4, Ldev/duo/taskcore/WorkspaceHost$Item;->layer:I

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceHost;->write(Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;FI)V

    .line 283
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 285
    iget-object p1, v2, Ldev/duo/taskcore/WorkspaceHost$Item;->rest:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 286
    return-void

    .line 279
    :catchall_0
    move-exception v0

    move-object p1, v0

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

.method synthetic lambda$close$10$dev-duo-taskcore-WorkspaceHost()V
    .locals 1

    .line 561
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->dropFocus()V

    :cond_0
    return-void
.end method

.method synthetic lambda$close$11$dev-duo-taskcore-WorkspaceHost(Ldev/duo/taskcore/TaskBinding;)V
    .locals 0

    .line 562
    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceHost;->removeTask(Ldev/duo/taskcore/TaskBinding;)V

    return-void
.end method

.method synthetic lambda$close$12$dev-duo-taskcore-WorkspaceHost()V
    .locals 1

    .line 564
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceHost;->run(Ldev/duo/taskcore/Frames$Driver;)V

    return-void
.end method

.method synthetic lambda$close$13$dev-duo-taskcore-WorkspaceHost()V
    .locals 3

    .line 567
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 568
    :try_start_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 570
    return-void

    .line 567
    :catchall_0
    move-exception v1

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

.method synthetic lambda$close$14$dev-duo-taskcore-WorkspaceHost()V
    .locals 1

    .line 572
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->backdrop:Ldev/duo/taskcore/WorkspaceHost$Panel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->backdrop:Ldev/duo/taskcore/WorkspaceHost$Panel;

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost$Panel;->release()V

    :cond_0
    return-void
.end method

.method synthetic lambda$close$15$dev-duo-taskcore-WorkspaceHost()V
    .locals 1

    .line 573
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlay:Ldev/duo/taskcore/WorkspaceHost$Panel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlay:Ldev/duo/taskcore/WorkspaceHost$Panel;

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost$Panel;->release()V

    :cond_0
    return-void
.end method

.method synthetic lambda$close$16$dev-duo-taskcore-WorkspaceHost()V
    .locals 2

    .line 566
    new-instance v0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda12;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    const-string v1, "detach root"

    invoke-static {v1, v0}, Ldev/duo/taskcore/WorkspaceHost;->step(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 571
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda13;-><init>(Landroid/view/SurfaceControl;)V

    const-string v0, "release root"

    invoke-static {v0, v1}, Ldev/duo/taskcore/WorkspaceHost;->step(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 572
    new-instance v0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda14;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    const-string v1, "release backdrop"

    invoke-static {v1, v0}, Ldev/duo/taskcore/WorkspaceHost;->step(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 573
    new-instance v0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda15;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    const-string v1, "release overlay"

    invoke-static {v1, v0}, Ldev/duo/taskcore/WorkspaceHost;->step(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 574
    return-void
.end method

.method synthetic lambda$close$17$dev-duo-taskcore-WorkspaceHost()V
    .locals 2

    .line 564
    new-instance v0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda6;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    const-string v1, "stop animation"

    invoke-static {v1, v0}, Ldev/duo/taskcore/WorkspaceHost;->step(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 565
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->main:Landroid/os/Handler;

    new-instance v1, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda7;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 575
    return-void
.end method

.method synthetic lambda$place$1$dev-duo-taskcore-WorkspaceHost(Ljava/lang/Runnable;)V
    .locals 2

    .line 380
    iget v0, p0, Ldev/duo/taskcore/WorkspaceHost;->placing:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ldev/duo/taskcore/WorkspaceHost;->placing:I

    .line 381
    iget v0, p0, Ldev/duo/taskcore/WorkspaceHost;->placing:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->leaving:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {v0, v1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->showBar(Z)V

    .line 382
    :cond_0
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->refreshOverlay()V

    .line 383
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 384
    return-void
.end method

.method synthetic lambda$place$2$dev-duo-taskcore-WorkspaceHost(Ljava/lang/Runnable;)V
    .locals 2

    .line 379
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->main:Landroid/os/Handler;

    new-instance v1, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda1;-><init>(Ldev/duo/taskcore/WorkspaceHost;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$place$3$dev-duo-taskcore-WorkspaceHost(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Runnable;Z)V
    .locals 9

    .line 378
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

    iget-object v2, v2, Ldev/duo/taskcore/WorkspaceHost$Item;->rest:Landroid/graphics/Rect;

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

    iput v1, v2, Ldev/duo/taskcore/WorkspaceHost$Item;->layer:I

    goto :goto_0

    .line 379
    :cond_0
    new-instance v8, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0, p3}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda3;-><init>(Ldev/duo/taskcore/WorkspaceHost;Ljava/lang/Runnable;)V

    .line 385
    if-eqz p4, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    move-object v0, p0

    move-object v4, p1

    move-object p1, p2

    goto :goto_1

    .line 394
    :cond_1
    const-wide/16 v6, 0x12c

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Ldev/duo/taskcore/WorkspaceHost;->tween(Ljava/util/Map;Ljava/util/Map;JLjava/lang/Runnable;)V

    .line 395
    return-void

    .line 385
    :cond_2
    move-object v0, p0

    move-object v4, p1

    move-object p1, p2

    .line 386
    :goto_1
    const/4 p2, 0x0

    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceHost;->run(Ldev/duo/taskcore/Frames$Driver;)V

    .line 387
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 388
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

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceHost;->write(Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;FI)V

    move-object v0, p0

    goto :goto_2

    .line 389
    :cond_3
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 391
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 392
    return-void

    .line 387
    :catchall_0
    move-exception v0

    move-object p1, v0

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

.method synthetic lambda$removeTask$9$dev-duo-taskcore-WorkspaceHost(Ldev/duo/taskcore/WorkspaceHost$Item;)V
    .locals 3

    .line 548
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 549
    :try_start_0
    iget-object v1, p1, Ldev/duo/taskcore/WorkspaceHost$Item;->motion:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Ldev/duo/taskcore/WorkspaceHost$Item;->motion:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 551
    iget-object v0, p1, Ldev/duo/taskcore/WorkspaceHost$Item;->motion:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 552
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->main:Landroid/os/Handler;

    iget-object p1, p1, Ldev/duo/taskcore/WorkspaceHost$Item;->host:Ldev/duo/taskcore/WorkspaceHost$Panel;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda9;-><init>(Ldev/duo/taskcore/WorkspaceHost$Panel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 553
    return-void

    .line 548
    :catchall_0
    move-exception p1

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

.method synthetic lambda$sendCardsAway$8$dev-duo-taskcore-WorkspaceHost([Ldev/duo/taskcore/TaskBinding;)V
    .locals 7

    .line 530
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 531
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    .line 532
    invoke-direct {p0, v4}, Ldev/duo/taskcore/WorkspaceHost;->item(Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;

    move-result-object v4

    .line 533
    if-nez v4, :cond_0

    goto :goto_1

    .line 534
    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v4, Ldev/duo/taskcore/WorkspaceHost$Item;->rest:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 535
    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v6, 0x28

    neg-int v6, v6

    invoke-virtual {v5, v6, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 536
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 538
    :cond_1
    const-wide/16 v3, 0xb4

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceHost;->tween(Ljava/util/Map;Ljava/util/Map;JLjava/lang/Runnable;)V

    .line 539
    return-void
.end method

.method synthetic lambda$settleBack$7$dev-duo-taskcore-WorkspaceHost([Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/TaskBinding;)V
    .locals 6

    .line 516
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 517
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Ldev/duo/taskcore/WorkspaceHost;->item(Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, v3, Ldev/duo/taskcore/WorkspaceHost$Item;->rest:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 518
    :cond_1
    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceHost;->item(Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;

    move-result-object p1

    .line 519
    if-eqz p1, :cond_2

    new-instance p2, Landroid/graphics/Rect;

    iget-object v0, p1, Ldev/duo/taskcore/WorkspaceHost$Item;->rest:Landroid/graphics/Rect;

    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_2
    const-wide/16 v3, 0xb4

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceHost;->tween(Ljava/util/Map;Ljava/util/Map;JLjava/lang/Runnable;)V

    .line 521
    return-void
.end method

.method synthetic lambda$startBarFrames$6$dev-duo-taskcore-WorkspaceHost([Ldev/duo/taskcore/TaskBinding;)V
    .locals 1

    .line 456
    new-instance v0, Ldev/duo/taskcore/WorkspaceHost$5;

    invoke-direct {v0, p0, p1}, Ldev/duo/taskcore/WorkspaceHost$5;-><init>(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;)V

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceHost;->run(Ldev/duo/taskcore/Frames$Driver;)V

    return-void
.end method

.method synthetic lambda$startDragFrames$5$dev-duo-taskcore-WorkspaceHost([Ldev/duo/taskcore/TaskBinding;)V
    .locals 1

    .line 418
    new-instance v0, Ldev/duo/taskcore/WorkspaceHost$4;

    invoke-direct {v0, p0, p1}, Ldev/duo/taskcore/WorkspaceHost$4;-><init>(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;)V

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceHost;->run(Ldev/duo/taskcore/Frames$Driver;)V

    return-void
.end method

.method synthetic lambda$wakeFrames$4$dev-duo-taskcore-WorkspaceHost()V
    .locals 2

    .line 412
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->parked:Ldev/duo/taskcore/Frames$Driver;

    const/4 v1, 0x0

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->parked:Ldev/duo/taskcore/Frames$Driver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->frames:Ldev/duo/taskcore/Frames;

    invoke-virtual {v1, v0}, Ldev/duo/taskcore/Frames;->next(Ldev/duo/taskcore/Frames$Driver;)V

    :cond_0
    return-void
.end method

.method public open()V
    .locals 5

    .line 175
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->context:Landroid/content/Context;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->systemNight(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->night:Z

    .line 176
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->context:Landroid/content/Context;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->displayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 177
    new-instance v1, Ldev/duo/taskcore/WorkspaceHost$1;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Ldev/duo/taskcore/WorkspaceHost$1;-><init>(Ldev/duo/taskcore/WorkspaceHost;Landroid/content/Context;)V

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->plate:Landroid/view/View;

    .line 202
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->plate:Landroid/view/View;

    const-string v2, "\u9009\u62e9\u5927\u7a97\u5e94\u7528"

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->plate:Landroid/view/View;

    iget-boolean v2, p0, Ldev/duo/taskcore/WorkspaceHost;->night:Z

    invoke-static {v2}, Ldev/duo/taskcore/WorkspaceHost;->plateColor(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 205
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->plate:Landroid/view/View;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, v1, v2, v3, v4}, Ldev/duo/taskcore/WorkspaceHost;->panel(Landroid/view/View;III)Ldev/duo/taskcore/WorkspaceHost$Panel;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->backdrop:Ldev/duo/taskcore/WorkspaceHost$Panel;

    .line 206
    new-instance v1, Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;-><init>(Ldev/duo/taskcore/WorkspaceHost;Landroid/content/Context;)V

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    .line 207
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    iget-boolean v2, p0, Ldev/duo/taskcore/WorkspaceHost;->night:Z

    invoke-virtual {v1, v2}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->colors(Z)V

    .line 208
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v2, v2, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {p0, v1, v2, v0, v4}, Ldev/duo/taskcore/WorkspaceHost;->panel(Landroid/view/View;III)Ldev/duo/taskcore/WorkspaceHost$Panel;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlay:Ldev/duo/taskcore/WorkspaceHost$Panel;

    .line 209
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 210
    :try_start_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 211
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->backdrop:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceHost$Panel;->surface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->backdrop:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v2, v2, Ldev/duo/taskcore/WorkspaceHost$Panel;->surface:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->backdrop:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v2, v2, Ldev/duo/taskcore/WorkspaceHost$Panel;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 212
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->overlay:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceHost$Panel;->surface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->overlay:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v2, v2, Ldev/duo/taskcore/WorkspaceHost$Panel;->surface:Landroid/view/SurfaceControl;

    const/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost;->overlay:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v2, v2, Ldev/duo/taskcore/WorkspaceHost$Panel;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 213
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 215
    return-void

    .line 209
    :catchall_0
    move-exception v1

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

.method place(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;ZLjava/lang/Runnable;)V
    .locals 6

    .line 363
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 364
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 365
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceHost;->item(Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;

    move-result-object v0

    .line 366
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->mainBinding:Ldev/duo/taskcore/TaskBinding;

    .line 367
    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding;->physical:Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x14

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_0
    const/4 p1, 0x0

    move v0, p1

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 369
    aget-object v1, p2, v0

    invoke-direct {p0, v1}, Ldev/duo/taskcore/WorkspaceHost;->item(Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;

    move-result-object v1

    .line 370
    if-eqz v1, :cond_1

    new-instance v4, Landroid/graphics/Rect;

    aget-object v5, p2, v0

    iget-object v5, v5, Ldev/duo/taskcore/TaskBinding;->physical:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v0, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_2
    iget p2, p0, Ldev/duo/taskcore/WorkspaceHost;->placing:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ldev/duo/taskcore/WorkspaceHost;->placing:I

    .line 373
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz p2, :cond_3

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {p2}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->abandon()V

    .line 375
    :cond_3
    if-eqz p3, :cond_4

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz p2, :cond_4

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {p2, p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->showBar(Z)V

    .line 376
    :cond_4
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->refreshOverlay()V

    .line 377
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->animHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda5;

    move-object v1, p0

    move v5, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda5;-><init>(Ldev/duo/taskcore/WorkspaceHost;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Runnable;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    return-void
.end method

.method removeTask(Ldev/duo/taskcore/TaskBinding;)V
    .locals 2

    .line 544
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->items:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/duo/taskcore/WorkspaceHost$Item;

    .line 545
    if-nez p1, :cond_0

    return-void

    .line 547
    :cond_0
    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->animHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda0;-><init>(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/WorkspaceHost$Item;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 554
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->refreshOverlay()V

    .line 555
    return-void
.end method

.method public resettle()V
    .locals 0

    .line 505
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->settleBack()V

    return-void
.end method

.method public retainTasksOnly()V
    .locals 3

    .line 587
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->dropFocus()V

    .line 588
    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 589
    :try_start_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->backdrop:Ldev/duo/taskcore/WorkspaceHost$Panel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->backdrop:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceHost$Panel;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->backdrop:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceHost$Panel;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 590
    :cond_1
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->overlay:Ldev/duo/taskcore/WorkspaceHost$Panel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->overlay:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceHost$Panel;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->overlay:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceHost$Panel;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 591
    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 593
    return-void

    .line 588
    :catchall_0
    move-exception v1

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

.method public root()Landroid/view/SurfaceControl;
    .locals 1

    .line 154
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public setActions(Ldev/duo/taskcore/WorkspaceHost$Actions;)V
    .locals 0

    .line 151
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->actions:Ldev/duo/taskcore/WorkspaceHost$Actions;

    return-void
.end method

.method public setBlocked(Z)V
    .locals 1

    .line 498
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->blocked:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 499
    :cond_0
    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceHost;->blocked:Z

    .line 500
    if-eqz p1, :cond_1

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->abandon()V

    .line 501
    :cond_1
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->refreshOverlay()V

    .line 502
    return-void
.end method

.method public setInteractive(Z)V
    .locals 1

    .line 487
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->interactive:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 488
    :cond_0
    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceHost;->interactive:Z

    .line 489
    if-nez p1, :cond_1

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->abandon()V

    .line 490
    :cond_1
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->refreshOverlay()V

    .line 491
    return-void
.end method

.method public setNight(Z)V
    .locals 1

    .line 221
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->plate:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->night:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    iput-boolean p1, p0, Ldev/duo/taskcore/WorkspaceHost;->night:Z

    .line 223
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->plate:Landroid/view/View;

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->night:Z

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->plateColor(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 224
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->night:Z

    invoke-virtual {p1, v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->colors(Z)V

    .line 225
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->invalidate()V

    .line 226
    return-void

    .line 221
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized setShown(Z)V
    .locals 2

    monitor-enter p0

    .line 78
    :try_start_0
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost;->systemAnimation:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    .line 80
    :cond_1
    :try_start_2
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 81
    :try_start_3
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost;->root:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    :cond_2
    :try_start_4
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 83
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz v0, :cond_5

    .line 84
    if-nez p1, :cond_3

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->dropFocus()V

    .line 85
    :cond_3
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceHost;->leaving:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->showBar(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 87
    :cond_5
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception p1

    :try_start_5
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    .line 77
    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public showMain(Ldev/duo/taskcore/TaskBinding;)V
    .locals 1

    .line 597
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->mainBinding:Ldev/duo/taskcore/TaskBinding;

    .line 598
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->plate:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->plate:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 600
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->plate:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 602
    :cond_1
    return-void
.end method

.method public showSlots([Ldev/duo/taskcore/TaskBinding;)V
    .locals 1

    .line 605
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost;->slotView:[Ldev/duo/taskcore/TaskBinding;

    .line 606
    invoke-virtual {p1}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ldev/duo/taskcore/TaskBinding;

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->slotView:[Ldev/duo/taskcore/TaskBinding;

    .line 607
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost;->overlayView:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {p1, v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->slotsChanged([Ldev/duo/taskcore/TaskBinding;)V

    .line 608
    :cond_0
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost;->refreshOverlay()V

    .line 609
    return-void
.end method
