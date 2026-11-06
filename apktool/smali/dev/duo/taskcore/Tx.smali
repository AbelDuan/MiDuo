.class final Ldev/duo/taskcore/Tx;
.super Ljava/lang/Object;
.source "Tx.java"


# static fields
.field private static cornerRadius:Ljava/lang/reflect/Method;

.field private static windowCropRect:Ljava/lang/reflect/Method;

.field private static windowCropSize:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized corner(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)V
    .locals 5

    const-class v0, Ldev/duo/taskcore/Tx;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Ldev/duo/taskcore/Tx;->cornerRadius:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    const-class v1, Landroid/view/SurfaceControl$Transaction;

    const-string v2, "setCornerRadius"

    const-class v3, Landroid/view/SurfaceControl;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Ldev/duo/taskcore/Tx;->cornerRadius:Ljava/lang/reflect/Method;

    .line 31
    :cond_0
    sget-object v1, Ldev/duo/taskcore/Tx;->cornerRadius:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    nop

    .line 33
    monitor-exit v0

    return-void

    .line 29
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setCornerRadius"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static declared-synchronized windowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)V
    .locals 6

    const-class v0, Ldev/duo/taskcore/Tx;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Ldev/duo/taskcore/Tx;->windowCropSize:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    const-class v1, Landroid/view/SurfaceControl$Transaction;

    const-string v2, "setWindowCrop"

    const-class v3, Landroid/view/SurfaceControl;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4, v5}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Ldev/duo/taskcore/Tx;->windowCropSize:Ljava/lang/reflect/Method;

    .line 16
    :cond_0
    sget-object v1, Ldev/duo/taskcore/Tx;->windowCropSize:Ljava/lang/reflect/Method;

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

    .line 17
    nop

    .line 18
    monitor-exit v0

    return-void

    .line 14
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setWindowCrop"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 14
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static declared-synchronized windowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .locals 5

    const-class v0, Ldev/duo/taskcore/Tx;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Ldev/duo/taskcore/Tx;->windowCropRect:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    const-class v1, Landroid/view/SurfaceControl$Transaction;

    const-string v2, "setWindowCrop"

    const-class v3, Landroid/view/SurfaceControl;

    const-class v4, Landroid/graphics/Rect;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Ldev/duo/taskcore/Tx;->windowCropRect:Ljava/lang/reflect/Method;

    .line 24
    :cond_0
    sget-object v1, Ldev/duo/taskcore/Tx;->windowCropRect:Ljava/lang/reflect/Method;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    nop

    .line 26
    monitor-exit v0

    return-void

    .line 22
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setWindowCrop"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 22
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
