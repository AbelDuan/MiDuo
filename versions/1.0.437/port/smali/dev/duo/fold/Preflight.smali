.class public final Ldev/duo/fold/Preflight;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x1fa269d

.field private static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "Hall \u6570\u636e"

    const-string v1, "\u8ddd\u79bb\u6570\u636e"

    const-string v2, "\u5173\u952e\u63a5\u53e3"

    const-string v3, "\u94f0\u94fe\u6570\u636e"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/duo/fold/Preflight;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lorg/json/JSONArray;
    .locals 17

    .line 2
    const-string v0, "android.app.IActivityTaskManager"

    const-string v1, "android.view.IWindowManager"

    const-string v2, "android.hardware.devicestate.IDeviceStateManager"

    const-string v3, "android.hardware.display.IDisplayManager"

    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "android.os.ServiceManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 3
    const-string v7, "display"

    const-string v8, "device_state"

    const-string v9, "window"

    const-string v10, "activity_task"

    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v7

    move v8, v5

    :goto_0
    const/4 v9, 0x4

    const/4 v10, 0x0

    if-ge v8, v9, :cond_1

    aget-object v9, v7, v8

    .line 4
    const-string v11, "getService"

    const-class v12, Ljava/lang/String;

    filled-new-array {v12}, [Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/IBinder;

    if-eqz v10, :cond_0

    .line 5
    invoke-interface {v10}, Landroid/os/IBinder;->pingBinder()Z

    move-result v10

    if-eqz v10, :cond_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u670d\u52a1\u4e0d\u53ef\u7528"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    nop

    .line 8
    filled-new-array {v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v6

    move v7, v5

    :goto_1
    if-ge v7, v9, :cond_2

    aget-object v8, v6, v7

    .line 10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "$Stub"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v11, "asInterface"

    const-class v12, Landroid/os/IBinder;

    filled-new-array {v12}, [Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v6, "getDisplayInfo"

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 12
    const-string v6, "uniqueId"

    const-string v7, "logicalWidth"

    const-string v8, "logicalHeight"

    const-string v11, "rotation"

    filled-new-array {v6, v7, v8, v11}, [Ljava/lang/String;

    move-result-object v6

    move v7, v5

    :goto_2
    if-ge v7, v9, :cond_3

    aget-object v8, v6, v7

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDeviceStateInfo"

    invoke-virtual {v2, v3, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 14
    const-string v3, "baseState"

    const-string v6, "currentState"

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v3

    move v6, v5

    :goto_3
    if-ge v6, v4, :cond_4

    aget-object v7, v3, v6

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getIdentifier"

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 15
    :cond_4
    const-string v2, "android.hardware.devicestate.DeviceStateManagerGlobal"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 16
    const-string v3, "android.hardware.devicestate.DeviceStateRequest"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 17
    const-string v6, "getInstance"

    invoke-virtual {v2, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "cancelStateRequest"

    invoke-virtual {v2, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    const-string v6, "requestState"

    const-string v7, "android.hardware.devicestate.DeviceStateRequest$Callback"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/util/concurrent/Executor;

    filled-new-array {v3, v8, v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    const-string v2, "newBuilder"

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v13}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "build"

    invoke-virtual {v2, v3, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 21
    const-string v2, "isKeyguardLocked"

    invoke-virtual {v1, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "mirrorWallpaperSurface"

    filled-new-array {v13}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    const-string v2, "mirrorDisplay"

    const-class v3, Landroid/view/SurfaceControl;

    filled-new-array {v13, v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    const-string v1, "getTasks"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v13, v2, v2, v13}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    const-string v1, "android.app.ITaskStackListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 26
    const-string v3, "registerTaskStackListener"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "unregisterTaskStackListener"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    const-class v0, Landroid/app/ActivityManager$RunningTaskInfo;

    const-string v1, "configuration"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 28
    const-string v1, "windowConfiguration"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 29
    const-string v1, "getWindowingMode"

    invoke-virtual {v0, v1, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "getActivityType"

    invoke-virtual {v0, v1, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "getCurrentUser"

    invoke-virtual {v0, v1, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    const-string v0, "android.app.IWallpaperManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWallpaperIdForUser"

    filled-new-array {v13, v13}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    const-string v0, "dev.duo.fold.Surfaces"

    const-class v1, Ldev/duo/fold/Preflight;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 34
    const-class v0, Landroid/view/SurfaceControl$Builder;

    const-string v1, "setBLASTLayer"

    invoke-virtual {v0, v1, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    const-class v0, Landroid/view/SurfaceControl$Builder;

    const-string v1, "setSecure"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    const-class v0, Landroid/view/SurfaceControl$Transaction;

    const-string v1, "addTransactionCommittedListener"

    const-string v2, "android.view.SurfaceControl$TransactionCommittedListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/concurrent/Executor;

    filled-new-array {v3, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    const-string v0, "android.graphics.BLASTBufferQueue"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 38
    const-class v11, Ljava/lang/String;

    const-class v12, Landroid/view/SurfaceControl;

    sget-object v16, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object v14, v13

    move-object v15, v13

    filled-new-array/range {v11 .. v16}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 39
    const-string v1, "createSurface"

    invoke-virtual {v0, v1, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "syncNextTransaction"

    const-class v2, Ljava/util/function/Consumer;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    const-string v1, "destroy"

    invoke-virtual {v0, v1, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    sget-object v0, Ldev/duo/fold/Preflight;->e:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "\u5173\u952e\u63a5\u53e3\u5b58\u5728\uff0c\u7cfb\u7edf\u670d\u52a1\u53ef\u8bbf\u95ee\uff1b\u672a\u542f\u52a8\u52a8\u753b\u6216\u5207\u6362\u5c4f\u5e55"

    invoke-static {v0, v5, v1}, Ldev/duo/fold/Preflight;->a(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5
    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 44
    :goto_4
    sget-object v1, Ldev/duo/fold/Preflight;->e:[Ljava/lang/String;

    aget-object v1, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5173\u952e\u63a5\u53e3\u4e0d\u53ef\u7528\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Ldev/duo/fold/Preflight;->a(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/hardware/SensorManager;)[Lorg/json/JSONArray;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 45
    move-object/from16 v1, p0

    const/16 v0, 0x24

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    const v2, 0x1fa269d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    filled-new-array {v0, v2, v4}, [Landroid/hardware/Sensor;

    move-result-object v8

    .line 46
    const/4 v2, 0x3

    new-array v11, v2, [I

    new-array v9, v2, [J

    new-array v10, v2, [Z

    new-array v0, v2, [Z

    .line 47
    const/4 v4, 0x1

    new-array v7, v4, [Z

    aput-boolean v4, v7, v3

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v12, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v12, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 48
    new-instance v13, Landroid/os/HandlerThread;

    const-string v5, "MiDuoFoldCheckSensors"

    invoke-direct {v13, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 49
    new-instance v5, Ldev/duo/fold/Preflight$a;

    invoke-direct/range {v5 .. v12}, Ldev/duo/fold/Preflight$a;-><init>(Ljava/lang/Object;[Z[Landroid/hardware/Sensor;[J[Z[ILjava/util/concurrent/CountDownLatch;)V

    .line 73
    const/4 v9, 0x2

    :try_start_0
    new-instance v14, Landroid/os/Handler;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v15, v3

    :goto_0
    if-ge v15, v2, :cond_2

    .line 74
    move/from16 v16, v3

    :try_start_1
    aget-object v3, v8, v15

    if-eqz v3, :cond_1

    .line 75
    invoke-virtual {v1, v5, v3, v9, v14}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v3

    aput-boolean v3, v0, v15

    if-eqz v3, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Ldev/duo/fold/Preflight;->e:[Ljava/lang/String;

    add-int/2addr v15, v4

    aget-object v12, v12, v15

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "\u65e0\u6cd5\u6ce8\u518c\u76d1\u542c"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v16

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move/from16 v16, v3

    .line 78
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x2

    invoke-virtual {v12, v14, v15, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 82
    monitor-enter v6

    :try_start_2
    aput-boolean v16, v7, v16

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    :try_start_3
    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 84
    invoke-virtual {v13}, Landroid/os/HandlerThread;->quitSafely()Z

    throw v0

    :catchall_1
    move-exception v0

    .line 85
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 76
    :catchall_2
    move-exception v0

    move/from16 v16, v3

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move/from16 v16, v3

    .line 86
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 88
    monitor-enter v6

    :try_start_6
    aput-boolean v16, v7, v16

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 89
    :try_start_7
    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 83
    :goto_3
    invoke-virtual {v13}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 89
    nop

    .line 91
    new-array v1, v2, [Lorg/json/JSONArray;

    move/from16 v3, v16

    :goto_4
    if-ge v3, v2, :cond_9

    if-eqz v0, :cond_3

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4f20\u611f\u5668\u68c0\u67e5\u672a\u5b8c\u6210\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v6, v9

    goto :goto_6

    .line 95
    :cond_3
    aget-object v5, v8, v3

    if-nez v5, :cond_4

    const-string v5, "\u672a\u627e\u5230\u4f20\u611f\u5668"

    move v6, v9

    goto :goto_6

    .line 96
    :cond_4
    aget-boolean v6, v10, v3

    if-eqz v6, :cond_5

    const-string v5, "\u6536\u5230\u65e0\u6548\u6570\u636e\uff08\u683c\u5f0f\u3001\u6570\u503c\u6216\u8303\u56f4\u5f02\u5e38\uff09"

    move v6, v9

    goto :goto_6

    .line 97
    :cond_5
    aget v6, v11, v3

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v5

    if-nez v5, :cond_6

    move v5, v9

    goto :goto_5

    :cond_6
    move v5, v4

    :goto_5
    if-lt v6, v5, :cond_7

    const-string v5, "\u5df2\u8bfb\u5230\u6709\u6548\u7684\u65b0\u6570\u636e\uff0c\u76d1\u542c\u5df2\u7ed3\u675f"

    move/from16 v6, v16

    goto :goto_6

    .line 98
    :cond_7
    aget-object v5, v8, v3

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v5

    if-ne v5, v4, :cond_8

    const-string v5, "\u9759\u6b62\u65f6\u672a\u6536\u5230\u65b0\u6570\u636e\uff0c\u6682\u672a\u786e\u8ba4\uff1b\u7a0d\u5fae\u6539\u53d8\u59ff\u6001\u6216\u906e\u6321\u8ddd\u79bb\u4f20\u611f\u5668\u540e\u91cd\u65b0\u68c0\u67e5"

    move v6, v4

    goto :goto_6

    .line 99
    :cond_8
    const-string v5, "\u77ed\u65f6\u68c0\u67e5\u672a\u6536\u5230\u8db3\u591f\u6709\u6548\u7684\u65b0\u6570\u636e"

    move v6, v9

    .line 100
    :goto_6
    sget-object v7, Ldev/duo/fold/Preflight;->e:[Ljava/lang/String;

    add-int/lit8 v12, v3, 0x1

    aget-object v7, v7, v12

    invoke-static {v7, v6, v5}, Ldev/duo/fold/Preflight;->a(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    aput-object v5, v1, v3

    move v3, v12

    goto :goto_4

    :cond_9
    return-object v1

    :catchall_3
    move-exception v0

    .line 101
    invoke-virtual {v13}, Landroid/os/HandlerThread;->quitSafely()Z

    throw v0

    :catchall_4
    move-exception v0

    .line 102
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 76
    :catchall_5
    move-exception v0

    .line 102
    :goto_7
    monitor-enter v6

    :try_start_9
    aput-boolean v16, v7, v16

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 103
    :try_start_a
    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    invoke-virtual {v13}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 104
    throw v0

    :catchall_6
    move-exception v0

    .line 105
    invoke-virtual {v13}, Landroid/os/HandlerThread;->quitSafely()Z

    throw v0

    :catchall_7
    move-exception v0

    .line 106
    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 3
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 5
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 6
    const-string v2, "systemMain"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    const-string v4, "getSystemContext"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 8
    invoke-static {}, Ldev/duo/fold/Preflight;->a()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 9
    const-class v2, Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    invoke-static {v1}, Ldev/duo/fold/Preflight;->a(Landroid/hardware/SensorManager;)[Lorg/json/JSONArray;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v1, "\u9700\u8981Root\u68c0\u6d4b\u73af\u5883"

    invoke-direct {p0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    move-exception p0

    .line 18
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 19
    sget-object v2, Ldev/duo/fold/Preflight;->e:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u68c0\u67e5\u672a\u5b8c\u6210\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v5, v7, v6}, Ldev/duo/fold/Preflight;->a(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object p0, v1

    .line 21
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiDuoFoldCheck:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 22
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
