.class final Ldev/duo/taskcore/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)V
    .locals 5

    const-class v0, Ldev/duo/taskcore/e;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Ldev/duo/taskcore/e;->c:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    const-class v1, Landroid/view/SurfaceControl$Transaction;

    const-string v2, "setCornerRadius"

    const-class v3, Landroid/view/SurfaceControl;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Ldev/duo/taskcore/e;->c:Ljava/lang/reflect/Method;

    .line 8
    :cond_0
    sget-object v1, Ldev/duo/taskcore/e;->c:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 6
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 9
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setCornerRadius"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static declared-synchronized a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)V
    .locals 5

    const-class v0, Ldev/duo/taskcore/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Ldev/duo/taskcore/e;->a:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    const-class v1, Landroid/view/SurfaceControl$Transaction;

    const-string v2, "setWindowCrop"

    const-class v3, Landroid/view/SurfaceControl;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Ldev/duo/taskcore/e;->a:Ljava/lang/reflect/Method;

    .line 2
    :cond_0
    sget-object v1, Ldev/duo/taskcore/e;->a:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 0
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1
    :catch_0
    move-exception p0

    .line 3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setWindowCrop"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static declared-synchronized a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .locals 5

    const-class v0, Ldev/duo/taskcore/e;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ldev/duo/taskcore/e;->b:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    const-class v1, Landroid/view/SurfaceControl$Transaction;

    const-string v2, "setWindowCrop"

    const-class v3, Landroid/view/SurfaceControl;

    const-class v4, Landroid/graphics/Rect;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Ldev/duo/taskcore/e;->b:Ljava/lang/reflect/Method;

    .line 5
    :cond_0
    sget-object v1, Ldev/duo/taskcore/e;->b:Ljava/lang/reflect/Method;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 3
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4
    :catch_0
    move-exception p0

    .line 6
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setWindowCrop"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 3
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
